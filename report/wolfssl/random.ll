Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/random?download=true
inline.NumInlined: 49
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@wc_RNG_TestSeed:bb.a
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cb ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !29
  %i.ce = add i16 %i.cd, 1
  store i16 %i.ce, ptr %i.cc, align 2, !tbaa !29
  %indvars.iv.next75.3 = add nuw nsw i64 %indvars.iv74, 4 ; 2 uses
  %niter104.next.3 = add i64 %niter104, 4         ; 2 uses
  %niter104.ncmp.3 = icmp eq i64 %niter104.next.3, %unroll_iter103
  br i1 %niter104.ncmp.3, label %vector.body.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !25

vector.body.preheader.loopexit.unr-lcssa:         ; preds = %.lr.ph
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %vector.body.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %vector.body.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv74.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next75.3, %vector.body.preheader.loopexit.unr-lcssa ]
  %lcmp.mod102 = icmp ne i64 %xtraiter100, 0
  tail call void @llvm.assume(i1 %lcmp.mod102)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv74.epil = phi i64 [ %indvars.iv74.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next75.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv74.epil
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !9
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ch ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !29
  %i.ck = add i16 %i.cj, 1
  store i16 %i.ck, ptr %i.ci, align 2, !tbaa !29
  %indvars.iv.next75.epil = add nuw nsw i64 %indvars.iv74.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter100
  br i1 %epil.iter.cmp.not, label %vector.body.preheader, label %.lr.ph.epil, !llvm.loop !26

vector.body.preheader:                            ; preds = %vector.body.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %bb.c
  br label %vector.body

.lr.ph70.preheader:                               ; preds = %middle.block
  %i.cl = zext i32 %i.ai to i64
  %i.cm = sub nuw i32 %1, %i.ai
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl
  br label %.lr.ph70

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %.lr.ph70
  %indvars.iv83 = phi i64 [ 0, %.lr.ph70.preheader ], [ %indvars.iv.next84, %.lr.ph70 ] ; 3 uses
  %.168 = phi i32 [ %i.bc, %.lr.ph70.preheader ], [ %i.da, %.lr.ph70 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv83
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !9
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cp ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !29
  %i.cs = add i16 %i.cr, -1
  store i16 %i.cs, ptr %i.cq, align 2, !tbaa !29
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv83
  %i.ct = load i8, ptr %gep, align 1, !tbaa !9
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cu ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !29
  %i.cx = add i16 %i.cw, 1                        ; 2 uses
  store i16 %i.cx, ptr %i.cv, align 2, !tbaa !29
  %i.cy = icmp ugt i16 %i.cx, 324
  %i.cz = zext i1 %i.cy to i32
  %i.da = or i32 %.168, %i.cz                     ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next84 to i32
  %exitcond86.not = icmp eq i32 %i.cm, %lftr.wideiv
  br i1 %exitcond86.not, label %._crit_edge, label %.lr.ph70, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph70, %middle.block
  %.1.lcssa = phi i32 [ %i.bc, %middle.block ], [ %i.da, %.lr.ph70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %.not = icmp eq i32 %.lcssa97, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %.not57 = icmp eq i32 %.1.lcssa, 0
  %spec.select = select i1 %.not57, i32 0, i32 -295
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge, %bb.a
  %.046 = phi i32 [ -173, %bb.a ], [ %spec.select, %bb.d ], [ -294, %._crit_edge ]
  ret i32 %.046
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @wc_Sha256Drbg_Disable() local_unnamed_addr #0 {
bb.a:
  ret i32 -174
}

; Function Attrs: nounwind uwtable
define i32 @wc_Sha256Drbg_Enable() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @wc_LockMutex(ptr noundef nonnull @drbgStateMutex) #9 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @wc_UnLockMutex(ptr noundef nonnull @drbgStateMutex) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wc_Sha256Drbg_IsDisabled() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @wc_LockMutex(ptr noundef nonnull @drbgStateMutex) #9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @wc_UnLockMutex(ptr noundef nonnull @drbgStateMutex) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @wc_rng_new(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 40) #9 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %wc_rng_new_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @_InitRng(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %wc_rng_new_ex.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.a) #9
  br label %wc_rng_new_ex.exit

wc_rng_new_ex.exit:                               ; preds = %bb.c, %bb.a, %bb.b
  %i.d = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ], [ null, %bb.c ]
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define i32 @wc_rng_new_ex(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @wolfSSL_Malloc(i64 noundef 40) #9 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !34
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @_InitRng(ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef %2, ptr noundef %3) ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %.not17 = icmp eq ptr %i.e, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.e) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.b, %bb.a
  %.0 = phi i32 [ -125, %bb.b ], [ -173, %bb.a ], [ %i.d, %bb.f ], [ 0, %bb.c ]
  ret i32 %.0
}

declare ptr @wolfSSL_Malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_InitRng(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [52 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  %i.d = icmp ne i32 %2, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %3, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i8 0, ptr %i.g, align 8, !tbaa !19
  %i.h = tail call i32 @wc_LockMutex(ptr noundef nonnull @drbgStateMutex) #9 ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i8 0, ptr %i.i, align 8, !tbaa !9
  %i.j = tail call i32 @wc_UnLockMutex(ptr noundef nonnull @drbgStateMutex) #9 ; 0 uses
  %.not78 = icmp eq i32 %2, 0
  %spec.select = select i1 %.not78, i32 52, i32 36 ; 5 uses
  %i.k = load i8, ptr %i.i, align 8, !tbaa !9
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @wolfSSL_Malloc(i64 noundef 128) #9 ; 2 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !9
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 2, ptr %i.g, align 8, !tbaa !19
  br label %.thread66

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.p = tail call fastcc i32 @wc_RNG_HealthTestLocal(i32 noundef 0, ptr noundef %i.o)
  %.not59 = icmp eq i32 %i.p, 0
  br i1 %.not59, label %bb.h, label %.thread66

bb.h:                                             ; preds = %bb.g
  %i.q = tail call i32 @wc_open_cloexec(ptr noundef nonnull @.str, i32 noundef 0) #9 ; 3 uses
  store i32 %i.q, ptr %0, align 8, !tbaa !20
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.i, label %.peel.begin.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i32 @wc_open_cloexec(ptr noundef nonnull @.str.1, i32 noundef 0) #9 ; 3 uses
  store i32 %i.s, ptr %0, align 8, !tbaa !20
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %.thread75, label %.peel.begin.i

.peel.begin.i:                                    ; preds = %bb.i, %bb.h
  %i.u = phi i32 [ %i.s, %bb.i ], [ %i.q, %bb.h ]
  %i.v = zext nneg i32 %spec.select to i64
  %i.w = call i64 @read(i32 noundef %i.u, ptr noundef nonnull %i.a, i64 noundef %i.v) #9
  %i.x = trunc i64 %i.w to i32
  %.not28.peel.i = icmp eq i32 %spec.select, %i.x
  %i.y = load i32, ptr %0, align 8, !tbaa !20
  %i.z = tail call i32 @close(i32 noundef %i.y) #9 ; 0 uses
  br i1 %.not28.peel.i, label %bb.j, label %.thread75

.thread75:                                        ; preds = %.peel.begin.i, %bb.i
  store i8 2, ptr %i.g, align 8, !tbaa !19
  br label %.thread66

bb.j:                                             ; preds = %.peel.begin.i
  %i.aa = call i32 @wc_RNG_TestSeed(ptr noundef nonnull %i.a, i32 noundef %spec.select) ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %.thread66

bb.k:                                             ; preds = %bb.j
  %i.ac = load i8, ptr %i.i, align 8, !tbaa !9
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %.thread66

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ag = add nsw i32 %spec.select, -4
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ai = call fastcc i32 @Hash_DRBG_Instantiate(ptr noundef %i.ae, ptr noundef %i.af, i32 noundef %i.ag, ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, ptr noundef %i.ah)
  br label %.thread66

.thread66:                                        ; preds = %bb.f, %bb.g, %.thread75, %bb.j, %bb.l, %bb.k
  %.4 = phi i32 [ 1, %.thread75 ], [ %i.ai, %bb.l ], [ 0, %bb.k ], [ %i.aa, %bb.j ], [ -125, %bb.f ], [ 3, %bb.g ] ; 3 uses
  fence seq_cst
  %i.aj = and i32 %spec.select, 48
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %i.ak, i1 false), !tbaa !21
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.ak
  store i32 0, ptr %scevgep.i, align 16
  fence seq_cst
  %cond = icmp eq i32 %.4, 0
  br i1 %cond, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %.thread66
  %i.al = load i8, ptr %i.i, align 8, !tbaa !9
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !9   ; 2 uses
  %.not63 = icmp eq ptr %i.an, null
  br i1 %.not63, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @wolfSSL_Free(ptr noundef nonnull %i.an) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.f, align 8, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  switch i32 %.4, label %bb.s [
    i32 1, label %bb.r
    i32 3, label %.sink.split
  ]

bb.r:                                             ; preds = %bb.q
  br label %.sink.split

bb.s:                                             ; preds = %bb.q
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %.thread66, %bb.s, %bb.r
  %.sink = phi i8 [ 1, %.thread66 ], [ 2, %bb.r ], [ 2, %bb.s ], [ 3, %bb.q ]
  %.053.ph = phi i32 [ 0, %.thread66 ], [ -199, %bb.r ], [ %.4, %bb.s ], [ -209, %bb.q ]
  store i8 %.sink, ptr %i.g, align 8, !tbaa !19
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.c, %bb.b, %bb.a
  %.053 = phi i32 [ %i.h, %bb.c ], [ -173, %bb.a ], [ -173, %bb.b ], [ %.053.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.053
}

declare void @wolfSSL_Free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @wc_rng_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %wc_FreeRng.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  fence seq_cst
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 7
  %.not19.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not19.i.i.i, label %.lr.ph25.preheader.i.i.i, label %.lr.ph.i.i.i.preheader

.preheader16.i.i.i.split.loop.exit46:             ; preds = %.lr.ph.i.i.i.1
  %i.e = add nsw i64 %.01320.i.i.i42, -3
  br label %.preheader16.i.i.i

.preheader16.i.i.i.split.loop.exit49:             ; preds = %.lr.ph.i.i.i
  %i.f = add nsw i64 %.01320.i.i.i42, -2
  br label %.preheader16.i.i.i

.preheader16.i.i.i.split.loop.exit52:             ; preds = %.lr.ph.i.i.i.preheader
  %i.g = add nsw i64 %.01320.i.i.i42, -1
  br label %.preheader16.i.i.i

.preheader16.i.i.i:                               ; preds = %.lr.ph.i.i.i.2, %.preheader16.i.i.i.split.loop.exit52, %.preheader16.i.i.i.split.loop.exit49, %.preheader16.i.i.i.split.loop.exit46
  %.lcssa44 = phi ptr [ %i.k, %.preheader16.i.i.i.split.loop.exit49 ], [ %i.n, %.preheader16.i.i.i.split.loop.exit46 ], [ %i.v, %.preheader16.i.i.i.split.loop.exit52 ], [ %i.q, %.lr.ph.i.i.i.2 ] ; 2 uses
  %.lcssa = phi i64 [ %i.f, %.preheader16.i.i.i.split.loop.exit49 ], [ %i.e, %.preheader16.i.i.i.split.loop.exit46 ], [ %i.g, %.preheader16.i.i.i.split.loop.exit52 ], [ %i.r, %.lr.ph.i.i.i.2 ] ; 3 uses
  %i.h = icmp ugt i64 %.lcssa, 7
  br i1 %i.h, label %.lr.ph25.preheader.i.i.i, label %.preheader.i.i.i

.lr.ph25.preheader.i.i.i:                         ; preds = %.preheader16.i.i.i, %bb.c
  %.012.lcssa38.i.i.i = phi ptr [ %.lcssa44, %.preheader16.i.i.i ], [ %i.b, %bb.c ] ; 2 uses
  %.013.lcssa37.i.i.i = phi i64 [ %.lcssa, %.preheader16.i.i.i ], [ 128, %bb.c ] ; 2 uses
  %i.i = and i64 %.013.lcssa37.i.i.i, -8          ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.012.lcssa38.i.i.i, i8 0, i64 %i.i, i1 false), !tbaa !21
  %scevgep.i.i.i = getelementptr i8, ptr %.012.lcssa38.i.i.i, i64 %i.i
  %i.j = and i64 %.013.lcssa37.i.i.i, 7
  br label %.preheader.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %.01221.i.i.i41, i64 2 ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !9
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = and i64 %i.l, 7
  %.not.i.i.i.1 = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.1, label %.preheader16.i.i.i.split.loop.exit49, label %.lr.ph.i.i.i.1, !llvm.loop !0

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.01221.i.i.i41, i64 3 ; 3 uses
  store i8 0, ptr %i.k, align 1, !tbaa !9
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, 7
  %.not.i.i.i.2 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.2, label %.preheader16.i.i.i.split.loop.exit46, label %.lr.ph.i.i.i.2, !llvm.loop !0

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.q = getelementptr inbounds nuw i8, ptr %.01221.i.i.i41, i64 4 ; 3 uses
  store i8 0, ptr %i.n, align 1, !tbaa !9
  %i.r = add nsw i64 %.01320.i.i.i42, -4          ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = and i64 %i.s, 7
  %.not.i.i.i.3 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.3, label %.preheader16.i.i.i, label %.lr.ph.i.i.i.3, !llvm.loop !0

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %ForceZero.exit.i.i, label %.lr.ph.i.i.i.preheader, !llvm.loop !0

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c, %.lr.ph.i.i.i.3
  %.01320.i.i.i42 = phi i64 [ %i.r, %.lr.ph.i.i.i.3 ], [ 128, %bb.c ] ; 4 uses
  %.01221.i.i.i41 = phi ptr [ %i.q, %.lr.ph.i.i.i.3 ], [ %i.b, %bb.c ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01221.i.i.i41, i64 1 ; 3 uses
  store i8 0, ptr %.01221.i.i.i41, align 1, !tbaa !9
end_hunk_0
begin_hunk_1_@PollAndReSeed:bb.a
  %wide.load21.1 = load <4 x i8>, ptr %i.j, align 4, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %wide.load.2 = load <4 x i8>, ptr %i.k, align 16, !tbaa !9
  %wide.load21.2 = load <4 x i8>, ptr %i.l, align 4, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %wide.load.3 = load <4 x i8>, ptr %i.m, align 8, !tbaa !9
  %wide.load21.3 = load <4 x i8>, ptr %i.n, align 4, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %wide.load.4 = load <4 x i8>, ptr %i.o, align 16, !tbaa !9
  %wide.load21.4 = load <4 x i8>, ptr %i.p, align 4, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %wide.load.5 = load <4 x i8>, ptr %i.q, align 8, !tbaa !9
  %wide.load21.5 = load <4 x i8>, ptr %i.r, align 4, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %wide.load.6 = load <4 x i8>, ptr %i.s, align 16, !tbaa !9
  %wide.load21.6 = load <4 x i8>, ptr %i.t, align 4, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %wide.load.7 = load <4 x i8>, ptr %i.u, align 8, !tbaa !9
  %wide.load21.7 = load <4 x i8>, ptr %i.v, align 4, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %wide.load.8 = load <4 x i8>, ptr %i.w, align 16, !tbaa !9
  %wide.load21.8 = load <4 x i8>, ptr %i.x, align 4, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %wide.load.9 = load <4 x i8>, ptr %i.y, align 8, !tbaa !9
  %wide.load21.9 = load <4 x i8>, ptr %i.z, align 4, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %wide.load.10 = load <4 x i8>, ptr %i.aa, align 16, !tbaa !9
  %wide.load21.10 = load <4 x i8>, ptr %i.ab, align 4, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %wide.load.11 = load <4 x i8>, ptr %i.ac, align 8, !tbaa !9
  %wide.load21.11 = load <4 x i8>, ptr %i.ad, align 4, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %wide.load.12 = load <4 x i8>, ptr %i.ae, align 16, !tbaa !9
  %wide.load21.12 = load <4 x i8>, ptr %i.af, align 4, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %wide.load.13 = load <4 x i8>, ptr %i.ag, align 8, !tbaa !9
  %wide.load21.13 = load <4 x i8>, ptr %i.ah, align 4, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %wide.load.14 = load <4 x i8>, ptr %i.ai, align 16, !tbaa !9
  %wide.load21.14 = load <4 x i8>, ptr %i.aj, align 4, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %wide.load.15 = load <4 x i8>, ptr %i.ak, align 8, !tbaa !9
  %wide.load21.15 = load <4 x i8>, ptr %i.al, align 4, !tbaa !9
  %i.am = icmp ne <4 x i8> %wide.load, <i8 4, i8 -18, i8 -58, i8 59>
  %i.an = icmp ne <4 x i8> %wide.load.1, <i8 99, i8 10, i8 26, i8 -5>
  %i.ao = or <4 x i1> %i.am, %i.an
  %i.ap = icmp ne <4 x i8> %wide.load.2, <i8 0, i8 90, i8 88, i8 120>
  %i.aq = or <4 x i1> %i.ao, %i.ap
  %i.ar = icmp ne <4 x i8> %wide.load.3, <i8 94, i8 71, i8 115, i8 71>
  %i.as = or <4 x i1> %i.aq, %i.ar
  %i.at = icmp ne <4 x i8> %wide.load.4, <i8 28, i8 24, i8 -67, i8 -36>
  %i.au = or <4 x i1> %i.as, %i.at
  %i.av = icmp ne <4 x i8> %wide.load.5, <i8 95, i8 -62, i8 -71, i8 32>
  %i.aw = or <4 x i1> %i.au, %i.av
  %i.ax = icmp ne <4 x i8> %wide.load.6, <i8 -5, i8 11, i8 -72, i8 -125>
  %i.ay = or <4 x i1> %i.aw, %i.ax
  %i.az = icmp ne <4 x i8> %wide.load.7, <i8 -35, i8 -42, i8 -64, i8 113>
  %i.ba = or <4 x i1> %i.ay, %i.az
  %i.bb = icmp ne <4 x i8> %wide.load.8, <i8 -16, i8 59, i8 115, i8 -11>
  %i.bc = or <4 x i1> %i.ba, %i.bb
  %i.bd = icmp ne <4 x i8> %wide.load.9, <i8 113, i8 -7, i8 -34, i8 3>
  %i.be = or <4 x i1> %i.bc, %i.bd
  %i.bf = icmp ne <4 x i8> %wide.load.10, <i8 93, i8 -110, i8 -103, i8 -72>
  %i.bg = or <4 x i1> %i.be, %i.bf
  %i.bh = icmp ne <4 x i8> %wide.load.11, <i8 91, i8 -37, i8 77, i8 -71>
  %i.bi = or <4 x i1> %i.bg, %i.bh
  %i.bj = icmp ne <4 x i8> %wide.load.12, <i8 23, i8 75, i8 86, i8 -18>
  %i.bk = or <4 x i1> %i.bi, %i.bj
  %i.bl = icmp ne <4 x i8> %wide.load.13, <i8 -120, i8 -106, i8 -1, i8 34>
  %i.bm = or <4 x i1> %i.bk, %i.bl
  %i.bn = icmp ne <4 x i8> %wide.load.14, <i8 25, i8 105, i8 -32, i8 105>
  %i.bo = or <4 x i1> %i.bm, %i.bn
  %i.bp = icmp ne <4 x i8> %wide.load.15, <i8 -95, i8 -128, i8 24, i8 58>
  %i.bq = or <4 x i1> %i.bo, %i.bp
  %i.br = icmp ne <4 x i8> %wide.load21, <i8 -78, i8 49, i8 -33, i8 44>
  %i.bs = or <4 x i1> %i.bq, %i.br
  %i.bt = icmp ne <4 x i8> %wide.load21.1, <i8 -25, i8 36, i8 -108, i8 -99>
  %i.bu = or <4 x i1> %i.bs, %i.bt
  %i.bv = icmp ne <4 x i8> %wide.load21.2, <i8 81, i8 -31, i8 -86, i8 121>
  %i.bw = or <4 x i1> %i.bu, %i.bv
  %i.bx = icmp ne <4 x i8> %wide.load21.3, <i8 -56, i8 -80, i8 86, i8 98>
  %i.by = or <4 x i1> %i.bw, %i.bx
  %i.bz = icmp ne <4 x i8> %wide.load21.4, <i8 -35, i8 -115, i8 -103, i8 -4>
  %i.ca = or <4 x i1> %i.by, %i.bz
  %i.cb = icmp ne <4 x i8> %wide.load21.5, <i8 83, i8 -40, i8 -49, i8 -84>
  %i.cc = or <4 x i1> %i.ca, %i.cb
  %i.cd = icmp ne <4 x i8> %wide.load21.6, <i8 18, i8 5, i8 -6, i8 -47>
  %i.ce = or <4 x i1> %i.cc, %i.cd
  %i.cf = icmp ne <4 x i8> %wide.load21.7, <i8 49, i8 -118, i8 96, i8 24>
  %i.cg = or <4 x i1> %i.ce, %i.cf
  %i.ch = icmp ne <4 x i8> %wide.load21.8, <i8 -19, i8 -28, i8 -44, i8 -48>
  %i.ci = or <4 x i1> %i.cg, %i.ch
  %i.cj = icmp ne <4 x i8> %wide.load21.9, <i8 -3, i8 122, i8 -22, i8 16>
  %i.ck = or <4 x i1> %i.ci, %i.cj
  %i.cl = icmp ne <4 x i8> %wide.load21.10, <i8 -81, i8 -103, i8 -86, i8 7>
  %i.cm = or <4 x i1> %i.ck, %i.cl
  %i.cn = icmp ne <4 x i8> %wide.load21.11, <i8 -86, i8 40, i8 -63, i8 -115>
  %i.co = or <4 x i1> %i.cm, %i.cn
  %i.cp = icmp ne <4 x i8> %wide.load21.12, <i8 42, i8 1, i8 77, i8 9>
  %i.cq = or <4 x i1> %i.co, %i.cp
  %i.cr = icmp ne <4 x i8> %wide.load21.13, <i8 -126, i8 -55, i8 85, i8 -88>
  %i.cs = or <4 x i1> %i.cq, %i.cr
  %i.ct = icmp ne <4 x i8> %wide.load21.14, <i8 -6, i8 -116, i8 -32, i8 7>
  %i.cu = or <4 x i1> %i.cs, %i.ct
  %i.cv = icmp ne <4 x i8> %wide.load21.15, <i8 7, i8 -33, i8 -82, i8 23>
  %i.cw = or <4 x i1> %i.cu, %i.cv
  %i.cx = bitcast <4 x i1> %i.cw to i4
  %.not28.i.not = icmp eq i4 %i.cx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br i1 %.not28.i.not, label %bb.b, label %bb.j

wc_RNG_HealthTestLocal.exit.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.j

bb.b:                                             ; preds = %vector.body
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.cy = call i32 @wc_open_cloexec(ptr noundef nonnull @.str, i32 noundef 0) #9 ; 3 uses
  store i32 %i.cy, ptr %0, align 8, !tbaa !20
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %bb.c, label %.peel.begin.i

bb.c:                                             ; preds = %bb.b
  %i.da = call i32 @wc_open_cloexec(ptr noundef nonnull @.str.1, i32 noundef 0) #9 ; 3 uses
  store i32 %i.da, ptr %0, align 8, !tbaa !20
  %i.db = icmp eq i32 %i.da, -1
  br i1 %i.db, label %.thread, label %.peel.begin.i

.peel.begin.i:                                    ; preds = %bb.c, %bb.b
  %i.dc = phi i32 [ %i.da, %bb.c ], [ %i.cy, %bb.b ]
  %i.dd = call i64 @read(i32 noundef %i.dc, ptr noundef nonnull %i.c, i64 noundef 36) #9
  %i.de = and i64 %i.dd, 4294967295
  %.not28.peel.i = icmp eq i64 %i.de, 36
  %i.df = load i32, ptr %0, align 8, !tbaa !20
  %i.dg = call i32 @close(i32 noundef %i.df) #9   ; 0 uses
  br i1 %.not28.peel.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %.peel.begin.i
  %i.dh = call i32 @wc_RNG_TestSeed(ptr noundef nonnull %i.c, i32 noundef 36) ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !9
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !9  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %Hash_DRBG_Reseed.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(55) %i.a, i8 0, i64 55, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 3 uses
  %i.dr = call fastcc i32 @Hash_df(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.a, i8 noundef zeroext 1, ptr noundef nonnull %i.dq, i32 noundef 55, ptr noundef nonnull %i.dp, i32 noundef 32, ptr noundef null, i32 noundef 0)
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.h, label %.thread.i11

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(55) %i.dq, ptr noundef nonnull align 16 dereferenceable(55) %i.a, i64 55, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 63
  %i.du = call fastcc i32 @Hash_df(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.dt, i8 noundef zeroext 0, ptr noundef nonnull %i.dq, i32 noundef 55, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0)
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.i, label %.thread.i11

bb.i:                                             ; preds = %bb.h
  store i64 1, ptr %i.dn, align 8, !tbaa !13
  br label %.thread.i11

.thread.i11:                                      ; preds = %bb.i, %bb.h, %bb.g
  %.019.i = phi i32 [ 1, %bb.h ], [ 0, %bb.i ], [ 1, %bb.g ]
  fence seq_cst
  br label %Hash_DRBG_Reseed.exit

Hash_DRBG_Reseed.exit:                            ; preds = %bb.f, %.thread.i11
  %.015.i = phi i32 [ 1, %bb.f ], [ %.019.i, %.thread.i11 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.thread

.thread:                                          ; preds = %.peel.begin.i, %bb.c, %bb.e, %Hash_DRBG_Reseed.exit, %bb.d
  %.2 = phi i32 [ %.015.i, %Hash_DRBG_Reseed.exit ], [ 0, %bb.e ], [ %i.dh, %bb.d ], [ 1, %bb.c ], [ 1, %.peel.begin.i ]
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.c, i8 0, i64 36, i1 false)
  fence seq_cst
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.j

bb.j:                                             ; preds = %wc_RNG_HealthTestLocal.exit.thread, %vector.body, %.thread
  %.3 = phi i32 [ %.2, %.thread ], [ 3, %vector.body ], [ 3, %wc_RNG_HealthTestLocal.exit.thread ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define range(i32 -209, 1) i32 @wc_RNG_GenerateByte(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %wc_RNG_GenerateBlock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !19
  %.not.i = icmp eq i8 %i.d, 1
  br i1 %.not.i, label %bb.c, label %wc_RNG_GenerateBlock.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !9
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.j = tail call fastcc i32 @Hash_DRBG_Generate(ptr noundef %i.i, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef 0) ; 2 uses
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = tail call fastcc i32 @PollAndReSeed(ptr noundef %0) ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.o = tail call fastcc i32 @Hash_DRBG_Generate(ptr noundef %i.n, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i32 [ %i.o, %bb.f ], [ %i.l, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  switch i32 %.0.i, label %.thread.i [
    i32 0, label %wc_RNG_GenerateBlock.exit
    i32 3, label %.sink.split.i
  ]

.thread.i:                                        ; preds = %bb.g, %bb.c
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.thread.i, %bb.g
  %.sink.i = phi i8 [ 2, %.thread.i ], [ 3, %bb.g ]
  %.021.ph.i = phi i32 [ -199, %.thread.i ], [ -209, %bb.g ]
  store i8 %.sink.i, ptr %i.c, align 8, !tbaa !19
  br label %wc_RNG_GenerateBlock.exit

wc_RNG_GenerateBlock.exit:                        ; preds = %bb.a, %bb.b, %bb.g, %.sink.split.i
  %.021.i = phi i32 [ -199, %bb.b ], [ -173, %bb.a ], [ %.0.i, %bb.g ], [ %.021.ph.i, %.sink.split.i ]
  ret i32 %.021.i
}

; Function Attrs: nounwind uwtable
define range(i32 -173, 1) i32 @wc_RNG_HealthTest(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %7 = alloca %struct.DRBG_internal, align 8      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.a = call fastcc range(i32 -173, 1) i32 @wc_RNG_HealthTest_ex_internal(ptr noundef %7, i32 noundef %0, ptr noundef null, i32 noundef 0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 -173, 1) i32 @wc_RNG_HealthTest_ex(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(address_is_null) %7, i32 noundef %8, ptr noundef %9, i32 noundef %10) local_unnamed_addr #1 {
bb.a:
  %11 = alloca %struct.DRBG_internal, align 8     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.a = call fastcc i32 @wc_RNG_HealthTest_ex_internal(ptr noundef %11, i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -173, 1) i32 @wc_RNG_HealthTest_ex_internal(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr nofree noundef writeonly captures(address_is_null) %8, i32 noundef %9, ptr noundef %10) unnamed_addr #1 {
bb.a:
  %i.a = alloca [55 x i8], align 16               ; 6 uses
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq ptr %8, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i32 %1, 0                        ; 2 uses
  %i.e = icmp eq ptr %6, null
  %or.cond3 = and i1 %i.d, %i.e
  br i1 %or.cond3, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %9, 128
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 120, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %10, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = tail call fastcc i32 @Hash_df(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i8 noundef zeroext 4, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %2, i32 noundef %3, ptr noundef null, i32 noundef 0)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %Hash_DRBG_Instantiate.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 63 ; 2 uses
  %i.k = tail call fastcc i32 @Hash_df(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i8 noundef zeroext 0, ptr noundef nonnull %i.g, i32 noundef 55, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0)
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %Hash_DRBG_Instantiate.exit.thread

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8, !tbaa !13
  br i1 %i.d, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(55) %i.a, i8 0, i64 55, i1 false)
  %i.m = call fastcc i32 @Hash_df(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i8 noundef zeroext 1, ptr noundef nonnull %i.g, i32 noundef 55, ptr noundef %6, i32 noundef %7, ptr noundef null, i32 noundef 0)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %Hash_DRBG_Reseed.exit.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(55) %i.g, ptr noundef nonnull align 16 dereferenceable(55) %i.a, i64 55, i1 false)
  %i.o = tail call fastcc i32 @Hash_df(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i8 noundef zeroext 0, ptr noundef nonnull %i.g, i32 noundef 55, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0)
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %Hash_DRBG_Reseed.exit, label %Hash_DRBG_Reseed.exit.thread

Hash_DRBG_Reseed.exit.thread:                     ; preds = %bb.h, %bb.g
  fence seq_cst
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %Hash_DRBG_Instantiate.exit.thread

Hash_DRBG_Reseed.exit:                            ; preds = %bb.h
  store i64 1, ptr %0, align 8, !tbaa !13
  fence seq_cst
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.i

bb.i:                                             ; preds = %Hash_DRBG_Reseed.exit, %bb.f
  %i.q = tail call fastcc i32 @Hash_DRBG_Generate(ptr noundef nonnull %0, ptr noundef %8, i32 noundef 128, ptr noundef null, i32 noundef 0)
  %.not34 = icmp eq i32 %i.q, 0
  br i1 %.not34, label %bb.j, label %Hash_DRBG_Instantiate.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.r = tail call fastcc i32 @Hash_DRBG_Generate(ptr noundef nonnull %0, ptr noundef %8, i32 noundef 128, ptr noundef null, i32 noundef 0)
  %.not35 = icmp ne i32 %i.r, 0
  %spec.select = sext i1 %.not35 to i32
  br label %Hash_DRBG_Instantiate.exit.thread

Hash_DRBG_Instantiate.exit.thread:                ; preds = %bb.d, %bb.e, %Hash_DRBG_Reseed.exit.thread, %bb.j, %bb.i
  %.0 = phi i32 [ %spec.select, %bb.j ], [ -1, %Hash_DRBG_Reseed.exit.thread ], [ -1, %bb.i ], [ -1, %bb.e ], [ -1, %bb.d ]
  fence seq_cst
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false), !tbaa !21
  fence seq_cst
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %wide.load = load <4 x i8>, ptr %0, align 8, !tbaa !9
  %wide.load6 = load <4 x i8>, ptr %i.s, align 4, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %wide.load.1 = load <4 x i8>, ptr %i.t, align 8, !tbaa !9
  %wide.load6.1 = load <4 x i8>, ptr %i.u, align 4, !tbaa !9
  %i.v = or <4 x i8> %wide.load, %wide.load.1
  %i.w = or <4 x i8> %wide.load6, %wide.load6.1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %wide.load.2 = load <4 x i8>, ptr %i.x, align 8, !tbaa !9
  %wide.load6.2 = load <4 x i8>, ptr %i.y, align 4, !tbaa !9
  %i.z = or <4 x i8> %i.v, %wide.load.2
  %i.aa = or <4 x i8> %i.w, %wide.load6.2
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28
  %wide.load.3 = load <4 x i8>, ptr %i.ab, align 8, !tbaa !9
  %wide.load6.3 = load <4 x i8>, ptr %i.ac, align 4, !tbaa !9
  %i.ad = or <4 x i8> %i.z, %wide.load.3
  %i.ae = or <4 x i8> %i.aa, %wide.load6.3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  %wide.load.4 = load <4 x i8>, ptr %i.af, align 8, !tbaa !9
  %wide.load6.4 = load <4 x i8>, ptr %i.ag, align 4, !tbaa !9
  %i.ah = or <4 x i8> %i.ad, %wide.load.4
  %i.ai = or <4 x i8> %i.ae, %wide.load6.4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 44
  %wide.load.5 = load <4 x i8>, ptr %i.aj, align 8, !tbaa !9
  %wide.load6.5 = load <4 x i8>, ptr %i.ak, align 4, !tbaa !9
  %i.al = or <4 x i8> %i.ah, %wide.load.5
  %i.am = or <4 x i8> %i.ai, %wide.load6.5
end_hunk_1
