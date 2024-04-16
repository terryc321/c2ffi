(progn
 (eval-when (:compile-toplevel :load-toplevel :execute)
   (setf autowrap::*failed-wraps* nil)
   (setf autowrap::*mute-reporting-p* nil)
   (progn
    (setf autowrap::*foreign-record-index* (make-hash-table))
    (autowrap:define-foreign-function '(cairo-version "cairo_version") ':int
                                      'nil)
    (autowrap:define-foreign-function
     '(cairo-version-string "cairo_version_string") '(:string) 'nil)
    (autowrap:define-foreign-alias 'cairo-bool-t ':int)
    (autowrap:define-foreign-record '_cairo :struct 0 0 'nil)
    (autowrap:define-foreign-alias 'cairo-t
                                   '(autowrap::struct
                                     (_cairo :bit-size 0 :bit-alignment 0)))
    (autowrap:define-foreign-record '_cairo_surface :struct 0 0 'nil)
    (autowrap:define-foreign-alias 'cairo-surface-t
                                   '(autowrap::struct
                                     (_cairo_surface :bit-size 0 :bit-alignment
                                      0)))
    (autowrap:define-foreign-record '_cairo_device :struct 0 0 'nil)
    (autowrap:define-foreign-alias 'cairo-device-t
                                   '(autowrap::struct
                                     (_cairo_device :bit-size 0 :bit-alignment
                                      0)))
    (autowrap:define-foreign-record '_cairo_matrix :struct 384 64
                                    '((:xx :double :bit-size 64 :bit-offset 0
                                       :bit-alignment 64)
                                      (:yx :double :bit-size 64 :bit-offset 64
                                       :bit-alignment 64)
                                      (:xy :double :bit-size 64 :bit-offset 128
                                       :bit-alignment 64)
                                      (:yy :double :bit-size 64 :bit-offset 192
                                       :bit-alignment 64)
                                      (:x0 :double :bit-size 64 :bit-offset 256
                                       :bit-alignment 64)
                                      (:y0 :double :bit-size 64 :bit-offset 320
                                       :bit-alignment 64)))
    (autowrap:define-foreign-alias 'cairo-matrix-t '(:struct (_cairo_matrix)))
    (autowrap:define-foreign-record '_cairo_pattern :struct 0 0 'nil)
    (autowrap:define-foreign-alias 'cairo-pattern-t
                                   '(autowrap::struct
                                     (_cairo_pattern :bit-size 0 :bit-alignment
                                      0)))
    (autowrap:define-foreign-alias 'cairo-destroy-func-t '(:pointer (:void)))
    (autowrap:define-foreign-record '_cairo_user_data_key :struct 32 32
                                    '((:unused :int :bit-size 32 :bit-offset 0
                                       :bit-alignment 32)))
    (autowrap:define-foreign-alias 'cairo-user-data-key-t
                                   '(:struct (_cairo_user_data_key)))
    (progn
     (defparameter +cairo-status-success+ 0)
     (defparameter +cairo-status-no-memory+ 1)
     (defparameter +cairo-status-invalid-restore+ 2)
     (defparameter +cairo-status-invalid-pop-group+ 3)
     (defparameter +cairo-status-no-current-point+ 4)
     (defparameter +cairo-status-invalid-matrix+ 5)
     (defparameter +cairo-status-invalid-status+ 6)
     (defparameter +cairo-status-null-pointer+ 7)
     (defparameter +cairo-status-invalid-string+ 8)
     (defparameter +cairo-status-invalid-path-data+ 9)
     (defparameter +cairo-status-read-error+ 10)
     (defparameter +cairo-status-write-error+ 11)
     (defparameter +cairo-status-surface-finished+ 12)
     (defparameter +cairo-status-surface-type-mismatch+ 13)
     (defparameter +cairo-status-pattern-type-mismatch+ 14)
     (defparameter +cairo-status-invalid-content+ 15)
     (defparameter +cairo-status-invalid-format+ 16)
     (defparameter +cairo-status-invalid-visual+ 17)
     (defparameter +cairo-status-file-not-found+ 18)
     (defparameter +cairo-status-invalid-dash+ 19)
     (defparameter +cairo-status-invalid-dsc-comment+ 20)
     (defparameter +cairo-status-invalid-index+ 21)
     (defparameter +cairo-status-clip-not-representable+ 22)
     (defparameter +cairo-status-temp-file-error+ 23)
     (defparameter +cairo-status-invalid-stride+ 24)
     (defparameter +cairo-status-font-type-mismatch+ 25)
     (defparameter +cairo-status-user-font-immutable+ 26)
     (defparameter +cairo-status-user-font-error+ 27)
     (defparameter +cairo-status-negative-count+ 28)
     (defparameter +cairo-status-invalid-clusters+ 29)
     (defparameter +cairo-status-invalid-slant+ 30)
     (defparameter +cairo-status-invalid-weight+ 31)
     (defparameter +cairo-status-invalid-size+ 32)
     (defparameter +cairo-status-user-font-not-implemented+ 33)
     (defparameter +cairo-status-device-type-mismatch+ 34)
     (defparameter +cairo-status-device-error+ 35)
     (defparameter +cairo-status-invalid-mesh-construction+ 36)
     (defparameter +cairo-status-device-finished+ 37)
     (defparameter +cairo-status-jbig2-global-missing+ 38)
     (defparameter +cairo-status-png-error+ 39)
     (defparameter +cairo-status-freetype-error+ 40)
     (defparameter +cairo-status-win32-gdi-error+ 41)
     (defparameter +cairo-status-tag-error+ 42)
     (defparameter +cairo-status-dwrite-error+ 43)
     (defparameter +cairo-status-svg-font-error+ 44)
     (defparameter +cairo-status-last-status+ 45)
     (autowrap:define-foreign-enum '_cairo_status 0
                                   '((:success . 0) (:no-memory . 1)
                                     (:invalid-restore . 2)
                                     (:invalid-pop-group . 3)
                                     (:no-current-point . 4)
                                     (:invalid-matrix . 5)
                                     (:invalid-status . 6) (:null-pointer . 7)
                                     (:invalid-string . 8)
                                     (:invalid-path-data . 9)
                                     (:read-error . 10) (:write-error . 11)
                                     (:surface-finished . 12)
                                     (:surface-type-mismatch . 13)
                                     (:pattern-type-mismatch . 14)
                                     (:invalid-content . 15)
                                     (:invalid-format . 16)
                                     (:invalid-visual . 17)
                                     (:file-not-found . 18)
                                     (:invalid-dash . 19)
                                     (:invalid-dsc-comment . 20)
                                     (:invalid-index . 21)
                                     (:clip-not-representable . 22)
                                     (:temp-file-error . 23)
                                     (:invalid-stride . 24)
                                     (:font-type-mismatch . 25)
                                     (:user-font-immutable . 26)
                                     (:user-font-error . 27)
                                     (:negative-count . 28)
                                     (:invalid-clusters . 29)
                                     (:invalid-slant . 30)
                                     (:invalid-weight . 31)
                                     (:invalid-size . 32)
                                     (:user-font-not-implemented . 33)
                                     (:device-type-mismatch . 34)
                                     (:device-error . 35)
                                     (:invalid-mesh-construction . 36)
                                     (:device-finished . 37)
                                     (:jbig2-global-missing . 38)
                                     (:png-error . 39) (:freetype-error . 40)
                                     (:win32-gdi-error . 41) (:tag-error . 42)
                                     (:dwrite-error . 43)
                                     (:svg-font-error . 44)
                                     (:last-status . 45))))
    (autowrap:define-foreign-alias 'cairo-status-t '(:enum (_cairo_status)))
    (progn
     (defparameter +cairo-content-color+ 4096)
     (defparameter +cairo-content-alpha+ 8192)
     (defparameter +cairo-content-color-alpha+ 12288)
     (autowrap:define-foreign-enum '_cairo_content 0
                                   '((:color . 4096) (:alpha . 8192)
                                     (:color-alpha . 12288))))
    (autowrap:define-foreign-alias 'cairo-content-t '(:enum (_cairo_content)))
    (progn
     (defparameter +cairo-format-invalid+ 4294967295)
     (defparameter +cairo-format-argb32+ 0)
     (defparameter +cairo-format-rgb24+ 1)
     (defparameter +cairo-format-a8+ 2)
     (defparameter +cairo-format-a1+ 3)
     (defparameter +cairo-format-rgb16-565+ 4)
     (defparameter +cairo-format-rgb30+ 5)
     (defparameter +cairo-format-rgb96f+ 6)
     (defparameter +cairo-format-rgba128f+ 7)
     (autowrap:define-foreign-enum '_cairo_format 0
                                   '((:invalid . 4294967295) (:argb32 . 0)
                                     (:rgb24 . 1) (:a8 . 2) (:a1 . 3)
                                     (:rgb16-565 . 4) (:rgb30 . 5)
                                     (:rgb96f . 6) (:rgba128f . 7))))
    (autowrap:define-foreign-alias 'cairo-format-t '(:enum (_cairo_format)))
    (progn
     (defparameter +cairo-dither-none+ 0)
     (defparameter +cairo-dither-default+ 1)
     (defparameter +cairo-dither-fast+ 2)
     (defparameter +cairo-dither-good+ 3)
     (defparameter +cairo-dither-best+ 4)
     (autowrap:define-foreign-enum '_cairo_dither 0
                                   '((:none . 0) (:default . 1) (:fast . 2)
                                     (:good . 3) (:best . 4))))
    (autowrap:define-foreign-alias 'cairo-dither-t '(:enum (_cairo_dither)))
    (autowrap:define-foreign-function
     '(cairo-pattern-set-dither "cairo_pattern_set_dither") ':void
     '((|pattern| (:pointer cairo-pattern-t)) (|dither| cairo-dither-t)))
    (autowrap:define-foreign-function
     '(cairo-pattern-get-dither "cairo_pattern_get_dither") 'cairo-dither-t
     '((|pattern| (:pointer cairo-pattern-t))))
    (autowrap:define-foreign-alias 'cairo-write-func-t '(:pointer (:void)))
    (autowrap:define-foreign-alias 'cairo-read-func-t '(:pointer (:void)))
    (autowrap:define-foreign-record '_cairo_rectangle_int :struct 128 32
                                    '((:x :int :bit-size 32 :bit-offset 0
                                       :bit-alignment 32)
                                      (:y :int :bit-size 32 :bit-offset 32
                                       :bit-alignment 32)
                                      (:width :int :bit-size 32 :bit-offset 64
                                       :bit-alignment 32)
                                      (:height :int :bit-size 32 :bit-offset 96
                                       :bit-alignment 32)))
    (autowrap:define-foreign-alias 'cairo-rectangle-int-t
                                   '(:struct (_cairo_rectangle_int)))
    (autowrap:define-foreign-function '(cairo-create "cairo_create")
                                      '(:pointer cairo-t)
                                      '((|target| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function '(cairo-reference "cairo_reference")
                                      '(:pointer cairo-t)
                                      '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function '(cairo-destroy "cairo_destroy") ':void
                                      '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-get-reference-count "cairo_get_reference_count") ':unsigned-int
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-get-user-data "cairo_get_user_data") '(:pointer :void)
     '((|cr| (:pointer cairo-t)) (|key| (:pointer cairo-user-data-key-t))))
    (autowrap:define-foreign-function
     '(cairo-set-user-data "cairo_set_user_data") 'cairo-status-t
     '((|cr| (:pointer cairo-t)) (|key| (:pointer cairo-user-data-key-t))
       (|user_data| (:pointer :void)) (|destroy| cairo-destroy-func-t)))
    (autowrap:define-foreign-function '(cairo-save "cairo_save") ':void
                                      '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function '(cairo-restore "cairo_restore") ':void
                                      '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function '(cairo-push-group "cairo_push_group")
                                      ':void '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-push-group-with-content "cairo_push_group_with_content") ':void
     '((|cr| (:pointer cairo-t)) (|content| cairo-content-t)))
    (autowrap:define-foreign-function '(cairo-pop-group "cairo_pop_group")
                                      '(:pointer cairo-pattern-t)
                                      '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-pop-group-to-source "cairo_pop_group_to_source") ':void
     '((|cr| (:pointer cairo-t))))
    (progn
     (defparameter +cairo-operator-clear+ 0)
     (defparameter +cairo-operator-source+ 1)
     (defparameter +cairo-operator-over+ 2)
     (defparameter +cairo-operator-in+ 3)
     (defparameter +cairo-operator-out+ 4)
     (defparameter +cairo-operator-atop+ 5)
     (defparameter +cairo-operator-dest+ 6)
     (defparameter +cairo-operator-dest-over+ 7)
     (defparameter +cairo-operator-dest-in+ 8)
     (defparameter +cairo-operator-dest-out+ 9)
     (defparameter +cairo-operator-dest-atop+ 10)
     (defparameter +cairo-operator-xor+ 11)
     (defparameter +cairo-operator-add+ 12)
     (defparameter +cairo-operator-saturate+ 13)
     (defparameter +cairo-operator-multiply+ 14)
     (defparameter +cairo-operator-screen+ 15)
     (defparameter +cairo-operator-overlay+ 16)
     (defparameter +cairo-operator-darken+ 17)
     (defparameter +cairo-operator-lighten+ 18)
     (defparameter +cairo-operator-color-dodge+ 19)
     (defparameter +cairo-operator-color-burn+ 20)
     (defparameter +cairo-operator-hard-light+ 21)
     (defparameter +cairo-operator-soft-light+ 22)
     (defparameter +cairo-operator-difference+ 23)
     (defparameter +cairo-operator-exclusion+ 24)
     (defparameter +cairo-operator-hsl-hue+ 25)
     (defparameter +cairo-operator-hsl-saturation+ 26)
     (defparameter +cairo-operator-hsl-color+ 27)
     (defparameter +cairo-operator-hsl-luminosity+ 28)
     (autowrap:define-foreign-enum '_cairo_operator 0
                                   '((:clear . 0) (:source . 1) (:over . 2)
                                     (:in . 3) (:out . 4) (:atop . 5)
                                     (:dest . 6) (:dest-over . 7)
                                     (:dest-in . 8) (:dest-out . 9)
                                     (:dest-atop . 10) (:xor . 11) (:add . 12)
                                     (:saturate . 13) (:multiply . 14)
                                     (:screen . 15) (:overlay . 16)
                                     (:darken . 17) (:lighten . 18)
                                     (:color-dodge . 19) (:color-burn . 20)
                                     (:hard-light . 21) (:soft-light . 22)
                                     (:difference . 23) (:exclusion . 24)
                                     (:hsl-hue . 25) (:hsl-saturation . 26)
                                     (:hsl-color . 27)
                                     (:hsl-luminosity . 28))))
    (autowrap:define-foreign-alias 'cairo-operator-t
                                   '(:enum (_cairo_operator)))
    (autowrap:define-foreign-function
     '(cairo-set-operator "cairo_set_operator") ':void
     '((|cr| (:pointer cairo-t)) (|op| cairo-operator-t)))
    (autowrap:define-foreign-function '(cairo-set-source "cairo_set_source")
                                      ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|source| (:pointer cairo-pattern-t))))
    (autowrap:define-foreign-function
     '(cairo-set-source-rgb "cairo_set_source_rgb") ':void
     '((|cr| (:pointer cairo-t)) (|red| :double) (|green| :double)
       (|blue| :double)))
    (autowrap:define-foreign-function
     '(cairo-set-source-rgba "cairo_set_source_rgba") ':void
     '((|cr| (:pointer cairo-t)) (|red| :double) (|green| :double)
       (|blue| :double) (|alpha| :double)))
    (autowrap:define-foreign-function
     '(cairo-set-source-surface "cairo_set_source_surface") ':void
     '((|cr| (:pointer cairo-t)) (|surface| (:pointer cairo-surface-t))
       (|x| :double) (|y| :double)))
    (autowrap:define-foreign-function
     '(cairo-set-tolerance "cairo_set_tolerance") ':void
     '((|cr| (:pointer cairo-t)) (|tolerance| :double)))
    (progn
     (defparameter +cairo-antialias-default+ 0)
     (defparameter +cairo-antialias-none+ 1)
     (defparameter +cairo-antialias-gray+ 2)
     (defparameter +cairo-antialias-subpixel+ 3)
     (defparameter +cairo-antialias-fast+ 4)
     (defparameter +cairo-antialias-good+ 5)
     (defparameter +cairo-antialias-best+ 6)
     (autowrap:define-foreign-enum '_cairo_antialias 0
                                   '((:default . 0) (:none . 1) (:gray . 2)
                                     (:subpixel . 3) (:fast . 4) (:good . 5)
                                     (:best . 6))))
    (autowrap:define-foreign-alias 'cairo-antialias-t
                                   '(:enum (_cairo_antialias)))
    (autowrap:define-foreign-function
     '(cairo-set-antialias "cairo_set_antialias") ':void
     '((|cr| (:pointer cairo-t)) (|antialias| cairo-antialias-t)))
    (progn
     (defparameter +cairo-fill-rule-winding+ 0)
     (defparameter +cairo-fill-rule-even-odd+ 1)
     (autowrap:define-foreign-enum '_cairo_fill_rule 0
                                   '((:winding . 0) (:even-odd . 1))))
    (autowrap:define-foreign-alias 'cairo-fill-rule-t
                                   '(:enum (_cairo_fill_rule)))
    (autowrap:define-foreign-function
     '(cairo-set-fill-rule "cairo_set_fill_rule") ':void
     '((|cr| (:pointer cairo-t)) (|fill_rule| cairo-fill-rule-t)))
    (autowrap:define-foreign-function
     '(cairo-set-line-width "cairo_set_line_width") ':void
     '((|cr| (:pointer cairo-t)) (|width| :double)))
    (autowrap:define-foreign-function
     '(cairo-set-hairline "cairo_set_hairline") ':void
     '((|cr| (:pointer cairo-t)) (|set_hairline| cairo-bool-t)))
    (progn
     (defparameter +cairo-line-cap-butt+ 0)
     (defparameter +cairo-line-cap-round+ 1)
     (defparameter +cairo-line-cap-square+ 2)
     (autowrap:define-foreign-enum '_cairo_line_cap 0
                                   '((:butt . 0) (:round . 1) (:square . 2))))
    (autowrap:define-foreign-alias 'cairo-line-cap-t
                                   '(:enum (_cairo_line_cap)))
    (autowrap:define-foreign-function
     '(cairo-set-line-cap "cairo_set_line_cap") ':void
     '((|cr| (:pointer cairo-t)) (|line_cap| cairo-line-cap-t)))
    (progn
     (defparameter +cairo-line-join-miter+ 0)
     (defparameter +cairo-line-join-round+ 1)
     (defparameter +cairo-line-join-bevel+ 2)
     (autowrap:define-foreign-enum '_cairo_line_join 0
                                   '((:miter . 0) (:round . 1) (:bevel . 2))))
    (autowrap:define-foreign-alias 'cairo-line-join-t
                                   '(:enum (_cairo_line_join)))
    (autowrap:define-foreign-function
     '(cairo-set-line-join "cairo_set_line_join") ':void
     '((|cr| (:pointer cairo-t)) (|line_join| cairo-line-join-t)))
    (autowrap:define-foreign-function '(cairo-set-dash "cairo_set_dash") ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|dashes| (:pointer :double))
                                        (|num_dashes| :int)
                                        (|offset| :double)))
    (autowrap:define-foreign-function
     '(cairo-set-miter-limit "cairo_set_miter_limit") ':void
     '((|cr| (:pointer cairo-t)) (|limit| :double)))
    (autowrap:define-foreign-function '(cairo-translate "cairo_translate")
                                      ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|tx| :double) (|ty| :double)))
    (autowrap:define-foreign-function '(cairo-scale "cairo_scale") ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|sx| :double) (|sy| :double)))
    (autowrap:define-foreign-function '(cairo-rotate "cairo_rotate") ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|angle| :double)))
    (autowrap:define-foreign-function '(cairo-transform "cairo_transform")
                                      ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|matrix| (:pointer cairo-matrix-t))))
    (autowrap:define-foreign-function '(cairo-set-matrix "cairo_set_matrix")
                                      ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|matrix| (:pointer cairo-matrix-t))))
    (autowrap:define-foreign-function
     '(cairo-identity-matrix "cairo_identity_matrix") ':void
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-user-to-device "cairo_user_to_device") ':void
     '((|cr| (:pointer cairo-t)) (|x| (:pointer :double))
       (|y| (:pointer :double))))
    (autowrap:define-foreign-function
     '(cairo-user-to-device-distance "cairo_user_to_device_distance") ':void
     '((|cr| (:pointer cairo-t)) (|dx| (:pointer :double))
       (|dy| (:pointer :double))))
    (autowrap:define-foreign-function
     '(cairo-device-to-user "cairo_device_to_user") ':void
     '((|cr| (:pointer cairo-t)) (|x| (:pointer :double))
       (|y| (:pointer :double))))
    (autowrap:define-foreign-function
     '(cairo-device-to-user-distance "cairo_device_to_user_distance") ':void
     '((|cr| (:pointer cairo-t)) (|dx| (:pointer :double))
       (|dy| (:pointer :double))))
    (autowrap:define-foreign-function '(cairo-new-path "cairo_new_path") ':void
                                      '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function '(cairo-move-to "cairo_move_to") ':void
                                      '((|cr| (:pointer cairo-t)) (|x| :double)
                                        (|y| :double)))
    (autowrap:define-foreign-function
     '(cairo-new-sub-path "cairo_new_sub_path") ':void
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function '(cairo-line-to "cairo_line_to") ':void
                                      '((|cr| (:pointer cairo-t)) (|x| :double)
                                        (|y| :double)))
    (autowrap:define-foreign-function '(cairo-curve-to "cairo_curve_to") ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|x1| :double) (|y1| :double)
                                        (|x2| :double) (|y2| :double)
                                        (|x3| :double) (|y3| :double)))
    (autowrap:define-foreign-function '(cairo-arc "cairo_arc") ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|xc| :double) (|yc| :double)
                                        (|radius| :double) (|angle1| :double)
                                        (|angle2| :double)))
    (autowrap:define-foreign-function
     '(cairo-arc-negative "cairo_arc_negative") ':void
     '((|cr| (:pointer cairo-t)) (|xc| :double) (|yc| :double)
       (|radius| :double) (|angle1| :double) (|angle2| :double)))
    (autowrap:define-foreign-function '(cairo-rel-move-to "cairo_rel_move_to")
                                      ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|dx| :double) (|dy| :double)))
    (autowrap:define-foreign-function '(cairo-rel-line-to "cairo_rel_line_to")
                                      ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|dx| :double) (|dy| :double)))
    (autowrap:define-foreign-function
     '(cairo-rel-curve-to "cairo_rel_curve_to") ':void
     '((|cr| (:pointer cairo-t)) (|dx1| :double) (|dy1| :double)
       (|dx2| :double) (|dy2| :double) (|dx3| :double) (|dy3| :double)))
    (autowrap:define-foreign-function '(cairo-rectangle "cairo_rectangle")
                                      ':void
                                      '((|cr| (:pointer cairo-t)) (|x| :double)
                                        (|y| :double) (|width| :double)
                                        (|height| :double)))
    (autowrap:define-foreign-function '(cairo-close-path "cairo_close_path")
                                      ':void '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-path-extents "cairo_path_extents") ':void
     '((|cr| (:pointer cairo-t)) (|x1| (:pointer :double))
       (|y1| (:pointer :double)) (|x2| (:pointer :double))
       (|y2| (:pointer :double))))
    (autowrap:define-foreign-function '(cairo-paint "cairo_paint") ':void
                                      '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-paint-with-alpha "cairo_paint_with_alpha") ':void
     '((|cr| (:pointer cairo-t)) (|alpha| :double)))
    (autowrap:define-foreign-function '(cairo-mask "cairo_mask") ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|pattern|
                                         (:pointer cairo-pattern-t))))
    (autowrap:define-foreign-function
     '(cairo-mask-surface "cairo_mask_surface") ':void
     '((|cr| (:pointer cairo-t)) (|surface| (:pointer cairo-surface-t))
       (|surface_x| :double) (|surface_y| :double)))
    (autowrap:define-foreign-function '(cairo-stroke "cairo_stroke") ':void
                                      '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-stroke-preserve "cairo_stroke_preserve") ':void
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function '(cairo-fill "cairo_fill") ':void
                                      '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-fill-preserve "cairo_fill_preserve") ':void
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function '(cairo-copy-page "cairo_copy_page")
                                      ':void '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function '(cairo-show-page "cairo_show_page")
                                      ':void '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function '(cairo-in-stroke "cairo_in_stroke")
                                      'cairo-bool-t
                                      '((|cr| (:pointer cairo-t)) (|x| :double)
                                        (|y| :double)))
    (autowrap:define-foreign-function '(cairo-in-fill "cairo_in_fill")
                                      'cairo-bool-t
                                      '((|cr| (:pointer cairo-t)) (|x| :double)
                                        (|y| :double)))
    (autowrap:define-foreign-function '(cairo-in-clip "cairo_in_clip")
                                      'cairo-bool-t
                                      '((|cr| (:pointer cairo-t)) (|x| :double)
                                        (|y| :double)))
    (autowrap:define-foreign-function
     '(cairo-stroke-extents "cairo_stroke_extents") ':void
     '((|cr| (:pointer cairo-t)) (|x1| (:pointer :double))
       (|y1| (:pointer :double)) (|x2| (:pointer :double))
       (|y2| (:pointer :double))))
    (autowrap:define-foreign-function
     '(cairo-fill-extents "cairo_fill_extents") ':void
     '((|cr| (:pointer cairo-t)) (|x1| (:pointer :double))
       (|y1| (:pointer :double)) (|x2| (:pointer :double))
       (|y2| (:pointer :double))))
    (autowrap:define-foreign-function '(cairo-reset-clip "cairo_reset_clip")
                                      ':void '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function '(cairo-clip "cairo_clip") ':void
                                      '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-clip-preserve "cairo_clip_preserve") ':void
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-clip-extents "cairo_clip_extents") ':void
     '((|cr| (:pointer cairo-t)) (|x1| (:pointer :double))
       (|y1| (:pointer :double)) (|x2| (:pointer :double))
       (|y2| (:pointer :double))))
    (autowrap:define-foreign-record '_cairo_rectangle :struct 256 64
                                    '((:x :double :bit-size 64 :bit-offset 0
                                       :bit-alignment 64)
                                      (:y :double :bit-size 64 :bit-offset 64
                                       :bit-alignment 64)
                                      (:width :double :bit-size 64 :bit-offset
                                       128 :bit-alignment 64)
                                      (:height :double :bit-size 64 :bit-offset
                                       192 :bit-alignment 64)))
    (autowrap:define-foreign-alias 'cairo-rectangle-t
                                   '(:struct (_cairo_rectangle)))
    (autowrap:define-foreign-record '_cairo_rectangle_list :struct 192 64
                                    '((:status cairo-status-t :bit-size 32
                                       :bit-offset 0 :bit-alignment 32)
                                      (:rectangles (:pointer cairo-rectangle-t)
                                       :bit-size 64 :bit-offset 64
                                       :bit-alignment 64)
                                      (:num-rectangles :int :bit-size 32
                                       :bit-offset 128 :bit-alignment 32)))
    (autowrap:define-foreign-alias 'cairo-rectangle-list-t
                                   '(:struct (_cairo_rectangle_list)))
    (autowrap:define-foreign-function
     '(cairo-copy-clip-rectangle-list "cairo_copy_clip_rectangle_list")
     '(:pointer cairo-rectangle-list-t) '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-rectangle-list-destroy "cairo_rectangle_list_destroy") ':void
     '((|rectangle_list| (:pointer cairo-rectangle-list-t))))
    (autowrap:define-foreign-function '(cairo-tag-begin "cairo_tag_begin")
                                      ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|tag_name| (:string))
                                        (|attributes| (:string))))
    (autowrap:define-foreign-function '(cairo-tag-end "cairo_tag_end") ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|tag_name| (:string))))
    (autowrap:define-foreign-record '_cairo_scaled_font :struct 0 0 'nil)
    (autowrap:define-foreign-alias 'cairo-scaled-font-t
                                   '(autowrap::struct
                                     (_cairo_scaled_font :bit-size 0
                                      :bit-alignment 0)))
    (autowrap:define-foreign-record '_cairo_font_face :struct 0 0 'nil)
    (autowrap:define-foreign-alias 'cairo-font-face-t
                                   '(autowrap::struct
                                     (_cairo_font_face :bit-size 0
                                      :bit-alignment 0)))
    (autowrap:define-foreign-alias 'cairo-glyph-t
                                   '(autowrap::struct
                                     (nil :id 12 :bit-size 192 :bit-alignment
                                      64)
                                     (:index :unsigned-long :bit-size 64
                                      :bit-offset 0 :bit-alignment 64)
                                     (:x :double :bit-size 64 :bit-offset 64
                                      :bit-alignment 64)
                                     (:y :double :bit-size 64 :bit-offset 128
                                      :bit-alignment 64)))
    (autowrap:define-foreign-function
     '(cairo-glyph-allocate "cairo_glyph_allocate") '(:pointer cairo-glyph-t)
     '((|num_glyphs| :int)))
    (autowrap:define-foreign-function '(cairo-glyph-free "cairo_glyph_free")
                                      ':void
                                      '((|glyphs| (:pointer cairo-glyph-t))))
    (autowrap:define-foreign-alias 'cairo-text-cluster-t
                                   '(autowrap::struct
                                     (nil :id 13 :bit-size 64 :bit-alignment
                                      32)
                                     (:num-bytes :int :bit-size 32 :bit-offset
                                      0 :bit-alignment 32)
                                     (:num-glyphs :int :bit-size 32 :bit-offset
                                      32 :bit-alignment 32)))
    (autowrap:define-foreign-function
     '(cairo-text-cluster-allocate "cairo_text_cluster_allocate")
     '(:pointer cairo-text-cluster-t) '((|num_clusters| :int)))
    (autowrap:define-foreign-function
     '(cairo-text-cluster-free "cairo_text_cluster_free") ':void
     '((|clusters| (:pointer cairo-text-cluster-t))))
    (progn
     (defparameter +cairo-text-cluster-flag-backward+ 1)
     (autowrap:define-foreign-enum '_cairo_text_cluster_flags 0
                                   '((:cairo-text-cluster-flag-backward . 1))))
    (autowrap:define-foreign-alias 'cairo-text-cluster-flags-t
                                   '(:enum (_cairo_text_cluster_flags)))
    (autowrap:define-foreign-alias 'cairo-text-extents-t
                                   '(autowrap::struct
                                     (nil :id 14 :bit-size 384 :bit-alignment
                                      64)
                                     (:x-bearing :double :bit-size 64
                                      :bit-offset 0 :bit-alignment 64)
                                     (:y-bearing :double :bit-size 64
                                      :bit-offset 64 :bit-alignment 64)
                                     (:width :double :bit-size 64 :bit-offset
                                      128 :bit-alignment 64)
                                     (:height :double :bit-size 64 :bit-offset
                                      192 :bit-alignment 64)
                                     (:x-advance :double :bit-size 64
                                      :bit-offset 256 :bit-alignment 64)
                                     (:y-advance :double :bit-size 64
                                      :bit-offset 320 :bit-alignment 64)))
    (autowrap:define-foreign-alias 'cairo-font-extents-t
                                   '(autowrap::struct
                                     (nil :id 15 :bit-size 320 :bit-alignment
                                      64)
                                     (:ascent :double :bit-size 64 :bit-offset
                                      0 :bit-alignment 64)
                                     (:descent :double :bit-size 64 :bit-offset
                                      64 :bit-alignment 64)
                                     (:height :double :bit-size 64 :bit-offset
                                      128 :bit-alignment 64)
                                     (:max-x-advance :double :bit-size 64
                                      :bit-offset 192 :bit-alignment 64)
                                     (:max-y-advance :double :bit-size 64
                                      :bit-offset 256 :bit-alignment 64)))
    (progn
     (defparameter +cairo-font-slant-normal+ 0)
     (defparameter +cairo-font-slant-italic+ 1)
     (defparameter +cairo-font-slant-oblique+ 2)
     (autowrap:define-foreign-enum '_cairo_font_slant 0
                                   '((:normal . 0) (:italic . 1)
                                     (:oblique . 2))))
    (autowrap:define-foreign-alias 'cairo-font-slant-t
                                   '(:enum (_cairo_font_slant)))
    (progn
     (defparameter +cairo-font-weight-normal+ 0)
     (defparameter +cairo-font-weight-bold+ 1)
     (autowrap:define-foreign-enum '_cairo_font_weight 0
                                   '((:normal . 0) (:bold . 1))))
    (autowrap:define-foreign-alias 'cairo-font-weight-t
                                   '(:enum (_cairo_font_weight)))
    (progn
     (defparameter +cairo-subpixel-order-default+ 0)
     (defparameter +cairo-subpixel-order-rgb+ 1)
     (defparameter +cairo-subpixel-order-bgr+ 2)
     (defparameter +cairo-subpixel-order-vrgb+ 3)
     (defparameter +cairo-subpixel-order-vbgr+ 4)
     (autowrap:define-foreign-enum '_cairo_subpixel_order 0
                                   '((:default . 0) (:rgb . 1) (:bgr . 2)
                                     (:vrgb . 3) (:vbgr . 4))))
    (autowrap:define-foreign-alias 'cairo-subpixel-order-t
                                   '(:enum (_cairo_subpixel_order)))
    (progn
     (defparameter +cairo-hint-style-default+ 0)
     (defparameter +cairo-hint-style-none+ 1)
     (defparameter +cairo-hint-style-slight+ 2)
     (defparameter +cairo-hint-style-medium+ 3)
     (defparameter +cairo-hint-style-full+ 4)
     (autowrap:define-foreign-enum '_cairo_hint_style 0
                                   '((:default . 0) (:none . 1) (:slight . 2)
                                     (:medium . 3) (:full . 4))))
    (autowrap:define-foreign-alias 'cairo-hint-style-t
                                   '(:enum (_cairo_hint_style)))
    (progn
     (defparameter +cairo-hint-metrics-default+ 0)
     (defparameter +cairo-hint-metrics-off+ 1)
     (defparameter +cairo-hint-metrics-on+ 2)
     (autowrap:define-foreign-enum '_cairo_hint_metrics 0
                                   '((:default . 0) (:off . 1) (:on . 2))))
    (autowrap:define-foreign-alias 'cairo-hint-metrics-t
                                   '(:enum (_cairo_hint_metrics)))
    (progn
     (defparameter +cairo-color-mode-default+ 0)
     (defparameter +cairo-color-mode-no-color+ 1)
     (defparameter +cairo-color-mode-color+ 2)
     (autowrap:define-foreign-enum '_cairo_color_mode 0
                                   '((:default . 0) (:no-color . 1)
                                     (:color . 2))))
    (autowrap:define-foreign-alias 'cairo-color-mode-t
                                   '(:enum (_cairo_color_mode)))
    (autowrap:define-foreign-record '_cairo_font_options :struct 0 0 'nil)
    (autowrap:define-foreign-alias 'cairo-font-options-t
                                   '(autowrap::struct
                                     (_cairo_font_options :bit-size 0
                                      :bit-alignment 0)))
    (autowrap:define-foreign-function
     '(cairo-font-options-create "cairo_font_options_create")
     '(:pointer cairo-font-options-t) 'nil)
    (autowrap:define-foreign-function
     '(cairo-font-options-copy "cairo_font_options_copy")
     '(:pointer cairo-font-options-t)
     '((|original| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-font-options-destroy "cairo_font_options_destroy") ':void
     '((|options| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-font-options-status "cairo_font_options_status") 'cairo-status-t
     '((|options| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-font-options-merge "cairo_font_options_merge") ':void
     '((|options| (:pointer cairo-font-options-t))
       (|other| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-font-options-equal "cairo_font_options_equal") 'cairo-bool-t
     '((|options| (:pointer cairo-font-options-t))
       (|other| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-font-options-hash "cairo_font_options_hash") ':unsigned-long
     '((|options| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-font-options-set-antialias "cairo_font_options_set_antialias")
     ':void
     '((|options| (:pointer cairo-font-options-t))
       (|antialias| cairo-antialias-t)))
    (autowrap:define-foreign-function
     '(cairo-font-options-get-antialias "cairo_font_options_get_antialias")
     'cairo-antialias-t '((|options| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-font-options-set-subpixel-order
       "cairo_font_options_set_subpixel_order")
     ':void
     '((|options| (:pointer cairo-font-options-t))
       (|subpixel_order| cairo-subpixel-order-t)))
    (autowrap:define-foreign-function
     '(cairo-font-options-get-subpixel-order
       "cairo_font_options_get_subpixel_order")
     'cairo-subpixel-order-t '((|options| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-font-options-set-hint-style "cairo_font_options_set_hint_style")
     ':void
     '((|options| (:pointer cairo-font-options-t))
       (|hint_style| cairo-hint-style-t)))
    (autowrap:define-foreign-function
     '(cairo-font-options-get-hint-style "cairo_font_options_get_hint_style")
     'cairo-hint-style-t '((|options| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-font-options-set-hint-metrics
       "cairo_font_options_set_hint_metrics")
     ':void
     '((|options| (:pointer cairo-font-options-t))
       (|hint_metrics| cairo-hint-metrics-t)))
    (autowrap:define-foreign-function
     '(cairo-font-options-get-hint-metrics
       "cairo_font_options_get_hint_metrics")
     'cairo-hint-metrics-t '((|options| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-font-options-get-variations "cairo_font_options_get_variations")
     '(:string) '((|options| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-font-options-set-variations "cairo_font_options_set_variations")
     ':void
     '((|options| (:pointer cairo-font-options-t)) (|variations| (:string))))
    (autowrap:define-foreign-function
     '(cairo-font-options-set-color-mode "cairo_font_options_set_color_mode")
     ':void
     '((|options| (:pointer cairo-font-options-t))
       (|color_mode| cairo-color-mode-t)))
    (autowrap:define-foreign-function
     '(cairo-font-options-get-color-mode "cairo_font_options_get_color_mode")
     'cairo-color-mode-t '((|options| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-font-options-get-color-palette
       "cairo_font_options_get_color_palette")
     ':unsigned-int '((|options| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-font-options-set-color-palette
       "cairo_font_options_set_color_palette")
     ':void
     '((|options| (:pointer cairo-font-options-t))
       (|palette_index| :unsigned-int)))
    (autowrap:define-foreign-function
     '(cairo-font-options-set-custom-palette-color
       "cairo_font_options_set_custom_palette_color")
     ':void
     '((|options| (:pointer cairo-font-options-t)) (|index| :unsigned-int)
       (|red| :double) (|green| :double) (|blue| :double) (|alpha| :double)))
    (autowrap:define-foreign-function
     '(cairo-font-options-get-custom-palette-color
       "cairo_font_options_get_custom_palette_color")
     'cairo-status-t
     '((|options| (:pointer cairo-font-options-t)) (|index| :unsigned-int)
       (|red| (:pointer :double)) (|green| (:pointer :double))
       (|blue| (:pointer :double)) (|alpha| (:pointer :double))))
    (autowrap:define-foreign-function
     '(cairo-select-font-face "cairo_select_font_face") ':void
     '((|cr| (:pointer cairo-t)) (|family| (:string))
       (|slant| cairo-font-slant-t) (|weight| cairo-font-weight-t)))
    (autowrap:define-foreign-function
     '(cairo-set-font-size "cairo_set_font_size") ':void
     '((|cr| (:pointer cairo-t)) (|size| :double)))
    (autowrap:define-foreign-function
     '(cairo-set-font-matrix "cairo_set_font_matrix") ':void
     '((|cr| (:pointer cairo-t)) (|matrix| (:pointer cairo-matrix-t))))
    (autowrap:define-foreign-function
     '(cairo-get-font-matrix "cairo_get_font_matrix") ':void
     '((|cr| (:pointer cairo-t)) (|matrix| (:pointer cairo-matrix-t))))
    (autowrap:define-foreign-function
     '(cairo-set-font-options "cairo_set_font_options") ':void
     '((|cr| (:pointer cairo-t)) (|options| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-get-font-options "cairo_get_font_options") ':void
     '((|cr| (:pointer cairo-t)) (|options| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-set-font-face "cairo_set_font_face") ':void
     '((|cr| (:pointer cairo-t)) (|font_face| (:pointer cairo-font-face-t))))
    (autowrap:define-foreign-function
     '(cairo-get-font-face "cairo_get_font_face") '(:pointer cairo-font-face-t)
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-set-scaled-font "cairo_set_scaled_font") ':void
     '((|cr| (:pointer cairo-t))
       (|scaled_font| (:pointer cairo-scaled-font-t))))
    (autowrap:define-foreign-function
     '(cairo-get-scaled-font "cairo_get_scaled_font")
     '(:pointer cairo-scaled-font-t) '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function '(cairo-show-text "cairo_show_text")
                                      ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|utf8| (:string))))
    (autowrap:define-foreign-function '(cairo-show-glyphs "cairo_show_glyphs")
                                      ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|glyphs| (:pointer cairo-glyph-t))
                                        (|num_glyphs| :int)))
    (autowrap:define-foreign-function
     '(cairo-show-text-glyphs "cairo_show_text_glyphs") ':void
     '((|cr| (:pointer cairo-t)) (|utf8| (:string)) (|utf8_len| :int)
       (|glyphs| (:pointer cairo-glyph-t)) (|num_glyphs| :int)
       (|clusters| (:pointer cairo-text-cluster-t)) (|num_clusters| :int)
       (|cluster_flags| cairo-text-cluster-flags-t)))
    (autowrap:define-foreign-function '(cairo-text-path "cairo_text_path")
                                      ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|utf8| (:string))))
    (autowrap:define-foreign-function '(cairo-glyph-path "cairo_glyph_path")
                                      ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|glyphs| (:pointer cairo-glyph-t))
                                        (|num_glyphs| :int)))
    (autowrap:define-foreign-function
     '(cairo-text-extents "cairo_text_extents") ':void
     '((|cr| (:pointer cairo-t)) (|utf8| (:string))
       (|extents| (:pointer cairo-text-extents-t))))
    (autowrap:define-foreign-function
     '(cairo-glyph-extents "cairo_glyph_extents") ':void
     '((|cr| (:pointer cairo-t)) (|glyphs| (:pointer cairo-glyph-t))
       (|num_glyphs| :int) (|extents| (:pointer cairo-text-extents-t))))
    (autowrap:define-foreign-function
     '(cairo-font-extents "cairo_font_extents") ':void
     '((|cr| (:pointer cairo-t)) (|extents| (:pointer cairo-font-extents-t))))
    (autowrap:define-foreign-function
     '(cairo-font-face-reference "cairo_font_face_reference")
     '(:pointer cairo-font-face-t)
     '((|font_face| (:pointer cairo-font-face-t))))
    (autowrap:define-foreign-function
     '(cairo-font-face-destroy "cairo_font_face_destroy") ':void
     '((|font_face| (:pointer cairo-font-face-t))))
    (autowrap:define-foreign-function
     '(cairo-font-face-get-reference-count
       "cairo_font_face_get_reference_count")
     ':unsigned-int '((|font_face| (:pointer cairo-font-face-t))))
    (autowrap:define-foreign-function
     '(cairo-font-face-status "cairo_font_face_status") 'cairo-status-t
     '((|font_face| (:pointer cairo-font-face-t))))
    (progn
     (defparameter +cairo-font-type-toy+ 0)
     (defparameter +cairo-font-type-ft+ 1)
     (defparameter +cairo-font-type-win32+ 2)
     (defparameter +cairo-font-type-quartz+ 3)
     (defparameter +cairo-font-type-user+ 4)
     (defparameter +cairo-font-type-dwrite+ 5)
     (autowrap:define-foreign-enum '_cairo_font_type 0
                                   '((:toy . 0) (:ft . 1) (:win32 . 2)
                                     (:quartz . 3) (:user . 4) (:dwrite . 5))))
    (autowrap:define-foreign-alias 'cairo-font-type-t
                                   '(:enum (_cairo_font_type)))
    (autowrap:define-foreign-function
     '(cairo-font-face-get-type "cairo_font_face_get_type") 'cairo-font-type-t
     '((|font_face| (:pointer cairo-font-face-t))))
    (autowrap:define-foreign-function
     '(cairo-font-face-get-user-data "cairo_font_face_get_user_data")
     '(:pointer :void)
     '((|font_face| (:pointer cairo-font-face-t))
       (|key| (:pointer cairo-user-data-key-t))))
    (autowrap:define-foreign-function
     '(cairo-font-face-set-user-data "cairo_font_face_set_user_data")
     'cairo-status-t
     '((|font_face| (:pointer cairo-font-face-t))
       (|key| (:pointer cairo-user-data-key-t)) (|user_data| (:pointer :void))
       (|destroy| cairo-destroy-func-t)))
    (autowrap:define-foreign-function
     '(cairo-scaled-font-create "cairo_scaled_font_create")
     '(:pointer cairo-scaled-font-t)
     '((|font_face| (:pointer cairo-font-face-t))
       (|font_matrix| (:pointer cairo-matrix-t))
       (|ctm| (:pointer cairo-matrix-t))
       (|options| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-scaled-font-reference "cairo_scaled_font_reference")
     '(:pointer cairo-scaled-font-t)
     '((|scaled_font| (:pointer cairo-scaled-font-t))))
    (autowrap:define-foreign-function
     '(cairo-scaled-font-destroy "cairo_scaled_font_destroy") ':void
     '((|scaled_font| (:pointer cairo-scaled-font-t))))
    (autowrap:define-foreign-function
     '(cairo-scaled-font-get-reference-count
       "cairo_scaled_font_get_reference_count")
     ':unsigned-int '((|scaled_font| (:pointer cairo-scaled-font-t))))
    (autowrap:define-foreign-function
     '(cairo-scaled-font-status "cairo_scaled_font_status") 'cairo-status-t
     '((|scaled_font| (:pointer cairo-scaled-font-t))))
    (autowrap:define-foreign-function
     '(cairo-scaled-font-get-type "cairo_scaled_font_get_type")
     'cairo-font-type-t '((|scaled_font| (:pointer cairo-scaled-font-t))))
    (autowrap:define-foreign-function
     '(cairo-scaled-font-get-user-data "cairo_scaled_font_get_user_data")
     '(:pointer :void)
     '((|scaled_font| (:pointer cairo-scaled-font-t))
       (|key| (:pointer cairo-user-data-key-t))))
    (autowrap:define-foreign-function
     '(cairo-scaled-font-set-user-data "cairo_scaled_font_set_user_data")
     'cairo-status-t
     '((|scaled_font| (:pointer cairo-scaled-font-t))
       (|key| (:pointer cairo-user-data-key-t)) (|user_data| (:pointer :void))
       (|destroy| cairo-destroy-func-t)))
    (autowrap:define-foreign-function
     '(cairo-scaled-font-extents "cairo_scaled_font_extents") ':void
     '((|scaled_font| (:pointer cairo-scaled-font-t))
       (|extents| (:pointer cairo-font-extents-t))))
    (autowrap:define-foreign-function
     '(cairo-scaled-font-text-extents "cairo_scaled_font_text_extents") ':void
     '((|scaled_font| (:pointer cairo-scaled-font-t)) (|utf8| (:string))
       (|extents| (:pointer cairo-text-extents-t))))
    (autowrap:define-foreign-function
     '(cairo-scaled-font-glyph-extents "cairo_scaled_font_glyph_extents")
     ':void
     '((|scaled_font| (:pointer cairo-scaled-font-t))
       (|glyphs| (:pointer cairo-glyph-t)) (|num_glyphs| :int)
       (|extents| (:pointer cairo-text-extents-t))))
    (autowrap:define-foreign-function
     '(cairo-scaled-font-text-to-glyphs "cairo_scaled_font_text_to_glyphs")
     'cairo-status-t
     '((|scaled_font| (:pointer cairo-scaled-font-t)) (|x| :double)
       (|y| :double) (|utf8| (:string)) (|utf8_len| :int)
       (|glyphs| (:pointer (:pointer cairo-glyph-t)))
       (|num_glyphs| (:pointer :int))
       (|clusters| (:pointer (:pointer cairo-text-cluster-t)))
       (|num_clusters| (:pointer :int))
       (|cluster_flags| (:pointer cairo-text-cluster-flags-t))))
    (autowrap:define-foreign-function
     '(cairo-scaled-font-get-font-face "cairo_scaled_font_get_font_face")
     '(:pointer cairo-font-face-t)
     '((|scaled_font| (:pointer cairo-scaled-font-t))))
    (autowrap:define-foreign-function
     '(cairo-scaled-font-get-font-matrix "cairo_scaled_font_get_font_matrix")
     ':void
     '((|scaled_font| (:pointer cairo-scaled-font-t))
       (|font_matrix| (:pointer cairo-matrix-t))))
    (autowrap:define-foreign-function
     '(cairo-scaled-font-get-ctm "cairo_scaled_font_get_ctm") ':void
     '((|scaled_font| (:pointer cairo-scaled-font-t))
       (|ctm| (:pointer cairo-matrix-t))))
    (autowrap:define-foreign-function
     '(cairo-scaled-font-get-scale-matrix "cairo_scaled_font_get_scale_matrix")
     ':void
     '((|scaled_font| (:pointer cairo-scaled-font-t))
       (|scale_matrix| (:pointer cairo-matrix-t))))
    (autowrap:define-foreign-function
     '(cairo-scaled-font-get-font-options "cairo_scaled_font_get_font_options")
     ':void
     '((|scaled_font| (:pointer cairo-scaled-font-t))
       (|options| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-toy-font-face-create "cairo_toy_font_face_create")
     '(:pointer cairo-font-face-t)
     '((|family| (:string)) (|slant| cairo-font-slant-t)
       (|weight| cairo-font-weight-t)))
    (autowrap:define-foreign-function
     '(cairo-toy-font-face-get-family "cairo_toy_font_face_get_family")
     '(:string) '((|font_face| (:pointer cairo-font-face-t))))
    (autowrap:define-foreign-function
     '(cairo-toy-font-face-get-slant "cairo_toy_font_face_get_slant")
     'cairo-font-slant-t '((|font_face| (:pointer cairo-font-face-t))))
    (autowrap:define-foreign-function
     '(cairo-toy-font-face-get-weight "cairo_toy_font_face_get_weight")
     'cairo-font-weight-t '((|font_face| (:pointer cairo-font-face-t))))
    (autowrap:define-foreign-function
     '(cairo-user-font-face-create "cairo_user_font_face_create")
     '(:pointer cairo-font-face-t) 'nil)
    (autowrap:define-foreign-alias 'cairo-user-scaled-font-init-func-t
                                   '(:pointer (:void)))
    (autowrap:define-foreign-alias 'cairo-user-scaled-font-render-glyph-func-t
                                   '(:pointer (:void)))
    (autowrap:define-foreign-alias
     'cairo-user-scaled-font-text-to-glyphs-func-t '(:pointer (:void)))
    (autowrap:define-foreign-alias
     'cairo-user-scaled-font-unicode-to-glyph-func-t '(:pointer (:void)))
    (autowrap:define-foreign-function
     '(cairo-user-font-face-set-init-func "cairo_user_font_face_set_init_func")
     ':void
     '((|font_face| (:pointer cairo-font-face-t))
       (|init_func| cairo-user-scaled-font-init-func-t)))
    (autowrap:define-foreign-function
     '(cairo-user-font-face-set-render-glyph-func
       "cairo_user_font_face_set_render_glyph_func")
     ':void
     '((|font_face| (:pointer cairo-font-face-t))
       (|render_glyph_func| cairo-user-scaled-font-render-glyph-func-t)))
    (autowrap:define-foreign-function
     '(cairo-user-font-face-set-render-color-glyph-func
       "cairo_user_font_face_set_render_color_glyph_func")
     ':void
     '((|font_face| (:pointer cairo-font-face-t))
       (|render_glyph_func| cairo-user-scaled-font-render-glyph-func-t)))
    (autowrap:define-foreign-function
     '(cairo-user-font-face-set-text-to-glyphs-func
       "cairo_user_font_face_set_text_to_glyphs_func")
     ':void
     '((|font_face| (:pointer cairo-font-face-t))
       (|text_to_glyphs_func| cairo-user-scaled-font-text-to-glyphs-func-t)))
    (autowrap:define-foreign-function
     '(cairo-user-font-face-set-unicode-to-glyph-func
       "cairo_user_font_face_set_unicode_to_glyph_func")
     ':void
     '((|font_face| (:pointer cairo-font-face-t))
       (|unicode_to_glyph_func|
        cairo-user-scaled-font-unicode-to-glyph-func-t)))
    (autowrap:define-foreign-function
     '(cairo-user-font-face-get-init-func "cairo_user_font_face_get_init_func")
     'cairo-user-scaled-font-init-func-t
     '((|font_face| (:pointer cairo-font-face-t))))
    (autowrap:define-foreign-function
     '(cairo-user-font-face-get-render-glyph-func
       "cairo_user_font_face_get_render_glyph_func")
     'cairo-user-scaled-font-render-glyph-func-t
     '((|font_face| (:pointer cairo-font-face-t))))
    (autowrap:define-foreign-function
     '(cairo-user-font-face-get-render-color-glyph-func
       "cairo_user_font_face_get_render_color_glyph_func")
     'cairo-user-scaled-font-render-glyph-func-t
     '((|font_face| (:pointer cairo-font-face-t))))
    (autowrap:define-foreign-function
     '(cairo-user-font-face-get-text-to-glyphs-func
       "cairo_user_font_face_get_text_to_glyphs_func")
     'cairo-user-scaled-font-text-to-glyphs-func-t
     '((|font_face| (:pointer cairo-font-face-t))))
    (autowrap:define-foreign-function
     '(cairo-user-font-face-get-unicode-to-glyph-func
       "cairo_user_font_face_get_unicode_to_glyph_func")
     'cairo-user-scaled-font-unicode-to-glyph-func-t
     '((|font_face| (:pointer cairo-font-face-t))))
    (autowrap:define-foreign-function
     '(cairo-user-scaled-font-get-foreground-marker
       "cairo_user_scaled_font_get_foreground_marker")
     '(:pointer cairo-pattern-t)
     '((|scaled_font| (:pointer cairo-scaled-font-t))))
    (autowrap:define-foreign-function
     '(cairo-user-scaled-font-get-foreground-source
       "cairo_user_scaled_font_get_foreground_source")
     '(:pointer cairo-pattern-t)
     '((|scaled_font| (:pointer cairo-scaled-font-t))))
    (autowrap:define-foreign-function
     '(cairo-get-operator "cairo_get_operator") 'cairo-operator-t
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function '(cairo-get-source "cairo_get_source")
                                      '(:pointer cairo-pattern-t)
                                      '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-get-tolerance "cairo_get_tolerance") ':double
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-get-antialias "cairo_get_antialias") 'cairo-antialias-t
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-has-current-point "cairo_has_current_point") 'cairo-bool-t
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-get-current-point "cairo_get_current_point") ':void
     '((|cr| (:pointer cairo-t)) (|x| (:pointer :double))
       (|y| (:pointer :double))))
    (autowrap:define-foreign-function
     '(cairo-get-fill-rule "cairo_get_fill_rule") 'cairo-fill-rule-t
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-get-line-width "cairo_get_line_width") ':double
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-get-hairline "cairo_get_hairline") 'cairo-bool-t
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-get-line-cap "cairo_get_line_cap") 'cairo-line-cap-t
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-get-line-join "cairo_get_line_join") 'cairo-line-join-t
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-get-miter-limit "cairo_get_miter_limit") ':double
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-get-dash-count "cairo_get_dash_count") ':int
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function '(cairo-get-dash "cairo_get_dash") ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|dashes| (:pointer :double))
                                        (|offset| (:pointer :double))))
    (autowrap:define-foreign-function '(cairo-get-matrix "cairo_get_matrix")
                                      ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|matrix| (:pointer cairo-matrix-t))))
    (autowrap:define-foreign-function '(cairo-get-target "cairo_get_target")
                                      '(:pointer cairo-surface-t)
                                      '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-get-group-target "cairo_get_group_target")
     '(:pointer cairo-surface-t) '((|cr| (:pointer cairo-t))))
    (progn
     (defparameter +cairo-path-move-to+ 0)
     (defparameter +cairo-path-line-to+ 1)
     (defparameter +cairo-path-curve-to+ 2)
     (defparameter +cairo-path-close-path+ 3)
     (autowrap:define-foreign-enum '_cairo_path_data_type 0
                                   '((:move-to . 0) (:line-to . 1)
                                     (:curve-to . 2) (:close-path . 3))))
    (autowrap:define-foreign-alias 'cairo-path-data-type-t
                                   '(:enum (_cairo_path_data_type)))
    (autowrap:define-foreign-record '_cairo_path_data_t :union 0 0 'nil)
    (autowrap:define-foreign-alias 'cairo-path-data-t
                                   '(union
                                     (_cairo_path_data_t :bit-size 0
                                      :bit-alignment 0)))
    (autowrap:define-foreign-record '_cairo_path_data_t :union 128 64
                                    '((:header
                                       (autowrap::struct
                                        (nil :id 18 :bit-size 64 :bit-alignment
                                         32)
                                        (:type cairo-path-data-type-t :bit-size
                                         32 :bit-offset 0 :bit-alignment 32)
                                        (:length :int :bit-size 32 :bit-offset
                                         32 :bit-alignment 32))
                                       :bit-size 64 :bit-offset 0
                                       :bit-alignment 32)
                                      (:point
                                       (autowrap::struct
                                        (nil :id 19 :bit-size 128
                                         :bit-alignment 64)
                                        (:x :double :bit-size 64 :bit-offset 0
                                         :bit-alignment 64)
                                        (:y :double :bit-size 64 :bit-offset 64
                                         :bit-alignment 64))
                                       :bit-size 128 :bit-offset 0
                                       :bit-alignment 64)))
    (autowrap:define-foreign-record 'cairo-path :struct 192 64
                                    '((:status cairo-status-t :bit-size 32
                                       :bit-offset 0 :bit-alignment 32)
                                      (:data (:pointer cairo-path-data-t)
                                       :bit-size 64 :bit-offset 64
                                       :bit-alignment 64)
                                      (:num-data :int :bit-size 32 :bit-offset
                                       128 :bit-alignment 32)))
    (autowrap:define-foreign-alias 'cairo-path-t '(:struct (cairo-path)))
    (autowrap:define-foreign-function '(cairo-copy-path "cairo_copy_path")
                                      '(:pointer cairo-path-t)
                                      '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-copy-path-flat "cairo_copy_path_flat") '(:pointer cairo-path-t)
     '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function '(cairo-append-path "cairo_append_path")
                                      ':void
                                      '((|cr| (:pointer cairo-t))
                                        (|path| (:pointer cairo-path-t))))
    (autowrap:define-foreign-function
     '(cairo-path-destroy "cairo_path_destroy") ':void
     '((|path| (:pointer cairo-path-t))))
    (autowrap:define-foreign-function '(cairo-status "cairo_status")
                                      'cairo-status-t
                                      '((|cr| (:pointer cairo-t))))
    (autowrap:define-foreign-function
     '(cairo-status-to-string "cairo_status_to_string") '(:string)
     '((|status| cairo-status-t)))
    (autowrap:define-foreign-function
     '(cairo-device-reference "cairo_device_reference")
     '(:pointer cairo-device-t) '((|device| (:pointer cairo-device-t))))
    (progn
     (defparameter +cairo-device-type-drm+ 0)
     (defparameter +cairo-device-type-gl+ 1)
     (defparameter +cairo-device-type-script+ 2)
     (defparameter +cairo-device-type-xcb+ 3)
     (defparameter +cairo-device-type-xlib+ 4)
     (defparameter +cairo-device-type-xml+ 5)
     (defparameter +cairo-device-type-cogl+ 6)
     (defparameter +cairo-device-type-win32+ 7)
     (defparameter +cairo-device-type-invalid+ 4294967295)
     (autowrap:define-foreign-enum '_cairo_device_type 0
                                   '((:drm . 0) (:gl . 1) (:script . 2)
                                     (:xcb . 3) (:xlib . 4) (:xml . 5)
                                     (:cogl . 6) (:win32 . 7)
                                     (:invalid . 4294967295))))
    (autowrap:define-foreign-alias 'cairo-device-type-t
                                   '(:enum (_cairo_device_type)))
    (autowrap:define-foreign-function
     '(cairo-device-get-type "cairo_device_get_type") 'cairo-device-type-t
     '((|device| (:pointer cairo-device-t))))
    (autowrap:define-foreign-function
     '(cairo-device-status "cairo_device_status") 'cairo-status-t
     '((|device| (:pointer cairo-device-t))))
    (autowrap:define-foreign-function
     '(cairo-device-acquire "cairo_device_acquire") 'cairo-status-t
     '((|device| (:pointer cairo-device-t))))
    (autowrap:define-foreign-function
     '(cairo-device-release "cairo_device_release") ':void
     '((|device| (:pointer cairo-device-t))))
    (autowrap:define-foreign-function
     '(cairo-device-flush "cairo_device_flush") ':void
     '((|device| (:pointer cairo-device-t))))
    (autowrap:define-foreign-function
     '(cairo-device-finish "cairo_device_finish") ':void
     '((|device| (:pointer cairo-device-t))))
    (autowrap:define-foreign-function
     '(cairo-device-destroy "cairo_device_destroy") ':void
     '((|device| (:pointer cairo-device-t))))
    (autowrap:define-foreign-function
     '(cairo-device-get-reference-count "cairo_device_get_reference_count")
     ':unsigned-int '((|device| (:pointer cairo-device-t))))
    (autowrap:define-foreign-function
     '(cairo-device-get-user-data "cairo_device_get_user_data")
     '(:pointer :void)
     '((|device| (:pointer cairo-device-t))
       (|key| (:pointer cairo-user-data-key-t))))
    (autowrap:define-foreign-function
     '(cairo-device-set-user-data "cairo_device_set_user_data") 'cairo-status-t
     '((|device| (:pointer cairo-device-t))
       (|key| (:pointer cairo-user-data-key-t)) (|user_data| (:pointer :void))
       (|destroy| cairo-destroy-func-t)))
    (autowrap:define-foreign-function
     '(cairo-surface-create-similar "cairo_surface_create_similar")
     '(:pointer cairo-surface-t)
     '((|other| (:pointer cairo-surface-t)) (|content| cairo-content-t)
       (|width| :int) (|height| :int)))
    (autowrap:define-foreign-function
     '(cairo-surface-create-similar-image "cairo_surface_create_similar_image")
     '(:pointer cairo-surface-t)
     '((|other| (:pointer cairo-surface-t)) (|format| cairo-format-t)
       (|width| :int) (|height| :int)))
    (autowrap:define-foreign-function
     '(cairo-surface-map-to-image "cairo_surface_map_to_image")
     '(:pointer cairo-surface-t)
     '((|surface| (:pointer cairo-surface-t))
       (|extents| (:pointer cairo-rectangle-int-t))))
    (autowrap:define-foreign-function
     '(cairo-surface-unmap-image "cairo_surface_unmap_image") ':void
     '((|surface| (:pointer cairo-surface-t))
       (|image| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-surface-create-for-rectangle "cairo_surface_create_for_rectangle")
     '(:pointer cairo-surface-t)
     '((|target| (:pointer cairo-surface-t)) (|x| :double) (|y| :double)
       (|width| :double) (|height| :double)))
    (progn
     (defparameter +cairo-surface-observer-normal+ 0)
     (defparameter +cairo-surface-observer-record-operations+ 1)
     (autowrap:define-foreign-enum '#:anon-type-2164 21
                                   '((:normal . 0) (:record-operations . 1))))
    (autowrap:define-foreign-alias 'cairo-surface-observer-mode-t
                                   '(:enum (nil :id 21)))
    (autowrap:define-foreign-function
     '(cairo-surface-create-observer "cairo_surface_create_observer")
     '(:pointer cairo-surface-t)
     '((|target| (:pointer cairo-surface-t))
       (|mode| cairo-surface-observer-mode-t)))
    (autowrap:define-foreign-alias 'cairo-surface-observer-callback-t
                                   '(:pointer (:void)))
    (autowrap:define-foreign-function
     '(cairo-surface-observer-add-paint-callback
       "cairo_surface_observer_add_paint_callback")
     'cairo-status-t
     '((|abstract_surface| (:pointer cairo-surface-t))
       (|func| cairo-surface-observer-callback-t) (|data| (:pointer :void))))
    (autowrap:define-foreign-function
     '(cairo-surface-observer-add-mask-callback
       "cairo_surface_observer_add_mask_callback")
     'cairo-status-t
     '((|abstract_surface| (:pointer cairo-surface-t))
       (|func| cairo-surface-observer-callback-t) (|data| (:pointer :void))))
    (autowrap:define-foreign-function
     '(cairo-surface-observer-add-fill-callback
       "cairo_surface_observer_add_fill_callback")
     'cairo-status-t
     '((|abstract_surface| (:pointer cairo-surface-t))
       (|func| cairo-surface-observer-callback-t) (|data| (:pointer :void))))
    (autowrap:define-foreign-function
     '(cairo-surface-observer-add-stroke-callback
       "cairo_surface_observer_add_stroke_callback")
     'cairo-status-t
     '((|abstract_surface| (:pointer cairo-surface-t))
       (|func| cairo-surface-observer-callback-t) (|data| (:pointer :void))))
    (autowrap:define-foreign-function
     '(cairo-surface-observer-add-glyphs-callback
       "cairo_surface_observer_add_glyphs_callback")
     'cairo-status-t
     '((|abstract_surface| (:pointer cairo-surface-t))
       (|func| cairo-surface-observer-callback-t) (|data| (:pointer :void))))
    (autowrap:define-foreign-function
     '(cairo-surface-observer-add-flush-callback
       "cairo_surface_observer_add_flush_callback")
     'cairo-status-t
     '((|abstract_surface| (:pointer cairo-surface-t))
       (|func| cairo-surface-observer-callback-t) (|data| (:pointer :void))))
    (autowrap:define-foreign-function
     '(cairo-surface-observer-add-finish-callback
       "cairo_surface_observer_add_finish_callback")
     'cairo-status-t
     '((|abstract_surface| (:pointer cairo-surface-t))
       (|func| cairo-surface-observer-callback-t) (|data| (:pointer :void))))
    (autowrap:define-foreign-function
     '(cairo-surface-observer-print "cairo_surface_observer_print")
     'cairo-status-t
     '((|abstract_surface| (:pointer cairo-surface-t))
       (|write_func| cairo-write-func-t) (|closure| (:pointer :void))))
    (autowrap:define-foreign-function
     '(cairo-surface-observer-elapsed "cairo_surface_observer_elapsed")
     ':double '((|abstract_surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-device-observer-print "cairo_device_observer_print")
     'cairo-status-t
     '((|abstract_device| (:pointer cairo-device-t))
       (|write_func| cairo-write-func-t) (|closure| (:pointer :void))))
    (autowrap:define-foreign-function
     '(cairo-device-observer-elapsed "cairo_device_observer_elapsed") ':double
     '((|abstract_device| (:pointer cairo-device-t))))
    (autowrap:define-foreign-function
     '(cairo-device-observer-paint-elapsed
       "cairo_device_observer_paint_elapsed")
     ':double '((|abstract_device| (:pointer cairo-device-t))))
    (autowrap:define-foreign-function
     '(cairo-device-observer-mask-elapsed "cairo_device_observer_mask_elapsed")
     ':double '((|abstract_device| (:pointer cairo-device-t))))
    (autowrap:define-foreign-function
     '(cairo-device-observer-fill-elapsed "cairo_device_observer_fill_elapsed")
     ':double '((|abstract_device| (:pointer cairo-device-t))))
    (autowrap:define-foreign-function
     '(cairo-device-observer-stroke-elapsed
       "cairo_device_observer_stroke_elapsed")
     ':double '((|abstract_device| (:pointer cairo-device-t))))
    (autowrap:define-foreign-function
     '(cairo-device-observer-glyphs-elapsed
       "cairo_device_observer_glyphs_elapsed")
     ':double '((|abstract_device| (:pointer cairo-device-t))))
    (autowrap:define-foreign-function
     '(cairo-surface-reference "cairo_surface_reference")
     '(:pointer cairo-surface-t) '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-surface-finish "cairo_surface_finish") ':void
     '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-surface-destroy "cairo_surface_destroy") ':void
     '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-surface-get-device "cairo_surface_get_device")
     '(:pointer cairo-device-t) '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-surface-get-reference-count "cairo_surface_get_reference_count")
     ':unsigned-int '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-surface-status "cairo_surface_status") 'cairo-status-t
     '((|surface| (:pointer cairo-surface-t))))
    (progn
     (defparameter +cairo-surface-type-image+ 0)
     (defparameter +cairo-surface-type-pdf+ 1)
     (defparameter +cairo-surface-type-ps+ 2)
     (defparameter +cairo-surface-type-xlib+ 3)
     (defparameter +cairo-surface-type-xcb+ 4)
     (defparameter +cairo-surface-type-glitz+ 5)
     (defparameter +cairo-surface-type-quartz+ 6)
     (defparameter +cairo-surface-type-win32+ 7)
     (defparameter +cairo-surface-type-beos+ 8)
     (defparameter +cairo-surface-type-directfb+ 9)
     (defparameter +cairo-surface-type-svg+ 10)
     (defparameter +cairo-surface-type-os2+ 11)
     (defparameter +cairo-surface-type-win32-printing+ 12)
     (defparameter +cairo-surface-type-quartz-image+ 13)
     (defparameter +cairo-surface-type-script+ 14)
     (defparameter +cairo-surface-type-qt+ 15)
     (defparameter +cairo-surface-type-recording+ 16)
     (defparameter +cairo-surface-type-vg+ 17)
     (defparameter +cairo-surface-type-gl+ 18)
     (defparameter +cairo-surface-type-drm+ 19)
     (defparameter +cairo-surface-type-tee+ 20)
     (defparameter +cairo-surface-type-xml+ 21)
     (defparameter +cairo-surface-type-skia+ 22)
     (defparameter +cairo-surface-type-subsurface+ 23)
     (defparameter +cairo-surface-type-cogl+ 24)
     (autowrap:define-foreign-enum '_cairo_surface_type 0
                                   '((:image . 0) (:pdf . 1) (:ps . 2)
                                     (:xlib . 3) (:xcb . 4) (:glitz . 5)
                                     (:quartz . 6) (:win32 . 7) (:beos . 8)
                                     (:directfb . 9) (:svg . 10) (:os2 . 11)
                                     (:win32-printing . 12)
                                     (:quartz-image . 13) (:script . 14)
                                     (:qt . 15) (:recording . 16) (:vg . 17)
                                     (:gl . 18) (:drm . 19) (:tee . 20)
                                     (:xml . 21) (:skia . 22)
                                     (:subsurface . 23) (:cogl . 24))))
    (autowrap:define-foreign-alias 'cairo-surface-type-t
                                   '(:enum (_cairo_surface_type)))
    (autowrap:define-foreign-function
     '(cairo-surface-get-type "cairo_surface_get_type") 'cairo-surface-type-t
     '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-surface-get-content "cairo_surface_get_content") 'cairo-content-t
     '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-surface-write-to-png "cairo_surface_write_to_png") 'cairo-status-t
     '((|surface| (:pointer cairo-surface-t)) (|filename| (:string))))
    (autowrap:define-foreign-function
     '(cairo-surface-write-to-png-stream "cairo_surface_write_to_png_stream")
     'cairo-status-t
     '((|surface| (:pointer cairo-surface-t)) (|write_func| cairo-write-func-t)
       (|closure| (:pointer :void))))
    (autowrap:define-foreign-function
     '(cairo-surface-get-user-data "cairo_surface_get_user_data")
     '(:pointer :void)
     '((|surface| (:pointer cairo-surface-t))
       (|key| (:pointer cairo-user-data-key-t))))
    (autowrap:define-foreign-function
     '(cairo-surface-set-user-data "cairo_surface_set_user_data")
     'cairo-status-t
     '((|surface| (:pointer cairo-surface-t))
       (|key| (:pointer cairo-user-data-key-t)) (|user_data| (:pointer :void))
       (|destroy| cairo-destroy-func-t)))
    (autowrap:define-foreign-function
     '(cairo-surface-get-mime-data "cairo_surface_get_mime_data") ':void
     '((|surface| (:pointer cairo-surface-t)) (|mime_type| (:string))
       (|data| (:pointer (:string))) (|length| (:pointer :unsigned-long))))
    (autowrap:define-foreign-function
     '(cairo-surface-set-mime-data "cairo_surface_set_mime_data")
     'cairo-status-t
     '((|surface| (:pointer cairo-surface-t)) (|mime_type| (:string))
       (|data| (:string)) (|length| :unsigned-long)
       (|destroy| cairo-destroy-func-t) (|closure| (:pointer :void))))
    (autowrap:define-foreign-function
     '(cairo-surface-supports-mime-type "cairo_surface_supports_mime_type")
     'cairo-bool-t
     '((|surface| (:pointer cairo-surface-t)) (|mime_type| (:string))))
    (autowrap:define-foreign-function
     '(cairo-surface-get-font-options "cairo_surface_get_font_options") ':void
     '((|surface| (:pointer cairo-surface-t))
       (|options| (:pointer cairo-font-options-t))))
    (autowrap:define-foreign-function
     '(cairo-surface-flush "cairo_surface_flush") ':void
     '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-surface-mark-dirty "cairo_surface_mark_dirty") ':void
     '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-surface-mark-dirty-rectangle "cairo_surface_mark_dirty_rectangle")
     ':void
     '((|surface| (:pointer cairo-surface-t)) (|x| :int) (|y| :int)
       (|width| :int) (|height| :int)))
    (autowrap:define-foreign-function
     '(cairo-surface-set-device-scale "cairo_surface_set_device_scale") ':void
     '((|surface| (:pointer cairo-surface-t)) (|x_scale| :double)
       (|y_scale| :double)))
    (autowrap:define-foreign-function
     '(cairo-surface-get-device-scale "cairo_surface_get_device_scale") ':void
     '((|surface| (:pointer cairo-surface-t)) (|x_scale| (:pointer :double))
       (|y_scale| (:pointer :double))))
    (autowrap:define-foreign-function
     '(cairo-surface-set-device-offset "cairo_surface_set_device_offset")
     ':void
     '((|surface| (:pointer cairo-surface-t)) (|x_offset| :double)
       (|y_offset| :double)))
    (autowrap:define-foreign-function
     '(cairo-surface-get-device-offset "cairo_surface_get_device_offset")
     ':void
     '((|surface| (:pointer cairo-surface-t)) (|x_offset| (:pointer :double))
       (|y_offset| (:pointer :double))))
    (autowrap:define-foreign-function
     '(cairo-surface-set-fallback-resolution
       "cairo_surface_set_fallback_resolution")
     ':void
     '((|surface| (:pointer cairo-surface-t)) (|x_pixels_per_inch| :double)
       (|y_pixels_per_inch| :double)))
    (autowrap:define-foreign-function
     '(cairo-surface-get-fallback-resolution
       "cairo_surface_get_fallback_resolution")
     ':void
     '((|surface| (:pointer cairo-surface-t))
       (|x_pixels_per_inch| (:pointer :double))
       (|y_pixels_per_inch| (:pointer :double))))
    (autowrap:define-foreign-function
     '(cairo-surface-copy-page "cairo_surface_copy_page") ':void
     '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-surface-show-page "cairo_surface_show_page") ':void
     '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-surface-has-show-text-glyphs "cairo_surface_has_show_text_glyphs")
     'cairo-bool-t '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-image-surface-create "cairo_image_surface_create")
     '(:pointer cairo-surface-t)
     '((|format| cairo-format-t) (|width| :int) (|height| :int)))
    (autowrap:define-foreign-function
     '(cairo-format-stride-for-width "cairo_format_stride_for_width") ':int
     '((|format| cairo-format-t) (|width| :int)))
    (autowrap:define-foreign-function
     '(cairo-image-surface-create-for-data
       "cairo_image_surface_create_for_data")
     '(:pointer cairo-surface-t)
     '((|data| (:string)) (|format| cairo-format-t) (|width| :int)
       (|height| :int) (|stride| :int)))
    (autowrap:define-foreign-function
     '(cairo-image-surface-get-data "cairo_image_surface_get_data") '(:string)
     '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-image-surface-get-format "cairo_image_surface_get_format")
     'cairo-format-t '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-image-surface-get-width "cairo_image_surface_get_width") ':int
     '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-image-surface-get-height "cairo_image_surface_get_height") ':int
     '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-image-surface-get-stride "cairo_image_surface_get_stride") ':int
     '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-image-surface-create-from-png
       "cairo_image_surface_create_from_png")
     '(:pointer cairo-surface-t) '((|filename| (:string))))
    (autowrap:define-foreign-function
     '(cairo-image-surface-create-from-png-stream
       "cairo_image_surface_create_from_png_stream")
     '(:pointer cairo-surface-t)
     '((|read_func| cairo-read-func-t) (|closure| (:pointer :void))))
    (autowrap:define-foreign-function
     '(cairo-recording-surface-create "cairo_recording_surface_create")
     '(:pointer cairo-surface-t)
     '((|content| cairo-content-t) (|extents| (:pointer cairo-rectangle-t))))
    (autowrap:define-foreign-function
     '(cairo-recording-surface-ink-extents
       "cairo_recording_surface_ink_extents")
     ':void
     '((|surface| (:pointer cairo-surface-t)) (|x0| (:pointer :double))
       (|y0| (:pointer :double)) (|width| (:pointer :double))
       (|height| (:pointer :double))))
    (autowrap:define-foreign-function
     '(cairo-recording-surface-get-extents
       "cairo_recording_surface_get_extents")
     'cairo-bool-t
     '((|surface| (:pointer cairo-surface-t))
       (|extents| (:pointer cairo-rectangle-t))))
    (autowrap:define-foreign-alias 'cairo-raster-source-acquire-func-t
                                   '(:pointer (:void)))
    (autowrap:define-foreign-alias 'cairo-raster-source-release-func-t
                                   '(:pointer (:void)))
    (autowrap:define-foreign-alias 'cairo-raster-source-snapshot-func-t
                                   '(:pointer (:void)))
    (autowrap:define-foreign-alias 'cairo-raster-source-copy-func-t
                                   '(:pointer (:void)))
    (autowrap:define-foreign-alias 'cairo-raster-source-finish-func-t
                                   '(:pointer (:void)))
    (autowrap:define-foreign-function
     '(cairo-pattern-create-raster-source "cairo_pattern_create_raster_source")
     '(:pointer cairo-pattern-t)
     '((|user_data| (:pointer :void)) (|content| cairo-content-t)
       (|width| :int) (|height| :int)))
    (autowrap:define-foreign-function
     '(cairo-raster-source-pattern-set-callback-data
       "cairo_raster_source_pattern_set_callback_data")
     ':void
     '((|pattern| (:pointer cairo-pattern-t)) (|data| (:pointer :void))))
    (autowrap:define-foreign-function
     '(cairo-raster-source-pattern-get-callback-data
       "cairo_raster_source_pattern_get_callback_data")
     '(:pointer :void) '((|pattern| (:pointer cairo-pattern-t))))
    (autowrap:define-foreign-function
     '(cairo-raster-source-pattern-set-acquire
       "cairo_raster_source_pattern_set_acquire")
     ':void
     '((|pattern| (:pointer cairo-pattern-t))
       (|acquire| cairo-raster-source-acquire-func-t)
       (|release| cairo-raster-source-release-func-t)))
    (autowrap:define-foreign-function
     '(cairo-raster-source-pattern-get-acquire
       "cairo_raster_source_pattern_get_acquire")
     ':void
     '((|pattern| (:pointer cairo-pattern-t))
       (|acquire| (:pointer cairo-raster-source-acquire-func-t))
       (|release| (:pointer cairo-raster-source-release-func-t))))
    (autowrap:define-foreign-function
     '(cairo-raster-source-pattern-set-snapshot
       "cairo_raster_source_pattern_set_snapshot")
     ':void
     '((|pattern| (:pointer cairo-pattern-t))
       (|snapshot| cairo-raster-source-snapshot-func-t)))
    (autowrap:define-foreign-function
     '(cairo-raster-source-pattern-get-snapshot
       "cairo_raster_source_pattern_get_snapshot")
     'cairo-raster-source-snapshot-func-t
     '((|pattern| (:pointer cairo-pattern-t))))
    (autowrap:define-foreign-function
     '(cairo-raster-source-pattern-set-copy
       "cairo_raster_source_pattern_set_copy")
     ':void
     '((|pattern| (:pointer cairo-pattern-t))
       (|copy| cairo-raster-source-copy-func-t)))
    (autowrap:define-foreign-function
     '(cairo-raster-source-pattern-get-copy
       "cairo_raster_source_pattern_get_copy")
     'cairo-raster-source-copy-func-t
     '((|pattern| (:pointer cairo-pattern-t))))
    (autowrap:define-foreign-function
     '(cairo-raster-source-pattern-set-finish
       "cairo_raster_source_pattern_set_finish")
     ':void
     '((|pattern| (:pointer cairo-pattern-t))
       (|finish| cairo-raster-source-finish-func-t)))
    (autowrap:define-foreign-function
     '(cairo-raster-source-pattern-get-finish
       "cairo_raster_source_pattern_get_finish")
     'cairo-raster-source-finish-func-t
     '((|pattern| (:pointer cairo-pattern-t))))
    (autowrap:define-foreign-function
     '(cairo-pattern-create-rgb "cairo_pattern_create_rgb")
     '(:pointer cairo-pattern-t)
     '((|red| :double) (|green| :double) (|blue| :double)))
    (autowrap:define-foreign-function
     '(cairo-pattern-create-rgba "cairo_pattern_create_rgba")
     '(:pointer cairo-pattern-t)
     '((|red| :double) (|green| :double) (|blue| :double) (|alpha| :double)))
    (autowrap:define-foreign-function
     '(cairo-pattern-create-for-surface "cairo_pattern_create_for_surface")
     '(:pointer cairo-pattern-t) '((|surface| (:pointer cairo-surface-t))))
    (autowrap:define-foreign-function
     '(cairo-pattern-create-linear "cairo_pattern_create_linear")
     '(:pointer cairo-pattern-t)
     '((|x0| :double) (|y0| :double) (|x1| :double) (|y1| :double)))
    (autowrap:define-foreign-function
     '(cairo-pattern-create-radial "cairo_pattern_create_radial")
     '(:pointer cairo-pattern-t)
     '((|cx0| :double) (|cy0| :double) (|radius0| :double) (|cx1| :double)
       (|cy1| :double) (|radius1| :double)))
    (autowrap:define-foreign-function
     '(cairo-pattern-create-mesh "cairo_pattern_create_mesh")
     '(:pointer cairo-pattern-t) 'nil)
    (autowrap:define-foreign-function
     '(cairo-pattern-reference "cairo_pattern_reference")
     '(:pointer cairo-pattern-t) '((|pattern| (:pointer cairo-pattern-t))))
    (autowrap:define-foreign-function
     '(cairo-pattern-destroy "cairo_pattern_destroy") ':void
     '((|pattern| (:pointer cairo-pattern-t))))
    (autowrap:define-foreign-function
     '(cairo-pattern-get-reference-count "cairo_pattern_get_reference_count")
     ':unsigned-int '((|pattern| (:pointer cairo-pattern-t))))
    (autowrap:define-foreign-function
     '(cairo-pattern-status "cairo_pattern_status") 'cairo-status-t
     '((|pattern| (:pointer cairo-pattern-t))))
    (autowrap:define-foreign-function
     '(cairo-pattern-get-user-data "cairo_pattern_get_user_data")
     '(:pointer :void)
     '((|pattern| (:pointer cairo-pattern-t))
       (|key| (:pointer cairo-user-data-key-t))))
    (autowrap:define-foreign-function
     '(cairo-pattern-set-user-data "cairo_pattern_set_user_data")
     'cairo-status-t
     '((|pattern| (:pointer cairo-pattern-t))
       (|key| (:pointer cairo-user-data-key-t)) (|user_data| (:pointer :void))
       (|destroy| cairo-destroy-func-t)))
    (progn
     (defparameter +cairo-pattern-type-solid+ 0)
     (defparameter +cairo-pattern-type-surface+ 1)
     (defparameter +cairo-pattern-type-linear+ 2)
     (defparameter +cairo-pattern-type-radial+ 3)
     (defparameter +cairo-pattern-type-mesh+ 4)
     (defparameter +cairo-pattern-type-raster-source+ 5)
     (autowrap:define-foreign-enum '_cairo_pattern_type 0
                                   '((:solid . 0) (:surface . 1) (:linear . 2)
                                     (:radial . 3) (:mesh . 4)
                                     (:raster-source . 5))))
    (autowrap:define-foreign-alias 'cairo-pattern-type-t
                                   '(:enum (_cairo_pattern_type)))
    (autowrap:define-foreign-function
     '(cairo-pattern-get-type "cairo_pattern_get_type") 'cairo-pattern-type-t
     '((|pattern| (:pointer cairo-pattern-t))))
    (autowrap:define-foreign-function
     '(cairo-pattern-add-color-stop-rgb "cairo_pattern_add_color_stop_rgb")
     ':void
     '((|pattern| (:pointer cairo-pattern-t)) (|offset| :double)
       (|red| :double) (|green| :double) (|blue| :double)))
    (autowrap:define-foreign-function
     '(cairo-pattern-add-color-stop-rgba "cairo_pattern_add_color_stop_rgba")
     ':void
     '((|pattern| (:pointer cairo-pattern-t)) (|offset| :double)
       (|red| :double) (|green| :double) (|blue| :double) (|alpha| :double)))
    (autowrap:define-foreign-function
     '(cairo-mesh-pattern-begin-patch "cairo_mesh_pattern_begin_patch") ':void
     '((|pattern| (:pointer cairo-pattern-t))))
    (autowrap:define-foreign-function
     '(cairo-mesh-pattern-end-patch "cairo_mesh_pattern_end_patch") ':void
     '((|pattern| (:pointer cairo-pattern-t))))
    (autowrap:define-foreign-function
     '(cairo-mesh-pattern-curve-to "cairo_mesh_pattern_curve_to") ':void
     '((|pattern| (:pointer cairo-pattern-t)) (|x1| :double) (|y1| :double)
       (|x2| :double) (|y2| :double) (|x3| :double) (|y3| :double)))
    (autowrap:define-foreign-function
     '(cairo-mesh-pattern-line-to "cairo_mesh_pattern_line_to") ':void
     '((|pattern| (:pointer cairo-pattern-t)) (|x| :double) (|y| :double)))
    (autowrap:define-foreign-function
     '(cairo-mesh-pattern-move-to "cairo_mesh_pattern_move_to") ':void
     '((|pattern| (:pointer cairo-pattern-t)) (|x| :double) (|y| :double)))
    (autowrap:define-foreign-function
     '(cairo-mesh-pattern-set-control-point
       "cairo_mesh_pattern_set_control_point")
     ':void
     '((|pattern| (:pointer cairo-pattern-t)) (|point_num| :unsigned-int)
       (|x| :double) (|y| :double)))
    (autowrap:define-foreign-function
     '(cairo-mesh-pattern-set-corner-color-rgb
       "cairo_mesh_pattern_set_corner_color_rgb")
     ':void
     '((|pattern| (:pointer cairo-pattern-t)) (|corner_num| :unsigned-int)
       (|red| :double) (|green| :double) (|blue| :double)))
    (autowrap:define-foreign-function
     '(cairo-mesh-pattern-set-corner-color-rgba
       "cairo_mesh_pattern_set_corner_color_rgba")
     ':void
     '((|pattern| (:pointer cairo-pattern-t)) (|corner_num| :unsigned-int)
       (|red| :double) (|green| :double) (|blue| :double) (|alpha| :double)))
    (autowrap:define-foreign-function
     '(cairo-pattern-set-matrix "cairo_pattern_set_matrix") ':void
     '((|pattern| (:pointer cairo-pattern-t))
       (|matrix| (:pointer cairo-matrix-t))))
    (autowrap:define-foreign-function
     '(cairo-pattern-get-matrix "cairo_pattern_get_matrix") ':void
     '((|pattern| (:pointer cairo-pattern-t))
       (|matrix| (:pointer cairo-matrix-t))))
    (progn
     (defparameter +cairo-extend-none+ 0)
     (defparameter +cairo-extend-repeat+ 1)
     (defparameter +cairo-extend-reflect+ 2)
     (defparameter +cairo-extend-pad+ 3)
     (autowrap:define-foreign-enum '_cairo_extend 0
                                   '((:none . 0) (:repeat . 1) (:reflect . 2)
                                     (:pad . 3))))
    (autowrap:define-foreign-alias 'cairo-extend-t '(:enum (_cairo_extend)))
    (autowrap:define-foreign-function
     '(cairo-pattern-set-extend "cairo_pattern_set_extend") ':void
     '((|pattern| (:pointer cairo-pattern-t)) (|extend| cairo-extend-t)))
    (autowrap:define-foreign-function
     '(cairo-pattern-get-extend "cairo_pattern_get_extend") 'cairo-extend-t
     '((|pattern| (:pointer cairo-pattern-t))))
    (progn
     (defparameter +cairo-filter-fast+ 0)
     (defparameter +cairo-filter-good+ 1)
     (defparameter +cairo-filter-best+ 2)
     (defparameter +cairo-filter-nearest+ 3)
     (defparameter +cairo-filter-bilinear+ 4)
     (defparameter +cairo-filter-gaussian+ 5)
     (autowrap:define-foreign-enum '_cairo_filter 0
                                   '((:fast . 0) (:good . 1) (:best . 2)
                                     (:nearest . 3) (:bilinear . 4)
                                     (:gaussian . 5))))
    (autowrap:define-foreign-alias 'cairo-filter-t '(:enum (_cairo_filter)))
    (autowrap:define-foreign-function
     '(cairo-pattern-set-filter "cairo_pattern_set_filter") ':void
     '((|pattern| (:pointer cairo-pattern-t)) (|filter| cairo-filter-t)))
    (autowrap:define-foreign-function
     '(cairo-pattern-get-filter "cairo_pattern_get_filter") 'cairo-filter-t
     '((|pattern| (:pointer cairo-pattern-t))))
    (autowrap:define-foreign-function
     '(cairo-pattern-get-rgba "cairo_pattern_get_rgba") 'cairo-status-t
     '((|pattern| (:pointer cairo-pattern-t)) (|red| (:pointer :double))
       (|green| (:pointer :double)) (|blue| (:pointer :double))
       (|alpha| (:pointer :double))))
    (autowrap:define-foreign-function
     '(cairo-pattern-get-surface "cairo_pattern_get_surface") 'cairo-status-t
     '((|pattern| (:pointer cairo-pattern-t))
       (|surface| (:pointer (:pointer cairo-surface-t)))))
    (autowrap:define-foreign-function
     '(cairo-pattern-get-color-stop-rgba "cairo_pattern_get_color_stop_rgba")
     'cairo-status-t
     '((|pattern| (:pointer cairo-pattern-t)) (|index| :int)
       (|offset| (:pointer :double)) (|red| (:pointer :double))
       (|green| (:pointer :double)) (|blue| (:pointer :double))
       (|alpha| (:pointer :double))))
    (autowrap:define-foreign-function
     '(cairo-pattern-get-color-stop-count "cairo_pattern_get_color_stop_count")
     'cairo-status-t
     '((|pattern| (:pointer cairo-pattern-t)) (|count| (:pointer :int))))
    (autowrap:define-foreign-function
     '(cairo-pattern-get-linear-points "cairo_pattern_get_linear_points")
     'cairo-status-t
     '((|pattern| (:pointer cairo-pattern-t)) (|x0| (:pointer :double))
       (|y0| (:pointer :double)) (|x1| (:pointer :double))
       (|y1| (:pointer :double))))
    (autowrap:define-foreign-function
     '(cairo-pattern-get-radial-circles "cairo_pattern_get_radial_circles")
     'cairo-status-t
     '((|pattern| (:pointer cairo-pattern-t)) (|x0| (:pointer :double))
       (|y0| (:pointer :double)) (|r0| (:pointer :double))
       (|x1| (:pointer :double)) (|y1| (:pointer :double))
       (|r1| (:pointer :double))))
    (autowrap:define-foreign-function
     '(cairo-mesh-pattern-get-patch-count "cairo_mesh_pattern_get_patch_count")
     'cairo-status-t
     '((|pattern| (:pointer cairo-pattern-t))
       (|count| (:pointer :unsigned-int))))
    (autowrap:define-foreign-function
     '(cairo-mesh-pattern-get-path "cairo_mesh_pattern_get_path")
     '(:pointer cairo-path-t)
     '((|pattern| (:pointer cairo-pattern-t)) (|patch_num| :unsigned-int)))
    (autowrap:define-foreign-function
     '(cairo-mesh-pattern-get-corner-color-rgba
       "cairo_mesh_pattern_get_corner_color_rgba")
     'cairo-status-t
     '((|pattern| (:pointer cairo-pattern-t)) (|patch_num| :unsigned-int)
       (|corner_num| :unsigned-int) (|red| (:pointer :double))
       (|green| (:pointer :double)) (|blue| (:pointer :double))
       (|alpha| (:pointer :double))))
    (autowrap:define-foreign-function
     '(cairo-mesh-pattern-get-control-point
       "cairo_mesh_pattern_get_control_point")
     'cairo-status-t
     '((|pattern| (:pointer cairo-pattern-t)) (|patch_num| :unsigned-int)
       (|point_num| :unsigned-int) (|x| (:pointer :double))
       (|y| (:pointer :double))))
    (autowrap:define-foreign-function '(cairo-matrix-init "cairo_matrix_init")
                                      ':void
                                      '((|matrix| (:pointer cairo-matrix-t))
                                        (|xx| :double) (|yx| :double)
                                        (|xy| :double) (|yy| :double)
                                        (|x0| :double) (|y0| :double)))
    (autowrap:define-foreign-function
     '(cairo-matrix-init-identity "cairo_matrix_init_identity") ':void
     '((|matrix| (:pointer cairo-matrix-t))))
    (autowrap:define-foreign-function
     '(cairo-matrix-init-translate "cairo_matrix_init_translate") ':void
     '((|matrix| (:pointer cairo-matrix-t)) (|tx| :double) (|ty| :double)))
    (autowrap:define-foreign-function
     '(cairo-matrix-init-scale "cairo_matrix_init_scale") ':void
     '((|matrix| (:pointer cairo-matrix-t)) (|sx| :double) (|sy| :double)))
    (autowrap:define-foreign-function
     '(cairo-matrix-init-rotate "cairo_matrix_init_rotate") ':void
     '((|matrix| (:pointer cairo-matrix-t)) (|radians| :double)))
    (autowrap:define-foreign-function
     '(cairo-matrix-translate "cairo_matrix_translate") ':void
     '((|matrix| (:pointer cairo-matrix-t)) (|tx| :double) (|ty| :double)))
    (autowrap:define-foreign-function
     '(cairo-matrix-scale "cairo_matrix_scale") ':void
     '((|matrix| (:pointer cairo-matrix-t)) (|sx| :double) (|sy| :double)))
    (autowrap:define-foreign-function
     '(cairo-matrix-rotate "cairo_matrix_rotate") ':void
     '((|matrix| (:pointer cairo-matrix-t)) (|radians| :double)))
    (autowrap:define-foreign-function
     '(cairo-matrix-invert "cairo_matrix_invert") 'cairo-status-t
     '((|matrix| (:pointer cairo-matrix-t))))
    (autowrap:define-foreign-function
     '(cairo-matrix-multiply "cairo_matrix_multiply") ':void
     '((|result| (:pointer cairo-matrix-t)) (|a| (:pointer cairo-matrix-t))
       (|b| (:pointer cairo-matrix-t))))
    (autowrap:define-foreign-function
     '(cairo-matrix-transform-distance "cairo_matrix_transform_distance")
     ':void
     '((|matrix| (:pointer cairo-matrix-t)) (|dx| (:pointer :double))
       (|dy| (:pointer :double))))
    (autowrap:define-foreign-function
     '(cairo-matrix-transform-point "cairo_matrix_transform_point") ':void
     '((|matrix| (:pointer cairo-matrix-t)) (|x| (:pointer :double))
       (|y| (:pointer :double))))
    (autowrap:define-foreign-record '_cairo_region :struct 0 0 'nil)
    (autowrap:define-foreign-alias 'cairo-region-t
                                   '(autowrap::struct
                                     (_cairo_region :bit-size 0 :bit-alignment
                                      0)))
    (progn
     (defparameter +cairo-region-overlap-in+ 0)
     (defparameter +cairo-region-overlap-out+ 1)
     (defparameter +cairo-region-overlap-part+ 2)
     (autowrap:define-foreign-enum '_cairo_region_overlap 0
                                   '((:in . 0) (:out . 1) (:part . 2))))
    (autowrap:define-foreign-alias 'cairo-region-overlap-t
                                   '(:enum (_cairo_region_overlap)))
    (autowrap:define-foreign-function
     '(cairo-region-create "cairo_region_create") '(:pointer cairo-region-t)
     'nil)
    (autowrap:define-foreign-function
     '(cairo-region-create-rectangle "cairo_region_create_rectangle")
     '(:pointer cairo-region-t)
     '((|rectangle| (:pointer cairo-rectangle-int-t))))
    (autowrap:define-foreign-function
     '(cairo-region-create-rectangles "cairo_region_create_rectangles")
     '(:pointer cairo-region-t)
     '((|rects| (:pointer cairo-rectangle-int-t)) (|count| :int)))
    (autowrap:define-foreign-function '(cairo-region-copy "cairo_region_copy")
                                      '(:pointer cairo-region-t)
                                      '((|original|
                                         (:pointer cairo-region-t))))
    (autowrap:define-foreign-function
     '(cairo-region-reference "cairo_region_reference")
     '(:pointer cairo-region-t) '((|region| (:pointer cairo-region-t))))
    (autowrap:define-foreign-function
     '(cairo-region-destroy "cairo_region_destroy") ':void
     '((|region| (:pointer cairo-region-t))))
    (autowrap:define-foreign-function
     '(cairo-region-equal "cairo_region_equal") 'cairo-bool-t
     '((|a| (:pointer cairo-region-t)) (|b| (:pointer cairo-region-t))))
    (autowrap:define-foreign-function
     '(cairo-region-status "cairo_region_status") 'cairo-status-t
     '((|region| (:pointer cairo-region-t))))
    (autowrap:define-foreign-function
     '(cairo-region-get-extents "cairo_region_get_extents") ':void
     '((|region| (:pointer cairo-region-t))
       (|extents| (:pointer cairo-rectangle-int-t))))
    (autowrap:define-foreign-function
     '(cairo-region-num-rectangles "cairo_region_num_rectangles") ':int
     '((|region| (:pointer cairo-region-t))))
    (autowrap:define-foreign-function
     '(cairo-region-get-rectangle "cairo_region_get_rectangle") ':void
     '((|region| (:pointer cairo-region-t)) (|nth| :int)
       (|rectangle| (:pointer cairo-rectangle-int-t))))
    (autowrap:define-foreign-function
     '(cairo-region-is-empty "cairo_region_is_empty") 'cairo-bool-t
     '((|region| (:pointer cairo-region-t))))
    (autowrap:define-foreign-function
     '(cairo-region-contains-rectangle "cairo_region_contains_rectangle")
     'cairo-region-overlap-t
     '((|region| (:pointer cairo-region-t))
       (|rectangle| (:pointer cairo-rectangle-int-t))))
    (autowrap:define-foreign-function
     '(cairo-region-contains-point "cairo_region_contains_point") 'cairo-bool-t
     '((|region| (:pointer cairo-region-t)) (|x| :int) (|y| :int)))
    (autowrap:define-foreign-function
     '(cairo-region-translate "cairo_region_translate") ':void
     '((|region| (:pointer cairo-region-t)) (|dx| :int) (|dy| :int)))
    (autowrap:define-foreign-function
     '(cairo-region-subtract "cairo_region_subtract") 'cairo-status-t
     '((|dst| (:pointer cairo-region-t)) (|other| (:pointer cairo-region-t))))
    (autowrap:define-foreign-function
     '(cairo-region-subtract-rectangle "cairo_region_subtract_rectangle")
     'cairo-status-t
     '((|dst| (:pointer cairo-region-t))
       (|rectangle| (:pointer cairo-rectangle-int-t))))
    (autowrap:define-foreign-function
     '(cairo-region-intersect "cairo_region_intersect") 'cairo-status-t
     '((|dst| (:pointer cairo-region-t)) (|other| (:pointer cairo-region-t))))
    (autowrap:define-foreign-function
     '(cairo-region-intersect-rectangle "cairo_region_intersect_rectangle")
     'cairo-status-t
     '((|dst| (:pointer cairo-region-t))
       (|rectangle| (:pointer cairo-rectangle-int-t))))
    (autowrap:define-foreign-function
     '(cairo-region-union "cairo_region_union") 'cairo-status-t
     '((|dst| (:pointer cairo-region-t)) (|other| (:pointer cairo-region-t))))
    (autowrap:define-foreign-function
     '(cairo-region-union-rectangle "cairo_region_union_rectangle")
     'cairo-status-t
     '((|dst| (:pointer cairo-region-t))
       (|rectangle| (:pointer cairo-rectangle-int-t))))
    (autowrap:define-foreign-function '(cairo-region-xor "cairo_region_xor")
                                      'cairo-status-t
                                      '((|dst| (:pointer cairo-region-t))
                                        (|other| (:pointer cairo-region-t))))
    (autowrap:define-foreign-function
     '(cairo-region-xor-rectangle "cairo_region_xor_rectangle") 'cairo-status-t
     '((|dst| (:pointer cairo-region-t))
       (|rectangle| (:pointer cairo-rectangle-int-t))))
    (autowrap:define-foreign-function
     '(cairo-debug-reset-static-data "cairo_debug_reset_static_data") ':void
     'nil)
    (defparameter +cairo-select-font+ nil)
    (defparameter +cairo-scale-font+ nil)
    (defparameter +cairo-concat-matrix+ nil)
    (defparameter +cairo-get-status+ nil)
    (defparameter +cairo-transform-distance+ nil)
    (defparameter +cairo-transform-point+ nil)
    (defparameter +cairo-transform-font+ nil)
    (defparameter +cairo-pattern-add-color-stop+ nil)
    (defparameter +cairo-matrix-set-identity+ nil)
    (defparameter +cairo-xlib-surface-create-for-pixmap-with-visual+ nil)
    (defparameter +cairo-set-pattern+ nil)
    (defparameter +cairo-set-rgb-color+ nil)
    (defparameter +cairo-inverse-transform-distance+ nil)
    (defparameter +cairo-inverse-transform-point+ nil)
    (defparameter +cairo-color-palette-default+ 0)
    (defparameter +cairo-matrix-set-affine+ nil)
    (defparameter +cairo-default-matrix+ nil)
    (defparameter +cairo-surface-create-for-image+ nil)
    (defparameter +cairo-init-clip+ nil)
    (defparameter +cairo-current-line-cap+ nil)
    (defparameter +cairo-current-line-width+ nil)
    (defparameter +cairo-status-string+ nil)
    (defparameter +cairo-current-fill-rule+ nil)
    (defparameter +cairo-set-target-drawable+ nil)
    (defparameter +cairo-current-matrix+ nil)
    (defparameter +cairo-set-target-xcb+ nil)
    (defparameter +cairo-get-status-string+ nil)
    (defparameter +cairo-current-miter-limit+ nil)
    (defparameter +cairo-current-line-join+ nil)
    (defparameter +cairo-set-target-win32+ nil)
    (defparameter +cairo-set-target-ps+ nil)
    (defparameter +cairo-current-font-extents+ nil)
    (defparameter +cairo-set-target-quartz+ nil)
    (defparameter +cairo-font-type-atsui+ 3)
    (defparameter +cairo-has-xlib-xrender-surface+ 1)
    (defparameter +cairo-has-xlib-surface+ 1)
    (defparameter +cairo-set-target-png+ nil)
    (defparameter +cairo-set-target-image+ nil)
    (defparameter +cairo-current-point+ nil)
    (defparameter +cairo-current-tolerance+ nil)
    (defparameter +cairo-set-target-pdf+ nil)
    (defparameter +cairo-current-operator+ nil)
    (defparameter +cairo-get-font-extents+ nil)
    (defparameter +cairo-has-png-functions+ 1)
    (defparameter +cairo-has-ps-surface+ 1)
    (defparameter +cairo-has-observer-surface+ 1)
    (defparameter +cairo-has-pdf-surface+ 1)
    (defparameter +cairo-has-image-surface+ 1)
    (defparameter +cairo-has-mime-surface+ 1)
    (defparameter +cairo-has-ft-font+ 1)
    (defparameter +cairo-has-gobject-functions+ 1)
    (defparameter +cairo-has-xcb-shm-functions+ 1)
    (defparameter +cairo-has-xcb-surface+ 1)
    (defparameter +cairo-has-tee-surface+ 1)
    (defparameter +cairo-has-user-font+ 1)
    (defparameter +cairo-has-script-surface+ 1)
    (defparameter +cairo-version+ 11800)
    (defparameter +cairo-has-recording-surface+ 1)
    (defparameter +cairo-version-string+ nil)
    (defparameter +cairo-has-svg-surface+ 1)
    (defparameter +cairo-set-target-surface+ nil)
    (defparameter +cairo-public+ nil)
    (defparameter +__gcc_have_dwarf2_cfi_asm+ 1)
    (defparameter +cairo-has-fc-font+ 1)
    (defparameter +cairo-version-minor+ 18)
    (defparameter +cairo-version-micro+ 0)
    (defparameter +_cairo_api+ nil)
    (defparameter +cairo-version-major+ 1)
    (defparameter +cairo-current-path-flat+ nil)
    (defparameter +cairo-svg-surface-set-dpi+ nil)
    (defparameter +cairo-get-path+ nil)
    (defparameter +cairo-atsui-font-face-create-for-atsu-font-id+ nil)
    (defparameter +cairo-get-path-flat+ nil)
    (defparameter +cairo-current-path+ nil)
    (defparameter +cairo-matrix-destroy+ nil)
    (defparameter +cairo-matrix-create+ nil)
    (defparameter +cairo-matrix-get-affine+ nil)
    (defparameter +cairo-matrix-copy+ nil)
    (defparameter +cairo-surface-set-filter+ nil)
    (defparameter +cairo-surface-get-matrix+ nil)
    (defparameter +cairo-surface-get-filter+ nil)
    (defparameter +cairo-surface-set-repeat+ nil)
    (defparameter +cairo-surface-set-matrix+ nil)
    (defparameter +cairo-set-alpha+ nil)
    (defparameter +cairo-current-target-surface+ nil)
    (defparameter +cairo-copy+ nil)
    (defparameter +cairo-show-surface+ nil)
    (defparameter +cairo-mime-type-eps-params+ nil)
    (defparameter +cairo-ps-surface-set-dpi+ nil)
    (defparameter +cairo-mime-type-ccitt-fax+ nil)
    (defparameter +cairo-pdf-surface-set-dpi+ nil)
    (defparameter +cairo-mime-type-ccitt-fax-params+ nil)
    (defparameter +cairo-mime-type-eps+ nil)
    (defparameter +cairo-mime-type-jbig2+ nil)
    (defparameter +cairo-xlib-surface-create-for-window-with-visual+ nil)
    (defparameter +cairo-mime-type-unique-id+ nil)
    (defparameter +cairo-mime-type-jbig2-global-id+ nil)
    (defparameter +cairo-mime-type-jbig2-global+ nil)
    (defparameter +cairo-xcb-surface-create-for-pixmap-with-visual+ nil)
    (defparameter +cairo-mime-type-png+ nil)
    (defparameter +cairo-mime-type-jpeg+ nil)
    (defparameter +cairo-mime-type-uri+ nil)
    (defparameter +cairo-mime-type-jp2+ nil)
    (defparameter +cairo-xcb-surface-create-for-window-with-visual+ nil)
    (defparameter +cairo-tag-content-ref+ nil)
    (defparameter +cairo-tag-content+ nil)
    (defparameter +cairo-tag-link+ nil)
    (defparameter +cairo-tag-dest+ nil)
    (setf autowrap::*foreign-record-index* nil))
   (autowrap:define-wrapper (:struct (_cairo)) #<package "DUMMY">)
   (autowrap:define-wrapper cairo-t #<package "DUMMY">)
   (autowrap:define-wrapper (:struct (_cairo_surface)) #<package "DUMMY">)
   (autowrap:define-wrapper cairo-surface-t #<package "DUMMY">)
   (autowrap:define-wrapper (:struct (_cairo_device)) #<package "DUMMY">)
   (autowrap:define-wrapper cairo-device-t #<package "DUMMY">)
   (autowrap:define-wrapper (:struct (_cairo_matrix)) #<package "DUMMY">)
   (autowrap:define-wrapper cairo-matrix-t #<package "DUMMY">)
   (autowrap:define-wrapper (:struct (_cairo_pattern)) #<package "DUMMY">)
   (autowrap:define-wrapper cairo-pattern-t #<package "DUMMY">)
   (autowrap:define-wrapper (:struct (_cairo_user_data_key))
                            #<package "DUMMY">)
   (autowrap:define-wrapper cairo-user-data-key-t #<package "DUMMY">)
   (autowrap:define-wrapper (:struct (_cairo_rectangle_int))
                            #<package "DUMMY">)
   (autowrap:define-wrapper cairo-rectangle-int-t #<package "DUMMY">)
   (autowrap:define-wrapper (:struct (_cairo_rectangle)) #<package "DUMMY">)
   (autowrap:define-wrapper cairo-rectangle-t #<package "DUMMY">)
   (autowrap:define-wrapper (:struct (_cairo_rectangle_list))
                            #<package "DUMMY">)
   (autowrap:define-wrapper cairo-rectangle-list-t #<package "DUMMY">)
   (autowrap:define-wrapper (:struct (_cairo_scaled_font)) #<package "DUMMY">)
   (autowrap:define-wrapper cairo-scaled-font-t #<package "DUMMY">)
   (autowrap:define-wrapper (:struct (_cairo_font_face)) #<package "DUMMY">)
   (autowrap:define-wrapper cairo-font-face-t #<package "DUMMY">)
   (autowrap:define-wrapper cairo-glyph-t #<package "DUMMY">)
   (autowrap:define-wrapper cairo-text-cluster-t #<package "DUMMY">)
   (autowrap:define-wrapper cairo-text-extents-t #<package "DUMMY">)
   (autowrap:define-wrapper cairo-font-extents-t #<package "DUMMY">)
   (autowrap:define-wrapper (:struct (_cairo_font_options)) #<package "DUMMY">)
   (autowrap:define-wrapper cairo-font-options-t #<package "DUMMY">)
   (autowrap:define-wrapper (:union (_cairo_path_data_t)) #<package "DUMMY">)
   (autowrap:define-wrapper cairo-path-data-t #<package "DUMMY">)
   (autowrap:define-wrapper (:struct (cairo-path)) #<package "DUMMY">)
   (autowrap:define-wrapper cairo-path-t #<package "DUMMY">)
   (autowrap:define-wrapper (:struct (_cairo_region)) #<package "DUMMY">)
   (autowrap:define-wrapper cairo-region-t #<package "DUMMY">)
   (autowrap:define-accessors (:struct (_cairo)) #<package "DUMMY">)
   (autowrap:define-accessors cairo-t #<package "DUMMY">)
   (autowrap:define-accessors (:struct (_cairo_surface)) #<package "DUMMY">)
   (autowrap:define-accessors cairo-surface-t #<package "DUMMY">)
   (autowrap:define-accessors (:struct (_cairo_device)) #<package "DUMMY">)
   (autowrap:define-accessors cairo-device-t #<package "DUMMY">)
   (autowrap:define-accessors (:struct (_cairo_matrix)) #<package "DUMMY">)
   (autowrap:define-accessors cairo-matrix-t #<package "DUMMY">)
   (autowrap:define-accessors (:struct (_cairo_pattern)) #<package "DUMMY">)
   (autowrap:define-accessors cairo-pattern-t #<package "DUMMY">)
   (autowrap:define-accessors (:struct (_cairo_user_data_key))
                              #<package "DUMMY">)
   (autowrap:define-accessors cairo-user-data-key-t #<package "DUMMY">)
   (autowrap:define-accessors (:struct (_cairo_rectangle_int))
                              #<package "DUMMY">)
   (autowrap:define-accessors cairo-rectangle-int-t #<package "DUMMY">)
   (autowrap:define-accessors (:struct (_cairo_rectangle)) #<package "DUMMY">)
   (autowrap:define-accessors cairo-rectangle-t #<package "DUMMY">)
   (autowrap:define-accessors (:struct (_cairo_rectangle_list))
                              #<package "DUMMY">)
   (autowrap:define-accessors cairo-rectangle-list-t #<package "DUMMY">)
   (autowrap:define-accessors (:struct (_cairo_scaled_font))
                              #<package "DUMMY">)
   (autowrap:define-accessors cairo-scaled-font-t #<package "DUMMY">)
   (autowrap:define-accessors (:struct (_cairo_font_face)) #<package "DUMMY">)
   (autowrap:define-accessors cairo-font-face-t #<package "DUMMY">)
   (autowrap:define-accessors cairo-glyph-t #<package "DUMMY">)
   (autowrap:define-accessors cairo-text-cluster-t #<package "DUMMY">)
   (autowrap:define-accessors cairo-text-extents-t #<package "DUMMY">)
   (autowrap:define-accessors cairo-font-extents-t #<package "DUMMY">)
   (autowrap:define-accessors (:struct (_cairo_font_options))
                              #<package "DUMMY">)
   (autowrap:define-accessors cairo-font-options-t #<package "DUMMY">)
   (autowrap:define-accessors (:union (_cairo_path_data_t)) #<package "DUMMY">)
   (autowrap:define-accessors cairo-path-data-t #<package "DUMMY">)
   (autowrap:define-accessors (:struct (cairo-path)) #<package "DUMMY">)
   (autowrap:define-accessors cairo-path-t #<package "DUMMY">)
   (autowrap:define-accessors (:struct (_cairo_region)) #<package "DUMMY">)
   (autowrap:define-accessors cairo-region-t #<package "DUMMY">)
   (autowrap:define-cfun cairo-version #<package "DUMMY">)
   (autowrap:define-cfun cairo-version-string #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-set-dither #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-get-dither #<package "DUMMY">)
   (autowrap:define-cfun cairo-create #<package "DUMMY">)
   (autowrap:define-cfun cairo-reference #<package "DUMMY">)
   (autowrap:define-cfun cairo-destroy #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-reference-count #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-user-data #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-user-data #<package "DUMMY">)
   (autowrap:define-cfun cairo-save #<package "DUMMY">)
   (autowrap:define-cfun cairo-restore #<package "DUMMY">)
   (autowrap:define-cfun cairo-push-group #<package "DUMMY">)
   (autowrap:define-cfun cairo-push-group-with-content #<package "DUMMY">)
   (autowrap:define-cfun cairo-pop-group #<package "DUMMY">)
   (autowrap:define-cfun cairo-pop-group-to-source #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-operator #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-source #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-source-rgb #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-source-rgba #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-source-surface #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-tolerance #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-antialias #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-fill-rule #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-line-width #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-hairline #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-line-cap #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-line-join #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-dash #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-miter-limit #<package "DUMMY">)
   (autowrap:define-cfun cairo-translate #<package "DUMMY">)
   (autowrap:define-cfun cairo-scale #<package "DUMMY">)
   (autowrap:define-cfun cairo-rotate #<package "DUMMY">)
   (autowrap:define-cfun cairo-transform #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-matrix #<package "DUMMY">)
   (autowrap:define-cfun cairo-identity-matrix #<package "DUMMY">)
   (autowrap:define-cfun cairo-user-to-device #<package "DUMMY">)
   (autowrap:define-cfun cairo-user-to-device-distance #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-to-user #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-to-user-distance #<package "DUMMY">)
   (autowrap:define-cfun cairo-new-path #<package "DUMMY">)
   (autowrap:define-cfun cairo-move-to #<package "DUMMY">)
   (autowrap:define-cfun cairo-new-sub-path #<package "DUMMY">)
   (autowrap:define-cfun cairo-line-to #<package "DUMMY">)
   (autowrap:define-cfun cairo-curve-to #<package "DUMMY">)
   (autowrap:define-cfun cairo-arc #<package "DUMMY">)
   (autowrap:define-cfun cairo-arc-negative #<package "DUMMY">)
   (autowrap:define-cfun cairo-rel-move-to #<package "DUMMY">)
   (autowrap:define-cfun cairo-rel-line-to #<package "DUMMY">)
   (autowrap:define-cfun cairo-rel-curve-to #<package "DUMMY">)
   (autowrap:define-cfun cairo-rectangle #<package "DUMMY">)
   (autowrap:define-cfun cairo-close-path #<package "DUMMY">)
   (autowrap:define-cfun cairo-path-extents #<package "DUMMY">)
   (autowrap:define-cfun cairo-paint #<package "DUMMY">)
   (autowrap:define-cfun cairo-paint-with-alpha #<package "DUMMY">)
   (autowrap:define-cfun cairo-mask #<package "DUMMY">)
   (autowrap:define-cfun cairo-mask-surface #<package "DUMMY">)
   (autowrap:define-cfun cairo-stroke #<package "DUMMY">)
   (autowrap:define-cfun cairo-stroke-preserve #<package "DUMMY">)
   (autowrap:define-cfun cairo-fill #<package "DUMMY">)
   (autowrap:define-cfun cairo-fill-preserve #<package "DUMMY">)
   (autowrap:define-cfun cairo-copy-page #<package "DUMMY">)
   (autowrap:define-cfun cairo-show-page #<package "DUMMY">)
   (autowrap:define-cfun cairo-in-stroke #<package "DUMMY">)
   (autowrap:define-cfun cairo-in-fill #<package "DUMMY">)
   (autowrap:define-cfun cairo-in-clip #<package "DUMMY">)
   (autowrap:define-cfun cairo-stroke-extents #<package "DUMMY">)
   (autowrap:define-cfun cairo-fill-extents #<package "DUMMY">)
   (autowrap:define-cfun cairo-reset-clip #<package "DUMMY">)
   (autowrap:define-cfun cairo-clip #<package "DUMMY">)
   (autowrap:define-cfun cairo-clip-preserve #<package "DUMMY">)
   (autowrap:define-cfun cairo-clip-extents #<package "DUMMY">)
   (autowrap:define-cfun cairo-copy-clip-rectangle-list #<package "DUMMY">)
   (autowrap:define-cfun cairo-rectangle-list-destroy #<package "DUMMY">)
   (autowrap:define-cfun cairo-tag-begin #<package "DUMMY">)
   (autowrap:define-cfun cairo-tag-end #<package "DUMMY">)
   (autowrap:define-cfun cairo-glyph-allocate #<package "DUMMY">)
   (autowrap:define-cfun cairo-glyph-free #<package "DUMMY">)
   (autowrap:define-cfun cairo-text-cluster-allocate #<package "DUMMY">)
   (autowrap:define-cfun cairo-text-cluster-free #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-create #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-copy #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-destroy #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-status #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-merge #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-equal #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-hash #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-set-antialias #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-get-antialias #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-set-subpixel-order
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-get-subpixel-order
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-set-hint-style #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-get-hint-style #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-set-hint-metrics
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-get-hint-metrics
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-get-variations #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-set-variations #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-set-color-mode #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-get-color-mode #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-get-color-palette
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-set-color-palette
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-set-custom-palette-color
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-options-get-custom-palette-color
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-select-font-face #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-font-size #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-font-matrix #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-font-matrix #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-font-options #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-font-options #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-font-face #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-font-face #<package "DUMMY">)
   (autowrap:define-cfun cairo-set-scaled-font #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-scaled-font #<package "DUMMY">)
   (autowrap:define-cfun cairo-show-text #<package "DUMMY">)
   (autowrap:define-cfun cairo-show-glyphs #<package "DUMMY">)
   (autowrap:define-cfun cairo-show-text-glyphs #<package "DUMMY">)
   (autowrap:define-cfun cairo-text-path #<package "DUMMY">)
   (autowrap:define-cfun cairo-glyph-path #<package "DUMMY">)
   (autowrap:define-cfun cairo-text-extents #<package "DUMMY">)
   (autowrap:define-cfun cairo-glyph-extents #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-extents #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-face-reference #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-face-destroy #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-face-get-reference-count
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-face-status #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-face-get-type #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-face-get-user-data #<package "DUMMY">)
   (autowrap:define-cfun cairo-font-face-set-user-data #<package "DUMMY">)
   (autowrap:define-cfun cairo-scaled-font-create #<package "DUMMY">)
   (autowrap:define-cfun cairo-scaled-font-reference #<package "DUMMY">)
   (autowrap:define-cfun cairo-scaled-font-destroy #<package "DUMMY">)
   (autowrap:define-cfun cairo-scaled-font-get-reference-count
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-scaled-font-status #<package "DUMMY">)
   (autowrap:define-cfun cairo-scaled-font-get-type #<package "DUMMY">)
   (autowrap:define-cfun cairo-scaled-font-get-user-data #<package "DUMMY">)
   (autowrap:define-cfun cairo-scaled-font-set-user-data #<package "DUMMY">)
   (autowrap:define-cfun cairo-scaled-font-extents #<package "DUMMY">)
   (autowrap:define-cfun cairo-scaled-font-text-extents #<package "DUMMY">)
   (autowrap:define-cfun cairo-scaled-font-glyph-extents #<package "DUMMY">)
   (autowrap:define-cfun cairo-scaled-font-text-to-glyphs #<package "DUMMY">)
   (autowrap:define-cfun cairo-scaled-font-get-font-face #<package "DUMMY">)
   (autowrap:define-cfun cairo-scaled-font-get-font-matrix #<package "DUMMY">)
   (autowrap:define-cfun cairo-scaled-font-get-ctm #<package "DUMMY">)
   (autowrap:define-cfun cairo-scaled-font-get-scale-matrix #<package "DUMMY">)
   (autowrap:define-cfun cairo-scaled-font-get-font-options #<package "DUMMY">)
   (autowrap:define-cfun cairo-toy-font-face-create #<package "DUMMY">)
   (autowrap:define-cfun cairo-toy-font-face-get-family #<package "DUMMY">)
   (autowrap:define-cfun cairo-toy-font-face-get-slant #<package "DUMMY">)
   (autowrap:define-cfun cairo-toy-font-face-get-weight #<package "DUMMY">)
   (autowrap:define-cfun cairo-user-font-face-create #<package "DUMMY">)
   (autowrap:define-cfun cairo-user-font-face-set-init-func #<package "DUMMY">)
   (autowrap:define-cfun cairo-user-font-face-set-render-glyph-func
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-user-font-face-set-render-color-glyph-func
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-user-font-face-set-text-to-glyphs-func
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-user-font-face-set-unicode-to-glyph-func
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-user-font-face-get-init-func #<package "DUMMY">)
   (autowrap:define-cfun cairo-user-font-face-get-render-glyph-func
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-user-font-face-get-render-color-glyph-func
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-user-font-face-get-text-to-glyphs-func
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-user-font-face-get-unicode-to-glyph-func
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-user-scaled-font-get-foreground-marker
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-user-scaled-font-get-foreground-source
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-operator #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-source #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-tolerance #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-antialias #<package "DUMMY">)
   (autowrap:define-cfun cairo-has-current-point #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-current-point #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-fill-rule #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-line-width #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-hairline #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-line-cap #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-line-join #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-miter-limit #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-dash-count #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-dash #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-matrix #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-target #<package "DUMMY">)
   (autowrap:define-cfun cairo-get-group-target #<package "DUMMY">)
   (autowrap:define-cfun cairo-copy-path #<package "DUMMY">)
   (autowrap:define-cfun cairo-copy-path-flat #<package "DUMMY">)
   (autowrap:define-cfun cairo-append-path #<package "DUMMY">)
   (autowrap:define-cfun cairo-path-destroy #<package "DUMMY">)
   (autowrap:define-cfun cairo-status #<package "DUMMY">)
   (autowrap:define-cfun cairo-status-to-string #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-reference #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-get-type #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-status #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-acquire #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-release #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-flush #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-finish #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-destroy #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-get-reference-count #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-get-user-data #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-set-user-data #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-create-similar #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-create-similar-image #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-map-to-image #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-unmap-image #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-create-for-rectangle #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-create-observer #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-observer-add-paint-callback
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-observer-add-mask-callback
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-observer-add-fill-callback
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-observer-add-stroke-callback
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-observer-add-glyphs-callback
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-observer-add-flush-callback
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-observer-add-finish-callback
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-observer-print #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-observer-elapsed #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-observer-print #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-observer-elapsed #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-observer-paint-elapsed
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-observer-mask-elapsed #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-observer-fill-elapsed #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-observer-stroke-elapsed
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-device-observer-glyphs-elapsed
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-reference #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-finish #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-destroy #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-get-device #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-get-reference-count #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-status #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-get-type #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-get-content #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-write-to-png #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-write-to-png-stream #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-get-user-data #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-set-user-data #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-get-mime-data #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-set-mime-data #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-supports-mime-type #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-get-font-options #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-flush #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-mark-dirty #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-mark-dirty-rectangle #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-set-device-scale #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-get-device-scale #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-set-device-offset #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-get-device-offset #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-set-fallback-resolution
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-get-fallback-resolution
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-copy-page #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-show-page #<package "DUMMY">)
   (autowrap:define-cfun cairo-surface-has-show-text-glyphs #<package "DUMMY">)
   (autowrap:define-cfun cairo-image-surface-create #<package "DUMMY">)
   (autowrap:define-cfun cairo-format-stride-for-width #<package "DUMMY">)
   (autowrap:define-cfun cairo-image-surface-create-for-data
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-image-surface-get-data #<package "DUMMY">)
   (autowrap:define-cfun cairo-image-surface-get-format #<package "DUMMY">)
   (autowrap:define-cfun cairo-image-surface-get-width #<package "DUMMY">)
   (autowrap:define-cfun cairo-image-surface-get-height #<package "DUMMY">)
   (autowrap:define-cfun cairo-image-surface-get-stride #<package "DUMMY">)
   (autowrap:define-cfun cairo-image-surface-create-from-png
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-image-surface-create-from-png-stream
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-recording-surface-create #<package "DUMMY">)
   (autowrap:define-cfun cairo-recording-surface-ink-extents
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-recording-surface-get-extents
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-create-raster-source #<package "DUMMY">)
   (autowrap:define-cfun cairo-raster-source-pattern-set-callback-data
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-raster-source-pattern-get-callback-data
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-raster-source-pattern-set-acquire
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-raster-source-pattern-get-acquire
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-raster-source-pattern-set-snapshot
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-raster-source-pattern-get-snapshot
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-raster-source-pattern-set-copy
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-raster-source-pattern-get-copy
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-raster-source-pattern-set-finish
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-raster-source-pattern-get-finish
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-create-rgb #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-create-rgba #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-create-for-surface #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-create-linear #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-create-radial #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-create-mesh #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-reference #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-destroy #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-get-reference-count #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-status #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-get-user-data #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-set-user-data #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-get-type #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-add-color-stop-rgb #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-add-color-stop-rgba #<package "DUMMY">)
   (autowrap:define-cfun cairo-mesh-pattern-begin-patch #<package "DUMMY">)
   (autowrap:define-cfun cairo-mesh-pattern-end-patch #<package "DUMMY">)
   (autowrap:define-cfun cairo-mesh-pattern-curve-to #<package "DUMMY">)
   (autowrap:define-cfun cairo-mesh-pattern-line-to #<package "DUMMY">)
   (autowrap:define-cfun cairo-mesh-pattern-move-to #<package "DUMMY">)
   (autowrap:define-cfun cairo-mesh-pattern-set-control-point
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-mesh-pattern-set-corner-color-rgb
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-mesh-pattern-set-corner-color-rgba
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-set-matrix #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-get-matrix #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-set-extend #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-get-extend #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-set-filter #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-get-filter #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-get-rgba #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-get-surface #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-get-color-stop-rgba #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-get-color-stop-count #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-get-linear-points #<package "DUMMY">)
   (autowrap:define-cfun cairo-pattern-get-radial-circles #<package "DUMMY">)
   (autowrap:define-cfun cairo-mesh-pattern-get-patch-count #<package "DUMMY">)
   (autowrap:define-cfun cairo-mesh-pattern-get-path #<package "DUMMY">)
   (autowrap:define-cfun cairo-mesh-pattern-get-corner-color-rgba
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-mesh-pattern-get-control-point
                         #<package "DUMMY">)
   (autowrap:define-cfun cairo-matrix-init #<package "DUMMY">)
   (autowrap:define-cfun cairo-matrix-init-identity #<package "DUMMY">)
   (autowrap:define-cfun cairo-matrix-init-translate #<package "DUMMY">)
   (autowrap:define-cfun cairo-matrix-init-scale #<package "DUMMY">)
   (autowrap:define-cfun cairo-matrix-init-rotate #<package "DUMMY">)
   (autowrap:define-cfun cairo-matrix-translate #<package "DUMMY">)
   (autowrap:define-cfun cairo-matrix-scale #<package "DUMMY">)
   (autowrap:define-cfun cairo-matrix-rotate #<package "DUMMY">)
   (autowrap:define-cfun cairo-matrix-invert #<package "DUMMY">)
   (autowrap:define-cfun cairo-matrix-multiply #<package "DUMMY">)
   (autowrap:define-cfun cairo-matrix-transform-distance #<package "DUMMY">)
   (autowrap:define-cfun cairo-matrix-transform-point #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-create #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-create-rectangle #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-create-rectangles #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-copy #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-reference #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-destroy #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-equal #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-status #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-get-extents #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-num-rectangles #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-get-rectangle #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-is-empty #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-contains-rectangle #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-contains-point #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-translate #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-subtract #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-subtract-rectangle #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-intersect #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-intersect-rectangle #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-union #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-union-rectangle #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-xor #<package "DUMMY">)
   (autowrap:define-cfun cairo-region-xor-rectangle #<package "DUMMY">)
   (autowrap:define-cfun cairo-debug-reset-static-data #<package "DUMMY">)
   (autowrap::compile-time-report-wrap-failures)
   (export
    '(cairo-region-t _cairo_region cairo-path-t cairo-path cairo-path-data-t
      _cairo_path_data_t cairo-font-options-t _cairo_font_options
      cairo-font-extents-t cairo-text-extents-t cairo-text-cluster-t
      cairo-glyph-t cairo-font-face-t _cairo_font_face cairo-scaled-font-t
      _cairo_scaled_font cairo-rectangle-list-t _cairo_rectangle_list
      cairo-rectangle-t _cairo_rectangle cairo-rectangle-int-t
      _cairo_rectangle_int cairo-user-data-key-t _cairo_user_data_key
      cairo-pattern-t _cairo_pattern cairo-matrix-t _cairo_matrix
      cairo-device-t _cairo_device cairo-surface-t _cairo_surface cairo-t
      _cairo)
    #<package "DUMMY">)
   (export
    '(cairo-debug-reset-static-data cairo-region-xor-rectangle cairo-region-xor
                                    cairo-region-union-rectangle
                                    cairo-region-union
                                    cairo-region-intersect-rectangle
                                    cairo-region-intersect
                                    cairo-region-subtract-rectangle
                                    cairo-region-subtract
                                    cairo-region-translate
                                    cairo-region-contains-point
                                    cairo-region-contains-rectangle
                                    cairo-region-is-empty
                                    cairo-region-get-rectangle
                                    cairo-region-num-rectangles
                                    cairo-region-get-extents
                                    cairo-region-status cairo-region-equal
                                    cairo-region-destroy cairo-region-reference
                                    cairo-region-copy
                                    cairo-region-create-rectangles
                                    cairo-region-create-rectangle
                                    cairo-region-create
                                    cairo-matrix-transform-point
                                    cairo-matrix-transform-distance
                                    cairo-matrix-multiply cairo-matrix-invert
                                    cairo-matrix-rotate cairo-matrix-scale
                                    cairo-matrix-translate
                                    cairo-matrix-init-rotate
                                    cairo-matrix-init-scale
                                    cairo-matrix-init-translate
                                    cairo-matrix-init-identity
                                    cairo-matrix-init
                                    cairo-mesh-pattern-get-control-point
                                    cairo-mesh-pattern-get-corner-color-rgba
                                    cairo-mesh-pattern-get-path
                                    cairo-mesh-pattern-get-patch-count
                                    cairo-pattern-get-radial-circles
                                    cairo-pattern-get-linear-points
                                    cairo-pattern-get-color-stop-count
                                    cairo-pattern-get-color-stop-rgba
                                    cairo-pattern-get-surface
                                    cairo-pattern-get-rgba
                                    cairo-pattern-get-filter
                                    cairo-pattern-set-filter
                                    cairo-pattern-get-extend
                                    cairo-pattern-set-extend
                                    cairo-pattern-get-matrix
                                    cairo-pattern-set-matrix
                                    cairo-mesh-pattern-set-corner-color-rgba
                                    cairo-mesh-pattern-set-corner-color-rgb
                                    cairo-mesh-pattern-set-control-point
                                    cairo-mesh-pattern-move-to
                                    cairo-mesh-pattern-line-to
                                    cairo-mesh-pattern-curve-to
                                    cairo-mesh-pattern-end-patch
                                    cairo-mesh-pattern-begin-patch
                                    cairo-pattern-add-color-stop-rgba
                                    cairo-pattern-add-color-stop-rgb
                                    cairo-pattern-get-type
                                    cairo-pattern-set-user-data
                                    cairo-pattern-get-user-data
                                    cairo-pattern-status
                                    cairo-pattern-get-reference-count
                                    cairo-pattern-destroy
                                    cairo-pattern-reference
                                    cairo-pattern-create-mesh
                                    cairo-pattern-create-radial
                                    cairo-pattern-create-linear
                                    cairo-pattern-create-for-surface
                                    cairo-pattern-create-rgba
                                    cairo-pattern-create-rgb
                                    cairo-raster-source-pattern-get-finish
                                    cairo-raster-source-pattern-set-finish
                                    cairo-raster-source-pattern-get-copy
                                    cairo-raster-source-pattern-set-copy
                                    cairo-raster-source-pattern-get-snapshot
                                    cairo-raster-source-pattern-set-snapshot
                                    cairo-raster-source-pattern-get-acquire
                                    cairo-raster-source-pattern-set-acquire
                                    cairo-raster-source-pattern-get-callback-data
                                    cairo-raster-source-pattern-set-callback-data
                                    cairo-pattern-create-raster-source
                                    cairo-recording-surface-get-extents
                                    cairo-recording-surface-ink-extents
                                    cairo-recording-surface-create
                                    cairo-image-surface-create-from-png-stream
                                    cairo-image-surface-create-from-png
                                    cairo-image-surface-get-stride
                                    cairo-image-surface-get-height
                                    cairo-image-surface-get-width
                                    cairo-image-surface-get-format
                                    cairo-image-surface-get-data
                                    cairo-image-surface-create-for-data
                                    cairo-format-stride-for-width
                                    cairo-image-surface-create
                                    cairo-surface-has-show-text-glyphs
                                    cairo-surface-show-page
                                    cairo-surface-copy-page
                                    cairo-surface-get-fallback-resolution
                                    cairo-surface-set-fallback-resolution
                                    cairo-surface-get-device-offset
                                    cairo-surface-set-device-offset
                                    cairo-surface-get-device-scale
                                    cairo-surface-set-device-scale
                                    cairo-surface-mark-dirty-rectangle
                                    cairo-surface-mark-dirty
                                    cairo-surface-flush
                                    cairo-surface-get-font-options
                                    cairo-surface-supports-mime-type
                                    cairo-surface-set-mime-data
                                    cairo-surface-get-mime-data
                                    cairo-surface-set-user-data
                                    cairo-surface-get-user-data
                                    cairo-surface-write-to-png-stream
                                    cairo-surface-write-to-png
                                    cairo-surface-get-content
                                    cairo-surface-get-type cairo-surface-status
                                    cairo-surface-get-reference-count
                                    cairo-surface-get-device
                                    cairo-surface-destroy cairo-surface-finish
                                    cairo-surface-reference
                                    cairo-device-observer-glyphs-elapsed
                                    cairo-device-observer-stroke-elapsed
                                    cairo-device-observer-fill-elapsed
                                    cairo-device-observer-mask-elapsed
                                    cairo-device-observer-paint-elapsed
                                    cairo-device-observer-elapsed
                                    cairo-device-observer-print
                                    cairo-surface-observer-elapsed
                                    cairo-surface-observer-print
                                    cairo-surface-observer-add-finish-callback
                                    cairo-surface-observer-add-flush-callback
                                    cairo-surface-observer-add-glyphs-callback
                                    cairo-surface-observer-add-stroke-callback
                                    cairo-surface-observer-add-fill-callback
                                    cairo-surface-observer-add-mask-callback
                                    cairo-surface-observer-add-paint-callback
                                    cairo-surface-create-observer
                                    cairo-surface-create-for-rectangle
                                    cairo-surface-unmap-image
                                    cairo-surface-map-to-image
                                    cairo-surface-create-similar-image
                                    cairo-surface-create-similar
                                    cairo-device-set-user-data
                                    cairo-device-get-user-data
                                    cairo-device-get-reference-count
                                    cairo-device-destroy cairo-device-finish
                                    cairo-device-flush cairo-device-release
                                    cairo-device-acquire cairo-device-status
                                    cairo-device-get-type
                                    cairo-device-reference
                                    cairo-status-to-string cairo-status
                                    cairo-path-destroy cairo-append-path
                                    cairo-copy-path-flat cairo-copy-path
                                    cairo-get-group-target cairo-get-target
                                    cairo-get-matrix cairo-get-dash
                                    cairo-get-dash-count cairo-get-miter-limit
                                    cairo-get-line-join cairo-get-line-cap
                                    cairo-get-hairline cairo-get-line-width
                                    cairo-get-fill-rule cairo-get-current-point
                                    cairo-has-current-point cairo-get-antialias
                                    cairo-get-tolerance cairo-get-source
                                    cairo-get-operator
                                    cairo-user-scaled-font-get-foreground-source
                                    cairo-user-scaled-font-get-foreground-marker
                                    cairo-user-font-face-get-unicode-to-glyph-func
                                    cairo-user-font-face-get-text-to-glyphs-func
                                    cairo-user-font-face-get-render-color-glyph-func
                                    cairo-user-font-face-get-render-glyph-func
                                    cairo-user-font-face-get-init-func
                                    cairo-user-font-face-set-unicode-to-glyph-func
                                    cairo-user-font-face-set-text-to-glyphs-func
                                    cairo-user-font-face-set-render-color-glyph-func
                                    cairo-user-font-face-set-render-glyph-func
                                    cairo-user-font-face-set-init-func
                                    cairo-user-font-face-create
                                    cairo-toy-font-face-get-weight
                                    cairo-toy-font-face-get-slant
                                    cairo-toy-font-face-get-family
                                    cairo-toy-font-face-create
                                    cairo-scaled-font-get-font-options
                                    cairo-scaled-font-get-scale-matrix
                                    cairo-scaled-font-get-ctm
                                    cairo-scaled-font-get-font-matrix
                                    cairo-scaled-font-get-font-face
                                    cairo-scaled-font-text-to-glyphs
                                    cairo-scaled-font-glyph-extents
                                    cairo-scaled-font-text-extents
                                    cairo-scaled-font-extents
                                    cairo-scaled-font-set-user-data
                                    cairo-scaled-font-get-user-data
                                    cairo-scaled-font-get-type
                                    cairo-scaled-font-status
                                    cairo-scaled-font-get-reference-count
                                    cairo-scaled-font-destroy
                                    cairo-scaled-font-reference
                                    cairo-scaled-font-create
                                    cairo-font-face-set-user-data
                                    cairo-font-face-get-user-data
                                    cairo-font-face-get-type
                                    cairo-font-face-status
                                    cairo-font-face-get-reference-count
                                    cairo-font-face-destroy
                                    cairo-font-face-reference
                                    cairo-font-extents cairo-glyph-extents
                                    cairo-text-extents cairo-glyph-path
                                    cairo-text-path cairo-show-text-glyphs
                                    cairo-show-glyphs cairo-show-text
                                    cairo-get-scaled-font cairo-set-scaled-font
                                    cairo-get-font-face cairo-set-font-face
                                    cairo-get-font-options
                                    cairo-set-font-options
                                    cairo-get-font-matrix cairo-set-font-matrix
                                    cairo-set-font-size cairo-select-font-face
                                    cairo-font-options-get-custom-palette-color
                                    cairo-font-options-set-custom-palette-color
                                    cairo-font-options-set-color-palette
                                    cairo-font-options-get-color-palette
                                    cairo-font-options-get-color-mode
                                    cairo-font-options-set-color-mode
                                    cairo-font-options-set-variations
                                    cairo-font-options-get-variations
                                    cairo-font-options-get-hint-metrics
                                    cairo-font-options-set-hint-metrics
                                    cairo-font-options-get-hint-style
                                    cairo-font-options-set-hint-style
                                    cairo-font-options-get-subpixel-order
                                    cairo-font-options-set-subpixel-order
                                    cairo-font-options-get-antialias
                                    cairo-font-options-set-antialias
                                    cairo-font-options-hash
                                    cairo-font-options-equal
                                    cairo-font-options-merge
                                    cairo-font-options-status
                                    cairo-font-options-destroy
                                    cairo-font-options-copy
                                    cairo-font-options-create
                                    cairo-text-cluster-free
                                    cairo-text-cluster-allocate
                                    cairo-glyph-free cairo-glyph-allocate
                                    cairo-tag-end cairo-tag-begin
                                    cairo-rectangle-list-destroy
                                    cairo-copy-clip-rectangle-list
                                    cairo-clip-extents cairo-clip-preserve
                                    cairo-clip cairo-reset-clip
                                    cairo-fill-extents cairo-stroke-extents
                                    cairo-in-clip cairo-in-fill cairo-in-stroke
                                    cairo-show-page cairo-copy-page
                                    cairo-fill-preserve cairo-fill
                                    cairo-stroke-preserve cairo-stroke
                                    cairo-mask-surface cairo-mask
                                    cairo-paint-with-alpha cairo-paint
                                    cairo-path-extents cairo-close-path
                                    cairo-rectangle cairo-rel-curve-to
                                    cairo-rel-line-to cairo-rel-move-to
                                    cairo-arc-negative cairo-arc cairo-curve-to
                                    cairo-line-to cairo-new-sub-path
                                    cairo-move-to cairo-new-path
                                    cairo-device-to-user-distance
                                    cairo-device-to-user
                                    cairo-user-to-device-distance
                                    cairo-user-to-device cairo-identity-matrix
                                    cairo-set-matrix cairo-transform
                                    cairo-rotate cairo-scale cairo-translate
                                    cairo-set-miter-limit cairo-set-dash
                                    cairo-set-line-join cairo-set-line-cap
                                    cairo-set-hairline cairo-set-line-width
                                    cairo-set-fill-rule cairo-set-antialias
                                    cairo-set-tolerance
                                    cairo-set-source-surface
                                    cairo-set-source-rgba cairo-set-source-rgb
                                    cairo-set-source cairo-set-operator
                                    cairo-pop-group-to-source cairo-pop-group
                                    cairo-push-group-with-content
                                    cairo-push-group cairo-restore cairo-save
                                    cairo-set-user-data cairo-get-user-data
                                    cairo-get-reference-count cairo-destroy
                                    cairo-reference cairo-create
                                    cairo-pattern-get-dither
                                    cairo-pattern-set-dither
                                    cairo-version-string cairo-version)
    #<package "DUMMY">)
   nil
   (export
    '(+cairo-tag-dest+ +cairo-tag-link+ +cairo-tag-content+
      +cairo-tag-content-ref+ +cairo-xcb-surface-create-for-window-with-visual+
      +cairo-mime-type-jp2+ +cairo-mime-type-uri+ +cairo-mime-type-jpeg+
      +cairo-mime-type-png+ +cairo-xcb-surface-create-for-pixmap-with-visual+
      +cairo-mime-type-jbig2-global+ +cairo-mime-type-jbig2-global-id+
      +cairo-mime-type-unique-id+
      +cairo-xlib-surface-create-for-window-with-visual+
      +cairo-mime-type-jbig2+ +cairo-mime-type-eps+
      +cairo-mime-type-ccitt-fax-params+ +cairo-pdf-surface-set-dpi+
      +cairo-mime-type-ccitt-fax+ +cairo-ps-surface-set-dpi+
      +cairo-mime-type-eps-params+ +cairo-show-surface+ +cairo-copy+
      +cairo-current-target-surface+ +cairo-set-alpha+
      +cairo-surface-set-matrix+ +cairo-surface-set-repeat+
      +cairo-surface-get-filter+ +cairo-surface-get-matrix+
      +cairo-surface-set-filter+ +cairo-matrix-copy+ +cairo-matrix-get-affine+
      +cairo-matrix-create+ +cairo-matrix-destroy+ +cairo-current-path+
      +cairo-get-path-flat+ +cairo-atsui-font-face-create-for-atsu-font-id+
      +cairo-get-path+ +cairo-svg-surface-set-dpi+ +cairo-current-path-flat+
      +cairo-version-major+ +_cairo_api+ +cairo-version-micro+
      +cairo-version-minor+ +cairo-has-fc-font+ +__gcc_have_dwarf2_cfi_asm+
      +cairo-public+ +cairo-set-target-surface+ +cairo-has-svg-surface+
      +cairo-version-string+ +cairo-has-recording-surface+ +cairo-version+
      +cairo-has-script-surface+ +cairo-has-user-font+ +cairo-has-tee-surface+
      +cairo-has-xcb-surface+ +cairo-has-xcb-shm-functions+
      +cairo-has-gobject-functions+ +cairo-has-ft-font+
      +cairo-has-mime-surface+ +cairo-has-image-surface+
      +cairo-has-pdf-surface+ +cairo-has-observer-surface+
      +cairo-has-ps-surface+ +cairo-has-png-functions+ +cairo-get-font-extents+
      +cairo-current-operator+ +cairo-set-target-pdf+ +cairo-current-tolerance+
      +cairo-current-point+ +cairo-set-target-image+ +cairo-set-target-png+
      +cairo-has-xlib-surface+ +cairo-has-xlib-xrender-surface+
      +cairo-font-type-atsui+ +cairo-set-target-quartz+
      +cairo-current-font-extents+ +cairo-set-target-ps+
      +cairo-set-target-win32+ +cairo-current-line-join+
      +cairo-current-miter-limit+ +cairo-get-status-string+
      +cairo-set-target-xcb+ +cairo-current-matrix+ +cairo-set-target-drawable+
      +cairo-current-fill-rule+ +cairo-status-string+
      +cairo-current-line-width+ +cairo-current-line-cap+ +cairo-init-clip+
      +cairo-surface-create-for-image+ +cairo-default-matrix+
      +cairo-matrix-set-affine+ +cairo-color-palette-default+
      +cairo-inverse-transform-point+ +cairo-inverse-transform-distance+
      +cairo-set-rgb-color+ +cairo-set-pattern+
      +cairo-xlib-surface-create-for-pixmap-with-visual+
      +cairo-matrix-set-identity+ +cairo-pattern-add-color-stop+
      +cairo-transform-font+ +cairo-transform-point+ +cairo-transform-distance+
      +cairo-get-status+ +cairo-concat-matrix+ +cairo-scale-font+
      +cairo-select-font+ +cairo-region-overlap-part+
      +cairo-region-overlap-out+ +cairo-region-overlap-in+
      +cairo-filter-gaussian+ +cairo-filter-bilinear+ +cairo-filter-nearest+
      +cairo-filter-best+ +cairo-filter-good+ +cairo-filter-fast+
      +cairo-extend-pad+ +cairo-extend-reflect+ +cairo-extend-repeat+
      +cairo-extend-none+ +cairo-pattern-type-raster-source+
      +cairo-pattern-type-mesh+ +cairo-pattern-type-radial+
      +cairo-pattern-type-linear+ +cairo-pattern-type-surface+
      +cairo-pattern-type-solid+ +cairo-surface-type-cogl+
      +cairo-surface-type-subsurface+ +cairo-surface-type-skia+
      +cairo-surface-type-xml+ +cairo-surface-type-tee+
      +cairo-surface-type-drm+ +cairo-surface-type-gl+ +cairo-surface-type-vg+
      +cairo-surface-type-recording+ +cairo-surface-type-qt+
      +cairo-surface-type-script+ +cairo-surface-type-quartz-image+
      +cairo-surface-type-win32-printing+ +cairo-surface-type-os2+
      +cairo-surface-type-svg+ +cairo-surface-type-directfb+
      +cairo-surface-type-beos+ +cairo-surface-type-win32+
      +cairo-surface-type-quartz+ +cairo-surface-type-glitz+
      +cairo-surface-type-xcb+ +cairo-surface-type-xlib+
      +cairo-surface-type-ps+ +cairo-surface-type-pdf+
      +cairo-surface-type-image+ +cairo-surface-observer-record-operations+
      +cairo-surface-observer-normal+ +cairo-device-type-invalid+
      +cairo-device-type-win32+ +cairo-device-type-cogl+
      +cairo-device-type-xml+ +cairo-device-type-xlib+ +cairo-device-type-xcb+
      +cairo-device-type-script+ +cairo-device-type-gl+ +cairo-device-type-drm+
      +cairo-path-close-path+ +cairo-path-curve-to+ +cairo-path-line-to+
      +cairo-path-move-to+ +cairo-font-type-dwrite+ +cairo-font-type-user+
      +cairo-font-type-quartz+ +cairo-font-type-win32+ +cairo-font-type-ft+
      +cairo-font-type-toy+ +cairo-color-mode-color+
      +cairo-color-mode-no-color+ +cairo-color-mode-default+
      +cairo-hint-metrics-on+ +cairo-hint-metrics-off+
      +cairo-hint-metrics-default+ +cairo-hint-style-full+
      +cairo-hint-style-medium+ +cairo-hint-style-slight+
      +cairo-hint-style-none+ +cairo-hint-style-default+
      +cairo-subpixel-order-vbgr+ +cairo-subpixel-order-vrgb+
      +cairo-subpixel-order-bgr+ +cairo-subpixel-order-rgb+
      +cairo-subpixel-order-default+ +cairo-font-weight-bold+
      +cairo-font-weight-normal+ +cairo-font-slant-oblique+
      +cairo-font-slant-italic+ +cairo-font-slant-normal+
      +cairo-text-cluster-flag-backward+ +cairo-line-join-bevel+
      +cairo-line-join-round+ +cairo-line-join-miter+ +cairo-line-cap-square+
      +cairo-line-cap-round+ +cairo-line-cap-butt+ +cairo-fill-rule-even-odd+
      +cairo-fill-rule-winding+ +cairo-antialias-best+ +cairo-antialias-good+
      +cairo-antialias-fast+ +cairo-antialias-subpixel+ +cairo-antialias-gray+
      +cairo-antialias-none+ +cairo-antialias-default+
      +cairo-operator-hsl-luminosity+ +cairo-operator-hsl-color+
      +cairo-operator-hsl-saturation+ +cairo-operator-hsl-hue+
      +cairo-operator-exclusion+ +cairo-operator-difference+
      +cairo-operator-soft-light+ +cairo-operator-hard-light+
      +cairo-operator-color-burn+ +cairo-operator-color-dodge+
      +cairo-operator-lighten+ +cairo-operator-darken+ +cairo-operator-overlay+
      +cairo-operator-screen+ +cairo-operator-multiply+
      +cairo-operator-saturate+ +cairo-operator-add+ +cairo-operator-xor+
      +cairo-operator-dest-atop+ +cairo-operator-dest-out+
      +cairo-operator-dest-in+ +cairo-operator-dest-over+ +cairo-operator-dest+
      +cairo-operator-atop+ +cairo-operator-out+ +cairo-operator-in+
      +cairo-operator-over+ +cairo-operator-source+ +cairo-operator-clear+
      +cairo-dither-best+ +cairo-dither-good+ +cairo-dither-fast+
      +cairo-dither-default+ +cairo-dither-none+ +cairo-format-rgba128f+
      +cairo-format-rgb96f+ +cairo-format-rgb30+ +cairo-format-rgb16-565+
      +cairo-format-a1+ +cairo-format-a8+ +cairo-format-rgb24+
      +cairo-format-argb32+ +cairo-format-invalid+ +cairo-content-color-alpha+
      +cairo-content-alpha+ +cairo-content-color+ +cairo-status-last-status+
      +cairo-status-svg-font-error+ +cairo-status-dwrite-error+
      +cairo-status-tag-error+ +cairo-status-win32-gdi-error+
      +cairo-status-freetype-error+ +cairo-status-png-error+
      +cairo-status-jbig2-global-missing+ +cairo-status-device-finished+
      +cairo-status-invalid-mesh-construction+ +cairo-status-device-error+
      +cairo-status-device-type-mismatch+
      +cairo-status-user-font-not-implemented+ +cairo-status-invalid-size+
      +cairo-status-invalid-weight+ +cairo-status-invalid-slant+
      +cairo-status-invalid-clusters+ +cairo-status-negative-count+
      +cairo-status-user-font-error+ +cairo-status-user-font-immutable+
      +cairo-status-font-type-mismatch+ +cairo-status-invalid-stride+
      +cairo-status-temp-file-error+ +cairo-status-clip-not-representable+
      +cairo-status-invalid-index+ +cairo-status-invalid-dsc-comment+
      +cairo-status-invalid-dash+ +cairo-status-file-not-found+
      +cairo-status-invalid-visual+ +cairo-status-invalid-format+
      +cairo-status-invalid-content+ +cairo-status-pattern-type-mismatch+
      +cairo-status-surface-type-mismatch+ +cairo-status-surface-finished+
      +cairo-status-write-error+ +cairo-status-read-error+
      +cairo-status-invalid-path-data+ +cairo-status-invalid-string+
      +cairo-status-null-pointer+ +cairo-status-invalid-status+
      +cairo-status-invalid-matrix+ +cairo-status-no-current-point+
      +cairo-status-invalid-pop-group+ +cairo-status-invalid-restore+
      +cairo-status-no-memory+ +cairo-status-success+)
    #<package "DUMMY">)
   (export
    '(cairo-region-overlap-t _cairo_region_overlap cairo-filter-t _cairo_filter
      cairo-extend-t _cairo_extend cairo-pattern-type-t _cairo_pattern_type
      cairo-raster-source-finish-func-t cairo-raster-source-copy-func-t
      cairo-raster-source-snapshot-func-t cairo-raster-source-release-func-t
      cairo-raster-source-acquire-func-t cairo-surface-type-t
      _cairo_surface_type cairo-surface-observer-callback-t
      cairo-surface-observer-mode-t cairo-device-type-t _cairo_device_type
      cairo-path-data-type-t _cairo_path_data_type
      cairo-user-scaled-font-unicode-to-glyph-func-t
      cairo-user-scaled-font-text-to-glyphs-func-t
      cairo-user-scaled-font-render-glyph-func-t
      cairo-user-scaled-font-init-func-t cairo-font-type-t _cairo_font_type
      cairo-color-mode-t _cairo_color_mode cairo-hint-metrics-t
      _cairo_hint_metrics cairo-hint-style-t _cairo_hint_style
      cairo-subpixel-order-t _cairo_subpixel_order cairo-font-weight-t
      _cairo_font_weight cairo-font-slant-t _cairo_font_slant
      cairo-text-cluster-flags-t _cairo_text_cluster_flags cairo-line-join-t
      _cairo_line_join cairo-line-cap-t _cairo_line_cap cairo-fill-rule-t
      _cairo_fill_rule cairo-antialias-t _cairo_antialias cairo-operator-t
      _cairo_operator cairo-read-func-t cairo-write-func-t cairo-dither-t
      _cairo_dither cairo-format-t _cairo_format cairo-content-t _cairo_content
      cairo-status-t _cairo_status cairo-destroy-func-t cairo-bool-t)
    #<package "DUMMY">)
   (setf autowrap::*mute-reporting-p* nil))
 (let ((autowrap::*mute-reporting-p* nil))
   (eval-when (:load-toplevel :execute)
     (autowrap::report-wrap-failures 'autowrap::load-time *standard-output*)
     (autowrap::clear-wrap-failures))))
