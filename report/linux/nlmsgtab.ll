Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nlmsgtab?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { i8, i8, [15 x i8], ptr, %struct.mutex, ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, ptr }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@selinux_state = external dso_local global %struct.selinux_state, align 8
@nlmsg_route_perms = internal unnamed_addr constant [68 x { i16, [2 x i8], i32 }] [{ i16, [2 x i8], i32 } { i16 16, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 17, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 18, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 19, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 20, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 21, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 22, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 24, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 25, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 26, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 28, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 29, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 30, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 32, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 33, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 34, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 36, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 37, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 38, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 40, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 41, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 42, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 44, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 45, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 46, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 48, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 49, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 50, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 52, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 58, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 62, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 66, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 67, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 72, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 73, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 74, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 78, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 79, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 80, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 81, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 82, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 84, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 85, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 86, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 88, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 89, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 90, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 92, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 94, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 95, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 96, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 100, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 101, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 102, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 104, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 105, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 106, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 108, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 109, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 112, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 113, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 114, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 116, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 117, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 118, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 120, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 121, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 122, [2 x i8] zeroinitializer, i32 2097152 }], align 16
@nlmsg_tcpdiag_perms = internal unnamed_addr constant [3 x { i16, [2 x i8], i32 }] [{ i16, [2 x i8], i32 } { i16 18, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 20, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 21, [2 x i8] zeroinitializer, i32 4194304 }], align 16
@nlmsg_xfrm_perms = internal unnamed_addr constant [26 x { i16, [2 x i8], i32 }] [{ i16, [2 x i8], i32 } { i16 16, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 17, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 18, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 19, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 20, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 21, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 22, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 23, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 24, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 25, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 26, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 27, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 28, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 29, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 30, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 31, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 32, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 33, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 34, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 35, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 36, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 37, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 38, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 39, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 40, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 41, [2 x i8] zeroinitializer, i32 4194304 }], align 16
@nlmsg_audit_perms = internal unnamed_addr constant [16 x { i16, [2 x i8], i32 }] [{ i16, [2 x i8], i32 } { i16 1000, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 1001, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 1002, [2 x i8] zeroinitializer, i32 16777216 }, { i16, [2 x i8], i32 } { i16 1003, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 1004, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 1013, [2 x i8] zeroinitializer, i32 16777216 }, { i16, [2 x i8], i32 } { i16 1011, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 1012, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 1005, [2 x i8] zeroinitializer, i32 8388608 }, { i16, [2 x i8], i32 } { i16 1010, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 1014, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 1015, [2 x i8] zeroinitializer, i32 4194304 }, { i16, [2 x i8], i32 } { i16 1016, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 1017, [2 x i8] zeroinitializer, i32 33554432 }, { i16, [2 x i8], i32 } { i16 1019, [2 x i8] zeroinitializer, i32 2097152 }, { i16, [2 x i8], i32 } { i16 1018, [2 x i8] zeroinitializer, i32 4194304 }], align 16

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: write, target_mem: none)
define dso_local range(i32 -22, 1) i32 @selinux_nlmsg_lookup(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  switch i16 %0, label %nlmsg_perm.exit [
    i16 31, label %bb.b
    i16 32, label %bb.d
    i16 34, label %bb.f
    i16 37, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @selinux_state, i64 11), align 1, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %nlmsg_perm.exit.sink.split, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  switch i16 %1, label %.lr.ph.i.64 [
    i16 16, label %bb.c
    i16 17, label %.fold.split
    i16 18, label %.fold.split65
    i16 19, label %.fold.split66
    i16 20, label %.fold.split67
    i16 21, label %.fold.split68
    i16 22, label %.fold.split69
    i16 24, label %.fold.split70
    i16 25, label %.fold.split71
    i16 26, label %.fold.split72
    i16 28, label %.fold.split73
    i16 29, label %.fold.split74
    i16 30, label %.fold.split75
    i16 32, label %.fold.split76
    i16 33, label %.fold.split77
    i16 34, label %.fold.split78
    i16 36, label %.fold.split79
    i16 37, label %.fold.split80
    i16 38, label %.fold.split81
    i16 40, label %.fold.split82
    i16 41, label %.fold.split83
    i16 42, label %.fold.split84
    i16 44, label %.fold.split85
    i16 45, label %.fold.split86
    i16 46, label %.fold.split87
    i16 48, label %.fold.split88
    i16 49, label %.fold.split89
    i16 50, label %.fold.split90
    i16 52, label %.fold.split91
    i16 58, label %.fold.split92
    i16 62, label %.fold.split93
    i16 66, label %.fold.split94
    i16 67, label %.fold.split95
    i16 72, label %.fold.split96
    i16 73, label %.fold.split97
    i16 74, label %.fold.split98
    i16 78, label %.fold.split99
    i16 79, label %.fold.split100
    i16 80, label %.fold.split101
    i16 81, label %.fold.split102
    i16 82, label %.fold.split103
    i16 84, label %.fold.split104
    i16 85, label %.fold.split105
    i16 86, label %.fold.split106
    i16 88, label %.fold.split107
    i16 89, label %.fold.split108
    i16 90, label %.fold.split109
    i16 92, label %.fold.split110
    i16 94, label %.fold.split111
    i16 95, label %.fold.split112
    i16 96, label %.fold.split113
    i16 100, label %.fold.split114
    i16 101, label %.fold.split115
    i16 102, label %.fold.split116
    i16 104, label %.fold.split117
    i16 105, label %.fold.split118
    i16 106, label %.fold.split119
    i16 108, label %.fold.split120
    i16 109, label %.fold.split121
    i16 112, label %.fold.split122
    i16 113, label %.fold.split123
    i16 114, label %.fold.split124
    i16 116, label %.fold.split125
    i16 117, label %.fold.split126
  ]

.lr.ph.i.64:                                      ; preds = %.lr.ph.i.preheader
  switch i16 %1, label %nlmsg_perm.exit [
    i16 118, label %bb.c
    i16 120, label %.fold.split127
    i16 121, label %.fold.split128
    i16 122, label %.fold.split129
  ]

.fold.split:                                      ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split65:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split66:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split67:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split68:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split69:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split70:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split71:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split72:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split73:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split74:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split75:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split76:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split77:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split78:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split79:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split80:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split81:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split82:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split83:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split84:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split85:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split86:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split87:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split88:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split89:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split90:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split91:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split92:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split93:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split94:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split95:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split96:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split97:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split98:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split99:                                    ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split100:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split101:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split102:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split103:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split104:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split105:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split106:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split107:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split108:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split109:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split110:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split111:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split112:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split113:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split114:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split115:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split116:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split117:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split118:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split119:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split120:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split121:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split122:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split123:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split124:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split125:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split126:                                   ; preds = %.lr.ph.i.preheader
  br label %bb.c

.fold.split127:                                   ; preds = %.lr.ph.i.64
  br label %bb.c

.fold.split128:                                   ; preds = %.lr.ph.i.64
  br label %bb.c

.fold.split129:                                   ; preds = %.lr.ph.i.64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.64, %.fold.split129, %.fold.split128, %.fold.split127, %.lr.ph.i.preheader, %.fold.split126, %.fold.split125, %.fold.split124, %.fold.split123, %.fold.split122, %.fold.split121, %.fold.split120, %.fold.split119, %.fold.split118, %.fold.split117, %.fold.split116, %.fold.split115, %.fold.split114, %.fold.split113, %.fold.split112, %.fold.split111, %.fold.split110, %.fold.split109, %.fold.split108, %.fold.split107, %.fold.split106, %.fold.split105, %.fold.split104, %.fold.split103, %.fold.split102, %.fold.split101, %.fold.split100, %.fold.split99, %.fold.split98, %.fold.split97, %.fold.split96, %.fold.split95, %.fold.split94, %.fold.split93, %.fold.split92, %.fold.split91, %.fold.split90, %.fold.split89, %.fold.split88, %.fold.split87, %.fold.split86, %.fold.split85, %.fold.split84, %.fold.split83, %.fold.split82, %.fold.split81, %.fold.split80, %.fold.split79, %.fold.split78, %.fold.split77, %.fold.split76, %.fold.split75, %.fold.split74, %.fold.split73, %.fold.split72, %.fold.split71, %.fold.split70, %.fold.split69, %.fold.split68, %.fold.split67, %.fold.split66, %.fold.split65, %.fold.split
  %.lcssa = phi i64 [ 0, %.lr.ph.i.preheader ], [ 66, %.fold.split128 ], [ 1, %.fold.split ], [ 2, %.fold.split65 ], [ 3, %.fold.split66 ], [ 4, %.fold.split67 ], [ 5, %.fold.split68 ], [ 6, %.fold.split69 ], [ 7, %.fold.split70 ], [ 8, %.fold.split71 ], [ 9, %.fold.split72 ], [ 10, %.fold.split73 ], [ 11, %.fold.split74 ], [ 12, %.fold.split75 ], [ 13, %.fold.split76 ], [ 14, %.fold.split77 ], [ 15, %.fold.split78 ], [ 16, %.fold.split79 ], [ 17, %.fold.split80 ], [ 18, %.fold.split81 ], [ 19, %.fold.split82 ], [ 20, %.fold.split83 ], [ 21, %.fold.split84 ], [ 22, %.fold.split85 ], [ 23, %.fold.split86 ], [ 24, %.fold.split87 ], [ 25, %.fold.split88 ], [ 26, %.fold.split89 ], [ 27, %.fold.split90 ], [ 28, %.fold.split91 ], [ 29, %.fold.split92 ], [ 30, %.fold.split93 ], [ 31, %.fold.split94 ], [ 32, %.fold.split95 ], [ 33, %.fold.split96 ], [ 34, %.fold.split97 ], [ 35, %.fold.split98 ], [ 36, %.fold.split99 ], [ 37, %.fold.split100 ], [ 38, %.fold.split101 ], [ 39, %.fold.split102 ], [ 40, %.fold.split103 ], [ 41, %.fold.split104 ], [ 42, %.fold.split105 ], [ 43, %.fold.split106 ], [ 44, %.fold.split107 ], [ 45, %.fold.split108 ], [ 46, %.fold.split109 ], [ 47, %.fold.split110 ], [ 48, %.fold.split111 ], [ 49, %.fold.split112 ], [ 50, %.fold.split113 ], [ 51, %.fold.split114 ], [ 52, %.fold.split115 ], [ 53, %.fold.split116 ], [ 54, %.fold.split117 ], [ 55, %.fold.split118 ], [ 56, %.fold.split119 ], [ 57, %.fold.split120 ], [ 58, %.fold.split121 ], [ 59, %.fold.split122 ], [ 60, %.fold.split123 ], [ 61, %.fold.split124 ], [ 62, %.fold.split125 ], [ 64, %.lr.ph.i.64 ], [ 63, %.fold.split126 ], [ 65, %.fold.split127 ], [ 67, %.fold.split129 ]
  %i.c = getelementptr [8 x i8], ptr @nlmsg_route_perms, i64 %.lcssa
  br label %nlmsg_perm.exit.sink.split.sink.split

bb.d:                                             ; preds = %bb.a
  %i.d = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @selinux_state, i64 11), align 1, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %nlmsg_perm.exit.sink.split, label %.lr.ph.i24.preheader

.lr.ph.i24.preheader:                             ; preds = %bb.d
  switch i16 %1, label %nlmsg_perm.exit [
    i16 18, label %bb.e
    i16 20, label %.fold.split130
    i16 21, label %.fold.split131
  ]

.fold.split130:                                   ; preds = %.lr.ph.i24.preheader
  br label %bb.e

.fold.split131:                                   ; preds = %.lr.ph.i24.preheader
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.i24.preheader, %.fold.split131, %.fold.split130
  %.lcssa54 = phi i64 [ 0, %.lr.ph.i24.preheader ], [ 1, %.fold.split130 ], [ 2, %.fold.split131 ]
  %i.f = getelementptr [8 x i8], ptr @nlmsg_tcpdiag_perms, i64 %.lcssa54
  br label %nlmsg_perm.exit.sink.split.sink.split

bb.f:                                             ; preds = %bb.a
  %i.g = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @selinux_state, i64 11), align 1, !range !10, !noundef !11
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %nlmsg_perm.exit.sink.split, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.f
  %switch.tableidx = add i16 %1, -16              ; 2 uses
  %i.i = icmp ult i16 %switch.tableidx, 26
  br i1 %i.i, label %switch.lookup, label %nlmsg_perm.exit

switch.lookup:                                    ; preds = %.lr.ph.i28.preheader
  %switch.idx.cast = zext nneg i16 %switch.tableidx to i64
  %i.j = getelementptr [8 x i8], ptr @nlmsg_xfrm_perms, i64 %switch.idx.cast
  br label %nlmsg_perm.exit.sink.split.sink.split

bb.g:                                             ; preds = %bb.a
  %i.k = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @selinux_state, i64 11), align 1, !range !10, !noundef !11
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %nlmsg_perm.exit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = add i16 %1, -1100
  %or.cond = icmp ult i16 %i.m, 100
  %i.n = add i16 %1, -2100
  %or.cond5 = icmp ult i16 %i.n, 900
  %or.cond23 = or i1 %or.cond, %or.cond5
  br i1 %or.cond23, label %nlmsg_perm.exit.sink.split, label %.lr.ph.i32.preheader

.lr.ph.i32.preheader:                             ; preds = %bb.h
  switch i16 %1, label %nlmsg_perm.exit [
    i16 1000, label %bb.i
    i16 1001, label %.fold.split157
    i16 1002, label %.fold.split158
    i16 1003, label %.fold.split159
    i16 1004, label %.fold.split160
    i16 1013, label %.fold.split161
    i16 1011, label %.fold.split162
    i16 1012, label %.fold.split163
    i16 1005, label %.fold.split164
    i16 1010, label %.fold.split165
    i16 1014, label %.fold.split166
    i16 1015, label %.fold.split167
    i16 1016, label %.fold.split168
    i16 1017, label %.fold.split169
    i16 1019, label %.fold.split170
    i16 1018, label %.fold.split171
  ]

.fold.split157:                                   ; preds = %.lr.ph.i32.preheader
  br label %bb.i

.fold.split158:                                   ; preds = %.lr.ph.i32.preheader
  br label %bb.i

.fold.split159:                                   ; preds = %.lr.ph.i32.preheader
  br label %bb.i

.fold.split160:                                   ; preds = %.lr.ph.i32.preheader
  br label %bb.i

.fold.split161:                                   ; preds = %.lr.ph.i32.preheader
  br label %bb.i

.fold.split162:                                   ; preds = %.lr.ph.i32.preheader
  br label %bb.i

.fold.split163:                                   ; preds = %.lr.ph.i32.preheader
  br label %bb.i

.fold.split164:                                   ; preds = %.lr.ph.i32.preheader
  br label %bb.i

.fold.split165:                                   ; preds = %.lr.ph.i32.preheader
  br label %bb.i

.fold.split166:                                   ; preds = %.lr.ph.i32.preheader
  br label %bb.i

.fold.split167:                                   ; preds = %.lr.ph.i32.preheader
  br label %bb.i

.fold.split168:                                   ; preds = %.lr.ph.i32.preheader
  br label %bb.i

.fold.split169:                                   ; preds = %.lr.ph.i32.preheader
  br label %bb.i

.fold.split170:                                   ; preds = %.lr.ph.i32.preheader
  br label %bb.i

.fold.split171:                                   ; preds = %.lr.ph.i32.preheader
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.i32.preheader, %.fold.split171, %.fold.split170, %.fold.split169, %.fold.split168, %.fold.split167, %.fold.split166, %.fold.split165, %.fold.split164, %.fold.split163, %.fold.split162, %.fold.split161, %.fold.split160, %.fold.split159, %.fold.split158, %.fold.split157
  %.lcssa58 = phi i64 [ 0, %.lr.ph.i32.preheader ], [ 14, %.fold.split170 ], [ 1, %.fold.split157 ], [ 2, %.fold.split158 ], [ 3, %.fold.split159 ], [ 4, %.fold.split160 ], [ 5, %.fold.split161 ], [ 6, %.fold.split162 ], [ 7, %.fold.split163 ], [ 8, %.fold.split164 ], [ 9, %.fold.split165 ], [ 10, %.fold.split166 ], [ 11, %.fold.split167 ], [ 12, %.fold.split168 ], [ 13, %.fold.split169 ], [ 15, %.fold.split171 ]
  %i.o = getelementptr [8 x i8], ptr @nlmsg_audit_perms, i64 %.lcssa58
  br label %nlmsg_perm.exit.sink.split.sink.split

nlmsg_perm.exit.sink.split.sink.split:            ; preds = %bb.i, %switch.lookup, %bb.e, %bb.c
  %.sink173 = phi ptr [ %i.c, %bb.c ], [ %i.f, %bb.e ], [ %i.j, %switch.lookup ], [ %i.o, %bb.i ]
  %i.p = getelementptr i8, ptr %.sink173, i64 4
  %i.q = load i32, ptr %i.p, align 4
  br label %nlmsg_perm.exit.sink.split

nlmsg_perm.exit.sink.split:                       ; preds = %nlmsg_perm.exit.sink.split.sink.split, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.sink = phi i32 [ 8388608, %bb.f ], [ 8388608, %bb.d ], [ 8388608, %bb.b ], [ 8388608, %bb.h ], [ 67108864, %bb.g ], [ %i.q, %nlmsg_perm.exit.sink.split.sink.split ]
  store i32 %.sink, ptr %2, align 4
  br label %nlmsg_perm.exit

nlmsg_perm.exit:                                  ; preds = %.lr.ph.i28.preheader, %nlmsg_perm.exit.sink.split, %.lr.ph.i32.preheader, %.lr.ph.i24.preheader, %.lr.ph.i.64, %bb.a
  %.0 = phi i32 [ -22, %.lr.ph.i24.preheader ], [ -22, %.lr.ph.i32.preheader ], [ -2, %bb.a ], [ -22, %.lr.ph.i.64 ], [ -22, %.lr.ph.i28.preheader ], [ 0, %nlmsg_perm.exit.sink.split ]
  ret i32 %.0
}

attributes #0 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: write, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{i8 0, i8 2}
!11 = !{}
end_hunk_0
