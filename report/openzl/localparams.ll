Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/localparams?download=true
begin_hunk_0_@ZL_LocalParams_hash:bb.a
  %.not33.i24.1 = icmp sgt i32 %i.db, %.129.i27
  %or.cond34.i25.1 = select i1 %.not32.i23.1, i1 true, i1 %.not33.i24.1 ; 2 uses
  %i.dc = icmp sge i32 %i.db, %.129.i27
  %i.dd = icmp ne ptr %.2.i28, null
  %or.cond.not.i26.1 = select i1 %i.dc, i1 %i.dd, i1 false
  %.129.i27.1 = select i1 %or.cond34.i25.1, i32 %.129.i27, i32 %i.db ; 3 uses
  %i.de = select i1 %or.cond34.i25.1, i1 true, i1 %or.cond.not.i26.1
  %.2.i28.1 = select i1 %i.de, ptr %.2.i28, ptr %i.da ; 3 uses
  %i.df = add nuw i64 %.03037.i22, 2              ; 2 uses
  %niter68.next.1 = add i64 %niter68, 2           ; 2 uses
  %niter68.ncmp.1 = icmp eq i64 %niter68.next.1, %unroll_iter67
  br i1 %niter68.ncmp.1, label %._crit_edge.i30.unr-lcssa, label %bb.l, !llvm.loop !4

bb.m:                                             ; preds = %._crit_edge.i30
  call fastcc void @XXH3_update_regular(ptr noundef nonnull captures(address) %1, ptr noundef nonnull captures(address) %.2.i28.lcssa, i64 noundef 4)
  %i.dg = getelementptr inbounds nuw i8, ptr %.2.i28.lcssa, i64 8
  call fastcc void @XXH3_update_regular(ptr noundef nonnull captures(address) %1, ptr noundef nonnull captures(address) %i.dg, i64 noundef 8)
  %i.dh = add i64 %i.cl, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i30
  %i.di = phi i64 [ %i.dh, %bb.m ], [ %i.cl, %._crit_edge.i30 ] ; 2 uses
  %i.dj = icmp eq i32 %.129.i27.lcssa, 2147483647
  br i1 %i.dj, label %.loopexit.i32, label %.preheader.i16thread-pre-split

.loopexit.i32:                                    ; preds = %bb.n, %.preheader.i16thread-pre-split
  store i64 %i.di, ptr %i.a, align 8
  br label %ZL_LocalRefParams_hash_inner.exit

ZL_LocalRefParams_hash_inner.exit:                ; preds = %ZL_LocalCopyParams_hash_inner.exit, %bb.k, %.loopexit.i32
  call fastcc void @XXH3_update_regular(ptr noundef nonnull captures(address) %1, ptr noundef nonnull captures(address) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.dk = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr noundef captures(address) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %ZL_LocalRefParams_hash_inner.exit
  %.0 = phi i64 [ %i.dk, %ZL_LocalRefParams_hash_inner.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @ZL_LocalIntParams_eq(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %.preheader82

.preheader82:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 9 uses
  %.not = icmp eq i64 %i.d, 0                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 9 uses
  %.not126 = icmp eq i64 %i.f, 0
  br i1 %.not126, label %.preheader82.split, label %.preheader82.split.us

.preheader82.split.us:                            ; preds = %.preheader82
  %i.g = load ptr, ptr %1, align 8, !tbaa !21     ; 6 uses
  br i1 %.not, label %.preheader.us.preheader, label %.preheader82.split.us.split.us

.preheader.us.preheader:                          ; preds = %.preheader82.split.us
  %xtraiter173 = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.f, 1
  br i1 %i.h, label %.preheader.us.epil.preheader, label %.preheader.us.preheader.new

.preheader.us.preheader.new:                      ; preds = %.preheader.us.preheader
  %unroll_iter177 = and i64 %i.f, -2
  br label %.preheader.us

.preheader82.split.us.split.us:                   ; preds = %.preheader82.split.us
  %i.i = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %xtraiter = and i64 %i.d, 1
  %i.j = icmp eq i64 %i.d, 1
  %unroll_iter = and i64 %i.d, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod164 = trunc i64 %i.d to i1
  %xtraiter165 = and i64 %i.f, 1
  %i.k = icmp eq i64 %i.f, 1
  %unroll_iter171 = and i64 %i.f, -2
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  %lcmp.mod170 = trunc i64 %i.f to i1
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %2, %.preheader82.split.us.split.us
  %.060.us.us = phi i32 [ %8, %2 ], [ -2147483648, %.preheader82.split.us.split.us ] ; 6 uses
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %.05187.us.us = phi i64 [ %i.w, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.05286.us.us = phi i32 [ %.1.us.us.1, %.lr.ph.us.us.new ], [ 2147483647, %.lr.ph.us.us ] ; 3 uses
  %.05685.us.us = phi ptr [ %.258.us.us.1, %.lr.ph.us.us.new ], [ null, %.lr.ph.us.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.05187.us.us ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31   ; 4 uses
  %.not72.us.us = icmp slt i32 %i.m, %.060.us.us
  %.not73.us.us = icmp sgt i32 %i.m, %.05286.us.us
  %or.cond74.us.us = select i1 %.not72.us.us, i1 true, i1 %.not73.us.us ; 2 uses
  %i.n = icmp eq i32 %.05286.us.us, %i.m
  %i.o = icmp ne ptr %.05685.us.us, null
  %or.cond3.not.us.us = select i1 %i.n, i1 %i.o, i1 false
  %i.p = select i1 %or.cond74.us.us, i1 true, i1 %or.cond3.not.us.us
  %.258.us.us = select i1 %i.p, ptr %.05685.us.us, ptr %i.l ; 2 uses
  %.1.us.us = select i1 %or.cond74.us.us, i32 %.05286.us.us, i32 %i.m ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.05187.us.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !31   ; 4 uses
  %.not72.us.us.1 = icmp slt i32 %i.s, %.060.us.us
  %.not73.us.us.1 = icmp sgt i32 %i.s, %.1.us.us
  %or.cond74.us.us.1 = select i1 %.not72.us.us.1, i1 true, i1 %.not73.us.us.1 ; 2 uses
  %i.t = icmp eq i32 %.1.us.us, %i.s
  %i.u = icmp ne ptr %.258.us.us, null
  %or.cond3.not.us.us.1 = select i1 %i.t, i1 %i.u, i1 false
  %i.v = select i1 %or.cond74.us.us.1, i1 true, i1 %or.cond3.not.us.us.1
  %.258.us.us.1 = select i1 %i.v, ptr %.258.us.us, ptr %i.r ; 3 uses
  %.1.us.us.1 = select i1 %or.cond74.us.us.1, i32 %.1.us.us, i32 %i.s ; 3 uses
  %i.w = add nuw i64 %.05187.us.us, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !79

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.lr.ph.us.us
  %.05187.us.us.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %i.w, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  %.05286.us.us.epil.init = phi i32 [ 2147483647, %.lr.ph.us.us ], [ %.1.us.us.1, %..preheader_crit_edge.us.us.preheader.unr-lcssa ] ; 3 uses
  %.05685.us.us.epil.init = phi ptr [ null, %.lr.ph.us.us ], [ %.258.us.us.1, %..preheader_crit_edge.us.us.preheader.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod164)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.05187.us.us.epil.init ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !31   ; 4 uses
  %.not72.us.us.epil = icmp slt i32 %i.y, %.060.us.us
  %.not73.us.us.epil = icmp sgt i32 %i.y, %.05286.us.us.epil.init
  %or.cond74.us.us.epil = select i1 %.not72.us.us.epil, i1 true, i1 %.not73.us.us.epil ; 2 uses
  %i.z = icmp eq i32 %.05286.us.us.epil.init, %i.y
  %i.aa = icmp ne ptr %.05685.us.us.epil.init, null
  %or.cond3.not.us.us.epil = select i1 %i.z, i1 %i.aa, i1 false
  %i.ab = select i1 %or.cond74.us.us.epil, i1 true, i1 %or.cond3.not.us.us.epil
  %.258.us.us.epil = select i1 %i.ab, ptr %.05685.us.us.epil.init, ptr %i.x
  %.1.us.us.epil = select i1 %or.cond74.us.us.epil, i32 %.05286.us.us.epil.init, i32 %i.y
  br label %..preheader_crit_edge.us.us.preheader

..preheader_crit_edge.us.us.preheader:            ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.epil.preheader
  %.258.us.us.lcssa = phi ptr [ %.258.us.us.1, %..preheader_crit_edge.us.us.preheader.unr-lcssa ], [ %.258.us.us.epil, %.epil.preheader ] ; 2 uses
  %.1.us.us.lcssa = phi i32 [ %.1.us.us.1, %..preheader_crit_edge.us.us.preheader.unr-lcssa ], [ %.1.us.us.epil, %.epil.preheader ] ; 2 uses
  br i1 %i.k, label %..preheader_crit_edge.us.us.epil.preheader, label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %bb.d
  %.05092.us.us = phi i64 [ %i.al, %bb.d ], [ 0, %..preheader_crit_edge.us.us.preheader ] ; 3 uses
  %.291.us.us = phi i32 [ %.3.us.us.1, %bb.d ], [ %.1.us.us.lcssa, %..preheader_crit_edge.us.us.preheader ] ; 4 uses
  %.05390.us.us = phi ptr [ %.255.us.us.1, %bb.d ], [ null, %..preheader_crit_edge.us.us.preheader ] ; 3 uses
  %.35989.us.us = phi ptr [ %.5.us.us.1, %bb.d ], [ %.258.us.us.lcssa, %..preheader_crit_edge.us.us.preheader ] ; 2 uses
  %niter172 = phi i64 [ %niter172.next.1, %bb.d ], [ 0, %..preheader_crit_edge.us.us.preheader ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.05092.us.us ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !31 ; 5 uses
  %.not69.us.us = icmp slt i32 %i.ad, %.060.us.us
  %.not70.us.us = icmp sgt i32 %i.ad, %.291.us.us
  %or.cond75.us.us = select i1 %.not69.us.us, i1 true, i1 %.not70.us.us
  br i1 %or.cond75.us.us, label %..preheader_crit_edge.us.us.1, label %bb.b

bb.b:                                             ; preds = %..preheader_crit_edge.us.us
  %.not71.us.us = icmp eq i32 %.291.us.us, %i.ad
  %spec.select76.us.us = select i1 %.not71.us.us, ptr %.35989.us.us, ptr null
  %i.ae = icmp ne i32 %.291.us.us, %i.ad
  %i.af = icmp eq ptr %.05390.us.us, null
  %or.cond5.us.us = select i1 %i.ae, i1 true, i1 %i.af
  %.154.us.us = select i1 %or.cond5.us.us, ptr %i.ac, ptr %.05390.us.us
  br label %..preheader_crit_edge.us.us.1

..preheader_crit_edge.us.us.1:                    ; preds = %bb.b, %..preheader_crit_edge.us.us
  %.5.us.us = phi ptr [ %spec.select76.us.us, %bb.b ], [ %.35989.us.us, %..preheader_crit_edge.us.us ] ; 2 uses
  %.255.us.us = phi ptr [ %.154.us.us, %bb.b ], [ %.05390.us.us, %..preheader_crit_edge.us.us ] ; 3 uses
  %.3.us.us = phi i32 [ %i.ad, %bb.b ], [ %.291.us.us, %..preheader_crit_edge.us.us ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.05092.us.us
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !31 ; 5 uses
  %.not69.us.us.1 = icmp slt i32 %i.ai, %.060.us.us
  %.not70.us.us.1 = icmp sgt i32 %i.ai, %.3.us.us
  %or.cond75.us.us.1 = select i1 %.not69.us.us.1, i1 true, i1 %.not70.us.us.1
  br i1 %or.cond75.us.us.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %..preheader_crit_edge.us.us.1
  %.not71.us.us.1 = icmp eq i32 %.3.us.us, %i.ai
  %spec.select76.us.us.1 = select i1 %.not71.us.us.1, ptr %.5.us.us, ptr null
  %i.aj = icmp ne i32 %.3.us.us, %i.ai
  %i.ak = icmp eq ptr %.255.us.us, null
  %or.cond5.us.us.1 = select i1 %i.aj, i1 true, i1 %i.ak
  %.154.us.us.1 = select i1 %or.cond5.us.us.1, ptr %i.ah, ptr %.255.us.us
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %..preheader_crit_edge.us.us.1
  %.5.us.us.1 = phi ptr [ %spec.select76.us.us.1, %bb.c ], [ %.5.us.us, %..preheader_crit_edge.us.us.1 ] ; 3 uses
  %.255.us.us.1 = phi ptr [ %.154.us.us.1, %bb.c ], [ %.255.us.us, %..preheader_crit_edge.us.us.1 ] ; 3 uses
  %.3.us.us.1 = phi i32 [ %i.ai, %bb.c ], [ %.3.us.us, %..preheader_crit_edge.us.us.1 ] ; 3 uses
  %i.al = add nuw i64 %.05092.us.us, 2            ; 2 uses
  %niter172.next.1 = add nuw i64 %niter172, 2     ; 2 uses
  %niter172.ncmp.1 = icmp eq i64 %niter172.next.1, %unroll_iter171
  br i1 %niter172.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %..preheader_crit_edge.us.us, !llvm.loop !80

2:                                                ; preds = %._crit_edge.us.us
  %3 = getelementptr inbounds nuw i8, ptr %.5.us.us.lcssa, i64 4
  %4 = load i32, ptr %3, align 4, !tbaa !81
  %5 = getelementptr inbounds nuw i8, ptr %.255.us.us.lcssa, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !81
  %.not.us.us = icmp eq i32 %4, %6                ; 2 uses
  %7 = icmp ne i32 %.3.us.us.lcssa, 2147483647
  %8 = add nsw i32 %.3.us.us.lcssa, 1
  %or.cond156.not = select i1 %.not.us.us, i1 %7, i1 false
  br i1 %or.cond156.not, label %.lr.ph.us.us, label %.thread

._crit_edge.us.us.unr-lcssa:                      ; preds = %bb.d
  br i1 %lcmp.mod166.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us.epil.preheader

..preheader_crit_edge.us.us.epil.preheader:       ; preds = %._crit_edge.us.us.unr-lcssa, %..preheader_crit_edge.us.us.preheader
  %.05092.us.us.epil.init = phi i64 [ 0, %..preheader_crit_edge.us.us.preheader ], [ %i.al, %._crit_edge.us.us.unr-lcssa ]
  %.291.us.us.epil.init = phi i32 [ %.1.us.us.lcssa, %..preheader_crit_edge.us.us.preheader ], [ %.3.us.us.1, %._crit_edge.us.us.unr-lcssa ] ; 4 uses
  %.05390.us.us.epil.init = phi ptr [ null, %..preheader_crit_edge.us.us.preheader ], [ %.255.us.us.1, %._crit_edge.us.us.unr-lcssa ] ; 3 uses
  %.35989.us.us.epil.init = phi ptr [ %.258.us.us.lcssa, %..preheader_crit_edge.us.us.preheader ], [ %.5.us.us.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod170)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.05092.us.us.epil.init ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !31 ; 5 uses
  %.not69.us.us.epil = icmp slt i32 %i.an, %.060.us.us
  %.not70.us.us.epil = icmp sgt i32 %i.an, %.291.us.us.epil.init
  %or.cond75.us.us.epil = select i1 %.not69.us.us.epil, i1 true, i1 %.not70.us.us.epil
  br i1 %or.cond75.us.us.epil, label %._crit_edge.us.us, label %bb.e

bb.e:                                             ; preds = %..preheader_crit_edge.us.us.epil.preheader
  %.not71.us.us.epil = icmp eq i32 %.291.us.us.epil.init, %i.an
  %spec.select76.us.us.epil = select i1 %.not71.us.us.epil, ptr %.35989.us.us.epil.init, ptr null
  %i.ao = icmp ne i32 %.291.us.us.epil.init, %i.an
  %i.ap = icmp eq ptr %.05390.us.us.epil.init, null
  %or.cond5.us.us.epil = select i1 %i.ao, i1 true, i1 %i.ap
  %.154.us.us.epil = select i1 %or.cond5.us.us.epil, ptr %i.am, ptr %.05390.us.us.epil.init
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %..preheader_crit_edge.us.us.epil.preheader, %bb.e, %._crit_edge.us.us.unr-lcssa
  %.5.us.us.lcssa = phi ptr [ %.5.us.us.1, %._crit_edge.us.us.unr-lcssa ], [ %spec.select76.us.us.epil, %bb.e ], [ %.35989.us.us.epil.init, %..preheader_crit_edge.us.us.epil.preheader ] ; 3 uses
  %.255.us.us.lcssa = phi ptr [ %.255.us.us.1, %._crit_edge.us.us.unr-lcssa ], [ %.154.us.us.epil, %bb.e ], [ %.05390.us.us.epil.init, %..preheader_crit_edge.us.us.epil.preheader ] ; 3 uses
  %.3.us.us.lcssa = phi i32 [ %.3.us.us.1, %._crit_edge.us.us.unr-lcssa ], [ %i.an, %bb.e ], [ %.291.us.us.epil.init, %..preheader_crit_edge.us.us.epil.preheader ] ; 2 uses
  %i.aq = icmp eq ptr %.5.us.us.lcssa, null
  %i.ar = icmp eq ptr %.255.us.us.lcssa, null
  %or.cond7.us.us = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond7.us.us, label %.split.us, label %2

.preheader.us:                                    ; preds = %.preheader.us, %.preheader.us.preheader.new
  %.05092.us = phi i64 [ 0, %.preheader.us.preheader.new ], [ %i.bd, %.preheader.us ] ; 3 uses
  %.291.us = phi i32 [ 2147483647, %.preheader.us.preheader.new ], [ %.3.us.1, %.preheader.us ] ; 3 uses
  %.05390.us = phi ptr [ null, %.preheader.us.preheader.new ], [ %.255.us.1, %.preheader.us ] ; 2 uses
  %niter178 = phi i64 [ 0, %.preheader.us.preheader.new ], [ %niter178.next.1, %.preheader.us ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.05092.us ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !31 ; 3 uses
  %.not70.us = icmp sgt i32 %i.at, %.291.us
  %i.au = icmp eq i32 %.291.us, %i.at
  %i.av = icmp ne ptr %.05390.us, null
  %or.cond5.us.not = select i1 %i.au, i1 %i.av, i1 false
  %i.aw = select i1 %.not70.us, i1 true, i1 %or.cond5.us.not
  %.255.us = select i1 %i.aw, ptr %.05390.us, ptr %i.as ; 2 uses
  %.3.us = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %.291.us) ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.05092.us
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !31 ; 3 uses
  %.not70.us.1 = icmp sgt i32 %i.az, %.3.us
  %i.ba = icmp eq i32 %.3.us, %i.az
  %i.bb = icmp ne ptr %.255.us, null
  %or.cond5.us.not.1 = select i1 %i.ba, i1 %i.bb, i1 false
  %i.bc = select i1 %.not70.us.1, i1 true, i1 %or.cond5.us.not.1
  %.255.us.1 = select i1 %i.bc, ptr %.255.us, ptr %i.ay ; 3 uses
  %.3.us.1 = tail call i32 @llvm.smin.i32(i32 %i.az, i32 %.3.us) ; 2 uses
  %i.bd = add nuw i64 %.05092.us, 2               ; 2 uses
  %niter178.next.1 = add nuw i64 %niter178, 2     ; 2 uses
  %niter178.ncmp.1 = icmp eq i64 %niter178.next.1, %unroll_iter177
  br i1 %niter178.ncmp.1, label %.split.us.loopexit158.unr-lcssa, label %.preheader.us, !llvm.loop !80

.preheader82.split:                               ; preds = %.preheader82
  br i1 %.not, label %.split.us, label %.preheader82.split.split.us

.preheader82.split.split.us:                      ; preds = %.preheader82.split
  %i.be = load ptr, ptr %0, align 8, !tbaa !21    ; 3 uses
  %xtraiter180 = and i64 %i.d, 1
  %i.bf = icmp eq i64 %i.d, 1
  br i1 %i.bf, label %.epil.preheader179, label %.preheader82.split.split.us.new

.preheader82.split.split.us.new:                  ; preds = %.preheader82.split.split.us
  %unroll_iter184 = and i64 %i.d, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader82.split.split.us.new
  %.05187.us100 = phi i64 [ 0, %.preheader82.split.split.us.new ], [ %i.br, %bb.f ] ; 3 uses
  %.05286.us101 = phi i32 [ 2147483647, %.preheader82.split.split.us.new ], [ %.1.us108.1, %bb.f ] ; 3 uses
  %.05685.us102 = phi ptr [ null, %.preheader82.split.split.us.new ], [ %.258.us107.1, %bb.f ] ; 2 uses
  %niter185 = phi i64 [ 0, %.preheader82.split.split.us.new ], [ %niter185.next.1, %bb.f ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.05187.us100 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !31 ; 3 uses
  %.not73.us104 = icmp sgt i32 %i.bh, %.05286.us101
  %i.bi = icmp eq i32 %.05286.us101, %i.bh
  %i.bj = icmp ne ptr %.05685.us102, null
  %or.cond3.not.us106 = select i1 %i.bi, i1 %i.bj, i1 false
  %i.bk = select i1 %.not73.us104, i1 true, i1 %or.cond3.not.us106
  %.258.us107 = select i1 %i.bk, ptr %.05685.us102, ptr %i.bg ; 2 uses
  %.1.us108 = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %.05286.us101) ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.05187.us100
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !31 ; 3 uses
  %.not73.us104.1 = icmp sgt i32 %i.bn, %.1.us108
  %i.bo = icmp eq i32 %.1.us108, %i.bn
  %i.bp = icmp ne ptr %.258.us107, null
  %or.cond3.not.us106.1 = select i1 %i.bo, i1 %i.bp, i1 false
  %i.bq = select i1 %.not73.us104.1, i1 true, i1 %or.cond3.not.us106.1
  %.258.us107.1 = select i1 %i.bq, ptr %.258.us107, ptr %i.bm ; 3 uses
  %.1.us108.1 = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 %.1.us108) ; 2 uses
  %i.br = add nuw i64 %.05187.us100, 2            ; 2 uses
  %niter185.next.1 = add nuw i64 %niter185, 2     ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %.split.us.loopexit.unr-lcssa, label %bb.f, !llvm.loop !79

bb.g:                                             ; preds = %bb.a
  %i.bs = icmp eq ptr %0, %1
  br label %.thread

.split.us.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.split.us, label %.epil.preheader179

.epil.preheader179:                               ; preds = %.split.us.loopexit.unr-lcssa, %.preheader82.split.split.us
  %.05187.us100.epil.init = phi i64 [ 0, %.preheader82.split.split.us ], [ %i.br, %.split.us.loopexit.unr-lcssa ]
  %.05286.us101.epil.init = phi i32 [ 2147483647, %.preheader82.split.split.us ], [ %.1.us108.1, %.split.us.loopexit.unr-lcssa ] ; 2 uses
  %.05685.us102.epil.init = phi ptr [ null, %.preheader82.split.split.us ], [ %.258.us107.1, %.split.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod183 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.05187.us100.epil.init ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !31 ; 2 uses
  %.not73.us104.epil = icmp sgt i32 %i.bu, %.05286.us101.epil.init
  %i.bv = icmp eq i32 %.05286.us101.epil.init, %i.bu
  %i.bw = icmp ne ptr %.05685.us102.epil.init, null
  %or.cond3.not.us106.epil = select i1 %i.bv, i1 %i.bw, i1 false
  %i.bx = select i1 %.not73.us104.epil, i1 true, i1 %or.cond3.not.us106.epil
  %.258.us107.epil = select i1 %i.bx, ptr %.05685.us102.epil.init, ptr %i.bt
  br label %.split.us

.split.us.loopexit158.unr-lcssa:                  ; preds = %.preheader.us
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %.split.us, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %.split.us.loopexit158.unr-lcssa, %.preheader.us.preheader
  %.05092.us.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %i.bd, %.split.us.loopexit158.unr-lcssa ]
  %.291.us.epil.init = phi i32 [ 2147483647, %.preheader.us.preheader ], [ %.3.us.1, %.split.us.loopexit158.unr-lcssa ] ; 2 uses
  %.05390.us.epil.init = phi ptr [ null, %.preheader.us.preheader ], [ %.255.us.1, %.split.us.loopexit158.unr-lcssa ] ; 2 uses
  %lcmp.mod176 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod176)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.05092.us.epil.init ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !31 ; 2 uses
  %.not70.us.epil = icmp sgt i32 %i.bz, %.291.us.epil.init
  %i.ca = icmp eq i32 %.291.us.epil.init, %i.bz
  %i.cb = icmp ne ptr %.05390.us.epil.init, null
  %or.cond5.us.not.epil = select i1 %i.ca, i1 %i.cb, i1 false
  %i.cc = select i1 %.not70.us.epil, i1 true, i1 %or.cond5.us.not.epil
  %.255.us.epil = select i1 %i.cc, ptr %.05390.us.epil.init, ptr %i.by
  br label %.split.us

.split.us:                                        ; preds = %._crit_edge.us.us, %.preheader.us.epil.preheader, %.split.us.loopexit158.unr-lcssa, %.epil.preheader179, %.split.us.loopexit.unr-lcssa, %.preheader82.split
  %.us-phi = phi ptr [ null, %.preheader.us.epil.preheader ], [ %.258.us107.epil, %.epil.preheader179 ], [ null, %.preheader82.split ], [ %.258.us107.1, %.split.us.loopexit.unr-lcssa ], [ null, %.split.us.loopexit158.unr-lcssa ], [ %.5.us.us.lcssa, %._crit_edge.us.us ]
  %.us-phi97 = phi ptr [ %.255.us.epil, %.preheader.us.epil.preheader ], [ null, %.epil.preheader179 ], [ null, %.preheader82.split ], [ null, %.split.us.loopexit.unr-lcssa ], [ %.255.us.1, %.split.us.loopexit158.unr-lcssa ], [ %.255.us.us.lcssa, %._crit_edge.us.us ]
  %i.cd = icmp eq ptr %.us-phi, %.us-phi97
  br label %.thread

.thread:                                          ; preds = %2, %.split.us, %bb.g
  %.264 = phi i1 [ %i.bs, %bb.g ], [ %i.cd, %.split.us ], [ %.not.us.us, %2 ]
  ret i1 %.264
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @ZL_LocalCopyParams_eq(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.k, label %.preheader100

.preheader100:                                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 9 uses
  %.not = icmp eq i64 %i.d, 0                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 6 uses
  %.not148 = icmp eq i64 %i.f, 0
  br i1 %.not148, label %.preheader100.split, label %.preheader100.split.us

.preheader100.split.us:                           ; preds = %.preheader100
  %i.g = load ptr, ptr %1, align 8, !tbaa !21     ; 4 uses
  br i1 %.not, label %.preheader.us.preheader, label %.preheader100.split.us.split.us

.preheader.us.preheader:                          ; preds = %.preheader100.split.us
  %xtraiter196 = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.f, 1
  br i1 %i.h, label %.preheader.us.epil.preheader, label %.preheader.us.preheader.new

.preheader.us.preheader.new:                      ; preds = %.preheader.us.preheader
  %unroll_iter200 = and i64 %i.f, -2
  br label %.preheader.us

.preheader100.split.us.split.us:                  ; preds = %.preheader100.split.us
  %i.i = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %xtraiter = and i64 %i.d, 1
  %i.j = icmp eq i64 %i.d, 1
  %unroll_iter = and i64 %i.d, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod195 = trunc i64 %i.d to i1
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %bb.i, %.preheader100.split.us.split.us
  %.069.us.us = phi i32 [ %i.ar, %bb.i ], [ -2147483648, %.preheader100.split.us.split.us ] ; 4 uses
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %.060105.us.us = phi i64 [ %i.v, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.061104.us.us = phi i32 [ %.1.us.us.1, %.lr.ph.us.us.new ], [ 2147483647, %.lr.ph.us.us ] ; 3 uses
  %.065103.us.us = phi ptr [ %.267.us.us.1, %.lr.ph.us.us.new ], [ null, %.lr.ph.us.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.060105.us.us ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !25   ; 4 uses
  %.not88.us.us = icmp slt i32 %i.l, %.069.us.us
  %.not89.us.us = icmp sgt i32 %i.l, %.061104.us.us
  %or.cond90.us.us = select i1 %.not88.us.us, i1 true, i1 %.not89.us.us ; 2 uses
  %i.m = icmp eq i32 %.061104.us.us, %i.l
  %i.n = icmp ne ptr %.065103.us.us, null
  %or.cond3.not.us.us = select i1 %i.m, i1 %i.n, i1 false
  %i.o = select i1 %or.cond90.us.us, i1 true, i1 %or.cond3.not.us.us
  %.267.us.us = select i1 %i.o, ptr %.065103.us.us, ptr %i.k ; 2 uses
  %.1.us.us = select i1 %or.cond90.us.us, i32 %.061104.us.us, i32 %i.l ; 3 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.060105.us.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25   ; 4 uses
  %.not88.us.us.1 = icmp slt i32 %i.r, %.069.us.us
  %.not89.us.us.1 = icmp sgt i32 %i.r, %.1.us.us
  %or.cond90.us.us.1 = select i1 %.not88.us.us.1, i1 true, i1 %.not89.us.us.1 ; 2 uses
  %i.s = icmp eq i32 %.1.us.us, %i.r
  %i.t = icmp ne ptr %.267.us.us, null
  %or.cond3.not.us.us.1 = select i1 %i.s, i1 %i.t, i1 false
  %i.u = select i1 %or.cond90.us.us.1, i1 true, i1 %or.cond3.not.us.us.1
  %.267.us.us.1 = select i1 %i.u, ptr %.267.us.us, ptr %i.q ; 3 uses
  %.1.us.us.1 = select i1 %or.cond90.us.us.1, i32 %.1.us.us, i32 %i.r ; 3 uses
  %i.v = add nuw i64 %.060105.us.us, 2            ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !82

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.lr.ph.us.us
  %.060105.us.us.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %i.v, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  %.061104.us.us.epil.init = phi i32 [ 2147483647, %.lr.ph.us.us ], [ %.1.us.us.1, %..preheader_crit_edge.us.us.preheader.unr-lcssa ] ; 3 uses
  %.065103.us.us.epil.init = phi ptr [ null, %.lr.ph.us.us ], [ %.267.us.us.1, %..preheader_crit_edge.us.us.preheader.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod195)
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.060105.us.us.epil.init ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !25   ; 4 uses
  %.not88.us.us.epil = icmp slt i32 %i.x, %.069.us.us
  %.not89.us.us.epil = icmp sgt i32 %i.x, %.061104.us.us.epil.init
  %or.cond90.us.us.epil = select i1 %.not88.us.us.epil, i1 true, i1 %.not89.us.us.epil ; 2 uses
  %i.y = icmp eq i32 %.061104.us.us.epil.init, %i.x
  %i.z = icmp ne ptr %.065103.us.us.epil.init, null
  %or.cond3.not.us.us.epil = select i1 %i.y, i1 %i.z, i1 false
  %i.aa = select i1 %or.cond90.us.us.epil, i1 true, i1 %or.cond3.not.us.us.epil
  %.267.us.us.epil = select i1 %i.aa, ptr %.065103.us.us.epil.init, ptr %i.w
  %.1.us.us.epil = select i1 %or.cond90.us.us.epil, i32 %.061104.us.us.epil.init, i32 %i.x
  br label %..preheader_crit_edge.us.us.preheader

..preheader_crit_edge.us.us.preheader:            ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.epil.preheader
  %.267.us.us.lcssa = phi ptr [ %.267.us.us.1, %..preheader_crit_edge.us.us.preheader.unr-lcssa ], [ %.267.us.us.epil, %.epil.preheader ]
  %.1.us.us.lcssa = phi i32 [ %.1.us.us.1, %..preheader_crit_edge.us.us.preheader.unr-lcssa ], [ %.1.us.us.epil, %.epil.preheader ]
  br label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %bb.c
  %.059110.us.us = phi i64 [ %i.af, %bb.c ], [ 0, %..preheader_crit_edge.us.us.preheader ] ; 2 uses
  %.2109.us.us = phi i32 [ %.3.us.us, %bb.c ], [ %.1.us.us.lcssa, %..preheader_crit_edge.us.us.preheader ] ; 4 uses
  %.062108.us.us = phi ptr [ %.264.us.us, %bb.c ], [ null, %..preheader_crit_edge.us.us.preheader ] ; 3 uses
  %.368107.us.us = phi ptr [ %.5.us.us, %bb.c ], [ %.267.us.us.lcssa, %..preheader_crit_edge.us.us.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.059110.us.us ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !25 ; 5 uses
  %.not85.us.us = icmp slt i32 %i.ac, %.069.us.us
  %.not86.us.us = icmp sgt i32 %i.ac, %.2109.us.us
  %or.cond91.us.us = select i1 %.not85.us.us, i1 true, i1 %.not86.us.us
  br i1 %or.cond91.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %..preheader_crit_edge.us.us
  %.not87.us.us = icmp eq i32 %.2109.us.us, %i.ac
  %spec.select92.us.us = select i1 %.not87.us.us, ptr %.368107.us.us, ptr null
  %i.ad = icmp ne i32 %.2109.us.us, %i.ac
  %i.ae = icmp eq ptr %.062108.us.us, null
  %or.cond5.us.us = select i1 %i.ad, i1 true, i1 %i.ae
  %.163.us.us = select i1 %or.cond5.us.us, ptr %i.ab, ptr %.062108.us.us
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %..preheader_crit_edge.us.us
  %.5.us.us = phi ptr [ %spec.select92.us.us, %bb.b ], [ %.368107.us.us, %..preheader_crit_edge.us.us ] ; 5 uses
  %.264.us.us = phi ptr [ %.163.us.us, %bb.b ], [ %.062108.us.us, %..preheader_crit_edge.us.us ] ; 5 uses
  %.3.us.us = phi i32 [ %i.ac, %bb.b ], [ %.2109.us.us, %..preheader_crit_edge.us.us ] ; 3 uses
  %i.af = add nuw i64 %.059110.us.us, 1           ; 2 uses
  %exitcond157.not = icmp eq i64 %i.af, %i.f
  br i1 %exitcond157.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us, !llvm.loop !83

bb.d:                                             ; preds = %._crit_edge.us.us
  %i.ag = getelementptr inbounds nuw i8, ptr %.5.us.us, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !23 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.264.us.us, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !23
  %.not.us.us = icmp eq i64 %i.ah, %i.aj
  br i1 %.not.us.us, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.5.us.us, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.264.us.us, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !24 ; 3 uses
  br i1 %i.am, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = icmp eq ptr %.pre, null
  br i1 %i.an, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %bcmp.us.us = tail call i32 @bcmp(ptr nonnull %i.al, ptr nonnull %.pre, i64 %i.ah)
  %.not81.us.us = icmp eq i32 %bcmp.us.us, 0
  br i1 %.not81.us.us, label %bb.i, label %.thread

bb.h:                                             ; preds = %bb.e
  %i.ao = icmp eq ptr %i.al, %.pre
  %i.ap = icmp eq i64 %i.ah, 0
  %or.cond97.us.us = and i1 %i.ap, %i.ao
  br i1 %or.cond97.us.us, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aq = icmp eq i32 %.3.us.us, 2147483647
  %i.ar = add nsw i32 %.3.us.us, 1
  br i1 %i.aq, label %.thread, label %.lr.ph.us.us

._crit_edge.us.us:                                ; preds = %bb.c
  %2 = icmp eq ptr %.5.us.us, null
  %3 = icmp eq ptr %.264.us.us, null
  %or.cond7.us.us = select i1 %2, i1 true, i1 %3
  br i1 %or.cond7.us.us, label %.split.us, label %bb.d

.preheader.us:                                    ; preds = %.preheader.us, %.preheader.us.preheader.new
  %.059110.us = phi i64 [ 0, %.preheader.us.preheader.new ], [ %i.bd, %.preheader.us ] ; 3 uses
  %.2109.us = phi i32 [ 2147483647, %.preheader.us.preheader.new ], [ %.3.us.1, %.preheader.us ] ; 3 uses
  %.062108.us = phi ptr [ null, %.preheader.us.preheader.new ], [ %.264.us.1, %.preheader.us ] ; 2 uses
  %niter201 = phi i64 [ 0, %.preheader.us.preheader.new ], [ %niter201.next.1, %.preheader.us ]
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.059110.us ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !25 ; 3 uses
  %.not86.us = icmp sgt i32 %i.at, %.2109.us
  %i.au = icmp eq i32 %.2109.us, %i.at
  %i.av = icmp ne ptr %.062108.us, null
  %or.cond5.us.not = select i1 %i.au, i1 %i.av, i1 false
  %i.aw = select i1 %.not86.us, i1 true, i1 %or.cond5.us.not
  %.264.us = select i1 %i.aw, ptr %.062108.us, ptr %i.as ; 2 uses
  %.3.us = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %.2109.us) ; 3 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.059110.us
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !25 ; 3 uses
  %.not86.us.1 = icmp sgt i32 %i.az, %.3.us
  %i.ba = icmp eq i32 %.3.us, %i.az
  %i.bb = icmp ne ptr %.264.us, null
  %or.cond5.us.not.1 = select i1 %i.ba, i1 %i.bb, i1 false
  %i.bc = select i1 %.not86.us.1, i1 true, i1 %or.cond5.us.not.1
  %.264.us.1 = select i1 %i.bc, ptr %.264.us, ptr %i.ay ; 3 uses
  %.3.us.1 = tail call i32 @llvm.smin.i32(i32 %i.az, i32 %.3.us) ; 2 uses
  %i.bd = add nuw i64 %.059110.us, 2              ; 2 uses
  %niter201.next.1 = add nuw i64 %niter201, 2     ; 2 uses
  %niter201.ncmp.1 = icmp eq i64 %niter201.next.1, %unroll_iter200
  br i1 %niter201.ncmp.1, label %.split.us.loopexit189.unr-lcssa, label %.preheader.us, !llvm.loop !83

.preheader100.split:                              ; preds = %.preheader100
  br i1 %.not, label %.split.us, label %.preheader100.split.split.us

.preheader100.split.split.us:                     ; preds = %.preheader100.split
  %i.be = load ptr, ptr %0, align 8, !tbaa !21    ; 3 uses
  %xtraiter203 = and i64 %i.d, 1
  %i.bf = icmp eq i64 %i.d, 1
  br i1 %i.bf, label %.epil.preheader202, label %.preheader100.split.split.us.new

.preheader100.split.split.us.new:                 ; preds = %.preheader100.split.split.us
  %unroll_iter207 = and i64 %i.d, -2
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader100.split.split.us.new
  %.060105.us118 = phi i64 [ 0, %.preheader100.split.split.us.new ], [ %i.br, %bb.j ] ; 3 uses
  %.061104.us119 = phi i32 [ 2147483647, %.preheader100.split.split.us.new ], [ %.1.us126.1, %bb.j ] ; 3 uses
  %.065103.us120 = phi ptr [ null, %.preheader100.split.split.us.new ], [ %.267.us125.1, %bb.j ] ; 2 uses
  %niter208 = phi i64 [ 0, %.preheader100.split.split.us.new ], [ %niter208.next.1, %bb.j ]
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %.060105.us118 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !25 ; 3 uses
  %.not89.us122 = icmp sgt i32 %i.bh, %.061104.us119
  %i.bi = icmp eq i32 %.061104.us119, %i.bh
  %i.bj = icmp ne ptr %.065103.us120, null
  %or.cond3.not.us124 = select i1 %i.bi, i1 %i.bj, i1 false
  %i.bk = select i1 %.not89.us122, i1 true, i1 %or.cond3.not.us124
  %.267.us125 = select i1 %i.bk, ptr %.065103.us120, ptr %i.bg ; 2 uses
  %.1.us126 = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %.061104.us119) ; 3 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %.060105.us118
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !25 ; 3 uses
  %.not89.us122.1 = icmp sgt i32 %i.bn, %.1.us126
  %i.bo = icmp eq i32 %.1.us126, %i.bn
  %i.bp = icmp ne ptr %.267.us125, null
  %or.cond3.not.us124.1 = select i1 %i.bo, i1 %i.bp, i1 false
  %i.bq = select i1 %.not89.us122.1, i1 true, i1 %or.cond3.not.us124.1
  %.267.us125.1 = select i1 %i.bq, ptr %.267.us125, ptr %i.bm ; 3 uses
  %.1.us126.1 = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 %.1.us126) ; 2 uses
  %i.br = add nuw i64 %.060105.us118, 2           ; 2 uses
  %niter208.next.1 = add nuw i64 %niter208, 2     ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %.split.us.loopexit.unr-lcssa, label %bb.j, !llvm.loop !82

bb.k:                                             ; preds = %bb.a
  %i.bs = icmp eq ptr %0, %1
  br label %.thread

.split.us.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod204.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod204.not, label %.split.us, label %.epil.preheader202

.epil.preheader202:                               ; preds = %.split.us.loopexit.unr-lcssa, %.preheader100.split.split.us
  %.060105.us118.epil.init = phi i64 [ 0, %.preheader100.split.split.us ], [ %i.br, %.split.us.loopexit.unr-lcssa ]
  %.061104.us119.epil.init = phi i32 [ 2147483647, %.preheader100.split.split.us ], [ %.1.us126.1, %.split.us.loopexit.unr-lcssa ] ; 2 uses
  %.065103.us120.epil.init = phi ptr [ null, %.preheader100.split.split.us ], [ %.267.us125.1, %.split.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod206 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %.060105.us118.epil.init ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !25 ; 2 uses
  %.not89.us122.epil = icmp sgt i32 %i.bu, %.061104.us119.epil.init
  %i.bv = icmp eq i32 %.061104.us119.epil.init, %i.bu
  %i.bw = icmp ne ptr %.065103.us120.epil.init, null
  %or.cond3.not.us124.epil = select i1 %i.bv, i1 %i.bw, i1 false
  %i.bx = select i1 %.not89.us122.epil, i1 true, i1 %or.cond3.not.us124.epil
  %.267.us125.epil = select i1 %i.bx, ptr %.065103.us120.epil.init, ptr %i.bt
  br label %.split.us

.split.us.loopexit189.unr-lcssa:                  ; preds = %.preheader.us
  %lcmp.mod197.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod197.not, label %.split.us, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %.split.us.loopexit189.unr-lcssa, %.preheader.us.preheader
  %.059110.us.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %i.bd, %.split.us.loopexit189.unr-lcssa ]
  %.2109.us.epil.init = phi i32 [ 2147483647, %.preheader.us.preheader ], [ %.3.us.1, %.split.us.loopexit189.unr-lcssa ] ; 2 uses
  %.062108.us.epil.init = phi ptr [ null, %.preheader.us.preheader ], [ %.264.us.1, %.split.us.loopexit189.unr-lcssa ] ; 2 uses
  %lcmp.mod199 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod199)
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.059110.us.epil.init ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !25 ; 2 uses
  %.not86.us.epil = icmp sgt i32 %i.bz, %.2109.us.epil.init
  %i.ca = icmp eq i32 %.2109.us.epil.init, %i.bz
  %i.cb = icmp ne ptr %.062108.us.epil.init, null
  %or.cond5.us.not.epil = select i1 %i.ca, i1 %i.cb, i1 false
  %i.cc = select i1 %.not86.us.epil, i1 true, i1 %or.cond5.us.not.epil
  %.264.us.epil = select i1 %i.cc, ptr %.062108.us.epil.init, ptr %i.by
  br label %.split.us

.split.us:                                        ; preds = %._crit_edge.us.us, %.preheader.us.epil.preheader, %.split.us.loopexit189.unr-lcssa, %.epil.preheader202, %.split.us.loopexit.unr-lcssa, %.preheader100.split
  %.us-phi = phi ptr [ null, %.preheader.us.epil.preheader ], [ %.267.us125.epil, %.epil.preheader202 ], [ null, %.preheader100.split ], [ %.267.us125.1, %.split.us.loopexit.unr-lcssa ], [ null, %.split.us.loopexit189.unr-lcssa ], [ %.5.us.us, %._crit_edge.us.us ]
  %.us-phi115 = phi ptr [ %.264.us.epil, %.preheader.us.epil.preheader ], [ null, %.epil.preheader202 ], [ null, %.preheader100.split ], [ null, %.split.us.loopexit.unr-lcssa ], [ %.264.us.1, %.split.us.loopexit189.unr-lcssa ], [ %.264.us.us, %._crit_edge.us.us ]
  %i.cd = icmp eq ptr %.us-phi, %.us-phi115
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.d, %bb.g, %bb.h, %bb.i, %.split.us, %bb.k
  %.273 = phi i1 [ %i.bs, %bb.k ], [ %i.cd, %.split.us ], [ false, %bb.f ], [ true, %bb.i ], [ false, %bb.d ], [ false, %bb.h ], [ false, %bb.g ]
  ret i1 %.273
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @ZL_LocalRefParams_eq(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.f, label %.preheader82

.preheader82:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 9 uses
  %.not = icmp eq i64 %i.d, 0                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 6 uses
  %.not126 = icmp eq i64 %i.f, 0
  br i1 %.not126, label %.preheader82.split, label %.preheader82.split.us

.preheader82.split.us:                            ; preds = %.preheader82
  %i.g = load ptr, ptr %1, align 8, !tbaa !21     ; 4 uses
  br i1 %.not, label %.preheader.us.preheader, label %.preheader82.split.us.split.us

.preheader.us.preheader:                          ; preds = %.preheader82.split.us
  %xtraiter165 = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.f, 1
  br i1 %i.h, label %.preheader.us.epil.preheader, label %.preheader.us.preheader.new

.preheader.us.preheader.new:                      ; preds = %.preheader.us.preheader
  %unroll_iter169 = and i64 %i.f, -2
  br label %.preheader.us

.preheader82.split.us.split.us:                   ; preds = %.preheader82.split.us
  %i.i = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %xtraiter = and i64 %i.d, 1
  %i.j = icmp eq i64 %i.d, 1
  %unroll_iter = and i64 %i.d, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod164 = trunc i64 %i.d to i1
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %bb.d, %.preheader82.split.us.split.us
  %.060.us.us = phi i32 [ %i.al, %bb.d ], [ -2147483648, %.preheader82.split.us.split.us ] ; 4 uses
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %.05187.us.us = phi i64 [ %i.v, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.05286.us.us = phi i32 [ %.1.us.us.1, %.lr.ph.us.us.new ], [ 2147483647, %.lr.ph.us.us ] ; 3 uses
  %.05685.us.us = phi ptr [ %.258.us.us.1, %.lr.ph.us.us.new ], [ null, %.lr.ph.us.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.05187.us.us ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !25   ; 4 uses
  %.not72.us.us = icmp slt i32 %i.l, %.060.us.us
  %.not73.us.us = icmp sgt i32 %i.l, %.05286.us.us
  %or.cond74.us.us = select i1 %.not72.us.us, i1 true, i1 %.not73.us.us ; 2 uses
  %i.m = icmp eq i32 %.05286.us.us, %i.l
  %i.n = icmp ne ptr %.05685.us.us, null
  %or.cond3.not.us.us = select i1 %i.m, i1 %i.n, i1 false
  %i.o = select i1 %or.cond74.us.us, i1 true, i1 %or.cond3.not.us.us
  %.258.us.us = select i1 %i.o, ptr %.05685.us.us, ptr %i.k ; 2 uses
  %.1.us.us = select i1 %or.cond74.us.us, i32 %.05286.us.us, i32 %i.l ; 3 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.05187.us.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25   ; 4 uses
  %.not72.us.us.1 = icmp slt i32 %i.r, %.060.us.us
  %.not73.us.us.1 = icmp sgt i32 %i.r, %.1.us.us
  %or.cond74.us.us.1 = select i1 %.not72.us.us.1, i1 true, i1 %.not73.us.us.1 ; 2 uses
  %i.s = icmp eq i32 %.1.us.us, %i.r
  %i.t = icmp ne ptr %.258.us.us, null
  %or.cond3.not.us.us.1 = select i1 %i.s, i1 %i.t, i1 false
  %i.u = select i1 %or.cond74.us.us.1, i1 true, i1 %or.cond3.not.us.us.1
  %.258.us.us.1 = select i1 %i.u, ptr %.258.us.us, ptr %i.q ; 3 uses
  %.1.us.us.1 = select i1 %or.cond74.us.us.1, i32 %.1.us.us, i32 %i.r ; 3 uses
  %i.v = add nuw i64 %.05187.us.us, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !84

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.lr.ph.us.us
  %.05187.us.us.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %i.v, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  %.05286.us.us.epil.init = phi i32 [ 2147483647, %.lr.ph.us.us ], [ %.1.us.us.1, %..preheader_crit_edge.us.us.preheader.unr-lcssa ] ; 3 uses
  %.05685.us.us.epil.init = phi ptr [ null, %.lr.ph.us.us ], [ %.258.us.us.1, %..preheader_crit_edge.us.us.preheader.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod164)
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.05187.us.us.epil.init ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !25   ; 4 uses
  %.not72.us.us.epil = icmp slt i32 %i.x, %.060.us.us
  %.not73.us.us.epil = icmp sgt i32 %i.x, %.05286.us.us.epil.init
  %or.cond74.us.us.epil = select i1 %.not72.us.us.epil, i1 true, i1 %.not73.us.us.epil ; 2 uses
  %i.y = icmp eq i32 %.05286.us.us.epil.init, %i.x
  %i.z = icmp ne ptr %.05685.us.us.epil.init, null
  %or.cond3.not.us.us.epil = select i1 %i.y, i1 %i.z, i1 false
  %i.aa = select i1 %or.cond74.us.us.epil, i1 true, i1 %or.cond3.not.us.us.epil
  %.258.us.us.epil = select i1 %i.aa, ptr %.05685.us.us.epil.init, ptr %i.w
  %.1.us.us.epil = select i1 %or.cond74.us.us.epil, i32 %.05286.us.us.epil.init, i32 %i.x
  br label %..preheader_crit_edge.us.us.preheader

..preheader_crit_edge.us.us.preheader:            ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.epil.preheader
  %.258.us.us.lcssa = phi ptr [ %.258.us.us.1, %..preheader_crit_edge.us.us.preheader.unr-lcssa ], [ %.258.us.us.epil, %.epil.preheader ]
  %.1.us.us.lcssa = phi i32 [ %.1.us.us.1, %..preheader_crit_edge.us.us.preheader.unr-lcssa ], [ %.1.us.us.epil, %.epil.preheader ]
  br label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %bb.c
  %.05092.us.us = phi i64 [ %i.af, %bb.c ], [ 0, %..preheader_crit_edge.us.us.preheader ] ; 2 uses
  %.291.us.us = phi i32 [ %.3.us.us, %bb.c ], [ %.1.us.us.lcssa, %..preheader_crit_edge.us.us.preheader ] ; 4 uses
  %.05390.us.us = phi ptr [ %.255.us.us, %bb.c ], [ null, %..preheader_crit_edge.us.us.preheader ] ; 3 uses
  %.35989.us.us = phi ptr [ %.5.us.us, %bb.c ], [ %.258.us.us.lcssa, %..preheader_crit_edge.us.us.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.05092.us.us ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !25 ; 5 uses
  %.not69.us.us = icmp slt i32 %i.ac, %.060.us.us
  %.not70.us.us = icmp sgt i32 %i.ac, %.291.us.us
  %or.cond75.us.us = select i1 %.not69.us.us, i1 true, i1 %.not70.us.us
  br i1 %or.cond75.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %..preheader_crit_edge.us.us
  %.not71.us.us = icmp eq i32 %.291.us.us, %i.ac
  %spec.select76.us.us = select i1 %.not71.us.us, ptr %.35989.us.us, ptr null
  %i.ad = icmp ne i32 %.291.us.us, %i.ac
  %i.ae = icmp eq ptr %.05390.us.us, null
  %or.cond5.us.us = select i1 %i.ad, i1 true, i1 %i.ae
  %.154.us.us = select i1 %or.cond5.us.us, ptr %i.ab, ptr %.05390.us.us
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %..preheader_crit_edge.us.us
  %.5.us.us = phi ptr [ %spec.select76.us.us, %bb.b ], [ %.35989.us.us, %..preheader_crit_edge.us.us ] ; 4 uses
  %.255.us.us = phi ptr [ %.154.us.us, %bb.b ], [ %.05390.us.us, %..preheader_crit_edge.us.us ] ; 4 uses
  %.3.us.us = phi i32 [ %i.ac, %bb.b ], [ %.291.us.us, %..preheader_crit_edge.us.us ] ; 3 uses
  %i.af = add nuw i64 %.05092.us.us, 1            ; 2 uses
  %exitcond135.not = icmp eq i64 %i.af, %i.f
  br i1 %exitcond135.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us, !llvm.loop !85

bb.d:                                             ; preds = %._crit_edge.us.us
  %i.ag = getelementptr inbounds nuw i8, ptr %.5.us.us, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %.255.us.us, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !24
  %.not.us.us = icmp eq ptr %i.ah, %i.aj          ; 2 uses
  %i.ak = icmp ne i32 %.3.us.us, 2147483647
  %i.al = add nsw i32 %.3.us.us, 1
  %or.cond156.not = select i1 %.not.us.us, i1 %i.ak, i1 false
  br i1 %or.cond156.not, label %.lr.ph.us.us, label %.thread

._crit_edge.us.us:                                ; preds = %bb.c
  %2 = icmp eq ptr %.5.us.us, null
  %3 = icmp eq ptr %.255.us.us, null
  %or.cond7.us.us = select i1 %2, i1 true, i1 %3
  br i1 %or.cond7.us.us, label %.split.us, label %bb.d

.preheader.us:                                    ; preds = %.preheader.us, %.preheader.us.preheader.new
  %.05092.us = phi i64 [ 0, %.preheader.us.preheader.new ], [ %i.ax, %.preheader.us ] ; 3 uses
  %.291.us = phi i32 [ 2147483647, %.preheader.us.preheader.new ], [ %.3.us.1, %.preheader.us ] ; 3 uses
  %.05390.us = phi ptr [ null, %.preheader.us.preheader.new ], [ %.255.us.1, %.preheader.us ] ; 2 uses
  %niter170 = phi i64 [ 0, %.preheader.us.preheader.new ], [ %niter170.next.1, %.preheader.us ]
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.05092.us ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !25 ; 3 uses
  %.not70.us = icmp sgt i32 %i.an, %.291.us
  %i.ao = icmp eq i32 %.291.us, %i.an
  %i.ap = icmp ne ptr %.05390.us, null
  %or.cond5.us.not = select i1 %i.ao, i1 %i.ap, i1 false
  %i.aq = select i1 %.not70.us, i1 true, i1 %or.cond5.us.not
  %.255.us = select i1 %i.aq, ptr %.05390.us, ptr %i.am ; 2 uses
  %.3.us = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %.291.us) ; 3 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.05092.us
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !25 ; 3 uses
  %.not70.us.1 = icmp sgt i32 %i.at, %.3.us
  %i.au = icmp eq i32 %.3.us, %i.at
  %i.av = icmp ne ptr %.255.us, null
  %or.cond5.us.not.1 = select i1 %i.au, i1 %i.av, i1 false
  %i.aw = select i1 %.not70.us.1, i1 true, i1 %or.cond5.us.not.1
  %.255.us.1 = select i1 %i.aw, ptr %.255.us, ptr %i.as ; 3 uses
  %.3.us.1 = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %.3.us) ; 2 uses
  %i.ax = add nuw i64 %.05092.us, 2               ; 2 uses
  %niter170.next.1 = add nuw i64 %niter170, 2     ; 2 uses
  %niter170.ncmp.1 = icmp eq i64 %niter170.next.1, %unroll_iter169
  br i1 %niter170.ncmp.1, label %.split.us.loopexit158.unr-lcssa, label %.preheader.us, !llvm.loop !85

.preheader82.split:                               ; preds = %.preheader82
  br i1 %.not, label %.split.us, label %.preheader82.split.split.us

.preheader82.split.split.us:                      ; preds = %.preheader82.split
  %i.ay = load ptr, ptr %0, align 8, !tbaa !21    ; 3 uses
  %xtraiter172 = and i64 %i.d, 1
  %i.az = icmp eq i64 %i.d, 1
  br i1 %i.az, label %.epil.preheader171, label %.preheader82.split.split.us.new

.preheader82.split.split.us.new:                  ; preds = %.preheader82.split.split.us
  %unroll_iter176 = and i64 %i.d, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader82.split.split.us.new
  %.05187.us100 = phi i64 [ 0, %.preheader82.split.split.us.new ], [ %i.bl, %bb.e ] ; 3 uses
  %.05286.us101 = phi i32 [ 2147483647, %.preheader82.split.split.us.new ], [ %.1.us108.1, %bb.e ] ; 3 uses
  %.05685.us102 = phi ptr [ null, %.preheader82.split.split.us.new ], [ %.258.us107.1, %bb.e ] ; 2 uses
  %niter177 = phi i64 [ 0, %.preheader82.split.split.us.new ], [ %niter177.next.1, %bb.e ]
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %.05187.us100 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !25 ; 3 uses
  %.not73.us104 = icmp sgt i32 %i.bb, %.05286.us101
  %i.bc = icmp eq i32 %.05286.us101, %i.bb
  %i.bd = icmp ne ptr %.05685.us102, null
  %or.cond3.not.us106 = select i1 %i.bc, i1 %i.bd, i1 false
  %i.be = select i1 %.not73.us104, i1 true, i1 %or.cond3.not.us106
  %.258.us107 = select i1 %i.be, ptr %.05685.us102, ptr %i.ba ; 2 uses
  %.1.us108 = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %.05286.us101) ; 3 uses
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %.05187.us100
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !25 ; 3 uses
  %.not73.us104.1 = icmp sgt i32 %i.bh, %.1.us108
  %i.bi = icmp eq i32 %.1.us108, %i.bh
  %i.bj = icmp ne ptr %.258.us107, null
  %or.cond3.not.us106.1 = select i1 %i.bi, i1 %i.bj, i1 false
  %i.bk = select i1 %.not73.us104.1, i1 true, i1 %or.cond3.not.us106.1
  %.258.us107.1 = select i1 %i.bk, ptr %.258.us107, ptr %i.bg ; 3 uses
  %.1.us108.1 = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %.1.us108) ; 2 uses
  %i.bl = add nuw i64 %.05187.us100, 2            ; 2 uses
  %niter177.next.1 = add nuw i64 %niter177, 2     ; 2 uses
  %niter177.ncmp.1 = icmp eq i64 %niter177.next.1, %unroll_iter176
  br i1 %niter177.ncmp.1, label %.split.us.loopexit.unr-lcssa, label %bb.e, !llvm.loop !84

bb.f:                                             ; preds = %bb.a
  %i.bm = icmp eq ptr %0, %1
  br label %.thread

.split.us.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod173.not, label %.split.us, label %.epil.preheader171

.epil.preheader171:                               ; preds = %.split.us.loopexit.unr-lcssa, %.preheader82.split.split.us
  %.05187.us100.epil.init = phi i64 [ 0, %.preheader82.split.split.us ], [ %i.bl, %.split.us.loopexit.unr-lcssa ]
  %.05286.us101.epil.init = phi i32 [ 2147483647, %.preheader82.split.split.us ], [ %.1.us108.1, %.split.us.loopexit.unr-lcssa ] ; 2 uses
  %.05685.us102.epil.init = phi ptr [ null, %.preheader82.split.split.us ], [ %.258.us107.1, %.split.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod175 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod175)
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %.05187.us100.epil.init ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !25 ; 2 uses
  %.not73.us104.epil = icmp sgt i32 %i.bo, %.05286.us101.epil.init
  %i.bp = icmp eq i32 %.05286.us101.epil.init, %i.bo
  %i.bq = icmp ne ptr %.05685.us102.epil.init, null
  %or.cond3.not.us106.epil = select i1 %i.bp, i1 %i.bq, i1 false
  %i.br = select i1 %.not73.us104.epil, i1 true, i1 %or.cond3.not.us106.epil
  %.258.us107.epil = select i1 %i.br, ptr %.05685.us102.epil.init, ptr %i.bn
  br label %.split.us

.split.us.loopexit158.unr-lcssa:                  ; preds = %.preheader.us
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.split.us, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %.split.us.loopexit158.unr-lcssa, %.preheader.us.preheader
  %.05092.us.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %i.ax, %.split.us.loopexit158.unr-lcssa ]
  %.291.us.epil.init = phi i32 [ 2147483647, %.preheader.us.preheader ], [ %.3.us.1, %.split.us.loopexit158.unr-lcssa ] ; 2 uses
  %.05390.us.epil.init = phi ptr [ null, %.preheader.us.preheader ], [ %.255.us.1, %.split.us.loopexit158.unr-lcssa ] ; 2 uses
  %lcmp.mod168 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod168)
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.05092.us.epil.init ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !25 ; 2 uses
  %.not70.us.epil = icmp sgt i32 %i.bt, %.291.us.epil.init
  %i.bu = icmp eq i32 %.291.us.epil.init, %i.bt
  %i.bv = icmp ne ptr %.05390.us.epil.init, null
  %or.cond5.us.not.epil = select i1 %i.bu, i1 %i.bv, i1 false
  %i.bw = select i1 %.not70.us.epil, i1 true, i1 %or.cond5.us.not.epil
  %.255.us.epil = select i1 %i.bw, ptr %.05390.us.epil.init, ptr %i.bs
  br label %.split.us

.split.us:                                        ; preds = %._crit_edge.us.us, %.preheader.us.epil.preheader, %.split.us.loopexit158.unr-lcssa, %.epil.preheader171, %.split.us.loopexit.unr-lcssa, %.preheader82.split
  %.us-phi = phi ptr [ null, %.preheader.us.epil.preheader ], [ %.258.us107.epil, %.epil.preheader171 ], [ null, %.preheader82.split ], [ %.258.us107.1, %.split.us.loopexit.unr-lcssa ], [ null, %.split.us.loopexit158.unr-lcssa ], [ %.5.us.us, %._crit_edge.us.us ]
  %.us-phi97 = phi ptr [ %.255.us.epil, %.preheader.us.epil.preheader ], [ null, %.epil.preheader171 ], [ null, %.preheader82.split ], [ null, %.split.us.loopexit.unr-lcssa ], [ %.255.us.1, %.split.us.loopexit158.unr-lcssa ], [ %.255.us.us, %._crit_edge.us.us ]
  %i.bx = icmp eq ptr %.us-phi, %.us-phi97
  br label %.thread

.thread:                                          ; preds = %bb.d, %.split.us, %bb.f
  %.264 = phi i1 [ %i.bm, %bb.f ], [ %i.bx, %.split.us ], [ %.not.us.us, %bb.d ]
  ret i1 %.264
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @ZL_LocalParams_eq(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, %1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @ZL_LocalIntParams_eq(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = tail call zeroext i1 @ZL_LocalCopyParams_eq(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = tail call zeroext i1 @ZL_LocalRefParams_eq(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ false, %bb.d ], [ false, %bb.c ], [ %i.j, %bb.e ]
  ret i1 %.0
}

declare ptr @ALLOC_Arena_malloc(ptr noundef, i64 noundef) local_unnamed_addr #4

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @XXH3_update_regular(ptr nofree noundef nonnull captures(address) %0, ptr noundef captures(address) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %i.b)
  br label %XXH3_update.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34, !alias.scope !122, !noalias !121 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = select i1 %i.f, ptr %i.g, ptr %i.e       ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.j = load i64, ptr %i.i, align 16, !tbaa !37, !alias.scope !122, !noalias !121
  %i.k = add i64 %i.j, %2
  store i64 %i.k, ptr %i.i, align 16, !tbaa !37, !alias.scope !122, !noalias !121
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.m = load i32, ptr %i.l, align 64, !tbaa !38, !alias.scope !122, !noalias !121 ; 5 uses
  %i.n = icmp ult i32 %i.m, 257
  tail call void @llvm.assume(i1 %i.n)
  %i.o = sub nuw nsw i32 256, %i.m
  %i.p = zext nneg i32 %i.o to i64                ; 3 uses
  %.not.i.not = icmp ugt i64 %2, %i.p
  br i1 %.not.i.not, label %bb.e, label %bb.d

end_hunk_0
