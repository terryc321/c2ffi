(PROGN
 (EVAL-WHEN (:COMPILE-TOPLEVEL :LOAD-TOPLEVEL :EXECUTE)
   (SETF AUTOWRAP::*FAILED-WRAPS* NIL)
   (SETF AUTOWRAP::*MUTE-REPORTING-P* NIL)
   (PROGN
    (SETF AUTOWRAP::*FOREIGN-RECORD-INDEX* (MAKE-HASH-TABLE))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-GET-PLATFORM "SDL_GetPlatform")
                                      '(:STRING) 'NIL)
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
                                     (NIL :ID 2 :BIT-SIZE 1024 :BIT-ALIGNMENT
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
                                     (NIL :ID 3 :BIT-SIZE 1024 :BIT-ALIGNMENT
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
                                     (NIL :ID 6 :BIT-SIZE 64 :BIT-ALIGNMENT 64)
                                     (:__VALUE64 :UNSIGNED-LONG-LONG :BIT-SIZE
                                      64 :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
                                     (:__VALUE32
                                      (AUTOWRAP::STRUCT
                                       (NIL :ID 7 :BIT-SIZE 64 :BIT-ALIGNMENT
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
                                     (NIL :ID 10 :BIT-SIZE 32 :BIT-ALIGNMENT
                                      32)
                                     (:__DATA :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-T ':UNSIGNED-LONG)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-MUTEXATTR-T
                                   '(UNION
                                     (NIL :ID 11 :BIT-SIZE 32 :BIT-ALIGNMENT
                                      32)
                                     (:__SIZE (:ARRAY :CHAR 4) :BIT-SIZE 32
                                      :BIT-OFFSET 0 :BIT-ALIGNMENT 8)
                                     (:__ALIGN :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-CONDATTR-T
                                   '(UNION
                                     (NIL :ID 12 :BIT-SIZE 32 :BIT-ALIGNMENT
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
                                     (NIL :ID 14 :BIT-SIZE 320 :BIT-ALIGNMENT
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
                                     (NIL :ID 16 :BIT-SIZE 384 :BIT-ALIGNMENT
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
                                     (NIL :ID 18 :BIT-SIZE 448 :BIT-ALIGNMENT
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
                                     (NIL :ID 20 :BIT-SIZE 64 :BIT-ALIGNMENT
                                      64)
                                     (:__SIZE (:ARRAY :CHAR 8) :BIT-SIZE 64
                                      :BIT-OFFSET 0 :BIT-ALIGNMENT 8)
                                     (:__ALIGN :LONG :BIT-SIZE 64 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-SPINLOCK-T ':INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-BARRIER-T
                                   '(UNION
                                     (NIL :ID 21 :BIT-SIZE 256 :BIT-ALIGNMENT
                                      64)
                                     (:__SIZE (:ARRAY :CHAR 32) :BIT-SIZE 256
                                      :BIT-OFFSET 0 :BIT-ALIGNMENT 8)
                                     (:__ALIGN :LONG :BIT-SIZE 64 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'PTHREAD-BARRIERATTR-T
                                   '(UNION
                                     (NIL :ID 22 :BIT-SIZE 32 :BIT-ALIGNMENT
                                      32)
                                     (:__SIZE (:ARRAY :CHAR 4) :BIT-SIZE 32
                                      :BIT-OFFSET 0 :BIT-ALIGNMENT 8)
                                     (:__ALIGN :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__GNUC_VA_LIST '__BUILTIN_VA_LIST)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '__MBSTATE_T
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 23 :BIT-SIZE 64 :BIT-ALIGNMENT
                                      32)
                                     (:__COUNT :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 32)
                                     (:__VALUE
                                      (UNION
                                       (NIL :ID 24 :BIT-SIZE 32 :BIT-ALIGNMENT
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
                                      '((#:P5396 (:ARRAY :CHAR 20))))
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
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '_FLOAT32 ':FLOAT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '_FLOAT64 ':DOUBLE)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '_FLOAT32X ':DOUBLE)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS '_FLOAT64X 'AUTOWRAP::LONG-DOUBLE)
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
                                      '((#:P5397 (:POINTER FILE))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__OVERFLOW "__overflow") ':INT
                                      '((#:P5398 (:POINTER FILE))
                                        (#:P5399 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'WCHAR-T ':INT)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'DIV-T
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 32 :BIT-SIZE 64 :BIT-ALIGNMENT
                                      32)
                                     (:QUOT :INT :BIT-SIZE 32 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 32)
                                     (:REM :INT :BIT-SIZE 32 :BIT-OFFSET 32
                                      :BIT-ALIGNMENT 32)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'LDIV-T
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 33 :BIT-SIZE 128 :BIT-ALIGNMENT
                                      64)
                                     (:QUOT :LONG :BIT-SIZE 64 :BIT-OFFSET 0
                                      :BIT-ALIGNMENT 64)
                                     (:REM :LONG :BIT-SIZE 64 :BIT-OFFSET 64
                                      :BIT-ALIGNMENT 64)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'LLDIV-T
                                   '(AUTOWRAP::STRUCT
                                     (NIL :ID 34 :BIT-SIZE 128 :BIT-ALIGNMENT
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
                                     (NIL :ID 37 :BIT-SIZE 256 :BIT-ALIGNMENT
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
                                     (NIL :ID 41 :BIT-SIZE 128 :BIT-ALIGNMENT
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
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-5400 42
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
                                      '((#:P5401 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISALPHA "isalpha") ':INT
                                      '((#:P5402 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISCNTRL "iscntrl") ':INT
                                      '((#:P5403 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISDIGIT "isdigit") ':INT
                                      '((#:P5404 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISLOWER "islower") ':INT
                                      '((#:P5405 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISGRAPH "isgraph") ':INT
                                      '((#:P5406 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISPRINT "isprint") ':INT
                                      '((#:P5407 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISPUNCT "ispunct") ':INT
                                      '((#:P5408 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISSPACE "isspace") ':INT
                                      '((#:P5409 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISUPPER "isupper") ':INT
                                      '((#:P5410 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISXDIGIT "isxdigit") ':INT
                                      '((#:P5411 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TOLOWER "tolower") ':INT
                                      '((|__c| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TOUPPER "toupper") ':INT
                                      '((|__c| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISBLANK "isblank") ':INT
                                      '((#:P5412 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISASCII "isascii") ':INT
                                      '((|__c| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TOASCII "toascii") ':INT
                                      '((|__c| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(_TOUPPER "_toupper") ':INT
                                      '((#:P5413 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(_TOLOWER "_tolower") ':INT
                                      '((#:P5414 :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISALNUM-L "isalnum_l") ':INT
                                      '((#:P5415 :INT) (#:P5416 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISALPHA-L "isalpha_l") ':INT
                                      '((#:P5417 :INT) (#:P5418 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISCNTRL-L "iscntrl_l") ':INT
                                      '((#:P5419 :INT) (#:P5420 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISDIGIT-L "isdigit_l") ':INT
                                      '((#:P5421 :INT) (#:P5422 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISLOWER-L "islower_l") ':INT
                                      '((#:P5423 :INT) (#:P5424 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISGRAPH-L "isgraph_l") ':INT
                                      '((#:P5425 :INT) (#:P5426 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISPRINT-L "isprint_l") ':INT
                                      '((#:P5427 :INT) (#:P5428 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISPUNCT-L "ispunct_l") ':INT
                                      '((#:P5429 :INT) (#:P5430 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISSPACE-L "isspace_l") ':INT
                                      '((#:P5431 :INT) (#:P5432 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISUPPER-L "isupper_l") ':INT
                                      '((#:P5433 :INT) (#:P5434 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISXDIGIT-L "isxdigit_l") ':INT
                                      '((#:P5435 :INT) (#:P5436 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ISBLANK-L "isblank_l") ':INT
                                      '((#:P5437 :INT) (#:P5438 LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TOLOWER_L "__tolower_l") ':INT
                                      '((|__c| :INT) (|__l| LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TOLOWER-L "tolower_l") ':INT
                                      '((|__c| :INT) (|__l| LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TOUPPER_L "__toupper_l") ':INT
                                      '((|__c| :INT) (|__l| LOCALE-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TOUPPER-L "toupper_l") ':INT
                                      '((|__c| :INT) (|__l| LOCALE-T)))
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
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(J0 "j0") ':DOUBLE '((#:P5439 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__J0| "__j0") ':DOUBLE
                                      '((#:P5440 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(J1 "j1") ':DOUBLE '((#:P5441 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__J1| "__j1") ':DOUBLE
                                      '((#:P5442 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(JN "jn") ':DOUBLE
                                      '((#:P5443 :INT) (#:P5444 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__JN "__jn") ':DOUBLE
                                      '((#:P5445 :INT) (#:P5446 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(Y0 "y0") ':DOUBLE '((#:P5447 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__Y0| "__y0") ':DOUBLE
                                      '((#:P5448 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(Y1 "y1") ':DOUBLE '((#:P5449 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__Y1| "__y1") ':DOUBLE
                                      '((#:P5450 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(YN "yn") ':DOUBLE
                                      '((#:P5451 :INT) (#:P5452 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__YN "__yn") ':DOUBLE
                                      '((#:P5453 :INT) (#:P5454 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ERF "erf") ':DOUBLE
                                      '((#:P5455 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ERF "__erf") ':DOUBLE
                                      '((#:P5456 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ERFC "erfc") ':DOUBLE
                                      '((#:P5457 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ERFC "__erfc") ':DOUBLE
                                      '((#:P5458 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LGAMMA "lgamma") ':DOUBLE
                                      '((#:P5459 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LGAMMA "__lgamma") ':DOUBLE
                                      '((#:P5460 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TGAMMA "tgamma") ':DOUBLE
                                      '((#:P5461 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TGAMMA "__tgamma") ':DOUBLE
                                      '((#:P5462 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GAMMA "gamma") ':DOUBLE
                                      '((#:P5463 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__GAMMA "__gamma") ':DOUBLE
                                      '((#:P5464 :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LGAMMA-R "lgamma_r") ':DOUBLE
                                      '((#:P5465 :DOUBLE)
                                        (|__signgamp| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LGAMMA_R "__lgamma_r") ':DOUBLE
                                      '((#:P5466 :DOUBLE)
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
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(J0F "j0f") ':FLOAT '((#:P5467 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__J0F| "__j0f") ':FLOAT
                                      '((#:P5468 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(J1F "j1f") ':FLOAT '((#:P5469 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__J1F| "__j1f") ':FLOAT
                                      '((#:P5470 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(JNF "jnf") ':FLOAT
                                      '((#:P5471 :INT) (#:P5472 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__JNF "__jnf") ':FLOAT
                                      '((#:P5473 :INT) (#:P5474 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(Y0F "y0f") ':FLOAT '((#:P5475 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__Y0F| "__y0f") ':FLOAT
                                      '((#:P5476 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(Y1F "y1f") ':FLOAT '((#:P5477 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__Y1F| "__y1f") ':FLOAT
                                      '((#:P5478 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(YNF "ynf") ':FLOAT
                                      '((#:P5479 :INT) (#:P5480 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__YNF "__ynf") ':FLOAT
                                      '((#:P5481 :INT) (#:P5482 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ERFF "erff") ':FLOAT
                                      '((#:P5483 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ERFF "__erff") ':FLOAT
                                      '((#:P5484 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ERFCF "erfcf") ':FLOAT
                                      '((#:P5485 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ERFCF "__erfcf") ':FLOAT
                                      '((#:P5486 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LGAMMAF "lgammaf") ':FLOAT
                                      '((#:P5487 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LGAMMAF "__lgammaf") ':FLOAT
                                      '((#:P5488 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TGAMMAF "tgammaf") ':FLOAT
                                      '((#:P5489 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TGAMMAF "__tgammaf") ':FLOAT
                                      '((#:P5490 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GAMMAF "gammaf") ':FLOAT
                                      '((#:P5491 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__GAMMAF "__gammaf") ':FLOAT
                                      '((#:P5492 :FLOAT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LGAMMAF-R "lgammaf_r") ':FLOAT
                                      '((#:P5493 :FLOAT)
                                        (|__signgamp| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LGAMMAF_R "__lgammaf_r") ':FLOAT
                                      '((#:P5494 :FLOAT)
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
                                      '((#:P5495 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__J0L| "__j0l") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5496 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(J1L "j1l") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5497 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__J1L| "__j1l") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5498 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(JNL "jnl") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5499 :INT)
                                        (#:P5500 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__JNL "__jnl") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5501 :INT)
                                        (#:P5502 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(Y0L "y0l") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5503 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__Y0L| "__y0l") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5504 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(Y1L "y1l") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5505 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(|__Y1L| "__y1l") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5506 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(YNL "ynl") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5507 :INT)
                                        (#:P5508 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__YNL "__ynl") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5509 :INT)
                                        (#:P5510 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ERFL "erfl") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5511 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ERFL "__erfl") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5512 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(ERFCL "erfcl") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5513 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__ERFCL "__erfcl")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5514 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LGAMMAL "lgammal")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5515 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LGAMMAL "__lgammal")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5516 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(TGAMMAL "tgammal")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5517 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__TGAMMAL "__tgammal")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5518 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(GAMMAL "gammal") 'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5519 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__GAMMAL "__gammal")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5520 AUTOWRAP::LONG-DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(LGAMMAL-R "lgammal_r")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5521 AUTOWRAP::LONG-DOUBLE)
                                        (|__signgamp| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(__LGAMMAL_R "__lgammal_r")
                                      'AUTOWRAP::LONG-DOUBLE
                                      '((#:P5522 AUTOWRAP::LONG-DOUBLE)
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
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-5523 43
                                   '((:NAN . 0) (:INFINITE . 1) (:ZERO . 2)
                                     (:SUBNORMAL . 3) (:NORMAL . 4))))
    (PROGN
     (DEFPARAMETER +SDL-FALSE+ 0)
     (DEFPARAMETER +SDL-TRUE+ 1)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-5524 44
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
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-5525 45
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
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-5526 47
                                   '((:ENOMEM . 0) (:EFREAD . 1) (:EFWRITE . 2)
                                     (:EFSEEK . 3) (:UNSUPPORTED . 4)
                                     (:LASTERROR . 5))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-ERRORCODE '(:ENUM (NIL :ID 47)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(SDL-ERROR "SDL_Error") ':INT
                                      '((|code| SDL-ERRORCODE)))
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
                                        (NIL :ID 48 :BIT-SIZE 192
                                         :BIT-ALIGNMENT 64)
                                        (:STDIO
                                         (AUTOWRAP::STRUCT
                                          (NIL :ID 49 :BIT-SIZE 128
                                           :BIT-ALIGNMENT 64)
                                          (:AUTOCLOSE SDL-BOOL :BIT-SIZE 32
                                           :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
                                          (:FP (:POINTER FILE) :BIT-SIZE 64
                                           :BIT-OFFSET 64 :BIT-ALIGNMENT 64))
                                         :BIT-SIZE 128 :BIT-OFFSET 0
                                         :BIT-ALIGNMENT 64)
                                        (:MEM
                                         (AUTOWRAP::STRUCT
                                          (NIL :ID 50 :BIT-SIZE 192
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
                                          (NIL :ID 51 :BIT-SIZE 128
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
                                     (NIL :ID 56 :BIT-SIZE 32 :BIT-ALIGNMENT
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
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-5527 58
                                   '((:LOW . 0) (:NORMAL . 1) (:HIGH . 2)
                                     (:TIME-CRITICAL . 3))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-THREAD-PRIORITY '(:ENUM (NIL :ID 58)))
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
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-5528 61
                                   '((:STOPPED . 0) (:PLAYING . 1)
                                     (:PAUSED . 2))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'SDL-AUDIO-STATUS '(:ENUM (NIL :ID 61)))
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
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-LINKED-VERSION "Mix_Linked_Version") '(:POINTER SDL-VERSION) 'NIL)
    (PROGN
     (DEFPARAMETER +MIX-INIT-FLAC+ 1)
     (DEFPARAMETER +MIX-INIT-MOD+ 2)
     (DEFPARAMETER +MIX-INIT-MP3+ 8)
     (DEFPARAMETER +MIX-INIT-OGG+ 16)
     (DEFPARAMETER +MIX-INIT-MID+ 32)
     (DEFPARAMETER +MIX-INIT-OPUS+ 64)
     (DEFPARAMETER +MIX-INIT-WAVPACK+ 128)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-5529 64
                                   '((:FLAC . 1) (:MOD . 2) (:MP3 . 8)
                                     (:OGG . 16) (:MID . 32) (:OPUS . 64)
                                     (:WAVPACK . 128))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'MIX-INIT-FLAGS '(:ENUM (NIL :ID 64)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-INIT "Mix_Init") ':INT
                                      '((|flags| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-QUIT "Mix_Quit") ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-RECORD 'MIX-CHUNK :STRUCT 192 64
                                    '((:ALLOCATED :INT :BIT-SIZE 32 :BIT-OFFSET
                                       0 :BIT-ALIGNMENT 32)
                                      (:ABUF (:POINTER UINT8) :BIT-SIZE 64
                                       :BIT-OFFSET 64 :BIT-ALIGNMENT 64)
                                      (:ALEN UINT32 :BIT-SIZE 32 :BIT-OFFSET
                                       128 :BIT-ALIGNMENT 32)
                                      (:VOLUME UINT8 :BIT-SIZE 8 :BIT-OFFSET
                                       160 :BIT-ALIGNMENT 8)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'MIX-CHUNK '(:STRUCT (MIX-CHUNK)))
    (PROGN
     (DEFPARAMETER +MIX-NO-FADING+ 0)
     (DEFPARAMETER +MIX-FADING-OUT+ 1)
     (DEFPARAMETER +MIX-FADING-IN+ 2)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-5530 66
                                   '((:NO-FADING . 0) (:FADING-OUT . 1)
                                     (:FADING-IN . 2))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'MIX-FADING '(:ENUM (NIL :ID 66)))
    (PROGN
     (DEFPARAMETER +MUS-NONE+ 0)
     (DEFPARAMETER +MUS-CMD+ 1)
     (DEFPARAMETER +MUS-WAV+ 2)
     (DEFPARAMETER +MUS-MOD+ 3)
     (DEFPARAMETER +MUS-MID+ 4)
     (DEFPARAMETER +MUS-OGG+ 5)
     (DEFPARAMETER +MUS-MP3+ 6)
     (DEFPARAMETER +MUS-MP3-MAD-UNUSED+ 7)
     (DEFPARAMETER +MUS-FLAC+ 8)
     (DEFPARAMETER +MUS-MODPLUG-UNUSED+ 9)
     (DEFPARAMETER +MUS-OPUS+ 10)
     (DEFPARAMETER +MUS-WAVPACK+ 11)
     (DEFPARAMETER +MUS-GME+ 12)
     (AUTOWRAP:DEFINE-FOREIGN-ENUM '#:ANON-TYPE-5531 67
                                   '((:NONE . 0) (:CMD . 1) (:WAV . 2)
                                     (:MOD . 3) (:MID . 4) (:OGG . 5)
                                     (:MP3 . 6) (:MP3-MAD-UNUSED . 7)
                                     (:FLAC . 8) (:MODPLUG-UNUSED . 9)
                                     (:OPUS . 10) (:WAVPACK . 11)
                                     (:GME . 12))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'MIX-MUSIC-TYPE '(:ENUM (NIL :ID 67)))
    (AUTOWRAP:DEFINE-FOREIGN-RECORD '_MIX_MUSIC :STRUCT 0 0 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'MIX-MUSIC
                                   '(AUTOWRAP::STRUCT
                                     (_MIX_MUSIC :BIT-SIZE 0 :BIT-ALIGNMENT
                                      0)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-OPEN-AUDIO "Mix_OpenAudio") ':INT
                                      '((|frequency| :INT) (|format| UINT16)
                                        (|channels| :INT) (|chunksize| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-OPEN-AUDIO-DEVICE "Mix_OpenAudioDevice") ':INT
     '((|frequency| :INT) (|format| UINT16) (|channels| :INT)
       (|chunksize| :INT) (|device| (:STRING)) (|allowed_changes| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-PAUSE-AUDIO "Mix_PauseAudio")
                                      ':VOID '((|pause_on| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-QUERY-SPEC "Mix_QuerySpec") ':INT
                                      '((|frequency| (:POINTER :INT))
                                        (|format| (:POINTER UINT16))
                                        (|channels| (:POINTER :INT))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-ALLOCATE-CHANNELS "Mix_AllocateChannels") ':INT
     '((|numchans| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-LOAD-WAV-RW "Mix_LoadWAV_RW")
                                      '(:POINTER MIX-CHUNK)
                                      '((|src| (:POINTER SDL-R-WOPS))
                                        (|freesrc| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-LOAD-WAV "Mix_LoadWAV")
                                      '(:POINTER MIX-CHUNK)
                                      '((|file| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-LOAD-MUS "Mix_LoadMUS")
                                      '(:POINTER MIX-MUSIC)
                                      '((|file| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-LOAD-MUS-RW "Mix_LoadMUS_RW")
                                      '(:POINTER MIX-MUSIC)
                                      '((|src| (:POINTER SDL-R-WOPS))
                                        (|freesrc| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-LOAD-MUS-TYPE-RW "Mix_LoadMUSType_RW") '(:POINTER MIX-MUSIC)
     '((|src| (:POINTER SDL-R-WOPS)) (|type| MIX-MUSIC-TYPE) (|freesrc| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-QUICK-LOAD-WAV "Mix_QuickLoad_WAV")
                                      '(:POINTER MIX-CHUNK)
                                      '((|mem| (:POINTER UINT8))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-QUICK-LOAD-RAW "Mix_QuickLoad_RAW")
                                      '(:POINTER MIX-CHUNK)
                                      '((|mem| (:POINTER UINT8))
                                        (|len| UINT32)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-FREE-CHUNK "Mix_FreeChunk") ':VOID
                                      '((|chunk| (:POINTER MIX-CHUNK))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-FREE-MUSIC "Mix_FreeMusic") ':VOID
                                      '((|music| (:POINTER MIX-MUSIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-NUM-CHUNK-DECODERS "Mix_GetNumChunkDecoders") ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-CHUNK-DECODER "Mix_GetChunkDecoder") '(:STRING)
     '((|index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-HAS-CHUNK-DECODER "Mix_HasChunkDecoder") 'SDL-BOOL
     '((|name| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-NUM-MUSIC-DECODERS "Mix_GetNumMusicDecoders") ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-MUSIC-DECODER "Mix_GetMusicDecoder") '(:STRING)
     '((|index| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-HAS-MUSIC-DECODER "Mix_HasMusicDecoder") 'SDL-BOOL
     '((|name| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-GET-MUSIC-TYPE "Mix_GetMusicType")
                                      'MIX-MUSIC-TYPE
                                      '((|music| (:POINTER MIX-MUSIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-MUSIC-TITLE "Mix_GetMusicTitle") '(:STRING)
     '((|music| (:POINTER MIX-MUSIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-MUSIC-TITLE-TAG "Mix_GetMusicTitleTag") '(:STRING)
     '((|music| (:POINTER MIX-MUSIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-MUSIC-ARTIST-TAG "Mix_GetMusicArtistTag") '(:STRING)
     '((|music| (:POINTER MIX-MUSIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-MUSIC-ALBUM-TAG "Mix_GetMusicAlbumTag") '(:STRING)
     '((|music| (:POINTER MIX-MUSIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-MUSIC-COPYRIGHT-TAG "Mix_GetMusicCopyrightTag") '(:STRING)
     '((|music| (:POINTER MIX-MUSIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-SET-POST-MIX "Mix_SetPostMix")
                                      ':VOID
                                      '((|mix_func| (:POINTER (:VOID)))
                                        (|arg| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-HOOK-MUSIC "Mix_HookMusic") ':VOID
                                      '((|mix_func| (:POINTER (:VOID)))
                                        (|arg| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-HOOK-MUSIC-FINISHED "Mix_HookMusicFinished") ':VOID
     '((|music_finished| (:POINTER (:VOID)))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-MUSIC-HOOK-DATA "Mix_GetMusicHookData") '(:POINTER :VOID) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-CHANNEL-FINISHED "Mix_ChannelFinished") ':VOID
     '((|channel_finished| (:POINTER (:VOID)))))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'MIX-EFFECT-FUNC-T '(:POINTER (:VOID)))
    (AUTOWRAP:DEFINE-FOREIGN-ALIAS 'MIX-EFFECT-DONE-T '(:POINTER (:VOID)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-REGISTER-EFFECT "Mix_RegisterEffect") ':INT
     '((|chan| :INT) (|f| MIX-EFFECT-FUNC-T) (|d| MIX-EFFECT-DONE-T)
       (|arg| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-UNREGISTER-EFFECT "Mix_UnregisterEffect") ':INT
     '((|channel| :INT) (|f| MIX-EFFECT-FUNC-T)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-UNREGISTER-ALL-EFFECTS "Mix_UnregisterAllEffects") ':INT
     '((|channel| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-SET-PANNING "Mix_SetPanning") ':INT
                                      '((|channel| :INT) (|left| UINT8)
                                        (|right| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-SET-POSITION "Mix_SetPosition")
                                      ':INT
                                      '((|channel| :INT) (|angle| SINT16)
                                        (|distance| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-SET-DISTANCE "Mix_SetDistance")
                                      ':INT
                                      '((|channel| :INT) (|distance| UINT8)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-SET-REVERSE-STEREO "Mix_SetReverseStereo") ':INT
     '((|channel| :INT) (|flip| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-RESERVE-CHANNELS "Mix_ReserveChannels") ':INT '((|num| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-GROUP-CHANNEL "Mix_GroupChannel")
                                      ':INT '((|which| :INT) (|tag| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-GROUP-CHANNELS "Mix_GroupChannels")
                                      ':INT
                                      '((|from| :INT) (|to| :INT)
                                        (|tag| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GROUP-AVAILABLE "Mix_GroupAvailable") ':INT '((|tag| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-GROUP-COUNT "Mix_GroupCount") ':INT
                                      '((|tag| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-GROUP-OLDEST "Mix_GroupOldest")
                                      ':INT '((|tag| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-GROUP-NEWER "Mix_GroupNewer") ':INT
                                      '((|tag| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-PLAY-CHANNEL "Mix_PlayChannel")
                                      ':INT
                                      '((|channel| :INT)
                                        (|chunk| (:POINTER MIX-CHUNK))
                                        (|loops| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-PLAY-CHANNEL-TIMED "Mix_PlayChannelTimed") ':INT
     '((|channel| :INT) (|chunk| (:POINTER MIX-CHUNK)) (|loops| :INT)
       (|ticks| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-PLAY-MUSIC "Mix_PlayMusic") ':INT
                                      '((|music| (:POINTER MIX-MUSIC))
                                        (|loops| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-FADE-IN-MUSIC "Mix_FadeInMusic")
                                      ':INT
                                      '((|music| (:POINTER MIX-MUSIC))
                                        (|loops| :INT) (|ms| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-FADE-IN-MUSIC-POS "Mix_FadeInMusicPos") ':INT
     '((|music| (:POINTER MIX-MUSIC)) (|loops| :INT) (|ms| :INT)
       (|position| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-FADE-IN-CHANNEL "Mix_FadeInChannel") ':INT
     '((|channel| :INT) (|chunk| (:POINTER MIX-CHUNK)) (|loops| :INT)
       (|ms| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-FADE-IN-CHANNEL-TIMED "Mix_FadeInChannelTimed") ':INT
     '((|channel| :INT) (|chunk| (:POINTER MIX-CHUNK)) (|loops| :INT)
       (|ms| :INT) (|ticks| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-VOLUME "Mix_Volume") ':INT
                                      '((|channel| :INT) (|volume| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-VOLUME-CHUNK "Mix_VolumeChunk")
                                      ':INT
                                      '((|chunk| (:POINTER MIX-CHUNK))
                                        (|volume| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-VOLUME-MUSIC "Mix_VolumeMusic")
                                      ':INT '((|volume| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-MUSIC-VOLUME "Mix_GetMusicVolume") ':INT
     '((|music| (:POINTER MIX-MUSIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-MASTER-VOLUME "Mix_MasterVolume")
                                      ':INT '((|volume| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-HALT-CHANNEL "Mix_HaltChannel")
                                      ':INT '((|channel| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-HALT-GROUP "Mix_HaltGroup") ':INT
                                      '((|tag| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-HALT-MUSIC "Mix_HaltMusic") ':INT
                                      'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-EXPIRE-CHANNEL "Mix_ExpireChannel")
                                      ':INT '((|channel| :INT) (|ticks| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-FADE-OUT-CHANNEL "Mix_FadeOutChannel") ':INT
     '((|which| :INT) (|ms| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-FADE-OUT-GROUP "Mix_FadeOutGroup")
                                      ':INT '((|tag| :INT) (|ms| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-FADE-OUT-MUSIC "Mix_FadeOutMusic")
                                      ':INT '((|ms| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-FADING-MUSIC "Mix_FadingMusic")
                                      'MIX-FADING 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-FADING-CHANNEL "Mix_FadingChannel")
                                      'MIX-FADING '((|which| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-PAUSE "Mix_Pause") ':VOID
                                      '((|channel| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-RESUME "Mix_Resume") ':VOID
                                      '((|channel| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-PAUSED "Mix_Paused") ':INT
                                      '((|channel| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-PAUSE-MUSIC "Mix_PauseMusic")
                                      ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-RESUME-MUSIC "Mix_ResumeMusic")
                                      ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-REWIND-MUSIC "Mix_RewindMusic")
                                      ':VOID 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-PAUSED-MUSIC "Mix_PausedMusic")
                                      ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-MOD-MUSIC-JUMP-TO-ORDER "Mix_ModMusicJumpToOrder") ':INT
     '((|order| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-START-TRACK "Mix_StartTrack") ':INT
                                      '((|music| (:POINTER MIX-MUSIC))
                                        (|track| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-GET-NUM-TRACKS "Mix_GetNumTracks")
                                      ':INT '((|music| (:POINTER MIX-MUSIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-SET-MUSIC-POSITION "Mix_SetMusicPosition") ':INT
     '((|position| :DOUBLE)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-MUSIC-POSITION "Mix_GetMusicPosition") ':DOUBLE
     '((|music| (:POINTER MIX-MUSIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-MUSIC-DURATION "Mix_MusicDuration")
                                      ':DOUBLE
                                      '((|music| (:POINTER MIX-MUSIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-MUSIC-LOOP-START-TIME "Mix_GetMusicLoopStartTime") ':DOUBLE
     '((|music| (:POINTER MIX-MUSIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-MUSIC-LOOP-END-TIME "Mix_GetMusicLoopEndTime") ':DOUBLE
     '((|music| (:POINTER MIX-MUSIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-MUSIC-LOOP-LENGTH-TIME "Mix_GetMusicLoopLengthTime") ':DOUBLE
     '((|music| (:POINTER MIX-MUSIC))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-PLAYING "Mix_Playing") ':INT
                                      '((|channel| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-PLAYING-MUSIC "Mix_PlayingMusic")
                                      ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-SET-MUSIC-CMD "Mix_SetMusicCMD")
                                      ':INT '((|command| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-SET-SYNCHRO-VALUE "Mix_SetSynchroValue") ':INT '((|value| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-SYNCHRO-VALUE "Mix_GetSynchroValue") ':INT 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-SET-SOUND-FONTS "Mix_SetSoundFonts") ':INT '((|paths| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-SOUND-FONTS "Mix_GetSoundFonts") '(:STRING) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-EACH-SOUND-FONT "Mix_EachSoundFont") ':INT
     '((|function| (:POINTER (:VOID))) (|data| (:POINTER :VOID))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-SET-TIMIDITY-CFG "Mix_SetTimidityCfg") ':INT '((|path| (:STRING))))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION
     '(MIX-GET-TIMIDITY-CFG "Mix_GetTimidityCfg") '(:STRING) 'NIL)
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-GET-CHUNK "Mix_GetChunk")
                                      '(:POINTER MIX-CHUNK)
                                      '((|channel| :INT)))
    (AUTOWRAP:DEFINE-FOREIGN-FUNCTION '(MIX-CLOSE-AUDIO "Mix_CloseAudio")
                                      ':VOID 'NIL)
    (DEFPARAMETER +SC-NI-FAST32+ NIL)
    (DEFPARAMETER +SC-NI-FAST16+ NIL)
    (DEFPARAMETER +SC-NU8+ NIL)
    (DEFPARAMETER +SC-NI-FAST64+ NIL)
    (DEFPARAMETER +SC-NU16+ NIL)
    (DEFPARAMETER +SC-NU32+ NIL)
    (DEFPARAMETER +SC-NU-LEAST16+ NIL)
    (DEFPARAMETER +SC-NU64+ NIL)
    (DEFPARAMETER +SC-NU-LEAST8+ NIL)
    (DEFPARAMETER +SC-NU-LEAST64+ NIL)
    (DEFPARAMETER +SC-NU-FAST8+ NIL)
    (DEFPARAMETER +SC-NU-LEAST32+ NIL)
    (DEFPARAMETER +SC-NU-FAST16+ NIL)
    (DEFPARAMETER +SC-NU-FAST32+ NIL)
    (DEFPARAMETER +SC-NO8+ NIL)
    (DEFPARAMETER +SC-NU-FAST64+ NIL)
    (DEFPARAMETER +SC-NO64+ NIL)
    (DEFPARAMETER +SC-NO32+ NIL)
    (DEFPARAMETER +SC-NO16+ NIL)
    (DEFPARAMETER +HAVE-STRTOULL+ 1)
    (DEFPARAMETER +SC-ND64+ NIL)
    (DEFPARAMETER +HAVE-STRTOD+ 1)
    (DEFPARAMETER +HAVE-ATOI+ 1)
    (DEFPARAMETER +SC-ND16+ NIL)
    (DEFPARAMETER +SC-ND32+ NIL)
    (DEFPARAMETER +SC-ND-LEAST16+ NIL)
    (DEFPARAMETER +SC-ND-LEAST8+ NIL)
    (DEFPARAMETER +SC-ND-LEAST64+ NIL)
    (DEFPARAMETER +HAVE-STRNCMP+ 1)
    (DEFPARAMETER +SC-ND-LEAST32+ NIL)
    (DEFPARAMETER +SC-ND-FAST8+ NIL)
    (DEFPARAMETER +HAVE-STRCASECMP+ 1)
    (DEFPARAMETER +HAVE-ATOF+ 1)
    (DEFPARAMETER +SC-ND-FAST32+ NIL)
    (DEFPARAMETER +HAVE-STRCMP+ 1)
    (DEFPARAMETER +__ATTRIBUTE_DEPRECATED__+ NIL)
    (DEFPARAMETER +SC-ND-FAST16+ NIL)
    (DEFPARAMETER +HAVE-VSNPRINTF+ 1)
    (DEFPARAMETER +HAVE-VSSCANF+ 1)
    (DEFPARAMETER +SC-ND-FAST64+ NIL)
    (DEFPARAMETER +HAVE-STRNCASECMP+ 1)
    (DEFPARAMETER +SC-NI64+ NIL)
    (DEFPARAMETER +SC-NI16+ NIL)
    (DEFPARAMETER +HAVE-STRCASESTR+ 1)
    (DEFPARAMETER +SC-NI-LEAST16+ NIL)
    (DEFPARAMETER +HAVE-ASIN+ 1)
    (DEFPARAMETER +SC-NI8+ NIL)
    (DEFPARAMETER +HAVE-ASINF+ 1)
    (DEFPARAMETER +HAVE-ACOS+ 1)
    (DEFPARAMETER +SC-NI-LEAST8+ NIL)
    (DEFPARAMETER +SC-NI-LEAST64+ NIL)
    (DEFPARAMETER +HAVE-ACOSF+ 1)
    (DEFPARAMETER +SC-NI-LEAST32+ NIL)
    (DEFPARAMETER +SC-NI-FAST8+ NIL)
    (DEFPARAMETER +HAVE-CEIL+ 1)
    (DEFPARAMETER +HAVE-ATANF+ 1)
    (DEFPARAMETER +HAVE-ATAN2+ 1)
    (DEFPARAMETER +HAVE-ATAN+ 1)
    (DEFPARAMETER +HAVE-ATAN2F+ 1)
    (DEFPARAMETER +HAVE-COS+ 1)
    (DEFPARAMETER +SC-NI32+ NIL)
    (DEFPARAMETER +FP-NORMAL+ 4)
    (DEFPARAMETER +PRIXFAST64+ NIL)
    (DEFPARAMETER +HAVE-COPYSIGNF+ 1)
    (DEFPARAMETER +FP-ZERO+ 2)
    (DEFPARAMETER +HAVE-COPYSIGN+ 1)
    (DEFPARAMETER +FP-INFINITE+ 1)
    (DEFPARAMETER +PR-ID-MAX+ NIL)
    (DEFPARAMETER +HAVE-CEILF+ 1)
    (DEFPARAMETER +PR-IO-MAX+ NIL)
    (DEFPARAMETER +HAVE-FABSF+ 1)
    (DEFPARAMETER +PR-II-MAX+ NIL)
    (DEFPARAMETER +PR-IX-MAX+ NIL)
    (DEFPARAMETER +HAVE-FABS+ 1)
    (DEFPARAMETER +PR-ID-PTR+ NIL)
    (DEFPARAMETER +FP-SUBNORMAL+ 3)
    (DEFPARAMETER +HAVE-EXPF+ 1)
    (DEFPARAMETER +PRIXMAX+ NIL)
    (DEFPARAMETER +HAVE-COSF+ 1)
    (DEFPARAMETER +HAVE-EXP+ 1)
    (DEFPARAMETER +HAVE-FMODF+ 1)
    (DEFPARAMETER +HAVE-LOG+ 1)
    (DEFPARAMETER +PR-IX-PTR+ NIL)
    (DEFPARAMETER +HAVE-FMOD+ 1)
    (DEFPARAMETER +PR-IU-MAX+ NIL)
    (DEFPARAMETER +HAVE-FLOORF+ 1)
    (DEFPARAMETER +PR-IU-PTR+ NIL)
    (DEFPARAMETER +HAVE-FLOOR+ 1)
    (DEFPARAMETER +SC-ND8+ NIL)
    (DEFPARAMETER +PRIXPTR+ NIL)
    (DEFPARAMETER +HAVE-LROUND+ 1)
    (DEFPARAMETER +HAVE-LOG10F+ 1)
    (DEFPARAMETER +PR-IO-PTR+ NIL)
    (DEFPARAMETER +HAVE-LOG10+ 1)
    (DEFPARAMETER +FP-NAN+ 0)
    (DEFPARAMETER +HAVE-LOGF+ 1)
    (DEFPARAMETER +__MATHCALL_NARROW_ARGS_3+ NIL)
    (DEFPARAMETER +MATH-ERRNO+ 1)
    (DEFPARAMETER +HAVE-ROUNDF+ 1)
    (DEFPARAMETER +HAVE-ROUND+ 1)
    (DEFPARAMETER +HAVE-POWF+ 1)
    (DEFPARAMETER +_BITS_TYPES_LOCALE_T_H+ 1)
    (DEFPARAMETER +_BITS_TYPES___LOCALE_T_H+ 1)
    (DEFPARAMETER +HAVE-POW+ 1)
    (DEFPARAMETER +__MATHCALL_NARROW_ARGS_1+ NIL)
    (DEFPARAMETER +__MATHCALL_NARROW_ARGS_2+ NIL)
    (DEFPARAMETER +SDL-MUTEX-MAXWAIT+ 4294967295)
    (DEFPARAMETER +HAVE-LROUNDF+ 1)
    (DEFPARAMETER +HAVE-SINF+ 1)
    (DEFPARAMETER +PR-II-PTR+ NIL)
    (DEFPARAMETER +HAVE-SIN+ 1)
    (DEFPARAMETER +HAVE-SCALBNF+ 1)
    (DEFPARAMETER +SDL-NO-THREAD-SAFETY-ANALYSIS+ NIL)
    (DEFPARAMETER +HAVE-SCALBN+ 1)
    (DEFPARAMETER +SDL-MUTEX-TIMEDOUT+ 1)
    (DEFPARAMETER +HAVE-TRUNC+ 1)
    (DEFPARAMETER +_STRING_H+ 1)
    (DEFPARAMETER +HAVE-TANF+ 1)
    (DEFPARAMETER +HAVE-TAN+ 1)
    (DEFPARAMETER +HAVE-SQRTF+ 1)
    (DEFPARAMETER +HAVE-SQRT+ 1)
    (DEFPARAMETER +AUDIO-U16+ 16)
    (DEFPARAMETER +AUDIO-S16MSB+ 36880)
    (DEFPARAMETER +AUDIO-U16MSB+ 4112)
    (DEFPARAMETER +_ALLOCA_H+ 1)
    (DEFPARAMETER +AUDIO-S16LSB+ 32784)
    (DEFPARAMETER +AUDIO-U16LSB+ 16)
    (DEFPARAMETER +AUDIO-S8+ 32776)
    (DEFPARAMETER +AUDIO-U8+ 8)
    (DEFPARAMETER +AUDIO-S16SYS+ 32784)
    (DEFPARAMETER +AUDIO-U16SYS+ 16)
    (DEFPARAMETER +AUDIO-F32+ 33056)
    (DEFPARAMETER +AUDIO-F32MSB+ 37152)
    (DEFPARAMETER +AUDIO-F32LSB+ 33056)
    (DEFPARAMETER +AUDIO-S32+ 32800)
    (DEFPARAMETER +AUDIO-S32MSB+ 36896)
    (DEFPARAMETER +AUDIO-S32LSB+ 32800)
    (DEFPARAMETER +AUDIO-S16+ 32784)
    (DEFPARAMETER +SC-NO-MAX+ NIL)
    (DEFPARAMETER +SC-NI-MAX+ NIL)
    (DEFPARAMETER +SC-NU-MAX+ NIL)
    (DEFPARAMETER +SC-NX-FAST64+ NIL)
    (DEFPARAMETER +SC-ND-MAX+ NIL)
    (DEFPARAMETER +SC-NX-MAX+ NIL)
    (DEFPARAMETER +_WCHAR_H+ 1)
    (DEFPARAMETER +__HAVE_DISTINCT_FLOAT32+ 0)
    (DEFPARAMETER +SC-NO-LEAST32+ NIL)
    (DEFPARAMETER +__HAVE_DISTINCT_FLOAT16+ 0)
    (DEFPARAMETER +SC-NO-LEAST64+ NIL)
    (DEFPARAMETER +SC-NO-FAST8+ NIL)
    (DEFPARAMETER +__HAVE_FLOAT128X+ 0)
    (DEFPARAMETER +SC-NO-LEAST8+ NIL)
    (DEFPARAMETER +__HAVE_FLOAT32X+ 1)
    (DEFPARAMETER +SC-NO-LEAST16+ NIL)
    (DEFPARAMETER +__HAVE_FLOAT64+ 1)
    (DEFPARAMETER +SC-NO-FAST64+ NIL)
    (DEFPARAMETER +__HAVE_DISTINCT_FLOAT64X+ 0)
    (DEFPARAMETER +SC-NX8+ NIL)
    (DEFPARAMETER +__HAVE_DISTINCT_FLOAT32X+ 0)
    (DEFPARAMETER +SC-NO-FAST16+ NIL)
    (DEFPARAMETER +__HAVE_DISTINCT_FLOAT64+ 0)
    (DEFPARAMETER +SC-NO-FAST32+ NIL)
    (DEFPARAMETER +SC-NX-LEAST8+ NIL)
    (DEFPARAMETER +__HAVE_FLOAT64X+ 1)
    (DEFPARAMETER +SC-NX-LEAST16+ NIL)
    (DEFPARAMETER +__HAVE_DISTINCT_FLOAT128+ 0)
    (DEFPARAMETER +SC-NX16+ NIL)
    (DEFPARAMETER +__HAVE_FLOAT128+ 0)
    (DEFPARAMETER +SC-NX32+ NIL)
    (DEFPARAMETER +SC-NX64+ NIL)
    (DEFPARAMETER +__HAVE_FLOAT32+ 1)
    (DEFPARAMETER +SC-NX-FAST16+ NIL)
    (DEFPARAMETER +__HAVE_FLOAT16+ 0)
    (DEFPARAMETER +SC-NX-FAST32+ NIL)
    (DEFPARAMETER +SC-NX-LEAST32+ NIL)
    (DEFPARAMETER +SC-NX-LEAST64+ NIL)
    (DEFPARAMETER +__HAVE_FLOAT64X_LONG_DOUBLE+ 1)
    (DEFPARAMETER +WNOHANG+ 1)
    (DEFPARAMETER +WUNTRACED+ 2)
    (DEFPARAMETER +__CFLOAT64+ NIL)
    (DEFPARAMETER +_BITS_UINTN_IDENTITY_H+ 1)
    (DEFPARAMETER +__CFLOAT32X+ NIL)
    (DEFPARAMETER +SC-NX-FAST8+ NIL)
    (DEFPARAMETER +__CFLOAT64X+ NIL)
    (DEFPARAMETER +__CFLOAT32+ NIL)
    (DEFPARAMETER +__HAVE_FLOAT128_UNLIKE_LDBL+ 0)
    (DEFPARAMETER +__HAVE_FLOATN_NOT_TYPEDEF+ 0)
    (DEFPARAMETER +__HAVE_DISTINCT_FLOAT128X+ 0)
    (DEFPARAMETER +_SYS_SELECT_H+ 1)
    (DEFPARAMETER +__W_CONTINUED+ 65535)
    (DEFPARAMETER +RW-SEEK-CUR+ 1)
    (DEFPARAMETER +__WCOREFLAG+ 128)
    (DEFPARAMETER +__WALL+ 1073741824)
    (DEFPARAMETER +__WCLONE+ 2147483648)
    (DEFPARAMETER +WCONTINUED+ 8)
    (DEFPARAMETER +__WNOTHREAD+ 536870912)
    (DEFPARAMETER +__SIGSET_T_DEFINED+ 1)
    (DEFPARAMETER +WEXITED+ 4)
    (DEFPARAMETER +EXIT-FAILURE+ 1)
    (DEFPARAMETER +RAND-MAX+ 2147483647)
    (DEFPARAMETER +WSTOPPED+ 2)
    (DEFPARAMETER +__LLDIV_T_DEFINED+ 1)
    (DEFPARAMETER +__LDIV_T_DEFINED+ 1)
    (DEFPARAMETER +WNOWAIT+ 16777216)
    (DEFPARAMETER +RW-SEEK-END+ 2)
    (DEFPARAMETER +MB-CUR-MAX+ NIL)
    (DEFPARAMETER +EXIT-SUCCESS+ 0)
    (DEFPARAMETER +HAVE-SIGACTION+ 1)
    (DEFPARAMETER +HAVE-SA-SIGACTION+ 1)
    (DEFPARAMETER +HAVE-SETJMP+ 1)
    (DEFPARAMETER +HAVE-NANOSLEEP+ 1)
    (DEFPARAMETER +HAVE-SYSCONF+ 1)
    (DEFPARAMETER +HAVE-TRUNCF+ 1)
    (DEFPARAMETER +__HAVE_GENERIC_SELECTION+ 1)
    (DEFPARAMETER +HAVE-FOPEN64+ 1)
    (DEFPARAMETER +HAVE-FSEEKO+ 1)
    (DEFPARAMETER +HAVE-FSEEKO64+ 1)
    (DEFPARAMETER +HAVE-SEM-TIMEDWAIT+ 1)
    (DEFPARAMETER +HAVE-GETAUXVAL+ 1)
    (DEFPARAMETER +HAVE-POLL+ 1)
    (DEFPARAMETER +HAVE--EXIT+ 1)
    (DEFPARAMETER +HAVE-O-CLOEXEC+ 1)
    (DEFPARAMETER +HAVE-CLOCK-GETTIME+ 1)
    (DEFPARAMETER +RW-SEEK-SET+ 0)
    (DEFPARAMETER +HAVE-MPROTECT+ 1)
    (DEFPARAMETER +HAVE-ICONV+ 1)
    (DEFPARAMETER +HAVE-PTHREAD-SETNAME-NP+ 1)
    (DEFPARAMETER +LDBL-MANT-DIG+ 64)
    (DEFPARAMETER +DECIMAL-DIG+ 21)
    (DEFPARAMETER +FLT-MANT-DIG+ 24)
    (DEFPARAMETER +DBL-MANT-DIG+ 53)
    (DEFPARAMETER +HAVE-DBUS-DBUS-H+ 1)
    (DEFPARAMETER +DBL-MIN-10-EXP+ -307)
    (DEFPARAMETER +LDBL-MIN-10-EXP+ -4931)
    (DEFPARAMETER +LDBL-MIN-EXP+ -16381)
    (DEFPARAMETER +FLT-MIN-10-EXP+ -37)
    (DEFPARAMETER +LDBL-DIG+ 18)
    (DEFPARAMETER +DBL-MIN-EXP+ -1021)
    (DEFPARAMETER +FLT-MIN-EXP+ -125)
    (DEFPARAMETER +FLT-DIG+ 6)
    (DEFPARAMETER +DBL-DIG+ 15)
    (DEFPARAMETER +LDBL-MAX+ "INF")
    (DEFPARAMETER +FLT-EPSILON+ 1.192093d-7)
    (DEFPARAMETER +__TIMEVAL_DEFINED+ 1)
    (DEFPARAMETER +DBL-MAX+ 1.797693d308)
    (DEFPARAMETER +__ALWAYS_INLINE+ NIL)
    (DEFPARAMETER +_SIGSET_NWORDS+ 16)
    (DEFPARAMETER +FLT-MAX+ 3.402823d38)
    (DEFPARAMETER +LDBL-MAX-10-EXP+ 4932)
    (DEFPARAMETER +_STRUCT_TIMESPEC+ 1)
    (DEFPARAMETER +__RETURNS_NONNULL+ NIL)
    (DEFPARAMETER +DBL-MAX-10-EXP+ 308)
    (DEFPARAMETER +LDBL-MAX-EXP+ 16384)
    (DEFPARAMETER +FLT-MAX-10-EXP+ 38)
    (DEFPARAMETER +DBL-MAX-EXP+ 1024)
    (DEFPARAMETER +FLT-MAX-EXP+ 128)
    (DEFPARAMETER +__ATTRIBUTE_WARN_UNUSED_RESULT__+ NIL)
    (DEFPARAMETER +__EXTERN_ALWAYS_INLINE+ NIL)
    (DEFPARAMETER +__NFDBITS+ 64)
    (DEFPARAMETER +__FORTIFY_FUNCTION+ NIL)
    (DEFPARAMETER +FLT-DECIMAL-DIG+ 9)
    (DEFPARAMETER +LDBL-TRUE-MIN+ 0.0d0)
    (DEFPARAMETER +__RESTRICT_ARR+ NIL)
    (DEFPARAMETER +DBL-TRUE-MIN+ 0.0d0)
    (DEFPARAMETER +LDBL-MIN+ 0.0d0)
    (DEFPARAMETER +FLT-TRUE-MIN+ 1.401298d-45)
    (DEFPARAMETER +__ATTRIBUTE_ARTIFICIAL__+ NIL)
    (DEFPARAMETER +DBL-MIN+ 2.225074d-308)
    (DEFPARAMETER +NFDBITS+ 64)
    (DEFPARAMETER +FLT-MIN+ 1.175494d-38)
    (DEFPARAMETER +LDBL-EPSILON+ 1.0842020000000001d-19)
    (DEFPARAMETER +__EXTERN_INLINE+ NIL)
    (DEFPARAMETER +FD-SETSIZE+ 1024)
    (DEFPARAMETER +DBL-EPSILON+ 2.220446d-16)
    (DEFPARAMETER +__LDOUBLE_REDIRECTS_TO_FLOAT128_ABI+ 0)
    (DEFPARAMETER +SDL-SIZE-MAX+ 18446744073709551615)
    (DEFPARAMETER +LDBL-HAS-SUBNORM+ 1)
    (DEFPARAMETER +DBL-HAS-SUBNORM+ 1)
    (DEFPARAMETER +FLT-HAS-SUBNORM+ 1)
    (DEFPARAMETER +LDBL-DECIMAL-DIG+ 21)
    (DEFPARAMETER +DBL-DECIMAL-DIG+ 17)
    (DEFPARAMETER +SDL-MIN-SINT8+ -128)
    (DEFPARAMETER +SDL-POWER-LINUX+ 1)
    (DEFPARAMETER +SDL-FILESYSTEM-UNIX+ 1)
    (DEFPARAMETER +SDL-MAX-UINT8+ 255)
    (DEFPARAMETER +SDL-VIDEO-OPENGL-GLX+ 1)
    (DEFPARAMETER +SDL-MIN-UINT8+ 0)
    (DEFPARAMETER +SDL-VIDEO-VULKAN+ 1)
    (DEFPARAMETER +SDL-UDEV-DYNAMIC+ NIL)
    (DEFPARAMETER +SDL-HAVE-LIBDECOR-GET-MIN-MAX+ 1)
    (DEFPARAMETER +SDL-MAX-UINT16+ 65535)
    (DEFPARAMETER +DYNAPI-NEEDS-DLOPEN+ 1)
    (DEFPARAMETER +SDL-MIN-UINT16+ 0)
    (DEFPARAMETER +SDL-USE-IME+ 1)
    (DEFPARAMETER +SDL-MAX-SINT16+ 32767)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-HAS-XKBKEYCODETOKEYSYM+ 1)
    (DEFPARAMETER +SDL-VIDEO-RENDER-OGL+ 1)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-XSHAPE+ 1)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-SUPPORTS-GENERIC-EVENTS+ 1)
    (DEFPARAMETER +SDL-MIN-SINT16+ -32768)
    (DEFPARAMETER +SDL-VIDEO-OPENGL-ES2+ 1)
    (DEFPARAMETER +SDL-VIDEO-OPENGL-EGL+ 1)
    (DEFPARAMETER +SDL-VIDEO-RENDER-OGL-ES2+ 1)
    (DEFPARAMETER +SDL-MAX-SINT8+ 127)
    (DEFPARAMETER +SDL-VIDEO-OPENGL+ 1)
    (DEFPARAMETER +SDL-MAX-SINT32+ 2147483647)
    (DEFPARAMETER +SDL-MIN-SINT32+ -2147483648)
    (DEFPARAMETER +_SYS_TYPES_H+ 1)
    (DEFPARAMETER +SDL-MAX-UINT32+ 4294967295)
    (DEFPARAMETER +_FEATURES_H+ 1)
    (DEFPARAMETER +SDL-MIN-UINT32+ 0)
    (DEFPARAMETER +SC-NU-PTR+ NIL)
    (DEFPARAMETER +SC-NX-PTR+ NIL)
    (DEFPARAMETER +_CTYPE_H+ 1)
    (DEFPARAMETER +SC-NI-PTR+ NIL)
    (DEFPARAMETER +SC-ND-PTR+ NIL)
    (DEFPARAMETER +SC-NO-PTR+ NIL)
    (DEFPARAMETER +MIX-GET-ERROR+ NIL)
    (DEFPARAMETER +MIX-SET-ERROR+ NIL)
    (DEFPARAMETER +MIX-OUT-OF-MEMORY+ NIL)
    (DEFPARAMETER +MIX-CLEAR-ERROR+ NIL)
    (DEFPARAMETER +SDL-SCOPED-CAPABILITY+ NIL)
    (DEFPARAMETER +__GCC_HAVE_DWARF2_CFI_ASM+ 1)
    (DEFPARAMETER +HAVE-IMMINTRIN-H+ 1)
    (DEFPARAMETER +HAVE-LIBUDEV-H+ 1)
    (DEFPARAMETER +HAVE-LIBSAMPLERATE-H+ 1)
    (DEFPARAMETER +HAVE-LIBDECOR-H+ 1)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-ALSA+ 1)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-DISK+ 1)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-DUMMY+ 1)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-OSS+ 1)
    (DEFPARAMETER +HAVE-FCITX+ 1)
    (DEFPARAMETER +HAVE-SYS-INOTIFY-H+ 1)
    (DEFPARAMETER +HAVE-INOTIFY-INIT+ 1)
    (DEFPARAMETER +HAVE-INOTIFY-INIT1+ 1)
    (DEFPARAMETER +HAVE-INOTIFY+ 1)
    (DEFPARAMETER +HAVE-IBUS-IBUS-H+ 1)
    (DEFPARAMETER +SDL-JOYSTICK-HIDAPI+ 1)
    (DEFPARAMETER +SDL-JOYSTICK-LINUX+ 1)
    (DEFPARAMETER +SDL-HAPTIC-LINUX+ 1)
    (DEFPARAMETER +SDL-JOYSTICK-VIRTUAL+ 1)
    (DEFPARAMETER +SDL-LOADSO-DLOPEN+ 1)
    (DEFPARAMETER +_STRINGS_H+ 1)
    (DEFPARAMETER +PRIXLEAST64+ NIL)
    (DEFPARAMETER +SDL-SENSOR-DUMMY+ 1)
    (DEFPARAMETER +PRIXFAST8+ NIL)
    (DEFPARAMETER +SDL-THREAD-PTHREAD-RECURSIVE-MUTEX+ 1)
    (DEFPARAMETER +SDL-BIG-ENDIAN+ 4321)
    (DEFPARAMETER +SDL-LIL-ENDIAN+ 1234)
    (DEFPARAMETER +PRIXFAST16+ NIL)
    (DEFPARAMETER +PRIXFAST32+ NIL)
    (DEFPARAMETER +SDL-THREAD-PTHREAD+ 1)
    (DEFPARAMETER +SDL-BYTEORDER+ 1234)
    (DEFPARAMETER +PRIX32+ NIL)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-PIPEWIRE-DYNAMIC+ NIL)
    (DEFPARAMETER +PRIX64+ NIL)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-PIPEWIRE+ 1)
    (DEFPARAMETER +PRIXLEAST8+ NIL)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-SNDIO+ 1)
    (DEFPARAMETER +PRIXLEAST16+ NIL)
    (DEFPARAMETER +__LINUX__+ 1)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-PULSEAUDIO+ 1)
    (DEFPARAMETER +SDL-AUDIO-DRIVER-SNDIO-DYNAMIC+ NIL)
    (DEFPARAMETER +PR-IX-FAST16+ NIL)
    (DEFPARAMETER +PR-IX-FAST32+ NIL)
    (DEFPARAMETER +SDL-INPUT-LINUXKD+ 1)
    (DEFPARAMETER +PR-IX-FAST64+ NIL)
    (DEFPARAMETER +SDL-INPUT-LINUXEV+ 1)
    (DEFPARAMETER +PRIX8+ NIL)
    (DEFPARAMETER +PRIXLEAST32+ NIL)
    (DEFPARAMETER +PRIX16+ NIL)
    (DEFPARAMETER +_WINT_T+ 1)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-XDBE+ 1)
    (DEFPARAMETER +__WINT_T_DEFINED+ 1)
    (DEFPARAMETER +HAS-BROKEN-BSWAP+ NIL)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-XINPUT2-SUPPORTS-MULTITOUCH+ 1)
    (DEFPARAMETER +__MBSTATE_T_DEFINED+ 1)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-XINPUT2+ 1)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-XRANDR+ 1)
    (DEFPARAMETER +__WCHAR_MAX+ 2147483647)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-XFIXES+ 1)
    (DEFPARAMETER +_BITS_WCHAR_H+ 1)
    (DEFPARAMETER +__WCHAR_MIN+ -2147483648)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-XSCRNSAVER+ 1)
    (DEFPARAMETER +HAS-BUILTIN-BSWAP64+ NIL)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-DUMMY+ 1)
    (DEFPARAMETER +SDL-FLOATWORDORDER+ 1234)
    (DEFPARAMETER +SDL-TIMER-UNIX+ 1)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-WAYLAND-QT-TOUCH+ 1)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-WAYLAND+ 1)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-KMSDRM+ 1)
    (DEFPARAMETER +WCHAR-MAX+ 2147483647)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11+ 1)
    (DEFPARAMETER +WCHAR-MIN+ -2147483648)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-X11-XCURSOR+ 1)
    (DEFPARAMETER +SDL-VIDEO-DRIVER-OFFSCREEN+ 1)
    (DEFPARAMETER +WEOF+ 4294967295)
    (DEFPARAMETER +__S16_TYPE+ NIL)
    (DEFPARAMETER +PR-IO-FAST8+ NIL)
    (DEFPARAMETER +PR-IO-LEAST64+ NIL)
    (DEFPARAMETER +PR-IO-LEAST16+ NIL)
    (DEFPARAMETER +PR-IO-LEAST8+ NIL)
    (DEFPARAMETER +INT8-MIN+ -128)
    (DEFPARAMETER +PR-IO-LEAST32+ NIL)
    (DEFPARAMETER +PR-IU8+ NIL)
    (DEFPARAMETER +SDL-INLINE+ NIL)
    (DEFPARAMETER +PR-IO-FAST64+ NIL)
    (DEFPARAMETER +PR-IU16+ NIL)
    (DEFPARAMETER +PR-IO-FAST32+ NIL)
    (DEFPARAMETER +HAS-BUILTIN-BSWAP16+ NIL)
    (DEFPARAMETER +PR-IO-FAST16+ NIL)
    (DEFPARAMETER +PR-II-FAST32+ NIL)
    (DEFPARAMETER +PR-II-FAST16+ NIL)
    (DEFPARAMETER +HAS-BUILTIN-BSWAP32+ NIL)
    (DEFPARAMETER +PR-II-FAST8+ NIL)
    (DEFPARAMETER +PR-II-LEAST64+ NIL)
    (DEFPARAMETER +PR-IO64+ NIL)
    (DEFPARAMETER +PR-IO32+ NIL)
    (DEFPARAMETER +PR-IO8+ NIL)
    (DEFPARAMETER +PR-IO16+ NIL)
    (DEFPARAMETER +PR-II-FAST64+ NIL)
    (DEFPARAMETER +__SYSCALL_ULONG_TYPE+ NIL)
    (DEFPARAMETER +PR-IX64+ NIL)
    (DEFPARAMETER +PR-IX32+ NIL)
    (DEFPARAMETER +__SYSCALL_SLONG_TYPE+ NIL)
    (DEFPARAMETER +PR-IX16+ NIL)
    (DEFPARAMETER +_BITS_TYPESIZES_H+ 1)
    (DEFPARAMETER +PR-IX8+ NIL)
    (DEFPARAMETER +__STD_TYPE+ NIL)
    (DEFPARAMETER +PR-IU-FAST64+ NIL)
    (DEFPARAMETER +__U64_TYPE+ NIL)
    (DEFPARAMETER +PR-IX-FAST8+ NIL)
    (DEFPARAMETER +PR-IX-LEAST64+ NIL)
    (DEFPARAMETER +__S64_TYPE+ NIL)
    (DEFPARAMETER +__ULONG32_TYPE+ NIL)
    (DEFPARAMETER +PR-IX-LEAST32+ NIL)
    (DEFPARAMETER +PR-IX-LEAST16+ NIL)
    (DEFPARAMETER +__SLONG32_TYPE+ NIL)
    (DEFPARAMETER +__UWORD_TYPE+ NIL)
    (DEFPARAMETER +PR-IX-LEAST8+ NIL)
    (DEFPARAMETER +PR-IU-LEAST32+ NIL)
    (DEFPARAMETER +__SWORD_TYPE+ NIL)
    (DEFPARAMETER +PR-IU-LEAST16+ NIL)
    (DEFPARAMETER +PR-IU-LEAST8+ NIL)
    (DEFPARAMETER +__UQUAD_TYPE+ NIL)
    (DEFPARAMETER +__SQUAD_TYPE+ NIL)
    (DEFPARAMETER +__ULONGWORD_TYPE+ NIL)
    (DEFPARAMETER +PR-IU32+ NIL)
    (DEFPARAMETER +PR-IU64+ NIL)
    (DEFPARAMETER +__SLONGWORD_TYPE+ NIL)
    (DEFPARAMETER +PR-IU-FAST32+ NIL)
    (DEFPARAMETER +__U32_TYPE+ NIL)
    (DEFPARAMETER +PR-IU-FAST16+ NIL)
    (DEFPARAMETER +__S32_TYPE+ NIL)
    (DEFPARAMETER +PR-IU-FAST8+ NIL)
    (DEFPARAMETER +__U16_TYPE+ NIL)
    (DEFPARAMETER +PR-IU-LEAST64+ NIL)
    (DEFPARAMETER +UINT-FAST32-MAX+ 18446744073709551615)
    (DEFPARAMETER +UINT-FAST16-MAX+ 18446744073709551615)
    (DEFPARAMETER +INTPTR-MAX+ 9223372036854775807)
    (DEFPARAMETER +INTPTR-MIN+ -9223372036854775808)
    (DEFPARAMETER +UINT-FAST64-MAX+ -1)
    (DEFPARAMETER +INT-FAST32-MAX+ 9223372036854775807)
    (DEFPARAMETER +INT-FAST16-MAX+ 9223372036854775807)
    (DEFPARAMETER +__PRI64_PREFIX+ NIL)
    (DEFPARAMETER +INT-FAST8-MAX+ 127)
    (DEFPARAMETER +UINT-FAST8-MAX+ 255)
    (DEFPARAMETER +INT-FAST64-MAX+ 9223372036854775807)
    (DEFPARAMETER +____GWCHAR_T_DEFINED+ 1)
    (DEFPARAMETER +AUDIO-S32SYS+ 32800)
    (DEFPARAMETER +INT-FAST16-MIN+ -9223372036854775808)
    (DEFPARAMETER +INT-FAST8-MIN+ -128)
    (DEFPARAMETER +AUDIO-F32SYS+ 33056)
    (DEFPARAMETER +SDL-AUDIO-ALLOW-FREQUENCY-CHANGE+ 1)
    (DEFPARAMETER +INT-FAST64-MIN+ -9223372036854775808)
    (DEFPARAMETER +SDL-AUDIO-ALLOW-FORMAT-CHANGE+ 2)
    (DEFPARAMETER +INT-FAST32-MIN+ -9223372036854775808)
    (DEFPARAMETER +UINT-LEAST16-MAX+ 65535)
    (DEFPARAMETER +SDL-AUDIO-ALLOW-CHANNELS-CHANGE+ 4)
    (DEFPARAMETER +UINT-LEAST8-MAX+ 255)
    (DEFPARAMETER +SDL-AUDIO-ALLOW-SAMPLES-CHANGE+ 8)
    (DEFPARAMETER +UINT-LEAST64-MAX+ -1)
    (DEFPARAMETER +SDL-AUDIO-ALLOW-ANY-CHANGE+ 15)
    (DEFPARAMETER +UINT-LEAST32-MAX+ 4294967295)
    (DEFPARAMETER +INT-LEAST8-MAX+ 127)
    (DEFPARAMETER +PR-ID-FAST64+ NIL)
    (DEFPARAMETER +MIX-EFFECTSMAXSPEED+ NIL)
    (DEFPARAMETER +INT-LEAST64-MIN+ -9223372036854775808)
    (DEFPARAMETER +PR-II16+ NIL)
    (DEFPARAMETER +PR-II8+ NIL)
    (DEFPARAMETER +PR-ID-FAST16+ NIL)
    (DEFPARAMETER +INT-LEAST64-MAX+ 9223372036854775807)
    (DEFPARAMETER +INT-LEAST16-MAX+ 32767)
    (DEFPARAMETER +INT-LEAST32-MAX+ 2147483647)
    (DEFPARAMETER +PR-ID-FAST32+ NIL)
    (DEFPARAMETER +INT-LEAST8-MIN+ -128)
    (DEFPARAMETER +PR-II-LEAST8+ NIL)
    (DEFPARAMETER +PR-II-LEAST32+ NIL)
    (DEFPARAMETER +UINT64-MAX+ -1)
    (DEFPARAMETER +PR-II-LEAST16+ NIL)
    (DEFPARAMETER +INT-LEAST32-MIN+ -2147483648)
    (DEFPARAMETER +PR-II32+ NIL)
    (DEFPARAMETER +_BITS_TYPES_H+ 1)
    (DEFPARAMETER +PR-II64+ NIL)
    (DEFPARAMETER +INT-LEAST16-MIN+ -32768)
    (DEFPARAMETER +PR-ID32+ NIL)
    (DEFPARAMETER +INT64-MAX+ 9223372036854775807)
    (DEFPARAMETER +MIX-CHANNEL-POST+ -2)
    (DEFPARAMETER +INT32-MAX+ 2147483647)
    (DEFPARAMETER +PR-ID64+ NIL)
    (DEFPARAMETER +UINT16-MAX+ 65535)
    (DEFPARAMETER +SDL-RWOPS-MEMORY-RO+ 5)
    (DEFPARAMETER +UINT32-MAX+ 4294967295)
    (DEFPARAMETER +UINT8-MAX+ 255)
    (DEFPARAMETER +PR-ID16+ NIL)
    (DEFPARAMETER +__PRIPTR_PREFIX+ NIL)
    (DEFPARAMETER +SDL-RWOPS-MEMORY+ 4)
    (DEFPARAMETER +PR-ID8+ NIL)
    (DEFPARAMETER +PR-ID-LEAST64+ NIL)
    (DEFPARAMETER +INT64-MIN+ -9223372036854775808)
    (DEFPARAMETER +INT16-MIN+ -32768)
    (DEFPARAMETER +PR-ID-FAST8+ NIL)
    (DEFPARAMETER +SDL-RWOPS-STDFILE+ 2)
    (DEFPARAMETER +INT32-MIN+ -2147483648)
    (DEFPARAMETER +SDL-RWOPS-WINFILE+ 1)
    (DEFPARAMETER +INT16-MAX+ 32767)
    (DEFPARAMETER +PR-ID-LEAST8+ NIL)
    (DEFPARAMETER +PR-ID-LEAST32+ NIL)
    (DEFPARAMETER +INT8-MAX+ 127)
    (DEFPARAMETER +PR-ID-LEAST16+ NIL)
    (DEFPARAMETER +SDL-RWOPS-UNKNOWN+ 0)
    (DEFPARAMETER +SDL-AUDIOCVT-MAX-FILTERS+ 9)
    (DEFPARAMETER +SDL-RWOPS-JNIFILE+ 3)
    (DEFPARAMETER +WINT-MIN+ 0)
    (DEFPARAMETER +WINT-MAX+ 4294967295)
    (DEFPARAMETER +SIG-ATOMIC-MIN+ -2147483648)
    (DEFPARAMETER +SIG-ATOMIC-MAX+ 2147483647)
    (DEFPARAMETER +SIZE-MAX+ 18446744073709551615)
    (DEFPARAMETER +PTRDIFF-MIN+ -9223372036854775808)
    (DEFPARAMETER +PTRDIFF-MAX+ 9223372036854775807)
    (DEFPARAMETER +INTMAX-MAX+ 9223372036854775807)
    (DEFPARAMETER +UINTMAX-MAX+ -1)
    (DEFPARAMETER +UINTPTR-MAX+ 18446744073709551615)
    (DEFPARAMETER +INTMAX-MIN+ -9223372036854775808)
    (DEFPARAMETER +SDL-MIXER-COMPILEDVERSION+ 2800)
    (DEFPARAMETER +__STDC_IEC_60559_BFP__+ 201404)
    (DEFPARAMETER +MIX-MAX-VOLUME+ 128)
    (DEFPARAMETER +MIX-DEFAULT-CHANNELS+ 2)
    (DEFPARAMETER +MIX-DEFAULT-FORMAT+ 32784)
    (DEFPARAMETER +MIX-DEFAULT-FREQUENCY+ 44100)
    (DEFPARAMETER +MIX-CHANNELS+ 8)
    (DEFPARAMETER +__USE_MISC+ 1)
    (DEFPARAMETER +__USE_ATFILE+ 1)
    (DEFPARAMETER +__HAVE_PTHREAD_ATTR_T+ 1)
    (DEFPARAMETER +__USE_FORTIFY_LEVEL+ 0)
    (DEFPARAMETER +__GLIBC_USE_LIB_EXT2+ 0)
    (DEFPARAMETER +__GLIBC_USE_ISOC2X+ 0)
    (DEFPARAMETER +__GLIBC_USE_DEPRECATED_GETS+ 0)
    (DEFPARAMETER +__GLIBC_USE_IEC_60559_BFP_EXT+ 0)
    (DEFPARAMETER +__GLIBC_USE_DEPRECATED_SCANF+ 0)
    (DEFPARAMETER +_STDIO_H+ 1)
    (DEFPARAMETER +__USE_ISOC11+ 1)
    (DEFPARAMETER +__USE_ISOC99+ 1)
    (DEFPARAMETER +__USE_ISOC95+ 1)
    (DEFPARAMETER +__USE_POSIX+ 1)
    (DEFPARAMETER +__USE_POSIX2+ 1)
    (DEFPARAMETER +__USE_POSIX199309+ 1)
    (DEFPARAMETER +__USE_POSIX199506+ 1)
    (DEFPARAMETER +__USE_XOPEN2K+ 1)
    (DEFPARAMETER +__ONCE_FLAG_INIT+ 0)
    (DEFPARAMETER +__USE_XOPEN2K8+ 1)
    (DEFPARAMETER +__FSFILCNT64_T_TYPE+ NIL)
    (DEFPARAMETER +_ATFILE_SOURCE+ 1)
    (DEFPARAMETER +__ID_T_TYPE+ NIL)
    (DEFPARAMETER +__CLOCK_T_TYPE+ NIL)
    (DEFPARAMETER +__TIME_T_TYPE+ NIL)
    (DEFPARAMETER +____MBSTATE_T_DEFINED+ 1)
    (DEFPARAMETER +__WORDSIZE+ 64)
    (DEFPARAMETER +__USECONDS_T_TYPE+ NIL)
    (DEFPARAMETER +_____FPOS_T_DEFINED+ 1)
    (DEFPARAMETER +__SYSCALL_WORDSIZE+ 64)
    (DEFPARAMETER +__FILE_DEFINED+ 1)
    (DEFPARAMETER +__WORDSIZE_TIME64_COMPAT32+ 1)
    (DEFPARAMETER +__TIMESIZE+ 64)
    (DEFPARAMETER +__STRUCT_FILE_DEFINED+ 1)
    (DEFPARAMETER +_____FPOS64_T_DEFINED+ 1)
    (DEFPARAMETER +__STDC_IEC_559__+ 1)
    (DEFPARAMETER +____FILE_DEFINED+ 1)
    (DEFPARAMETER +_STDC_PREDEF_H+ 1)
    (DEFPARAMETER +__GLIBC_USE_IEC_60559_FUNCS_EXT+ 0)
    (DEFPARAMETER +__UID_T_TYPE+ NIL)
    (DEFPARAMETER +__GID_T_TYPE+ NIL)
    (DEFPARAMETER +__INO_T_TYPE+ NIL)
    (DEFPARAMETER +__INO64_T_TYPE+ NIL)
    (DEFPARAMETER +__DEV_T_TYPE+ NIL)
    (DEFPARAMETER +__MODE_T_TYPE+ NIL)
    (DEFPARAMETER +_DEFAULT_SOURCE+ 1)
    (DEFPARAMETER +__NLINK_T_TYPE+ NIL)
    (DEFPARAMETER +__GLIBC_USE_IEC_60559_BFP_EXT_C2X+ 0)
    (DEFPARAMETER +__FSWORD_T_TYPE+ NIL)
    (DEFPARAMETER +__GLIBC_USE_IEC_60559_EXT+ 0)
    (DEFPARAMETER +__OFF_T_TYPE+ NIL)
    (DEFPARAMETER +__OFF64_T_TYPE+ NIL)
    (DEFPARAMETER +__PID_T_TYPE+ NIL)
    (DEFPARAMETER +__RLIM_T_TYPE+ NIL)
    (DEFPARAMETER +_POSIX_SOURCE+ 1)
    (DEFPARAMETER +__RLIM64_T_TYPE+ NIL)
    (DEFPARAMETER +__BLKCNT_T_TYPE+ NIL)
    (DEFPARAMETER +__USE_POSIX_IMPLICITLY+ 1)
    (DEFPARAMETER +__BLKCNT64_T_TYPE+ NIL)
    (DEFPARAMETER +_POSIX_C_SOURCE+ 200809)
    (DEFPARAMETER +__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X+ 0)
    (DEFPARAMETER +__FSBLKCNT_T_TYPE+ NIL)
    (DEFPARAMETER +__FSBLKCNT64_T_TYPE+ NIL)
    (DEFPARAMETER +__GLIBC_USE_IEC_60559_TYPES_EXT+ 0)
    (DEFPARAMETER +__FSFILCNT_T_TYPE+ NIL)
    (DEFPARAMETER +SDL-MAX-SINT64+ 9223372036854775807)
    (DEFPARAMETER +SDL-MIN-SINT64+ -9223372036854775808)
    (DEFPARAMETER +SDL-PR-IU64+ NIL)
    (DEFPARAMETER +SDL-PR-IX64+ NIL)
    (DEFPARAMETER +SDL-PRIX64+ NIL)
    (DEFPARAMETER +SDL-MAX-UINT64+ -1)
    (DEFPARAMETER +SDL-MIN-UINT64+ 0)
    (DEFPARAMETER +SDL-PR-IS64+ NIL)
    (DEFPARAMETER +SDL-FLT-EPSILON+ 1.192093d-7)
    (DEFPARAMETER +__CLOCKID_T_DEFINED+ 1)
    (DEFPARAMETER +__CLOCK_T_DEFINED+ 1)
    (DEFPARAMETER +__TIME_T_DEFINED+ 1)
    (DEFPARAMETER +__TIMER_T_DEFINED+ 1)
    (DEFPARAMETER +_BITS_LIBM_SIMD_DECL_STUBS_H+ 1)
    (DEFPARAMETER +_MATH_H+ 1)
    (DEFPARAMETER +SDL-PR-IU32+ NIL)
    (DEFPARAMETER +SDL-PR-IX32+ NIL)
    (DEFPARAMETER +SDL-PR-IS32+ NIL)
    (DEFPARAMETER +SDL-PRIX32+ NIL)
    (DEFPARAMETER +HAVE-DLOPEN+ 1)
    (DEFPARAMETER +HAVE-LINUX-INPUT-H+ 1)
    (DEFPARAMETER +__FLOAT_WORD_ORDER+ 1234)
    (DEFPARAMETER +HAVE-WCHAR-H+ 1)
    (DEFPARAMETER +HAVE-SYS-TYPES-H+ 1)
    (DEFPARAMETER +_BITS_ENDIANNESS_H+ 1)
    (DEFPARAMETER +HAVE-STRING-H+ 1)
    (DEFPARAMETER +__BYTE_ORDER+ 1234)
    (DEFPARAMETER +LITTLE-ENDIAN+ 1234)
    (DEFPARAMETER +HAVE-STRINGS-H+ 1)
    (DEFPARAMETER +BIG-ENDIAN+ 4321)
    (DEFPARAMETER +HAVE-STDLIB-H+ 1)
    (DEFPARAMETER +HAVE-STDIO-H+ 1)
    (DEFPARAMETER +PDP-ENDIAN+ 3412)
    (DEFPARAMETER +HAVE-STDINT-H+ 1)
    (DEFPARAMETER +HAVE-UNSETENV+ 1)
    (DEFPARAMETER +HAVE-PUTENV+ 1)
    (DEFPARAMETER +_BITS_BYTESWAP_H+ 1)
    (DEFPARAMETER +HAVE-SETENV+ 1)
    (DEFPARAMETER +BYTE-ORDER+ 1234)
    (DEFPARAMETER +HAVE-GETENV+ 1)
    (DEFPARAMETER +HAVE-ALLOCA+ 1)
    (DEFPARAMETER +HAVE-FREE+ 1)
    (DEFPARAMETER +HAVE-REALLOC+ 1)
    (DEFPARAMETER +HAVE-CALLOC+ 1)
    (DEFPARAMETER +HAVE-MALLOC+ 1)
    (DEFPARAMETER +HAVE-ALLOCA-H+ 1)
    (DEFPARAMETER +HAVE-CTYPE-H+ 1)
    (DEFPARAMETER +STDC-HEADERS+ 1)
    (DEFPARAMETER +_BITS_STDINT_INTN_H+ 1)
    (DEFPARAMETER +HAVE-LIBC+ 1)
    (DEFPARAMETER +HAVE-GCC-ATOMICS+ 1)
    (DEFPARAMETER +SIZEOF-VOIDP+ 8)
    (DEFPARAMETER +SDL-HAS-FALLTHROUGH+ NIL)
    (DEFPARAMETER +HAVE-STDARG-H+ 1)
    (DEFPARAMETER +HAVE-MEMORY-H+ 1)
    (DEFPARAMETER +HAVE-SIGNAL-H+ 1)
    (DEFPARAMETER +__BIT_TYPES_DEFINED__+ 1)
    (DEFPARAMETER +HAVE-MATH-H+ 1)
    (DEFPARAMETER +HAVE-MALLOC-H+ 1)
    (DEFPARAMETER +HAVE-LIMITS-H+ 1)
    (DEFPARAMETER +__LITTLE_ENDIAN+ 1234)
    (DEFPARAMETER +__BIG_ENDIAN+ 4321)
    (DEFPARAMETER +__PDP_ENDIAN+ 3412)
    (DEFPARAMETER +HAVE-INTTYPES-H+ 1)
    (DEFPARAMETER +_ENDIAN_H+ 1)
    (DEFPARAMETER +HAVE-ICONV-H+ 1)
    (DEFPARAMETER +_BITS_ENDIAN_H+ 1)
    (DEFPARAMETER +HAVE-FLOAT-H+ 1)
    (DEFPARAMETER +SDL-FALLTHROUGH+ NIL)
    (DEFPARAMETER +NULL+ 0)
    (DEFPARAMETER +SDL-FORCE-INLINE+ NIL)
    (DEFPARAMETER +__SIZEOF_PTHREAD_MUTEX_T+ 40)
    (DEFPARAMETER +_BITS_PTHREADTYPES_ARCH_H+ 1)
    (DEFPARAMETER +__SIZEOF_PTHREAD_RWLOCK_T+ 56)
    (DEFPARAMETER +__SIZEOF_PTHREAD_ATTR_T+ 56)
    (DEFPARAMETER +__PTR_T+ NIL)
    (DEFPARAMETER +_THREAD_SHARED_TYPES_H+ 1)
    (DEFPARAMETER +_BITS_PTHREADTYPES_COMMON_H+ 1)
    (DEFPARAMETER +__THROW+ NIL)
    (DEFPARAMETER +__THROWNL+ NIL)
    (DEFPARAMETER +_SYS_CDEFS_H+ 1)
    (DEFPARAMETER +__GLIBC_MINOR__+ 37)
    (DEFPARAMETER +__STDC_ISO_10646__+ 201706)
    (DEFPARAMETER +__GNU_LIBRARY__+ 6)
    (DEFPARAMETER +__GLIBC__+ 2)
    (DEFPARAMETER +__STDC_IEC_559_COMPLEX__+ 1)
    (DEFPARAMETER +__STDC_IEC_60559_COMPLEX__+ 201404)
    (DEFPARAMETER +__ATTRIBUTE_CONST__+ NIL)
    (DEFPARAMETER +__ATTRIBUTE_PURE__+ NIL)
    (DEFPARAMETER +MIX-MAJOR-VERSION+ 2)
    (DEFPARAMETER +MIX-MINOR-VERSION+ 8)
    (DEFPARAMETER +MIX-PATCHLEVEL+ 0)
    (DEFPARAMETER +__ATTRIBUTE_USED__+ NIL)
    (DEFPARAMETER +SDL-MIXER-MAJOR-VERSION+ 2)
    (DEFPARAMETER +__ATTRIBUTE_MAYBE_UNUSED__+ NIL)
    (DEFPARAMETER +SDL-MIXER-MINOR-VERSION+ 8)
    (DEFPARAMETER +SDL-MIXER-PATCHLEVEL+ 0)
    (DEFPARAMETER +HAVE-STRCHR+ 1)
    (DEFPARAMETER +SDL-COMPILEDVERSION+ 5001)
    (DEFPARAMETER +HAVE-STRRCHR+ 1)
    (DEFPARAMETER +HAVE-STRSTR+ 1)
    (DEFPARAMETER +HAVE-STRTOK-R+ 1)
    (DEFPARAMETER +HAVE-STRTOUL+ 1)
    (DEFPARAMETER +HAVE-STRTOL+ 1)
    (DEFPARAMETER +HAVE-STRTOLL+ 1)
    (DEFPARAMETER +__ATTRIBUTE_MALLOC__+ NIL)
    (DEFPARAMETER +HAVE-WCSDUP+ 1)
    (DEFPARAMETER +HAVE-WCSSTR+ 1)
    (DEFPARAMETER +SDL-MAJOR-VERSION+ 2)
    (DEFPARAMETER +HAVE-WCSCMP+ 1)
    (DEFPARAMETER +__GLIBC_C99_FLEXARR_AVAILABLE+ 1)
    (DEFPARAMETER +SDL-MINOR-VERSION+ 30)
    (DEFPARAMETER +HAVE-WCSNCMP+ 1)
    (DEFPARAMETER +__FLEXARR+ NIL)
    (DEFPARAMETER +SDL-PATCHLEVEL+ 1)
    (DEFPARAMETER +HAVE-WCSCASECMP+ 1)
    (DEFPARAMETER +HAVE-WCSNCASECMP+ 1)
    (DEFPARAMETER +HAVE-STRLEN+ 1)
    (DEFPARAMETER +HAVE-INDEX+ 1)
    (DEFPARAMETER +HAVE-RINDEX+ 1)
    (DEFPARAMETER +HAVE-QSORT+ 1)
    (DEFPARAMETER +HAVE-BSEARCH+ 1)
    (DEFPARAMETER +HAVE-ABS+ 1)
    (DEFPARAMETER +HAVE-BCOPY+ 1)
    (DEFPARAMETER +HAVE-MEMSET+ 1)
    (DEFPARAMETER +HAVE-MEMCPY+ 1)
    (DEFPARAMETER +HAVE-MEMMOVE+ 1)
    (DEFPARAMETER +HAVE-MEMCMP+ 1)
    (DEFPARAMETER +HAVE-WCSLEN+ 1)
    (DEFPARAMETER +_STDLIB_H+ 1)
    (DEFPARAMETER +__PTHREAD_RWLOCK_ELISION_EXTRA+ 0)
    (DEFPARAMETER +_BITS_STDINT_UINTN_H+ 1)
    (DEFPARAMETER +__PTHREAD_MUTEX_HAVE_PREV+ 1)
    (DEFPARAMETER +_STDINT_H+ 1)
    (DEFPARAMETER +_THREAD_MUTEX_INTERNAL_H+ 1)
    (DEFPARAMETER +SDL-ICONV-EILSEQ+ -3)
    (DEFPARAMETER +SDL-ICONV-EINVAL+ -4)
    (DEFPARAMETER +SDL-ICONV-ERROR+ -1)
    (DEFPARAMETER +SDL-ICONV-E2BIG+ -2)
    (DEFPARAMETER +__SIZEOF_PTHREAD_BARRIERATTR_T+ 4)
    (DEFPARAMETER +__SIZEOF_PTHREAD_CONDATTR_T+ 4)
    (DEFPARAMETER +__SIZEOF_PTHREAD_RWLOCKATTR_T+ 8)
    (DEFPARAMETER +_INTTYPES_H+ 1)
    (DEFPARAMETER +__SIZEOF_PTHREAD_MUTEXATTR_T+ 4)
    (DEFPARAMETER +__SIZEOF_PTHREAD_COND_T+ 48)
    (DEFPARAMETER +__SIZEOF_PTHREAD_BARRIER_T+ 32)
    (DEFPARAMETER +__KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64+ 1)
    (DEFPARAMETER +_BITS_TIME64_H+ 1)
    (DEFPARAMETER +__FD_SETSIZE+ 1024)
    (DEFPARAMETER +__TIME64_T_TYPE+ NIL)
    (DEFPARAMETER +__ATTR_DEALLOC_FCLOSE+ NIL)
    (DEFPARAMETER +__INO_T_MATCHES_INO64_T+ 1)
    (DEFPARAMETER +__RLIM_T_MATCHES_RLIM64_T+ 1)
    (DEFPARAMETER +__STATFS_MATCHES_STATFS64+ 1)
    (DEFPARAMETER +__FSID_T_TYPE+ NIL)
    (DEFPARAMETER +__SSIZE_T_TYPE+ NIL)
    (DEFPARAMETER +__CPU_MASK_TYPE+ NIL)
    (DEFPARAMETER +__OFF_T_MATCHES_OFF64_T+ 1)
    (DEFPARAMETER +STDERR+ NIL)
    (DEFPARAMETER +__KEY_T_TYPE+ NIL)
    (DEFPARAMETER +__CLOCKID_T_TYPE+ NIL)
    (DEFPARAMETER +__TIMER_T_TYPE+ NIL)
    (DEFPARAMETER +__BLKSIZE_T_TYPE+ NIL)
    (DEFPARAMETER +TMP-MAX+ 238328)
    (DEFPARAMETER +__SUSECONDS_T_TYPE+ NIL)
    (DEFPARAMETER +L-TMPNAM+ 20)
    (DEFPARAMETER +__SUSECONDS64_T_TYPE+ NIL)
    (DEFPARAMETER +_BITS_STDIO_LIM_H+ 1)
    (DEFPARAMETER +__DADDR_T_TYPE+ NIL)
    (DEFPARAMETER +P-TMPDIR+ NIL)
    (DEFPARAMETER +STDOUT+ NIL)
    (DEFPARAMETER +STDIN+ NIL)
    (DEFPARAMETER +L-CTERMID+ 9)
    (DEFPARAMETER +FOPEN-MAX+ 16)
    (DEFPARAMETER +FILENAME-MAX+ 4096)
    (DEFPARAMETER +_IONBF+ 2)
    (DEFPARAMETER +_IOFBF+ 0)
    (DEFPARAMETER +_IOLBF+ 1)
    (DEFPARAMETER +SEEK-END+ 2)
    (DEFPARAMETER +SEEK-SET+ 0)
    (DEFPARAMETER +SEEK-CUR+ 1)
    (DEFPARAMETER +EOF+ -1)
    (DEFPARAMETER +BUFSIZ+ 8192)
    (DEFPARAMETER +_IO_USER_LOCK+ 32768)
    (DEFPARAMETER +_IO_ERR_SEEN+ 32)
    (DEFPARAMETER +_IO_EOF_SEEN+ 16)
    (DEFPARAMETER +__MATH_DECLARING_DOUBLE+ NIL)
    (DEFPARAMETER +__MATH_DECLARE_LDOUBLE+ 1)
    (DEFPARAMETER +__MATH_DECLARING_FLOATN+ NIL)
    (DEFPARAMETER +_MDOUBLE_+ NIL)
    (DEFPARAMETER +SDL-AUDIO-MASK-BITSIZE+ 255)
    (DEFPARAMETER +SDL-AUDIO-MASK-SIGNED+ 32768)
    (DEFPARAMETER +SDL-MIX-MAXVOLUME+ 128)
    (DEFPARAMETER +SDL-AUDIO-MASK-DATATYPE+ 256)
    (DEFPARAMETER +SDL-AUDIO-MASK-ENDIAN+ 4096)
    (DEFPARAMETER +__FP_LOGBNAN_IS_MIN+ 1)
    (DEFPARAMETER +__FP_LOGB0_IS_MIN+ 1)
    (DEFPARAMETER +FP-ILOGBNAN+ -2147483648)
    (DEFPARAMETER +FP-ILOGB0+ -2147483648)
    (DEFPARAMETER +HUGE-VALL+ "INF")
    (DEFPARAMETER +HUGE-VALF+ "INF")
    (DEFPARAMETER +__GLIBC_FLT_EVAL_METHOD+ 0)
    (DEFPARAMETER +NAN+ "nan")
    (DEFPARAMETER +INFINITY+ "INF")
    (DEFPARAMETER +HUGE-VAL+ "INF")
    (DEFPARAMETER +__ATTRIBUTE_NOINLINE__+ NIL)
    (DEFPARAMETER +MATH-ERREXCEPT+ 2)
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
    (DEFPARAMETER +M-2-SQRTPI+ 1.128379d0)
    (DEFPARAMETER +M-SQRT2+ 1.414214d0)
    (DEFPARAMETER +M-SQRT1-2+ 0.7071068d0)
    (DEFPARAMETER +FLT-EVAL-METHOD+ 0)
    (DEFPARAMETER +FLT-ROUNDS+ NIL)
    (DEFPARAMETER +FLT-RADIX+ 2)
    (DEFPARAMETER +__INLINE__+ NIL)
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
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-R-WOPS)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-R-WOPS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-MUTEX)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-MUTEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-SEMAPHORE)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-SEM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-COND)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-COND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-ATOMIC-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-THREAD)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-THREAD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-AUDIO-SPEC)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-AUDIO-SPEC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-AUDIO-CVT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-AUDIO-CVT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (_SDL_AUDIO_STREAM)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-AUDIO-STREAM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (SDL-VERSION)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER SDL-VERSION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (MIX-CHUNK)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER MIX-CHUNK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER (:STRUCT (_MIX_MUSIC)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER MIX-MUSIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER __TIMER_T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-WRAPPER __CADDR_T #<PACKAGE "DUMMY">)
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
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-R-WOPS)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-R-WOPS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-MUTEX)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-MUTEX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-SEMAPHORE)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-SEM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-COND)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-COND #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-ATOMIC-T #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-THREAD)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-THREAD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-AUDIO-SPEC)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-AUDIO-SPEC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-AUDIO-CVT)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-AUDIO-CVT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (_SDL_AUDIO_STREAM)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-AUDIO-STREAM #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (SDL-VERSION)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS SDL-VERSION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (MIX-CHUNK)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS MIX-CHUNK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS (:STRUCT (_MIX_MUSIC)) #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-ACCESSORS MIX-MUSIC #<PACKAGE "DUMMY">)
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
   (AUTOWRAP:DEFINE-CFUN SDL-SET-ERROR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-ERROR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-ERROR-MSG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-CLEAR-ERROR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-ERROR #<PACKAGE "DUMMY">)
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
   (AUTOWRAP:DEFINE-CFUN SDL-GET-VERSION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-REVISION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN SDL-GET-REVISION-NUMBER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-LINKED-VERSION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-INIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-QUIT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-OPEN-AUDIO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-OPEN-AUDIO-DEVICE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-PAUSE-AUDIO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-QUERY-SPEC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-ALLOCATE-CHANNELS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-LOAD-WAV-RW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-LOAD-WAV #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-LOAD-MUS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-LOAD-MUS-RW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-LOAD-MUS-TYPE-RW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-QUICK-LOAD-WAV #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-QUICK-LOAD-RAW #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-FREE-CHUNK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-FREE-MUSIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-NUM-CHUNK-DECODERS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-CHUNK-DECODER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-HAS-CHUNK-DECODER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-NUM-MUSIC-DECODERS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-MUSIC-DECODER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-HAS-MUSIC-DECODER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-MUSIC-TYPE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-MUSIC-TITLE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-MUSIC-TITLE-TAG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-MUSIC-ARTIST-TAG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-MUSIC-ALBUM-TAG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-MUSIC-COPYRIGHT-TAG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-SET-POST-MIX #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-HOOK-MUSIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-HOOK-MUSIC-FINISHED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-MUSIC-HOOK-DATA #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-CHANNEL-FINISHED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-REGISTER-EFFECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-UNREGISTER-EFFECT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-UNREGISTER-ALL-EFFECTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-SET-PANNING #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-SET-POSITION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-SET-DISTANCE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-SET-REVERSE-STEREO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-RESERVE-CHANNELS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GROUP-CHANNEL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GROUP-CHANNELS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GROUP-AVAILABLE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GROUP-COUNT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GROUP-OLDEST #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GROUP-NEWER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-PLAY-CHANNEL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-PLAY-CHANNEL-TIMED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-PLAY-MUSIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-FADE-IN-MUSIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-FADE-IN-MUSIC-POS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-FADE-IN-CHANNEL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-FADE-IN-CHANNEL-TIMED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-VOLUME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-VOLUME-CHUNK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-VOLUME-MUSIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-MUSIC-VOLUME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-MASTER-VOLUME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-HALT-CHANNEL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-HALT-GROUP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-HALT-MUSIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-EXPIRE-CHANNEL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-FADE-OUT-CHANNEL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-FADE-OUT-GROUP #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-FADE-OUT-MUSIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-FADING-MUSIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-FADING-CHANNEL #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-PAUSE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-RESUME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-PAUSED #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-PAUSE-MUSIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-RESUME-MUSIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-REWIND-MUSIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-PAUSED-MUSIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-MOD-MUSIC-JUMP-TO-ORDER #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-START-TRACK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-NUM-TRACKS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-SET-MUSIC-POSITION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-MUSIC-POSITION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-MUSIC-DURATION #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-MUSIC-LOOP-START-TIME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-MUSIC-LOOP-END-TIME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-MUSIC-LOOP-LENGTH-TIME #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-PLAYING #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-PLAYING-MUSIC #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-SET-MUSIC-CMD #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-SET-SYNCHRO-VALUE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-SYNCHRO-VALUE #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-SET-SOUND-FONTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-SOUND-FONTS #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-EACH-SOUND-FONT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-SET-TIMIDITY-CFG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-TIMIDITY-CFG #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-GET-CHUNK #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CFUN MIX-CLOSE-AUDIO #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CEXTERN STDIN #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CEXTERN STDOUT #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CEXTERN STDERR #<PACKAGE "DUMMY">)
   (AUTOWRAP:DEFINE-CEXTERN SIGNGAM #<PACKAGE "DUMMY">)
   (AUTOWRAP::COMPILE-TIME-REPORT-WRAP-FAILURES)
   (EXPORT
    '(MIX-MUSIC _MIX_MUSIC MIX-CHUNK MIX-CHUNK SDL-VERSION SDL-VERSION
      SDL-AUDIO-STREAM _SDL_AUDIO_STREAM SDL-AUDIO-CVT SDL-AUDIO-CVT
      SDL-AUDIO-SPEC SDL-AUDIO-SPEC SDL-THREAD SDL-THREAD SDL-ATOMIC-T SDL-COND
      SDL-COND SDL-SEM SDL-SEMAPHORE SDL-MUTEX SDL-MUTEX SDL-R-WOPS SDL-R-WOPS
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
    '(MIX-CLOSE-AUDIO MIX-GET-CHUNK MIX-GET-TIMIDITY-CFG MIX-SET-TIMIDITY-CFG
                      MIX-EACH-SOUND-FONT MIX-GET-SOUND-FONTS
                      MIX-SET-SOUND-FONTS MIX-GET-SYNCHRO-VALUE
                      MIX-SET-SYNCHRO-VALUE MIX-SET-MUSIC-CMD MIX-PLAYING-MUSIC
                      MIX-PLAYING MIX-GET-MUSIC-LOOP-LENGTH-TIME
                      MIX-GET-MUSIC-LOOP-END-TIME MIX-GET-MUSIC-LOOP-START-TIME
                      MIX-MUSIC-DURATION MIX-GET-MUSIC-POSITION
                      MIX-SET-MUSIC-POSITION MIX-GET-NUM-TRACKS MIX-START-TRACK
                      MIX-MOD-MUSIC-JUMP-TO-ORDER MIX-PAUSED-MUSIC
                      MIX-REWIND-MUSIC MIX-RESUME-MUSIC MIX-PAUSE-MUSIC
                      MIX-PAUSED MIX-RESUME MIX-PAUSE MIX-FADING-CHANNEL
                      MIX-FADING-MUSIC MIX-FADE-OUT-MUSIC MIX-FADE-OUT-GROUP
                      MIX-FADE-OUT-CHANNEL MIX-EXPIRE-CHANNEL MIX-HALT-MUSIC
                      MIX-HALT-GROUP MIX-HALT-CHANNEL MIX-MASTER-VOLUME
                      MIX-GET-MUSIC-VOLUME MIX-VOLUME-MUSIC MIX-VOLUME-CHUNK
                      MIX-VOLUME MIX-FADE-IN-CHANNEL-TIMED MIX-FADE-IN-CHANNEL
                      MIX-FADE-IN-MUSIC-POS MIX-FADE-IN-MUSIC MIX-PLAY-MUSIC
                      MIX-PLAY-CHANNEL-TIMED MIX-PLAY-CHANNEL MIX-GROUP-NEWER
                      MIX-GROUP-OLDEST MIX-GROUP-COUNT MIX-GROUP-AVAILABLE
                      MIX-GROUP-CHANNELS MIX-GROUP-CHANNEL MIX-RESERVE-CHANNELS
                      MIX-SET-REVERSE-STEREO MIX-SET-DISTANCE MIX-SET-POSITION
                      MIX-SET-PANNING MIX-UNREGISTER-ALL-EFFECTS
                      MIX-UNREGISTER-EFFECT MIX-REGISTER-EFFECT
                      MIX-CHANNEL-FINISHED MIX-GET-MUSIC-HOOK-DATA
                      MIX-HOOK-MUSIC-FINISHED MIX-HOOK-MUSIC MIX-SET-POST-MIX
                      MIX-GET-MUSIC-COPYRIGHT-TAG MIX-GET-MUSIC-ALBUM-TAG
                      MIX-GET-MUSIC-ARTIST-TAG MIX-GET-MUSIC-TITLE-TAG
                      MIX-GET-MUSIC-TITLE MIX-GET-MUSIC-TYPE
                      MIX-HAS-MUSIC-DECODER MIX-GET-MUSIC-DECODER
                      MIX-GET-NUM-MUSIC-DECODERS MIX-HAS-CHUNK-DECODER
                      MIX-GET-CHUNK-DECODER MIX-GET-NUM-CHUNK-DECODERS
                      MIX-FREE-MUSIC MIX-FREE-CHUNK MIX-QUICK-LOAD-RAW
                      MIX-QUICK-LOAD-WAV MIX-LOAD-MUS-TYPE-RW MIX-LOAD-MUS-RW
                      MIX-LOAD-MUS MIX-LOAD-WAV MIX-LOAD-WAV-RW
                      MIX-ALLOCATE-CHANNELS MIX-QUERY-SPEC MIX-PAUSE-AUDIO
                      MIX-OPEN-AUDIO-DEVICE MIX-OPEN-AUDIO MIX-QUIT MIX-INIT
                      MIX-LINKED-VERSION SDL-GET-REVISION-NUMBER
                      SDL-GET-REVISION SDL-GET-VERSION SDL-CLOSE-AUDIO-DEVICE
                      SDL-CLOSE-AUDIO SDL-UNLOCK-AUDIO-DEVICE SDL-UNLOCK-AUDIO
                      SDL-LOCK-AUDIO-DEVICE SDL-LOCK-AUDIO
                      SDL-CLEAR-QUEUED-AUDIO SDL-GET-QUEUED-AUDIO-SIZE
                      SDL-DEQUEUE-AUDIO SDL-QUEUE-AUDIO SDL-MIX-AUDIO-FORMAT
                      SDL-MIX-AUDIO SDL-FREE-AUDIO-STREAM
                      SDL-AUDIO-STREAM-CLEAR SDL-AUDIO-STREAM-FLUSH
                      SDL-AUDIO-STREAM-AVAILABLE SDL-AUDIO-STREAM-GET
                      SDL-AUDIO-STREAM-PUT SDL-NEW-AUDIO-STREAM
                      SDL-CONVERT-AUDIO SDL-BUILD-AUDIO-CVT SDL-FREE-WAV
                      SDL-LOAD-WAV-RW SDL-PAUSE-AUDIO-DEVICE SDL-PAUSE-AUDIO
                      SDL-GET-AUDIO-DEVICE-STATUS SDL-GET-AUDIO-STATUS
                      SDL-OPEN-AUDIO-DEVICE SDL-GET-DEFAULT-AUDIO-INFO
                      SDL-GET-AUDIO-DEVICE-SPEC SDL-GET-AUDIO-DEVICE-NAME
                      SDL-GET-NUM-AUDIO-DEVICES SDL-OPEN-AUDIO
                      SDL-GET-CURRENT-AUDIO-DRIVER SDL-AUDIO-QUIT
                      SDL-AUDIO-INIT SDL-GET-AUDIO-DRIVER
                      SDL-GET-NUM-AUDIO-DRIVERS SDL-TLS-CLEANUP SDL-TLS-SET
                      SDL-TLS-GET SDL-TLS-CREATE SDL-DETACH-THREAD
                      SDL-WAIT-THREAD SDL-SET-THREAD-PRIORITY SDL-GET-THREAD-ID
                      SDL-THREAD-ID SDL-GET-THREAD-NAME
                      SDL-CREATE-THREAD-WITH-STACK-SIZE SDL-CREATE-THREAD
                      SDL-ATOMIC-GET-PTR SDL-ATOMIC-SET-PTR SDL-ATOMIC-CAS-PTR
                      SDL-ATOMIC-ADD SDL-ATOMIC-GET SDL-ATOMIC-SET
                      SDL-ATOMIC-CAS SDL-MEMORY-BARRIER-ACQUIRE-FUNCTION
                      SDL-MEMORY-BARRIER-RELEASE-FUNCTION SDL-ATOMIC-UNLOCK
                      SDL-ATOMIC-LOCK SDL-ATOMIC-TRY-LOCK SDL-COND-WAIT-TIMEOUT
                      SDL-COND-WAIT SDL-COND-BROADCAST SDL-COND-SIGNAL
                      SDL-DESTROY-COND SDL-CREATE-COND SDL-SEM-VALUE
                      SDL-SEM-POST SDL-SEM-WAIT-TIMEOUT SDL-SEM-TRY-WAIT
                      SDL-SEM-WAIT SDL-DESTROY-SEMAPHORE SDL-CREATE-SEMAPHORE
                      SDL-DESTROY-MUTEX SDL-UNLOCK-MUTEX SDL-TRY-LOCK-MUTEX
                      SDL-LOCK-MUTEX SDL-CREATE-MUTEX SDL-WRITE-BE64
                      SDL-WRITE-LE64 SDL-WRITE-BE32 SDL-WRITE-LE32
                      SDL-WRITE-BE16 SDL-WRITE-LE16 SDL-WRITE-U8 SDL-READ-BE64
                      SDL-READ-LE64 SDL-READ-BE32 SDL-READ-LE32 SDL-READ-BE16
                      SDL-READ-LE16 SDL-READ-U8 SDL-LOAD-FILE SDL-LOAD-FILE-RW
                      SDL-R-WCLOSE SDL-R-WWRITE SDL-R-WREAD SDL-R-WTELL
                      SDL-R-WSEEK SDL-R-WSIZE SDL-FREE-RW SDL-ALLOC-RW
                      SDL-RW-FROM-CONST-MEM SDL-RW-FROM-MEM SDL-RW-FROM-FP
                      SDL-RW-FROM-FILE SDL-ERROR SDL-CLEAR-ERROR
                      SDL-GET-ERROR-MSG SDL-GET-ERROR SDL-SET-ERROR
                      SDL-ICONV-STRING SDL-ICONV SDL-ICONV-CLOSE SDL-ICONV-OPEN
                      SDL-TANF SDL-TAN SDL-SQRTF SDL-SQRT SDL-SINF SDL-SIN
                      SDL-SCALBNF SDL-SCALBN SDL-LROUNDF SDL-LROUND SDL-ROUNDF
                      SDL-ROUND SDL-POWF SDL-POW SDL-LOG10F SDL-LOG10 SDL-LOGF
                      SDL-LOG SDL-FMODF SDL-FMOD SDL-TRUNCF SDL-TRUNC
                      SDL-FLOORF SDL-FLOOR SDL-FABSF SDL-FABS SDL-EXPF SDL-EXP
                      SDL-COSF SDL-COS SDL-COPYSIGNF SDL-COPYSIGN SDL-CEILF
                      SDL-CEIL SDL-ATAN2F SDL-ATAN2 SDL-ATANF SDL-ATAN
                      SDL-ASINF SDL-ASIN SDL-ACOSF SDL-ACOS SDL-VASPRINTF
                      SDL-ASPRINTF SDL-VSNPRINTF SDL-SNPRINTF SDL-VSSCANF
                      SDL-SSCANF SDL-STRNCASECMP SDL-STRCASECMP SDL-STRNCMP
                      SDL-STRCMP SDL-STRTOD SDL-STRTOULL SDL-STRTOLL
                      SDL-STRTOUL SDL-STRTOL SDL-ATOF SDL-ATOI SDL-ULLTOA
                      SDL-LLTOA SDL-ULTOA SDL-LTOA SDL-UITOA SDL-ITOA
                      SDL-UTF8STRNLEN SDL-UTF8STRLEN SDL-STRTOKR SDL-STRCASESTR
                      SDL-STRSTR SDL-STRRCHR SDL-STRCHR SDL-STRLWR SDL-STRUPR
                      SDL-STRREV SDL-STRDUP SDL-STRLCAT SDL-UTF8STRLCPY
                      SDL-STRLCPY SDL-STRLEN SDL-WCSNCASECMP SDL-WCSCASECMP
                      SDL-WCSNCMP SDL-WCSCMP SDL-WCSSTR SDL-WCSDUP SDL-WCSLCAT
                      SDL-WCSLCPY SDL-WCSLEN SDL-MEMCMP SDL-MEMMOVE SDL-MEMCPY
                      SDL-MEMSET SDL-CRC32 SDL-CRC16 SDL-TOLOWER SDL-TOUPPER
                      SDL-ISGRAPH SDL-ISPRINT SDL-ISLOWER SDL-ISUPPER
                      SDL-ISSPACE SDL-ISPUNCT SDL-ISXDIGIT SDL-ISDIGIT
                      SDL-ISCNTRL SDL-ISBLANK SDL-ISALNUM SDL-ISALPHA SDL-ABS
                      SDL-BSEARCH SDL-QSORT SDL-SETENV SDL-GETENV
                      SDL-GET-NUM-ALLOCATIONS SDL-SET-MEMORY-FUNCTIONS
                      SDL-GET-MEMORY-FUNCTIONS
                      SDL-GET-ORIGINAL-MEMORY-FUNCTIONS SDL-FREE SDL-REALLOC
                      SDL-CALLOC SDL-MALLOC __SCALBL SCALBL __FMAL FMAL __FMINL
                      FMINL __FMAXL FMAXL __FDIML FDIML __LLROUNDL LLROUNDL
                      __LROUNDL LROUNDL __LLRINTL LLRINTL __LRINTL LRINTL
                      __REMQUOL REMQUOL __TRUNCL TRUNCL __ROUNDL ROUNDL
                      __NEARBYINTL NEARBYINTL __SCALBLNL SCALBLNL __ILOGBL
                      ILOGBL __SCALBNL SCALBNL __REMAINDERL REMAINDERL
                      __NEXTTOWARDL NEXTTOWARDL __NEXTAFTERL NEXTAFTERL __RINTL
                      RINTL __LGAMMAL_R LGAMMAL-R __GAMMAL GAMMAL __TGAMMAL
                      TGAMMAL __LGAMMAL LGAMMAL __ERFCL ERFCL __ERFL ERFL __YNL
                      YNL |__Y1L| Y1L |__Y0L| Y0L __JNL JNL |__J1L| J1L |__J0L|
                      J0L ISNANL __NANL NANL __COPYSIGNL COPYSIGNL
                      __SIGNIFICANDL SIGNIFICANDL __DREML DREML FINITEL ISINFL
                      __FMODL FMODL __FLOORL FLOORL __FABSL FABSL __CEILL CEILL
                      __CBRTL CBRTL __HYPOTL HYPOTL __SQRTL SQRTL __POWL POWL
                      __LOG2L LOG2L __EXP2L EXP2L __LOGBL LOGBL __LOG1PL LOG1PL
                      __EXPM1L EXPM1L __MODFL MODFL __LOG10L LOG10L __LOGL LOGL
                      __LDEXPL LDEXPL __FREXPL FREXPL __EXPL EXPL __ATANHL
                      ATANHL __ASINHL ASINHL __ACOSHL ACOSHL __TANHL TANHL
                      __SINHL SINHL __COSHL COSHL __TANL TANL __SINL SINL
                      __COSL COSL __ATAN2L ATAN2L __ATANL ATANL __ASINL ASINL
                      __ACOSL ACOSL __ISSIGNALINGL __ISEQSIGL __ISNANL
                      __FINITEL __ISINFL __SIGNBITL __FPCLASSIFYL __SCALBF
                      SCALBF __FMAF FMAF __FMINF FMINF __FMAXF FMAXF __FDIMF
                      FDIMF __LLROUNDF LLROUNDF __LROUNDF LROUNDF __LLRINTF
                      LLRINTF __LRINTF LRINTF __REMQUOF REMQUOF __TRUNCF TRUNCF
                      __ROUNDF ROUNDF __NEARBYINTF NEARBYINTF __SCALBLNF
                      SCALBLNF __ILOGBF ILOGBF __SCALBNF SCALBNF __REMAINDERF
                      REMAINDERF __NEXTTOWARDF NEXTTOWARDF __NEXTAFTERF
                      NEXTAFTERF __RINTF RINTF __LGAMMAF_R LGAMMAF-R __GAMMAF
                      GAMMAF __TGAMMAF TGAMMAF __LGAMMAF LGAMMAF __ERFCF ERFCF
                      __ERFF ERFF __YNF YNF |__Y1F| Y1F |__Y0F| Y0F __JNF JNF
                      |__J1F| J1F |__J0F| J0F ISNANF __NANF NANF __COPYSIGNF
                      COPYSIGNF __SIGNIFICANDF SIGNIFICANDF __DREMF DREMF
                      FINITEF ISINFF __FMODF FMODF __FLOORF FLOORF __FABSF
                      FABSF __CEILF CEILF __CBRTF CBRTF __HYPOTF HYPOTF __SQRTF
                      SQRTF __POWF POWF __LOG2F LOG2F __EXP2F EXP2F __LOGBF
                      LOGBF __LOG1PF LOG1PF __EXPM1F EXPM1F __MODFF MODFF
                      __LOG10F LOG10F __LOGF LOGF __LDEXPF LDEXPF __FREXPF
                      FREXPF __EXPF EXPF __ATANHF ATANHF __ASINHF ASINHF
                      __ACOSHF ACOSHF __TANHF TANHF __SINHF SINHF __COSHF COSHF
                      __TANF TANF __SINF SINF __COSF COSF __ATAN2F ATAN2F
                      __ATANF ATANF __ASINF ASINF __ACOSF ACOSF __ISSIGNALINGF
                      __ISEQSIGF __ISNANF __FINITEF __ISINFF __SIGNBITF
                      __FPCLASSIFYF __SCALB SCALB __FMA FMA __FMIN FMIN __FMAX
                      FMAX __FDIM FDIM __LLROUND LLROUND __LROUND LROUND
                      __LLRINT LLRINT __LRINT LRINT __REMQUO REMQUO __TRUNC
                      TRUNC __ROUND ROUND __NEARBYINT NEARBYINT __SCALBLN
                      SCALBLN __ILOGB ILOGB __SCALBN SCALBN __REMAINDER
                      REMAINDER __NEXTTOWARD NEXTTOWARD __NEXTAFTER NEXTAFTER
                      __RINT RINT __LGAMMA_R LGAMMA-R __GAMMA GAMMA __TGAMMA
                      TGAMMA __LGAMMA LGAMMA __ERFC ERFC __ERF ERF __YN YN
                      |__Y1| Y1 |__Y0| Y0 __JN JN |__J1| J1 |__J0| J0 ISNAN
                      __NAN NAN __COPYSIGN COPYSIGN __SIGNIFICAND SIGNIFICAND
                      __DREM DREM FINITE ISINF __FMOD FMOD __FLOOR FLOOR __FABS
                      FABS __CEIL CEIL __CBRT CBRT __HYPOT HYPOT __SQRT SQRT
                      __POW POW __LOG2 LOG2 __EXP2 EXP2 __LOGB LOGB __LOG1P
                      LOG1P __EXPM1 EXPM1 __MODF MODF __LOG10 LOG10 __LOG LOG
                      __LDEXP LDEXP __FREXP FREXP __EXP EXP __ATANH ATANH
                      __ASINH ASINH __ACOSH ACOSH __TANH TANH __SINH SINH
                      __COSH COSH __TAN TAN __SIN SIN __COS COS __ATAN2 ATAN2
                      __ATAN ATAN __ASIN ASIN __ACOS ACOS __ISSIGNALING
                      __ISEQSIG __ISNAN __FINITE __ISINF __SIGNBIT __FPCLASSIFY
                      TOUPPER-L __TOUPPER_L TOLOWER-L __TOLOWER_L ISBLANK-L
                      ISXDIGIT-L ISUPPER-L ISSPACE-L ISPUNCT-L ISPRINT-L
                      ISGRAPH-L ISLOWER-L ISDIGIT-L ISCNTRL-L ISALPHA-L
                      ISALNUM-L _TOLOWER _TOUPPER TOASCII ISASCII ISBLANK
                      TOUPPER TOLOWER ISXDIGIT ISUPPER ISSPACE ISPUNCT ISPRINT
                      ISGRAPH ISLOWER ISDIGIT ISCNTRL ISALPHA ISALNUM
                      __CTYPE_TOUPPER_LOC __CTYPE_TOLOWER_LOC __CTYPE_B_LOC
                      WCSTOUMAX WCSTOIMAX STRTOUMAX STRTOIMAX IMAXDIV IMAXABS
                      WCSFTIME UNGETWC FPUTWS FGETWS PUTWCHAR PUTWC FPUTWC
                      GETWCHAR GETWC FGETWC VSWSCANF VWSCANF VFWSCANF VSWSCANF
                      VWSCANF VFWSCANF SWSCANF WSCANF FWSCANF SWSCANF WSCANF
                      FWSCANF VSWPRINTF VWPRINTF VFWPRINTF SWPRINTF WPRINTF
                      FWPRINTF FWIDE OPEN-WMEMSTREAM WCPNCPY WCPCPY WCSTOULL
                      WCSTOLL WCSTOUL WCSTOL WCSTOLD WCSTOF WCSTOD WCSNRTOMBS
                      MBSNRTOWCS WCSRTOMBS MBSRTOWCS MBRLEN __MBRLEN WCRTOMB
                      MBRTOWC MBSINIT WCTOB BTOWC WMEMSET WMEMMOVE WMEMCPY
                      WMEMCMP WMEMCHR WCSNLEN WCSLEN WCSTOK WCSSTR WCSPBRK
                      WCSSPN WCSCSPN WCSRCHR WCSCHR WCSDUP WCSXFRM-L WCSCOLL-L
                      WCSXFRM WCSCOLL WCSNCASECMP-L WCSCASECMP-L WCSNCASECMP
                      WCSCASECMP WCSNCMP WCSCMP WCSNCAT WCSCAT WCSNCPY WCSCPY
                      STPNCPY __STPNCPY STPCPY __STPCPY STRSIGNAL STRSEP
                      EXPLICIT-BZERO STRNCASECMP-L STRCASECMP-L STRNCASECMP
                      STRCASECMP FFSLL FFSL FFS RINDEX INDEX BZERO BCOPY BCMP
                      STRERROR-L STRERROR-R STRERROR STRNLEN STRLEN STRTOK-R
                      __STRTOK_R STRTOK STRSTR STRPBRK STRSPN STRCSPN STRRCHR
                      STRCHR STRNDUP STRDUP STRXFRM-L STRCOLL-L STRXFRM STRCOLL
                      STRNCMP STRCMP STRNCAT STRCAT STRNCPY STRCPY MEMCHR
                      __MEMCMPEQ MEMCMP MEMSET MEMCCPY MEMMOVE MEMCPY
                      GETLOADAVG GETSUBOPT RPMATCH WCSTOMBS MBSTOWCS WCTOMB
                      MBTOWC MBLEN QFCVT-R QECVT-R FCVT-R ECVT-R QGCVT QFCVT
                      QECVT GCVT FCVT ECVT LLDIV LDIV DIV LLABS LABS ABS QSORT
                      BSEARCH REALPATH SYSTEM MKDTEMP MKSTEMPS MKSTEMP MKTEMP
                      CLEARENV UNSETENV SETENV PUTENV GETENV _EXIT QUICK-EXIT
                      EXIT ON-EXIT AT-QUICK-EXIT ATEXIT ABORT ALIGNED-ALLOC
                      POSIX-MEMALIGN VALLOC ALLOCA REALLOCARRAY REALLOCARRAY
                      FREE REALLOC CALLOC MALLOC ARC4RANDOM-UNIFORM
                      ARC4RANDOM-BUF ARC4RANDOM LCONG48-R SEED48-R SRAND48-R
                      JRAND48-R MRAND48-R NRAND48-R LRAND48-R ERAND48-R
                      DRAND48-R LCONG48 SEED48 SRAND48 JRAND48 MRAND48 NRAND48
                      LRAND48 ERAND48 DRAND48 RAND-R SRAND RAND SETSTATE-R
                      INITSTATE-R SRANDOM-R RANDOM-R SETSTATE INITSTATE SRANDOM
                      RANDOM A64L L64A STRTOULL STRTOLL STRTOUQ STRTOQ STRTOUL
                      STRTOL STRTOLD STRTOF STRTOD ATOLL ATOL ATOI ATOF
                      __CTYPE_GET_MB_CUR_MAX __OVERFLOW __UFLOW FUNLOCKFILE
                      FTRYLOCKFILE FLOCKFILE CTERMID POPEN PCLOSE
                      FILENO-UNLOCKED FILENO PERROR FERROR-UNLOCKED
                      FEOF-UNLOCKED CLEARERR-UNLOCKED FERROR FEOF CLEARERR
                      FSETPOS FGETPOS FTELLO FSEEKO REWIND FTELL FSEEK
                      FWRITE-UNLOCKED FREAD-UNLOCKED FWRITE FREAD UNGETC PUTS
                      FPUTS GETLINE GETDELIM __GETDELIM FGETS PUTW GETW
                      PUTCHAR-UNLOCKED PUTC-UNLOCKED FPUTC-UNLOCKED PUTCHAR
                      PUTC FPUTC FGETC-UNLOCKED GETCHAR-UNLOCKED GETC-UNLOCKED
                      GETCHAR GETC FGETC VSSCANF VSCANF VFSCANF VSSCANF VSCANF
                      VFSCANF SSCANF SCANF FSCANF SSCANF SCANF FSCANF DPRINTF
                      VDPRINTF VSNPRINTF SNPRINTF VSPRINTF VPRINTF VFPRINTF
                      SPRINTF PRINTF FPRINTF SETLINEBUF SETBUFFER SETVBUF
                      SETBUF OPEN-MEMSTREAM FMEMOPEN FDOPEN FREOPEN FOPEN
                      FFLUSH-UNLOCKED FFLUSH TEMPNAM TMPNAM-R TMPNAM TMPFILE
                      FCLOSE RENAMEAT RENAME REMOVE PSELECT SELECT
                      SDL-GET-PLATFORM)
    #<PACKAGE "DUMMY">)
   (EXPORT '(SIGNGAM STDERR STDOUT STDIN) #<PACKAGE "DUMMY">)
   (EXPORT
    '(+__INLINE__+ +FLT-RADIX+ +FLT-ROUNDS+ +FLT-EVAL-METHOD+ +M-SQRT1-2+
      +M-SQRT2+ +M-2-SQRTPI+ +M-2-PI+ +M-1-PI+ +M-PI-4+ +M-PI-2+ +M-PI+
      +M-LN10+ +M-LN2+ +M-LOG10E+ +M-LOG2E+ +M-E+ +MATH-ERRHANDLING+
      +MATH-ERREXCEPT+ +__ATTRIBUTE_NOINLINE__+ +HUGE-VAL+ +INFINITY+ +NAN+
      +__GLIBC_FLT_EVAL_METHOD+ +HUGE-VALF+ +HUGE-VALL+ +FP-ILOGB0+
      +FP-ILOGBNAN+ +__FP_LOGB0_IS_MIN+ +__FP_LOGBNAN_IS_MIN+
      +SDL-AUDIO-MASK-ENDIAN+ +SDL-AUDIO-MASK-DATATYPE+ +SDL-MIX-MAXVOLUME+
      +SDL-AUDIO-MASK-SIGNED+ +SDL-AUDIO-MASK-BITSIZE+ +_MDOUBLE_+
      +__MATH_DECLARING_FLOATN+ +__MATH_DECLARE_LDOUBLE+
      +__MATH_DECLARING_DOUBLE+ +_IO_EOF_SEEN+ +_IO_ERR_SEEN+ +_IO_USER_LOCK+
      +BUFSIZ+ +EOF+ +SEEK-CUR+ +SEEK-SET+ +SEEK-END+ +_IOLBF+ +_IOFBF+
      +_IONBF+ +FILENAME-MAX+ +FOPEN-MAX+ +L-CTERMID+ +STDIN+ +STDOUT+
      +P-TMPDIR+ +__DADDR_T_TYPE+ +_BITS_STDIO_LIM_H+ +__SUSECONDS64_T_TYPE+
      +L-TMPNAM+ +__SUSECONDS_T_TYPE+ +TMP-MAX+ +__BLKSIZE_T_TYPE+
      +__TIMER_T_TYPE+ +__CLOCKID_T_TYPE+ +__KEY_T_TYPE+ +STDERR+
      +__OFF_T_MATCHES_OFF64_T+ +__CPU_MASK_TYPE+ +__SSIZE_T_TYPE+
      +__FSID_T_TYPE+ +__STATFS_MATCHES_STATFS64+ +__RLIM_T_MATCHES_RLIM64_T+
      +__INO_T_MATCHES_INO64_T+ +__ATTR_DEALLOC_FCLOSE+ +__TIME64_T_TYPE+
      +__FD_SETSIZE+ +_BITS_TIME64_H+ +__KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64+
      +__SIZEOF_PTHREAD_BARRIER_T+ +__SIZEOF_PTHREAD_COND_T+
      +__SIZEOF_PTHREAD_MUTEXATTR_T+ +_INTTYPES_H+
      +__SIZEOF_PTHREAD_RWLOCKATTR_T+ +__SIZEOF_PTHREAD_CONDATTR_T+
      +__SIZEOF_PTHREAD_BARRIERATTR_T+ +SDL-ICONV-E2BIG+ +SDL-ICONV-ERROR+
      +SDL-ICONV-EINVAL+ +SDL-ICONV-EILSEQ+ +_THREAD_MUTEX_INTERNAL_H+
      +_STDINT_H+ +__PTHREAD_MUTEX_HAVE_PREV+ +_BITS_STDINT_UINTN_H+
      +__PTHREAD_RWLOCK_ELISION_EXTRA+ +_STDLIB_H+ +HAVE-WCSLEN+ +HAVE-MEMCMP+
      +HAVE-MEMMOVE+ +HAVE-MEMCPY+ +HAVE-MEMSET+ +HAVE-BCOPY+ +HAVE-ABS+
      +HAVE-BSEARCH+ +HAVE-QSORT+ +HAVE-RINDEX+ +HAVE-INDEX+ +HAVE-STRLEN+
      +HAVE-WCSNCASECMP+ +HAVE-WCSCASECMP+ +SDL-PATCHLEVEL+ +__FLEXARR+
      +HAVE-WCSNCMP+ +SDL-MINOR-VERSION+ +__GLIBC_C99_FLEXARR_AVAILABLE+
      +HAVE-WCSCMP+ +SDL-MAJOR-VERSION+ +HAVE-WCSSTR+ +HAVE-WCSDUP+
      +__ATTRIBUTE_MALLOC__+ +HAVE-STRTOLL+ +HAVE-STRTOL+ +HAVE-STRTOUL+
      +HAVE-STRTOK-R+ +HAVE-STRSTR+ +HAVE-STRRCHR+ +SDL-COMPILEDVERSION+
      +HAVE-STRCHR+ +SDL-MIXER-PATCHLEVEL+ +SDL-MIXER-MINOR-VERSION+
      +__ATTRIBUTE_MAYBE_UNUSED__+ +SDL-MIXER-MAJOR-VERSION+
      +__ATTRIBUTE_USED__+ +MIX-PATCHLEVEL+ +MIX-MINOR-VERSION+
      +MIX-MAJOR-VERSION+ +__ATTRIBUTE_PURE__+ +__ATTRIBUTE_CONST__+
      +__STDC_IEC_60559_COMPLEX__+ +__STDC_IEC_559_COMPLEX__+ +__GLIBC__+
      +__GNU_LIBRARY__+ +__STDC_ISO_10646__+ +__GLIBC_MINOR__+ +_SYS_CDEFS_H+
      +__THROWNL+ +__THROW+ +_BITS_PTHREADTYPES_COMMON_H+
      +_THREAD_SHARED_TYPES_H+ +__PTR_T+ +__SIZEOF_PTHREAD_ATTR_T+
      +__SIZEOF_PTHREAD_RWLOCK_T+ +_BITS_PTHREADTYPES_ARCH_H+
      +__SIZEOF_PTHREAD_MUTEX_T+ +SDL-FORCE-INLINE+ +NULL+ +SDL-FALLTHROUGH+
      +HAVE-FLOAT-H+ +_BITS_ENDIAN_H+ +HAVE-ICONV-H+ +_ENDIAN_H+
      +HAVE-INTTYPES-H+ +__PDP_ENDIAN+ +__BIG_ENDIAN+ +__LITTLE_ENDIAN+
      +HAVE-LIMITS-H+ +HAVE-MALLOC-H+ +HAVE-MATH-H+ +__BIT_TYPES_DEFINED__+
      +HAVE-SIGNAL-H+ +HAVE-MEMORY-H+ +HAVE-STDARG-H+ +SDL-HAS-FALLTHROUGH+
      +SIZEOF-VOIDP+ +HAVE-GCC-ATOMICS+ +HAVE-LIBC+ +_BITS_STDINT_INTN_H+
      +STDC-HEADERS+ +HAVE-CTYPE-H+ +HAVE-ALLOCA-H+ +HAVE-MALLOC+ +HAVE-CALLOC+
      +HAVE-REALLOC+ +HAVE-FREE+ +HAVE-ALLOCA+ +HAVE-GETENV+ +BYTE-ORDER+
      +HAVE-SETENV+ +_BITS_BYTESWAP_H+ +HAVE-PUTENV+ +HAVE-UNSETENV+
      +HAVE-STDINT-H+ +PDP-ENDIAN+ +HAVE-STDIO-H+ +HAVE-STDLIB-H+ +BIG-ENDIAN+
      +HAVE-STRINGS-H+ +LITTLE-ENDIAN+ +__BYTE_ORDER+ +HAVE-STRING-H+
      +_BITS_ENDIANNESS_H+ +HAVE-SYS-TYPES-H+ +HAVE-WCHAR-H+
      +__FLOAT_WORD_ORDER+ +HAVE-LINUX-INPUT-H+ +HAVE-DLOPEN+ +SDL-PRIX32+
      +SDL-PR-IS32+ +SDL-PR-IX32+ +SDL-PR-IU32+ +_MATH_H+
      +_BITS_LIBM_SIMD_DECL_STUBS_H+ +__TIMER_T_DEFINED+ +__TIME_T_DEFINED+
      +__CLOCK_T_DEFINED+ +__CLOCKID_T_DEFINED+ +SDL-FLT-EPSILON+ +SDL-PR-IS64+
      +SDL-MIN-UINT64+ +SDL-MAX-UINT64+ +SDL-PRIX64+ +SDL-PR-IX64+
      +SDL-PR-IU64+ +SDL-MIN-SINT64+ +SDL-MAX-SINT64+ +__FSFILCNT_T_TYPE+
      +__GLIBC_USE_IEC_60559_TYPES_EXT+ +__FSBLKCNT64_T_TYPE+
      +__FSBLKCNT_T_TYPE+ +__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X+
      +_POSIX_C_SOURCE+ +__BLKCNT64_T_TYPE+ +__USE_POSIX_IMPLICITLY+
      +__BLKCNT_T_TYPE+ +__RLIM64_T_TYPE+ +_POSIX_SOURCE+ +__RLIM_T_TYPE+
      +__PID_T_TYPE+ +__OFF64_T_TYPE+ +__OFF_T_TYPE+
      +__GLIBC_USE_IEC_60559_EXT+ +__FSWORD_T_TYPE+
      +__GLIBC_USE_IEC_60559_BFP_EXT_C2X+ +__NLINK_T_TYPE+ +_DEFAULT_SOURCE+
      +__MODE_T_TYPE+ +__DEV_T_TYPE+ +__INO64_T_TYPE+ +__INO_T_TYPE+
      +__GID_T_TYPE+ +__UID_T_TYPE+ +__GLIBC_USE_IEC_60559_FUNCS_EXT+
      +_STDC_PREDEF_H+ +____FILE_DEFINED+ +__STDC_IEC_559__+
      +_____FPOS64_T_DEFINED+ +__STRUCT_FILE_DEFINED+ +__TIMESIZE+
      +__WORDSIZE_TIME64_COMPAT32+ +__FILE_DEFINED+ +__SYSCALL_WORDSIZE+
      +_____FPOS_T_DEFINED+ +__USECONDS_T_TYPE+ +__WORDSIZE+
      +____MBSTATE_T_DEFINED+ +__TIME_T_TYPE+ +__CLOCK_T_TYPE+ +__ID_T_TYPE+
      +_ATFILE_SOURCE+ +__FSFILCNT64_T_TYPE+ +__USE_XOPEN2K8+
      +__ONCE_FLAG_INIT+ +__USE_XOPEN2K+ +__USE_POSIX199506+
      +__USE_POSIX199309+ +__USE_POSIX2+ +__USE_POSIX+ +__USE_ISOC95+
      +__USE_ISOC99+ +__USE_ISOC11+ +_STDIO_H+ +__GLIBC_USE_DEPRECATED_SCANF+
      +__GLIBC_USE_IEC_60559_BFP_EXT+ +__GLIBC_USE_DEPRECATED_GETS+
      +__GLIBC_USE_ISOC2X+ +__GLIBC_USE_LIB_EXT2+ +__USE_FORTIFY_LEVEL+
      +__HAVE_PTHREAD_ATTR_T+ +__USE_ATFILE+ +__USE_MISC+ +MIX-CHANNELS+
      +MIX-DEFAULT-FREQUENCY+ +MIX-DEFAULT-FORMAT+ +MIX-DEFAULT-CHANNELS+
      +MIX-MAX-VOLUME+ +__STDC_IEC_60559_BFP__+ +SDL-MIXER-COMPILEDVERSION+
      +INTMAX-MIN+ +UINTPTR-MAX+ +UINTMAX-MAX+ +INTMAX-MAX+ +PTRDIFF-MAX+
      +PTRDIFF-MIN+ +SIZE-MAX+ +SIG-ATOMIC-MAX+ +SIG-ATOMIC-MIN+ +WINT-MAX+
      +WINT-MIN+ +SDL-RWOPS-JNIFILE+ +SDL-AUDIOCVT-MAX-FILTERS+
      +SDL-RWOPS-UNKNOWN+ +PR-ID-LEAST16+ +INT8-MAX+ +PR-ID-LEAST32+
      +PR-ID-LEAST8+ +INT16-MAX+ +SDL-RWOPS-WINFILE+ +INT32-MIN+
      +SDL-RWOPS-STDFILE+ +PR-ID-FAST8+ +INT16-MIN+ +INT64-MIN+ +PR-ID-LEAST64+
      +PR-ID8+ +SDL-RWOPS-MEMORY+ +__PRIPTR_PREFIX+ +PR-ID16+ +UINT8-MAX+
      +UINT32-MAX+ +SDL-RWOPS-MEMORY-RO+ +UINT16-MAX+ +PR-ID64+ +INT32-MAX+
      +MIX-CHANNEL-POST+ +INT64-MAX+ +PR-ID32+ +INT-LEAST16-MIN+ +PR-II64+
      +_BITS_TYPES_H+ +PR-II32+ +INT-LEAST32-MIN+ +PR-II-LEAST16+ +UINT64-MAX+
      +PR-II-LEAST32+ +PR-II-LEAST8+ +INT-LEAST8-MIN+ +PR-ID-FAST32+
      +INT-LEAST32-MAX+ +INT-LEAST16-MAX+ +INT-LEAST64-MAX+ +PR-ID-FAST16+
      +PR-II8+ +PR-II16+ +INT-LEAST64-MIN+ +MIX-EFFECTSMAXSPEED+ +PR-ID-FAST64+
      +INT-LEAST8-MAX+ +UINT-LEAST32-MAX+ +SDL-AUDIO-ALLOW-ANY-CHANGE+
      +UINT-LEAST64-MAX+ +SDL-AUDIO-ALLOW-SAMPLES-CHANGE+ +UINT-LEAST8-MAX+
      +SDL-AUDIO-ALLOW-CHANNELS-CHANGE+ +UINT-LEAST16-MAX+ +INT-FAST32-MIN+
      +SDL-AUDIO-ALLOW-FORMAT-CHANGE+ +INT-FAST64-MIN+
      +SDL-AUDIO-ALLOW-FREQUENCY-CHANGE+ +AUDIO-F32SYS+ +INT-FAST8-MIN+
      +INT-FAST16-MIN+ +AUDIO-S32SYS+ +____GWCHAR_T_DEFINED+ +INT-FAST64-MAX+
      +UINT-FAST8-MAX+ +INT-FAST8-MAX+ +__PRI64_PREFIX+ +INT-FAST16-MAX+
      +INT-FAST32-MAX+ +UINT-FAST64-MAX+ +INTPTR-MIN+ +INTPTR-MAX+
      +UINT-FAST16-MAX+ +UINT-FAST32-MAX+ +PR-IU-LEAST64+ +__U16_TYPE+
      +PR-IU-FAST8+ +__S32_TYPE+ +PR-IU-FAST16+ +__U32_TYPE+ +PR-IU-FAST32+
      +__SLONGWORD_TYPE+ +PR-IU64+ +PR-IU32+ +__ULONGWORD_TYPE+ +__SQUAD_TYPE+
      +__UQUAD_TYPE+ +PR-IU-LEAST8+ +PR-IU-LEAST16+ +__SWORD_TYPE+
      +PR-IU-LEAST32+ +PR-IX-LEAST8+ +__UWORD_TYPE+ +__SLONG32_TYPE+
      +PR-IX-LEAST16+ +PR-IX-LEAST32+ +__ULONG32_TYPE+ +__S64_TYPE+
      +PR-IX-LEAST64+ +PR-IX-FAST8+ +__U64_TYPE+ +PR-IU-FAST64+ +__STD_TYPE+
      +PR-IX8+ +_BITS_TYPESIZES_H+ +PR-IX16+ +__SYSCALL_SLONG_TYPE+ +PR-IX32+
      +PR-IX64+ +__SYSCALL_ULONG_TYPE+ +PR-II-FAST64+ +PR-IO16+ +PR-IO8+
      +PR-IO32+ +PR-IO64+ +PR-II-LEAST64+ +PR-II-FAST8+ +HAS-BUILTIN-BSWAP32+
      +PR-II-FAST16+ +PR-II-FAST32+ +PR-IO-FAST16+ +HAS-BUILTIN-BSWAP16+
      +PR-IO-FAST32+ +PR-IU16+ +PR-IO-FAST64+ +SDL-INLINE+ +PR-IU8+
      +PR-IO-LEAST32+ +INT8-MIN+ +PR-IO-LEAST8+ +PR-IO-LEAST16+ +PR-IO-LEAST64+
      +PR-IO-FAST8+ +__S16_TYPE+ +WEOF+ +SDL-VIDEO-DRIVER-OFFSCREEN+
      +SDL-VIDEO-DRIVER-X11-XCURSOR+ +WCHAR-MIN+ +SDL-VIDEO-DRIVER-X11+
      +WCHAR-MAX+ +SDL-VIDEO-DRIVER-KMSDRM+ +SDL-VIDEO-DRIVER-WAYLAND+
      +SDL-VIDEO-DRIVER-WAYLAND-QT-TOUCH+ +SDL-TIMER-UNIX+ +SDL-FLOATWORDORDER+
      +SDL-VIDEO-DRIVER-DUMMY+ +HAS-BUILTIN-BSWAP64+
      +SDL-VIDEO-DRIVER-X11-XSCRNSAVER+ +__WCHAR_MIN+ +_BITS_WCHAR_H+
      +SDL-VIDEO-DRIVER-X11-XFIXES+ +__WCHAR_MAX+ +SDL-VIDEO-DRIVER-X11-XRANDR+
      +SDL-VIDEO-DRIVER-X11-XINPUT2+ +__MBSTATE_T_DEFINED+
      +SDL-VIDEO-DRIVER-X11-XINPUT2-SUPPORTS-MULTITOUCH+ +HAS-BROKEN-BSWAP+
      +__WINT_T_DEFINED+ +SDL-VIDEO-DRIVER-X11-XDBE+ +_WINT_T+ +PRIX16+
      +PRIXLEAST32+ +PRIX8+ +SDL-INPUT-LINUXEV+ +PR-IX-FAST64+
      +SDL-INPUT-LINUXKD+ +PR-IX-FAST32+ +PR-IX-FAST16+
      +SDL-AUDIO-DRIVER-SNDIO-DYNAMIC+ +SDL-AUDIO-DRIVER-PULSEAUDIO+
      +__LINUX__+ +PRIXLEAST16+ +SDL-AUDIO-DRIVER-SNDIO+ +PRIXLEAST8+
      +SDL-AUDIO-DRIVER-PIPEWIRE+ +PRIX64+ +SDL-AUDIO-DRIVER-PIPEWIRE-DYNAMIC+
      +PRIX32+ +SDL-BYTEORDER+ +SDL-THREAD-PTHREAD+ +PRIXFAST32+ +PRIXFAST16+
      +SDL-LIL-ENDIAN+ +SDL-BIG-ENDIAN+ +SDL-THREAD-PTHREAD-RECURSIVE-MUTEX+
      +PRIXFAST8+ +SDL-SENSOR-DUMMY+ +PRIXLEAST64+ +_STRINGS_H+
      +SDL-LOADSO-DLOPEN+ +SDL-JOYSTICK-VIRTUAL+ +SDL-HAPTIC-LINUX+
      +SDL-JOYSTICK-LINUX+ +SDL-JOYSTICK-HIDAPI+ +HAVE-IBUS-IBUS-H+
      +HAVE-INOTIFY+ +HAVE-INOTIFY-INIT1+ +HAVE-INOTIFY-INIT+
      +HAVE-SYS-INOTIFY-H+ +HAVE-FCITX+ +SDL-AUDIO-DRIVER-OSS+
      +SDL-AUDIO-DRIVER-DUMMY+ +SDL-AUDIO-DRIVER-DISK+ +SDL-AUDIO-DRIVER-ALSA+
      +HAVE-LIBDECOR-H+ +HAVE-LIBSAMPLERATE-H+ +HAVE-LIBUDEV-H+
      +HAVE-IMMINTRIN-H+ +__GCC_HAVE_DWARF2_CFI_ASM+ +SDL-SCOPED-CAPABILITY+
      +MIX-CLEAR-ERROR+ +MIX-OUT-OF-MEMORY+ +MIX-SET-ERROR+ +MIX-GET-ERROR+
      +SC-NO-PTR+ +SC-ND-PTR+ +SC-NI-PTR+ +_CTYPE_H+ +SC-NX-PTR+ +SC-NU-PTR+
      +SDL-MIN-UINT32+ +_FEATURES_H+ +SDL-MAX-UINT32+ +_SYS_TYPES_H+
      +SDL-MIN-SINT32+ +SDL-MAX-SINT32+ +SDL-VIDEO-OPENGL+ +SDL-MAX-SINT8+
      +SDL-VIDEO-RENDER-OGL-ES2+ +SDL-VIDEO-OPENGL-EGL+ +SDL-VIDEO-OPENGL-ES2+
      +SDL-MIN-SINT16+ +SDL-VIDEO-DRIVER-X11-SUPPORTS-GENERIC-EVENTS+
      +SDL-VIDEO-DRIVER-X11-XSHAPE+ +SDL-VIDEO-RENDER-OGL+
      +SDL-VIDEO-DRIVER-X11-HAS-XKBKEYCODETOKEYSYM+ +SDL-MAX-SINT16+
      +SDL-USE-IME+ +SDL-MIN-UINT16+ +DYNAPI-NEEDS-DLOPEN+ +SDL-MAX-UINT16+
      +SDL-HAVE-LIBDECOR-GET-MIN-MAX+ +SDL-UDEV-DYNAMIC+ +SDL-VIDEO-VULKAN+
      +SDL-MIN-UINT8+ +SDL-VIDEO-OPENGL-GLX+ +SDL-MAX-UINT8+
      +SDL-FILESYSTEM-UNIX+ +SDL-POWER-LINUX+ +SDL-MIN-SINT8+ +DBL-DECIMAL-DIG+
      +LDBL-DECIMAL-DIG+ +FLT-HAS-SUBNORM+ +DBL-HAS-SUBNORM+ +LDBL-HAS-SUBNORM+
      +SDL-SIZE-MAX+ +__LDOUBLE_REDIRECTS_TO_FLOAT128_ABI+ +DBL-EPSILON+
      +FD-SETSIZE+ +__EXTERN_INLINE+ +LDBL-EPSILON+ +FLT-MIN+ +NFDBITS+
      +DBL-MIN+ +__ATTRIBUTE_ARTIFICIAL__+ +FLT-TRUE-MIN+ +LDBL-MIN+
      +DBL-TRUE-MIN+ +__RESTRICT_ARR+ +LDBL-TRUE-MIN+ +FLT-DECIMAL-DIG+
      +__FORTIFY_FUNCTION+ +__NFDBITS+ +__EXTERN_ALWAYS_INLINE+
      +__ATTRIBUTE_WARN_UNUSED_RESULT__+ +FLT-MAX-EXP+ +DBL-MAX-EXP+
      +FLT-MAX-10-EXP+ +LDBL-MAX-EXP+ +DBL-MAX-10-EXP+ +__RETURNS_NONNULL+
      +_STRUCT_TIMESPEC+ +LDBL-MAX-10-EXP+ +FLT-MAX+ +_SIGSET_NWORDS+
      +__ALWAYS_INLINE+ +DBL-MAX+ +__TIMEVAL_DEFINED+ +FLT-EPSILON+ +LDBL-MAX+
      +DBL-DIG+ +FLT-DIG+ +FLT-MIN-EXP+ +DBL-MIN-EXP+ +LDBL-DIG+
      +FLT-MIN-10-EXP+ +LDBL-MIN-EXP+ +LDBL-MIN-10-EXP+ +DBL-MIN-10-EXP+
      +HAVE-DBUS-DBUS-H+ +DBL-MANT-DIG+ +FLT-MANT-DIG+ +DECIMAL-DIG+
      +LDBL-MANT-DIG+ +HAVE-PTHREAD-SETNAME-NP+ +HAVE-ICONV+ +HAVE-MPROTECT+
      +RW-SEEK-SET+ +HAVE-CLOCK-GETTIME+ +HAVE-O-CLOEXEC+ +HAVE--EXIT+
      +HAVE-POLL+ +HAVE-GETAUXVAL+ +HAVE-SEM-TIMEDWAIT+ +HAVE-FSEEKO64+
      +HAVE-FSEEKO+ +HAVE-FOPEN64+ +__HAVE_GENERIC_SELECTION+ +HAVE-TRUNCF+
      +HAVE-SYSCONF+ +HAVE-NANOSLEEP+ +HAVE-SETJMP+ +HAVE-SA-SIGACTION+
      +HAVE-SIGACTION+ +EXIT-SUCCESS+ +MB-CUR-MAX+ +RW-SEEK-END+ +WNOWAIT+
      +__LDIV_T_DEFINED+ +__LLDIV_T_DEFINED+ +WSTOPPED+ +RAND-MAX+
      +EXIT-FAILURE+ +WEXITED+ +__SIGSET_T_DEFINED+ +__WNOTHREAD+ +WCONTINUED+
      +__WCLONE+ +__WALL+ +__WCOREFLAG+ +RW-SEEK-CUR+ +__W_CONTINUED+
      +_SYS_SELECT_H+ +__HAVE_DISTINCT_FLOAT128X+ +__HAVE_FLOATN_NOT_TYPEDEF+
      +__HAVE_FLOAT128_UNLIKE_LDBL+ +__CFLOAT32+ +__CFLOAT64X+ +SC-NX-FAST8+
      +__CFLOAT32X+ +_BITS_UINTN_IDENTITY_H+ +__CFLOAT64+ +WUNTRACED+ +WNOHANG+
      +__HAVE_FLOAT64X_LONG_DOUBLE+ +SC-NX-LEAST64+ +SC-NX-LEAST32+
      +SC-NX-FAST32+ +__HAVE_FLOAT16+ +SC-NX-FAST16+ +__HAVE_FLOAT32+ +SC-NX64+
      +SC-NX32+ +__HAVE_FLOAT128+ +SC-NX16+ +__HAVE_DISTINCT_FLOAT128+
      +SC-NX-LEAST16+ +__HAVE_FLOAT64X+ +SC-NX-LEAST8+ +SC-NO-FAST32+
      +__HAVE_DISTINCT_FLOAT64+ +SC-NO-FAST16+ +__HAVE_DISTINCT_FLOAT32X+
      +SC-NX8+ +__HAVE_DISTINCT_FLOAT64X+ +SC-NO-FAST64+ +__HAVE_FLOAT64+
      +SC-NO-LEAST16+ +__HAVE_FLOAT32X+ +SC-NO-LEAST8+ +__HAVE_FLOAT128X+
      +SC-NO-FAST8+ +SC-NO-LEAST64+ +__HAVE_DISTINCT_FLOAT16+ +SC-NO-LEAST32+
      +__HAVE_DISTINCT_FLOAT32+ +_WCHAR_H+ +SC-NX-MAX+ +SC-ND-MAX+
      +SC-NX-FAST64+ +SC-NU-MAX+ +SC-NI-MAX+ +SC-NO-MAX+ +AUDIO-S16+
      +AUDIO-S32LSB+ +AUDIO-S32MSB+ +AUDIO-S32+ +AUDIO-F32LSB+ +AUDIO-F32MSB+
      +AUDIO-F32+ +AUDIO-U16SYS+ +AUDIO-S16SYS+ +AUDIO-U8+ +AUDIO-S8+
      +AUDIO-U16LSB+ +AUDIO-S16LSB+ +_ALLOCA_H+ +AUDIO-U16MSB+ +AUDIO-S16MSB+
      +AUDIO-U16+ +HAVE-SQRT+ +HAVE-SQRTF+ +HAVE-TAN+ +HAVE-TANF+ +_STRING_H+
      +HAVE-TRUNC+ +SDL-MUTEX-TIMEDOUT+ +HAVE-SCALBN+
      +SDL-NO-THREAD-SAFETY-ANALYSIS+ +HAVE-SCALBNF+ +HAVE-SIN+ +PR-II-PTR+
      +HAVE-SINF+ +HAVE-LROUNDF+ +SDL-MUTEX-MAXWAIT+ +__MATHCALL_NARROW_ARGS_2+
      +__MATHCALL_NARROW_ARGS_1+ +HAVE-POW+ +_BITS_TYPES___LOCALE_T_H+
      +_BITS_TYPES_LOCALE_T_H+ +HAVE-POWF+ +HAVE-ROUND+ +HAVE-ROUNDF+
      +MATH-ERRNO+ +__MATHCALL_NARROW_ARGS_3+ +HAVE-LOGF+ +HAVE-LOG10+
      +PR-IO-PTR+ +HAVE-LOG10F+ +HAVE-LROUND+ +PRIXPTR+ +SC-ND8+ +HAVE-FLOOR+
      +PR-IU-PTR+ +HAVE-FLOORF+ +PR-IU-MAX+ +HAVE-FMOD+ +PR-IX-PTR+ +HAVE-LOG+
      +HAVE-FMODF+ +HAVE-EXP+ +HAVE-COSF+ +PRIXMAX+ +HAVE-EXPF+ +PR-ID-PTR+
      +HAVE-FABS+ +PR-IX-MAX+ +PR-II-MAX+ +HAVE-FABSF+ +PR-IO-MAX+ +HAVE-CEILF+
      +PR-ID-MAX+ +HAVE-COPYSIGN+ +HAVE-COPYSIGNF+ +PRIXFAST64+ +SC-NI32+
      +HAVE-COS+ +HAVE-ATAN2F+ +HAVE-ATAN+ +HAVE-ATAN2+ +HAVE-ATANF+
      +HAVE-CEIL+ +SC-NI-FAST8+ +SC-NI-LEAST32+ +HAVE-ACOSF+ +SC-NI-LEAST64+
      +SC-NI-LEAST8+ +HAVE-ACOS+ +HAVE-ASINF+ +SC-NI8+ +HAVE-ASIN+
      +SC-NI-LEAST16+ +HAVE-STRCASESTR+ +SC-NI16+ +SC-NI64+ +HAVE-STRNCASECMP+
      +SC-ND-FAST64+ +HAVE-VSSCANF+ +HAVE-VSNPRINTF+ +SC-ND-FAST16+
      +__ATTRIBUTE_DEPRECATED__+ +HAVE-STRCMP+ +SC-ND-FAST32+ +HAVE-ATOF+
      +HAVE-STRCASECMP+ +SC-ND-FAST8+ +SC-ND-LEAST32+ +HAVE-STRNCMP+
      +SC-ND-LEAST64+ +SC-ND-LEAST8+ +SC-ND-LEAST16+ +SC-ND32+ +SC-ND16+
      +HAVE-ATOI+ +HAVE-STRTOD+ +SC-ND64+ +HAVE-STRTOULL+ +SC-NO16+ +SC-NO32+
      +SC-NO64+ +SC-NU-FAST64+ +SC-NO8+ +SC-NU-FAST32+ +SC-NU-FAST16+
      +SC-NU-LEAST32+ +SC-NU-FAST8+ +SC-NU-LEAST64+ +SC-NU-LEAST8+ +SC-NU64+
      +SC-NU-LEAST16+ +SC-NU32+ +SC-NU16+ +SC-NI-FAST64+ +SC-NU8+
      +SC-NI-FAST16+ +SC-NI-FAST32+ +MUS-GME+ +MUS-WAVPACK+ +MUS-OPUS+
      +MUS-MODPLUG-UNUSED+ +MUS-FLAC+ +MUS-MP3-MAD-UNUSED+ +MUS-MP3+ +MUS-OGG+
      +MUS-MID+ +MUS-MOD+ +MUS-WAV+ +MUS-CMD+ +MUS-NONE+ +MIX-FADING-IN+
      +MIX-FADING-OUT+ +MIX-NO-FADING+ +MIX-INIT-WAVPACK+ +MIX-INIT-OPUS+
      +MIX-INIT-MID+ +MIX-INIT-OGG+ +MIX-INIT-MP3+ +MIX-INIT-MOD+
      +MIX-INIT-FLAC+ +SDL-AUDIO-PAUSED+ +SDL-AUDIO-PLAYING+
      +SDL-AUDIO-STOPPED+ +SDL-THREAD-PRIORITY-TIME-CRITICAL+
      +SDL-THREAD-PRIORITY-HIGH+ +SDL-THREAD-PRIORITY-NORMAL+
      +SDL-THREAD-PRIORITY-LOW+ +SDL-LASTERROR+ +SDL-UNSUPPORTED+ +SDL-EFSEEK+
      +SDL-EFWRITE+ +SDL-EFREAD+ +SDL-ENOMEM+ +DUMMY-ENUM-VALUE+ +SDL-TRUE+
      +SDL-FALSE+ +FP-NORMAL+ +FP-SUBNORMAL+ +FP-ZERO+ +FP-INFINITE+ +FP-NAN+
      +_I_SALNUM+ +_I_SPUNCT+ +_I_SCNTRL+ +_I_SBLANK+ +_I_SGRAPH+ +_I_SPRINT+
      +_I_SSPACE+ +_I_SXDIGIT+ +_I_SDIGIT+ +_I_SALPHA+ +_I_SLOWER+ +_I_SUPPER+)
    #<PACKAGE "DUMMY">)
   (EXPORT
    '(MIX-EFFECT-DONE-T MIX-EFFECT-FUNC-T MIX-MUSIC-TYPE MIX-FADING
      MIX-INIT-FLAGS SDL-AUDIO-STATUS SDL-AUDIO-DEVICE-ID SDL-AUDIO-FILTER
      SDL-AUDIO-CALLBACK SDL-AUDIO-FORMAT SDL-THREAD-FUNCTION
      SDL-THREAD-PRIORITY SDL-TLSID SDL-THREAD-ID SDL-SPIN-LOCK SDL-ERRORCODE
      SDL-FREE-FUNC SDL-REALLOC-FUNC SDL-CALLOC-FUNC SDL-MALLOC-FUNC
      SDL-DUMMY-ENUM UINT64 SINT64 UINT32 SINT32 UINT16 SINT16 UINT8 SINT8
      SDL-BOOL DOUBLE-T FLOAT-T __GWCHAR_T UINTMAX-T INTMAX-T UINTPTR-T
      INTPTR-T UINT-FAST64-T UINT-FAST32-T UINT-FAST16-T UINT-FAST8-T
      INT-FAST64-T INT-FAST32-T INT-FAST16-T INT-FAST8-T UINT-LEAST64-T
      UINT-LEAST32-T UINT-LEAST16-T UINT-LEAST8-T INT-LEAST64-T INT-LEAST32-T
      INT-LEAST16-T INT-LEAST8-T UINT64-T UINT32-T UINT16-T UINT8-T MBSTATE-T
      WINT-T LOCALE-T PTRDIFF-T __COMPAR_FN_T WCHAR-T _FLOAT64X _FLOAT32X
      _FLOAT64 _FLOAT32 FPOS-T VA-LIST _IO_LOCK_T __GNUC_VA_LIST
      PTHREAD-SPINLOCK-T PTHREAD-ONCE-T PTHREAD-KEY-T PTHREAD-T __THRD_T
      __TSS_T FSFILCNT-T FSBLKCNT-T BLKCNT-T BLKSIZE-T FD-MASK __FD_MASK
      SUSECONDS-T SIGSET-T REGISTER-T U-INT64-T U-INT32-T U-INT16-T U-INT8-T
      INT64-T INT32-T INT16-T INT8-T UINT USHORT ULONG SIZE-T TIMER-T TIME-T
      CLOCKID-T CLOCK-T KEY-T CADDR-T DADDR-T SSIZE-T ID-T PID-T OFF-T UID-T
      NLINK-T MODE-T GID-T DEV-T INO-T LOFF-T FSID-T U-QUAD-T QUAD-T U-LONG
      U-INT U-SHORT U-CHAR __SIG_ATOMIC_T __SOCKLEN_T __INTPTR_T __LOFF_T
      __SYSCALL_ULONG_T __SYSCALL_SLONG_T __SSIZE_T __FSWORD_T __FSFILCNT64_T
      __FSFILCNT_T __FSBLKCNT64_T __FSBLKCNT_T __BLKCNT64_T __BLKCNT_T
      __BLKSIZE_T __CLOCKID_T __KEY_T __DADDR_T __SUSECONDS64_T __SUSECONDS_T
      __USECONDS_T __TIME_T __ID_T __RLIM64_T __RLIM_T __CLOCK_T __PID_T
      __OFF64_T __OFF_T __NLINK_T __MODE_T __INO64_T __INO_T __GID_T __UID_T
      __DEV_T __UINTMAX_T __INTMAX_T __U_QUAD_T __QUAD_T __UINT_LEAST64_T
      __INT_LEAST64_T __UINT_LEAST32_T __INT_LEAST32_T __UINT_LEAST16_T
      __INT_LEAST16_T __UINT_LEAST8_T __INT_LEAST8_T __UINT64_T __INT64_T
      __UINT32_T __INT32_T __UINT16_T __INT16_T __UINT8_T __INT8_T __U_LONG
      __U_INT __U_SHORT __U_CHAR)
    #<PACKAGE "DUMMY">)
   (SETF AUTOWRAP::*MUTE-REPORTING-P* NIL))
 (LET ((AUTOWRAP::*MUTE-REPORTING-P* NIL))
   (EVAL-WHEN (:LOAD-TOPLEVEL :EXECUTE)
     (AUTOWRAP::REPORT-WRAP-FAILURES 'AUTOWRAP::LOAD-TIME *STANDARD-OUTPUT*)
     (AUTOWRAP::CLEAR-WRAP-FAILURES))))
