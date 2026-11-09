Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/wc_port?download=true
inline.NumInlined: 33
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ReadDirCtx = type { ptr, ptr, %struct.stat, [261 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@wolfCrypt_Init.in_init = internal thread_local unnamed_addr global i32 0, align 4
@wolfcrypt_init_state = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: norecurse nounwind uwtable
define range(i32 -1008, 8) i32 @wc_local_InitUp(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic volatile i32, ptr %0 acquire, align 4 ; 2 uses
  %i.b = lshr i32 %i.a, 3                         ; 2 uses
  %i.c = icmp eq i32 %i.b, 536870911
  br i1 %i.c, label %wolfSSL_Atomic_Uint_CompareExchange.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %wolfSSL_Atomic_Uint_CompareExchange.exit
  %i.d = phi i32 [ %i.n, %wolfSSL_Atomic_Uint_CompareExchange.exit ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.0.01215 = phi i32 [ %i.m, %wolfSSL_Atomic_Uint_CompareExchange.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.e = and i32 %.sroa.0.01215, 7                ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %wolfSSL_Atomic_Uint_CompareExchange.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.g = icmp samesign ugt i32 %i.e, 3
  %i.h = icmp eq i32 %i.d, 0
  %or.cond = or i1 %i.g, %i.h
  br i1 %or.cond, label %wolfSSL_Atomic_Uint_CompareExchange.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %.sroa.0.01215, -8
  %i.j = or disjoint i32 %i.i, 2                  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.1 = phi i32 [ %.sroa.0.01215, %bb.b ], [ %i.j, %bb.d ]
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %1 = and i32 %.sroa.0.0, -8
  %2 = add i32 %1, 8
  %3 = and i32 %.sroa.0.0, 7                      ; 2 uses
  %4 = or disjoint i32 %2, %3
  %i.k = cmpxchg volatile ptr %0, i32 %.sroa.0.1, i32 %4 seq_cst acquire, align 4 ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %wolfSSL_Atomic_Uint_CompareExchange.exit.thread, label %wolfSSL_Atomic_Uint_CompareExchange.exit

wolfSSL_Atomic_Uint_CompareExchange.exit:         ; preds = %bb.e
  %i.m = extractvalue { i32, i1 } %i.k, 0         ; 2 uses
  %i.n = lshr i32 %i.m, 3                         ; 2 uses
  %i.o = icmp eq i32 %i.n, 536870911
  br i1 %i.o, label %wolfSSL_Atomic_Uint_CompareExchange.exit.thread, label %.lr.ph

wolfSSL_Atomic_Uint_CompareExchange.exit.thread:  ; preds = %wolfSSL_Atomic_Uint_CompareExchange.exit, %bb.b, %bb.c, %bb.e, %bb.a
  %.0 = phi i32 [ -1008, %bb.a ], [ %3, %bb.e ], [ -192, %bb.b ], [ -192, %bb.c ], [ -1008, %wolfSSL_Atomic_Uint_CompareExchange.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: norecurse nounwind uwtable
define noundef range(i32 0, 2) i32 @wolfSSL_Atomic_Uint_CompareExchange(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = cmpxchg volatile ptr %0, i32 %i.a, i32 %2 seq_cst acquire, align 4 ; 2 uses
  %i.c = extractvalue { i32, i1 } %i.b, 1         ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i32, i1 } %i.b, 0
  store i32 %i.d, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = zext i1 %i.c to i32
  ret i32 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: norecurse nounwind uwtable
define range(i32 -173, 1) i32 @wc_local_InitUpDone(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic volatile i32, ptr %0 acquire, align 4 ; 2 uses
  %i.b = and i32 %i.a, 7
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, -8
  %i.d = or disjoint i32 %i.c, 2
  store atomic volatile i32 %i.d, ptr %0 release, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: norecurse nounwind uwtable
define range(i32 -1007, 8) i32 @wc_local_InitDown(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic volatile i32, ptr %0 acquire, align 4 ; 2 uses
  %i.b = and i32 %i.a, 7                          ; 2 uses
  %i.c = icmp samesign ugt i32 %i.b, 3
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %wolfSSL_Atomic_Uint_CompareExchange.exit
  %i.d = phi i32 [ %i.m, %wolfSSL_Atomic_Uint_CompareExchange.exit ], [ %i.b, %bb.a ]
  %.sroa.0.01117 = phi i32 [ %i.l, %wolfSSL_Atomic_Uint_CompareExchange.exit ], [ %i.a, %bb.a ] ; 5 uses
  switch i32 %i.d, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %.loopexit
    i32 3, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = icmp eq i32 %.sroa.0.01117, 0
  %. = select i1 %i.e, i32 -1007, i32 -192
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %.mask = and i32 %.sroa.0.01117, -8
  %i.f = icmp eq i32 %.mask, 8
  %.9 = select i1 %i.f, i32 -1007, i32 -192
  br label %.loopexit

default.unreachable:                              ; preds = %.lr.ph
  unreachable

bb.d:                                             ; preds = %.lr.ph
  %i.g = lshr i32 %.sroa.0.01117, 3
  switch i32 %i.g, label %bb.e [
    i32 0, label %.loopexit
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = and i32 %.sroa.0.01117, -8
  %i.i = add i32 %i.h, -6
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0 = phi i32 [ %i.i, %bb.e ], [ 11, %bb.d ] ; 2 uses
  %i.j = cmpxchg volatile ptr %0, i32 %.sroa.0.01117, i32 %.sroa.0.0 seq_cst acquire, align 4 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %bb.g, label %wolfSSL_Atomic_Uint_CompareExchange.exit

wolfSSL_Atomic_Uint_CompareExchange.exit:         ; preds = %bb.f
  %i.l = extractvalue { i32, i1 } %i.j, 0         ; 2 uses
  %i.m = and i32 %i.l, 7                          ; 2 uses
  %i.n = icmp samesign ugt i32 %i.m, 3
  br i1 %i.n, label %.loopexit, label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.o = and i32 %.sroa.0.0, 7
  br label %.loopexit

.loopexit:                                        ; preds = %wolfSSL_Atomic_Uint_CompareExchange.exit, %.lr.ph, %bb.d, %bb.a, %bb.c, %bb.b, %bb.g
  %.0 = phi i32 [ %i.o, %bb.g ], [ %., %bb.b ], [ %.9, %bb.c ], [ -192, %bb.a ], [ -173, %.lr.ph ], [ -192, %wolfSSL_Atomic_Uint_CompareExchange.exit ], [ -192, %bb.d ]
  ret i32 %.0
}

; Function Attrs: norecurse nounwind uwtable
define range(i32 -173, 1) i32 @wc_local_InitDownDone(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic volatile i32, ptr %0 acquire, align 4
  %i.b = and i32 %i.a, 7
  %.not = icmp eq i32 %i.b, 3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store atomic volatile i32 0, ptr %0 release, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @wolfCrypt_Init() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @wolfCrypt_Init.in_init) ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %wc_local_InitUpDone.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic volatile i32, ptr @wolfcrypt_init_state acquire, align 4 ; 2 uses
  %i.d = lshr i32 %i.c, 3                         ; 2 uses
  %i.e = icmp eq i32 %i.d, 536870911
  br i1 %i.e, label %wc_local_InitUpDone.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %wolfSSL_Atomic_Uint_CompareExchange.exit.i
  %i.f = phi i32 [ %i.p, %wolfSSL_Atomic_Uint_CompareExchange.exit.i ], [ %i.d, %bb.b ] ; 2 uses
  %.sroa.0.01215.i = phi i32 [ %i.o, %wolfSSL_Atomic_Uint_CompareExchange.exit.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.g = and i32 %.sroa.0.01215.i, 7              ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.f, label %wc_local_InitUpDone.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.i = icmp samesign ugt i32 %i.g, 3
  %i.j = icmp eq i32 %i.f, 0
  %or.cond.i = or i1 %i.j, %i.i
  br i1 %or.cond.i, label %wc_local_InitUpDone.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = and i32 %.sroa.0.01215.i, -8
  %i.l = or disjoint i32 %i.k, 2                  ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.0.1.i = phi i32 [ %.sroa.0.01215.i, %bb.c ], [ %i.l, %bb.e ]
  %.sroa.0.0.i = phi i32 [ 1, %bb.c ], [ %i.l, %bb.e ] ; 2 uses
  %0 = and i32 %.sroa.0.0.i, -8
  %1 = add i32 %0, 8
  %2 = and i32 %.sroa.0.0.i, 7                    ; 2 uses
  %3 = or disjoint i32 %1, %2
  %i.m = cmpxchg volatile ptr @wolfcrypt_init_state, i32 %.sroa.0.1.i, i32 %3 seq_cst acquire, align 4 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %wc_local_InitUp.exit, label %wolfSSL_Atomic_Uint_CompareExchange.exit.i

wolfSSL_Atomic_Uint_CompareExchange.exit.i:       ; preds = %bb.f
  %i.o = extractvalue { i32, i1 } %i.m, 0         ; 2 uses
  %i.p = lshr i32 %i.o, 3                         ; 2 uses
  %i.q = icmp eq i32 %i.p, 536870911
  br i1 %i.q, label %wc_local_InitUpDone.exit, label %.lr.ph.i

wc_local_InitUp.exit:                             ; preds = %bb.f
  %i.r = icmp eq i32 %2, 2
  br i1 %i.r, label %wc_local_InitUpDone.exit, label %bb.g

bb.g:                                             ; preds = %wc_local_InitUp.exit
  store i32 1, ptr %i.a, align 4, !tbaa !9
  %i.s = tail call i32 @wc_DrbgState_MutexInit() #18 ; 2 uses
  %.not11 = icmp eq i32 %i.s, 0
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.t = load atomic volatile i32, ptr @wolfcrypt_init_state acquire, align 4 ; 2 uses
  br i1 %.not11, label %bb.h, label %wc_local_InitUpDone.exit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.u = and i32 %i.t, 7
  %.not.i12 = icmp eq i32 %i.u, 1
  br i1 %.not.i12, label %wc_local_InitUpDone.exit.sink.split, label %wc_local_InitUpDone.exit

wc_local_InitUpDone.exit.sink.split:              ; preds = %bb.h, %bb.g
  %.sink20 = phi i32 [ 4, %bb.g ], [ 2, %bb.h ]
  %.0.ph = phi i32 [ %i.s, %bb.g ], [ 0, %bb.h ]
  %i.v = and i32 %i.t, -8
  %i.w = or disjoint i32 %i.v, %.sink20
  store atomic volatile i32 %i.w, ptr @wolfcrypt_init_state release, align 4
  br label %wc_local_InitUpDone.exit

wc_local_InitUpDone.exit:                         ; preds = %wolfSSL_Atomic_Uint_CompareExchange.exit.i, %bb.d, %bb.c, %wc_local_InitUpDone.exit.sink.split, %bb.b, %bb.h, %wc_local_InitUp.exit, %bb.a
  %.0 = phi i32 [ 0, %wc_local_InitUp.exit ], [ -1000, %bb.a ], [ -173, %bb.h ], [ -1008, %bb.b ], [ %.0.ph, %wc_local_InitUpDone.exit.sink.split ], [ -192, %bb.d ], [ -1008, %wolfSSL_Atomic_Uint_CompareExchange.exit.i ], [ -192, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #3

declare i32 @wc_DrbgState_MutexInit() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -1007, 1) i32 @wolfCrypt_Cleanup() local_unnamed_addr #2 {
bb.a:
  %i.a = load atomic volatile i32, ptr @wolfcrypt_init_state acquire, align 4 ; 2 uses
  %i.b = and i32 %i.a, 7                          ; 2 uses
  %i.c = icmp samesign ugt i32 %i.b, 3
  br i1 %i.c, label %wc_local_InitDownDone.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %wolfSSL_Atomic_Uint_CompareExchange.exit.i
  %i.d = phi i32 [ %i.m, %wolfSSL_Atomic_Uint_CompareExchange.exit.i ], [ %i.b, %bb.a ]
  %.sroa.0.01117.i = phi i32 [ %i.l, %wolfSSL_Atomic_Uint_CompareExchange.exit.i ], [ %i.a, %bb.a ] ; 5 uses
  switch i32 %i.d, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %wc_local_InitDownDone.exit
    i32 3, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq i32 %.sroa.0.01117.i, 0
  %..i = select i1 %i.e, i32 -1007, i32 -192
  br label %wc_local_InitDownDone.exit

bb.c:                                             ; preds = %.lr.ph.i
  %.mask.i = and i32 %.sroa.0.01117.i, -8
  %i.f = icmp eq i32 %.mask.i, 8
  %.9.i = select i1 %i.f, i32 -1007, i32 -192
  br label %wc_local_InitDownDone.exit

default.unreachable:                              ; preds = %.lr.ph.i
  unreachable

bb.d:                                             ; preds = %.lr.ph.i
  %i.g = lshr i32 %.sroa.0.01117.i, 3
  switch i32 %i.g, label %bb.e [
    i32 0, label %wc_local_InitDownDone.exit
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = and i32 %.sroa.0.01117.i, -8
  %i.i = add i32 %i.h, -6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = phi i32 [ %i.i, %bb.e ], [ 11, %bb.d ] ; 2 uses
  %i.j = cmpxchg volatile ptr @wolfcrypt_init_state, i32 %.sroa.0.01117.i, i32 %.sroa.0.0.i seq_cst acquire, align 4 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %wc_local_InitDown.exit, label %wolfSSL_Atomic_Uint_CompareExchange.exit.i

wolfSSL_Atomic_Uint_CompareExchange.exit.i:       ; preds = %bb.f
  %i.l = extractvalue { i32, i1 } %i.j, 0         ; 2 uses
  %i.m = and i32 %i.l, 7                          ; 2 uses
  %i.n = icmp samesign ugt i32 %i.m, 3
  br i1 %i.n, label %wc_local_InitDownDone.exit, label %.lr.ph.i

wc_local_InitDown.exit:                           ; preds = %bb.f
  %i.o = and i32 %.sroa.0.0.i, 7
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %wc_local_InitDownDone.exit, label %bb.g

bb.g:                                             ; preds = %wc_local_InitDown.exit
  %i.q = tail call i32 @wc_DrbgState_MutexFree() #18 ; 0 uses
  %i.r = load atomic volatile i32, ptr @wolfcrypt_init_state acquire, align 4
  %i.s = and i32 %i.r, 7
  %.not.i = icmp eq i32 %i.s, 3
  br i1 %.not.i, label %bb.h, label %wc_local_InitDownDone.exit

bb.h:                                             ; preds = %bb.g
  store atomic volatile i32 0, ptr @wolfcrypt_init_state release, align 4
  br label %wc_local_InitDownDone.exit

wc_local_InitDownDone.exit:                       ; preds = %bb.d, %wolfSSL_Atomic_Uint_CompareExchange.exit.i, %.lr.ph.i, %bb.a, %bb.c, %bb.b, %bb.h, %bb.g, %wc_local_InitDown.exit
  %.09 = phi i32 [ 0, %wc_local_InitDown.exit ], [ %..i, %bb.b ], [ -173, %bb.g ], [ 0, %bb.h ], [ %.9.i, %bb.c ], [ -192, %bb.a ], [ -173, %.lr.ph.i ], [ -192, %wolfSSL_Atomic_Uint_CompareExchange.exit.i ], [ -192, %bb.d ]
  ret i32 %.09
}

declare i32 @wc_DrbgState_MutexFree() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -244, 1) i32 @wc_FileLoad(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !12
  store i64 0, ptr %2, align 8, !tbaa !14
  %i.d = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str) ; 6 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @fseek(ptr noundef nonnull %i.d, i64 noundef 0, i32 noundef 2)
  %.not37 = icmp eq i32 %i.e, 0
  br i1 %.not37, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @ftell(ptr noundef nonnull %i.d) ; 4 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @fseek(ptr noundef nonnull %i.d, i64 noundef 0, i32 noundef 0)
  %.not38 = icmp eq i32 %i.h, 0
  br i1 %.not38, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %.not39 = icmp eq i64 %i.f, 0
  br i1 %.not39, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.f, ptr %2, align 8, !tbaa !14
  %i.i = tail call ptr @wolfSSL_Malloc(i64 noundef %i.f) #18 ; 3 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !12
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load i64, ptr %2, align 8, !tbaa !14
  %i.l = tail call i64 @fread(ptr noundef nonnull %i.i, i64 noundef 1, i64 noundef %i.k, ptr noundef nonnull %i.d)
  %i.m = load i64, ptr %2, align 8, !tbaa !14
  %i.n = icmp ne i64 %i.l, %i.m
  %i.o = sext i1 %i.n to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.ph = phi i32 [ -244, %bb.e ], [ -244, %bb.d ], [ -244, %bb.c ], [ -125, %bb.g ], [ %i.o, %bb.h ], [ -132, %bb.f ]
  %i.p = tail call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ -244, %bb.b ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @wolfSSL_Malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define range(i32 -244, 1) i32 @wc_FileExists(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.ReadDirCtx, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %1, i8 0, i64 424, i1 false)
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20
  %i.f = and i32 %i.e, 61440
  %i.g = icmp ne i32 %i.f, 32768
  %. = sext i1 %i.g to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -244, %bb.b ], [ 0, %bb.a ], [ %., %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

end_hunk_0
