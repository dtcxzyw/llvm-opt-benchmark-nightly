Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/random?download=true
inline.NumInlined: 49
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Hash_DRBG_Reseed:bb.a
  ret i32 %.015
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define range(i32 -295, 1) i32 @wc_RNG_TestSeed(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [256 x i16], align 16             ; 12 uses
  %i.c = icmp eq ptr %0, null
  %i.d = icmp ult i32 %1, 4
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.e, label %.new

.new:                                             ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64           ; 2 uses
  %i.e = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = load i8, ptr %0, align 1, !tbaa !9
  %unroll_iter = and i64 %i.e, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv = phi i64 [ 1, %.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.04764 = phi i8 [ %i.f, %.new ], [ %i.p, %bb.b ]
  %.04863 = phi i32 [ 1, %.new ], [ %i.r, %bb.b ]
  %.05062 = phi i32 [ 0, %.new ], [ %i.u, %bb.b ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !9     ; 2 uses
  %.not58 = icmp eq i8 %i.h, %.04764
  %i.i = add nsw i32 %.04863, 1
  %i.j = select i1 %.not58, i32 %i.i, i32 1       ; 2 uses
  %i.k = icmp sgt i32 %i.j, 30
  %i.l = zext i1 %i.k to i32
  %i.m = or i32 %.05062, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9     ; 3 uses
  %.not58.1 = icmp eq i8 %i.p, %i.h
  %i.q = add nsw i32 %i.j, 1
  %i.r = select i1 %.not58.1, i32 %i.q, i32 1     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 30
  %i.t = zext i1 %i.s to i32
  %i.u = or i32 %i.m, %i.t                        ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.b, !llvm.loop !23

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod99 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  %.not58.epil = icmp eq i8 %i.w, %i.p
  %i.x = icmp sgt i32 %i.r, 29
  %i.y = select i1 %.not58.epil, i1 %i.x, i1 false
  %i.z = zext i1 %i.y to i32
  %i.aa = or i32 %i.u, %i.z
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa97 = phi i32 [ %i.u, %.unr-lcssa ], [ %i.aa, %.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = add nsw i64 %wide.trip.count, -512
  %i.ac = lshr i64 %i.ab, 63
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -1
  store volatile i32 %i.ae, ptr %i.a, align 4, !tbaa !15
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.a, align 4, !tbaa !15
  %i.af = xor i32 %.0..0..0..0..0..0..i, -1
  %i.ag = and i32 %1, %i.af
  %.0..0..0..0..0..0.2.i = load volatile i32, ptr %i.a, align 4, !tbaa !15
  %i.ah = and i32 %.0..0..0..0..0..0.2.i, 512
  %i.ai = or i32 %i.ah, %i.ag                     ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.b, i8 0, i64 512, i1 false)
  %.not71 = icmp eq i32 %i.ai, 0
  br i1 %.not71, label %vector.body.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count77 = zext i32 %i.ai to i64      ; 2 uses
  %xtraiter100 = and i64 %wide.trip.count77, 3    ; 3 uses
  %i.aj = icmp ult i32 %i.ai, 4
  br i1 %i.aj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter103 = and i64 %wide.trip.count77, 4294967292
  br label %.lr.ph

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ 0, %vector.body.preheader ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.body.preheader ], [ %i.az, %vector.body ]
  %vec.phi93 = phi <4 x i32> [ zeroinitializer, %vector.body.preheader ], [ %i.ba, %vector.body ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %wide.load = load <4 x i16>, ptr %i.ak, align 16, !tbaa !29
  %wide.load94 = load <4 x i16>, ptr %i.al, align 8, !tbaa !29
  %i.am = icmp ugt <4 x i16> %wide.load, splat (i16 324)
  %i.an = icmp ugt <4 x i16> %wide.load94, splat (i16 324)
  %i.ao = zext <4 x i1> %i.am to <4 x i32>
  %i.ap = zext <4 x i1> %i.an to <4 x i32>
  %i.aq = or <4 x i32> %vec.phi, %i.ao
  %i.ar = or <4 x i32> %vec.phi93, %i.ap
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %wide.load.1 = load <4 x i16>, ptr %i.at, align 16, !tbaa !29
  %wide.load94.1 = load <4 x i16>, ptr %i.au, align 8, !tbaa !29
  %i.av = icmp ugt <4 x i16> %wide.load.1, splat (i16 324)
  %i.aw = icmp ugt <4 x i16> %wide.load94.1, splat (i16 324)
  %i.ax = zext <4 x i1> %i.av to <4 x i32>
  %i.ay = zext <4 x i1> %i.aw to <4 x i32>
  %i.az = or <4 x i32> %i.aq, %i.ax               ; 2 uses
  %i.ba = or <4 x i32> %i.ar, %i.ay               ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.bb = icmp eq i64 %index.next.1, 256
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.ba, %i.az
  %i.bc = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %i.bd = icmp ult i32 %i.ai, %1
  br i1 %i.bd, label %.lr.ph70.preheader, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv74 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next75.3, %.lr.ph ] ; 5 uses
  %niter104 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter104.next.3, %.lr.ph ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv74
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !9
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bg ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !29
  %i.bj = add i16 %i.bi, 1
  store i16 %i.bj, ptr %i.bh, align 2, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv74
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bn ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !29
  %i.bq = add i16 %i.bp, 1
  store i16 %i.bq, ptr %i.bo, align 2, !tbaa !29
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv74
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bu ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !29
  %i.bx = add i16 %i.bw, 1
  store i16 %i.bx, ptr %i.bv, align 2, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv74
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 3
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
  %wide.trip.count86 = zext i32 %i.cm to i64
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
  %exitcond86.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
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
  %i.d = icmp ne i32 %2, 0                        ; 2 uses
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
  %spec.select = select i1 %i.d, i32 36, i32 52   ; 5 uses
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
end_hunk_0
