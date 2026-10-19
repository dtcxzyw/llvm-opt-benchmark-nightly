Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Tcl_ChannelType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qrfColData = type { ptr, i32, i8, i8, i64, i64, i64, ptr, ptr, ptr, ptr }
%struct.Qrf = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %union.anon, i64, ptr, %struct.sqlite3_qrf_spec }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32, ptr }
%struct.sqlite3_qrf_spec = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Tcl_DString = type { ptr, i32, i32, [200 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.DbEvalContext = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"8.5-\00", align 1
@tclStubsPtr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"sqlite3\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"sqlite\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"3.53.4\00", align 1
@aQrfUWidth = internal unnamed_addr constant [303 x { i8, [3 x i8], i32 }] [{ i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 768 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 880 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1155 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1159 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1160 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1162 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1425 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1470 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1471 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1472 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1473 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1475 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1476 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1478 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1479 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1480 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1536 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1540 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1552 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1558 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1611 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1631 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1648 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1649 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1750 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1765 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1767 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1769 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1770 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1774 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1807 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1808 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1809 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1810 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1840 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1867 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1958 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1969 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2027 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2036 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2305 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2307 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2364 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2365 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2369 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2377 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2381 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2382 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2385 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2389 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2402 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2404 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2433 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2434 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2492 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2493 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2497 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2501 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2509 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2510 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2530 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2532 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2561 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2563 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2620 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2621 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2625 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2627 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2631 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2633 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2635 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2638 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2672 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2674 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2689 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2691 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2748 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2749 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2753 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2758 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2759 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2761 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2765 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2766 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2786 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2788 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2817 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2818 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2876 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2877 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2879 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2880 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2881 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2884 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2893 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2894 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2902 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2903 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2946 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2947 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3008 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3009 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3021 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3022 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3134 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3137 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3142 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3145 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3146 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3150 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3157 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3159 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3260 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3261 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3263 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3264 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3270 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3271 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3276 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3278 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3298 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3300 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3393 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3396 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3405 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3406 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3530 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3531 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3538 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3541 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3542 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3543 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3633 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3634 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3636 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3643 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3655 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3663 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3761 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3762 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3764 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3770 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3771 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3773 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3784 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3790 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3864 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3866 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3893 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3894 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3895 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3896 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3897 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3898 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3953 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3967 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3968 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3973 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3974 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3976 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3984 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3992 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3993 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 4029 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 4038 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 4039 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 4141 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 4145 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 4146 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 4147 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 4150 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 4155 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 4184 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 4186 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 4352 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 4448 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 4608 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 4959 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 4960 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 5906 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 5909 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 5938 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 5941 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 5970 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 5972 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6002 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6004 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6068 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6070 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6071 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6078 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6086 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6087 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6089 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6100 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6109 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6110 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6155 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6158 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6313 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6314 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6432 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6435 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6439 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6441 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6450 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6451 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6457 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6460 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6679 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6681 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6912 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6916 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6964 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6965 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6966 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6971 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6972 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6973 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6978 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6979 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 7019 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 7028 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 7616 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 7627 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 7678 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 7680 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 8203 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 8208 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 8234 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 8239 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 8288 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 8292 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 8298 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 8304 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 8400 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 8432 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 9001 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 9003 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 11904 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 12330 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 12336 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 12351 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 12352 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 12441 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 12443 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 42192 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 43014 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 43015 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 43019 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 43020 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 43045 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 43047 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 44032 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 55204 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 63744 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 64256 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 64286 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 64287 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 65024 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 65040 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 65050 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 65056 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 65060 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 65072 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 65136 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 65279 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 65280 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 65377 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 65504 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 65511 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 65529 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 65532 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 68097 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 68100 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 68101 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 68103 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 68108 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 68112 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 68152 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 68155 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 68159 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 68160 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 119143 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 119146 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 119155 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 119171 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 119173 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 119180 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 119210 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 119214 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 119362 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 119365 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 131072 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 196606 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 196608 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 262142 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 917505 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 917506 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 917536 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 917632 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 917760 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 918000 }], align 16
@.str.5 = private unnamed_addr constant [40 x i8] c"unusable sqlite3_qrf_spec.iVersion (%d)\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"tab\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"\E2\94\82 \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" \E2\94\82 \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c" \E2\94\82\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"\E2\94\82\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"\E2\94\82\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"\E2\95\AD\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"\E2\94\AC\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"\E2\95\AE\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c" |\0A\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"|\0A\00", align 1
@qrfColumnar.zSpace = internal constant [6 x i8] c"     \00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"\E2\95\9E\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"\E2\95\AA\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"\E2\95\A1\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"\E2\94\9C\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"\E2\94\BC\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"\E2\94\A4\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"\E2\95\B0\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"\E2\94\B4\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"\E2\95\AF\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"%Q\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"%#Q\00", align 1
@qrfCsvQuote = internal unnamed_addr constant [256 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@.str.41 = private unnamed_addr constant [5 x i8] c"\22%w\22\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"&#39;\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"\\u%04x\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"Inf\00", align 1
@qrfCType = internal unnamed_addr constant <{ [123 x i8], [133 x i8] }> <{ [123 x i8] c"\00\00\00\00\00\00\00\00\00\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\00\00\00\00\00\00\00\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\00\00\00\00\04\00\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04", [133 x i8] zeroinitializer }>, align 16
@.str.59 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"jsonb(\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"x'\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"(%d-byte blob)\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c":memory:\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"SELECT json(?1)\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\00", align 1
@.str.68 = private unnamed_addr constant [31 x i8] c"\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"Failed to write %d bytes of output\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"Next\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"Prev\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"VPrev\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"VNext\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"SorterNext\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"Return\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"Yield\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"SeekLT\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"SeekGT\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"RowSetRead\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"Rewind\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"Goto\00", align 1
@qrfExplain.aExplainWidth = internal unnamed_addr constant [8 x i32] [i32 4, i32 13, i32 4, i32 4, i32 4, i32 13, i32 2, i32 13], align 16
@qrfExplain.aExplainMap = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16
@qrfExplain.aScanExpWidth = internal unnamed_addr constant [10 x i32] [i32 4, i32 15, i32 6, i32 13, i32 4, i32 4, i32 4, i32 13, i32 2, i32 13], align 16
@qrfExplain.aScanExpMap = internal unnamed_addr constant [10 x i32] [i32 0, i32 9, i32 8, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16
@.str.82 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"%.*c\00", align 1
@.str.84 = private unnamed_addr constant [383 x i8] c"  SELECT addr, opcode, p1, p2, p3, p4, p5, comment, nexec,   format('% 6s (%.2f%%)',      CASE WHEN ncycle<100_000 THEN ncycle || ' '         WHEN ncycle<100_000_000 THEN (ncycle/1_000) || 'K'         WHEN ncycle<100_000_000_000 THEN (ncycle/1_000_000) || 'M'         ELSE (ncycle/1000_000_000) || 'G' END,       ncycle*100.0/(sum(ncycle) OVER ())   )  AS cycles   FROM bytecode(?1)\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"stmt-pointer\00", align 1
@.str.87 = private unnamed_addr constant [28 x i8] c"not available in this build\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"[{\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"},\0A{\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"}\0A{\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"<TR>\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"\0A<TH>\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"\0A</TR>\0A\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"\0A<TD>\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"INSERT INTO \22%w\22\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"INSERT INTO %s\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"%c\22%w\22\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c" VALUES(\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c",\0A  (\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.105 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"QUERY PLAN\0A\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"%s%s%s\0A\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"|--\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"`--\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"}]\0A\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"-sourceid\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"-has-codec\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"-key\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"-vfs\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"-readonly\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"-create\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"-nofollow\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"-nomutex\00", align 1
@.str.137 = private unnamed_addr constant [11 x i8] c"-fullmutex\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"-uri\00", align 1
@.str.139 = private unnamed_addr constant [19 x i8] c"-translatefilename\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"unknown option: \00", align 1
@.str.141 = private unnamed_addr constant [146 x i8] c"HANDLE ?FILENAME? ?-vfs VFSNAME? ?-readonly BOOLEAN? ?-create BOOLEAN? ?-nofollow BOOLEAN? ?-nomutex BOOLEAN? ?-fullmutex BOOLEAN? ?-uri BOOLEAN?\00", align 1
@DbObjCmd.DB_strs = internal global [44 x ptr] [ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr null], align 16
@.str.142 = private unnamed_addr constant [11 x i8] c"authorizer\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@.str.144 = private unnamed_addr constant [14 x i8] c"bind_fallback\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"changes\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.149 = private unnamed_addr constant [8 x i8] c"collate\00", align 1
@.str.150 = private unnamed_addr constant [17 x i8] c"collation_needed\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"commit_hook\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"complete\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.155 = private unnamed_addr constant [12 x i8] c"deserialize\00", align 1
@.str.156 = private unnamed_addr constant [22 x i8] c"enable_load_extension\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"errorcode\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"erroroffset\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.160 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"incrblob\00", align 1
@.str.164 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.165 = private unnamed_addr constant [18 x i8] c"last_insert_rowid\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"nullvalue\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c"onecolumn\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c"preupdate\00", align 1
@.str.169 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"rekey\00", align 1
@.str.172 = private unnamed_addr constant [8 x i8] c"restore\00", align 1
@.str.173 = private unnamed_addr constant [14 x i8] c"rollback_hook\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"serialize\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.177 = private unnamed_addr constant [14 x i8] c"total_changes\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.179 = private unnamed_addr constant [9 x i8] c"trace_v2\00", align 1
@.str.180 = private unnamed_addr constant [12 x i8] c"transaction\00", align 1
@.str.181 = private unnamed_addr constant [14 x i8] c"unlock_notify\00", align 1
@.str.182 = private unnamed_addr constant [12 x i8] c"update_hook\00", align 1
@.str.183 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"wal_hook\00", align 1
@.str.185 = private unnamed_addr constant [15 x i8] c"SUBCOMMAND ...\00", align 1
@.str.186 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"?CALLBACK?\00", align 1
@.str.188 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.189 = private unnamed_addr constant [20 x i8] c"?DATABASE? FILENAME\00", align 1
@.str.190 = private unnamed_addr constant [30 x i8] c"cannot open target database: \00", align 1
@.str.191 = private unnamed_addr constant [16 x i8] c"backup failed: \00", align 1
@.str.192 = private unnamed_addr constant [9 x i8] c"CALLBACK\00", align 1
@.str.193 = private unnamed_addr constant [19 x i8] c"cache option ?arg?\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"size n\00", align 1
@.str.197 = private unnamed_addr constant [17 x i8] c"cannot convert \22\00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c"\22 to integer\00", align 1
@.str.199 = private unnamed_addr constant [13 x i8] c"bad option \22\00", align 1
@.str.200 = private unnamed_addr constant [25 x i8] c"\22: must be flush or size\00", align 1
@.str.201 = private unnamed_addr constant [12 x i8] c"NAME SCRIPT\00", align 1
@.str.202 = private unnamed_addr constant [7 x i8] c"SCRIPT\00", align 1
@.str.203 = private unnamed_addr constant [4 x i8] c"SQL\00", align 1
@DbObjCmd.aDbConfig = internal unnamed_addr constant [16 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @.str.204, i32 1010, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.205, i32 1014, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.206, i32 1013, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.207, i32 1002, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.208, i32 1007, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.209, i32 1003, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.210, i32 1015, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.211, i32 1004, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.212, i32 1012, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.213, i32 1016, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.214, i32 1005, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.215, i32 1006, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.216, i32 1009, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.217, i32 1008, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.218, i32 1017, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.219, i32 1011, [4 x i8] zeroinitializer }], align 16
@.str.204 = private unnamed_addr constant [10 x i8] c"defensive\00", align 1
@.str.205 = private unnamed_addr constant [8 x i8] c"dqs_ddl\00", align 1
@.str.206 = private unnamed_addr constant [8 x i8] c"dqs_dml\00", align 1
@.str.207 = private unnamed_addr constant [12 x i8] c"enable_fkey\00", align 1
@.str.208 = private unnamed_addr constant [12 x i8] c"enable_qpsg\00", align 1
@.str.209 = private unnamed_addr constant [15 x i8] c"enable_trigger\00", align 1
@.str.210 = private unnamed_addr constant [12 x i8] c"enable_view\00", align 1
@.str.211 = private unnamed_addr constant [15 x i8] c"fts3_tokenizer\00", align 1
@.str.212 = private unnamed_addr constant [19 x i8] c"legacy_alter_table\00", align 1
@.str.213 = private unnamed_addr constant [19 x i8] c"legacy_file_format\00", align 1
@.str.214 = private unnamed_addr constant [15 x i8] c"load_extension\00", align 1
@.str.215 = private unnamed_addr constant [17 x i8] c"no_ckpt_on_close\00", align 1
@.str.216 = private unnamed_addr constant [15 x i8] c"reset_database\00", align 1
@.str.217 = private unnamed_addr constant [12 x i8] c"trigger_eqp\00", align 1
@.str.218 = private unnamed_addr constant [15 x i8] c"trusted_schema\00", align 1
@.str.219 = private unnamed_addr constant [16 x i8] c"writable_schema\00", align 1
@.str.220 = private unnamed_addr constant [19 x i8] c"?OPTION? ?BOOLEAN?\00", align 1
@.str.221 = private unnamed_addr constant [25 x i8] c"unknown config option: \22\00", align 1
@.str.222 = private unnamed_addr constant [62 x i8] c"CONFLICT-ALGORITHM TABLE FILENAME ?SEPARATOR? ?NULLINDICATOR?\00", align 1
@.str.223 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.224 = private unnamed_addr constant [44 x i8] c"Error: non-null separator required for copy\00", align 1
@.str.225 = private unnamed_addr constant [9 x i8] c"rollback\00", align 1
@.str.226 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.227 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.228 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.229 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.230 = private unnamed_addr constant [9 x i8] c"Error: \22\00", align 1
@.str.231 = private unnamed_addr constant [80 x i8] c"\22, conflict-algorithm must be one of: rollback, abort, fail, ignore, or replace\00", align 1
@.str.232 = private unnamed_addr constant [19 x i8] c"SELECT * FROM '%q'\00", align 1
@.str.233 = private unnamed_addr constant [23 x i8] c"Error: no such table: \00", align 1
@.str.234 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@.str.235 = private unnamed_addr constant [22 x i8] c"Error: can't malloc()\00", align 1
@.str.236 = private unnamed_addr constant [32 x i8] c"INSERT OR %q INTO '%q' VALUES(?\00", align 1
@.str.237 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.238 = private unnamed_addr constant [13 x i8] c"-translation\00", align 1
@.str.239 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.240 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.241 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.242 = private unnamed_addr constant [60 x i8] c"Error: %s line %d: expected %d columns of data but found %d\00", align 1
@.str.243 = private unnamed_addr constant [9 x i8] c"ROLLBACK\00", align 1
@.str.244 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.245 = private unnamed_addr constant [33 x i8] c", failed while processing line: \00", align 1
@.str.246 = private unnamed_addr constant [17 x i8] c"?DATABASE? VALUE\00", align 1
@.str.247 = private unnamed_addr constant [9 x i8] c"-maxsize\00", align 1
@.str.248 = private unnamed_addr constant [28 x i8] c"unable to set MEMDB content\00", align 1
@.str.249 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str.250 = private unnamed_addr constant [14 x i8] c"-withoutnulls\00", align 1
@.str.251 = private unnamed_addr constant [8 x i8] c"-asdict\00", align 1
@.str.252 = private unnamed_addr constant [18 x i8] c"unknown option: \22\00", align 1
@.str.253 = private unnamed_addr constant [34 x i8] c"?OPTIONS? SQL ?VAR-NAME? ?SCRIPT?\00", align 1
@.str.254 = private unnamed_addr constant [23 x i8] c"NAME ?SWITCHES? SCRIPT\00", align 1
@.str.255 = private unnamed_addr constant [10 x i8] c"-argcount\00", align 1
@.str.256 = private unnamed_addr constant [30 x i8] c"option requires an argument: \00", align 1
@.str.257 = private unnamed_addr constant [41 x i8] c"number of arguments must be non-negative\00", align 1
@.str.258 = private unnamed_addr constant [15 x i8] c"-deterministic\00", align 1
@.str.259 = private unnamed_addr constant [12 x i8] c"-directonly\00", align 1
@.str.260 = private unnamed_addr constant [11 x i8] c"-innocuous\00", align 1
@.str.261 = private unnamed_addr constant [12 x i8] c"-returntype\00", align 1
@.str.262 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.263 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.264 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.265 = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@.str.266 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@__const.DbObjCmd.azType = private unnamed_addr constant [6 x ptr] [ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr null], align 16
@.str.267 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.268 = private unnamed_addr constant [78 x i8] c"\22: must be -argcount, -deterministic, -directonly, -innocuous, or -returntype\00", align 1
@.str.269 = private unnamed_addr constant [36 x i8] c"?-readonly? ?DB? TABLE COLUMN ROWID\00", align 1
@.str.270 = private unnamed_addr constant [10 x i8] c"NULLVALUE\00", align 1
@.str.271 = private unnamed_addr constant [11 x i8] c"N CALLBACK\00", align 1
@.str.272 = private unnamed_addr constant [4 x i8] c"KEY\00", align 1
@.str.273 = private unnamed_addr constant [30 x i8] c"cannot open source database: \00", align 1
@.str.274 = private unnamed_addr constant [17 x i8] c"restore failed: \00", align 1
end_hunk_0
begin_hunk_1_@qrfSplitColumn:bb.a
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !30 ; 3 uses
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.2184 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 %i.dk, ptr %i.dm, align 8, !tbaa !78
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 %i.dk, ptr %i.dn, align 4, !tbaa !68
  %i.do = trunc i32 %i.dk to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 17
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !77
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i8 %.pre211, ptr %i.dq, align 8, !tbaa !73
  %i.dr = or disjoint i64 %.2184, 1               ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.1136.ph, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !30 ; 3 uses
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.dr ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 %i.dt, ptr %i.dv, align 8, !tbaa !78
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 %i.dt, ptr %i.dw, align 4, !tbaa !68
  %i.dx = trunc i32 %i.dt to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 17
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !77
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i8 %.pre211, ptr %i.dz, align 8, !tbaa !73
  %i.ea = add nuw nsw i64 %.2184, 2               ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge186.loopexit.unr-lcssa, label %bb.u, !llvm.loop !322

._crit_edge186.loopexit.unr-lcssa:                ; preds = %bb.u
  %i.eb = and i32 %.1.ph, 1
  %lcmp.mod.not = icmp eq i32 %i.eb, 0
  br i1 %lcmp.mod.not, label %._crit_edge186, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge186.loopexit.unr-lcssa
  %lcmp.mod287 = trunc i32 %.1.ph to i1
  tail call void @llvm.assume(i1 %lcmp.mod287)
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.1136.ph, i64 %i.ea
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !30 ; 3 uses
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.ea ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 %i.ed, ptr %i.ef, align 8, !tbaa !78
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 %i.ed, ptr %i.eg, align 4, !tbaa !68
  %i.eh = trunc i32 %i.ed to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 17
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !77
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i8 %.pre211, ptr %i.ej, align 8, !tbaa !73
  br label %._crit_edge186

._crit_edge186:                                   ; preds = %.epil.preheader, %._crit_edge186.loopexit.unr-lcssa, %.preheader
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !71
  tail call void @sqlite3_free(ptr noundef %i.el) #20
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !72
  tail call void @sqlite3_free(ptr noundef %i.en) #20
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !64
  tail call void @sqlite3_free(ptr noundef %i.ep) #20
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !65
  tail call void @sqlite3_free(ptr noundef %i.er) #20
  tail call void @sqlite3_free(ptr noundef %.1136.ph) #20
  store ptr %i.bj, ptr %i.ek, align 8, !tbaa !71
  store ptr %i.bm, ptr %i.em, align 8, !tbaa !72
  store ptr %i.bp, ptr %i.eo, align 8, !tbaa !64
  store ptr %i.br, ptr %i.eq, align 8, !tbaa !65
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.1.ph, ptr %i.es, align 8, !tbaa !62
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bh, ptr %i.et, align 8, !tbaa !70
  store i64 %i.bh, ptr %i.bt, align 8, !tbaa !69
  br i1 %i.cv, label %.lr.ph190.preheader, label %._crit_edge191

.lr.ph190.preheader:                              ; preds = %._crit_edge186
  %min.iters.check255 = icmp ult i32 %.1.ph, 9
  br i1 %min.iters.check255, label %.lr.ph190.preheader267, label %vector.ph256

vector.ph256:                                     ; preds = %.lr.ph190.preheader
  %i.eu = and i64 %i.bg, 7
  %i.ev = and i32 %.1.ph, 7
  %i.ew = icmp eq i32 %i.ev, 0
  %i.ex = select i1 %i.ew, i64 8, i64 %i.eu
  %n.vec257 = sub nsw i64 %i.bg, %i.ex            ; 2 uses
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph256
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next262, %vector.body258 ] ; 9 uses
  %vec.phi260 = phi <4 x i32> [ zeroinitializer, %vector.ph256 ], [ %i.ge, %vector.body258 ]
  %vec.phi261 = phi <4 x i32> [ zeroinitializer, %vector.ph256 ], [ %i.gf, %vector.body258 ]
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 104
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 128
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 152
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 176
  %i.fo = load i32, ptr %i.fg, align 8, !tbaa !78
  %i.fp = load i32, ptr %i.fh, align 8, !tbaa !78
  %i.fq = load i32, ptr %i.fi, align 8, !tbaa !78
  %i.fr = load i32, ptr %i.fj, align 8, !tbaa !78
  %i.fs = insertelement <4 x i32> poison, i32 %i.fo, i64 0
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.fp, i64 1
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.fq, i64 2
  %i.fv = insertelement <4 x i32> %i.fu, i32 %i.fr, i64 3
  %i.fw = load i32, ptr %i.fk, align 8, !tbaa !78
  %i.fx = load i32, ptr %i.fl, align 8, !tbaa !78
  %i.fy = load i32, ptr %i.fm, align 8, !tbaa !78
  %i.fz = load i32, ptr %i.fn, align 8, !tbaa !78
  %i.ga = insertelement <4 x i32> poison, i32 %i.fw, i64 0
  %i.gb = insertelement <4 x i32> %i.ga, i32 %i.fx, i64 1
  %i.gc = insertelement <4 x i32> %i.gb, i32 %i.fy, i64 2
  %i.gd = insertelement <4 x i32> %i.gc, i32 %i.fz, i64 3
  %i.ge = add <4 x i32> %i.fv, %vec.phi260        ; 2 uses
  %i.gf = add <4 x i32> %i.gd, %vec.phi261        ; 2 uses
  %index.next262 = add nuw i64 %index259, 8       ; 2 uses
  %i.gg = icmp eq i64 %index.next262, %n.vec257
  br i1 %i.gg, label %middle.block263, label %vector.body258, !llvm.loop !323

middle.block263:                                  ; preds = %vector.body258
  %bin.rdx264 = add <4 x i32> %i.gf, %i.ge
  %i.gh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx264)
  br label %.lr.ph190.preheader267

.lr.ph190.preheader267:                           ; preds = %.lr.ph190.preheader, %middle.block263
  %.3188.ph = phi i64 [ 0, %.lr.ph190.preheader ], [ %n.vec257, %middle.block263 ]
  %.0131187.ph = phi i32 [ 0, %.lr.ph190.preheader ], [ %i.gh, %middle.block263 ]
  br label %.lr.ph190

.lr.ph190:                                        ; preds = %.lr.ph190.preheader267, %.lr.ph190
  %.3188 = phi i64 [ %i.gm, %.lr.ph190 ], [ %.3188.ph, %.lr.ph190.preheader267 ] ; 2 uses
  %.0131187 = phi i32 [ %i.gl, %.lr.ph190 ], [ %.0131187.ph, %.lr.ph190.preheader267 ]
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.3188
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !78
  %i.gl = add nsw i32 %i.gk, %.0131187            ; 2 uses
  %i.gm = add nuw nsw i64 %.3188, 1               ; 2 uses
  %exitcond210.not = icmp eq i64 %i.gm, %i.bg
  br i1 %exitcond210.not, label %._crit_edge191, label %.lr.ph190, !llvm.loop !324

._crit_edge191:                                   ; preds = %.lr.ph190, %._crit_edge186
  %.0131.lcssa = phi i32 [ 0, %._crit_edge186 ], [ %i.gl, %.lr.ph190 ]
  %i.gn = load i16, ptr %i.a, align 8, !tbaa !52
  %i.go = sext i16 %i.gn to i32
  %i.gp = sub nsw i32 %i.go, %.0131.lcssa
  %i.gq = add nsw i32 %.1.ph, -1
  %i.gr = sdiv i32 %i.gp, %i.gq                   ; 2 uses
  %i.gs = trunc i32 %i.gr to i8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.gu = and i32 %i.gr, 254
  %i.gv = icmp samesign ugt i32 %i.gu, 5
  %spec.select = select i1 %i.gv, i8 5, i8 %i.gs
  store i8 %spec.select, ptr %i.gt, align 1, !tbaa !79
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge191, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfBoxSeparator(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.f = load i8, ptr %i.e, align 4, !tbaa !80
  %.not = icmp eq i8 %i.f, 1                      ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @sqlite3_str_appendall(ptr noundef %0, ptr noundef %2) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !78
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !79
  %i.m = zext i8 %i.l to i32
  %i.n = add nsw i32 %i.j, %i.m                   ; 2 uses
  %i.o = mul nsw i32 %i.n, 3                      ; 2 uses
  %i.p = icmp sgt i32 %i.n, 10
  br i1 %i.p, label %.lr.ph.i, label %qrfBoxLine.exit

.lr.ph.i:                                         ; preds = %bb.d
  %.sroa.idx.not.i = icmp eq i32 %5, 0
  %.sroa.speculated.i = select i1 %.sroa.idx.not.i, ptr @.str.67, ptr @.str.68
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.a, %.lr.ph.i
  %.07.i = phi i32 [ %i.o, %.lr.ph.i ], [ %i.q, %.lr.ph.i.a ] ; 2 uses
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %.sroa.speculated.i, i32 noundef 30) #20
  %i.q = add nsw i32 %.07.i, -30                  ; 2 uses
  %i.r = icmp sgt i32 %.07.i, 60
  br i1 %i.r, label %.lr.ph.i.a, label %qrfBoxLine.exit, !llvm.loop !325

qrfBoxLine.exit:                                  ; preds = %.lr.ph.i.a, %bb.d
  %.0.lcssa.i = phi i32 [ %i.o, %bb.d ], [ %i.q, %.lr.ph.i.a ]
  %.sroa.idx1.not.i = icmp eq i32 %5, 0
  %.sroa.speculated6.i = select i1 %.sroa.idx1.not.i, ptr @.str.67, ptr @.str.68 ; 3 uses
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %.sroa.speculated6.i, i32 noundef %.0.lcssa.i) #20
  %i.s = load i32, ptr %i.a, align 8, !tbaa !62
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %qrfBoxLine.exit, %qrfBoxLine.exit25
  %indvars.iv = phi i64 [ %indvars.iv.next, %qrfBoxLine.exit25 ], [ 1, %qrfBoxLine.exit ] ; 2 uses
  tail call void @sqlite3_str_appendall(ptr noundef %0, ptr noundef %3) #20
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !78
  %i.y = load i8, ptr %i.k, align 1, !tbaa !79
  %i.z = zext i8 %i.y to i32
  %i.aa = add nsw i32 %i.x, %i.z                  ; 2 uses
  %i.ab = mul nsw i32 %i.aa, 3                    ; 2 uses
  %i.ac = icmp sgt i32 %i.aa, 10
  br i1 %i.ac, label %.lr.ph.i23, label %qrfBoxLine.exit25

.lr.ph.i23:                                       ; preds = %.lr.ph, %.lr.ph.i23
  %.07.i24 = phi i32 [ %i.ad, %.lr.ph.i23 ], [ %i.ab, %.lr.ph ] ; 2 uses
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %.sroa.speculated6.i, i32 noundef 30) #20
  %i.ad = add nsw i32 %.07.i24, -30               ; 2 uses
  %i.ae = icmp sgt i32 %.07.i24, 60
  br i1 %i.ae, label %.lr.ph.i23, label %qrfBoxLine.exit25, !llvm.loop !325

qrfBoxLine.exit25:                                ; preds = %.lr.ph.i23, %.lr.ph
  %.0.lcssa.i22 = phi i32 [ %i.ab, %.lr.ph ], [ %i.ad, %.lr.ph.i23 ]
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %.sroa.speculated6.i, i32 noundef %.0.lcssa.i22) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load i32, ptr %i.a, align 8, !tbaa !62
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !326

._crit_edge:                                      ; preds = %qrfBoxLine.exit25, %qrfBoxLine.exit
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  tail call void @sqlite3_str_appendall(ptr noundef %0, ptr noundef %4) #20
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e, %bb.a
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfRowSeparator(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i8 noundef signext range(i8 43, 125) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  store i8 %2, ptr %i.a, align 1, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !62
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  %i.g = load i8, ptr %i.f, align 4, !tbaa !80
  %.not = icmp eq i8 %i.g, 1                      ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !79
  %i.n = zext i8 %i.m to i32
  %i.o = add nsw i32 %i.k, %i.n
  call void @sqlite3_str_appendchar(ptr noundef %0, i32 noundef %i.o, i8 noundef signext 45) #20
  %i.p = load i32, ptr %i.b, align 8, !tbaa !62
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.d ] ; 2 uses
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1) #20
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !78
  %i.v = load i8, ptr %i.l, align 1, !tbaa !79
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.u, %i.w
  call void @sqlite3_str_appendchar(ptr noundef %0, i32 noundef %i.x, i8 noundef signext 45) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i32, ptr %i.b, align 8, !tbaa !62
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !327

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1) #20
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e, %bb.a
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 1) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare i32 @sqlite3_str_errcode(ptr noundef) local_unnamed_addr #5

declare void @sqlite3_str_append(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @qrfWrapLine(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #12 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !29
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %.preheader159

.preheader159:                                    ; preds = %bb.a
  %.not171 = icmp slt i32 %1, 0
  br i1 %.not171, label %sqlite3_qrf_wcwidth.exit._crit_edge.thread, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4, !tbaa !30
  store i32 0, ptr %4, align 4, !tbaa !30
  br label %bb.am

.lr.ph:                                           ; preds = %.preheader159, %bb.ad
  %.0110173 = phi i32 [ %.3, %bb.ad ], [ 0, %.preheader159 ] ; 12 uses
  %.0115172 = phi i32 [ %i.dj, %bb.ad ], [ 0, %.preheader159 ] ; 13 uses
  %i.c = sext i32 %.0115172 to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 10 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29    ; 6 uses
  %i.f = icmp ugt i8 %i.e, -65
  br i1 %i.f, label %bb.c, label %bb.u

bb.c:                                             ; preds = %.lr.ph
  %i.g = zext i8 %i.e to i32                      ; 6 uses
  %i.h = and i32 %i.g, 224
  %i.i = icmp eq i32 %i.h, 192
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = and i32 %i.l, 192
  %i.n = icmp eq i32 %i.m, 128
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw nsw i32 %i.g, 6
  %i.p = and i32 %i.o, 1984
  %i.q = and i32 %i.l, 63
  %i.r = or disjoint i32 %i.q, %i.p
  br label %sqlite3_qrf_decode_utf8.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.s = and i32 %i.g, 240
  %i.t = icmp eq i32 %i.s, 224
  br i1 %i.t, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !29
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = and i32 %i.w, 192
  %i.y = icmp eq i32 %i.x, 128
  br i1 %i.y, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !29
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %i.ac = and i32 %i.ab, 192
  %i.ad = icmp eq i32 %i.ac, 128
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = shl nuw nsw i32 %i.g, 12
  %i.af = and i32 %i.ae, 61440
  %i.ag = shl nuw nsw i32 %i.w, 6
  %i.ah = and i32 %i.ag, 4032
  %i.ai = or disjoint i32 %i.ah, %i.af
  %i.aj = and i32 %i.ab, 63
  %i.ak = or disjoint i32 %i.ai, %i.aj
  br label %sqlite3_qrf_decode_utf8.exit

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.al = and i32 %i.g, 248
  %i.am = icmp eq i32 %i.al, 240
  br i1 %i.am, label %bb.k, label %sqlite3_qrf_wcwidth.exit

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !29
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = and i32 %i.ap, 192
  %i.ar = icmp eq i32 %i.aq, 128
  br i1 %i.ar, label %bb.l, label %sqlite3_qrf_wcwidth.exit

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = and i32 %i.au, 192
  %i.aw = icmp eq i32 %i.av, 128
  br i1 %i.aw, label %bb.m, label %sqlite3_qrf_wcwidth.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !29
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = and i32 %i.az, 192
  %i.bb = icmp eq i32 %i.ba, 128
  br i1 %i.bb, label %bb.n, label %sqlite3_qrf_wcwidth.exit

bb.n:                                             ; preds = %bb.m
  %i.bc = shl nuw nsw i32 %i.g, 18
  %i.bd = and i32 %i.bc, 1835008
  %i.be = shl nuw nsw i32 %i.ap, 12
  %i.bf = and i32 %i.be, 258048
end_hunk_1
