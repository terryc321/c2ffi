(PROGN
 (EVAL-WHEN (:COMPILE-TOPLEVEL :LOAD-TOPLEVEL :EXECUTE)
   (SETF AUTOWRAP::*FAILED-WRAPS* NIL)
   (SETF AUTOWRAP::*MUTE-REPORTING-P* NIL)
   (PROGN
    (SETF AUTOWRAP::*FOREIGN-RECORD-INDEX* (MAKE-HASH-TABLE))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__U_CHAR ':UNSIGNED-CHAR)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__U_SHORT ':UNSIGNED-SHORT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__U_INT ':UNSIGNED-INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__U_LONG ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__INT8_T ':CHAR)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__UINT8_T ':UNSIGNED-CHAR)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__INT16_T ':SHORT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__UINT16_T ':UNSIGNED-SHORT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__INT32_T ':INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__UINT32_T ':UNSIGNED-INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__INT64_T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__UINT64_T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__INT_LEAST8_T '__INT8_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__UINT_LEAST8_T '__UINT8_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__INT_LEAST16_T '__INT16_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__UINT_LEAST16_T '__UINT16_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__INT_LEAST32_T '__INT32_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__UINT_LEAST32_T '__UINT32_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__INT_LEAST64_T '__INT64_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__UINT_LEAST64_T '__UINT64_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__QUAD_T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__U_QUAD_T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__INTMAX_T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__UINTMAX_T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__DEV_T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__UID_T ':UNSIGNED-INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__GID_T ':UNSIGNED-INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__INO_T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__INO64_T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__MODE_T ':UNSIGNED-INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__NLINK_T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__OFF_T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__OFF64_T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__PID_T ':INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__FSID_T
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 1 :BIT-SIZE 64 :BIT-ALIGNMENT 32)
                                     (:__VAL (:ARRAY :INT 2) :BIT-SIZE 64
                                      :BIT-OFFSET 0 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__CLOCK_T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__RLIM_T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__RLIM64_T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__ID_T ':UNSIGNED-INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__TIME_T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__USECONDS_T ':UNSIGNED-INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__SUSECONDS_T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__SUSECONDS64_T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__DADDR_T ':INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__KEY_T ':INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__CLOCKID_T ':INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__TIMER_T '(:POINTER :VOID))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__BLKSIZE_T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__BLKCNT_T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__BLKCNT64_T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__FSBLKCNT_T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__FSBLKCNT64_T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__FSFILCNT_T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__FSFILCNT64_T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__FSWORD_T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__SSIZE_T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__SYSCALL_SLONG_T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__SYSCALL_ULONG_T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__LOFF_T '__OFF64_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__CADDR_T '(:STRING))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__INTPTR_T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__SOCKLEN_T ':UNSIGNED-INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__SIG_ATOMIC_T ':INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '_FLOAT32 ':FLOAT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '_FLOAT64 ':DOUBLE)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '_FLOAT32X ':DOUBLE)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '_FLOAT64X 'AUTOWRAP::LONG-DOUBLE)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'FLOAT-T ':FLOAT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'DOUBLE-T ':DOUBLE)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FPCLASSIFY "__fpclassify") ':INT
                                      '((|__value| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SIGNBIT "__signbit") ':INT
                                      '((|__value| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ISINF "__isinf") ':INT
                                      '((|__value| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FINITE "__finite") ':INT
                                      '((|__value| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ISNAN "__isnan") ':INT
                                      '((|__value| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ISEQSIG "__iseqsig") ':INT
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ISSIGNALING "__issignaling") ':INT
                                      '((|__value| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ACOS "acos") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ACOS "__acos") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ASIN "asin") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ASIN "__asin") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ATAN "atan") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ATAN "__atan") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ATAN2 "atan2") ':DOUBLE
                                      '((|__y| :DOUBLE) (|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ATAN2 "__atan2") ':DOUBLE
                                      '((|__y| :DOUBLE) (|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(COS "cos") ':DOUBLE '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__COS "__cos") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SIN "sin") ':DOUBLE '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SIN "__sin") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TAN "tan") ':DOUBLE '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TAN "__tan") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(COSH "cosh") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__COSH "__cosh") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SINH "sinh") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SINH "__sinh") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TANH "tanh") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TANH "__tanh") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ACOSH "acosh") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ACOSH "__acosh") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ASINH "asinh") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ASINH "__asinh") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ATANH "atanh") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ATANH "__atanh") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(EXP "exp") ':DOUBLE '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__EXP "__exp") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FREXP "frexp") ':DOUBLE
                                      '((|__x| :DOUBLE)
                                        (|__exponent| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FREXP "__frexp") ':DOUBLE
                                      '((|__x| :DOUBLE)
                                        (|__exponent| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LDEXP "ldexp") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__exponent| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LDEXP "__ldexp") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__exponent| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LOG "log") ':DOUBLE '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LOG "__log") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LOG10 "log10") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LOG10 "__log10") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MODF "modf") ':DOUBLE
                                      '((|__x| :DOUBLE)
                                        (|__iptr| (:POINTER :DOUBLE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__MODF "__modf") ':DOUBLE
                                      '((|__x| :DOUBLE)
                                        (|__iptr| (:POINTER :DOUBLE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(EXPM1 "expm1") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__EXPM1 "__expm1") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LOG1P "log1p") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LOG1P "__log1p") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LOGB "logb") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LOGB "__logb") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(EXP2 "exp2") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__EXP2 "__exp2") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LOG2 "log2") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LOG2 "__log2") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(POW "pow") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__POW "__pow") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SQRT "sqrt") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SQRT "__sqrt") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(HYPOT "hypot") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__HYPOT "__hypot") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(CBRT "cbrt") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__CBRT "__cbrt") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(CEIL "ceil") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__CEIL "__ceil") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FABS "fabs") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FABS "__fabs") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FLOOR "floor") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FLOOR "__floor") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FMOD "fmod") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FMOD "__fmod") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISINF "isinf") ':INT
                                      '((|__value| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FINITE "finite") ':INT
                                      '((|__value| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(DREM "drem") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__DREM "__drem") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SIGNIFICAND "significand") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SIGNIFICAND "__significand") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(COPYSIGN "copysign") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__COPYSIGN "__copysign") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(NAN "nan") ':DOUBLE
                                      '((|__tagb| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__NAN "__nan") ':DOUBLE
                                      '((|__tagb| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISNAN "isnan") ':INT
                                      '((|__value| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(J0 "j0") ':DOUBLE '((#:P8762 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__J0| "__j0") ':DOUBLE
                                      '((#:P8763 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(J1 "j1") ':DOUBLE '((#:P8764 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__J1| "__j1") ':DOUBLE
                                      '((#:P8765 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(JN "jn") ':DOUBLE
                                      '((#:P8766 :INT) (#:P8767 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__JN "__jn") ':DOUBLE
                                      '((#:P8768 :INT) (#:P8769 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(Y0 "y0") ':DOUBLE '((#:P8770 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__Y0| "__y0") ':DOUBLE
                                      '((#:P8771 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(Y1 "y1") ':DOUBLE '((#:P8772 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__Y1| "__y1") ':DOUBLE
                                      '((#:P8773 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(YN "yn") ':DOUBLE
                                      '((#:P8774 :INT) (#:P8775 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__YN "__yn") ':DOUBLE
                                      '((#:P8776 :INT) (#:P8777 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ERF "erf") ':DOUBLE
                                      '((#:P8778 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ERF "__erf") ':DOUBLE
                                      '((#:P8779 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ERFC "erfc") ':DOUBLE
                                      '((#:P8780 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ERFC "__erfc") ':DOUBLE
                                      '((#:P8781 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LGAMMA "lgamma") ':DOUBLE
                                      '((#:P8782 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LGAMMA "__lgamma") ':DOUBLE
                                      '((#:P8783 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TGAMMA "tgamma") ':DOUBLE
                                      '((#:P8784 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TGAMMA "__tgamma") ':DOUBLE
                                      '((#:P8785 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GAMMA "gamma") ':DOUBLE
                                      '((#:P8786 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__GAMMA "__gamma") ':DOUBLE
                                      '((#:P8787 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LGAMMA-R "lgamma_r") ':DOUBLE
                                      '((#:P8788 :DOUBLE)
                                        (|__signgamp| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LGAMMA_R "__lgamma_r") ':DOUBLE
                                      '((#:P8789 :DOUBLE)
                                        (|__signgamp| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(RINT "rint") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__RINT "__rint") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(NEXTAFTER "nextafter") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__NEXTAFTER "__nextafter") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(NEXTTOWARD "nexttoward") ':DOUBLE
                                      '((|__x| :DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__NEXTTOWARD "__nexttoward") ':DOUBLE
                                      '((|__x| :DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(REMAINDER "remainder") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__REMAINDER "__remainder") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SCALBN "scalbn") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__n| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SCALBN "__scalbn") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__n| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ILOGB "ilogb") ':INT
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ILOGB "__ilogb") ':INT
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SCALBLN "scalbln") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__n| :LONG)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SCALBLN "__scalbln") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__n| :LONG)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(NEARBYINT "nearbyint") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__NEARBYINT "__nearbyint") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ROUND "round") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ROUND "__round") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TRUNC "trunc") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TRUNC "__trunc") ':DOUBLE
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(REMQUO "remquo") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)
                                        (|__quo| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__REMQUO "__remquo") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)
                                        (|__quo| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LRINT "lrint") ':LONG
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LRINT "__lrint") ':LONG
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LLRINT "llrint") ':LONG-LONG
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LLRINT "__llrint") ':LONG-LONG
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LROUND "lround") ':LONG
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LROUND "__lround") ':LONG
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LLROUND "llround") ':LONG-LONG
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LLROUND "__llround") ':LONG-LONG
                                      '((|__x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FDIM "fdim") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FDIM "__fdim") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FMAX "fmax") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FMAX "__fmax") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FMIN "fmin") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FMIN "__fmin") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FMA "fma") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)
                                        (|__z| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FMA "__fma") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__y| :DOUBLE)
                                        (|__z| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SCALB "scalb") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__n| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SCALB "__scalb") ':DOUBLE
                                      '((|__x| :DOUBLE) (|__n| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FPCLASSIFYF "__fpclassifyf") ':INT
                                      '((|__value| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SIGNBITF "__signbitf") ':INT
                                      '((|__value| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ISINFF "__isinff") ':INT
                                      '((|__value| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FINITEF "__finitef") ':INT
                                      '((|__value| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ISNANF "__isnanf") ':INT
                                      '((|__value| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ISEQSIGF "__iseqsigf") ':INT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ISSIGNALINGF "__issignalingf") ':INT
                                      '((|__value| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ACOSF "acosf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ACOSF "__acosf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ASINF "asinf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ASINF "__asinf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ATANF "atanf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ATANF "__atanf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ATAN2F "atan2f") ':FLOAT
                                      '((|__y| :FLOAT) (|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ATAN2F "__atan2f") ':FLOAT
                                      '((|__y| :FLOAT) (|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(COSF "cosf") ':FLOAT '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__COSF "__cosf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SINF "sinf") ':FLOAT '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SINF "__sinf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TANF "tanf") ':FLOAT '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TANF "__tanf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(COSHF "coshf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__COSHF "__coshf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SINHF "sinhf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SINHF "__sinhf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TANHF "tanhf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TANHF "__tanhf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ACOSHF "acoshf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ACOSHF "__acoshf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ASINHF "asinhf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ASINHF "__asinhf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ATANHF "atanhf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ATANHF "__atanhf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(EXPF "expf") ':FLOAT '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__EXPF "__expf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FREXPF "frexpf") ':FLOAT
                                      '((|__x| :FLOAT)
                                        (|__exponent| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FREXPF "__frexpf") ':FLOAT
                                      '((|__x| :FLOAT)
                                        (|__exponent| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LDEXPF "ldexpf") ':FLOAT
                                      '((|__x| :FLOAT) (|__exponent| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LDEXPF "__ldexpf") ':FLOAT
                                      '((|__x| :FLOAT) (|__exponent| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LOGF "logf") ':FLOAT '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LOGF "__logf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LOG10F "log10f") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LOG10F "__log10f") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MODFF "modff") ':FLOAT
                                      '((|__x| :FLOAT)
                                        (|__iptr| (:POINTER :FLOAT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__MODFF "__modff") ':FLOAT
                                      '((|__x| :FLOAT)
                                        (|__iptr| (:POINTER :FLOAT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(EXPM1F "expm1f") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__EXPM1F "__expm1f") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LOG1PF "log1pf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LOG1PF "__log1pf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LOGBF "logbf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LOGBF "__logbf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(EXP2F "exp2f") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__EXP2F "__exp2f") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LOG2F "log2f") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LOG2F "__log2f") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(POWF "powf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__POWF "__powf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SQRTF "sqrtf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SQRTF "__sqrtf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(HYPOTF "hypotf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__HYPOTF "__hypotf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(CBRTF "cbrtf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__CBRTF "__cbrtf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(CEILF "ceilf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__CEILF "__ceilf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FABSF "fabsf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FABSF "__fabsf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FLOORF "floorf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FLOORF "__floorf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FMODF "fmodf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FMODF "__fmodf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISINFF "isinff") ':INT
                                      '((|__value| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FINITEF "finitef") ':INT
                                      '((|__value| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(DREMF "dremf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__DREMF "__dremf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SIGNIFICANDF "significandf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SIGNIFICANDF "__significandf")
                                      ':FLOAT '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(COPYSIGNF "copysignf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__COPYSIGNF "__copysignf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(NANF "nanf") ':FLOAT
                                      '((|__tagb| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__NANF "__nanf") ':FLOAT
                                      '((|__tagb| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISNANF "isnanf") ':INT
                                      '((|__value| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(J0F "j0f") ':FLOAT '((#:P8790 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__J0F| "__j0f") ':FLOAT
                                      '((#:P8791 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(J1F "j1f") ':FLOAT '((#:P8792 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__J1F| "__j1f") ':FLOAT
                                      '((#:P8793 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(JNF "jnf") ':FLOAT
                                      '((#:P8794 :INT) (#:P8795 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__JNF "__jnf") ':FLOAT
                                      '((#:P8796 :INT) (#:P8797 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(Y0F "y0f") ':FLOAT '((#:P8798 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__Y0F| "__y0f") ':FLOAT
                                      '((#:P8799 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(Y1F "y1f") ':FLOAT '((#:P8800 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__Y1F| "__y1f") ':FLOAT
                                      '((#:P8801 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(YNF "ynf") ':FLOAT
                                      '((#:P8802 :INT) (#:P8803 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__YNF "__ynf") ':FLOAT
                                      '((#:P8804 :INT) (#:P8805 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ERFF "erff") ':FLOAT
                                      '((#:P8806 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ERFF "__erff") ':FLOAT
                                      '((#:P8807 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ERFCF "erfcf") ':FLOAT
                                      '((#:P8808 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ERFCF "__erfcf") ':FLOAT
                                      '((#:P8809 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LGAMMAF "lgammaf") ':FLOAT
                                      '((#:P8810 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LGAMMAF "__lgammaf") ':FLOAT
                                      '((#:P8811 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TGAMMAF "tgammaf") ':FLOAT
                                      '((#:P8812 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TGAMMAF "__tgammaf") ':FLOAT
                                      '((#:P8813 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GAMMAF "gammaf") ':FLOAT
                                      '((#:P8814 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__GAMMAF "__gammaf") ':FLOAT
                                      '((#:P8815 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LGAMMAF-R "lgammaf_r") ':FLOAT
                                      '((#:P8816 :FLOAT)
                                        (|__signgamp| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LGAMMAF_R "__lgammaf_r") ':FLOAT
                                      '((#:P8817 :FLOAT)
                                        (|__signgamp| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(RINTF "rintf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__RINTF "__rintf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(NEXTAFTERF "nextafterf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__NEXTAFTERF "__nextafterf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(NEXTTOWARDF "nexttowardf") ':FLOAT
                                      '((|__x| :FLOAT)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__NEXTTOWARDF "__nexttowardf") ':FLOAT
                                      '((|__x| :FLOAT)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(REMAINDERF "remainderf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__REMAINDERF "__remainderf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SCALBNF "scalbnf") ':FLOAT
                                      '((|__x| :FLOAT) (|__n| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SCALBNF "__scalbnf") ':FLOAT
                                      '((|__x| :FLOAT) (|__n| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ILOGBF "ilogbf") ':INT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ILOGBF "__ilogbf") ':INT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SCALBLNF "scalblnf") ':FLOAT
                                      '((|__x| :FLOAT) (|__n| :LONG)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SCALBLNF "__scalblnf") ':FLOAT
                                      '((|__x| :FLOAT) (|__n| :LONG)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(NEARBYINTF "nearbyintf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__NEARBYINTF "__nearbyintf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ROUNDF "roundf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ROUNDF "__roundf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TRUNCF "truncf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TRUNCF "__truncf") ':FLOAT
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(REMQUOF "remquof") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)
                                        (|__quo| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__REMQUOF "__remquof") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)
                                        (|__quo| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LRINTF "lrintf") ':LONG
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LRINTF "__lrintf") ':LONG
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LLRINTF "llrintf") ':LONG-LONG
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LLRINTF "__llrintf") ':LONG-LONG
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LROUNDF "lroundf") ':LONG
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LROUNDF "__lroundf") ':LONG
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LLROUNDF "llroundf") ':LONG-LONG
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LLROUNDF "__llroundf") ':LONG-LONG
                                      '((|__x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FDIMF "fdimf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FDIMF "__fdimf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FMAXF "fmaxf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FMAXF "__fmaxf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FMINF "fminf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FMINF "__fminf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FMAF "fmaf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)
                                        (|__z| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FMAF "__fmaf") ':FLOAT
                                      '((|__x| :FLOAT) (|__y| :FLOAT)
                                        (|__z| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SCALBF "scalbf") ':FLOAT
                                      '((|__x| :FLOAT) (|__n| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SCALBF "__scalbf") ':FLOAT
                                      '((|__x| :FLOAT) (|__n| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FPCLASSIFYL "__fpclassifyl") ':INT
                                      '((|__value| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SIGNBITL "__signbitl") ':INT
                                      '((|__value| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ISINFL "__isinfl") ':INT
                                      '((|__value| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FINITEL "__finitel") ':INT
                                      '((|__value| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ISNANL "__isnanl") ':INT
                                      '((|__value| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ISEQSIGL "__iseqsigl") ':INT
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ISSIGNALINGL "__issignalingl") ':INT
                                      '((|__value| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ACOSL "acosl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ACOSL "__acosl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ASINL "asinl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ASINL "__asinl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ATANL "atanl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ATANL "__atanl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ATAN2L "atan2l") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__y| AUTOWRAP::LONG-DOUBLE)
                                        (|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ATAN2L "__atan2l")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__y| AUTOWRAP::LONG-DOUBLE)
                                        (|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(COSL "cosl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__COSL "__cosl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SINL "sinl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SINL "__sinl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TANL "tanl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TANL "__tanl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(COSHL "coshl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__COSHL "__coshl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SINHL "sinhl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SINHL "__sinhl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TANHL "tanhl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TANHL "__tanhl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ACOSHL "acoshl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ACOSHL "__acoshl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ASINHL "asinhl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ASINHL "__asinhl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ATANHL "atanhl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ATANHL "__atanhl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(EXPL "expl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__EXPL "__expl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FREXPL "frexpl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__exponent| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FREXPL "__frexpl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__exponent| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LDEXPL "ldexpl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__exponent| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LDEXPL "__ldexpl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__exponent| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LOGL "logl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LOGL "__logl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LOG10L "log10l") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LOG10L "__log10l")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MODFL "modfl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__iptr|
                                         (:POINTER AUTOWRAP::LONG-DOUBLE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__MODFL "__modfl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__iptr|
                                         (:POINTER AUTOWRAP::LONG-DOUBLE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(EXPM1L "expm1l") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__EXPM1L "__expm1l")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LOG1PL "log1pl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LOG1PL "__log1pl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LOGBL "logbl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LOGBL "__logbl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(EXP2L "exp2l") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__EXP2L "__exp2l")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LOG2L "log2l") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LOG2L "__log2l")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(POWL "powl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__POWL "__powl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SQRTL "sqrtl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SQRTL "__sqrtl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(HYPOTL "hypotl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__HYPOTL "__hypotl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(CBRTL "cbrtl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__CBRTL "__cbrtl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(CEILL "ceill") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__CEILL "__ceill")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FABSL "fabsl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FABSL "__fabsl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FLOORL "floorl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FLOORL "__floorl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FMODL "fmodl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FMODL "__fmodl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISINFL "isinfl") ':INT
                                      '((|__value| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FINITEL "finitel") ':INT
                                      '((|__value| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(DREML "dreml") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__DREML "__dreml")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SIGNIFICANDL "significandl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SIGNIFICANDL "__significandl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(COPYSIGNL "copysignl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__COPYSIGNL "__copysignl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(NANL "nanl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__tagb| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__NANL "__nanl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__tagb| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISNANL "isnanl") ':INT
                                      '((|__value| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(J0L "j0l") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8818 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__J0L| "__j0l") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8819 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(J1L "j1l") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8820 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__J1L| "__j1l") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8821 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(JNL "jnl") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8822 :INT)
                                        (#:P8823 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__JNL "__jnl") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8824 :INT)
                                        (#:P8825 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(Y0L "y0l") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8826 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__Y0L| "__y0l") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8827 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(Y1L "y1l") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8828 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__Y1L| "__y1l") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8829 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(YNL "ynl") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8830 :INT)
                                        (#:P8831 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__YNL "__ynl") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8832 :INT)
                                        (#:P8833 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ERFL "erfl") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8834 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ERFL "__erfl") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8835 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ERFCL "erfcl") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8836 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ERFCL "__erfcl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8837 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LGAMMAL "lgammal")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8838 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LGAMMAL "__lgammal")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8839 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TGAMMAL "tgammal")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8840 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TGAMMAL "__tgammal")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8841 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GAMMAL "gammal") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8842 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__GAMMAL "__gammal")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8843 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LGAMMAL-R "lgammal_r")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8844 AUTOWRAP::LONG-DOUBLE)
                                        (|__signgamp| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LGAMMAL_R "__lgammal_r")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((#:P8845 AUTOWRAP::LONG-DOUBLE)
                                        (|__signgamp| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(RINTL "rintl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__RINTL "__rintl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(NEXTAFTERL "nextafterl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__NEXTAFTERL "__nextafterl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(NEXTTOWARDL "nexttowardl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__NEXTTOWARDL "__nexttowardl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(REMAINDERL "remainderl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__REMAINDERL "__remainderl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SCALBNL "scalbnl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__n| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SCALBNL "__scalbnl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__n| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ILOGBL "ilogbl") ':INT
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ILOGBL "__ilogbl") ':INT
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SCALBLNL "scalblnl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__n| :LONG)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SCALBLNL "__scalblnl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__n| :LONG)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(NEARBYINTL "nearbyintl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__NEARBYINTL "__nearbyintl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ROUNDL "roundl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ROUNDL "__roundl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TRUNCL "truncl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TRUNCL "__truncl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(REMQUOL "remquol")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)
                                        (|__quo| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__REMQUOL "__remquol")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)
                                        (|__quo| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LRINTL "lrintl") ':LONG
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LRINTL "__lrintl") ':LONG
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LLRINTL "llrintl") ':LONG-LONG
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LLRINTL "__llrintl") ':LONG-LONG
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LROUNDL "lroundl") ':LONG
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LROUNDL "__lroundl") ':LONG
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LLROUNDL "llroundl") ':LONG-LONG
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LLROUNDL "__llroundl") ':LONG-LONG
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FDIML "fdiml") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FDIML "__fdiml")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FMAXL "fmaxl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FMAXL "__fmaxl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FMINL "fminl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FMINL "__fminl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FMAL "fmal") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)
                                        (|__z| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__FMAL "__fmal") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__y| AUTOWRAP::LONG-DOUBLE)
                                        (|__z| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SCALBL "scalbl") 'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__n| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__SCALBL "__scalbl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__x| AUTOWRAP::LONG-DOUBLE)
                                        (|__n| AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-EXTERN 'SIGNGAM "signgam" ':INT)
    (PROGN
     (DEFPARAMETER +FP-NAN+ 0)
     (DEFPARAMETER +FP-INFINITE+ 1)
     (DEFPARAMETER +FP-ZERO+ 2)
     (DEFPARAMETER +FP-SUBNORMAL+ 3)
     (DEFPARAMETER +FP-NORMAL+ 4)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8846 2
                                   '((:NAN . 0) (:INFINITE . 1) (:ZERO . 2)
                                     (:SUBNORMAL . 3) (:NORMAL . 4))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-PLATFORM "SDL_GetPlatform")
                                      '(:STRING) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'U-CHAR '__U_CHAR)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'U-SHORT '__U_SHORT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'U-INT '__U_INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'U-LONG '__U_LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'QUAD-T '__QUAD_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'U-QUAD-T '__U_QUAD_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'FSID-T '__FSID_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'LOFF-T '__LOFF_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'INO-T '__INO_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'DEV-T '__DEV_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'GID-T '__GID_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'MODE-T '__MODE_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'NLINK-T '__NLINK_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UID-T '__UID_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'OFF-T '__OFF_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PID-T '__PID_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'ID-T '__ID_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SSIZE-T '__SSIZE_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'DADDR-T '__DADDR_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'CADDR-T '__CADDR_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'KEY-T '__KEY_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'CLOCK-T '__CLOCK_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'CLOCKID-T '__CLOCKID_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'TIME-T '__TIME_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'TIMER-T '__TIMER_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SIZE-T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'ULONG ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'USHORT ':UNSIGNED-SHORT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINT ':UNSIGNED-INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'INT8-T '__INT8_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'INT16-T '__INT16_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'INT32-T '__INT32_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'INT64-T '__INT64_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'U-INT8-T '__UINT8_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'U-INT16-T '__UINT16_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'U-INT32-T '__UINT32_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'U-INT64-T '__UINT64_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'REGISTER-T ':INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__SIGSET_T
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 3 :BIT-SIZE 1024 :BIT-ALIGNMENT
                                      64)
                                     (:__VAL (:ARRAY :UNSIGNED-LONG 16)
                                      :BIT-SIZE 1024 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SIGSET-T '__SIGSET_T)
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'TIMEVAL :STRUCT 128 64
                                    '((:TV-SEC __TIME_T :BIT-SIZE 64
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
                                      (:TV-USEC __SUSECONDS_T :BIT-SIZE 64
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'TIMESPEC :STRUCT 128 64
                                    '((:TV-SEC __TIME_T :BIT-SIZE 64
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
                                      (:TV-NSEC __SYSCALL_SLONG_T :BIT-SIZE 64
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SUSECONDS-T '__SUSECONDS_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__FD_MASK ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'FD-SET
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 4 :BIT-SIZE 1024 :BIT-ALIGNMENT
                                      64)
                                     (:__FDS_BITS (:ARRAY __FD_MASK 16)
                                      :BIT-SIZE 1024 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'FD-MASK '__FD_MASK)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SELECT "select") ':INT
                                      '((|__nfds| :INT)
                                        (|__readfds| (:POINTER FD-SET))
                                        (|__writefds| (:POINTER FD-SET))
                                        (|__exceptfds| (:POINTER FD-SET))
                                        (|__timeout|
                                         (:POINTER (:STRUCT (TIMEVAL))))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(PSELECT "pselect") ':INT
                                      '((|__nfds| :INT)
                                        (|__readfds| (:POINTER FD-SET))
                                        (|__writefds| (:POINTER FD-SET))
                                        (|__exceptfds| (:POINTER FD-SET))
                                        (|__timeout|
                                         (:POINTER (:STRUCT (TIMESPEC))))
                                        (|__sigmask| (:POINTER __SIGSET_T))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'BLKSIZE-T '__BLKSIZE_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'BLKCNT-T '__BLKCNT_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'FSBLKCNT-T '__FSBLKCNT_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'FSFILCNT-T '__FSFILCNT_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__ATOMIC_WIDE_COUNTER
                                   '(UNION
                                     (NIL :ID 7 :BIT-SIZE 64 :BIT-ALIGNMENT 64)
                                     (:__VALUE64 :UNSIGNED-LONG-LONG :BIT-SIZE
                                      64 :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
                                     (:__VALUE32
                                      (AUTOWRAP::STRUCT
                                       (NIL :ID 8 :BIT-SIZE 64 :BIT-ALIGNMENT
                                        32)
                                       (:__LOW :UNSIGNED-INT :BIT-SIZE 32
                                        :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                       (:__HIGH :UNSIGNED-INT :BIT-SIZE 32
                                        :BIT-OFFSET 32 :BIT-ALIGNMENT 32))
                                      :BIT-SIZE 64 :BIT-OFFSET 0 :BIT-ALIGNMENT
                                      32)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '__PTHREAD_INTERNAL_LIST :STRUCT 128 64
                                    '((:__PREV
                                       (:POINTER
                                        (:STRUCT (__PTHREAD_INTERNAL_LIST)))
                                       :BIT-SIZE 64 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 64)
                                      (:__NEXT
                                       (:POINTER
                                        (:STRUCT (__PTHREAD_INTERNAL_LIST)))
                                       :BIT-SIZE 64 :BIT-OFFSET 64
                                       :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__PTHREAD_LIST_T
                                   '(:STRUCT (__PTHREAD_INTERNAL_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '__PTHREAD_INTERNAL_SLIST :STRUCT 64 64
                                    '((:__NEXT
                                       (:POINTER
                                        (:STRUCT (__PTHREAD_INTERNAL_SLIST)))
                                       :BIT-SIZE 64 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__PTHREAD_SLIST_T
                                   '(:STRUCT (__PTHREAD_INTERNAL_SLIST)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '__PTHREAD_MUTEX_S :STRUCT 320 64
                                    '((:__LOCK :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:__COUNT :UNSIGNED-INT :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:__OWNER :INT :BIT-SIZE 32 :BIT-OFFSET
                                       64 :BIT-ALIGNMENT 32)
                                      (:__NUSERS :UNSIGNED-INT :BIT-SIZE 32
                                       :BIT-OFFSET 96 :BIT-ALIGNMENT 32)
                                      (:__KIND :INT :BIT-SIZE 32 :BIT-OFFSET
                                       128 :BIT-ALIGNMENT 32)
                                      (:__SPINS :SHORT :BIT-SIZE 16 :BIT-OFFSET
                                       160 :BIT-ALIGNMENT 16)
                                      (:__ELISION :SHORT :BIT-SIZE 16
                                       :BIT-OFFSET 176 :BIT-ALIGNMENT 16)
                                      (:__LIST __PTHREAD_LIST_T :BIT-SIZE 128
                                       :BIT-OFFSET 192 :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '__PTHREAD_RWLOCK_ARCH_T :STRUCT 448 64
                                    '((:__READERS :UNSIGNED-INT :BIT-SIZE 32
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:__WRITERS :UNSIGNED-INT :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:__WRPHASE_FUTEX :UNSIGNED-INT :BIT-SIZE
                                       32 :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:__WRITERS_FUTEX :UNSIGNED-INT :BIT-SIZE
                                       32 :BIT-OFFSET 96 :BIT-ALIGNMENT 32)
                                      (:__PAD3 :UNSIGNED-INT :BIT-SIZE 32
                                       :BIT-OFFSET 128 :BIT-ALIGNMENT 32)
                                      (:__PAD4 :UNSIGNED-INT :BIT-SIZE 32
                                       :BIT-OFFSET 160 :BIT-ALIGNMENT 32)
                                      (:__CUR_WRITER :INT :BIT-SIZE 32
                                       :BIT-OFFSET 192 :BIT-ALIGNMENT 32)
                                      (:__SHARED :INT :BIT-SIZE 32 :BIT-OFFSET
                                       224 :BIT-ALIGNMENT 32)
                                      (:__RWELISION :CHAR :BIT-SIZE 8
                                       :BIT-OFFSET 256 :BIT-ALIGNMENT 8)
                                      (:__PAD1 (:ARRAY :UNSIGNED-CHAR 7)
                                       :BIT-SIZE 56 :BIT-OFFSET 264
                                       :BIT-ALIGNMENT 8)
                                      (:__PAD2 :UNSIGNED-LONG :BIT-SIZE 64
                                       :BIT-OFFSET 320 :BIT-ALIGNMENT 64)
                                      (:__FLAGS :UNSIGNED-INT :BIT-SIZE 32
                                       :BIT-OFFSET 384 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '__PTHREAD_COND_S :STRUCT 384 64
                                    '((:__WSEQ __ATOMIC_WIDE_COUNTER :BIT-SIZE
                                       64 :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
                                      (:__G1_START __ATOMIC_WIDE_COUNTER
                                       :BIT-SIZE 64 :BIT-OFFSET 64
                                       :BIT-ALIGNMENT 64)
                                      (:__G_REFS (:ARRAY :UNSIGNED-INT 2)
                                       :BIT-SIZE 64 :BIT-OFFSET 128
                                       :BIT-ALIGNMENT 32)
                                      (:__G_SIZE (:ARRAY :UNSIGNED-INT 2)
                                       :BIT-SIZE 64 :BIT-OFFSET 192
                                       :BIT-ALIGNMENT 32)
                                      (:__G1_ORIG_SIZE :UNSIGNED-INT :BIT-SIZE
                                       32 :BIT-OFFSET 256 :BIT-ALIGNMENT 32)
                                      (:__WREFS :UNSIGNED-INT :BIT-SIZE 32
                                       :BIT-OFFSET 288 :BIT-ALIGNMENT 32)
                                      (:__G_SIGNALS (:ARRAY :UNSIGNED-INT 2)
                                       :BIT-SIZE 64 :BIT-OFFSET 320
                                       :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__TSS_T ':UNSIGNED-INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__THRD_T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__ONCE_FLAG
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 11 :BIT-SIZE 32 :BIT-ALIGNMENT
                                      32)
                                     (:__DATA :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-MUTEXATTR-T
                                   '(UNION
                                     (NIL :ID 12 :BIT-SIZE 32 :BIT-ALIGNMENT
                                      32)
                                     (:__SIZE (:ARRAY :CHAR 4) :BIT-SIZE 32
                                      :BIT-OFFSET 0 :BIT-ALIGNMENT 8)
                                     (:__ALIGN :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-CONDATTR-T
                                   '(UNION
                                     (NIL :ID 13 :BIT-SIZE 32 :BIT-ALIGNMENT
                                      32)
                                     (:__SIZE (:ARRAY :CHAR 4) :BIT-SIZE 32
                                      :BIT-OFFSET 0 :BIT-ALIGNMENT 8)
                                     (:__ALIGN :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-KEY-T ':UNSIGNED-INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-ONCE-T ':INT)
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'PTHREAD-ATTR-T :UNION 448 64
                                    '((:__SIZE (:ARRAY :CHAR 56) :BIT-SIZE 448
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 8)
                                      (:__ALIGN :LONG :BIT-SIZE 64 :BIT-OFFSET
                                       0 :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-ATTR-T '(:UNION (PTHREAD-ATTR-T)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-MUTEX-T
                                   '(UNION
                                     (NIL :ID 15 :BIT-SIZE 320 :BIT-ALIGNMENT
                                      64)
                                     (:__DATA (:STRUCT (__PTHREAD_MUTEX_S))
                                      :BIT-SIZE 320 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 64)
                                     (:__SIZE (:ARRAY :CHAR 40) :BIT-SIZE 320
                                      :BIT-OFFSET 0 :BIT-ALIGNMENT 8)
                                     (:__ALIGN :LONG :BIT-SIZE 64 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-COND-T
                                   '(UNION
                                     (NIL :ID 17 :BIT-SIZE 384 :BIT-ALIGNMENT
                                      64)
                                     (:__DATA (:STRUCT (__PTHREAD_COND_S))
                                      :BIT-SIZE 384 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 64)
                                     (:__SIZE (:ARRAY :CHAR 48) :BIT-SIZE 384
                                      :BIT-OFFSET 0 :BIT-ALIGNMENT 8)
                                     (:__ALIGN :LONG-LONG :BIT-SIZE 64
                                      :BIT-OFFSET 0 :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-RWLOCK-T
                                   '(UNION
                                     (NIL :ID 19 :BIT-SIZE 448 :BIT-ALIGNMENT
                                      64)
                                     (:__DATA
                                      (:STRUCT (__PTHREAD_RWLOCK_ARCH_T))
                                      :BIT-SIZE 448 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 64)
                                     (:__SIZE (:ARRAY :CHAR 56) :BIT-SIZE 448
                                      :BIT-OFFSET 0 :BIT-ALIGNMENT 8)
                                     (:__ALIGN :LONG :BIT-SIZE 64 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-RWLOCKATTR-T
                                   '(UNION
                                     (NIL :ID 21 :BIT-SIZE 64 :BIT-ALIGNMENT
                                      64)
                                     (:__SIZE (:ARRAY :CHAR 8) :BIT-SIZE 64
                                      :BIT-OFFSET 0 :BIT-ALIGNMENT 8)
                                     (:__ALIGN :LONG :BIT-SIZE 64 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-SPINLOCK-T ':INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-BARRIER-T
                                   '(UNION
                                     (NIL :ID 22 :BIT-SIZE 256 :BIT-ALIGNMENT
                                      64)
                                     (:__SIZE (:ARRAY :CHAR 32) :BIT-SIZE 256
                                      :BIT-OFFSET 0 :BIT-ALIGNMENT 8)
                                     (:__ALIGN :LONG :BIT-SIZE 64 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-BARRIERATTR-T
                                   '(UNION
                                     (NIL :ID 23 :BIT-SIZE 32 :BIT-ALIGNMENT
                                      32)
                                     (:__SIZE (:ARRAY :CHAR 4) :BIT-SIZE 32
                                      :BIT-OFFSET 0 :BIT-ALIGNMENT 8)
                                     (:__ALIGN :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__GNUC_VA_LIST '__BUILTIN_VA_LIST)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__MBSTATE_T
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 24 :BIT-SIZE 64 :BIT-ALIGNMENT
                                      32)
                                     (:__COUNT :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 32)
                                     (:__VALUE
                                      (UNION
                                       (NIL :ID 25 :BIT-SIZE 32 :BIT-ALIGNMENT
                                        32)
                                       (:__WCH :UNSIGNED-INT :BIT-SIZE 32
                                        :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                       (:__WCHB (:ARRAY :CHAR 4) :BIT-SIZE 32
                                        :BIT-OFFSET 0 :BIT-ALIGNMENT 8))
                                      :BIT-SIZE 32 :BIT-OFFSET 32
                                      :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '_G_FPOS_T :STRUCT 128 64
                                    '((:__POS __OFF_T :BIT-SIZE 64 :BIT-OFFSET
                                       0 :BIT-ALIGNMENT 64)
                                      (:__STATE __MBSTATE_T :BIT-SIZE 64
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__FPOS_T '(:STRUCT (_G_FPOS_T)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '_G_FPOS64_T :STRUCT 128 64
                                    '((:__POS __OFF64_T :BIT-SIZE 64
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
                                      (:__STATE __MBSTATE_T :BIT-SIZE 64
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__FPOS64_T '(:STRUCT (_G_FPOS64_T)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '_IO_FILE :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__FILE
                                   '(AUTOWRAP::STRUCT
                                     (_IO_FILE :BIT-SIZE 0 :BIT-ALIGNMENT 0)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '_IO_FILE :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'FILE
                                   '(AUTOWRAP::STRUCT
                                     (_IO_FILE :BIT-SIZE 0 :BIT-ALIGNMENT 0)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '_IO_FILE :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '_IO_MARKER :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '_IO_CODECVT :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '_IO_WIDE_DATA :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '_IO_LOCK_T ':VOID)
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '_IO_FILE :STRUCT 1728 64
                                    '((:_FLAGS :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:_IO_READ_PTR (:STRING) :BIT-SIZE 64
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 64)
                                      (:_IO_READ_END (:STRING) :BIT-SIZE 64
                                       :BIT-OFFSET 128 :BIT-ALIGNMENT 64)
                                      (:_IO_READ_BASE (:STRING) :BIT-SIZE 64
                                       :BIT-OFFSET 192 :BIT-ALIGNMENT 64)
                                      (:_IO_WRITE_BASE (:STRING) :BIT-SIZE 64
                                       :BIT-OFFSET 256 :BIT-ALIGNMENT 64)
                                      (:_IO_WRITE_PTR (:STRING) :BIT-SIZE 64
                                       :BIT-OFFSET 320 :BIT-ALIGNMENT 64)
                                      (:_IO_WRITE_END (:STRING) :BIT-SIZE 64
                                       :BIT-OFFSET 384 :BIT-ALIGNMENT 64)
                                      (:_IO_BUF_BASE (:STRING) :BIT-SIZE 64
                                       :BIT-OFFSET 448 :BIT-ALIGNMENT 64)
                                      (:_IO_BUF_END (:STRING) :BIT-SIZE 64
                                       :BIT-OFFSET 512 :BIT-ALIGNMENT 64)
                                      (:_IO_SAVE_BASE (:STRING) :BIT-SIZE 64
                                       :BIT-OFFSET 576 :BIT-ALIGNMENT 64)
                                      (:_IO_BACKUP_BASE (:STRING) :BIT-SIZE 64
                                       :BIT-OFFSET 640 :BIT-ALIGNMENT 64)
                                      (:_IO_SAVE_END (:STRING) :BIT-SIZE 64
                                       :BIT-OFFSET 704 :BIT-ALIGNMENT 64)
                                      (:_MARKERS
                                       (:POINTER
                                        (AUTOWRAP::STRUCT
                                         (_IO_MARKER :BIT-SIZE 0 :BIT-ALIGNMENT
                                          0)))
                                       :BIT-SIZE 64 :BIT-OFFSET 768
                                       :BIT-ALIGNMENT 64)
                                      (:_CHAIN (:POINTER (:STRUCT (_IO_FILE)))
                                       :BIT-SIZE 64 :BIT-OFFSET 832
                                       :BIT-ALIGNMENT 64)
                                      (:_FILENO :INT :BIT-SIZE 32 :BIT-OFFSET
                                       896 :BIT-ALIGNMENT 32)
                                      (:_FLAGS2 :INT :BIT-SIZE 32 :BIT-OFFSET
                                       928 :BIT-ALIGNMENT 32)
                                      (:_OLD_OFFSET __OFF_T :BIT-SIZE 64
                                       :BIT-OFFSET 960 :BIT-ALIGNMENT 64)
                                      (:_CUR_COLUMN :UNSIGNED-SHORT :BIT-SIZE
                                       16 :BIT-OFFSET 1024 :BIT-ALIGNMENT 16)
                                      (:_VTABLE_OFFSET :CHAR :BIT-SIZE 8
                                       :BIT-OFFSET 1040 :BIT-ALIGNMENT 8)
                                      (:_SHORTBUF (:ARRAY :CHAR 1) :BIT-SIZE 8
                                       :BIT-OFFSET 1048 :BIT-ALIGNMENT 8)
                                      (:_LOCK (:POINTER :VOID) :BIT-SIZE 64
                                       :BIT-OFFSET 1088 :BIT-ALIGNMENT 64)
                                      (:_OFFSET __OFF64_T :BIT-SIZE 64
                                       :BIT-OFFSET 1152 :BIT-ALIGNMENT 64)
                                      (:_CODECVT
                                       (:POINTER
                                        (AUTOWRAP::STRUCT
                                         (_IO_CODECVT :BIT-SIZE 0
                                          :BIT-ALIGNMENT 0)))
                                       :BIT-SIZE 64 :BIT-OFFSET 1216
                                       :BIT-ALIGNMENT 64)
                                      (:_WIDE_DATA
                                       (:POINTER
                                        (AUTOWRAP::STRUCT
                                         (_IO_WIDE_DATA :BIT-SIZE 0
                                          :BIT-ALIGNMENT 0)))
                                       :BIT-SIZE 64 :BIT-OFFSET 1280
                                       :BIT-ALIGNMENT 64)
                                      (:_FREERES_LIST
                                       (:POINTER (:STRUCT (_IO_FILE)))
                                       :BIT-SIZE 64 :BIT-OFFSET 1344
                                       :BIT-ALIGNMENT 64)
                                      (:_FREERES_BUF (:POINTER :VOID) :BIT-SIZE
                                       64 :BIT-OFFSET 1408 :BIT-ALIGNMENT 64)
                                      (:__PAD5 SIZE-T :BIT-SIZE 64 :BIT-OFFSET
                                       1472 :BIT-ALIGNMENT 64)
                                      (:_MODE :INT :BIT-SIZE 32 :BIT-OFFSET
                                       1536 :BIT-ALIGNMENT 32)
                                      (:_UNUSED2 (:ARRAY :CHAR 20) :BIT-SIZE
                                       160 :BIT-OFFSET 1568 :BIT-ALIGNMENT 8)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'VA-LIST '__BUILTIN_VA_LIST)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'FPOS-T '__FPOS_T)
    (AUTOWRAP:DEFINE-FOREIGN-EXTERN 'STDIN "stdin" '(:POINTER FILE))
    (AUTOWRAP:DEFINE-FOREIGN-EXTERN 'STDOUT "stdout" '(:POINTER FILE))
    (AUTOWRAP:DEFINE-FOREIGN-EXTERN 'STDERR "stderr" '(:POINTER FILE))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(REMOVE "remove") ':INT
                                      '((|__filename| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(RENAME "rename") ':INT
                                      '((|__old| (:STRING))
                                        (|__new| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(RENAMEAT "renameat") ':INT
                                      '((|__oldfd| :INT) (|__old| (:STRING))
                                        (|__newfd| :INT) (|__new| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FCLOSE "fclose") ':INT
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TMPFILE "tmpfile") '(:POINTER FILE)
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TMPNAM "tmpnam") '(:STRING)
                                      '((#:P8847 (:ARRAY :CHAR 20))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TMPNAM-R "tmpnam_r") '(:STRING)
                                      '((|__s| (:ARRAY :CHAR 20))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TEMPNAM "tempnam") '(:STRING)
                                      '((|__dir| (:STRING))
                                        (|__pfx| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FFLUSH "fflush") ':INT
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FFLUSH-UNLOCKED "fflush_unlocked")
                                      ':INT '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FOPEN "fopen") '(:POINTER FILE)
                                      '((|__filename| (:STRING))
                                        (|__modes| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FREOPEN "freopen") '(:POINTER FILE)
                                      '((|__filename| (:STRING))
                                        (|__modes| (:STRING))
                                        (|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FDOPEN "fdopen") '(:POINTER FILE)
                                      '((|__fd| :INT) (|__modes| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FMEMOPEN "fmemopen") '(:POINTER FILE)
                                      '((|__s| (:POINTER :VOID))
                                        (|__len| SIZE-T)
                                        (|__modes| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(OPEN-MEMSTREAM "open_memstream")
                                      '(:POINTER FILE)
                                      '((|__bufloc| (:POINTER (:STRING)))
                                        (|__sizeloc| (:POINTER SIZE-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SETBUF "setbuf") ':VOID
                                      '((|__stream| (:POINTER FILE))
                                        (|__buf| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SETVBUF "setvbuf") ':INT
                                      '((|__stream| (:POINTER FILE))
                                        (|__buf| (:STRING)) (|__modes| :INT)
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SETBUFFER "setbuffer") ':VOID
                                      '((|__stream| (:POINTER FILE))
                                        (|__buf| (:STRING)) (|__size| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SETLINEBUF "setlinebuf") ':VOID
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FPRINTF "fprintf" :VARIADIC-P T) ':INT
                                      '((|__stream| (:POINTER FILE))
                                        (|__format| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(PRINTF "printf" :VARIADIC-P T) ':INT
                                      '((|__format| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SPRINTF "sprintf" :VARIADIC-P T) ':INT
                                      '((|__s| (:STRING))
                                        (|__format| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VFPRINTF "vfprintf") ':INT
                                      '((|__s| (:POINTER FILE))
                                        (|__format| (:STRING))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VPRINTF "vprintf") ':INT
                                      '((|__format| (:STRING))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VSPRINTF "vsprintf") ':INT
                                      '((|__s| (:STRING))
                                        (|__format| (:STRING))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SNPRINTF "snprintf" :VARIADIC-P T)
                                      ':INT
                                      '((|__s| (:STRING)) (|__maxlen| SIZE-T)
                                        (|__format| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VSNPRINTF "vsnprintf") ':INT
                                      '((|__s| (:STRING)) (|__maxlen| SIZE-T)
                                        (|__format| (:STRING))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VDPRINTF "vdprintf") ':INT
                                      '((|__fd| :INT) (|__fmt| (:STRING))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(DPRINTF "dprintf" :VARIADIC-P T) ':INT
                                      '((|__fd| :INT) (|__fmt| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FSCANF "fscanf" :VARIADIC-P T) ':INT
                                      '((|__stream| (:POINTER FILE))
                                        (|__format| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SCANF "scanf" :VARIADIC-P T) ':INT
                                      '((|__format| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SSCANF "sscanf" :VARIADIC-P T) ':INT
                                      '((|__s| (:STRING))
                                        (|__format| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FSCANF "fscanf" :VARIADIC-P T) ':INT
                                      '((|__stream| (:POINTER FILE))
                                        (|__format| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SCANF "scanf" :VARIADIC-P T) ':INT
                                      '((|__format| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SSCANF "sscanf" :VARIADIC-P T) ':INT
                                      '((|__s| (:STRING))
                                        (|__format| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VFSCANF "vfscanf") ':INT
                                      '((|__s| (:POINTER FILE))
                                        (|__format| (:STRING))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VSCANF "vscanf") ':INT
                                      '((|__format| (:STRING))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VSSCANF "vsscanf") ':INT
                                      '((|__s| (:STRING))
                                        (|__format| (:STRING))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VFSCANF "vfscanf") ':INT
                                      '((|__s| (:POINTER FILE))
                                        (|__format| (:STRING))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VSCANF "vscanf") ':INT
                                      '((|__format| (:STRING))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VSSCANF "vsscanf") ':INT
                                      '((|__s| (:STRING))
                                        (|__format| (:STRING))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FGETC "fgetc") ':INT
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GETC "getc") ':INT
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GETCHAR "getchar") ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GETC-UNLOCKED "getc_unlocked") ':INT
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GETCHAR-UNLOCKED "getchar_unlocked")
                                      ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FGETC-UNLOCKED "fgetc_unlocked") ':INT
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FPUTC "fputc") ':INT
                                      '((|__c| :INT)
                                        (|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(PUTC "putc") ':INT
                                      '((|__c| :INT)
                                        (|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(PUTCHAR "putchar") ':INT
                                      '((|__c| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FPUTC-UNLOCKED "fputc_unlocked") ':INT
                                      '((|__c| :INT)
                                        (|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(PUTC-UNLOCKED "putc_unlocked") ':INT
                                      '((|__c| :INT)
                                        (|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(PUTCHAR-UNLOCKED "putchar_unlocked")
                                      ':INT '((|__c| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GETW "getw") ':INT
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(PUTW "putw") ':INT
                                      '((|__w| :INT)
                                        (|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FGETS "fgets") '(:STRING)
                                      '((|__s| (:STRING)) (|__n| :INT)
                                        (|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__GETDELIM "__getdelim") '__SSIZE_T
                                      '((|__lineptr| (:POINTER (:STRING)))
                                        (|__n| (:POINTER SIZE-T))
                                        (|__delimiter| :INT)
                                        (|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GETDELIM "getdelim") '__SSIZE_T
                                      '((|__lineptr| (:POINTER (:STRING)))
                                        (|__n| (:POINTER SIZE-T))
                                        (|__delimiter| :INT)
                                        (|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GETLINE "getline") '__SSIZE_T
                                      '((|__lineptr| (:POINTER (:STRING)))
                                        (|__n| (:POINTER SIZE-T))
                                        (|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FPUTS "fputs") ':INT
                                      '((|__s| (:STRING))
                                        (|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(PUTS "puts") ':INT
                                      '((|__s| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(UNGETC "ungetc") ':INT
                                      '((|__c| :INT)
                                        (|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FREAD "fread") ':UNSIGNED-LONG
                                      '((|__ptr| (:POINTER :VOID))
                                        (|__size| SIZE-T) (|__n| SIZE-T)
                                        (|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FWRITE "fwrite") ':UNSIGNED-LONG
                                      '((|__ptr| (:POINTER :VOID))
                                        (|__size| SIZE-T) (|__n| SIZE-T)
                                        (|__s| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FREAD-UNLOCKED "fread_unlocked")
                                      'SIZE-T
                                      '((|__ptr| (:POINTER :VOID))
                                        (|__size| SIZE-T) (|__n| SIZE-T)
                                        (|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FWRITE-UNLOCKED "fwrite_unlocked")
                                      'SIZE-T
                                      '((|__ptr| (:POINTER :VOID))
                                        (|__size| SIZE-T) (|__n| SIZE-T)
                                        (|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FSEEK "fseek") ':INT
                                      '((|__stream| (:POINTER FILE))
                                        (|__off| :LONG) (|__whence| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FTELL "ftell") ':LONG
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(REWIND "rewind") ':VOID
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FSEEKO "fseeko") ':INT
                                      '((|__stream| (:POINTER FILE))
                                        (|__off| __OFF_T) (|__whence| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FTELLO "ftello") '__OFF_T
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FGETPOS "fgetpos") ':INT
                                      '((|__stream| (:POINTER FILE))
                                        (|__pos| (:POINTER FPOS-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FSETPOS "fsetpos") ':INT
                                      '((|__stream| (:POINTER FILE))
                                        (|__pos| (:POINTER FPOS-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(CLEARERR "clearerr") ':VOID
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FEOF "feof") ':INT
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FERROR "ferror") ':INT
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(CLEARERR-UNLOCKED "clearerr_unlocked")
                                      ':VOID '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FEOF-UNLOCKED "feof_unlocked") ':INT
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FERROR-UNLOCKED "ferror_unlocked")
                                      ':INT '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(PERROR "perror") ':VOID
                                      '((|__s| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FILENO "fileno") ':INT
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FILENO-UNLOCKED "fileno_unlocked")
                                      ':INT '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(PCLOSE "pclose") ':INT
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(POPEN "popen") '(:POINTER FILE)
                                      '((|__command| (:STRING))
                                        (|__modes| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(CTERMID "ctermid") '(:STRING)
                                      '((|__s| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FLOCKFILE "flockfile") ':VOID
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FTRYLOCKFILE "ftrylockfile") ':INT
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FUNLOCKFILE "funlockfile") ':VOID
                                      '((|__stream| (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__UFLOW "__uflow") ':INT
                                      '((#:P8848 (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__OVERFLOW "__overflow") ':INT
                                      '((#:P8849 (:POINTER FILE))
                                        (#:P8850 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'WCHAR-T ':INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'DIV-T
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 33 :BIT-SIZE 64 :BIT-ALIGNMENT
                                      32)
                                     (:QUOT :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 32)
                                     (:REM :INT :BIT-SIZE 32 :BIT-OFFSET 32
                                      :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'LDIV-T
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 34 :BIT-SIZE 128 :BIT-ALIGNMENT
                                      64)
                                     (:QUOT :LONG :BIT-SIZE 64 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 64)
                                     (:REM :LONG :BIT-SIZE 64 :BIT-OFFSET 64
                                      :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'LLDIV-T
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 35 :BIT-SIZE 128 :BIT-ALIGNMENT
                                      64)
                                     (:QUOT :LONG-LONG :BIT-SIZE 64 :BIT-OFFSET
                                      0 :BIT-ALIGNMENT 64)
                                     (:REM :LONG-LONG :BIT-SIZE 64 :BIT-OFFSET
                                      64 :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(__CTYPE_GET_MB_CUR_MAX "__ctype_get_mb_cur_max") 'SIZE-T 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ATOF "atof") ':DOUBLE
                                      '((|__nptr| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ATOI "atoi") ':INT
                                      '((|__nptr| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ATOL "atol") ':LONG
                                      '((|__nptr| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ATOLL "atoll") ':LONG-LONG
                                      '((|__nptr| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRTOD "strtod") ':DOUBLE
                                      '((|__nptr| (:STRING))
                                        (|__endptr| (:POINTER (:STRING)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRTOF "strtof") ':FLOAT
                                      '((|__nptr| (:STRING))
                                        (|__endptr| (:POINTER (:STRING)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRTOLD "strtold")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__nptr| (:STRING))
                                        (|__endptr| (:POINTER (:STRING)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRTOL "strtol") ':LONG
                                      '((|__nptr| (:STRING))
                                        (|__endptr| (:POINTER (:STRING)))
                                        (|__base| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRTOUL "strtoul") ':UNSIGNED-LONG
                                      '((|__nptr| (:STRING))
                                        (|__endptr| (:POINTER (:STRING)))
                                        (|__base| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRTOQ "strtoq") ':LONG-LONG
                                      '((|__nptr| (:STRING))
                                        (|__endptr| (:POINTER (:STRING)))
                                        (|__base| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRTOUQ "strtouq") ':UNSIGNED-LONG-LONG
                                      '((|__nptr| (:STRING))
                                        (|__endptr| (:POINTER (:STRING)))
                                        (|__base| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRTOLL "strtoll") ':LONG-LONG
                                      '((|__nptr| (:STRING))
                                        (|__endptr| (:POINTER (:STRING)))
                                        (|__base| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRTOULL "strtoull")
                                      ':UNSIGNED-LONG-LONG
                                      '((|__nptr| (:STRING))
                                        (|__endptr| (:POINTER (:STRING)))
                                        (|__base| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(L64A "l64a") '(:STRING)
                                      '((|__n| :LONG)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(A64L "a64l") ':LONG
                                      '((|__s| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(RANDOM "random") ':LONG 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SRANDOM "srandom") ':VOID
                                      '((|__seed| :UNSIGNED-INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(INITSTATE "initstate") '(:STRING)
                                      '((|__seed| :UNSIGNED-INT)
                                        (|__statebuf| (:STRING))
                                        (|__statelen| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SETSTATE "setstate") '(:STRING)
                                      '((|__statebuf| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'RANDOM-DATA :STRUCT 384 64
                                    '((:FPTR (:POINTER INT32-T) :BIT-SIZE 64
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
                                      (:RPTR (:POINTER INT32-T) :BIT-SIZE 64
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 64)
                                      (:STATE (:POINTER INT32-T) :BIT-SIZE 64
                                       :BIT-OFFSET 128 :BIT-ALIGNMENT 64)
                                      (:RAND-TYPE :INT :BIT-SIZE 32 :BIT-OFFSET
                                       192 :BIT-ALIGNMENT 32)
                                      (:RAND-DEG :INT :BIT-SIZE 32 :BIT-OFFSET
                                       224 :BIT-ALIGNMENT 32)
                                      (:RAND-SEP :INT :BIT-SIZE 32 :BIT-OFFSET
                                       256 :BIT-ALIGNMENT 32)
                                      (:END-PTR (:POINTER INT32-T) :BIT-SIZE 64
                                       :BIT-OFFSET 320 :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(RANDOM-R "random_r") ':INT
                                      '((|__buf|
                                         (:POINTER (:STRUCT (RANDOM-DATA))))
                                        (|__result| (:POINTER INT32-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SRANDOM-R "srandom_r") ':INT
                                      '((|__seed| :UNSIGNED-INT)
                                        (|__buf|
                                         (:POINTER (:STRUCT (RANDOM-DATA))))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(INITSTATE-R "initstate_r") ':INT
                                      '((|__seed| :UNSIGNED-INT)
                                        (|__statebuf| (:STRING))
                                        (|__statelen| SIZE-T)
                                        (|__buf|
                                         (:POINTER (:STRUCT (RANDOM-DATA))))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SETSTATE-R "setstate_r") ':INT
                                      '((|__statebuf| (:STRING))
                                        (|__buf|
                                         (:POINTER (:STRUCT (RANDOM-DATA))))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(RAND "rand") ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SRAND "srand") ':VOID
                                      '((|__seed| :UNSIGNED-INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(RAND-R "rand_r") ':INT
                                      '((|__seed| (:POINTER :UNSIGNED-INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(DRAND48 "drand48") ':DOUBLE 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ERAND48 "erand48") ':DOUBLE
                                      '((|__xsubi|
                                         (:ARRAY :UNSIGNED-SHORT 3))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LRAND48 "lrand48") ':LONG 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(NRAND48 "nrand48") ':LONG
                                      '((|__xsubi|
                                         (:ARRAY :UNSIGNED-SHORT 3))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MRAND48 "mrand48") ':LONG 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(JRAND48 "jrand48") ':LONG
                                      '((|__xsubi|
                                         (:ARRAY :UNSIGNED-SHORT 3))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SRAND48 "srand48") ':VOID
                                      '((|__seedval| :LONG)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SEED48 "seed48")
                                      '(:POINTER :UNSIGNED-SHORT)
                                      '((|__seed16v|
                                         (:ARRAY :UNSIGNED-SHORT 3))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LCONG48 "lcong48") ':VOID
                                      '((|__param|
                                         (:ARRAY :UNSIGNED-SHORT 7))))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'DRAND48-DATA :STRUCT 192 64
                                    '((:__X (:ARRAY :UNSIGNED-SHORT 3)
                                       :BIT-SIZE 48 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 16)
                                      (:__OLD_X (:ARRAY :UNSIGNED-SHORT 3)
                                       :BIT-SIZE 48 :BIT-OFFSET 48
                                       :BIT-ALIGNMENT 16)
                                      (:__C :UNSIGNED-SHORT :BIT-SIZE 16
                                       :BIT-OFFSET 96 :BIT-ALIGNMENT 16)
                                      (:__INIT :UNSIGNED-SHORT :BIT-SIZE 16
                                       :BIT-OFFSET 112 :BIT-ALIGNMENT 16)
                                      (:__A :UNSIGNED-LONG-LONG :BIT-SIZE 64
                                       :BIT-OFFSET 128 :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(DRAND48-R "drand48_r") ':INT
                                      '((|__buffer|
                                         (:POINTER (:STRUCT (DRAND48-DATA))))
                                        (|__result| (:POINTER :DOUBLE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ERAND48-R "erand48_r") ':INT
                                      '((|__xsubi| (:ARRAY :UNSIGNED-SHORT 3))
                                        (|__buffer|
                                         (:POINTER (:STRUCT (DRAND48-DATA))))
                                        (|__result| (:POINTER :DOUBLE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LRAND48-R "lrand48_r") ':INT
                                      '((|__buffer|
                                         (:POINTER (:STRUCT (DRAND48-DATA))))
                                        (|__result| (:POINTER :LONG))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(NRAND48-R "nrand48_r") ':INT
                                      '((|__xsubi| (:ARRAY :UNSIGNED-SHORT 3))
                                        (|__buffer|
                                         (:POINTER (:STRUCT (DRAND48-DATA))))
                                        (|__result| (:POINTER :LONG))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MRAND48-R "mrand48_r") ':INT
                                      '((|__buffer|
                                         (:POINTER (:STRUCT (DRAND48-DATA))))
                                        (|__result| (:POINTER :LONG))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(JRAND48-R "jrand48_r") ':INT
                                      '((|__xsubi| (:ARRAY :UNSIGNED-SHORT 3))
                                        (|__buffer|
                                         (:POINTER (:STRUCT (DRAND48-DATA))))
                                        (|__result| (:POINTER :LONG))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SRAND48-R "srand48_r") ':INT
                                      '((|__seedval| :LONG)
                                        (|__buffer|
                                         (:POINTER (:STRUCT (DRAND48-DATA))))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SEED48-R "seed48_r") ':INT
                                      '((|__seed16v|
                                         (:ARRAY :UNSIGNED-SHORT 3))
                                        (|__buffer|
                                         (:POINTER (:STRUCT (DRAND48-DATA))))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LCONG48-R "lcong48_r") ':INT
                                      '((|__param| (:ARRAY :UNSIGNED-SHORT 7))
                                        (|__buffer|
                                         (:POINTER (:STRUCT (DRAND48-DATA))))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ARC4RANDOM "arc4random") '__UINT32_T
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ARC4RANDOM-BUF "arc4random_buf") ':VOID
                                      '((|__buf| (:POINTER :VOID))
                                        (|__size| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(ARC4RANDOM-UNIFORM "arc4random_uniform") '__UINT32_T
     '((|__upper_bound| __UINT32_T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MALLOC "malloc") '(:POINTER :VOID)
                                      '((|__size| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(CALLOC "calloc") '(:POINTER :VOID)
                                      '((|__nmemb| SIZE-T) (|__size| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(REALLOC "realloc") '(:POINTER :VOID)
                                      '((|__ptr| (:POINTER :VOID))
                                        (|__size| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FREE "free") ':VOID
                                      '((|__ptr| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(REALLOCARRAY "reallocarray")
                                      '(:POINTER :VOID)
                                      '((|__ptr| (:POINTER :VOID))
                                        (|__nmemb| SIZE-T) (|__size| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(REALLOCARRAY "reallocarray")
                                      '(:POINTER :VOID)
                                      '((|__ptr| (:POINTER :VOID))
                                        (|__nmemb| SIZE-T) (|__size| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ALLOCA "alloca") '(:POINTER :VOID)
                                      '((|__size| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VALLOC "valloc") '(:POINTER :VOID)
                                      '((|__size| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(POSIX-MEMALIGN "posix_memalign") ':INT
                                      '((|__memptr|
                                         (:POINTER (:POINTER :VOID)))
                                        (|__alignment| SIZE-T)
                                        (|__size| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ALIGNED-ALLOC "aligned_alloc")
                                      '(:POINTER :VOID)
                                      '((|__alignment| SIZE-T)
                                        (|__size| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ABORT "abort") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ATEXIT "atexit") ':INT
                                      '((|__func| (:POINTER (:VOID)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(AT-QUICK-EXIT "at_quick_exit") ':INT
                                      '((|__func| (:POINTER (:VOID)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ON-EXIT "on_exit") ':INT
                                      '((|__func| (:POINTER (:VOID)))
                                        (|__arg| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(EXIT "exit") ':VOID
                                      '((|__status| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(QUICK-EXIT "quick_exit") ':VOID
                                      '((|__status| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(_EXIT "_Exit") ':VOID
                                      '((|__status| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GETENV "getenv") '(:STRING)
                                      '((|__name| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(PUTENV "putenv") ':INT
                                      '((|__string| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SETENV "setenv") ':INT
                                      '((|__name| (:STRING))
                                        (|__value| (:STRING))
                                        (|__replace| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(UNSETENV "unsetenv") ':INT
                                      '((|__name| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(CLEARENV "clearenv") ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MKTEMP "mktemp") '(:STRING)
                                      '((|__template| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MKSTEMP "mkstemp") ':INT
                                      '((|__template| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MKSTEMPS "mkstemps") ':INT
                                      '((|__template| (:STRING))
                                        (|__suffixlen| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MKDTEMP "mkdtemp") '(:STRING)
                                      '((|__template| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SYSTEM "system") ':INT
                                      '((|__command| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(REALPATH "realpath") '(:STRING)
                                      '((|__name| (:STRING))
                                        (|__resolved| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__COMPAR_FN_T '(:POINTER (:VOID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(BSEARCH "bsearch") '(:POINTER :VOID)
                                      '((|__key| (:POINTER :VOID))
                                        (|__base| (:POINTER :VOID))
                                        (|__nmemb| SIZE-T) (|__size| SIZE-T)
                                        (|__compar| __COMPAR_FN_T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(QSORT "qsort") ':VOID
                                      '((|__base| (:POINTER :VOID))
                                        (|__nmemb| SIZE-T) (|__size| SIZE-T)
                                        (|__compar| __COMPAR_FN_T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ABS "abs") ':INT '((|__x| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LABS "labs") ':LONG '((|__x| :LONG)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LLABS "llabs") ':LONG-LONG
                                      '((|__x| :LONG-LONG)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(DIV "div") 'DIV-T
                                      '((|__numer| :INT) (|__denom| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LDIV "ldiv") 'LDIV-T
                                      '((|__numer| :LONG) (|__denom| :LONG)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LLDIV "lldiv") 'LLDIV-T
                                      '((|__numer| :LONG-LONG)
                                        (|__denom| :LONG-LONG)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ECVT "ecvt") '(:STRING)
                                      '((|__value| :DOUBLE) (|__ndigit| :INT)
                                        (|__decpt| (:POINTER :INT))
                                        (|__sign| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FCVT "fcvt") '(:STRING)
                                      '((|__value| :DOUBLE) (|__ndigit| :INT)
                                        (|__decpt| (:POINTER :INT))
                                        (|__sign| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GCVT "gcvt") '(:STRING)
                                      '((|__value| :DOUBLE) (|__ndigit| :INT)
                                        (|__buf| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(QECVT "qecvt") '(:STRING)
                                      '((|__value| AUTOWRAP::LONG-DOUBLE)
                                        (|__ndigit| :INT)
                                        (|__decpt| (:POINTER :INT))
                                        (|__sign| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(QFCVT "qfcvt") '(:STRING)
                                      '((|__value| AUTOWRAP::LONG-DOUBLE)
                                        (|__ndigit| :INT)
                                        (|__decpt| (:POINTER :INT))
                                        (|__sign| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(QGCVT "qgcvt") '(:STRING)
                                      '((|__value| AUTOWRAP::LONG-DOUBLE)
                                        (|__ndigit| :INT) (|__buf| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ECVT-R "ecvt_r") ':INT
                                      '((|__value| :DOUBLE) (|__ndigit| :INT)
                                        (|__decpt| (:POINTER :INT))
                                        (|__sign| (:POINTER :INT))
                                        (|__buf| (:STRING)) (|__len| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FCVT-R "fcvt_r") ':INT
                                      '((|__value| :DOUBLE) (|__ndigit| :INT)
                                        (|__decpt| (:POINTER :INT))
                                        (|__sign| (:POINTER :INT))
                                        (|__buf| (:STRING)) (|__len| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(QECVT-R "qecvt_r") ':INT
                                      '((|__value| AUTOWRAP::LONG-DOUBLE)
                                        (|__ndigit| :INT)
                                        (|__decpt| (:POINTER :INT))
                                        (|__sign| (:POINTER :INT))
                                        (|__buf| (:STRING)) (|__len| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(QFCVT-R "qfcvt_r") ':INT
                                      '((|__value| AUTOWRAP::LONG-DOUBLE)
                                        (|__ndigit| :INT)
                                        (|__decpt| (:POINTER :INT))
                                        (|__sign| (:POINTER :INT))
                                        (|__buf| (:STRING)) (|__len| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MBLEN "mblen") ':INT
                                      '((|__s| (:STRING)) (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MBTOWC "mbtowc") ':INT
                                      '((|__pwc| (:POINTER WCHAR-T))
                                        (|__s| (:STRING)) (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCTOMB "wctomb") ':INT
                                      '((|__s| (:STRING)) (|__wchar| WCHAR-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MBSTOWCS "mbstowcs") 'SIZE-T
                                      '((|__pwcs| (:POINTER WCHAR-T))
                                        (|__s| (:STRING)) (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSTOMBS "wcstombs") 'SIZE-T
                                      '((|__s| (:STRING))
                                        (|__pwcs| (:POINTER WCHAR-T))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(RPMATCH "rpmatch") ':INT
                                      '((|__response| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GETSUBOPT "getsubopt") ':INT
                                      '((|__optionp| (:POINTER (:STRING)))
                                        (|__tokens| (:POINTER (:STRING)))
                                        (|__valuep| (:POINTER (:STRING)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GETLOADAVG "getloadavg") ':INT
                                      '((|__loadavg| (:POINTER :DOUBLE))
                                        (|__nelem| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTRDIFF-T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'MAX-ALIGN-T
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 38 :BIT-SIZE 256 :BIT-ALIGNMENT
                                      128)
                                     (:__CLANG_MAX_ALIGN_NONCE1 :LONG-LONG
                                      :BIT-SIZE 64 :BIT-OFFSET 0 :BIT-ALIGNMENT
                                      64)
                                     (:__CLANG_MAX_ALIGN_NONCE2
                                      AUTOWRAP::LONG-DOUBLE :BIT-SIZE 128
                                      :BIT-OFFSET 128 :BIT-ALIGNMENT 128)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MEMCPY "memcpy") '(:POINTER :VOID)
                                      '((|__dest| (:POINTER :VOID))
                                        (|__src| (:POINTER :VOID))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MEMMOVE "memmove") '(:POINTER :VOID)
                                      '((|__dest| (:POINTER :VOID))
                                        (|__src| (:POINTER :VOID))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MEMCCPY "memccpy") '(:POINTER :VOID)
                                      '((|__dest| (:POINTER :VOID))
                                        (|__src| (:POINTER :VOID)) (|__c| :INT)
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MEMSET "memset") '(:POINTER :VOID)
                                      '((|__s| (:POINTER :VOID)) (|__c| :INT)
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MEMCMP "memcmp") ':INT
                                      '((|__s1| (:POINTER :VOID))
                                        (|__s2| (:POINTER :VOID))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__MEMCMPEQ "__memcmpeq") ':INT
                                      '((|__s1| (:POINTER :VOID))
                                        (|__s2| (:POINTER :VOID))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MEMCHR "memchr") '(:POINTER :VOID)
                                      '((|__s| (:POINTER :VOID)) (|__c| :INT)
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRCPY "strcpy") '(:STRING)
                                      '((|__dest| (:STRING))
                                        (|__src| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRNCPY "strncpy") '(:STRING)
                                      '((|__dest| (:STRING))
                                        (|__src| (:STRING)) (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRCAT "strcat") '(:STRING)
                                      '((|__dest| (:STRING))
                                        (|__src| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRNCAT "strncat") '(:STRING)
                                      '((|__dest| (:STRING))
                                        (|__src| (:STRING)) (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRCMP "strcmp") ':INT
                                      '((|__s1| (:STRING)) (|__s2| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRNCMP "strncmp") ':INT
                                      '((|__s1| (:STRING)) (|__s2| (:STRING))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRCOLL "strcoll") ':INT
                                      '((|__s1| (:STRING)) (|__s2| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRXFRM "strxfrm") ':UNSIGNED-LONG
                                      '((|__dest| (:STRING))
                                        (|__src| (:STRING)) (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '__LOCALE_STRUCT :STRUCT 1856 64
                                    '((:__LOCALES
                                       (:ARRAY
                                        (:POINTER
                                         (AUTOWRAP::STRUCT
                                          (__LOCALE_DATA :BIT-SIZE 0
                                           :BIT-ALIGNMENT 0)))
                                        13)
                                       :BIT-SIZE 832 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 64)
                                      (:__CTYPE_B (:POINTER :UNSIGNED-SHORT)
                                       :BIT-SIZE 64 :BIT-OFFSET 832
                                       :BIT-ALIGNMENT 64)
                                      (:__CTYPE_TOLOWER (:POINTER :INT)
                                       :BIT-SIZE 64 :BIT-OFFSET 896
                                       :BIT-ALIGNMENT 64)
                                      (:__CTYPE_TOUPPER (:POINTER :INT)
                                       :BIT-SIZE 64 :BIT-OFFSET 960
                                       :BIT-ALIGNMENT 64)
                                      (:__NAMES (:ARRAY (:STRING) 13) :BIT-SIZE
                                       832 :BIT-OFFSET 1024 :BIT-ALIGNMENT
                                       64)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '__LOCALE_DATA :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__LOCALE_T
                                   '(:POINTER (:STRUCT (__LOCALE_STRUCT))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'LOCALE-T '__LOCALE_T)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRCOLL-L "strcoll_l") ':INT
                                      '((|__s1| (:STRING)) (|__s2| (:STRING))
                                        (|__l| LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRXFRM-L "strxfrm_l") 'SIZE-T
                                      '((|__dest| (:STRING))
                                        (|__src| (:STRING)) (|__n| SIZE-T)
                                        (|__l| LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRDUP "strdup") '(:STRING)
                                      '((|__s| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRNDUP "strndup") '(:STRING)
                                      '((|__string| (:STRING)) (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRCHR "strchr") '(:STRING)
                                      '((|__s| (:STRING)) (|__c| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRRCHR "strrchr") '(:STRING)
                                      '((|__s| (:STRING)) (|__c| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRCSPN "strcspn") ':UNSIGNED-LONG
                                      '((|__s| (:STRING))
                                        (|__reject| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRSPN "strspn") ':UNSIGNED-LONG
                                      '((|__s| (:STRING))
                                        (|__accept| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRPBRK "strpbrk") '(:STRING)
                                      '((|__s| (:STRING))
                                        (|__accept| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRSTR "strstr") '(:STRING)
                                      '((|__haystack| (:STRING))
                                        (|__needle| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRTOK "strtok") '(:STRING)
                                      '((|__s| (:STRING))
                                        (|__delim| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__STRTOK_R "__strtok_r") '(:STRING)
                                      '((|__s| (:STRING)) (|__delim| (:STRING))
                                        (|__save_ptr| (:POINTER (:STRING)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRTOK-R "strtok_r") '(:STRING)
                                      '((|__s| (:STRING)) (|__delim| (:STRING))
                                        (|__save_ptr| (:POINTER (:STRING)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRLEN "strlen") ':UNSIGNED-LONG
                                      '((|__s| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRNLEN "strnlen") 'SIZE-T
                                      '((|__string| (:STRING))
                                        (|__maxlen| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRERROR "strerror") '(:STRING)
                                      '((|__errnum| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRERROR-R "strerror_r") ':INT
                                      '((|__errnum| :INT) (|__buf| (:STRING))
                                        (|__buflen| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRERROR-L "strerror_l") '(:STRING)
                                      '((|__errnum| :INT) (|__l| LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(BCMP "bcmp") ':INT
                                      '((|__s1| (:POINTER :VOID))
                                        (|__s2| (:POINTER :VOID))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(BCOPY "bcopy") ':VOID
                                      '((|__src| (:POINTER :VOID))
                                        (|__dest| (:POINTER :VOID))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(BZERO "bzero") ':VOID
                                      '((|__s| (:POINTER :VOID))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(INDEX "index") '(:STRING)
                                      '((|__s| (:STRING)) (|__c| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(RINDEX "rindex") '(:STRING)
                                      '((|__s| (:STRING)) (|__c| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FFS "ffs") ':INT '((|__i| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FFSL "ffsl") ':INT '((|__l| :LONG)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FFSLL "ffsll") ':INT
                                      '((|__ll| :LONG-LONG)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRCASECMP "strcasecmp") ':INT
                                      '((|__s1| (:STRING)) (|__s2| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRNCASECMP "strncasecmp") ':INT
                                      '((|__s1| (:STRING)) (|__s2| (:STRING))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRCASECMP-L "strcasecmp_l") ':INT
                                      '((|__s1| (:STRING)) (|__s2| (:STRING))
                                        (|__loc| LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRNCASECMP-L "strncasecmp_l") ':INT
                                      '((|__s1| (:STRING)) (|__s2| (:STRING))
                                        (|__n| SIZE-T) (|__loc| LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(EXPLICIT-BZERO "explicit_bzero") ':VOID
                                      '((|__s| (:POINTER :VOID))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRSEP "strsep") '(:STRING)
                                      '((|__stringp| (:POINTER (:STRING)))
                                        (|__delim| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRSIGNAL "strsignal") '(:STRING)
                                      '((|__sig| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__STPCPY "__stpcpy") '(:STRING)
                                      '((|__dest| (:STRING))
                                        (|__src| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STPCPY "stpcpy") '(:STRING)
                                      '((|__dest| (:STRING))
                                        (|__src| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__STPNCPY "__stpncpy") '(:STRING)
                                      '((|__dest| (:STRING))
                                        (|__src| (:STRING)) (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STPNCPY "stpncpy") '(:STRING)
                                      '((|__dest| (:STRING))
                                        (|__src| (:STRING)) (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'WINT-T ':UNSIGNED-INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'MBSTATE-T '__MBSTATE_T)
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'TM :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSCPY "wcscpy") '(:POINTER WCHAR-T)
                                      '((|__dest| (:POINTER WCHAR-T))
                                        (|__src| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSNCPY "wcsncpy") '(:POINTER WCHAR-T)
                                      '((|__dest| (:POINTER WCHAR-T))
                                        (|__src| (:POINTER WCHAR-T))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSCAT "wcscat") '(:POINTER WCHAR-T)
                                      '((|__dest| (:POINTER WCHAR-T))
                                        (|__src| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSNCAT "wcsncat") '(:POINTER WCHAR-T)
                                      '((|__dest| (:POINTER WCHAR-T))
                                        (|__src| (:POINTER WCHAR-T))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSCMP "wcscmp") ':INT
                                      '((|__s1| (:POINTER WCHAR-T))
                                        (|__s2| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSNCMP "wcsncmp") ':INT
                                      '((|__s1| (:POINTER WCHAR-T))
                                        (|__s2| (:POINTER WCHAR-T))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSCASECMP "wcscasecmp") ':INT
                                      '((|__s1| (:POINTER WCHAR-T))
                                        (|__s2| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSNCASECMP "wcsncasecmp") ':INT
                                      '((|__s1| (:POINTER WCHAR-T))
                                        (|__s2| (:POINTER WCHAR-T))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSCASECMP-L "wcscasecmp_l") ':INT
                                      '((|__s1| (:POINTER WCHAR-T))
                                        (|__s2| (:POINTER WCHAR-T))
                                        (|__loc| LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSNCASECMP-L "wcsncasecmp_l") ':INT
                                      '((|__s1| (:POINTER WCHAR-T))
                                        (|__s2| (:POINTER WCHAR-T))
                                        (|__n| SIZE-T) (|__loc| LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSCOLL "wcscoll") ':INT
                                      '((|__s1| (:POINTER WCHAR-T))
                                        (|__s2| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSXFRM "wcsxfrm") 'SIZE-T
                                      '((|__s1| (:POINTER WCHAR-T))
                                        (|__s2| (:POINTER WCHAR-T))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSCOLL-L "wcscoll_l") ':INT
                                      '((|__s1| (:POINTER WCHAR-T))
                                        (|__s2| (:POINTER WCHAR-T))
                                        (|__loc| LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSXFRM-L "wcsxfrm_l") 'SIZE-T
                                      '((|__s1| (:POINTER WCHAR-T))
                                        (|__s2| (:POINTER WCHAR-T))
                                        (|__n| SIZE-T) (|__loc| LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSDUP "wcsdup") '(:POINTER WCHAR-T)
                                      '((|__s| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSCHR "wcschr") '(:POINTER :INT)
                                      '((|__wcs| (:POINTER WCHAR-T))
                                        (|__wc| WCHAR-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSRCHR "wcsrchr") '(:POINTER WCHAR-T)
                                      '((|__wcs| (:POINTER WCHAR-T))
                                        (|__wc| WCHAR-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSCSPN "wcscspn") 'SIZE-T
                                      '((|__wcs| (:POINTER WCHAR-T))
                                        (|__reject| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSSPN "wcsspn") 'SIZE-T
                                      '((|__wcs| (:POINTER WCHAR-T))
                                        (|__accept| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSPBRK "wcspbrk") '(:POINTER WCHAR-T)
                                      '((|__wcs| (:POINTER WCHAR-T))
                                        (|__accept| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSSTR "wcsstr") '(:POINTER WCHAR-T)
                                      '((|__haystack| (:POINTER WCHAR-T))
                                        (|__needle| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSTOK "wcstok") '(:POINTER WCHAR-T)
                                      '((|__s| (:POINTER WCHAR-T))
                                        (|__delim| (:POINTER WCHAR-T))
                                        (|__ptr|
                                         (:POINTER (:POINTER WCHAR-T)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSLEN "wcslen") ':UNSIGNED-LONG
                                      '((|__s| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSNLEN "wcsnlen") 'SIZE-T
                                      '((|__s| (:POINTER WCHAR-T))
                                        (|__maxlen| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WMEMCHR "wmemchr") '(:POINTER :INT)
                                      '((|__s| (:POINTER WCHAR-T))
                                        (|__c| WCHAR-T) (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WMEMCMP "wmemcmp") ':INT
                                      '((|__s1| (:POINTER WCHAR-T))
                                        (|__s2| (:POINTER WCHAR-T))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WMEMCPY "wmemcpy") '(:POINTER :INT)
                                      '((|__s1| (:POINTER WCHAR-T))
                                        (|__s2| (:POINTER WCHAR-T))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WMEMMOVE "wmemmove") '(:POINTER :INT)
                                      '((|__s1| (:POINTER WCHAR-T))
                                        (|__s2| (:POINTER WCHAR-T))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WMEMSET "wmemset") '(:POINTER WCHAR-T)
                                      '((|__s| (:POINTER WCHAR-T))
                                        (|__c| WCHAR-T) (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(BTOWC "btowc") 'WINT-T '((|__c| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCTOB "wctob") ':INT '((|__c| WINT-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MBSINIT "mbsinit") ':INT
                                      '((|__ps| (:POINTER MBSTATE-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MBRTOWC "mbrtowc") 'SIZE-T
                                      '((|__pwc| (:POINTER WCHAR-T))
                                        (|__s| (:STRING)) (|__n| SIZE-T)
                                        (|__p| (:POINTER MBSTATE-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCRTOMB "wcrtomb") 'SIZE-T
                                      '((|__s| (:STRING)) (|__wc| WCHAR-T)
                                        (|__ps| (:POINTER MBSTATE-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__MBRLEN "__mbrlen") 'SIZE-T
                                      '((|__s| (:STRING)) (|__n| SIZE-T)
                                        (|__ps| (:POINTER MBSTATE-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MBRLEN "mbrlen") 'SIZE-T
                                      '((|__s| (:STRING)) (|__n| SIZE-T)
                                        (|__ps| (:POINTER MBSTATE-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MBSRTOWCS "mbsrtowcs") 'SIZE-T
                                      '((|__dst| (:POINTER WCHAR-T))
                                        (|__src| (:POINTER (:STRING)))
                                        (|__len| SIZE-T)
                                        (|__ps| (:POINTER MBSTATE-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSRTOMBS "wcsrtombs") 'SIZE-T
                                      '((|__dst| (:STRING))
                                        (|__src| (:POINTER (:POINTER WCHAR-T)))
                                        (|__len| SIZE-T)
                                        (|__ps| (:POINTER MBSTATE-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MBSNRTOWCS "mbsnrtowcs") 'SIZE-T
                                      '((|__dst| (:POINTER WCHAR-T))
                                        (|__src| (:POINTER (:STRING)))
                                        (|__nmc| SIZE-T) (|__len| SIZE-T)
                                        (|__ps| (:POINTER MBSTATE-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSNRTOMBS "wcsnrtombs") 'SIZE-T
                                      '((|__dst| (:STRING))
                                        (|__src| (:POINTER (:POINTER WCHAR-T)))
                                        (|__nwc| SIZE-T) (|__len| SIZE-T)
                                        (|__ps| (:POINTER MBSTATE-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSTOD "wcstod") ':DOUBLE
                                      '((|__nptr| (:POINTER WCHAR-T))
                                        (|__endptr|
                                         (:POINTER (:POINTER WCHAR-T)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSTOF "wcstof") ':FLOAT
                                      '((|__nptr| (:POINTER WCHAR-T))
                                        (|__endptr|
                                         (:POINTER (:POINTER WCHAR-T)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSTOLD "wcstold")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((|__nptr| (:POINTER WCHAR-T))
                                        (|__endptr|
                                         (:POINTER (:POINTER WCHAR-T)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSTOL "wcstol") ':LONG
                                      '((|__nptr| (:POINTER WCHAR-T))
                                        (|__endptr|
                                         (:POINTER (:POINTER WCHAR-T)))
                                        (|__base| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSTOUL "wcstoul") ':UNSIGNED-LONG
                                      '((|__nptr| (:POINTER WCHAR-T))
                                        (|__endptr|
                                         (:POINTER (:POINTER WCHAR-T)))
                                        (|__base| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSTOLL "wcstoll") ':LONG-LONG
                                      '((|__nptr| (:POINTER WCHAR-T))
                                        (|__endptr|
                                         (:POINTER (:POINTER WCHAR-T)))
                                        (|__base| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSTOULL "wcstoull")
                                      ':UNSIGNED-LONG-LONG
                                      '((|__nptr| (:POINTER WCHAR-T))
                                        (|__endptr|
                                         (:POINTER (:POINTER WCHAR-T)))
                                        (|__base| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCPCPY "wcpcpy") '(:POINTER WCHAR-T)
                                      '((|__dest| (:POINTER WCHAR-T))
                                        (|__src| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCPNCPY "wcpncpy") '(:POINTER WCHAR-T)
                                      '((|__dest| (:POINTER WCHAR-T))
                                        (|__src| (:POINTER WCHAR-T))
                                        (|__n| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(OPEN-WMEMSTREAM "open_wmemstream")
                                      '(:POINTER __FILE)
                                      '((|__bufloc|
                                         (:POINTER (:POINTER WCHAR-T)))
                                        (|__sizeloc| (:POINTER SIZE-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FWIDE "fwide") ':INT
                                      '((|__fp| (:POINTER __FILE))
                                        (|__mode| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FWPRINTF "fwprintf" :VARIADIC-P T)
                                      ':INT
                                      '((|__stream| (:POINTER __FILE))
                                        (|__format| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WPRINTF "wprintf" :VARIADIC-P T) ':INT
                                      '((|__format| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SWPRINTF "swprintf" :VARIADIC-P T)
                                      ':INT
                                      '((|__s| (:POINTER WCHAR-T))
                                        (|__n| SIZE-T)
                                        (|__format| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VFWPRINTF "vfwprintf") ':INT
                                      '((|__s| (:POINTER __FILE))
                                        (|__format| (:POINTER WCHAR-T))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VWPRINTF "vwprintf") ':INT
                                      '((|__format| (:POINTER WCHAR-T))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VSWPRINTF "vswprintf") ':INT
                                      '((|__s| (:POINTER WCHAR-T))
                                        (|__n| SIZE-T)
                                        (|__format| (:POINTER WCHAR-T))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FWSCANF "fwscanf" :VARIADIC-P T) ':INT
                                      '((|__stream| (:POINTER __FILE))
                                        (|__format| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WSCANF "wscanf" :VARIADIC-P T) ':INT
                                      '((|__format| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SWSCANF "swscanf" :VARIADIC-P T) ':INT
                                      '((|__s| (:POINTER WCHAR-T))
                                        (|__format| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FWSCANF "fwscanf" :VARIADIC-P T) ':INT
                                      '((|__stream| (:POINTER __FILE))
                                        (|__format| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WSCANF "wscanf" :VARIADIC-P T) ':INT
                                      '((|__format| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SWSCANF "swscanf" :VARIADIC-P T) ':INT
                                      '((|__s| (:POINTER WCHAR-T))
                                        (|__format| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VFWSCANF "vfwscanf") ':INT
                                      '((|__s| (:POINTER __FILE))
                                        (|__format| (:POINTER WCHAR-T))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VWSCANF "vwscanf") ':INT
                                      '((|__format| (:POINTER WCHAR-T))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VSWSCANF "vswscanf") ':INT
                                      '((|__s| (:POINTER WCHAR-T))
                                        (|__format| (:POINTER WCHAR-T))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VFWSCANF "vfwscanf") ':INT
                                      '((|__s| (:POINTER __FILE))
                                        (|__format| (:POINTER WCHAR-T))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VWSCANF "vwscanf") ':INT
                                      '((|__format| (:POINTER WCHAR-T))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VSWSCANF "vswscanf") ':INT
                                      '((|__s| (:POINTER WCHAR-T))
                                        (|__format| (:POINTER WCHAR-T))
                                        (|__arg| __GNUC_VA_LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FGETWC "fgetwc") 'WINT-T
                                      '((|__stream| (:POINTER __FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GETWC "getwc") 'WINT-T
                                      '((|__stream| (:POINTER __FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GETWCHAR "getwchar") 'WINT-T 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FPUTWC "fputwc") 'WINT-T
                                      '((|__wc| WCHAR-T)
                                        (|__stream| (:POINTER __FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(PUTWC "putwc") 'WINT-T
                                      '((|__wc| WCHAR-T)
                                        (|__stream| (:POINTER __FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(PUTWCHAR "putwchar") 'WINT-T
                                      '((|__wc| WCHAR-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FGETWS "fgetws") '(:POINTER WCHAR-T)
                                      '((|__ws| (:POINTER WCHAR-T))
                                        (|__n| :INT)
                                        (|__stream| (:POINTER __FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FPUTWS "fputws") ':INT
                                      '((|__ws| (:POINTER WCHAR-T))
                                        (|__stream| (:POINTER __FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(UNGETWC "ungetwc") 'WINT-T
                                      '((|__wc| WINT-T)
                                        (|__stream| (:POINTER __FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSFTIME "wcsftime") 'SIZE-T
                                      '((|__s| (:POINTER WCHAR-T))
                                        (|__maxsize| SIZE-T)
                                        (|__format| (:POINTER WCHAR-T))
                                        (|__tp|
                                         (:POINTER
                                          (AUTOWRAP::STRUCT
                                           (TM :BIT-SIZE 0 :BIT-ALIGNMENT
                                            0))))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINT8-T '__UINT8_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINT16-T '__UINT16_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINT32-T '__UINT32_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINT64-T '__UINT64_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'INT-LEAST8-T '__INT_LEAST8_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'INT-LEAST16-T '__INT_LEAST16_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'INT-LEAST32-T '__INT_LEAST32_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'INT-LEAST64-T '__INT_LEAST64_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINT-LEAST8-T '__UINT_LEAST8_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINT-LEAST16-T '__UINT_LEAST16_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINT-LEAST32-T '__UINT_LEAST32_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINT-LEAST64-T '__UINT_LEAST64_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'INT-FAST8-T ':CHAR)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'INT-FAST16-T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'INT-FAST32-T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'INT-FAST64-T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINT-FAST8-T ':UNSIGNED-CHAR)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINT-FAST16-T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINT-FAST32-T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINT-FAST64-T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'INTPTR-T ':LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINTPTR-T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'INTMAX-T '__INTMAX_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINTMAX-T '__UINTMAX_T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__GWCHAR_T ':INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'IMAXDIV-T
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 42 :BIT-SIZE 128 :BIT-ALIGNMENT
                                      64)
                                     (:QUOT :LONG :BIT-SIZE 64 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 64)
                                     (:REM :LONG :BIT-SIZE 64 :BIT-OFFSET 64
                                      :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(IMAXABS "imaxabs") 'INTMAX-T
                                      '((|__n| INTMAX-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(IMAXDIV "imaxdiv") 'IMAXDIV-T
                                      '((|__numer| INTMAX-T)
                                        (|__denom| INTMAX-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRTOIMAX "strtoimax") 'INTMAX-T
                                      '((|__nptr| (:STRING))
                                        (|__endptr| (:POINTER (:STRING)))
                                        (|__base| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRTOUMAX "strtoumax") 'UINTMAX-T
                                      '((|__nptr| (:STRING))
                                        (|__endptr| (:POINTER (:STRING)))
                                        (|__base| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSTOIMAX "wcstoimax") 'INTMAX-T
                                      '((|__nptr| (:POINTER __GWCHAR_T))
                                        (|__endptr|
                                         (:POINTER (:POINTER __GWCHAR_T)))
                                        (|__base| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(WCSTOUMAX "wcstoumax") 'UINTMAX-T
                                      '((|__nptr| (:POINTER __GWCHAR_T))
                                        (|__endptr|
                                         (:POINTER (:POINTER __GWCHAR_T)))
                                        (|__base| :INT)))
    (PROGN
     (DEFPARAMETER +_I_SUPPER+ 256)
     (DEFPARAMETER +_I_SLOWER+ 512)
     (DEFPARAMETER +_I_SALPHA+ 1024)
     (DEFPARAMETER +_I_SDIGIT+ 2048)
     (DEFPARAMETER +_I_SXDIGIT+ 4096)
     (DEFPARAMETER +_I_SSPACE+ 8192)
     (DEFPARAMETER +_I_SPRINT+ 16384)
     (DEFPARAMETER +_I_SGRAPH+ 32768)
     (DEFPARAMETER +_I_SBLANK+ 1)
     (DEFPARAMETER +_I_SCNTRL+ 2)
     (DEFPARAMETER +_I_SPUNCT+ 4)
     (DEFPARAMETER +_I_SALNUM+ 8)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8851 43
                                   '((:UPPER . 256) (:LOWER . 512)
                                     (:ALPHA . 1024) (:DIGIT . 2048)
                                     (:XDIGIT . 4096) (:SPACE . 8192)
                                     (:PRINT . 16384) (:GRAPH . 32768)
                                     (:BLANK . 1) (:CNTRL . 2) (:PUNCT . 4)
                                     (:ALNUM . 8))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__CTYPE_B_LOC "__ctype_b_loc")
                                      '(:POINTER (:POINTER :UNSIGNED-SHORT))
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(__CTYPE_TOLOWER_LOC "__ctype_tolower_loc")
     '(:POINTER (:POINTER __INT32_T)) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(__CTYPE_TOUPPER_LOC "__ctype_toupper_loc")
     '(:POINTER (:POINTER __INT32_T)) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISALNUM "isalnum") ':INT
                                      '((#:P8852 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISALPHA "isalpha") ':INT
                                      '((#:P8853 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISCNTRL "iscntrl") ':INT
                                      '((#:P8854 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISDIGIT "isdigit") ':INT
                                      '((#:P8855 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISLOWER "islower") ':INT
                                      '((#:P8856 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISGRAPH "isgraph") ':INT
                                      '((#:P8857 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISPRINT "isprint") ':INT
                                      '((#:P8858 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISPUNCT "ispunct") ':INT
                                      '((#:P8859 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISSPACE "isspace") ':INT
                                      '((#:P8860 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISUPPER "isupper") ':INT
                                      '((#:P8861 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISXDIGIT "isxdigit") ':INT
                                      '((#:P8862 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TOLOWER "tolower") ':INT
                                      '((|__c| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TOUPPER "toupper") ':INT
                                      '((|__c| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISBLANK "isblank") ':INT
                                      '((#:P8863 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISASCII "isascii") ':INT
                                      '((|__c| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TOASCII "toascii") ':INT
                                      '((|__c| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(_TOUPPER "_toupper") ':INT
                                      '((#:P8864 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(_TOLOWER "_tolower") ':INT
                                      '((#:P8865 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISALNUM-L "isalnum_l") ':INT
                                      '((#:P8866 :INT) (#:P8867 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISALPHA-L "isalpha_l") ':INT
                                      '((#:P8868 :INT) (#:P8869 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISCNTRL-L "iscntrl_l") ':INT
                                      '((#:P8870 :INT) (#:P8871 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISDIGIT-L "isdigit_l") ':INT
                                      '((#:P8872 :INT) (#:P8873 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISLOWER-L "islower_l") ':INT
                                      '((#:P8874 :INT) (#:P8875 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISGRAPH-L "isgraph_l") ':INT
                                      '((#:P8876 :INT) (#:P8877 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISPRINT-L "isprint_l") ':INT
                                      '((#:P8878 :INT) (#:P8879 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISPUNCT-L "ispunct_l") ':INT
                                      '((#:P8880 :INT) (#:P8881 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISSPACE-L "isspace_l") ':INT
                                      '((#:P8882 :INT) (#:P8883 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISUPPER-L "isupper_l") ':INT
                                      '((#:P8884 :INT) (#:P8885 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISXDIGIT-L "isxdigit_l") ':INT
                                      '((#:P8886 :INT) (#:P8887 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISBLANK-L "isblank_l") ':INT
                                      '((#:P8888 :INT) (#:P8889 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TOLOWER_L "__tolower_l") ':INT
                                      '((|__c| :INT) (|__l| LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TOLOWER-L "tolower_l") ':INT
                                      '((|__c| :INT) (|__l| LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TOUPPER_L "__toupper_l") ':INT
                                      '((|__c| :INT) (|__l| LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TOUPPER-L "toupper_l") ':INT
                                      '((|__c| :INT) (|__l| LOCALE-T)))
    (PROGN
     (DEFPARAMETER +SDL-FALSE+ 0)
     (DEFPARAMETER +SDL-TRUE+ 1)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8890 44
                                   '((:FALSE . 0) (:TRUE . 1))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-BOOL '(:ENUM (NIL :ID 44)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SINT8 'INT8-T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINT8 'UINT8-T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SINT16 'INT16-T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINT16 'UINT16-T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SINT32 'INT32-T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINT32 'UINT32-T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SINT64 'INT64-T)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'UINT64 'UINT64-T)
    (PROGN
     (DEFPARAMETER +DUMMY-ENUM-VALUE+ 0)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8891 45
                                   '((:DUMMY-ENUM-VALUE . 0))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-DUMMY-ENUM '(:ENUM (NIL :ID 45)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-MALLOC "SDL_malloc")
                                      '(:POINTER :VOID) '((|size| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-CALLOC "SDL_calloc")
                                      '(:POINTER :VOID)
                                      '((|nmemb| SIZE-T) (|size| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-REALLOC "SDL_realloc")
                                      '(:POINTER :VOID)
                                      '((|mem| (:POINTER :VOID))
                                        (|size| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FREE "SDL_free") ':VOID
                                      '((|mem| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-MALLOC-FUNC '(:POINTER (:VOID)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-CALLOC-FUNC '(:POINTER (:VOID)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-REALLOC-FUNC '(:POINTER (:VOID)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-FREE-FUNC '(:POINTER (:VOID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-ORIGINAL-MEMORY-FUNCTIONS "SDL_GetOriginalMemoryFunctions")
     ':VOID
     '((|malloc_func| (:POINTER SDL-MALLOC-FUNC))
       (|calloc_func| (:POINTER SDL-CALLOC-FUNC))
       (|realloc_func| (:POINTER SDL-REALLOC-FUNC))
       (|free_func| (:POINTER SDL-FREE-FUNC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-MEMORY-FUNCTIONS "SDL_GetMemoryFunctions") ':VOID
     '((|malloc_func| (:POINTER SDL-MALLOC-FUNC))
       (|calloc_func| (:POINTER SDL-CALLOC-FUNC))
       (|realloc_func| (:POINTER SDL-REALLOC-FUNC))
       (|free_func| (:POINTER SDL-FREE-FUNC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-MEMORY-FUNCTIONS "SDL_SetMemoryFunctions") ':INT
     '((|malloc_func| SDL-MALLOC-FUNC) (|calloc_func| SDL-CALLOC-FUNC)
       (|realloc_func| SDL-REALLOC-FUNC) (|free_func| SDL-FREE-FUNC)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-NUM-ALLOCATIONS "SDL_GetNumAllocations") ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GETENV "SDL_getenv") '(:STRING)
                                      '((|name| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SETENV "SDL_setenv") ':INT
                                      '((|name| (:STRING)) (|value| (:STRING))
                                        (|overwrite| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-QSORT "SDL_qsort") ':VOID
                                      '((|base| (:POINTER :VOID))
                                        (|nmemb| SIZE-T) (|size| SIZE-T)
                                        (|compare| (:POINTER (:VOID)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-BSEARCH "SDL_bsearch")
                                      '(:POINTER :VOID)
                                      '((|key| (:POINTER :VOID))
                                        (|base| (:POINTER :VOID))
                                        (|nmemb| SIZE-T) (|size| SIZE-T)
                                        (|compare| (:POINTER (:VOID)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ABS "SDL_abs") ':INT '((|x| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ISALPHA "SDL_isalpha") ':INT
                                      '((|x| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ISALNUM "SDL_isalnum") ':INT
                                      '((|x| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ISBLANK "SDL_isblank") ':INT
                                      '((|x| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ISCNTRL "SDL_iscntrl") ':INT
                                      '((|x| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ISDIGIT "SDL_isdigit") ':INT
                                      '((|x| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ISXDIGIT "SDL_isxdigit") ':INT
                                      '((|x| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ISPUNCT "SDL_ispunct") ':INT
                                      '((|x| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ISSPACE "SDL_isspace") ':INT
                                      '((|x| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ISUPPER "SDL_isupper") ':INT
                                      '((|x| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ISLOWER "SDL_islower") ':INT
                                      '((|x| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ISPRINT "SDL_isprint") ':INT
                                      '((|x| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ISGRAPH "SDL_isgraph") ':INT
                                      '((|x| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-TOUPPER "SDL_toupper") ':INT
                                      '((|x| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-TOLOWER "SDL_tolower") ':INT
                                      '((|x| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-CRC16 "SDL_crc16") 'UINT16
                                      '((|crc| UINT16)
                                        (|data| (:POINTER :VOID))
                                        (|len| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-CRC32 "SDL_crc32") 'UINT32
                                      '((|crc| UINT32)
                                        (|data| (:POINTER :VOID))
                                        (|len| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-MEMSET "SDL_memset")
                                      '(:POINTER :VOID)
                                      '((|dst| (:POINTER :VOID)) (|c| :INT)
                                        (|len| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-MEMCPY "SDL_memcpy")
                                      '(:POINTER :VOID)
                                      '((|dst| (:POINTER :VOID))
                                        (|src| (:POINTER :VOID))
                                        (|len| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-MEMMOVE "SDL_memmove")
                                      '(:POINTER :VOID)
                                      '((|dst| (:POINTER :VOID))
                                        (|src| (:POINTER :VOID))
                                        (|len| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-MEMCMP "SDL_memcmp") ':INT
                                      '((|s1| (:POINTER :VOID))
                                        (|s2| (:POINTER :VOID))
                                        (|len| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WCSLEN "SDL_wcslen") 'SIZE-T
                                      '((|wstr| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WCSLCPY "SDL_wcslcpy") 'SIZE-T
                                      '((|dst| (:POINTER WCHAR-T))
                                        (|src| (:POINTER WCHAR-T))
                                        (|maxlen| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WCSLCAT "SDL_wcslcat") 'SIZE-T
                                      '((|dst| (:POINTER WCHAR-T))
                                        (|src| (:POINTER WCHAR-T))
                                        (|maxlen| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WCSDUP "SDL_wcsdup")
                                      '(:POINTER WCHAR-T)
                                      '((|wstr| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WCSSTR "SDL_wcsstr")
                                      '(:POINTER WCHAR-T)
                                      '((|haystack| (:POINTER WCHAR-T))
                                        (|needle| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WCSCMP "SDL_wcscmp") ':INT
                                      '((|str1| (:POINTER WCHAR-T))
                                        (|str2| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WCSNCMP "SDL_wcsncmp") ':INT
                                      '((|str1| (:POINTER WCHAR-T))
                                        (|str2| (:POINTER WCHAR-T))
                                        (|maxlen| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WCSCASECMP "SDL_wcscasecmp") ':INT
                                      '((|str1| (:POINTER WCHAR-T))
                                        (|str2| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WCSNCASECMP "SDL_wcsncasecmp")
                                      ':INT
                                      '((|str1| (:POINTER WCHAR-T))
                                        (|str2| (:POINTER WCHAR-T))
                                        (|len| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRLEN "SDL_strlen") 'SIZE-T
                                      '((|str| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRLCPY "SDL_strlcpy") 'SIZE-T
                                      '((|dst| (:STRING)) (|src| (:STRING))
                                        (|maxlen| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-UTF8STRLCPY "SDL_utf8strlcpy")
                                      'SIZE-T
                                      '((|dst| (:STRING)) (|src| (:STRING))
                                        (|dst_bytes| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRLCAT "SDL_strlcat") 'SIZE-T
                                      '((|dst| (:STRING)) (|src| (:STRING))
                                        (|maxlen| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRDUP "SDL_strdup") '(:STRING)
                                      '((|str| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRREV "SDL_strrev") '(:STRING)
                                      '((|str| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRUPR "SDL_strupr") '(:STRING)
                                      '((|str| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRLWR "SDL_strlwr") '(:STRING)
                                      '((|str| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRCHR "SDL_strchr") '(:STRING)
                                      '((|str| (:STRING)) (|c| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRRCHR "SDL_strrchr") '(:STRING)
                                      '((|str| (:STRING)) (|c| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRSTR "SDL_strstr") '(:STRING)
                                      '((|haystack| (:STRING))
                                        (|needle| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRCASESTR "SDL_strcasestr")
                                      '(:STRING)
                                      '((|haystack| (:STRING))
                                        (|needle| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRTOKR "SDL_strtokr") '(:STRING)
                                      '((|s1| (:STRING)) (|s2| (:STRING))
                                        (|saveptr| (:POINTER (:STRING)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-UTF8STRLEN "SDL_utf8strlen")
                                      'SIZE-T '((|str| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-UTF8STRNLEN "SDL_utf8strnlen")
                                      'SIZE-T
                                      '((|str| (:STRING)) (|bytes| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ITOA "SDL_itoa") '(:STRING)
                                      '((|value| :INT) (|str| (:STRING))
                                        (|radix| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-UITOA "SDL_uitoa") '(:STRING)
                                      '((|value| :UNSIGNED-INT)
                                        (|str| (:STRING)) (|radix| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LTOA "SDL_ltoa") '(:STRING)
                                      '((|value| :LONG) (|str| (:STRING))
                                        (|radix| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ULTOA "SDL_ultoa") '(:STRING)
                                      '((|value| :UNSIGNED-LONG)
                                        (|str| (:STRING)) (|radix| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LLTOA "SDL_lltoa") '(:STRING)
                                      '((|value| SINT64) (|str| (:STRING))
                                        (|radix| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ULLTOA "SDL_ulltoa") '(:STRING)
                                      '((|value| UINT64) (|str| (:STRING))
                                        (|radix| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ATOI "SDL_atoi") ':INT
                                      '((|str| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ATOF "SDL_atof") ':DOUBLE
                                      '((|str| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRTOL "SDL_strtol") ':LONG
                                      '((|str| (:STRING))
                                        (|endp| (:POINTER (:STRING)))
                                        (|base| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRTOUL "SDL_strtoul")
                                      ':UNSIGNED-LONG
                                      '((|str| (:STRING))
                                        (|endp| (:POINTER (:STRING)))
                                        (|base| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRTOLL "SDL_strtoll") 'SINT64
                                      '((|str| (:STRING))
                                        (|endp| (:POINTER (:STRING)))
                                        (|base| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRTOULL "SDL_strtoull") 'UINT64
                                      '((|str| (:STRING))
                                        (|endp| (:POINTER (:STRING)))
                                        (|base| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRTOD "SDL_strtod") ':DOUBLE
                                      '((|str| (:STRING))
                                        (|endp| (:POINTER (:STRING)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRCMP "SDL_strcmp") ':INT
                                      '((|str1| (:STRING)) (|str2| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRNCMP "SDL_strncmp") ':INT
                                      '((|str1| (:STRING)) (|str2| (:STRING))
                                        (|maxlen| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRCASECMP "SDL_strcasecmp") ':INT
                                      '((|str1| (:STRING)) (|str2| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-STRNCASECMP "SDL_strncasecmp")
                                      ':INT
                                      '((|str1| (:STRING)) (|str2| (:STRING))
                                        (|len| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SSCANF "SDL_sscanf" :VARIADIC-P T)
                                      ':INT
                                      '((|text| (:STRING)) (|fmt| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-VSSCANF "SDL_vsscanf") ':INT
                                      '((|text| (:STRING)) (|fmt| (:STRING))
                                        (|ap| VA-LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SNPRINTF "SDL_snprintf" :VARIADIC-P T) ':INT
     '((|text| (:STRING)) (|maxlen| SIZE-T) (|fmt| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-VSNPRINTF "SDL_vsnprintf") ':INT
                                      '((|text| (:STRING)) (|maxlen| SIZE-T)
                                        (|fmt| (:STRING)) (|ap| VA-LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-ASPRINTF "SDL_asprintf" :VARIADIC-P T) ':INT
     '((|strp| (:POINTER (:STRING))) (|fmt| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-VASPRINTF "SDL_vasprintf") ':INT
                                      '((|strp| (:POINTER (:STRING)))
                                        (|fmt| (:STRING)) (|ap| VA-LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ACOS "SDL_acos") ':DOUBLE
                                      '((|x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ACOSF "SDL_acosf") ':FLOAT
                                      '((|x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ASIN "SDL_asin") ':DOUBLE
                                      '((|x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ASINF "SDL_asinf") ':FLOAT
                                      '((|x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ATAN "SDL_atan") ':DOUBLE
                                      '((|x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ATANF "SDL_atanf") ':FLOAT
                                      '((|x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ATAN2 "SDL_atan2") ':DOUBLE
                                      '((|y| :DOUBLE) (|x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ATAN2F "SDL_atan2f") ':FLOAT
                                      '((|y| :FLOAT) (|x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-CEIL "SDL_ceil") ':DOUBLE
                                      '((|x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-CEILF "SDL_ceilf") ':FLOAT
                                      '((|x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-COPYSIGN "SDL_copysign") ':DOUBLE
                                      '((|x| :DOUBLE) (|y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-COPYSIGNF "SDL_copysignf") ':FLOAT
                                      '((|x| :FLOAT) (|y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-COS "SDL_cos") ':DOUBLE
                                      '((|x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-COSF "SDL_cosf") ':FLOAT
                                      '((|x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-EXP "SDL_exp") ':DOUBLE
                                      '((|x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-EXPF "SDL_expf") ':FLOAT
                                      '((|x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FABS "SDL_fabs") ':DOUBLE
                                      '((|x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FABSF "SDL_fabsf") ':FLOAT
                                      '((|x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FLOOR "SDL_floor") ':DOUBLE
                                      '((|x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FLOORF "SDL_floorf") ':FLOAT
                                      '((|x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-TRUNC "SDL_trunc") ':DOUBLE
                                      '((|x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-TRUNCF "SDL_truncf") ':FLOAT
                                      '((|x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FMOD "SDL_fmod") ':DOUBLE
                                      '((|x| :DOUBLE) (|y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FMODF "SDL_fmodf") ':FLOAT
                                      '((|x| :FLOAT) (|y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOG "SDL_log") ':DOUBLE
                                      '((|x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOGF "SDL_logf") ':FLOAT
                                      '((|x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOG10 "SDL_log10") ':DOUBLE
                                      '((|x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOG10F "SDL_log10f") ':FLOAT
                                      '((|x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-POW "SDL_pow") ':DOUBLE
                                      '((|x| :DOUBLE) (|y| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-POWF "SDL_powf") ':FLOAT
                                      '((|x| :FLOAT) (|y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ROUND "SDL_round") ':DOUBLE
                                      '((|x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ROUNDF "SDL_roundf") ':FLOAT
                                      '((|x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LROUND "SDL_lround") ':LONG
                                      '((|x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LROUNDF "SDL_lroundf") ':LONG
                                      '((|x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SCALBN "SDL_scalbn") ':DOUBLE
                                      '((|x| :DOUBLE) (|n| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SCALBNF "SDL_scalbnf") ':FLOAT
                                      '((|x| :FLOAT) (|n| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SIN "SDL_sin") ':DOUBLE
                                      '((|x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SINF "SDL_sinf") ':FLOAT
                                      '((|x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SQRT "SDL_sqrt") ':DOUBLE
                                      '((|x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SQRTF "SDL_sqrtf") ':FLOAT
                                      '((|x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-TAN "SDL_tan") ':DOUBLE
                                      '((|x| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-TANF "SDL_tanf") ':FLOAT
                                      '((|x| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '_SDL_ICONV_T :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-ICONV-T
                                   '(:POINTER
                                     (AUTOWRAP::STRUCT
                                      (_SDL_ICONV_T :BIT-SIZE 0 :BIT-ALIGNMENT
                                       0))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ICONV-OPEN "SDL_iconv_open")
                                      'SDL-ICONV-T
                                      '((|tocode| (:STRING))
                                        (|fromcode| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ICONV-CLOSE "SDL_iconv_close")
                                      ':INT '((|cd| SDL-ICONV-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ICONV "SDL_iconv") 'SIZE-T
                                      '((|cd| SDL-ICONV-T)
                                        (|inbuf| (:POINTER (:STRING)))
                                        (|inbytesleft| (:POINTER SIZE-T))
                                        (|outbuf| (:POINTER (:STRING)))
                                        (|outbytesleft| (:POINTER SIZE-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ICONV-STRING "SDL_iconv_string")
                                      '(:STRING)
                                      '((|tocode| (:STRING))
                                        (|fromcode| (:STRING))
                                        (|inbuf| (:STRING))
                                        (|inbytesleft| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-MAIN-FUNC '(:POINTER (:VOID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-MAIN "SDL_main") ':INT
                                      '((|argc| :INT)
                                        (|argv| (:POINTER (:STRING)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SET-MAIN-READY "SDL_SetMainReady")
                                      ':VOID 'NIL)
    (PROGN
     (DEFPARAMETER +SDL-ASSERTION-RETRY+ 0)
     (DEFPARAMETER +SDL-ASSERTION-BREAK+ 1)
     (DEFPARAMETER +SDL-ASSERTION-ABORT+ 2)
     (DEFPARAMETER +SDL-ASSERTION-IGNORE+ 3)
     (DEFPARAMETER +SDL-ASSERTION-ALWAYS-IGNORE+ 4)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8892 47
                                   '((:RETRY . 0) (:BREAK . 1) (:ABORT . 2)
                                     (:IGNORE . 3) (:ALWAYS-IGNORE . 4))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-ASSERT-STATE '(:ENUM (NIL :ID 47)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-ASSERT-DATA :STRUCT 384 64
                                    '((:ALWAYS-IGNORE :INT :BIT-SIZE 32
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:TRIGGER-COUNT :UNSIGNED-INT :BIT-SIZE
                                       32 :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:CONDITION (:STRING) :BIT-SIZE 64
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 64)
                                      (:FILENAME (:STRING) :BIT-SIZE 64
                                       :BIT-OFFSET 128 :BIT-ALIGNMENT 64)
                                      (:LINENUM :INT :BIT-SIZE 32 :BIT-OFFSET
                                       192 :BIT-ALIGNMENT 32)
                                      (:FUNCTION (:STRING) :BIT-SIZE 64
                                       :BIT-OFFSET 256 :BIT-ALIGNMENT 64)
                                      (:NEXT
                                       (:POINTER (:STRUCT (SDL-ASSERT-DATA)))
                                       :BIT-SIZE 64 :BIT-OFFSET 320
                                       :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-ASSERT-DATA
                                   '(:STRUCT (SDL-ASSERT-DATA)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-REPORT-ASSERTION "SDL_ReportAssertion") 'SDL-ASSERT-STATE
     '((#:P8893 (:POINTER SDL-ASSERT-DATA)) (#:P8894 (:STRING))
       (#:P8895 (:STRING)) (#:P8896 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-ASSERTION-HANDLER '(:POINTER (:VOID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-ASSERTION-HANDLER "SDL_SetAssertionHandler") ':VOID
     '((|handler| SDL-ASSERTION-HANDLER) (|userdata| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-DEFAULT-ASSERTION-HANDLER "SDL_GetDefaultAssertionHandler")
     'SDL-ASSERTION-HANDLER 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-ASSERTION-HANDLER "SDL_GetAssertionHandler")
     'SDL-ASSERTION-HANDLER '((|puserdata| (:POINTER (:POINTER :VOID)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-ASSERTION-REPORT "SDL_GetAssertionReport")
     '(:POINTER SDL-ASSERT-DATA) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RESET-ASSERTION-REPORT "SDL_ResetAssertionReport") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-SPIN-LOCK ':INT)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-ATOMIC-TRY-LOCK "SDL_AtomicTryLock") 'SDL-BOOL
     '((|lock| (:POINTER SDL-SPIN-LOCK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ATOMIC-LOCK "SDL_AtomicLock")
                                      ':VOID
                                      '((|lock| (:POINTER SDL-SPIN-LOCK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ATOMIC-UNLOCK "SDL_AtomicUnlock")
                                      ':VOID
                                      '((|lock| (:POINTER SDL-SPIN-LOCK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-MEMORY-BARRIER-RELEASE-FUNCTION "SDL_MemoryBarrierReleaseFunction")
     ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-MEMORY-BARRIER-ACQUIRE-FUNCTION "SDL_MemoryBarrierAcquireFunction")
     ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-ATOMIC-T
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 49 :BIT-SIZE 32 :BIT-ALIGNMENT
                                      32)
                                     (:VALUE :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ATOMIC-CAS "SDL_AtomicCAS")
                                      'SDL-BOOL
                                      '((|a| (:POINTER SDL-ATOMIC-T))
                                        (|oldval| :INT) (|newval| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ATOMIC-SET "SDL_AtomicSet") ':INT
                                      '((|a| (:POINTER SDL-ATOMIC-T))
                                        (|v| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ATOMIC-GET "SDL_AtomicGet") ':INT
                                      '((|a| (:POINTER SDL-ATOMIC-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ATOMIC-ADD "SDL_AtomicAdd") ':INT
                                      '((|a| (:POINTER SDL-ATOMIC-T))
                                        (|v| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ATOMIC-CAS-PTR "SDL_AtomicCASPtr")
                                      'SDL-BOOL
                                      '((|a| (:POINTER (:POINTER :VOID)))
                                        (|oldval| (:POINTER :VOID))
                                        (|newval| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ATOMIC-SET-PTR "SDL_AtomicSetPtr")
                                      '(:POINTER :VOID)
                                      '((|a| (:POINTER (:POINTER :VOID)))
                                        (|v| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ATOMIC-GET-PTR "SDL_AtomicGetPtr")
                                      '(:POINTER :VOID)
                                      '((|a| (:POINTER (:POINTER :VOID)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-ERROR "SDL_SetError" :VARIADIC-P T) ':INT '((|fmt| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-ERROR "SDL_GetError")
                                      '(:STRING) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-ERROR-MSG "SDL_GetErrorMsg")
                                      '(:STRING)
                                      '((|errstr| (:STRING)) (|maxlen| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-CLEAR-ERROR "SDL_ClearError")
                                      ':VOID 'NIL)
    (PROGN
     (DEFPARAMETER +SDL-ENOMEM+ 0)
     (DEFPARAMETER +SDL-EFREAD+ 1)
     (DEFPARAMETER +SDL-EFWRITE+ 2)
     (DEFPARAMETER +SDL-EFSEEK+ 3)
     (DEFPARAMETER +SDL-UNSUPPORTED+ 4)
     (DEFPARAMETER +SDL-LASTERROR+ 5)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8897 50
                                   '((:ENOMEM . 0) (:EFREAD . 1) (:EFWRITE . 2)
                                     (:EFSEEK . 3) (:UNSUPPORTED . 4)
                                     (:LASTERROR . 5))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-ERRORCODE '(:ENUM (NIL :ID 50)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ERROR "SDL_Error") ':INT
                                      '((|code| SDL-ERRORCODE)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-MUTEX :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-MUTEX
                                   '(AUTOWRAP::STRUCT
                                     (SDL-MUTEX :BIT-SIZE 0 :BIT-ALIGNMENT 0)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-CREATE-MUTEX "SDL_CreateMutex")
                                      '(:POINTER SDL-MUTEX) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOCK-MUTEX "SDL_LockMutex") ':INT
                                      '((|mutex| (:POINTER SDL-MUTEX))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-TRY-LOCK-MUTEX "SDL_TryLockMutex")
                                      ':INT '((|mutex| (:POINTER SDL-MUTEX))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-UNLOCK-MUTEX "SDL_UnlockMutex")
                                      ':INT '((|mutex| (:POINTER SDL-MUTEX))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-DESTROY-MUTEX "SDL_DestroyMutex")
                                      ':VOID '((|mutex| (:POINTER SDL-MUTEX))))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-SEMAPHORE :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-SEM
                                   '(AUTOWRAP::STRUCT
                                     (SDL-SEMAPHORE :BIT-SIZE 0 :BIT-ALIGNMENT
                                      0)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CREATE-SEMAPHORE "SDL_CreateSemaphore") '(:POINTER SDL-SEM)
     '((|initial_value| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-DESTROY-SEMAPHORE "SDL_DestroySemaphore") ':VOID
     '((|sem| (:POINTER SDL-SEM))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SEM-WAIT "SDL_SemWait") ':INT
                                      '((|sem| (:POINTER SDL-SEM))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SEM-TRY-WAIT "SDL_SemTryWait")
                                      ':INT '((|sem| (:POINTER SDL-SEM))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SEM-WAIT-TIMEOUT "SDL_SemWaitTimeout") ':INT
     '((|sem| (:POINTER SDL-SEM)) (|timeout| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SEM-POST "SDL_SemPost") ':INT
                                      '((|sem| (:POINTER SDL-SEM))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SEM-VALUE "SDL_SemValue") 'UINT32
                                      '((|sem| (:POINTER SDL-SEM))))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-COND :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-COND
                                   '(AUTOWRAP::STRUCT
                                     (SDL-COND :BIT-SIZE 0 :BIT-ALIGNMENT 0)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-CREATE-COND "SDL_CreateCond")
                                      '(:POINTER SDL-COND) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-DESTROY-COND "SDL_DestroyCond")
                                      ':VOID '((|cond| (:POINTER SDL-COND))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-COND-SIGNAL "SDL_CondSignal") ':INT
                                      '((|cond| (:POINTER SDL-COND))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-COND-BROADCAST "SDL_CondBroadcast")
                                      ':INT '((|cond| (:POINTER SDL-COND))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-COND-WAIT "SDL_CondWait") ':INT
                                      '((|cond| (:POINTER SDL-COND))
                                        (|mutex| (:POINTER SDL-MUTEX))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-COND-WAIT-TIMEOUT "SDL_CondWaitTimeout") ':INT
     '((|cond| (:POINTER SDL-COND)) (|mutex| (:POINTER SDL-MUTEX))
       (|ms| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-THREAD :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-THREAD
                                   '(AUTOWRAP::STRUCT
                                     (SDL-THREAD :BIT-SIZE 0 :BIT-ALIGNMENT
                                      0)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-THREAD-ID ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-TLSID ':UNSIGNED-INT)
    (PROGN
     (DEFPARAMETER +SDL-THREAD-PRIORITY-LOW+ 0)
     (DEFPARAMETER +SDL-THREAD-PRIORITY-NORMAL+ 1)
     (DEFPARAMETER +SDL-THREAD-PRIORITY-HIGH+ 2)
     (DEFPARAMETER +SDL-THREAD-PRIORITY-TIME-CRITICAL+ 3)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8898 55
                                   '((:LOW . 0) (:NORMAL . 1) (:HIGH . 2)
                                     (:TIME-CRITICAL . 3))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-THREAD-PRIORITY '(:ENUM (NIL :ID 55)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-THREAD-FUNCTION '(:POINTER (:VOID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-CREATE-THREAD "SDL_CreateThread")
                                      '(:POINTER SDL-THREAD)
                                      '((|fn| SDL-THREAD-FUNCTION)
                                        (|name| (:STRING))
                                        (|data| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CREATE-THREAD-WITH-STACK-SIZE "SDL_CreateThreadWithStackSize")
     '(:POINTER SDL-THREAD)
     '((|fn| SDL-THREAD-FUNCTION) (|name| (:STRING)) (|stacksize| SIZE-T)
       (|data| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-THREAD-NAME "SDL_GetThreadName") '(:STRING)
     '((|thread| (:POINTER SDL-THREAD))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-THREAD-ID "SDL_ThreadID")
                                      'SDL-THREAD-ID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-THREAD-ID "SDL_GetThreadID")
                                      'SDL-THREAD-ID
                                      '((|thread| (:POINTER SDL-THREAD))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-THREAD-PRIORITY "SDL_SetThreadPriority") ':INT
     '((|priority| SDL-THREAD-PRIORITY)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WAIT-THREAD "SDL_WaitThread")
                                      ':VOID
                                      '((|thread| (:POINTER SDL-THREAD))
                                        (|status| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-DETACH-THREAD "SDL_DetachThread")
                                      ':VOID
                                      '((|thread| (:POINTER SDL-THREAD))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-TLS-CREATE "SDL_TLSCreate")
                                      'SDL-TLSID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-TLS-GET "SDL_TLSGet")
                                      '(:POINTER :VOID) '((|id| SDL-TLSID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-TLS-SET "SDL_TLSSet") ':INT
                                      '((|id| SDL-TLSID)
                                        (|value| (:POINTER :VOID))
                                        (|destructor| (:POINTER (:VOID)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-TLS-CLEANUP "SDL_TLSCleanup")
                                      ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-R-WOPS :STRUCT 576 64
                                    '((:SIZE (:POINTER (:VOID)) :BIT-SIZE 64
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
                                      (:SEEK (:POINTER (:VOID)) :BIT-SIZE 64
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 64)
                                      (:READ (:POINTER (:VOID)) :BIT-SIZE 64
                                       :BIT-OFFSET 128 :BIT-ALIGNMENT 64)
                                      (:WRITE (:POINTER (:VOID)) :BIT-SIZE 64
                                       :BIT-OFFSET 192 :BIT-ALIGNMENT 64)
                                      (:CLOSE (:POINTER (:VOID)) :BIT-SIZE 64
                                       :BIT-OFFSET 256 :BIT-ALIGNMENT 64)
                                      (:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       320 :BIT-ALIGNMENT 32)
                                      (:HIDDEN
                                       (UNION
                                        (NIL :ID 56 :BIT-SIZE 192
                                         :BIT-ALIGNMENT 64)
                                        (:STDIO
                                         (AUTOWRAP::STRUCT
                                          (NIL :ID 57 :BIT-SIZE 128
                                           :BIT-ALIGNMENT 64)
                                          (:AUTOCLOSE SDL-BOOL :BIT-SIZE 32
                                           :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                          (:FP (:POINTER FILE) :BIT-SIZE 64
                                           :BIT-OFFSET 64 :BIT-ALIGNMENT 64))
                                         :BIT-SIZE 128 :BIT-OFFSET 0
                                         :BIT-ALIGNMENT 64)
                                        (:MEM
                                         (AUTOWRAP::STRUCT
                                          (NIL :ID 58 :BIT-SIZE 192
                                           :BIT-ALIGNMENT 64)
                                          (:BASE (:POINTER UINT8) :BIT-SIZE 64
                                           :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
                                          (:HERE (:POINTER UINT8) :BIT-SIZE 64
                                           :BIT-OFFSET 64 :BIT-ALIGNMENT 64)
                                          (:STOP (:POINTER UINT8) :BIT-SIZE 64
                                           :BIT-OFFSET 128 :BIT-ALIGNMENT 64))
                                         :BIT-SIZE 192 :BIT-OFFSET 0
                                         :BIT-ALIGNMENT 64)
                                        (:UNKNOWN
                                         (AUTOWRAP::STRUCT
                                          (NIL :ID 59 :BIT-SIZE 128
                                           :BIT-ALIGNMENT 64)
                                          (:DATA1 (:POINTER :VOID) :BIT-SIZE 64
                                           :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
                                          (:DATA2 (:POINTER :VOID) :BIT-SIZE 64
                                           :BIT-OFFSET 64 :BIT-ALIGNMENT 64))
                                         :BIT-SIZE 128 :BIT-OFFSET 0
                                         :BIT-ALIGNMENT 64))
                                       :BIT-SIZE 192 :BIT-OFFSET 384
                                       :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-R-WOPS '(:STRUCT (SDL-R-WOPS)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-RW-FROM-FILE "SDL_RWFromFile")
                                      '(:POINTER SDL-R-WOPS)
                                      '((|file| (:STRING)) (|mode| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-RW-FROM-FP "SDL_RWFromFP")
                                      '(:POINTER SDL-R-WOPS)
                                      '((|fp| (:POINTER FILE))
                                        (|autoclose| SDL-BOOL)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-RW-FROM-MEM "SDL_RWFromMem")
                                      '(:POINTER SDL-R-WOPS)
                                      '((|mem| (:POINTER :VOID))
                                        (|size| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RW-FROM-CONST-MEM "SDL_RWFromConstMem") '(:POINTER SDL-R-WOPS)
     '((|mem| (:POINTER :VOID)) (|size| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ALLOC-RW "SDL_AllocRW")
                                      '(:POINTER SDL-R-WOPS) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FREE-RW "SDL_FreeRW") ':VOID
                                      '((|area| (:POINTER SDL-R-WOPS))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-R-WSIZE "SDL_RWsize") 'SINT64
                                      '((|context| (:POINTER SDL-R-WOPS))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-R-WSEEK "SDL_RWseek") 'SINT64
                                      '((|context| (:POINTER SDL-R-WOPS))
                                        (|offset| SINT64) (|whence| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-R-WTELL "SDL_RWtell") 'SINT64
                                      '((|context| (:POINTER SDL-R-WOPS))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-R-WREAD "SDL_RWread") 'SIZE-T
                                      '((|context| (:POINTER SDL-R-WOPS))
                                        (|ptr| (:POINTER :VOID))
                                        (|size| SIZE-T) (|maxnum| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-R-WWRITE "SDL_RWwrite") 'SIZE-T
                                      '((|context| (:POINTER SDL-R-WOPS))
                                        (|ptr| (:POINTER :VOID))
                                        (|size| SIZE-T) (|num| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-R-WCLOSE "SDL_RWclose") ':INT
                                      '((|context| (:POINTER SDL-R-WOPS))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOAD-FILE-RW "SDL_LoadFile_RW")
                                      '(:POINTER :VOID)
                                      '((|src| (:POINTER SDL-R-WOPS))
                                        (|datasize| (:POINTER SIZE-T))
                                        (|freesrc| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOAD-FILE "SDL_LoadFile")
                                      '(:POINTER :VOID)
                                      '((|file| (:STRING))
                                        (|datasize| (:POINTER SIZE-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-READ-U8 "SDL_ReadU8") 'UINT8
                                      '((|src| (:POINTER SDL-R-WOPS))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-READ-LE16 "SDL_ReadLE16") 'UINT16
                                      '((|src| (:POINTER SDL-R-WOPS))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-READ-BE16 "SDL_ReadBE16") 'UINT16
                                      '((|src| (:POINTER SDL-R-WOPS))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-READ-LE32 "SDL_ReadLE32") 'UINT32
                                      '((|src| (:POINTER SDL-R-WOPS))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-READ-BE32 "SDL_ReadBE32") 'UINT32
                                      '((|src| (:POINTER SDL-R-WOPS))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-READ-LE64 "SDL_ReadLE64") 'UINT64
                                      '((|src| (:POINTER SDL-R-WOPS))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-READ-BE64 "SDL_ReadBE64") 'UINT64
                                      '((|src| (:POINTER SDL-R-WOPS))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WRITE-U8 "SDL_WriteU8") 'SIZE-T
                                      '((|dst| (:POINTER SDL-R-WOPS))
                                        (|value| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WRITE-LE16 "SDL_WriteLE16") 'SIZE-T
                                      '((|dst| (:POINTER SDL-R-WOPS))
                                        (|value| UINT16)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WRITE-BE16 "SDL_WriteBE16") 'SIZE-T
                                      '((|dst| (:POINTER SDL-R-WOPS))
                                        (|value| UINT16)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WRITE-LE32 "SDL_WriteLE32") 'SIZE-T
                                      '((|dst| (:POINTER SDL-R-WOPS))
                                        (|value| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WRITE-BE32 "SDL_WriteBE32") 'SIZE-T
                                      '((|dst| (:POINTER SDL-R-WOPS))
                                        (|value| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WRITE-LE64 "SDL_WriteLE64") 'SIZE-T
                                      '((|dst| (:POINTER SDL-R-WOPS))
                                        (|value| UINT64)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WRITE-BE64 "SDL_WriteBE64") 'SIZE-T
                                      '((|dst| (:POINTER SDL-R-WOPS))
                                        (|value| UINT64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-AUDIO-FORMAT 'UINT16)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-AUDIO-CALLBACK '(:POINTER (:VOID)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-AUDIO-SPEC :STRUCT 256 64
                                    '((:FREQ :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:FORMAT SDL-AUDIO-FORMAT :BIT-SIZE 16
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 16)
                                      (:CHANNELS UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       48 :BIT-ALIGNMENT 8)
                                      (:SILENCE UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       56 :BIT-ALIGNMENT 8)
                                      (:SAMPLES UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       64 :BIT-ALIGNMENT 16)
                                      (:PADDING UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       80 :BIT-ALIGNMENT 16)
                                      (:SIZE UINT32 :BIT-SIZE 32 :BIT-OFFSET 96
                                       :BIT-ALIGNMENT 32)
                                      (:CALLBACK SDL-AUDIO-CALLBACK :BIT-SIZE
                                       64 :BIT-OFFSET 128 :BIT-ALIGNMENT 64)
                                      (:USERDATA (:POINTER :VOID) :BIT-SIZE 64
                                       :BIT-OFFSET 192 :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-AUDIO-SPEC '(:STRUCT (SDL-AUDIO-SPEC)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-AUDIO-CVT :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-AUDIO-FILTER '(:POINTER (:VOID)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-AUDIO-CVT :STRUCT 1088 64
                                    '((:NEEDED :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:SRC-FORMAT SDL-AUDIO-FORMAT :BIT-SIZE
                                       16 :BIT-OFFSET 32 :BIT-ALIGNMENT 16)
                                      (:DST-FORMAT SDL-AUDIO-FORMAT :BIT-SIZE
                                       16 :BIT-OFFSET 48 :BIT-ALIGNMENT 16)
                                      (:RATE-INCR :DOUBLE :BIT-SIZE 64
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 64)
                                      (:BUF (:POINTER UINT8) :BIT-SIZE 64
                                       :BIT-OFFSET 128 :BIT-ALIGNMENT 64)
                                      (:LEN :INT :BIT-SIZE 32 :BIT-OFFSET 192
                                       :BIT-ALIGNMENT 32)
                                      (:LEN-CVT :INT :BIT-SIZE 32 :BIT-OFFSET
                                       224 :BIT-ALIGNMENT 32)
                                      (:LEN-MULT :INT :BIT-SIZE 32 :BIT-OFFSET
                                       256 :BIT-ALIGNMENT 32)
                                      (:LEN-RATIO :DOUBLE :BIT-SIZE 64
                                       :BIT-OFFSET 320 :BIT-ALIGNMENT 64)
                                      (:FILTERS (:ARRAY SDL-AUDIO-FILTER 10)
                                       :BIT-SIZE 640 :BIT-OFFSET 384
                                       :BIT-ALIGNMENT 64)
                                      (:FILTER-INDEX :INT :BIT-SIZE 32
                                       :BIT-OFFSET 1024 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-AUDIO-CVT '(:STRUCT (SDL-AUDIO-CVT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-NUM-AUDIO-DRIVERS "SDL_GetNumAudioDrivers") ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-AUDIO-DRIVER "SDL_GetAudioDriver") '(:STRING) '((|index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-AUDIO-INIT "SDL_AudioInit") ':INT
                                      '((|driver_name| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-AUDIO-QUIT "SDL_AudioQuit") ':VOID
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-CURRENT-AUDIO-DRIVER "SDL_GetCurrentAudioDriver") '(:STRING)
     'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-OPEN-AUDIO "SDL_OpenAudio") ':INT
                                      '((|desired| (:POINTER SDL-AUDIO-SPEC))
                                        (|obtained|
                                         (:POINTER SDL-AUDIO-SPEC))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-AUDIO-DEVICE-ID 'UINT32)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-NUM-AUDIO-DEVICES "SDL_GetNumAudioDevices") ':INT
     '((|iscapture| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-AUDIO-DEVICE-NAME "SDL_GetAudioDeviceName") '(:STRING)
     '((|index| :INT) (|iscapture| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-AUDIO-DEVICE-SPEC "SDL_GetAudioDeviceSpec") ':INT
     '((|index| :INT) (|iscapture| :INT) (|spec| (:POINTER SDL-AUDIO-SPEC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-DEFAULT-AUDIO-INFO "SDL_GetDefaultAudioInfo") ':INT
     '((|name| (:POINTER (:STRING))) (|spec| (:POINTER SDL-AUDIO-SPEC))
       (|iscapture| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-OPEN-AUDIO-DEVICE "SDL_OpenAudioDevice") 'SDL-AUDIO-DEVICE-ID
     '((|device| (:STRING)) (|iscapture| :INT)
       (|desired| (:POINTER SDL-AUDIO-SPEC))
       (|obtained| (:POINTER SDL-AUDIO-SPEC)) (|allowed_changes| :INT)))
    (PROGN
     (DEFPARAMETER +SDL-AUDIO-STOPPED+ 0)
     (DEFPARAMETER +SDL-AUDIO-PLAYING+ 1)
     (DEFPARAMETER +SDL-AUDIO-PAUSED+ 2)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8899 63
                                   '((:STOPPED . 0) (:PLAYING . 1)
                                     (:PAUSED . 2))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-AUDIO-STATUS '(:ENUM (NIL :ID 63)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-AUDIO-STATUS "SDL_GetAudioStatus") 'SDL-AUDIO-STATUS 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-AUDIO-DEVICE-STATUS "SDL_GetAudioDeviceStatus")
     'SDL-AUDIO-STATUS '((|dev| SDL-AUDIO-DEVICE-ID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-PAUSE-AUDIO "SDL_PauseAudio")
                                      ':VOID '((|pause_on| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-PAUSE-AUDIO-DEVICE "SDL_PauseAudioDevice") ':VOID
     '((|dev| SDL-AUDIO-DEVICE-ID) (|pause_on| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOAD-WAV-RW "SDL_LoadWAV_RW")
                                      '(:POINTER SDL-AUDIO-SPEC)
                                      '((|src| (:POINTER SDL-R-WOPS))
                                        (|freesrc| :INT)
                                        (|spec| (:POINTER SDL-AUDIO-SPEC))
                                        (|audio_buf|
                                         (:POINTER (:POINTER UINT8)))
                                        (|audio_len| (:POINTER UINT32))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FREE-WAV "SDL_FreeWAV") ':VOID
                                      '((|audio_buf| (:POINTER UINT8))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-BUILD-AUDIO-CVT "SDL_BuildAudioCVT") ':INT
     '((|cvt| (:POINTER SDL-AUDIO-CVT)) (|src_format| SDL-AUDIO-FORMAT)
       (|src_channels| UINT8) (|src_rate| :INT) (|dst_format| SDL-AUDIO-FORMAT)
       (|dst_channels| UINT8) (|dst_rate| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-CONVERT-AUDIO "SDL_ConvertAudio")
                                      ':INT
                                      '((|cvt| (:POINTER SDL-AUDIO-CVT))))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '_SDL_AUDIO_STREAM :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-AUDIO-STREAM
                                   '(AUTOWRAP::STRUCT
                                     (_SDL_AUDIO_STREAM :BIT-SIZE 0
                                      :BIT-ALIGNMENT 0)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-NEW-AUDIO-STREAM "SDL_NewAudioStream") '(:POINTER SDL-AUDIO-STREAM)
     '((|src_format| SDL-AUDIO-FORMAT) (|src_channels| UINT8) (|src_rate| :INT)
       (|dst_format| SDL-AUDIO-FORMAT) (|dst_channels| UINT8)
       (|dst_rate| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-AUDIO-STREAM-PUT "SDL_AudioStreamPut") ':INT
     '((|stream| (:POINTER SDL-AUDIO-STREAM)) (|buf| (:POINTER :VOID))
       (|len| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-AUDIO-STREAM-GET "SDL_AudioStreamGet") ':INT
     '((|stream| (:POINTER SDL-AUDIO-STREAM)) (|buf| (:POINTER :VOID))
       (|len| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-AUDIO-STREAM-AVAILABLE "SDL_AudioStreamAvailable") ':INT
     '((|stream| (:POINTER SDL-AUDIO-STREAM))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-AUDIO-STREAM-FLUSH "SDL_AudioStreamFlush") ':INT
     '((|stream| (:POINTER SDL-AUDIO-STREAM))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-AUDIO-STREAM-CLEAR "SDL_AudioStreamClear") ':VOID
     '((|stream| (:POINTER SDL-AUDIO-STREAM))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-FREE-AUDIO-STREAM "SDL_FreeAudioStream") ':VOID
     '((|stream| (:POINTER SDL-AUDIO-STREAM))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-MIX-AUDIO "SDL_MixAudio") ':VOID
                                      '((|dst| (:POINTER UINT8))
                                        (|src| (:POINTER UINT8)) (|len| UINT32)
                                        (|volume| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-MIX-AUDIO-FORMAT "SDL_MixAudioFormat") ':VOID
     '((|dst| (:POINTER UINT8)) (|src| (:POINTER UINT8))
       (|format| SDL-AUDIO-FORMAT) (|len| UINT32) (|volume| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-QUEUE-AUDIO "SDL_QueueAudio") ':INT
                                      '((|dev| SDL-AUDIO-DEVICE-ID)
                                        (|data| (:POINTER :VOID))
                                        (|len| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-DEQUEUE-AUDIO "SDL_DequeueAudio")
                                      'UINT32
                                      '((|dev| SDL-AUDIO-DEVICE-ID)
                                        (|data| (:POINTER :VOID))
                                        (|len| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-QUEUED-AUDIO-SIZE "SDL_GetQueuedAudioSize") 'UINT32
     '((|dev| SDL-AUDIO-DEVICE-ID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CLEAR-QUEUED-AUDIO "SDL_ClearQueuedAudio") ':VOID
     '((|dev| SDL-AUDIO-DEVICE-ID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOCK-AUDIO "SDL_LockAudio") ':VOID
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LOCK-AUDIO-DEVICE "SDL_LockAudioDevice") ':VOID
     '((|dev| SDL-AUDIO-DEVICE-ID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-UNLOCK-AUDIO "SDL_UnlockAudio")
                                      ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-UNLOCK-AUDIO-DEVICE "SDL_UnlockAudioDevice") ':VOID
     '((|dev| SDL-AUDIO-DEVICE-ID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-CLOSE-AUDIO "SDL_CloseAudio")
                                      ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CLOSE-AUDIO-DEVICE "SDL_CloseAudioDevice") ':VOID
     '((|dev| SDL-AUDIO-DEVICE-ID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-CLIPBOARD-TEXT "SDL_SetClipboardText") ':INT
     '((|text| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-CLIPBOARD-TEXT "SDL_GetClipboardText") '(:STRING) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAS-CLIPBOARD-TEXT "SDL_HasClipboardText") 'SDL-BOOL 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-PRIMARY-SELECTION-TEXT "SDL_SetPrimarySelectionText") ':INT
     '((|text| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-PRIMARY-SELECTION-TEXT "SDL_GetPrimarySelectionText") '(:STRING)
     'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAS-PRIMARY-SELECTION-TEXT "SDL_HasPrimarySelectionText") 'SDL-BOOL
     'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '__UINTR_FRAME :STRUCT 192 64
                                    '((:RIP :UNSIGNED-LONG-LONG :BIT-SIZE 64
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
                                      (:RFLAGS :UNSIGNED-LONG-LONG :BIT-SIZE 64
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 64)
                                      (:RSP :UNSIGNED-LONG-LONG :BIT-SIZE 64
                                       :BIT-OFFSET 128 :BIT-ALIGNMENT 64)))
    (PROGN
     (DEFPARAMETER +_CMPCCX_O+ 0)
     (DEFPARAMETER +_CMPCCX_NO+ 1)
     (DEFPARAMETER +_CMPCCX_B+ 2)
     (DEFPARAMETER +_CMPCCX_NB+ 3)
     (DEFPARAMETER +_CMPCCX_Z+ 4)
     (DEFPARAMETER +_CMPCCX_NZ+ 5)
     (DEFPARAMETER +_CMPCCX_BE+ 6)
     (DEFPARAMETER +_CMPCCX_NBE+ 7)
     (DEFPARAMETER +_CMPCCX_S+ 8)
     (DEFPARAMETER +_CMPCCX_NS+ 9)
     (DEFPARAMETER +_CMPCCX_P+ 10)
     (DEFPARAMETER +_CMPCCX_NP+ 11)
     (DEFPARAMETER +_CMPCCX_L+ 12)
     (DEFPARAMETER +_CMPCCX_NL+ 13)
     (DEFPARAMETER +_CMPCCX_LE+ 14)
     (DEFPARAMETER +_CMPCCX_NLE+ 15)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8900 65
                                   '((:O . 0) (:NO . 1) (:B . 2) (:NB . 3)
                                     (:Z . 4) (:NZ . 5) (:BE . 6) (:NBE . 7)
                                     (:S . 8) (:NS . 9) (:P . 10) (:NP . 11)
                                     (:L . 12) (:NL . 13) (:LE . 14)
                                     (:NLE . 15))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '_CMPCCX_ENUM '(:ENUM (NIL :ID 65)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M64| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V1DI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V2SI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V4HI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V8QI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V4SI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V4SF '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M128| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M128_U| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V4SU '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(POSIX-MEMALIGN "posix_memalign") ':INT
                                      '((|__memptr|
                                         (:POINTER (:POINTER :VOID)))
                                        (|__alignment| SIZE-T)
                                        (|__size| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(_MM_SFENCE "_mm_sfence") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(_MM_GETCSR "_mm_getcsr") ':UNSIGNED-INT
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(_MM_SETCSR "_mm_setcsr") ':VOID
                                      '((|__i| :UNSIGNED-INT)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M128D| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M128I| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M128D_U| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M128I_U| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V2DF '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V2DI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V8HI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V16QI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V2DU '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V8HU '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V16QU '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V16QS '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V8HF '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M128H| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M128H_U| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V8BF '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__M128BH '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(_MM_CLFLUSH "_mm_clflush") ':VOID
                                      '((|__p| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(_MM_LFENCE "_mm_lfence") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(_MM_MFENCE "_mm_mfence") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(_MM_PAUSE "_mm_pause") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V4DF '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V8SF '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V4DI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V8SI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V16HI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V32QI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V4DU '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V8SU '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V16HU '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V32QU '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V32QS '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M256| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M256D| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M256I| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M256_U| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M256D_U| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M256I_U| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V16HF '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M256H| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M256H_U| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V16BF '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__M256BH '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V64QI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V32HI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V8DF '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V16SF '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V8DI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V16SI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V64QU '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V32HU '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V8DU '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V16SU '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V64QS '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M512| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M512D| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M512I| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M512_U| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M512D_U| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M512I_U| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__MMASK8 ':UNSIGNED-CHAR)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__MMASK16 ':UNSIGNED-SHORT)
    (PROGN
     (DEFPARAMETER +_MM_CMPINT_EQ+ 0)
     (DEFPARAMETER +_MM_CMPINT_LT+ 1)
     (DEFPARAMETER +_MM_CMPINT_LE+ 2)
     (DEFPARAMETER +_MM_CMPINT_UNUSED+ 3)
     (DEFPARAMETER +_MM_CMPINT_NE+ 4)
     (DEFPARAMETER +_MM_CMPINT_NLT+ 5)
     (DEFPARAMETER +_MM_CMPINT_NLE+ 6)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8901 66
                                   '((:EQ . 0) (:LT . 1) (:LE . 2)
                                     (:UNUSED . 3) (:NE . 4) (:NLT . 5)
                                     (:NLE . 6))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '_MM_CMPINT_ENUM '(:ENUM (NIL :ID 66)))
    (PROGN
     (DEFPARAMETER +_MM_PERM_AAAA+ 0)
     (DEFPARAMETER +_MM_PERM_AAAB+ 1)
     (DEFPARAMETER +_MM_PERM_AAAC+ 2)
     (DEFPARAMETER +_MM_PERM_AAAD+ 3)
     (DEFPARAMETER +_MM_PERM_AABA+ 4)
     (DEFPARAMETER +_MM_PERM_AABB+ 5)
     (DEFPARAMETER +_MM_PERM_AABC+ 6)
     (DEFPARAMETER +_MM_PERM_AABD+ 7)
     (DEFPARAMETER +_MM_PERM_AACA+ 8)
     (DEFPARAMETER +_MM_PERM_AACB+ 9)
     (DEFPARAMETER +_MM_PERM_AACC+ 10)
     (DEFPARAMETER +_MM_PERM_AACD+ 11)
     (DEFPARAMETER +_MM_PERM_AADA+ 12)
     (DEFPARAMETER +_MM_PERM_AADB+ 13)
     (DEFPARAMETER +_MM_PERM_AADC+ 14)
     (DEFPARAMETER +_MM_PERM_AADD+ 15)
     (DEFPARAMETER +_MM_PERM_ABAA+ 16)
     (DEFPARAMETER +_MM_PERM_ABAB+ 17)
     (DEFPARAMETER +_MM_PERM_ABAC+ 18)
     (DEFPARAMETER +_MM_PERM_ABAD+ 19)
     (DEFPARAMETER +_MM_PERM_ABBA+ 20)
     (DEFPARAMETER +_MM_PERM_ABBB+ 21)
     (DEFPARAMETER +_MM_PERM_ABBC+ 22)
     (DEFPARAMETER +_MM_PERM_ABBD+ 23)
     (DEFPARAMETER +_MM_PERM_ABCA+ 24)
     (DEFPARAMETER +_MM_PERM_ABCB+ 25)
     (DEFPARAMETER +_MM_PERM_ABCC+ 26)
     (DEFPARAMETER +_MM_PERM_ABCD+ 27)
     (DEFPARAMETER +_MM_PERM_ABDA+ 28)
     (DEFPARAMETER +_MM_PERM_ABDB+ 29)
     (DEFPARAMETER +_MM_PERM_ABDC+ 30)
     (DEFPARAMETER +_MM_PERM_ABDD+ 31)
     (DEFPARAMETER +_MM_PERM_ACAA+ 32)
     (DEFPARAMETER +_MM_PERM_ACAB+ 33)
     (DEFPARAMETER +_MM_PERM_ACAC+ 34)
     (DEFPARAMETER +_MM_PERM_ACAD+ 35)
     (DEFPARAMETER +_MM_PERM_ACBA+ 36)
     (DEFPARAMETER +_MM_PERM_ACBB+ 37)
     (DEFPARAMETER +_MM_PERM_ACBC+ 38)
     (DEFPARAMETER +_MM_PERM_ACBD+ 39)
     (DEFPARAMETER +_MM_PERM_ACCA+ 40)
     (DEFPARAMETER +_MM_PERM_ACCB+ 41)
     (DEFPARAMETER +_MM_PERM_ACCC+ 42)
     (DEFPARAMETER +_MM_PERM_ACCD+ 43)
     (DEFPARAMETER +_MM_PERM_ACDA+ 44)
     (DEFPARAMETER +_MM_PERM_ACDB+ 45)
     (DEFPARAMETER +_MM_PERM_ACDC+ 46)
     (DEFPARAMETER +_MM_PERM_ACDD+ 47)
     (DEFPARAMETER +_MM_PERM_ADAA+ 48)
     (DEFPARAMETER +_MM_PERM_ADAB+ 49)
     (DEFPARAMETER +_MM_PERM_ADAC+ 50)
     (DEFPARAMETER +_MM_PERM_ADAD+ 51)
     (DEFPARAMETER +_MM_PERM_ADBA+ 52)
     (DEFPARAMETER +_MM_PERM_ADBB+ 53)
     (DEFPARAMETER +_MM_PERM_ADBC+ 54)
     (DEFPARAMETER +_MM_PERM_ADBD+ 55)
     (DEFPARAMETER +_MM_PERM_ADCA+ 56)
     (DEFPARAMETER +_MM_PERM_ADCB+ 57)
     (DEFPARAMETER +_MM_PERM_ADCC+ 58)
     (DEFPARAMETER +_MM_PERM_ADCD+ 59)
     (DEFPARAMETER +_MM_PERM_ADDA+ 60)
     (DEFPARAMETER +_MM_PERM_ADDB+ 61)
     (DEFPARAMETER +_MM_PERM_ADDC+ 62)
     (DEFPARAMETER +_MM_PERM_ADDD+ 63)
     (DEFPARAMETER +_MM_PERM_BAAA+ 64)
     (DEFPARAMETER +_MM_PERM_BAAB+ 65)
     (DEFPARAMETER +_MM_PERM_BAAC+ 66)
     (DEFPARAMETER +_MM_PERM_BAAD+ 67)
     (DEFPARAMETER +_MM_PERM_BABA+ 68)
     (DEFPARAMETER +_MM_PERM_BABB+ 69)
     (DEFPARAMETER +_MM_PERM_BABC+ 70)
     (DEFPARAMETER +_MM_PERM_BABD+ 71)
     (DEFPARAMETER +_MM_PERM_BACA+ 72)
     (DEFPARAMETER +_MM_PERM_BACB+ 73)
     (DEFPARAMETER +_MM_PERM_BACC+ 74)
     (DEFPARAMETER +_MM_PERM_BACD+ 75)
     (DEFPARAMETER +_MM_PERM_BADA+ 76)
     (DEFPARAMETER +_MM_PERM_BADB+ 77)
     (DEFPARAMETER +_MM_PERM_BADC+ 78)
     (DEFPARAMETER +_MM_PERM_BADD+ 79)
     (DEFPARAMETER +_MM_PERM_BBAA+ 80)
     (DEFPARAMETER +_MM_PERM_BBAB+ 81)
     (DEFPARAMETER +_MM_PERM_BBAC+ 82)
     (DEFPARAMETER +_MM_PERM_BBAD+ 83)
     (DEFPARAMETER +_MM_PERM_BBBA+ 84)
     (DEFPARAMETER +_MM_PERM_BBBB+ 85)
     (DEFPARAMETER +_MM_PERM_BBBC+ 86)
     (DEFPARAMETER +_MM_PERM_BBBD+ 87)
     (DEFPARAMETER +_MM_PERM_BBCA+ 88)
     (DEFPARAMETER +_MM_PERM_BBCB+ 89)
     (DEFPARAMETER +_MM_PERM_BBCC+ 90)
     (DEFPARAMETER +_MM_PERM_BBCD+ 91)
     (DEFPARAMETER +_MM_PERM_BBDA+ 92)
     (DEFPARAMETER +_MM_PERM_BBDB+ 93)
     (DEFPARAMETER +_MM_PERM_BBDC+ 94)
     (DEFPARAMETER +_MM_PERM_BBDD+ 95)
     (DEFPARAMETER +_MM_PERM_BCAA+ 96)
     (DEFPARAMETER +_MM_PERM_BCAB+ 97)
     (DEFPARAMETER +_MM_PERM_BCAC+ 98)
     (DEFPARAMETER +_MM_PERM_BCAD+ 99)
     (DEFPARAMETER +_MM_PERM_BCBA+ 100)
     (DEFPARAMETER +_MM_PERM_BCBB+ 101)
     (DEFPARAMETER +_MM_PERM_BCBC+ 102)
     (DEFPARAMETER +_MM_PERM_BCBD+ 103)
     (DEFPARAMETER +_MM_PERM_BCCA+ 104)
     (DEFPARAMETER +_MM_PERM_BCCB+ 105)
     (DEFPARAMETER +_MM_PERM_BCCC+ 106)
     (DEFPARAMETER +_MM_PERM_BCCD+ 107)
     (DEFPARAMETER +_MM_PERM_BCDA+ 108)
     (DEFPARAMETER +_MM_PERM_BCDB+ 109)
     (DEFPARAMETER +_MM_PERM_BCDC+ 110)
     (DEFPARAMETER +_MM_PERM_BCDD+ 111)
     (DEFPARAMETER +_MM_PERM_BDAA+ 112)
     (DEFPARAMETER +_MM_PERM_BDAB+ 113)
     (DEFPARAMETER +_MM_PERM_BDAC+ 114)
     (DEFPARAMETER +_MM_PERM_BDAD+ 115)
     (DEFPARAMETER +_MM_PERM_BDBA+ 116)
     (DEFPARAMETER +_MM_PERM_BDBB+ 117)
     (DEFPARAMETER +_MM_PERM_BDBC+ 118)
     (DEFPARAMETER +_MM_PERM_BDBD+ 119)
     (DEFPARAMETER +_MM_PERM_BDCA+ 120)
     (DEFPARAMETER +_MM_PERM_BDCB+ 121)
     (DEFPARAMETER +_MM_PERM_BDCC+ 122)
     (DEFPARAMETER +_MM_PERM_BDCD+ 123)
     (DEFPARAMETER +_MM_PERM_BDDA+ 124)
     (DEFPARAMETER +_MM_PERM_BDDB+ 125)
     (DEFPARAMETER +_MM_PERM_BDDC+ 126)
     (DEFPARAMETER +_MM_PERM_BDDD+ 127)
     (DEFPARAMETER +_MM_PERM_CAAA+ 128)
     (DEFPARAMETER +_MM_PERM_CAAB+ 129)
     (DEFPARAMETER +_MM_PERM_CAAC+ 130)
     (DEFPARAMETER +_MM_PERM_CAAD+ 131)
     (DEFPARAMETER +_MM_PERM_CABA+ 132)
     (DEFPARAMETER +_MM_PERM_CABB+ 133)
     (DEFPARAMETER +_MM_PERM_CABC+ 134)
     (DEFPARAMETER +_MM_PERM_CABD+ 135)
     (DEFPARAMETER +_MM_PERM_CACA+ 136)
     (DEFPARAMETER +_MM_PERM_CACB+ 137)
     (DEFPARAMETER +_MM_PERM_CACC+ 138)
     (DEFPARAMETER +_MM_PERM_CACD+ 139)
     (DEFPARAMETER +_MM_PERM_CADA+ 140)
     (DEFPARAMETER +_MM_PERM_CADB+ 141)
     (DEFPARAMETER +_MM_PERM_CADC+ 142)
     (DEFPARAMETER +_MM_PERM_CADD+ 143)
     (DEFPARAMETER +_MM_PERM_CBAA+ 144)
     (DEFPARAMETER +_MM_PERM_CBAB+ 145)
     (DEFPARAMETER +_MM_PERM_CBAC+ 146)
     (DEFPARAMETER +_MM_PERM_CBAD+ 147)
     (DEFPARAMETER +_MM_PERM_CBBA+ 148)
     (DEFPARAMETER +_MM_PERM_CBBB+ 149)
     (DEFPARAMETER +_MM_PERM_CBBC+ 150)
     (DEFPARAMETER +_MM_PERM_CBBD+ 151)
     (DEFPARAMETER +_MM_PERM_CBCA+ 152)
     (DEFPARAMETER +_MM_PERM_CBCB+ 153)
     (DEFPARAMETER +_MM_PERM_CBCC+ 154)
     (DEFPARAMETER +_MM_PERM_CBCD+ 155)
     (DEFPARAMETER +_MM_PERM_CBDA+ 156)
     (DEFPARAMETER +_MM_PERM_CBDB+ 157)
     (DEFPARAMETER +_MM_PERM_CBDC+ 158)
     (DEFPARAMETER +_MM_PERM_CBDD+ 159)
     (DEFPARAMETER +_MM_PERM_CCAA+ 160)
     (DEFPARAMETER +_MM_PERM_CCAB+ 161)
     (DEFPARAMETER +_MM_PERM_CCAC+ 162)
     (DEFPARAMETER +_MM_PERM_CCAD+ 163)
     (DEFPARAMETER +_MM_PERM_CCBA+ 164)
     (DEFPARAMETER +_MM_PERM_CCBB+ 165)
     (DEFPARAMETER +_MM_PERM_CCBC+ 166)
     (DEFPARAMETER +_MM_PERM_CCBD+ 167)
     (DEFPARAMETER +_MM_PERM_CCCA+ 168)
     (DEFPARAMETER +_MM_PERM_CCCB+ 169)
     (DEFPARAMETER +_MM_PERM_CCCC+ 170)
     (DEFPARAMETER +_MM_PERM_CCCD+ 171)
     (DEFPARAMETER +_MM_PERM_CCDA+ 172)
     (DEFPARAMETER +_MM_PERM_CCDB+ 173)
     (DEFPARAMETER +_MM_PERM_CCDC+ 174)
     (DEFPARAMETER +_MM_PERM_CCDD+ 175)
     (DEFPARAMETER +_MM_PERM_CDAA+ 176)
     (DEFPARAMETER +_MM_PERM_CDAB+ 177)
     (DEFPARAMETER +_MM_PERM_CDAC+ 178)
     (DEFPARAMETER +_MM_PERM_CDAD+ 179)
     (DEFPARAMETER +_MM_PERM_CDBA+ 180)
     (DEFPARAMETER +_MM_PERM_CDBB+ 181)
     (DEFPARAMETER +_MM_PERM_CDBC+ 182)
     (DEFPARAMETER +_MM_PERM_CDBD+ 183)
     (DEFPARAMETER +_MM_PERM_CDCA+ 184)
     (DEFPARAMETER +_MM_PERM_CDCB+ 185)
     (DEFPARAMETER +_MM_PERM_CDCC+ 186)
     (DEFPARAMETER +_MM_PERM_CDCD+ 187)
     (DEFPARAMETER +_MM_PERM_CDDA+ 188)
     (DEFPARAMETER +_MM_PERM_CDDB+ 189)
     (DEFPARAMETER +_MM_PERM_CDDC+ 190)
     (DEFPARAMETER +_MM_PERM_CDDD+ 191)
     (DEFPARAMETER +_MM_PERM_DAAA+ 192)
     (DEFPARAMETER +_MM_PERM_DAAB+ 193)
     (DEFPARAMETER +_MM_PERM_DAAC+ 194)
     (DEFPARAMETER +_MM_PERM_DAAD+ 195)
     (DEFPARAMETER +_MM_PERM_DABA+ 196)
     (DEFPARAMETER +_MM_PERM_DABB+ 197)
     (DEFPARAMETER +_MM_PERM_DABC+ 198)
     (DEFPARAMETER +_MM_PERM_DABD+ 199)
     (DEFPARAMETER +_MM_PERM_DACA+ 200)
     (DEFPARAMETER +_MM_PERM_DACB+ 201)
     (DEFPARAMETER +_MM_PERM_DACC+ 202)
     (DEFPARAMETER +_MM_PERM_DACD+ 203)
     (DEFPARAMETER +_MM_PERM_DADA+ 204)
     (DEFPARAMETER +_MM_PERM_DADB+ 205)
     (DEFPARAMETER +_MM_PERM_DADC+ 206)
     (DEFPARAMETER +_MM_PERM_DADD+ 207)
     (DEFPARAMETER +_MM_PERM_DBAA+ 208)
     (DEFPARAMETER +_MM_PERM_DBAB+ 209)
     (DEFPARAMETER +_MM_PERM_DBAC+ 210)
     (DEFPARAMETER +_MM_PERM_DBAD+ 211)
     (DEFPARAMETER +_MM_PERM_DBBA+ 212)
     (DEFPARAMETER +_MM_PERM_DBBB+ 213)
     (DEFPARAMETER +_MM_PERM_DBBC+ 214)
     (DEFPARAMETER +_MM_PERM_DBBD+ 215)
     (DEFPARAMETER +_MM_PERM_DBCA+ 216)
     (DEFPARAMETER +_MM_PERM_DBCB+ 217)
     (DEFPARAMETER +_MM_PERM_DBCC+ 218)
     (DEFPARAMETER +_MM_PERM_DBCD+ 219)
     (DEFPARAMETER +_MM_PERM_DBDA+ 220)
     (DEFPARAMETER +_MM_PERM_DBDB+ 221)
     (DEFPARAMETER +_MM_PERM_DBDC+ 222)
     (DEFPARAMETER +_MM_PERM_DBDD+ 223)
     (DEFPARAMETER +_MM_PERM_DCAA+ 224)
     (DEFPARAMETER +_MM_PERM_DCAB+ 225)
     (DEFPARAMETER +_MM_PERM_DCAC+ 226)
     (DEFPARAMETER +_MM_PERM_DCAD+ 227)
     (DEFPARAMETER +_MM_PERM_DCBA+ 228)
     (DEFPARAMETER +_MM_PERM_DCBB+ 229)
     (DEFPARAMETER +_MM_PERM_DCBC+ 230)
     (DEFPARAMETER +_MM_PERM_DCBD+ 231)
     (DEFPARAMETER +_MM_PERM_DCCA+ 232)
     (DEFPARAMETER +_MM_PERM_DCCB+ 233)
     (DEFPARAMETER +_MM_PERM_DCCC+ 234)
     (DEFPARAMETER +_MM_PERM_DCCD+ 235)
     (DEFPARAMETER +_MM_PERM_DCDA+ 236)
     (DEFPARAMETER +_MM_PERM_DCDB+ 237)
     (DEFPARAMETER +_MM_PERM_DCDC+ 238)
     (DEFPARAMETER +_MM_PERM_DCDD+ 239)
     (DEFPARAMETER +_MM_PERM_DDAA+ 240)
     (DEFPARAMETER +_MM_PERM_DDAB+ 241)
     (DEFPARAMETER +_MM_PERM_DDAC+ 242)
     (DEFPARAMETER +_MM_PERM_DDAD+ 243)
     (DEFPARAMETER +_MM_PERM_DDBA+ 244)
     (DEFPARAMETER +_MM_PERM_DDBB+ 245)
     (DEFPARAMETER +_MM_PERM_DDBC+ 246)
     (DEFPARAMETER +_MM_PERM_DDBD+ 247)
     (DEFPARAMETER +_MM_PERM_DDCA+ 248)
     (DEFPARAMETER +_MM_PERM_DDCB+ 249)
     (DEFPARAMETER +_MM_PERM_DDCC+ 250)
     (DEFPARAMETER +_MM_PERM_DDCD+ 251)
     (DEFPARAMETER +_MM_PERM_DDDA+ 252)
     (DEFPARAMETER +_MM_PERM_DDDB+ 253)
     (DEFPARAMETER +_MM_PERM_DDDC+ 254)
     (DEFPARAMETER +_MM_PERM_DDDD+ 255)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8902 67
                                   '((:AAAA . 0) (:AAAB . 1) (:AAAC . 2)
                                     (:AAAD . 3) (:AABA . 4) (:AABB . 5)
                                     (:AABC . 6) (:AABD . 7) (:AACA . 8)
                                     (:AACB . 9) (:AACC . 10) (:AACD . 11)
                                     (:AADA . 12) (:AADB . 13) (:AADC . 14)
                                     (:AADD . 15) (:ABAA . 16) (:ABAB . 17)
                                     (:ABAC . 18) (:ABAD . 19) (:ABBA . 20)
                                     (:ABBB . 21) (:ABBC . 22) (:ABBD . 23)
                                     (:ABCA . 24) (:ABCB . 25) (:ABCC . 26)
                                     (:ABCD . 27) (:ABDA . 28) (:ABDB . 29)
                                     (:ABDC . 30) (:ABDD . 31) (:ACAA . 32)
                                     (:ACAB . 33) (:ACAC . 34) (:ACAD . 35)
                                     (:ACBA . 36) (:ACBB . 37) (:ACBC . 38)
                                     (:ACBD . 39) (:ACCA . 40) (:ACCB . 41)
                                     (:ACCC . 42) (:ACCD . 43) (:ACDA . 44)
                                     (:ACDB . 45) (:ACDC . 46) (:ACDD . 47)
                                     (:ADAA . 48) (:ADAB . 49) (:ADAC . 50)
                                     (:ADAD . 51) (:ADBA . 52) (:ADBB . 53)
                                     (:ADBC . 54) (:ADBD . 55) (:ADCA . 56)
                                     (:ADCB . 57) (:ADCC . 58) (:ADCD . 59)
                                     (:ADDA . 60) (:ADDB . 61) (:ADDC . 62)
                                     (:ADDD . 63) (:BAAA . 64) (:BAAB . 65)
                                     (:BAAC . 66) (:BAAD . 67) (:BABA . 68)
                                     (:BABB . 69) (:BABC . 70) (:BABD . 71)
                                     (:BACA . 72) (:BACB . 73) (:BACC . 74)
                                     (:BACD . 75) (:BADA . 76) (:BADB . 77)
                                     (:BADC . 78) (:BADD . 79) (:BBAA . 80)
                                     (:BBAB . 81) (:BBAC . 82) (:BBAD . 83)
                                     (:BBBA . 84) (:BBBB . 85) (:BBBC . 86)
                                     (:BBBD . 87) (:BBCA . 88) (:BBCB . 89)
                                     (:BBCC . 90) (:BBCD . 91) (:BBDA . 92)
                                     (:BBDB . 93) (:BBDC . 94) (:BBDD . 95)
                                     (:BCAA . 96) (:BCAB . 97) (:BCAC . 98)
                                     (:BCAD . 99) (:BCBA . 100) (:BCBB . 101)
                                     (:BCBC . 102) (:BCBD . 103) (:BCCA . 104)
                                     (:BCCB . 105) (:BCCC . 106) (:BCCD . 107)
                                     (:BCDA . 108) (:BCDB . 109) (:BCDC . 110)
                                     (:BCDD . 111) (:BDAA . 112) (:BDAB . 113)
                                     (:BDAC . 114) (:BDAD . 115) (:BDBA . 116)
                                     (:BDBB . 117) (:BDBC . 118) (:BDBD . 119)
                                     (:BDCA . 120) (:BDCB . 121) (:BDCC . 122)
                                     (:BDCD . 123) (:BDDA . 124) (:BDDB . 125)
                                     (:BDDC . 126) (:BDDD . 127) (:CAAA . 128)
                                     (:CAAB . 129) (:CAAC . 130) (:CAAD . 131)
                                     (:CABA . 132) (:CABB . 133) (:CABC . 134)
                                     (:CABD . 135) (:CACA . 136) (:CACB . 137)
                                     (:CACC . 138) (:CACD . 139) (:CADA . 140)
                                     (:CADB . 141) (:CADC . 142) (:CADD . 143)
                                     (:CBAA . 144) (:CBAB . 145) (:CBAC . 146)
                                     (:CBAD . 147) (:CBBA . 148) (:CBBB . 149)
                                     (:CBBC . 150) (:CBBD . 151) (:CBCA . 152)
                                     (:CBCB . 153) (:CBCC . 154) (:CBCD . 155)
                                     (:CBDA . 156) (:CBDB . 157) (:CBDC . 158)
                                     (:CBDD . 159) (:CCAA . 160) (:CCAB . 161)
                                     (:CCAC . 162) (:CCAD . 163) (:CCBA . 164)
                                     (:CCBB . 165) (:CCBC . 166) (:CCBD . 167)
                                     (:CCCA . 168) (:CCCB . 169) (:CCCC . 170)
                                     (:CCCD . 171) (:CCDA . 172) (:CCDB . 173)
                                     (:CCDC . 174) (:CCDD . 175) (:CDAA . 176)
                                     (:CDAB . 177) (:CDAC . 178) (:CDAD . 179)
                                     (:CDBA . 180) (:CDBB . 181) (:CDBC . 182)
                                     (:CDBD . 183) (:CDCA . 184) (:CDCB . 185)
                                     (:CDCC . 186) (:CDCD . 187) (:CDDA . 188)
                                     (:CDDB . 189) (:CDDC . 190) (:CDDD . 191)
                                     (:DAAA . 192) (:DAAB . 193) (:DAAC . 194)
                                     (:DAAD . 195) (:DABA . 196) (:DABB . 197)
                                     (:DABC . 198) (:DABD . 199) (:DACA . 200)
                                     (:DACB . 201) (:DACC . 202) (:DACD . 203)
                                     (:DADA . 204) (:DADB . 205) (:DADC . 206)
                                     (:DADD . 207) (:DBAA . 208) (:DBAB . 209)
                                     (:DBAC . 210) (:DBAD . 211) (:DBBA . 212)
                                     (:DBBB . 213) (:DBBC . 214) (:DBBD . 215)
                                     (:DBCA . 216) (:DBCB . 217) (:DBCC . 218)
                                     (:DBCD . 219) (:DBDA . 220) (:DBDB . 221)
                                     (:DBDC . 222) (:DBDD . 223) (:DCAA . 224)
                                     (:DCAB . 225) (:DCAC . 226) (:DCAD . 227)
                                     (:DCBA . 228) (:DCBB . 229) (:DCBC . 230)
                                     (:DCBD . 231) (:DCCA . 232) (:DCCB . 233)
                                     (:DCCC . 234) (:DCCD . 235) (:DCDA . 236)
                                     (:DCDB . 237) (:DCDC . 238) (:DCDD . 239)
                                     (:DDAA . 240) (:DDAB . 241) (:DDAC . 242)
                                     (:DDAD . 243) (:DDBA . 244) (:DDBB . 245)
                                     (:DDBC . 246) (:DDBD . 247) (:DDCA . 248)
                                     (:DDCB . 249) (:DDCC . 250) (:DDCD . 251)
                                     (:DDDA . 252) (:DDDB . 253) (:DDDC . 254)
                                     (:DDDD . 255))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '_MM_PERM_ENUM '(:ENUM (NIL :ID 67)))
    (PROGN
     (DEFPARAMETER +_MM_MANT_NORM_1_2+ 0)
     (DEFPARAMETER +_MM_MANT_NORM_P5_2+ 1)
     (DEFPARAMETER +_MM_MANT_NORM_P5_1+ 2)
     (DEFPARAMETER +_MM_MANT_NORM_P75_1P5+ 3)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8903 68
                                   '((:|1_2| . 0) (:P5_2 . 1) (:P5_1 . 2)
                                     (:P75_1P5 . 3))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '_MM_MANTISSA_NORM_ENUM
                                   '(:ENUM (NIL :ID 68)))
    (PROGN
     (DEFPARAMETER +_MM_MANT_SIGN_SRC+ 0)
     (DEFPARAMETER +_MM_MANT_SIGN_ZERO+ 1)
     (DEFPARAMETER +_MM_MANT_SIGN_NAN+ 2)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8904 69
                                   '((:SRC . 0) (:ZERO . 1) (:NAN . 2))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '_MM_MANTISSA_SIGN_ENUM
                                   '(:ENUM (NIL :ID 69)))
    (PROGN
     (DEFPARAMETER +_MM_TERNLOG_A+ 240)
     (DEFPARAMETER +_MM_TERNLOG_B+ 204)
     (DEFPARAMETER +_MM_TERNLOG_C+ 170)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8905 70
                                   '((:A . 240) (:B . 204) (:C . 170))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '_MM_TERNLOG_ENUM '(:ENUM (NIL :ID 70)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V2HI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V4QI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V2QI '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__MMASK32 ':UNSIGNED-INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__MMASK64 ':UNSIGNED-LONG-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V32HF '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M512H| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '|__M512H_U| '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__V32BF '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__M512BH '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__BFLOAT16 ':__BF16)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '_TILE1024I '|<UNKNOWN-TYPE:VECTOR>|)
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '__TILE1024I_STR :STRUCT 8704 512
                                    '((:ROW :UNSIGNED-SHORT :BIT-SIZE 16
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 16)
                                      (:COL :UNSIGNED-SHORT :BIT-SIZE 16
                                       :BIT-OFFSET 16 :BIT-ALIGNMENT 16)
                                      (:TILE _TILE1024I :BIT-SIZE 8192
                                       :BIT-OFFSET 512 :BIT-ALIGNMENT 512)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__TILE1024I '(:STRUCT (__TILE1024I_STR)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(__TILE_CMMIMFP16PS "__tile_cmmimfp16ps") ':VOID
     '((|dst| (:POINTER __TILE1024I)) (|src0| __TILE1024I)
       (|src1| __TILE1024I)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(__TILE_CMMRLFP16PS "__tile_cmmrlfp16ps") ':VOID
     '((|dst| (:POINTER __TILE1024I)) (|src0| __TILE1024I)
       (|src1| __TILE1024I)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-CPU-COUNT "SDL_GetCPUCount")
                                      ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-CPU-CACHE-LINE-SIZE "SDL_GetCPUCacheLineSize") ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-RDTSC "SDL_HasRDTSC") 'SDL-BOOL
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-ALTI-VEC "SDL_HasAltiVec")
                                      'SDL-BOOL 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-MMX "SDL_HasMMX") 'SDL-BOOL
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS3D-NOW "SDL_Has3DNow") 'SDL-BOOL
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-SSE "SDL_HasSSE") 'SDL-BOOL
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-SSE2 "SDL_HasSSE2") 'SDL-BOOL
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-SSE3 "SDL_HasSSE3") 'SDL-BOOL
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-SSE41 "SDL_HasSSE41") 'SDL-BOOL
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-SSE42 "SDL_HasSSE42") 'SDL-BOOL
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-AVX "SDL_HasAVX") 'SDL-BOOL
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-AVX2 "SDL_HasAVX2") 'SDL-BOOL
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-AVX512F "SDL_HasAVX512F")
                                      'SDL-BOOL 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-ARMSIMD "SDL_HasARMSIMD")
                                      'SDL-BOOL 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-NEON "SDL_HasNEON") 'SDL-BOOL
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-LSX "SDL_HasLSX") 'SDL-BOOL
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-LASX "SDL_HasLASX") 'SDL-BOOL
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-SYSTEM-RAM "SDL_GetSystemRAM")
                                      ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SIMD-GET-ALIGNMENT "SDL_SIMDGetAlignment") 'SIZE-T 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SIMD-ALLOC "SDL_SIMDAlloc")
                                      '(:POINTER :VOID) '((|len| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SIMD-REALLOC "SDL_SIMDRealloc")
                                      '(:POINTER :VOID)
                                      '((|mem| (:POINTER :VOID))
                                        (|len| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SIMD-FREE "SDL_SIMDFree") ':VOID
                                      '((|ptr| (:POINTER :VOID))))
    (PROGN
     (DEFPARAMETER +SDL-PIXELTYPE-UNKNOWN+ 0)
     (DEFPARAMETER +SDL-PIXELTYPE-INDEX1+ 1)
     (DEFPARAMETER +SDL-PIXELTYPE-INDEX4+ 2)
     (DEFPARAMETER +SDL-PIXELTYPE-INDEX8+ 3)
     (DEFPARAMETER +SDL-PIXELTYPE-PACKED8+ 4)
     (DEFPARAMETER +SDL-PIXELTYPE-PACKED16+ 5)
     (DEFPARAMETER +SDL-PIXELTYPE-PACKED32+ 6)
     (DEFPARAMETER +SDL-PIXELTYPE-ARRAYU8+ 7)
     (DEFPARAMETER +SDL-PIXELTYPE-ARRAYU16+ 8)
     (DEFPARAMETER +SDL-PIXELTYPE-ARRAYU32+ 9)
     (DEFPARAMETER +SDL-PIXELTYPE-ARRAYF16+ 10)
     (DEFPARAMETER +SDL-PIXELTYPE-ARRAYF32+ 11)
     (DEFPARAMETER +SDL-PIXELTYPE-INDEX2+ 12)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8906 72
                                   '((:UNKNOWN . 0) (:INDEX1 . 1) (:INDEX4 . 2)
                                     (:INDEX8 . 3) (:PACKED8 . 4)
                                     (:PACKED16 . 5) (:PACKED32 . 6)
                                     (:ARRAYU8 . 7) (:ARRAYU16 . 8)
                                     (:ARRAYU32 . 9) (:ARRAYF16 . 10)
                                     (:ARRAYF32 . 11) (:INDEX2 . 12))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-PIXEL-TYPE '(:ENUM (NIL :ID 72)))
    (PROGN
     (DEFPARAMETER +SDL-BITMAPORDER-NONE+ 0)
     (DEFPARAMETER +SDL-BITMAPORDER-4321+ 1)
     (DEFPARAMETER +SDL-BITMAPORDER-1234+ 2)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8907 73
                                   '((:NONE . 0) (:|4321| . 1) (:|1234| . 2))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-BITMAP-ORDER '(:ENUM (NIL :ID 73)))
    (PROGN
     (DEFPARAMETER +SDL-PACKEDORDER-NONE+ 0)
     (DEFPARAMETER +SDL-PACKEDORDER-XRGB+ 1)
     (DEFPARAMETER +SDL-PACKEDORDER-RGBX+ 2)
     (DEFPARAMETER +SDL-PACKEDORDER-ARGB+ 3)
     (DEFPARAMETER +SDL-PACKEDORDER-RGBA+ 4)
     (DEFPARAMETER +SDL-PACKEDORDER-XBGR+ 5)
     (DEFPARAMETER +SDL-PACKEDORDER-BGRX+ 6)
     (DEFPARAMETER +SDL-PACKEDORDER-ABGR+ 7)
     (DEFPARAMETER +SDL-PACKEDORDER-BGRA+ 8)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8908 74
                                   '((:NONE . 0) (:XRGB . 1) (:RGBX . 2)
                                     (:ARGB . 3) (:RGBA . 4) (:XBGR . 5)
                                     (:BGRX . 6) (:ABGR . 7) (:BGRA . 8))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-PACKED-ORDER '(:ENUM (NIL :ID 74)))
    (PROGN
     (DEFPARAMETER +SDL-ARRAYORDER-NONE+ 0)
     (DEFPARAMETER +SDL-ARRAYORDER-RGB+ 1)
     (DEFPARAMETER +SDL-ARRAYORDER-RGBA+ 2)
     (DEFPARAMETER +SDL-ARRAYORDER-ARGB+ 3)
     (DEFPARAMETER +SDL-ARRAYORDER-BGR+ 4)
     (DEFPARAMETER +SDL-ARRAYORDER-BGRA+ 5)
     (DEFPARAMETER +SDL-ARRAYORDER-ABGR+ 6)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8909 75
                                   '((:NONE . 0) (:RGB . 1) (:RGBA . 2)
                                     (:ARGB . 3) (:BGR . 4) (:BGRA . 5)
                                     (:ABGR . 6))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-ARRAY-ORDER '(:ENUM (NIL :ID 75)))
    (PROGN
     (DEFPARAMETER +SDL-PACKEDLAYOUT-NONE+ 0)
     (DEFPARAMETER +SDL-PACKEDLAYOUT-332+ 1)
     (DEFPARAMETER +SDL-PACKEDLAYOUT-4444+ 2)
     (DEFPARAMETER +SDL-PACKEDLAYOUT-1555+ 3)
     (DEFPARAMETER +SDL-PACKEDLAYOUT-5551+ 4)
     (DEFPARAMETER +SDL-PACKEDLAYOUT-565+ 5)
     (DEFPARAMETER +SDL-PACKEDLAYOUT-8888+ 6)
     (DEFPARAMETER +SDL-PACKEDLAYOUT-2101010+ 7)
     (DEFPARAMETER +SDL-PACKEDLAYOUT-1010102+ 8)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8910 76
                                   '((:NONE . 0) (:|332| . 1) (:|4444| . 2)
                                     (:|1555| . 3) (:|5551| . 4) (:|565| . 5)
                                     (:|8888| . 6) (:|2101010| . 7)
                                     (:|1010102| . 8))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-PACKED-LAYOUT '(:ENUM (NIL :ID 76)))
    (PROGN
     (DEFPARAMETER +SDL-PIXELFORMAT-UNKNOWN+ 0)
     (DEFPARAMETER +SDL-PIXELFORMAT-INDEX1LSB+ 286261504)
     (DEFPARAMETER +SDL-PIXELFORMAT-INDEX1MSB+ 287310080)
     (DEFPARAMETER +SDL-PIXELFORMAT-INDEX2LSB+ 470811136)
     (DEFPARAMETER +SDL-PIXELFORMAT-INDEX2MSB+ 471859712)
     (DEFPARAMETER +SDL-PIXELFORMAT-INDEX4LSB+ 303039488)
     (DEFPARAMETER +SDL-PIXELFORMAT-INDEX4MSB+ 304088064)
     (DEFPARAMETER +SDL-PIXELFORMAT-INDEX8+ 318769153)
     (DEFPARAMETER +SDL-PIXELFORMAT-RGB332+ 336660481)
     (DEFPARAMETER +SDL-PIXELFORMAT-XRGB4444+ 353504258)
     (DEFPARAMETER +SDL-PIXELFORMAT-RGB444+ 353504258)
     (DEFPARAMETER +SDL-PIXELFORMAT-XBGR4444+ 357698562)
     (DEFPARAMETER +SDL-PIXELFORMAT-BGR444+ 357698562)
     (DEFPARAMETER +SDL-PIXELFORMAT-XRGB1555+ 353570562)
     (DEFPARAMETER +SDL-PIXELFORMAT-RGB555+ 353570562)
     (DEFPARAMETER +SDL-PIXELFORMAT-XBGR1555+ 357764866)
     (DEFPARAMETER +SDL-PIXELFORMAT-BGR555+ 357764866)
     (DEFPARAMETER +SDL-PIXELFORMAT-ARGB4444+ 355602434)
     (DEFPARAMETER +SDL-PIXELFORMAT-RGBA4444+ 356651010)
     (DEFPARAMETER +SDL-PIXELFORMAT-ABGR4444+ 359796738)
     (DEFPARAMETER +SDL-PIXELFORMAT-BGRA4444+ 360845314)
     (DEFPARAMETER +SDL-PIXELFORMAT-ARGB1555+ 355667970)
     (DEFPARAMETER +SDL-PIXELFORMAT-RGBA5551+ 356782082)
     (DEFPARAMETER +SDL-PIXELFORMAT-ABGR1555+ 359862274)
     (DEFPARAMETER +SDL-PIXELFORMAT-BGRA5551+ 360976386)
     (DEFPARAMETER +SDL-PIXELFORMAT-RGB565+ 353701890)
     (DEFPARAMETER +SDL-PIXELFORMAT-BGR565+ 357896194)
     (DEFPARAMETER +SDL-PIXELFORMAT-RGB24+ 386930691)
     (DEFPARAMETER +SDL-PIXELFORMAT-BGR24+ 390076419)
     (DEFPARAMETER +SDL-PIXELFORMAT-XRGB8888+ 370546692)
     (DEFPARAMETER +SDL-PIXELFORMAT-RGB888+ 370546692)
     (DEFPARAMETER +SDL-PIXELFORMAT-RGBX8888+ 371595268)
     (DEFPARAMETER +SDL-PIXELFORMAT-XBGR8888+ 374740996)
     (DEFPARAMETER +SDL-PIXELFORMAT-BGR888+ 374740996)
     (DEFPARAMETER +SDL-PIXELFORMAT-BGRX8888+ 375789572)
     (DEFPARAMETER +SDL-PIXELFORMAT-ARGB8888+ 372645892)
     (DEFPARAMETER +SDL-PIXELFORMAT-RGBA8888+ 373694468)
     (DEFPARAMETER +SDL-PIXELFORMAT-ABGR8888+ 376840196)
     (DEFPARAMETER +SDL-PIXELFORMAT-BGRA8888+ 377888772)
     (DEFPARAMETER +SDL-PIXELFORMAT-ARGB2101010+ 372711428)
     (DEFPARAMETER +SDL-PIXELFORMAT-RGBA32+ 376840196)
     (DEFPARAMETER +SDL-PIXELFORMAT-ARGB32+ 377888772)
     (DEFPARAMETER +SDL-PIXELFORMAT-BGRA32+ 372645892)
     (DEFPARAMETER +SDL-PIXELFORMAT-ABGR32+ 373694468)
     (DEFPARAMETER +SDL-PIXELFORMAT-RGBX32+ 374740996)
     (DEFPARAMETER +SDL-PIXELFORMAT-XRGB32+ 375789572)
     (DEFPARAMETER +SDL-PIXELFORMAT-BGRX32+ 370546692)
     (DEFPARAMETER +SDL-PIXELFORMAT-XBGR32+ 371595268)
     (DEFPARAMETER +SDL-PIXELFORMAT-YV12+ 842094169)
     (DEFPARAMETER +SDL-PIXELFORMAT-IYUV+ 1448433993)
     (DEFPARAMETER +SDL-PIXELFORMAT-YUY2+ 844715353)
     (DEFPARAMETER +SDL-PIXELFORMAT-UYVY+ 1498831189)
     (DEFPARAMETER +SDL-PIXELFORMAT-YVYU+ 1431918169)
     (DEFPARAMETER +SDL-PIXELFORMAT-NV12+ 842094158)
     (DEFPARAMETER +SDL-PIXELFORMAT-NV21+ 825382478)
     (DEFPARAMETER +SDL-PIXELFORMAT-EXTERNAL-OES+ 542328143)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8911 77
                                   '((:UNKNOWN . 0) (:INDEX1LSB . 286261504)
                                     (:INDEX1MSB . 287310080)
                                     (:INDEX2LSB . 470811136)
                                     (:INDEX2MSB . 471859712)
                                     (:INDEX4LSB . 303039488)
                                     (:INDEX4MSB . 304088064)
                                     (:INDEX8 . 318769153)
                                     (:RGB332 . 336660481)
                                     (:XRGB4444 . 353504258)
                                     (:RGB444 . 353504258)
                                     (:XBGR4444 . 357698562)
                                     (:BGR444 . 357698562)
                                     (:XRGB1555 . 353570562)
                                     (:RGB555 . 353570562)
                                     (:XBGR1555 . 357764866)
                                     (:BGR555 . 357764866)
                                     (:ARGB4444 . 355602434)
                                     (:RGBA4444 . 356651010)
                                     (:ABGR4444 . 359796738)
                                     (:BGRA4444 . 360845314)
                                     (:ARGB1555 . 355667970)
                                     (:RGBA5551 . 356782082)
                                     (:ABGR1555 . 359862274)
                                     (:BGRA5551 . 360976386)
                                     (:RGB565 . 353701890)
                                     (:BGR565 . 357896194) (:RGB24 . 386930691)
                                     (:BGR24 . 390076419)
                                     (:XRGB8888 . 370546692)
                                     (:RGB888 . 370546692)
                                     (:RGBX8888 . 371595268)
                                     (:XBGR8888 . 374740996)
                                     (:BGR888 . 374740996)
                                     (:BGRX8888 . 375789572)
                                     (:ARGB8888 . 372645892)
                                     (:RGBA8888 . 373694468)
                                     (:ABGR8888 . 376840196)
                                     (:BGRA8888 . 377888772)
                                     (:ARGB2101010 . 372711428)
                                     (:RGBA32 . 376840196)
                                     (:ARGB32 . 377888772)
                                     (:BGRA32 . 372645892)
                                     (:ABGR32 . 373694468)
                                     (:RGBX32 . 374740996)
                                     (:XRGB32 . 375789572)
                                     (:BGRX32 . 370546692)
                                     (:XBGR32 . 371595268) (:YV12 . 842094169)
                                     (:IYUV . 1448433993) (:YUY2 . 844715353)
                                     (:UYVY . 1498831189) (:YVYU . 1431918169)
                                     (:NV12 . 842094158) (:NV21 . 825382478)
                                     (:EXTERNAL-OES . 542328143))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-PIXEL-FORMAT-ENUM
                                   '(:ENUM (NIL :ID 77)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-COLOR :STRUCT 32 8
                                    '((:R UINT8 :BIT-SIZE 8 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 8)
                                      (:G UINT8 :BIT-SIZE 8 :BIT-OFFSET 8
                                       :BIT-ALIGNMENT 8)
                                      (:B UINT8 :BIT-SIZE 8 :BIT-OFFSET 16
                                       :BIT-ALIGNMENT 8)
                                      (:A UINT8 :BIT-SIZE 8 :BIT-OFFSET 24
                                       :BIT-ALIGNMENT 8)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-COLOR '(:STRUCT (SDL-COLOR)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-PALETTE :STRUCT 192 64
                                    '((:NCOLORS :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:COLORS (:POINTER SDL-COLOR) :BIT-SIZE
                                       64 :BIT-OFFSET 64 :BIT-ALIGNMENT 64)
                                      (:VERSION UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       128 :BIT-ALIGNMENT 32)
                                      (:REFCOUNT :INT :BIT-SIZE 32 :BIT-OFFSET
                                       160 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-PALETTE '(:STRUCT (SDL-PALETTE)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-PIXEL-FORMAT :STRUCT 448 64
                                    '((:FORMAT UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       0 :BIT-ALIGNMENT 32)
                                      (:PALETTE (:POINTER SDL-PALETTE)
                                       :BIT-SIZE 64 :BIT-OFFSET 64
                                       :BIT-ALIGNMENT 64)
                                      (:BITS-PER-PIXEL UINT8 :BIT-SIZE 8
                                       :BIT-OFFSET 128 :BIT-ALIGNMENT 8)
                                      (:BYTES-PER-PIXEL UINT8 :BIT-SIZE 8
                                       :BIT-OFFSET 136 :BIT-ALIGNMENT 8)
                                      (:PADDING (:ARRAY UINT8 2) :BIT-SIZE 16
                                       :BIT-OFFSET 144 :BIT-ALIGNMENT 8)
                                      (:RMASK UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       160 :BIT-ALIGNMENT 32)
                                      (:GMASK UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       192 :BIT-ALIGNMENT 32)
                                      (:BMASK UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       224 :BIT-ALIGNMENT 32)
                                      (:AMASK UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       256 :BIT-ALIGNMENT 32)
                                      (:RLOSS UINT8 :BIT-SIZE 8 :BIT-OFFSET 288
                                       :BIT-ALIGNMENT 8)
                                      (:GLOSS UINT8 :BIT-SIZE 8 :BIT-OFFSET 296
                                       :BIT-ALIGNMENT 8)
                                      (:BLOSS UINT8 :BIT-SIZE 8 :BIT-OFFSET 304
                                       :BIT-ALIGNMENT 8)
                                      (:ALOSS UINT8 :BIT-SIZE 8 :BIT-OFFSET 312
                                       :BIT-ALIGNMENT 8)
                                      (:RSHIFT UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       320 :BIT-ALIGNMENT 8)
                                      (:GSHIFT UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       328 :BIT-ALIGNMENT 8)
                                      (:BSHIFT UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       336 :BIT-ALIGNMENT 8)
                                      (:ASHIFT UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       344 :BIT-ALIGNMENT 8)
                                      (:REFCOUNT :INT :BIT-SIZE 32 :BIT-OFFSET
                                       352 :BIT-ALIGNMENT 32)
                                      (:NEXT
                                       (:POINTER (:STRUCT (SDL-PIXEL-FORMAT)))
                                       :BIT-SIZE 64 :BIT-OFFSET 384
                                       :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-PIXEL-FORMAT
                                   '(:STRUCT (SDL-PIXEL-FORMAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-PIXEL-FORMAT-NAME "SDL_GetPixelFormatName") '(:STRING)
     '((|format| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-PIXEL-FORMAT-ENUM-TO-MASKS "SDL_PixelFormatEnumToMasks") 'SDL-BOOL
     '((|format| UINT32) (|bpp| (:POINTER :INT)) (|Rmask| (:POINTER UINT32))
       (|Gmask| (:POINTER UINT32)) (|Bmask| (:POINTER UINT32))
       (|Amask| (:POINTER UINT32))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-MASKS-TO-PIXEL-FORMAT-ENUM "SDL_MasksToPixelFormatEnum") 'UINT32
     '((|bpp| :INT) (|Rmask| UINT32) (|Gmask| UINT32) (|Bmask| UINT32)
       (|Amask| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ALLOC-FORMAT "SDL_AllocFormat")
                                      '(:POINTER SDL-PIXEL-FORMAT)
                                      '((|pixel_format| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FREE-FORMAT "SDL_FreeFormat")
                                      ':VOID
                                      '((|format|
                                         (:POINTER SDL-PIXEL-FORMAT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ALLOC-PALETTE "SDL_AllocPalette")
                                      '(:POINTER SDL-PALETTE)
                                      '((|ncolors| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-PIXEL-FORMAT-PALETTE "SDL_SetPixelFormatPalette") ':INT
     '((|format| (:POINTER SDL-PIXEL-FORMAT))
       (|palette| (:POINTER SDL-PALETTE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-PALETTE-COLORS "SDL_SetPaletteColors") ':INT
     '((|palette| (:POINTER SDL-PALETTE)) (|colors| (:POINTER SDL-COLOR))
       (|firstcolor| :INT) (|ncolors| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FREE-PALETTE "SDL_FreePalette")
                                      ':VOID
                                      '((|palette| (:POINTER SDL-PALETTE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-MAP-RGB "SDL_MapRGB") 'UINT32
                                      '((|format| (:POINTER SDL-PIXEL-FORMAT))
                                        (|r| UINT8) (|g| UINT8) (|b| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-MAP-RGBA "SDL_MapRGBA") 'UINT32
                                      '((|format| (:POINTER SDL-PIXEL-FORMAT))
                                        (|r| UINT8) (|g| UINT8) (|b| UINT8)
                                        (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-RGB "SDL_GetRGB") ':VOID
                                      '((|pixel| UINT32)
                                        (|format| (:POINTER SDL-PIXEL-FORMAT))
                                        (|r| (:POINTER UINT8))
                                        (|g| (:POINTER UINT8))
                                        (|b| (:POINTER UINT8))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-RGBA "SDL_GetRGBA") ':VOID
                                      '((|pixel| UINT32)
                                        (|format| (:POINTER SDL-PIXEL-FORMAT))
                                        (|r| (:POINTER UINT8))
                                        (|g| (:POINTER UINT8))
                                        (|b| (:POINTER UINT8))
                                        (|a| (:POINTER UINT8))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CALCULATE-GAMMA-RAMP "SDL_CalculateGammaRamp") ':VOID
     '((|gamma| :FLOAT) (|ramp| (:POINTER UINT16))))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-POINT :STRUCT 64 32
                                    '((:X :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:Y :INT :BIT-SIZE 32 :BIT-OFFSET 32
                                       :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-POINT '(:STRUCT (SDL-POINT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-F-POINT :STRUCT 64 32
                                    '((:X :FLOAT :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:Y :FLOAT :BIT-SIZE 32 :BIT-OFFSET 32
                                       :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-F-POINT '(:STRUCT (SDL-F-POINT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-RECT :STRUCT 128 32
                                    '((:X :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:Y :INT :BIT-SIZE 32 :BIT-OFFSET 32
                                       :BIT-ALIGNMENT 32)
                                      (:W :INT :BIT-SIZE 32 :BIT-OFFSET 64
                                       :BIT-ALIGNMENT 32)
                                      (:H :INT :BIT-SIZE 32 :BIT-OFFSET 96
                                       :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-RECT '(:STRUCT (SDL-RECT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-F-RECT :STRUCT 128 32
                                    '((:X :FLOAT :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:Y :FLOAT :BIT-SIZE 32 :BIT-OFFSET 32
                                       :BIT-ALIGNMENT 32)
                                      (:W :FLOAT :BIT-SIZE 32 :BIT-OFFSET 64
                                       :BIT-ALIGNMENT 32)
                                      (:H :FLOAT :BIT-SIZE 32 :BIT-OFFSET 96
                                       :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-F-RECT '(:STRUCT (SDL-F-RECT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAS-INTERSECTION "SDL_HasIntersection") 'SDL-BOOL
     '((A (:POINTER SDL-RECT)) (B (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-INTERSECT-RECT "SDL_IntersectRect")
                                      'SDL-BOOL
                                      '((A (:POINTER SDL-RECT))
                                        (B (:POINTER SDL-RECT))
                                        (|result| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-UNION-RECT "SDL_UnionRect") ':VOID
                                      '((A (:POINTER SDL-RECT))
                                        (B (:POINTER SDL-RECT))
                                        (|result| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ENCLOSE-POINTS "SDL_EnclosePoints")
                                      'SDL-BOOL
                                      '((|points| (:POINTER SDL-POINT))
                                        (|count| :INT)
                                        (|clip| (:POINTER SDL-RECT))
                                        (|result| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-INTERSECT-RECT-AND-LINE "SDL_IntersectRectAndLine") 'SDL-BOOL
     '((|rect| (:POINTER SDL-RECT)) (X1 (:POINTER :INT)) (Y1 (:POINTER :INT))
       (X2 (:POINTER :INT)) (Y2 (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAS-INTERSECTION-F "SDL_HasIntersectionF") 'SDL-BOOL
     '((A (:POINTER SDL-F-RECT)) (B (:POINTER SDL-F-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-INTERSECT-F-RECT "SDL_IntersectFRect") 'SDL-BOOL
     '((A (:POINTER SDL-F-RECT)) (B (:POINTER SDL-F-RECT))
       (|result| (:POINTER SDL-F-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-UNION-F-RECT "SDL_UnionFRect")
                                      ':VOID
                                      '((A (:POINTER SDL-F-RECT))
                                        (B (:POINTER SDL-F-RECT))
                                        (|result| (:POINTER SDL-F-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-ENCLOSE-F-POINTS "SDL_EncloseFPoints") 'SDL-BOOL
     '((|points| (:POINTER SDL-F-POINT)) (|count| :INT)
       (|clip| (:POINTER SDL-F-RECT)) (|result| (:POINTER SDL-F-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-INTERSECT-F-RECT-AND-LINE "SDL_IntersectFRectAndLine") 'SDL-BOOL
     '((|rect| (:POINTER SDL-F-RECT)) (X1 (:POINTER :FLOAT))
       (Y1 (:POINTER :FLOAT)) (X2 (:POINTER :FLOAT)) (Y2 (:POINTER :FLOAT))))
    (PROGN
     (DEFPARAMETER +SDL-BLENDMODE-NONE+ 0)
     (DEFPARAMETER +SDL-BLENDMODE-BLEND+ 1)
     (DEFPARAMETER +SDL-BLENDMODE-ADD+ 2)
     (DEFPARAMETER +SDL-BLENDMODE-MOD+ 4)
     (DEFPARAMETER +SDL-BLENDMODE-MUL+ 8)
     (DEFPARAMETER +SDL-BLENDMODE-INVALID+ 2147483647)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8912 85
                                   '((:NONE . 0) (:BLEND . 1) (:ADD . 2)
                                     (:MOD . 4) (:MUL . 8)
                                     (:INVALID . 2147483647))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-BLEND-MODE '(:ENUM (NIL :ID 85)))
    (PROGN
     (DEFPARAMETER +SDL-BLENDOPERATION-ADD+ 1)
     (DEFPARAMETER +SDL-BLENDOPERATION-SUBTRACT+ 2)
     (DEFPARAMETER +SDL-BLENDOPERATION-REV-SUBTRACT+ 3)
     (DEFPARAMETER +SDL-BLENDOPERATION-MINIMUM+ 4)
     (DEFPARAMETER +SDL-BLENDOPERATION-MAXIMUM+ 5)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8913 86
                                   '((:ADD . 1) (:SUBTRACT . 2)
                                     (:REV-SUBTRACT . 3) (:MINIMUM . 4)
                                     (:MAXIMUM . 5))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-BLEND-OPERATION '(:ENUM (NIL :ID 86)))
    (PROGN
     (DEFPARAMETER +SDL-BLENDFACTOR-ZERO+ 1)
     (DEFPARAMETER +SDL-BLENDFACTOR-ONE+ 2)
     (DEFPARAMETER +SDL-BLENDFACTOR-SRC-COLOR+ 3)
     (DEFPARAMETER +SDL-BLENDFACTOR-ONE-MINUS-SRC-COLOR+ 4)
     (DEFPARAMETER +SDL-BLENDFACTOR-SRC-ALPHA+ 5)
     (DEFPARAMETER +SDL-BLENDFACTOR-ONE-MINUS-SRC-ALPHA+ 6)
     (DEFPARAMETER +SDL-BLENDFACTOR-DST-COLOR+ 7)
     (DEFPARAMETER +SDL-BLENDFACTOR-ONE-MINUS-DST-COLOR+ 8)
     (DEFPARAMETER +SDL-BLENDFACTOR-DST-ALPHA+ 9)
     (DEFPARAMETER +SDL-BLENDFACTOR-ONE-MINUS-DST-ALPHA+ 10)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8914 87
                                   '((:ZERO . 1) (:ONE . 2) (:SRC-COLOR . 3)
                                     (:ONE-MINUS-SRC-COLOR . 4)
                                     (:SRC-ALPHA . 5)
                                     (:ONE-MINUS-SRC-ALPHA . 6)
                                     (:DST-COLOR . 7)
                                     (:ONE-MINUS-DST-COLOR . 8)
                                     (:DST-ALPHA . 9)
                                     (:ONE-MINUS-DST-ALPHA . 10))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-BLEND-FACTOR '(:ENUM (NIL :ID 87)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-COMPOSE-CUSTOM-BLEND-MODE "SDL_ComposeCustomBlendMode")
     'SDL-BLEND-MODE
     '((|srcColorFactor| SDL-BLEND-FACTOR) (|dstColorFactor| SDL-BLEND-FACTOR)
       (|colorOperation| SDL-BLEND-OPERATION)
       (|srcAlphaFactor| SDL-BLEND-FACTOR) (|dstAlphaFactor| SDL-BLEND-FACTOR)
       (|alphaOperation| SDL-BLEND-OPERATION)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-BLIT-MAP :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-BLIT-MAP
                                   '(AUTOWRAP::STRUCT
                                     (SDL-BLIT-MAP :BIT-SIZE 0 :BIT-ALIGNMENT
                                      0)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-SURFACE :STRUCT 768 64
                                    '((:FLAGS UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:FORMAT (:POINTER SDL-PIXEL-FORMAT)
                                       :BIT-SIZE 64 :BIT-OFFSET 64
                                       :BIT-ALIGNMENT 64)
                                      (:W :INT :BIT-SIZE 32 :BIT-OFFSET 128
                                       :BIT-ALIGNMENT 32)
                                      (:H :INT :BIT-SIZE 32 :BIT-OFFSET 160
                                       :BIT-ALIGNMENT 32)
                                      (:PITCH :INT :BIT-SIZE 32 :BIT-OFFSET 192
                                       :BIT-ALIGNMENT 32)
                                      (:PIXELS (:POINTER :VOID) :BIT-SIZE 64
                                       :BIT-OFFSET 256 :BIT-ALIGNMENT 64)
                                      (:USERDATA (:POINTER :VOID) :BIT-SIZE 64
                                       :BIT-OFFSET 320 :BIT-ALIGNMENT 64)
                                      (:LOCKED :INT :BIT-SIZE 32 :BIT-OFFSET
                                       384 :BIT-ALIGNMENT 32)
                                      (:LIST-BLITMAP (:POINTER :VOID) :BIT-SIZE
                                       64 :BIT-OFFSET 448 :BIT-ALIGNMENT 64)
                                      (:CLIP-RECT SDL-RECT :BIT-SIZE 128
                                       :BIT-OFFSET 512 :BIT-ALIGNMENT 32)
                                      (:MAP (:POINTER SDL-BLIT-MAP) :BIT-SIZE
                                       64 :BIT-OFFSET 640 :BIT-ALIGNMENT 64)
                                      (:REFCOUNT :INT :BIT-SIZE 32 :BIT-OFFSET
                                       704 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-SURFACE '(:STRUCT (SDL-SURFACE)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-BLIT '(:POINTER (:VOID)))
    (PROGN
     (DEFPARAMETER +SDL-YUV-CONVERSION-JPEG+ 0)
     (DEFPARAMETER +SDL-YUV-CONVERSION-BT601+ 1)
     (DEFPARAMETER +SDL-YUV-CONVERSION-BT709+ 2)
     (DEFPARAMETER +SDL-YUV-CONVERSION-AUTOMATIC+ 3)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8915 90
                                   '((:JPEG . 0) (:BT601 . 1) (:BT709 . 2)
                                     (:AUTOMATIC . 3))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-YUV-CONVERSION-MODE
                                   '(:ENUM (NIL :ID 90)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CREATE-RGB-SURFACE "SDL_CreateRGBSurface") '(:POINTER SDL-SURFACE)
     '((|flags| UINT32) (|width| :INT) (|height| :INT) (|depth| :INT)
       (|Rmask| UINT32) (|Gmask| UINT32) (|Bmask| UINT32) (|Amask| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CREATE-RGB-SURFACE-WITH-FORMAT "SDL_CreateRGBSurfaceWithFormat")
     '(:POINTER SDL-SURFACE)
     '((|flags| UINT32) (|width| :INT) (|height| :INT) (|depth| :INT)
       (|format| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CREATE-RGB-SURFACE-FROM "SDL_CreateRGBSurfaceFrom")
     '(:POINTER SDL-SURFACE)
     '((|pixels| (:POINTER :VOID)) (|width| :INT) (|height| :INT)
       (|depth| :INT) (|pitch| :INT) (|Rmask| UINT32) (|Gmask| UINT32)
       (|Bmask| UINT32) (|Amask| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CREATE-RGB-SURFACE-WITH-FORMAT-FROM
       "SDL_CreateRGBSurfaceWithFormatFrom")
     '(:POINTER SDL-SURFACE)
     '((|pixels| (:POINTER :VOID)) (|width| :INT) (|height| :INT)
       (|depth| :INT) (|pitch| :INT) (|format| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FREE-SURFACE "SDL_FreeSurface")
                                      ':VOID
                                      '((|surface| (:POINTER SDL-SURFACE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-SURFACE-PALETTE "SDL_SetSurfacePalette") ':INT
     '((|surface| (:POINTER SDL-SURFACE)) (|palette| (:POINTER SDL-PALETTE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOCK-SURFACE "SDL_LockSurface")
                                      ':INT
                                      '((|surface| (:POINTER SDL-SURFACE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-UNLOCK-SURFACE "SDL_UnlockSurface")
                                      ':VOID
                                      '((|surface| (:POINTER SDL-SURFACE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOAD-BMP-RW "SDL_LoadBMP_RW")
                                      '(:POINTER SDL-SURFACE)
                                      '((|src| (:POINTER SDL-R-WOPS))
                                        (|freesrc| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SAVE-BMP-RW "SDL_SaveBMP_RW") ':INT
                                      '((|surface| (:POINTER SDL-SURFACE))
                                        (|dst| (:POINTER SDL-R-WOPS))
                                        (|freedst| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-SURFACE-RLE "SDL_SetSurfaceRLE") ':INT
     '((|surface| (:POINTER SDL-SURFACE)) (|flag| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAS-SURFACE-RLE "SDL_HasSurfaceRLE") 'SDL-BOOL
     '((|surface| (:POINTER SDL-SURFACE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SET-COLOR-KEY "SDL_SetColorKey")
                                      ':INT
                                      '((|surface| (:POINTER SDL-SURFACE))
                                        (|flag| :INT) (|key| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-COLOR-KEY "SDL_HasColorKey")
                                      'SDL-BOOL
                                      '((|surface| (:POINTER SDL-SURFACE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-COLOR-KEY "SDL_GetColorKey")
                                      ':INT
                                      '((|surface| (:POINTER SDL-SURFACE))
                                        (|key| (:POINTER UINT32))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-SURFACE-COLOR-MOD "SDL_SetSurfaceColorMod") ':INT
     '((|surface| (:POINTER SDL-SURFACE)) (|r| UINT8) (|g| UINT8) (|b| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-SURFACE-COLOR-MOD "SDL_GetSurfaceColorMod") ':INT
     '((|surface| (:POINTER SDL-SURFACE)) (|r| (:POINTER UINT8))
       (|g| (:POINTER UINT8)) (|b| (:POINTER UINT8))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-SURFACE-ALPHA-MOD "SDL_SetSurfaceAlphaMod") ':INT
     '((|surface| (:POINTER SDL-SURFACE)) (|alpha| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-SURFACE-ALPHA-MOD "SDL_GetSurfaceAlphaMod") ':INT
     '((|surface| (:POINTER SDL-SURFACE)) (|alpha| (:POINTER UINT8))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-SURFACE-BLEND-MODE "SDL_SetSurfaceBlendMode") ':INT
     '((|surface| (:POINTER SDL-SURFACE)) (|blendMode| SDL-BLEND-MODE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-SURFACE-BLEND-MODE "SDL_GetSurfaceBlendMode") ':INT
     '((|surface| (:POINTER SDL-SURFACE))
       (|blendMode| (:POINTER SDL-BLEND-MODE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SET-CLIP-RECT "SDL_SetClipRect")
                                      'SDL-BOOL
                                      '((|surface| (:POINTER SDL-SURFACE))
                                        (|rect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-CLIP-RECT "SDL_GetClipRect")
                                      ':VOID
                                      '((|surface| (:POINTER SDL-SURFACE))
                                        (|rect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-DUPLICATE-SURFACE "SDL_DuplicateSurface") '(:POINTER SDL-SURFACE)
     '((|surface| (:POINTER SDL-SURFACE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CONVERT-SURFACE "SDL_ConvertSurface") '(:POINTER SDL-SURFACE)
     '((|src| (:POINTER SDL-SURFACE)) (|fmt| (:POINTER SDL-PIXEL-FORMAT))
       (|flags| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CONVERT-SURFACE-FORMAT "SDL_ConvertSurfaceFormat")
     '(:POINTER SDL-SURFACE)
     '((|src| (:POINTER SDL-SURFACE)) (|pixel_format| UINT32)
       (|flags| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-CONVERT-PIXELS "SDL_ConvertPixels")
                                      ':INT
                                      '((|width| :INT) (|height| :INT)
                                        (|src_format| UINT32)
                                        (|src| (:POINTER :VOID))
                                        (|src_pitch| :INT)
                                        (|dst_format| UINT32)
                                        (|dst| (:POINTER :VOID))
                                        (|dst_pitch| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-PREMULTIPLY-ALPHA "SDL_PremultiplyAlpha") ':INT
     '((|width| :INT) (|height| :INT) (|src_format| UINT32)
       (|src| (:POINTER :VOID)) (|src_pitch| :INT) (|dst_format| UINT32)
       (|dst| (:POINTER :VOID)) (|dst_pitch| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FILL-RECT "SDL_FillRect") ':INT
                                      '((|dst| (:POINTER SDL-SURFACE))
                                        (|rect| (:POINTER SDL-RECT))
                                        (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FILL-RECTS "SDL_FillRects") ':INT
                                      '((|dst| (:POINTER SDL-SURFACE))
                                        (|rects| (:POINTER SDL-RECT))
                                        (|count| :INT) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-UPPER-BLIT "SDL_UpperBlit") ':INT
                                      '((|src| (:POINTER SDL-SURFACE))
                                        (|srcrect| (:POINTER SDL-RECT))
                                        (|dst| (:POINTER SDL-SURFACE))
                                        (|dstrect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOWER-BLIT "SDL_LowerBlit") ':INT
                                      '((|src| (:POINTER SDL-SURFACE))
                                        (|srcrect| (:POINTER SDL-RECT))
                                        (|dst| (:POINTER SDL-SURFACE))
                                        (|dstrect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SOFT-STRETCH "SDL_SoftStretch")
                                      ':INT
                                      '((|src| (:POINTER SDL-SURFACE))
                                        (|srcrect| (:POINTER SDL-RECT))
                                        (|dst| (:POINTER SDL-SURFACE))
                                        (|dstrect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SOFT-STRETCH-LINEAR "SDL_SoftStretchLinear") ':INT
     '((|src| (:POINTER SDL-SURFACE)) (|srcrect| (:POINTER SDL-RECT))
       (|dst| (:POINTER SDL-SURFACE)) (|dstrect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-UPPER-BLIT-SCALED "SDL_UpperBlitScaled") ':INT
     '((|src| (:POINTER SDL-SURFACE)) (|srcrect| (:POINTER SDL-RECT))
       (|dst| (:POINTER SDL-SURFACE)) (|dstrect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LOWER-BLIT-SCALED "SDL_LowerBlitScaled") ':INT
     '((|src| (:POINTER SDL-SURFACE)) (|srcrect| (:POINTER SDL-RECT))
       (|dst| (:POINTER SDL-SURFACE)) (|dstrect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-YUV-CONVERSION-MODE "SDL_SetYUVConversionMode") ':VOID
     '((|mode| SDL-YUV-CONVERSION-MODE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-YUV-CONVERSION-MODE "SDL_GetYUVConversionMode")
     'SDL-YUV-CONVERSION-MODE 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-YUV-CONVERSION-MODE-FOR-RESOLUTION
       "SDL_GetYUVConversionModeForResolution")
     'SDL-YUV-CONVERSION-MODE '((|width| :INT) (|height| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-DISPLAY-MODE
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 91 :BIT-SIZE 192 :BIT-ALIGNMENT
                                      64)
                                     (:FORMAT UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 32)
                                     (:W :INT :BIT-SIZE 32 :BIT-OFFSET 32
                                      :BIT-ALIGNMENT 32)
                                     (:H :INT :BIT-SIZE 32 :BIT-OFFSET 64
                                      :BIT-ALIGNMENT 32)
                                     (:REFRESH-RATE :INT :BIT-SIZE 32
                                      :BIT-OFFSET 96 :BIT-ALIGNMENT 32)
                                     (:DRIVERDATA (:POINTER :VOID) :BIT-SIZE 64
                                      :BIT-OFFSET 128 :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-WINDOW :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-WINDOW
                                   '(AUTOWRAP::STRUCT
                                     (SDL-WINDOW :BIT-SIZE 0 :BIT-ALIGNMENT
                                      0)))
    (PROGN
     (DEFPARAMETER +SDL-WINDOW-FULLSCREEN+ 1)
     (DEFPARAMETER +SDL-WINDOW-OPENGL+ 2)
     (DEFPARAMETER +SDL-WINDOW-SHOWN+ 4)
     (DEFPARAMETER +SDL-WINDOW-HIDDEN+ 8)
     (DEFPARAMETER +SDL-WINDOW-BORDERLESS+ 16)
     (DEFPARAMETER +SDL-WINDOW-RESIZABLE+ 32)
     (DEFPARAMETER +SDL-WINDOW-MINIMIZED+ 64)
     (DEFPARAMETER +SDL-WINDOW-MAXIMIZED+ 128)
     (DEFPARAMETER +SDL-WINDOW-MOUSE-GRABBED+ 256)
     (DEFPARAMETER +SDL-WINDOW-INPUT-FOCUS+ 512)
     (DEFPARAMETER +SDL-WINDOW-MOUSE-FOCUS+ 1024)
     (DEFPARAMETER +SDL-WINDOW-FULLSCREEN-DESKTOP+ 4097)
     (DEFPARAMETER +SDL-WINDOW-FOREIGN+ 2048)
     (DEFPARAMETER +SDL-WINDOW-ALLOW-HIGHDPI+ 8192)
     (DEFPARAMETER +SDL-WINDOW-MOUSE-CAPTURE+ 16384)
     (DEFPARAMETER +SDL-WINDOW-ALWAYS-ON-TOP+ 32768)
     (DEFPARAMETER +SDL-WINDOW-SKIP-TASKBAR+ 65536)
     (DEFPARAMETER +SDL-WINDOW-UTILITY+ 131072)
     (DEFPARAMETER +SDL-WINDOW-TOOLTIP+ 262144)
     (DEFPARAMETER +SDL-WINDOW-POPUP-MENU+ 524288)
     (DEFPARAMETER +SDL-WINDOW-KEYBOARD-GRABBED+ 1048576)
     (DEFPARAMETER +SDL-WINDOW-VULKAN+ 268435456)
     (DEFPARAMETER +SDL-WINDOW-METAL+ 536870912)
     (DEFPARAMETER +SDL-WINDOW-INPUT-GRABBED+ 256)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8916 93
                                   '((:FULLSCREEN . 1) (:OPENGL . 2)
                                     (:SHOWN . 4) (:HIDDEN . 8)
                                     (:BORDERLESS . 16) (:RESIZABLE . 32)
                                     (:MINIMIZED . 64) (:MAXIMIZED . 128)
                                     (:MOUSE-GRABBED . 256)
                                     (:INPUT-FOCUS . 512) (:MOUSE-FOCUS . 1024)
                                     (:FULLSCREEN-DESKTOP . 4097)
                                     (:FOREIGN . 2048) (:ALLOW-HIGHDPI . 8192)
                                     (:MOUSE-CAPTURE . 16384)
                                     (:ALWAYS-ON-TOP . 32768)
                                     (:SKIP-TASKBAR . 65536)
                                     (:UTILITY . 131072) (:TOOLTIP . 262144)
                                     (:POPUP-MENU . 524288)
                                     (:KEYBOARD-GRABBED . 1048576)
                                     (:VULKAN . 268435456) (:METAL . 536870912)
                                     (:INPUT-GRABBED . 256))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-WINDOW-FLAGS '(:ENUM (NIL :ID 93)))
    (PROGN
     (DEFPARAMETER +SDL-WINDOWEVENT-NONE+ 0)
     (DEFPARAMETER +SDL-WINDOWEVENT-SHOWN+ 1)
     (DEFPARAMETER +SDL-WINDOWEVENT-HIDDEN+ 2)
     (DEFPARAMETER +SDL-WINDOWEVENT-EXPOSED+ 3)
     (DEFPARAMETER +SDL-WINDOWEVENT-MOVED+ 4)
     (DEFPARAMETER +SDL-WINDOWEVENT-RESIZED+ 5)
     (DEFPARAMETER +SDL-WINDOWEVENT-SIZE-CHANGED+ 6)
     (DEFPARAMETER +SDL-WINDOWEVENT-MINIMIZED+ 7)
     (DEFPARAMETER +SDL-WINDOWEVENT-MAXIMIZED+ 8)
     (DEFPARAMETER +SDL-WINDOWEVENT-RESTORED+ 9)
     (DEFPARAMETER +SDL-WINDOWEVENT-ENTER+ 10)
     (DEFPARAMETER +SDL-WINDOWEVENT-LEAVE+ 11)
     (DEFPARAMETER +SDL-WINDOWEVENT-FOCUS-GAINED+ 12)
     (DEFPARAMETER +SDL-WINDOWEVENT-FOCUS-LOST+ 13)
     (DEFPARAMETER +SDL-WINDOWEVENT-CLOSE+ 14)
     (DEFPARAMETER +SDL-WINDOWEVENT-TAKE-FOCUS+ 15)
     (DEFPARAMETER +SDL-WINDOWEVENT-HIT-TEST+ 16)
     (DEFPARAMETER +SDL-WINDOWEVENT-ICCPROF-CHANGED+ 17)
     (DEFPARAMETER +SDL-WINDOWEVENT-DISPLAY-CHANGED+ 18)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8917 94
                                   '((:NONE . 0) (:SHOWN . 1) (:HIDDEN . 2)
                                     (:EXPOSED . 3) (:MOVED . 4) (:RESIZED . 5)
                                     (:SIZE-CHANGED . 6) (:MINIMIZED . 7)
                                     (:MAXIMIZED . 8) (:RESTORED . 9)
                                     (:ENTER . 10) (:LEAVE . 11)
                                     (:FOCUS-GAINED . 12) (:FOCUS-LOST . 13)
                                     (:CLOSE . 14) (:TAKE-FOCUS . 15)
                                     (:HIT-TEST . 16) (:ICCPROF-CHANGED . 17)
                                     (:DISPLAY-CHANGED . 18))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-WINDOW-EVENT-ID '(:ENUM (NIL :ID 94)))
    (PROGN
     (DEFPARAMETER +SDL-DISPLAYEVENT-NONE+ 0)
     (DEFPARAMETER +SDL-DISPLAYEVENT-ORIENTATION+ 1)
     (DEFPARAMETER +SDL-DISPLAYEVENT-CONNECTED+ 2)
     (DEFPARAMETER +SDL-DISPLAYEVENT-DISCONNECTED+ 3)
     (DEFPARAMETER +SDL-DISPLAYEVENT-MOVED+ 4)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8918 95
                                   '((:NONE . 0) (:ORIENTATION . 1)
                                     (:CONNECTED . 2) (:DISCONNECTED . 3)
                                     (:MOVED . 4))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-DISPLAY-EVENT-ID '(:ENUM (NIL :ID 95)))
    (PROGN
     (DEFPARAMETER +SDL-ORIENTATION-UNKNOWN+ 0)
     (DEFPARAMETER +SDL-ORIENTATION-LANDSCAPE+ 1)
     (DEFPARAMETER +SDL-ORIENTATION-LANDSCAPE-FLIPPED+ 2)
     (DEFPARAMETER +SDL-ORIENTATION-PORTRAIT+ 3)
     (DEFPARAMETER +SDL-ORIENTATION-PORTRAIT-FLIPPED+ 4)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8919 96
                                   '((:UNKNOWN . 0) (:LANDSCAPE . 1)
                                     (:LANDSCAPE-FLIPPED . 2) (:PORTRAIT . 3)
                                     (:PORTRAIT-FLIPPED . 4))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-DISPLAY-ORIENTATION
                                   '(:ENUM (NIL :ID 96)))
    (PROGN
     (DEFPARAMETER +SDL-FLASH-CANCEL+ 0)
     (DEFPARAMETER +SDL-FLASH-BRIEFLY+ 1)
     (DEFPARAMETER +SDL-FLASH-UNTIL-FOCUSED+ 2)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8920 97
                                   '((:CANCEL . 0) (:BRIEFLY . 1)
                                     (:UNTIL-FOCUSED . 2))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-FLASH-OPERATION '(:ENUM (NIL :ID 97)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-GL-CONTEXT '(:POINTER :VOID))
    (PROGN
     (DEFPARAMETER +SDL-GL-RED-SIZE+ 0)
     (DEFPARAMETER +SDL-GL-GREEN-SIZE+ 1)
     (DEFPARAMETER +SDL-GL-BLUE-SIZE+ 2)
     (DEFPARAMETER +SDL-GL-ALPHA-SIZE+ 3)
     (DEFPARAMETER +SDL-GL-BUFFER-SIZE+ 4)
     (DEFPARAMETER +SDL-GL-DOUBLEBUFFER+ 5)
     (DEFPARAMETER +SDL-GL-DEPTH-SIZE+ 6)
     (DEFPARAMETER +SDL-GL-STENCIL-SIZE+ 7)
     (DEFPARAMETER +SDL-GL-ACCUM-RED-SIZE+ 8)
     (DEFPARAMETER +SDL-GL-ACCUM-GREEN-SIZE+ 9)
     (DEFPARAMETER +SDL-GL-ACCUM-BLUE-SIZE+ 10)
     (DEFPARAMETER +SDL-GL-ACCUM-ALPHA-SIZE+ 11)
     (DEFPARAMETER +SDL-GL-STEREO+ 12)
     (DEFPARAMETER +SDL-GL-MULTISAMPLEBUFFERS+ 13)
     (DEFPARAMETER +SDL-GL-MULTISAMPLESAMPLES+ 14)
     (DEFPARAMETER +SDL-GL-ACCELERATED-VISUAL+ 15)
     (DEFPARAMETER +SDL-GL-RETAINED-BACKING+ 16)
     (DEFPARAMETER +SDL-GL-CONTEXT-MAJOR-VERSION+ 17)
     (DEFPARAMETER +SDL-GL-CONTEXT-MINOR-VERSION+ 18)
     (DEFPARAMETER +SDL-GL-CONTEXT-EGL+ 19)
     (DEFPARAMETER +SDL-GL-CONTEXT-FLAGS+ 20)
     (DEFPARAMETER +SDL-GL-CONTEXT-PROFILE-MASK+ 21)
     (DEFPARAMETER +SDL-GL-SHARE-WITH-CURRENT-CONTEXT+ 22)
     (DEFPARAMETER +SDL-GL-FRAMEBUFFER-SRGB-CAPABLE+ 23)
     (DEFPARAMETER +SDL-GL-CONTEXT-RELEASE-BEHAVIOR+ 24)
     (DEFPARAMETER +SDL-GL-CONTEXT-RESET-NOTIFICATION+ 25)
     (DEFPARAMETER +SDL-GL-CONTEXT-NO-ERROR+ 26)
     (DEFPARAMETER +SDL-GL-FLOATBUFFERS+ 27)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8921 98
                                   '((:RED-SIZE . 0) (:GREEN-SIZE . 1)
                                     (:BLUE-SIZE . 2) (:ALPHA-SIZE . 3)
                                     (:BUFFER-SIZE . 4) (:DOUBLEBUFFER . 5)
                                     (:DEPTH-SIZE . 6) (:STENCIL-SIZE . 7)
                                     (:ACCUM-RED-SIZE . 8)
                                     (:ACCUM-GREEN-SIZE . 9)
                                     (:ACCUM-BLUE-SIZE . 10)
                                     (:ACCUM-ALPHA-SIZE . 11) (:STEREO . 12)
                                     (:MULTISAMPLEBUFFERS . 13)
                                     (:MULTISAMPLESAMPLES . 14)
                                     (:ACCELERATED-VISUAL . 15)
                                     (:RETAINED-BACKING . 16)
                                     (:CONTEXT-MAJOR-VERSION . 17)
                                     (:CONTEXT-MINOR-VERSION . 18)
                                     (:CONTEXT-EGL . 19) (:CONTEXT-FLAGS . 20)
                                     (:CONTEXT-PROFILE-MASK . 21)
                                     (:SHARE-WITH-CURRENT-CONTEXT . 22)
                                     (:FRAMEBUFFER-SRGB-CAPABLE . 23)
                                     (:CONTEXT-RELEASE-BEHAVIOR . 24)
                                     (:CONTEXT-RESET-NOTIFICATION . 25)
                                     (:CONTEXT-NO-ERROR . 26)
                                     (:FLOATBUFFERS . 27))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-G-LATTR '(:ENUM (NIL :ID 98)))
    (PROGN
     (DEFPARAMETER +SDL-GL-CONTEXT-PROFILE-CORE+ 1)
     (DEFPARAMETER +SDL-GL-CONTEXT-PROFILE-COMPATIBILITY+ 2)
     (DEFPARAMETER +SDL-GL-CONTEXT-PROFILE-ES+ 4)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8922 99
                                   '((:CORE . 1) (:COMPATIBILITY . 2)
                                     (:ES . 4))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-G-LPROFILE '(:ENUM (NIL :ID 99)))
    (PROGN
     (DEFPARAMETER +SDL-GL-CONTEXT-DEBUG-FLAG+ 1)
     (DEFPARAMETER +SDL-GL-CONTEXT-FORWARD-COMPATIBLE-FLAG+ 2)
     (DEFPARAMETER +SDL-GL-CONTEXT-ROBUST-ACCESS-FLAG+ 4)
     (DEFPARAMETER +SDL-GL-CONTEXT-RESET-ISOLATION-FLAG+ 8)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8923 100
                                   '((:DEBUG-FLAG . 1)
                                     (:FORWARD-COMPATIBLE-FLAG . 2)
                                     (:ROBUST-ACCESS-FLAG . 4)
                                     (:RESET-ISOLATION-FLAG . 8))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-G-LCONTEXT-FLAG '(:ENUM (NIL :ID 100)))
    (PROGN
     (DEFPARAMETER +SDL-GL-CONTEXT-RELEASE-BEHAVIOR-NONE+ 0)
     (DEFPARAMETER +SDL-GL-CONTEXT-RELEASE-BEHAVIOR-FLUSH+ 1)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8924 101
                                   '((:NONE . 0) (:FLUSH . 1))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-G-LCONTEXT-RELEASE-FLAG
                                   '(:ENUM (NIL :ID 101)))
    (PROGN
     (DEFPARAMETER +SDL-GL-CONTEXT-RESET-NO-NOTIFICATION+ 0)
     (DEFPARAMETER +SDL-GL-CONTEXT-RESET-LOSE-CONTEXT+ 1)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8925 102
                                   '((:NO-NOTIFICATION . 0)
                                     (:LOSE-CONTEXT . 1))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-GL-CONTEXT-RESET-NOTIFICATION
                                   '(:ENUM (NIL :ID 102)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-NUM-VIDEO-DRIVERS "SDL_GetNumVideoDrivers") ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-VIDEO-DRIVER "SDL_GetVideoDriver") '(:STRING) '((|index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-VIDEO-INIT "SDL_VideoInit") ':INT
                                      '((|driver_name| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-VIDEO-QUIT "SDL_VideoQuit") ':VOID
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-CURRENT-VIDEO-DRIVER "SDL_GetCurrentVideoDriver") '(:STRING)
     'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-NUM-VIDEO-DISPLAYS "SDL_GetNumVideoDisplays") ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-DISPLAY-NAME "SDL_GetDisplayName") '(:STRING)
     '((|displayIndex| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-DISPLAY-BOUNDS "SDL_GetDisplayBounds") ':INT
     '((|displayIndex| :INT) (|rect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-DISPLAY-USABLE-BOUNDS "SDL_GetDisplayUsableBounds") ':INT
     '((|displayIndex| :INT) (|rect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-DISPLAY-DPI "SDL_GetDisplayDPI") ':INT
     '((|displayIndex| :INT) (|ddpi| (:POINTER :FLOAT))
       (|hdpi| (:POINTER :FLOAT)) (|vdpi| (:POINTER :FLOAT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-DISPLAY-ORIENTATION "SDL_GetDisplayOrientation")
     'SDL-DISPLAY-ORIENTATION '((|displayIndex| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-NUM-DISPLAY-MODES "SDL_GetNumDisplayModes") ':INT
     '((|displayIndex| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-DISPLAY-MODE "SDL_GetDisplayMode") ':INT
     '((|displayIndex| :INT) (|modeIndex| :INT)
       (|mode| (:POINTER SDL-DISPLAY-MODE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-DESKTOP-DISPLAY-MODE "SDL_GetDesktopDisplayMode") ':INT
     '((|displayIndex| :INT) (|mode| (:POINTER SDL-DISPLAY-MODE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-CURRENT-DISPLAY-MODE "SDL_GetCurrentDisplayMode") ':INT
     '((|displayIndex| :INT) (|mode| (:POINTER SDL-DISPLAY-MODE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-CLOSEST-DISPLAY-MODE "SDL_GetClosestDisplayMode")
     '(:POINTER SDL-DISPLAY-MODE)
     '((|displayIndex| :INT) (|mode| (:POINTER SDL-DISPLAY-MODE))
       (|closest| (:POINTER SDL-DISPLAY-MODE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-POINT-DISPLAY-INDEX "SDL_GetPointDisplayIndex") ':INT
     '((|point| (:POINTER SDL-POINT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-RECT-DISPLAY-INDEX "SDL_GetRectDisplayIndex") ':INT
     '((|rect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-DISPLAY-INDEX "SDL_GetWindowDisplayIndex") ':INT
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-DISPLAY-MODE "SDL_SetWindowDisplayMode") ':INT
     '((|window| (:POINTER SDL-WINDOW)) (|mode| (:POINTER SDL-DISPLAY-MODE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-DISPLAY-MODE "SDL_GetWindowDisplayMode") ':INT
     '((|window| (:POINTER SDL-WINDOW)) (|mode| (:POINTER SDL-DISPLAY-MODE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-ICC-PROFILE "SDL_GetWindowICCProfile") '(:POINTER :VOID)
     '((|window| (:POINTER SDL-WINDOW)) (|size| (:POINTER SIZE-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-PIXEL-FORMAT "SDL_GetWindowPixelFormat") 'UINT32
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-CREATE-WINDOW "SDL_CreateWindow")
                                      '(:POINTER SDL-WINDOW)
                                      '((|title| (:STRING)) (|x| :INT)
                                        (|y| :INT) (|w| :INT) (|h| :INT)
                                        (|flags| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CREATE-WINDOW-FROM "SDL_CreateWindowFrom") '(:POINTER SDL-WINDOW)
     '((|data| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-WINDOW-ID "SDL_GetWindowID")
                                      'UINT32
                                      '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-FROM-ID "SDL_GetWindowFromID") '(:POINTER SDL-WINDOW)
     '((|id| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-FLAGS "SDL_GetWindowFlags") 'UINT32
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-TITLE "SDL_SetWindowTitle") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|title| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-TITLE "SDL_GetWindowTitle") '(:STRING)
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-ICON "SDL_SetWindowIcon") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|icon| (:POINTER SDL-SURFACE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-DATA "SDL_SetWindowData") '(:POINTER :VOID)
     '((|window| (:POINTER SDL-WINDOW)) (|name| (:STRING))
       (|userdata| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-DATA "SDL_GetWindowData") '(:POINTER :VOID)
     '((|window| (:POINTER SDL-WINDOW)) (|name| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-POSITION "SDL_SetWindowPosition") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|x| :INT) (|y| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-POSITION "SDL_GetWindowPosition") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|x| (:POINTER :INT))
       (|y| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-SIZE "SDL_SetWindowSize") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|w| :INT) (|h| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-SIZE "SDL_GetWindowSize") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|w| (:POINTER :INT))
       (|h| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-BORDERS-SIZE "SDL_GetWindowBordersSize") ':INT
     '((|window| (:POINTER SDL-WINDOW)) (|top| (:POINTER :INT))
       (|left| (:POINTER :INT)) (|bottom| (:POINTER :INT))
       (|right| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-SIZE-IN-PIXELS "SDL_GetWindowSizeInPixels") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|w| (:POINTER :INT))
       (|h| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-MINIMUM-SIZE "SDL_SetWindowMinimumSize") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|min_w| :INT) (|min_h| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-MINIMUM-SIZE "SDL_GetWindowMinimumSize") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|w| (:POINTER :INT))
       (|h| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-MAXIMUM-SIZE "SDL_SetWindowMaximumSize") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|max_w| :INT) (|max_h| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-MAXIMUM-SIZE "SDL_GetWindowMaximumSize") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|w| (:POINTER :INT))
       (|h| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-BORDERED "SDL_SetWindowBordered") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|bordered| SDL-BOOL)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-RESIZABLE "SDL_SetWindowResizable") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|resizable| SDL-BOOL)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-ALWAYS-ON-TOP "SDL_SetWindowAlwaysOnTop") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|on_top| SDL-BOOL)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SHOW-WINDOW "SDL_ShowWindow")
                                      ':VOID
                                      '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HIDE-WINDOW "SDL_HideWindow")
                                      ':VOID
                                      '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-RAISE-WINDOW "SDL_RaiseWindow")
                                      ':VOID
                                      '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-MAXIMIZE-WINDOW "SDL_MaximizeWindow") ':VOID
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-MINIMIZE-WINDOW "SDL_MinimizeWindow") ':VOID
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-RESTORE-WINDOW "SDL_RestoreWindow")
                                      ':VOID
                                      '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-FULLSCREEN "SDL_SetWindowFullscreen") ':INT
     '((|window| (:POINTER SDL-WINDOW)) (|flags| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAS-WINDOW-SURFACE "SDL_HasWindowSurface") 'SDL-BOOL
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-SURFACE "SDL_GetWindowSurface") '(:POINTER SDL-SURFACE)
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-UPDATE-WINDOW-SURFACE "SDL_UpdateWindowSurface") ':INT
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-UPDATE-WINDOW-SURFACE-RECTS "SDL_UpdateWindowSurfaceRects") ':INT
     '((|window| (:POINTER SDL-WINDOW)) (|rects| (:POINTER SDL-RECT))
       (|numrects| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-DESTROY-WINDOW-SURFACE "SDL_DestroyWindowSurface") ':INT
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-GRAB "SDL_SetWindowGrab") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|grabbed| SDL-BOOL)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-KEYBOARD-GRAB "SDL_SetWindowKeyboardGrab") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|grabbed| SDL-BOOL)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-MOUSE-GRAB "SDL_SetWindowMouseGrab") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|grabbed| SDL-BOOL)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-GRAB "SDL_GetWindowGrab") 'SDL-BOOL
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-KEYBOARD-GRAB "SDL_GetWindowKeyboardGrab") 'SDL-BOOL
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-MOUSE-GRAB "SDL_GetWindowMouseGrab") 'SDL-BOOL
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-GRABBED-WINDOW "SDL_GetGrabbedWindow") '(:POINTER SDL-WINDOW)
     'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-MOUSE-RECT "SDL_SetWindowMouseRect") ':INT
     '((|window| (:POINTER SDL-WINDOW)) (|rect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-MOUSE-RECT "SDL_GetWindowMouseRect") '(:POINTER SDL-RECT)
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-BRIGHTNESS "SDL_SetWindowBrightness") ':INT
     '((|window| (:POINTER SDL-WINDOW)) (|brightness| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-BRIGHTNESS "SDL_GetWindowBrightness") ':FLOAT
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-OPACITY "SDL_SetWindowOpacity") ':INT
     '((|window| (:POINTER SDL-WINDOW)) (|opacity| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-OPACITY "SDL_GetWindowOpacity") ':INT
     '((|window| (:POINTER SDL-WINDOW)) (|out_opacity| (:POINTER :FLOAT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-MODAL-FOR "SDL_SetWindowModalFor") ':INT
     '((|modal_window| (:POINTER SDL-WINDOW))
       (|parent_window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-INPUT-FOCUS "SDL_SetWindowInputFocus") ':INT
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-GAMMA-RAMP "SDL_SetWindowGammaRamp") ':INT
     '((|window| (:POINTER SDL-WINDOW)) (|red| (:POINTER UINT16))
       (|green| (:POINTER UINT16)) (|blue| (:POINTER UINT16))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-WINDOW-GAMMA-RAMP "SDL_GetWindowGammaRamp") ':INT
     '((|window| (:POINTER SDL-WINDOW)) (|red| (:POINTER UINT16))
       (|green| (:POINTER UINT16)) (|blue| (:POINTER UINT16))))
    (PROGN
     (DEFPARAMETER +SDL-HITTEST-NORMAL+ 0)
     (DEFPARAMETER +SDL-HITTEST-DRAGGABLE+ 1)
     (DEFPARAMETER +SDL-HITTEST-RESIZE-TOPLEFT+ 2)
     (DEFPARAMETER +SDL-HITTEST-RESIZE-TOP+ 3)
     (DEFPARAMETER +SDL-HITTEST-RESIZE-TOPRIGHT+ 4)
     (DEFPARAMETER +SDL-HITTEST-RESIZE-RIGHT+ 5)
     (DEFPARAMETER +SDL-HITTEST-RESIZE-BOTTOMRIGHT+ 6)
     (DEFPARAMETER +SDL-HITTEST-RESIZE-BOTTOM+ 7)
     (DEFPARAMETER +SDL-HITTEST-RESIZE-BOTTOMLEFT+ 8)
     (DEFPARAMETER +SDL-HITTEST-RESIZE-LEFT+ 9)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8926 103
                                   '((:NORMAL . 0) (:DRAGGABLE . 1)
                                     (:RESIZE-TOPLEFT . 2) (:RESIZE-TOP . 3)
                                     (:RESIZE-TOPRIGHT . 4) (:RESIZE-RIGHT . 5)
                                     (:RESIZE-BOTTOMRIGHT . 6)
                                     (:RESIZE-BOTTOM . 7)
                                     (:RESIZE-BOTTOMLEFT . 8)
                                     (:RESIZE-LEFT . 9))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-HIT-TEST-RESULT '(:ENUM (NIL :ID 103)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-HIT-TEST '(:POINTER (:VOID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-HIT-TEST "SDL_SetWindowHitTest") ':INT
     '((|window| (:POINTER SDL-WINDOW)) (|callback| SDL-HIT-TEST)
       (|callback_data| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FLASH-WINDOW "SDL_FlashWindow")
                                      ':INT
                                      '((|window| (:POINTER SDL-WINDOW))
                                        (|operation| SDL-FLASH-OPERATION)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-DESTROY-WINDOW "SDL_DestroyWindow")
                                      ':VOID
                                      '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-IS-SCREEN-SAVER-ENABLED "SDL_IsScreenSaverEnabled") 'SDL-BOOL 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-ENABLE-SCREEN-SAVER "SDL_EnableScreenSaver") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-DISABLE-SCREEN-SAVER "SDL_DisableScreenSaver") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GL-LOAD-LIBRARY "SDL_GL_LoadLibrary") ':INT '((|path| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GL-GET-PROC-ADDRESS "SDL_GL_GetProcAddress") '(:POINTER :VOID)
     '((|proc| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GL-UNLOAD-LIBRARY "SDL_GL_UnloadLibrary") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GL-EXTENSION-SUPPORTED "SDL_GL_ExtensionSupported") 'SDL-BOOL
     '((|extension| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GL-RESET-ATTRIBUTES "SDL_GL_ResetAttributes") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GL-SET-ATTRIBUTE "SDL_GL_SetAttribute") ':INT
     '((|attr| SDL-G-LATTR) (|value| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GL-GET-ATTRIBUTE "SDL_GL_GetAttribute") ':INT
     '((|attr| SDL-G-LATTR) (|value| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GL-CREATE-CONTEXT "SDL_GL_CreateContext") 'SDL-GL-CONTEXT
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GL-MAKE-CURRENT "SDL_GL_MakeCurrent") ':INT
     '((|window| (:POINTER SDL-WINDOW)) (|context| SDL-GL-CONTEXT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GL-GET-CURRENT-WINDOW "SDL_GL_GetCurrentWindow")
     '(:POINTER SDL-WINDOW) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GL-GET-CURRENT-CONTEXT "SDL_GL_GetCurrentContext") 'SDL-GL-CONTEXT
     'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GL-GET-DRAWABLE-SIZE "SDL_GL_GetDrawableSize") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|w| (:POINTER :INT))
       (|h| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GL-SET-SWAP-INTERVAL "SDL_GL_SetSwapInterval") ':INT
     '((|interval| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GL-GET-SWAP-INTERVAL "SDL_GL_GetSwapInterval") ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GL-SWAP-WINDOW "SDL_GL_SwapWindow")
                                      ':VOID
                                      '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GL-DELETE-CONTEXT "SDL_GL_DeleteContext") ':VOID
     '((|context| SDL-GL-CONTEXT)))
    (PROGN
     (DEFPARAMETER +SDL-SCANCODE-UNKNOWN+ 0)
     (DEFPARAMETER +SDL-SCANCODE-A+ 4)
     (DEFPARAMETER +SDL-SCANCODE-B+ 5)
     (DEFPARAMETER +SDL-SCANCODE-C+ 6)
     (DEFPARAMETER +SDL-SCANCODE-D+ 7)
     (DEFPARAMETER +SDL-SCANCODE-E+ 8)
     (DEFPARAMETER +SDL-SCANCODE-F+ 9)
     (DEFPARAMETER +SDL-SCANCODE-G+ 10)
     (DEFPARAMETER +SDL-SCANCODE-H+ 11)
     (DEFPARAMETER +SDL-SCANCODE-I+ 12)
     (DEFPARAMETER +SDL-SCANCODE-J+ 13)
     (DEFPARAMETER +SDL-SCANCODE-K+ 14)
     (DEFPARAMETER +SDL-SCANCODE-L+ 15)
     (DEFPARAMETER +SDL-SCANCODE-M+ 16)
     (DEFPARAMETER +SDL-SCANCODE-N+ 17)
     (DEFPARAMETER +SDL-SCANCODE-O+ 18)
     (DEFPARAMETER +SDL-SCANCODE-P+ 19)
     (DEFPARAMETER +SDL-SCANCODE-Q+ 20)
     (DEFPARAMETER +SDL-SCANCODE-R+ 21)
     (DEFPARAMETER +SDL-SCANCODE-S+ 22)
     (DEFPARAMETER +SDL-SCANCODE-T+ 23)
     (DEFPARAMETER +SDL-SCANCODE-U+ 24)
     (DEFPARAMETER +SDL-SCANCODE-V+ 25)
     (DEFPARAMETER +SDL-SCANCODE-W+ 26)
     (DEFPARAMETER +SDL-SCANCODE-X+ 27)
     (DEFPARAMETER +SDL-SCANCODE-Y+ 28)
     (DEFPARAMETER +SDL-SCANCODE-Z+ 29)
     (DEFPARAMETER +SDL-SCANCODE-1+ 30)
     (DEFPARAMETER +SDL-SCANCODE-2+ 31)
     (DEFPARAMETER +SDL-SCANCODE-3+ 32)
     (DEFPARAMETER +SDL-SCANCODE-4+ 33)
     (DEFPARAMETER +SDL-SCANCODE-5+ 34)
     (DEFPARAMETER +SDL-SCANCODE-6+ 35)
     (DEFPARAMETER +SDL-SCANCODE-7+ 36)
     (DEFPARAMETER +SDL-SCANCODE-8+ 37)
     (DEFPARAMETER +SDL-SCANCODE-9+ 38)
     (DEFPARAMETER +SDL-SCANCODE-0+ 39)
     (DEFPARAMETER +SDL-SCANCODE-RETURN+ 40)
     (DEFPARAMETER +SDL-SCANCODE-ESCAPE+ 41)
     (DEFPARAMETER +SDL-SCANCODE-BACKSPACE+ 42)
     (DEFPARAMETER +SDL-SCANCODE-TAB+ 43)
     (DEFPARAMETER +SDL-SCANCODE-SPACE+ 44)
     (DEFPARAMETER +SDL-SCANCODE-MINUS+ 45)
     (DEFPARAMETER +SDL-SCANCODE-EQUALS+ 46)
     (DEFPARAMETER +SDL-SCANCODE-LEFTBRACKET+ 47)
     (DEFPARAMETER +SDL-SCANCODE-RIGHTBRACKET+ 48)
     (DEFPARAMETER +SDL-SCANCODE-BACKSLASH+ 49)
     (DEFPARAMETER +SDL-SCANCODE-NONUSHASH+ 50)
     (DEFPARAMETER +SDL-SCANCODE-SEMICOLON+ 51)
     (DEFPARAMETER +SDL-SCANCODE-APOSTROPHE+ 52)
     (DEFPARAMETER +SDL-SCANCODE-GRAVE+ 53)
     (DEFPARAMETER +SDL-SCANCODE-COMMA+ 54)
     (DEFPARAMETER +SDL-SCANCODE-PERIOD+ 55)
     (DEFPARAMETER +SDL-SCANCODE-SLASH+ 56)
     (DEFPARAMETER +SDL-SCANCODE-CAPSLOCK+ 57)
     (DEFPARAMETER +SDL-SCANCODE-F1+ 58)
     (DEFPARAMETER +SDL-SCANCODE-F2+ 59)
     (DEFPARAMETER +SDL-SCANCODE-F3+ 60)
     (DEFPARAMETER +SDL-SCANCODE-F4+ 61)
     (DEFPARAMETER +SDL-SCANCODE-F5+ 62)
     (DEFPARAMETER +SDL-SCANCODE-F6+ 63)
     (DEFPARAMETER +SDL-SCANCODE-F7+ 64)
     (DEFPARAMETER +SDL-SCANCODE-F8+ 65)
     (DEFPARAMETER +SDL-SCANCODE-F9+ 66)
     (DEFPARAMETER +SDL-SCANCODE-F10+ 67)
     (DEFPARAMETER +SDL-SCANCODE-F11+ 68)
     (DEFPARAMETER +SDL-SCANCODE-F12+ 69)
     (DEFPARAMETER +SDL-SCANCODE-PRINTSCREEN+ 70)
     (DEFPARAMETER +SDL-SCANCODE-SCROLLLOCK+ 71)
     (DEFPARAMETER +SDL-SCANCODE-PAUSE+ 72)
     (DEFPARAMETER +SDL-SCANCODE-INSERT+ 73)
     (DEFPARAMETER +SDL-SCANCODE-HOME+ 74)
     (DEFPARAMETER +SDL-SCANCODE-PAGEUP+ 75)
     (DEFPARAMETER +SDL-SCANCODE-DELETE+ 76)
     (DEFPARAMETER +SDL-SCANCODE-END+ 77)
     (DEFPARAMETER +SDL-SCANCODE-PAGEDOWN+ 78)
     (DEFPARAMETER +SDL-SCANCODE-RIGHT+ 79)
     (DEFPARAMETER +SDL-SCANCODE-LEFT+ 80)
     (DEFPARAMETER +SDL-SCANCODE-DOWN+ 81)
     (DEFPARAMETER +SDL-SCANCODE-UP+ 82)
     (DEFPARAMETER +SDL-SCANCODE-NUMLOCKCLEAR+ 83)
     (DEFPARAMETER +SDL-SCANCODE-KP-DIVIDE+ 84)
     (DEFPARAMETER +SDL-SCANCODE-KP-MULTIPLY+ 85)
     (DEFPARAMETER +SDL-SCANCODE-KP-MINUS+ 86)
     (DEFPARAMETER +SDL-SCANCODE-KP-PLUS+ 87)
     (DEFPARAMETER +SDL-SCANCODE-KP-ENTER+ 88)
     (DEFPARAMETER +SDL-SCANCODE-KP-1+ 89)
     (DEFPARAMETER +SDL-SCANCODE-KP-2+ 90)
     (DEFPARAMETER +SDL-SCANCODE-KP-3+ 91)
     (DEFPARAMETER +SDL-SCANCODE-KP-4+ 92)
     (DEFPARAMETER +SDL-SCANCODE-KP-5+ 93)
     (DEFPARAMETER +SDL-SCANCODE-KP-6+ 94)
     (DEFPARAMETER +SDL-SCANCODE-KP-7+ 95)
     (DEFPARAMETER +SDL-SCANCODE-KP-8+ 96)
     (DEFPARAMETER +SDL-SCANCODE-KP-9+ 97)
     (DEFPARAMETER +SDL-SCANCODE-KP-0+ 98)
     (DEFPARAMETER +SDL-SCANCODE-KP-PERIOD+ 99)
     (DEFPARAMETER +SDL-SCANCODE-NONUSBACKSLASH+ 100)
     (DEFPARAMETER +SDL-SCANCODE-APPLICATION+ 101)
     (DEFPARAMETER +SDL-SCANCODE-POWER+ 102)
     (DEFPARAMETER +SDL-SCANCODE-KP-EQUALS+ 103)
     (DEFPARAMETER +SDL-SCANCODE-F13+ 104)
     (DEFPARAMETER +SDL-SCANCODE-F14+ 105)
     (DEFPARAMETER +SDL-SCANCODE-F15+ 106)
     (DEFPARAMETER +SDL-SCANCODE-F16+ 107)
     (DEFPARAMETER +SDL-SCANCODE-F17+ 108)
     (DEFPARAMETER +SDL-SCANCODE-F18+ 109)
     (DEFPARAMETER +SDL-SCANCODE-F19+ 110)
     (DEFPARAMETER +SDL-SCANCODE-F20+ 111)
     (DEFPARAMETER +SDL-SCANCODE-F21+ 112)
     (DEFPARAMETER +SDL-SCANCODE-F22+ 113)
     (DEFPARAMETER +SDL-SCANCODE-F23+ 114)
     (DEFPARAMETER +SDL-SCANCODE-F24+ 115)
     (DEFPARAMETER +SDL-SCANCODE-EXECUTE+ 116)
     (DEFPARAMETER +SDL-SCANCODE-HELP+ 117)
     (DEFPARAMETER +SDL-SCANCODE-MENU+ 118)
     (DEFPARAMETER +SDL-SCANCODE-SELECT+ 119)
     (DEFPARAMETER +SDL-SCANCODE-STOP+ 120)
     (DEFPARAMETER +SDL-SCANCODE-AGAIN+ 121)
     (DEFPARAMETER +SDL-SCANCODE-UNDO+ 122)
     (DEFPARAMETER +SDL-SCANCODE-CUT+ 123)
     (DEFPARAMETER +SDL-SCANCODE-COPY+ 124)
     (DEFPARAMETER +SDL-SCANCODE-PASTE+ 125)
     (DEFPARAMETER +SDL-SCANCODE-FIND+ 126)
     (DEFPARAMETER +SDL-SCANCODE-MUTE+ 127)
     (DEFPARAMETER +SDL-SCANCODE-VOLUMEUP+ 128)
     (DEFPARAMETER +SDL-SCANCODE-VOLUMEDOWN+ 129)
     (DEFPARAMETER +SDL-SCANCODE-KP-COMMA+ 133)
     (DEFPARAMETER +SDL-SCANCODE-KP-EQUALSAS400+ 134)
     (DEFPARAMETER +SDL-SCANCODE-INTERNATIONAL1+ 135)
     (DEFPARAMETER +SDL-SCANCODE-INTERNATIONAL2+ 136)
     (DEFPARAMETER +SDL-SCANCODE-INTERNATIONAL3+ 137)
     (DEFPARAMETER +SDL-SCANCODE-INTERNATIONAL4+ 138)
     (DEFPARAMETER +SDL-SCANCODE-INTERNATIONAL5+ 139)
     (DEFPARAMETER +SDL-SCANCODE-INTERNATIONAL6+ 140)
     (DEFPARAMETER +SDL-SCANCODE-INTERNATIONAL7+ 141)
     (DEFPARAMETER +SDL-SCANCODE-INTERNATIONAL8+ 142)
     (DEFPARAMETER +SDL-SCANCODE-INTERNATIONAL9+ 143)
     (DEFPARAMETER +SDL-SCANCODE-LANG1+ 144)
     (DEFPARAMETER +SDL-SCANCODE-LANG2+ 145)
     (DEFPARAMETER +SDL-SCANCODE-LANG3+ 146)
     (DEFPARAMETER +SDL-SCANCODE-LANG4+ 147)
     (DEFPARAMETER +SDL-SCANCODE-LANG5+ 148)
     (DEFPARAMETER +SDL-SCANCODE-LANG6+ 149)
     (DEFPARAMETER +SDL-SCANCODE-LANG7+ 150)
     (DEFPARAMETER +SDL-SCANCODE-LANG8+ 151)
     (DEFPARAMETER +SDL-SCANCODE-LANG9+ 152)
     (DEFPARAMETER +SDL-SCANCODE-ALTERASE+ 153)
     (DEFPARAMETER +SDL-SCANCODE-SYSREQ+ 154)
     (DEFPARAMETER +SDL-SCANCODE-CANCEL+ 155)
     (DEFPARAMETER +SDL-SCANCODE-CLEAR+ 156)
     (DEFPARAMETER +SDL-SCANCODE-PRIOR+ 157)
     (DEFPARAMETER +SDL-SCANCODE-RETURN2+ 158)
     (DEFPARAMETER +SDL-SCANCODE-SEPARATOR+ 159)
     (DEFPARAMETER +SDL-SCANCODE-OUT+ 160)
     (DEFPARAMETER +SDL-SCANCODE-OPER+ 161)
     (DEFPARAMETER +SDL-SCANCODE-CLEARAGAIN+ 162)
     (DEFPARAMETER +SDL-SCANCODE-CRSEL+ 163)
     (DEFPARAMETER +SDL-SCANCODE-EXSEL+ 164)
     (DEFPARAMETER +SDL-SCANCODE-KP-00+ 176)
     (DEFPARAMETER +SDL-SCANCODE-KP-000+ 177)
     (DEFPARAMETER +SDL-SCANCODE-THOUSANDSSEPARATOR+ 178)
     (DEFPARAMETER +SDL-SCANCODE-DECIMALSEPARATOR+ 179)
     (DEFPARAMETER +SDL-SCANCODE-CURRENCYUNIT+ 180)
     (DEFPARAMETER +SDL-SCANCODE-CURRENCYSUBUNIT+ 181)
     (DEFPARAMETER +SDL-SCANCODE-KP-LEFTPAREN+ 182)
     (DEFPARAMETER +SDL-SCANCODE-KP-RIGHTPAREN+ 183)
     (DEFPARAMETER +SDL-SCANCODE-KP-LEFTBRACE+ 184)
     (DEFPARAMETER +SDL-SCANCODE-KP-RIGHTBRACE+ 185)
     (DEFPARAMETER +SDL-SCANCODE-KP-TAB+ 186)
     (DEFPARAMETER +SDL-SCANCODE-KP-BACKSPACE+ 187)
     (DEFPARAMETER +SDL-SCANCODE-KP-A+ 188)
     (DEFPARAMETER +SDL-SCANCODE-KP-B+ 189)
     (DEFPARAMETER +SDL-SCANCODE-KP-C+ 190)
     (DEFPARAMETER +SDL-SCANCODE-KP-D+ 191)
     (DEFPARAMETER +SDL-SCANCODE-KP-E+ 192)
     (DEFPARAMETER +SDL-SCANCODE-KP-F+ 193)
     (DEFPARAMETER +SDL-SCANCODE-KP-XOR+ 194)
     (DEFPARAMETER +SDL-SCANCODE-KP-POWER+ 195)
     (DEFPARAMETER +SDL-SCANCODE-KP-PERCENT+ 196)
     (DEFPARAMETER +SDL-SCANCODE-KP-LESS+ 197)
     (DEFPARAMETER +SDL-SCANCODE-KP-GREATER+ 198)
     (DEFPARAMETER +SDL-SCANCODE-KP-AMPERSAND+ 199)
     (DEFPARAMETER +SDL-SCANCODE-KP-DBLAMPERSAND+ 200)
     (DEFPARAMETER +SDL-SCANCODE-KP-VERTICALBAR+ 201)
     (DEFPARAMETER +SDL-SCANCODE-KP-DBLVERTICALBAR+ 202)
     (DEFPARAMETER +SDL-SCANCODE-KP-COLON+ 203)
     (DEFPARAMETER +SDL-SCANCODE-KP-HASH+ 204)
     (DEFPARAMETER +SDL-SCANCODE-KP-SPACE+ 205)
     (DEFPARAMETER +SDL-SCANCODE-KP-AT+ 206)
     (DEFPARAMETER +SDL-SCANCODE-KP-EXCLAM+ 207)
     (DEFPARAMETER +SDL-SCANCODE-KP-MEMSTORE+ 208)
     (DEFPARAMETER +SDL-SCANCODE-KP-MEMRECALL+ 209)
     (DEFPARAMETER +SDL-SCANCODE-KP-MEMCLEAR+ 210)
     (DEFPARAMETER +SDL-SCANCODE-KP-MEMADD+ 211)
     (DEFPARAMETER +SDL-SCANCODE-KP-MEMSUBTRACT+ 212)
     (DEFPARAMETER +SDL-SCANCODE-KP-MEMMULTIPLY+ 213)
     (DEFPARAMETER +SDL-SCANCODE-KP-MEMDIVIDE+ 214)
     (DEFPARAMETER +SDL-SCANCODE-KP-PLUSMINUS+ 215)
     (DEFPARAMETER +SDL-SCANCODE-KP-CLEAR+ 216)
     (DEFPARAMETER +SDL-SCANCODE-KP-CLEARENTRY+ 217)
     (DEFPARAMETER +SDL-SCANCODE-KP-BINARY+ 218)
     (DEFPARAMETER +SDL-SCANCODE-KP-OCTAL+ 219)
     (DEFPARAMETER +SDL-SCANCODE-KP-DECIMAL+ 220)
     (DEFPARAMETER +SDL-SCANCODE-KP-HEXADECIMAL+ 221)
     (DEFPARAMETER +SDL-SCANCODE-LCTRL+ 224)
     (DEFPARAMETER +SDL-SCANCODE-LSHIFT+ 225)
     (DEFPARAMETER +SDL-SCANCODE-LALT+ 226)
     (DEFPARAMETER +SDL-SCANCODE-LGUI+ 227)
     (DEFPARAMETER +SDL-SCANCODE-RCTRL+ 228)
     (DEFPARAMETER +SDL-SCANCODE-RSHIFT+ 229)
     (DEFPARAMETER +SDL-SCANCODE-RALT+ 230)
     (DEFPARAMETER +SDL-SCANCODE-RGUI+ 231)
     (DEFPARAMETER +SDL-SCANCODE-MODE+ 257)
     (DEFPARAMETER +SDL-SCANCODE-AUDIONEXT+ 258)
     (DEFPARAMETER +SDL-SCANCODE-AUDIOPREV+ 259)
     (DEFPARAMETER +SDL-SCANCODE-AUDIOSTOP+ 260)
     (DEFPARAMETER +SDL-SCANCODE-AUDIOPLAY+ 261)
     (DEFPARAMETER +SDL-SCANCODE-AUDIOMUTE+ 262)
     (DEFPARAMETER +SDL-SCANCODE-MEDIASELECT+ 263)
     (DEFPARAMETER +SDL-SCANCODE-WWW+ 264)
     (DEFPARAMETER +SDL-SCANCODE-MAIL+ 265)
     (DEFPARAMETER +SDL-SCANCODE-CALCULATOR+ 266)
     (DEFPARAMETER +SDL-SCANCODE-COMPUTER+ 267)
     (DEFPARAMETER +SDL-SCANCODE-AC-SEARCH+ 268)
     (DEFPARAMETER +SDL-SCANCODE-AC-HOME+ 269)
     (DEFPARAMETER +SDL-SCANCODE-AC-BACK+ 270)
     (DEFPARAMETER +SDL-SCANCODE-AC-FORWARD+ 271)
     (DEFPARAMETER +SDL-SCANCODE-AC-STOP+ 272)
     (DEFPARAMETER +SDL-SCANCODE-AC-REFRESH+ 273)
     (DEFPARAMETER +SDL-SCANCODE-AC-BOOKMARKS+ 274)
     (DEFPARAMETER +SDL-SCANCODE-BRIGHTNESSDOWN+ 275)
     (DEFPARAMETER +SDL-SCANCODE-BRIGHTNESSUP+ 276)
     (DEFPARAMETER +SDL-SCANCODE-DISPLAYSWITCH+ 277)
     (DEFPARAMETER +SDL-SCANCODE-KBDILLUMTOGGLE+ 278)
     (DEFPARAMETER +SDL-SCANCODE-KBDILLUMDOWN+ 279)
     (DEFPARAMETER +SDL-SCANCODE-KBDILLUMUP+ 280)
     (DEFPARAMETER +SDL-SCANCODE-EJECT+ 281)
     (DEFPARAMETER +SDL-SCANCODE-SLEEP+ 282)
     (DEFPARAMETER +SDL-SCANCODE-APP1+ 283)
     (DEFPARAMETER +SDL-SCANCODE-APP2+ 284)
     (DEFPARAMETER +SDL-SCANCODE-AUDIOREWIND+ 285)
     (DEFPARAMETER +SDL-SCANCODE-AUDIOFASTFORWARD+ 286)
     (DEFPARAMETER +SDL-SCANCODE-SOFTLEFT+ 287)
     (DEFPARAMETER +SDL-SCANCODE-SOFTRIGHT+ 288)
     (DEFPARAMETER +SDL-SCANCODE-CALL+ 289)
     (DEFPARAMETER +SDL-SCANCODE-ENDCALL+ 290)
     (DEFPARAMETER +SDL-NUM-SCANCODES+ 512)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8927 104
                                   '((:SCANCODE-UNKNOWN . 0) (:SCANCODE-A . 4)
                                     (:SCANCODE-B . 5) (:SCANCODE-C . 6)
                                     (:SCANCODE-D . 7) (:SCANCODE-E . 8)
                                     (:SCANCODE-F . 9) (:SCANCODE-G . 10)
                                     (:SCANCODE-H . 11) (:SCANCODE-I . 12)
                                     (:SCANCODE-J . 13) (:SCANCODE-K . 14)
                                     (:SCANCODE-L . 15) (:SCANCODE-M . 16)
                                     (:SCANCODE-N . 17) (:SCANCODE-O . 18)
                                     (:SCANCODE-P . 19) (:SCANCODE-Q . 20)
                                     (:SCANCODE-R . 21) (:SCANCODE-S . 22)
                                     (:SCANCODE-T . 23) (:SCANCODE-U . 24)
                                     (:SCANCODE-V . 25) (:SCANCODE-W . 26)
                                     (:SCANCODE-X . 27) (:SCANCODE-Y . 28)
                                     (:SCANCODE-Z . 29) (:SCANCODE-1 . 30)
                                     (:SCANCODE-2 . 31) (:SCANCODE-3 . 32)
                                     (:SCANCODE-4 . 33) (:SCANCODE-5 . 34)
                                     (:SCANCODE-6 . 35) (:SCANCODE-7 . 36)
                                     (:SCANCODE-8 . 37) (:SCANCODE-9 . 38)
                                     (:SCANCODE-0 . 39) (:SCANCODE-RETURN . 40)
                                     (:SCANCODE-ESCAPE . 41)
                                     (:SCANCODE-BACKSPACE . 42)
                                     (:SCANCODE-TAB . 43)
                                     (:SCANCODE-SPACE . 44)
                                     (:SCANCODE-MINUS . 45)
                                     (:SCANCODE-EQUALS . 46)
                                     (:SCANCODE-LEFTBRACKET . 47)
                                     (:SCANCODE-RIGHTBRACKET . 48)
                                     (:SCANCODE-BACKSLASH . 49)
                                     (:SCANCODE-NONUSHASH . 50)
                                     (:SCANCODE-SEMICOLON . 51)
                                     (:SCANCODE-APOSTROPHE . 52)
                                     (:SCANCODE-GRAVE . 53)
                                     (:SCANCODE-COMMA . 54)
                                     (:SCANCODE-PERIOD . 55)
                                     (:SCANCODE-SLASH . 56)
                                     (:SCANCODE-CAPSLOCK . 57)
                                     (:SCANCODE-F1 . 58) (:SCANCODE-F2 . 59)
                                     (:SCANCODE-F3 . 60) (:SCANCODE-F4 . 61)
                                     (:SCANCODE-F5 . 62) (:SCANCODE-F6 . 63)
                                     (:SCANCODE-F7 . 64) (:SCANCODE-F8 . 65)
                                     (:SCANCODE-F9 . 66) (:SCANCODE-F10 . 67)
                                     (:SCANCODE-F11 . 68) (:SCANCODE-F12 . 69)
                                     (:SCANCODE-PRINTSCREEN . 70)
                                     (:SCANCODE-SCROLLLOCK . 71)
                                     (:SCANCODE-PAUSE . 72)
                                     (:SCANCODE-INSERT . 73)
                                     (:SCANCODE-HOME . 74)
                                     (:SCANCODE-PAGEUP . 75)
                                     (:SCANCODE-DELETE . 76)
                                     (:SCANCODE-END . 77)
                                     (:SCANCODE-PAGEDOWN . 78)
                                     (:SCANCODE-RIGHT . 79)
                                     (:SCANCODE-LEFT . 80)
                                     (:SCANCODE-DOWN . 81) (:SCANCODE-UP . 82)
                                     (:SCANCODE-NUMLOCKCLEAR . 83)
                                     (:SCANCODE-KP-DIVIDE . 84)
                                     (:SCANCODE-KP-MULTIPLY . 85)
                                     (:SCANCODE-KP-MINUS . 86)
                                     (:SCANCODE-KP-PLUS . 87)
                                     (:SCANCODE-KP-ENTER . 88)
                                     (:SCANCODE-KP-1 . 89)
                                     (:SCANCODE-KP-2 . 90)
                                     (:SCANCODE-KP-3 . 91)
                                     (:SCANCODE-KP-4 . 92)
                                     (:SCANCODE-KP-5 . 93)
                                     (:SCANCODE-KP-6 . 94)
                                     (:SCANCODE-KP-7 . 95)
                                     (:SCANCODE-KP-8 . 96)
                                     (:SCANCODE-KP-9 . 97)
                                     (:SCANCODE-KP-0 . 98)
                                     (:SCANCODE-KP-PERIOD . 99)
                                     (:SCANCODE-NONUSBACKSLASH . 100)
                                     (:SCANCODE-APPLICATION . 101)
                                     (:SCANCODE-POWER . 102)
                                     (:SCANCODE-KP-EQUALS . 103)
                                     (:SCANCODE-F13 . 104)
                                     (:SCANCODE-F14 . 105)
                                     (:SCANCODE-F15 . 106)
                                     (:SCANCODE-F16 . 107)
                                     (:SCANCODE-F17 . 108)
                                     (:SCANCODE-F18 . 109)
                                     (:SCANCODE-F19 . 110)
                                     (:SCANCODE-F20 . 111)
                                     (:SCANCODE-F21 . 112)
                                     (:SCANCODE-F22 . 113)
                                     (:SCANCODE-F23 . 114)
                                     (:SCANCODE-F24 . 115)
                                     (:SCANCODE-EXECUTE . 116)
                                     (:SCANCODE-HELP . 117)
                                     (:SCANCODE-MENU . 118)
                                     (:SCANCODE-SELECT . 119)
                                     (:SCANCODE-STOP . 120)
                                     (:SCANCODE-AGAIN . 121)
                                     (:SCANCODE-UNDO . 122)
                                     (:SCANCODE-CUT . 123)
                                     (:SCANCODE-COPY . 124)
                                     (:SCANCODE-PASTE . 125)
                                     (:SCANCODE-FIND . 126)
                                     (:SCANCODE-MUTE . 127)
                                     (:SCANCODE-VOLUMEUP . 128)
                                     (:SCANCODE-VOLUMEDOWN . 129)
                                     (:SCANCODE-KP-COMMA . 133)
                                     (:SCANCODE-KP-EQUALSAS400 . 134)
                                     (:SCANCODE-INTERNATIONAL1 . 135)
                                     (:SCANCODE-INTERNATIONAL2 . 136)
                                     (:SCANCODE-INTERNATIONAL3 . 137)
                                     (:SCANCODE-INTERNATIONAL4 . 138)
                                     (:SCANCODE-INTERNATIONAL5 . 139)
                                     (:SCANCODE-INTERNATIONAL6 . 140)
                                     (:SCANCODE-INTERNATIONAL7 . 141)
                                     (:SCANCODE-INTERNATIONAL8 . 142)
                                     (:SCANCODE-INTERNATIONAL9 . 143)
                                     (:SCANCODE-LANG1 . 144)
                                     (:SCANCODE-LANG2 . 145)
                                     (:SCANCODE-LANG3 . 146)
                                     (:SCANCODE-LANG4 . 147)
                                     (:SCANCODE-LANG5 . 148)
                                     (:SCANCODE-LANG6 . 149)
                                     (:SCANCODE-LANG7 . 150)
                                     (:SCANCODE-LANG8 . 151)
                                     (:SCANCODE-LANG9 . 152)
                                     (:SCANCODE-ALTERASE . 153)
                                     (:SCANCODE-SYSREQ . 154)
                                     (:SCANCODE-CANCEL . 155)
                                     (:SCANCODE-CLEAR . 156)
                                     (:SCANCODE-PRIOR . 157)
                                     (:SCANCODE-RETURN2 . 158)
                                     (:SCANCODE-SEPARATOR . 159)
                                     (:SCANCODE-OUT . 160)
                                     (:SCANCODE-OPER . 161)
                                     (:SCANCODE-CLEARAGAIN . 162)
                                     (:SCANCODE-CRSEL . 163)
                                     (:SCANCODE-EXSEL . 164)
                                     (:SCANCODE-KP-00 . 176)
                                     (:SCANCODE-KP-000 . 177)
                                     (:SCANCODE-THOUSANDSSEPARATOR . 178)
                                     (:SCANCODE-DECIMALSEPARATOR . 179)
                                     (:SCANCODE-CURRENCYUNIT . 180)
                                     (:SCANCODE-CURRENCYSUBUNIT . 181)
                                     (:SCANCODE-KP-LEFTPAREN . 182)
                                     (:SCANCODE-KP-RIGHTPAREN . 183)
                                     (:SCANCODE-KP-LEFTBRACE . 184)
                                     (:SCANCODE-KP-RIGHTBRACE . 185)
                                     (:SCANCODE-KP-TAB . 186)
                                     (:SCANCODE-KP-BACKSPACE . 187)
                                     (:SCANCODE-KP-A . 188)
                                     (:SCANCODE-KP-B . 189)
                                     (:SCANCODE-KP-C . 190)
                                     (:SCANCODE-KP-D . 191)
                                     (:SCANCODE-KP-E . 192)
                                     (:SCANCODE-KP-F . 193)
                                     (:SCANCODE-KP-XOR . 194)
                                     (:SCANCODE-KP-POWER . 195)
                                     (:SCANCODE-KP-PERCENT . 196)
                                     (:SCANCODE-KP-LESS . 197)
                                     (:SCANCODE-KP-GREATER . 198)
                                     (:SCANCODE-KP-AMPERSAND . 199)
                                     (:SCANCODE-KP-DBLAMPERSAND . 200)
                                     (:SCANCODE-KP-VERTICALBAR . 201)
                                     (:SCANCODE-KP-DBLVERTICALBAR . 202)
                                     (:SCANCODE-KP-COLON . 203)
                                     (:SCANCODE-KP-HASH . 204)
                                     (:SCANCODE-KP-SPACE . 205)
                                     (:SCANCODE-KP-AT . 206)
                                     (:SCANCODE-KP-EXCLAM . 207)
                                     (:SCANCODE-KP-MEMSTORE . 208)
                                     (:SCANCODE-KP-MEMRECALL . 209)
                                     (:SCANCODE-KP-MEMCLEAR . 210)
                                     (:SCANCODE-KP-MEMADD . 211)
                                     (:SCANCODE-KP-MEMSUBTRACT . 212)
                                     (:SCANCODE-KP-MEMMULTIPLY . 213)
                                     (:SCANCODE-KP-MEMDIVIDE . 214)
                                     (:SCANCODE-KP-PLUSMINUS . 215)
                                     (:SCANCODE-KP-CLEAR . 216)
                                     (:SCANCODE-KP-CLEARENTRY . 217)
                                     (:SCANCODE-KP-BINARY . 218)
                                     (:SCANCODE-KP-OCTAL . 219)
                                     (:SCANCODE-KP-DECIMAL . 220)
                                     (:SCANCODE-KP-HEXADECIMAL . 221)
                                     (:SCANCODE-LCTRL . 224)
                                     (:SCANCODE-LSHIFT . 225)
                                     (:SCANCODE-LALT . 226)
                                     (:SCANCODE-LGUI . 227)
                                     (:SCANCODE-RCTRL . 228)
                                     (:SCANCODE-RSHIFT . 229)
                                     (:SCANCODE-RALT . 230)
                                     (:SCANCODE-RGUI . 231)
                                     (:SCANCODE-MODE . 257)
                                     (:SCANCODE-AUDIONEXT . 258)
                                     (:SCANCODE-AUDIOPREV . 259)
                                     (:SCANCODE-AUDIOSTOP . 260)
                                     (:SCANCODE-AUDIOPLAY . 261)
                                     (:SCANCODE-AUDIOMUTE . 262)
                                     (:SCANCODE-MEDIASELECT . 263)
                                     (:SCANCODE-WWW . 264)
                                     (:SCANCODE-MAIL . 265)
                                     (:SCANCODE-CALCULATOR . 266)
                                     (:SCANCODE-COMPUTER . 267)
                                     (:SCANCODE-AC-SEARCH . 268)
                                     (:SCANCODE-AC-HOME . 269)
                                     (:SCANCODE-AC-BACK . 270)
                                     (:SCANCODE-AC-FORWARD . 271)
                                     (:SCANCODE-AC-STOP . 272)
                                     (:SCANCODE-AC-REFRESH . 273)
                                     (:SCANCODE-AC-BOOKMARKS . 274)
                                     (:SCANCODE-BRIGHTNESSDOWN . 275)
                                     (:SCANCODE-BRIGHTNESSUP . 276)
                                     (:SCANCODE-DISPLAYSWITCH . 277)
                                     (:SCANCODE-KBDILLUMTOGGLE . 278)
                                     (:SCANCODE-KBDILLUMDOWN . 279)
                                     (:SCANCODE-KBDILLUMUP . 280)
                                     (:SCANCODE-EJECT . 281)
                                     (:SCANCODE-SLEEP . 282)
                                     (:SCANCODE-APP1 . 283)
                                     (:SCANCODE-APP2 . 284)
                                     (:SCANCODE-AUDIOREWIND . 285)
                                     (:SCANCODE-AUDIOFASTFORWARD . 286)
                                     (:SCANCODE-SOFTLEFT . 287)
                                     (:SCANCODE-SOFTRIGHT . 288)
                                     (:SCANCODE-CALL . 289)
                                     (:SCANCODE-ENDCALL . 290)
                                     (:NUM-SCANCODES . 512))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-SCANCODE '(:ENUM (NIL :ID 104)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-KEYCODE 'SINT32)
    (PROGN
     (DEFPARAMETER +SDLK-UNKNOWN+ 0)
     (DEFPARAMETER +SDLK-RETURN+ 13)
     (DEFPARAMETER +SDLK-ESCAPE+ 27)
     (DEFPARAMETER +SDLK-BACKSPACE+ 8)
     (DEFPARAMETER +SDLK-TAB+ 9)
     (DEFPARAMETER +SDLK-SPACE+ 32)
     (DEFPARAMETER +SDLK-EXCLAIM+ 33)
     (DEFPARAMETER +SDLK-QUOTEDBL+ 34)
     (DEFPARAMETER +SDLK-HASH+ 35)
     (DEFPARAMETER +SDLK-PERCENT+ 37)
     (DEFPARAMETER +SDLK-DOLLAR+ 36)
     (DEFPARAMETER +SDLK-AMPERSAND+ 38)
     (DEFPARAMETER +SDLK-QUOTE+ 39)
     (DEFPARAMETER +SDLK-LEFTPAREN+ 40)
     (DEFPARAMETER +SDLK-RIGHTPAREN+ 41)
     (DEFPARAMETER +SDLK-ASTERISK+ 42)
     (DEFPARAMETER +SDLK-PLUS+ 43)
     (DEFPARAMETER +SDLK-COMMA+ 44)
     (DEFPARAMETER +SDLK-MINUS+ 45)
     (DEFPARAMETER +SDLK-PERIOD+ 46)
     (DEFPARAMETER +SDLK-SLASH+ 47)
     (DEFPARAMETER +SDLK-0+ 48)
     (DEFPARAMETER +SDLK-1+ 49)
     (DEFPARAMETER +SDLK-2+ 50)
     (DEFPARAMETER +SDLK-3+ 51)
     (DEFPARAMETER +SDLK-4+ 52)
     (DEFPARAMETER +SDLK-5+ 53)
     (DEFPARAMETER +SDLK-6+ 54)
     (DEFPARAMETER +SDLK-7+ 55)
     (DEFPARAMETER +SDLK-8+ 56)
     (DEFPARAMETER +SDLK-9+ 57)
     (DEFPARAMETER +SDLK-COLON+ 58)
     (DEFPARAMETER +SDLK-SEMICOLON+ 59)
     (DEFPARAMETER +SDLK-LESS+ 60)
     (DEFPARAMETER +SDLK-EQUALS+ 61)
     (DEFPARAMETER +SDLK-GREATER+ 62)
     (DEFPARAMETER +SDLK-QUESTION+ 63)
     (DEFPARAMETER +SDLK-AT+ 64)
     (DEFPARAMETER +SDLK-LEFTBRACKET+ 91)
     (DEFPARAMETER +SDLK-BACKSLASH+ 92)
     (DEFPARAMETER +SDLK-RIGHTBRACKET+ 93)
     (DEFPARAMETER +SDLK-CARET+ 94)
     (DEFPARAMETER +SDLK-UNDERSCORE+ 95)
     (DEFPARAMETER +SDLK-BACKQUOTE+ 96)
     (DEFPARAMETER +SDLK-A+ 97)
     (DEFPARAMETER +SDLK-B+ 98)
     (DEFPARAMETER +SDLK-C+ 99)
     (DEFPARAMETER +SDLK-D+ 100)
     (DEFPARAMETER +SDLK-E+ 101)
     (DEFPARAMETER +SDLK-F+ 102)
     (DEFPARAMETER +SDLK-G+ 103)
     (DEFPARAMETER +SDLK-H+ 104)
     (DEFPARAMETER +SDLK-I+ 105)
     (DEFPARAMETER +SDLK-J+ 106)
     (DEFPARAMETER +SDLK-K+ 107)
     (DEFPARAMETER +SDLK-L+ 108)
     (DEFPARAMETER +SDLK-M+ 109)
     (DEFPARAMETER +SDLK-N+ 110)
     (DEFPARAMETER +SDLK-O+ 111)
     (DEFPARAMETER +SDLK-P+ 112)
     (DEFPARAMETER +SDLK-Q+ 113)
     (DEFPARAMETER +SDLK-R+ 114)
     (DEFPARAMETER +SDLK-S+ 115)
     (DEFPARAMETER +SDLK-T+ 116)
     (DEFPARAMETER +SDLK-U+ 117)
     (DEFPARAMETER +SDLK-V+ 118)
     (DEFPARAMETER +SDLK-W+ 119)
     (DEFPARAMETER +SDLK-X+ 120)
     (DEFPARAMETER +SDLK-Y+ 121)
     (DEFPARAMETER +SDLK-Z+ 122)
     (DEFPARAMETER +SDLK-CAPSLOCK+ 1073741881)
     (DEFPARAMETER +SDLK-F1+ 1073741882)
     (DEFPARAMETER +SDLK-F2+ 1073741883)
     (DEFPARAMETER +SDLK-F3+ 1073741884)
     (DEFPARAMETER +SDLK-F4+ 1073741885)
     (DEFPARAMETER +SDLK-F5+ 1073741886)
     (DEFPARAMETER +SDLK-F6+ 1073741887)
     (DEFPARAMETER +SDLK-F7+ 1073741888)
     (DEFPARAMETER +SDLK-F8+ 1073741889)
     (DEFPARAMETER +SDLK-F9+ 1073741890)
     (DEFPARAMETER +SDLK-F10+ 1073741891)
     (DEFPARAMETER +SDLK-F11+ 1073741892)
     (DEFPARAMETER +SDLK-F12+ 1073741893)
     (DEFPARAMETER +SDLK-PRINTSCREEN+ 1073741894)
     (DEFPARAMETER +SDLK-SCROLLLOCK+ 1073741895)
     (DEFPARAMETER +SDLK-PAUSE+ 1073741896)
     (DEFPARAMETER +SDLK-INSERT+ 1073741897)
     (DEFPARAMETER +SDLK-HOME+ 1073741898)
     (DEFPARAMETER +SDLK-PAGEUP+ 1073741899)
     (DEFPARAMETER +SDLK-DELETE+ 127)
     (DEFPARAMETER +SDLK-END+ 1073741901)
     (DEFPARAMETER +SDLK-PAGEDOWN+ 1073741902)
     (DEFPARAMETER +SDLK-RIGHT+ 1073741903)
     (DEFPARAMETER +SDLK-LEFT+ 1073741904)
     (DEFPARAMETER +SDLK-DOWN+ 1073741905)
     (DEFPARAMETER +SDLK-UP+ 1073741906)
     (DEFPARAMETER +SDLK-NUMLOCKCLEAR+ 1073741907)
     (DEFPARAMETER +SDLK-KP-DIVIDE+ 1073741908)
     (DEFPARAMETER +SDLK-KP-MULTIPLY+ 1073741909)
     (DEFPARAMETER +SDLK-KP-MINUS+ 1073741910)
     (DEFPARAMETER +SDLK-KP-PLUS+ 1073741911)
     (DEFPARAMETER +SDLK-KP-ENTER+ 1073741912)
     (DEFPARAMETER +SDLK-KP-1+ 1073741913)
     (DEFPARAMETER +SDLK-KP-2+ 1073741914)
     (DEFPARAMETER +SDLK-KP-3+ 1073741915)
     (DEFPARAMETER +SDLK-KP-4+ 1073741916)
     (DEFPARAMETER +SDLK-KP-5+ 1073741917)
     (DEFPARAMETER +SDLK-KP-6+ 1073741918)
     (DEFPARAMETER +SDLK-KP-7+ 1073741919)
     (DEFPARAMETER +SDLK-KP-8+ 1073741920)
     (DEFPARAMETER +SDLK-KP-9+ 1073741921)
     (DEFPARAMETER +SDLK-KP-0+ 1073741922)
     (DEFPARAMETER +SDLK-KP-PERIOD+ 1073741923)
     (DEFPARAMETER +SDLK-APPLICATION+ 1073741925)
     (DEFPARAMETER +SDLK-POWER+ 1073741926)
     (DEFPARAMETER +SDLK-KP-EQUALS+ 1073741927)
     (DEFPARAMETER +SDLK-F13+ 1073741928)
     (DEFPARAMETER +SDLK-F14+ 1073741929)
     (DEFPARAMETER +SDLK-F15+ 1073741930)
     (DEFPARAMETER +SDLK-F16+ 1073741931)
     (DEFPARAMETER +SDLK-F17+ 1073741932)
     (DEFPARAMETER +SDLK-F18+ 1073741933)
     (DEFPARAMETER +SDLK-F19+ 1073741934)
     (DEFPARAMETER +SDLK-F20+ 1073741935)
     (DEFPARAMETER +SDLK-F21+ 1073741936)
     (DEFPARAMETER +SDLK-F22+ 1073741937)
     (DEFPARAMETER +SDLK-F23+ 1073741938)
     (DEFPARAMETER +SDLK-F24+ 1073741939)
     (DEFPARAMETER +SDLK-EXECUTE+ 1073741940)
     (DEFPARAMETER +SDLK-HELP+ 1073741941)
     (DEFPARAMETER +SDLK-MENU+ 1073741942)
     (DEFPARAMETER +SDLK-SELECT+ 1073741943)
     (DEFPARAMETER +SDLK-STOP+ 1073741944)
     (DEFPARAMETER +SDLK-AGAIN+ 1073741945)
     (DEFPARAMETER +SDLK-UNDO+ 1073741946)
     (DEFPARAMETER +SDLK-CUT+ 1073741947)
     (DEFPARAMETER +SDLK-COPY+ 1073741948)
     (DEFPARAMETER +SDLK-PASTE+ 1073741949)
     (DEFPARAMETER +SDLK-FIND+ 1073741950)
     (DEFPARAMETER +SDLK-MUTE+ 1073741951)
     (DEFPARAMETER +SDLK-VOLUMEUP+ 1073741952)
     (DEFPARAMETER +SDLK-VOLUMEDOWN+ 1073741953)
     (DEFPARAMETER +SDLK-KP-COMMA+ 1073741957)
     (DEFPARAMETER +SDLK-KP-EQUALSAS400+ 1073741958)
     (DEFPARAMETER +SDLK-ALTERASE+ 1073741977)
     (DEFPARAMETER +SDLK-SYSREQ+ 1073741978)
     (DEFPARAMETER +SDLK-CANCEL+ 1073741979)
     (DEFPARAMETER +SDLK-CLEAR+ 1073741980)
     (DEFPARAMETER +SDLK-PRIOR+ 1073741981)
     (DEFPARAMETER +SDLK-RETURN2+ 1073741982)
     (DEFPARAMETER +SDLK-SEPARATOR+ 1073741983)
     (DEFPARAMETER +SDLK-OUT+ 1073741984)
     (DEFPARAMETER +SDLK-OPER+ 1073741985)
     (DEFPARAMETER +SDLK-CLEARAGAIN+ 1073741986)
     (DEFPARAMETER +SDLK-CRSEL+ 1073741987)
     (DEFPARAMETER +SDLK-EXSEL+ 1073741988)
     (DEFPARAMETER +SDLK-KP-00+ 1073742000)
     (DEFPARAMETER +SDLK-KP-000+ 1073742001)
     (DEFPARAMETER +SDLK-THOUSANDSSEPARATOR+ 1073742002)
     (DEFPARAMETER +SDLK-DECIMALSEPARATOR+ 1073742003)
     (DEFPARAMETER +SDLK-CURRENCYUNIT+ 1073742004)
     (DEFPARAMETER +SDLK-CURRENCYSUBUNIT+ 1073742005)
     (DEFPARAMETER +SDLK-KP-LEFTPAREN+ 1073742006)
     (DEFPARAMETER +SDLK-KP-RIGHTPAREN+ 1073742007)
     (DEFPARAMETER +SDLK-KP-LEFTBRACE+ 1073742008)
     (DEFPARAMETER +SDLK-KP-RIGHTBRACE+ 1073742009)
     (DEFPARAMETER +SDLK-KP-TAB+ 1073742010)
     (DEFPARAMETER +SDLK-KP-BACKSPACE+ 1073742011)
     (DEFPARAMETER +SDLK-KP-A+ 1073742012)
     (DEFPARAMETER +SDLK-KP-B+ 1073742013)
     (DEFPARAMETER +SDLK-KP-C+ 1073742014)
     (DEFPARAMETER +SDLK-KP-D+ 1073742015)
     (DEFPARAMETER +SDLK-KP-E+ 1073742016)
     (DEFPARAMETER +SDLK-KP-F+ 1073742017)
     (DEFPARAMETER +SDLK-KP-XOR+ 1073742018)
     (DEFPARAMETER +SDLK-KP-POWER+ 1073742019)
     (DEFPARAMETER +SDLK-KP-PERCENT+ 1073742020)
     (DEFPARAMETER +SDLK-KP-LESS+ 1073742021)
     (DEFPARAMETER +SDLK-KP-GREATER+ 1073742022)
     (DEFPARAMETER +SDLK-KP-AMPERSAND+ 1073742023)
     (DEFPARAMETER +SDLK-KP-DBLAMPERSAND+ 1073742024)
     (DEFPARAMETER +SDLK-KP-VERTICALBAR+ 1073742025)
     (DEFPARAMETER +SDLK-KP-DBLVERTICALBAR+ 1073742026)
     (DEFPARAMETER +SDLK-KP-COLON+ 1073742027)
     (DEFPARAMETER +SDLK-KP-HASH+ 1073742028)
     (DEFPARAMETER +SDLK-KP-SPACE+ 1073742029)
     (DEFPARAMETER +SDLK-KP-AT+ 1073742030)
     (DEFPARAMETER +SDLK-KP-EXCLAM+ 1073742031)
     (DEFPARAMETER +SDLK-KP-MEMSTORE+ 1073742032)
     (DEFPARAMETER +SDLK-KP-MEMRECALL+ 1073742033)
     (DEFPARAMETER +SDLK-KP-MEMCLEAR+ 1073742034)
     (DEFPARAMETER +SDLK-KP-MEMADD+ 1073742035)
     (DEFPARAMETER +SDLK-KP-MEMSUBTRACT+ 1073742036)
     (DEFPARAMETER +SDLK-KP-MEMMULTIPLY+ 1073742037)
     (DEFPARAMETER +SDLK-KP-MEMDIVIDE+ 1073742038)
     (DEFPARAMETER +SDLK-KP-PLUSMINUS+ 1073742039)
     (DEFPARAMETER +SDLK-KP-CLEAR+ 1073742040)
     (DEFPARAMETER +SDLK-KP-CLEARENTRY+ 1073742041)
     (DEFPARAMETER +SDLK-KP-BINARY+ 1073742042)
     (DEFPARAMETER +SDLK-KP-OCTAL+ 1073742043)
     (DEFPARAMETER +SDLK-KP-DECIMAL+ 1073742044)
     (DEFPARAMETER +SDLK-KP-HEXADECIMAL+ 1073742045)
     (DEFPARAMETER +SDLK-LCTRL+ 1073742048)
     (DEFPARAMETER +SDLK-LSHIFT+ 1073742049)
     (DEFPARAMETER +SDLK-LALT+ 1073742050)
     (DEFPARAMETER +SDLK-LGUI+ 1073742051)
     (DEFPARAMETER +SDLK-RCTRL+ 1073742052)
     (DEFPARAMETER +SDLK-RSHIFT+ 1073742053)
     (DEFPARAMETER +SDLK-RALT+ 1073742054)
     (DEFPARAMETER +SDLK-RGUI+ 1073742055)
     (DEFPARAMETER +SDLK-MODE+ 1073742081)
     (DEFPARAMETER +SDLK-AUDIONEXT+ 1073742082)
     (DEFPARAMETER +SDLK-AUDIOPREV+ 1073742083)
     (DEFPARAMETER +SDLK-AUDIOSTOP+ 1073742084)
     (DEFPARAMETER +SDLK-AUDIOPLAY+ 1073742085)
     (DEFPARAMETER +SDLK-AUDIOMUTE+ 1073742086)
     (DEFPARAMETER +SDLK-MEDIASELECT+ 1073742087)
     (DEFPARAMETER +SDLK-WWW+ 1073742088)
     (DEFPARAMETER +SDLK-MAIL+ 1073742089)
     (DEFPARAMETER +SDLK-CALCULATOR+ 1073742090)
     (DEFPARAMETER +SDLK-COMPUTER+ 1073742091)
     (DEFPARAMETER +SDLK-AC-SEARCH+ 1073742092)
     (DEFPARAMETER +SDLK-AC-HOME+ 1073742093)
     (DEFPARAMETER +SDLK-AC-BACK+ 1073742094)
     (DEFPARAMETER +SDLK-AC-FORWARD+ 1073742095)
     (DEFPARAMETER +SDLK-AC-STOP+ 1073742096)
     (DEFPARAMETER +SDLK-AC-REFRESH+ 1073742097)
     (DEFPARAMETER +SDLK-AC-BOOKMARKS+ 1073742098)
     (DEFPARAMETER +SDLK-BRIGHTNESSDOWN+ 1073742099)
     (DEFPARAMETER +SDLK-BRIGHTNESSUP+ 1073742100)
     (DEFPARAMETER +SDLK-DISPLAYSWITCH+ 1073742101)
     (DEFPARAMETER +SDLK-KBDILLUMTOGGLE+ 1073742102)
     (DEFPARAMETER +SDLK-KBDILLUMDOWN+ 1073742103)
     (DEFPARAMETER +SDLK-KBDILLUMUP+ 1073742104)
     (DEFPARAMETER +SDLK-EJECT+ 1073742105)
     (DEFPARAMETER +SDLK-SLEEP+ 1073742106)
     (DEFPARAMETER +SDLK-APP1+ 1073742107)
     (DEFPARAMETER +SDLK-APP2+ 1073742108)
     (DEFPARAMETER +SDLK-AUDIOREWIND+ 1073742109)
     (DEFPARAMETER +SDLK-AUDIOFASTFORWARD+ 1073742110)
     (DEFPARAMETER +SDLK-SOFTLEFT+ 1073742111)
     (DEFPARAMETER +SDLK-SOFTRIGHT+ 1073742112)
     (DEFPARAMETER +SDLK-CALL+ 1073742113)
     (DEFPARAMETER +SDLK-ENDCALL+ 1073742114)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8928 105
                                   '((:UNKNOWN . 0) (:RETURN . 13)
                                     (:ESCAPE . 27) (:BACKSPACE . 8) (:TAB . 9)
                                     (:SPACE . 32) (:EXCLAIM . 33)
                                     (:QUOTEDBL . 34) (:HASH . 35)
                                     (:PERCENT . 37) (:DOLLAR . 36)
                                     (:AMPERSAND . 38) (:QUOTE . 39)
                                     (:LEFTPAREN . 40) (:RIGHTPAREN . 41)
                                     (:ASTERISK . 42) (:PLUS . 43)
                                     (:COMMA . 44) (:MINUS . 45) (:PERIOD . 46)
                                     (:SLASH . 47) (:|0| . 48) (:|1| . 49)
                                     (:|2| . 50) (:|3| . 51) (:|4| . 52)
                                     (:|5| . 53) (:|6| . 54) (:|7| . 55)
                                     (:|8| . 56) (:|9| . 57) (:COLON . 58)
                                     (:SEMICOLON . 59) (:LESS . 60)
                                     (:EQUALS . 61) (:GREATER . 62)
                                     (:QUESTION . 63) (:AT . 64)
                                     (:LEFTBRACKET . 91) (:BACKSLASH . 92)
                                     (:RIGHTBRACKET . 93) (:CARET . 94)
                                     (:UNDERSCORE . 95) (:BACKQUOTE . 96)
                                     (:A . 97) (:B . 98) (:C . 99) (:D . 100)
                                     (:E . 101) (:F . 102) (:G . 103)
                                     (:H . 104) (:I . 105) (:J . 106)
                                     (:K . 107) (:L . 108) (:M . 109)
                                     (:N . 110) (:O . 111) (:P . 112)
                                     (:Q . 113) (:R . 114) (:S . 115)
                                     (:T . 116) (:U . 117) (:V . 118)
                                     (:W . 119) (:X . 120) (:Y . 121)
                                     (:Z . 122) (:CAPSLOCK . 1073741881)
                                     (:F1 . 1073741882) (:F2 . 1073741883)
                                     (:F3 . 1073741884) (:F4 . 1073741885)
                                     (:F5 . 1073741886) (:F6 . 1073741887)
                                     (:F7 . 1073741888) (:F8 . 1073741889)
                                     (:F9 . 1073741890) (:F10 . 1073741891)
                                     (:F11 . 1073741892) (:F12 . 1073741893)
                                     (:PRINTSCREEN . 1073741894)
                                     (:SCROLLLOCK . 1073741895)
                                     (:PAUSE . 1073741896)
                                     (:INSERT . 1073741897)
                                     (:HOME . 1073741898)
                                     (:PAGEUP . 1073741899) (:DELETE . 127)
                                     (:END . 1073741901)
                                     (:PAGEDOWN . 1073741902)
                                     (:RIGHT . 1073741903) (:LEFT . 1073741904)
                                     (:DOWN . 1073741905) (:UP . 1073741906)
                                     (:NUMLOCKCLEAR . 1073741907)
                                     (:KP-DIVIDE . 1073741908)
                                     (:KP-MULTIPLY . 1073741909)
                                     (:KP-MINUS . 1073741910)
                                     (:KP-PLUS . 1073741911)
                                     (:KP-ENTER . 1073741912)
                                     (:KP-1 . 1073741913) (:KP-2 . 1073741914)
                                     (:KP-3 . 1073741915) (:KP-4 . 1073741916)
                                     (:KP-5 . 1073741917) (:KP-6 . 1073741918)
                                     (:KP-7 . 1073741919) (:KP-8 . 1073741920)
                                     (:KP-9 . 1073741921) (:KP-0 . 1073741922)
                                     (:KP-PERIOD . 1073741923)
                                     (:APPLICATION . 1073741925)
                                     (:POWER . 1073741926)
                                     (:KP-EQUALS . 1073741927)
                                     (:F13 . 1073741928) (:F14 . 1073741929)
                                     (:F15 . 1073741930) (:F16 . 1073741931)
                                     (:F17 . 1073741932) (:F18 . 1073741933)
                                     (:F19 . 1073741934) (:F20 . 1073741935)
                                     (:F21 . 1073741936) (:F22 . 1073741937)
                                     (:F23 . 1073741938) (:F24 . 1073741939)
                                     (:EXECUTE . 1073741940)
                                     (:HELP . 1073741941) (:MENU . 1073741942)
                                     (:SELECT . 1073741943)
                                     (:STOP . 1073741944) (:AGAIN . 1073741945)
                                     (:UNDO . 1073741946) (:CUT . 1073741947)
                                     (:COPY . 1073741948) (:PASTE . 1073741949)
                                     (:FIND . 1073741950) (:MUTE . 1073741951)
                                     (:VOLUMEUP . 1073741952)
                                     (:VOLUMEDOWN . 1073741953)
                                     (:KP-COMMA . 1073741957)
                                     (:KP-EQUALSAS400 . 1073741958)
                                     (:ALTERASE . 1073741977)
                                     (:SYSREQ . 1073741978)
                                     (:CANCEL . 1073741979)
                                     (:CLEAR . 1073741980)
                                     (:PRIOR . 1073741981)
                                     (:RETURN2 . 1073741982)
                                     (:SEPARATOR . 1073741983)
                                     (:OUT . 1073741984) (:OPER . 1073741985)
                                     (:CLEARAGAIN . 1073741986)
                                     (:CRSEL . 1073741987)
                                     (:EXSEL . 1073741988)
                                     (:KP-00 . 1073742000)
                                     (:KP-000 . 1073742001)
                                     (:THOUSANDSSEPARATOR . 1073742002)
                                     (:DECIMALSEPARATOR . 1073742003)
                                     (:CURRENCYUNIT . 1073742004)
                                     (:CURRENCYSUBUNIT . 1073742005)
                                     (:KP-LEFTPAREN . 1073742006)
                                     (:KP-RIGHTPAREN . 1073742007)
                                     (:KP-LEFTBRACE . 1073742008)
                                     (:KP-RIGHTBRACE . 1073742009)
                                     (:KP-TAB . 1073742010)
                                     (:KP-BACKSPACE . 1073742011)
                                     (:KP-A . 1073742012) (:KP-B . 1073742013)
                                     (:KP-C . 1073742014) (:KP-D . 1073742015)
                                     (:KP-E . 1073742016) (:KP-F . 1073742017)
                                     (:KP-XOR . 1073742018)
                                     (:KP-POWER . 1073742019)
                                     (:KP-PERCENT . 1073742020)
                                     (:KP-LESS . 1073742021)
                                     (:KP-GREATER . 1073742022)
                                     (:KP-AMPERSAND . 1073742023)
                                     (:KP-DBLAMPERSAND . 1073742024)
                                     (:KP-VERTICALBAR . 1073742025)
                                     (:KP-DBLVERTICALBAR . 1073742026)
                                     (:KP-COLON . 1073742027)
                                     (:KP-HASH . 1073742028)
                                     (:KP-SPACE . 1073742029)
                                     (:KP-AT . 1073742030)
                                     (:KP-EXCLAM . 1073742031)
                                     (:KP-MEMSTORE . 1073742032)
                                     (:KP-MEMRECALL . 1073742033)
                                     (:KP-MEMCLEAR . 1073742034)
                                     (:KP-MEMADD . 1073742035)
                                     (:KP-MEMSUBTRACT . 1073742036)
                                     (:KP-MEMMULTIPLY . 1073742037)
                                     (:KP-MEMDIVIDE . 1073742038)
                                     (:KP-PLUSMINUS . 1073742039)
                                     (:KP-CLEAR . 1073742040)
                                     (:KP-CLEARENTRY . 1073742041)
                                     (:KP-BINARY . 1073742042)
                                     (:KP-OCTAL . 1073742043)
                                     (:KP-DECIMAL . 1073742044)
                                     (:KP-HEXADECIMAL . 1073742045)
                                     (:LCTRL . 1073742048)
                                     (:LSHIFT . 1073742049)
                                     (:LALT . 1073742050) (:LGUI . 1073742051)
                                     (:RCTRL . 1073742052)
                                     (:RSHIFT . 1073742053)
                                     (:RALT . 1073742054) (:RGUI . 1073742055)
                                     (:MODE . 1073742081)
                                     (:AUDIONEXT . 1073742082)
                                     (:AUDIOPREV . 1073742083)
                                     (:AUDIOSTOP . 1073742084)
                                     (:AUDIOPLAY . 1073742085)
                                     (:AUDIOMUTE . 1073742086)
                                     (:MEDIASELECT . 1073742087)
                                     (:WWW . 1073742088) (:MAIL . 1073742089)
                                     (:CALCULATOR . 1073742090)
                                     (:COMPUTER . 1073742091)
                                     (:AC-SEARCH . 1073742092)
                                     (:AC-HOME . 1073742093)
                                     (:AC-BACK . 1073742094)
                                     (:AC-FORWARD . 1073742095)
                                     (:AC-STOP . 1073742096)
                                     (:AC-REFRESH . 1073742097)
                                     (:AC-BOOKMARKS . 1073742098)
                                     (:BRIGHTNESSDOWN . 1073742099)
                                     (:BRIGHTNESSUP . 1073742100)
                                     (:DISPLAYSWITCH . 1073742101)
                                     (:KBDILLUMTOGGLE . 1073742102)
                                     (:KBDILLUMDOWN . 1073742103)
                                     (:KBDILLUMUP . 1073742104)
                                     (:EJECT . 1073742105)
                                     (:SLEEP . 1073742106) (:APP1 . 1073742107)
                                     (:APP2 . 1073742108)
                                     (:AUDIOREWIND . 1073742109)
                                     (:AUDIOFASTFORWARD . 1073742110)
                                     (:SOFTLEFT . 1073742111)
                                     (:SOFTRIGHT . 1073742112)
                                     (:CALL . 1073742113)
                                     (:ENDCALL . 1073742114))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-KEY-CODE '(:ENUM (NIL :ID 105)))
    (PROGN
     (DEFPARAMETER +KMOD-NONE+ 0)
     (DEFPARAMETER +KMOD-LSHIFT+ 1)
     (DEFPARAMETER +KMOD-RSHIFT+ 2)
     (DEFPARAMETER +KMOD-LCTRL+ 64)
     (DEFPARAMETER +KMOD-RCTRL+ 128)
     (DEFPARAMETER +KMOD-LALT+ 256)
     (DEFPARAMETER +KMOD-RALT+ 512)
     (DEFPARAMETER +KMOD-LGUI+ 1024)
     (DEFPARAMETER +KMOD-RGUI+ 2048)
     (DEFPARAMETER +KMOD-NUM+ 4096)
     (DEFPARAMETER +KMOD-CAPS+ 8192)
     (DEFPARAMETER +KMOD-MODE+ 16384)
     (DEFPARAMETER +KMOD-SCROLL+ 32768)
     (DEFPARAMETER +KMOD-CTRL+ 192)
     (DEFPARAMETER +KMOD-SHIFT+ 3)
     (DEFPARAMETER +KMOD-ALT+ 768)
     (DEFPARAMETER +KMOD-GUI+ 3072)
     (DEFPARAMETER +KMOD-RESERVED+ 32768)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8929 106
                                   '((:NONE . 0) (:LSHIFT . 1) (:RSHIFT . 2)
                                     (:LCTRL . 64) (:RCTRL . 128) (:LALT . 256)
                                     (:RALT . 512) (:LGUI . 1024)
                                     (:RGUI . 2048) (:NUM . 4096)
                                     (:CAPS . 8192) (:MODE . 16384)
                                     (:SCROLL . 32768) (:CTRL . 192)
                                     (:SHIFT . 3) (:ALT . 768) (:GUI . 3072)
                                     (:RESERVED . 32768))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-KEYMOD '(:ENUM (NIL :ID 106)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-KEYSYM :STRUCT 128 32
                                    '((:SCANCODE SDL-SCANCODE :BIT-SIZE 32
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:SYM SDL-KEYCODE :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:MOD UINT16 :BIT-SIZE 16 :BIT-OFFSET 64
                                       :BIT-ALIGNMENT 16)
                                      (:UNUSED UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       96 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-KEYSYM '(:STRUCT (SDL-KEYSYM)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-KEYBOARD-FOCUS "SDL_GetKeyboardFocus") '(:POINTER SDL-WINDOW)
     'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-KEYBOARD-STATE "SDL_GetKeyboardState") '(:POINTER UINT8)
     '((|numkeys| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-RESET-KEYBOARD "SDL_ResetKeyboard")
                                      ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-MOD-STATE "SDL_GetModState")
                                      'SDL-KEYMOD 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SET-MOD-STATE "SDL_SetModState")
                                      ':VOID '((|modstate| SDL-KEYMOD)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-KEY-FROM-SCANCODE "SDL_GetKeyFromScancode") 'SDL-KEYCODE
     '((|scancode| SDL-SCANCODE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-SCANCODE-FROM-KEY "SDL_GetScancodeFromKey") 'SDL-SCANCODE
     '((|key| SDL-KEYCODE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-SCANCODE-NAME "SDL_GetScancodeName") '(:STRING)
     '((|scancode| SDL-SCANCODE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-SCANCODE-FROM-NAME "SDL_GetScancodeFromName") 'SDL-SCANCODE
     '((|name| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-KEY-NAME "SDL_GetKeyName")
                                      '(:STRING) '((|key| SDL-KEYCODE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-KEY-FROM-NAME "SDL_GetKeyFromName") 'SDL-KEYCODE
     '((|name| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-START-TEXT-INPUT "SDL_StartTextInput") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-IS-TEXT-INPUT-ACTIVE "SDL_IsTextInputActive") 'SDL-BOOL 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-STOP-TEXT-INPUT "SDL_StopTextInput") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CLEAR-COMPOSITION "SDL_ClearComposition") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-IS-TEXT-INPUT-SHOWN "SDL_IsTextInputShown") 'SDL-BOOL 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-TEXT-INPUT-RECT "SDL_SetTextInputRect") ':VOID
     '((|rect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAS-SCREEN-KEYBOARD-SUPPORT "SDL_HasScreenKeyboardSupport")
     'SDL-BOOL 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-IS-SCREEN-KEYBOARD-SHOWN "SDL_IsScreenKeyboardShown") 'SDL-BOOL
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-CURSOR :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-CURSOR
                                   '(AUTOWRAP::STRUCT
                                     (SDL-CURSOR :BIT-SIZE 0 :BIT-ALIGNMENT
                                      0)))
    (PROGN
     (DEFPARAMETER +SDL-SYSTEM-CURSOR-ARROW+ 0)
     (DEFPARAMETER +SDL-SYSTEM-CURSOR-IBEAM+ 1)
     (DEFPARAMETER +SDL-SYSTEM-CURSOR-WAIT+ 2)
     (DEFPARAMETER +SDL-SYSTEM-CURSOR-CROSSHAIR+ 3)
     (DEFPARAMETER +SDL-SYSTEM-CURSOR-WAITARROW+ 4)
     (DEFPARAMETER +SDL-SYSTEM-CURSOR-SIZENWSE+ 5)
     (DEFPARAMETER +SDL-SYSTEM-CURSOR-SIZENESW+ 6)
     (DEFPARAMETER +SDL-SYSTEM-CURSOR-SIZEWE+ 7)
     (DEFPARAMETER +SDL-SYSTEM-CURSOR-SIZENS+ 8)
     (DEFPARAMETER +SDL-SYSTEM-CURSOR-SIZEALL+ 9)
     (DEFPARAMETER +SDL-SYSTEM-CURSOR-NO+ 10)
     (DEFPARAMETER +SDL-SYSTEM-CURSOR-HAND+ 11)
     (DEFPARAMETER +SDL-NUM-SYSTEM-CURSORS+ 12)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8930 109
                                   '((:SYSTEM-CURSOR-ARROW . 0)
                                     (:SYSTEM-CURSOR-IBEAM . 1)
                                     (:SYSTEM-CURSOR-WAIT . 2)
                                     (:SYSTEM-CURSOR-CROSSHAIR . 3)
                                     (:SYSTEM-CURSOR-WAITARROW . 4)
                                     (:SYSTEM-CURSOR-SIZENWSE . 5)
                                     (:SYSTEM-CURSOR-SIZENESW . 6)
                                     (:SYSTEM-CURSOR-SIZEWE . 7)
                                     (:SYSTEM-CURSOR-SIZENS . 8)
                                     (:SYSTEM-CURSOR-SIZEALL . 9)
                                     (:SYSTEM-CURSOR-NO . 10)
                                     (:SYSTEM-CURSOR-HAND . 11)
                                     (:NUM-SYSTEM-CURSORS . 12))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-SYSTEM-CURSOR '(:ENUM (NIL :ID 109)))
    (PROGN
     (DEFPARAMETER +SDL-MOUSEWHEEL-NORMAL+ 0)
     (DEFPARAMETER +SDL-MOUSEWHEEL-FLIPPED+ 1)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8931 110
                                   '((:NORMAL . 0) (:FLIPPED . 1))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-MOUSE-WHEEL-DIRECTION
                                   '(:ENUM (NIL :ID 110)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-MOUSE-FOCUS "SDL_GetMouseFocus") '(:POINTER SDL-WINDOW) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-MOUSE-STATE "SDL_GetMouseState") 'UINT32
     '((|x| (:POINTER :INT)) (|y| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-GLOBAL-MOUSE-STATE "SDL_GetGlobalMouseState") 'UINT32
     '((|x| (:POINTER :INT)) (|y| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-RELATIVE-MOUSE-STATE "SDL_GetRelativeMouseState") 'UINT32
     '((|x| (:POINTER :INT)) (|y| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-WARP-MOUSE-IN-WINDOW "SDL_WarpMouseInWindow") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|x| :INT) (|y| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-WARP-MOUSE-GLOBAL "SDL_WarpMouseGlobal") ':INT
     '((|x| :INT) (|y| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-RELATIVE-MOUSE-MODE "SDL_SetRelativeMouseMode") ':INT
     '((|enabled| SDL-BOOL)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-CAPTURE-MOUSE "SDL_CaptureMouse")
                                      ':INT '((|enabled| SDL-BOOL)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-RELATIVE-MOUSE-MODE "SDL_GetRelativeMouseMode") 'SDL-BOOL 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-CREATE-CURSOR "SDL_CreateCursor")
                                      '(:POINTER SDL-CURSOR)
                                      '((|data| (:POINTER UINT8))
                                        (|mask| (:POINTER UINT8)) (|w| :INT)
                                        (|h| :INT) (|hot_x| :INT)
                                        (|hot_y| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CREATE-COLOR-CURSOR "SDL_CreateColorCursor") '(:POINTER SDL-CURSOR)
     '((|surface| (:POINTER SDL-SURFACE)) (|hot_x| :INT) (|hot_y| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CREATE-SYSTEM-CURSOR "SDL_CreateSystemCursor")
     '(:POINTER SDL-CURSOR) '((|id| SDL-SYSTEM-CURSOR)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SET-CURSOR "SDL_SetCursor") ':VOID
                                      '((|cursor| (:POINTER SDL-CURSOR))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-CURSOR "SDL_GetCursor")
                                      '(:POINTER SDL-CURSOR) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-DEFAULT-CURSOR "SDL_GetDefaultCursor") '(:POINTER SDL-CURSOR)
     'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FREE-CURSOR "SDL_FreeCursor")
                                      ':VOID
                                      '((|cursor| (:POINTER SDL-CURSOR))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SHOW-CURSOR "SDL_ShowCursor") ':INT
                                      '((|toggle| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-GUID
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 111 :BIT-SIZE 128 :BIT-ALIGNMENT
                                      8)
                                     (:DATA (:ARRAY UINT8 16) :BIT-SIZE 128
                                      :BIT-OFFSET 0 :BIT-ALIGNMENT 8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GUID-TO-STRING "SDL_GUIDToString")
                                      ':VOID
                                      '((|guid| SDL-GUID) (|pszGUID| (:STRING))
                                        (|cbGUID| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GUID-FROM-STRING "SDL_GUIDFromString") 'SDL-GUID
     '((|pchGUID| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '_SDL_JOYSTICK :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-JOYSTICK
                                   '(AUTOWRAP::STRUCT
                                     (_SDL_JOYSTICK :BIT-SIZE 0 :BIT-ALIGNMENT
                                      0)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-JOYSTICK-GUID 'SDL-GUID)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-JOYSTICK-ID 'SINT32)
    (PROGN
     (DEFPARAMETER +SDL-JOYSTICK-TYPE-UNKNOWN+ 0)
     (DEFPARAMETER +SDL-JOYSTICK-TYPE-GAMECONTROLLER+ 1)
     (DEFPARAMETER +SDL-JOYSTICK-TYPE-WHEEL+ 2)
     (DEFPARAMETER +SDL-JOYSTICK-TYPE-ARCADE-STICK+ 3)
     (DEFPARAMETER +SDL-JOYSTICK-TYPE-FLIGHT-STICK+ 4)
     (DEFPARAMETER +SDL-JOYSTICK-TYPE-DANCE-PAD+ 5)
     (DEFPARAMETER +SDL-JOYSTICK-TYPE-GUITAR+ 6)
     (DEFPARAMETER +SDL-JOYSTICK-TYPE-DRUM-KIT+ 7)
     (DEFPARAMETER +SDL-JOYSTICK-TYPE-ARCADE-PAD+ 8)
     (DEFPARAMETER +SDL-JOYSTICK-TYPE-THROTTLE+ 9)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8932 113
                                   '((:UNKNOWN . 0) (:GAMECONTROLLER . 1)
                                     (:WHEEL . 2) (:ARCADE-STICK . 3)
                                     (:FLIGHT-STICK . 4) (:DANCE-PAD . 5)
                                     (:GUITAR . 6) (:DRUM-KIT . 7)
                                     (:ARCADE-PAD . 8) (:THROTTLE . 9))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-JOYSTICK-TYPE '(:ENUM (NIL :ID 113)))
    (PROGN
     (DEFPARAMETER +SDL-JOYSTICK-POWER-UNKNOWN+ 4294967295)
     (DEFPARAMETER +SDL-JOYSTICK-POWER-EMPTY+ 0)
     (DEFPARAMETER +SDL-JOYSTICK-POWER-LOW+ 1)
     (DEFPARAMETER +SDL-JOYSTICK-POWER-MEDIUM+ 2)
     (DEFPARAMETER +SDL-JOYSTICK-POWER-FULL+ 3)
     (DEFPARAMETER +SDL-JOYSTICK-POWER-WIRED+ 4)
     (DEFPARAMETER +SDL-JOYSTICK-POWER-MAX+ 5)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8933 114
                                   '((:UNKNOWN . 4294967295) (:EMPTY . 0)
                                     (:LOW . 1) (:MEDIUM . 2) (:FULL . 3)
                                     (:WIRED . 4) (:MAX . 5))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-JOYSTICK-POWER-LEVEL
                                   '(:ENUM (NIL :ID 114)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOCK-JOYSTICKS "SDL_LockJoysticks")
                                      ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-UNLOCK-JOYSTICKS "SDL_UnlockJoysticks") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-NUM-JOYSTICKS "SDL_NumJoysticks")
                                      ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-NAME-FOR-INDEX "SDL_JoystickNameForIndex") '(:STRING)
     '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-PATH-FOR-INDEX "SDL_JoystickPathForIndex") '(:STRING)
     '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-DEVICE-PLAYER-INDEX "SDL_JoystickGetDevicePlayerIndex")
     ':INT '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-DEVICE-GUID "SDL_JoystickGetDeviceGUID")
     'SDL-JOYSTICK-GUID '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-DEVICE-VENDOR "SDL_JoystickGetDeviceVendor") 'UINT16
     '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-DEVICE-PRODUCT "SDL_JoystickGetDeviceProduct") 'UINT16
     '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-DEVICE-PRODUCT-VERSION
       "SDL_JoystickGetDeviceProductVersion")
     'UINT16 '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-DEVICE-TYPE "SDL_JoystickGetDeviceType")
     'SDL-JOYSTICK-TYPE '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-DEVICE-INSTANCE-ID "SDL_JoystickGetDeviceInstanceID")
     'SDL-JOYSTICK-ID '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-JOYSTICK-OPEN "SDL_JoystickOpen")
                                      '(:POINTER SDL-JOYSTICK)
                                      '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-FROM-INSTANCE-ID "SDL_JoystickFromInstanceID")
     '(:POINTER SDL-JOYSTICK) '((|instance_id| SDL-JOYSTICK-ID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-FROM-PLAYER-INDEX "SDL_JoystickFromPlayerIndex")
     '(:POINTER SDL-JOYSTICK) '((|player_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-ATTACH-VIRTUAL "SDL_JoystickAttachVirtual") ':INT
     '((|type| SDL-JOYSTICK-TYPE) (|naxes| :INT) (|nbuttons| :INT)
       (|nhats| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-VIRTUAL-JOYSTICK-DESC :STRUCT 704 64
                                    '((:VERSION UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       0 :BIT-ALIGNMENT 16)
                                      (:TYPE UINT16 :BIT-SIZE 16 :BIT-OFFSET 16
                                       :BIT-ALIGNMENT 16)
                                      (:NAXES UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       32 :BIT-ALIGNMENT 16)
                                      (:NBUTTONS UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 48 :BIT-ALIGNMENT 16)
                                      (:NHATS UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       64 :BIT-ALIGNMENT 16)
                                      (:VENDOR-ID UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 80 :BIT-ALIGNMENT 16)
                                      (:PRODUCT-ID UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 96 :BIT-ALIGNMENT 16)
                                      (:PADDING UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       112 :BIT-ALIGNMENT 16)
                                      (:BUTTON-MASK UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 128 :BIT-ALIGNMENT 32)
                                      (:AXIS-MASK UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 160 :BIT-ALIGNMENT 32)
                                      (:NAME (:STRING) :BIT-SIZE 64 :BIT-OFFSET
                                       192 :BIT-ALIGNMENT 64)
                                      (:USERDATA (:POINTER :VOID) :BIT-SIZE 64
                                       :BIT-OFFSET 256 :BIT-ALIGNMENT 64)
                                      (:UPDATE (:POINTER (:VOID)) :BIT-SIZE 64
                                       :BIT-OFFSET 320 :BIT-ALIGNMENT 64)
                                      (:SET-PLAYER-INDEX (:POINTER (:VOID))
                                       :BIT-SIZE 64 :BIT-OFFSET 384
                                       :BIT-ALIGNMENT 64)
                                      (:RUMBLE (:POINTER (:VOID)) :BIT-SIZE 64
                                       :BIT-OFFSET 448 :BIT-ALIGNMENT 64)
                                      (:RUMBLE-TRIGGERS (:POINTER (:VOID))
                                       :BIT-SIZE 64 :BIT-OFFSET 512
                                       :BIT-ALIGNMENT 64)
                                      (:SET-LED (:POINTER (:VOID)) :BIT-SIZE 64
                                       :BIT-OFFSET 576 :BIT-ALIGNMENT 64)
                                      (:SEND-EFFECT (:POINTER (:VOID))
                                       :BIT-SIZE 64 :BIT-OFFSET 640
                                       :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-VIRTUAL-JOYSTICK-DESC
                                   '(:STRUCT (SDL-VIRTUAL-JOYSTICK-DESC)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-ATTACH-VIRTUAL-EX "SDL_JoystickAttachVirtualEx") ':INT
     '((|desc| (:POINTER SDL-VIRTUAL-JOYSTICK-DESC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-DETACH-VIRTUAL "SDL_JoystickDetachVirtual") ':INT
     '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-IS-VIRTUAL "SDL_JoystickIsVirtual") 'SDL-BOOL
     '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-SET-VIRTUAL-AXIS "SDL_JoystickSetVirtualAxis") ':INT
     '((|joystick| (:POINTER SDL-JOYSTICK)) (|axis| :INT) (|value| SINT16)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-SET-VIRTUAL-BUTTON "SDL_JoystickSetVirtualButton") ':INT
     '((|joystick| (:POINTER SDL-JOYSTICK)) (|button| :INT) (|value| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-SET-VIRTUAL-HAT "SDL_JoystickSetVirtualHat") ':INT
     '((|joystick| (:POINTER SDL-JOYSTICK)) (|hat| :INT) (|value| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-JOYSTICK-NAME "SDL_JoystickName")
                                      '(:STRING)
                                      '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-JOYSTICK-PATH "SDL_JoystickPath")
                                      '(:STRING)
                                      '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-PLAYER-INDEX "SDL_JoystickGetPlayerIndex") ':INT
     '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-SET-PLAYER-INDEX "SDL_JoystickSetPlayerIndex") ':VOID
     '((|joystick| (:POINTER SDL-JOYSTICK)) (|player_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-GUID "SDL_JoystickGetGUID") 'SDL-JOYSTICK-GUID
     '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-VENDOR "SDL_JoystickGetVendor") 'UINT16
     '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-PRODUCT "SDL_JoystickGetProduct") 'UINT16
     '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-PRODUCT-VERSION "SDL_JoystickGetProductVersion")
     'UINT16 '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-FIRMWARE-VERSION "SDL_JoystickGetFirmwareVersion")
     'UINT16 '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-SERIAL "SDL_JoystickGetSerial") '(:STRING)
     '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-TYPE "SDL_JoystickGetType") 'SDL-JOYSTICK-TYPE
     '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-GUID-STRING "SDL_JoystickGetGUIDString") ':VOID
     '((|guid| SDL-JOYSTICK-GUID) (|pszGUID| (:STRING)) (|cbGUID| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-GUID-FROM-STRING "SDL_JoystickGetGUIDFromString")
     'SDL-JOYSTICK-GUID '((|pchGUID| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-JOYSTICK-GUID-INFO "SDL_GetJoystickGUIDInfo") ':VOID
     '((|guid| SDL-JOYSTICK-GUID) (|vendor| (:POINTER UINT16))
       (|product| (:POINTER UINT16)) (|version| (:POINTER UINT16))
       (|crc16| (:POINTER UINT16))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-ATTACHED "SDL_JoystickGetAttached") 'SDL-BOOL
     '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-INSTANCE-ID "SDL_JoystickInstanceID") 'SDL-JOYSTICK-ID
     '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-NUM-AXES "SDL_JoystickNumAxes") ':INT
     '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-NUM-BALLS "SDL_JoystickNumBalls") ':INT
     '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-NUM-HATS "SDL_JoystickNumHats") ':INT
     '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-NUM-BUTTONS "SDL_JoystickNumButtons") ':INT
     '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-UPDATE "SDL_JoystickUpdate") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-EVENT-STATE "SDL_JoystickEventState") ':INT
     '((|state| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-AXIS "SDL_JoystickGetAxis") 'SINT16
     '((|joystick| (:POINTER SDL-JOYSTICK)) (|axis| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-AXIS-INITIAL-STATE "SDL_JoystickGetAxisInitialState")
     'SDL-BOOL
     '((|joystick| (:POINTER SDL-JOYSTICK)) (|axis| :INT)
       (|state| (:POINTER SINT16))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-HAT "SDL_JoystickGetHat") 'UINT8
     '((|joystick| (:POINTER SDL-JOYSTICK)) (|hat| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-BALL "SDL_JoystickGetBall") ':INT
     '((|joystick| (:POINTER SDL-JOYSTICK)) (|ball| :INT)
       (|dx| (:POINTER :INT)) (|dy| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-GET-BUTTON "SDL_JoystickGetButton") 'UINT8
     '((|joystick| (:POINTER SDL-JOYSTICK)) (|button| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-RUMBLE "SDL_JoystickRumble") ':INT
     '((|joystick| (:POINTER SDL-JOYSTICK)) (|low_frequency_rumble| UINT16)
       (|high_frequency_rumble| UINT16) (|duration_ms| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-RUMBLE-TRIGGERS "SDL_JoystickRumbleTriggers") ':INT
     '((|joystick| (:POINTER SDL-JOYSTICK)) (|left_rumble| UINT16)
       (|right_rumble| UINT16) (|duration_ms| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-HAS-LED "SDL_JoystickHasLED") 'SDL-BOOL
     '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-HAS-RUMBLE "SDL_JoystickHasRumble") 'SDL-BOOL
     '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-HAS-RUMBLE-TRIGGERS "SDL_JoystickHasRumbleTriggers")
     'SDL-BOOL '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-SET-LED "SDL_JoystickSetLED") ':INT
     '((|joystick| (:POINTER SDL-JOYSTICK)) (|red| UINT8) (|green| UINT8)
       (|blue| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-SEND-EFFECT "SDL_JoystickSendEffect") ':INT
     '((|joystick| (:POINTER SDL-JOYSTICK)) (|data| (:POINTER :VOID))
       (|size| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-JOYSTICK-CLOSE "SDL_JoystickClose")
                                      ':VOID
                                      '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-CURRENT-POWER-LEVEL "SDL_JoystickCurrentPowerLevel")
     'SDL-JOYSTICK-POWER-LEVEL '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '_SDL_SENSOR :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-SENSOR
                                   '(AUTOWRAP::STRUCT
                                     (_SDL_SENSOR :BIT-SIZE 0 :BIT-ALIGNMENT
                                      0)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-SENSOR-ID 'SINT32)
    (PROGN
     (DEFPARAMETER +SDL-SENSOR-INVALID+ 4294967295)
     (DEFPARAMETER +SDL-SENSOR-UNKNOWN+ 0)
     (DEFPARAMETER +SDL-SENSOR-ACCEL+ 1)
     (DEFPARAMETER +SDL-SENSOR-GYRO+ 2)
     (DEFPARAMETER +SDL-SENSOR-ACCEL-L+ 3)
     (DEFPARAMETER +SDL-SENSOR-GYRO-L+ 4)
     (DEFPARAMETER +SDL-SENSOR-ACCEL-R+ 5)
     (DEFPARAMETER +SDL-SENSOR-GYRO-R+ 6)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8934 117
                                   '((:INVALID . 4294967295) (:UNKNOWN . 0)
                                     (:ACCEL . 1) (:GYRO . 2) (:ACCEL-L . 3)
                                     (:GYRO-L . 4) (:ACCEL-R . 5)
                                     (:GYRO-R . 6))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-SENSOR-TYPE '(:ENUM (NIL :ID 117)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOCK-SENSORS "SDL_LockSensors")
                                      ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-UNLOCK-SENSORS "SDL_UnlockSensors")
                                      ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-NUM-SENSORS "SDL_NumSensors") ':INT
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SENSOR-GET-DEVICE-NAME "SDL_SensorGetDeviceName") '(:STRING)
     '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SENSOR-GET-DEVICE-TYPE "SDL_SensorGetDeviceType") 'SDL-SENSOR-TYPE
     '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SENSOR-GET-DEVICE-NON-PORTABLE-TYPE
       "SDL_SensorGetDeviceNonPortableType")
     ':INT '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SENSOR-GET-DEVICE-INSTANCE-ID "SDL_SensorGetDeviceInstanceID")
     'SDL-SENSOR-ID '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SENSOR-OPEN "SDL_SensorOpen")
                                      '(:POINTER SDL-SENSOR)
                                      '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SENSOR-FROM-INSTANCE-ID "SDL_SensorFromInstanceID")
     '(:POINTER SDL-SENSOR) '((|instance_id| SDL-SENSOR-ID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SENSOR-GET-NAME "SDL_SensorGetName") '(:STRING)
     '((|sensor| (:POINTER SDL-SENSOR))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SENSOR-GET-TYPE "SDL_SensorGetType") 'SDL-SENSOR-TYPE
     '((|sensor| (:POINTER SDL-SENSOR))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SENSOR-GET-NON-PORTABLE-TYPE "SDL_SensorGetNonPortableType") ':INT
     '((|sensor| (:POINTER SDL-SENSOR))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SENSOR-GET-INSTANCE-ID "SDL_SensorGetInstanceID") 'SDL-SENSOR-ID
     '((|sensor| (:POINTER SDL-SENSOR))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SENSOR-GET-DATA "SDL_SensorGetData") ':INT
     '((|sensor| (:POINTER SDL-SENSOR)) (|data| (:POINTER :FLOAT))
       (|num_values| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SENSOR-GET-DATA-WITH-TIMESTAMP "SDL_SensorGetDataWithTimestamp")
     ':INT
     '((|sensor| (:POINTER SDL-SENSOR)) (|timestamp| (:POINTER UINT64))
       (|data| (:POINTER :FLOAT)) (|num_values| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SENSOR-CLOSE "SDL_SensorClose")
                                      ':VOID
                                      '((|sensor| (:POINTER SDL-SENSOR))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SENSOR-UPDATE "SDL_SensorUpdate")
                                      ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '_SDL_GAME_CONTROLLER :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-GAME-CONTROLLER
                                   '(AUTOWRAP::STRUCT
                                     (_SDL_GAME_CONTROLLER :BIT-SIZE 0
                                      :BIT-ALIGNMENT 0)))
    (PROGN
     (DEFPARAMETER +SDL-CONTROLLER-TYPE-UNKNOWN+ 0)
     (DEFPARAMETER +SDL-CONTROLLER-TYPE-XBOX360+ 1)
     (DEFPARAMETER +SDL-CONTROLLER-TYPE-XBOXONE+ 2)
     (DEFPARAMETER +SDL-CONTROLLER-TYPE-PS3+ 3)
     (DEFPARAMETER +SDL-CONTROLLER-TYPE-PS4+ 4)
     (DEFPARAMETER +SDL-CONTROLLER-TYPE-NINTENDO-SWITCH-PRO+ 5)
     (DEFPARAMETER +SDL-CONTROLLER-TYPE-VIRTUAL+ 6)
     (DEFPARAMETER +SDL-CONTROLLER-TYPE-PS5+ 7)
     (DEFPARAMETER +SDL-CONTROLLER-TYPE-AMAZON-LUNA+ 8)
     (DEFPARAMETER +SDL-CONTROLLER-TYPE-GOOGLE-STADIA+ 9)
     (DEFPARAMETER +SDL-CONTROLLER-TYPE-NVIDIA-SHIELD+ 10)
     (DEFPARAMETER +SDL-CONTROLLER-TYPE-NINTENDO-SWITCH-JOYCON-LEFT+ 11)
     (DEFPARAMETER +SDL-CONTROLLER-TYPE-NINTENDO-SWITCH-JOYCON-RIGHT+ 12)
     (DEFPARAMETER +SDL-CONTROLLER-TYPE-NINTENDO-SWITCH-JOYCON-PAIR+ 13)
     (DEFPARAMETER +SDL-CONTROLLER-TYPE-MAX+ 14)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8935 119
                                   '((:UNKNOWN . 0) (:XBOX360 . 1)
                                     (:XBOXONE . 2) (:PS3 . 3) (:PS4 . 4)
                                     (:NINTENDO-SWITCH-PRO . 5) (:VIRTUAL . 6)
                                     (:PS5 . 7) (:AMAZON-LUNA . 8)
                                     (:GOOGLE-STADIA . 9) (:NVIDIA-SHIELD . 10)
                                     (:NINTENDO-SWITCH-JOYCON-LEFT . 11)
                                     (:NINTENDO-SWITCH-JOYCON-RIGHT . 12)
                                     (:NINTENDO-SWITCH-JOYCON-PAIR . 13)
                                     (:MAX . 14))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-GAME-CONTROLLER-TYPE
                                   '(:ENUM (NIL :ID 119)))
    (PROGN
     (DEFPARAMETER +SDL-CONTROLLER-BINDTYPE-NONE+ 0)
     (DEFPARAMETER +SDL-CONTROLLER-BINDTYPE-BUTTON+ 1)
     (DEFPARAMETER +SDL-CONTROLLER-BINDTYPE-AXIS+ 2)
     (DEFPARAMETER +SDL-CONTROLLER-BINDTYPE-HAT+ 3)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8936 120
                                   '((:NONE . 0) (:BUTTON . 1) (:AXIS . 2)
                                     (:HAT . 3))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-GAME-CONTROLLER-BIND-TYPE
                                   '(:ENUM (NIL :ID 120)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-GAME-CONTROLLER-BUTTON-BIND :STRUCT 96
                                    32
                                    '((:BIND-TYPE SDL-GAME-CONTROLLER-BIND-TYPE
                                       :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:VALUE
                                       (UNION
                                        (NIL :ID 121 :BIT-SIZE 64
                                         :BIT-ALIGNMENT 32)
                                        (:BUTTON :INT :BIT-SIZE 32 :BIT-OFFSET
                                         0 :BIT-ALIGNMENT 32)
                                        (:AXIS :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                         :BIT-ALIGNMENT 32)
                                        (:HAT
                                         (AUTOWRAP::STRUCT
                                          (NIL :ID 122 :BIT-SIZE 64
                                           :BIT-ALIGNMENT 32)
                                          (:HAT :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                           :BIT-ALIGNMENT 32)
                                          (:HAT-MASK :INT :BIT-SIZE 32
                                           :BIT-OFFSET 32 :BIT-ALIGNMENT 32))
                                         :BIT-SIZE 64 :BIT-OFFSET 0
                                         :BIT-ALIGNMENT 32))
                                       :BIT-SIZE 64 :BIT-OFFSET 32
                                       :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-GAME-CONTROLLER-BUTTON-BIND
                                   '(:STRUCT
                                     (SDL-GAME-CONTROLLER-BUTTON-BIND)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-ADD-MAPPINGS-FROM-RW
       "SDL_GameControllerAddMappingsFromRW")
     ':INT '((|rw| (:POINTER SDL-R-WOPS)) (|freerw| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-ADD-MAPPING "SDL_GameControllerAddMapping") ':INT
     '((|mappingString| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-NUM-MAPPINGS "SDL_GameControllerNumMappings") ':INT
     'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-MAPPING-FOR-INDEX
       "SDL_GameControllerMappingForIndex")
     '(:STRING) '((|mapping_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-MAPPING-FOR-GUID "SDL_GameControllerMappingForGUID")
     '(:STRING) '((|guid| SDL-JOYSTICK-GUID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-MAPPING "SDL_GameControllerMapping") '(:STRING)
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-IS-GAME-CONTROLLER "SDL_IsGameController") 'SDL-BOOL
     '((|joystick_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-NAME-FOR-INDEX "SDL_GameControllerNameForIndex")
     '(:STRING) '((|joystick_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-PATH-FOR-INDEX "SDL_GameControllerPathForIndex")
     '(:STRING) '((|joystick_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-TYPE-FOR-INDEX "SDL_GameControllerTypeForIndex")
     'SDL-GAME-CONTROLLER-TYPE '((|joystick_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-MAPPING-FOR-DEVICE-INDEX
       "SDL_GameControllerMappingForDeviceIndex")
     '(:STRING) '((|joystick_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-OPEN "SDL_GameControllerOpen")
     '(:POINTER SDL-GAME-CONTROLLER) '((|joystick_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-FROM-INSTANCE-ID "SDL_GameControllerFromInstanceID")
     '(:POINTER SDL-GAME-CONTROLLER) '((|joyid| SDL-JOYSTICK-ID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-FROM-PLAYER-INDEX
       "SDL_GameControllerFromPlayerIndex")
     '(:POINTER SDL-GAME-CONTROLLER) '((|player_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-NAME "SDL_GameControllerName") '(:STRING)
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-PATH "SDL_GameControllerPath") '(:STRING)
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-TYPE "SDL_GameControllerGetType")
     'SDL-GAME-CONTROLLER-TYPE
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-PLAYER-INDEX "SDL_GameControllerGetPlayerIndex")
     ':INT '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-SET-PLAYER-INDEX "SDL_GameControllerSetPlayerIndex")
     ':VOID
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))
       (|player_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-VENDOR "SDL_GameControllerGetVendor") 'UINT16
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-PRODUCT "SDL_GameControllerGetProduct") 'UINT16
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-PRODUCT-VERSION
       "SDL_GameControllerGetProductVersion")
     'UINT16 '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-FIRMWARE-VERSION
       "SDL_GameControllerGetFirmwareVersion")
     'UINT16 '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-SERIAL "SDL_GameControllerGetSerial") '(:STRING)
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-STEAM-HANDLE "SDL_GameControllerGetSteamHandle")
     'UINT64 '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-ATTACHED "SDL_GameControllerGetAttached")
     'SDL-BOOL '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-JOYSTICK "SDL_GameControllerGetJoystick")
     '(:POINTER SDL-JOYSTICK)
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-EVENT-STATE "SDL_GameControllerEventState") ':INT
     '((|state| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-UPDATE "SDL_GameControllerUpdate") ':VOID 'NIL)
    (PROGN
     (DEFPARAMETER +SDL-CONTROLLER-AXIS-INVALID+ 4294967295)
     (DEFPARAMETER +SDL-CONTROLLER-AXIS-LEFTX+ 0)
     (DEFPARAMETER +SDL-CONTROLLER-AXIS-LEFTY+ 1)
     (DEFPARAMETER +SDL-CONTROLLER-AXIS-RIGHTX+ 2)
     (DEFPARAMETER +SDL-CONTROLLER-AXIS-RIGHTY+ 3)
     (DEFPARAMETER +SDL-CONTROLLER-AXIS-TRIGGERLEFT+ 4)
     (DEFPARAMETER +SDL-CONTROLLER-AXIS-TRIGGERRIGHT+ 5)
     (DEFPARAMETER +SDL-CONTROLLER-AXIS-MAX+ 6)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8937 124
                                   '((:INVALID . 4294967295) (:LEFTX . 0)
                                     (:LEFTY . 1) (:RIGHTX . 2) (:RIGHTY . 3)
                                     (:TRIGGERLEFT . 4) (:TRIGGERRIGHT . 5)
                                     (:MAX . 6))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-GAME-CONTROLLER-AXIS
                                   '(:ENUM (NIL :ID 124)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-AXIS-FROM-STRING
       "SDL_GameControllerGetAxisFromString")
     'SDL-GAME-CONTROLLER-AXIS '((|str| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-STRING-FOR-AXIS
       "SDL_GameControllerGetStringForAxis")
     '(:STRING) '((|axis| SDL-GAME-CONTROLLER-AXIS)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-BIND-FOR-AXIS
       "SDL_GameControllerGetBindForAxis")
     'SDL-GAME-CONTROLLER-BUTTON-BIND
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))
       (|axis| SDL-GAME-CONTROLLER-AXIS)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-HAS-AXIS "SDL_GameControllerHasAxis") 'SDL-BOOL
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))
       (|axis| SDL-GAME-CONTROLLER-AXIS)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-AXIS "SDL_GameControllerGetAxis") 'SINT16
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))
       (|axis| SDL-GAME-CONTROLLER-AXIS)))
    (PROGN
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-INVALID+ 4294967295)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-A+ 0)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-B+ 1)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-X+ 2)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-Y+ 3)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-BACK+ 4)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-GUIDE+ 5)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-START+ 6)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-LEFTSTICK+ 7)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-RIGHTSTICK+ 8)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-LEFTSHOULDER+ 9)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-RIGHTSHOULDER+ 10)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-DPAD-UP+ 11)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-DPAD-DOWN+ 12)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-DPAD-LEFT+ 13)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-DPAD-RIGHT+ 14)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-MISC1+ 15)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-PADDLE1+ 16)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-PADDLE2+ 17)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-PADDLE3+ 18)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-PADDLE4+ 19)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-TOUCHPAD+ 20)
     (DEFPARAMETER +SDL-CONTROLLER-BUTTON-MAX+ 21)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8938 125
                                   '((:INVALID . 4294967295) (:A . 0) (:B . 1)
                                     (:X . 2) (:Y . 3) (:BACK . 4) (:GUIDE . 5)
                                     (:START . 6) (:LEFTSTICK . 7)
                                     (:RIGHTSTICK . 8) (:LEFTSHOULDER . 9)
                                     (:RIGHTSHOULDER . 10) (:DPAD-UP . 11)
                                     (:DPAD-DOWN . 12) (:DPAD-LEFT . 13)
                                     (:DPAD-RIGHT . 14) (:MISC1 . 15)
                                     (:PADDLE1 . 16) (:PADDLE2 . 17)
                                     (:PADDLE3 . 18) (:PADDLE4 . 19)
                                     (:TOUCHPAD . 20) (:MAX . 21))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-GAME-CONTROLLER-BUTTON
                                   '(:ENUM (NIL :ID 125)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-BUTTON-FROM-STRING
       "SDL_GameControllerGetButtonFromString")
     'SDL-GAME-CONTROLLER-BUTTON '((|str| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-STRING-FOR-BUTTON
       "SDL_GameControllerGetStringForButton")
     '(:STRING) '((|button| SDL-GAME-CONTROLLER-BUTTON)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-BIND-FOR-BUTTON
       "SDL_GameControllerGetBindForButton")
     'SDL-GAME-CONTROLLER-BUTTON-BIND
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))
       (|button| SDL-GAME-CONTROLLER-BUTTON)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-HAS-BUTTON "SDL_GameControllerHasButton") 'SDL-BOOL
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))
       (|button| SDL-GAME-CONTROLLER-BUTTON)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-BUTTON "SDL_GameControllerGetButton") 'UINT8
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))
       (|button| SDL-GAME-CONTROLLER-BUTTON)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-NUM-TOUCHPADS
       "SDL_GameControllerGetNumTouchpads")
     ':INT '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-NUM-TOUCHPAD-FINGERS
       "SDL_GameControllerGetNumTouchpadFingers")
     ':INT
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER)) (|touchpad| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-TOUCHPAD-FINGER
       "SDL_GameControllerGetTouchpadFinger")
     ':INT
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER)) (|touchpad| :INT)
       (|finger| :INT) (|state| (:POINTER UINT8)) (|x| (:POINTER :FLOAT))
       (|y| (:POINTER :FLOAT)) (|pressure| (:POINTER :FLOAT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-HAS-SENSOR "SDL_GameControllerHasSensor") 'SDL-BOOL
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))
       (|type| SDL-SENSOR-TYPE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-SET-SENSOR-ENABLED
       "SDL_GameControllerSetSensorEnabled")
     ':INT
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))
       (|type| SDL-SENSOR-TYPE) (|enabled| SDL-BOOL)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-IS-SENSOR-ENABLED
       "SDL_GameControllerIsSensorEnabled")
     'SDL-BOOL
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))
       (|type| SDL-SENSOR-TYPE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-SENSOR-DATA-RATE
       "SDL_GameControllerGetSensorDataRate")
     ':FLOAT
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))
       (|type| SDL-SENSOR-TYPE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-SENSOR-DATA "SDL_GameControllerGetSensorData")
     ':INT
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))
       (|type| SDL-SENSOR-TYPE) (|data| (:POINTER :FLOAT))
       (|num_values| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-SENSOR-DATA-WITH-TIMESTAMP
       "SDL_GameControllerGetSensorDataWithTimestamp")
     ':INT
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))
       (|type| SDL-SENSOR-TYPE) (|timestamp| (:POINTER UINT64))
       (|data| (:POINTER :FLOAT)) (|num_values| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-RUMBLE "SDL_GameControllerRumble") ':INT
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))
       (|low_frequency_rumble| UINT16) (|high_frequency_rumble| UINT16)
       (|duration_ms| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-RUMBLE-TRIGGERS "SDL_GameControllerRumbleTriggers")
     ':INT
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER)) (|left_rumble| UINT16)
       (|right_rumble| UINT16) (|duration_ms| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-HAS-LED "SDL_GameControllerHasLED") 'SDL-BOOL
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-HAS-RUMBLE "SDL_GameControllerHasRumble") 'SDL-BOOL
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-HAS-RUMBLE-TRIGGERS
       "SDL_GameControllerHasRumbleTriggers")
     'SDL-BOOL '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-SET-LED "SDL_GameControllerSetLED") ':INT
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER)) (|red| UINT8)
       (|green| UINT8) (|blue| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-SEND-EFFECT "SDL_GameControllerSendEffect") ':INT
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))
       (|data| (:POINTER :VOID)) (|size| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-CLOSE "SDL_GameControllerClose") ':VOID
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-APPLE-SF-SYMBOLS-NAME-FOR-BUTTON
       "SDL_GameControllerGetAppleSFSymbolsNameForButton")
     '(:STRING)
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))
       (|button| SDL-GAME-CONTROLLER-BUTTON)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GAME-CONTROLLER-GET-APPLE-SF-SYMBOLS-NAME-FOR-AXIS
       "SDL_GameControllerGetAppleSFSymbolsNameForAxis")
     '(:STRING)
     '((|gamecontroller| (:POINTER SDL-GAME-CONTROLLER))
       (|axis| SDL-GAME-CONTROLLER-AXIS)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-TOUCH-ID 'SINT64)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-FINGER-ID 'SINT64)
    (PROGN
     (DEFPARAMETER +SDL-TOUCH-DEVICE-INVALID+ 4294967295)
     (DEFPARAMETER +SDL-TOUCH-DEVICE-DIRECT+ 0)
     (DEFPARAMETER +SDL-TOUCH-DEVICE-INDIRECT-ABSOLUTE+ 1)
     (DEFPARAMETER +SDL-TOUCH-DEVICE-INDIRECT-RELATIVE+ 2)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8939 126
                                   '((:INVALID . 4294967295) (:DIRECT . 0)
                                     (:INDIRECT-ABSOLUTE . 1)
                                     (:INDIRECT-RELATIVE . 2))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-TOUCH-DEVICE-TYPE
                                   '(:ENUM (NIL :ID 126)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-FINGER :STRUCT 192 64
                                    '((:ID SDL-FINGER-ID :BIT-SIZE 64
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
                                      (:X :FLOAT :BIT-SIZE 32 :BIT-OFFSET 64
                                       :BIT-ALIGNMENT 32)
                                      (:Y :FLOAT :BIT-SIZE 32 :BIT-OFFSET 96
                                       :BIT-ALIGNMENT 32)
                                      (:PRESSURE :FLOAT :BIT-SIZE 32
                                       :BIT-OFFSET 128 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-FINGER '(:STRUCT (SDL-FINGER)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-NUM-TOUCH-DEVICES "SDL_GetNumTouchDevices") ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-TOUCH-DEVICE "SDL_GetTouchDevice") 'SDL-TOUCH-ID
     '((|index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-TOUCH-NAME "SDL_GetTouchName")
                                      '(:STRING) '((|index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-TOUCH-DEVICE-TYPE "SDL_GetTouchDeviceType")
     'SDL-TOUCH-DEVICE-TYPE '((|touchID| SDL-TOUCH-ID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-NUM-TOUCH-FINGERS "SDL_GetNumTouchFingers") ':INT
     '((|touchID| SDL-TOUCH-ID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-TOUCH-FINGER "SDL_GetTouchFinger") '(:POINTER SDL-FINGER)
     '((|touchID| SDL-TOUCH-ID) (|index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-GESTURE-ID 'SINT64)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-RECORD-GESTURE "SDL_RecordGesture")
                                      ':INT '((|touchId| SDL-TOUCH-ID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SAVE-ALL-DOLLAR-TEMPLATES "SDL_SaveAllDollarTemplates") ':INT
     '((|dst| (:POINTER SDL-R-WOPS))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SAVE-DOLLAR-TEMPLATE "SDL_SaveDollarTemplate") ':INT
     '((|gestureId| SDL-GESTURE-ID) (|dst| (:POINTER SDL-R-WOPS))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LOAD-DOLLAR-TEMPLATES "SDL_LoadDollarTemplates") ':INT
     '((|touchId| SDL-TOUCH-ID) (|src| (:POINTER SDL-R-WOPS))))
    (PROGN
     (DEFPARAMETER +SDL-FIRSTEVENT+ 0)
     (DEFPARAMETER +SDL-QUIT+ 256)
     (DEFPARAMETER +SDL-APP-TERMINATING+ 257)
     (DEFPARAMETER +SDL-APP-LOWMEMORY+ 258)
     (DEFPARAMETER +SDL-APP-WILLENTERBACKGROUND+ 259)
     (DEFPARAMETER +SDL-APP-DIDENTERBACKGROUND+ 260)
     (DEFPARAMETER +SDL-APP-WILLENTERFOREGROUND+ 261)
     (DEFPARAMETER +SDL-APP-DIDENTERFOREGROUND+ 262)
     (DEFPARAMETER +SDL-LOCALECHANGED+ 263)
     (DEFPARAMETER +SDL-DISPLAYEVENT+ 336)
     (DEFPARAMETER +SDL-WINDOWEVENT+ 512)
     (DEFPARAMETER +SDL-SYSWMEVENT+ 513)
     (DEFPARAMETER +SDL-KEYDOWN+ 768)
     (DEFPARAMETER +SDL-KEYUP+ 769)
     (DEFPARAMETER +SDL-TEXTEDITING+ 770)
     (DEFPARAMETER +SDL-TEXTINPUT+ 771)
     (DEFPARAMETER +SDL-KEYMAPCHANGED+ 772)
     (DEFPARAMETER +SDL-TEXTEDITING-EXT+ 773)
     (DEFPARAMETER +SDL-MOUSEMOTION+ 1024)
     (DEFPARAMETER +SDL-MOUSEBUTTONDOWN+ 1025)
     (DEFPARAMETER +SDL-MOUSEBUTTONUP+ 1026)
     (DEFPARAMETER +SDL-MOUSEWHEEL+ 1027)
     (DEFPARAMETER +SDL-JOYAXISMOTION+ 1536)
     (DEFPARAMETER +SDL-JOYBALLMOTION+ 1537)
     (DEFPARAMETER +SDL-JOYHATMOTION+ 1538)
     (DEFPARAMETER +SDL-JOYBUTTONDOWN+ 1539)
     (DEFPARAMETER +SDL-JOYBUTTONUP+ 1540)
     (DEFPARAMETER +SDL-JOYDEVICEADDED+ 1541)
     (DEFPARAMETER +SDL-JOYDEVICEREMOVED+ 1542)
     (DEFPARAMETER +SDL-JOYBATTERYUPDATED+ 1543)
     (DEFPARAMETER +SDL-CONTROLLERAXISMOTION+ 1616)
     (DEFPARAMETER +SDL-CONTROLLERBUTTONDOWN+ 1617)
     (DEFPARAMETER +SDL-CONTROLLERBUTTONUP+ 1618)
     (DEFPARAMETER +SDL-CONTROLLERDEVICEADDED+ 1619)
     (DEFPARAMETER +SDL-CONTROLLERDEVICEREMOVED+ 1620)
     (DEFPARAMETER +SDL-CONTROLLERDEVICEREMAPPED+ 1621)
     (DEFPARAMETER +SDL-CONTROLLERTOUCHPADDOWN+ 1622)
     (DEFPARAMETER +SDL-CONTROLLERTOUCHPADMOTION+ 1623)
     (DEFPARAMETER +SDL-CONTROLLERTOUCHPADUP+ 1624)
     (DEFPARAMETER +SDL-CONTROLLERSENSORUPDATE+ 1625)
     (DEFPARAMETER +SDL-CONTROLLERUPDATECOMPLETE-RESERVED-FOR-SDL3+ 1626)
     (DEFPARAMETER +SDL-CONTROLLERSTEAMHANDLEUPDATED+ 1627)
     (DEFPARAMETER +SDL-FINGERDOWN+ 1792)
     (DEFPARAMETER +SDL-FINGERUP+ 1793)
     (DEFPARAMETER +SDL-FINGERMOTION+ 1794)
     (DEFPARAMETER +SDL-DOLLARGESTURE+ 2048)
     (DEFPARAMETER +SDL-DOLLARRECORD+ 2049)
     (DEFPARAMETER +SDL-MULTIGESTURE+ 2050)
     (DEFPARAMETER +SDL-CLIPBOARDUPDATE+ 2304)
     (DEFPARAMETER +SDL-DROPFILE+ 4096)
     (DEFPARAMETER +SDL-DROPTEXT+ 4097)
     (DEFPARAMETER +SDL-DROPBEGIN+ 4098)
     (DEFPARAMETER +SDL-DROPCOMPLETE+ 4099)
     (DEFPARAMETER +SDL-AUDIODEVICEADDED+ 4352)
     (DEFPARAMETER +SDL-AUDIODEVICEREMOVED+ 4353)
     (DEFPARAMETER +SDL-SENSORUPDATE+ 4608)
     (DEFPARAMETER +SDL-RENDER-TARGETS-RESET+ 8192)
     (DEFPARAMETER +SDL-RENDER-DEVICE-RESET+ 8193)
     (DEFPARAMETER +SDL-POLLSENTINEL+ 32512)
     (DEFPARAMETER +SDL-USEREVENT+ 32768)
     (DEFPARAMETER +SDL-LASTEVENT+ 65535)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8940 128
                                   '((:FIRSTEVENT . 0) (:QUIT . 256)
                                     (:APP-TERMINATING . 257)
                                     (:APP-LOWMEMORY . 258)
                                     (:APP-WILLENTERBACKGROUND . 259)
                                     (:APP-DIDENTERBACKGROUND . 260)
                                     (:APP-WILLENTERFOREGROUND . 261)
                                     (:APP-DIDENTERFOREGROUND . 262)
                                     (:LOCALECHANGED . 263)
                                     (:DISPLAYEVENT . 336) (:WINDOWEVENT . 512)
                                     (:SYSWMEVENT . 513) (:KEYDOWN . 768)
                                     (:KEYUP . 769) (:TEXTEDITING . 770)
                                     (:TEXTINPUT . 771) (:KEYMAPCHANGED . 772)
                                     (:TEXTEDITING-EXT . 773)
                                     (:MOUSEMOTION . 1024)
                                     (:MOUSEBUTTONDOWN . 1025)
                                     (:MOUSEBUTTONUP . 1026)
                                     (:MOUSEWHEEL . 1027)
                                     (:JOYAXISMOTION . 1536)
                                     (:JOYBALLMOTION . 1537)
                                     (:JOYHATMOTION . 1538)
                                     (:JOYBUTTONDOWN . 1539)
                                     (:JOYBUTTONUP . 1540)
                                     (:JOYDEVICEADDED . 1541)
                                     (:JOYDEVICEREMOVED . 1542)
                                     (:JOYBATTERYUPDATED . 1543)
                                     (:CONTROLLERAXISMOTION . 1616)
                                     (:CONTROLLERBUTTONDOWN . 1617)
                                     (:CONTROLLERBUTTONUP . 1618)
                                     (:CONTROLLERDEVICEADDED . 1619)
                                     (:CONTROLLERDEVICEREMOVED . 1620)
                                     (:CONTROLLERDEVICEREMAPPED . 1621)
                                     (:CONTROLLERTOUCHPADDOWN . 1622)
                                     (:CONTROLLERTOUCHPADMOTION . 1623)
                                     (:CONTROLLERTOUCHPADUP . 1624)
                                     (:CONTROLLERSENSORUPDATE . 1625)
                                     (:CONTROLLERUPDATECOMPLETE-RESERVED-FOR-SDL3
                                      . 1626)
                                     (:CONTROLLERSTEAMHANDLEUPDATED . 1627)
                                     (:FINGERDOWN . 1792) (:FINGERUP . 1793)
                                     (:FINGERMOTION . 1794)
                                     (:DOLLARGESTURE . 2048)
                                     (:DOLLARRECORD . 2049)
                                     (:MULTIGESTURE . 2050)
                                     (:CLIPBOARDUPDATE . 2304)
                                     (:DROPFILE . 4096) (:DROPTEXT . 4097)
                                     (:DROPBEGIN . 4098) (:DROPCOMPLETE . 4099)
                                     (:AUDIODEVICEADDED . 4352)
                                     (:AUDIODEVICEREMOVED . 4353)
                                     (:SENSORUPDATE . 4608)
                                     (:RENDER-TARGETS-RESET . 8192)
                                     (:RENDER-DEVICE-RESET . 8193)
                                     (:POLLSENTINEL . 32512)
                                     (:USEREVENT . 32768)
                                     (:LASTEVENT . 65535))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-EVENT-TYPE '(:ENUM (NIL :ID 128)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-COMMON-EVENT :STRUCT 64 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-COMMON-EVENT
                                   '(:STRUCT (SDL-COMMON-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-DISPLAY-EVENT :STRUCT 160 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:DISPLAY UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       64 :BIT-ALIGNMENT 32)
                                      (:EVENT UINT8 :BIT-SIZE 8 :BIT-OFFSET 96
                                       :BIT-ALIGNMENT 8)
                                      (:PADDING1 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       104 :BIT-ALIGNMENT 8)
                                      (:PADDING2 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       112 :BIT-ALIGNMENT 8)
                                      (:PADDING3 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       120 :BIT-ALIGNMENT 8)
                                      (:DATA1 SINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       128 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-DISPLAY-EVENT
                                   '(:STRUCT (SDL-DISPLAY-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-WINDOW-EVENT :STRUCT 192 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WINDOW-ID UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:EVENT UINT8 :BIT-SIZE 8 :BIT-OFFSET 96
                                       :BIT-ALIGNMENT 8)
                                      (:PADDING1 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       104 :BIT-ALIGNMENT 8)
                                      (:PADDING2 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       112 :BIT-ALIGNMENT 8)
                                      (:PADDING3 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       120 :BIT-ALIGNMENT 8)
                                      (:DATA1 SINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       128 :BIT-ALIGNMENT 32)
                                      (:DATA2 SINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       160 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-WINDOW-EVENT
                                   '(:STRUCT (SDL-WINDOW-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-KEYBOARD-EVENT :STRUCT 256 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WINDOW-ID UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:STATE UINT8 :BIT-SIZE 8 :BIT-OFFSET 96
                                       :BIT-ALIGNMENT 8)
                                      (:REPEAT UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       104 :BIT-ALIGNMENT 8)
                                      (:PADDING2 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       112 :BIT-ALIGNMENT 8)
                                      (:PADDING3 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       120 :BIT-ALIGNMENT 8)
                                      (:KEYSYM SDL-KEYSYM :BIT-SIZE 128
                                       :BIT-OFFSET 128 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-KEYBOARD-EVENT
                                   '(:STRUCT (SDL-KEYBOARD-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-TEXT-EDITING-EVENT :STRUCT 416 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WINDOW-ID UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:TEXT (:ARRAY :CHAR 32) :BIT-SIZE 256
                                       :BIT-OFFSET 96 :BIT-ALIGNMENT 8)
                                      (:START SINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       352 :BIT-ALIGNMENT 32)
                                      (:LENGTH SINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       384 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-TEXT-EDITING-EVENT
                                   '(:STRUCT (SDL-TEXT-EDITING-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-TEXT-EDITING-EXT-EVENT :STRUCT 256 64
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WINDOW-ID UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:TEXT (:STRING) :BIT-SIZE 64 :BIT-OFFSET
                                       128 :BIT-ALIGNMENT 64)
                                      (:START SINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       192 :BIT-ALIGNMENT 32)
                                      (:LENGTH SINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       224 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-TEXT-EDITING-EXT-EVENT
                                   '(:STRUCT (SDL-TEXT-EDITING-EXT-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-TEXT-INPUT-EVENT :STRUCT 352 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WINDOW-ID UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:TEXT (:ARRAY :CHAR 32) :BIT-SIZE 256
                                       :BIT-OFFSET 96 :BIT-ALIGNMENT 8)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-TEXT-INPUT-EVENT
                                   '(:STRUCT (SDL-TEXT-INPUT-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-MOUSE-MOTION-EVENT :STRUCT 288 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WINDOW-ID UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:WHICH UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       96 :BIT-ALIGNMENT 32)
                                      (:STATE UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       128 :BIT-ALIGNMENT 32)
                                      (:X SINT32 :BIT-SIZE 32 :BIT-OFFSET 160
                                       :BIT-ALIGNMENT 32)
                                      (:Y SINT32 :BIT-SIZE 32 :BIT-OFFSET 192
                                       :BIT-ALIGNMENT 32)
                                      (:XREL SINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       224 :BIT-ALIGNMENT 32)
                                      (:YREL SINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       256 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-MOUSE-MOTION-EVENT
                                   '(:STRUCT (SDL-MOUSE-MOTION-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-MOUSE-BUTTON-EVENT :STRUCT 224 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WINDOW-ID UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:WHICH UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       96 :BIT-ALIGNMENT 32)
                                      (:BUTTON UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       128 :BIT-ALIGNMENT 8)
                                      (:STATE UINT8 :BIT-SIZE 8 :BIT-OFFSET 136
                                       :BIT-ALIGNMENT 8)
                                      (:CLICKS UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       144 :BIT-ALIGNMENT 8)
                                      (:PADDING1 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       152 :BIT-ALIGNMENT 8)
                                      (:X SINT32 :BIT-SIZE 32 :BIT-OFFSET 160
                                       :BIT-ALIGNMENT 32)
                                      (:Y SINT32 :BIT-SIZE 32 :BIT-OFFSET 192
                                       :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-MOUSE-BUTTON-EVENT
                                   '(:STRUCT (SDL-MOUSE-BUTTON-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-MOUSE-WHEEL-EVENT :STRUCT 352 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WINDOW-ID UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:WHICH UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       96 :BIT-ALIGNMENT 32)
                                      (:X SINT32 :BIT-SIZE 32 :BIT-OFFSET 128
                                       :BIT-ALIGNMENT 32)
                                      (:Y SINT32 :BIT-SIZE 32 :BIT-OFFSET 160
                                       :BIT-ALIGNMENT 32)
                                      (:DIRECTION UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 192 :BIT-ALIGNMENT 32)
                                      (:PRECISE-X :FLOAT :BIT-SIZE 32
                                       :BIT-OFFSET 224 :BIT-ALIGNMENT 32)
                                      (:PRECISE-Y :FLOAT :BIT-SIZE 32
                                       :BIT-OFFSET 256 :BIT-ALIGNMENT 32)
                                      (:MOUSE-X SINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       288 :BIT-ALIGNMENT 32)
                                      (:MOUSE-Y SINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       320 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-MOUSE-WHEEL-EVENT
                                   '(:STRUCT (SDL-MOUSE-WHEEL-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-JOY-AXIS-EVENT :STRUCT 160 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WHICH SDL-JOYSTICK-ID :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:AXIS UINT8 :BIT-SIZE 8 :BIT-OFFSET 96
                                       :BIT-ALIGNMENT 8)
                                      (:PADDING1 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       104 :BIT-ALIGNMENT 8)
                                      (:PADDING2 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       112 :BIT-ALIGNMENT 8)
                                      (:PADDING3 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       120 :BIT-ALIGNMENT 8)
                                      (:VALUE SINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       128 :BIT-ALIGNMENT 16)
                                      (:PADDING4 UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 144 :BIT-ALIGNMENT 16)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-JOY-AXIS-EVENT
                                   '(:STRUCT (SDL-JOY-AXIS-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-JOY-BALL-EVENT :STRUCT 160 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WHICH SDL-JOYSTICK-ID :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:BALL UINT8 :BIT-SIZE 8 :BIT-OFFSET 96
                                       :BIT-ALIGNMENT 8)
                                      (:PADDING1 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       104 :BIT-ALIGNMENT 8)
                                      (:PADDING2 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       112 :BIT-ALIGNMENT 8)
                                      (:PADDING3 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       120 :BIT-ALIGNMENT 8)
                                      (:XREL SINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       128 :BIT-ALIGNMENT 16)
                                      (:YREL SINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       144 :BIT-ALIGNMENT 16)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-JOY-BALL-EVENT
                                   '(:STRUCT (SDL-JOY-BALL-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-JOY-HAT-EVENT :STRUCT 128 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WHICH SDL-JOYSTICK-ID :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:HAT UINT8 :BIT-SIZE 8 :BIT-OFFSET 96
                                       :BIT-ALIGNMENT 8)
                                      (:VALUE UINT8 :BIT-SIZE 8 :BIT-OFFSET 104
                                       :BIT-ALIGNMENT 8)
                                      (:PADDING1 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       112 :BIT-ALIGNMENT 8)
                                      (:PADDING2 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       120 :BIT-ALIGNMENT 8)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-JOY-HAT-EVENT
                                   '(:STRUCT (SDL-JOY-HAT-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-JOY-BUTTON-EVENT :STRUCT 128 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WHICH SDL-JOYSTICK-ID :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:BUTTON UINT8 :BIT-SIZE 8 :BIT-OFFSET 96
                                       :BIT-ALIGNMENT 8)
                                      (:STATE UINT8 :BIT-SIZE 8 :BIT-OFFSET 104
                                       :BIT-ALIGNMENT 8)
                                      (:PADDING1 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       112 :BIT-ALIGNMENT 8)
                                      (:PADDING2 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       120 :BIT-ALIGNMENT 8)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-JOY-BUTTON-EVENT
                                   '(:STRUCT (SDL-JOY-BUTTON-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-JOY-DEVICE-EVENT :STRUCT 96 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WHICH SINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       64 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-JOY-DEVICE-EVENT
                                   '(:STRUCT (SDL-JOY-DEVICE-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-JOY-BATTERY-EVENT :STRUCT 128 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WHICH SDL-JOYSTICK-ID :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:LEVEL SDL-JOYSTICK-POWER-LEVEL
                                       :BIT-SIZE 32 :BIT-OFFSET 96
                                       :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-JOY-BATTERY-EVENT
                                   '(:STRUCT (SDL-JOY-BATTERY-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-CONTROLLER-AXIS-EVENT :STRUCT 160 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WHICH SDL-JOYSTICK-ID :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:AXIS UINT8 :BIT-SIZE 8 :BIT-OFFSET 96
                                       :BIT-ALIGNMENT 8)
                                      (:PADDING1 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       104 :BIT-ALIGNMENT 8)
                                      (:PADDING2 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       112 :BIT-ALIGNMENT 8)
                                      (:PADDING3 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       120 :BIT-ALIGNMENT 8)
                                      (:VALUE SINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       128 :BIT-ALIGNMENT 16)
                                      (:PADDING4 UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 144 :BIT-ALIGNMENT 16)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-CONTROLLER-AXIS-EVENT
                                   '(:STRUCT (SDL-CONTROLLER-AXIS-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-CONTROLLER-BUTTON-EVENT :STRUCT 128 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WHICH SDL-JOYSTICK-ID :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:BUTTON UINT8 :BIT-SIZE 8 :BIT-OFFSET 96
                                       :BIT-ALIGNMENT 8)
                                      (:STATE UINT8 :BIT-SIZE 8 :BIT-OFFSET 104
                                       :BIT-ALIGNMENT 8)
                                      (:PADDING1 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       112 :BIT-ALIGNMENT 8)
                                      (:PADDING2 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       120 :BIT-ALIGNMENT 8)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-CONTROLLER-BUTTON-EVENT
                                   '(:STRUCT (SDL-CONTROLLER-BUTTON-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-CONTROLLER-DEVICE-EVENT :STRUCT 96 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WHICH SINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       64 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-CONTROLLER-DEVICE-EVENT
                                   '(:STRUCT (SDL-CONTROLLER-DEVICE-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-CONTROLLER-TOUCHPAD-EVENT :STRUCT 256
                                    32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WHICH SDL-JOYSTICK-ID :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:TOUCHPAD SINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 96 :BIT-ALIGNMENT 32)
                                      (:FINGER SINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       128 :BIT-ALIGNMENT 32)
                                      (:X :FLOAT :BIT-SIZE 32 :BIT-OFFSET 160
                                       :BIT-ALIGNMENT 32)
                                      (:Y :FLOAT :BIT-SIZE 32 :BIT-OFFSET 192
                                       :BIT-ALIGNMENT 32)
                                      (:PRESSURE :FLOAT :BIT-SIZE 32
                                       :BIT-OFFSET 224 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-CONTROLLER-TOUCHPAD-EVENT
                                   '(:STRUCT (SDL-CONTROLLER-TOUCHPAD-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-CONTROLLER-SENSOR-EVENT :STRUCT 320 64
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WHICH SDL-JOYSTICK-ID :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:SENSOR SINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       96 :BIT-ALIGNMENT 32)
                                      (:DATA (:ARRAY :FLOAT 3) :BIT-SIZE 96
                                       :BIT-OFFSET 128 :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP-US UINT64 :BIT-SIZE 64
                                       :BIT-OFFSET 256 :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-CONTROLLER-SENSOR-EVENT
                                   '(:STRUCT (SDL-CONTROLLER-SENSOR-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-AUDIO-DEVICE-EVENT :STRUCT 128 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WHICH UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       64 :BIT-ALIGNMENT 32)
                                      (:ISCAPTURE UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       96 :BIT-ALIGNMENT 8)
                                      (:PADDING1 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       104 :BIT-ALIGNMENT 8)
                                      (:PADDING2 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       112 :BIT-ALIGNMENT 8)
                                      (:PADDING3 UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       120 :BIT-ALIGNMENT 8)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-AUDIO-DEVICE-EVENT
                                   '(:STRUCT (SDL-AUDIO-DEVICE-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-TOUCH-FINGER-EVENT :STRUCT 384 64
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:TOUCH-ID SDL-TOUCH-ID :BIT-SIZE 64
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 64)
                                      (:FINGER-ID SDL-FINGER-ID :BIT-SIZE 64
                                       :BIT-OFFSET 128 :BIT-ALIGNMENT 64)
                                      (:X :FLOAT :BIT-SIZE 32 :BIT-OFFSET 192
                                       :BIT-ALIGNMENT 32)
                                      (:Y :FLOAT :BIT-SIZE 32 :BIT-OFFSET 224
                                       :BIT-ALIGNMENT 32)
                                      (:DX :FLOAT :BIT-SIZE 32 :BIT-OFFSET 256
                                       :BIT-ALIGNMENT 32)
                                      (:DY :FLOAT :BIT-SIZE 32 :BIT-OFFSET 288
                                       :BIT-ALIGNMENT 32)
                                      (:PRESSURE :FLOAT :BIT-SIZE 32
                                       :BIT-OFFSET 320 :BIT-ALIGNMENT 32)
                                      (:WINDOW-ID UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 352 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-TOUCH-FINGER-EVENT
                                   '(:STRUCT (SDL-TOUCH-FINGER-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-MULTI-GESTURE-EVENT :STRUCT 320 64
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:TOUCH-ID SDL-TOUCH-ID :BIT-SIZE 64
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 64)
                                      (:D-THETA :FLOAT :BIT-SIZE 32 :BIT-OFFSET
                                       128 :BIT-ALIGNMENT 32)
                                      (:D-DIST :FLOAT :BIT-SIZE 32 :BIT-OFFSET
                                       160 :BIT-ALIGNMENT 32)
                                      (:X :FLOAT :BIT-SIZE 32 :BIT-OFFSET 192
                                       :BIT-ALIGNMENT 32)
                                      (:Y :FLOAT :BIT-SIZE 32 :BIT-OFFSET 224
                                       :BIT-ALIGNMENT 32)
                                      (:NUM-FINGERS UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 256 :BIT-ALIGNMENT 16)
                                      (:PADDING UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       272 :BIT-ALIGNMENT 16)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-MULTI-GESTURE-EVENT
                                   '(:STRUCT (SDL-MULTI-GESTURE-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-DOLLAR-GESTURE-EVENT :STRUCT 320 64
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:TOUCH-ID SDL-TOUCH-ID :BIT-SIZE 64
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 64)
                                      (:GESTURE-ID SDL-GESTURE-ID :BIT-SIZE 64
                                       :BIT-OFFSET 128 :BIT-ALIGNMENT 64)
                                      (:NUM-FINGERS UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 192 :BIT-ALIGNMENT 32)
                                      (:ERROR :FLOAT :BIT-SIZE 32 :BIT-OFFSET
                                       224 :BIT-ALIGNMENT 32)
                                      (:X :FLOAT :BIT-SIZE 32 :BIT-OFFSET 256
                                       :BIT-ALIGNMENT 32)
                                      (:Y :FLOAT :BIT-SIZE 32 :BIT-OFFSET 288
                                       :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-DOLLAR-GESTURE-EVENT
                                   '(:STRUCT (SDL-DOLLAR-GESTURE-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-DROP-EVENT :STRUCT 192 64
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:FILE (:STRING) :BIT-SIZE 64 :BIT-OFFSET
                                       64 :BIT-ALIGNMENT 64)
                                      (:WINDOW-ID UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 128 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-DROP-EVENT '(:STRUCT (SDL-DROP-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-SENSOR-EVENT :STRUCT 384 64
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WHICH SINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       64 :BIT-ALIGNMENT 32)
                                      (:DATA (:ARRAY :FLOAT 6) :BIT-SIZE 192
                                       :BIT-OFFSET 96 :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP-US UINT64 :BIT-SIZE 64
                                       :BIT-OFFSET 320 :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-SENSOR-EVENT
                                   '(:STRUCT (SDL-SENSOR-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-QUIT-EVENT :STRUCT 64 32
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-QUIT-EVENT '(:STRUCT (SDL-QUIT-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-USER-EVENT :STRUCT 256 64
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:WINDOW-ID UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 32)
                                      (:CODE SINT32 :BIT-SIZE 32 :BIT-OFFSET 96
                                       :BIT-ALIGNMENT 32)
                                      (:DATA1 (:POINTER :VOID) :BIT-SIZE 64
                                       :BIT-OFFSET 128 :BIT-ALIGNMENT 64)
                                      (:DATA2 (:POINTER :VOID) :BIT-SIZE 64
                                       :BIT-OFFSET 192 :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-USER-EVENT '(:STRUCT (SDL-USER-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-SYS-W-MMSG :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-SYS-W-MMSG
                                   '(AUTOWRAP::STRUCT
                                     (SDL-SYS-W-MMSG :BIT-SIZE 0 :BIT-ALIGNMENT
                                      0)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-SYS-WM-EVENT :STRUCT 128 64
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:TIMESTAMP UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)
                                      (:MSG (:POINTER SDL-SYS-W-MMSG) :BIT-SIZE
                                       64 :BIT-OFFSET 64 :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-SYS-WM-EVENT
                                   '(:STRUCT (SDL-SYS-WM-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-EVENT :UNION 448 64
                                    '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:COMMON SDL-COMMON-EVENT :BIT-SIZE 64
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:DISPLAY SDL-DISPLAY-EVENT :BIT-SIZE 160
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:WINDOW SDL-WINDOW-EVENT :BIT-SIZE 192
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:KEY SDL-KEYBOARD-EVENT :BIT-SIZE 256
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:EDIT SDL-TEXT-EDITING-EVENT :BIT-SIZE
                                       416 :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:EDIT-EXT SDL-TEXT-EDITING-EXT-EVENT
                                       :BIT-SIZE 256 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 64)
                                      (:TEXT SDL-TEXT-INPUT-EVENT :BIT-SIZE 352
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:MOTION SDL-MOUSE-MOTION-EVENT :BIT-SIZE
                                       288 :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:BUTTON SDL-MOUSE-BUTTON-EVENT :BIT-SIZE
                                       224 :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:WHEEL SDL-MOUSE-WHEEL-EVENT :BIT-SIZE
                                       352 :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:JAXIS SDL-JOY-AXIS-EVENT :BIT-SIZE 160
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:JBALL SDL-JOY-BALL-EVENT :BIT-SIZE 160
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:JHAT SDL-JOY-HAT-EVENT :BIT-SIZE 128
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:JBUTTON SDL-JOY-BUTTON-EVENT :BIT-SIZE
                                       128 :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:JDEVICE SDL-JOY-DEVICE-EVENT :BIT-SIZE
                                       96 :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:JBATTERY SDL-JOY-BATTERY-EVENT
                                       :BIT-SIZE 128 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:CAXIS SDL-CONTROLLER-AXIS-EVENT
                                       :BIT-SIZE 160 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:CBUTTON SDL-CONTROLLER-BUTTON-EVENT
                                       :BIT-SIZE 128 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:CDEVICE SDL-CONTROLLER-DEVICE-EVENT
                                       :BIT-SIZE 96 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:CTOUCHPAD SDL-CONTROLLER-TOUCHPAD-EVENT
                                       :BIT-SIZE 256 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:CSENSOR SDL-CONTROLLER-SENSOR-EVENT
                                       :BIT-SIZE 320 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 64)
                                      (:ADEVICE SDL-AUDIO-DEVICE-EVENT
                                       :BIT-SIZE 128 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:SENSOR SDL-SENSOR-EVENT :BIT-SIZE 384
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
                                      (:QUIT SDL-QUIT-EVENT :BIT-SIZE 64
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:USER SDL-USER-EVENT :BIT-SIZE 256
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
                                      (:SYSWM SDL-SYS-WM-EVENT :BIT-SIZE 128
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
                                      (:TFINGER SDL-TOUCH-FINGER-EVENT
                                       :BIT-SIZE 384 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 64)
                                      (:MGESTURE SDL-MULTI-GESTURE-EVENT
                                       :BIT-SIZE 320 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 64)
                                      (:DGESTURE SDL-DOLLAR-GESTURE-EVENT
                                       :BIT-SIZE 320 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 64)
                                      (:DROP SDL-DROP-EVENT :BIT-SIZE 192
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
                                      (:PADDING (:ARRAY UINT8 56) :BIT-SIZE 448
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 8)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-EVENT '(:UNION (SDL-EVENT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-PUMP-EVENTS "SDL_PumpEvents")
                                      ':VOID 'NIL)
    (PROGN
     (DEFPARAMETER +SDL-ADDEVENT+ 0)
     (DEFPARAMETER +SDL-PEEKEVENT+ 1)
     (DEFPARAMETER +SDL-GETEVENT+ 2)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8941 161
                                   '((:ADDEVENT . 0) (:PEEKEVENT . 1)
                                     (:GETEVENT . 2))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-EVENTACTION '(:ENUM (NIL :ID 161)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-PEEP-EVENTS "SDL_PeepEvents") ':INT
                                      '((|events| (:POINTER SDL-EVENT))
                                        (|numevents| :INT)
                                        (|action| SDL-EVENTACTION)
                                        (|minType| UINT32) (|maxType| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-EVENT "SDL_HasEvent") 'SDL-BOOL
                                      '((|type| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAS-EVENTS "SDL_HasEvents")
                                      'SDL-BOOL
                                      '((|minType| UINT32) (|maxType| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FLUSH-EVENT "SDL_FlushEvent")
                                      ':VOID '((|type| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FLUSH-EVENTS "SDL_FlushEvents")
                                      ':VOID
                                      '((|minType| UINT32) (|maxType| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-POLL-EVENT "SDL_PollEvent") ':INT
                                      '((|event| (:POINTER SDL-EVENT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WAIT-EVENT "SDL_WaitEvent") ':INT
                                      '((|event| (:POINTER SDL-EVENT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-WAIT-EVENT-TIMEOUT "SDL_WaitEventTimeout") ':INT
     '((|event| (:POINTER SDL-EVENT)) (|timeout| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-PUSH-EVENT "SDL_PushEvent") ':INT
                                      '((|event| (:POINTER SDL-EVENT))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-EVENT-FILTER '(:POINTER (:VOID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-EVENT-FILTER "SDL_SetEventFilter") ':VOID
     '((|filter| SDL-EVENT-FILTER) (|userdata| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-EVENT-FILTER "SDL_GetEventFilter") 'SDL-BOOL
     '((|filter| (:POINTER SDL-EVENT-FILTER))
       (|userdata| (:POINTER (:POINTER :VOID)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-ADD-EVENT-WATCH "SDL_AddEventWatch") ':VOID
     '((|filter| SDL-EVENT-FILTER) (|userdata| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-DEL-EVENT-WATCH "SDL_DelEventWatch") ':VOID
     '((|filter| SDL-EVENT-FILTER) (|userdata| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-FILTER-EVENTS "SDL_FilterEvents")
                                      ':VOID
                                      '((|filter| SDL-EVENT-FILTER)
                                        (|userdata| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-EVENT-STATE "SDL_EventState")
                                      'UINT8 '((|type| UINT32) (|state| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-REGISTER-EVENTS "SDL_RegisterEvents") 'UINT32 '((|numevents| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-BASE-PATH "SDL_GetBasePath")
                                      '(:STRING) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-PREF-PATH "SDL_GetPrefPath")
                                      '(:STRING)
                                      '((|org| (:STRING)) (|app| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '_SDL_HAPTIC :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-HAPTIC
                                   '(AUTOWRAP::STRUCT
                                     (_SDL_HAPTIC :BIT-SIZE 0 :BIT-ALIGNMENT
                                      0)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-HAPTIC-DIRECTION :STRUCT 128 32
                                    '((:TYPE UINT8 :BIT-SIZE 8 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 8)
                                      (:DIR (:ARRAY SINT32 3) :BIT-SIZE 96
                                       :BIT-OFFSET 32 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-HAPTIC-DIRECTION
                                   '(:STRUCT (SDL-HAPTIC-DIRECTION)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-HAPTIC-CONSTANT :STRUCT 320 32
                                    '((:TYPE UINT16 :BIT-SIZE 16 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 16)
                                      (:DIRECTION SDL-HAPTIC-DIRECTION
                                       :BIT-SIZE 128 :BIT-OFFSET 32
                                       :BIT-ALIGNMENT 32)
                                      (:LENGTH UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       160 :BIT-ALIGNMENT 32)
                                      (:DELAY UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       192 :BIT-ALIGNMENT 16)
                                      (:BUTTON UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       208 :BIT-ALIGNMENT 16)
                                      (:INTERVAL UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 224 :BIT-ALIGNMENT 16)
                                      (:LEVEL SINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       240 :BIT-ALIGNMENT 16)
                                      (:ATTACK-LENGTH UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 256 :BIT-ALIGNMENT 16)
                                      (:ATTACK-LEVEL UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 272 :BIT-ALIGNMENT 16)
                                      (:FADE-LENGTH UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 288 :BIT-ALIGNMENT 16)
                                      (:FADE-LEVEL UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 304 :BIT-ALIGNMENT 16)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-HAPTIC-CONSTANT
                                   '(:STRUCT (SDL-HAPTIC-CONSTANT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-HAPTIC-PERIODIC :STRUCT 384 32
                                    '((:TYPE UINT16 :BIT-SIZE 16 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 16)
                                      (:DIRECTION SDL-HAPTIC-DIRECTION
                                       :BIT-SIZE 128 :BIT-OFFSET 32
                                       :BIT-ALIGNMENT 32)
                                      (:LENGTH UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       160 :BIT-ALIGNMENT 32)
                                      (:DELAY UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       192 :BIT-ALIGNMENT 16)
                                      (:BUTTON UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       208 :BIT-ALIGNMENT 16)
                                      (:INTERVAL UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 224 :BIT-ALIGNMENT 16)
                                      (:PERIOD UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       240 :BIT-ALIGNMENT 16)
                                      (:MAGNITUDE SINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 256 :BIT-ALIGNMENT 16)
                                      (:OFFSET SINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       272 :BIT-ALIGNMENT 16)
                                      (:PHASE UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       288 :BIT-ALIGNMENT 16)
                                      (:ATTACK-LENGTH UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 304 :BIT-ALIGNMENT 16)
                                      (:ATTACK-LEVEL UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 320 :BIT-ALIGNMENT 16)
                                      (:FADE-LENGTH UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 336 :BIT-ALIGNMENT 16)
                                      (:FADE-LEVEL UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 352 :BIT-ALIGNMENT 16)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-HAPTIC-PERIODIC
                                   '(:STRUCT (SDL-HAPTIC-PERIODIC)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-HAPTIC-CONDITION :STRUCT 544 32
                                    '((:TYPE UINT16 :BIT-SIZE 16 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 16)
                                      (:DIRECTION SDL-HAPTIC-DIRECTION
                                       :BIT-SIZE 128 :BIT-OFFSET 32
                                       :BIT-ALIGNMENT 32)
                                      (:LENGTH UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       160 :BIT-ALIGNMENT 32)
                                      (:DELAY UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       192 :BIT-ALIGNMENT 16)
                                      (:BUTTON UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       208 :BIT-ALIGNMENT 16)
                                      (:INTERVAL UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 224 :BIT-ALIGNMENT 16)
                                      (:RIGHT-SAT (:ARRAY UINT16 3) :BIT-SIZE
                                       48 :BIT-OFFSET 240 :BIT-ALIGNMENT 16)
                                      (:LEFT-SAT (:ARRAY UINT16 3) :BIT-SIZE 48
                                       :BIT-OFFSET 288 :BIT-ALIGNMENT 16)
                                      (:RIGHT-COEFF (:ARRAY SINT16 3) :BIT-SIZE
                                       48 :BIT-OFFSET 336 :BIT-ALIGNMENT 16)
                                      (:LEFT-COEFF (:ARRAY SINT16 3) :BIT-SIZE
                                       48 :BIT-OFFSET 384 :BIT-ALIGNMENT 16)
                                      (:DEADBAND (:ARRAY UINT16 3) :BIT-SIZE 48
                                       :BIT-OFFSET 432 :BIT-ALIGNMENT 16)
                                      (:CENTER (:ARRAY SINT16 3) :BIT-SIZE 48
                                       :BIT-OFFSET 480 :BIT-ALIGNMENT 16)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-HAPTIC-CONDITION
                                   '(:STRUCT (SDL-HAPTIC-CONDITION)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-HAPTIC-RAMP :STRUCT 352 32
                                    '((:TYPE UINT16 :BIT-SIZE 16 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 16)
                                      (:DIRECTION SDL-HAPTIC-DIRECTION
                                       :BIT-SIZE 128 :BIT-OFFSET 32
                                       :BIT-ALIGNMENT 32)
                                      (:LENGTH UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       160 :BIT-ALIGNMENT 32)
                                      (:DELAY UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       192 :BIT-ALIGNMENT 16)
                                      (:BUTTON UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       208 :BIT-ALIGNMENT 16)
                                      (:INTERVAL UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 224 :BIT-ALIGNMENT 16)
                                      (:START SINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       240 :BIT-ALIGNMENT 16)
                                      (:END SINT16 :BIT-SIZE 16 :BIT-OFFSET 256
                                       :BIT-ALIGNMENT 16)
                                      (:ATTACK-LENGTH UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 272 :BIT-ALIGNMENT 16)
                                      (:ATTACK-LEVEL UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 288 :BIT-ALIGNMENT 16)
                                      (:FADE-LENGTH UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 304 :BIT-ALIGNMENT 16)
                                      (:FADE-LEVEL UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 320 :BIT-ALIGNMENT 16)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-HAPTIC-RAMP
                                   '(:STRUCT (SDL-HAPTIC-RAMP)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-HAPTIC-LEFT-RIGHT :STRUCT 96 32
                                    '((:TYPE UINT16 :BIT-SIZE 16 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 16)
                                      (:LENGTH UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       32 :BIT-ALIGNMENT 32)
                                      (:LARGE-MAGNITUDE UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 16)
                                      (:SMALL-MAGNITUDE UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 80 :BIT-ALIGNMENT 16)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-HAPTIC-LEFT-RIGHT
                                   '(:STRUCT (SDL-HAPTIC-LEFT-RIGHT)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-HAPTIC-CUSTOM :STRUCT 448 64
                                    '((:TYPE UINT16 :BIT-SIZE 16 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 16)
                                      (:DIRECTION SDL-HAPTIC-DIRECTION
                                       :BIT-SIZE 128 :BIT-OFFSET 32
                                       :BIT-ALIGNMENT 32)
                                      (:LENGTH UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       160 :BIT-ALIGNMENT 32)
                                      (:DELAY UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       192 :BIT-ALIGNMENT 16)
                                      (:BUTTON UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       208 :BIT-ALIGNMENT 16)
                                      (:INTERVAL UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 224 :BIT-ALIGNMENT 16)
                                      (:CHANNELS UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       240 :BIT-ALIGNMENT 8)
                                      (:PERIOD UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       256 :BIT-ALIGNMENT 16)
                                      (:SAMPLES UINT16 :BIT-SIZE 16 :BIT-OFFSET
                                       272 :BIT-ALIGNMENT 16)
                                      (:DATA (:POINTER UINT16) :BIT-SIZE 64
                                       :BIT-OFFSET 320 :BIT-ALIGNMENT 64)
                                      (:ATTACK-LENGTH UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 384 :BIT-ALIGNMENT 16)
                                      (:ATTACK-LEVEL UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 400 :BIT-ALIGNMENT 16)
                                      (:FADE-LENGTH UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 416 :BIT-ALIGNMENT 16)
                                      (:FADE-LEVEL UINT16 :BIT-SIZE 16
                                       :BIT-OFFSET 432 :BIT-ALIGNMENT 16)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-HAPTIC-CUSTOM
                                   '(:STRUCT (SDL-HAPTIC-CUSTOM)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-HAPTIC-EFFECT :UNION 576 64
                                    '((:TYPE UINT16 :BIT-SIZE 16 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 16)
                                      (:CONSTANT SDL-HAPTIC-CONSTANT :BIT-SIZE
                                       320 :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:PERIODIC SDL-HAPTIC-PERIODIC :BIT-SIZE
                                       384 :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:CONDITION SDL-HAPTIC-CONDITION
                                       :BIT-SIZE 544 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:RAMP SDL-HAPTIC-RAMP :BIT-SIZE 352
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:LEFTRIGHT SDL-HAPTIC-LEFT-RIGHT
                                       :BIT-SIZE 96 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 32)
                                      (:CUSTOM SDL-HAPTIC-CUSTOM :BIT-SIZE 448
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-HAPTIC-EFFECT
                                   '(:UNION (SDL-HAPTIC-EFFECT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-NUM-HAPTICS "SDL_NumHaptics") ':INT
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAPTIC-NAME "SDL_HapticName")
                                      '(:STRING) '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAPTIC-OPEN "SDL_HapticOpen")
                                      '(:POINTER SDL-HAPTIC)
                                      '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAPTIC-OPENED "SDL_HapticOpened")
                                      ':INT '((|device_index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAPTIC-INDEX "SDL_HapticIndex")
                                      ':INT
                                      '((|haptic| (:POINTER SDL-HAPTIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-MOUSE-IS-HAPTIC "SDL_MouseIsHaptic") ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-OPEN-FROM-MOUSE "SDL_HapticOpenFromMouse")
     '(:POINTER SDL-HAPTIC) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-JOYSTICK-IS-HAPTIC "SDL_JoystickIsHaptic") ':INT
     '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-OPEN-FROM-JOYSTICK "SDL_HapticOpenFromJoystick")
     '(:POINTER SDL-HAPTIC) '((|joystick| (:POINTER SDL-JOYSTICK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAPTIC-CLOSE "SDL_HapticClose")
                                      ':VOID
                                      '((|haptic| (:POINTER SDL-HAPTIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-NUM-EFFECTS "SDL_HapticNumEffects") ':INT
     '((|haptic| (:POINTER SDL-HAPTIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-NUM-EFFECTS-PLAYING "SDL_HapticNumEffectsPlaying") ':INT
     '((|haptic| (:POINTER SDL-HAPTIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAPTIC-QUERY "SDL_HapticQuery")
                                      ':UNSIGNED-INT
                                      '((|haptic| (:POINTER SDL-HAPTIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-NUM-AXES "SDL_HapticNumAxes") ':INT
     '((|haptic| (:POINTER SDL-HAPTIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-EFFECT-SUPPORTED "SDL_HapticEffectSupported") ':INT
     '((|haptic| (:POINTER SDL-HAPTIC))
       (|effect| (:POINTER SDL-HAPTIC-EFFECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-NEW-EFFECT "SDL_HapticNewEffect") ':INT
     '((|haptic| (:POINTER SDL-HAPTIC))
       (|effect| (:POINTER SDL-HAPTIC-EFFECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-UPDATE-EFFECT "SDL_HapticUpdateEffect") ':INT
     '((|haptic| (:POINTER SDL-HAPTIC)) (|effect| :INT)
       (|data| (:POINTER SDL-HAPTIC-EFFECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-RUN-EFFECT "SDL_HapticRunEffect") ':INT
     '((|haptic| (:POINTER SDL-HAPTIC)) (|effect| :INT) (|iterations| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-STOP-EFFECT "SDL_HapticStopEffect") ':INT
     '((|haptic| (:POINTER SDL-HAPTIC)) (|effect| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-DESTROY-EFFECT "SDL_HapticDestroyEffect") ':VOID
     '((|haptic| (:POINTER SDL-HAPTIC)) (|effect| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-GET-EFFECT-STATUS "SDL_HapticGetEffectStatus") ':INT
     '((|haptic| (:POINTER SDL-HAPTIC)) (|effect| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-SET-GAIN "SDL_HapticSetGain") ':INT
     '((|haptic| (:POINTER SDL-HAPTIC)) (|gain| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-SET-AUTOCENTER "SDL_HapticSetAutocenter") ':INT
     '((|haptic| (:POINTER SDL-HAPTIC)) (|autocenter| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAPTIC-PAUSE "SDL_HapticPause")
                                      ':INT
                                      '((|haptic| (:POINTER SDL-HAPTIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HAPTIC-UNPAUSE "SDL_HapticUnpause")
                                      ':INT
                                      '((|haptic| (:POINTER SDL-HAPTIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-STOP-ALL "SDL_HapticStopAll") ':INT
     '((|haptic| (:POINTER SDL-HAPTIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-RUMBLE-SUPPORTED "SDL_HapticRumbleSupported") ':INT
     '((|haptic| (:POINTER SDL-HAPTIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-RUMBLE-INIT "SDL_HapticRumbleInit") ':INT
     '((|haptic| (:POINTER SDL-HAPTIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-RUMBLE-PLAY "SDL_HapticRumblePlay") ':INT
     '((|haptic| (:POINTER SDL-HAPTIC)) (|strength| :FLOAT) (|length| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HAPTIC-RUMBLE-STOP "SDL_HapticRumbleStop") ':INT
     '((|haptic| (:POINTER SDL-HAPTIC))))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-HID-DEVICE- :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-HID-DEVICE
                                   '(AUTOWRAP::STRUCT
                                     (SDL-HID-DEVICE- :BIT-SIZE 0
                                      :BIT-ALIGNMENT 0)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-HID-DEVICE-INFO :STRUCT 640 64
                                    '((:PATH (:STRING) :BIT-SIZE 64 :BIT-OFFSET
                                       0 :BIT-ALIGNMENT 64)
                                      (:VENDOR-ID :UNSIGNED-SHORT :BIT-SIZE 16
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 16)
                                      (:PRODUCT-ID :UNSIGNED-SHORT :BIT-SIZE 16
                                       :BIT-OFFSET 80 :BIT-ALIGNMENT 16)
                                      (:SERIAL-NUMBER (:POINTER WCHAR-T)
                                       :BIT-SIZE 64 :BIT-OFFSET 128
                                       :BIT-ALIGNMENT 64)
                                      (:RELEASE-NUMBER :UNSIGNED-SHORT
                                       :BIT-SIZE 16 :BIT-OFFSET 192
                                       :BIT-ALIGNMENT 16)
                                      (:MANUFACTURER-STRING (:POINTER WCHAR-T)
                                       :BIT-SIZE 64 :BIT-OFFSET 256
                                       :BIT-ALIGNMENT 64)
                                      (:PRODUCT-STRING (:POINTER WCHAR-T)
                                       :BIT-SIZE 64 :BIT-OFFSET 320
                                       :BIT-ALIGNMENT 64)
                                      (:USAGE-PAGE :UNSIGNED-SHORT :BIT-SIZE 16
                                       :BIT-OFFSET 384 :BIT-ALIGNMENT 16)
                                      (:USAGE :UNSIGNED-SHORT :BIT-SIZE 16
                                       :BIT-OFFSET 400 :BIT-ALIGNMENT 16)
                                      (:INTERFACE-NUMBER :INT :BIT-SIZE 32
                                       :BIT-OFFSET 416 :BIT-ALIGNMENT 32)
                                      (:INTERFACE-CLASS :INT :BIT-SIZE 32
                                       :BIT-OFFSET 448 :BIT-ALIGNMENT 32)
                                      (:INTERFACE-SUBCLASS :INT :BIT-SIZE 32
                                       :BIT-OFFSET 480 :BIT-ALIGNMENT 32)
                                      (:INTERFACE-PROTOCOL :INT :BIT-SIZE 32
                                       :BIT-OFFSET 512 :BIT-ALIGNMENT 32)
                                      (:NEXT
                                       (:POINTER
                                        (:STRUCT (SDL-HID-DEVICE-INFO)))
                                       :BIT-SIZE 64 :BIT-OFFSET 576
                                       :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-HID-DEVICE-INFO
                                   '(:STRUCT (SDL-HID-DEVICE-INFO)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HID-INIT "SDL_hid_init") ':INT
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HID-EXIT "SDL_hid_exit") ':INT
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HID-DEVICE-CHANGE-COUNT "SDL_hid_device_change_count") 'UINT32 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HID-ENUMERATE "SDL_hid_enumerate")
                                      '(:POINTER SDL-HID-DEVICE-INFO)
                                      '((|vendor_id| :UNSIGNED-SHORT)
                                        (|product_id| :UNSIGNED-SHORT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HID-FREE-ENUMERATION "SDL_hid_free_enumeration") ':VOID
     '((|devs| (:POINTER SDL-HID-DEVICE-INFO))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HID-OPEN "SDL_hid_open")
                                      '(:POINTER SDL-HID-DEVICE)
                                      '((|vendor_id| :UNSIGNED-SHORT)
                                        (|product_id| :UNSIGNED-SHORT)
                                        (|serial_number| (:POINTER WCHAR-T))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HID-OPEN-PATH "SDL_hid_open_path")
                                      '(:POINTER SDL-HID-DEVICE)
                                      '((|path| (:STRING))
                                        (|bExclusive| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HID-WRITE "SDL_hid_write") ':INT
                                      '((|dev| (:POINTER SDL-HID-DEVICE))
                                        (|data| (:STRING)) (|length| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HID-READ-TIMEOUT "SDL_hid_read_timeout") ':INT
     '((|dev| (:POINTER SDL-HID-DEVICE)) (|data| (:STRING)) (|length| SIZE-T)
       (|milliseconds| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HID-READ "SDL_hid_read") ':INT
                                      '((|dev| (:POINTER SDL-HID-DEVICE))
                                        (|data| (:STRING)) (|length| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HID-SET-NONBLOCKING "SDL_hid_set_nonblocking") ':INT
     '((|dev| (:POINTER SDL-HID-DEVICE)) (|nonblock| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HID-SEND-FEATURE-REPORT "SDL_hid_send_feature_report") ':INT
     '((|dev| (:POINTER SDL-HID-DEVICE)) (|data| (:STRING)) (|length| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HID-GET-FEATURE-REPORT "SDL_hid_get_feature_report") ':INT
     '((|dev| (:POINTER SDL-HID-DEVICE)) (|data| (:STRING)) (|length| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HID-CLOSE "SDL_hid_close") ':VOID
                                      '((|dev| (:POINTER SDL-HID-DEVICE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HID-GET-MANUFACTURER-STRING "SDL_hid_get_manufacturer_string") ':INT
     '((|dev| (:POINTER SDL-HID-DEVICE)) (|string| (:POINTER WCHAR-T))
       (|maxlen| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HID-GET-PRODUCT-STRING "SDL_hid_get_product_string") ':INT
     '((|dev| (:POINTER SDL-HID-DEVICE)) (|string| (:POINTER WCHAR-T))
       (|maxlen| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HID-GET-SERIAL-NUMBER-STRING "SDL_hid_get_serial_number_string")
     ':INT
     '((|dev| (:POINTER SDL-HID-DEVICE)) (|string| (:POINTER WCHAR-T))
       (|maxlen| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-HID-GET-INDEXED-STRING "SDL_hid_get_indexed_string") ':INT
     '((|dev| (:POINTER SDL-HID-DEVICE)) (|string_index| :INT)
       (|string| (:POINTER WCHAR-T)) (|maxlen| SIZE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-HID-BLE-SCAN "SDL_hid_ble_scan")
                                      ':VOID '((|active| SDL-BOOL)))
    (PROGN
     (DEFPARAMETER +SDL-HINT-DEFAULT+ 0)
     (DEFPARAMETER +SDL-HINT-NORMAL+ 1)
     (DEFPARAMETER +SDL-HINT-OVERRIDE+ 2)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8942 173
                                   '((:DEFAULT . 0) (:NORMAL . 1)
                                     (:OVERRIDE . 2))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-HINT-PRIORITY '(:ENUM (NIL :ID 173)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-HINT-WITH-PRIORITY "SDL_SetHintWithPriority") 'SDL-BOOL
     '((|name| (:STRING)) (|value| (:STRING)) (|priority| SDL-HINT-PRIORITY)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-SET-HINT "SDL_SetHint") 'SDL-BOOL
                                      '((|name| (:STRING))
                                        (|value| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-RESET-HINT "SDL_ResetHint")
                                      'SDL-BOOL '((|name| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-RESET-HINTS "SDL_ResetHints")
                                      ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-HINT "SDL_GetHint") '(:STRING)
                                      '((|name| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-HINT-BOOLEAN "SDL_GetHintBoolean") 'SDL-BOOL
     '((|name| (:STRING)) (|default_value| SDL-BOOL)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-HINT-CALLBACK '(:POINTER (:VOID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-ADD-HINT-CALLBACK "SDL_AddHintCallback") ':VOID
     '((|name| (:STRING)) (|callback| SDL-HINT-CALLBACK)
       (|userdata| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-DEL-HINT-CALLBACK "SDL_DelHintCallback") ':VOID
     '((|name| (:STRING)) (|callback| SDL-HINT-CALLBACK)
       (|userdata| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-CLEAR-HINTS "SDL_ClearHints")
                                      ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOAD-OBJECT "SDL_LoadObject")
                                      '(:POINTER :VOID)
                                      '((|sofile| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOAD-FUNCTION "SDL_LoadFunction")
                                      '(:POINTER :VOID)
                                      '((|handle| (:POINTER :VOID))
                                        (|name| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-UNLOAD-OBJECT "SDL_UnloadObject")
                                      ':VOID '((|handle| (:POINTER :VOID))))
    (PROGN
     (DEFPARAMETER +SDL-LOG-CATEGORY-APPLICATION+ 0)
     (DEFPARAMETER +SDL-LOG-CATEGORY-ERROR+ 1)
     (DEFPARAMETER +SDL-LOG-CATEGORY-ASSERT+ 2)
     (DEFPARAMETER +SDL-LOG-CATEGORY-SYSTEM+ 3)
     (DEFPARAMETER +SDL-LOG-CATEGORY-AUDIO+ 4)
     (DEFPARAMETER +SDL-LOG-CATEGORY-VIDEO+ 5)
     (DEFPARAMETER +SDL-LOG-CATEGORY-RENDER+ 6)
     (DEFPARAMETER +SDL-LOG-CATEGORY-INPUT+ 7)
     (DEFPARAMETER +SDL-LOG-CATEGORY-TEST+ 8)
     (DEFPARAMETER +SDL-LOG-CATEGORY-RESERVED1+ 9)
     (DEFPARAMETER +SDL-LOG-CATEGORY-RESERVED2+ 10)
     (DEFPARAMETER +SDL-LOG-CATEGORY-RESERVED3+ 11)
     (DEFPARAMETER +SDL-LOG-CATEGORY-RESERVED4+ 12)
     (DEFPARAMETER +SDL-LOG-CATEGORY-RESERVED5+ 13)
     (DEFPARAMETER +SDL-LOG-CATEGORY-RESERVED6+ 14)
     (DEFPARAMETER +SDL-LOG-CATEGORY-RESERVED7+ 15)
     (DEFPARAMETER +SDL-LOG-CATEGORY-RESERVED8+ 16)
     (DEFPARAMETER +SDL-LOG-CATEGORY-RESERVED9+ 17)
     (DEFPARAMETER +SDL-LOG-CATEGORY-RESERVED10+ 18)
     (DEFPARAMETER +SDL-LOG-CATEGORY-CUSTOM+ 19)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8943 174
                                   '((:APPLICATION . 0) (:ERROR . 1)
                                     (:ASSERT . 2) (:SYSTEM . 3) (:AUDIO . 4)
                                     (:VIDEO . 5) (:RENDER . 6) (:INPUT . 7)
                                     (:TEST . 8) (:RESERVED1 . 9)
                                     (:RESERVED2 . 10) (:RESERVED3 . 11)
                                     (:RESERVED4 . 12) (:RESERVED5 . 13)
                                     (:RESERVED6 . 14) (:RESERVED7 . 15)
                                     (:RESERVED8 . 16) (:RESERVED9 . 17)
                                     (:RESERVED10 . 18) (:CUSTOM . 19))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-LOG-CATEGORY '(:ENUM (NIL :ID 174)))
    (PROGN
     (DEFPARAMETER +SDL-LOG-PRIORITY-VERBOSE+ 1)
     (DEFPARAMETER +SDL-LOG-PRIORITY-DEBUG+ 2)
     (DEFPARAMETER +SDL-LOG-PRIORITY-INFO+ 3)
     (DEFPARAMETER +SDL-LOG-PRIORITY-WARN+ 4)
     (DEFPARAMETER +SDL-LOG-PRIORITY-ERROR+ 5)
     (DEFPARAMETER +SDL-LOG-PRIORITY-CRITICAL+ 6)
     (DEFPARAMETER +SDL-NUM-LOG-PRIORITIES+ 7)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8944 175
                                   '((:LOG-PRIORITY-VERBOSE . 1)
                                     (:LOG-PRIORITY-DEBUG . 2)
                                     (:LOG-PRIORITY-INFO . 3)
                                     (:LOG-PRIORITY-WARN . 4)
                                     (:LOG-PRIORITY-ERROR . 5)
                                     (:LOG-PRIORITY-CRITICAL . 6)
                                     (:NUM-LOG-PRIORITIES . 7))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-LOG-PRIORITY '(:ENUM (NIL :ID 175)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LOG-SET-ALL-PRIORITY "SDL_LogSetAllPriority") ':VOID
     '((|priority| SDL-LOG-PRIORITY)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LOG-SET-PRIORITY "SDL_LogSetPriority") ':VOID
     '((|category| :INT) (|priority| SDL-LOG-PRIORITY)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LOG-GET-PRIORITY "SDL_LogGetPriority") 'SDL-LOG-PRIORITY
     '((|category| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LOG-RESET-PRIORITIES "SDL_LogResetPriorities") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOG "SDL_Log" :VARIADIC-P T) ':VOID
                                      '((|fmt| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LOG-VERBOSE "SDL_LogVerbose" :VARIADIC-P T) ':VOID
     '((|category| :INT) (|fmt| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LOG-DEBUG "SDL_LogDebug" :VARIADIC-P T) ':VOID
     '((|category| :INT) (|fmt| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LOG-INFO "SDL_LogInfo" :VARIADIC-P T) ':VOID
     '((|category| :INT) (|fmt| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LOG-WARN "SDL_LogWarn" :VARIADIC-P T) ':VOID
     '((|category| :INT) (|fmt| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LOG-ERROR "SDL_LogError" :VARIADIC-P T) ':VOID
     '((|category| :INT) (|fmt| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LOG-CRITICAL "SDL_LogCritical" :VARIADIC-P T) ':VOID
     '((|category| :INT) (|fmt| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LOG-MESSAGE "SDL_LogMessage" :VARIADIC-P T) ':VOID
     '((|category| :INT) (|priority| SDL-LOG-PRIORITY) (|fmt| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOG-MESSAGE-V "SDL_LogMessageV")
                                      ':VOID
                                      '((|category| :INT)
                                        (|priority| SDL-LOG-PRIORITY)
                                        (|fmt| (:STRING)) (|ap| VA-LIST)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-LOG-OUTPUT-FUNCTION
                                   '(:POINTER (:VOID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LOG-GET-OUTPUT-FUNCTION "SDL_LogGetOutputFunction") ':VOID
     '((|callback| (:POINTER SDL-LOG-OUTPUT-FUNCTION))
       (|userdata| (:POINTER (:POINTER :VOID)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LOG-SET-OUTPUT-FUNCTION "SDL_LogSetOutputFunction") ':VOID
     '((|callback| SDL-LOG-OUTPUT-FUNCTION) (|userdata| (:POINTER :VOID))))
    (PROGN
     (DEFPARAMETER +SDL-MESSAGEBOX-ERROR+ 16)
     (DEFPARAMETER +SDL-MESSAGEBOX-WARNING+ 32)
     (DEFPARAMETER +SDL-MESSAGEBOX-INFORMATION+ 64)
     (DEFPARAMETER +SDL-MESSAGEBOX-BUTTONS-LEFT-TO-RIGHT+ 128)
     (DEFPARAMETER +SDL-MESSAGEBOX-BUTTONS-RIGHT-TO-LEFT+ 256)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8945 176
                                   '((:ERROR . 16) (:WARNING . 32)
                                     (:INFORMATION . 64)
                                     (:BUTTONS-LEFT-TO-RIGHT . 128)
                                     (:BUTTONS-RIGHT-TO-LEFT . 256))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-MESSAGE-BOX-FLAGS
                                   '(:ENUM (NIL :ID 176)))
    (PROGN
     (DEFPARAMETER +SDL-MESSAGEBOX-BUTTON-RETURNKEY-DEFAULT+ 1)
     (DEFPARAMETER +SDL-MESSAGEBOX-BUTTON-ESCAPEKEY-DEFAULT+ 2)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8946 177
                                   '((:RETURNKEY-DEFAULT . 1)
                                     (:ESCAPEKEY-DEFAULT . 2))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-MESSAGE-BOX-BUTTON-FLAGS
                                   '(:ENUM (NIL :ID 177)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-MESSAGE-BOX-BUTTON-DATA
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 178 :BIT-SIZE 128 :BIT-ALIGNMENT
                                      64)
                                     (:FLAGS UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 32)
                                     (:BUTTONID :INT :BIT-SIZE 32 :BIT-OFFSET
                                      32 :BIT-ALIGNMENT 32)
                                     (:TEXT (:STRING) :BIT-SIZE 64 :BIT-OFFSET
                                      64 :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-MESSAGE-BOX-COLOR
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 179 :BIT-SIZE 24 :BIT-ALIGNMENT
                                      8)
                                     (:R UINT8 :BIT-SIZE 8 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 8)
                                     (:G UINT8 :BIT-SIZE 8 :BIT-OFFSET 8
                                      :BIT-ALIGNMENT 8)
                                     (:B UINT8 :BIT-SIZE 8 :BIT-OFFSET 16
                                      :BIT-ALIGNMENT 8)))
    (PROGN
     (DEFPARAMETER +SDL-MESSAGEBOX-COLOR-BACKGROUND+ 0)
     (DEFPARAMETER +SDL-MESSAGEBOX-COLOR-TEXT+ 1)
     (DEFPARAMETER +SDL-MESSAGEBOX-COLOR-BUTTON-BORDER+ 2)
     (DEFPARAMETER +SDL-MESSAGEBOX-COLOR-BUTTON-BACKGROUND+ 3)
     (DEFPARAMETER +SDL-MESSAGEBOX-COLOR-BUTTON-SELECTED+ 4)
     (DEFPARAMETER +SDL-MESSAGEBOX-COLOR-MAX+ 5)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8947 180
                                   '((:BACKGROUND . 0) (:TEXT . 1)
                                     (:BUTTON-BORDER . 2)
                                     (:BUTTON-BACKGROUND . 3)
                                     (:BUTTON-SELECTED . 4) (:MAX . 5))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-MESSAGE-BOX-COLOR-TYPE
                                   '(:ENUM (NIL :ID 180)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-MESSAGE-BOX-COLOR-SCHEME
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 181 :BIT-SIZE 120 :BIT-ALIGNMENT
                                      8)
                                     (:COLORS (:ARRAY SDL-MESSAGE-BOX-COLOR 5)
                                      :BIT-SIZE 120 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 8)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-MESSAGE-BOX-DATA
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 182 :BIT-SIZE 448 :BIT-ALIGNMENT
                                      64)
                                     (:FLAGS UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 32)
                                     (:WINDOW (:POINTER SDL-WINDOW) :BIT-SIZE
                                      64 :BIT-OFFSET 64 :BIT-ALIGNMENT 64)
                                     (:TITLE (:STRING) :BIT-SIZE 64 :BIT-OFFSET
                                      128 :BIT-ALIGNMENT 64)
                                     (:MESSAGE (:STRING) :BIT-SIZE 64
                                      :BIT-OFFSET 192 :BIT-ALIGNMENT 64)
                                     (:NUMBUTTONS :INT :BIT-SIZE 32 :BIT-OFFSET
                                      256 :BIT-ALIGNMENT 32)
                                     (:BUTTONS
                                      (:POINTER SDL-MESSAGE-BOX-BUTTON-DATA)
                                      :BIT-SIZE 64 :BIT-OFFSET 320
                                      :BIT-ALIGNMENT 64)
                                     (:COLOR-SCHEME
                                      (:POINTER SDL-MESSAGE-BOX-COLOR-SCHEME)
                                      :BIT-SIZE 64 :BIT-OFFSET 384
                                      :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SHOW-MESSAGE-BOX "SDL_ShowMessageBox") ':INT
     '((|messageboxdata| (:POINTER SDL-MESSAGE-BOX-DATA))
       (|buttonid| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SHOW-SIMPLE-MESSAGE-BOX "SDL_ShowSimpleMessageBox") ':INT
     '((|flags| UINT32) (|title| (:STRING)) (|message| (:STRING))
       (|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-METAL-VIEW '(:POINTER :VOID))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-METAL-CREATE-VIEW "SDL_Metal_CreateView") 'SDL-METAL-VIEW
     '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-METAL-DESTROY-VIEW "SDL_Metal_DestroyView") ':VOID
     '((|view| SDL-METAL-VIEW)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-METAL-GET-LAYER "SDL_Metal_GetLayer") '(:POINTER :VOID)
     '((|view| SDL-METAL-VIEW)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-METAL-GET-DRAWABLE-SIZE "SDL_Metal_GetDrawableSize") ':VOID
     '((|window| (:POINTER SDL-WINDOW)) (|w| (:POINTER :INT))
       (|h| (:POINTER :INT))))
    (PROGN
     (DEFPARAMETER +SDL-POWERSTATE-UNKNOWN+ 0)
     (DEFPARAMETER +SDL-POWERSTATE-ON-BATTERY+ 1)
     (DEFPARAMETER +SDL-POWERSTATE-NO-BATTERY+ 2)
     (DEFPARAMETER +SDL-POWERSTATE-CHARGING+ 3)
     (DEFPARAMETER +SDL-POWERSTATE-CHARGED+ 4)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8948 183
                                   '((:UNKNOWN . 0) (:ON-BATTERY . 1)
                                     (:NO-BATTERY . 2) (:CHARGING . 3)
                                     (:CHARGED . 4))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-POWER-STATE '(:ENUM (NIL :ID 183)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-POWER-INFO "SDL_GetPowerInfo")
                                      'SDL-POWER-STATE
                                      '((|seconds| (:POINTER :INT))
                                        (|percent| (:POINTER :INT))))
    (PROGN
     (DEFPARAMETER +SDL-RENDERER-SOFTWARE+ 1)
     (DEFPARAMETER +SDL-RENDERER-ACCELERATED+ 2)
     (DEFPARAMETER +SDL-RENDERER-PRESENTVSYNC+ 4)
     (DEFPARAMETER +SDL-RENDERER-TARGETTEXTURE+ 8)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8949 184
                                   '((:SOFTWARE . 1) (:ACCELERATED . 2)
                                     (:PRESENTVSYNC . 4)
                                     (:TARGETTEXTURE . 8))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-RENDERER-FLAGS '(:ENUM (NIL :ID 184)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-RENDERER-INFO :STRUCT 704 64
                                    '((:NAME (:STRING) :BIT-SIZE 64 :BIT-OFFSET
                                       0 :BIT-ALIGNMENT 64)
                                      (:FLAGS UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       64 :BIT-ALIGNMENT 32)
                                      (:NUM-TEXTURE-FORMATS UINT32 :BIT-SIZE 32
                                       :BIT-OFFSET 96 :BIT-ALIGNMENT 32)
                                      (:TEXTURE-FORMATS (:ARRAY UINT32 16)
                                       :BIT-SIZE 512 :BIT-OFFSET 128
                                       :BIT-ALIGNMENT 32)
                                      (:MAX-TEXTURE-WIDTH :INT :BIT-SIZE 32
                                       :BIT-OFFSET 640 :BIT-ALIGNMENT 32)
                                      (:MAX-TEXTURE-HEIGHT :INT :BIT-SIZE 32
                                       :BIT-OFFSET 672 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-RENDERER-INFO
                                   '(:STRUCT (SDL-RENDERER-INFO)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-VERTEX :STRUCT 160 32
                                    '((:POSITION SDL-F-POINT :BIT-SIZE 64
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:COLOR SDL-COLOR :BIT-SIZE 32
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 8)
                                      (:TEX-COORD SDL-F-POINT :BIT-SIZE 64
                                       :BIT-OFFSET 96 :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-VERTEX '(:STRUCT (SDL-VERTEX)))
    (PROGN
     (DEFPARAMETER +SDL-SCALE-MODE-NEAREST+ 0)
     (DEFPARAMETER +SDL-SCALE-MODE-LINEAR+ 1)
     (DEFPARAMETER +SDL-SCALE-MODE-BEST+ 2)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8950 187
                                   '((:NEAREST . 0) (:LINEAR . 1)
                                     (:BEST . 2))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-SCALE-MODE '(:ENUM (NIL :ID 187)))
    (PROGN
     (DEFPARAMETER +SDL-TEXTUREACCESS-STATIC+ 0)
     (DEFPARAMETER +SDL-TEXTUREACCESS-STREAMING+ 1)
     (DEFPARAMETER +SDL-TEXTUREACCESS-TARGET+ 2)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8951 188
                                   '((:STATIC . 0) (:STREAMING . 1)
                                     (:TARGET . 2))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-TEXTURE-ACCESS '(:ENUM (NIL :ID 188)))
    (PROGN
     (DEFPARAMETER +SDL-TEXTUREMODULATE-NONE+ 0)
     (DEFPARAMETER +SDL-TEXTUREMODULATE-COLOR+ 1)
     (DEFPARAMETER +SDL-TEXTUREMODULATE-ALPHA+ 2)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8952 189
                                   '((:NONE . 0) (:COLOR . 1) (:ALPHA . 2))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-TEXTURE-MODULATE
                                   '(:ENUM (NIL :ID 189)))
    (PROGN
     (DEFPARAMETER +SDL-FLIP-NONE+ 0)
     (DEFPARAMETER +SDL-FLIP-HORIZONTAL+ 1)
     (DEFPARAMETER +SDL-FLIP-VERTICAL+ 2)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8953 190
                                   '((:NONE . 0) (:HORIZONTAL . 1)
                                     (:VERTICAL . 2))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-RENDERER-FLIP '(:ENUM (NIL :ID 190)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-RENDERER :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-RENDERER
                                   '(AUTOWRAP::STRUCT
                                     (SDL-RENDERER :BIT-SIZE 0 :BIT-ALIGNMENT
                                      0)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-TEXTURE :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-TEXTURE
                                   '(AUTOWRAP::STRUCT
                                     (SDL-TEXTURE :BIT-SIZE 0 :BIT-ALIGNMENT
                                      0)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-NUM-RENDER-DRIVERS "SDL_GetNumRenderDrivers") ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-RENDER-DRIVER-INFO "SDL_GetRenderDriverInfo") ':INT
     '((|index| :INT) (|info| (:POINTER SDL-RENDERER-INFO))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CREATE-WINDOW-AND-RENDERER "SDL_CreateWindowAndRenderer") ':INT
     '((|width| :INT) (|height| :INT) (|window_flags| UINT32)
       (|window| (:POINTER (:POINTER SDL-WINDOW)))
       (|renderer| (:POINTER (:POINTER SDL-RENDERER)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CREATE-RENDERER "SDL_CreateRenderer") '(:POINTER SDL-RENDERER)
     '((|window| (:POINTER SDL-WINDOW)) (|index| :INT) (|flags| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CREATE-SOFTWARE-RENDERER "SDL_CreateSoftwareRenderer")
     '(:POINTER SDL-RENDERER) '((|surface| (:POINTER SDL-SURFACE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-RENDERER "SDL_GetRenderer")
                                      '(:POINTER SDL-RENDERER)
                                      '((|window| (:POINTER SDL-WINDOW))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-GET-WINDOW "SDL_RenderGetWindow") '(:POINTER SDL-WINDOW)
     '((|renderer| (:POINTER SDL-RENDERER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-RENDERER-INFO "SDL_GetRendererInfo") ':INT
     '((|renderer| (:POINTER SDL-RENDERER))
       (|info| (:POINTER SDL-RENDERER-INFO))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-RENDERER-OUTPUT-SIZE "SDL_GetRendererOutputSize") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|w| (:POINTER :INT))
       (|h| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-CREATE-TEXTURE "SDL_CreateTexture")
                                      '(:POINTER SDL-TEXTURE)
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|format| UINT32) (|access| :INT)
                                        (|w| :INT) (|h| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CREATE-TEXTURE-FROM-SURFACE "SDL_CreateTextureFromSurface")
     '(:POINTER SDL-TEXTURE)
     '((|renderer| (:POINTER SDL-RENDERER))
       (|surface| (:POINTER SDL-SURFACE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-QUERY-TEXTURE "SDL_QueryTexture")
                                      ':INT
                                      '((|texture| (:POINTER SDL-TEXTURE))
                                        (|format| (:POINTER UINT32))
                                        (|access| (:POINTER :INT))
                                        (|w| (:POINTER :INT))
                                        (|h| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-TEXTURE-COLOR-MOD "SDL_SetTextureColorMod") ':INT
     '((|texture| (:POINTER SDL-TEXTURE)) (|r| UINT8) (|g| UINT8) (|b| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-TEXTURE-COLOR-MOD "SDL_GetTextureColorMod") ':INT
     '((|texture| (:POINTER SDL-TEXTURE)) (|r| (:POINTER UINT8))
       (|g| (:POINTER UINT8)) (|b| (:POINTER UINT8))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-TEXTURE-ALPHA-MOD "SDL_SetTextureAlphaMod") ':INT
     '((|texture| (:POINTER SDL-TEXTURE)) (|alpha| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-TEXTURE-ALPHA-MOD "SDL_GetTextureAlphaMod") ':INT
     '((|texture| (:POINTER SDL-TEXTURE)) (|alpha| (:POINTER UINT8))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-TEXTURE-BLEND-MODE "SDL_SetTextureBlendMode") ':INT
     '((|texture| (:POINTER SDL-TEXTURE)) (|blendMode| SDL-BLEND-MODE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-TEXTURE-BLEND-MODE "SDL_GetTextureBlendMode") ':INT
     '((|texture| (:POINTER SDL-TEXTURE))
       (|blendMode| (:POINTER SDL-BLEND-MODE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-TEXTURE-SCALE-MODE "SDL_SetTextureScaleMode") ':INT
     '((|texture| (:POINTER SDL-TEXTURE)) (|scaleMode| SDL-SCALE-MODE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-TEXTURE-SCALE-MODE "SDL_GetTextureScaleMode") ':INT
     '((|texture| (:POINTER SDL-TEXTURE))
       (|scaleMode| (:POINTER SDL-SCALE-MODE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-TEXTURE-USER-DATA "SDL_SetTextureUserData") ':INT
     '((|texture| (:POINTER SDL-TEXTURE)) (|userdata| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-TEXTURE-USER-DATA "SDL_GetTextureUserData") '(:POINTER :VOID)
     '((|texture| (:POINTER SDL-TEXTURE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-UPDATE-TEXTURE "SDL_UpdateTexture")
                                      ':INT
                                      '((|texture| (:POINTER SDL-TEXTURE))
                                        (|rect| (:POINTER SDL-RECT))
                                        (|pixels| (:POINTER :VOID))
                                        (|pitch| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-UPDATE-YUV-TEXTURE "SDL_UpdateYUVTexture") ':INT
     '((|texture| (:POINTER SDL-TEXTURE)) (|rect| (:POINTER SDL-RECT))
       (|Yplane| (:POINTER UINT8)) (|Ypitch| :INT) (|Uplane| (:POINTER UINT8))
       (|Upitch| :INT) (|Vplane| (:POINTER UINT8)) (|Vpitch| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-UPDATE-NV-TEXTURE "SDL_UpdateNVTexture") ':INT
     '((|texture| (:POINTER SDL-TEXTURE)) (|rect| (:POINTER SDL-RECT))
       (|Yplane| (:POINTER UINT8)) (|Ypitch| :INT) (|UVplane| (:POINTER UINT8))
       (|UVpitch| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-LOCK-TEXTURE "SDL_LockTexture")
                                      ':INT
                                      '((|texture| (:POINTER SDL-TEXTURE))
                                        (|rect| (:POINTER SDL-RECT))
                                        (|pixels| (:POINTER (:POINTER :VOID)))
                                        (|pitch| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LOCK-TEXTURE-TO-SURFACE "SDL_LockTextureToSurface") ':INT
     '((|texture| (:POINTER SDL-TEXTURE)) (|rect| (:POINTER SDL-RECT))
       (|surface| (:POINTER (:POINTER SDL-SURFACE)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-UNLOCK-TEXTURE "SDL_UnlockTexture")
                                      ':VOID
                                      '((|texture| (:POINTER SDL-TEXTURE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-TARGET-SUPPORTED "SDL_RenderTargetSupported") 'SDL-BOOL
     '((|renderer| (:POINTER SDL-RENDERER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-RENDER-TARGET "SDL_SetRenderTarget") ':INT
     '((|renderer| (:POINTER SDL-RENDERER))
       (|texture| (:POINTER SDL-TEXTURE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-RENDER-TARGET "SDL_GetRenderTarget") '(:POINTER SDL-TEXTURE)
     '((|renderer| (:POINTER SDL-RENDERER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-SET-LOGICAL-SIZE "SDL_RenderSetLogicalSize") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|w| :INT) (|h| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-GET-LOGICAL-SIZE "SDL_RenderGetLogicalSize") ':VOID
     '((|renderer| (:POINTER SDL-RENDERER)) (|w| (:POINTER :INT))
       (|h| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-SET-INTEGER-SCALE "SDL_RenderSetIntegerScale") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|enable| SDL-BOOL)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-GET-INTEGER-SCALE "SDL_RenderGetIntegerScale") 'SDL-BOOL
     '((|renderer| (:POINTER SDL-RENDERER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-SET-VIEWPORT "SDL_RenderSetViewport") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|rect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-GET-VIEWPORT "SDL_RenderGetViewport") ':VOID
     '((|renderer| (:POINTER SDL-RENDERER)) (|rect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-SET-CLIP-RECT "SDL_RenderSetClipRect") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|rect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-GET-CLIP-RECT "SDL_RenderGetClipRect") ':VOID
     '((|renderer| (:POINTER SDL-RENDERER)) (|rect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-IS-CLIP-ENABLED "SDL_RenderIsClipEnabled") 'SDL-BOOL
     '((|renderer| (:POINTER SDL-RENDERER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-SET-SCALE "SDL_RenderSetScale") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|scaleX| :FLOAT)
       (|scaleY| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-GET-SCALE "SDL_RenderGetScale") ':VOID
     '((|renderer| (:POINTER SDL-RENDERER)) (|scaleX| (:POINTER :FLOAT))
       (|scaleY| (:POINTER :FLOAT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-WINDOW-TO-LOGICAL "SDL_RenderWindowToLogical") ':VOID
     '((|renderer| (:POINTER SDL-RENDERER)) (|windowX| :INT) (|windowY| :INT)
       (|logicalX| (:POINTER :FLOAT)) (|logicalY| (:POINTER :FLOAT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-LOGICAL-TO-WINDOW "SDL_RenderLogicalToWindow") ':VOID
     '((|renderer| (:POINTER SDL-RENDERER)) (|logicalX| :FLOAT)
       (|logicalY| :FLOAT) (|windowX| (:POINTER :INT))
       (|windowY| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-RENDER-DRAW-COLOR "SDL_SetRenderDrawColor") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|r| UINT8) (|g| UINT8) (|b| UINT8)
       (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-RENDER-DRAW-COLOR "SDL_GetRenderDrawColor") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|r| (:POINTER UINT8))
       (|g| (:POINTER UINT8)) (|b| (:POINTER UINT8)) (|a| (:POINTER UINT8))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-RENDER-DRAW-BLEND-MODE "SDL_SetRenderDrawBlendMode") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|blendMode| SDL-BLEND-MODE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-RENDER-DRAW-BLEND-MODE "SDL_GetRenderDrawBlendMode") ':INT
     '((|renderer| (:POINTER SDL-RENDERER))
       (|blendMode| (:POINTER SDL-BLEND-MODE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-RENDER-CLEAR "SDL_RenderClear")
                                      ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-DRAW-POINT "SDL_RenderDrawPoint") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|x| :INT) (|y| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-DRAW-POINTS "SDL_RenderDrawPoints") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|points| (:POINTER SDL-POINT))
       (|count| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-DRAW-LINE "SDL_RenderDrawLine") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|x1| :INT) (|y1| :INT) (|x2| :INT)
       (|y2| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-DRAW-LINES "SDL_RenderDrawLines") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|points| (:POINTER SDL-POINT))
       (|count| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-DRAW-RECT "SDL_RenderDrawRect") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|rect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-DRAW-RECTS "SDL_RenderDrawRects") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|rects| (:POINTER SDL-RECT))
       (|count| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-FILL-RECT "SDL_RenderFillRect") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|rect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-FILL-RECTS "SDL_RenderFillRects") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|rects| (:POINTER SDL-RECT))
       (|count| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-RENDER-COPY "SDL_RenderCopy") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|texture| (:POINTER SDL-TEXTURE))
                                        (|srcrect| (:POINTER SDL-RECT))
                                        (|dstrect| (:POINTER SDL-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-RENDER-COPY-EX "SDL_RenderCopyEx")
                                      ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|texture| (:POINTER SDL-TEXTURE))
                                        (|srcrect| (:POINTER SDL-RECT))
                                        (|dstrect| (:POINTER SDL-RECT))
                                        (|angle| :DOUBLE)
                                        (|center| (:POINTER SDL-POINT))
                                        (|flip| SDL-RENDERER-FLIP)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-DRAW-POINT-F "SDL_RenderDrawPointF") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|x| :FLOAT) (|y| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-DRAW-POINTS-F "SDL_RenderDrawPointsF") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|points| (:POINTER SDL-F-POINT))
       (|count| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-DRAW-LINE-F "SDL_RenderDrawLineF") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|x1| :FLOAT) (|y1| :FLOAT)
       (|x2| :FLOAT) (|y2| :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-DRAW-LINES-F "SDL_RenderDrawLinesF") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|points| (:POINTER SDL-F-POINT))
       (|count| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-DRAW-RECT-F "SDL_RenderDrawRectF") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|rect| (:POINTER SDL-F-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-DRAW-RECTS-F "SDL_RenderDrawRectsF") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|rects| (:POINTER SDL-F-RECT))
       (|count| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-FILL-RECT-F "SDL_RenderFillRectF") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|rect| (:POINTER SDL-F-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-FILL-RECTS-F "SDL_RenderFillRectsF") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|rects| (:POINTER SDL-F-RECT))
       (|count| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-RENDER-COPY-F "SDL_RenderCopyF")
                                      ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|texture| (:POINTER SDL-TEXTURE))
                                        (|srcrect| (:POINTER SDL-RECT))
                                        (|dstrect| (:POINTER SDL-F-RECT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-COPY-EX-F "SDL_RenderCopyExF") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|texture| (:POINTER SDL-TEXTURE))
       (|srcrect| (:POINTER SDL-RECT)) (|dstrect| (:POINTER SDL-F-RECT))
       (|angle| :DOUBLE) (|center| (:POINTER SDL-F-POINT))
       (|flip| SDL-RENDERER-FLIP)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-GEOMETRY "SDL_RenderGeometry") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|texture| (:POINTER SDL-TEXTURE))
       (|vertices| (:POINTER SDL-VERTEX)) (|num_vertices| :INT)
       (|indices| (:POINTER :INT)) (|num_indices| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-GEOMETRY-RAW "SDL_RenderGeometryRaw") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|texture| (:POINTER SDL-TEXTURE))
       (|xy| (:POINTER :FLOAT)) (|xy_stride| :INT)
       (|color| (:POINTER SDL-COLOR)) (|color_stride| :INT)
       (|uv| (:POINTER :FLOAT)) (|uv_stride| :INT) (|num_vertices| :INT)
       (|indices| (:POINTER :VOID)) (|num_indices| :INT)
       (|size_indices| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-READ-PIXELS "SDL_RenderReadPixels") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|rect| (:POINTER SDL-RECT))
       (|format| UINT32) (|pixels| (:POINTER :VOID)) (|pitch| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-RENDER-PRESENT "SDL_RenderPresent")
                                      ':VOID
                                      '((|renderer| (:POINTER SDL-RENDERER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-DESTROY-TEXTURE "SDL_DestroyTexture") ':VOID
     '((|texture| (:POINTER SDL-TEXTURE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-DESTROY-RENDERER "SDL_DestroyRenderer") ':VOID
     '((|renderer| (:POINTER SDL-RENDERER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-RENDER-FLUSH "SDL_RenderFlush")
                                      ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GL-BIND-TEXTURE "SDL_GL_BindTexture") ':INT
     '((|texture| (:POINTER SDL-TEXTURE)) (|texw| (:POINTER :FLOAT))
       (|texh| (:POINTER :FLOAT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GL-UNBIND-TEXTURE "SDL_GL_UnbindTexture") ':INT
     '((|texture| (:POINTER SDL-TEXTURE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-GET-METAL-LAYER "SDL_RenderGetMetalLayer") '(:POINTER :VOID)
     '((|renderer| (:POINTER SDL-RENDERER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-GET-METAL-COMMAND-ENCODER "SDL_RenderGetMetalCommandEncoder")
     '(:POINTER :VOID) '((|renderer| (:POINTER SDL-RENDERER))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-RENDER-SET-V-SYNC "SDL_RenderSetVSync") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|vsync| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-CREATE-SHAPED-WINDOW "SDL_CreateShapedWindow")
     '(:POINTER SDL-WINDOW)
     '((|title| (:STRING)) (|x| :UNSIGNED-INT) (|y| :UNSIGNED-INT)
       (|w| :UNSIGNED-INT) (|h| :UNSIGNED-INT) (|flags| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-IS-SHAPED-WINDOW "SDL_IsShapedWindow") 'SDL-BOOL
     '((|window| (:POINTER SDL-WINDOW))))
    (PROGN
     (DEFPARAMETER +SHAPE-MODE-DEFAULT+ 0)
     (DEFPARAMETER +SHAPE-MODE-BINARIZE-ALPHA+ 1)
     (DEFPARAMETER +SHAPE-MODE-REVERSE-BINARIZE-ALPHA+ 2)
     (DEFPARAMETER +SHAPE-MODE-COLOR-KEY+ 3)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-8954 193
                                   '((:DEFAULT . 0) (:BINARIZE-ALPHA . 1)
                                     (:REVERSE-BINARIZE-ALPHA . 2)
                                     (:COLOR-KEY . 3))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'WINDOW-SHAPE-MODE '(:ENUM (NIL :ID 193)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-WINDOW-SHAPE-PARAMS
                                   '(UNION
                                     (NIL :ID 194 :BIT-SIZE 32 :BIT-ALIGNMENT
                                      8)
                                     (:BINARIZATION-CUTOFF UINT8 :BIT-SIZE 8
                                      :BIT-OFFSET 0 :BIT-ALIGNMENT 8)
                                     (:COLOR-KEY SDL-COLOR :BIT-SIZE 32
                                      :BIT-OFFSET 0 :BIT-ALIGNMENT 8)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-WINDOW-SHAPE-MODE :STRUCT 64 32
                                    '((:MODE WINDOW-SHAPE-MODE :BIT-SIZE 32
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                      (:PARAMETERS SDL-WINDOW-SHAPE-PARAMS
                                       :BIT-SIZE 32 :BIT-OFFSET 32
                                       :BIT-ALIGNMENT 8)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-WINDOW-SHAPE-MODE
                                   '(:STRUCT (SDL-WINDOW-SHAPE-MODE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-SET-WINDOW-SHAPE "SDL_SetWindowShape") ':INT
     '((|window| (:POINTER SDL-WINDOW)) (|shape| (:POINTER SDL-SURFACE))
       (|shape_mode| (:POINTER SDL-WINDOW-SHAPE-MODE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-SHAPED-WINDOW-MODE "SDL_GetShapedWindowMode") ':INT
     '((|window| (:POINTER SDL-WINDOW))
       (|shape_mode| (:POINTER SDL-WINDOW-SHAPE-MODE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LINUX-SET-THREAD-PRIORITY "SDL_LinuxSetThreadPriority") ':INT
     '((|threadID| SINT64) (|priority| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-LINUX-SET-THREAD-PRIORITY-AND-POLICY
       "SDL_LinuxSetThreadPriorityAndPolicy")
     ':INT '((|threadID| SINT64) (|sdlPriority| :INT) (|schedPolicy| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-IS-TABLET "SDL_IsTablet") 'SDL-BOOL
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-ON-APPLICATION-WILL-TERMINATE "SDL_OnApplicationWillTerminate")
     ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-ON-APPLICATION-DID-RECEIVE-MEMORY-WARNING
       "SDL_OnApplicationDidReceiveMemoryWarning")
     ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-ON-APPLICATION-WILL-RESIGN-ACTIVE
       "SDL_OnApplicationWillResignActive")
     ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-ON-APPLICATION-DID-ENTER-BACKGROUND
       "SDL_OnApplicationDidEnterBackground")
     ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-ON-APPLICATION-WILL-ENTER-FOREGROUND
       "SDL_OnApplicationWillEnterForeground")
     ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-ON-APPLICATION-DID-BECOME-ACTIVE "SDL_OnApplicationDidBecomeActive")
     ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-TICKS "SDL_GetTicks") 'UINT32
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-TICKS64 "SDL_GetTicks64")
                                      'UINT64 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-PERFORMANCE-COUNTER "SDL_GetPerformanceCounter") 'UINT64 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-PERFORMANCE-FREQUENCY "SDL_GetPerformanceFrequency") 'UINT64
     'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-DELAY "SDL_Delay") ':VOID
                                      '((|ms| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-TIMER-CALLBACK '(:POINTER (:VOID)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-TIMER-ID ':INT)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ADD-TIMER "SDL_AddTimer")
                                      'SDL-TIMER-ID
                                      '((|interval| UINT32)
                                        (|callback| SDL-TIMER-CALLBACK)
                                        (|param| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-REMOVE-TIMER "SDL_RemoveTimer")
                                      'SDL-BOOL '((|id| SDL-TIMER-ID)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-VERSION :STRUCT 24 8
                                    '((:MAJOR UINT8 :BIT-SIZE 8 :BIT-OFFSET 0
                                       :BIT-ALIGNMENT 8)
                                      (:MINOR UINT8 :BIT-SIZE 8 :BIT-OFFSET 8
                                       :BIT-ALIGNMENT 8)
                                      (:PATCH UINT8 :BIT-SIZE 8 :BIT-OFFSET 16
                                       :BIT-ALIGNMENT 8)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-VERSION '(:STRUCT (SDL-VERSION)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-VERSION "SDL_GetVersion")
                                      ':VOID '((|ver| (:POINTER SDL-VERSION))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-REVISION "SDL_GetRevision")
                                      '(:STRING) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-REVISION-NUMBER "SDL_GetRevisionNumber") ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'SDL-LOCALE :STRUCT 128 64
                                    '((:LANGUAGE (:STRING) :BIT-SIZE 64
                                       :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
                                      (:COUNTRY (:STRING) :BIT-SIZE 64
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-LOCALE '(:STRUCT (SDL-LOCALE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-GET-PREFERRED-LOCALES "SDL_GetPreferredLocales")
     '(:POINTER SDL-LOCALE) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-OPEN-URL "SDL_OpenURL") ':INT
                                      '((|url| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-INIT "SDL_Init") ':INT
                                      '((|flags| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-INIT-SUB-SYSTEM "SDL_InitSubSystem") ':INT '((|flags| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(SDL-QUIT-SUB-SYSTEM "SDL_QuitSubSystem") ':VOID '((|flags| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-WAS-INIT "SDL_WasInit") 'UINT32
                                      '((|flags| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-QUIT "SDL_Quit") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(PIXEL-COLOR "pixelColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16)
                                        (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(PIXEL-RGBA "pixelRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16) (|r| UINT8)
                                        (|g| UINT8) (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(HLINE-COLOR "hlineColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|x2| SINT16)
                                        (|y| SINT16) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(HLINE-RGBA "hlineRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|x2| SINT16)
                                        (|y| SINT16) (|r| UINT8) (|g| UINT8)
                                        (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VLINE-COLOR "vlineColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y1| SINT16)
                                        (|y2| SINT16) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(VLINE-RGBA "vlineRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y1| SINT16)
                                        (|y2| SINT16) (|r| UINT8) (|g| UINT8)
                                        (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(RECTANGLE-COLOR "rectangleColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|y1| SINT16)
                                        (|x2| SINT16) (|y2| SINT16)
                                        (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(RECTANGLE-RGBA "rectangleRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|y1| SINT16)
                                        (|x2| SINT16) (|y2| SINT16) (|r| UINT8)
                                        (|g| UINT8) (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(ROUNDED-RECTANGLE-COLOR "roundedRectangleColor") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|x1| SINT16) (|y1| SINT16)
       (|x2| SINT16) (|y2| SINT16) (|rad| SINT16) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(ROUNDED-RECTANGLE-RGBA "roundedRectangleRGBA") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|x1| SINT16) (|y1| SINT16)
       (|x2| SINT16) (|y2| SINT16) (|rad| SINT16) (|r| UINT8) (|g| UINT8)
       (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(BOX-COLOR "boxColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|y1| SINT16)
                                        (|x2| SINT16) (|y2| SINT16)
                                        (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(BOX-RGBA "boxRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|y1| SINT16)
                                        (|x2| SINT16) (|y2| SINT16) (|r| UINT8)
                                        (|g| UINT8) (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ROUNDED-BOX-COLOR "roundedBoxColor")
                                      ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|y1| SINT16)
                                        (|x2| SINT16) (|y2| SINT16)
                                        (|rad| SINT16) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ROUNDED-BOX-RGBA "roundedBoxRGBA")
                                      ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|y1| SINT16)
                                        (|x2| SINT16) (|y2| SINT16)
                                        (|rad| SINT16) (|r| UINT8) (|g| UINT8)
                                        (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LINE-COLOR "lineColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|y1| SINT16)
                                        (|x2| SINT16) (|y2| SINT16)
                                        (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LINE-RGBA "lineRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|y1| SINT16)
                                        (|x2| SINT16) (|y2| SINT16) (|r| UINT8)
                                        (|g| UINT8) (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(AALINE-COLOR "aalineColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|y1| SINT16)
                                        (|x2| SINT16) (|y2| SINT16)
                                        (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(AALINE-RGBA "aalineRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|y1| SINT16)
                                        (|x2| SINT16) (|y2| SINT16) (|r| UINT8)
                                        (|g| UINT8) (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(THICK-LINE-COLOR "thickLineColor")
                                      ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|y1| SINT16)
                                        (|x2| SINT16) (|y2| SINT16)
                                        (|width| UINT8) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(THICK-LINE-RGBA "thickLineRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|y1| SINT16)
                                        (|x2| SINT16) (|y2| SINT16)
                                        (|width| UINT8) (|r| UINT8) (|g| UINT8)
                                        (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(CIRCLE-COLOR "circleColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16)
                                        (|rad| SINT16) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(CIRCLE-RGBA "circleRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16)
                                        (|rad| SINT16) (|r| UINT8) (|g| UINT8)
                                        (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ARC-COLOR "arcColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16)
                                        (|rad| SINT16) (|start| SINT16)
                                        (|end| SINT16) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ARC-RGBA "arcRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16)
                                        (|rad| SINT16) (|start| SINT16)
                                        (|end| SINT16) (|r| UINT8) (|g| UINT8)
                                        (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(AACIRCLE-COLOR "aacircleColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16)
                                        (|rad| SINT16) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(AACIRCLE-RGBA "aacircleRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16)
                                        (|rad| SINT16) (|r| UINT8) (|g| UINT8)
                                        (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(FILLED-CIRCLE-COLOR "filledCircleColor") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|x| SINT16) (|y| SINT16)
       (|r| SINT16) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FILLED-CIRCLE-RGBA "filledCircleRGBA")
                                      ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16)
                                        (|rad| SINT16) (|r| UINT8) (|g| UINT8)
                                        (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ELLIPSE-COLOR "ellipseColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16) (|rx| SINT16)
                                        (|ry| SINT16) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ELLIPSE-RGBA "ellipseRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16) (|rx| SINT16)
                                        (|ry| SINT16) (|r| UINT8) (|g| UINT8)
                                        (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(AAELLIPSE-COLOR "aaellipseColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16) (|rx| SINT16)
                                        (|ry| SINT16) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(AAELLIPSE-RGBA "aaellipseRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16) (|rx| SINT16)
                                        (|ry| SINT16) (|r| UINT8) (|g| UINT8)
                                        (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(FILLED-ELLIPSE-COLOR "filledEllipseColor") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|x| SINT16) (|y| SINT16)
       (|rx| SINT16) (|ry| SINT16) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(FILLED-ELLIPSE-RGBA "filledEllipseRGBA") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|x| SINT16) (|y| SINT16)
       (|rx| SINT16) (|ry| SINT16) (|r| UINT8) (|g| UINT8) (|b| UINT8)
       (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(PIE-COLOR "pieColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16)
                                        (|rad| SINT16) (|start| SINT16)
                                        (|end| SINT16) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(PIE-RGBA "pieRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16)
                                        (|rad| SINT16) (|start| SINT16)
                                        (|end| SINT16) (|r| UINT8) (|g| UINT8)
                                        (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FILLED-PIE-COLOR "filledPieColor")
                                      ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16)
                                        (|rad| SINT16) (|start| SINT16)
                                        (|end| SINT16) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FILLED-PIE-RGBA "filledPieRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16)
                                        (|rad| SINT16) (|start| SINT16)
                                        (|end| SINT16) (|r| UINT8) (|g| UINT8)
                                        (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TRIGON-COLOR "trigonColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|y1| SINT16)
                                        (|x2| SINT16) (|y2| SINT16)
                                        (|x3| SINT16) (|y3| SINT16)
                                        (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TRIGON-RGBA "trigonRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|y1| SINT16)
                                        (|x2| SINT16) (|y2| SINT16)
                                        (|x3| SINT16) (|y3| SINT16) (|r| UINT8)
                                        (|g| UINT8) (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(AATRIGON-COLOR "aatrigonColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|y1| SINT16)
                                        (|x2| SINT16) (|y2| SINT16)
                                        (|x3| SINT16) (|y3| SINT16)
                                        (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(AATRIGON-RGBA "aatrigonRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|y1| SINT16)
                                        (|x2| SINT16) (|y2| SINT16)
                                        (|x3| SINT16) (|y3| SINT16) (|r| UINT8)
                                        (|g| UINT8) (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(FILLED-TRIGON-COLOR "filledTrigonColor") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|x1| SINT16) (|y1| SINT16)
       (|x2| SINT16) (|y2| SINT16) (|x3| SINT16) (|y3| SINT16)
       (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(FILLED-TRIGON-RGBA "filledTrigonRGBA")
                                      ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x1| SINT16) (|y1| SINT16)
                                        (|x2| SINT16) (|y2| SINT16)
                                        (|x3| SINT16) (|y3| SINT16) (|r| UINT8)
                                        (|g| UINT8) (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(POLYGON-COLOR "polygonColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|vx| (:POINTER SINT16))
                                        (|vy| (:POINTER SINT16)) (|n| :INT)
                                        (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(POLYGON-RGBA "polygonRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|vx| (:POINTER SINT16))
                                        (|vy| (:POINTER SINT16)) (|n| :INT)
                                        (|r| UINT8) (|g| UINT8) (|b| UINT8)
                                        (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(AAPOLYGON-COLOR "aapolygonColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|vx| (:POINTER SINT16))
                                        (|vy| (:POINTER SINT16)) (|n| :INT)
                                        (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(AAPOLYGON-RGBA "aapolygonRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|vx| (:POINTER SINT16))
                                        (|vy| (:POINTER SINT16)) (|n| :INT)
                                        (|r| UINT8) (|g| UINT8) (|b| UINT8)
                                        (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(FILLED-POLYGON-COLOR "filledPolygonColor") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|vx| (:POINTER SINT16))
       (|vy| (:POINTER SINT16)) (|n| :INT) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(FILLED-POLYGON-RGBA "filledPolygonRGBA") ':INT
     '((|renderer| (:POINTER SDL-RENDERER)) (|vx| (:POINTER SINT16))
       (|vy| (:POINTER SINT16)) (|n| :INT) (|r| UINT8) (|g| UINT8) (|b| UINT8)
       (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TEXTURED-POLYGON "texturedPolygon")
                                      ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|vx| (:POINTER SINT16))
                                        (|vy| (:POINTER SINT16)) (|n| :INT)
                                        (|texture| (:POINTER SDL-SURFACE))
                                        (|texture_dx| :INT)
                                        (|texture_dy| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(BEZIER-COLOR "bezierColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|vx| (:POINTER SINT16))
                                        (|vy| (:POINTER SINT16)) (|n| :INT)
                                        (|s| :INT) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(BEZIER-RGBA "bezierRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|vx| (:POINTER SINT16))
                                        (|vy| (:POINTER SINT16)) (|n| :INT)
                                        (|s| :INT) (|r| UINT8) (|g| UINT8)
                                        (|b| UINT8) (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(GFX-PRIMITIVES-SET-FONT "gfxPrimitivesSetFont") ':VOID
     '((|fontdata| (:POINTER :VOID)) (|cw| UINT32) (|ch| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(GFX-PRIMITIVES-SET-FONT-ROTATION "gfxPrimitivesSetFontRotation") ':VOID
     '((|rotation| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(CHARACTER-COLOR "characterColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16) (|c| :CHAR)
                                        (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(CHARACTER-RGBA "characterRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16) (|c| :CHAR)
                                        (|r| UINT8) (|g| UINT8) (|b| UINT8)
                                        (|a| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRING-COLOR "stringColor") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16)
                                        (|s| (:STRING)) (|color| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(STRING-RGBA "stringRGBA") ':INT
                                      '((|renderer| (:POINTER SDL-RENDERER))
                                        (|x| SINT16) (|y| SINT16)
                                        (|s| (:STRING)) (|r| UINT8) (|g| UINT8)
                                        (|b| UINT8) (|a| UINT8)))
    (DEFPARAMETER +SDL-PR-IX32+ NIL)
    (DEFPARAMETER +SDL-PRIX32+ NIL)
    (DEFPARAMETER +__DEFAULT_FN_ATTRS_MMX+ NIL)
    (DEFPARAMETER +SDL-MAX-UINT32+ 4294967295)
    (DEFPARAMETER +SDL-MIN-UINT32+ 0)
    (DEFPARAMETER +_POSIX_SOURCE+ 1)
    (DEFPARAMETER +SDL-MIN-SINT64+ -9223372036854775808)
    (DEFPARAMETER +SDL-MAX-UINT64+ -1)
    (DEFPARAMETER +_POSIX_C_SOURCE+ 200809)
    (DEFPARAMETER +__USE_POSIX_IMPLICITLY+ 1)
    (DEFPARAMETER +SDL-MAX-SINT64+ 9223372036854775807)
    (DEFPARAMETER +SDL-PR-IS64+ NIL)
    (DEFPARAMETER +SDL-MIN-UINT64+ 0)
    (DEFPARAMETER +_ATFILE_SOURCE+ 1)
    (DEFPARAMETER +SDL-FLT-EPSILON+ 1.192093d-7)
    (DEFPARAMETER +SDL-PR-IS32+ NIL)
    (DEFPARAMETER +SDL-PRIX64+ NIL)
    (DEFPARAMETER +SDL-PR-IU32+ NIL)
    (DEFPARAMETER +SDL-PR-IU64+ NIL)
    (DEFPARAMETER +SDL-PR-IX64+ NIL)
    (DEFPARAMETER +__WORDSIZE+ 64)
    (DEFPARAMETER +_STDLIB_H+ 1)
    (DEFPARAMETER +__GLIBC_USE_DEPRECATED_SCANF+ 0)
    (DEFPARAMETER +__CLOCK_T_DEFINED+ 1)
    (DEFPARAMETER +_DEFAULT_SOURCE+ 1)
    (DEFPARAMETER +__TIMER_T_DEFINED+ 1)
    (DEFPARAMETER +SDL-BUTTON-X2MASK+ 16)
    (DEFPARAMETER +SDL-BUTTON-X1MASK+ 8)
    (DEFPARAMETER +__USE_XOPEN2K+ 1)
    (DEFPARAMETER +SDL-BUTTON-RMASK+ 4)
    (DEFPARAMETER +SDL-BUTTON-MMASK+ 2)
    (DEFPARAMETER +__USE_XOPEN2K8+ 1)
    (DEFPARAMETER +__CLOCKID_T_DEFINED+ 1)
    (DEFPARAMETER +SDL-BUTTON-LMASK+ 1)
    (DEFPARAMETER +SDL-BUTTON-X2+ 5)
    (DEFPARAMETER +__TIME_T_DEFINED+ 1)
    (DEFPARAMETER +SDL-BUTTON-X1+ 4)
    (DEFPARAMETER +SDL-BUTTON-RIGHT+ 3)
    (DEFPARAMETER +__USE_MISC+ 1)
    (DEFPARAMETER +__USE_ATFILE+ 1)
    (DEFPARAMETER +__USE_FORTIFY_LEVEL+ 0)
    (DEFPARAMETER +__GLIBC_USE_ISOC2X+ 0)
    (DEFPARAMETER +__GLIBC_USE_DEPRECATED_GETS+ 0)
    (DEFPARAMETER +_BITS_STDINT_INTN_H+ 1)
    (DEFPARAMETER +__BIG_ENDIAN+ 4321)
    (DEFPARAMETER +__PDP_ENDIAN+ 3412)
    (DEFPARAMETER +_BITS_ENDIAN_H+ 1)
    (DEFPARAMETER +__LITTLE_ENDIAN+ 1234)
    (DEFPARAMETER +__BIT_TYPES_DEFINED__+ 1)
    (DEFPARAMETER +_ENDIAN_H+ 1)
    (DEFPARAMETER +BIG-ENDIAN+ 4321)
    (DEFPARAMETER +LITTLE-ENDIAN+ 1234)
    (DEFPARAMETER +_MM_HINT_T0+ 3)
    (DEFPARAMETER +__FLOAT_WORD_ORDER+ 1234)
    (DEFPARAMETER +_MM_HINT_T1+ 2)
    (DEFPARAMETER +_MM_HINT_T2+ 1)
    (DEFPARAMETER +_BITS_ENDIANNESS_H+ 1)
    (DEFPARAMETER +_MM_HINT_NTA+ 0)
    (DEFPARAMETER +__BYTE_ORDER+ 1234)
    (DEFPARAMETER +_MM_HINT_ET0+ 7)
    (DEFPARAMETER +_MM_HINT_ET1+ 6)
    (DEFPARAMETER +_BITS_STDINT_UINTN_H+ 1)
    (DEFPARAMETER +_STDINT_H+ 1)
    (DEFPARAMETER +_INTTYPES_H+ 1)
    (DEFPARAMETER +_MM256_MASKZ_CVTPS_PH+ NIL)
    (DEFPARAMETER +_MM256_MASK_CVTPS_PH+ NIL)
    (DEFPARAMETER +__INLINE+ NIL)
    (DEFPARAMETER +_MM_MASKZ_CVTPS_PH+ NIL)
    (DEFPARAMETER +_MM_MASK_CVTPS_PH+ NIL)
    (DEFPARAMETER +__DEFAULT_FN_ATTRS_Z_MASK+ NIL)
    (DEFPARAMETER +__DEFAULT_FN_ATTRS_Z+ NIL)
    (DEFPARAMETER +__DEFAULT_FN_ATTRS_Y+ NIL)
    (DEFPARAMETER +__DEFAULT_FN_ATTRS_F+ NIL)
    (DEFPARAMETER +__DEFAULT_FN_ATTRS_VL256+ NIL)
    (DEFPARAMETER +__DEFAULT_FN_ATTRS_VL128+ NIL)
    (DEFPARAMETER +_XABORT_CONFLICT+ 4)
    (DEFPARAMETER +_XABORT_CAPACITY+ 8)
    (DEFPARAMETER +_XABORT_NESTED+ 32)
    (DEFPARAMETER +_XABORT_DEBUG+ 16)
    (DEFPARAMETER +_XBEGIN_STARTED+ 4294967295)
    (DEFPARAMETER +_XABORT_EXPLICIT+ 1)
    (DEFPARAMETER +_XABORT_RETRY+ 2)
    (DEFPARAMETER +__HAVE_PTHREAD_ATTR_T+ 1)
    (DEFPARAMETER +__ONCE_FLAG_INIT+ 0)
    (DEFPARAMETER +_____FPOS_T_DEFINED+ 1)
    (DEFPARAMETER +____MBSTATE_T_DEFINED+ 1)
    (DEFPARAMETER +__STATFS_MATCHES_STATFS64+ 1)
    (DEFPARAMETER +__RLIM_T_MATCHES_RLIM64_T+ 1)
    (DEFPARAMETER +__INO_T_MATCHES_INO64_T+ 1)
    (DEFPARAMETER +__OFF_T_MATCHES_OFF64_T+ 1)
    (DEFPARAMETER +_STDIO_H+ 1)
    (DEFPARAMETER +__TIME64_T_TYPE+ NIL)
    (DEFPARAMETER +_BITS_TIME64_H+ 1)
    (DEFPARAMETER +__FD_SETSIZE+ 1024)
    (DEFPARAMETER +__KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64+ 1)
    (DEFPARAMETER +__TIMER_T_TYPE+ NIL)
    (DEFPARAMETER +__CLOCKID_T_TYPE+ NIL)
    (DEFPARAMETER +__BLKSIZE_T_TYPE+ NIL)
    (DEFPARAMETER +__DADDR_T_TYPE+ NIL)
    (DEFPARAMETER +__KEY_T_TYPE+ NIL)
    (DEFPARAMETER +__SSIZE_T_TYPE+ NIL)
    (DEFPARAMETER +__CPU_MASK_TYPE+ NIL)
    (DEFPARAMETER +__FSID_T_TYPE+ NIL)
    (DEFPARAMETER +__STRUCT_FILE_DEFINED+ 1)
    (DEFPARAMETER +__ID_T_TYPE+ NIL)
    (DEFPARAMETER +__FILE_DEFINED+ 1)
    (DEFPARAMETER +__FSFILCNT_T_TYPE+ NIL)
    (DEFPARAMETER +__CLOCK_T_TYPE+ NIL)
    (DEFPARAMETER +__FSFILCNT64_T_TYPE+ NIL)
    (DEFPARAMETER +____FILE_DEFINED+ 1)
    (DEFPARAMETER +__SUSECONDS_T_TYPE+ NIL)
    (DEFPARAMETER +__SUSECONDS64_T_TYPE+ NIL)
    (DEFPARAMETER +_____FPOS64_T_DEFINED+ 1)
    (DEFPARAMETER +__TIME_T_TYPE+ NIL)
    (DEFPARAMETER +__PID_T_TYPE+ NIL)
    (DEFPARAMETER +__RLIM_T_TYPE+ NIL)
    (DEFPARAMETER +__USECONDS_T_TYPE+ NIL)
    (DEFPARAMETER +__RLIM64_T_TYPE+ NIL)
    (DEFPARAMETER +__OFF_T_TYPE+ NIL)
    (DEFPARAMETER +__OFF64_T_TYPE+ NIL)
    (DEFPARAMETER +__FSBLKCNT_T_TYPE+ NIL)
    (DEFPARAMETER +__FSBLKCNT64_T_TYPE+ NIL)
    (DEFPARAMETER +__BLKCNT_T_TYPE+ NIL)
    (DEFPARAMETER +__BLKCNT64_T_TYPE+ NIL)
    (DEFPARAMETER +__UID_T_TYPE+ NIL)
    (DEFPARAMETER +__GID_T_TYPE+ NIL)
    (DEFPARAMETER +__INO_T_TYPE+ NIL)
    (DEFPARAMETER +__SYSCALL_ULONG_TYPE+ NIL)
    (DEFPARAMETER +__DEV_T_TYPE+ NIL)
    (DEFPARAMETER +__NLINK_T_TYPE+ NIL)
    (DEFPARAMETER +__FSWORD_T_TYPE+ NIL)
    (DEFPARAMETER +__INO64_T_TYPE+ NIL)
    (DEFPARAMETER +__MODE_T_TYPE+ NIL)
    (DEFPARAMETER +__SLONG32_TYPE+ NIL)
    (DEFPARAMETER +__UWORD_TYPE+ NIL)
    (DEFPARAMETER +_SIDD_CMP_EQUAL_EACH+ 8)
    (DEFPARAMETER +_SIDD_CMP_RANGES+ 4)
    (DEFPARAMETER +__S64_TYPE+ NIL)
    (DEFPARAMETER +_SIDD_POSITIVE_POLARITY+ 0)
    (DEFPARAMETER +__ULONG32_TYPE+ NIL)
    (DEFPARAMETER +_SIDD_CMP_EQUAL_ORDERED+ 12)
    (DEFPARAMETER +__STD_TYPE+ NIL)
    (DEFPARAMETER +__U64_TYPE+ NIL)
    (DEFPARAMETER +_SIDD_NEGATIVE_POLARITY+ 16)
    (DEFPARAMETER +_SIDD_MASKED_NEGATIVE_POLARITY+ 48)
    (DEFPARAMETER +__SYSCALL_SLONG_TYPE+ NIL)
    (DEFPARAMETER +_SIDD_MASKED_POSITIVE_POLARITY+ 32)
    (DEFPARAMETER +_BITS_TYPESIZES_H+ 1)
    (DEFPARAMETER +_SIDD_MOST_SIGNIFICANT+ 64)
    (DEFPARAMETER +_SIDD_LEAST_SIGNIFICANT+ 0)
    (DEFPARAMETER +_SIDD_BIT_MASK+ 0)
    (DEFPARAMETER +_SIDD_UNIT_MASK+ 64)
    (DEFPARAMETER +__DEFAULT_FN_ATTRS_CONSTEXPR+ NIL)
    (DEFPARAMETER +SDL-INIT-TIMER+ 1)
    (DEFPARAMETER +SDL-INIT-AUDIO+ 16)
    (DEFPARAMETER +SDL-INIT-VIDEO+ 32)
    (DEFPARAMETER +SDL-INIT-JOYSTICK+ 512)
    (DEFPARAMETER +SDL-INIT-HAPTIC+ 4096)
    (DEFPARAMETER +SDL-INIT-GAMECONTROLLER+ 8192)
    (DEFPARAMETER +SDL-INIT-EVENTS+ 16384)
    (DEFPARAMETER +SDL-INIT-SENSOR+ 32768)
    (DEFPARAMETER +SDL-INIT-NOPARACHUTE+ 1048576)
    (DEFPARAMETER +SDL-INIT-EVERYTHING+ 62001)
    (DEFPARAMETER +SDL2-GFXPRIMITIVES-MAJOR+ 1)
    (DEFPARAMETER +SDL2-GFXPRIMITIVES-MINOR+ 0)
    (DEFPARAMETER +SDL2-GFXPRIMITIVES-MICRO+ 4)
    (DEFPARAMETER +SDL2-GFXPRIMITIVES-SCOPE+ NIL)
    (DEFPARAMETER +_SIDD_UBYTE_OPS+ 0)
    (DEFPARAMETER +_SIDD_UWORD_OPS+ 1)
    (DEFPARAMETER +_SIDD_SWORD_OPS+ 3)
    (DEFPARAMETER +_SIDD_SBYTE_OPS+ 2)
    (DEFPARAMETER +_SIDD_CMP_EQUAL_ANY+ 0)
    (DEFPARAMETER +_ALLOCA_H+ 1)
    (DEFPARAMETER +__MATH_DECLARING_DOUBLE+ NIL)
    (DEFPARAMETER +__MATH_DECLARING_FLOATN+ NIL)
    (DEFPARAMETER +_MM_CVTSS_I64+ NIL)
    (DEFPARAMETER +_MM_CVTSD_I64+ NIL)
    (DEFPARAMETER +_MM_CVTI64_SD+ NIL)
    (DEFPARAMETER +_MM_CVTI64_SS+ NIL)
    (DEFPARAMETER +_MDOUBLE_+ NIL)
    (DEFPARAMETER +__DEFAULT_FN_ATTRS256+ NIL)
    (DEFPARAMETER +FP-ILOGB0+ -2147483648)
    (DEFPARAMETER +__FP_LOGB0_IS_MIN+ 1)
    (DEFPARAMETER +__FP_LOGBNAN_IS_MIN+ 1)
    (DEFPARAMETER +FP-ILOGBNAN+ -2147483648)
    (DEFPARAMETER +HUGE-VAL+ "INF")
    (DEFPARAMETER +HUGE-VALF+ "INF")
    (DEFPARAMETER +HUGE-VALL+ "INF")
    (DEFPARAMETER +INFINITY+ "INF")
    (DEFPARAMETER +NAN+ "nan")
    (DEFPARAMETER +__GLIBC_FLT_EVAL_METHOD+ 0)
    (DEFPARAMETER +__MATHCALL_NARROW_ARGS_3+ NIL)
    (DEFPARAMETER +__MATHCALL_NARROW_ARGS_2+ NIL)
    (DEFPARAMETER +__MATHCALL_NARROW_ARGS_1+ NIL)
    (DEFPARAMETER +MATH-ERREXCEPT+ 2)
    (DEFPARAMETER +MATH-ERRNO+ 1)
    (DEFPARAMETER +FP-NORMAL+ 4)
    (DEFPARAMETER +FP-SUBNORMAL+ 3)
    (DEFPARAMETER +FP-ZERO+ 2)
    (DEFPARAMETER +FP-INFINITE+ 1)
    (DEFPARAMETER +FP-NAN+ 0)
    (DEFPARAMETER +__RESTRICT_ARR+ NIL)
    (DEFPARAMETER +_BITS_BYTESWAP_H+ 1)
    (DEFPARAMETER +__FORTIFY_FUNCTION+ NIL)
    (DEFPARAMETER +__EXTERN_ALWAYS_INLINE+ NIL)
    (DEFPARAMETER +__LINUX__+ 1)
    (DEFPARAMETER +PDP-ENDIAN+ 3412)
    (DEFPARAMETER +BYTE-ORDER+ 1234)
    (DEFPARAMETER +_CTYPE_H+ 1)
    (DEFPARAMETER +_BITS_UINTN_IDENTITY_H+ 1)
    (DEFPARAMETER +__LDOUBLE_REDIRECTS_TO_FLOAT128_ABI+ 0)
    (DEFPARAMETER +MATH-ERRHANDLING+ 3)
    (DEFPARAMETER +M-E+ 2.718282d0)
    (DEFPARAMETER +M-LOG2E+ 1.442695d0)
    (DEFPARAMETER +M-LOG10E+ 0.4342945d0)
    (DEFPARAMETER +M-LN2+ 0.6931472000000001d0)
    (DEFPARAMETER +M-LN10+ 2.302585d0)
    (DEFPARAMETER +M-PI+ 3.141593d0)
    (DEFPARAMETER +M-PI-2+ 1.570796d0)
    (DEFPARAMETER +M-PI-4+ 0.7853982d0)
    (DEFPARAMETER +M-1-PI+ 0.31830990000000003d0)
    (DEFPARAMETER +M-2-PI+ 0.6366198000000001d0)
    (DEFPARAMETER +__HAVE_GENERIC_SELECTION+ 1)
    (DEFPARAMETER +M-2-SQRTPI+ 1.128379d0)
    (DEFPARAMETER +M-SQRT2+ 1.414214d0)
    (DEFPARAMETER +M-SQRT1-2+ 0.7071068d0)
    (DEFPARAMETER +__ATTRIBUTE_MAYBE_UNUSED__+ NIL)
    (DEFPARAMETER +__SIGSET_T_DEFINED+ 1)
    (DEFPARAMETER +__ATTRIBUTE_CONST__+ NIL)
    (DEFPARAMETER +_SIGSET_NWORDS+ 16)
    (DEFPARAMETER +__ATTRIBUTE_USED__+ NIL)
    (DEFPARAMETER +__ATTRIBUTE_NOINLINE__+ NIL)
    (DEFPARAMETER +_STRUCT_TIMESPEC+ 1)
    (DEFPARAMETER +__ATTRIBUTE_DEPRECATED__+ NIL)
    (DEFPARAMETER +__TIMEVAL_DEFINED+ 1)
    (DEFPARAMETER +SDL-INLINE+ NIL)
    (DEFPARAMETER +__RETURNS_NONNULL+ NIL)
    (DEFPARAMETER +__ALWAYS_INLINE+ NIL)
    (DEFPARAMETER +__ATTRIBUTE_WARN_UNUSED_RESULT__+ NIL)
    (DEFPARAMETER +_SYS_SELECT_H+ 1)
    (DEFPARAMETER +__EXTERN_INLINE+ NIL)
    (DEFPARAMETER +__ATTRIBUTE_ARTIFICIAL__+ NIL)
    (DEFPARAMETER +_STRINGS_H+ 1)
    (DEFPARAMETER +NFDBITS+ 64)
    (DEFPARAMETER +FD-SETSIZE+ 1024)
    (DEFPARAMETER +__NFDBITS+ 64)
    (DEFPARAMETER +__ATTRIBUTE_PURE__+ NIL)
    (DEFPARAMETER +WEOF+ 4294967295)
    (DEFPARAMETER +WCHAR-MAX+ 2147483647)
    (DEFPARAMETER +WCHAR-MIN+ -2147483648)
    (DEFPARAMETER +__MBSTATE_T_DEFINED+ 1)
    (DEFPARAMETER +_WINT_T+ 1)
    (DEFPARAMETER +__WINT_T_DEFINED+ 1)
    (DEFPARAMETER +__WCHAR_MIN+ -2147483648)
    (DEFPARAMETER +__WCHAR_MAX+ 2147483647)
    (DEFPARAMETER +_MM_CVTI32_SS+ NIL)
    (DEFPARAMETER +_BITS_WCHAR_H+ 1)
    (DEFPARAMETER +_MM_CVTSD_I32+ NIL)
    (DEFPARAMETER +_MM_CVTSS_I32+ NIL)
    (DEFPARAMETER +_MM_CVTI32_SD+ NIL)
    (DEFPARAMETER +FLT-EVAL-METHOD+ 0)
    (DEFPARAMETER +_M_PCMPGTW+ NIL)
    (DEFPARAMETER +LDBL-MIN-EXP+ -16381)
    (DEFPARAMETER +FLT-MIN-10-EXP+ -37)
    (DEFPARAMETER +_M_PCMPGTD+ NIL)
    (DEFPARAMETER +FLT-MIN-EXP+ -125)
    (DEFPARAMETER +DBL-MIN-EXP+ -1021)
    (DEFPARAMETER +FLT-DIG+ 6)
    (DEFPARAMETER +DBL-DIG+ 15)
    (DEFPARAMETER +LDBL-DIG+ 18)
    (DEFPARAMETER +DECIMAL-DIG+ 21)
    (DEFPARAMETER +LDBL-MAX-10-EXP+ 4932)
    (DEFPARAMETER +FLT-MAX+ 3.402823d38)
    (DEFPARAMETER +_M_PSRLQI+ NIL)
    (DEFPARAMETER +_M_PSRLQ+ NIL)
    (DEFPARAMETER +FLT-MAX-10-EXP+ 38)
    (DEFPARAMETER +_M_PAND+ NIL)
    (DEFPARAMETER +DBL-MAX+ 1.797693d308)
    (DEFPARAMETER +_M_PANDN+ NIL)
    (DEFPARAMETER +DBL-MAX-10-EXP+ 308)
    (DEFPARAMETER +_M_POR+ NIL)
    (DEFPARAMETER +_M_PXOR+ NIL)
    (DEFPARAMETER +DBL-MAX-EXP+ 1024)
    (DEFPARAMETER +_M_PCMPEQB+ NIL)
    (DEFPARAMETER +LDBL-MAX-EXP+ 16384)
    (DEFPARAMETER +_M_PCMPEQW+ NIL)
    (DEFPARAMETER +DBL-MIN-10-EXP+ -307)
    (DEFPARAMETER +LDBL-MIN-10-EXP+ -4931)
    (DEFPARAMETER +_M_PCMPEQD+ NIL)
    (DEFPARAMETER +FLT-MAX-EXP+ 128)
    (DEFPARAMETER +_M_PCMPGTB+ NIL)
    (DEFPARAMETER +FLT-TRUE-MIN+ 1.401298d-45)
    (DEFPARAMETER +DBL-TRUE-MIN+ 0.0d0)
    (DEFPARAMETER +DBL-MIN+ 2.225074d-308)
    (DEFPARAMETER +LDBL-MIN+ 0.0d0)
    (DEFPARAMETER +DBL-EPSILON+ 2.220446d-16)
    (DEFPARAMETER +FLT-MIN+ 1.175494d-38)
    (DEFPARAMETER +LDBL-EPSILON+ 1.0842020000000001d-19)
    (DEFPARAMETER +LDBL-MAX+ "INF")
    (DEFPARAMETER +FLT-EPSILON+ 1.192093d-7)
    (DEFPARAMETER +SDL-SIZE-MAX+ 18446744073709551615)
    (DEFPARAMETER +_MM512_MASKZ_CVTPS_PH+ NIL)
    (DEFPARAMETER +DBL-HAS-SUBNORM+ 1)
    (DEFPARAMETER +LDBL-HAS-SUBNORM+ 1)
    (DEFPARAMETER +LDBL-DECIMAL-DIG+ 21)
    (DEFPARAMETER +FLT-HAS-SUBNORM+ 1)
    (DEFPARAMETER +_MM512_CVTPS_PH+ NIL)
    (DEFPARAMETER +LDBL-TRUE-MIN+ 0.0d0)
    (DEFPARAMETER +DBL-DECIMAL-DIG+ 17)
    (DEFPARAMETER +_MM512_MASK_CVTPS_PH+ NIL)
    (DEFPARAMETER +FLT-DECIMAL-DIG+ 9)
    (DEFPARAMETER +SDL-MAX-UINT16+ 65535)
    (DEFPARAMETER +SDL-MIN-SINT16+ -32768)
    (DEFPARAMETER +SDL-MAX-SINT16+ 32767)
    (DEFPARAMETER +SDL-MIN-UINT8+ 0)
    (DEFPARAMETER +SDL-MAX-UINT8+ 255)
    (DEFPARAMETER +SDL-MIN-SINT8+ -128)
    (DEFPARAMETER +SDL-MAX-SINT8+ 127)
    (DEFPARAMETER +SDL-MIN-SINT32+ -2147483648)
    (DEFPARAMETER +SDL-MAX-SINT32+ 2147483647)
    (DEFPARAMETER +SDL-MIN-UINT16+ 0)
    (DEFPARAMETER +SDL-FORCE-INLINE+ NIL)
    (DEFPARAMETER +FLT-MANT-DIG+ 24)
    (DEFPARAMETER +FLT-RADIX+ 2)
    (DEFPARAMETER +FLT-ROUNDS+ NIL)
    (DEFPARAMETER +LDBL-MANT-DIG+ 64)
    (DEFPARAMETER +DBL-MANT-DIG+ 53)
    (DEFPARAMETER +_MM_FROUND_NEARBYINT+ 12)
    (DEFPARAMETER +_MM_FROUND_RINT+ 4)
    (DEFPARAMETER +SDL-HINT-SHUTDOWN-DBUS-ON-QUIT+ NIL)
    (DEFPARAMETER +SDL-HINT-TRACKPAD-IS-TOUCH-ONLY+ NIL)
    (DEFPARAMETER +SDL-HINT-KMSDRM-DEVICE-INDEX+ NIL)
    (DEFPARAMETER +SDL-HINT-AUDIODRIVER+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEODRIVER+ NIL)
    (DEFPARAMETER +SDL-HINT-QUIT-ON-LAST-WINDOW-CLOSE+ NIL)
    (DEFPARAMETER +SDL-HINT-XINPUT-USE-OLD-JOYSTICK-MAPPING+ NIL)
    (DEFPARAMETER +SDL-HINT-AUDIO-INCLUDE-MONITORS+ NIL)
    (DEFPARAMETER +SDL-HINT-DIRECTINPUT-ENABLED+ NIL)
    (DEFPARAMETER +SDL-HINT-XINPUT-ENABLED+ NIL)
    (DEFPARAMETER +SDL-HINT-X11-FORCE-OVERRIDE-REDIRECT+ NIL)
    (DEFPARAMETER +SDL-HINT-WINRT-PRIVACY-POLICY-LABEL+ NIL)
    (DEFPARAMETER +SDL-HINT-WINDOW-FRAME-USABLE-WHILE-CURSOR-HIDDEN+ NIL)
    (DEFPARAMETER +SDL-HINT-WINDOW-NO-ACTIVATION-WHEN-SHOWN+ NIL)
    (DEFPARAMETER +SDL-HINT-WINRT-HANDLE-BACK-BUTTON+ NIL)
    (DEFPARAMETER +SDL-HINT-WINDOWS-DPI-SCALING+ NIL)
    (DEFPARAMETER +SDL-HINT-WINDOWS-USE-D3D9EX+ NIL)
    (DEFPARAMETER +SDL-HINT-WINDOWS-NO-CLOSE-ON-ALT-F4+ NIL)
    (DEFPARAMETER +SDL-HINT-WINDOWS-INTRESOURCE-ICON-SMALL+ NIL)
    (DEFPARAMETER +SDL-HINT-WINDOWS-FORCE-MUTEX-CRITICAL-SECTIONS+ NIL)
    (DEFPARAMETER +SDL-HINT-WINDOWS-DPI-AWARENESS+ NIL)
    (DEFPARAMETER +SDL-HINT-WINDOWS-INTRESOURCE-ICON+ NIL)
    (DEFPARAMETER +SDL-HINT-WINDOWS-FORCE-SEMAPHORE-KERNEL+ NIL)
    (DEFPARAMETER +SDL-HINT-WINDOWS-ENABLE-MESSAGELOOP+ NIL)
    (DEFPARAMETER +SDL-HINT-WINRT-PRIVACY-POLICY-URL+ NIL)
    (DEFPARAMETER +SDL-HINT-WINDOWS-DISABLE-THREAD-NAMING+ NIL)
    (DEFPARAMETER +SDL-HINT-WINDOWS-ENABLE-MENU-MNEMONICS+ NIL)
    (DEFPARAMETER +SDL-HINT-X11-WINDOW-TYPE+ NIL)
    (DEFPARAMETER +SDL-HINT-WAVE-RIFF-CHUNK-SIZE+ NIL)
    (DEFPARAMETER +SDL-HINT-WAVE-TRUNCATION+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-X11-XVIDMODE+ NIL)
    (DEFPARAMETER +SDL-RWOPS-MEMORY-RO+ 5)
    (DEFPARAMETER +SDL-RWOPS-MEMORY+ 4)
    (DEFPARAMETER +SDL-RWOPS-JNIFILE+ 3)
    (DEFPARAMETER +SDL-RWOPS-STDFILE+ 2)
    (DEFPARAMETER +SDL-HINT-VIDEO-X11-WINDOW-VISUALID+ NIL)
    (DEFPARAMETER +SDL-RWOPS-WINFILE+ 1)
    (DEFPARAMETER +SDL-RWOPS-UNKNOWN+ 0)
    (DEFPARAMETER +SDL-HINT-VIDEO-X11-NET-WM-PING+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-X11-NET-WM-BYPASS-COMPOSITOR+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-X11-XRANDR+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-X11-XINERAMA+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-X11-FORCE-EGL+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-FOREIGN-WINDOW-OPENGL+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-WINDOW-SHARE-PIXEL-FORMAT+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-WAYLAND-MODE-EMULATION+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-FOREIGN-WINDOW-VULKAN+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-WAYLAND-PREFER-LIBDECOR+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-WAYLAND-EMULATE-MOUSE-WARP+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-MINIMIZE-ON-FOCUS-LOSS+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-MAC-FULLSCREEN-SPACES+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-WAYLAND-ALLOW-LIBDECOR+ NIL)
    (DEFPARAMETER +SDL-SCOPED-CAPABILITY+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-EGL-ALLOW-TRANSPARENCY+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-HIGHDPI-DISABLED+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-EXTERNAL-CONTEXT+ NIL)
    (DEFPARAMETER +SDL-HINT-TV-REMOTE-AS-JOYSTICK+ NIL)
    (DEFPARAMETER +SDL-HINT-VITA-TOUCH-MOUSE-DEVICE+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-WIN-D3DCOMPILER+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-DOUBLE-BUFFER+ NIL)
    (DEFPARAMETER +HAS-BUILTIN-BSWAP16+ NIL)
    (DEFPARAMETER +HAS-BUILTIN-BSWAP32+ NIL)
    (DEFPARAMETER +SDL-HINT-TIMER-RESOLUTION+ NIL)
    (DEFPARAMETER +SDL-HINT-THREAD-STACK-SIZE+ NIL)
    (DEFPARAMETER +HAS-BUILTIN-BSWAP64+ NIL)
    (DEFPARAMETER +HAS-BROKEN-BSWAP+ NIL)
    (DEFPARAMETER +SDL-HINT-TOUCH-MOUSE-EVENTS+ NIL)
    (DEFPARAMETER +_M_PACKUSWB+ NIL)
    (DEFPARAMETER +SDL-HINT-VIDEO-ALLOW-SCREENSAVER+ NIL)
    (DEFPARAMETER +_M_PUNPCKHBW+ NIL)
    (DEFPARAMETER +SDL-HINT-SCREENSAVER-INHIBIT-ACTIVITY-NAME+ NIL)
    (DEFPARAMETER +_M_TO_INT64+ NIL)
    (DEFPARAMETER +_M_PACKSSDW+ NIL)
    (DEFPARAMETER +_M_PACKSSWB+ NIL)
    (DEFPARAMETER +SDL-HINT-PS2-DYNAMIC-VSYNC+ NIL)
    (DEFPARAMETER +_M_FROM_INT64+ NIL)
    (DEFPARAMETER +SDL-HINT-THREAD-FORCE-REALTIME-TIME-CRITICAL+ NIL)
    (DEFPARAMETER +SDL-HINT-THREAD-PRIORITY-POLICY+ NIL)
    (DEFPARAMETER +SDL-HINT-ROG-GAMEPAD-MICE-EXCLUDED+ NIL)
    (DEFPARAMETER +_M_TO_INT+ NIL)
    (DEFPARAMETER +_M_EMPTY+ NIL)
    (DEFPARAMETER +SDL-HINT-RPI-VIDEO-LAYER+ NIL)
    (DEFPARAMETER +_M_FROM_INT+ NIL)
    (DEFPARAMETER +SDL-HINT-RETURN-KEY-HIDES-IME+ NIL)
    (DEFPARAMETER +_M_PADDSB+ NIL)
    (DEFPARAMETER +_M_PADDD+ NIL)
    (DEFPARAMETER +SDL-HINT-RENDER-METAL-PREFER-LOW-POWER-DEVICE+ NIL)
    (DEFPARAMETER +_M_PADDW+ NIL)
    (DEFPARAMETER +_M_PUNPCKLDQ+ NIL)
    (DEFPARAMETER +_M_PUNPCKLWD+ NIL)
    (DEFPARAMETER +_M_PADDB+ NIL)
    (DEFPARAMETER +SDL-HINT-RENDER-DRIVER+ NIL)
    (DEFPARAMETER +_M_PUNPCKLBW+ NIL)
    (DEFPARAMETER +_M_PUNPCKHDQ+ NIL)
    (DEFPARAMETER +_M_PUNPCKHWD+ NIL)
    (DEFPARAMETER +_M_PSUBUSB+ NIL)
    (DEFPARAMETER +SDL-HINT-RENDER-OPENGL-SHADERS+ NIL)
    (DEFPARAMETER +_M_PSUBSW+ NIL)
    (DEFPARAMETER +_M_PSUBSB+ NIL)
    (DEFPARAMETER +_M_PSUBD+ NIL)
    (DEFPARAMETER +_M_PSUBB+ NIL)
    (DEFPARAMETER +_M_PSUBW+ NIL)
    (DEFPARAMETER +_M_PADDUSW+ NIL)
    (DEFPARAMETER +_M_PADDUSB+ NIL)
    (DEFPARAMETER +_M_PADDSW+ NIL)
    (DEFPARAMETER +SDL-MUTEX-MAXWAIT+ 4294967295)
    (DEFPARAMETER +_M_PSLLQ+ NIL)
    (DEFPARAMETER +_M_PSLLD+ NIL)
    (DEFPARAMETER +SDL-MUTEX-TIMEDOUT+ 1)
    (DEFPARAMETER +_M_PSLLWI+ NIL)
    (DEFPARAMETER +_M_PSLLDI+ NIL)
    (DEFPARAMETER +_M_PSLLW+ NIL)
    (DEFPARAMETER +_M_PMULLW+ NIL)
    (DEFPARAMETER +SDL-HINT-PREFERRED-LOCALES+ NIL)
    (DEFPARAMETER +_M_PMULHW+ NIL)
    (DEFPARAMETER +_M_PMADDWD+ NIL)
    (DEFPARAMETER +SDL-HINT-MOUSE-AUTO-CAPTURE+ NIL)
    (DEFPARAMETER +SDL-HINT-ROG-GAMEPAD-MICE+ NIL)
    (DEFPARAMETER +SDL-NO-THREAD-SAFETY-ANALYSIS+ NIL)
    (DEFPARAMETER +_M_PSRLDI+ NIL)
    (DEFPARAMETER +_M_PSRLD+ NIL)
    (DEFPARAMETER +_M_PSUBUSW+ NIL)
    (DEFPARAMETER +_M_PSRLWI+ NIL)
    (DEFPARAMETER +_M_PSRADI+ NIL)
    (DEFPARAMETER +_M_PSRAD+ NIL)
    (DEFPARAMETER +_M_PSRAWI+ NIL)
    (DEFPARAMETER +_M_PSRAW+ NIL)
    (DEFPARAMETER +_M_PSLLQI+ NIL)
    (DEFPARAMETER +_M_PSRLW+ NIL)
    (DEFPARAMETER +SDL-HINT-RENDER-DIRECT3D11-DEBUG+ NIL)
    (DEFPARAMETER +SDL-HINT-MOUSE-RELATIVE-MODE-WARP+ NIL)
    (DEFPARAMETER +__SWORD_TYPE+ NIL)
    (DEFPARAMETER +__UQUAD_TYPE+ NIL)
    (DEFPARAMETER +SDL-HINT-MOUSE-NORMAL-SPEED-SCALE+ NIL)
    (DEFPARAMETER +__ULONGWORD_TYPE+ NIL)
    (DEFPARAMETER +__SQUAD_TYPE+ NIL)
    (DEFPARAMETER +__SLONGWORD_TYPE+ NIL)
    (DEFPARAMETER +SDL-HINT-MOUSE-RELATIVE-SPEED-SCALE+ NIL)
    (DEFPARAMETER +__U32_TYPE+ NIL)
    (DEFPARAMETER +SDL-HINT-NO-SIGNAL-HANDLERS+ NIL)
    (DEFPARAMETER +SDL-HINT-MOUSE-RELATIVE-SYSTEM-SCALE+ NIL)
    (DEFPARAMETER +__S32_TYPE+ NIL)
    (DEFPARAMETER +__U16_TYPE+ NIL)
    (DEFPARAMETER +SDL-HINT-MOUSE-RELATIVE-WARP-MOTION+ NIL)
    (DEFPARAMETER +SDL-HINT-RENDER-VSYNC+ NIL)
    (DEFPARAMETER +__S16_TYPE+ NIL)
    (DEFPARAMETER +SDL-HINT-MOUSE-RELATIVE-MODE-CENTER+ NIL)
    (DEFPARAMETER +SDL-HINT-MOUSE-RELATIVE-SCALING+ NIL)
    (DEFPARAMETER +SDL-HINT-POLL-SENTINEL+ NIL)
    (DEFPARAMETER +SDL-HINT-RENDER-DIRECT3D-THREADSAFE+ NIL)
    (DEFPARAMETER +SDL-HINT-RENDER-BATCHING+ NIL)
    (DEFPARAMETER +SDL-HINT-RENDER-LINE-METHOD+ NIL)
    (DEFPARAMETER +SDL-HINT-OPENGL-ES-DRIVER+ NIL)
    (DEFPARAMETER +SDL-HINT-WAVE-FACT-CHUNK+ NIL)
    (DEFPARAMETER +SDL-HINT-ORIENTATIONS+ NIL)
    (DEFPARAMETER +SDL-ENABLE+ 1)
    (DEFPARAMETER +SDL-DISABLE+ 0)
    (DEFPARAMETER +SDL-HINT-RENDER-SCALE-QUALITY+ NIL)
    (DEFPARAMETER +SDL-QUERY+ -1)
    (DEFPARAMETER +SDL-IGNORE+ 0)
    (DEFPARAMETER +SDL-HINT-MOUSE-TOUCH-EVENTS+ NIL)
    (DEFPARAMETER +SDL-HINT-QTWAYLAND-CONTENT-ORIENTATION+ NIL)
    (DEFPARAMETER +SDL-HINT-QTWAYLAND-WINDOW-FLAGS+ NIL)
    (DEFPARAMETER +SDL-HINT-RENDER-LOGICAL-SIZE-MODE+ NIL)
    (DEFPARAMETER +_BITS_TYPES_H+ 1)
    (DEFPARAMETER +SDL-HAPTIC-CARTESIAN+ 1)
    (DEFPARAMETER +SDL-HAPTIC-SPHERICAL+ 2)
    (DEFPARAMETER +__GLIBC_USE_IEC_60559_TYPES_EXT+ 0)
    (DEFPARAMETER +SDL-HAPTIC-STEERING-AXIS+ 3)
    (DEFPARAMETER +_MM512_SETZERO_EPI32+ NIL)
    (DEFPARAMETER +SDL-HAPTIC-INFINITY+ 4294967295)
    (DEFPARAMETER +__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X+ 0)
    (DEFPARAMETER +__DEFAULT_FN_ATTRS512+ NIL)
    (DEFPARAMETER +SDL-HAPTIC-INERTIA+ 512)
    (DEFPARAMETER +__GLIBC_USE_IEC_60559_FUNCS_EXT+ 0)
    (DEFPARAMETER +SDL-HAPTIC-FRICTION+ 1024)
    (DEFPARAMETER +SDL-HAPTIC-CUSTOM+ 2048)
    (DEFPARAMETER +__GLIBC_USE_IEC_60559_EXT+ 0)
    (DEFPARAMETER +SDL-HAPTIC-GAIN+ 4096)
    (DEFPARAMETER +__GLIBC_USE_IEC_60559_BFP_EXT_C2X+ 0)
    (DEFPARAMETER +SDL-HAPTIC-AUTOCENTER+ 8192)
    (DEFPARAMETER +SDL-HAPTIC-STATUS+ 16384)
    (DEFPARAMETER +__GLIBC_USE_IEC_60559_BFP_EXT+ 0)
    (DEFPARAMETER +SDL-HAPTIC-PAUSE+ 32768)
    (DEFPARAMETER +SDL-HAPTIC-POLAR+ 0)
    (DEFPARAMETER +SDL-HAPTIC-SINE+ 2)
    (DEFPARAMETER +SDL-HAPTIC-LEFTRIGHT+ 4)
    (DEFPARAMETER +SDL-HAPTIC-TRIANGLE+ 8)
    (DEFPARAMETER +SDL-HAPTIC-SAWTOOTHUP+ 16)
    (DEFPARAMETER +_MM512_SETZERO+ NIL)
    (DEFPARAMETER +SDL-HAPTIC-SAWTOOTHDOWN+ 32)
    (DEFPARAMETER +SDL-HAPTIC-RAMP+ 64)
    (DEFPARAMETER +SDL-HAPTIC-SPRING+ 128)
    (DEFPARAMETER +SDL-HAPTIC-DAMPER+ 256)
    (DEFPARAMETER +SDL-NONSHAPEABLE-WINDOW+ -1)
    (DEFPARAMETER +SDL-INVALID-SHAPE-ARGUMENT+ -2)
    (DEFPARAMETER +SDL-WINDOW-LACKS-SHAPE+ -3)
    (DEFPARAMETER +SDL-HAPTIC-CONSTANT+ 1)
    (DEFPARAMETER +SDL-ICONV-EINVAL+ -4)
    (DEFPARAMETER +SDL-ICONV-EILSEQ+ -3)
    (DEFPARAMETER +__GLIBC_USE_LIB_EXT2+ 0)
    (DEFPARAMETER +__USE_POSIX199506+ 1)
    (DEFPARAMETER +__USE_POSIX199309+ 1)
    (DEFPARAMETER +__USE_POSIX2+ 1)
    (DEFPARAMETER +__USE_POSIX+ 1)
    (DEFPARAMETER +__USE_ISOC95+ 1)
    (DEFPARAMETER +__USE_ISOC99+ 1)
    (DEFPARAMETER +__USE_ISOC11+ 1)
    (DEFPARAMETER +_FEATURES_H+ 1)
    (DEFPARAMETER +_MATH_H+ 1)
    (DEFPARAMETER +__GCC_HAVE_DWARF2_CFI_ASM+ 1)
    (DEFPARAMETER +SDL-TEXTINPUTEVENT-TEXT-SIZE+ 32)
    (DEFPARAMETER +__RELAXED_FN_ATTRS+ NIL)
    (DEFPARAMETER +SDL-ASSERT-LEVEL+ 1)
    (DEFPARAMETER +SDL-TEXTEDITINGEVENT-TEXT-SIZE+ 32)
    (DEFPARAMETER +SDL-LINE+ 545)
    (DEFPARAMETER +SDL-FILE+ NIL)
    (DEFPARAMETER +SDL-FUNCTION+ NIL)
    (DEFPARAMETER +SDL-NULL-WHILE-LOOP-CONDITION+ 0)
    (DEFPARAMETER +INTMAX-MAX+ 9223372036854775807)
    (DEFPARAMETER +INTMAX-MIN+ -9223372036854775808)
    (DEFPARAMETER +__DEFAULT_FN_ATTRS128+ NIL)
    (DEFPARAMETER +UINTPTR-MAX+ 18446744073709551615)
    (DEFPARAMETER +INTPTR-MAX+ 9223372036854775807)
    (DEFPARAMETER +UINT-FAST64-MAX+ -1)
    (DEFPARAMETER +INTPTR-MIN+ -9223372036854775808)
    (DEFPARAMETER +__WORDSIZE_TIME64_COMPAT32+ 1)
    (DEFPARAMETER +UINT-FAST32-MAX+ 18446744073709551615)
    (DEFPARAMETER +UINT-FAST16-MAX+ 18446744073709551615)
    (DEFPARAMETER +UINT-FAST8-MAX+ 255)
    (DEFPARAMETER +INT-FAST64-MAX+ 9223372036854775807)
    (DEFPARAMETER +INT-FAST32-MAX+ 9223372036854775807)
    (DEFPARAMETER +__SYSCALL_WORDSIZE+ 64)
    (DEFPARAMETER +INT-FAST16-MAX+ 9223372036854775807)
    (DEFPARAMETER +__TIMESIZE+ 64)
    (DEFPARAMETER +INT-FAST64-MIN+ -9223372036854775808)
    (DEFPARAMETER +INT-FAST32-MIN+ -9223372036854775808)
    (DEFPARAMETER +INT-FAST8-MAX+ 127)
    (DEFPARAMETER +INT-FAST16-MIN+ -9223372036854775808)
    (DEFPARAMETER +_STDC_PREDEF_H+ 1)
    (DEFPARAMETER +INT-FAST8-MIN+ -128)
    (DEFPARAMETER +UINT-LEAST64-MAX+ -1)
    (DEFPARAMETER +WINT-MAX+ 4294967295)
    (DEFPARAMETER +WINT-MIN+ 0)
    (DEFPARAMETER +SIZE-MAX+ 18446744073709551615)
    (DEFPARAMETER +SIG-ATOMIC-MAX+ 2147483647)
    (DEFPARAMETER +SIG-ATOMIC-MIN+ -2147483648)
    (DEFPARAMETER +PTRDIFF-MAX+ 9223372036854775807)
    (DEFPARAMETER +PTRDIFF-MIN+ -9223372036854775808)
    (DEFPARAMETER +UINTMAX-MAX+ -1)
    (DEFPARAMETER +INT64-MIN+ -9223372036854775808)
    (DEFPARAMETER +INT8-MAX+ 127)
    (DEFPARAMETER +INT16-MIN+ -32768)
    (DEFPARAMETER +INT8-MIN+ -128)
    (DEFPARAMETER +INT32-MIN+ -2147483648)
    (DEFPARAMETER +__THROWNL+ NIL)
    (DEFPARAMETER +__THROW+ NIL)
    (DEFPARAMETER +__PTR_T+ NIL)
    (DEFPARAMETER +UINT-LEAST16-MAX+ 65535)
    (DEFPARAMETER +__STDC_IEC_60559_BFP__+ 201404)
    (DEFPARAMETER +UINT-LEAST32-MAX+ 4294967295)
    (DEFPARAMETER +__STDC_IEC_559__+ 1)
    (DEFPARAMETER +INT-LEAST64-MAX+ 9223372036854775807)
    (DEFPARAMETER +UINT-LEAST8-MAX+ 255)
    (DEFPARAMETER +INT-LEAST16-MAX+ 32767)
    (DEFPARAMETER +__GNU_LIBRARY__+ 6)
    (DEFPARAMETER +INT-LEAST32-MAX+ 2147483647)
    (DEFPARAMETER +__STDC_ISO_10646__+ 201706)
    (DEFPARAMETER +INT-LEAST8-MAX+ 127)
    (DEFPARAMETER +__STDC_IEC_60559_COMPLEX__+ 201404)
    (DEFPARAMETER +__STDC_IEC_559_COMPLEX__+ 1)
    (DEFPARAMETER +INT-LEAST8-MIN+ -128)
    (DEFPARAMETER +_SYS_CDEFS_H+ 1)
    (DEFPARAMETER +INT-LEAST32-MIN+ -2147483648)
    (DEFPARAMETER +INT-LEAST16-MIN+ -32768)
    (DEFPARAMETER +__GLIBC_MINOR__+ 37)
    (DEFPARAMETER +__GLIBC__+ 2)
    (DEFPARAMETER +UINT64-MAX+ -1)
    (DEFPARAMETER +UINT32-MAX+ 4294967295)
    (DEFPARAMETER +INT64-MAX+ 9223372036854775807)
    (DEFPARAMETER +UINT16-MAX+ 65535)
    (DEFPARAMETER +INT-LEAST64-MIN+ -9223372036854775808)
    (DEFPARAMETER +INT16-MAX+ 32767)
    (DEFPARAMETER +INT32-MAX+ 2147483647)
    (DEFPARAMETER +UINT8-MAX+ 255)
    (DEFPARAMETER +__W_CONTINUED+ 65535)
    (DEFPARAMETER +__WCOREFLAG+ 128)
    (DEFPARAMETER +__WCLONE+ 2147483648)
    (DEFPARAMETER +__WALL+ 1073741824)
    (DEFPARAMETER +MB-CUR-MAX+ NIL)
    (DEFPARAMETER +EXIT-SUCCESS+ 0)
    (DEFPARAMETER +__LLDIV_T_DEFINED+ 1)
    (DEFPARAMETER +EXIT-FAILURE+ 1)
    (DEFPARAMETER +RAND-MAX+ 2147483647)
    (DEFPARAMETER +__LDIV_T_DEFINED+ 1)
    (DEFPARAMETER +WSTOPPED+ 2)
    (DEFPARAMETER +WCONTINUED+ 8)
    (DEFPARAMETER +WEXITED+ 4)
    (DEFPARAMETER +WNOWAIT+ 16777216)
    (DEFPARAMETER +__WNOTHREAD+ 536870912)
    (DEFPARAMETER +WNOHANG+ 1)
    (DEFPARAMETER +WUNTRACED+ 2)
    (DEFPARAMETER +SDL-ICONV-E2BIG+ -2)
    (DEFPARAMETER +SDL-ICONV-ERROR+ -1)
    (DEFPARAMETER +__ATTRIBUTE_MALLOC__+ NIL)
    (DEFPARAMETER +__PCONFIG_KEY_PROGRAM+ 1)
    (DEFPARAMETER +__FLEXARR+ NIL)
    (DEFPARAMETER +__GLIBC_C99_FLEXARR_AVAILABLE+ 1)
    (DEFPARAMETER +SDL-BUTTON-MIDDLE+ 2)
    (DEFPARAMETER +SDL-BUTTON-LEFT+ 1)
    (DEFPARAMETER +__MATH_DECLARE_LDOUBLE+ 1)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-GAMECUBE-DEVICES+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-GAMECUBE-DEVICES-EXCLUDED+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-FLIGHTSTICK-DEVICES-EXCLUDED+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-BLACKLIST-DEVICES-EXCLUDED+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-FLIGHTSTICK-DEVICES+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-BLACKLIST-DEVICES+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-ARCADESTICK-DEVICES+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-ARCADESTICK-DEVICES-EXCLUDED+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-ALLOW-BACKGROUND-EVENTS+ NIL)
    (DEFPARAMETER +__DEFAULT_FN_ATTRS_COMPLEX+ NIL)
    (DEFPARAMETER +SDL-HINT-IME-SUPPORT-EXTENDED-TEXT+ NIL)
    (DEFPARAMETER +SDL-HINT-IOS-HIDE-HOME-INDICATOR+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-PS5-PLAYER-LED+ NIL)
    (DEFPARAMETER +SDL-PREALLOC+ 1)
    (DEFPARAMETER +SDL-SWSURFACE+ 0)
    (DEFPARAMETER +SDL-DONTFREE+ 4)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-PS4-RUMBLE+ NIL)
    (DEFPARAMETER +SDL-RLEACCEL+ 2)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-PS5+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-PS3+ NIL)
    (DEFPARAMETER +SDL-SIMD-ALIGNED+ 8)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-SHIELD+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-PS4+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-LUNA+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-NINTENDO-CLASSIC+ NIL)
    (DEFPARAMETER +SDL-STANDARD-GRAVITY+ 9.80665d0)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-VERTICAL-JOY-CONS+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-JOY-CONS+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-COMBINE-JOY-CONS+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-GAMECUBE+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-GAMECUBE-RUMBLE-BRAKE+ NIL)
    (DEFPARAMETER +_MM_EXCEPT_OVERFLOW+ 8)
    (DEFPARAMETER +_MM_EXCEPT_DIV_ZERO+ 4)
    (DEFPARAMETER +_MM_EXCEPT_INEXACT+ 32)
    (DEFPARAMETER +_MM_EXCEPT_UNDERFLOW+ 16)
    (DEFPARAMETER +_MM_MASK_INVALID+ 128)
    (DEFPARAMETER +_MM_EXCEPT_MASK+ 63)
    (DEFPARAMETER +_MM_MASK_DIV_ZERO+ 512)
    (DEFPARAMETER +_MM_MASK_DENORM+ 256)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-SWITCH-PLAYER-LED+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-SWITCH-HOME-LED+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-JOYCON-HOME-LED+ NIL)
    (DEFPARAMETER +_MM_ALIGN16+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-STEAMDECK+ NIL)
    (DEFPARAMETER +_MM_EXCEPT_DENORM+ 2)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-STADIA+ NIL)
    (DEFPARAMETER +_MM_EXCEPT_INVALID+ 1)
    (DEFPARAMETER +_MM_FLUSH_ZERO_ON+ 32768)
    (DEFPARAMETER +_MM_FLUSH_ZERO_MASK+ 32768)
    (DEFPARAMETER +_MM_FLUSH_ZERO_OFF+ 0)
    (DEFPARAMETER +_MM_DENORMALS_ZERO_OFF+ 0)
    (DEFPARAMETER +_MM_DENORMALS_ZERO_ON+ 64)
    (DEFPARAMETER +_MM_DENORMALS_ZERO_MASK+ 64)
    (DEFPARAMETER +__DEFAULT_FN_ATTRS_INT8+ NIL)
    (DEFPARAMETER +_MM_MASK_UNDERFLOW+ 2048)
    (DEFPARAMETER +_MM_MASK_OVERFLOW+ 1024)
    (DEFPARAMETER +_MM_MASK_MASK+ 8064)
    (DEFPARAMETER +_MM_MASK_INEXACT+ 4096)
    (DEFPARAMETER +_MM_ROUND_DOWN+ 8192)
    (DEFPARAMETER +_MM_ROUND_NEAREST+ 0)
    (DEFPARAMETER +_MM_ROUND_MASK+ 24576)
    (DEFPARAMETER +_MM_ROUND_TOWARD_ZERO+ 24576)
    (DEFPARAMETER +_MM_ROUND_UP+ 16384)
    (DEFPARAMETER +_M_PEXTRW+ NIL)
    (DEFPARAMETER +_CMP_EQ_OQ+ 0)
    (DEFPARAMETER +_CMP_LT_OS+ 1)
    (DEFPARAMETER +_M_PINSRW+ NIL)
    (DEFPARAMETER +_CMP_LE_OS+ 2)
    (DEFPARAMETER +_CMP_UNORD_Q+ 3)
    (DEFPARAMETER +_M_PMINSW+ NIL)
    (DEFPARAMETER +_M_PMINUB+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-THROTTLE-DEVICES+ NIL)
    (DEFPARAMETER +_M_PMAXSW+ NIL)
    (DEFPARAMETER +_M_PMAXUB+ NIL)
    (DEFPARAMETER +_CMP_NGE_US+ 9)
    (DEFPARAMETER +_CMP_FALSE_OQ+ 11)
    (DEFPARAMETER +_CMP_NEQ_OQ+ 12)
    (DEFPARAMETER +_CMP_NEQ_UQ+ 4)
    (DEFPARAMETER +_CMP_NLT_US+ 5)
    (DEFPARAMETER +_CMP_NLE_US+ 6)
    (DEFPARAMETER +_CMP_ORD_Q+ 7)
    (DEFPARAMETER +_CMP_NGT_US+ 10)
    (DEFPARAMETER +_CMP_EQ_UQ+ 8)
    (DEFPARAMETER +_CMP_LE_OQ+ 18)
    (DEFPARAMETER +_CMP_UNORD_S+ 19)
    (DEFPARAMETER +_CMP_NEQ_US+ 20)
    (DEFPARAMETER +_CMP_NLT_UQ+ 21)
    (DEFPARAMETER +_CMP_GE_OS+ 13)
    (DEFPARAMETER +_CMP_TRUE_UQ+ 15)
    (DEFPARAMETER +_CMP_GT_OS+ 14)
    (DEFPARAMETER +_CMP_EQ_OS+ 16)
    (DEFPARAMETER +_CMP_LT_OQ+ 17)
    (DEFPARAMETER +_M_MASKMOVQ+ NIL)
    (DEFPARAMETER +_CMP_FALSE_OS+ 27)
    (DEFPARAMETER +_M_PAVGB+ NIL)
    (DEFPARAMETER +_CMP_NEQ_OS+ 28)
    (DEFPARAMETER +__DEFAULT_FN_ATTRS_TILE+ NIL)
    (DEFPARAMETER +_M_PMULHUW+ NIL)
    (DEFPARAMETER +_M_PMOVMSKB+ NIL)
    (DEFPARAMETER +_CMP_TRUE_US+ 31)
    (DEFPARAMETER +_M_PSHUFW+ NIL)
    (DEFPARAMETER +_CMP_GE_OQ+ 29)
    (DEFPARAMETER +_CMP_ORD_S+ 23)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-WHEEL-DEVICES+ NIL)
    (DEFPARAMETER +_CMP_GT_OQ+ 30)
    (DEFPARAMETER +_CMP_NLE_UQ+ 22)
    (DEFPARAMETER +_CMP_EQ_US+ 24)
    (DEFPARAMETER +_CMP_NGE_UQ+ 25)
    (DEFPARAMETER +SDL-HINT-ALLOW-TOPMOST+ NIL)
    (DEFPARAMETER +_M_PAVGW+ NIL)
    (DEFPARAMETER +_CMP_NGT_UQ+ 26)
    (DEFPARAMETER +_M_PSADBW+ NIL)
    (DEFPARAMETER +__DEFAULT_FN_ATTRS_FP16+ NIL)
    (DEFPARAMETER +SDL-HINT-ALLOW-ALT-TAB-WHILE-GRABBED+ NIL)
    (DEFPARAMETER +__DEFAULT_FN_ATTRS_BF16+ NIL)
    (DEFPARAMETER +SDL-HINT-ACCELEROMETER-AS-JOYSTICK+ NIL)
    (DEFPARAMETER +SDL-HINT-ANDROID-APK-EXPANSION-MAIN-FILE-VERSION+ NIL)
    (DEFPARAMETER +_MM_FROUND_TO_POS_INF+ 2)
    (DEFPARAMETER +SDL-HINT-AUDIO-RESAMPLING-MODE+ NIL)
    (DEFPARAMETER +_MM_FROUND_TO_NEG_INF+ 1)
    (DEFPARAMETER +SDL-HINT-AUDIO-DEVICE-STREAM-ROLE+ NIL)
    (DEFPARAMETER +_MM_FROUND_TO_NEAREST_INT+ 0)
    (DEFPARAMETER +SDL-HINT-ANDROID-TRAP-BACK-BUTTON+ NIL)
    (DEFPARAMETER +SDL-HINT-ANDROID-BLOCK-ON-PAUSE-PAUSEAUDIO+ NIL)
    (DEFPARAMETER +SDL-HINT-BMP-SAVE-LEGACY-FORMAT+ NIL)
    (DEFPARAMETER +SDL-HINT-APP-NAME+ NIL)
    (DEFPARAMETER +SDL-HINT-AUDIO-CATEGORY+ NIL)
    (DEFPARAMETER +_MM_FROUND_NO_EXC+ 8)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-XBOX-ONE-HOME-LED+ NIL)
    (DEFPARAMETER +_MM_FROUND_RAISE_EXC+ 0)
    (DEFPARAMETER +SDL-HINT-APPLE-TV-REMOTE-ALLOW-ROTATION+ NIL)
    (DEFPARAMETER +SDL-HINT-DISPLAY-USABLE-BOUNDS+ NIL)
    (DEFPARAMETER +_MM_FROUND_CUR_DIRECTION+ 4)
    (DEFPARAMETER +SDL-BLIT-SURFACE+ NIL)
    (DEFPARAMETER +_MM_FROUND_TO_ZERO+ 3)
    (DEFPARAMETER +SDL-HINT-AUDIO-DEVICE-APP-NAME+ NIL)
    (DEFPARAMETER +SDL-HINT-AUTO-UPDATE-SENSORS+ NIL)
    (DEFPARAMETER +_MM_FROUND_TRUNC+ 3)
    (DEFPARAMETER +SDL-HINT-ANDROID-APK-EXPANSION-PATCH-FILE-VERSION+ NIL)
    (DEFPARAMETER +_MM_FROUND_CEIL+ 2)
    (DEFPARAMETER +_MM_FROUND_FLOOR+ 1)
    (DEFPARAMETER +_MM_FROUND_NINT+ 0)
    (DEFPARAMETER +SDL-HINT-GAMECONTROLLER-USE-BUTTON-LABELS+ NIL)
    (DEFPARAMETER +SDL-HINT-IDLE-TIMER-DISABLED+ NIL)
    (DEFPARAMETER +SDL-HINT-IME-INTERNAL-EDITING+ NIL)
    (DEFPARAMETER +SDL-HINT-AUDIO-DEVICE-STREAM-NAME+ NIL)
    (DEFPARAMETER +SDL-HINT-GAMECONTROLLER-IGNORE-DEVICES-EXCEPT+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-IOKIT+ NIL)
    (DEFPARAMETER +SDL-HINT-IME-SHOW-UI+ NIL)
    (DEFPARAMETER +SDL-HINT-EMSCRIPTEN-ASYNCIFY+ NIL)
    (DEFPARAMETER +SDL-HINT-ENABLE-SCREEN-KEYBOARD+ NIL)
    (DEFPARAMETER +SDL-HINT-GRAB-KEYBOARD+ NIL)
    (DEFPARAMETER +SDL-BLIT-SCALED+ NIL)
    (DEFPARAMETER +SDL-HINT-EMSCRIPTEN-KEYBOARD-ELEMENT+ NIL)
    (DEFPARAMETER +SDL-HINT-GAMECONTROLLER-IGNORE-DEVICES+ NIL)
    (DEFPARAMETER +SDL-HINT-GAMECONTROLLERCONFIG-FILE+ NIL)
    (DEFPARAMETER +SDL-HINT-ENABLE-STEAM-CONTROLLERS+ NIL)
    (DEFPARAMETER +SDL-HINT-EVENT-LOGGING+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-RAWINPUT-CORRELATE-XINPUT+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-STEAM+ NIL)
    (DEFPARAMETER +SDL-HINT-FORCE-RAISEWINDOW+ NIL)
    (DEFPARAMETER +SDL-HINT-ANDROID-BLOCK-ON-PAUSE+ NIL)
    (DEFPARAMETER +SDL-HINT-FRAMEBUFFER-ACCELERATION+ NIL)
    (DEFPARAMETER +SDL-HINT-GAMECONTROLLERCONFIG+ NIL)
    (DEFPARAMETER +HAVE-ATOI+ 1)
    (DEFPARAMETER +SDL-HINT-GAMECONTROLLERTYPE+ NIL)
    (DEFPARAMETER +SDL-HINT-APPLE-TV-CONTROLLER-UI-EVENTS+ NIL)
    (DEFPARAMETER +HAVE-STRTOD+ 1)
    (DEFPARAMETER +HAVE-STRTOULL+ 1)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-WII-PLAYER-LED+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-XBOX-ONE+ NIL)
    (DEFPARAMETER +HAVE-STRTOUL+ 1)
    (DEFPARAMETER +HAVE-STRTOLL+ 1)
    (DEFPARAMETER +HAVE-STRTOL+ 1)
    (DEFPARAMETER +HAVE-STRTOK-R+ 1)
    (DEFPARAMETER +HAVE-STRSTR+ 1)
    (DEFPARAMETER +HAVE-STRRCHR+ 1)
    (DEFPARAMETER +HAVE-STRCHR+ 1)
    (DEFPARAMETER +HAVE-RINDEX+ 1)
    (DEFPARAMETER +HAVE-STRLEN+ 1)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-WGI+ NIL)
    (DEFPARAMETER +HAVE-INDEX+ 1)
    (DEFPARAMETER +HAVE-WCSNCASECMP+ 1)
    (DEFPARAMETER +HAVE-WCSCASECMP+ 1)
    (DEFPARAMETER +HAVE-WCSNCMP+ 1)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-THREAD+ NIL)
    (DEFPARAMETER +HAVE-WCSCMP+ 1)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-ROG-CHAKRAM+ NIL)
    (DEFPARAMETER +HAVE-WCSSTR+ 1)
    (DEFPARAMETER +SDL-HINT-AUTO-UPDATE-JOYSTICKS+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-MFI+ NIL)
    (DEFPARAMETER +SDL-HINT-HIDAPI-IGNORE-DEVICES+ NIL)
    (DEFPARAMETER +SDL-MOUSE-TOUCHID+ -1)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-RAWINPUT+ NIL)
    (DEFPARAMETER +SDL-TOUCH-MOUSEID+ 4294967295)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-WII+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-PS5-RUMBLE+ NIL)
    (DEFPARAMETER +__INLINE__+ NIL)
    (DEFPARAMETER +HAVE-STRNCMP+ 1)
    (DEFPARAMETER +HAVE-STRCMP+ 1)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-XBOX+ NIL)
    (DEFPARAMETER +HAVE-ATOF+ 1)
    (DEFPARAMETER +HAVE-LINUX-INPUT-H+ 1)
    (DEFPARAMETER +HAVE-DLOPEN+ 1)
    (DEFPARAMETER +HAVE-SYS-TYPES-H+ 1)
    (DEFPARAMETER +HAVE-MALLOC+ 1)
    (DEFPARAMETER +HAVE-WCHAR-H+ 1)
    (DEFPARAMETER +HAVE-STRINGS-H+ 1)
    (DEFPARAMETER +HAVE-STRING-H+ 1)
    (DEFPARAMETER +HAVE-STDIO-H+ 1)
    (DEFPARAMETER +HAVE-STDLIB-H+ 1)
    (DEFPARAMETER +HAVE-SIGNAL-H+ 1)
    (DEFPARAMETER +HAVE-STDARG-H+ 1)
    (DEFPARAMETER +HAVE-STDINT-H+ 1)
    (DEFPARAMETER +HAVE-MATH-H+ 1)
    (DEFPARAMETER +HAVE-MEMORY-H+ 1)
    (DEFPARAMETER +HAVE-LIMITS-H+ 1)
    (DEFPARAMETER +HAVE-MALLOC-H+ 1)
    (DEFPARAMETER +HAVE-ICONV-H+ 1)
    (DEFPARAMETER +HAVE-INTTYPES-H+ 1)
    (DEFPARAMETER +HAVE-WCSLEN+ 1)
    (DEFPARAMETER +HAVE-WCSDUP+ 1)
    (DEFPARAMETER +HAVE-MEMCPY+ 1)
    (DEFPARAMETER +HAVE-MEMCMP+ 1)
    (DEFPARAMETER +HAVE-MEMMOVE+ 1)
    (DEFPARAMETER +HAVE-BCOPY+ 1)
    (DEFPARAMETER +HAVE-MEMSET+ 1)
    (DEFPARAMETER +HAVE-BSEARCH+ 1)
    (DEFPARAMETER +SDL-PRESSED+ 1)
    (DEFPARAMETER +SDL-AUDIOCVT-MAX-FILTERS+ 9)
    (DEFPARAMETER +HAVE-ABS+ 1)
    (DEFPARAMETER +HAVE-UNSETENV+ 1)
    (DEFPARAMETER +HAVE-PUTENV+ 1)
    (DEFPARAMETER +HAVE-QSORT+ 1)
    (DEFPARAMETER +HAVE-GETENV+ 1)
    (DEFPARAMETER +SDL-AUDIO-ALLOW-ANY-CHANGE+ 15)
    (DEFPARAMETER +HAVE-SETENV+ 1)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-XBOX-360-WIRELESS+ NIL)
    (DEFPARAMETER +HAVE-FREE+ 1)
    (DEFPARAMETER +SDL-WINDOWPOS-CENTERED-MASK+ 805240832)
    (DEFPARAMETER +HAVE-ALLOCA+ 1)
    (DEFPARAMETER +HAVE-CALLOC+ 1)
    (DEFPARAMETER +HAVE-REALLOC+ 1)
    (DEFPARAMETER +SDL-WINDOWPOS-CENTERED+ 805240832)
    (DEFPARAMETER +AUDIO-S16SYS+ 32784)
    (DEFPARAMETER +AUDIO-U16SYS+ 16)
    (DEFPARAMETER +SDL-RELEASED+ 0)
    (DEFPARAMETER +AUDIO-F32SYS+ 33056)
    (DEFPARAMETER +AUDIO-S32SYS+ 32800)
    (DEFPARAMETER +SDL-MAX-LOG-MESSAGE+ 4096)
    (DEFPARAMETER +SDL-AUDIO-ALLOW-FORMAT-CHANGE+ 2)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-WHEEL-DEVICES-EXCLUDED+ NIL)
    (DEFPARAMETER +SDL-AUDIO-ALLOW-FREQUENCY-CHANGE+ 1)
    (DEFPARAMETER +SDL-AUDIO-ALLOW-SAMPLES-CHANGE+ 8)
    (DEFPARAMETER +SDL-WINDOWPOS-UNDEFINED+ 536805376)
    (DEFPARAMETER +SDL-AUDIO-ALLOW-CHANNELS-CHANGE+ 4)
    (DEFPARAMETER +SDL-WINDOWPOS-UNDEFINED-MASK+ 536805376)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-XBOX-360-PLAYER-LED+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-THROTTLE-DEVICES-EXCLUDED+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-SWITCH+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-HIDAPI-XBOX-360+ NIL)
    (DEFPARAMETER +AUDIO-S32LSB+ 32800)
    (DEFPARAMETER +AUDIO-F32LSB+ 33056)
    (DEFPARAMETER +AUDIO-S32+ 32800)
    (DEFPARAMETER +AUDIO-S32MSB+ 36896)
    (DEFPARAMETER +AUDIO-F32+ 33056)
    (DEFPARAMETER +AUDIO-F32MSB+ 37152)
    (DEFPARAMETER +STDC-HEADERS+ 1)
    (DEFPARAMETER +HAVE-LIBC+ 1)
    (DEFPARAMETER +HAVE-FLOAT-H+ 1)
    (DEFPARAMETER +HAVE-CTYPE-H+ 1)
    (DEFPARAMETER +HAVE-ALLOCA-H+ 1)
    (DEFPARAMETER +HAVE-GCC-ATOMICS+ 1)
    (DEFPARAMETER +SIZEOF-VOIDP+ 8)
    (DEFPARAMETER +NULL+ 0)
    (DEFPARAMETER +SDL-HAS-FALLTHROUGH+ NIL)
    (DEFPARAMETER +SDL-FALLTHROUGH+ NIL)
    (DEFPARAMETER +__SIZEOF_PTHREAD_RWLOCKATTR_T+ 8)
    (DEFPARAMETER +__SIZEOF_PTHREAD_CONDATTR_T+ 4)
    (DEFPARAMETER +__SIZEOF_PTHREAD_BARRIERATTR_T+ 4)
    (DEFPARAMETER +_BITS_LIBM_SIMD_DECL_STUBS_H+ 1)
    (DEFPARAMETER +_BITS_PTHREADTYPES_COMMON_H+ 1)
    (DEFPARAMETER +__SIZEOF_PTHREAD_BARRIER_T+ 32)
    (DEFPARAMETER +__SIZEOF_PTHREAD_RWLOCK_T+ 56)
    (DEFPARAMETER +__SIZEOF_PTHREAD_COND_T+ 48)
    (DEFPARAMETER +__SIZEOF_PTHREAD_MUTEXATTR_T+ 4)
    (DEFPARAMETER +_BITS_PTHREADTYPES_ARCH_H+ 1)
    (DEFPARAMETER +__RESTORE_GPRBX+ NIL)
    (DEFPARAMETER +_THREAD_SHARED_TYPES_H+ 1)
    (DEFPARAMETER +__SIZEOF_PTHREAD_ATTR_T+ 56)
    (DEFPARAMETER +__SIZEOF_PTHREAD_MUTEX_T+ 40)
    (DEFPARAMETER +__TMPGPR+ NIL)
    (DEFPARAMETER +__SAVE_GPRBX+ NIL)
    (DEFPARAMETER +SDL-ASSERT-STATE+ NIL)
    (DEFPARAMETER +SDL-ASSERT-DATA+ NIL)
    (DEFPARAMETER +SC-NU-PTR+ NIL)
    (DEFPARAMETER +SC-NX-PTR+ NIL)
    (DEFPARAMETER +SC-ND-PTR+ NIL)
    (DEFPARAMETER +SC-NI-PTR+ NIL)
    (DEFPARAMETER +SC-NO-PTR+ NIL)
    (DEFPARAMETER +SC-NO-MAX+ NIL)
    (DEFPARAMETER +SC-NU-MAX+ NIL)
    (DEFPARAMETER +SC-NX-MAX+ NIL)
    (DEFPARAMETER +SC-NX-FAST64+ NIL)
    (DEFPARAMETER +SC-NX-FAST32+ NIL)
    (DEFPARAMETER +SC-NX-FAST16+ NIL)
    (DEFPARAMETER +_WCHAR_H+ 1)
    (DEFPARAMETER +SC-NI-MAX+ NIL)
    (DEFPARAMETER +SC-ND-MAX+ NIL)
    (DEFPARAMETER +SC-NX-LEAST32+ NIL)
    (DEFPARAMETER +SC-NX-LEAST16+ NIL)
    (DEFPARAMETER +SC-NX-FAST8+ NIL)
    (DEFPARAMETER +SC-NX-LEAST64+ NIL)
    (DEFPARAMETER +SC-NX16+ NIL)
    (DEFPARAMETER +SC-NX8+ NIL)
    (DEFPARAMETER +SC-NX-LEAST8+ NIL)
    (DEFPARAMETER +SC-NX64+ NIL)
    (DEFPARAMETER +SC-NX32+ NIL)
    (DEFPARAMETER +SC-NO-FAST8+ NIL)
    (DEFPARAMETER +SC-NO-LEAST64+ NIL)
    (DEFPARAMETER +SC-NO-FAST64+ NIL)
    (DEFPARAMETER +SC-NO-FAST32+ NIL)
    (DEFPARAMETER +SC-NO-FAST16+ NIL)
    (DEFPARAMETER +SC-NO-LEAST8+ NIL)
    (DEFPARAMETER +SC-NO32+ NIL)
    (DEFPARAMETER +SC-NO64+ NIL)
    (DEFPARAMETER +__ATTR_DEALLOC_FCLOSE+ NIL)
    (DEFPARAMETER +SC-NO-LEAST32+ NIL)
    (DEFPARAMETER +SC-NO-LEAST16+ NIL)
    (DEFPARAMETER +SC-NU-FAST32+ NIL)
    (DEFPARAMETER +SC-NU-FAST64+ NIL)
    (DEFPARAMETER +SC-NU-FAST16+ NIL)
    (DEFPARAMETER +SC-NO16+ NIL)
    (DEFPARAMETER +SC-NO8+ NIL)
    (DEFPARAMETER +SC-NU-LEAST32+ NIL)
    (DEFPARAMETER +SC-NU-LEAST16+ NIL)
    (DEFPARAMETER +SC-NU-FAST8+ NIL)
    (DEFPARAMETER +SC-NU-LEAST64+ NIL)
    (DEFPARAMETER +SC-NU16+ NIL)
    (DEFPARAMETER +SC-NU8+ NIL)
    (DEFPARAMETER +SC-NU-LEAST8+ NIL)
    (DEFPARAMETER +SC-NU32+ NIL)
    (DEFPARAMETER +SC-NU64+ NIL)
    (DEFPARAMETER +SEEK-CUR+ 1)
    (DEFPARAMETER +__PTHREAD_RWLOCK_ELISION_EXTRA+ 0)
    (DEFPARAMETER +SEEK-SET+ 0)
    (DEFPARAMETER +SEEK-END+ 2)
    (DEFPARAMETER +SC-NI-FAST8+ NIL)
    (DEFPARAMETER +P-TMPDIR+ NIL)
    (DEFPARAMETER +SC-NI-FAST16+ NIL)
    (DEFPARAMETER +_BITS_STDIO_LIM_H+ 1)
    (DEFPARAMETER +SC-NI-FAST64+ NIL)
    (DEFPARAMETER +SC-NI-FAST32+ NIL)
    (DEFPARAMETER +SC-NI64+ NIL)
    (DEFPARAMETER +_IOLBF+ 1)
    (DEFPARAMETER +_IOFBF+ 0)
    (DEFPARAMETER +SC-NI32+ NIL)
    (DEFPARAMETER +_IONBF+ 2)
    (DEFPARAMETER +SC-NI-LEAST8+ NIL)
    (DEFPARAMETER +SC-NI-LEAST64+ NIL)
    (DEFPARAMETER +_MM_CMPINT_GE+ 5)
    (DEFPARAMETER +SC-NI-LEAST16+ NIL)
    (DEFPARAMETER +BUFSIZ+ 8192)
    (DEFPARAMETER +_MM_CMPINT_GT+ 6)
    (DEFPARAMETER +SC-NI-LEAST32+ NIL)
    (DEFPARAMETER +EOF+ -1)
    (DEFPARAMETER +STDIN+ NIL)
    (DEFPARAMETER +SC-ND-FAST16+ NIL)
    (DEFPARAMETER +SDL-BIG-ENDIAN+ 4321)
    (DEFPARAMETER +SC-ND-FAST64+ NIL)
    (DEFPARAMETER +STDOUT+ NIL)
    (DEFPARAMETER +SC-ND-FAST32+ NIL)
    (DEFPARAMETER +SDL-BYTEORDER+ 1234)
    (DEFPARAMETER +SC-NI8+ NIL)
    (DEFPARAMETER +STDERR+ NIL)
    (DEFPARAMETER +SC-NI16+ NIL)
    (DEFPARAMETER +SC-ND-LEAST16+ NIL)
    (DEFPARAMETER +L-TMPNAM+ 20)
    (DEFPARAMETER +SC-ND-LEAST32+ NIL)
    (DEFPARAMETER +TMP-MAX+ 238328)
    (DEFPARAMETER +FILENAME-MAX+ 4096)
    (DEFPARAMETER +FOPEN-MAX+ 16)
    (DEFPARAMETER +SDL-LIL-ENDIAN+ 1234)
    (DEFPARAMETER +SC-ND-LEAST64+ NIL)
    (DEFPARAMETER +L-CTERMID+ 9)
    (DEFPARAMETER +SC-ND-FAST8+ NIL)
    (DEFPARAMETER +SC-ND8+ NIL)
    (DEFPARAMETER +SC-ND16+ NIL)
    (DEFPARAMETER +_IO_EOF_SEEN+ 16)
    (DEFPARAMETER +SC-ND32+ NIL)
    (DEFPARAMETER +SC-ND64+ NIL)
    (DEFPARAMETER +_IO_ERR_SEEN+ 32)
    (DEFPARAMETER +SC-ND-LEAST8+ NIL)
    (DEFPARAMETER +PR-ID-PTR+ NIL)
    (DEFPARAMETER +PR-II-PTR+ NIL)
    (DEFPARAMETER +PR-IO-PTR+ NIL)
    (DEFPARAMETER +PR-IU-PTR+ NIL)
    (DEFPARAMETER +SDL-FLOATWORDORDER+ 1234)
    (DEFPARAMETER +_THREAD_MUTEX_INTERNAL_H+ 1)
    (DEFPARAMETER +PR-IX-PTR+ NIL)
    (DEFPARAMETER +PRIXPTR+ NIL)
    (DEFPARAMETER +PR-IX-MAX+ NIL)
    (DEFPARAMETER +PRIXMAX+ NIL)
    (DEFPARAMETER +_IO_USER_LOCK+ 32768)
    (DEFPARAMETER +__PTHREAD_MUTEX_HAVE_PREV+ 1)
    (DEFPARAMETER +HAVE-FOPEN64+ 1)
    (DEFPARAMETER +HAVE-TRUNCF+ 1)
    (DEFPARAMETER +HAVE-TRUNC+ 1)
    (DEFPARAMETER +HAVE-TANF+ 1)
    (DEFPARAMETER +HAVE-TAN+ 1)
    (DEFPARAMETER +HAVE-SQRTF+ 1)
    (DEFPARAMETER +HAVE-SQRT+ 1)
    (DEFPARAMETER +HAVE-SINF+ 1)
    (DEFPARAMETER +HAVE-SIN+ 1)
    (DEFPARAMETER +HAVE-MPROTECT+ 1)
    (DEFPARAMETER +SDL-AUDIO-MASK-BITSIZE+ 255)
    (DEFPARAMETER +HAVE-CLOCK-GETTIME+ 1)
    (DEFPARAMETER +HAVE-SYSCONF+ 1)
    (DEFPARAMETER +HAVE-NANOSLEEP+ 1)
    (DEFPARAMETER +HAVE-SETJMP+ 1)
    (DEFPARAMETER +HAVE-SA-SIGACTION+ 1)
    (DEFPARAMETER +SDL-AUDIO-MASK-SIGNED+ 32768)
    (DEFPARAMETER +HAVE-SIGACTION+ 1)
    (DEFPARAMETER +SDL-AUDIO-MASK-ENDIAN+ 4096)
    (DEFPARAMETER +HAVE-FSEEKO64+ 1)
    (DEFPARAMETER +HAVE-FSEEKO+ 1)
    (DEFPARAMETER +SDL-AUDIO-MASK-DATATYPE+ 256)
    (DEFPARAMETER +HAVE-LOG10+ 1)
    (DEFPARAMETER +HAVE-LOGF+ 1)
    (DEFPARAMETER +HAVE-FMODF+ 1)
    (DEFPARAMETER +HAVE-LOG+ 1)
    (DEFPARAMETER +HAVE-FMOD+ 1)
    (DEFPARAMETER +AUDIO-S8+ 32776)
    (DEFPARAMETER +HAVE-FLOORF+ 1)
    (DEFPARAMETER +AUDIO-U8+ 8)
    (DEFPARAMETER +HAVE-FLOOR+ 1)
    (DEFPARAMETER +HAVE-FABSF+ 1)
    (DEFPARAMETER +HAVE-FABS+ 1)
    (DEFPARAMETER +AUDIO-U16+ 16)
    (DEFPARAMETER +HAVE-SCALBNF+ 1)
    (DEFPARAMETER +AUDIO-S16MSB+ 36880)
    (DEFPARAMETER +HAVE-SCALBN+ 1)
    (DEFPARAMETER +AUDIO-U16MSB+ 4112)
    (DEFPARAMETER +HAVE-ROUNDF+ 1)
    (DEFPARAMETER +AUDIO-S16LSB+ 32784)
    (DEFPARAMETER +HAVE-POWF+ 1)
    (DEFPARAMETER +HAVE-ROUND+ 1)
    (DEFPARAMETER +AUDIO-U16LSB+ 16)
    (DEFPARAMETER +HAVE-POW+ 1)
    (DEFPARAMETER +HAVE-LROUNDF+ 1)
    (DEFPARAMETER +HAVE-LROUND+ 1)
    (DEFPARAMETER +AUDIO-S16+ 32784)
    (DEFPARAMETER +HAVE-LOG10F+ 1)
    (DEFPARAMETER +HAVE-ATAN+ 1)
    (DEFPARAMETER +HAVE-ATAN2+ 1)
    (DEFPARAMETER +HAVE-ATANF+ 1)
    (DEFPARAMETER +SDL-COMPILEDVERSION+ 5001)
    (DEFPARAMETER +HAVE-ASIN+ 1)
    (DEFPARAMETER +HAVE-ASINF+ 1)
    (DEFPARAMETER +HAVE-ACOS+ 1)
    (DEFPARAMETER +SDL-PATCHLEVEL+ 1)
    (DEFPARAMETER +HAVE-ACOSF+ 1)
    (DEFPARAMETER +SDL-MINOR-VERSION+ 30)
    (DEFPARAMETER +HAVE-VSNPRINTF+ 1)
    (DEFPARAMETER +HAVE-VSSCANF+ 1)
    (DEFPARAMETER +SDL-MAJOR-VERSION+ 2)
    (DEFPARAMETER +HAVE-EXP+ 1)
    (DEFPARAMETER +HAVE-COSF+ 1)
    (DEFPARAMETER +HAVE-EXPF+ 1)
    (DEFPARAMETER +HAVE-COPYSIGNF+ 1)
    (DEFPARAMETER +HAVE-COS+ 1)
    (DEFPARAMETER +HAVE-CEILF+ 1)
    (DEFPARAMETER +HAVE-COPYSIGN+ 1)
    (DEFPARAMETER +HAVE-ATAN2F+ 1)
    (DEFPARAMETER +HAVE-CEIL+ 1)
    (DEFPARAMETER +RW-SEEK-SET+ 0)
    (DEFPARAMETER +RW-SEEK-CUR+ 1)
    (DEFPARAMETER +RW-SEEK-END+ 2)
    (DEFPARAMETER +HAVE-STRNCASECMP+ 1)
    (DEFPARAMETER +HAVE-STRCASESTR+ 1)
    (DEFPARAMETER +HAVE-STRCASECMP+ 1)
    (DEFPARAMETER +SDL-HINT-MOUSE-FOCUS-CLICKTHROUGH+ NIL)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-ZERO-CENTERED-DEVICES+ NIL)
    (DEFPARAMETER +__HAVE_FLOAT128+ 0)
    (DEFPARAMETER +SDL-HINT-KMSDRM-REQUIRE-DRM-MASTER+ NIL)
    (DEFPARAMETER +__HAVE_DISTINCT_FLOAT128+ 0)
    (DEFPARAMETER +SDL-HINT-JOYSTICK-DEVICE+ NIL)
    (DEFPARAMETER +SDL-HINT-LINUX-DIGITAL-HATS+ NIL)
    (DEFPARAMETER +SDL-HINT-LINUX-HAT-DEADZONES+ NIL)
    (DEFPARAMETER +SDL-HINT-LINUX-JOYSTICK-CLASSIC+ NIL)
    (DEFPARAMETER +__HAVE_FLOAT32+ 1)
    (DEFPARAMETER +SDL-HINT-LINUX-JOYSTICK-DEADZONES+ NIL)
    (DEFPARAMETER +__HAVE_FLOAT64+ 1)
    (DEFPARAMETER +SDL-HINT-LOGGING+ NIL)
    (DEFPARAMETER +SDL-HINT-MAC-BACKGROUND-APP+ NIL)
    (DEFPARAMETER +__HAVE_FLOAT32X+ 1)
    (DEFPARAMETER +__HAVE_FLOAT128X+ 0)
    (DEFPARAMETER +SDL-HINT-MAC-CTRL-CLICK-EMULATE-RIGHT-CLICK+ NIL)
    (DEFPARAMETER +__HAVE_FLOAT64X+ 1)
    (DEFPARAMETER +SDL-HINT-MAC-OPENGL-ASYNC-DISPATCH+ NIL)
    (DEFPARAMETER +__HAVE_FLOAT64X_LONG_DOUBLE+ 1)
    (DEFPARAMETER +SDL-HINT-MOUSE-DOUBLE-CLICK-RADIUS+ NIL)
    (DEFPARAMETER +__HAVE_FLOAT16+ 0)
    (DEFPARAMETER +SDL-HINT-MOUSE-DOUBLE-CLICK-TIME+ NIL)
    (DEFPARAMETER +__HAVE_DISTINCT_FLOAT128X+ 0)
    (DEFPARAMETER +__HAVE_DISTINCT_FLOAT64X+ 0)
    (DEFPARAMETER +__HAVE_FLOAT128_UNLIKE_LDBL+ 0)
    (DEFPARAMETER +__HAVE_DISTINCT_FLOAT32+ 0)
    (DEFPARAMETER +__HAVE_DISTINCT_FLOAT16+ 0)
    (DEFPARAMETER +__HAVE_DISTINCT_FLOAT32X+ 0)
    (DEFPARAMETER +__HAVE_DISTINCT_FLOAT64+ 0)
    (DEFPARAMETER +__CFLOAT32+ NIL)
    (DEFPARAMETER +__CFLOAT32X+ NIL)
    (DEFPARAMETER +__CFLOAT64+ NIL)
    (DEFPARAMETER +__HAVE_FLOATN_NOT_TYPEDEF+ 0)
    (DEFPARAMETER +__CFLOAT64X+ NIL)
    (DEFPARAMETER +PRIXFAST16+ NIL)
    (DEFPARAMETER +PRIXFAST32+ NIL)
    (DEFPARAMETER +PRIXFAST64+ NIL)
    (DEFPARAMETER +PR-ID-MAX+ NIL)
    (DEFPARAMETER +PR-II-MAX+ NIL)
    (DEFPARAMETER +PR-IO-MAX+ NIL)
    (DEFPARAMETER +SDLK-SCANCODE-MASK+ 1073741824)
    (DEFPARAMETER +PR-IU-MAX+ NIL)
    (DEFPARAMETER +SDL-VIDEO-OPENGL+ 1)
    (DEFPARAMETER +PR-IX-FAST32+ NIL)
    (DEFPARAMETER +SDL-VIDEO-RENDER-OGL-ES2+ 1)
    (DEFPARAMETER +PR-IX-FAST16+ NIL)
    (DEFPARAMETER +SDL-VIDEO-RENDER-OGL+ 1)
    (DEFPARAMETER +PR-IX-FAST8+ NIL)
    (DEFPARAMETER +PR-IX-LEAST64+ NIL)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-HAS-XKBKEYCODETOKEYSYM+ 1)
    (DEFPARAMETER +PR-IX-LEAST32+ NIL)
    (DEFPARAMETER +SDL-VIDEO-VULKAN+ 1)
    (DEFPARAMETER +SDL-VIDEO-OPENGL-GLX+ 1)
    (DEFPARAMETER +PR-IX-LEAST16+ NIL)
    (DEFPARAMETER +SDL-VIDEO-OPENGL-EGL+ 1)
    (DEFPARAMETER +PR-IX64+ NIL)
    (DEFPARAMETER +PR-IX-LEAST8+ NIL)
    (DEFPARAMETER +SDL-VIDEO-OPENGL-ES2+ 1)
    (DEFPARAMETER +PR-IX32+ NIL)
    (DEFPARAMETER +PRIXFAST8+ NIL)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-XRANDR+ 1)
    (DEFPARAMETER +PRIXLEAST64+ NIL)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-XFIXES+ 1)
    (DEFPARAMETER +PRIXLEAST32+ NIL)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-XINPUT2-SUPPORTS-MULTITOUCH+ 1)
    (DEFPARAMETER +PRIXLEAST16+ NIL)
    (DEFPARAMETER +PRIXLEAST8+ NIL)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-SUPPORTS-GENERIC-EVENTS+ 1)
    (DEFPARAMETER +PRIX64+ NIL)
    (DEFPARAMETER +PRIX32+ NIL)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-XSHAPE+ 1)
    (DEFPARAMETER +PRIX16+ NIL)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-XSCRNSAVER+ 1)
    (DEFPARAMETER +PRIX8+ NIL)
    (DEFPARAMETER +PR-IX-FAST64+ NIL)
    (DEFPARAMETER +PR-IU64+ NIL)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-KMSDRM+ 1)
    (DEFPARAMETER +PR-IU-LEAST8+ NIL)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11+ 1)
    (DEFPARAMETER +PR-IU32+ NIL)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-WAYLAND-QT-TOUCH+ 1)
    (DEFPARAMETER +PR-IU16+ NIL)
    (DEFPARAMETER +PR-IO-FAST64+ NIL)
    (DEFPARAMETER +PR-IU8+ NIL)
    (DEFPARAMETER +PR-IO-FAST32+ NIL)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-XINPUT2+ 1)
    (DEFPARAMETER +PR-IO-FAST16+ NIL)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-XDBE+ 1)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-XCURSOR+ 1)
    (DEFPARAMETER +PR-IO-FAST8+ NIL)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-OFFSCREEN+ 1)
    (DEFPARAMETER +PR-IO-LEAST64+ NIL)
    (DEFPARAMETER +SDL-THREAD-PTHREAD+ 1)
    (DEFPARAMETER +PR-IX16+ NIL)
    (DEFPARAMETER +PR-IU-FAST64+ NIL)
    (DEFPARAMETER +SDL-LOADSO-DLOPEN+ 1)
    (DEFPARAMETER +PR-IX8+ NIL)
    (DEFPARAMETER +PR-IU-FAST32+ NIL)
    (DEFPARAMETER +SDL-SENSOR-DUMMY+ 1)
    (DEFPARAMETER +PR-IU-FAST16+ NIL)
    (DEFPARAMETER +SDL-HAPTIC-LINUX+ 1)
    (DEFPARAMETER +PR-IU-FAST8+ NIL)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-WAYLAND+ 1)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-DUMMY+ 1)
    (DEFPARAMETER +PR-IU-LEAST64+ NIL)
    (DEFPARAMETER +SDL-TIMER-UNIX+ 1)
    (DEFPARAMETER +PR-IU-LEAST32+ NIL)
    (DEFPARAMETER +PR-IU-LEAST16+ NIL)
    (DEFPARAMETER +SDL-THREAD-PTHREAD-RECURSIVE-MUTEX+ 1)
    (DEFPARAMETER +PR-II-LEAST64+ NIL)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-SNDIO-DYNAMIC+ NIL)
    (DEFPARAMETER +SDL-INPUT-LINUXEV+ 1)
    (DEFPARAMETER +PR-II-FAST8+ NIL)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-PULSEAUDIO+ 1)
    (DEFPARAMETER +PR-II-LEAST16+ NIL)
    (DEFPARAMETER +PR-II-LEAST32+ NIL)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-SNDIO+ 1)
    (DEFPARAMETER +SDL-JOYSTICK-HIDAPI+ 1)
    (DEFPARAMETER +PR-II32+ NIL)
    (DEFPARAMETER +SDL-JOYSTICK-VIRTUAL+ 1)
    (DEFPARAMETER +PR-II64+ NIL)
    (DEFPARAMETER +PR-II-LEAST8+ NIL)
    (DEFPARAMETER +SDL-INPUT-LINUXKD+ 1)
    (DEFPARAMETER +PR-II8+ NIL)
    (DEFPARAMETER +PR-ID-FAST64+ NIL)
    (DEFPARAMETER +PR-II16+ NIL)
    (DEFPARAMETER +SDL-JOYSTICK-LINUX+ 1)
    (DEFPARAMETER +PR-IO-LEAST16+ NIL)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-ALSA+ 1)
    (DEFPARAMETER +PR-IO-LEAST32+ NIL)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-DISK+ 1)
    (DEFPARAMETER +HAVE-LIBSAMPLERATE-H+ 1)
    (DEFPARAMETER +PR-IO32+ NIL)
    (DEFPARAMETER +PR-IO-LEAST8+ NIL)
    (DEFPARAMETER +HAVE-LIBDECOR-H+ 1)
    (DEFPARAMETER +PR-IO64+ NIL)
    (DEFPARAMETER +PR-IO8+ NIL)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-PIPEWIRE+ 1)
    (DEFPARAMETER +PR-II-FAST64+ NIL)
    (DEFPARAMETER +PR-IO16+ NIL)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-PIPEWIRE-DYNAMIC+ NIL)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-DUMMY+ 1)
    (DEFPARAMETER +PR-II-FAST16+ NIL)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-OSS+ 1)
    (DEFPARAMETER +PR-II-FAST32+ NIL)
    (DEFPARAMETER +__PRIPTR_PREFIX+ NIL)
    (DEFPARAMETER +PR-ID8+ NIL)
    (DEFPARAMETER +PR-ID16+ NIL)
    (DEFPARAMETER +HAVE-IMMINTRIN-H+ 1)
    (DEFPARAMETER +HAVE-LIBUDEV-H+ 1)
    (DEFPARAMETER +HAVE-IBUS-IBUS-H+ 1)
    (DEFPARAMETER +PR-ID-FAST16+ NIL)
    (DEFPARAMETER +PR-ID-FAST32+ NIL)
    (DEFPARAMETER +PR-ID-LEAST64+ NIL)
    (DEFPARAMETER +PR-ID-FAST8+ NIL)
    (DEFPARAMETER +PR-ID-LEAST16+ NIL)
    (DEFPARAMETER +PR-ID-LEAST32+ NIL)
    (DEFPARAMETER +PR-ID32+ NIL)
    (DEFPARAMETER +PR-ID64+ NIL)
    (DEFPARAMETER +PR-ID-LEAST8+ NIL)
    (DEFPARAMETER +_KANDN_MASK16+ NIL)
    (DEFPARAMETER +_KAND_MASK16+ NIL)
    (DEFPARAMETER +_KXOR_MASK16+ NIL)
    (DEFPARAMETER +_KXNOR_MASK16+ NIL)
    (DEFPARAMETER +_KOR_MASK16+ NIL)
    (DEFPARAMETER +_KNOT_MASK16+ NIL)
    (DEFPARAMETER +HAVE-SYS-INOTIFY-H+ 1)
    (DEFPARAMETER +HAVE-INOTIFY-INIT+ 1)
    (DEFPARAMETER +HAVE-INOTIFY-INIT1+ 1)
    (DEFPARAMETER +HAVE-INOTIFY+ 1)
    (DEFPARAMETER +HAVE-ICONV+ 1)
    (DEFPARAMETER +_MM512_MASK_PERMUTEVAR_EPI32+ NIL)
    (DEFPARAMETER +HAVE-PTHREAD-SETNAME-NP+ 1)
    (DEFPARAMETER +HAVE-SEM-TIMEDWAIT+ 1)
    (DEFPARAMETER +_MM512_PERMUTEVAR_EPI32+ NIL)
    (DEFPARAMETER +HAVE-GETAUXVAL+ 1)
    (DEFPARAMETER +HAVE-POLL+ 1)
    (DEFPARAMETER +HAVE--EXIT+ 1)
    (DEFPARAMETER +HAVE-O-CLOEXEC+ 1)
    (DEFPARAMETER +HAVE-DBUS-DBUS-H+ 1)
    (DEFPARAMETER +HAVE-FCITX+ 1)
    (DEFPARAMETER +SDL-HAT-RIGHTUP+ 3)
    (DEFPARAMETER +SDL-HAT-DOWN+ 4)
    (DEFPARAMETER +SDL-HAT-LEFT+ 8)
    (DEFPARAMETER +SDL-HAT-RIGHT+ 2)
    (DEFPARAMETER +SDL-HAT-UP+ 1)
    (DEFPARAMETER +SDL-HAT-LEFTDOWN+ 12)
    (DEFPARAMETER +SDL-HAT-LEFTUP+ 9)
    (DEFPARAMETER +SDL-HAT-RIGHTDOWN+ 6)
    (DEFPARAMETER +__DEFAULT_FN_ATTRS+ NIL)
    (DEFPARAMETER +SDL-ALPHA-TRANSPARENT+ 0)
    (DEFPARAMETER +SDL-ALPHA-OPAQUE+ 255)
    (DEFPARAMETER +SDL-CACHELINE-SIZE+ 128)
    (DEFPARAMETER +_DEFAULT_FN_ATTRS+ NIL)
    (DEFPARAMETER +SDL-COLOUR+ NIL)
    (DEFPARAMETER +SDL-MIX-MAXVOLUME+ 128)
    (DEFPARAMETER +SDL-JOYSTICK-AXIS-MAX+ 32767)
    (DEFPARAMETER +SDL-HAT-CENTERED+ 0)
    (DEFPARAMETER +SDL-JOYSTICK-AXIS-MIN+ -32768)
    (DEFPARAMETER +_BITS_TYPES_LOCALE_T_H+ 1)
    (DEFPARAMETER +_BITS_TYPES___LOCALE_T_H+ 1)
    (DEFPARAMETER +SDL-VIRTUAL-JOYSTICK-DESC-VERSION+ 1)
    (DEFPARAMETER +_STRING_H+ 1)
    (DEFPARAMETER +SDL-IPHONE-MAX-GFORCE+ 5.0d0)
    (DEFPARAMETER +____GWCHAR_T_DEFINED+ 1)
    (DEFPARAMETER +__PRI64_PREFIX+ NIL)
    (DEFPARAMETER +_M_+ NIL)
    (DEFPARAMETER +SDL-UDEV-DYNAMIC+ NIL)
    (DEFPARAMETER +SDL-HAVE-LIBDECOR-GET-MIN-MAX+ 1)
    (DEFPARAMETER +_SYS_TYPES_H+ 1)
    (DEFPARAMETER +SDL-POWER-LINUX+ 1)
    (DEFPARAMETER +SDL-FILESYSTEM-UNIX+ 1)
    (DEFPARAMETER +DYNAPI-NEEDS-DLOPEN+ 1)
    (DEFPARAMETER +SDL-USE-IME+ 1)
    (SETF AUTOWRAP::*FOREIGN-RECORD-INDEX* NIL))
   (AUTOWRAP:DEFINE-WRAPPER __FSID_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER __SIGSET_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (TIMEVAL)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (TIMESPEC)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER FD-SET #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER __ATOMIC_WIDE_COUNTER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (__PTHREAD_INTERNAL_LIST))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER __PTHREAD_LIST_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (__PTHREAD_INTERNAL_SLIST))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER __PTHREAD_SLIST_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (__PTHREAD_MUTEX_S)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (__PTHREAD_RWLOCK_ARCH_T))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (__PTHREAD_COND_S)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER __ONCE_FLAG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER PTHREAD-MUTEXATTR-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER PTHREAD-CONDATTR-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:UNION (PTHREAD-ATTR-T)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER PTHREAD-ATTR-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER PTHREAD-MUTEX-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER PTHREAD-COND-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER PTHREAD-RWLOCK-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER PTHREAD-RWLOCKATTR-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER PTHREAD-BARRIER-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER PTHREAD-BARRIERATTR-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER __MBSTATE_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (_G_FPOS_T)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER __FPOS_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (_G_FPOS64_T)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER __FPOS64_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (_IO_FILE)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER __FILE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER FILE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (_IO_MARKER)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (_IO_CODECVT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (_IO_WIDE_DATA)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER DIV-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER LDIV-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER LLDIV-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (RANDOM-DATA)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (DRAND48-DATA)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER MAX-ALIGN-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (__LOCALE_DATA)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (__LOCALE_STRUCT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER __LOCALE_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (TM)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER IMAXDIV-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (_SDL_ICONV_T)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-ICONV-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-ASSERT-DATA)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-ASSERT-DATA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-ATOMIC-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-MUTEX)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-MUTEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-SEMAPHORE)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-SEM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-COND)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-COND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-THREAD)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-THREAD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-R-WOPS)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-R-WOPS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-AUDIO-SPEC)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-AUDIO-SPEC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-AUDIO-CVT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-AUDIO-CVT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (_SDL_AUDIO_STREAM)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-AUDIO-STREAM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (__UINTR_FRAME)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (__TILE1024I_STR)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER __TILE1024I #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-COLOR)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-PALETTE)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-PALETTE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-PIXEL-FORMAT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-PIXEL-FORMAT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-POINT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-POINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-F-POINT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-F-POINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-RECT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-F-RECT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-F-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-BLIT-MAP)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-BLIT-MAP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-SURFACE)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-SURFACE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-DISPLAY-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-WINDOW)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-KEYSYM)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-KEYSYM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-CURSOR)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-CURSOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-GUID #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (_SDL_JOYSTICK)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-JOYSTICK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-VIRTUAL-JOYSTICK-DESC))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-VIRTUAL-JOYSTICK-DESC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (_SDL_SENSOR)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-SENSOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (_SDL_GAME_CONTROLLER))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-GAME-CONTROLLER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-GAME-CONTROLLER-BUTTON-BIND))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-GAME-CONTROLLER-BUTTON-BIND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-FINGER)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-FINGER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-COMMON-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-COMMON-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-DISPLAY-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-DISPLAY-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-WINDOW-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-WINDOW-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-KEYBOARD-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-KEYBOARD-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-TEXT-EDITING-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-TEXT-EDITING-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-TEXT-EDITING-EXT-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-TEXT-EDITING-EXT-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-TEXT-INPUT-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-TEXT-INPUT-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-MOUSE-MOTION-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-MOUSE-MOTION-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-MOUSE-BUTTON-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-MOUSE-BUTTON-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-MOUSE-WHEEL-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-MOUSE-WHEEL-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-JOY-AXIS-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-JOY-AXIS-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-JOY-BALL-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-JOY-BALL-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-JOY-HAT-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-JOY-HAT-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-JOY-BUTTON-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-JOY-BUTTON-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-JOY-DEVICE-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-JOY-DEVICE-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-JOY-BATTERY-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-JOY-BATTERY-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-CONTROLLER-AXIS-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-CONTROLLER-AXIS-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-CONTROLLER-BUTTON-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-CONTROLLER-BUTTON-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-CONTROLLER-DEVICE-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-CONTROLLER-DEVICE-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-CONTROLLER-TOUCHPAD-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-CONTROLLER-TOUCHPAD-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-CONTROLLER-SENSOR-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-CONTROLLER-SENSOR-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-AUDIO-DEVICE-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-AUDIO-DEVICE-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-TOUCH-FINGER-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-TOUCH-FINGER-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-MULTI-GESTURE-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-MULTI-GESTURE-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-DOLLAR-GESTURE-EVENT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-DOLLAR-GESTURE-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-DROP-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-DROP-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-SENSOR-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-SENSOR-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-QUIT-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-QUIT-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-USER-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-USER-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-SYS-W-MMSG)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-SYS-W-MMSG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-SYS-WM-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-SYS-WM-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:UNION (SDL-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (_SDL_HAPTIC)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-HAPTIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-HAPTIC-DIRECTION))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-HAPTIC-DIRECTION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-HAPTIC-CONSTANT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-HAPTIC-CONSTANT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-HAPTIC-PERIODIC)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-HAPTIC-PERIODIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-HAPTIC-CONDITION))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-HAPTIC-CONDITION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-HAPTIC-RAMP)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-HAPTIC-RAMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-HAPTIC-LEFT-RIGHT))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-HAPTIC-LEFT-RIGHT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-HAPTIC-CUSTOM)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-HAPTIC-CUSTOM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:UNION (SDL-HAPTIC-EFFECT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-HAPTIC-EFFECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-HID-DEVICE-)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-HID-DEVICE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-HID-DEVICE-INFO)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-HID-DEVICE-INFO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-MESSAGE-BOX-BUTTON-DATA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-MESSAGE-BOX-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-MESSAGE-BOX-COLOR-SCHEME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-MESSAGE-BOX-DATA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-RENDERER-INFO)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-RENDERER-INFO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-VERTEX)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-VERTEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-RENDERER)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-RENDERER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-TEXTURE)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-TEXTURE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-WINDOW-SHAPE-PARAMS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-WINDOW-SHAPE-MODE))
                            #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-WINDOW-SHAPE-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-VERSION)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-VERSION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-LOCALE)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-LOCALE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER __TIMER_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER __CADDR_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-GL-CONTEXT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-METAL-VIEW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS __FSID_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS __SIGSET_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (TIMEVAL)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (TIMESPEC)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS FD-SET #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS __ATOMIC_WIDE_COUNTER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (__PTHREAD_INTERNAL_LIST))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS __PTHREAD_LIST_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (__PTHREAD_INTERNAL_SLIST))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS __PTHREAD_SLIST_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (__PTHREAD_MUTEX_S)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (__PTHREAD_RWLOCK_ARCH_T))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (__PTHREAD_COND_S)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS __ONCE_FLAG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS PTHREAD-MUTEXATTR-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS PTHREAD-CONDATTR-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:UNION (PTHREAD-ATTR-T)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS PTHREAD-ATTR-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS PTHREAD-MUTEX-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS PTHREAD-COND-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS PTHREAD-RWLOCK-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS PTHREAD-RWLOCKATTR-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS PTHREAD-BARRIER-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS PTHREAD-BARRIERATTR-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS __MBSTATE_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (_G_FPOS_T)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS __FPOS_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (_G_FPOS64_T)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS __FPOS64_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (_IO_FILE)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS __FILE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS FILE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (_IO_MARKER)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (_IO_CODECVT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (_IO_WIDE_DATA)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS DIV-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS LDIV-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS LLDIV-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (RANDOM-DATA)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (DRAND48-DATA)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS MAX-ALIGN-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (__LOCALE_DATA)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (__LOCALE_STRUCT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS __LOCALE_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (TM)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS IMAXDIV-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (_SDL_ICONV_T)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-ICONV-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-ASSERT-DATA)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-ASSERT-DATA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-ATOMIC-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-MUTEX)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-MUTEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-SEMAPHORE)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-SEM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-COND)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-COND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-THREAD)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-THREAD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-R-WOPS)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-R-WOPS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-AUDIO-SPEC)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-AUDIO-SPEC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-AUDIO-CVT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-AUDIO-CVT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (_SDL_AUDIO_STREAM)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-AUDIO-STREAM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (__UINTR_FRAME)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (__TILE1024I_STR)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS __TILE1024I #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-COLOR)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-PALETTE)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-PALETTE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-PIXEL-FORMAT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-PIXEL-FORMAT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-POINT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-POINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-F-POINT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-F-POINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-RECT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-F-RECT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-F-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-BLIT-MAP)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-BLIT-MAP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-SURFACE)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-SURFACE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-DISPLAY-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-WINDOW)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-KEYSYM)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-KEYSYM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-CURSOR)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-CURSOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-GUID #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (_SDL_JOYSTICK)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-JOYSTICK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-VIRTUAL-JOYSTICK-DESC))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-VIRTUAL-JOYSTICK-DESC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (_SDL_SENSOR)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-SENSOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (_SDL_GAME_CONTROLLER))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-GAME-CONTROLLER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-GAME-CONTROLLER-BUTTON-BIND))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-GAME-CONTROLLER-BUTTON-BIND
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-FINGER)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-FINGER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-COMMON-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-COMMON-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-DISPLAY-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-DISPLAY-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-WINDOW-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-WINDOW-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-KEYBOARD-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-KEYBOARD-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-TEXT-EDITING-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-TEXT-EDITING-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-TEXT-EDITING-EXT-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-TEXT-EDITING-EXT-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-TEXT-INPUT-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-TEXT-INPUT-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-MOUSE-MOTION-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-MOUSE-MOTION-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-MOUSE-BUTTON-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-MOUSE-BUTTON-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-MOUSE-WHEEL-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-MOUSE-WHEEL-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-JOY-AXIS-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-JOY-AXIS-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-JOY-BALL-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-JOY-BALL-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-JOY-HAT-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-JOY-HAT-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-JOY-BUTTON-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-JOY-BUTTON-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-JOY-DEVICE-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-JOY-DEVICE-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-JOY-BATTERY-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-JOY-BATTERY-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-CONTROLLER-AXIS-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-CONTROLLER-AXIS-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-CONTROLLER-BUTTON-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-CONTROLLER-BUTTON-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-CONTROLLER-DEVICE-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-CONTROLLER-DEVICE-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-CONTROLLER-TOUCHPAD-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-CONTROLLER-TOUCHPAD-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-CONTROLLER-SENSOR-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-CONTROLLER-SENSOR-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-AUDIO-DEVICE-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-AUDIO-DEVICE-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-TOUCH-FINGER-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-TOUCH-FINGER-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-MULTI-GESTURE-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-MULTI-GESTURE-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-DOLLAR-GESTURE-EVENT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-DOLLAR-GESTURE-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-DROP-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-DROP-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-SENSOR-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-SENSOR-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-QUIT-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-QUIT-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-USER-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-USER-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-SYS-W-MMSG)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-SYS-W-MMSG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-SYS-WM-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-SYS-WM-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:UNION (SDL-EVENT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (_SDL_HAPTIC)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-HAPTIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-HAPTIC-DIRECTION))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-HAPTIC-DIRECTION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-HAPTIC-CONSTANT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-HAPTIC-CONSTANT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-HAPTIC-PERIODIC))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-HAPTIC-PERIODIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-HAPTIC-CONDITION))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-HAPTIC-CONDITION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-HAPTIC-RAMP)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-HAPTIC-RAMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-HAPTIC-LEFT-RIGHT))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-HAPTIC-LEFT-RIGHT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-HAPTIC-CUSTOM)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-HAPTIC-CUSTOM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:UNION (SDL-HAPTIC-EFFECT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-HAPTIC-EFFECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-HID-DEVICE-)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-HID-DEVICE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-HID-DEVICE-INFO))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-HID-DEVICE-INFO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-MESSAGE-BOX-BUTTON-DATA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-MESSAGE-BOX-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-MESSAGE-BOX-COLOR-SCHEME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-MESSAGE-BOX-DATA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-RENDERER-INFO)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-RENDERER-INFO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-VERTEX)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-VERTEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-RENDERER)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-RENDERER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-TEXTURE)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-TEXTURE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-WINDOW-SHAPE-PARAMS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-WINDOW-SHAPE-MODE))
                              #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-WINDOW-SHAPE-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-VERSION)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-VERSION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-LOCALE)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-LOCALE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FPCLASSIFY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SIGNBIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ISINF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FINITE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ISNAN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ISEQSIG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ISSIGNALING #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ACOS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ACOS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ASIN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ASIN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ATAN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ATAN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ATAN2 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ATAN2 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN COS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __COS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SIN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SIN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TAN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __TAN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN COSH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __COSH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SINH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SINH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TANH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __TANH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ACOSH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ACOSH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ASINH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ASINH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ATANH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ATANH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN EXP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __EXP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FREXP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FREXP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LDEXP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LDEXP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LOG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LOG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LOG10 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LOG10 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MODF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __MODF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN EXPM1 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __EXPM1 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LOG1P #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LOG1P #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LOGB #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LOGB #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN EXP2 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __EXP2 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LOG2 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LOG2 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN POW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __POW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SQRT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SQRT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN HYPOT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __HYPOT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN CBRT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __CBRT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN CEIL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __CEIL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FABS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FABS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FLOOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FLOOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FMOD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FMOD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISINF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FINITE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN DREM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __DREM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SIGNIFICAND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SIGNIFICAND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN COPYSIGN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __COPYSIGN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN NAN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __NAN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISNAN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN J0 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN |__J0| #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN J1 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN |__J1| #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN JN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __JN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN Y0 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN |__Y0| #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN Y1 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN |__Y1| #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN YN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __YN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ERF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ERF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ERFC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ERFC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LGAMMA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LGAMMA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TGAMMA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __TGAMMA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GAMMA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __GAMMA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LGAMMA-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LGAMMA_R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN RINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __RINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN NEXTAFTER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __NEXTAFTER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN NEXTTOWARD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __NEXTTOWARD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN REMAINDER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __REMAINDER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SCALBN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SCALBN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ILOGB #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ILOGB #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SCALBLN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SCALBLN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN NEARBYINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __NEARBYINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ROUND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ROUND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TRUNC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __TRUNC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN REMQUO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __REMQUO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LRINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LRINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LLRINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LLRINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LROUND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LROUND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LLROUND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LLROUND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FDIM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FDIM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FMAX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FMAX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FMIN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FMIN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FMA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FMA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SCALB #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SCALB #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FPCLASSIFYF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SIGNBITF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ISINFF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FINITEF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ISNANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ISEQSIGF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ISSIGNALINGF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ACOSF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ACOSF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ASINF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ASINF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ATANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ATANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ATAN2F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ATAN2F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN COSF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __COSF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SINF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SINF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __TANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN COSHF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __COSHF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SINHF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SINHF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TANHF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __TANHF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ACOSHF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ACOSHF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ASINHF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ASINHF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ATANHF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ATANHF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN EXPF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __EXPF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FREXPF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FREXPF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LDEXPF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LDEXPF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LOGF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LOGF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LOG10F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LOG10F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MODFF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __MODFF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN EXPM1F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __EXPM1F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LOG1PF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LOG1PF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LOGBF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LOGBF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN EXP2F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __EXP2F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LOG2F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LOG2F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN POWF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __POWF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SQRTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SQRTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN HYPOTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __HYPOTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN CBRTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __CBRTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN CEILF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __CEILF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FABSF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FABSF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FLOORF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FLOORF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FMODF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FMODF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISINFF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FINITEF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN DREMF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __DREMF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SIGNIFICANDF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SIGNIFICANDF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN COPYSIGNF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __COPYSIGNF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN NANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __NANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISNANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN J0F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN |__J0F| #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN J1F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN |__J1F| #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN JNF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __JNF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN Y0F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN |__Y0F| #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN Y1F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN |__Y1F| #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN YNF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __YNF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ERFF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ERFF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ERFCF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ERFCF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LGAMMAF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LGAMMAF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TGAMMAF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __TGAMMAF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GAMMAF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __GAMMAF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LGAMMAF-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LGAMMAF_R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN RINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __RINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN NEXTAFTERF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __NEXTAFTERF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN NEXTTOWARDF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __NEXTTOWARDF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN REMAINDERF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __REMAINDERF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SCALBNF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SCALBNF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ILOGBF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ILOGBF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SCALBLNF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SCALBLNF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN NEARBYINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __NEARBYINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ROUNDF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ROUNDF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TRUNCF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __TRUNCF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN REMQUOF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __REMQUOF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LLRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LLRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LROUNDF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LROUNDF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LLROUNDF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LLROUNDF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FDIMF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FDIMF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FMAXF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FMAXF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FMINF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FMINF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FMAF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FMAF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SCALBF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SCALBF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FPCLASSIFYL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SIGNBITL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ISINFL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FINITEL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ISNANL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ISEQSIGL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ISSIGNALINGL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ACOSL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ACOSL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ASINL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ASINL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ATANL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ATANL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ATAN2L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ATAN2L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN COSL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __COSL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SINL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SINL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TANL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __TANL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN COSHL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __COSHL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SINHL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SINHL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TANHL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __TANHL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ACOSHL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ACOSHL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ASINHL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ASINHL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ATANHL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ATANHL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN EXPL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __EXPL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FREXPL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FREXPL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LDEXPL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LDEXPL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LOGL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LOGL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LOG10L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LOG10L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MODFL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __MODFL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN EXPM1L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __EXPM1L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LOG1PL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LOG1PL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LOGBL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LOGBL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN EXP2L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __EXP2L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LOG2L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LOG2L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN POWL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __POWL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SQRTL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SQRTL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN HYPOTL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __HYPOTL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN CBRTL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __CBRTL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN CEILL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __CEILL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FABSL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FABSL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FLOORL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FLOORL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FMODL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FMODL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISINFL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FINITEL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN DREML #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __DREML #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SIGNIFICANDL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SIGNIFICANDL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN COPYSIGNL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __COPYSIGNL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN NANL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __NANL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISNANL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN J0L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN |__J0L| #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN J1L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN |__J1L| #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN JNL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __JNL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN Y0L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN |__Y0L| #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN Y1L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN |__Y1L| #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN YNL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __YNL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ERFL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ERFL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ERFCL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ERFCL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LGAMMAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LGAMMAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TGAMMAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __TGAMMAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GAMMAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __GAMMAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LGAMMAL-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LGAMMAL_R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN RINTL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __RINTL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN NEXTAFTERL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __NEXTAFTERL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN NEXTTOWARDL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __NEXTTOWARDL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN REMAINDERL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __REMAINDERL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SCALBNL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SCALBNL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ILOGBL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ILOGBL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SCALBLNL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SCALBLNL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN NEARBYINTL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __NEARBYINTL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ROUNDL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __ROUNDL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TRUNCL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __TRUNCL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN REMQUOL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __REMQUOL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LRINTL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LRINTL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LLRINTL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LLRINTL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LROUNDL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LROUNDL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LLROUNDL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __LLROUNDL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FDIML #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FDIML #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FMAXL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FMAXL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FMINL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FMINL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FMAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __FMAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SCALBL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __SCALBL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-PLATFORM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SELECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN PSELECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN REMOVE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN RENAME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN RENAMEAT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FCLOSE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TMPFILE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TMPNAM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TMPNAM-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TEMPNAM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FFLUSH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FFLUSH-UNLOCKED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FOPEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FREOPEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FDOPEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FMEMOPEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN OPEN-MEMSTREAM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SETBUF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SETVBUF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SETBUFFER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SETLINEBUF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN PRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VFPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VSPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SNPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VSNPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VDPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN DPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VFSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VSSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VFSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VSSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FGETC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GETC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GETCHAR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GETC-UNLOCKED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GETCHAR-UNLOCKED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FGETC-UNLOCKED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FPUTC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN PUTC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN PUTCHAR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FPUTC-UNLOCKED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN PUTC-UNLOCKED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN PUTCHAR-UNLOCKED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GETW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN PUTW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FGETS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __GETDELIM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GETDELIM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GETLINE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FPUTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN PUTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN UNGETC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FREAD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FWRITE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FREAD-UNLOCKED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FWRITE-UNLOCKED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FSEEK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FTELL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN REWIND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FSEEKO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FTELLO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FGETPOS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FSETPOS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN CLEARERR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FEOF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FERROR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN CLEARERR-UNLOCKED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FEOF-UNLOCKED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FERROR-UNLOCKED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN PERROR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FILENO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FILENO-UNLOCKED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN PCLOSE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN POPEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN CTERMID #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FLOCKFILE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FTRYLOCKFILE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FUNLOCKFILE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __UFLOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __OVERFLOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __CTYPE_GET_MB_CUR_MAX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ATOF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ATOI #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ATOL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ATOLL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRTOD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRTOF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRTOLD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRTOL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRTOUL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRTOQ #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRTOUQ #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRTOLL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRTOULL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN L64A #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN A64L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN RANDOM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SRANDOM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN INITSTATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SETSTATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN RANDOM-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SRANDOM-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN INITSTATE-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SETSTATE-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN RAND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SRAND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN RAND-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN DRAND48 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ERAND48 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LRAND48 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN NRAND48 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MRAND48 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN JRAND48 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SRAND48 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SEED48 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LCONG48 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN DRAND48-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ERAND48-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LRAND48-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN NRAND48-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MRAND48-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN JRAND48-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SRAND48-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SEED48-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LCONG48-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ARC4RANDOM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ARC4RANDOM-BUF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ARC4RANDOM-UNIFORM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MALLOC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN CALLOC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN REALLOC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FREE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN REALLOCARRAY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN REALLOCARRAY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ALLOCA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VALLOC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN POSIX-MEMALIGN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ALIGNED-ALLOC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ABORT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ATEXIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN AT-QUICK-EXIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ON-EXIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN EXIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN QUICK-EXIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN _EXIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GETENV #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN PUTENV #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SETENV #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN UNSETENV #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN CLEARENV #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MKTEMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MKSTEMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MKSTEMPS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MKDTEMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SYSTEM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN REALPATH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN BSEARCH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN QSORT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ABS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LABS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LLABS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN DIV #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LDIV #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LLDIV #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ECVT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FCVT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GCVT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN QECVT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN QFCVT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN QGCVT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ECVT-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FCVT-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN QECVT-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN QFCVT-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MBLEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MBTOWC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCTOMB #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MBSTOWCS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSTOMBS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN RPMATCH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GETSUBOPT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GETLOADAVG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MEMCPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MEMMOVE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MEMCCPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MEMSET #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MEMCMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __MEMCMPEQ #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MEMCHR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRCPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRNCPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRCAT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRNCAT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRCMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRNCMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRCOLL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRXFRM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRCOLL-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRXFRM-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRDUP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRNDUP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRCHR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRRCHR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRCSPN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRSPN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRPBRK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRSTR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRTOK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __STRTOK_R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRTOK-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRLEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRNLEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRERROR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRERROR-R #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRERROR-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN BCMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN BCOPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN BZERO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN INDEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN RINDEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FFS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FFSL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FFSLL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRCASECMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRNCASECMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRCASECMP-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRNCASECMP-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN EXPLICIT-BZERO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRSEP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRSIGNAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __STPCPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STPCPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __STPNCPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STPNCPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSCPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSNCPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSCAT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSNCAT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSCMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSNCMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSCASECMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSNCASECMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSCASECMP-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSNCASECMP-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSCOLL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSXFRM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSCOLL-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSXFRM-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSDUP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSCHR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSRCHR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSCSPN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSSPN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSPBRK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSSTR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSTOK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSLEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSNLEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WMEMCHR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WMEMCMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WMEMCPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WMEMMOVE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WMEMSET #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN BTOWC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCTOB #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MBSINIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MBRTOWC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCRTOMB #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __MBRLEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MBRLEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MBSRTOWCS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSRTOMBS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MBSNRTOWCS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSNRTOMBS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSTOD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSTOF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSTOLD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSTOL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSTOUL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSTOLL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSTOULL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCPCPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCPNCPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN OPEN-WMEMSTREAM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FWIDE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FWPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SWPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VFWPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VWPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VSWPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FWSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SWSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FWSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SWSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VFWSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VWSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VSWSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VFWSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VWSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VSWSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FGETWC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GETWC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GETWCHAR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FPUTWC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN PUTWC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN PUTWCHAR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FGETWS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FPUTWS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN UNGETWC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSFTIME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN IMAXABS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN IMAXDIV #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRTOIMAX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRTOUMAX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSTOIMAX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN WCSTOUMAX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __CTYPE_B_LOC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __CTYPE_TOLOWER_LOC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __CTYPE_TOUPPER_LOC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISALNUM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISALPHA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISCNTRL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISDIGIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISLOWER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISGRAPH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISPRINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISPUNCT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISSPACE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISUPPER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISXDIGIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TOLOWER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TOUPPER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISBLANK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISASCII #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TOASCII #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN _TOUPPER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN _TOLOWER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISALNUM-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISALPHA-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISCNTRL-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISDIGIT-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISLOWER-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISGRAPH-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISPRINT-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISPUNCT-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISSPACE-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISUPPER-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISXDIGIT-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ISBLANK-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __TOLOWER_L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TOLOWER-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __TOUPPER_L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TOUPPER-L #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-MALLOC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CALLOC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-REALLOC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FREE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-ORIGINAL-MEMORY-FUNCTIONS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-MEMORY-FUNCTIONS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-MEMORY-FUNCTIONS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-NUM-ALLOCATIONS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GETENV #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SETENV #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-QSORT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-BSEARCH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ABS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ISALPHA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ISALNUM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ISBLANK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ISCNTRL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ISDIGIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ISXDIGIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ISPUNCT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ISSPACE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ISUPPER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ISLOWER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ISPRINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ISGRAPH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-TOUPPER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-TOLOWER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CRC16 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CRC32 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-MEMSET #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-MEMCPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-MEMMOVE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-MEMCMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WCSLEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WCSLCPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WCSLCAT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WCSDUP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WCSSTR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WCSCMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WCSNCMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WCSCASECMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WCSNCASECMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRLEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRLCPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UTF8STRLCPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRLCAT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRDUP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRREV #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRUPR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRLWR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRCHR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRRCHR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRSTR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRCASESTR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRTOKR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UTF8STRLEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UTF8STRNLEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ITOA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UITOA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LTOA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ULTOA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LLTOA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ULLTOA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ATOI #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ATOF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRTOL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRTOUL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRTOLL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRTOULL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRTOD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRCMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRNCMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRCASECMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STRNCASECMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-VSSCANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SNPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-VSNPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ASPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-VASPRINTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ACOS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ACOSF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ASIN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ASINF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ATAN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ATANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ATAN2 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ATAN2F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CEIL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CEILF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-COPYSIGN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-COPYSIGNF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-COS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-COSF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-EXP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-EXPF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FABS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FABSF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FLOOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FLOORF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-TRUNC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-TRUNCF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FMOD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FMODF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOGF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG10 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG10F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-POW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-POWF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ROUND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ROUNDF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LROUND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LROUNDF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SCALBN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SCALBNF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SIN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SINF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SQRT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SQRTF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-TAN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-TANF #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ICONV-OPEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ICONV-CLOSE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ICONV #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ICONV-STRING #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-MAIN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-MAIN-READY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-REPORT-ASSERTION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-ASSERTION-HANDLER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-DEFAULT-ASSERTION-HANDLER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-ASSERTION-HANDLER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-ASSERTION-REPORT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RESET-ASSERTION-REPORT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ATOMIC-TRY-LOCK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ATOMIC-LOCK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ATOMIC-UNLOCK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-MEMORY-BARRIER-RELEASE-FUNCTION
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-MEMORY-BARRIER-ACQUIRE-FUNCTION
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ATOMIC-CAS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ATOMIC-SET #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ATOMIC-GET #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ATOMIC-ADD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ATOMIC-CAS-PTR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ATOMIC-SET-PTR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ATOMIC-GET-PTR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-ERROR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-ERROR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-ERROR-MSG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CLEAR-ERROR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ERROR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-MUTEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOCK-MUTEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-TRY-LOCK-MUTEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UNLOCK-MUTEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-DESTROY-MUTEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-SEMAPHORE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-DESTROY-SEMAPHORE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SEM-WAIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SEM-TRY-WAIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SEM-WAIT-TIMEOUT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SEM-POST #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SEM-VALUE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-COND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-DESTROY-COND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-COND-SIGNAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-COND-BROADCAST #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-COND-WAIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-COND-WAIT-TIMEOUT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-THREAD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-THREAD-WITH-STACK-SIZE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-THREAD-NAME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-THREAD-ID #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-THREAD-ID #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-THREAD-PRIORITY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WAIT-THREAD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-DETACH-THREAD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-TLS-CREATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-TLS-GET #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-TLS-SET #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-TLS-CLEANUP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RW-FROM-FILE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RW-FROM-FP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RW-FROM-MEM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RW-FROM-CONST-MEM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ALLOC-RW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FREE-RW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-R-WSIZE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-R-WSEEK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-R-WTELL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-R-WREAD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-R-WWRITE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-R-WCLOSE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOAD-FILE-RW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOAD-FILE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-READ-U8 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-READ-LE16 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-READ-BE16 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-READ-LE32 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-READ-BE32 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-READ-LE64 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-READ-BE64 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WRITE-U8 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WRITE-LE16 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WRITE-BE16 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WRITE-LE32 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WRITE-BE32 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WRITE-LE64 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WRITE-BE64 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-NUM-AUDIO-DRIVERS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-AUDIO-DRIVER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-AUDIO-INIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-AUDIO-QUIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-CURRENT-AUDIO-DRIVER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-OPEN-AUDIO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-NUM-AUDIO-DEVICES #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-AUDIO-DEVICE-NAME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-AUDIO-DEVICE-SPEC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-DEFAULT-AUDIO-INFO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-OPEN-AUDIO-DEVICE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-AUDIO-STATUS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-AUDIO-DEVICE-STATUS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-PAUSE-AUDIO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-PAUSE-AUDIO-DEVICE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOAD-WAV-RW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FREE-WAV #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-BUILD-AUDIO-CVT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CONVERT-AUDIO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-NEW-AUDIO-STREAM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-AUDIO-STREAM-PUT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-AUDIO-STREAM-GET #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-AUDIO-STREAM-AVAILABLE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-AUDIO-STREAM-FLUSH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-AUDIO-STREAM-CLEAR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FREE-AUDIO-STREAM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-MIX-AUDIO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-MIX-AUDIO-FORMAT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-QUEUE-AUDIO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-DEQUEUE-AUDIO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-QUEUED-AUDIO-SIZE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CLEAR-QUEUED-AUDIO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOCK-AUDIO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOCK-AUDIO-DEVICE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UNLOCK-AUDIO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UNLOCK-AUDIO-DEVICE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CLOSE-AUDIO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CLOSE-AUDIO-DEVICE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-CLIPBOARD-TEXT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-CLIPBOARD-TEXT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-CLIPBOARD-TEXT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-PRIMARY-SELECTION-TEXT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-PRIMARY-SELECTION-TEXT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-PRIMARY-SELECTION-TEXT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN POSIX-MEMALIGN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN _MM_SFENCE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN _MM_GETCSR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN _MM_SETCSR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN _MM_CLFLUSH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN _MM_LFENCE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN _MM_MFENCE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN _MM_PAUSE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __TILE_CMMIMFP16PS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN __TILE_CMMRLFP16PS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-CPU-COUNT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-CPU-CACHE-LINE-SIZE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-RDTSC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-ALTI-VEC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-MMX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS3D-NOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-SSE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-SSE2 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-SSE3 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-SSE41 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-SSE42 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-AVX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-AVX2 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-AVX512F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-ARMSIMD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-NEON #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-LSX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-LASX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-SYSTEM-RAM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SIMD-GET-ALIGNMENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SIMD-ALLOC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SIMD-REALLOC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SIMD-FREE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-PIXEL-FORMAT-NAME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-PIXEL-FORMAT-ENUM-TO-MASKS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-MASKS-TO-PIXEL-FORMAT-ENUM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ALLOC-FORMAT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FREE-FORMAT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ALLOC-PALETTE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-PIXEL-FORMAT-PALETTE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-PALETTE-COLORS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FREE-PALETTE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-MAP-RGB #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-MAP-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-RGB #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CALCULATE-GAMMA-RAMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-INTERSECTION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-INTERSECT-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UNION-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ENCLOSE-POINTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-INTERSECT-RECT-AND-LINE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-INTERSECTION-F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-INTERSECT-F-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UNION-F-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ENCLOSE-F-POINTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-INTERSECT-F-RECT-AND-LINE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-COMPOSE-CUSTOM-BLEND-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-RGB-SURFACE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-RGB-SURFACE-WITH-FORMAT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-RGB-SURFACE-FROM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-RGB-SURFACE-WITH-FORMAT-FROM
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FREE-SURFACE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-SURFACE-PALETTE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOCK-SURFACE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UNLOCK-SURFACE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOAD-BMP-RW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SAVE-BMP-RW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-SURFACE-RLE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-SURFACE-RLE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-COLOR-KEY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-COLOR-KEY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-COLOR-KEY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-SURFACE-COLOR-MOD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-SURFACE-COLOR-MOD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-SURFACE-ALPHA-MOD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-SURFACE-ALPHA-MOD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-SURFACE-BLEND-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-SURFACE-BLEND-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-CLIP-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-CLIP-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-DUPLICATE-SURFACE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CONVERT-SURFACE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CONVERT-SURFACE-FORMAT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CONVERT-PIXELS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-PREMULTIPLY-ALPHA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FILL-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FILL-RECTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UPPER-BLIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOWER-BLIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SOFT-STRETCH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SOFT-STRETCH-LINEAR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UPPER-BLIT-SCALED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOWER-BLIT-SCALED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-YUV-CONVERSION-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-YUV-CONVERSION-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-YUV-CONVERSION-MODE-FOR-RESOLUTION
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-NUM-VIDEO-DRIVERS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-VIDEO-DRIVER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-VIDEO-INIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-VIDEO-QUIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-CURRENT-VIDEO-DRIVER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-NUM-VIDEO-DISPLAYS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-DISPLAY-NAME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-DISPLAY-BOUNDS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-DISPLAY-USABLE-BOUNDS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-DISPLAY-DPI #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-DISPLAY-ORIENTATION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-NUM-DISPLAY-MODES #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-DISPLAY-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-DESKTOP-DISPLAY-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-CURRENT-DISPLAY-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-CLOSEST-DISPLAY-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-POINT-DISPLAY-INDEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-RECT-DISPLAY-INDEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-DISPLAY-INDEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-DISPLAY-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-DISPLAY-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-ICC-PROFILE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-PIXEL-FORMAT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-WINDOW-FROM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-ID #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-FROM-ID #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-FLAGS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-TITLE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-TITLE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-ICON #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-DATA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-DATA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-POSITION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-POSITION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-SIZE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-SIZE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-BORDERS-SIZE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-SIZE-IN-PIXELS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-MINIMUM-SIZE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-MINIMUM-SIZE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-MAXIMUM-SIZE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-MAXIMUM-SIZE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-BORDERED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-RESIZABLE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-ALWAYS-ON-TOP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SHOW-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HIDE-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RAISE-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-MAXIMIZE-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-MINIMIZE-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RESTORE-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-FULLSCREEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-WINDOW-SURFACE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-SURFACE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UPDATE-WINDOW-SURFACE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UPDATE-WINDOW-SURFACE-RECTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-DESTROY-WINDOW-SURFACE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-GRAB #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-KEYBOARD-GRAB #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-MOUSE-GRAB #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-GRAB #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-KEYBOARD-GRAB #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-MOUSE-GRAB #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-GRABBED-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-MOUSE-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-MOUSE-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-BRIGHTNESS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-BRIGHTNESS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-OPACITY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-OPACITY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-MODAL-FOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-INPUT-FOCUS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-GAMMA-RAMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-WINDOW-GAMMA-RAMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-HIT-TEST #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FLASH-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-DESTROY-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-IS-SCREEN-SAVER-ENABLED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ENABLE-SCREEN-SAVER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-DISABLE-SCREEN-SAVER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-LOAD-LIBRARY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-GET-PROC-ADDRESS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-UNLOAD-LIBRARY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-EXTENSION-SUPPORTED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-RESET-ATTRIBUTES #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-SET-ATTRIBUTE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-GET-ATTRIBUTE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-CREATE-CONTEXT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-MAKE-CURRENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-GET-CURRENT-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-GET-CURRENT-CONTEXT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-GET-DRAWABLE-SIZE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-SET-SWAP-INTERVAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-GET-SWAP-INTERVAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-SWAP-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-DELETE-CONTEXT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-KEYBOARD-FOCUS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-KEYBOARD-STATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RESET-KEYBOARD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-MOD-STATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-MOD-STATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-KEY-FROM-SCANCODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-SCANCODE-FROM-KEY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-SCANCODE-NAME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-SCANCODE-FROM-NAME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-KEY-NAME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-KEY-FROM-NAME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-START-TEXT-INPUT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-IS-TEXT-INPUT-ACTIVE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-STOP-TEXT-INPUT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CLEAR-COMPOSITION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-IS-TEXT-INPUT-SHOWN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-TEXT-INPUT-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-SCREEN-KEYBOARD-SUPPORT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-IS-SCREEN-KEYBOARD-SHOWN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-MOUSE-FOCUS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-MOUSE-STATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-GLOBAL-MOUSE-STATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-RELATIVE-MOUSE-STATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WARP-MOUSE-IN-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WARP-MOUSE-GLOBAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-RELATIVE-MOUSE-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CAPTURE-MOUSE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-RELATIVE-MOUSE-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-CURSOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-COLOR-CURSOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-SYSTEM-CURSOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-CURSOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-CURSOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-DEFAULT-CURSOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FREE-CURSOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SHOW-CURSOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GUID-TO-STRING #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GUID-FROM-STRING #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOCK-JOYSTICKS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UNLOCK-JOYSTICKS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-NUM-JOYSTICKS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-NAME-FOR-INDEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-PATH-FOR-INDEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-DEVICE-PLAYER-INDEX
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-DEVICE-GUID #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-DEVICE-VENDOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-DEVICE-PRODUCT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-DEVICE-PRODUCT-VERSION
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-DEVICE-TYPE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-DEVICE-INSTANCE-ID
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-OPEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-FROM-INSTANCE-ID #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-FROM-PLAYER-INDEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-ATTACH-VIRTUAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-ATTACH-VIRTUAL-EX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-DETACH-VIRTUAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-IS-VIRTUAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-SET-VIRTUAL-AXIS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-SET-VIRTUAL-BUTTON #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-SET-VIRTUAL-HAT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-NAME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-PATH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-PLAYER-INDEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-SET-PLAYER-INDEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-GUID #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-VENDOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-PRODUCT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-PRODUCT-VERSION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-FIRMWARE-VERSION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-SERIAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-TYPE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-GUID-STRING #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-GUID-FROM-STRING #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-JOYSTICK-GUID-INFO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-ATTACHED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-INSTANCE-ID #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-NUM-AXES #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-NUM-BALLS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-NUM-HATS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-NUM-BUTTONS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-UPDATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-EVENT-STATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-AXIS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-AXIS-INITIAL-STATE
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-HAT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-BALL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-GET-BUTTON #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-RUMBLE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-RUMBLE-TRIGGERS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-HAS-LED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-HAS-RUMBLE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-HAS-RUMBLE-TRIGGERS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-SET-LED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-SEND-EFFECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-CLOSE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-CURRENT-POWER-LEVEL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOCK-SENSORS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UNLOCK-SENSORS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-NUM-SENSORS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SENSOR-GET-DEVICE-NAME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SENSOR-GET-DEVICE-TYPE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SENSOR-GET-DEVICE-NON-PORTABLE-TYPE
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SENSOR-GET-DEVICE-INSTANCE-ID #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SENSOR-OPEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SENSOR-FROM-INSTANCE-ID #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SENSOR-GET-NAME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SENSOR-GET-TYPE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SENSOR-GET-NON-PORTABLE-TYPE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SENSOR-GET-INSTANCE-ID #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SENSOR-GET-DATA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SENSOR-GET-DATA-WITH-TIMESTAMP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SENSOR-CLOSE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SENSOR-UPDATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-ADD-MAPPINGS-FROM-RW
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-ADD-MAPPING #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-NUM-MAPPINGS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-MAPPING-FOR-INDEX
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-MAPPING-FOR-GUID
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-MAPPING #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-IS-GAME-CONTROLLER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-NAME-FOR-INDEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-PATH-FOR-INDEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-TYPE-FOR-INDEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-MAPPING-FOR-DEVICE-INDEX
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-OPEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-FROM-INSTANCE-ID
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-FROM-PLAYER-INDEX
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-NAME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-PATH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-TYPE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-PLAYER-INDEX
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-SET-PLAYER-INDEX
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-VENDOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-PRODUCT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-PRODUCT-VERSION
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-FIRMWARE-VERSION
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-SERIAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-STEAM-HANDLE
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-ATTACHED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-JOYSTICK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-EVENT-STATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-UPDATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-AXIS-FROM-STRING
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-STRING-FOR-AXIS
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-BIND-FOR-AXIS
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-HAS-AXIS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-AXIS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-BUTTON-FROM-STRING
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-STRING-FOR-BUTTON
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-BIND-FOR-BUTTON
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-HAS-BUTTON #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-BUTTON #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-NUM-TOUCHPADS
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-NUM-TOUCHPAD-FINGERS
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-TOUCHPAD-FINGER
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-HAS-SENSOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-SET-SENSOR-ENABLED
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-IS-SENSOR-ENABLED
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-SENSOR-DATA-RATE
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-SENSOR-DATA
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-SENSOR-DATA-WITH-TIMESTAMP
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-RUMBLE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-RUMBLE-TRIGGERS
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-HAS-LED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-HAS-RUMBLE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-HAS-RUMBLE-TRIGGERS
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-SET-LED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-SEND-EFFECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-CLOSE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN
    SDL-GAME-CONTROLLER-GET-APPLE-SF-SYMBOLS-NAME-FOR-BUTTON
    #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GAME-CONTROLLER-GET-APPLE-SF-SYMBOLS-NAME-FOR-AXIS
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-NUM-TOUCH-DEVICES #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-TOUCH-DEVICE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-TOUCH-NAME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-TOUCH-DEVICE-TYPE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-NUM-TOUCH-FINGERS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-TOUCH-FINGER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RECORD-GESTURE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SAVE-ALL-DOLLAR-TEMPLATES #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SAVE-DOLLAR-TEMPLATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOAD-DOLLAR-TEMPLATES #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-PUMP-EVENTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-PEEP-EVENTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAS-EVENTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FLUSH-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FLUSH-EVENTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-POLL-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WAIT-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WAIT-EVENT-TIMEOUT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-PUSH-EVENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-EVENT-FILTER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-EVENT-FILTER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ADD-EVENT-WATCH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-DEL-EVENT-WATCH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-FILTER-EVENTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-EVENT-STATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-REGISTER-EVENTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-BASE-PATH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-PREF-PATH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-NUM-HAPTICS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-NAME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-OPEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-OPENED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-INDEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-MOUSE-IS-HAPTIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-OPEN-FROM-MOUSE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-JOYSTICK-IS-HAPTIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-OPEN-FROM-JOYSTICK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-CLOSE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-NUM-EFFECTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-NUM-EFFECTS-PLAYING #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-QUERY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-NUM-AXES #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-EFFECT-SUPPORTED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-NEW-EFFECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-UPDATE-EFFECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-RUN-EFFECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-STOP-EFFECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-DESTROY-EFFECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-GET-EFFECT-STATUS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-SET-GAIN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-SET-AUTOCENTER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-PAUSE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-UNPAUSE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-STOP-ALL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-RUMBLE-SUPPORTED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-RUMBLE-INIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-RUMBLE-PLAY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HAPTIC-RUMBLE-STOP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-INIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-EXIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-DEVICE-CHANGE-COUNT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-ENUMERATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-FREE-ENUMERATION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-OPEN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-OPEN-PATH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-WRITE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-READ-TIMEOUT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-READ #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-SET-NONBLOCKING #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-SEND-FEATURE-REPORT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-GET-FEATURE-REPORT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-CLOSE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-GET-MANUFACTURER-STRING #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-GET-PRODUCT-STRING #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-GET-SERIAL-NUMBER-STRING #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-GET-INDEXED-STRING #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-HID-BLE-SCAN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-HINT-WITH-PRIORITY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-HINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RESET-HINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RESET-HINTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-HINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-HINT-BOOLEAN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ADD-HINT-CALLBACK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-DEL-HINT-CALLBACK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CLEAR-HINTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOAD-OBJECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOAD-FUNCTION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UNLOAD-OBJECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG-SET-ALL-PRIORITY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG-SET-PRIORITY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG-GET-PRIORITY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG-RESET-PRIORITIES #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG-VERBOSE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG-DEBUG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG-INFO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG-WARN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG-ERROR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG-CRITICAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG-MESSAGE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG-MESSAGE-V #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG-GET-OUTPUT-FUNCTION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOG-SET-OUTPUT-FUNCTION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SHOW-MESSAGE-BOX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SHOW-SIMPLE-MESSAGE-BOX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-METAL-CREATE-VIEW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-METAL-DESTROY-VIEW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-METAL-GET-LAYER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-METAL-GET-DRAWABLE-SIZE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-POWER-INFO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-NUM-RENDER-DRIVERS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-RENDER-DRIVER-INFO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-WINDOW-AND-RENDERER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-RENDERER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-SOFTWARE-RENDERER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-RENDERER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-GET-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-RENDERER-INFO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-RENDERER-OUTPUT-SIZE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-TEXTURE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-TEXTURE-FROM-SURFACE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-QUERY-TEXTURE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-TEXTURE-COLOR-MOD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-TEXTURE-COLOR-MOD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-TEXTURE-ALPHA-MOD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-TEXTURE-ALPHA-MOD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-TEXTURE-BLEND-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-TEXTURE-BLEND-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-TEXTURE-SCALE-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-TEXTURE-SCALE-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-TEXTURE-USER-DATA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-TEXTURE-USER-DATA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UPDATE-TEXTURE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UPDATE-YUV-TEXTURE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UPDATE-NV-TEXTURE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOCK-TEXTURE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LOCK-TEXTURE-TO-SURFACE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-UNLOCK-TEXTURE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-TARGET-SUPPORTED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-RENDER-TARGET #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-RENDER-TARGET #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-SET-LOGICAL-SIZE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-GET-LOGICAL-SIZE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-SET-INTEGER-SCALE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-GET-INTEGER-SCALE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-SET-VIEWPORT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-GET-VIEWPORT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-SET-CLIP-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-GET-CLIP-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-IS-CLIP-ENABLED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-SET-SCALE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-GET-SCALE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-WINDOW-TO-LOGICAL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-LOGICAL-TO-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-RENDER-DRAW-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-RENDER-DRAW-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-RENDER-DRAW-BLEND-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-RENDER-DRAW-BLEND-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-CLEAR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-DRAW-POINT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-DRAW-POINTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-DRAW-LINE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-DRAW-LINES #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-DRAW-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-DRAW-RECTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-FILL-RECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-FILL-RECTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-COPY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-COPY-EX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-DRAW-POINT-F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-DRAW-POINTS-F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-DRAW-LINE-F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-DRAW-LINES-F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-DRAW-RECT-F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-DRAW-RECTS-F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-FILL-RECT-F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-FILL-RECTS-F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-COPY-F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-COPY-EX-F #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-GEOMETRY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-GEOMETRY-RAW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-READ-PIXELS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-PRESENT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-DESTROY-TEXTURE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-DESTROY-RENDERER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-FLUSH #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-BIND-TEXTURE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GL-UNBIND-TEXTURE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-GET-METAL-LAYER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-GET-METAL-COMMAND-ENCODER
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-RENDER-SET-V-SYNC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CREATE-SHAPED-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-IS-SHAPED-WINDOW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-SET-WINDOW-SHAPE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-SHAPED-WINDOW-MODE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LINUX-SET-THREAD-PRIORITY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-LINUX-SET-THREAD-PRIORITY-AND-POLICY
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-IS-TABLET #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ON-APPLICATION-WILL-TERMINATE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ON-APPLICATION-DID-RECEIVE-MEMORY-WARNING
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ON-APPLICATION-WILL-RESIGN-ACTIVE
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ON-APPLICATION-DID-ENTER-BACKGROUND
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ON-APPLICATION-WILL-ENTER-FOREGROUND
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ON-APPLICATION-DID-BECOME-ACTIVE
                         #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-TICKS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-TICKS64 #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-PERFORMANCE-COUNTER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-PERFORMANCE-FREQUENCY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-DELAY #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ADD-TIMER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-REMOVE-TIMER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-VERSION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-REVISION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-REVISION-NUMBER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-PREFERRED-LOCALES #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-OPEN-URL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-INIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-INIT-SUB-SYSTEM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-QUIT-SUB-SYSTEM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-WAS-INIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-QUIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN PIXEL-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN PIXEL-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN HLINE-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN HLINE-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VLINE-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN VLINE-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN RECTANGLE-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN RECTANGLE-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ROUNDED-RECTANGLE-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ROUNDED-RECTANGLE-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN BOX-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN BOX-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ROUNDED-BOX-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ROUNDED-BOX-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LINE-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN LINE-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN AALINE-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN AALINE-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN THICK-LINE-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN THICK-LINE-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN CIRCLE-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN CIRCLE-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ARC-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ARC-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN AACIRCLE-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN AACIRCLE-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FILLED-CIRCLE-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FILLED-CIRCLE-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ELLIPSE-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN ELLIPSE-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN AAELLIPSE-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN AAELLIPSE-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FILLED-ELLIPSE-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FILLED-ELLIPSE-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN PIE-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN PIE-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FILLED-PIE-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FILLED-PIE-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TRIGON-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TRIGON-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN AATRIGON-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN AATRIGON-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FILLED-TRIGON-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FILLED-TRIGON-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN POLYGON-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN POLYGON-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN AAPOLYGON-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN AAPOLYGON-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FILLED-POLYGON-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN FILLED-POLYGON-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN TEXTURED-POLYGON #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN BEZIER-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN BEZIER-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GFX-PRIMITIVES-SET-FONT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN GFX-PRIMITIVES-SET-FONT-ROTATION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN CHARACTER-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN CHARACTER-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRING-COLOR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN STRING-RGBA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CEXTERN SIGNGAM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CEXTERN STDIN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CEXTERN STDOUT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CEXTERN STDERR #<PACKAGE "DUMMY">)
   (AUTOWRAP::COMPILE-TIME-REPORT-WRAP-FAILURES)
   (EXPORT
    '(SDL-LOCALE SDL-LOCALE SDL-VERSION SDL-VERSION SDL-WINDOW-SHAPE-MODE
      SDL-WINDOW-SHAPE-MODE SDL-WINDOW-SHAPE-PARAMS SDL-TEXTURE SDL-TEXTURE
      SDL-RENDERER SDL-RENDERER SDL-VERTEX SDL-VERTEX SDL-RENDERER-INFO
      SDL-RENDERER-INFO SDL-MESSAGE-BOX-DATA SDL-MESSAGE-BOX-COLOR-SCHEME
      SDL-MESSAGE-BOX-COLOR SDL-MESSAGE-BOX-BUTTON-DATA SDL-HID-DEVICE-INFO
      SDL-HID-DEVICE-INFO SDL-HID-DEVICE SDL-HID-DEVICE- SDL-HAPTIC-EFFECT
      SDL-HAPTIC-EFFECT SDL-HAPTIC-CUSTOM SDL-HAPTIC-CUSTOM
      SDL-HAPTIC-LEFT-RIGHT SDL-HAPTIC-LEFT-RIGHT SDL-HAPTIC-RAMP
      SDL-HAPTIC-RAMP SDL-HAPTIC-CONDITION SDL-HAPTIC-CONDITION
      SDL-HAPTIC-PERIODIC SDL-HAPTIC-PERIODIC SDL-HAPTIC-CONSTANT
      SDL-HAPTIC-CONSTANT SDL-HAPTIC-DIRECTION SDL-HAPTIC-DIRECTION SDL-HAPTIC
      _SDL_HAPTIC SDL-EVENT SDL-EVENT SDL-SYS-WM-EVENT SDL-SYS-WM-EVENT
      SDL-SYS-W-MMSG SDL-SYS-W-MMSG SDL-USER-EVENT SDL-USER-EVENT
      SDL-QUIT-EVENT SDL-QUIT-EVENT SDL-SENSOR-EVENT SDL-SENSOR-EVENT
      SDL-DROP-EVENT SDL-DROP-EVENT SDL-DOLLAR-GESTURE-EVENT
      SDL-DOLLAR-GESTURE-EVENT SDL-MULTI-GESTURE-EVENT SDL-MULTI-GESTURE-EVENT
      SDL-TOUCH-FINGER-EVENT SDL-TOUCH-FINGER-EVENT SDL-AUDIO-DEVICE-EVENT
      SDL-AUDIO-DEVICE-EVENT SDL-CONTROLLER-SENSOR-EVENT
      SDL-CONTROLLER-SENSOR-EVENT SDL-CONTROLLER-TOUCHPAD-EVENT
      SDL-CONTROLLER-TOUCHPAD-EVENT SDL-CONTROLLER-DEVICE-EVENT
      SDL-CONTROLLER-DEVICE-EVENT SDL-CONTROLLER-BUTTON-EVENT
      SDL-CONTROLLER-BUTTON-EVENT SDL-CONTROLLER-AXIS-EVENT
      SDL-CONTROLLER-AXIS-EVENT SDL-JOY-BATTERY-EVENT SDL-JOY-BATTERY-EVENT
      SDL-JOY-DEVICE-EVENT SDL-JOY-DEVICE-EVENT SDL-JOY-BUTTON-EVENT
      SDL-JOY-BUTTON-EVENT SDL-JOY-HAT-EVENT SDL-JOY-HAT-EVENT
      SDL-JOY-BALL-EVENT SDL-JOY-BALL-EVENT SDL-JOY-AXIS-EVENT
      SDL-JOY-AXIS-EVENT SDL-MOUSE-WHEEL-EVENT SDL-MOUSE-WHEEL-EVENT
      SDL-MOUSE-BUTTON-EVENT SDL-MOUSE-BUTTON-EVENT SDL-MOUSE-MOTION-EVENT
      SDL-MOUSE-MOTION-EVENT SDL-TEXT-INPUT-EVENT SDL-TEXT-INPUT-EVENT
      SDL-TEXT-EDITING-EXT-EVENT SDL-TEXT-EDITING-EXT-EVENT
      SDL-TEXT-EDITING-EVENT SDL-TEXT-EDITING-EVENT SDL-KEYBOARD-EVENT
      SDL-KEYBOARD-EVENT SDL-WINDOW-EVENT SDL-WINDOW-EVENT SDL-DISPLAY-EVENT
      SDL-DISPLAY-EVENT SDL-COMMON-EVENT SDL-COMMON-EVENT SDL-FINGER SDL-FINGER
      SDL-GAME-CONTROLLER-BUTTON-BIND SDL-GAME-CONTROLLER-BUTTON-BIND
      SDL-GAME-CONTROLLER _SDL_GAME_CONTROLLER SDL-SENSOR _SDL_SENSOR
      SDL-VIRTUAL-JOYSTICK-DESC SDL-VIRTUAL-JOYSTICK-DESC SDL-JOYSTICK
      _SDL_JOYSTICK SDL-GUID SDL-CURSOR SDL-CURSOR SDL-KEYSYM SDL-KEYSYM
      SDL-WINDOW SDL-WINDOW SDL-DISPLAY-MODE SDL-SURFACE SDL-SURFACE
      SDL-BLIT-MAP SDL-BLIT-MAP SDL-F-RECT SDL-F-RECT SDL-RECT SDL-RECT
      SDL-F-POINT SDL-F-POINT SDL-POINT SDL-POINT SDL-PIXEL-FORMAT
      SDL-PIXEL-FORMAT SDL-PALETTE SDL-PALETTE SDL-COLOR SDL-COLOR __TILE1024I
      __TILE1024I_STR __UINTR_FRAME SDL-AUDIO-STREAM _SDL_AUDIO_STREAM
      SDL-AUDIO-CVT SDL-AUDIO-CVT SDL-AUDIO-SPEC SDL-AUDIO-SPEC SDL-R-WOPS
      SDL-R-WOPS SDL-THREAD SDL-THREAD SDL-COND SDL-COND SDL-SEM SDL-SEMAPHORE
      SDL-MUTEX SDL-MUTEX SDL-ATOMIC-T SDL-ASSERT-DATA SDL-ASSERT-DATA
      SDL-ICONV-T _SDL_ICONV_T IMAXDIV-T TM __LOCALE_T __LOCALE_STRUCT
      __LOCALE_DATA MAX-ALIGN-T DRAND48-DATA RANDOM-DATA LLDIV-T LDIV-T DIV-T
      _IO_WIDE_DATA _IO_CODECVT _IO_MARKER FILE __FILE _IO_FILE __FPOS64_T
      _G_FPOS64_T __FPOS_T _G_FPOS_T __MBSTATE_T PTHREAD-BARRIERATTR-T
      PTHREAD-BARRIER-T PTHREAD-RWLOCKATTR-T PTHREAD-RWLOCK-T PTHREAD-COND-T
      PTHREAD-MUTEX-T PTHREAD-ATTR-T PTHREAD-ATTR-T PTHREAD-CONDATTR-T
      PTHREAD-MUTEXATTR-T __ONCE_FLAG __PTHREAD_COND_S __PTHREAD_RWLOCK_ARCH_T
      __PTHREAD_MUTEX_S __PTHREAD_SLIST_T __PTHREAD_INTERNAL_SLIST
      __PTHREAD_LIST_T __PTHREAD_INTERNAL_LIST __ATOMIC_WIDE_COUNTER FD-SET
      TIMESPEC TIMEVAL __SIGSET_T __FSID_T)
    #<PACKAGE "DUMMY">)
   (EXPORT
    '(STRING-RGBA STRING-COLOR CHARACTER-RGBA CHARACTER-COLOR
                  GFX-PRIMITIVES-SET-FONT-ROTATION GFX-PRIMITIVES-SET-FONT
                  BEZIER-RGBA BEZIER-COLOR TEXTURED-POLYGON FILLED-POLYGON-RGBA
                  FILLED-POLYGON-COLOR AAPOLYGON-RGBA AAPOLYGON-COLOR
                  POLYGON-RGBA POLYGON-COLOR FILLED-TRIGON-RGBA
                  FILLED-TRIGON-COLOR AATRIGON-RGBA AATRIGON-COLOR TRIGON-RGBA
                  TRIGON-COLOR FILLED-PIE-RGBA FILLED-PIE-COLOR PIE-RGBA
                  PIE-COLOR FILLED-ELLIPSE-RGBA FILLED-ELLIPSE-COLOR
                  AAELLIPSE-RGBA AAELLIPSE-COLOR ELLIPSE-RGBA ELLIPSE-COLOR
                  FILLED-CIRCLE-RGBA FILLED-CIRCLE-COLOR AACIRCLE-RGBA
                  AACIRCLE-COLOR ARC-RGBA ARC-COLOR CIRCLE-RGBA CIRCLE-COLOR
                  THICK-LINE-RGBA THICK-LINE-COLOR AALINE-RGBA AALINE-COLOR
                  LINE-RGBA LINE-COLOR ROUNDED-BOX-RGBA ROUNDED-BOX-COLOR
                  BOX-RGBA BOX-COLOR ROUNDED-RECTANGLE-RGBA
                  ROUNDED-RECTANGLE-COLOR RECTANGLE-RGBA RECTANGLE-COLOR
                  VLINE-RGBA VLINE-COLOR HLINE-RGBA HLINE-COLOR PIXEL-RGBA
                  PIXEL-COLOR SDL-QUIT SDL-WAS-INIT SDL-QUIT-SUB-SYSTEM
                  SDL-INIT-SUB-SYSTEM SDL-INIT SDL-OPEN-URL
                  SDL-GET-PREFERRED-LOCALES SDL-GET-REVISION-NUMBER
                  SDL-GET-REVISION SDL-GET-VERSION SDL-REMOVE-TIMER
                  SDL-ADD-TIMER SDL-DELAY SDL-GET-PERFORMANCE-FREQUENCY
                  SDL-GET-PERFORMANCE-COUNTER SDL-GET-TICKS64 SDL-GET-TICKS
                  SDL-ON-APPLICATION-DID-BECOME-ACTIVE
                  SDL-ON-APPLICATION-WILL-ENTER-FOREGROUND
                  SDL-ON-APPLICATION-DID-ENTER-BACKGROUND
                  SDL-ON-APPLICATION-WILL-RESIGN-ACTIVE
                  SDL-ON-APPLICATION-DID-RECEIVE-MEMORY-WARNING
                  SDL-ON-APPLICATION-WILL-TERMINATE SDL-IS-TABLET
                  SDL-LINUX-SET-THREAD-PRIORITY-AND-POLICY
                  SDL-LINUX-SET-THREAD-PRIORITY SDL-GET-SHAPED-WINDOW-MODE
                  SDL-SET-WINDOW-SHAPE SDL-IS-SHAPED-WINDOW
                  SDL-CREATE-SHAPED-WINDOW SDL-RENDER-SET-V-SYNC
                  SDL-RENDER-GET-METAL-COMMAND-ENCODER
                  SDL-RENDER-GET-METAL-LAYER SDL-GL-UNBIND-TEXTURE
                  SDL-GL-BIND-TEXTURE SDL-RENDER-FLUSH SDL-DESTROY-RENDERER
                  SDL-DESTROY-TEXTURE SDL-RENDER-PRESENT SDL-RENDER-READ-PIXELS
                  SDL-RENDER-GEOMETRY-RAW SDL-RENDER-GEOMETRY
                  SDL-RENDER-COPY-EX-F SDL-RENDER-COPY-F
                  SDL-RENDER-FILL-RECTS-F SDL-RENDER-FILL-RECT-F
                  SDL-RENDER-DRAW-RECTS-F SDL-RENDER-DRAW-RECT-F
                  SDL-RENDER-DRAW-LINES-F SDL-RENDER-DRAW-LINE-F
                  SDL-RENDER-DRAW-POINTS-F SDL-RENDER-DRAW-POINT-F
                  SDL-RENDER-COPY-EX SDL-RENDER-COPY SDL-RENDER-FILL-RECTS
                  SDL-RENDER-FILL-RECT SDL-RENDER-DRAW-RECTS
                  SDL-RENDER-DRAW-RECT SDL-RENDER-DRAW-LINES
                  SDL-RENDER-DRAW-LINE SDL-RENDER-DRAW-POINTS
                  SDL-RENDER-DRAW-POINT SDL-RENDER-CLEAR
                  SDL-GET-RENDER-DRAW-BLEND-MODE SDL-SET-RENDER-DRAW-BLEND-MODE
                  SDL-GET-RENDER-DRAW-COLOR SDL-SET-RENDER-DRAW-COLOR
                  SDL-RENDER-LOGICAL-TO-WINDOW SDL-RENDER-WINDOW-TO-LOGICAL
                  SDL-RENDER-GET-SCALE SDL-RENDER-SET-SCALE
                  SDL-RENDER-IS-CLIP-ENABLED SDL-RENDER-GET-CLIP-RECT
                  SDL-RENDER-SET-CLIP-RECT SDL-RENDER-GET-VIEWPORT
                  SDL-RENDER-SET-VIEWPORT SDL-RENDER-GET-INTEGER-SCALE
                  SDL-RENDER-SET-INTEGER-SCALE SDL-RENDER-GET-LOGICAL-SIZE
                  SDL-RENDER-SET-LOGICAL-SIZE SDL-GET-RENDER-TARGET
                  SDL-SET-RENDER-TARGET SDL-RENDER-TARGET-SUPPORTED
                  SDL-UNLOCK-TEXTURE SDL-LOCK-TEXTURE-TO-SURFACE
                  SDL-LOCK-TEXTURE SDL-UPDATE-NV-TEXTURE SDL-UPDATE-YUV-TEXTURE
                  SDL-UPDATE-TEXTURE SDL-GET-TEXTURE-USER-DATA
                  SDL-SET-TEXTURE-USER-DATA SDL-GET-TEXTURE-SCALE-MODE
                  SDL-SET-TEXTURE-SCALE-MODE SDL-GET-TEXTURE-BLEND-MODE
                  SDL-SET-TEXTURE-BLEND-MODE SDL-GET-TEXTURE-ALPHA-MOD
                  SDL-SET-TEXTURE-ALPHA-MOD SDL-GET-TEXTURE-COLOR-MOD
                  SDL-SET-TEXTURE-COLOR-MOD SDL-QUERY-TEXTURE
                  SDL-CREATE-TEXTURE-FROM-SURFACE SDL-CREATE-TEXTURE
                  SDL-GET-RENDERER-OUTPUT-SIZE SDL-GET-RENDERER-INFO
                  SDL-RENDER-GET-WINDOW SDL-GET-RENDERER
                  SDL-CREATE-SOFTWARE-RENDERER SDL-CREATE-RENDERER
                  SDL-CREATE-WINDOW-AND-RENDERER SDL-GET-RENDER-DRIVER-INFO
                  SDL-GET-NUM-RENDER-DRIVERS SDL-GET-POWER-INFO
                  SDL-METAL-GET-DRAWABLE-SIZE SDL-METAL-GET-LAYER
                  SDL-METAL-DESTROY-VIEW SDL-METAL-CREATE-VIEW
                  SDL-SHOW-SIMPLE-MESSAGE-BOX SDL-SHOW-MESSAGE-BOX
                  SDL-LOG-SET-OUTPUT-FUNCTION SDL-LOG-GET-OUTPUT-FUNCTION
                  SDL-LOG-MESSAGE-V SDL-LOG-MESSAGE SDL-LOG-CRITICAL
                  SDL-LOG-ERROR SDL-LOG-WARN SDL-LOG-INFO SDL-LOG-DEBUG
                  SDL-LOG-VERBOSE SDL-LOG SDL-LOG-RESET-PRIORITIES
                  SDL-LOG-GET-PRIORITY SDL-LOG-SET-PRIORITY
                  SDL-LOG-SET-ALL-PRIORITY SDL-UNLOAD-OBJECT SDL-LOAD-FUNCTION
                  SDL-LOAD-OBJECT SDL-CLEAR-HINTS SDL-DEL-HINT-CALLBACK
                  SDL-ADD-HINT-CALLBACK SDL-GET-HINT-BOOLEAN SDL-GET-HINT
                  SDL-RESET-HINTS SDL-RESET-HINT SDL-SET-HINT
                  SDL-SET-HINT-WITH-PRIORITY SDL-HID-BLE-SCAN
                  SDL-HID-GET-INDEXED-STRING SDL-HID-GET-SERIAL-NUMBER-STRING
                  SDL-HID-GET-PRODUCT-STRING SDL-HID-GET-MANUFACTURER-STRING
                  SDL-HID-CLOSE SDL-HID-GET-FEATURE-REPORT
                  SDL-HID-SEND-FEATURE-REPORT SDL-HID-SET-NONBLOCKING
                  SDL-HID-READ SDL-HID-READ-TIMEOUT SDL-HID-WRITE
                  SDL-HID-OPEN-PATH SDL-HID-OPEN SDL-HID-FREE-ENUMERATION
                  SDL-HID-ENUMERATE SDL-HID-DEVICE-CHANGE-COUNT SDL-HID-EXIT
                  SDL-HID-INIT SDL-HAPTIC-RUMBLE-STOP SDL-HAPTIC-RUMBLE-PLAY
                  SDL-HAPTIC-RUMBLE-INIT SDL-HAPTIC-RUMBLE-SUPPORTED
                  SDL-HAPTIC-STOP-ALL SDL-HAPTIC-UNPAUSE SDL-HAPTIC-PAUSE
                  SDL-HAPTIC-SET-AUTOCENTER SDL-HAPTIC-SET-GAIN
                  SDL-HAPTIC-GET-EFFECT-STATUS SDL-HAPTIC-DESTROY-EFFECT
                  SDL-HAPTIC-STOP-EFFECT SDL-HAPTIC-RUN-EFFECT
                  SDL-HAPTIC-UPDATE-EFFECT SDL-HAPTIC-NEW-EFFECT
                  SDL-HAPTIC-EFFECT-SUPPORTED SDL-HAPTIC-NUM-AXES
                  SDL-HAPTIC-QUERY SDL-HAPTIC-NUM-EFFECTS-PLAYING
                  SDL-HAPTIC-NUM-EFFECTS SDL-HAPTIC-CLOSE
                  SDL-HAPTIC-OPEN-FROM-JOYSTICK SDL-JOYSTICK-IS-HAPTIC
                  SDL-HAPTIC-OPEN-FROM-MOUSE SDL-MOUSE-IS-HAPTIC
                  SDL-HAPTIC-INDEX SDL-HAPTIC-OPENED SDL-HAPTIC-OPEN
                  SDL-HAPTIC-NAME SDL-NUM-HAPTICS SDL-GET-PREF-PATH
                  SDL-GET-BASE-PATH SDL-REGISTER-EVENTS SDL-EVENT-STATE
                  SDL-FILTER-EVENTS SDL-DEL-EVENT-WATCH SDL-ADD-EVENT-WATCH
                  SDL-GET-EVENT-FILTER SDL-SET-EVENT-FILTER SDL-PUSH-EVENT
                  SDL-WAIT-EVENT-TIMEOUT SDL-WAIT-EVENT SDL-POLL-EVENT
                  SDL-FLUSH-EVENTS SDL-FLUSH-EVENT SDL-HAS-EVENTS SDL-HAS-EVENT
                  SDL-PEEP-EVENTS SDL-PUMP-EVENTS SDL-LOAD-DOLLAR-TEMPLATES
                  SDL-SAVE-DOLLAR-TEMPLATE SDL-SAVE-ALL-DOLLAR-TEMPLATES
                  SDL-RECORD-GESTURE SDL-GET-TOUCH-FINGER
                  SDL-GET-NUM-TOUCH-FINGERS SDL-GET-TOUCH-DEVICE-TYPE
                  SDL-GET-TOUCH-NAME SDL-GET-TOUCH-DEVICE
                  SDL-GET-NUM-TOUCH-DEVICES
                  SDL-GAME-CONTROLLER-GET-APPLE-SF-SYMBOLS-NAME-FOR-AXIS
                  SDL-GAME-CONTROLLER-GET-APPLE-SF-SYMBOLS-NAME-FOR-BUTTON
                  SDL-GAME-CONTROLLER-CLOSE SDL-GAME-CONTROLLER-SEND-EFFECT
                  SDL-GAME-CONTROLLER-SET-LED
                  SDL-GAME-CONTROLLER-HAS-RUMBLE-TRIGGERS
                  SDL-GAME-CONTROLLER-HAS-RUMBLE SDL-GAME-CONTROLLER-HAS-LED
                  SDL-GAME-CONTROLLER-RUMBLE-TRIGGERS
                  SDL-GAME-CONTROLLER-RUMBLE
                  SDL-GAME-CONTROLLER-GET-SENSOR-DATA-WITH-TIMESTAMP
                  SDL-GAME-CONTROLLER-GET-SENSOR-DATA
                  SDL-GAME-CONTROLLER-GET-SENSOR-DATA-RATE
                  SDL-GAME-CONTROLLER-IS-SENSOR-ENABLED
                  SDL-GAME-CONTROLLER-SET-SENSOR-ENABLED
                  SDL-GAME-CONTROLLER-HAS-SENSOR
                  SDL-GAME-CONTROLLER-GET-TOUCHPAD-FINGER
                  SDL-GAME-CONTROLLER-GET-NUM-TOUCHPAD-FINGERS
                  SDL-GAME-CONTROLLER-GET-NUM-TOUCHPADS
                  SDL-GAME-CONTROLLER-GET-BUTTON SDL-GAME-CONTROLLER-HAS-BUTTON
                  SDL-GAME-CONTROLLER-GET-BIND-FOR-BUTTON
                  SDL-GAME-CONTROLLER-GET-STRING-FOR-BUTTON
                  SDL-GAME-CONTROLLER-GET-BUTTON-FROM-STRING
                  SDL-GAME-CONTROLLER-GET-AXIS SDL-GAME-CONTROLLER-HAS-AXIS
                  SDL-GAME-CONTROLLER-GET-BIND-FOR-AXIS
                  SDL-GAME-CONTROLLER-GET-STRING-FOR-AXIS
                  SDL-GAME-CONTROLLER-GET-AXIS-FROM-STRING
                  SDL-GAME-CONTROLLER-UPDATE SDL-GAME-CONTROLLER-EVENT-STATE
                  SDL-GAME-CONTROLLER-GET-JOYSTICK
                  SDL-GAME-CONTROLLER-GET-ATTACHED
                  SDL-GAME-CONTROLLER-GET-STEAM-HANDLE
                  SDL-GAME-CONTROLLER-GET-SERIAL
                  SDL-GAME-CONTROLLER-GET-FIRMWARE-VERSION
                  SDL-GAME-CONTROLLER-GET-PRODUCT-VERSION
                  SDL-GAME-CONTROLLER-GET-PRODUCT
                  SDL-GAME-CONTROLLER-GET-VENDOR
                  SDL-GAME-CONTROLLER-SET-PLAYER-INDEX
                  SDL-GAME-CONTROLLER-GET-PLAYER-INDEX
                  SDL-GAME-CONTROLLER-GET-TYPE SDL-GAME-CONTROLLER-PATH
                  SDL-GAME-CONTROLLER-NAME
                  SDL-GAME-CONTROLLER-FROM-PLAYER-INDEX
                  SDL-GAME-CONTROLLER-FROM-INSTANCE-ID SDL-GAME-CONTROLLER-OPEN
                  SDL-GAME-CONTROLLER-MAPPING-FOR-DEVICE-INDEX
                  SDL-GAME-CONTROLLER-TYPE-FOR-INDEX
                  SDL-GAME-CONTROLLER-PATH-FOR-INDEX
                  SDL-GAME-CONTROLLER-NAME-FOR-INDEX SDL-IS-GAME-CONTROLLER
                  SDL-GAME-CONTROLLER-MAPPING
                  SDL-GAME-CONTROLLER-MAPPING-FOR-GUID
                  SDL-GAME-CONTROLLER-MAPPING-FOR-INDEX
                  SDL-GAME-CONTROLLER-NUM-MAPPINGS
                  SDL-GAME-CONTROLLER-ADD-MAPPING
                  SDL-GAME-CONTROLLER-ADD-MAPPINGS-FROM-RW SDL-SENSOR-UPDATE
                  SDL-SENSOR-CLOSE SDL-SENSOR-GET-DATA-WITH-TIMESTAMP
                  SDL-SENSOR-GET-DATA SDL-SENSOR-GET-INSTANCE-ID
                  SDL-SENSOR-GET-NON-PORTABLE-TYPE SDL-SENSOR-GET-TYPE
                  SDL-SENSOR-GET-NAME SDL-SENSOR-FROM-INSTANCE-ID
                  SDL-SENSOR-OPEN SDL-SENSOR-GET-DEVICE-INSTANCE-ID
                  SDL-SENSOR-GET-DEVICE-NON-PORTABLE-TYPE
                  SDL-SENSOR-GET-DEVICE-TYPE SDL-SENSOR-GET-DEVICE-NAME
                  SDL-NUM-SENSORS SDL-UNLOCK-SENSORS SDL-LOCK-SENSORS
                  SDL-JOYSTICK-CURRENT-POWER-LEVEL SDL-JOYSTICK-CLOSE
                  SDL-JOYSTICK-SEND-EFFECT SDL-JOYSTICK-SET-LED
                  SDL-JOYSTICK-HAS-RUMBLE-TRIGGERS SDL-JOYSTICK-HAS-RUMBLE
                  SDL-JOYSTICK-HAS-LED SDL-JOYSTICK-RUMBLE-TRIGGERS
                  SDL-JOYSTICK-RUMBLE SDL-JOYSTICK-GET-BUTTON
                  SDL-JOYSTICK-GET-BALL SDL-JOYSTICK-GET-HAT
                  SDL-JOYSTICK-GET-AXIS-INITIAL-STATE SDL-JOYSTICK-GET-AXIS
                  SDL-JOYSTICK-EVENT-STATE SDL-JOYSTICK-UPDATE
                  SDL-JOYSTICK-NUM-BUTTONS SDL-JOYSTICK-NUM-HATS
                  SDL-JOYSTICK-NUM-BALLS SDL-JOYSTICK-NUM-AXES
                  SDL-JOYSTICK-INSTANCE-ID SDL-JOYSTICK-GET-ATTACHED
                  SDL-GET-JOYSTICK-GUID-INFO SDL-JOYSTICK-GET-GUID-FROM-STRING
                  SDL-JOYSTICK-GET-GUID-STRING SDL-JOYSTICK-GET-TYPE
                  SDL-JOYSTICK-GET-SERIAL SDL-JOYSTICK-GET-FIRMWARE-VERSION
                  SDL-JOYSTICK-GET-PRODUCT-VERSION SDL-JOYSTICK-GET-PRODUCT
                  SDL-JOYSTICK-GET-VENDOR SDL-JOYSTICK-GET-GUID
                  SDL-JOYSTICK-SET-PLAYER-INDEX SDL-JOYSTICK-GET-PLAYER-INDEX
                  SDL-JOYSTICK-PATH SDL-JOYSTICK-NAME
                  SDL-JOYSTICK-SET-VIRTUAL-HAT SDL-JOYSTICK-SET-VIRTUAL-BUTTON
                  SDL-JOYSTICK-SET-VIRTUAL-AXIS SDL-JOYSTICK-IS-VIRTUAL
                  SDL-JOYSTICK-DETACH-VIRTUAL SDL-JOYSTICK-ATTACH-VIRTUAL-EX
                  SDL-JOYSTICK-ATTACH-VIRTUAL SDL-JOYSTICK-FROM-PLAYER-INDEX
                  SDL-JOYSTICK-FROM-INSTANCE-ID SDL-JOYSTICK-OPEN
                  SDL-JOYSTICK-GET-DEVICE-INSTANCE-ID
                  SDL-JOYSTICK-GET-DEVICE-TYPE
                  SDL-JOYSTICK-GET-DEVICE-PRODUCT-VERSION
                  SDL-JOYSTICK-GET-DEVICE-PRODUCT
                  SDL-JOYSTICK-GET-DEVICE-VENDOR SDL-JOYSTICK-GET-DEVICE-GUID
                  SDL-JOYSTICK-GET-DEVICE-PLAYER-INDEX
                  SDL-JOYSTICK-PATH-FOR-INDEX SDL-JOYSTICK-NAME-FOR-INDEX
                  SDL-NUM-JOYSTICKS SDL-UNLOCK-JOYSTICKS SDL-LOCK-JOYSTICKS
                  SDL-GUID-FROM-STRING SDL-GUID-TO-STRING SDL-SHOW-CURSOR
                  SDL-FREE-CURSOR SDL-GET-DEFAULT-CURSOR SDL-GET-CURSOR
                  SDL-SET-CURSOR SDL-CREATE-SYSTEM-CURSOR
                  SDL-CREATE-COLOR-CURSOR SDL-CREATE-CURSOR
                  SDL-GET-RELATIVE-MOUSE-MODE SDL-CAPTURE-MOUSE
                  SDL-SET-RELATIVE-MOUSE-MODE SDL-WARP-MOUSE-GLOBAL
                  SDL-WARP-MOUSE-IN-WINDOW SDL-GET-RELATIVE-MOUSE-STATE
                  SDL-GET-GLOBAL-MOUSE-STATE SDL-GET-MOUSE-STATE
                  SDL-GET-MOUSE-FOCUS SDL-IS-SCREEN-KEYBOARD-SHOWN
                  SDL-HAS-SCREEN-KEYBOARD-SUPPORT SDL-SET-TEXT-INPUT-RECT
                  SDL-IS-TEXT-INPUT-SHOWN SDL-CLEAR-COMPOSITION
                  SDL-STOP-TEXT-INPUT SDL-IS-TEXT-INPUT-ACTIVE
                  SDL-START-TEXT-INPUT SDL-GET-KEY-FROM-NAME SDL-GET-KEY-NAME
                  SDL-GET-SCANCODE-FROM-NAME SDL-GET-SCANCODE-NAME
                  SDL-GET-SCANCODE-FROM-KEY SDL-GET-KEY-FROM-SCANCODE
                  SDL-SET-MOD-STATE SDL-GET-MOD-STATE SDL-RESET-KEYBOARD
                  SDL-GET-KEYBOARD-STATE SDL-GET-KEYBOARD-FOCUS
                  SDL-GL-DELETE-CONTEXT SDL-GL-SWAP-WINDOW
                  SDL-GL-GET-SWAP-INTERVAL SDL-GL-SET-SWAP-INTERVAL
                  SDL-GL-GET-DRAWABLE-SIZE SDL-GL-GET-CURRENT-CONTEXT
                  SDL-GL-GET-CURRENT-WINDOW SDL-GL-MAKE-CURRENT
                  SDL-GL-CREATE-CONTEXT SDL-GL-GET-ATTRIBUTE
                  SDL-GL-SET-ATTRIBUTE SDL-GL-RESET-ATTRIBUTES
                  SDL-GL-EXTENSION-SUPPORTED SDL-GL-UNLOAD-LIBRARY
                  SDL-GL-GET-PROC-ADDRESS SDL-GL-LOAD-LIBRARY
                  SDL-DISABLE-SCREEN-SAVER SDL-ENABLE-SCREEN-SAVER
                  SDL-IS-SCREEN-SAVER-ENABLED SDL-DESTROY-WINDOW
                  SDL-FLASH-WINDOW SDL-SET-WINDOW-HIT-TEST
                  SDL-GET-WINDOW-GAMMA-RAMP SDL-SET-WINDOW-GAMMA-RAMP
                  SDL-SET-WINDOW-INPUT-FOCUS SDL-SET-WINDOW-MODAL-FOR
                  SDL-GET-WINDOW-OPACITY SDL-SET-WINDOW-OPACITY
                  SDL-GET-WINDOW-BRIGHTNESS SDL-SET-WINDOW-BRIGHTNESS
                  SDL-GET-WINDOW-MOUSE-RECT SDL-SET-WINDOW-MOUSE-RECT
                  SDL-GET-GRABBED-WINDOW SDL-GET-WINDOW-MOUSE-GRAB
                  SDL-GET-WINDOW-KEYBOARD-GRAB SDL-GET-WINDOW-GRAB
                  SDL-SET-WINDOW-MOUSE-GRAB SDL-SET-WINDOW-KEYBOARD-GRAB
                  SDL-SET-WINDOW-GRAB SDL-DESTROY-WINDOW-SURFACE
                  SDL-UPDATE-WINDOW-SURFACE-RECTS SDL-UPDATE-WINDOW-SURFACE
                  SDL-GET-WINDOW-SURFACE SDL-HAS-WINDOW-SURFACE
                  SDL-SET-WINDOW-FULLSCREEN SDL-RESTORE-WINDOW
                  SDL-MINIMIZE-WINDOW SDL-MAXIMIZE-WINDOW SDL-RAISE-WINDOW
                  SDL-HIDE-WINDOW SDL-SHOW-WINDOW SDL-SET-WINDOW-ALWAYS-ON-TOP
                  SDL-SET-WINDOW-RESIZABLE SDL-SET-WINDOW-BORDERED
                  SDL-GET-WINDOW-MAXIMUM-SIZE SDL-SET-WINDOW-MAXIMUM-SIZE
                  SDL-GET-WINDOW-MINIMUM-SIZE SDL-SET-WINDOW-MINIMUM-SIZE
                  SDL-GET-WINDOW-SIZE-IN-PIXELS SDL-GET-WINDOW-BORDERS-SIZE
                  SDL-GET-WINDOW-SIZE SDL-SET-WINDOW-SIZE
                  SDL-GET-WINDOW-POSITION SDL-SET-WINDOW-POSITION
                  SDL-GET-WINDOW-DATA SDL-SET-WINDOW-DATA SDL-SET-WINDOW-ICON
                  SDL-GET-WINDOW-TITLE SDL-SET-WINDOW-TITLE
                  SDL-GET-WINDOW-FLAGS SDL-GET-WINDOW-FROM-ID SDL-GET-WINDOW-ID
                  SDL-CREATE-WINDOW-FROM SDL-CREATE-WINDOW
                  SDL-GET-WINDOW-PIXEL-FORMAT SDL-GET-WINDOW-ICC-PROFILE
                  SDL-GET-WINDOW-DISPLAY-MODE SDL-SET-WINDOW-DISPLAY-MODE
                  SDL-GET-WINDOW-DISPLAY-INDEX SDL-GET-RECT-DISPLAY-INDEX
                  SDL-GET-POINT-DISPLAY-INDEX SDL-GET-CLOSEST-DISPLAY-MODE
                  SDL-GET-CURRENT-DISPLAY-MODE SDL-GET-DESKTOP-DISPLAY-MODE
                  SDL-GET-DISPLAY-MODE SDL-GET-NUM-DISPLAY-MODES
                  SDL-GET-DISPLAY-ORIENTATION SDL-GET-DISPLAY-DPI
                  SDL-GET-DISPLAY-USABLE-BOUNDS SDL-GET-DISPLAY-BOUNDS
                  SDL-GET-DISPLAY-NAME SDL-GET-NUM-VIDEO-DISPLAYS
                  SDL-GET-CURRENT-VIDEO-DRIVER SDL-VIDEO-QUIT SDL-VIDEO-INIT
                  SDL-GET-VIDEO-DRIVER SDL-GET-NUM-VIDEO-DRIVERS
                  SDL-GET-YUV-CONVERSION-MODE-FOR-RESOLUTION
                  SDL-GET-YUV-CONVERSION-MODE SDL-SET-YUV-CONVERSION-MODE
                  SDL-LOWER-BLIT-SCALED SDL-UPPER-BLIT-SCALED
                  SDL-SOFT-STRETCH-LINEAR SDL-SOFT-STRETCH SDL-LOWER-BLIT
                  SDL-UPPER-BLIT SDL-FILL-RECTS SDL-FILL-RECT
                  SDL-PREMULTIPLY-ALPHA SDL-CONVERT-PIXELS
                  SDL-CONVERT-SURFACE-FORMAT SDL-CONVERT-SURFACE
                  SDL-DUPLICATE-SURFACE SDL-GET-CLIP-RECT SDL-SET-CLIP-RECT
                  SDL-GET-SURFACE-BLEND-MODE SDL-SET-SURFACE-BLEND-MODE
                  SDL-GET-SURFACE-ALPHA-MOD SDL-SET-SURFACE-ALPHA-MOD
                  SDL-GET-SURFACE-COLOR-MOD SDL-SET-SURFACE-COLOR-MOD
                  SDL-GET-COLOR-KEY SDL-HAS-COLOR-KEY SDL-SET-COLOR-KEY
                  SDL-HAS-SURFACE-RLE SDL-SET-SURFACE-RLE SDL-SAVE-BMP-RW
                  SDL-LOAD-BMP-RW SDL-UNLOCK-SURFACE SDL-LOCK-SURFACE
                  SDL-SET-SURFACE-PALETTE SDL-FREE-SURFACE
                  SDL-CREATE-RGB-SURFACE-WITH-FORMAT-FROM
                  SDL-CREATE-RGB-SURFACE-FROM
                  SDL-CREATE-RGB-SURFACE-WITH-FORMAT SDL-CREATE-RGB-SURFACE
                  SDL-COMPOSE-CUSTOM-BLEND-MODE SDL-INTERSECT-F-RECT-AND-LINE
                  SDL-ENCLOSE-F-POINTS SDL-UNION-F-RECT SDL-INTERSECT-F-RECT
                  SDL-HAS-INTERSECTION-F SDL-INTERSECT-RECT-AND-LINE
                  SDL-ENCLOSE-POINTS SDL-UNION-RECT SDL-INTERSECT-RECT
                  SDL-HAS-INTERSECTION SDL-CALCULATE-GAMMA-RAMP SDL-GET-RGBA
                  SDL-GET-RGB SDL-MAP-RGBA SDL-MAP-RGB SDL-FREE-PALETTE
                  SDL-SET-PALETTE-COLORS SDL-SET-PIXEL-FORMAT-PALETTE
                  SDL-ALLOC-PALETTE SDL-FREE-FORMAT SDL-ALLOC-FORMAT
                  SDL-MASKS-TO-PIXEL-FORMAT-ENUM SDL-PIXEL-FORMAT-ENUM-TO-MASKS
                  SDL-GET-PIXEL-FORMAT-NAME SDL-SIMD-FREE SDL-SIMD-REALLOC
                  SDL-SIMD-ALLOC SDL-SIMD-GET-ALIGNMENT SDL-GET-SYSTEM-RAM
                  SDL-HAS-LASX SDL-HAS-LSX SDL-HAS-NEON SDL-HAS-ARMSIMD
                  SDL-HAS-AVX512F SDL-HAS-AVX2 SDL-HAS-AVX SDL-HAS-SSE42
                  SDL-HAS-SSE41 SDL-HAS-SSE3 SDL-HAS-SSE2 SDL-HAS-SSE
                  SDL-HAS3D-NOW SDL-HAS-MMX SDL-HAS-ALTI-VEC SDL-HAS-RDTSC
                  SDL-GET-CPU-CACHE-LINE-SIZE SDL-GET-CPU-COUNT
                  __TILE_CMMRLFP16PS __TILE_CMMIMFP16PS _MM_PAUSE _MM_MFENCE
                  _MM_LFENCE _MM_CLFLUSH _MM_SETCSR _MM_GETCSR _MM_SFENCE
                  POSIX-MEMALIGN SDL-HAS-PRIMARY-SELECTION-TEXT
                  SDL-GET-PRIMARY-SELECTION-TEXT SDL-SET-PRIMARY-SELECTION-TEXT
                  SDL-HAS-CLIPBOARD-TEXT SDL-GET-CLIPBOARD-TEXT
                  SDL-SET-CLIPBOARD-TEXT SDL-CLOSE-AUDIO-DEVICE SDL-CLOSE-AUDIO
                  SDL-UNLOCK-AUDIO-DEVICE SDL-UNLOCK-AUDIO
                  SDL-LOCK-AUDIO-DEVICE SDL-LOCK-AUDIO SDL-CLEAR-QUEUED-AUDIO
                  SDL-GET-QUEUED-AUDIO-SIZE SDL-DEQUEUE-AUDIO SDL-QUEUE-AUDIO
                  SDL-MIX-AUDIO-FORMAT SDL-MIX-AUDIO SDL-FREE-AUDIO-STREAM
                  SDL-AUDIO-STREAM-CLEAR SDL-AUDIO-STREAM-FLUSH
                  SDL-AUDIO-STREAM-AVAILABLE SDL-AUDIO-STREAM-GET
                  SDL-AUDIO-STREAM-PUT SDL-NEW-AUDIO-STREAM SDL-CONVERT-AUDIO
                  SDL-BUILD-AUDIO-CVT SDL-FREE-WAV SDL-LOAD-WAV-RW
                  SDL-PAUSE-AUDIO-DEVICE SDL-PAUSE-AUDIO
                  SDL-GET-AUDIO-DEVICE-STATUS SDL-GET-AUDIO-STATUS
                  SDL-OPEN-AUDIO-DEVICE SDL-GET-DEFAULT-AUDIO-INFO
                  SDL-GET-AUDIO-DEVICE-SPEC SDL-GET-AUDIO-DEVICE-NAME
                  SDL-GET-NUM-AUDIO-DEVICES SDL-OPEN-AUDIO
                  SDL-GET-CURRENT-AUDIO-DRIVER SDL-AUDIO-QUIT SDL-AUDIO-INIT
                  SDL-GET-AUDIO-DRIVER SDL-GET-NUM-AUDIO-DRIVERS SDL-WRITE-BE64
                  SDL-WRITE-LE64 SDL-WRITE-BE32 SDL-WRITE-LE32 SDL-WRITE-BE16
                  SDL-WRITE-LE16 SDL-WRITE-U8 SDL-READ-BE64 SDL-READ-LE64
                  SDL-READ-BE32 SDL-READ-LE32 SDL-READ-BE16 SDL-READ-LE16
                  SDL-READ-U8 SDL-LOAD-FILE SDL-LOAD-FILE-RW SDL-R-WCLOSE
                  SDL-R-WWRITE SDL-R-WREAD SDL-R-WTELL SDL-R-WSEEK SDL-R-WSIZE
                  SDL-FREE-RW SDL-ALLOC-RW SDL-RW-FROM-CONST-MEM
                  SDL-RW-FROM-MEM SDL-RW-FROM-FP SDL-RW-FROM-FILE
                  SDL-TLS-CLEANUP SDL-TLS-SET SDL-TLS-GET SDL-TLS-CREATE
                  SDL-DETACH-THREAD SDL-WAIT-THREAD SDL-SET-THREAD-PRIORITY
                  SDL-GET-THREAD-ID SDL-THREAD-ID SDL-GET-THREAD-NAME
                  SDL-CREATE-THREAD-WITH-STACK-SIZE SDL-CREATE-THREAD
                  SDL-COND-WAIT-TIMEOUT SDL-COND-WAIT SDL-COND-BROADCAST
                  SDL-COND-SIGNAL SDL-DESTROY-COND SDL-CREATE-COND
                  SDL-SEM-VALUE SDL-SEM-POST SDL-SEM-WAIT-TIMEOUT
                  SDL-SEM-TRY-WAIT SDL-SEM-WAIT SDL-DESTROY-SEMAPHORE
                  SDL-CREATE-SEMAPHORE SDL-DESTROY-MUTEX SDL-UNLOCK-MUTEX
                  SDL-TRY-LOCK-MUTEX SDL-LOCK-MUTEX SDL-CREATE-MUTEX SDL-ERROR
                  SDL-CLEAR-ERROR SDL-GET-ERROR-MSG SDL-GET-ERROR SDL-SET-ERROR
                  SDL-ATOMIC-GET-PTR SDL-ATOMIC-SET-PTR SDL-ATOMIC-CAS-PTR
                  SDL-ATOMIC-ADD SDL-ATOMIC-GET SDL-ATOMIC-SET SDL-ATOMIC-CAS
                  SDL-MEMORY-BARRIER-ACQUIRE-FUNCTION
                  SDL-MEMORY-BARRIER-RELEASE-FUNCTION SDL-ATOMIC-UNLOCK
                  SDL-ATOMIC-LOCK SDL-ATOMIC-TRY-LOCK
                  SDL-RESET-ASSERTION-REPORT SDL-GET-ASSERTION-REPORT
                  SDL-GET-ASSERTION-HANDLER SDL-GET-DEFAULT-ASSERTION-HANDLER
                  SDL-SET-ASSERTION-HANDLER SDL-REPORT-ASSERTION
                  SDL-SET-MAIN-READY SDL-MAIN SDL-ICONV-STRING SDL-ICONV
                  SDL-ICONV-CLOSE SDL-ICONV-OPEN SDL-TANF SDL-TAN SDL-SQRTF
                  SDL-SQRT SDL-SINF SDL-SIN SDL-SCALBNF SDL-SCALBN SDL-LROUNDF
                  SDL-LROUND SDL-ROUNDF SDL-ROUND SDL-POWF SDL-POW SDL-LOG10F
                  SDL-LOG10 SDL-LOGF SDL-LOG SDL-FMODF SDL-FMOD SDL-TRUNCF
                  SDL-TRUNC SDL-FLOORF SDL-FLOOR SDL-FABSF SDL-FABS SDL-EXPF
                  SDL-EXP SDL-COSF SDL-COS SDL-COPYSIGNF SDL-COPYSIGN SDL-CEILF
                  SDL-CEIL SDL-ATAN2F SDL-ATAN2 SDL-ATANF SDL-ATAN SDL-ASINF
                  SDL-ASIN SDL-ACOSF SDL-ACOS SDL-VASPRINTF SDL-ASPRINTF
                  SDL-VSNPRINTF SDL-SNPRINTF SDL-VSSCANF SDL-SSCANF
                  SDL-STRNCASECMP SDL-STRCASECMP SDL-STRNCMP SDL-STRCMP
                  SDL-STRTOD SDL-STRTOULL SDL-STRTOLL SDL-STRTOUL SDL-STRTOL
                  SDL-ATOF SDL-ATOI SDL-ULLTOA SDL-LLTOA SDL-ULTOA SDL-LTOA
                  SDL-UITOA SDL-ITOA SDL-UTF8STRNLEN SDL-UTF8STRLEN SDL-STRTOKR
                  SDL-STRCASESTR SDL-STRSTR SDL-STRRCHR SDL-STRCHR SDL-STRLWR
                  SDL-STRUPR SDL-STRREV SDL-STRDUP SDL-STRLCAT SDL-UTF8STRLCPY
                  SDL-STRLCPY SDL-STRLEN SDL-WCSNCASECMP SDL-WCSCASECMP
                  SDL-WCSNCMP SDL-WCSCMP SDL-WCSSTR SDL-WCSDUP SDL-WCSLCAT
                  SDL-WCSLCPY SDL-WCSLEN SDL-MEMCMP SDL-MEMMOVE SDL-MEMCPY
                  SDL-MEMSET SDL-CRC32 SDL-CRC16 SDL-TOLOWER SDL-TOUPPER
                  SDL-ISGRAPH SDL-ISPRINT SDL-ISLOWER SDL-ISUPPER SDL-ISSPACE
                  SDL-ISPUNCT SDL-ISXDIGIT SDL-ISDIGIT SDL-ISCNTRL SDL-ISBLANK
                  SDL-ISALNUM SDL-ISALPHA SDL-ABS SDL-BSEARCH SDL-QSORT
                  SDL-SETENV SDL-GETENV SDL-GET-NUM-ALLOCATIONS
                  SDL-SET-MEMORY-FUNCTIONS SDL-GET-MEMORY-FUNCTIONS
                  SDL-GET-ORIGINAL-MEMORY-FUNCTIONS SDL-FREE SDL-REALLOC
                  SDL-CALLOC SDL-MALLOC TOUPPER-L __TOUPPER_L TOLOWER-L
                  __TOLOWER_L ISBLANK-L ISXDIGIT-L ISUPPER-L ISSPACE-L
                  ISPUNCT-L ISPRINT-L ISGRAPH-L ISLOWER-L ISDIGIT-L ISCNTRL-L
                  ISALPHA-L ISALNUM-L _TOLOWER _TOUPPER TOASCII ISASCII ISBLANK
                  TOUPPER TOLOWER ISXDIGIT ISUPPER ISSPACE ISPUNCT ISPRINT
                  ISGRAPH ISLOWER ISDIGIT ISCNTRL ISALPHA ISALNUM
                  __CTYPE_TOUPPER_LOC __CTYPE_TOLOWER_LOC __CTYPE_B_LOC
                  WCSTOUMAX WCSTOIMAX STRTOUMAX STRTOIMAX IMAXDIV IMAXABS
                  WCSFTIME UNGETWC FPUTWS FGETWS PUTWCHAR PUTWC FPUTWC GETWCHAR
                  GETWC FGETWC VSWSCANF VWSCANF VFWSCANF VSWSCANF VWSCANF
                  VFWSCANF SWSCANF WSCANF FWSCANF SWSCANF WSCANF FWSCANF
                  VSWPRINTF VWPRINTF VFWPRINTF SWPRINTF WPRINTF FWPRINTF FWIDE
                  OPEN-WMEMSTREAM WCPNCPY WCPCPY WCSTOULL WCSTOLL WCSTOUL
                  WCSTOL WCSTOLD WCSTOF WCSTOD WCSNRTOMBS MBSNRTOWCS WCSRTOMBS
                  MBSRTOWCS MBRLEN __MBRLEN WCRTOMB MBRTOWC MBSINIT WCTOB BTOWC
                  WMEMSET WMEMMOVE WMEMCPY WMEMCMP WMEMCHR WCSNLEN WCSLEN
                  WCSTOK WCSSTR WCSPBRK WCSSPN WCSCSPN WCSRCHR WCSCHR WCSDUP
                  WCSXFRM-L WCSCOLL-L WCSXFRM WCSCOLL WCSNCASECMP-L
                  WCSCASECMP-L WCSNCASECMP WCSCASECMP WCSNCMP WCSCMP WCSNCAT
                  WCSCAT WCSNCPY WCSCPY STPNCPY __STPNCPY STPCPY __STPCPY
                  STRSIGNAL STRSEP EXPLICIT-BZERO STRNCASECMP-L STRCASECMP-L
                  STRNCASECMP STRCASECMP FFSLL FFSL FFS RINDEX INDEX BZERO
                  BCOPY BCMP STRERROR-L STRERROR-R STRERROR STRNLEN STRLEN
                  STRTOK-R __STRTOK_R STRTOK STRSTR STRPBRK STRSPN STRCSPN
                  STRRCHR STRCHR STRNDUP STRDUP STRXFRM-L STRCOLL-L STRXFRM
                  STRCOLL STRNCMP STRCMP STRNCAT STRCAT STRNCPY STRCPY MEMCHR
                  __MEMCMPEQ MEMCMP MEMSET MEMCCPY MEMMOVE MEMCPY GETLOADAVG
                  GETSUBOPT RPMATCH WCSTOMBS MBSTOWCS WCTOMB MBTOWC MBLEN
                  QFCVT-R QECVT-R FCVT-R ECVT-R QGCVT QFCVT QECVT GCVT FCVT
                  ECVT LLDIV LDIV DIV LLABS LABS ABS QSORT BSEARCH REALPATH
                  SYSTEM MKDTEMP MKSTEMPS MKSTEMP MKTEMP CLEARENV UNSETENV
                  SETENV PUTENV GETENV _EXIT QUICK-EXIT EXIT ON-EXIT
                  AT-QUICK-EXIT ATEXIT ABORT ALIGNED-ALLOC POSIX-MEMALIGN
                  VALLOC ALLOCA REALLOCARRAY REALLOCARRAY FREE REALLOC CALLOC
                  MALLOC ARC4RANDOM-UNIFORM ARC4RANDOM-BUF ARC4RANDOM LCONG48-R
                  SEED48-R SRAND48-R JRAND48-R MRAND48-R NRAND48-R LRAND48-R
                  ERAND48-R DRAND48-R LCONG48 SEED48 SRAND48 JRAND48 MRAND48
                  NRAND48 LRAND48 ERAND48 DRAND48 RAND-R SRAND RAND SETSTATE-R
                  INITSTATE-R SRANDOM-R RANDOM-R SETSTATE INITSTATE SRANDOM
                  RANDOM A64L L64A STRTOULL STRTOLL STRTOUQ STRTOQ STRTOUL
                  STRTOL STRTOLD STRTOF STRTOD ATOLL ATOL ATOI ATOF
                  __CTYPE_GET_MB_CUR_MAX __OVERFLOW __UFLOW FUNLOCKFILE
                  FTRYLOCKFILE FLOCKFILE CTERMID POPEN PCLOSE FILENO-UNLOCKED
                  FILENO PERROR FERROR-UNLOCKED FEOF-UNLOCKED CLEARERR-UNLOCKED
                  FERROR FEOF CLEARERR FSETPOS FGETPOS FTELLO FSEEKO REWIND
                  FTELL FSEEK FWRITE-UNLOCKED FREAD-UNLOCKED FWRITE FREAD
                  UNGETC PUTS FPUTS GETLINE GETDELIM __GETDELIM FGETS PUTW GETW
                  PUTCHAR-UNLOCKED PUTC-UNLOCKED FPUTC-UNLOCKED PUTCHAR PUTC
                  FPUTC FGETC-UNLOCKED GETCHAR-UNLOCKED GETC-UNLOCKED GETCHAR
                  GETC FGETC VSSCANF VSCANF VFSCANF VSSCANF VSCANF VFSCANF
                  SSCANF SCANF FSCANF SSCANF SCANF FSCANF DPRINTF VDPRINTF
                  VSNPRINTF SNPRINTF VSPRINTF VPRINTF VFPRINTF SPRINTF PRINTF
                  FPRINTF SETLINEBUF SETBUFFER SETVBUF SETBUF OPEN-MEMSTREAM
                  FMEMOPEN FDOPEN FREOPEN FOPEN FFLUSH-UNLOCKED FFLUSH TEMPNAM
                  TMPNAM-R TMPNAM TMPFILE FCLOSE RENAMEAT RENAME REMOVE PSELECT
                  SELECT SDL-GET-PLATFORM __SCALBL SCALBL __FMAL FMAL __FMINL
                  FMINL __FMAXL FMAXL __FDIML FDIML __LLROUNDL LLROUNDL
                  __LROUNDL LROUNDL __LLRINTL LLRINTL __LRINTL LRINTL __REMQUOL
                  REMQUOL __TRUNCL TRUNCL __ROUNDL ROUNDL __NEARBYINTL
                  NEARBYINTL __SCALBLNL SCALBLNL __ILOGBL ILOGBL __SCALBNL
                  SCALBNL __REMAINDERL REMAINDERL __NEXTTOWARDL NEXTTOWARDL
                  __NEXTAFTERL NEXTAFTERL __RINTL RINTL __LGAMMAL_R LGAMMAL-R
                  __GAMMAL GAMMAL __TGAMMAL TGAMMAL __LGAMMAL LGAMMAL __ERFCL
                  ERFCL __ERFL ERFL __YNL YNL |__Y1L| Y1L |__Y0L| Y0L __JNL JNL
                  |__J1L| J1L |__J0L| J0L ISNANL __NANL NANL __COPYSIGNL
                  COPYSIGNL __SIGNIFICANDL SIGNIFICANDL __DREML DREML FINITEL
                  ISINFL __FMODL FMODL __FLOORL FLOORL __FABSL FABSL __CEILL
                  CEILL __CBRTL CBRTL __HYPOTL HYPOTL __SQRTL SQRTL __POWL POWL
                  __LOG2L LOG2L __EXP2L EXP2L __LOGBL LOGBL __LOG1PL LOG1PL
                  __EXPM1L EXPM1L __MODFL MODFL __LOG10L LOG10L __LOGL LOGL
                  __LDEXPL LDEXPL __FREXPL FREXPL __EXPL EXPL __ATANHL ATANHL
                  __ASINHL ASINHL __ACOSHL ACOSHL __TANHL TANHL __SINHL SINHL
                  __COSHL COSHL __TANL TANL __SINL SINL __COSL COSL __ATAN2L
                  ATAN2L __ATANL ATANL __ASINL ASINL __ACOSL ACOSL
                  __ISSIGNALINGL __ISEQSIGL __ISNANL __FINITEL __ISINFL
                  __SIGNBITL __FPCLASSIFYL __SCALBF SCALBF __FMAF FMAF __FMINF
                  FMINF __FMAXF FMAXF __FDIMF FDIMF __LLROUNDF LLROUNDF
                  __LROUNDF LROUNDF __LLRINTF LLRINTF __LRINTF LRINTF __REMQUOF
                  REMQUOF __TRUNCF TRUNCF __ROUNDF ROUNDF __NEARBYINTF
                  NEARBYINTF __SCALBLNF SCALBLNF __ILOGBF ILOGBF __SCALBNF
                  SCALBNF __REMAINDERF REMAINDERF __NEXTTOWARDF NEXTTOWARDF
                  __NEXTAFTERF NEXTAFTERF __RINTF RINTF __LGAMMAF_R LGAMMAF-R
                  __GAMMAF GAMMAF __TGAMMAF TGAMMAF __LGAMMAF LGAMMAF __ERFCF
                  ERFCF __ERFF ERFF __YNF YNF |__Y1F| Y1F |__Y0F| Y0F __JNF JNF
                  |__J1F| J1F |__J0F| J0F ISNANF __NANF NANF __COPYSIGNF
                  COPYSIGNF __SIGNIFICANDF SIGNIFICANDF __DREMF DREMF FINITEF
                  ISINFF __FMODF FMODF __FLOORF FLOORF __FABSF FABSF __CEILF
                  CEILF __CBRTF CBRTF __HYPOTF HYPOTF __SQRTF SQRTF __POWF POWF
                  __LOG2F LOG2F __EXP2F EXP2F __LOGBF LOGBF __LOG1PF LOG1PF
                  __EXPM1F EXPM1F __MODFF MODFF __LOG10F LOG10F __LOGF LOGF
                  __LDEXPF LDEXPF __FREXPF FREXPF __EXPF EXPF __ATANHF ATANHF
                  __ASINHF ASINHF __ACOSHF ACOSHF __TANHF TANHF __SINHF SINHF
                  __COSHF COSHF __TANF TANF __SINF SINF __COSF COSF __ATAN2F
                  ATAN2F __ATANF ATANF __ASINF ASINF __ACOSF ACOSF
                  __ISSIGNALINGF __ISEQSIGF __ISNANF __FINITEF __ISINFF
                  __SIGNBITF __FPCLASSIFYF __SCALB SCALB __FMA FMA __FMIN FMIN
                  __FMAX FMAX __FDIM FDIM __LLROUND LLROUND __LROUND LROUND
                  __LLRINT LLRINT __LRINT LRINT __REMQUO REMQUO __TRUNC TRUNC
                  __ROUND ROUND __NEARBYINT NEARBYINT __SCALBLN SCALBLN __ILOGB
                  ILOGB __SCALBN SCALBN __REMAINDER REMAINDER __NEXTTOWARD
                  NEXTTOWARD __NEXTAFTER NEXTAFTER __RINT RINT __LGAMMA_R
                  LGAMMA-R __GAMMA GAMMA __TGAMMA TGAMMA __LGAMMA LGAMMA __ERFC
                  ERFC __ERF ERF __YN YN |__Y1| Y1 |__Y0| Y0 __JN JN |__J1| J1
                  |__J0| J0 ISNAN __NAN NAN __COPYSIGN COPYSIGN __SIGNIFICAND
                  SIGNIFICAND __DREM DREM FINITE ISINF __FMOD FMOD __FLOOR
                  FLOOR __FABS FABS __CEIL CEIL __CBRT CBRT __HYPOT HYPOT
                  __SQRT SQRT __POW POW __LOG2 LOG2 __EXP2 EXP2 __LOGB LOGB
                  __LOG1P LOG1P __EXPM1 EXPM1 __MODF MODF __LOG10 LOG10 __LOG
                  LOG __LDEXP LDEXP __FREXP FREXP __EXP EXP __ATANH ATANH
                  __ASINH ASINH __ACOSH ACOSH __TANH TANH __SINH SINH __COSH
                  COSH __TAN TAN __SIN SIN __COS COS __ATAN2 ATAN2 __ATAN ATAN
                  __ASIN ASIN __ACOS ACOS __ISSIGNALING __ISEQSIG __ISNAN
                  __FINITE __ISINF __SIGNBIT __FPCLASSIFY)
    #<PACKAGE "DUMMY">)
   (EXPORT '(STDERR STDOUT STDIN SIGNGAM) #<PACKAGE "DUMMY">)
   (EXPORT
    '(+SDL-USE-IME+ +DYNAPI-NEEDS-DLOPEN+ +SDL-FILESYSTEM-UNIX+
      +SDL-POWER-LINUX+ +_SYS_TYPES_H+ +SDL-HAVE-LIBDECOR-GET-MIN-MAX+
      +SDL-UDEV-DYNAMIC+ +_M_+ +__PRI64_PREFIX+ +____GWCHAR_T_DEFINED+
      +SDL-IPHONE-MAX-GFORCE+ +_STRING_H+ +SDL-VIRTUAL-JOYSTICK-DESC-VERSION+
      +_BITS_TYPES___LOCALE_T_H+ +_BITS_TYPES_LOCALE_T_H+
      +SDL-JOYSTICK-AXIS-MIN+ +SDL-HAT-CENTERED+ +SDL-JOYSTICK-AXIS-MAX+
      +SDL-MIX-MAXVOLUME+ +SDL-COLOUR+ +_DEFAULT_FN_ATTRS+ +SDL-CACHELINE-SIZE+
      +SDL-ALPHA-OPAQUE+ +SDL-ALPHA-TRANSPARENT+ +__DEFAULT_FN_ATTRS+
      +SDL-HAT-RIGHTDOWN+ +SDL-HAT-LEFTUP+ +SDL-HAT-LEFTDOWN+ +SDL-HAT-UP+
      +SDL-HAT-RIGHT+ +SDL-HAT-LEFT+ +SDL-HAT-DOWN+ +SDL-HAT-RIGHTUP+
      +HAVE-FCITX+ +HAVE-DBUS-DBUS-H+ +HAVE-O-CLOEXEC+ +HAVE--EXIT+ +HAVE-POLL+
      +HAVE-GETAUXVAL+ +_MM512_PERMUTEVAR_EPI32+ +HAVE-SEM-TIMEDWAIT+
      +HAVE-PTHREAD-SETNAME-NP+ +_MM512_MASK_PERMUTEVAR_EPI32+ +HAVE-ICONV+
      +HAVE-INOTIFY+ +HAVE-INOTIFY-INIT1+ +HAVE-INOTIFY-INIT+
      +HAVE-SYS-INOTIFY-H+ +_KNOT_MASK16+ +_KOR_MASK16+ +_KXNOR_MASK16+
      +_KXOR_MASK16+ +_KAND_MASK16+ +_KANDN_MASK16+ +PR-ID-LEAST8+ +PR-ID64+
      +PR-ID32+ +PR-ID-LEAST32+ +PR-ID-LEAST16+ +PR-ID-FAST8+ +PR-ID-LEAST64+
      +PR-ID-FAST32+ +PR-ID-FAST16+ +HAVE-IBUS-IBUS-H+ +HAVE-LIBUDEV-H+
      +HAVE-IMMINTRIN-H+ +PR-ID16+ +PR-ID8+ +__PRIPTR_PREFIX+ +PR-II-FAST32+
      +SDL-AUDIO-DRIVER-OSS+ +PR-II-FAST16+ +SDL-AUDIO-DRIVER-DUMMY+
      +SDL-AUDIO-DRIVER-PIPEWIRE-DYNAMIC+ +PR-IO16+ +PR-II-FAST64+
      +SDL-AUDIO-DRIVER-PIPEWIRE+ +PR-IO8+ +PR-IO64+ +HAVE-LIBDECOR-H+
      +PR-IO-LEAST8+ +PR-IO32+ +HAVE-LIBSAMPLERATE-H+ +SDL-AUDIO-DRIVER-DISK+
      +PR-IO-LEAST32+ +SDL-AUDIO-DRIVER-ALSA+ +PR-IO-LEAST16+
      +SDL-JOYSTICK-LINUX+ +PR-II16+ +PR-ID-FAST64+ +PR-II8+
      +SDL-INPUT-LINUXKD+ +PR-II-LEAST8+ +PR-II64+ +SDL-JOYSTICK-VIRTUAL+
      +PR-II32+ +SDL-JOYSTICK-HIDAPI+ +SDL-AUDIO-DRIVER-SNDIO+ +PR-II-LEAST32+
      +PR-II-LEAST16+ +SDL-AUDIO-DRIVER-PULSEAUDIO+ +PR-II-FAST8+
      +SDL-INPUT-LINUXEV+ +SDL-AUDIO-DRIVER-SNDIO-DYNAMIC+ +PR-II-LEAST64+
      +SDL-THREAD-PTHREAD-RECURSIVE-MUTEX+ +PR-IU-LEAST16+ +PR-IU-LEAST32+
      +SDL-TIMER-UNIX+ +PR-IU-LEAST64+ +SDL-VIDEO-DRIVER-DUMMY+
      +SDL-VIDEO-DRIVER-WAYLAND+ +PR-IU-FAST8+ +SDL-HAPTIC-LINUX+
      +PR-IU-FAST16+ +SDL-SENSOR-DUMMY+ +PR-IU-FAST32+ +PR-IX8+
      +SDL-LOADSO-DLOPEN+ +PR-IU-FAST64+ +PR-IX16+ +SDL-THREAD-PTHREAD+
      +PR-IO-LEAST64+ +SDL-VIDEO-DRIVER-OFFSCREEN+ +PR-IO-FAST8+
      +SDL-VIDEO-DRIVER-X11-XCURSOR+ +SDL-VIDEO-DRIVER-X11-XDBE+ +PR-IO-FAST16+
      +SDL-VIDEO-DRIVER-X11-XINPUT2+ +PR-IO-FAST32+ +PR-IU8+ +PR-IO-FAST64+
      +PR-IU16+ +SDL-VIDEO-DRIVER-WAYLAND-QT-TOUCH+ +PR-IU32+
      +SDL-VIDEO-DRIVER-X11+ +PR-IU-LEAST8+ +SDL-VIDEO-DRIVER-KMSDRM+ +PR-IU64+
      +PR-IX-FAST64+ +PRIX8+ +SDL-VIDEO-DRIVER-X11-XSCRNSAVER+ +PRIX16+
      +SDL-VIDEO-DRIVER-X11-XSHAPE+ +PRIX32+ +PRIX64+
      +SDL-VIDEO-DRIVER-X11-SUPPORTS-GENERIC-EVENTS+ +PRIXLEAST8+ +PRIXLEAST16+
      +SDL-VIDEO-DRIVER-X11-XINPUT2-SUPPORTS-MULTITOUCH+ +PRIXLEAST32+
      +SDL-VIDEO-DRIVER-X11-XFIXES+ +PRIXLEAST64+ +SDL-VIDEO-DRIVER-X11-XRANDR+
      +PRIXFAST8+ +PR-IX32+ +SDL-VIDEO-OPENGL-ES2+ +PR-IX-LEAST8+ +PR-IX64+
      +SDL-VIDEO-OPENGL-EGL+ +PR-IX-LEAST16+ +SDL-VIDEO-OPENGL-GLX+
      +SDL-VIDEO-VULKAN+ +PR-IX-LEAST32+
      +SDL-VIDEO-DRIVER-X11-HAS-XKBKEYCODETOKEYSYM+ +PR-IX-LEAST64+
      +PR-IX-FAST8+ +SDL-VIDEO-RENDER-OGL+ +PR-IX-FAST16+
      +SDL-VIDEO-RENDER-OGL-ES2+ +PR-IX-FAST32+ +SDL-VIDEO-OPENGL+ +PR-IU-MAX+
      +SDLK-SCANCODE-MASK+ +PR-IO-MAX+ +PR-II-MAX+ +PR-ID-MAX+ +PRIXFAST64+
      +PRIXFAST32+ +PRIXFAST16+ +__CFLOAT64X+ +__HAVE_FLOATN_NOT_TYPEDEF+
      +__CFLOAT64+ +__CFLOAT32X+ +__CFLOAT32+ +__HAVE_DISTINCT_FLOAT64+
      +__HAVE_DISTINCT_FLOAT32X+ +__HAVE_DISTINCT_FLOAT16+
      +__HAVE_DISTINCT_FLOAT32+ +__HAVE_FLOAT128_UNLIKE_LDBL+
      +__HAVE_DISTINCT_FLOAT64X+ +__HAVE_DISTINCT_FLOAT128X+
      +SDL-HINT-MOUSE-DOUBLE-CLICK-TIME+ +__HAVE_FLOAT16+
      +SDL-HINT-MOUSE-DOUBLE-CLICK-RADIUS+ +__HAVE_FLOAT64X_LONG_DOUBLE+
      +SDL-HINT-MAC-OPENGL-ASYNC-DISPATCH+ +__HAVE_FLOAT64X+
      +SDL-HINT-MAC-CTRL-CLICK-EMULATE-RIGHT-CLICK+ +__HAVE_FLOAT128X+
      +__HAVE_FLOAT32X+ +SDL-HINT-MAC-BACKGROUND-APP+ +SDL-HINT-LOGGING+
      +__HAVE_FLOAT64+ +SDL-HINT-LINUX-JOYSTICK-DEADZONES+ +__HAVE_FLOAT32+
      +SDL-HINT-LINUX-JOYSTICK-CLASSIC+ +SDL-HINT-LINUX-HAT-DEADZONES+
      +SDL-HINT-LINUX-DIGITAL-HATS+ +SDL-HINT-JOYSTICK-DEVICE+
      +__HAVE_DISTINCT_FLOAT128+ +SDL-HINT-KMSDRM-REQUIRE-DRM-MASTER+
      +__HAVE_FLOAT128+ +SDL-HINT-JOYSTICK-ZERO-CENTERED-DEVICES+
      +SDL-HINT-MOUSE-FOCUS-CLICKTHROUGH+ +HAVE-STRCASECMP+ +HAVE-STRCASESTR+
      +HAVE-STRNCASECMP+ +RW-SEEK-END+ +RW-SEEK-CUR+ +RW-SEEK-SET+ +HAVE-CEIL+
      +HAVE-ATAN2F+ +HAVE-COPYSIGN+ +HAVE-CEILF+ +HAVE-COS+ +HAVE-COPYSIGNF+
      +HAVE-EXPF+ +HAVE-COSF+ +HAVE-EXP+ +SDL-MAJOR-VERSION+ +HAVE-VSSCANF+
      +HAVE-VSNPRINTF+ +SDL-MINOR-VERSION+ +HAVE-ACOSF+ +SDL-PATCHLEVEL+
      +HAVE-ACOS+ +HAVE-ASINF+ +HAVE-ASIN+ +SDL-COMPILEDVERSION+ +HAVE-ATANF+
      +HAVE-ATAN2+ +HAVE-ATAN+ +HAVE-LOG10F+ +AUDIO-S16+ +HAVE-LROUND+
      +HAVE-LROUNDF+ +HAVE-POW+ +AUDIO-U16LSB+ +HAVE-ROUND+ +HAVE-POWF+
      +AUDIO-S16LSB+ +HAVE-ROUNDF+ +AUDIO-U16MSB+ +HAVE-SCALBN+ +AUDIO-S16MSB+
      +HAVE-SCALBNF+ +AUDIO-U16+ +HAVE-FABS+ +HAVE-FABSF+ +HAVE-FLOOR+
      +AUDIO-U8+ +HAVE-FLOORF+ +AUDIO-S8+ +HAVE-FMOD+ +HAVE-LOG+ +HAVE-FMODF+
      +HAVE-LOGF+ +HAVE-LOG10+ +SDL-AUDIO-MASK-DATATYPE+ +HAVE-FSEEKO+
      +HAVE-FSEEKO64+ +SDL-AUDIO-MASK-ENDIAN+ +HAVE-SIGACTION+
      +SDL-AUDIO-MASK-SIGNED+ +HAVE-SA-SIGACTION+ +HAVE-SETJMP+
      +HAVE-NANOSLEEP+ +HAVE-SYSCONF+ +HAVE-CLOCK-GETTIME+
      +SDL-AUDIO-MASK-BITSIZE+ +HAVE-MPROTECT+ +HAVE-SIN+ +HAVE-SINF+
      +HAVE-SQRT+ +HAVE-SQRTF+ +HAVE-TAN+ +HAVE-TANF+ +HAVE-TRUNC+
      +HAVE-TRUNCF+ +HAVE-FOPEN64+ +__PTHREAD_MUTEX_HAVE_PREV+ +_IO_USER_LOCK+
      +PRIXMAX+ +PR-IX-MAX+ +PRIXPTR+ +PR-IX-PTR+ +_THREAD_MUTEX_INTERNAL_H+
      +SDL-FLOATWORDORDER+ +PR-IU-PTR+ +PR-IO-PTR+ +PR-II-PTR+ +PR-ID-PTR+
      +SC-ND-LEAST8+ +_IO_ERR_SEEN+ +SC-ND64+ +SC-ND32+ +_IO_EOF_SEEN+
      +SC-ND16+ +SC-ND8+ +SC-ND-FAST8+ +L-CTERMID+ +SC-ND-LEAST64+
      +SDL-LIL-ENDIAN+ +FOPEN-MAX+ +FILENAME-MAX+ +TMP-MAX+ +SC-ND-LEAST32+
      +L-TMPNAM+ +SC-ND-LEAST16+ +SC-NI16+ +STDERR+ +SC-NI8+ +SDL-BYTEORDER+
      +SC-ND-FAST32+ +STDOUT+ +SC-ND-FAST64+ +SDL-BIG-ENDIAN+ +SC-ND-FAST16+
      +STDIN+ +EOF+ +SC-NI-LEAST32+ +_MM_CMPINT_GT+ +BUFSIZ+ +SC-NI-LEAST16+
      +_MM_CMPINT_GE+ +SC-NI-LEAST64+ +SC-NI-LEAST8+ +_IONBF+ +SC-NI32+
      +_IOFBF+ +_IOLBF+ +SC-NI64+ +SC-NI-FAST32+ +SC-NI-FAST64+
      +_BITS_STDIO_LIM_H+ +SC-NI-FAST16+ +P-TMPDIR+ +SC-NI-FAST8+ +SEEK-END+
      +SEEK-SET+ +__PTHREAD_RWLOCK_ELISION_EXTRA+ +SEEK-CUR+ +SC-NU64+
      +SC-NU32+ +SC-NU-LEAST8+ +SC-NU8+ +SC-NU16+ +SC-NU-LEAST64+ +SC-NU-FAST8+
      +SC-NU-LEAST16+ +SC-NU-LEAST32+ +SC-NO8+ +SC-NO16+ +SC-NU-FAST16+
      +SC-NU-FAST64+ +SC-NU-FAST32+ +SC-NO-LEAST16+ +SC-NO-LEAST32+
      +__ATTR_DEALLOC_FCLOSE+ +SC-NO64+ +SC-NO32+ +SC-NO-LEAST8+ +SC-NO-FAST16+
      +SC-NO-FAST32+ +SC-NO-FAST64+ +SC-NO-LEAST64+ +SC-NO-FAST8+ +SC-NX32+
      +SC-NX64+ +SC-NX-LEAST8+ +SC-NX8+ +SC-NX16+ +SC-NX-LEAST64+ +SC-NX-FAST8+
      +SC-NX-LEAST16+ +SC-NX-LEAST32+ +SC-ND-MAX+ +SC-NI-MAX+ +_WCHAR_H+
      +SC-NX-FAST16+ +SC-NX-FAST32+ +SC-NX-FAST64+ +SC-NX-MAX+ +SC-NU-MAX+
      +SC-NO-MAX+ +SC-NO-PTR+ +SC-NI-PTR+ +SC-ND-PTR+ +SC-NX-PTR+ +SC-NU-PTR+
      +SDL-ASSERT-DATA+ +SDL-ASSERT-STATE+ +__SAVE_GPRBX+ +__TMPGPR+
      +__SIZEOF_PTHREAD_MUTEX_T+ +__SIZEOF_PTHREAD_ATTR_T+
      +_THREAD_SHARED_TYPES_H+ +__RESTORE_GPRBX+ +_BITS_PTHREADTYPES_ARCH_H+
      +__SIZEOF_PTHREAD_MUTEXATTR_T+ +__SIZEOF_PTHREAD_COND_T+
      +__SIZEOF_PTHREAD_RWLOCK_T+ +__SIZEOF_PTHREAD_BARRIER_T+
      +_BITS_PTHREADTYPES_COMMON_H+ +_BITS_LIBM_SIMD_DECL_STUBS_H+
      +__SIZEOF_PTHREAD_BARRIERATTR_T+ +__SIZEOF_PTHREAD_CONDATTR_T+
      +__SIZEOF_PTHREAD_RWLOCKATTR_T+ +SDL-FALLTHROUGH+ +SDL-HAS-FALLTHROUGH+
      +NULL+ +SIZEOF-VOIDP+ +HAVE-GCC-ATOMICS+ +HAVE-ALLOCA-H+ +HAVE-CTYPE-H+
      +HAVE-FLOAT-H+ +HAVE-LIBC+ +STDC-HEADERS+ +AUDIO-F32MSB+ +AUDIO-F32+
      +AUDIO-S32MSB+ +AUDIO-S32+ +AUDIO-F32LSB+ +AUDIO-S32LSB+
      +SDL-HINT-JOYSTICK-HIDAPI-XBOX-360+ +SDL-HINT-JOYSTICK-HIDAPI-SWITCH+
      +SDL-HINT-JOYSTICK-THROTTLE-DEVICES-EXCLUDED+
      +SDL-HINT-JOYSTICK-HIDAPI-XBOX-360-PLAYER-LED+
      +SDL-WINDOWPOS-UNDEFINED-MASK+ +SDL-AUDIO-ALLOW-CHANNELS-CHANGE+
      +SDL-WINDOWPOS-UNDEFINED+ +SDL-AUDIO-ALLOW-SAMPLES-CHANGE+
      +SDL-AUDIO-ALLOW-FREQUENCY-CHANGE+
      +SDL-HINT-JOYSTICK-WHEEL-DEVICES-EXCLUDED+
      +SDL-AUDIO-ALLOW-FORMAT-CHANGE+ +SDL-MAX-LOG-MESSAGE+ +AUDIO-S32SYS+
      +AUDIO-F32SYS+ +SDL-RELEASED+ +AUDIO-U16SYS+ +AUDIO-S16SYS+
      +SDL-WINDOWPOS-CENTERED+ +HAVE-REALLOC+ +HAVE-CALLOC+ +HAVE-ALLOCA+
      +SDL-WINDOWPOS-CENTERED-MASK+ +HAVE-FREE+
      +SDL-HINT-JOYSTICK-HIDAPI-XBOX-360-WIRELESS+ +HAVE-SETENV+
      +SDL-AUDIO-ALLOW-ANY-CHANGE+ +HAVE-GETENV+ +HAVE-QSORT+ +HAVE-PUTENV+
      +HAVE-UNSETENV+ +HAVE-ABS+ +SDL-AUDIOCVT-MAX-FILTERS+ +SDL-PRESSED+
      +HAVE-BSEARCH+ +HAVE-MEMSET+ +HAVE-BCOPY+ +HAVE-MEMMOVE+ +HAVE-MEMCMP+
      +HAVE-MEMCPY+ +HAVE-WCSDUP+ +HAVE-WCSLEN+ +HAVE-INTTYPES-H+
      +HAVE-ICONV-H+ +HAVE-MALLOC-H+ +HAVE-LIMITS-H+ +HAVE-MEMORY-H+
      +HAVE-MATH-H+ +HAVE-STDINT-H+ +HAVE-STDARG-H+ +HAVE-SIGNAL-H+
      +HAVE-STDLIB-H+ +HAVE-STDIO-H+ +HAVE-STRING-H+ +HAVE-STRINGS-H+
      +HAVE-WCHAR-H+ +HAVE-MALLOC+ +HAVE-SYS-TYPES-H+ +HAVE-DLOPEN+
      +HAVE-LINUX-INPUT-H+ +HAVE-ATOF+ +SDL-HINT-JOYSTICK-HIDAPI-XBOX+
      +HAVE-STRCMP+ +HAVE-STRNCMP+ +__INLINE__+
      +SDL-HINT-JOYSTICK-HIDAPI-PS5-RUMBLE+ +SDL-HINT-JOYSTICK-HIDAPI-WII+
      +SDL-TOUCH-MOUSEID+ +SDL-HINT-JOYSTICK-RAWINPUT+ +SDL-MOUSE-TOUCHID+
      +SDL-HINT-HIDAPI-IGNORE-DEVICES+ +SDL-HINT-JOYSTICK-MFI+
      +SDL-HINT-AUTO-UPDATE-JOYSTICKS+ +HAVE-WCSSTR+
      +SDL-HINT-JOYSTICK-ROG-CHAKRAM+ +HAVE-WCSCMP+ +SDL-HINT-JOYSTICK-THREAD+
      +HAVE-WCSNCMP+ +HAVE-WCSCASECMP+ +HAVE-WCSNCASECMP+ +HAVE-INDEX+
      +SDL-HINT-JOYSTICK-WGI+ +HAVE-STRLEN+ +HAVE-RINDEX+ +HAVE-STRCHR+
      +HAVE-STRRCHR+ +HAVE-STRSTR+ +HAVE-STRTOK-R+ +HAVE-STRTOL+ +HAVE-STRTOLL+
      +HAVE-STRTOUL+ +SDL-HINT-JOYSTICK-HIDAPI-XBOX-ONE+
      +SDL-HINT-JOYSTICK-HIDAPI-WII-PLAYER-LED+ +HAVE-STRTOULL+ +HAVE-STRTOD+
      +SDL-HINT-APPLE-TV-CONTROLLER-UI-EVENTS+ +SDL-HINT-GAMECONTROLLERTYPE+
      +HAVE-ATOI+ +SDL-HINT-GAMECONTROLLERCONFIG+
      +SDL-HINT-FRAMEBUFFER-ACCELERATION+ +SDL-HINT-ANDROID-BLOCK-ON-PAUSE+
      +SDL-HINT-FORCE-RAISEWINDOW+ +SDL-HINT-JOYSTICK-HIDAPI-STEAM+
      +SDL-HINT-JOYSTICK-RAWINPUT-CORRELATE-XINPUT+ +SDL-HINT-EVENT-LOGGING+
      +SDL-HINT-ENABLE-STEAM-CONTROLLERS+ +SDL-HINT-GAMECONTROLLERCONFIG-FILE+
      +SDL-HINT-GAMECONTROLLER-IGNORE-DEVICES+
      +SDL-HINT-EMSCRIPTEN-KEYBOARD-ELEMENT+ +SDL-BLIT-SCALED+
      +SDL-HINT-GRAB-KEYBOARD+ +SDL-HINT-ENABLE-SCREEN-KEYBOARD+
      +SDL-HINT-EMSCRIPTEN-ASYNCIFY+ +SDL-HINT-IME-SHOW-UI+
      +SDL-HINT-JOYSTICK-IOKIT+ +SDL-HINT-GAMECONTROLLER-IGNORE-DEVICES-EXCEPT+
      +SDL-HINT-AUDIO-DEVICE-STREAM-NAME+ +SDL-HINT-IME-INTERNAL-EDITING+
      +SDL-HINT-IDLE-TIMER-DISABLED+
      +SDL-HINT-GAMECONTROLLER-USE-BUTTON-LABELS+ +_MM_FROUND_NINT+
      +_MM_FROUND_FLOOR+ +_MM_FROUND_CEIL+
      +SDL-HINT-ANDROID-APK-EXPANSION-PATCH-FILE-VERSION+ +_MM_FROUND_TRUNC+
      +SDL-HINT-AUTO-UPDATE-SENSORS+ +SDL-HINT-AUDIO-DEVICE-APP-NAME+
      +_MM_FROUND_TO_ZERO+ +SDL-BLIT-SURFACE+ +_MM_FROUND_CUR_DIRECTION+
      +SDL-HINT-DISPLAY-USABLE-BOUNDS+
      +SDL-HINT-APPLE-TV-REMOTE-ALLOW-ROTATION+ +_MM_FROUND_RAISE_EXC+
      +SDL-HINT-JOYSTICK-HIDAPI-XBOX-ONE-HOME-LED+ +_MM_FROUND_NO_EXC+
      +SDL-HINT-AUDIO-CATEGORY+ +SDL-HINT-APP-NAME+
      +SDL-HINT-BMP-SAVE-LEGACY-FORMAT+
      +SDL-HINT-ANDROID-BLOCK-ON-PAUSE-PAUSEAUDIO+
      +SDL-HINT-ANDROID-TRAP-BACK-BUTTON+ +_MM_FROUND_TO_NEAREST_INT+
      +SDL-HINT-AUDIO-DEVICE-STREAM-ROLE+ +_MM_FROUND_TO_NEG_INF+
      +SDL-HINT-AUDIO-RESAMPLING-MODE+ +_MM_FROUND_TO_POS_INF+
      +SDL-HINT-ANDROID-APK-EXPANSION-MAIN-FILE-VERSION+
      +SDL-HINT-ACCELEROMETER-AS-JOYSTICK+ +__DEFAULT_FN_ATTRS_BF16+
      +SDL-HINT-ALLOW-ALT-TAB-WHILE-GRABBED+ +__DEFAULT_FN_ATTRS_FP16+
      +_M_PSADBW+ +_CMP_NGT_UQ+ +_M_PAVGW+ +SDL-HINT-ALLOW-TOPMOST+
      +_CMP_NGE_UQ+ +_CMP_EQ_US+ +_CMP_NLE_UQ+ +_CMP_GT_OQ+
      +SDL-HINT-JOYSTICK-WHEEL-DEVICES+ +_CMP_ORD_S+ +_CMP_GE_OQ+ +_M_PSHUFW+
      +_CMP_TRUE_US+ +_M_PMOVMSKB+ +_M_PMULHUW+ +__DEFAULT_FN_ATTRS_TILE+
      +_CMP_NEQ_OS+ +_M_PAVGB+ +_CMP_FALSE_OS+ +_M_MASKMOVQ+ +_CMP_LT_OQ+
      +_CMP_EQ_OS+ +_CMP_GT_OS+ +_CMP_TRUE_UQ+ +_CMP_GE_OS+ +_CMP_NLT_UQ+
      +_CMP_NEQ_US+ +_CMP_UNORD_S+ +_CMP_LE_OQ+ +_CMP_EQ_UQ+ +_CMP_NGT_US+
      +_CMP_ORD_Q+ +_CMP_NLE_US+ +_CMP_NLT_US+ +_CMP_NEQ_UQ+ +_CMP_NEQ_OQ+
      +_CMP_FALSE_OQ+ +_CMP_NGE_US+ +_M_PMAXUB+ +_M_PMAXSW+
      +SDL-HINT-JOYSTICK-THROTTLE-DEVICES+ +_M_PMINUB+ +_M_PMINSW+
      +_CMP_UNORD_Q+ +_CMP_LE_OS+ +_M_PINSRW+ +_CMP_LT_OS+ +_CMP_EQ_OQ+
      +_M_PEXTRW+ +_MM_ROUND_UP+ +_MM_ROUND_TOWARD_ZERO+ +_MM_ROUND_MASK+
      +_MM_ROUND_NEAREST+ +_MM_ROUND_DOWN+ +_MM_MASK_INEXACT+ +_MM_MASK_MASK+
      +_MM_MASK_OVERFLOW+ +_MM_MASK_UNDERFLOW+ +__DEFAULT_FN_ATTRS_INT8+
      +_MM_DENORMALS_ZERO_MASK+ +_MM_DENORMALS_ZERO_ON+
      +_MM_DENORMALS_ZERO_OFF+ +_MM_FLUSH_ZERO_OFF+ +_MM_FLUSH_ZERO_MASK+
      +_MM_FLUSH_ZERO_ON+ +_MM_EXCEPT_INVALID+
      +SDL-HINT-JOYSTICK-HIDAPI-STADIA+ +_MM_EXCEPT_DENORM+
      +SDL-HINT-JOYSTICK-HIDAPI-STEAMDECK+ +_MM_ALIGN16+
      +SDL-HINT-JOYSTICK-HIDAPI-JOYCON-HOME-LED+
      +SDL-HINT-JOYSTICK-HIDAPI-SWITCH-HOME-LED+
      +SDL-HINT-JOYSTICK-HIDAPI-SWITCH-PLAYER-LED+ +_MM_MASK_DENORM+
      +_MM_MASK_DIV_ZERO+ +_MM_EXCEPT_MASK+ +_MM_MASK_INVALID+
      +_MM_EXCEPT_UNDERFLOW+ +_MM_EXCEPT_INEXACT+ +_MM_EXCEPT_DIV_ZERO+
      +_MM_EXCEPT_OVERFLOW+ +SDL-HINT-JOYSTICK-GAMECUBE-RUMBLE-BRAKE+
      +SDL-HINT-JOYSTICK-HIDAPI-GAMECUBE+
      +SDL-HINT-JOYSTICK-HIDAPI-COMBINE-JOY-CONS+
      +SDL-HINT-JOYSTICK-HIDAPI-JOY-CONS+
      +SDL-HINT-JOYSTICK-HIDAPI-VERTICAL-JOY-CONS+ +SDL-STANDARD-GRAVITY+
      +SDL-HINT-JOYSTICK-HIDAPI-NINTENDO-CLASSIC+
      +SDL-HINT-JOYSTICK-HIDAPI-LUNA+ +SDL-HINT-JOYSTICK-HIDAPI-PS4+
      +SDL-HINT-JOYSTICK-HIDAPI-SHIELD+ +SDL-SIMD-ALIGNED+
      +SDL-HINT-JOYSTICK-HIDAPI-PS3+ +SDL-HINT-JOYSTICK-HIDAPI-PS5+
      +SDL-RLEACCEL+ +SDL-HINT-JOYSTICK-HIDAPI-PS4-RUMBLE+ +SDL-DONTFREE+
      +SDL-SWSURFACE+ +SDL-PREALLOC+ +SDL-HINT-JOYSTICK-HIDAPI-PS5-PLAYER-LED+
      +SDL-HINT-IOS-HIDE-HOME-INDICATOR+ +SDL-HINT-IME-SUPPORT-EXTENDED-TEXT+
      +__DEFAULT_FN_ATTRS_COMPLEX+ +SDL-HINT-JOYSTICK-ALLOW-BACKGROUND-EVENTS+
      +SDL-HINT-JOYSTICK-ARCADESTICK-DEVICES-EXCLUDED+
      +SDL-HINT-JOYSTICK-ARCADESTICK-DEVICES+
      +SDL-HINT-JOYSTICK-BLACKLIST-DEVICES+
      +SDL-HINT-JOYSTICK-FLIGHTSTICK-DEVICES+
      +SDL-HINT-JOYSTICK-BLACKLIST-DEVICES-EXCLUDED+
      +SDL-HINT-JOYSTICK-FLIGHTSTICK-DEVICES-EXCLUDED+
      +SDL-HINT-JOYSTICK-GAMECUBE-DEVICES-EXCLUDED+
      +SDL-HINT-JOYSTICK-GAMECUBE-DEVICES+ +SDL-HINT-JOYSTICK-HIDAPI+
      +__MATH_DECLARE_LDOUBLE+ +SDL-BUTTON-LEFT+ +SDL-BUTTON-MIDDLE+
      +__GLIBC_C99_FLEXARR_AVAILABLE+ +__FLEXARR+ +__PCONFIG_KEY_PROGRAM+
      +__ATTRIBUTE_MALLOC__+ +SDL-ICONV-ERROR+ +SDL-ICONV-E2BIG+ +WUNTRACED+
      +WNOHANG+ +__WNOTHREAD+ +WNOWAIT+ +WEXITED+ +WCONTINUED+ +WSTOPPED+
      +__LDIV_T_DEFINED+ +RAND-MAX+ +EXIT-FAILURE+ +__LLDIV_T_DEFINED+
      +EXIT-SUCCESS+ +MB-CUR-MAX+ +__WALL+ +__WCLONE+ +__WCOREFLAG+
      +__W_CONTINUED+ +UINT8-MAX+ +INT32-MAX+ +INT16-MAX+ +INT-LEAST64-MIN+
      +UINT16-MAX+ +INT64-MAX+ +UINT32-MAX+ +UINT64-MAX+ +__GLIBC__+
      +__GLIBC_MINOR__+ +INT-LEAST16-MIN+ +INT-LEAST32-MIN+ +_SYS_CDEFS_H+
      +INT-LEAST8-MIN+ +__STDC_IEC_559_COMPLEX__+ +__STDC_IEC_60559_COMPLEX__+
      +INT-LEAST8-MAX+ +__STDC_ISO_10646__+ +INT-LEAST32-MAX+ +__GNU_LIBRARY__+
      +INT-LEAST16-MAX+ +UINT-LEAST8-MAX+ +INT-LEAST64-MAX+ +__STDC_IEC_559__+
      +UINT-LEAST32-MAX+ +__STDC_IEC_60559_BFP__+ +UINT-LEAST16-MAX+ +__PTR_T+
      +__THROW+ +__THROWNL+ +INT32-MIN+ +INT8-MIN+ +INT16-MIN+ +INT8-MAX+
      +INT64-MIN+ +UINTMAX-MAX+ +PTRDIFF-MIN+ +PTRDIFF-MAX+ +SIG-ATOMIC-MIN+
      +SIG-ATOMIC-MAX+ +SIZE-MAX+ +WINT-MIN+ +WINT-MAX+ +UINT-LEAST64-MAX+
      +INT-FAST8-MIN+ +_STDC_PREDEF_H+ +INT-FAST16-MIN+ +INT-FAST8-MAX+
      +INT-FAST32-MIN+ +INT-FAST64-MIN+ +__TIMESIZE+ +INT-FAST16-MAX+
      +__SYSCALL_WORDSIZE+ +INT-FAST32-MAX+ +INT-FAST64-MAX+ +UINT-FAST8-MAX+
      +UINT-FAST16-MAX+ +UINT-FAST32-MAX+ +__WORDSIZE_TIME64_COMPAT32+
      +INTPTR-MIN+ +UINT-FAST64-MAX+ +INTPTR-MAX+ +UINTPTR-MAX+
      +__DEFAULT_FN_ATTRS128+ +INTMAX-MIN+ +INTMAX-MAX+
      +SDL-NULL-WHILE-LOOP-CONDITION+ +SDL-FUNCTION+ +SDL-FILE+ +SDL-LINE+
      +SDL-TEXTEDITINGEVENT-TEXT-SIZE+ +SDL-ASSERT-LEVEL+ +__RELAXED_FN_ATTRS+
      +SDL-TEXTINPUTEVENT-TEXT-SIZE+ +__GCC_HAVE_DWARF2_CFI_ASM+ +_MATH_H+
      +_FEATURES_H+ +__USE_ISOC11+ +__USE_ISOC99+ +__USE_ISOC95+ +__USE_POSIX+
      +__USE_POSIX2+ +__USE_POSIX199309+ +__USE_POSIX199506+
      +__GLIBC_USE_LIB_EXT2+ +SDL-ICONV-EILSEQ+ +SDL-ICONV-EINVAL+
      +SDL-HAPTIC-CONSTANT+ +SDL-WINDOW-LACKS-SHAPE+
      +SDL-INVALID-SHAPE-ARGUMENT+ +SDL-NONSHAPEABLE-WINDOW+
      +SDL-HAPTIC-DAMPER+ +SDL-HAPTIC-SPRING+ +SDL-HAPTIC-RAMP+
      +SDL-HAPTIC-SAWTOOTHDOWN+ +_MM512_SETZERO+ +SDL-HAPTIC-SAWTOOTHUP+
      +SDL-HAPTIC-TRIANGLE+ +SDL-HAPTIC-LEFTRIGHT+ +SDL-HAPTIC-SINE+
      +SDL-HAPTIC-POLAR+ +SDL-HAPTIC-PAUSE+ +__GLIBC_USE_IEC_60559_BFP_EXT+
      +SDL-HAPTIC-STATUS+ +SDL-HAPTIC-AUTOCENTER+
      +__GLIBC_USE_IEC_60559_BFP_EXT_C2X+ +SDL-HAPTIC-GAIN+
      +__GLIBC_USE_IEC_60559_EXT+ +SDL-HAPTIC-CUSTOM+ +SDL-HAPTIC-FRICTION+
      +__GLIBC_USE_IEC_60559_FUNCS_EXT+ +SDL-HAPTIC-INERTIA+
      +__DEFAULT_FN_ATTRS512+ +__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X+
      +SDL-HAPTIC-INFINITY+ +_MM512_SETZERO_EPI32+ +SDL-HAPTIC-STEERING-AXIS+
      +__GLIBC_USE_IEC_60559_TYPES_EXT+ +SDL-HAPTIC-SPHERICAL+
      +SDL-HAPTIC-CARTESIAN+ +_BITS_TYPES_H+
      +SDL-HINT-RENDER-LOGICAL-SIZE-MODE+ +SDL-HINT-QTWAYLAND-WINDOW-FLAGS+
      +SDL-HINT-QTWAYLAND-CONTENT-ORIENTATION+ +SDL-HINT-MOUSE-TOUCH-EVENTS+
      +SDL-IGNORE+ +SDL-QUERY+ +SDL-HINT-RENDER-SCALE-QUALITY+ +SDL-DISABLE+
      +SDL-ENABLE+ +SDL-HINT-ORIENTATIONS+ +SDL-HINT-WAVE-FACT-CHUNK+
      +SDL-HINT-OPENGL-ES-DRIVER+ +SDL-HINT-RENDER-LINE-METHOD+
      +SDL-HINT-RENDER-BATCHING+ +SDL-HINT-RENDER-DIRECT3D-THREADSAFE+
      +SDL-HINT-POLL-SENTINEL+ +SDL-HINT-MOUSE-RELATIVE-SCALING+
      +SDL-HINT-MOUSE-RELATIVE-MODE-CENTER+ +__S16_TYPE+
      +SDL-HINT-RENDER-VSYNC+ +SDL-HINT-MOUSE-RELATIVE-WARP-MOTION+
      +__U16_TYPE+ +__S32_TYPE+ +SDL-HINT-MOUSE-RELATIVE-SYSTEM-SCALE+
      +SDL-HINT-NO-SIGNAL-HANDLERS+ +__U32_TYPE+
      +SDL-HINT-MOUSE-RELATIVE-SPEED-SCALE+ +__SLONGWORD_TYPE+ +__SQUAD_TYPE+
      +__ULONGWORD_TYPE+ +SDL-HINT-MOUSE-NORMAL-SPEED-SCALE+ +__UQUAD_TYPE+
      +__SWORD_TYPE+ +SDL-HINT-MOUSE-RELATIVE-MODE-WARP+
      +SDL-HINT-RENDER-DIRECT3D11-DEBUG+ +_M_PSRLW+ +_M_PSLLQI+ +_M_PSRAW+
      +_M_PSRAWI+ +_M_PSRAD+ +_M_PSRADI+ +_M_PSRLWI+ +_M_PSUBUSW+ +_M_PSRLD+
      +_M_PSRLDI+ +SDL-NO-THREAD-SAFETY-ANALYSIS+ +SDL-HINT-ROG-GAMEPAD-MICE+
      +SDL-HINT-MOUSE-AUTO-CAPTURE+ +_M_PMADDWD+ +_M_PMULHW+
      +SDL-HINT-PREFERRED-LOCALES+ +_M_PMULLW+ +_M_PSLLW+ +_M_PSLLDI+
      +_M_PSLLWI+ +SDL-MUTEX-TIMEDOUT+ +_M_PSLLD+ +_M_PSLLQ+
      +SDL-MUTEX-MAXWAIT+ +_M_PADDSW+ +_M_PADDUSB+ +_M_PADDUSW+ +_M_PSUBW+
      +_M_PSUBB+ +_M_PSUBD+ +_M_PSUBSB+ +_M_PSUBSW+
      +SDL-HINT-RENDER-OPENGL-SHADERS+ +_M_PSUBUSB+ +_M_PUNPCKHWD+
      +_M_PUNPCKHDQ+ +_M_PUNPCKLBW+ +SDL-HINT-RENDER-DRIVER+ +_M_PADDB+
      +_M_PUNPCKLWD+ +_M_PUNPCKLDQ+ +_M_PADDW+
      +SDL-HINT-RENDER-METAL-PREFER-LOW-POWER-DEVICE+ +_M_PADDD+ +_M_PADDSB+
      +SDL-HINT-RETURN-KEY-HIDES-IME+ +_M_FROM_INT+ +SDL-HINT-RPI-VIDEO-LAYER+
      +_M_EMPTY+ +_M_TO_INT+ +SDL-HINT-ROG-GAMEPAD-MICE-EXCLUDED+
      +SDL-HINT-THREAD-PRIORITY-POLICY+
      +SDL-HINT-THREAD-FORCE-REALTIME-TIME-CRITICAL+ +_M_FROM_INT64+
      +SDL-HINT-PS2-DYNAMIC-VSYNC+ +_M_PACKSSWB+ +_M_PACKSSDW+ +_M_TO_INT64+
      +SDL-HINT-SCREENSAVER-INHIBIT-ACTIVITY-NAME+ +_M_PUNPCKHBW+
      +SDL-HINT-VIDEO-ALLOW-SCREENSAVER+ +_M_PACKUSWB+
      +SDL-HINT-TOUCH-MOUSE-EVENTS+ +HAS-BROKEN-BSWAP+ +HAS-BUILTIN-BSWAP64+
      +SDL-HINT-THREAD-STACK-SIZE+ +SDL-HINT-TIMER-RESOLUTION+
      +HAS-BUILTIN-BSWAP32+ +HAS-BUILTIN-BSWAP16+
      +SDL-HINT-VIDEO-DOUBLE-BUFFER+ +SDL-HINT-VIDEO-WIN-D3DCOMPILER+
      +SDL-HINT-VITA-TOUCH-MOUSE-DEVICE+ +SDL-HINT-TV-REMOTE-AS-JOYSTICK+
      +SDL-HINT-VIDEO-EXTERNAL-CONTEXT+ +SDL-HINT-VIDEO-HIGHDPI-DISABLED+
      +SDL-HINT-VIDEO-EGL-ALLOW-TRANSPARENCY+ +SDL-SCOPED-CAPABILITY+
      +SDL-HINT-VIDEO-WAYLAND-ALLOW-LIBDECOR+
      +SDL-HINT-VIDEO-MAC-FULLSCREEN-SPACES+
      +SDL-HINT-VIDEO-MINIMIZE-ON-FOCUS-LOSS+
      +SDL-HINT-VIDEO-WAYLAND-EMULATE-MOUSE-WARP+
      +SDL-HINT-VIDEO-WAYLAND-PREFER-LIBDECOR+
      +SDL-HINT-VIDEO-FOREIGN-WINDOW-VULKAN+
      +SDL-HINT-VIDEO-WAYLAND-MODE-EMULATION+
      +SDL-HINT-VIDEO-WINDOW-SHARE-PIXEL-FORMAT+
      +SDL-HINT-VIDEO-FOREIGN-WINDOW-OPENGL+ +SDL-HINT-VIDEO-X11-FORCE-EGL+
      +SDL-HINT-VIDEO-X11-XINERAMA+ +SDL-HINT-VIDEO-X11-XRANDR+
      +SDL-HINT-VIDEO-X11-NET-WM-BYPASS-COMPOSITOR+
      +SDL-HINT-VIDEO-X11-NET-WM-PING+ +SDL-RWOPS-UNKNOWN+ +SDL-RWOPS-WINFILE+
      +SDL-HINT-VIDEO-X11-WINDOW-VISUALID+ +SDL-RWOPS-STDFILE+
      +SDL-RWOPS-JNIFILE+ +SDL-RWOPS-MEMORY+ +SDL-RWOPS-MEMORY-RO+
      +SDL-HINT-VIDEO-X11-XVIDMODE+ +SDL-HINT-WAVE-TRUNCATION+
      +SDL-HINT-WAVE-RIFF-CHUNK-SIZE+ +SDL-HINT-X11-WINDOW-TYPE+
      +SDL-HINT-WINDOWS-ENABLE-MENU-MNEMONICS+
      +SDL-HINT-WINDOWS-DISABLE-THREAD-NAMING+
      +SDL-HINT-WINRT-PRIVACY-POLICY-URL+ +SDL-HINT-WINDOWS-ENABLE-MESSAGELOOP+
      +SDL-HINT-WINDOWS-FORCE-SEMAPHORE-KERNEL+
      +SDL-HINT-WINDOWS-INTRESOURCE-ICON+ +SDL-HINT-WINDOWS-DPI-AWARENESS+
      +SDL-HINT-WINDOWS-FORCE-MUTEX-CRITICAL-SECTIONS+
      +SDL-HINT-WINDOWS-INTRESOURCE-ICON-SMALL+
      +SDL-HINT-WINDOWS-NO-CLOSE-ON-ALT-F4+ +SDL-HINT-WINDOWS-USE-D3D9EX+
      +SDL-HINT-WINDOWS-DPI-SCALING+ +SDL-HINT-WINRT-HANDLE-BACK-BUTTON+
      +SDL-HINT-WINDOW-NO-ACTIVATION-WHEN-SHOWN+
      +SDL-HINT-WINDOW-FRAME-USABLE-WHILE-CURSOR-HIDDEN+
      +SDL-HINT-WINRT-PRIVACY-POLICY-LABEL+
      +SDL-HINT-X11-FORCE-OVERRIDE-REDIRECT+ +SDL-HINT-XINPUT-ENABLED+
      +SDL-HINT-DIRECTINPUT-ENABLED+ +SDL-HINT-AUDIO-INCLUDE-MONITORS+
      +SDL-HINT-XINPUT-USE-OLD-JOYSTICK-MAPPING+
      +SDL-HINT-QUIT-ON-LAST-WINDOW-CLOSE+ +SDL-HINT-VIDEODRIVER+
      +SDL-HINT-AUDIODRIVER+ +SDL-HINT-KMSDRM-DEVICE-INDEX+
      +SDL-HINT-TRACKPAD-IS-TOUCH-ONLY+ +SDL-HINT-SHUTDOWN-DBUS-ON-QUIT+
      +_MM_FROUND_RINT+ +_MM_FROUND_NEARBYINT+ +DBL-MANT-DIG+ +LDBL-MANT-DIG+
      +FLT-ROUNDS+ +FLT-RADIX+ +FLT-MANT-DIG+ +SDL-FORCE-INLINE+
      +SDL-MIN-UINT16+ +SDL-MAX-SINT32+ +SDL-MIN-SINT32+ +SDL-MAX-SINT8+
      +SDL-MIN-SINT8+ +SDL-MAX-UINT8+ +SDL-MIN-UINT8+ +SDL-MAX-SINT16+
      +SDL-MIN-SINT16+ +SDL-MAX-UINT16+ +FLT-DECIMAL-DIG+
      +_MM512_MASK_CVTPS_PH+ +DBL-DECIMAL-DIG+ +LDBL-TRUE-MIN+
      +_MM512_CVTPS_PH+ +FLT-HAS-SUBNORM+ +LDBL-DECIMAL-DIG+ +LDBL-HAS-SUBNORM+
      +DBL-HAS-SUBNORM+ +_MM512_MASKZ_CVTPS_PH+ +SDL-SIZE-MAX+ +FLT-EPSILON+
      +LDBL-MAX+ +LDBL-EPSILON+ +FLT-MIN+ +DBL-EPSILON+ +LDBL-MIN+ +DBL-MIN+
      +DBL-TRUE-MIN+ +FLT-TRUE-MIN+ +_M_PCMPGTB+ +FLT-MAX-EXP+ +_M_PCMPEQD+
      +LDBL-MIN-10-EXP+ +DBL-MIN-10-EXP+ +_M_PCMPEQW+ +LDBL-MAX-EXP+
      +_M_PCMPEQB+ +DBL-MAX-EXP+ +_M_PXOR+ +_M_POR+ +DBL-MAX-10-EXP+ +_M_PANDN+
      +DBL-MAX+ +_M_PAND+ +FLT-MAX-10-EXP+ +_M_PSRLQ+ +_M_PSRLQI+ +FLT-MAX+
      +LDBL-MAX-10-EXP+ +DECIMAL-DIG+ +LDBL-DIG+ +DBL-DIG+ +FLT-DIG+
      +DBL-MIN-EXP+ +FLT-MIN-EXP+ +_M_PCMPGTD+ +FLT-MIN-10-EXP+ +LDBL-MIN-EXP+
      +_M_PCMPGTW+ +FLT-EVAL-METHOD+ +_MM_CVTI32_SD+ +_MM_CVTSS_I32+
      +_MM_CVTSD_I32+ +_BITS_WCHAR_H+ +_MM_CVTI32_SS+ +__WCHAR_MAX+
      +__WCHAR_MIN+ +__WINT_T_DEFINED+ +_WINT_T+ +__MBSTATE_T_DEFINED+
      +WCHAR-MIN+ +WCHAR-MAX+ +WEOF+ +__ATTRIBUTE_PURE__+ +__NFDBITS+
      +FD-SETSIZE+ +NFDBITS+ +_STRINGS_H+ +__ATTRIBUTE_ARTIFICIAL__+
      +__EXTERN_INLINE+ +_SYS_SELECT_H+ +__ATTRIBUTE_WARN_UNUSED_RESULT__+
      +__ALWAYS_INLINE+ +__RETURNS_NONNULL+ +SDL-INLINE+ +__TIMEVAL_DEFINED+
      +__ATTRIBUTE_DEPRECATED__+ +_STRUCT_TIMESPEC+ +__ATTRIBUTE_NOINLINE__+
      +__ATTRIBUTE_USED__+ +_SIGSET_NWORDS+ +__ATTRIBUTE_CONST__+
      +__SIGSET_T_DEFINED+ +__ATTRIBUTE_MAYBE_UNUSED__+ +M-SQRT1-2+ +M-SQRT2+
      +M-2-SQRTPI+ +__HAVE_GENERIC_SELECTION+ +M-2-PI+ +M-1-PI+ +M-PI-4+
      +M-PI-2+ +M-PI+ +M-LN10+ +M-LN2+ +M-LOG10E+ +M-LOG2E+ +M-E+
      +MATH-ERRHANDLING+ +__LDOUBLE_REDIRECTS_TO_FLOAT128_ABI+
      +_BITS_UINTN_IDENTITY_H+ +_CTYPE_H+ +BYTE-ORDER+ +PDP-ENDIAN+ +__LINUX__+
      +__EXTERN_ALWAYS_INLINE+ +__FORTIFY_FUNCTION+ +_BITS_BYTESWAP_H+
      +__RESTRICT_ARR+ +MATH-ERRNO+ +MATH-ERREXCEPT+ +__MATHCALL_NARROW_ARGS_1+
      +__MATHCALL_NARROW_ARGS_2+ +__MATHCALL_NARROW_ARGS_3+
      +__GLIBC_FLT_EVAL_METHOD+ +NAN+ +INFINITY+ +HUGE-VALL+ +HUGE-VALF+
      +HUGE-VAL+ +FP-ILOGBNAN+ +__FP_LOGBNAN_IS_MIN+ +__FP_LOGB0_IS_MIN+
      +FP-ILOGB0+ +__DEFAULT_FN_ATTRS256+ +_MDOUBLE_+ +_MM_CVTI64_SS+
      +_MM_CVTI64_SD+ +_MM_CVTSD_I64+ +_MM_CVTSS_I64+ +__MATH_DECLARING_FLOATN+
      +__MATH_DECLARING_DOUBLE+ +_ALLOCA_H+ +_SIDD_CMP_EQUAL_ANY+
      +_SIDD_SBYTE_OPS+ +_SIDD_SWORD_OPS+ +_SIDD_UWORD_OPS+ +_SIDD_UBYTE_OPS+
      +SDL2-GFXPRIMITIVES-SCOPE+ +SDL2-GFXPRIMITIVES-MICRO+
      +SDL2-GFXPRIMITIVES-MINOR+ +SDL2-GFXPRIMITIVES-MAJOR+
      +SDL-INIT-EVERYTHING+ +SDL-INIT-NOPARACHUTE+ +SDL-INIT-SENSOR+
      +SDL-INIT-EVENTS+ +SDL-INIT-GAMECONTROLLER+ +SDL-INIT-HAPTIC+
      +SDL-INIT-JOYSTICK+ +SDL-INIT-VIDEO+ +SDL-INIT-AUDIO+ +SDL-INIT-TIMER+
      +__DEFAULT_FN_ATTRS_CONSTEXPR+ +_SIDD_UNIT_MASK+ +_SIDD_BIT_MASK+
      +_SIDD_LEAST_SIGNIFICANT+ +_SIDD_MOST_SIGNIFICANT+ +_BITS_TYPESIZES_H+
      +_SIDD_MASKED_POSITIVE_POLARITY+ +__SYSCALL_SLONG_TYPE+
      +_SIDD_MASKED_NEGATIVE_POLARITY+ +_SIDD_NEGATIVE_POLARITY+ +__U64_TYPE+
      +__STD_TYPE+ +_SIDD_CMP_EQUAL_ORDERED+ +__ULONG32_TYPE+
      +_SIDD_POSITIVE_POLARITY+ +__S64_TYPE+ +_SIDD_CMP_RANGES+
      +_SIDD_CMP_EQUAL_EACH+ +__UWORD_TYPE+ +__SLONG32_TYPE+ +__MODE_T_TYPE+
      +__INO64_T_TYPE+ +__FSWORD_T_TYPE+ +__NLINK_T_TYPE+ +__DEV_T_TYPE+
      +__SYSCALL_ULONG_TYPE+ +__INO_T_TYPE+ +__GID_T_TYPE+ +__UID_T_TYPE+
      +__BLKCNT64_T_TYPE+ +__BLKCNT_T_TYPE+ +__FSBLKCNT64_T_TYPE+
      +__FSBLKCNT_T_TYPE+ +__OFF64_T_TYPE+ +__OFF_T_TYPE+ +__RLIM64_T_TYPE+
      +__USECONDS_T_TYPE+ +__RLIM_T_TYPE+ +__PID_T_TYPE+ +__TIME_T_TYPE+
      +_____FPOS64_T_DEFINED+ +__SUSECONDS64_T_TYPE+ +__SUSECONDS_T_TYPE+
      +____FILE_DEFINED+ +__FSFILCNT64_T_TYPE+ +__CLOCK_T_TYPE+
      +__FSFILCNT_T_TYPE+ +__FILE_DEFINED+ +__ID_T_TYPE+
      +__STRUCT_FILE_DEFINED+ +__FSID_T_TYPE+ +__CPU_MASK_TYPE+
      +__SSIZE_T_TYPE+ +__KEY_T_TYPE+ +__DADDR_T_TYPE+ +__BLKSIZE_T_TYPE+
      +__CLOCKID_T_TYPE+ +__TIMER_T_TYPE+
      +__KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64+ +__FD_SETSIZE+ +_BITS_TIME64_H+
      +__TIME64_T_TYPE+ +_STDIO_H+ +__OFF_T_MATCHES_OFF64_T+
      +__INO_T_MATCHES_INO64_T+ +__RLIM_T_MATCHES_RLIM64_T+
      +__STATFS_MATCHES_STATFS64+ +____MBSTATE_T_DEFINED+ +_____FPOS_T_DEFINED+
      +__ONCE_FLAG_INIT+ +__HAVE_PTHREAD_ATTR_T+ +_XABORT_RETRY+
      +_XABORT_EXPLICIT+ +_XBEGIN_STARTED+ +_XABORT_DEBUG+ +_XABORT_NESTED+
      +_XABORT_CAPACITY+ +_XABORT_CONFLICT+ +__DEFAULT_FN_ATTRS_VL128+
      +__DEFAULT_FN_ATTRS_VL256+ +__DEFAULT_FN_ATTRS_F+ +__DEFAULT_FN_ATTRS_Y+
      +__DEFAULT_FN_ATTRS_Z+ +__DEFAULT_FN_ATTRS_Z_MASK+ +_MM_MASK_CVTPS_PH+
      +_MM_MASKZ_CVTPS_PH+ +__INLINE+ +_MM256_MASK_CVTPS_PH+
      +_MM256_MASKZ_CVTPS_PH+ +_INTTYPES_H+ +_STDINT_H+ +_BITS_STDINT_UINTN_H+
      +_MM_HINT_ET1+ +_MM_HINT_ET0+ +__BYTE_ORDER+ +_MM_HINT_NTA+
      +_BITS_ENDIANNESS_H+ +_MM_HINT_T2+ +_MM_HINT_T1+ +__FLOAT_WORD_ORDER+
      +_MM_HINT_T0+ +LITTLE-ENDIAN+ +BIG-ENDIAN+ +_ENDIAN_H+
      +__BIT_TYPES_DEFINED__+ +__LITTLE_ENDIAN+ +_BITS_ENDIAN_H+ +__PDP_ENDIAN+
      +__BIG_ENDIAN+ +_BITS_STDINT_INTN_H+ +__GLIBC_USE_DEPRECATED_GETS+
      +__GLIBC_USE_ISOC2X+ +__USE_FORTIFY_LEVEL+ +__USE_ATFILE+ +__USE_MISC+
      +SDL-BUTTON-RIGHT+ +SDL-BUTTON-X1+ +__TIME_T_DEFINED+ +SDL-BUTTON-X2+
      +SDL-BUTTON-LMASK+ +__CLOCKID_T_DEFINED+ +__USE_XOPEN2K8+
      +SDL-BUTTON-MMASK+ +SDL-BUTTON-RMASK+ +__USE_XOPEN2K+ +SDL-BUTTON-X1MASK+
      +SDL-BUTTON-X2MASK+ +__TIMER_T_DEFINED+ +_DEFAULT_SOURCE+
      +__CLOCK_T_DEFINED+ +__GLIBC_USE_DEPRECATED_SCANF+ +_STDLIB_H+
      +__WORDSIZE+ +SDL-PR-IX64+ +SDL-PR-IU64+ +SDL-PR-IU32+ +SDL-PRIX64+
      +SDL-PR-IS32+ +SDL-FLT-EPSILON+ +_ATFILE_SOURCE+ +SDL-MIN-UINT64+
      +SDL-PR-IS64+ +SDL-MAX-SINT64+ +__USE_POSIX_IMPLICITLY+ +_POSIX_C_SOURCE+
      +SDL-MAX-UINT64+ +SDL-MIN-SINT64+ +_POSIX_SOURCE+ +SDL-MIN-UINT32+
      +SDL-MAX-UINT32+ +__DEFAULT_FN_ATTRS_MMX+ +SDL-PRIX32+ +SDL-PR-IX32+
      +SHAPE-MODE-COLOR-KEY+ +SHAPE-MODE-REVERSE-BINARIZE-ALPHA+
      +SHAPE-MODE-BINARIZE-ALPHA+ +SHAPE-MODE-DEFAULT+ +SDL-FLIP-VERTICAL+
      +SDL-FLIP-HORIZONTAL+ +SDL-FLIP-NONE+ +SDL-TEXTUREMODULATE-ALPHA+
      +SDL-TEXTUREMODULATE-COLOR+ +SDL-TEXTUREMODULATE-NONE+
      +SDL-TEXTUREACCESS-TARGET+ +SDL-TEXTUREACCESS-STREAMING+
      +SDL-TEXTUREACCESS-STATIC+ +SDL-SCALE-MODE-BEST+ +SDL-SCALE-MODE-LINEAR+
      +SDL-SCALE-MODE-NEAREST+ +SDL-RENDERER-TARGETTEXTURE+
      +SDL-RENDERER-PRESENTVSYNC+ +SDL-RENDERER-ACCELERATED+
      +SDL-RENDERER-SOFTWARE+ +SDL-POWERSTATE-CHARGED+
      +SDL-POWERSTATE-CHARGING+ +SDL-POWERSTATE-NO-BATTERY+
      +SDL-POWERSTATE-ON-BATTERY+ +SDL-POWERSTATE-UNKNOWN+
      +SDL-MESSAGEBOX-COLOR-MAX+ +SDL-MESSAGEBOX-COLOR-BUTTON-SELECTED+
      +SDL-MESSAGEBOX-COLOR-BUTTON-BACKGROUND+
      +SDL-MESSAGEBOX-COLOR-BUTTON-BORDER+ +SDL-MESSAGEBOX-COLOR-TEXT+
      +SDL-MESSAGEBOX-COLOR-BACKGROUND+
      +SDL-MESSAGEBOX-BUTTON-ESCAPEKEY-DEFAULT+
      +SDL-MESSAGEBOX-BUTTON-RETURNKEY-DEFAULT+
      +SDL-MESSAGEBOX-BUTTONS-RIGHT-TO-LEFT+
      +SDL-MESSAGEBOX-BUTTONS-LEFT-TO-RIGHT+ +SDL-MESSAGEBOX-INFORMATION+
      +SDL-MESSAGEBOX-WARNING+ +SDL-MESSAGEBOX-ERROR+ +SDL-NUM-LOG-PRIORITIES+
      +SDL-LOG-PRIORITY-CRITICAL+ +SDL-LOG-PRIORITY-ERROR+
      +SDL-LOG-PRIORITY-WARN+ +SDL-LOG-PRIORITY-INFO+ +SDL-LOG-PRIORITY-DEBUG+
      +SDL-LOG-PRIORITY-VERBOSE+ +SDL-LOG-CATEGORY-CUSTOM+
      +SDL-LOG-CATEGORY-RESERVED10+ +SDL-LOG-CATEGORY-RESERVED9+
      +SDL-LOG-CATEGORY-RESERVED8+ +SDL-LOG-CATEGORY-RESERVED7+
      +SDL-LOG-CATEGORY-RESERVED6+ +SDL-LOG-CATEGORY-RESERVED5+
      +SDL-LOG-CATEGORY-RESERVED4+ +SDL-LOG-CATEGORY-RESERVED3+
      +SDL-LOG-CATEGORY-RESERVED2+ +SDL-LOG-CATEGORY-RESERVED1+
      +SDL-LOG-CATEGORY-TEST+ +SDL-LOG-CATEGORY-INPUT+
      +SDL-LOG-CATEGORY-RENDER+ +SDL-LOG-CATEGORY-VIDEO+
      +SDL-LOG-CATEGORY-AUDIO+ +SDL-LOG-CATEGORY-SYSTEM+
      +SDL-LOG-CATEGORY-ASSERT+ +SDL-LOG-CATEGORY-ERROR+
      +SDL-LOG-CATEGORY-APPLICATION+ +SDL-HINT-OVERRIDE+ +SDL-HINT-NORMAL+
      +SDL-HINT-DEFAULT+ +SDL-GETEVENT+ +SDL-PEEKEVENT+ +SDL-ADDEVENT+
      +SDL-LASTEVENT+ +SDL-USEREVENT+ +SDL-POLLSENTINEL+
      +SDL-RENDER-DEVICE-RESET+ +SDL-RENDER-TARGETS-RESET+ +SDL-SENSORUPDATE+
      +SDL-AUDIODEVICEREMOVED+ +SDL-AUDIODEVICEADDED+ +SDL-DROPCOMPLETE+
      +SDL-DROPBEGIN+ +SDL-DROPTEXT+ +SDL-DROPFILE+ +SDL-CLIPBOARDUPDATE+
      +SDL-MULTIGESTURE+ +SDL-DOLLARRECORD+ +SDL-DOLLARGESTURE+
      +SDL-FINGERMOTION+ +SDL-FINGERUP+ +SDL-FINGERDOWN+
      +SDL-CONTROLLERSTEAMHANDLEUPDATED+
      +SDL-CONTROLLERUPDATECOMPLETE-RESERVED-FOR-SDL3+
      +SDL-CONTROLLERSENSORUPDATE+ +SDL-CONTROLLERTOUCHPADUP+
      +SDL-CONTROLLERTOUCHPADMOTION+ +SDL-CONTROLLERTOUCHPADDOWN+
      +SDL-CONTROLLERDEVICEREMAPPED+ +SDL-CONTROLLERDEVICEREMOVED+
      +SDL-CONTROLLERDEVICEADDED+ +SDL-CONTROLLERBUTTONUP+
      +SDL-CONTROLLERBUTTONDOWN+ +SDL-CONTROLLERAXISMOTION+
      +SDL-JOYBATTERYUPDATED+ +SDL-JOYDEVICEREMOVED+ +SDL-JOYDEVICEADDED+
      +SDL-JOYBUTTONUP+ +SDL-JOYBUTTONDOWN+ +SDL-JOYHATMOTION+
      +SDL-JOYBALLMOTION+ +SDL-JOYAXISMOTION+ +SDL-MOUSEWHEEL+
      +SDL-MOUSEBUTTONUP+ +SDL-MOUSEBUTTONDOWN+ +SDL-MOUSEMOTION+
      +SDL-TEXTEDITING-EXT+ +SDL-KEYMAPCHANGED+ +SDL-TEXTINPUT+
      +SDL-TEXTEDITING+ +SDL-KEYUP+ +SDL-KEYDOWN+ +SDL-SYSWMEVENT+
      +SDL-WINDOWEVENT+ +SDL-DISPLAYEVENT+ +SDL-LOCALECHANGED+
      +SDL-APP-DIDENTERFOREGROUND+ +SDL-APP-WILLENTERFOREGROUND+
      +SDL-APP-DIDENTERBACKGROUND+ +SDL-APP-WILLENTERBACKGROUND+
      +SDL-APP-LOWMEMORY+ +SDL-APP-TERMINATING+ +SDL-QUIT+ +SDL-FIRSTEVENT+
      +SDL-TOUCH-DEVICE-INDIRECT-RELATIVE+ +SDL-TOUCH-DEVICE-INDIRECT-ABSOLUTE+
      +SDL-TOUCH-DEVICE-DIRECT+ +SDL-TOUCH-DEVICE-INVALID+
      +SDL-CONTROLLER-BUTTON-MAX+ +SDL-CONTROLLER-BUTTON-TOUCHPAD+
      +SDL-CONTROLLER-BUTTON-PADDLE4+ +SDL-CONTROLLER-BUTTON-PADDLE3+
      +SDL-CONTROLLER-BUTTON-PADDLE2+ +SDL-CONTROLLER-BUTTON-PADDLE1+
      +SDL-CONTROLLER-BUTTON-MISC1+ +SDL-CONTROLLER-BUTTON-DPAD-RIGHT+
      +SDL-CONTROLLER-BUTTON-DPAD-LEFT+ +SDL-CONTROLLER-BUTTON-DPAD-DOWN+
      +SDL-CONTROLLER-BUTTON-DPAD-UP+ +SDL-CONTROLLER-BUTTON-RIGHTSHOULDER+
      +SDL-CONTROLLER-BUTTON-LEFTSHOULDER+ +SDL-CONTROLLER-BUTTON-RIGHTSTICK+
      +SDL-CONTROLLER-BUTTON-LEFTSTICK+ +SDL-CONTROLLER-BUTTON-START+
      +SDL-CONTROLLER-BUTTON-GUIDE+ +SDL-CONTROLLER-BUTTON-BACK+
      +SDL-CONTROLLER-BUTTON-Y+ +SDL-CONTROLLER-BUTTON-X+
      +SDL-CONTROLLER-BUTTON-B+ +SDL-CONTROLLER-BUTTON-A+
      +SDL-CONTROLLER-BUTTON-INVALID+ +SDL-CONTROLLER-AXIS-MAX+
      +SDL-CONTROLLER-AXIS-TRIGGERRIGHT+ +SDL-CONTROLLER-AXIS-TRIGGERLEFT+
      +SDL-CONTROLLER-AXIS-RIGHTY+ +SDL-CONTROLLER-AXIS-RIGHTX+
      +SDL-CONTROLLER-AXIS-LEFTY+ +SDL-CONTROLLER-AXIS-LEFTX+
      +SDL-CONTROLLER-AXIS-INVALID+ +SDL-CONTROLLER-BINDTYPE-HAT+
      +SDL-CONTROLLER-BINDTYPE-AXIS+ +SDL-CONTROLLER-BINDTYPE-BUTTON+
      +SDL-CONTROLLER-BINDTYPE-NONE+ +SDL-CONTROLLER-TYPE-MAX+
      +SDL-CONTROLLER-TYPE-NINTENDO-SWITCH-JOYCON-PAIR+
      +SDL-CONTROLLER-TYPE-NINTENDO-SWITCH-JOYCON-RIGHT+
      +SDL-CONTROLLER-TYPE-NINTENDO-SWITCH-JOYCON-LEFT+
      +SDL-CONTROLLER-TYPE-NVIDIA-SHIELD+ +SDL-CONTROLLER-TYPE-GOOGLE-STADIA+
      +SDL-CONTROLLER-TYPE-AMAZON-LUNA+ +SDL-CONTROLLER-TYPE-PS5+
      +SDL-CONTROLLER-TYPE-VIRTUAL+ +SDL-CONTROLLER-TYPE-NINTENDO-SWITCH-PRO+
      +SDL-CONTROLLER-TYPE-PS4+ +SDL-CONTROLLER-TYPE-PS3+
      +SDL-CONTROLLER-TYPE-XBOXONE+ +SDL-CONTROLLER-TYPE-XBOX360+
      +SDL-CONTROLLER-TYPE-UNKNOWN+ +SDL-SENSOR-GYRO-R+ +SDL-SENSOR-ACCEL-R+
      +SDL-SENSOR-GYRO-L+ +SDL-SENSOR-ACCEL-L+ +SDL-SENSOR-GYRO+
      +SDL-SENSOR-ACCEL+ +SDL-SENSOR-UNKNOWN+ +SDL-SENSOR-INVALID+
      +SDL-JOYSTICK-POWER-MAX+ +SDL-JOYSTICK-POWER-WIRED+
      +SDL-JOYSTICK-POWER-FULL+ +SDL-JOYSTICK-POWER-MEDIUM+
      +SDL-JOYSTICK-POWER-LOW+ +SDL-JOYSTICK-POWER-EMPTY+
      +SDL-JOYSTICK-POWER-UNKNOWN+ +SDL-JOYSTICK-TYPE-THROTTLE+
      +SDL-JOYSTICK-TYPE-ARCADE-PAD+ +SDL-JOYSTICK-TYPE-DRUM-KIT+
      +SDL-JOYSTICK-TYPE-GUITAR+ +SDL-JOYSTICK-TYPE-DANCE-PAD+
      +SDL-JOYSTICK-TYPE-FLIGHT-STICK+ +SDL-JOYSTICK-TYPE-ARCADE-STICK+
      +SDL-JOYSTICK-TYPE-WHEEL+ +SDL-JOYSTICK-TYPE-GAMECONTROLLER+
      +SDL-JOYSTICK-TYPE-UNKNOWN+ +SDL-MOUSEWHEEL-FLIPPED+
      +SDL-MOUSEWHEEL-NORMAL+ +SDL-NUM-SYSTEM-CURSORS+ +SDL-SYSTEM-CURSOR-HAND+
      +SDL-SYSTEM-CURSOR-NO+ +SDL-SYSTEM-CURSOR-SIZEALL+
      +SDL-SYSTEM-CURSOR-SIZENS+ +SDL-SYSTEM-CURSOR-SIZEWE+
      +SDL-SYSTEM-CURSOR-SIZENESW+ +SDL-SYSTEM-CURSOR-SIZENWSE+
      +SDL-SYSTEM-CURSOR-WAITARROW+ +SDL-SYSTEM-CURSOR-CROSSHAIR+
      +SDL-SYSTEM-CURSOR-WAIT+ +SDL-SYSTEM-CURSOR-IBEAM+
      +SDL-SYSTEM-CURSOR-ARROW+ +KMOD-RESERVED+ +KMOD-GUI+ +KMOD-ALT+
      +KMOD-SHIFT+ +KMOD-CTRL+ +KMOD-SCROLL+ +KMOD-MODE+ +KMOD-CAPS+ +KMOD-NUM+
      +KMOD-RGUI+ +KMOD-LGUI+ +KMOD-RALT+ +KMOD-LALT+ +KMOD-RCTRL+ +KMOD-LCTRL+
      +KMOD-RSHIFT+ +KMOD-LSHIFT+ +KMOD-NONE+ +SDLK-ENDCALL+ +SDLK-CALL+
      +SDLK-SOFTRIGHT+ +SDLK-SOFTLEFT+ +SDLK-AUDIOFASTFORWARD+
      +SDLK-AUDIOREWIND+ +SDLK-APP2+ +SDLK-APP1+ +SDLK-SLEEP+ +SDLK-EJECT+
      +SDLK-KBDILLUMUP+ +SDLK-KBDILLUMDOWN+ +SDLK-KBDILLUMTOGGLE+
      +SDLK-DISPLAYSWITCH+ +SDLK-BRIGHTNESSUP+ +SDLK-BRIGHTNESSDOWN+
      +SDLK-AC-BOOKMARKS+ +SDLK-AC-REFRESH+ +SDLK-AC-STOP+ +SDLK-AC-FORWARD+
      +SDLK-AC-BACK+ +SDLK-AC-HOME+ +SDLK-AC-SEARCH+ +SDLK-COMPUTER+
      +SDLK-CALCULATOR+ +SDLK-MAIL+ +SDLK-WWW+ +SDLK-MEDIASELECT+
      +SDLK-AUDIOMUTE+ +SDLK-AUDIOPLAY+ +SDLK-AUDIOSTOP+ +SDLK-AUDIOPREV+
      +SDLK-AUDIONEXT+ +SDLK-MODE+ +SDLK-RGUI+ +SDLK-RALT+ +SDLK-RSHIFT+
      +SDLK-RCTRL+ +SDLK-LGUI+ +SDLK-LALT+ +SDLK-LSHIFT+ +SDLK-LCTRL+
      +SDLK-KP-HEXADECIMAL+ +SDLK-KP-DECIMAL+ +SDLK-KP-OCTAL+ +SDLK-KP-BINARY+
      +SDLK-KP-CLEARENTRY+ +SDLK-KP-CLEAR+ +SDLK-KP-PLUSMINUS+
      +SDLK-KP-MEMDIVIDE+ +SDLK-KP-MEMMULTIPLY+ +SDLK-KP-MEMSUBTRACT+
      +SDLK-KP-MEMADD+ +SDLK-KP-MEMCLEAR+ +SDLK-KP-MEMRECALL+
      +SDLK-KP-MEMSTORE+ +SDLK-KP-EXCLAM+ +SDLK-KP-AT+ +SDLK-KP-SPACE+
      +SDLK-KP-HASH+ +SDLK-KP-COLON+ +SDLK-KP-DBLVERTICALBAR+
      +SDLK-KP-VERTICALBAR+ +SDLK-KP-DBLAMPERSAND+ +SDLK-KP-AMPERSAND+
      +SDLK-KP-GREATER+ +SDLK-KP-LESS+ +SDLK-KP-PERCENT+ +SDLK-KP-POWER+
      +SDLK-KP-XOR+ +SDLK-KP-F+ +SDLK-KP-E+ +SDLK-KP-D+ +SDLK-KP-C+ +SDLK-KP-B+
      +SDLK-KP-A+ +SDLK-KP-BACKSPACE+ +SDLK-KP-TAB+ +SDLK-KP-RIGHTBRACE+
      +SDLK-KP-LEFTBRACE+ +SDLK-KP-RIGHTPAREN+ +SDLK-KP-LEFTPAREN+
      +SDLK-CURRENCYSUBUNIT+ +SDLK-CURRENCYUNIT+ +SDLK-DECIMALSEPARATOR+
      +SDLK-THOUSANDSSEPARATOR+ +SDLK-KP-000+ +SDLK-KP-00+ +SDLK-EXSEL+
      +SDLK-CRSEL+ +SDLK-CLEARAGAIN+ +SDLK-OPER+ +SDLK-OUT+ +SDLK-SEPARATOR+
      +SDLK-RETURN2+ +SDLK-PRIOR+ +SDLK-CLEAR+ +SDLK-CANCEL+ +SDLK-SYSREQ+
      +SDLK-ALTERASE+ +SDLK-KP-EQUALSAS400+ +SDLK-KP-COMMA+ +SDLK-VOLUMEDOWN+
      +SDLK-VOLUMEUP+ +SDLK-MUTE+ +SDLK-FIND+ +SDLK-PASTE+ +SDLK-COPY+
      +SDLK-CUT+ +SDLK-UNDO+ +SDLK-AGAIN+ +SDLK-STOP+ +SDLK-SELECT+ +SDLK-MENU+
      +SDLK-HELP+ +SDLK-EXECUTE+ +SDLK-F24+ +SDLK-F23+ +SDLK-F22+ +SDLK-F21+
      +SDLK-F20+ +SDLK-F19+ +SDLK-F18+ +SDLK-F17+ +SDLK-F16+ +SDLK-F15+
      +SDLK-F14+ +SDLK-F13+ +SDLK-KP-EQUALS+ +SDLK-POWER+ +SDLK-APPLICATION+
      +SDLK-KP-PERIOD+ +SDLK-KP-0+ +SDLK-KP-9+ +SDLK-KP-8+ +SDLK-KP-7+
      +SDLK-KP-6+ +SDLK-KP-5+ +SDLK-KP-4+ +SDLK-KP-3+ +SDLK-KP-2+ +SDLK-KP-1+
      +SDLK-KP-ENTER+ +SDLK-KP-PLUS+ +SDLK-KP-MINUS+ +SDLK-KP-MULTIPLY+
      +SDLK-KP-DIVIDE+ +SDLK-NUMLOCKCLEAR+ +SDLK-UP+ +SDLK-DOWN+ +SDLK-LEFT+
      +SDLK-RIGHT+ +SDLK-PAGEDOWN+ +SDLK-END+ +SDLK-DELETE+ +SDLK-PAGEUP+
      +SDLK-HOME+ +SDLK-INSERT+ +SDLK-PAUSE+ +SDLK-SCROLLLOCK+
      +SDLK-PRINTSCREEN+ +SDLK-F12+ +SDLK-F11+ +SDLK-F10+ +SDLK-F9+ +SDLK-F8+
      +SDLK-F7+ +SDLK-F6+ +SDLK-F5+ +SDLK-F4+ +SDLK-F3+ +SDLK-F2+ +SDLK-F1+
      +SDLK-CAPSLOCK+ +SDLK-Z+ +SDLK-Y+ +SDLK-X+ +SDLK-W+ +SDLK-V+ +SDLK-U+
      +SDLK-T+ +SDLK-S+ +SDLK-R+ +SDLK-Q+ +SDLK-P+ +SDLK-O+ +SDLK-N+ +SDLK-M+
      +SDLK-L+ +SDLK-K+ +SDLK-J+ +SDLK-I+ +SDLK-H+ +SDLK-G+ +SDLK-F+ +SDLK-E+
      +SDLK-D+ +SDLK-C+ +SDLK-B+ +SDLK-A+ +SDLK-BACKQUOTE+ +SDLK-UNDERSCORE+
      +SDLK-CARET+ +SDLK-RIGHTBRACKET+ +SDLK-BACKSLASH+ +SDLK-LEFTBRACKET+
      +SDLK-AT+ +SDLK-QUESTION+ +SDLK-GREATER+ +SDLK-EQUALS+ +SDLK-LESS+
      +SDLK-SEMICOLON+ +SDLK-COLON+ +SDLK-9+ +SDLK-8+ +SDLK-7+ +SDLK-6+
      +SDLK-5+ +SDLK-4+ +SDLK-3+ +SDLK-2+ +SDLK-1+ +SDLK-0+ +SDLK-SLASH+
      +SDLK-PERIOD+ +SDLK-MINUS+ +SDLK-COMMA+ +SDLK-PLUS+ +SDLK-ASTERISK+
      +SDLK-RIGHTPAREN+ +SDLK-LEFTPAREN+ +SDLK-QUOTE+ +SDLK-AMPERSAND+
      +SDLK-DOLLAR+ +SDLK-PERCENT+ +SDLK-HASH+ +SDLK-QUOTEDBL+ +SDLK-EXCLAIM+
      +SDLK-SPACE+ +SDLK-TAB+ +SDLK-BACKSPACE+ +SDLK-ESCAPE+ +SDLK-RETURN+
      +SDLK-UNKNOWN+ +SDL-NUM-SCANCODES+ +SDL-SCANCODE-ENDCALL+
      +SDL-SCANCODE-CALL+ +SDL-SCANCODE-SOFTRIGHT+ +SDL-SCANCODE-SOFTLEFT+
      +SDL-SCANCODE-AUDIOFASTFORWARD+ +SDL-SCANCODE-AUDIOREWIND+
      +SDL-SCANCODE-APP2+ +SDL-SCANCODE-APP1+ +SDL-SCANCODE-SLEEP+
      +SDL-SCANCODE-EJECT+ +SDL-SCANCODE-KBDILLUMUP+
      +SDL-SCANCODE-KBDILLUMDOWN+ +SDL-SCANCODE-KBDILLUMTOGGLE+
      +SDL-SCANCODE-DISPLAYSWITCH+ +SDL-SCANCODE-BRIGHTNESSUP+
      +SDL-SCANCODE-BRIGHTNESSDOWN+ +SDL-SCANCODE-AC-BOOKMARKS+
      +SDL-SCANCODE-AC-REFRESH+ +SDL-SCANCODE-AC-STOP+
      +SDL-SCANCODE-AC-FORWARD+ +SDL-SCANCODE-AC-BACK+ +SDL-SCANCODE-AC-HOME+
      +SDL-SCANCODE-AC-SEARCH+ +SDL-SCANCODE-COMPUTER+
      +SDL-SCANCODE-CALCULATOR+ +SDL-SCANCODE-MAIL+ +SDL-SCANCODE-WWW+
      +SDL-SCANCODE-MEDIASELECT+ +SDL-SCANCODE-AUDIOMUTE+
      +SDL-SCANCODE-AUDIOPLAY+ +SDL-SCANCODE-AUDIOSTOP+
      +SDL-SCANCODE-AUDIOPREV+ +SDL-SCANCODE-AUDIONEXT+ +SDL-SCANCODE-MODE+
      +SDL-SCANCODE-RGUI+ +SDL-SCANCODE-RALT+ +SDL-SCANCODE-RSHIFT+
      +SDL-SCANCODE-RCTRL+ +SDL-SCANCODE-LGUI+ +SDL-SCANCODE-LALT+
      +SDL-SCANCODE-LSHIFT+ +SDL-SCANCODE-LCTRL+ +SDL-SCANCODE-KP-HEXADECIMAL+
      +SDL-SCANCODE-KP-DECIMAL+ +SDL-SCANCODE-KP-OCTAL+
      +SDL-SCANCODE-KP-BINARY+ +SDL-SCANCODE-KP-CLEARENTRY+
      +SDL-SCANCODE-KP-CLEAR+ +SDL-SCANCODE-KP-PLUSMINUS+
      +SDL-SCANCODE-KP-MEMDIVIDE+ +SDL-SCANCODE-KP-MEMMULTIPLY+
      +SDL-SCANCODE-KP-MEMSUBTRACT+ +SDL-SCANCODE-KP-MEMADD+
      +SDL-SCANCODE-KP-MEMCLEAR+ +SDL-SCANCODE-KP-MEMRECALL+
      +SDL-SCANCODE-KP-MEMSTORE+ +SDL-SCANCODE-KP-EXCLAM+ +SDL-SCANCODE-KP-AT+
      +SDL-SCANCODE-KP-SPACE+ +SDL-SCANCODE-KP-HASH+ +SDL-SCANCODE-KP-COLON+
      +SDL-SCANCODE-KP-DBLVERTICALBAR+ +SDL-SCANCODE-KP-VERTICALBAR+
      +SDL-SCANCODE-KP-DBLAMPERSAND+ +SDL-SCANCODE-KP-AMPERSAND+
      +SDL-SCANCODE-KP-GREATER+ +SDL-SCANCODE-KP-LESS+
      +SDL-SCANCODE-KP-PERCENT+ +SDL-SCANCODE-KP-POWER+ +SDL-SCANCODE-KP-XOR+
      +SDL-SCANCODE-KP-F+ +SDL-SCANCODE-KP-E+ +SDL-SCANCODE-KP-D+
      +SDL-SCANCODE-KP-C+ +SDL-SCANCODE-KP-B+ +SDL-SCANCODE-KP-A+
      +SDL-SCANCODE-KP-BACKSPACE+ +SDL-SCANCODE-KP-TAB+
      +SDL-SCANCODE-KP-RIGHTBRACE+ +SDL-SCANCODE-KP-LEFTBRACE+
      +SDL-SCANCODE-KP-RIGHTPAREN+ +SDL-SCANCODE-KP-LEFTPAREN+
      +SDL-SCANCODE-CURRENCYSUBUNIT+ +SDL-SCANCODE-CURRENCYUNIT+
      +SDL-SCANCODE-DECIMALSEPARATOR+ +SDL-SCANCODE-THOUSANDSSEPARATOR+
      +SDL-SCANCODE-KP-000+ +SDL-SCANCODE-KP-00+ +SDL-SCANCODE-EXSEL+
      +SDL-SCANCODE-CRSEL+ +SDL-SCANCODE-CLEARAGAIN+ +SDL-SCANCODE-OPER+
      +SDL-SCANCODE-OUT+ +SDL-SCANCODE-SEPARATOR+ +SDL-SCANCODE-RETURN2+
      +SDL-SCANCODE-PRIOR+ +SDL-SCANCODE-CLEAR+ +SDL-SCANCODE-CANCEL+
      +SDL-SCANCODE-SYSREQ+ +SDL-SCANCODE-ALTERASE+ +SDL-SCANCODE-LANG9+
      +SDL-SCANCODE-LANG8+ +SDL-SCANCODE-LANG7+ +SDL-SCANCODE-LANG6+
      +SDL-SCANCODE-LANG5+ +SDL-SCANCODE-LANG4+ +SDL-SCANCODE-LANG3+
      +SDL-SCANCODE-LANG2+ +SDL-SCANCODE-LANG1+ +SDL-SCANCODE-INTERNATIONAL9+
      +SDL-SCANCODE-INTERNATIONAL8+ +SDL-SCANCODE-INTERNATIONAL7+
      +SDL-SCANCODE-INTERNATIONAL6+ +SDL-SCANCODE-INTERNATIONAL5+
      +SDL-SCANCODE-INTERNATIONAL4+ +SDL-SCANCODE-INTERNATIONAL3+
      +SDL-SCANCODE-INTERNATIONAL2+ +SDL-SCANCODE-INTERNATIONAL1+
      +SDL-SCANCODE-KP-EQUALSAS400+ +SDL-SCANCODE-KP-COMMA+
      +SDL-SCANCODE-VOLUMEDOWN+ +SDL-SCANCODE-VOLUMEUP+ +SDL-SCANCODE-MUTE+
      +SDL-SCANCODE-FIND+ +SDL-SCANCODE-PASTE+ +SDL-SCANCODE-COPY+
      +SDL-SCANCODE-CUT+ +SDL-SCANCODE-UNDO+ +SDL-SCANCODE-AGAIN+
      +SDL-SCANCODE-STOP+ +SDL-SCANCODE-SELECT+ +SDL-SCANCODE-MENU+
      +SDL-SCANCODE-HELP+ +SDL-SCANCODE-EXECUTE+ +SDL-SCANCODE-F24+
      +SDL-SCANCODE-F23+ +SDL-SCANCODE-F22+ +SDL-SCANCODE-F21+
      +SDL-SCANCODE-F20+ +SDL-SCANCODE-F19+ +SDL-SCANCODE-F18+
      +SDL-SCANCODE-F17+ +SDL-SCANCODE-F16+ +SDL-SCANCODE-F15+
      +SDL-SCANCODE-F14+ +SDL-SCANCODE-F13+ +SDL-SCANCODE-KP-EQUALS+
      +SDL-SCANCODE-POWER+ +SDL-SCANCODE-APPLICATION+
      +SDL-SCANCODE-NONUSBACKSLASH+ +SDL-SCANCODE-KP-PERIOD+
      +SDL-SCANCODE-KP-0+ +SDL-SCANCODE-KP-9+ +SDL-SCANCODE-KP-8+
      +SDL-SCANCODE-KP-7+ +SDL-SCANCODE-KP-6+ +SDL-SCANCODE-KP-5+
      +SDL-SCANCODE-KP-4+ +SDL-SCANCODE-KP-3+ +SDL-SCANCODE-KP-2+
      +SDL-SCANCODE-KP-1+ +SDL-SCANCODE-KP-ENTER+ +SDL-SCANCODE-KP-PLUS+
      +SDL-SCANCODE-KP-MINUS+ +SDL-SCANCODE-KP-MULTIPLY+
      +SDL-SCANCODE-KP-DIVIDE+ +SDL-SCANCODE-NUMLOCKCLEAR+ +SDL-SCANCODE-UP+
      +SDL-SCANCODE-DOWN+ +SDL-SCANCODE-LEFT+ +SDL-SCANCODE-RIGHT+
      +SDL-SCANCODE-PAGEDOWN+ +SDL-SCANCODE-END+ +SDL-SCANCODE-DELETE+
      +SDL-SCANCODE-PAGEUP+ +SDL-SCANCODE-HOME+ +SDL-SCANCODE-INSERT+
      +SDL-SCANCODE-PAUSE+ +SDL-SCANCODE-SCROLLLOCK+ +SDL-SCANCODE-PRINTSCREEN+
      +SDL-SCANCODE-F12+ +SDL-SCANCODE-F11+ +SDL-SCANCODE-F10+
      +SDL-SCANCODE-F9+ +SDL-SCANCODE-F8+ +SDL-SCANCODE-F7+ +SDL-SCANCODE-F6+
      +SDL-SCANCODE-F5+ +SDL-SCANCODE-F4+ +SDL-SCANCODE-F3+ +SDL-SCANCODE-F2+
      +SDL-SCANCODE-F1+ +SDL-SCANCODE-CAPSLOCK+ +SDL-SCANCODE-SLASH+
      +SDL-SCANCODE-PERIOD+ +SDL-SCANCODE-COMMA+ +SDL-SCANCODE-GRAVE+
      +SDL-SCANCODE-APOSTROPHE+ +SDL-SCANCODE-SEMICOLON+
      +SDL-SCANCODE-NONUSHASH+ +SDL-SCANCODE-BACKSLASH+
      +SDL-SCANCODE-RIGHTBRACKET+ +SDL-SCANCODE-LEFTBRACKET+
      +SDL-SCANCODE-EQUALS+ +SDL-SCANCODE-MINUS+ +SDL-SCANCODE-SPACE+
      +SDL-SCANCODE-TAB+ +SDL-SCANCODE-BACKSPACE+ +SDL-SCANCODE-ESCAPE+
      +SDL-SCANCODE-RETURN+ +SDL-SCANCODE-0+ +SDL-SCANCODE-9+ +SDL-SCANCODE-8+
      +SDL-SCANCODE-7+ +SDL-SCANCODE-6+ +SDL-SCANCODE-5+ +SDL-SCANCODE-4+
      +SDL-SCANCODE-3+ +SDL-SCANCODE-2+ +SDL-SCANCODE-1+ +SDL-SCANCODE-Z+
      +SDL-SCANCODE-Y+ +SDL-SCANCODE-X+ +SDL-SCANCODE-W+ +SDL-SCANCODE-V+
      +SDL-SCANCODE-U+ +SDL-SCANCODE-T+ +SDL-SCANCODE-S+ +SDL-SCANCODE-R+
      +SDL-SCANCODE-Q+ +SDL-SCANCODE-P+ +SDL-SCANCODE-O+ +SDL-SCANCODE-N+
      +SDL-SCANCODE-M+ +SDL-SCANCODE-L+ +SDL-SCANCODE-K+ +SDL-SCANCODE-J+
      +SDL-SCANCODE-I+ +SDL-SCANCODE-H+ +SDL-SCANCODE-G+ +SDL-SCANCODE-F+
      +SDL-SCANCODE-E+ +SDL-SCANCODE-D+ +SDL-SCANCODE-C+ +SDL-SCANCODE-B+
      +SDL-SCANCODE-A+ +SDL-SCANCODE-UNKNOWN+ +SDL-HITTEST-RESIZE-LEFT+
      +SDL-HITTEST-RESIZE-BOTTOMLEFT+ +SDL-HITTEST-RESIZE-BOTTOM+
      +SDL-HITTEST-RESIZE-BOTTOMRIGHT+ +SDL-HITTEST-RESIZE-RIGHT+
      +SDL-HITTEST-RESIZE-TOPRIGHT+ +SDL-HITTEST-RESIZE-TOP+
      +SDL-HITTEST-RESIZE-TOPLEFT+ +SDL-HITTEST-DRAGGABLE+ +SDL-HITTEST-NORMAL+
      +SDL-GL-CONTEXT-RESET-LOSE-CONTEXT+
      +SDL-GL-CONTEXT-RESET-NO-NOTIFICATION+
      +SDL-GL-CONTEXT-RELEASE-BEHAVIOR-FLUSH+
      +SDL-GL-CONTEXT-RELEASE-BEHAVIOR-NONE+
      +SDL-GL-CONTEXT-RESET-ISOLATION-FLAG+ +SDL-GL-CONTEXT-ROBUST-ACCESS-FLAG+
      +SDL-GL-CONTEXT-FORWARD-COMPATIBLE-FLAG+ +SDL-GL-CONTEXT-DEBUG-FLAG+
      +SDL-GL-CONTEXT-PROFILE-ES+ +SDL-GL-CONTEXT-PROFILE-COMPATIBILITY+
      +SDL-GL-CONTEXT-PROFILE-CORE+ +SDL-GL-FLOATBUFFERS+
      +SDL-GL-CONTEXT-NO-ERROR+ +SDL-GL-CONTEXT-RESET-NOTIFICATION+
      +SDL-GL-CONTEXT-RELEASE-BEHAVIOR+ +SDL-GL-FRAMEBUFFER-SRGB-CAPABLE+
      +SDL-GL-SHARE-WITH-CURRENT-CONTEXT+ +SDL-GL-CONTEXT-PROFILE-MASK+
      +SDL-GL-CONTEXT-FLAGS+ +SDL-GL-CONTEXT-EGL+
      +SDL-GL-CONTEXT-MINOR-VERSION+ +SDL-GL-CONTEXT-MAJOR-VERSION+
      +SDL-GL-RETAINED-BACKING+ +SDL-GL-ACCELERATED-VISUAL+
      +SDL-GL-MULTISAMPLESAMPLES+ +SDL-GL-MULTISAMPLEBUFFERS+ +SDL-GL-STEREO+
      +SDL-GL-ACCUM-ALPHA-SIZE+ +SDL-GL-ACCUM-BLUE-SIZE+
      +SDL-GL-ACCUM-GREEN-SIZE+ +SDL-GL-ACCUM-RED-SIZE+ +SDL-GL-STENCIL-SIZE+
      +SDL-GL-DEPTH-SIZE+ +SDL-GL-DOUBLEBUFFER+ +SDL-GL-BUFFER-SIZE+
      +SDL-GL-ALPHA-SIZE+ +SDL-GL-BLUE-SIZE+ +SDL-GL-GREEN-SIZE+
      +SDL-GL-RED-SIZE+ +SDL-FLASH-UNTIL-FOCUSED+ +SDL-FLASH-BRIEFLY+
      +SDL-FLASH-CANCEL+ +SDL-ORIENTATION-PORTRAIT-FLIPPED+
      +SDL-ORIENTATION-PORTRAIT+ +SDL-ORIENTATION-LANDSCAPE-FLIPPED+
      +SDL-ORIENTATION-LANDSCAPE+ +SDL-ORIENTATION-UNKNOWN+
      +SDL-DISPLAYEVENT-MOVED+ +SDL-DISPLAYEVENT-DISCONNECTED+
      +SDL-DISPLAYEVENT-CONNECTED+ +SDL-DISPLAYEVENT-ORIENTATION+
      +SDL-DISPLAYEVENT-NONE+ +SDL-WINDOWEVENT-DISPLAY-CHANGED+
      +SDL-WINDOWEVENT-ICCPROF-CHANGED+ +SDL-WINDOWEVENT-HIT-TEST+
      +SDL-WINDOWEVENT-TAKE-FOCUS+ +SDL-WINDOWEVENT-CLOSE+
      +SDL-WINDOWEVENT-FOCUS-LOST+ +SDL-WINDOWEVENT-FOCUS-GAINED+
      +SDL-WINDOWEVENT-LEAVE+ +SDL-WINDOWEVENT-ENTER+
      +SDL-WINDOWEVENT-RESTORED+ +SDL-WINDOWEVENT-MAXIMIZED+
      +SDL-WINDOWEVENT-MINIMIZED+ +SDL-WINDOWEVENT-SIZE-CHANGED+
      +SDL-WINDOWEVENT-RESIZED+ +SDL-WINDOWEVENT-MOVED+
      +SDL-WINDOWEVENT-EXPOSED+ +SDL-WINDOWEVENT-HIDDEN+
      +SDL-WINDOWEVENT-SHOWN+ +SDL-WINDOWEVENT-NONE+ +SDL-WINDOW-INPUT-GRABBED+
      +SDL-WINDOW-METAL+ +SDL-WINDOW-VULKAN+ +SDL-WINDOW-KEYBOARD-GRABBED+
      +SDL-WINDOW-POPUP-MENU+ +SDL-WINDOW-TOOLTIP+ +SDL-WINDOW-UTILITY+
      +SDL-WINDOW-SKIP-TASKBAR+ +SDL-WINDOW-ALWAYS-ON-TOP+
      +SDL-WINDOW-MOUSE-CAPTURE+ +SDL-WINDOW-ALLOW-HIGHDPI+
      +SDL-WINDOW-FOREIGN+ +SDL-WINDOW-FULLSCREEN-DESKTOP+
      +SDL-WINDOW-MOUSE-FOCUS+ +SDL-WINDOW-INPUT-FOCUS+
      +SDL-WINDOW-MOUSE-GRABBED+ +SDL-WINDOW-MAXIMIZED+ +SDL-WINDOW-MINIMIZED+
      +SDL-WINDOW-RESIZABLE+ +SDL-WINDOW-BORDERLESS+ +SDL-WINDOW-HIDDEN+
      +SDL-WINDOW-SHOWN+ +SDL-WINDOW-OPENGL+ +SDL-WINDOW-FULLSCREEN+
      +SDL-YUV-CONVERSION-AUTOMATIC+ +SDL-YUV-CONVERSION-BT709+
      +SDL-YUV-CONVERSION-BT601+ +SDL-YUV-CONVERSION-JPEG+
      +SDL-BLENDFACTOR-ONE-MINUS-DST-ALPHA+ +SDL-BLENDFACTOR-DST-ALPHA+
      +SDL-BLENDFACTOR-ONE-MINUS-DST-COLOR+ +SDL-BLENDFACTOR-DST-COLOR+
      +SDL-BLENDFACTOR-ONE-MINUS-SRC-ALPHA+ +SDL-BLENDFACTOR-SRC-ALPHA+
      +SDL-BLENDFACTOR-ONE-MINUS-SRC-COLOR+ +SDL-BLENDFACTOR-SRC-COLOR+
      +SDL-BLENDFACTOR-ONE+ +SDL-BLENDFACTOR-ZERO+ +SDL-BLENDOPERATION-MAXIMUM+
      +SDL-BLENDOPERATION-MINIMUM+ +SDL-BLENDOPERATION-REV-SUBTRACT+
      +SDL-BLENDOPERATION-SUBTRACT+ +SDL-BLENDOPERATION-ADD+
      +SDL-BLENDMODE-INVALID+ +SDL-BLENDMODE-MUL+ +SDL-BLENDMODE-MOD+
      +SDL-BLENDMODE-ADD+ +SDL-BLENDMODE-BLEND+ +SDL-BLENDMODE-NONE+
      +SDL-PIXELFORMAT-EXTERNAL-OES+ +SDL-PIXELFORMAT-NV21+
      +SDL-PIXELFORMAT-NV12+ +SDL-PIXELFORMAT-YVYU+ +SDL-PIXELFORMAT-UYVY+
      +SDL-PIXELFORMAT-YUY2+ +SDL-PIXELFORMAT-IYUV+ +SDL-PIXELFORMAT-YV12+
      +SDL-PIXELFORMAT-XBGR32+ +SDL-PIXELFORMAT-BGRX32+
      +SDL-PIXELFORMAT-XRGB32+ +SDL-PIXELFORMAT-RGBX32+
      +SDL-PIXELFORMAT-ABGR32+ +SDL-PIXELFORMAT-BGRA32+
      +SDL-PIXELFORMAT-ARGB32+ +SDL-PIXELFORMAT-RGBA32+
      +SDL-PIXELFORMAT-ARGB2101010+ +SDL-PIXELFORMAT-BGRA8888+
      +SDL-PIXELFORMAT-ABGR8888+ +SDL-PIXELFORMAT-RGBA8888+
      +SDL-PIXELFORMAT-ARGB8888+ +SDL-PIXELFORMAT-BGRX8888+
      +SDL-PIXELFORMAT-BGR888+ +SDL-PIXELFORMAT-XBGR8888+
      +SDL-PIXELFORMAT-RGBX8888+ +SDL-PIXELFORMAT-RGB888+
      +SDL-PIXELFORMAT-XRGB8888+ +SDL-PIXELFORMAT-BGR24+
      +SDL-PIXELFORMAT-RGB24+ +SDL-PIXELFORMAT-BGR565+ +SDL-PIXELFORMAT-RGB565+
      +SDL-PIXELFORMAT-BGRA5551+ +SDL-PIXELFORMAT-ABGR1555+
      +SDL-PIXELFORMAT-RGBA5551+ +SDL-PIXELFORMAT-ARGB1555+
      +SDL-PIXELFORMAT-BGRA4444+ +SDL-PIXELFORMAT-ABGR4444+
      +SDL-PIXELFORMAT-RGBA4444+ +SDL-PIXELFORMAT-ARGB4444+
      +SDL-PIXELFORMAT-BGR555+ +SDL-PIXELFORMAT-XBGR1555+
      +SDL-PIXELFORMAT-RGB555+ +SDL-PIXELFORMAT-XRGB1555+
      +SDL-PIXELFORMAT-BGR444+ +SDL-PIXELFORMAT-XBGR4444+
      +SDL-PIXELFORMAT-RGB444+ +SDL-PIXELFORMAT-XRGB4444+
      +SDL-PIXELFORMAT-RGB332+ +SDL-PIXELFORMAT-INDEX8+
      +SDL-PIXELFORMAT-INDEX4MSB+ +SDL-PIXELFORMAT-INDEX4LSB+
      +SDL-PIXELFORMAT-INDEX2MSB+ +SDL-PIXELFORMAT-INDEX2LSB+
      +SDL-PIXELFORMAT-INDEX1MSB+ +SDL-PIXELFORMAT-INDEX1LSB+
      +SDL-PIXELFORMAT-UNKNOWN+ +SDL-PACKEDLAYOUT-1010102+
      +SDL-PACKEDLAYOUT-2101010+ +SDL-PACKEDLAYOUT-8888+ +SDL-PACKEDLAYOUT-565+
      +SDL-PACKEDLAYOUT-5551+ +SDL-PACKEDLAYOUT-1555+ +SDL-PACKEDLAYOUT-4444+
      +SDL-PACKEDLAYOUT-332+ +SDL-PACKEDLAYOUT-NONE+ +SDL-ARRAYORDER-ABGR+
      +SDL-ARRAYORDER-BGRA+ +SDL-ARRAYORDER-BGR+ +SDL-ARRAYORDER-ARGB+
      +SDL-ARRAYORDER-RGBA+ +SDL-ARRAYORDER-RGB+ +SDL-ARRAYORDER-NONE+
      +SDL-PACKEDORDER-BGRA+ +SDL-PACKEDORDER-ABGR+ +SDL-PACKEDORDER-BGRX+
      +SDL-PACKEDORDER-XBGR+ +SDL-PACKEDORDER-RGBA+ +SDL-PACKEDORDER-ARGB+
      +SDL-PACKEDORDER-RGBX+ +SDL-PACKEDORDER-XRGB+ +SDL-PACKEDORDER-NONE+
      +SDL-BITMAPORDER-1234+ +SDL-BITMAPORDER-4321+ +SDL-BITMAPORDER-NONE+
      +SDL-PIXELTYPE-INDEX2+ +SDL-PIXELTYPE-ARRAYF32+ +SDL-PIXELTYPE-ARRAYF16+
      +SDL-PIXELTYPE-ARRAYU32+ +SDL-PIXELTYPE-ARRAYU16+ +SDL-PIXELTYPE-ARRAYU8+
      +SDL-PIXELTYPE-PACKED32+ +SDL-PIXELTYPE-PACKED16+ +SDL-PIXELTYPE-PACKED8+
      +SDL-PIXELTYPE-INDEX8+ +SDL-PIXELTYPE-INDEX4+ +SDL-PIXELTYPE-INDEX1+
      +SDL-PIXELTYPE-UNKNOWN+ +_MM_TERNLOG_C+ +_MM_TERNLOG_B+ +_MM_TERNLOG_A+
      +_MM_MANT_SIGN_NAN+ +_MM_MANT_SIGN_ZERO+ +_MM_MANT_SIGN_SRC+
      +_MM_MANT_NORM_P75_1P5+ +_MM_MANT_NORM_P5_1+ +_MM_MANT_NORM_P5_2+
      +_MM_MANT_NORM_1_2+ +_MM_PERM_DDDD+ +_MM_PERM_DDDC+ +_MM_PERM_DDDB+
      +_MM_PERM_DDDA+ +_MM_PERM_DDCD+ +_MM_PERM_DDCC+ +_MM_PERM_DDCB+
      +_MM_PERM_DDCA+ +_MM_PERM_DDBD+ +_MM_PERM_DDBC+ +_MM_PERM_DDBB+
      +_MM_PERM_DDBA+ +_MM_PERM_DDAD+ +_MM_PERM_DDAC+ +_MM_PERM_DDAB+
      +_MM_PERM_DDAA+ +_MM_PERM_DCDD+ +_MM_PERM_DCDC+ +_MM_PERM_DCDB+
      +_MM_PERM_DCDA+ +_MM_PERM_DCCD+ +_MM_PERM_DCCC+ +_MM_PERM_DCCB+
      +_MM_PERM_DCCA+ +_MM_PERM_DCBD+ +_MM_PERM_DCBC+ +_MM_PERM_DCBB+
      +_MM_PERM_DCBA+ +_MM_PERM_DCAD+ +_MM_PERM_DCAC+ +_MM_PERM_DCAB+
      +_MM_PERM_DCAA+ +_MM_PERM_DBDD+ +_MM_PERM_DBDC+ +_MM_PERM_DBDB+
      +_MM_PERM_DBDA+ +_MM_PERM_DBCD+ +_MM_PERM_DBCC+ +_MM_PERM_DBCB+
      +_MM_PERM_DBCA+ +_MM_PERM_DBBD+ +_MM_PERM_DBBC+ +_MM_PERM_DBBB+
      +_MM_PERM_DBBA+ +_MM_PERM_DBAD+ +_MM_PERM_DBAC+ +_MM_PERM_DBAB+
      +_MM_PERM_DBAA+ +_MM_PERM_DADD+ +_MM_PERM_DADC+ +_MM_PERM_DADB+
      +_MM_PERM_DADA+ +_MM_PERM_DACD+ +_MM_PERM_DACC+ +_MM_PERM_DACB+
      +_MM_PERM_DACA+ +_MM_PERM_DABD+ +_MM_PERM_DABC+ +_MM_PERM_DABB+
      +_MM_PERM_DABA+ +_MM_PERM_DAAD+ +_MM_PERM_DAAC+ +_MM_PERM_DAAB+
      +_MM_PERM_DAAA+ +_MM_PERM_CDDD+ +_MM_PERM_CDDC+ +_MM_PERM_CDDB+
      +_MM_PERM_CDDA+ +_MM_PERM_CDCD+ +_MM_PERM_CDCC+ +_MM_PERM_CDCB+
      +_MM_PERM_CDCA+ +_MM_PERM_CDBD+ +_MM_PERM_CDBC+ +_MM_PERM_CDBB+
      +_MM_PERM_CDBA+ +_MM_PERM_CDAD+ +_MM_PERM_CDAC+ +_MM_PERM_CDAB+
      +_MM_PERM_CDAA+ +_MM_PERM_CCDD+ +_MM_PERM_CCDC+ +_MM_PERM_CCDB+
      +_MM_PERM_CCDA+ +_MM_PERM_CCCD+ +_MM_PERM_CCCC+ +_MM_PERM_CCCB+
      +_MM_PERM_CCCA+ +_MM_PERM_CCBD+ +_MM_PERM_CCBC+ +_MM_PERM_CCBB+
      +_MM_PERM_CCBA+ +_MM_PERM_CCAD+ +_MM_PERM_CCAC+ +_MM_PERM_CCAB+
      +_MM_PERM_CCAA+ +_MM_PERM_CBDD+ +_MM_PERM_CBDC+ +_MM_PERM_CBDB+
      +_MM_PERM_CBDA+ +_MM_PERM_CBCD+ +_MM_PERM_CBCC+ +_MM_PERM_CBCB+
      +_MM_PERM_CBCA+ +_MM_PERM_CBBD+ +_MM_PERM_CBBC+ +_MM_PERM_CBBB+
      +_MM_PERM_CBBA+ +_MM_PERM_CBAD+ +_MM_PERM_CBAC+ +_MM_PERM_CBAB+
      +_MM_PERM_CBAA+ +_MM_PERM_CADD+ +_MM_PERM_CADC+ +_MM_PERM_CADB+
      +_MM_PERM_CADA+ +_MM_PERM_CACD+ +_MM_PERM_CACC+ +_MM_PERM_CACB+
      +_MM_PERM_CACA+ +_MM_PERM_CABD+ +_MM_PERM_CABC+ +_MM_PERM_CABB+
      +_MM_PERM_CABA+ +_MM_PERM_CAAD+ +_MM_PERM_CAAC+ +_MM_PERM_CAAB+
      +_MM_PERM_CAAA+ +_MM_PERM_BDDD+ +_MM_PERM_BDDC+ +_MM_PERM_BDDB+
      +_MM_PERM_BDDA+ +_MM_PERM_BDCD+ +_MM_PERM_BDCC+ +_MM_PERM_BDCB+
      +_MM_PERM_BDCA+ +_MM_PERM_BDBD+ +_MM_PERM_BDBC+ +_MM_PERM_BDBB+
      +_MM_PERM_BDBA+ +_MM_PERM_BDAD+ +_MM_PERM_BDAC+ +_MM_PERM_BDAB+
      +_MM_PERM_BDAA+ +_MM_PERM_BCDD+ +_MM_PERM_BCDC+ +_MM_PERM_BCDB+
      +_MM_PERM_BCDA+ +_MM_PERM_BCCD+ +_MM_PERM_BCCC+ +_MM_PERM_BCCB+
      +_MM_PERM_BCCA+ +_MM_PERM_BCBD+ +_MM_PERM_BCBC+ +_MM_PERM_BCBB+
      +_MM_PERM_BCBA+ +_MM_PERM_BCAD+ +_MM_PERM_BCAC+ +_MM_PERM_BCAB+
      +_MM_PERM_BCAA+ +_MM_PERM_BBDD+ +_MM_PERM_BBDC+ +_MM_PERM_BBDB+
      +_MM_PERM_BBDA+ +_MM_PERM_BBCD+ +_MM_PERM_BBCC+ +_MM_PERM_BBCB+
      +_MM_PERM_BBCA+ +_MM_PERM_BBBD+ +_MM_PERM_BBBC+ +_MM_PERM_BBBB+
      +_MM_PERM_BBBA+ +_MM_PERM_BBAD+ +_MM_PERM_BBAC+ +_MM_PERM_BBAB+
      +_MM_PERM_BBAA+ +_MM_PERM_BADD+ +_MM_PERM_BADC+ +_MM_PERM_BADB+
      +_MM_PERM_BADA+ +_MM_PERM_BACD+ +_MM_PERM_BACC+ +_MM_PERM_BACB+
      +_MM_PERM_BACA+ +_MM_PERM_BABD+ +_MM_PERM_BABC+ +_MM_PERM_BABB+
      +_MM_PERM_BABA+ +_MM_PERM_BAAD+ +_MM_PERM_BAAC+ +_MM_PERM_BAAB+
      +_MM_PERM_BAAA+ +_MM_PERM_ADDD+ +_MM_PERM_ADDC+ +_MM_PERM_ADDB+
      +_MM_PERM_ADDA+ +_MM_PERM_ADCD+ +_MM_PERM_ADCC+ +_MM_PERM_ADCB+
      +_MM_PERM_ADCA+ +_MM_PERM_ADBD+ +_MM_PERM_ADBC+ +_MM_PERM_ADBB+
      +_MM_PERM_ADBA+ +_MM_PERM_ADAD+ +_MM_PERM_ADAC+ +_MM_PERM_ADAB+
      +_MM_PERM_ADAA+ +_MM_PERM_ACDD+ +_MM_PERM_ACDC+ +_MM_PERM_ACDB+
      +_MM_PERM_ACDA+ +_MM_PERM_ACCD+ +_MM_PERM_ACCC+ +_MM_PERM_ACCB+
      +_MM_PERM_ACCA+ +_MM_PERM_ACBD+ +_MM_PERM_ACBC+ +_MM_PERM_ACBB+
      +_MM_PERM_ACBA+ +_MM_PERM_ACAD+ +_MM_PERM_ACAC+ +_MM_PERM_ACAB+
      +_MM_PERM_ACAA+ +_MM_PERM_ABDD+ +_MM_PERM_ABDC+ +_MM_PERM_ABDB+
      +_MM_PERM_ABDA+ +_MM_PERM_ABCD+ +_MM_PERM_ABCC+ +_MM_PERM_ABCB+
      +_MM_PERM_ABCA+ +_MM_PERM_ABBD+ +_MM_PERM_ABBC+ +_MM_PERM_ABBB+
      +_MM_PERM_ABBA+ +_MM_PERM_ABAD+ +_MM_PERM_ABAC+ +_MM_PERM_ABAB+
      +_MM_PERM_ABAA+ +_MM_PERM_AADD+ +_MM_PERM_AADC+ +_MM_PERM_AADB+
      +_MM_PERM_AADA+ +_MM_PERM_AACD+ +_MM_PERM_AACC+ +_MM_PERM_AACB+
      +_MM_PERM_AACA+ +_MM_PERM_AABD+ +_MM_PERM_AABC+ +_MM_PERM_AABB+
      +_MM_PERM_AABA+ +_MM_PERM_AAAD+ +_MM_PERM_AAAC+ +_MM_PERM_AAAB+
      +_MM_PERM_AAAA+ +_MM_CMPINT_NLE+ +_MM_CMPINT_NLT+ +_MM_CMPINT_NE+
      +_MM_CMPINT_UNUSED+ +_MM_CMPINT_LE+ +_MM_CMPINT_LT+ +_MM_CMPINT_EQ+
      +_CMPCCX_NLE+ +_CMPCCX_LE+ +_CMPCCX_NL+ +_CMPCCX_L+ +_CMPCCX_NP+
      +_CMPCCX_P+ +_CMPCCX_NS+ +_CMPCCX_S+ +_CMPCCX_NBE+ +_CMPCCX_BE+
      +_CMPCCX_NZ+ +_CMPCCX_Z+ +_CMPCCX_NB+ +_CMPCCX_B+ +_CMPCCX_NO+
      +_CMPCCX_O+ +SDL-AUDIO-PAUSED+ +SDL-AUDIO-PLAYING+ +SDL-AUDIO-STOPPED+
      +SDL-THREAD-PRIORITY-TIME-CRITICAL+ +SDL-THREAD-PRIORITY-HIGH+
      +SDL-THREAD-PRIORITY-NORMAL+ +SDL-THREAD-PRIORITY-LOW+ +SDL-LASTERROR+
      +SDL-UNSUPPORTED+ +SDL-EFSEEK+ +SDL-EFWRITE+ +SDL-EFREAD+ +SDL-ENOMEM+
      +SDL-ASSERTION-ALWAYS-IGNORE+ +SDL-ASSERTION-IGNORE+
      +SDL-ASSERTION-ABORT+ +SDL-ASSERTION-BREAK+ +SDL-ASSERTION-RETRY+
      +DUMMY-ENUM-VALUE+ +SDL-TRUE+ +SDL-FALSE+ +_I_SALNUM+ +_I_SPUNCT+
      +_I_SCNTRL+ +_I_SBLANK+ +_I_SGRAPH+ +_I_SPRINT+ +_I_SSPACE+ +_I_SXDIGIT+
      +_I_SDIGIT+ +_I_SALPHA+ +_I_SLOWER+ +_I_SUPPER+ +FP-NORMAL+
      +FP-SUBNORMAL+ +FP-ZERO+ +FP-INFINITE+ +FP-NAN+)
    #<PACKAGE "DUMMY">)
   (EXPORT
    '(SDL-TIMER-ID SDL-TIMER-CALLBACK WINDOW-SHAPE-MODE SDL-RENDERER-FLIP
      SDL-TEXTURE-MODULATE SDL-TEXTURE-ACCESS SDL-SCALE-MODE SDL-RENDERER-FLAGS
      SDL-POWER-STATE SDL-MESSAGE-BOX-COLOR-TYPE SDL-MESSAGE-BOX-BUTTON-FLAGS
      SDL-MESSAGE-BOX-FLAGS SDL-LOG-OUTPUT-FUNCTION SDL-LOG-PRIORITY
      SDL-LOG-CATEGORY SDL-HINT-CALLBACK SDL-HINT-PRIORITY SDL-EVENT-FILTER
      SDL-EVENTACTION SDL-EVENT-TYPE SDL-GESTURE-ID SDL-TOUCH-DEVICE-TYPE
      SDL-FINGER-ID SDL-TOUCH-ID SDL-GAME-CONTROLLER-BUTTON
      SDL-GAME-CONTROLLER-AXIS SDL-GAME-CONTROLLER-BIND-TYPE
      SDL-GAME-CONTROLLER-TYPE SDL-SENSOR-TYPE SDL-SENSOR-ID
      SDL-JOYSTICK-POWER-LEVEL SDL-JOYSTICK-TYPE SDL-JOYSTICK-ID
      SDL-JOYSTICK-GUID SDL-MOUSE-WHEEL-DIRECTION SDL-SYSTEM-CURSOR SDL-KEYMOD
      SDL-KEY-CODE SDL-KEYCODE SDL-SCANCODE SDL-HIT-TEST SDL-HIT-TEST-RESULT
      SDL-GL-CONTEXT-RESET-NOTIFICATION SDL-G-LCONTEXT-RELEASE-FLAG
      SDL-G-LCONTEXT-FLAG SDL-G-LPROFILE SDL-G-LATTR SDL-FLASH-OPERATION
      SDL-DISPLAY-ORIENTATION SDL-DISPLAY-EVENT-ID SDL-WINDOW-EVENT-ID
      SDL-WINDOW-FLAGS SDL-YUV-CONVERSION-MODE SDL-BLIT SDL-BLEND-FACTOR
      SDL-BLEND-OPERATION SDL-BLEND-MODE SDL-PIXEL-FORMAT-ENUM
      SDL-PACKED-LAYOUT SDL-ARRAY-ORDER SDL-PACKED-ORDER SDL-BITMAP-ORDER
      SDL-PIXEL-TYPE _TILE1024I __BFLOAT16 __M512BH __V32BF |__M512H_U|
      |__M512H| __V32HF __MMASK64 __MMASK32 __V2QI __V4QI __V2HI
      _MM_TERNLOG_ENUM _MM_MANTISSA_SIGN_ENUM _MM_MANTISSA_NORM_ENUM
      _MM_PERM_ENUM _MM_CMPINT_ENUM __MMASK16 __MMASK8 |__M512I_U| |__M512D_U|
      |__M512_U| |__M512I| |__M512D| |__M512| __V64QS __V16SU __V8DU __V32HU
      __V64QU __V16SI __V8DI __V16SF __V8DF __V32HI __V64QI __M256BH __V16BF
      |__M256H_U| |__M256H| __V16HF |__M256I_U| |__M256D_U| |__M256_U|
      |__M256I| |__M256D| |__M256| __V32QS __V32QU __V16HU __V8SU __V4DU
      __V32QI __V16HI __V8SI __V4DI __V8SF __V4DF __M128BH __V8BF |__M128H_U|
      |__M128H| __V8HF __V16QS __V16QU __V8HU __V2DU __V16QI __V8HI __V2DI
      __V2DF |__M128I_U| |__M128D_U| |__M128I| |__M128D| __V4SU |__M128_U|
      |__M128| __V4SF __V4SI __V8QI __V4HI __V2SI __V1DI |__M64| _CMPCCX_ENUM
      SDL-AUDIO-STATUS SDL-AUDIO-DEVICE-ID SDL-AUDIO-FILTER SDL-AUDIO-CALLBACK
      SDL-AUDIO-FORMAT SDL-THREAD-FUNCTION SDL-THREAD-PRIORITY SDL-TLSID
      SDL-THREAD-ID SDL-ERRORCODE SDL-SPIN-LOCK SDL-ASSERTION-HANDLER
      SDL-ASSERT-STATE SDL-MAIN-FUNC SDL-FREE-FUNC SDL-REALLOC-FUNC
      SDL-CALLOC-FUNC SDL-MALLOC-FUNC SDL-DUMMY-ENUM UINT64 SINT64 UINT32
      SINT32 UINT16 SINT16 UINT8 SINT8 SDL-BOOL __GWCHAR_T UINTMAX-T INTMAX-T
      UINTPTR-T INTPTR-T UINT-FAST64-T UINT-FAST32-T UINT-FAST16-T UINT-FAST8-T
      INT-FAST64-T INT-FAST32-T INT-FAST16-T INT-FAST8-T UINT-LEAST64-T
      UINT-LEAST32-T UINT-LEAST16-T UINT-LEAST8-T INT-LEAST64-T INT-LEAST32-T
      INT-LEAST16-T INT-LEAST8-T UINT64-T UINT32-T UINT16-T UINT8-T MBSTATE-T
      WINT-T LOCALE-T PTRDIFF-T __COMPAR_FN_T WCHAR-T FPOS-T VA-LIST _IO_LOCK_T
      __GNUC_VA_LIST PTHREAD-SPINLOCK-T PTHREAD-ONCE-T PTHREAD-KEY-T PTHREAD-T
      __THRD_T __TSS_T FSFILCNT-T FSBLKCNT-T BLKCNT-T BLKSIZE-T FD-MASK
      __FD_MASK SUSECONDS-T SIGSET-T REGISTER-T U-INT64-T U-INT32-T U-INT16-T
      U-INT8-T INT64-T INT32-T INT16-T INT8-T UINT USHORT ULONG SIZE-T TIMER-T
      TIME-T CLOCKID-T CLOCK-T KEY-T CADDR-T DADDR-T SSIZE-T ID-T PID-T OFF-T
      UID-T NLINK-T MODE-T GID-T DEV-T INO-T LOFF-T FSID-T U-QUAD-T QUAD-T
      U-LONG U-INT U-SHORT U-CHAR DOUBLE-T FLOAT-T _FLOAT64X _FLOAT32X _FLOAT64
      _FLOAT32 __SIG_ATOMIC_T __SOCKLEN_T __INTPTR_T __LOFF_T __SYSCALL_ULONG_T
      __SYSCALL_SLONG_T __SSIZE_T __FSWORD_T __FSFILCNT64_T __FSFILCNT_T
      __FSBLKCNT64_T __FSBLKCNT_T __BLKCNT64_T __BLKCNT_T __BLKSIZE_T
      __CLOCKID_T __KEY_T __DADDR_T __SUSECONDS64_T __SUSECONDS_T __USECONDS_T
      __TIME_T __ID_T __RLIM64_T __RLIM_T __CLOCK_T __PID_T __OFF64_T __OFF_T
      __NLINK_T __MODE_T __INO64_T __INO_T __GID_T __UID_T __DEV_T __UINTMAX_T
      __INTMAX_T __U_QUAD_T __QUAD_T __UINT_LEAST64_T __INT_LEAST64_T
      __UINT_LEAST32_T __INT_LEAST32_T __UINT_LEAST16_T __INT_LEAST16_T
      __UINT_LEAST8_T __INT_LEAST8_T __UINT64_T __INT64_T __UINT32_T __INT32_T
      __UINT16_T __INT16_T __UINT8_T __INT8_T __U_LONG __U_INT __U_SHORT
      __U_CHAR)
    #<PACKAGE "DUMMY">)
   (SETF AUTOWRAP::*MUTE-REPORTING-P* NIL))
 (LET ((AUTOWRAP::*MUTE-REPORTING-P* NIL))
   (EVAL-WHEN (:LOAD-TOPLEVEL :EXECUTE)
     (AUTOWRAP::REPORT-WRAP-FAILURES 'AUTOWRAP::LOAD-TIME *STANDARD-OUTPUT*)
     (AUTOWRAP::CLEAR-WRAP-FAILURES))))
