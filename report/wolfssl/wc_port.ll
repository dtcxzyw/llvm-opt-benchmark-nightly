Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/wc_port?download=true
inline.NumInlined: 33
begin_hunk_0_@wc_local_InitUp:bb.a
  br i1 %i.p, label %wolfSSL_Atomic_Uint_CompareExchange.exit.thread, label %wolfSSL_Atomic_Uint_CompareExchange.exit

wolfSSL_Atomic_Uint_CompareExchange.exit:         ; preds = %bb.e
  %i.q = extractvalue { i32, i1 } %i.o, 0         ; 2 uses
  %i.r = lshr i32 %i.q, 3                         ; 2 uses
  %i.s = icmp eq i32 %i.r, 536870911
  br i1 %i.s, label %wolfSSL_Atomic_Uint_CompareExchange.exit.thread, label %.lr.ph

wolfSSL_Atomic_Uint_CompareExchange.exit.thread:  ; preds = %wolfSSL_Atomic_Uint_CompareExchange.exit, %bb.b, %bb.c, %bb.e, %bb.a
  %.0 = phi i32 [ -1008, %bb.a ], [ %i.m, %bb.e ], [ -192, %bb.b ], [ -192, %bb.c ], [ -1008, %wolfSSL_Atomic_Uint_CompareExchange.exit ]
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
  %i.f = phi i32 [ %i.t, %wolfSSL_Atomic_Uint_CompareExchange.exit.i ], [ %i.d, %bb.b ] ; 2 uses
  %.sroa.0.01215.i = phi i32 [ %i.s, %wolfSSL_Atomic_Uint_CompareExchange.exit.i ], [ %i.c, %bb.b ] ; 3 uses
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
  %i.m = and i32 %.sroa.0.0.i, -8
  %i.n = add i32 %i.m, 8
  %i.o = and i32 %.sroa.0.0.i, 7                  ; 2 uses
  %i.p = or disjoint i32 %i.n, %i.o
  %i.q = cmpxchg volatile ptr @wolfcrypt_init_state, i32 %.sroa.0.1.i, i32 %i.p seq_cst acquire, align 4 ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %wc_local_InitUp.exit, label %wolfSSL_Atomic_Uint_CompareExchange.exit.i

wolfSSL_Atomic_Uint_CompareExchange.exit.i:       ; preds = %bb.f
  %i.s = extractvalue { i32, i1 } %i.q, 0         ; 2 uses
  %i.t = lshr i32 %i.s, 3                         ; 2 uses
  %i.u = icmp eq i32 %i.t, 536870911
  br i1 %i.u, label %wc_local_InitUpDone.exit, label %.lr.ph.i

wc_local_InitUp.exit:                             ; preds = %bb.f
  %i.v = icmp eq i32 %i.o, 2
  br i1 %i.v, label %wc_local_InitUpDone.exit, label %bb.g

bb.g:                                             ; preds = %wc_local_InitUp.exit
  store i32 1, ptr %i.a, align 4, !tbaa !9
  %i.w = tail call i32 @wc_DrbgState_MutexInit() #18 ; 2 uses
  %.not11 = icmp eq i32 %i.w, 0
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.x = load atomic volatile i32, ptr @wolfcrypt_init_state acquire, align 4 ; 2 uses
  br i1 %.not11, label %bb.h, label %wc_local_InitUpDone.exit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.y = and i32 %i.x, 7
  %.not.i12 = icmp eq i32 %i.y, 1
  br i1 %.not.i12, label %wc_local_InitUpDone.exit.sink.split, label %wc_local_InitUpDone.exit

wc_local_InitUpDone.exit.sink.split:              ; preds = %bb.h, %bb.g
  %.sink20 = phi i32 [ 4, %bb.g ], [ 2, %bb.h ]
  %.0.ph = phi i32 [ %i.w, %bb.g ], [ 0, %bb.h ]
  %i.z = and i32 %i.x, -8
  %i.aa = or disjoint i32 %i.z, %.sink20
  store atomic volatile i32 %i.aa, ptr @wolfcrypt_init_state release, align 4
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

; Function Attrs: nounwind uwtable
define range(i32 -244, 1) i32 @wc_ReadDirFirst(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.ReadDirCtx, align 8         ; 10 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not44 = icmp eq ptr %0, null
  br i1 %.not44, label %wc_ReadDirClose.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %0, i8 0, i64 424, i1 false)
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %wc_ReadDirClose.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = tail call noalias ptr @opendir(ptr noundef nonnull %1) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !21
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %wc_ReadDirClose.exit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.g = tail call ptr @readdir(ptr noundef nonnull %i.d) #18 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !22
  %.not4563 = icmp eq ptr %i.g, null
  br i1 %.not4563, label %.thread59, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %sext = shl i64 %i.b, 32
  %i.i = ashr exact i64 %sext, 32                 ; 2 uses
  %i.j = add nsw i64 %i.i, 1                      ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %i.o = phi ptr [ %i.v, %bb.f ], [ %i.g, %.lr.ph ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 19
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #19 ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = add nsw i32 %i.r, %i.c
  %i.t = icmp sgt i32 %i.s, 258
  br i1 %i.t, label %.thread59, label %bb.g

bb.f:                                             ; preds = %.thread, %bb.h
  %.1.us80 = phi i32 [ -244, %.thread ], [ -1, %bb.h ]
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.v = tail call ptr @readdir(ptr noundef %i.u) #18 ; 3 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !22
  %.not45.us = icmp eq ptr %i.v, null
  br i1 %.not45.us, label %.thread59, label %.lr.ph.split.us

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.w = tail call ptr @strncpy(ptr noundef nonnull %i.h, ptr noundef nonnull %1, i64 noundef %i.j) #18 ; 0 uses
  store i8 47, ptr %i.k, align 1, !tbaa !23
  %i.x = load ptr, ptr %0, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 19
  %sext46.us = shl i64 %i.q, 32
  %i.z = ashr exact i64 %sext46.us, 32
  %i.aa = add nsw i64 %i.z, 1
  %i.ab = tail call ptr @strncpy(ptr noundef nonnull %i.l, ptr noundef nonnull %i.y, i64 noundef %i.aa) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %3, i8 0, i64 424, i1 false)
  %i.ac = call i32 @stat(ptr noundef nonnull readonly %i.h, ptr noundef nonnull %i.m) #18
  %.not.i.us = icmp eq i32 %i.ac, 0
  br i1 %.not.i.us, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !20
  %i.ae = and i32 %i.ad, 61440
  %.not84 = icmp eq i32 %i.ae, 32768
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %.not84, label %wc_ReadDirClose.exit, label %bb.f

bb.i:                                             ; preds = %wc_FileExists.exit, %wc_FileExists.exit.thread
  %.1 = phi i32 [ -1, %wc_FileExists.exit ], [ -244, %wc_FileExists.exit.thread ]
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.ag = tail call ptr @readdir(ptr noundef %i.af) #18 ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !22
  %.not45 = icmp eq ptr %i.ag, null
  br i1 %.not45, label %.thread59, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %i.ah = phi ptr [ %i.ag, %bb.i ], [ %i.g, %.lr.ph ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 19
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #19 ; 2 uses
  %i.ak = trunc i64 %i.aj to i32
  %i.al = add nsw i32 %i.ak, %i.c
  %i.am = icmp sgt i32 %i.al, 258
  br i1 %i.am, label %.thread59, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split
  %i.an = tail call ptr @strncpy(ptr noundef nonnull %i.h, ptr noundef nonnull %1, i64 noundef %i.j) #18 ; 0 uses
  store i8 47, ptr %i.k, align 1, !tbaa !23
  %i.ao = load ptr, ptr %0, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 19
  %sext46 = shl i64 %i.aj, 32
  %i.aq = ashr exact i64 %sext46, 32
  %i.ar = add nsw i64 %i.aq, 1
  %i.as = tail call ptr @strncpy(ptr noundef nonnull %i.l, ptr noundef nonnull %i.ap, i64 noundef %i.ar) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %3, i8 0, i64 424, i1 false)
  %i.at = call i32 @stat(ptr noundef nonnull readonly %i.h, ptr noundef nonnull %i.m) #18
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %wc_FileExists.exit, label %wc_FileExists.exit.thread

wc_FileExists.exit.thread:                        ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.i

wc_FileExists.exit:                               ; preds = %bb.j
  %i.au = load i32, ptr %i.n, align 8, !tbaa !20
  %i.av = and i32 %i.au, 61440
  %.not83 = icmp eq i32 %i.av, 32768
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %.not83, label %.thread56, label %bb.i

.thread56:                                        ; preds = %wc_FileExists.exit
  store ptr %i.h, ptr %2, align 8, !tbaa !12
  br label %wc_ReadDirClose.exit

.thread59:                                        ; preds = %bb.i, %.lr.ph.split, %bb.f, %.lr.ph.split.us, %.preheader
  %.2 = phi i32 [ -1, %.preheader ], [ -244, %.lr.ph.split.us ], [ %.1.us80, %bb.f ], [ -244, %.lr.ph.split ], [ %.1, %bb.i ] ; 2 uses
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %.not.i49 = icmp eq ptr %i.aw, null
  br i1 %.not.i49, label %wc_ReadDirClose.exit, label %bb.k

bb.k:                                             ; preds = %.thread59
  %i.ax = tail call i32 @closedir(ptr noundef nonnull %i.aw) ; 0 uses
  store ptr null, ptr %i.e, align 8, !tbaa !21
  br label %wc_ReadDirClose.exit

wc_ReadDirClose.exit:                             ; preds = %bb.h, %bb.c, %bb.k, %.thread59, %.thread56, %bb.e, %bb.d
  %.235 = phi i32 [ 0, %.thread56 ], [ -173, %bb.d ], [ -173, %bb.c ], [ -244, %bb.e ], [ %.2, %bb.k ], [ %.2, %.thread59 ], [ 0, %bb.h ]
  ret i32 %.235
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #5

declare ptr @readdir(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define void @wc_ReadDirClose(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @closedir(ptr noundef nonnull %i.c) ; 0 uses
  store ptr null, ptr %i.b, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -244, 1) i32 @wc_ReadDirNext(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.ReadDirCtx, align 8         ; 10 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %wc_ReadDirClose.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(261) %i.c, i8 0, i64 261, i1 false)
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = tail call ptr @readdir(ptr noundef %i.g) #18 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !22
  %.not3956 = icmp eq ptr %i.h, null
  br i1 %.not3956, label %.thread51, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %sext = shl i64 %i.d, 32
  %i.i = ashr exact i64 %sext, 32                 ; 2 uses
  %i.j = add nsw i64 %i.i, 1                      ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 %i.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %i.o = phi ptr [ %i.v, %bb.e ], [ %i.h, %.lr.ph ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 19
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #19 ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = add nsw i32 %i.r, %i.e
  %i.t = icmp sgt i32 %i.s, 258
  br i1 %i.t, label %.thread51, label %bb.f

bb.e:                                             ; preds = %.thread70, %bb.g
  %.1.us73 = phi i32 [ -244, %.thread70 ], [ -1, %bb.g ]
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.v = tail call ptr @readdir(ptr noundef %i.u) #18 ; 3 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !22
  %.not39.us = icmp eq ptr %i.v, null
  br i1 %.not39.us, label %.thread51, label %.lr.ph.split.us

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.w = tail call ptr @strncpy(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i64 noundef %i.j) #18 ; 0 uses
  store i8 47, ptr %i.k, align 1, !tbaa !23
  %i.x = load ptr, ptr %0, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 19
  %sext40.us = shl i64 %i.q, 32
  %i.z = ashr exact i64 %sext40.us, 32
  %i.aa = add nsw i64 %i.z, 1
  %i.ab = tail call ptr @strncpy(ptr noundef nonnull %i.l, ptr noundef nonnull %i.y, i64 noundef %i.aa) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %3, i8 0, i64 424, i1 false)
  %i.ac = call i32 @stat(ptr noundef nonnull readonly %i.c, ptr noundef nonnull %i.m) #18
  %.not.i.us = icmp eq i32 %i.ac, 0
  br i1 %.not.i.us, label %bb.g, label %.thread70

.thread70:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !20
  %i.ae = and i32 %i.ad, 61440
  %.not77 = icmp eq i32 %i.ae, 32768
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %.not77, label %wc_ReadDirClose.exit, label %bb.e

bb.h:                                             ; preds = %wc_FileExists.exit, %wc_FileExists.exit.thread
  %.1 = phi i32 [ -1, %wc_FileExists.exit ], [ -244, %wc_FileExists.exit.thread ]
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.ag = tail call ptr @readdir(ptr noundef %i.af) #18 ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !22
  %.not39 = icmp eq ptr %i.ag, null
  br i1 %.not39, label %.thread51, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %i.ah = phi ptr [ %i.ag, %bb.h ], [ %i.h, %.lr.ph ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 19
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #19 ; 2 uses
  %i.ak = trunc i64 %i.aj to i32
  %i.al = add nsw i32 %i.ak, %i.e
  %i.am = icmp sgt i32 %i.al, 258
  br i1 %i.am, label %.thread51, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.an = tail call ptr @strncpy(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i64 noundef %i.j) #18 ; 0 uses
  store i8 47, ptr %i.k, align 1, !tbaa !23
  %i.ao = load ptr, ptr %0, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 19
  %sext40 = shl i64 %i.aj, 32
  %i.aq = ashr exact i64 %sext40, 32
  %i.ar = add nsw i64 %i.aq, 1
  %i.as = tail call ptr @strncpy(ptr noundef nonnull %i.l, ptr noundef nonnull %i.ap, i64 noundef %i.ar) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %3, i8 0, i64 424, i1 false)
  %i.at = call i32 @stat(ptr noundef nonnull readonly %i.c, ptr noundef nonnull %i.m) #18
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %wc_FileExists.exit, label %wc_FileExists.exit.thread

wc_FileExists.exit.thread:                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.h

wc_FileExists.exit:                               ; preds = %bb.i
  %i.au = load i32, ptr %i.n, align 8, !tbaa !20
  %i.av = and i32 %i.au, 61440
  %.not76 = icmp eq i32 %i.av, 32768
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %.not76, label %.thread, label %bb.h

.thread:                                          ; preds = %wc_FileExists.exit
  store ptr %i.c, ptr %2, align 8, !tbaa !12
  br label %wc_ReadDirClose.exit

.thread51:                                        ; preds = %bb.h, %.lr.ph.split, %bb.e, %.lr.ph.split.us, %bb.d
  %.2 = phi i32 [ -1, %bb.d ], [ -244, %.lr.ph.split.us ], [ %.1.us73, %bb.e ], [ -244, %.lr.ph.split ], [ %.1, %bb.h ] ; 2 uses
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !21  ; 2 uses
  %.not.i43 = icmp eq ptr %i.aw, null
  br i1 %.not.i43, label %wc_ReadDirClose.exit, label %bb.j

bb.j:                                             ; preds = %.thread51
  %i.ax = tail call i32 @closedir(ptr noundef nonnull %i.aw) ; 0 uses
  store ptr null, ptr %i.f, align 8, !tbaa !21
  br label %wc_ReadDirClose.exit

wc_ReadDirClose.exit:                             ; preds = %bb.g, %bb.j, %.thread51, %.thread, %bb.c
  %.231 = phi i32 [ 0, %.thread ], [ %.2, %bb.j ], [ -173, %bb.c ], [ %.2, %.thread51 ], [ 0, %bb.g ]
  ret i32 %.231
}

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @wc_InitAndAllocMutex() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 40) #18 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.a, ptr noundef null) #18
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.a) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -106, 1) i32 @wc_InitMutex(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_init(ptr noundef %0, ptr noundef null) #18
  %i.b = icmp eq i32 %i.a, 0
  %. = select i1 %i.b, i32 0, i32 -106
  ret i32 %.
}

declare void @wolfSSL_Free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @wc_strtok(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne ptr %2, null                     ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.047 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 5 uses
  %i.d = icmp eq ptr %.047, null
  br i1 %i.d, label %.thread58, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %.047, align 1, !tbaa !23   ; 3 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.thread58, label %.preheader62.lr.ph

.preheader62.lr.ph:                               ; preds = %bb.d
  %i.g = load i8, ptr %1, align 1, !tbaa !23      ; 2 uses
  %.not5368 = icmp eq i8 %i.g, 0
  br i1 %.not5368, label %.preheader.preheader, label %.preheader62

.preheader62:                                     ; preds = %.preheader62.lr.ph, %bb.g
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %bb.g ], [ 0, %.preheader62.lr.ph ] ; 2 uses
  %i.h = phi i8 [ %i.p, %bb.g ], [ %i.e, %.preheader62.lr.ph ] ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.j = load i8, ptr %i.i, align 1, !tbaa !23    ; 2 uses
  %.not53 = icmp eq i8 %i.j, 0
  br i1 %.not53, label %..preheader61_crit_edge, label %bb.f, !llvm.loop !27

..preheader61_crit_edge:                          ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.047, i64 %indvars.iv84
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %..preheader61_crit_edge, %.preheader62.lr.ph
  %i.l = phi i8 [ %i.h, %..preheader61_crit_edge ], [ %i.e, %.preheader62.lr.ph ]
  %.lcssa67 = phi ptr [ %i.k, %..preheader61_crit_edge ], [ %.047, %.preheader62.lr.ph ] ; 5 uses
  br label %.preheader

bb.f:                                             ; preds = %.preheader62, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader62 ], [ %indvars.iv.next, %bb.e ]
  %i.m = phi i8 [ %i.g, %.preheader62 ], [ %i.j, %bb.e ]
  %i.n = icmp eq i8 %i.m, %i.h
  br i1 %i.n, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.047, i64 %indvars.iv.next85
  %i.p = load i8, ptr %i.o, align 1, !tbaa !23    ; 2 uses
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %.thread58, label %.preheader62, !llvm.loop !28

bb.h:                                             ; preds = %bb.j
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.lcssa67, i64 %indvars.iv.next90
  %i.r = load i8, ptr %i.q, align 1, !tbaa !23    ; 2 uses
  %.not55 = icmp eq i8 %i.r, 0
  br i1 %.not55, label %.thread59.loopexit, label %.preheader, !llvm.loop !29

.preheader:                                       ; preds = %.preheader.preheader, %bb.h
  %indvars.iv89 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next90, %bb.h ] ; 2 uses
  %i.s = phi i8 [ %i.l, %.preheader.preheader ], [ %i.r, %bb.h ]
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %bb.i ], [ 0, %.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv86
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23    ; 2 uses
  %.not56 = icmp eq i8 %i.u, 0
  %i.v = icmp eq i8 %i.u, %i.s                    ; 2 uses
  %or.cond60 = or i1 %.not56, %i.v
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br i1 %or.cond60, label %bb.j, label %bb.i, !llvm.loop !30

bb.j:                                             ; preds = %bb.i
  br i1 %i.v, label %bb.k, label %bb.h

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa67, i64 %indvars.iv89 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !23
  br label %.thread59

.thread59.loopexit:                               ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.lcssa67, i64 %indvars.iv.next90
  br label %.thread59

.thread59:                                        ; preds = %.thread59.loopexit, %bb.k
  %.148 = phi ptr [ %i.x, %bb.k ], [ %i.y, %.thread59.loopexit ]
  br i1 %i.b, label %bb.l, label %.thread58

bb.l:                                             ; preds = %.thread59
  store ptr %.148, ptr %2, align 8, !tbaa !12
  br label %.thread58

.thread58:                                        ; preds = %bb.g, %.thread59, %bb.l, %bb.c, %bb.d
  %.046 = phi ptr [ %.lcssa67, %.thread59 ], [ null, %bb.c ], [ null, %bb.d ], [ %.lcssa67, %bb.l ], [ null, %bb.g ]
  ret ptr %.046
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @wc_strsep(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !12     ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %.preheader24

.preheader24:                                     ; preds = %bb.b
  %i.d = load i8, ptr %i.b, align 1, !tbaa !23    ; 2 uses
  %.not28 = icmp eq i8 %i.d, 0
  br i1 %.not28, label %.sink.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader24
  %i.e = load i8, ptr %1, align 1, !tbaa !23      ; 2 uses
  %.not2326 = icmp eq i8 %i.e, 0
  br i1 %.not2326, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.f = phi i8 [ %i.m, %._crit_edge ], [ %i.d, %.preheader.lr.ph ]
  %.01829 = phi ptr [ %i.l, %._crit_edge ], [ %i.b, %.preheader.lr.ph ] ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.027, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !23    ; 2 uses
  %.not23 = icmp eq i8 %i.h, 0
  br i1 %.not23, label %._crit_edge, label %bb.d, !llvm.loop !31

bb.d:                                             ; preds = %.preheader, %bb.c
  %i.i = phi i8 [ %i.e, %.preheader ], [ %i.h, %bb.c ]
  %.027 = phi ptr [ %1, %.preheader ], [ %i.g, %bb.c ]
  %i.j = icmp eq i8 %i.f, %i.i
  br i1 %i.j, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %.01829, align 1, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %.01829, i64 1
  br label %.sink.split

._crit_edge:                                      ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.01829, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !23    ; 2 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %.sink.split, label %.preheader, !llvm.loop !32

.sink.split:                                      ; preds = %._crit_edge, %.preheader24, %.preheader.lr.ph, %bb.e
  %.sink = phi ptr [ %i.k, %bb.e ], [ null, %.preheader24 ], [ null, %.preheader.lr.ph ], [ null, %._crit_edge ]
  store ptr %.sink, ptr %0, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a, %bb.b
  %.019 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.b, %.sink.split ]
  ret ptr %.019
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i64 @wc_strlcpy(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = add i64 %2, -1                           ; 3 uses
  %.not21 = icmp eq i64 %i.a, 0
  br i1 %.not21, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.016 = phi i64 [ %i.e, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %.01015 = phi ptr [ %i.c, %bb.b ], [ %1, %.preheader ] ; 2 uses
  %.01114 = phi ptr [ %i.d, %bb.b ], [ %0, %.preheader ] ; 3 uses
  %i.b = load i8, ptr %.01015, align 1, !tbaa !23 ; 2 uses
  %.not13 = icmp eq i8 %i.b, 0
  br i1 %.not13, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.01015, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %.01114, i64 1 ; 2 uses
  store i8 %i.b, ptr %.01114, align 1, !tbaa !23
  %i.e = add nuw i64 %.016, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.e, %i.a
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !0

.critedge:                                        ; preds = %.lr.ph, %bb.b, %.preheader
  %.011.lcssa = phi ptr [ %0, %.preheader ], [ %i.d, %bb.b ], [ %.01114, %.lr.ph ]
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.a, %bb.b ], [ %.016, %.lr.ph ]
  store i8 0, ptr %.011.lcssa, align 1, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.critedge
  %.09 = phi i64 [ %.0.lcssa, %.critedge ], [ 0, %bb.a ]
  ret i64 %.09
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i64 @wc_strlcat(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19 ; 6 uses
  %i.b = icmp ult i64 %2, %i.a
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %i.d = add i64 %i.c, %i.a
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %2, %i.a
  br i1 %.not.i, label %wc_strlcpy.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 2 uses
  %i.f = xor i64 %i.a, -1
  %i.g = add i64 %2, %i.f                         ; 3 uses
  %.not21.i = icmp eq i64 %i.g, 0
  br i1 %.not21.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %.016.i = phi i64 [ %i.k, %bb.e ], [ 0, %.preheader.i ] ; 2 uses
  %.01015.i = phi ptr [ %i.i, %bb.e ], [ %1, %.preheader.i ] ; 2 uses
  %.01114.i = phi ptr [ %i.j, %bb.e ], [ %i.e, %.preheader.i ] ; 3 uses
  %i.h = load i8, ptr %.01015.i, align 1, !tbaa !23 ; 2 uses
  %.not13.i = icmp eq i8 %i.h, 0
  br i1 %.not13.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.01015.i, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %.01114.i, i64 1 ; 2 uses
  store i8 %i.h, ptr %.01114.i, align 1, !tbaa !23
  %i.k = add nuw i64 %.016.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %i.g
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %.preheader.i
  %.011.lcssa.i = phi ptr [ %i.e, %.preheader.i ], [ %.01114.i, %.lr.ph.i ], [ %i.j, %bb.e ]
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.016.i, %.lr.ph.i ], [ %i.g, %bb.e ]
  store i8 0, ptr %.011.lcssa.i, align 1, !tbaa !23
  br label %wc_strlcpy.exit

wc_strlcpy.exit:                                  ; preds = %bb.d, %.critedge.i
  %.09.i = phi i64 [ %.0.lcssa.i, %.critedge.i ], [ 0, %bb.d ]
  %i.l = add i64 %.09.i, %i.a
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %wc_strlcpy.exit, %bb.c
  %.0 = phi i64 [ %i.d, %bb.c ], [ %i.l, %wc_strlcpy.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define ptr @wc_strdup_ex(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %i.b = add i64 %i.a, 1
  %i.c = and i64 %i.b, 4294967295                 ; 2 uses
  %i.d = tail call ptr @wolfSSL_Malloc(i64 noundef %i.c) #18 ; 3 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %0, i64 %i.c, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @wolfSSL_Atomic_Int_Init(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  store volatile i32 %1, ptr %0, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @wolfSSL_Atomic_Uint_Init(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  store volatile i32 %1, ptr %0, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define i32 @wolfSSL_Atomic_Int_FetchAdd(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = atomicrmw volatile add ptr %0, i32 %1 monotonic, align 4
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define i32 @wolfSSL_Atomic_Int_FetchSub(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = atomicrmw volatile sub ptr %0, i32 %1 monotonic, align 4
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define i32 @wolfSSL_Atomic_Int_AddFetch(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = atomicrmw volatile add ptr %0, i32 %1 monotonic, align 4
  %i.b = add i32 %i.a, %1
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define i32 @wolfSSL_Atomic_Int_SubFetch(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = atomicrmw volatile sub ptr %0, i32 %1 monotonic, align 4
  %i.b = sub i32 %i.a, %1
  ret i32 %i.b
}

; Function Attrs: norecurse nounwind uwtable
define i32 @wolfSSL_Atomic_Int_Exchange(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw volatile xchg ptr %0, i32 %1 seq_cst, align 4
  ret i32 %i.a
}

; Function Attrs: norecurse nounwind uwtable
define noundef range(i32 0, 2) i32 @wolfSSL_Atomic_Int_CompareExchange(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define i32 @wolfSSL_Atomic_Uint_FetchAdd(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = atomicrmw volatile add ptr %0, i32 %1 monotonic, align 4
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define i32 @wolfSSL_Atomic_Uint_FetchSub(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = atomicrmw volatile sub ptr %0, i32 %1 monotonic, align 4
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define i32 @wolfSSL_Atomic_Uint_AddFetch(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = atomicrmw volatile add ptr %0, i32 %1 monotonic, align 4
  %i.b = add i32 %i.a, %1
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define i32 @wolfSSL_Atomic_Uint_SubFetch(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = atomicrmw volatile sub ptr %0, i32 %1 monotonic, align 4
  %i.b = sub i32 %i.a, %1
  ret i32 %i.b
}

; Function Attrs: norecurse nounwind uwtable
define noundef range(i32 0, 2) i32 @wolfSSL_Atomic_Ptr_CompareExchange(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = cmpxchg volatile ptr %0, ptr %i.a, ptr %2 seq_cst acquire, align 8 ; 2 uses
  %i.c = extractvalue { ptr, i1 } %i.b, 1         ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i1 } %i.b, 0
  store ptr %i.d, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = zext i1 %i.c to i32
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define void @wolfSSL_RefWithMutexInit(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_init(ptr noundef %0, ptr noundef null) #18
  %i.b = icmp eq i32 %i.a, 0
  %..i = select i1 %i.b, i32 0, i32 -106
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.c, align 8, !tbaa !26
  store i32 %..i, ptr %1, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define void @wolfSSL_RefWithMutexFree(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_destroy(ptr noundef %0) #18 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.b, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -106, 1) i32 @wc_FreeMutex(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_destroy(ptr noundef %0) #18
  %i.b = icmp eq i32 %i.a, 0
  %. = select i1 %i.b, i32 0, i32 -106
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define void @wolfSSL_RefWithMutexInc(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef %0) #18
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !26
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef %0) #18 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %..i = phi i32 [ -106, %bb.a ], [ 0, %bb.b ]
  store i32 %..i, ptr %1, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -106, 1) i32 @wc_LockMutex(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef %0) #18
  %i.b = icmp eq i32 %i.a, 0
  %. = select i1 %i.b, i32 0, i32 -106
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define range(i32 -106, 1) i32 @wc_UnLockMutex(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_unlock(ptr noundef %0) #18
  %i.b = icmp eq i32 %i.a, 0
  %. = select i1 %i.b, i32 0, i32 -106
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define void @wolfSSL_RefWithMutexInc2(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef %0) #18
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %1, align 4, !tbaa !9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %i.e = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !26
  store i32 %i.e, ptr %1, align 4, !tbaa !9
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef %0) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %..i = phi i32 [ 0, %bb.c ], [ -106, %bb.b ]
  store i32 %..i, ptr %2, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -106, 1) i32 @wolfSSL_RefWithMutexLock(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef %0) #18
  %i.b = icmp eq i32 %i.a, 0
  %..i = select i1 %i.b, i32 0, i32 -106
  ret i32 %..i
}

; Function Attrs: nounwind uwtable
define range(i32 -106, 1) i32 @wolfSSL_RefWithMutexUnlock(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_unlock(ptr noundef %0) #18
  %i.b = icmp eq i32 %i.a, 0
  %..i = select i1 %i.b, i32 0, i32 -106
  ret i32 %..i
}

; Function Attrs: nounwind uwtable
define void @wolfSSL_RefWithMutexDec(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef %0) #18
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !9
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.f, ptr %i.c, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi i32 [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  %i.h = icmp eq i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  store i32 %i.i, ptr %1, align 4, !tbaa !9
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #18 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %..i = phi i32 [ 0, %bb.e ], [ -106, %bb.b ]
  store i32 %..i, ptr %2, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define void @wolfSSL_RefWithMutexDec2(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef %0) #18
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %1, align 4, !tbaa !9
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.f, ptr %i.c, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi i32 [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  store i32 %i.g, ptr %1, align 4, !tbaa !9
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #18 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %..i = phi i32 [ 0, %bb.e ], [ -106, %bb.b ]
  store i32 %..i, ptr %2, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define range(i32 -106, 1) i32 @wc_InitRwLock(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_init(ptr noundef %0, ptr noundef null) #18
  %i.b = icmp eq i32 %i.a, 0
  %..i = select i1 %i.b, i32 0, i32 -106
  ret i32 %..i
}

; Function Attrs: nounwind uwtable
define range(i32 -106, 1) i32 @wc_FreeRwLock(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_destroy(ptr noundef %0) #18
  %i.b = icmp eq i32 %i.a, 0
  %..i = select i1 %i.b, i32 0, i32 -106
  ret i32 %..i
}

; Function Attrs: nounwind uwtable
define range(i32 -106, 1) i32 @wc_LockRwLock_Wr(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef %0) #18
  %i.b = icmp eq i32 %i.a, 0
  %..i = select i1 %i.b, i32 0, i32 -106
  ret i32 %..i
}

; Function Attrs: nounwind uwtable
define range(i32 -106, 1) i32 @wc_LockRwLock_Rd(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef %0) #18
  %i.b = icmp eq i32 %i.a, 0
  %..i = select i1 %i.b, i32 0, i32 -106
  ret i32 %..i
}

; Function Attrs: nounwind uwtable
define range(i32 -106, 1) i32 @wc_UnLockRwLock(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_unlock(ptr noundef %0) #18
  %i.b = icmp eq i32 %i.a, 0
  %..i = select i1 %i.b, i32 0, i32 -106
  ret i32 %..i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define noundef ptr @wolfSSL_strnstr(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not19 = icmp ult i64 %2, %i.a
  br i1 %.not19, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.021 = phi i64 [ %i.h, %bb.d ], [ %2, %.preheader ]
  %.01520 = phi ptr [ %i.g, %bb.d ], [ %0, %.preheader ] ; 4 uses
  %i.c = load i8, ptr %.01520, align 1, !tbaa !23 ; 2 uses
  %.not18 = icmp eq i8 %i.c, 0
  br i1 %.not18, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = load i8, ptr %1, align 1, !tbaa !23
  %i.e = icmp eq i8 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr nonnull %.01520, ptr nonnull %1, i64 %i.a)
  %i.f = icmp eq i32 %bcmp, 0
  br i1 %i.f, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.01520, i64 1
  %i.h = add i64 %.021, -1                        ; 2 uses
  %.not = icmp ult i64 %i.h, %i.a
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !33

.critedge:                                        ; preds = %bb.c, %bb.d, %.lr.ph, %.preheader, %bb.a
  %.014 = phi ptr [ %0, %bb.a ], [ null, %.preheader ], [ null, %bb.d ], [ %.01520, %bb.c ], [ null, %.lr.ph ]
  ret ptr %.014
}

; Function Attrs: nounwind uwtable
define range(i32 -173, 1) i32 @wolfSSL_NewThread(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @pthread_create(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %1, ptr noundef %2) #18
  %.not = icmp eq i32 %i.c, 0
  %. = select i1 %.not, i32 0, i32 -125
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_NewThreadNoJoin(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %wolfSSL_NewThread.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @pthread_create(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %0, ptr noundef %1) #18
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %wolfSSL_NewThread.exit, label %wolfSSL_NewThread.exit.thread

wolfSSL_NewThread.exit:                           ; preds = %bb.b
  %i.d = load i64, ptr %i.a, align 8, !tbaa !14
  %i.e = call i32 @pthread_detach(i64 noundef %i.d) #18
  br label %wolfSSL_NewThread.exit.thread

wolfSSL_NewThread.exit.thread:                    ; preds = %bb.b, %bb.a, %wolfSSL_NewThread.exit
  %.0 = phi i32 [ %i.e, %wolfSSL_NewThread.exit ], [ -125, %bb.b ], [ -173, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_detach(i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define range(i32 -173, 1) i32 @wolfSSL_JoinThread(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %0, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_join(i64 noundef %0, ptr noundef null) #18
  %.not = icmp eq i32 %i.b, 0
  %. = select i1 %.not, i32 0, i32 -125
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -173, 1) i32 @wolfSSL_CondInit(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_init(ptr noundef nonnull %0, ptr noundef null) #18
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.c, ptr noundef null) #18
  %.not5 = icmp eq i32 %i.d, 0
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %0) #18 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ -125, %bb.b ], [ -173, %bb.a ], [ -125, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define range(i32 -173, 1) i32 @wolfSSL_CondFree(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %0) #18
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.c) #18
  %.not6 = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not6, i1 %.not, i1 false
  %.1 = select i1 %i.e, i32 0, i32 -125
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.04 = phi i32 [ %.1, %bb.b ], [ -173, %bb.a ]
  ret i32 %.04
}

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define range(i32 -173, 1) i32 @wolfSSL_CondStart(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %0) #18
  %.not = icmp eq i32 %i.b, 0
  %. = select i1 %.not, i32 0, i32 -106
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -173, 1) i32 @wolfSSL_CondSignal(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.b) #18
  %.not = icmp eq i32 %i.c, 0
  %. = select i1 %.not, i32 0, i32 -125
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define range(i32 -173, 1) i32 @wolfSSL_CondWait(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.b, ptr noundef nonnull %0) #18
  %.not = icmp eq i32 %i.c, 0
  %. = select i1 %.not, i32 0, i32 -125
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -173, 1) i32 @wolfSSL_CondEnd(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #18
  %.not = icmp eq i32 %i.b, 0
  %. = select i1 %.not, i32 0, i32 -106
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @wc_set_cloexec(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1) #18 ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = or i32 %i.b, 1
  %i.e = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 2, i32 noundef %i.d) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef i32 @wc_open_cloexec(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = or i32 %1, 524288
  %i.b = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %i.a) #18 ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %wc_set_cloexec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = icmp eq i32 %i.e, 22
  br i1 %i.f, label %bb.c, label %wc_set_cloexec.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %1) #18 ; 6 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %wc_set_cloexec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.g, i32 noundef 1) #18 ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.e, label %wc_set_cloexec.exit

bb.e:                                             ; preds = %bb.d
  %i.k = or i32 %i.i, 1
  %i.l = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.g, i32 noundef 2, i32 noundef %i.k) #18 ; 0 uses
  br label %wc_set_cloexec.exit

wc_set_cloexec.exit:                              ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.b, %bb.b ], [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %i.g, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define i32 @wc_socket_cloexec(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = or i32 %1, 524288
  %i.b = tail call i32 @socket(i32 noundef %0, i32 noundef %i.a, i32 noundef %2) #18 ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %wc_set_cloexec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = icmp eq i32 %i.e, 22
  br i1 %i.f, label %bb.c, label %wc_set_cloexec.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @socket(i32 noundef %0, i32 noundef %1, i32 noundef %2) #18 ; 6 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %wc_set_cloexec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.g, i32 noundef 1) #18 ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.e, label %wc_set_cloexec.exit

bb.e:                                             ; preds = %bb.d
  %i.k = or i32 %i.i, 1
  %i.l = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.g, i32 noundef 2, i32 noundef %i.k) #18 ; 0 uses
  br label %wc_set_cloexec.exit

wc_set_cloexec.exit:                              ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.b, %bb.b ], [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %i.g, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define i32 @wc_accept_cloexec(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @accept4(i32 noundef %0, ptr %1, ptr noundef %2, i32 noundef 524288) #18 ; 3 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %wc_set_cloexec.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !9
  switch i32 %i.d, label %wc_set_cloexec.exit [
    i32 38, label %bb.c
    i32 22, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.e = tail call i32 @accept(i32 noundef %0, ptr %1, ptr noundef %2) #18 ; 6 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %wc_set_cloexec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.e, i32 noundef 1) #18 ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.e, label %wc_set_cloexec.exit

bb.e:                                             ; preds = %bb.d
  %i.i = or i32 %i.g, 1
  %i.j = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.e, i32 noundef 2, i32 noundef %i.i) #18 ; 0 uses
  br label %wc_set_cloexec.exit

wc_set_cloexec.exit:                              ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.a, %bb.b ], [ %i.a, %bb.a ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.e, %bb.e ]
  ret i32 %.0
}

declare i32 @accept4(i32 noundef, ptr, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @accept(i32 noundef, ptr, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

attributes #0 = { norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !24}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 _ZTS6dirent", !10, i64 0}
!16 = !{!"p1 _ZTS11__dirstream", !10, i64 0}
!17 = !{!"timespec", !13, i64 0, !13, i64 8}
!18 = !{!"stat", !13, i64 0, !13, i64 8, !13, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !17, i64 72, !17, i64 88, !17, i64 104, !5, i64 120}
!19 = !{!"ReadDirCtx", !15, i64 0, !16, i64 8, !18, i64 16, !5, i64 160}
!20 = !{!19, !6, i64 40}
!21 = !{!19, !16, i64 8}
!22 = !{!19, !15, i64 0}
!23 = !{!5, !5, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"wolfSSL_RefWithMutex", !5, i64 0, !6, i64 40}
!26 = !{!25, !6, i64 40}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24}
!32 = distinct !{!32, !24}
!33 = distinct !{!33, !24}
end_hunk_0
