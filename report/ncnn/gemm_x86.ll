inline.NumInlined: 231
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL21transpose_pack_A_tileERKNS_3MatERS0_iiii:bb.a
  %i.gh = getelementptr inbounds nuw i8, ptr %.841, i64 24
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.k ; 3 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !68
  store float %i.gj, ptr %i.gh, align 4, !tbaa !68
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !68
  %i.gm = getelementptr inbounds nuw i8, ptr %.841, i64 28
  store float %i.gl, ptr %i.gm, align 4, !tbaa !68
  %i.gn = getelementptr inbounds nuw i8, ptr %.841, i64 32 ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.k ; 2 uses
  %niter140.next.3 = add nuw nsw i32 %niter140, 4 ; 2 uses
  %niter140.ncmp.3 = icmp eq i32 %niter140.next.3, %unroll_iter139
  br i1 %niter140.ncmp.3, label %.loopexit2.loopexit119.unr-lcssa, label %.lr.ph44, !llvm.loop !120

.loopexit2.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  br i1 %lcmp.mod143.not.not, label %.lr.ph.epil.preheader, label %.loopexit2

.lr.ph.epil.preheader:                            ; preds = %.loopexit2.loopexit.unr-lcssa, %.lr.ph.preheader
  %.640.epil.init = phi ptr [ %.547, %.lr.ph.preheader ], [ %i.fl, %.loopexit2.loopexit.unr-lcssa ] ; 3 uses
  %.014338.epil.init = phi ptr [ %i.ew, %.lr.ph.preheader ], [ %i.fm, %.loopexit2.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod145)
  %i.gp = load <4 x float>, ptr %.014338.epil.init, align 16, !tbaa !113 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.014338.epil.init, i64 16
  %i.gr = load <4 x float>, ptr %i.gq, align 16, !tbaa !113 ; 2 uses
  %i.gs = shufflevector <4 x float> %i.gp, <4 x float> %i.gr, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.gt = shufflevector <4 x float> %i.gp, <4 x float> %i.gr, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.gs, ptr %.640.epil.init, align 16, !tbaa !113
  %i.gu = getelementptr inbounds nuw i8, ptr %.640.epil.init, i64 16
  store <4 x float> %i.gt, ptr %i.gu, align 16, !tbaa !113
  %i.gv = getelementptr inbounds nuw i8, ptr %.640.epil.init, i64 32
  br label %.loopexit2

.loopexit2.loopexit119.unr-lcssa:                 ; preds = %.lr.ph44
  br i1 %lcmp.mod136.not, label %.loopexit2, label %.lr.ph44.epil.preheader

.lr.ph44.epil.preheader:                          ; preds = %.loopexit2.loopexit119.unr-lcssa, %.lr.ph44.preheader
  %.013742.epil.init = phi ptr [ %i.fq, %.lr.ph44.preheader ], [ %i.go, %.loopexit2.loopexit119.unr-lcssa ]
  %.841.epil.init = phi ptr [ %.547, %.lr.ph44.preheader ], [ %i.gn, %.loopexit2.loopexit119.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph44.epil

.lr.ph44.epil:                                    ; preds = %.lr.ph44.epil, %.lr.ph44.epil.preheader
  %.013742.epil = phi ptr [ %i.hb, %.lr.ph44.epil ], [ %.013742.epil.init, %.lr.ph44.epil.preheader ] ; 3 uses
  %.841.epil = phi ptr [ %i.ha, %.lr.ph44.epil ], [ %.841.epil.init, %.lr.ph44.epil.preheader ] ; 3 uses
  %epil.iter135 = phi i32 [ %epil.iter135.next, %.lr.ph44.epil ], [ 0, %.lr.ph44.epil.preheader ]
  %i.gw = load float, ptr %.013742.epil, align 4, !tbaa !68
  store float %i.gw, ptr %.841.epil, align 4, !tbaa !68
  %i.gx = getelementptr inbounds nuw i8, ptr %.013742.epil, i64 4
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !68
  %i.gz = getelementptr inbounds nuw i8, ptr %.841.epil, i64 4
  store float %i.gy, ptr %i.gz, align 4, !tbaa !68
  %i.ha = getelementptr inbounds nuw i8, ptr %.841.epil, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.013742.epil, i64 %i.k
  %epil.iter135.next = add i32 %epil.iter135, 1   ; 2 uses
  %epil.iter135.cmp.not = icmp eq i32 %epil.iter135.next, %xtraiter134
  br i1 %epil.iter135.cmp.not, label %.loopexit2, label %.lr.ph44.epil, !llvm.loop !121

.loopexit2:                                       ; preds = %.loopexit2.loopexit119.unr-lcssa, %.lr.ph44.epil, %.lr.ph.epil.preheader, %.loopexit2.loopexit.unr-lcssa, %bb.c, %bb.d, %bb.e
  %.9 = phi ptr [ %.547, %bb.c ], [ %.547, %bb.e ], [ %i.gv, %.lr.ph.epil.preheader ], [ %.547, %bb.d ], [ %i.fl, %.loopexit2.loopexit.unr-lcssa ], [ %i.gn, %.loopexit2.loopexit119.unr-lcssa ], [ %i.ha, %.lr.ph44.epil ] ; 2 uses
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 2 ; 3 uses
  %i.hc = icmp slt i64 %indvars.iv.next85, %invariant.op
  br i1 %i.hc, label %bb.c, label %.preheader.loopexit, !llvm.loop !122

bb.f:                                             ; preds = %.lr.ph63, %.loopexit
  %indvars.iv88 = phi i64 [ %i.em, %.lr.ph63 ], [ %indvars.iv.next89, %.loopexit ] ; 3 uses
  %.1062 = phi ptr [ %.5.lcssa, %.lr.ph63 ], [ %.14, %.loopexit ] ; 7 uses
  switch i32 %i.b, label %.loopexit [
    i32 4, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  br i1 %i.ek, label %.lr.ph54.preheader, label %.loopexit

.lr.ph54.preheader:                               ; preds = %bb.g
  %i.hd = load ptr, ptr %0, align 8, !tbaa !18
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.ej
  %i.hf = add nsw i64 %indvars.iv88, %i.en
  %.idx97 = shl nsw i64 %i.hf, 4
  %i.hg = getelementptr inbounds i8, ptr %i.he, i64 %.idx97 ; 2 uses
  br i1 %i.es, label %.lr.ph54.epil.preheader, label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %.lr.ph54
  %.013552 = phi ptr [ %i.hs, %.lr.ph54 ], [ %i.hg, %.lr.ph54.preheader ] ; 2 uses
  %.1151 = phi ptr [ %i.hr, %.lr.ph54 ], [ %.1062, %.lr.ph54.preheader ] ; 5 uses
  %niter161 = phi i32 [ %niter161.next.3, %.lr.ph54 ], [ 0, %.lr.ph54.preheader ]
  %i.hh = load <4 x float>, ptr %.013552, align 16, !tbaa !113
  store <4 x float> %i.hh, ptr %.1151, align 16, !tbaa !113
  %i.hi = getelementptr inbounds nuw i8, ptr %.1151, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %.013552, i64 %.idx ; 2 uses
  %i.hk = load <4 x float>, ptr %i.hj, align 16, !tbaa !113
  store <4 x float> %i.hk, ptr %i.hi, align 16, !tbaa !113
  %i.hl = getelementptr inbounds nuw i8, ptr %.1151, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.idx ; 2 uses
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !tbaa !113
  store <4 x float> %i.hn, ptr %i.hl, align 16, !tbaa !113
  %i.ho = getelementptr inbounds nuw i8, ptr %.1151, i64 48
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.idx ; 2 uses
  %i.hq = load <4 x float>, ptr %i.hp, align 16, !tbaa !113
  store <4 x float> %i.hq, ptr %i.ho, align 16, !tbaa !113
  %i.hr = getelementptr inbounds nuw i8, ptr %.1151, i64 64 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.idx ; 2 uses
  %niter161.next.3 = add nuw nsw i32 %niter161, 4 ; 2 uses
  %niter161.ncmp.3.not = icmp eq i32 %niter161.next.3, %unroll_iter160
  br i1 %niter161.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph54, !llvm.loop !123

bb.h:                                             ; preds = %bb.f
  br i1 %i.el, label %.lr.ph59.preheader, label %.loopexit

.lr.ph59.preheader:                               ; preds = %bb.h
  %i.ht = load ptr, ptr %0, align 8, !tbaa !18
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.ej
  %i.hv = getelementptr [4 x i8], ptr %i.hu, i64 %indvars.iv88
  %i.hw = getelementptr [4 x i8], ptr %i.hv, i64 %i.en ; 2 uses
  br i1 %i.er, label %.lr.ph59.epil.preheader, label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %.lr.ph59
  %.013357 = phi ptr [ %i.iu, %.lr.ph59 ], [ %i.hw, %.lr.ph59.preheader ] ; 2 uses
  %.1356 = phi ptr [ %i.it, %.lr.ph59 ], [ %.1062, %.lr.ph59.preheader ] ; 9 uses
  %niter154 = phi i32 [ %niter154.next.7, %.lr.ph59 ], [ 0, %.lr.ph59.preheader ]
  %i.hx = load float, ptr %.013357, align 4, !tbaa !68
  store float %i.hx, ptr %.1356, align 4, !tbaa !68
  %i.hy = getelementptr inbounds nuw i8, ptr %.1356, i64 4
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.013357, i64 %i.k ; 2 uses
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !68
  store float %i.ia, ptr %i.hy, align 4, !tbaa !68
  %i.ib = getelementptr inbounds nuw i8, ptr %.1356, i64 8
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.k ; 2 uses
  %i.id = load float, ptr %i.ic, align 4, !tbaa !68
  store float %i.id, ptr %i.ib, align 4, !tbaa !68
  %i.ie = getelementptr inbounds nuw i8, ptr %.1356, i64 12
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.k ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !68
  store float %i.ig, ptr %i.ie, align 4, !tbaa !68
  %i.ih = getelementptr inbounds nuw i8, ptr %.1356, i64 16
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.k ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !68
  store float %i.ij, ptr %i.ih, align 4, !tbaa !68
  %i.ik = getelementptr inbounds nuw i8, ptr %.1356, i64 20
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.k ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !68
  store float %i.im, ptr %i.ik, align 4, !tbaa !68
  %i.in = getelementptr inbounds nuw i8, ptr %.1356, i64 24
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.k ; 2 uses
  %i.ip = load float, ptr %i.io, align 4, !tbaa !68
  store float %i.ip, ptr %i.in, align 4, !tbaa !68
  %i.iq = getelementptr inbounds nuw i8, ptr %.1356, i64 28
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.k ; 2 uses
  %i.is = load float, ptr %i.ir, align 4, !tbaa !68
  store float %i.is, ptr %i.iq, align 4, !tbaa !68
  %i.it = getelementptr inbounds nuw i8, ptr %.1356, i64 32 ; 3 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.k ; 2 uses
  %niter154.next.7 = add nuw nsw i32 %niter154, 8 ; 2 uses
  %niter154.ncmp.7 = icmp eq i32 %niter154.next.7, %unroll_iter153
  br i1 %niter154.ncmp.7, label %.loopexit.loopexit117.unr-lcssa, label %.lr.ph59, !llvm.loop !124

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph54
  br i1 %lcmp.mod157.not, label %.loopexit, label %.lr.ph54.epil.preheader

.lr.ph54.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph54.preheader
  %.013552.epil.init = phi ptr [ %i.hg, %.lr.ph54.preheader ], [ %i.hs, %.loopexit.loopexit.unr-lcssa ]
  %.1151.epil.init = phi ptr [ %.1062, %.lr.ph54.preheader ], [ %i.hr, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph54.epil

.lr.ph54.epil:                                    ; preds = %.lr.ph54.epil, %.lr.ph54.epil.preheader
  %.013552.epil = phi ptr [ %i.ix, %.lr.ph54.epil ], [ %.013552.epil.init, %.lr.ph54.epil.preheader ] ; 2 uses
  %.1151.epil = phi ptr [ %i.iw, %.lr.ph54.epil ], [ %.1151.epil.init, %.lr.ph54.epil.preheader ] ; 2 uses
  %epil.iter156 = phi i32 [ %epil.iter156.next, %.lr.ph54.epil ], [ 0, %.lr.ph54.epil.preheader ]
  %i.iv = load <4 x float>, ptr %.013552.epil, align 16, !tbaa !113
  store <4 x float> %i.iv, ptr %.1151.epil, align 16, !tbaa !113
  %i.iw = getelementptr inbounds nuw i8, ptr %.1151.epil, i64 16 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.013552.epil, i64 %.idx
  %epil.iter156.next = add i32 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i32 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %.loopexit, label %.lr.ph54.epil, !llvm.loop !125

.loopexit.loopexit117.unr-lcssa:                  ; preds = %.lr.ph59
  br i1 %lcmp.mod150.not, label %.loopexit, label %.lr.ph59.epil.preheader

.lr.ph59.epil.preheader:                          ; preds = %.loopexit.loopexit117.unr-lcssa, %.lr.ph59.preheader
  %.013357.epil.init = phi ptr [ %i.hw, %.lr.ph59.preheader ], [ %i.iu, %.loopexit.loopexit117.unr-lcssa ]
  %.1356.epil.init = phi ptr [ %.1062, %.lr.ph59.preheader ], [ %i.it, %.loopexit.loopexit117.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %.lr.ph59.epil

.lr.ph59.epil:                                    ; preds = %.lr.ph59.epil, %.lr.ph59.epil.preheader
  %.013357.epil = phi ptr [ %i.ja, %.lr.ph59.epil ], [ %.013357.epil.init, %.lr.ph59.epil.preheader ] ; 2 uses
  %.1356.epil = phi ptr [ %i.iz, %.lr.ph59.epil ], [ %.1356.epil.init, %.lr.ph59.epil.preheader ] ; 2 uses
  %epil.iter149 = phi i32 [ %epil.iter149.next, %.lr.ph59.epil ], [ 0, %.lr.ph59.epil.preheader ]
  %i.iy = load float, ptr %.013357.epil, align 4, !tbaa !68
  store float %i.iy, ptr %.1356.epil, align 4, !tbaa !68
  %i.iz = getelementptr inbounds nuw i8, ptr %.1356.epil, i64 4 ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.013357.epil, i64 %i.k
  %epil.iter149.next = add i32 %epil.iter149, 1   ; 2 uses
  %epil.iter149.cmp.not = icmp eq i32 %epil.iter149.next, %xtraiter148
  br i1 %epil.iter149.cmp.not, label %.loopexit, label %.lr.ph59.epil, !llvm.loop !126

.loopexit:                                        ; preds = %.loopexit.loopexit117.unr-lcssa, %.lr.ph59.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph54.epil, %bb.f, %bb.g, %bb.h
  %.14 = phi ptr [ %.1062, %bb.f ], [ %.1062, %bb.h ], [ %i.iw, %.lr.ph54.epil ], [ %.1062, %bb.g ], [ %i.hr, %.loopexit.loopexit.unr-lcssa ], [ %i.it, %.loopexit.loopexit117.unr-lcssa ], [ %i.iz, %.lr.ph59.epil ]
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  br i1 %exitcond91.not, label %._crit_edge, label %bb.f, !llvm.loop !127

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly captures(none) %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85
  %i.c = icmp eq i32 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sext i32 %i.g to i64
  %i.i = select i1 %i.c, i64 %i.e, i64 %i.h       ; 11 uses
  %i.j = icmp sgt i32 %2, 3
  br i1 %i.j, label %.lr.ph32, label %.preheader3

.lr.ph32:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %i.m = icmp eq i32 %i.l, 4                      ; 2 uses
  %i.n = shl nsw i32 %3, 2
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp sgt i32 %4, 0                       ; 2 uses
  %i.q = icmp eq i32 %i.l, 1
  %i.r = sext i32 %3 to i64                       ; 8 uses
  %i.s = icmp sgt i32 %4, 3
  br i1 %i.q, label %.lr.ph32.split.us.preheader, label %.lr.ph32.split

.lr.ph32.split.us.preheader:                      ; preds = %.lr.ph32
  %i.t = and i32 %4, -4
  %i.u = sext i32 %1 to i64
  %i.v = zext nneg i32 %2 to i64
  %i.w = add i32 %4, -1
  %xtraiter274 = and i32 %4, 7                    ; 3 uses
  %i.x = icmp ult i32 %i.w, 7
  %unroll_iter279 = and i32 %4, 2147483640
  %lcmp.mod276.not = icmp eq i32 %xtraiter274, 0
  %lcmp.mod278 = icmp ne i32 %xtraiter274, 0
  br label %.lr.ph32.split.us

.lr.ph32.split.us:                                ; preds = %.lr.ph32.split.us.preheader, %.loopexit.us
  %indvars.iv117 = phi i64 [ 0, %.lr.ph32.split.us.preheader ], [ %indvars.iv.next118, %.loopexit.us ] ; 2 uses
  %.015631.us = phi ptr [ %.0.val, %.lr.ph32.split.us.preheader ], [ %.4.lcssa.us, %.loopexit.us ] ; 4 uses
  %.pre129 = load ptr, ptr %0, align 8, !tbaa !18 ; 5 uses
  %i.y = add nsw i64 %indvars.iv117, %i.u         ; 7 uses
  %i.z = mul i64 %i.i, %i.y                       ; 2 uses
  br i1 %i.m, label %bb.b, label %.loopexit5.us

bb.b:                                             ; preds = %.lr.ph32.split.us
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.pre129, i64 %i.z ; 2 uses
  br i1 %i.p, label %.lr.ph.us.preheader, label %.loopexit5.us.thread

.loopexit5.us.thread:                             ; preds = %bb.b
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.r
  %i.ac = add nsw i64 %i.y, 1
  %i.ad = mul i64 %i.i, %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre129, i64 %i.ad
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.r
  %i.ag = add nsw i64 %i.y, 2
  %i.ah = mul i64 %i.i, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre129, i64 %i.ah
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.r
  %i.ak = add nsw i64 %i.y, 3
  %i.al = mul i64 %i.i, %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.pre129, i64 %i.al
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.r
  br label %.preheader4.us

.lr.ph.us.preheader:                              ; preds = %bb.b
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.o ; 2 uses
  br i1 %i.x, label %.lr.ph.us.epil.preheader, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.11578.us = phi ptr [ %i.bl, %.lr.ph.us ], [ %.015631.us, %.lr.ph.us.preheader ] ; 9 uses
  %.01677.us = phi ptr [ %i.bm, %.lr.ph.us ], [ %i.ao, %.lr.ph.us.preheader ] ; 9 uses
  %niter280 = phi i32 [ %niter280.next.7, %.lr.ph.us ], [ 0, %.lr.ph.us.preheader ]
  %i.ap = load <4 x float>, ptr %.01677.us, align 16, !tbaa !113
  store <4 x float> %i.ap, ptr %.11578.us, align 16, !tbaa !113
  %i.aq = getelementptr inbounds nuw i8, ptr %.11578.us, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.01677.us, i64 16
  %i.as = load <4 x float>, ptr %i.ar, align 16, !tbaa !113
  store <4 x float> %i.as, ptr %i.aq, align 16, !tbaa !113
  %i.at = getelementptr inbounds nuw i8, ptr %.11578.us, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %.01677.us, i64 32
  %i.av = load <4 x float>, ptr %i.au, align 16, !tbaa !113
  store <4 x float> %i.av, ptr %i.at, align 16, !tbaa !113
  %i.aw = getelementptr inbounds nuw i8, ptr %.11578.us, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %.01677.us, i64 48
  %i.ay = load <4 x float>, ptr %i.ax, align 16, !tbaa !113
  store <4 x float> %i.ay, ptr %i.aw, align 16, !tbaa !113
  %i.az = getelementptr inbounds nuw i8, ptr %.11578.us, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %.01677.us, i64 64
  %i.bb = load <4 x float>, ptr %i.ba, align 16, !tbaa !113
  store <4 x float> %i.bb, ptr %i.az, align 16, !tbaa !113
  %i.bc = getelementptr inbounds nuw i8, ptr %.11578.us, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %.01677.us, i64 80
  %i.be = load <4 x float>, ptr %i.bd, align 16, !tbaa !113
  store <4 x float> %i.be, ptr %i.bc, align 16, !tbaa !113
  %i.bf = getelementptr inbounds nuw i8, ptr %.11578.us, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %.01677.us, i64 96
  %i.bh = load <4 x float>, ptr %i.bg, align 16, !tbaa !113
  store <4 x float> %i.bh, ptr %i.bf, align 16, !tbaa !113
  %i.bi = getelementptr inbounds nuw i8, ptr %.11578.us, i64 112
  %i.bj = getelementptr inbounds nuw i8, ptr %.01677.us, i64 112
  %i.bk = load <4 x float>, ptr %i.bj, align 16, !tbaa !113
  store <4 x float> %i.bk, ptr %i.bi, align 16, !tbaa !113
  %i.bl = getelementptr inbounds nuw i8, ptr %.11578.us, i64 128 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01677.us, i64 128 ; 2 uses
  %niter280.next.7 = add nuw nsw i32 %niter280, 8 ; 2 uses
  %niter280.ncmp.7 = icmp eq i32 %niter280.next.7, %unroll_iter279
  br i1 %niter280.ncmp.7, label %.loopexit5.us.loopexit.unr-lcssa, label %.lr.ph.us, !llvm.loop !128

.loopexit5.us.loopexit.unr-lcssa:                 ; preds = %.lr.ph.us
  br i1 %lcmp.mod276.not, label %.loopexit5.us.loopexit, label %.lr.ph.us.epil.preheader

.lr.ph.us.epil.preheader:                         ; preds = %.loopexit5.us.loopexit.unr-lcssa, %.lr.ph.us.preheader
  %.11578.us.epil.init = phi ptr [ %.015631.us, %.lr.ph.us.preheader ], [ %i.bl, %.loopexit5.us.loopexit.unr-lcssa ]
  %.01677.us.epil.init = phi ptr [ %i.ao, %.lr.ph.us.preheader ], [ %i.bm, %.loopexit5.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod278)
  br label %.lr.ph.us.epil

.lr.ph.us.epil:                                   ; preds = %.lr.ph.us.epil, %.lr.ph.us.epil.preheader
  %.11578.us.epil = phi ptr [ %i.bo, %.lr.ph.us.epil ], [ %.11578.us.epil.init, %.lr.ph.us.epil.preheader ] ; 2 uses
  %.01677.us.epil = phi ptr [ %i.bp, %.lr.ph.us.epil ], [ %.01677.us.epil.init, %.lr.ph.us.epil.preheader ] ; 2 uses
  %epil.iter275 = phi i32 [ %epil.iter275.next, %.lr.ph.us.epil ], [ 0, %.lr.ph.us.epil.preheader ]
  %i.bn = load <4 x float>, ptr %.01677.us.epil, align 16, !tbaa !113
  store <4 x float> %i.bn, ptr %.11578.us.epil, align 16, !tbaa !113
  %i.bo = getelementptr inbounds nuw i8, ptr %.11578.us.epil, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01677.us.epil, i64 16
  %epil.iter275.next = add i32 %epil.iter275, 1   ; 2 uses
  %epil.iter275.cmp.not = icmp eq i32 %epil.iter275.next, %xtraiter274
  br i1 %epil.iter275.cmp.not, label %.loopexit5.us.loopexit, label %.lr.ph.us.epil, !llvm.loop !129

.loopexit5.us.loopexit:                           ; preds = %.lr.ph.us.epil, %.loopexit5.us.loopexit.unr-lcssa
  %.lcssa264 = phi ptr [ %i.bl, %.loopexit5.us.loopexit.unr-lcssa ], [ %i.bo, %.lr.ph.us.epil ]
  %.pre = load ptr, ptr %0, align 8, !tbaa !18
  br label %.loopexit5.us

.loopexit5.us:                                    ; preds = %.lr.ph32.split.us, %.loopexit5.us.loopexit
  %i.bq = phi ptr [ %.pre, %.loopexit5.us.loopexit ], [ %.pre129, %.lr.ph32.split.us ] ; 4 uses
  %.2.us = phi ptr [ %.lcssa264, %.loopexit5.us.loopexit ], [ %.015631.us, %.lr.ph32.split.us ] ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.z
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.r ; 2 uses
  %i.bt = add nsw i64 %i.y, 1
  %i.bu = mul i64 %i.i, %i.bt
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bu
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.r ; 2 uses
  %i.bx = add nsw i64 %i.y, 2
  %i.by = mul i64 %i.i, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.by
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.r ; 2 uses
  %i.cb = add nsw i64 %i.y, 3
  %i.cc = mul i64 %i.i, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cc
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.r ; 2 uses
  br i1 %i.s, label %.lr.ph15.us, label %.preheader4.us

.lr.ph15.us:                                      ; preds = %.loopexit5.us, %.lr.ph15.us
  %.314.us = phi ptr [ %i.cu, %.lr.ph15.us ], [ %.2.us, %.loopexit5.us ] ; 5 uses
  %.016913.us = phi ptr [ %i.cv, %.lr.ph15.us ], [ %i.bs, %.loopexit5.us ] ; 2 uses
  %.017112.us = phi ptr [ %i.cw, %.lr.ph15.us ], [ %i.bw, %.loopexit5.us ] ; 2 uses
  %.017311.us = phi ptr [ %i.cx, %.lr.ph15.us ], [ %i.ca, %.loopexit5.us ] ; 2 uses
  %.017510.us = phi ptr [ %i.cy, %.lr.ph15.us ], [ %i.ce, %.loopexit5.us ] ; 2 uses
  %.01779.us = phi i32 [ %i.cz, %.lr.ph15.us ], [ 0, %.loopexit5.us ]
  %i.cf = load <4 x float>, ptr %.016913.us, align 1, !tbaa !113 ; 2 uses
  %i.cg = load <4 x float>, ptr %.017112.us, align 1, !tbaa !113 ; 2 uses
  %i.ch = load <4 x float>, ptr %.017311.us, align 1, !tbaa !113 ; 2 uses
  %i.ci = load <4 x float>, ptr %.017510.us, align 1, !tbaa !113 ; 2 uses
  %i.cj = shufflevector <4 x float> %i.cf, <4 x float> %i.cg, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ck = shufflevector <4 x float> %i.ch, <4 x float> %i.ci, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cl = shufflevector <4 x float> %i.cf, <4 x float> %i.cg, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cm = shufflevector <4 x float> %i.ch, <4 x float> %i.ci, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cn = shufflevector <4 x float> %i.cj, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.co = shufflevector <4 x float> %i.ck, <4 x float> %i.cj, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.cp = shufflevector <4 x float> %i.cl, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cq = shufflevector <4 x float> %i.cm, <4 x float> %i.cl, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.cn, ptr %.314.us, align 16, !tbaa !113
  %i.cr = getelementptr inbounds nuw i8, ptr %.314.us, i64 16
  store <4 x float> %i.co, ptr %i.cr, align 16, !tbaa !113
  %i.cs = getelementptr inbounds nuw i8, ptr %.314.us, i64 32
  store <4 x float> %i.cp, ptr %i.cs, align 16, !tbaa !113
  %i.ct = getelementptr inbounds nuw i8, ptr %.314.us, i64 48
  store <4 x float> %i.cq, ptr %i.ct, align 16, !tbaa !113
  %i.cu = getelementptr inbounds nuw i8, ptr %.314.us, i64 64 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.016913.us, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.017112.us, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.017311.us, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.017510.us, i64 16 ; 2 uses
  %i.cz = add nuw nsw i32 %.01779.us, 4           ; 2 uses
  %i.da = or disjoint i32 %i.cz, 3
  %i.db = icmp slt i32 %i.da, %4
  br i1 %i.db, label %.lr.ph15.us, label %.preheader4.us, !llvm.loop !130

.lr.ph28.us:                                      ; preds = %.lr.ph28.us.prol.loopexit, %.lr.ph28.us
end_hunk_0
begin_hunk_1_@_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii:bb.a
  %i.li = getelementptr inbounds nuw i8, ptr %.116660, i64 12
  %i.lj = getelementptr inbounds nuw i8, ptr %.116461, i64 12
  %i.lk = load float, ptr %i.li, align 4, !tbaa !68
  store float %i.lk, ptr %i.lh, align 4, !tbaa !68
  %i.ll = load float, ptr %i.lj, align 4, !tbaa !68
  %i.lm = getelementptr inbounds nuw i8, ptr %.863, i64 28
  store float %i.ll, ptr %i.lm, align 4, !tbaa !68
  %i.ln = getelementptr inbounds nuw i8, ptr %.863, i64 32 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.116660, i64 16
  %i.lp = getelementptr inbounds nuw i8, ptr %.116461, i64 16
  %i.lq = add nuw nsw i32 %.116262, 4             ; 2 uses
  %exitcond120.not.3 = icmp eq i32 %i.lq, %4
  br i1 %exitcond120.not.3, label %._crit_edge, label %.lr.ph64, !llvm.loop !158

._crit_edge:                                      ; preds = %.lr.ph64.prol.loopexit, %.lr.ph64, %middle.block230, %.preheader2
  %.8.lcssa = phi ptr [ %.7.lcssa, %.preheader2 ], [ %i.jg, %middle.block230 ], [ %.lcssa262.unr, %.lr.ph64.prol.loopexit ], [ %i.ln, %.lr.ph64 ] ; 2 uses
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 2 ; 3 uses
  %i.lr = icmp slt i64 %indvars.iv.next122, %invariant.op
  br i1 %i.lr, label %bb.d, label %.preheader1.loopexit, !llvm.loop !159

bb.e:                                             ; preds = %.lr.ph87, %._crit_edge83
  %indvars.iv125 = phi i64 [ %i.hy, %.lr.ph87 ], [ %indvars.iv.next126, %._crit_edge83 ] ; 2 uses
  %.986 = phi ptr [ %.6.lcssa, %.lr.ph87 ], [ %.11.lcssa, %._crit_edge83 ] ; 3 uses
  %i.ls = load ptr, ptr %0, align 8, !tbaa !18
  %i.lt = add nsw i64 %indvars.iv125, %i.hz
  %i.lu = mul i64 %i.i, %i.lt
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lu
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.hv ; 3 uses
  br i1 %i.hw, label %.lr.ph75.preheader, label %.preheader

.lr.ph75.preheader:                               ; preds = %bb.e
  br i1 %i.id, label %.lr.ph75.epil.preheader, label %.lr.ph75

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph75
  br i1 %lcmp.mod296.not, label %.preheader, label %.lr.ph75.epil.preheader

.lr.ph75.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph75.preheader
  %.015472.epil.init = phi ptr [ %i.lw, %.lr.ph75.preheader ], [ %i.nh, %.preheader.loopexit.unr-lcssa ]
  %.1071.epil.init = phi ptr [ %.986, %.lr.ph75.preheader ], [ %i.ng, %.preheader.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod299)
  br label %.lr.ph75.epil

.lr.ph75.epil:                                    ; preds = %.lr.ph75.epil, %.lr.ph75.epil.preheader
  %.015472.epil = phi ptr [ %i.lz, %.lr.ph75.epil ], [ %.015472.epil.init, %.lr.ph75.epil.preheader ] ; 2 uses
  %.1071.epil = phi ptr [ %i.ly, %.lr.ph75.epil ], [ %.1071.epil.init, %.lr.ph75.epil.preheader ] ; 2 uses
  %epil.iter295 = phi i32 [ %epil.iter295.next, %.lr.ph75.epil ], [ 0, %.lr.ph75.epil.preheader ]
  %i.lx = load <4 x float>, ptr %.015472.epil, align 1, !tbaa !113
  store <4 x float> %i.lx, ptr %.1071.epil, align 1, !tbaa !113
  %i.ly = getelementptr inbounds nuw i8, ptr %.1071.epil, i64 16 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.015472.epil, i64 16 ; 2 uses
  %epil.iter295.next = add i32 %epil.iter295, 1   ; 2 uses
  %epil.iter295.cmp.not = icmp eq i32 %epil.iter295.next, %xtraiter294
  br i1 %epil.iter295.cmp.not, label %.preheader, label %.lr.ph75.epil, !llvm.loop !160

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph75.epil, %bb.e
  %.10.lcssa = phi ptr [ %.986, %bb.e ], [ %i.ng, %.preheader.loopexit.unr-lcssa ], [ %i.ly, %.lr.ph75.epil ] ; 5 uses
  %.0154.lcssa = phi ptr [ %i.lw, %bb.e ], [ %i.nh, %.preheader.loopexit.unr-lcssa ], [ %i.lz, %.lr.ph75.epil ] ; 4 uses
  %.0.lcssa = phi i32 [ 0, %bb.e ], [ %i.hx, %.lr.ph75.epil ], [ %i.hx, %.preheader.loopexit.unr-lcssa ] ; 4 uses
  %i.ma = icmp slt i32 %.0.lcssa, %4
  br i1 %i.ma, label %.lr.ph82.preheader, label %._crit_edge83

.lr.ph82.preheader:                               ; preds = %.preheader
  %.0154.lcssa238 = ptrtoaddr ptr %.0154.lcssa to i64
  %.10.lcssa237 = ptrtoaddr ptr %.10.lcssa to i64
  %i.mb = xor i32 %.0.lcssa, -1
  %i.mc = add i32 %4, %i.mb                       ; 2 uses
  %i.md = zext i32 %i.mc to i64
  %i.me = add nuw nsw i64 %i.md, 1                ; 2 uses
  %min.iters.check240 = icmp ult i32 %i.mc, 7
  %i.mf = sub i64 %.0154.lcssa238, %.10.lcssa237
  %diff.check = icmp ugt i64 %i.mf, -32
  %or.cond = select i1 %min.iters.check240, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph82.preheader255, label %vector.ph241

vector.ph241:                                     ; preds = %.lr.ph82.preheader
  %n.vec242 = and i64 %i.me, 8589934584           ; 4 uses
  %i.mg = trunc i64 %n.vec242 to i32
  %i.mh = add i32 %.0.lcssa, %i.mg
  %i.mi = shl nuw nsw i64 %n.vec242, 2            ; 2 uses
  %i.mj = getelementptr i8, ptr %.0154.lcssa, i64 %i.mi
  %i.mk = getelementptr i8, ptr %.10.lcssa, i64 %i.mi ; 2 uses
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph241
  %index244 = phi i64 [ 0, %vector.ph241 ], [ %index.next249, %vector.body243 ] ; 2 uses
  %i.ml = shl i64 %index244, 2                    ; 2 uses
  %next.gep245 = getelementptr i8, ptr %.0154.lcssa, i64 %i.ml ; 2 uses
  %next.gep246 = getelementptr i8, ptr %.10.lcssa, i64 %i.ml ; 2 uses
  %i.mm = getelementptr i8, ptr %next.gep245, i64 16
  %wide.load247 = load <4 x float>, ptr %next.gep245, align 4, !tbaa !68
  %wide.load248 = load <4 x float>, ptr %i.mm, align 4, !tbaa !68
  %i.mn = getelementptr i8, ptr %next.gep246, i64 16
  store <4 x float> %wide.load247, ptr %next.gep246, align 4, !tbaa !68
  store <4 x float> %wide.load248, ptr %i.mn, align 4, !tbaa !68
  %index.next249 = add nuw i64 %index244, 8       ; 2 uses
  %i.mo = icmp eq i64 %index.next249, %n.vec242
  br i1 %i.mo, label %middle.block250, label %vector.body243, !llvm.loop !161

middle.block250:                                  ; preds = %vector.body243
  %cmp.n251 = icmp eq i64 %i.me, %n.vec242
  br i1 %cmp.n251, label %._crit_edge83, label %.lr.ph82.preheader255

.lr.ph82.preheader255:                            ; preds = %.lr.ph82.preheader, %middle.block250
  %.181.ph = phi i32 [ %.0.lcssa, %.lr.ph82.preheader ], [ %i.mh, %middle.block250 ] ; 4 uses
  %.115580.ph = phi ptr [ %.0154.lcssa, %.lr.ph82.preheader ], [ %i.mj, %middle.block250 ] ; 2 uses
  %.1179.ph = phi ptr [ %.10.lcssa, %.lr.ph82.preheader ], [ %i.mk, %middle.block250 ] ; 2 uses
  %i.mp = sub i32 %4, %.181.ph
  %xtraiter302 = and i32 %i.mp, 7                 ; 2 uses
  %lcmp.mod303.not = icmp eq i32 %xtraiter302, 0
  br i1 %lcmp.mod303.not, label %.lr.ph82.prol.loopexit, label %.lr.ph82.prol

.lr.ph82.prol:                                    ; preds = %.lr.ph82.preheader255, %.lr.ph82.prol
  %.181.prol = phi i32 [ %i.mt, %.lr.ph82.prol ], [ %.181.ph, %.lr.ph82.preheader255 ]
  %.115580.prol = phi ptr [ %i.ms, %.lr.ph82.prol ], [ %.115580.ph, %.lr.ph82.preheader255 ] ; 2 uses
  %.1179.prol = phi ptr [ %i.mr, %.lr.ph82.prol ], [ %.1179.ph, %.lr.ph82.preheader255 ] ; 2 uses
  %prol.iter304 = phi i32 [ %prol.iter304.next, %.lr.ph82.prol ], [ 0, %.lr.ph82.preheader255 ]
  %i.mq = load float, ptr %.115580.prol, align 4, !tbaa !68
  store float %i.mq, ptr %.1179.prol, align 4, !tbaa !68
  %i.mr = getelementptr inbounds nuw i8, ptr %.1179.prol, i64 4 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.115580.prol, i64 4 ; 2 uses
  %i.mt = add nuw nsw i32 %.181.prol, 1           ; 2 uses
  %prol.iter304.next = add i32 %prol.iter304, 1   ; 2 uses
  %prol.iter304.cmp.not = icmp eq i32 %prol.iter304.next, %xtraiter302
  br i1 %prol.iter304.cmp.not, label %.lr.ph82.prol.loopexit, label %.lr.ph82.prol, !llvm.loop !162

.lr.ph82.prol.loopexit:                           ; preds = %.lr.ph82.prol, %.lr.ph82.preheader255
  %.lcssa257.unr = phi ptr [ poison, %.lr.ph82.preheader255 ], [ %i.mr, %.lr.ph82.prol ]
  %.181.unr = phi i32 [ %.181.ph, %.lr.ph82.preheader255 ], [ %i.mt, %.lr.ph82.prol ]
  %.115580.unr = phi ptr [ %.115580.ph, %.lr.ph82.preheader255 ], [ %i.ms, %.lr.ph82.prol ]
  %.1179.unr = phi ptr [ %.1179.ph, %.lr.ph82.preheader255 ], [ %i.mr, %.lr.ph82.prol ]
  %i.mu = sub i32 %.181.ph, %4
  %i.mv = icmp ugt i32 %i.mu, -8
  br i1 %i.mv, label %._crit_edge83, label %.lr.ph82

.lr.ph75:                                         ; preds = %.lr.ph75.preheader, %.lr.ph75
  %.015472 = phi ptr [ %i.nh, %.lr.ph75 ], [ %i.lw, %.lr.ph75.preheader ] ; 5 uses
  %.1071 = phi ptr [ %i.ng, %.lr.ph75 ], [ %.986, %.lr.ph75.preheader ] ; 5 uses
  %niter301 = phi i32 [ %niter301.next.3, %.lr.ph75 ], [ 0, %.lr.ph75.preheader ]
  %i.mw = load <4 x float>, ptr %.015472, align 1, !tbaa !113
  store <4 x float> %i.mw, ptr %.1071, align 1, !tbaa !113
  %i.mx = getelementptr inbounds nuw i8, ptr %.1071, i64 16
  %i.my = getelementptr inbounds nuw i8, ptr %.015472, i64 16
  %i.mz = load <4 x float>, ptr %i.my, align 1, !tbaa !113
  store <4 x float> %i.mz, ptr %i.mx, align 1, !tbaa !113
  %i.na = getelementptr inbounds nuw i8, ptr %.1071, i64 32
  %i.nb = getelementptr inbounds nuw i8, ptr %.015472, i64 32
  %i.nc = load <4 x float>, ptr %i.nb, align 1, !tbaa !113
  store <4 x float> %i.nc, ptr %i.na, align 1, !tbaa !113
  %i.nd = getelementptr inbounds nuw i8, ptr %.1071, i64 48
  %i.ne = getelementptr inbounds nuw i8, ptr %.015472, i64 48
  %i.nf = load <4 x float>, ptr %i.ne, align 1, !tbaa !113
  store <4 x float> %i.nf, ptr %i.nd, align 1, !tbaa !113
  %i.ng = getelementptr inbounds nuw i8, ptr %.1071, i64 64 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.015472, i64 64 ; 3 uses
  %niter301.next.3 = add nuw nsw i32 %niter301, 4 ; 2 uses
  %niter301.ncmp.3.not = icmp eq i32 %niter301.next.3, %unroll_iter300
  br i1 %niter301.ncmp.3.not, label %.preheader.loopexit.unr-lcssa, label %.lr.ph75, !llvm.loop !163

.lr.ph82:                                         ; preds = %.lr.ph82.prol.loopexit, %.lr.ph82
  %.181 = phi i32 [ %i.og, %.lr.ph82 ], [ %.181.unr, %.lr.ph82.prol.loopexit ]
  %.115580 = phi ptr [ %i.of, %.lr.ph82 ], [ %.115580.unr, %.lr.ph82.prol.loopexit ] ; 9 uses
  %.1179 = phi ptr [ %i.oe, %.lr.ph82 ], [ %.1179.unr, %.lr.ph82.prol.loopexit ] ; 9 uses
  %i.ni = load float, ptr %.115580, align 4, !tbaa !68
  store float %i.ni, ptr %.1179, align 4, !tbaa !68
  %i.nj = getelementptr inbounds nuw i8, ptr %.1179, i64 4
  %i.nk = getelementptr inbounds nuw i8, ptr %.115580, i64 4
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !68
  store float %i.nl, ptr %i.nj, align 4, !tbaa !68
  %i.nm = getelementptr inbounds nuw i8, ptr %.1179, i64 8
  %i.nn = getelementptr inbounds nuw i8, ptr %.115580, i64 8
  %i.no = load float, ptr %i.nn, align 4, !tbaa !68
  store float %i.no, ptr %i.nm, align 4, !tbaa !68
  %i.np = getelementptr inbounds nuw i8, ptr %.1179, i64 12
  %i.nq = getelementptr inbounds nuw i8, ptr %.115580, i64 12
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !68
  store float %i.nr, ptr %i.np, align 4, !tbaa !68
  %i.ns = getelementptr inbounds nuw i8, ptr %.1179, i64 16
  %i.nt = getelementptr inbounds nuw i8, ptr %.115580, i64 16
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !68
  store float %i.nu, ptr %i.ns, align 4, !tbaa !68
  %i.nv = getelementptr inbounds nuw i8, ptr %.1179, i64 20
  %i.nw = getelementptr inbounds nuw i8, ptr %.115580, i64 20
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !68
  store float %i.nx, ptr %i.nv, align 4, !tbaa !68
  %i.ny = getelementptr inbounds nuw i8, ptr %.1179, i64 24
  %i.nz = getelementptr inbounds nuw i8, ptr %.115580, i64 24
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !68
  store float %i.oa, ptr %i.ny, align 4, !tbaa !68
  %i.ob = getelementptr inbounds nuw i8, ptr %.1179, i64 28
  %i.oc = getelementptr inbounds nuw i8, ptr %.115580, i64 28
  %i.od = load float, ptr %i.oc, align 4, !tbaa !68
  store float %i.od, ptr %i.ob, align 4, !tbaa !68
  %i.oe = getelementptr inbounds nuw i8, ptr %.1179, i64 32 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.115580, i64 32
  %i.og = add nuw nsw i32 %.181, 8                ; 2 uses
  %exitcond124.not.7 = icmp eq i32 %i.og, %4
  br i1 %exitcond124.not.7, label %._crit_edge83, label %.lr.ph82, !llvm.loop !164

._crit_edge83:                                    ; preds = %.lr.ph82.prol.loopexit, %.lr.ph82, %middle.block250, %.preheader
  %.11.lcssa = phi ptr [ %.10.lcssa, %.preheader ], [ %i.mk, %middle.block250 ], [ %.lcssa257.unr, %.lr.ph82.prol.loopexit ], [ %i.oe, %.lr.ph82 ]
  %indvars.iv.next126 = add nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count
  br i1 %exitcond128.not, label %._crit_edge88, label %bb.e, !llvm.loop !165

._crit_edge88:                                    ; preds = %._crit_edge83, %.preheader1
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !166 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn8Gemm_x8615create_pipelineERKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not67 = icmp sgt i32 %i.k, %i.j
  br i1 %.not67, label %._crit_edge, label %.noexc41.lr.ph

.noexc41.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 656
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 700
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 720
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 672
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 220
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 360 ; 2 uses
  br label %.noexc41

.noexc41:                                         ; preds = %.noexc41.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.068 = phi i32 [ %i.k, %.noexc41.lr.ph ], [ %i.aq, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !45     ; 2 uses
  %i.s = sdiv i32 %.068, %i.r                     ; 2 uses
  %i.t = srem i32 %.068, %i.r                     ; 2 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !45     ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.s                   ; 3 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !45     ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.t                   ; 3 uses
  %i.y = load i32, ptr %6, align 4, !tbaa !45
  %i.z = sub nsw i32 %i.y, %i.v
  %.sroa.speculated64 = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.z) ; 2 uses
  %i.aa = load i32, ptr %7, align 4, !tbaa !45
  %i.ab = sub nsw i32 %i.aa, %i.x
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 2 uses
  %i.ac = load i32, ptr %i.m, align 4, !tbaa !86, !noalias !168
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !18, !noalias !168
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !168
  %i.af = sext i32 %i.s to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !59, !noalias !168 ; 2 uses
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = sext i32 %i.ac to i64
  %i.al = sext i32 %i.t to i64
  %i.am = mul nsw i64 %i.ak, %i.al
  %i.an = mul i64 %i.am, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.p, align 4, !tbaa !84
  %.not32 = icmp eq i32 %i.ap, 0
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc41
  call fastcc void @_ZN4ncnnL11pack_B_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.d:                                             ; preds = %.noexc41
  call fastcc void @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c
  %i.aq = add nsw i32 %.068, 1
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.068, %i.ar
  br i1 %.not.not, label %.noexc41, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL11pack_B_tileERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 36 uses
  %i.l = icmp sgt i32 %2, 11
  br i1 %i.l, label %.lr.ph66, label %.preheader10

.lr.ph66:                                         ; preds = %bb.a
  %i.m = shl nsw i32 %3, 2
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %4, 0
  %i.p = sext i32 %3 to i64                       ; 12 uses
  %i.q = icmp sgt i32 %4, 3
  %i.r = and i32 %4, -4
  %i.s = sext i32 %1 to i64                       ; 2 uses
  %i.t = zext nneg i32 %2 to i64
  %xtraiter = and i32 %4, 1
  %i.u = icmp eq i32 %4, 1
  %unroll_iter = and i32 %4, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod520 = trunc i32 %4 to i1
  br label %bb.b

.preheader10.loopexit:                            ; preds = %.loopexit12
  %i.v = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.loopexit, %bb.a
  %.0552.lcssa = phi i32 [ 0, %bb.a ], [ %i.v, %.preheader10.loopexit ] ; 3 uses
  %.0550.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.5, %.preheader10.loopexit ] ; 2 uses
  %i.w = add nuw nsw i32 %.0552.lcssa, 7
  %i.x = icmp slt i32 %i.w, %2
  br i1 %i.x, label %.lr.ph110, label %.preheader6

.lr.ph110:                                        ; preds = %.preheader10
  %i.y = shl nsw i32 %3, 2
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = icmp sgt i32 %4, 0
  %i.ab = sext i32 %3 to i64                      ; 8 uses
  %i.ac = icmp sgt i32 %4, 3
  %i.ad = and i32 %4, -4
  %i.ae = zext nneg i32 %.0552.lcssa to i64
  %i.af = sext i32 %1 to i64                      ; 2 uses
  %i.ag = sext i32 %2 to i64
  %invariant.op = add nsw i64 %i.ag, -15
  %i.ah = add i32 %4, -1
  %xtraiter521 = and i32 %4, 3                    ; 3 uses
  %i.ai = icmp ult i32 %i.ah, 3
  %unroll_iter525 = and i32 %4, 2147483644
  %lcmp.mod522.not = icmp eq i32 %xtraiter521, 0
  %lcmp.mod524 = icmp ne i32 %xtraiter521, 0
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph66, %.loopexit12
  %indvars.iv = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next, %.loopexit12 ] ; 4 uses
  %.055065 = phi ptr [ %.0.val, %.lr.ph66 ], [ %.5, %.loopexit12 ] ; 6 uses
  switch i32 %i.b, label %.loopexit12 [
    i32 4, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit12

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.aj = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.ak = add nsw i64 %indvars.iv, %i.s           ; 3 uses
  %i.al = add nsw i64 %i.ak, 8
  %i.am = mul i64 %i.k, %i.al
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.am
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.n ; 2 uses
  %i.ap = add nsw i64 %i.ak, 4
  %i.aq = mul i64 %i.k, %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.aq
end_hunk_1
begin_hunk_2_@_ZN4ncnnL11pack_B_tileERKNS_3MatERS0_iiii:bb.a
  %i.zl = getelementptr inbounds nuw i8, ptr %.1562171, i64 12
  %i.zm = getelementptr inbounds nuw i8, ptr %.1560172, i64 12
  %i.zn = load float, ptr %i.zl, align 4, !tbaa !68
  store float %i.zn, ptr %i.zk, align 4, !tbaa !68
  %i.zo = load float, ptr %i.zm, align 4, !tbaa !68
  %i.zp = getelementptr inbounds nuw i8, ptr %.20174, i64 28
  store float %i.zo, ptr %i.zp, align 4, !tbaa !68
  %i.zq = getelementptr inbounds nuw i8, ptr %.20174, i64 32 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.1562171, i64 16
  %i.zs = getelementptr inbounds nuw i8, ptr %.1560172, i64 16
  %i.zt = add nuw nsw i32 %.1558173, 4            ; 2 uses
  %exitcond272.not.3 = icmp eq i32 %i.zt, %4
  br i1 %exitcond272.not.3, label %._crit_edge, label %.lr.ph175, !llvm.loop !210

._crit_edge:                                      ; preds = %.lr.ph175.prol.loopexit, %.lr.ph175, %middle.block449, %.preheader2
  %.20.lcssa = phi ptr [ %.19.lcssa, %.preheader2 ], [ %i.xj, %middle.block449 ], [ %.lcssa481.unr, %.lr.ph175.prol.loopexit ], [ %i.zq, %.lr.ph175 ] ; 2 uses
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 2 ; 3 uses
  %i.zu = icmp slt i64 %indvars.iv.next274, %invariant.op343
  br i1 %i.zu, label %bb.j, label %.preheader1.loopexit, !llvm.loop !211

bb.k:                                             ; preds = %.lr.ph198, %._crit_edge194
  %indvars.iv277 = phi i64 [ %i.wb, %.lr.ph198 ], [ %indvars.iv.next278, %._crit_edge194 ] ; 2 uses
  %.21197 = phi ptr [ %.18.lcssa, %.lr.ph198 ], [ %.23.lcssa, %._crit_edge194 ] ; 3 uses
  %i.zv = load ptr, ptr %0, align 8, !tbaa !18
  %i.zw = add nsw i64 %indvars.iv277, %i.wc
  %i.zx = mul i64 %i.k, %i.zw
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %i.zx
  %i.zz = getelementptr inbounds [4 x i8], ptr %i.zy, i64 %i.vy ; 3 uses
  br i1 %i.vz, label %.lr.ph186.preheader, label %.preheader

.lr.ph186.preheader:                              ; preds = %bb.k
  br i1 %i.wg, label %.lr.ph186.epil.preheader, label %.lr.ph186

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph186
  br i1 %lcmp.mod556.not, label %.preheader, label %.lr.ph186.epil.preheader

.lr.ph186.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph186.preheader
  %.0548183.epil.init = phi ptr [ %i.zz, %.lr.ph186.preheader ], [ %i.abk, %.preheader.loopexit.unr-lcssa ]
  %.22182.epil.init = phi ptr [ %.21197, %.lr.ph186.preheader ], [ %i.abj, %.preheader.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod559)
  br label %.lr.ph186.epil

.lr.ph186.epil:                                   ; preds = %.lr.ph186.epil, %.lr.ph186.epil.preheader
  %.0548183.epil = phi ptr [ %i.aac, %.lr.ph186.epil ], [ %.0548183.epil.init, %.lr.ph186.epil.preheader ] ; 2 uses
  %.22182.epil = phi ptr [ %i.aab, %.lr.ph186.epil ], [ %.22182.epil.init, %.lr.ph186.epil.preheader ] ; 2 uses
  %epil.iter555 = phi i32 [ %epil.iter555.next, %.lr.ph186.epil ], [ 0, %.lr.ph186.epil.preheader ]
  %i.aaa = load <4 x float>, ptr %.0548183.epil, align 1, !tbaa !113
  store <4 x float> %i.aaa, ptr %.22182.epil, align 1, !tbaa !113
  %i.aab = getelementptr inbounds nuw i8, ptr %.22182.epil, i64 16 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %.0548183.epil, i64 16 ; 2 uses
  %epil.iter555.next = add i32 %epil.iter555, 1   ; 2 uses
  %epil.iter555.cmp.not = icmp eq i32 %epil.iter555.next, %xtraiter554
  br i1 %epil.iter555.cmp.not, label %.preheader, label %.lr.ph186.epil, !llvm.loop !212

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph186.epil, %bb.k
  %.22.lcssa = phi ptr [ %.21197, %bb.k ], [ %i.abj, %.preheader.loopexit.unr-lcssa ], [ %i.aab, %.lr.ph186.epil ] ; 5 uses
  %.0548.lcssa = phi ptr [ %i.zz, %bb.k ], [ %i.abk, %.preheader.loopexit.unr-lcssa ], [ %i.aac, %.lr.ph186.epil ] ; 4 uses
  %.0.lcssa = phi i32 [ 0, %bb.k ], [ %i.wa, %.lr.ph186.epil ], [ %i.wa, %.preheader.loopexit.unr-lcssa ] ; 4 uses
  %i.aad = icmp slt i32 %.0.lcssa, %4
  br i1 %i.aad, label %.lr.ph193.preheader, label %._crit_edge194

.lr.ph193.preheader:                              ; preds = %.preheader
  %.0548.lcssa457 = ptrtoaddr ptr %.0548.lcssa to i64
  %.22.lcssa456 = ptrtoaddr ptr %.22.lcssa to i64
  %i.aae = xor i32 %.0.lcssa, -1
  %i.aaf = add i32 %4, %i.aae                     ; 2 uses
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = add nuw nsw i64 %i.aag, 1              ; 2 uses
  %min.iters.check459 = icmp ult i32 %i.aaf, 7
  %i.aai = sub i64 %.0548.lcssa457, %.22.lcssa456
  %diff.check = icmp ugt i64 %i.aai, -32
  %or.cond = select i1 %min.iters.check459, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph193.preheader474, label %vector.ph460

vector.ph460:                                     ; preds = %.lr.ph193.preheader
  %n.vec461 = and i64 %i.aah, 8589934584          ; 4 uses
  %i.aaj = trunc i64 %n.vec461 to i32
  %i.aak = add i32 %.0.lcssa, %i.aaj
  %i.aal = shl nuw nsw i64 %n.vec461, 2           ; 2 uses
  %i.aam = getelementptr i8, ptr %.0548.lcssa, i64 %i.aal
  %i.aan = getelementptr i8, ptr %.22.lcssa, i64 %i.aal ; 2 uses
  br label %vector.body462

vector.body462:                                   ; preds = %vector.body462, %vector.ph460
  %index463 = phi i64 [ 0, %vector.ph460 ], [ %index.next468, %vector.body462 ] ; 2 uses
  %i.aao = shl i64 %index463, 2                   ; 2 uses
  %next.gep464 = getelementptr i8, ptr %.0548.lcssa, i64 %i.aao ; 2 uses
  %next.gep465 = getelementptr i8, ptr %.22.lcssa, i64 %i.aao ; 2 uses
  %i.aap = getelementptr i8, ptr %next.gep464, i64 16
  %wide.load466 = load <4 x float>, ptr %next.gep464, align 4, !tbaa !68
  %wide.load467 = load <4 x float>, ptr %i.aap, align 4, !tbaa !68
  %i.aaq = getelementptr i8, ptr %next.gep465, i64 16
  store <4 x float> %wide.load466, ptr %next.gep465, align 4, !tbaa !68
  store <4 x float> %wide.load467, ptr %i.aaq, align 4, !tbaa !68
  %index.next468 = add nuw i64 %index463, 8       ; 2 uses
  %i.aar = icmp eq i64 %index.next468, %n.vec461
  br i1 %i.aar, label %middle.block469, label %vector.body462, !llvm.loop !213

middle.block469:                                  ; preds = %vector.body462
  %cmp.n470 = icmp eq i64 %i.aah, %n.vec461
  br i1 %cmp.n470, label %._crit_edge194, label %.lr.ph193.preheader474

.lr.ph193.preheader474:                           ; preds = %.lr.ph193.preheader, %middle.block469
  %.1192.ph = phi i32 [ %.0.lcssa, %.lr.ph193.preheader ], [ %i.aak, %middle.block469 ] ; 4 uses
  %.1549191.ph = phi ptr [ %.0548.lcssa, %.lr.ph193.preheader ], [ %i.aam, %middle.block469 ] ; 2 uses
  %.23190.ph = phi ptr [ %.22.lcssa, %.lr.ph193.preheader ], [ %i.aan, %middle.block469 ] ; 2 uses
  %i.aas = sub i32 %4, %.1192.ph
  %xtraiter562 = and i32 %i.aas, 7                ; 2 uses
  %lcmp.mod563.not = icmp eq i32 %xtraiter562, 0
  br i1 %lcmp.mod563.not, label %.lr.ph193.prol.loopexit, label %.lr.ph193.prol

.lr.ph193.prol:                                   ; preds = %.lr.ph193.preheader474, %.lr.ph193.prol
  %.1192.prol = phi i32 [ %i.aaw, %.lr.ph193.prol ], [ %.1192.ph, %.lr.ph193.preheader474 ]
  %.1549191.prol = phi ptr [ %i.aav, %.lr.ph193.prol ], [ %.1549191.ph, %.lr.ph193.preheader474 ] ; 2 uses
  %.23190.prol = phi ptr [ %i.aau, %.lr.ph193.prol ], [ %.23190.ph, %.lr.ph193.preheader474 ] ; 2 uses
  %prol.iter564 = phi i32 [ %prol.iter564.next, %.lr.ph193.prol ], [ 0, %.lr.ph193.preheader474 ]
  %i.aat = load float, ptr %.1549191.prol, align 4, !tbaa !68
  store float %i.aat, ptr %.23190.prol, align 4, !tbaa !68
  %i.aau = getelementptr inbounds nuw i8, ptr %.23190.prol, i64 4 ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.1549191.prol, i64 4 ; 2 uses
  %i.aaw = add nuw nsw i32 %.1192.prol, 1         ; 2 uses
  %prol.iter564.next = add i32 %prol.iter564, 1   ; 2 uses
  %prol.iter564.cmp.not = icmp eq i32 %prol.iter564.next, %xtraiter562
  br i1 %prol.iter564.cmp.not, label %.lr.ph193.prol.loopexit, label %.lr.ph193.prol, !llvm.loop !214

.lr.ph193.prol.loopexit:                          ; preds = %.lr.ph193.prol, %.lr.ph193.preheader474
  %.lcssa476.unr = phi ptr [ poison, %.lr.ph193.preheader474 ], [ %i.aau, %.lr.ph193.prol ]
  %.1192.unr = phi i32 [ %.1192.ph, %.lr.ph193.preheader474 ], [ %i.aaw, %.lr.ph193.prol ]
  %.1549191.unr = phi ptr [ %.1549191.ph, %.lr.ph193.preheader474 ], [ %i.aav, %.lr.ph193.prol ]
  %.23190.unr = phi ptr [ %.23190.ph, %.lr.ph193.preheader474 ], [ %i.aau, %.lr.ph193.prol ]
  %i.aax = sub i32 %.1192.ph, %4
  %i.aay = icmp ugt i32 %i.aax, -8
  br i1 %i.aay, label %._crit_edge194, label %.lr.ph193

.lr.ph186:                                        ; preds = %.lr.ph186.preheader, %.lr.ph186
  %.0548183 = phi ptr [ %i.abk, %.lr.ph186 ], [ %i.zz, %.lr.ph186.preheader ] ; 5 uses
  %.22182 = phi ptr [ %i.abj, %.lr.ph186 ], [ %.21197, %.lr.ph186.preheader ] ; 5 uses
  %niter561 = phi i32 [ %niter561.next.3, %.lr.ph186 ], [ 0, %.lr.ph186.preheader ]
  %i.aaz = load <4 x float>, ptr %.0548183, align 1, !tbaa !113
  store <4 x float> %i.aaz, ptr %.22182, align 1, !tbaa !113
  %i.aba = getelementptr inbounds nuw i8, ptr %.22182, i64 16
  %i.abb = getelementptr inbounds nuw i8, ptr %.0548183, i64 16
  %i.abc = load <4 x float>, ptr %i.abb, align 1, !tbaa !113
  store <4 x float> %i.abc, ptr %i.aba, align 1, !tbaa !113
  %i.abd = getelementptr inbounds nuw i8, ptr %.22182, i64 32
  %i.abe = getelementptr inbounds nuw i8, ptr %.0548183, i64 32
  %i.abf = load <4 x float>, ptr %i.abe, align 1, !tbaa !113
  store <4 x float> %i.abf, ptr %i.abd, align 1, !tbaa !113
  %i.abg = getelementptr inbounds nuw i8, ptr %.22182, i64 48
  %i.abh = getelementptr inbounds nuw i8, ptr %.0548183, i64 48
  %i.abi = load <4 x float>, ptr %i.abh, align 1, !tbaa !113
  store <4 x float> %i.abi, ptr %i.abg, align 1, !tbaa !113
  %i.abj = getelementptr inbounds nuw i8, ptr %.22182, i64 64 ; 3 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %.0548183, i64 64 ; 3 uses
  %niter561.next.3 = add nuw nsw i32 %niter561, 4 ; 2 uses
  %niter561.ncmp.3.not = icmp eq i32 %niter561.next.3, %unroll_iter560
  br i1 %niter561.ncmp.3.not, label %.preheader.loopexit.unr-lcssa, label %.lr.ph186, !llvm.loop !215

.lr.ph193:                                        ; preds = %.lr.ph193.prol.loopexit, %.lr.ph193
  %.1192 = phi i32 [ %i.acj, %.lr.ph193 ], [ %.1192.unr, %.lr.ph193.prol.loopexit ]
  %.1549191 = phi ptr [ %i.aci, %.lr.ph193 ], [ %.1549191.unr, %.lr.ph193.prol.loopexit ] ; 9 uses
  %.23190 = phi ptr [ %i.ach, %.lr.ph193 ], [ %.23190.unr, %.lr.ph193.prol.loopexit ] ; 9 uses
  %i.abl = load float, ptr %.1549191, align 4, !tbaa !68
  store float %i.abl, ptr %.23190, align 4, !tbaa !68
  %i.abm = getelementptr inbounds nuw i8, ptr %.23190, i64 4
  %i.abn = getelementptr inbounds nuw i8, ptr %.1549191, i64 4
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !68
  store float %i.abo, ptr %i.abm, align 4, !tbaa !68
  %i.abp = getelementptr inbounds nuw i8, ptr %.23190, i64 8
  %i.abq = getelementptr inbounds nuw i8, ptr %.1549191, i64 8
  %i.abr = load float, ptr %i.abq, align 4, !tbaa !68
  store float %i.abr, ptr %i.abp, align 4, !tbaa !68
  %i.abs = getelementptr inbounds nuw i8, ptr %.23190, i64 12
  %i.abt = getelementptr inbounds nuw i8, ptr %.1549191, i64 12
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !68
  store float %i.abu, ptr %i.abs, align 4, !tbaa !68
  %i.abv = getelementptr inbounds nuw i8, ptr %.23190, i64 16
  %i.abw = getelementptr inbounds nuw i8, ptr %.1549191, i64 16
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !68
  store float %i.abx, ptr %i.abv, align 4, !tbaa !68
  %i.aby = getelementptr inbounds nuw i8, ptr %.23190, i64 20
  %i.abz = getelementptr inbounds nuw i8, ptr %.1549191, i64 20
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !68
  store float %i.aca, ptr %i.aby, align 4, !tbaa !68
  %i.acb = getelementptr inbounds nuw i8, ptr %.23190, i64 24
  %i.acc = getelementptr inbounds nuw i8, ptr %.1549191, i64 24
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !68
  store float %i.acd, ptr %i.acb, align 4, !tbaa !68
  %i.ace = getelementptr inbounds nuw i8, ptr %.23190, i64 28
  %i.acf = getelementptr inbounds nuw i8, ptr %.1549191, i64 28
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !68
  store float %i.acg, ptr %i.ace, align 4, !tbaa !68
  %i.ach = getelementptr inbounds nuw i8, ptr %.23190, i64 32 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.1549191, i64 32
  %i.acj = add nuw nsw i32 %.1192, 8              ; 2 uses
  %exitcond276.not.7 = icmp eq i32 %i.acj, %4
  br i1 %exitcond276.not.7, label %._crit_edge194, label %.lr.ph193, !llvm.loop !216

._crit_edge194:                                   ; preds = %.lr.ph193.prol.loopexit, %.lr.ph193, %middle.block469, %.preheader
  %.23.lcssa = phi ptr [ %.22.lcssa, %.preheader ], [ %i.aan, %middle.block469 ], [ %.lcssa476.unr, %.lr.ph193.prol.loopexit ], [ %i.ach, %.lr.ph193 ]
  %indvars.iv.next278 = add nsw i64 %indvars.iv277, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next278, %wide.trip.count
  br i1 %exitcond280.not, label %._crit_edge199, label %bb.k, !llvm.loop !217

._crit_edge199:                                   ; preds = %._crit_edge194, %.preheader1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 42 uses
  %i.l = icmp sgt i32 %2, 11
  br i1 %i.l, label %.lr.ph23, label %.preheader10

.lr.ph23:                                         ; preds = %bb.a
  %i.m = icmp eq i32 %i.b, 4
  %i.n = sext i32 %3 to i64
  %i.o = mul i64 %i.k, %i.n                       ; 3 uses
  %i.p = icmp sgt i32 %4, 3
  %.idx365 = shl i64 %i.k, 4
  %i.q = icmp ne i32 %i.b, 1                      ; 2 uses
  %i.r = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %i.m, label %.lr.ph23.split.us.preheader, label %.lr.ph23.split

.lr.ph23.split.us.preheader:                      ; preds = %.lr.ph23
  %i.s = sext i32 %1 to i64
  %i.t = zext nneg i32 %2 to i64
  %brmerge = or i1 %i.q, %i.r
  %xtraiter205 = and i32 %4, 1
  %i.u = icmp eq i32 %4, 1
  %unroll_iter209 = and i32 %4, 2147483646
  %lcmp.mod206.not = icmp eq i32 %xtraiter205, 0
  %lcmp.mod208 = trunc i32 %4 to i1
  br label %.lr.ph23.split.us

.lr.ph23.split.us:                                ; preds = %.lr.ph23.split.us.preheader, %.loopexit11.us
  %indvars.iv122 = phi i64 [ 0, %.lr.ph23.split.us.preheader ], [ %indvars.iv.next123, %.loopexit11.us ] ; 3 uses
  %.034222.us = phi ptr [ %.0.val, %.lr.ph23.split.us.preheader ], [ %.4.us, %.loopexit11.us ] ; 2 uses
  %i.v = add nsw i64 %indvars.iv122, %i.s         ; 2 uses
  br i1 %i.p, label %.lr.ph.us.preheader, label %.loopexit12.us

.lr.ph.us.preheader:                              ; preds = %.lr.ph23.split.us
  %i.w = load ptr, ptr %0, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.o
  %.idx149 = shl nsw i64 %i.v, 4
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %.idx149
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.115.us = phi ptr [ %i.cf, %.lr.ph.us ], [ %.034222.us, %.lr.ph.us.preheader ] ; 13 uses
  %.035214.us = phi ptr [ %i.cg, %.lr.ph.us ], [ %i.y, %.lr.ph.us.preheader ] ; 13 uses
  %.035313.us = phi i32 [ %i.ch, %.lr.ph.us ], [ 0, %.lr.ph.us.preheader ]
  %i.z = load <4 x float>, ptr %.035214.us, align 16, !tbaa !113 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.035214.us, i64 16
  %i.ab = load <4 x float>, ptr %i.aa, align 16, !tbaa !113 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.035214.us, i64 32
  %i.ad = load <4 x float>, ptr %i.ac, align 16, !tbaa !113 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.035214.us, i64 48
  %i.af = load <4 x float>, ptr %i.ae, align 16, !tbaa !113 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.035214.us, i64 64
  %i.ah = load <4 x float>, ptr %i.ag, align 16, !tbaa !113 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.035214.us, i64 80
  %i.aj = load <4 x float>, ptr %i.ai, align 16, !tbaa !113 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.035214.us, i64 96
  %i.al = load <4 x float>, ptr %i.ak, align 16, !tbaa !113 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.035214.us, i64 112
  %i.an = load <4 x float>, ptr %i.am, align 16, !tbaa !113 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.035214.us, i64 128
  %i.ap = load <4 x float>, ptr %i.ao, align 16, !tbaa !113 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.035214.us, i64 144
  %i.ar = load <4 x float>, ptr %i.aq, align 16, !tbaa !113 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.035214.us, i64 160
  %i.at = load <4 x float>, ptr %i.as, align 16, !tbaa !113 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.035214.us, i64 176
  %i.av = load <4 x float>, ptr %i.au, align 16, !tbaa !113 ; 2 uses
  %i.aw = shufflevector <4 x float> %i.z, <4 x float> %i.ab, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ax = shufflevector <4 x float> %i.ad, <4 x float> %i.af, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ay = shufflevector <4 x float> %i.z, <4 x float> %i.ab, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.az = shufflevector <4 x float> %i.ad, <4 x float> %i.af, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ba = shufflevector <4 x float> %i.aw, <4 x float> %i.ax, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bb = shufflevector <4 x float> %i.ax, <4 x float> %i.aw, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bc = shufflevector <4 x float> %i.ay, <4 x float> %i.az, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bd = shufflevector <4 x float> %i.az, <4 x float> %i.ay, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.be = shufflevector <4 x float> %i.ah, <4 x float> %i.aj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bf = shufflevector <4 x float> %i.al, <4 x float> %i.an, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bg = shufflevector <4 x float> %i.ah, <4 x float> %i.aj, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bh = shufflevector <4 x float> %i.al, <4 x float> %i.an, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bi = shufflevector <4 x float> %i.be, <4 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bj = shufflevector <4 x float> %i.bf, <4 x float> %i.be, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bk = shufflevector <4 x float> %i.bg, <4 x float> %i.bh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bl = shufflevector <4 x float> %i.bh, <4 x float> %i.bg, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bm = shufflevector <4 x float> %i.ap, <4 x float> %i.ar, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bn = shufflevector <4 x float> %i.at, <4 x float> %i.av, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bo = shufflevector <4 x float> %i.ap, <4 x float> %i.ar, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bp = shufflevector <4 x float> %i.at, <4 x float> %i.av, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bq = shufflevector <4 x float> %i.bm, <4 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.br = shufflevector <4 x float> %i.bn, <4 x float> %i.bm, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bs = shufflevector <4 x float> %i.bo, <4 x float> %i.bp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bt = shufflevector <4 x float> %i.bp, <4 x float> %i.bo, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.ba, ptr %.115.us, align 16, !tbaa !113
  %i.bu = getelementptr inbounds nuw i8, ptr %.115.us, i64 16
  store <4 x float> %i.bi, ptr %i.bu, align 16, !tbaa !113
  %i.bv = getelementptr inbounds nuw i8, ptr %.115.us, i64 32
  store <4 x float> %i.bq, ptr %i.bv, align 16, !tbaa !113
  %i.bw = getelementptr inbounds nuw i8, ptr %.115.us, i64 48
  store <4 x float> %i.bb, ptr %i.bw, align 16, !tbaa !113
  %i.bx = getelementptr inbounds nuw i8, ptr %.115.us, i64 64
  store <4 x float> %i.bj, ptr %i.bx, align 16, !tbaa !113
  %i.by = getelementptr inbounds nuw i8, ptr %.115.us, i64 80
  store <4 x float> %i.br, ptr %i.by, align 16, !tbaa !113
  %i.bz = getelementptr inbounds nuw i8, ptr %.115.us, i64 96
  store <4 x float> %i.bc, ptr %i.bz, align 16, !tbaa !113
  %i.ca = getelementptr inbounds nuw i8, ptr %.115.us, i64 112
  store <4 x float> %i.bk, ptr %i.ca, align 16, !tbaa !113
  %i.cb = getelementptr inbounds nuw i8, ptr %.115.us, i64 128
  store <4 x float> %i.bs, ptr %i.cb, align 16, !tbaa !113
  %i.cc = getelementptr inbounds nuw i8, ptr %.115.us, i64 144
  store <4 x float> %i.bd, ptr %i.cc, align 16, !tbaa !113
  %i.cd = getelementptr inbounds nuw i8, ptr %.115.us, i64 160
  store <4 x float> %i.bl, ptr %i.cd, align 16, !tbaa !113
  %i.ce = getelementptr inbounds nuw i8, ptr %.115.us, i64 176
  store <4 x float> %i.bt, ptr %i.ce, align 16, !tbaa !113
  %i.cf = getelementptr inbounds nuw i8, ptr %.115.us, i64 192 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.035214.us, i64 %.idx365
  %i.ch = add nuw nsw i32 %.035313.us, 4          ; 2 uses
  %i.ci = or disjoint i32 %i.ch, 3
  %i.cj = icmp slt i32 %i.ci, %4
  br i1 %i.cj, label %.lr.ph.us, label %.loopexit12.us, !llvm.loop !218

.lr.ph19.us.preheader:                            ; preds = %.loopexit12.us
  %i.ck = load ptr, ptr %0, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.o
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.v ; 2 uses
  br i1 %i.u, label %.lr.ph19.us.epil.preheader, label %.lr.ph19.us

.lr.ph19.us:                                      ; preds = %.lr.ph19.us.preheader, %.lr.ph19.us
  %.318.us = phi ptr [ %i.dd, %.lr.ph19.us ], [ %.1.lcssa.us, %.lr.ph19.us.preheader ] ; 7 uses
  %.035417.us = phi ptr [ %i.de, %.lr.ph19.us ], [ %i.cm, %.lr.ph19.us.preheader ] ; 4 uses
  %niter210 = phi i32 [ %niter210.next.1, %.lr.ph19.us ], [ 0, %.lr.ph19.us.preheader ]
  %i.cn = load <4 x float>, ptr %.035417.us, align 1, !tbaa !113
  store <4 x float> %i.cn, ptr %.318.us, align 16, !tbaa !113
  %i.co = getelementptr inbounds nuw i8, ptr %.318.us, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %.035417.us, i64 16
  %i.cq = load <4 x float>, ptr %i.cp, align 1, !tbaa !113
  store <4 x float> %i.cq, ptr %i.co, align 16, !tbaa !113
  %i.cr = getelementptr inbounds nuw i8, ptr %.318.us, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %.035417.us, i64 32
  %i.ct = load <4 x float>, ptr %i.cs, align 1, !tbaa !113
  store <4 x float> %i.ct, ptr %i.cr, align 16, !tbaa !113
  %i.cu = getelementptr inbounds nuw i8, ptr %.318.us, i64 48
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.035417.us, i64 %i.k ; 4 uses
  %i.cw = load <4 x float>, ptr %i.cv, align 1, !tbaa !113
  store <4 x float> %i.cw, ptr %i.cu, align 16, !tbaa !113
  %i.cx = getelementptr inbounds nuw i8, ptr %.318.us, i64 64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cz = load <4 x float>, ptr %i.cy, align 1, !tbaa !113
  store <4 x float> %i.cz, ptr %i.cx, align 16, !tbaa !113
  %i.da = getelementptr inbounds nuw i8, ptr %.318.us, i64 80
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.dc = load <4 x float>, ptr %i.db, align 1, !tbaa !113
  store <4 x float> %i.dc, ptr %i.da, align 16, !tbaa !113
  %i.dd = getelementptr inbounds nuw i8, ptr %.318.us, i64 96 ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.k ; 2 uses
  %niter210.next.1 = add nuw nsw i32 %niter210, 2 ; 2 uses
  %niter210.ncmp.1 = icmp eq i32 %niter210.next.1, %unroll_iter209
  br i1 %niter210.ncmp.1, label %.loopexit11.us.loopexit.unr-lcssa, label %.lr.ph19.us, !llvm.loop !219

.loopexit11.us.loopexit.unr-lcssa:                ; preds = %.lr.ph19.us
  br i1 %lcmp.mod206.not, label %.loopexit11.us, label %.lr.ph19.us.epil.preheader

.lr.ph19.us.epil.preheader:                       ; preds = %.loopexit11.us.loopexit.unr-lcssa, %.lr.ph19.us.preheader
  %.318.us.epil.init = phi ptr [ %.1.lcssa.us, %.lr.ph19.us.preheader ], [ %i.dd, %.loopexit11.us.loopexit.unr-lcssa ] ; 4 uses
  %.035417.us.epil.init = phi ptr [ %i.cm, %.lr.ph19.us.preheader ], [ %i.de, %.loopexit11.us.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod208)
  %i.df = load <4 x float>, ptr %.035417.us.epil.init, align 1, !tbaa !113
  store <4 x float> %i.df, ptr %.318.us.epil.init, align 16, !tbaa !113
  %i.dg = getelementptr inbounds nuw i8, ptr %.318.us.epil.init, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.035417.us.epil.init, i64 16
  %i.di = load <4 x float>, ptr %i.dh, align 1, !tbaa !113
  store <4 x float> %i.di, ptr %i.dg, align 16, !tbaa !113
  %i.dj = getelementptr inbounds nuw i8, ptr %.318.us.epil.init, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %.035417.us.epil.init, i64 32
  %i.dl = load <4 x float>, ptr %i.dk, align 1, !tbaa !113
  store <4 x float> %i.dl, ptr %i.dj, align 16, !tbaa !113
  %i.dm = getelementptr inbounds nuw i8, ptr %.318.us.epil.init, i64 48
  br label %.loopexit11.us

.loopexit11.us:                                   ; preds = %.lr.ph19.us.epil.preheader, %.loopexit11.us.loopexit.unr-lcssa, %.loopexit12.us
  %.4.us = phi ptr [ %.1.lcssa.us, %.loopexit12.us ], [ %i.dd, %.loopexit11.us.loopexit.unr-lcssa ], [ %i.dm, %.lr.ph19.us.epil.preheader ] ; 2 uses
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 12 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii:bb.a
  %i.oj = getelementptr inbounds nuw i8, ptr %.1877, i64 24
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %i.k ; 3 uses
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !68
  store float %i.ol, ptr %i.oj, align 4, !tbaa !68
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  %i.on = load float, ptr %i.om, align 4, !tbaa !68
  %i.oo = getelementptr inbounds nuw i8, ptr %.1877, i64 28
  store float %i.on, ptr %i.oo, align 4, !tbaa !68
  %i.op = getelementptr inbounds nuw i8, ptr %.1877, i64 32 ; 3 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.k ; 2 uses
  %niter230.next.3 = add nuw nsw i32 %niter230, 4 ; 2 uses
  %niter230.ncmp.3 = icmp eq i32 %niter230.next.3, %unroll_iter229
  br i1 %niter230.ncmp.3, label %.loopexit2.loopexit191.unr-lcssa, label %.lr.ph80, !llvm.loop !230

.loopexit2.loopexit.unr-lcssa:                    ; preds = %.lr.ph75
  br i1 %lcmp.mod233.not.not, label %.lr.ph75.epil.preheader, label %.loopexit2

.lr.ph75.epil.preheader:                          ; preds = %.loopexit2.loopexit.unr-lcssa, %.lr.ph75.preheader
  %.1674.epil.init = phi ptr [ %.1583, %.lr.ph75.preheader ], [ %i.nn, %.loopexit2.loopexit.unr-lcssa ] ; 3 uses
  %.034972.epil.init = phi ptr [ %i.my, %.lr.ph75.preheader ], [ %i.no, %.loopexit2.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod235)
  %i.or = load <4 x float>, ptr %.034972.epil.init, align 16, !tbaa !113 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.034972.epil.init, i64 16
  %i.ot = load <4 x float>, ptr %i.os, align 16, !tbaa !113 ; 2 uses
  %i.ou = shufflevector <4 x float> %i.or, <4 x float> %i.ot, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ov = shufflevector <4 x float> %i.or, <4 x float> %i.ot, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.ou, ptr %.1674.epil.init, align 16, !tbaa !113
  %i.ow = getelementptr inbounds nuw i8, ptr %.1674.epil.init, i64 16
  store <4 x float> %i.ov, ptr %i.ow, align 16, !tbaa !113
  %i.ox = getelementptr inbounds nuw i8, ptr %.1674.epil.init, i64 32
  br label %.loopexit2

.loopexit2.loopexit191.unr-lcssa:                 ; preds = %.lr.ph80
  br i1 %lcmp.mod226.not, label %.loopexit2, label %.lr.ph80.epil.preheader

.lr.ph80.epil.preheader:                          ; preds = %.loopexit2.loopexit191.unr-lcssa, %.lr.ph80.preheader
  %.034178.epil.init = phi ptr [ %i.ns, %.lr.ph80.preheader ], [ %i.oq, %.loopexit2.loopexit191.unr-lcssa ]
  %.1877.epil.init = phi ptr [ %.1583, %.lr.ph80.preheader ], [ %i.op, %.loopexit2.loopexit191.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod228)
  br label %.lr.ph80.epil

.lr.ph80.epil:                                    ; preds = %.lr.ph80.epil, %.lr.ph80.epil.preheader
  %.034178.epil = phi ptr [ %i.pd, %.lr.ph80.epil ], [ %.034178.epil.init, %.lr.ph80.epil.preheader ] ; 3 uses
  %.1877.epil = phi ptr [ %i.pc, %.lr.ph80.epil ], [ %.1877.epil.init, %.lr.ph80.epil.preheader ] ; 3 uses
  %epil.iter225 = phi i32 [ %epil.iter225.next, %.lr.ph80.epil ], [ 0, %.lr.ph80.epil.preheader ]
  %i.oy = load float, ptr %.034178.epil, align 4, !tbaa !68
  store float %i.oy, ptr %.1877.epil, align 4, !tbaa !68
  %i.oz = getelementptr inbounds nuw i8, ptr %.034178.epil, i64 4
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !68
  %i.pb = getelementptr inbounds nuw i8, ptr %.1877.epil, i64 4
  store float %i.pa, ptr %i.pb, align 4, !tbaa !68
  %i.pc = getelementptr inbounds nuw i8, ptr %.1877.epil, i64 8 ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %.034178.epil, i64 %i.k
  %epil.iter225.next = add i32 %epil.iter225, 1   ; 2 uses
  %epil.iter225.cmp.not = icmp eq i32 %epil.iter225.next, %xtraiter224
  br i1 %epil.iter225.cmp.not, label %.loopexit2, label %.lr.ph80.epil, !llvm.loop !231

.loopexit2:                                       ; preds = %.loopexit2.loopexit191.unr-lcssa, %.lr.ph80.epil, %.lr.ph75.epil.preheader, %.loopexit2.loopexit.unr-lcssa, %bb.h, %bb.i, %bb.j
  %.19 = phi ptr [ %.1583, %bb.h ], [ %.1583, %bb.j ], [ %i.ox, %.lr.ph75.epil.preheader ], [ %.1583, %bb.i ], [ %i.nn, %.loopexit2.loopexit.unr-lcssa ], [ %i.op, %.loopexit2.loopexit191.unr-lcssa ], [ %i.pc, %.lr.ph80.epil ] ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 2 ; 3 uses
  %i.pe = icmp slt i64 %indvars.iv.next135, %invariant.op173
  br i1 %i.pe, label %bb.h, label %.preheader.loopexit, !llvm.loop !232

bb.k:                                             ; preds = %.lr.ph99, %.loopexit
  %indvars.iv138 = phi i64 [ %i.mn, %.lr.ph99 ], [ %indvars.iv.next139, %.loopexit ] ; 3 uses
  %.2098 = phi ptr [ %.15.lcssa, %.lr.ph99 ], [ %.24, %.loopexit ] ; 7 uses
  switch i32 %i.b, label %.loopexit [
    i32 4, label %bb.l
    i32 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  br i1 %i.ml, label %.lr.ph90.preheader, label %.loopexit

.lr.ph90.preheader:                               ; preds = %bb.l
  %i.pf = load ptr, ptr %0, align 8, !tbaa !18
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.mk
  %i.ph = add nsw i64 %indvars.iv138, %i.mo
  %.idx153 = shl nsw i64 %i.ph, 4
  %i.pi = getelementptr inbounds i8, ptr %i.pg, i64 %.idx153 ; 2 uses
  br i1 %i.mu, label %.lr.ph90.epil.preheader, label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %.lr.ph90
  %.033988 = phi ptr [ %i.pu, %.lr.ph90 ], [ %i.pi, %.lr.ph90.preheader ] ; 2 uses
  %.2187 = phi ptr [ %i.pt, %.lr.ph90 ], [ %.2098, %.lr.ph90.preheader ] ; 5 uses
  %niter251 = phi i32 [ %niter251.next.3, %.lr.ph90 ], [ 0, %.lr.ph90.preheader ]
  %i.pj = load <4 x float>, ptr %.033988, align 16, !tbaa !113
  store <4 x float> %i.pj, ptr %.2187, align 16, !tbaa !113
  %i.pk = getelementptr inbounds nuw i8, ptr %.2187, i64 16
  %i.pl = getelementptr inbounds nuw i8, ptr %.033988, i64 %.idx ; 2 uses
  %i.pm = load <4 x float>, ptr %i.pl, align 16, !tbaa !113
  store <4 x float> %i.pm, ptr %i.pk, align 16, !tbaa !113
  %i.pn = getelementptr inbounds nuw i8, ptr %.2187, i64 32
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.idx ; 2 uses
  %i.pp = load <4 x float>, ptr %i.po, align 16, !tbaa !113
  store <4 x float> %i.pp, ptr %i.pn, align 16, !tbaa !113
  %i.pq = getelementptr inbounds nuw i8, ptr %.2187, i64 48
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 %.idx ; 2 uses
  %i.ps = load <4 x float>, ptr %i.pr, align 16, !tbaa !113
  store <4 x float> %i.ps, ptr %i.pq, align 16, !tbaa !113
  %i.pt = getelementptr inbounds nuw i8, ptr %.2187, i64 64 ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 %.idx ; 2 uses
  %niter251.next.3 = add nuw nsw i32 %niter251, 4 ; 2 uses
  %niter251.ncmp.3.not = icmp eq i32 %niter251.next.3, %unroll_iter250
  br i1 %niter251.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph90, !llvm.loop !233

bb.m:                                             ; preds = %bb.k
  br i1 %i.mm, label %.lr.ph95.preheader, label %.loopexit

.lr.ph95.preheader:                               ; preds = %bb.m
  %i.pv = load ptr, ptr %0, align 8, !tbaa !18
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %i.mk
  %i.px = getelementptr [4 x i8], ptr %i.pw, i64 %indvars.iv138
  %i.py = getelementptr [4 x i8], ptr %i.px, i64 %i.mo ; 2 uses
  br i1 %i.mt, label %.lr.ph95.epil.preheader, label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %.lr.ph95
  %.033793 = phi ptr [ %i.qw, %.lr.ph95 ], [ %i.py, %.lr.ph95.preheader ] ; 2 uses
  %.2392 = phi ptr [ %i.qv, %.lr.ph95 ], [ %.2098, %.lr.ph95.preheader ] ; 9 uses
  %niter244 = phi i32 [ %niter244.next.7, %.lr.ph95 ], [ 0, %.lr.ph95.preheader ]
  %i.pz = load float, ptr %.033793, align 4, !tbaa !68
  store float %i.pz, ptr %.2392, align 4, !tbaa !68
  %i.qa = getelementptr inbounds nuw i8, ptr %.2392, i64 4
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %.033793, i64 %i.k ; 2 uses
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !68
  store float %i.qc, ptr %i.qa, align 4, !tbaa !68
  %i.qd = getelementptr inbounds nuw i8, ptr %.2392, i64 8
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.k ; 2 uses
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !68
  store float %i.qf, ptr %i.qd, align 4, !tbaa !68
  %i.qg = getelementptr inbounds nuw i8, ptr %.2392, i64 12
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.k ; 2 uses
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !68
  store float %i.qi, ptr %i.qg, align 4, !tbaa !68
  %i.qj = getelementptr inbounds nuw i8, ptr %.2392, i64 16
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.k ; 2 uses
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !68
  store float %i.ql, ptr %i.qj, align 4, !tbaa !68
  %i.qm = getelementptr inbounds nuw i8, ptr %.2392, i64 20
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.k ; 2 uses
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !68
  store float %i.qo, ptr %i.qm, align 4, !tbaa !68
  %i.qp = getelementptr inbounds nuw i8, ptr %.2392, i64 24
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.k ; 2 uses
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !68
  store float %i.qr, ptr %i.qp, align 4, !tbaa !68
  %i.qs = getelementptr inbounds nuw i8, ptr %.2392, i64 28
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.k ; 2 uses
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !68
  store float %i.qu, ptr %i.qs, align 4, !tbaa !68
  %i.qv = getelementptr inbounds nuw i8, ptr %.2392, i64 32 ; 3 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.k ; 2 uses
  %niter244.next.7 = add nuw nsw i32 %niter244, 8 ; 2 uses
  %niter244.ncmp.7 = icmp eq i32 %niter244.next.7, %unroll_iter243
  br i1 %niter244.ncmp.7, label %.loopexit.loopexit189.unr-lcssa, label %.lr.ph95, !llvm.loop !234

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph90
  br i1 %lcmp.mod247.not, label %.loopexit, label %.lr.ph90.epil.preheader

.lr.ph90.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph90.preheader
  %.033988.epil.init = phi ptr [ %i.pi, %.lr.ph90.preheader ], [ %i.pu, %.loopexit.loopexit.unr-lcssa ]
  %.2187.epil.init = phi ptr [ %.2098, %.lr.ph90.preheader ], [ %i.pt, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod249)
  br label %.lr.ph90.epil

.lr.ph90.epil:                                    ; preds = %.lr.ph90.epil, %.lr.ph90.epil.preheader
  %.033988.epil = phi ptr [ %i.qz, %.lr.ph90.epil ], [ %.033988.epil.init, %.lr.ph90.epil.preheader ] ; 2 uses
  %.2187.epil = phi ptr [ %i.qy, %.lr.ph90.epil ], [ %.2187.epil.init, %.lr.ph90.epil.preheader ] ; 2 uses
  %epil.iter246 = phi i32 [ %epil.iter246.next, %.lr.ph90.epil ], [ 0, %.lr.ph90.epil.preheader ]
  %i.qx = load <4 x float>, ptr %.033988.epil, align 16, !tbaa !113
  store <4 x float> %i.qx, ptr %.2187.epil, align 16, !tbaa !113
  %i.qy = getelementptr inbounds nuw i8, ptr %.2187.epil, i64 16 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.033988.epil, i64 %.idx
  %epil.iter246.next = add i32 %epil.iter246, 1   ; 2 uses
  %epil.iter246.cmp.not = icmp eq i32 %epil.iter246.next, %xtraiter245
  br i1 %epil.iter246.cmp.not, label %.loopexit, label %.lr.ph90.epil, !llvm.loop !235

.loopexit.loopexit189.unr-lcssa:                  ; preds = %.lr.ph95
  br i1 %lcmp.mod240.not, label %.loopexit, label %.lr.ph95.epil.preheader

.lr.ph95.epil.preheader:                          ; preds = %.loopexit.loopexit189.unr-lcssa, %.lr.ph95.preheader
  %.033793.epil.init = phi ptr [ %i.py, %.lr.ph95.preheader ], [ %i.qw, %.loopexit.loopexit189.unr-lcssa ]
  %.2392.epil.init = phi ptr [ %.2098, %.lr.ph95.preheader ], [ %i.qv, %.loopexit.loopexit189.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod242)
  br label %.lr.ph95.epil

.lr.ph95.epil:                                    ; preds = %.lr.ph95.epil, %.lr.ph95.epil.preheader
  %.033793.epil = phi ptr [ %i.rc, %.lr.ph95.epil ], [ %.033793.epil.init, %.lr.ph95.epil.preheader ] ; 2 uses
  %.2392.epil = phi ptr [ %i.rb, %.lr.ph95.epil ], [ %.2392.epil.init, %.lr.ph95.epil.preheader ] ; 2 uses
  %epil.iter239 = phi i32 [ %epil.iter239.next, %.lr.ph95.epil ], [ 0, %.lr.ph95.epil.preheader ]
  %i.ra = load float, ptr %.033793.epil, align 4, !tbaa !68
  store float %i.ra, ptr %.2392.epil, align 4, !tbaa !68
  %i.rb = getelementptr inbounds nuw i8, ptr %.2392.epil, i64 4 ; 2 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %.033793.epil, i64 %i.k
  %epil.iter239.next = add i32 %epil.iter239, 1   ; 2 uses
  %epil.iter239.cmp.not = icmp eq i32 %epil.iter239.next, %xtraiter238
  br i1 %epil.iter239.cmp.not, label %.loopexit, label %.lr.ph95.epil, !llvm.loop !236

.loopexit:                                        ; preds = %.loopexit.loopexit189.unr-lcssa, %.lr.ph95.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph90.epil, %bb.k, %bb.l, %bb.m
  %.24 = phi ptr [ %.2098, %bb.k ], [ %.2098, %bb.m ], [ %i.qy, %.lr.ph90.epil ], [ %.2098, %bb.l ], [ %i.pt, %.loopexit.loopexit.unr-lcssa ], [ %i.qv, %.loopexit.loopexit189.unr-lcssa ], [ %i.rb, %.lr.ph95.epil ]
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count
  br i1 %exitcond141.not, label %._crit_edge, label %bb.k, !llvm.loop !237

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  ret void
}

declare void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn22get_physical_cpu_countEv() local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn8Gemm_x8612forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(800) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 12 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %i.m = alloca float, align 4                    ; 7 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %8 = alloca %"struct.ncnn::gemm_x86_int8_omp_args", align 4 ; 12 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 17 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %i.p = alloca float, align 4                    ; 5 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %i.r = alloca i32, align 4                      ; 6 uses
  %i.s = alloca i32, align 4                      ; 6 uses
  %i.t = alloca i32, align 4                      ; 9 uses
  %i.u = alloca i32, align 4                      ; 9 uses
  %i.v = alloca i32, align 4                      ; 5 uses
  %i.w = alloca i32, align 4                      ; 8 uses
  %i.x = alloca i32, align 4                      ; 9 uses
  %i.y = alloca i32, align 4                      ; 6 uses
  %i.z = alloca i32, align 4                      ; 10 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %14 = alloca %"struct.ncnn::gemm_x86_int8_omp_args", align 4 ; 12 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %i.aa = alloca i32, align 4                     ; 4 uses
  %i.ab = alloca i32, align 4                     ; 4 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %i.ac = alloca i32, align 4                     ; 4 uses
  %i.ad = alloca i32, align 4                     ; 6 uses
  %i.ae = alloca i32, align 4                     ; 4 uses
  %i.af = alloca i32, align 4                     ; 7 uses
  %i.ag = alloca i32, align 4                     ; 5 uses
  %i.ah = alloca i32, align 4                     ; 8 uses
  %i.ai = alloca i32, align 4                     ; 7 uses
  %i.aj = alloca i32, align 4                     ; 5 uses
  %i.ak = alloca i32, align 4                     ; 6 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %i.al = alloca i32, align 4                     ; 5 uses
  %i.am = alloca float, align 4                   ; 11 uses
  %18 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %19 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %20 = alloca %"struct.ncnn::gemm_x86_int8_omp_args", align 4 ; 10 uses
  %i.an = alloca i32, align 4                     ; 4 uses
  %i.ao = alloca i32, align 4                     ; 4 uses
  %i.ap = alloca i32, align 4                     ; 4 uses
  %i.aq = alloca i32, align 4                     ; 4 uses
  %i.ar = alloca i32, align 4                     ; 5 uses
  %i.as = alloca i32, align 4                     ; 5 uses
  %i.at = alloca i32, align 4                     ; 5 uses
  %i.au = alloca i32, align 4                     ; 5 uses
  %21 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %22 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %23 = alloca %"struct.ncnn::gemm_x86_int8_omp_args", align 4 ; 10 uses
  %i.av = alloca i32, align 4                     ; 4 uses
  %24 = alloca %"class.ncnn::Mat", align 16       ; 32 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !43
  %.not = icmp eq i32 %i.ax, 0                    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4
  %.not132 = icmp eq i32 %i.az, 0                 ; 4 uses
  %or.cond171 = select i1 %.not, i1 true, i1 %.not132
  br i1 %or.cond171, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !54
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.be = load ptr, ptr %1, align 8, !tbaa !103   ; 16 uses
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !44 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !84
  %.not140 = icmp eq i32 %i.bi, 0
  br i1 %.not140, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !85
  %i.bl = icmp eq i32 %i.bk, 3
  %.in141.v = select i1 %i.bl, i64 56, i64 48
  %.in141 = getelementptr inbounds nuw i8, ptr %i.be, i64 %.in141.v
  %i.bm = load i32, ptr %.in141, align 8, !tbaa !45
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !60
  %i.bp = mul nsw i32 %i.bo, %i.bm
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 44
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !86
  br label %bb.r

bb.g:                                             ; preds = %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !87
  %.not135 = icmp eq i32 %i.bt, 0                 ; 2 uses
  br i1 %.not132, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not135, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 44
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !86
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !85
  %i.by = icmp eq i32 %i.bx, 3
  %.in139.v = select i1 %i.by, i64 56, i64 48
  %.in139 = getelementptr inbounds nuw i8, ptr %i.be, i64 %.in139.v
  %i.bz = load i32, ptr %.in139, align 8, !tbaa !45
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !60
  %i.cc = mul nsw i32 %i.cb, %i.bz
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cd = phi i32 [ %i.bv, %bb.i ], [ %i.cc, %bb.j ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !54
  br label %bb.r

bb.l:                                             ; preds = %bb.g
  br i1 %.not135, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 44
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !86
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !85
  %i.ck = icmp eq i32 %i.cj, 3
  %.in.v = select i1 %i.ck, i64 56, i64 48
  %.in = getelementptr inbounds nuw i8, ptr %i.be, i64 %.in.v
  %i.cl = load i32, ptr %.in, align 8, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !60
  %i.co = mul nsw i32 %i.cn, %i.cl
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cp = phi i32 [ %i.ch, %bb.m ], [ %i.co, %bb.n ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !84
  %.not136 = icmp eq i32 %i.cr, 0
  br i1 %.not136, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !85
  %i.cu = icmp eq i32 %i.ct, 3
end_hunk_3
begin_hunk_4_@_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii:bb.a
  %i.fy = getelementptr inbounds nuw i8, ptr %.014542, i64 4
  store float %i.fx, ptr %i.fy, align 4, !tbaa !68
  %i.fz = getelementptr inbounds nuw i8, ptr %.841, i64 8
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.014542, i64 %i.k ; 3 uses
  %i.gb = load float, ptr %i.fz, align 4, !tbaa !68
  store float %i.gb, ptr %i.ga, align 4, !tbaa !68
  %i.gc = getelementptr inbounds nuw i8, ptr %.841, i64 12
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !68
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store float %i.gd, ptr %i.ge, align 4, !tbaa !68
  %i.gf = getelementptr inbounds nuw i8, ptr %.841, i64 16
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.k ; 3 uses
  %i.gh = load float, ptr %i.gf, align 4, !tbaa !68
  store float %i.gh, ptr %i.gg, align 4, !tbaa !68
  %i.gi = getelementptr inbounds nuw i8, ptr %.841, i64 20
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !68
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store float %i.gj, ptr %i.gk, align 4, !tbaa !68
  %i.gl = getelementptr inbounds nuw i8, ptr %.841, i64 24
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.k ; 3 uses
  %i.gn = load float, ptr %i.gl, align 4, !tbaa !68
  store float %i.gn, ptr %i.gm, align 4, !tbaa !68
  %i.go = getelementptr inbounds nuw i8, ptr %.841, i64 28
  %i.gp = load float, ptr %i.go, align 4, !tbaa !68
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  store float %i.gp, ptr %i.gq, align 4, !tbaa !68
  %i.gr = getelementptr inbounds nuw i8, ptr %.841, i64 32 ; 3 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.k ; 2 uses
  %niter140.next.3 = add nuw nsw i32 %niter140, 4 ; 2 uses
  %niter140.ncmp.3 = icmp eq i32 %niter140.next.3, %unroll_iter139
  br i1 %niter140.ncmp.3, label %.loopexit2.loopexit119.unr-lcssa, label %.lr.ph44, !llvm.loop !345

.loopexit2.loopexit119.unr-lcssa:                 ; preds = %.lr.ph44
  br i1 %lcmp.mod136.not, label %.loopexit2, label %.lr.ph44.epil.preheader

.lr.ph44.epil.preheader:                          ; preds = %.loopexit2.loopexit119.unr-lcssa, %.lr.ph44.preheader
  %.014542.epil.init = phi ptr [ %gep, %.lr.ph44.preheader ], [ %i.gs, %.loopexit2.loopexit119.unr-lcssa ]
  %.841.epil.init = phi ptr [ %.547, %.lr.ph44.preheader ], [ %i.gr, %.loopexit2.loopexit119.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph44.epil

.lr.ph44.epil:                                    ; preds = %.lr.ph44.epil, %.lr.ph44.epil.preheader
  %.014542.epil = phi ptr [ %i.gy, %.lr.ph44.epil ], [ %.014542.epil.init, %.lr.ph44.epil.preheader ] ; 3 uses
  %.841.epil = phi ptr [ %i.gx, %.lr.ph44.epil ], [ %.841.epil.init, %.lr.ph44.epil.preheader ] ; 3 uses
  %epil.iter135 = phi i32 [ %epil.iter135.next, %.lr.ph44.epil ], [ 0, %.lr.ph44.epil.preheader ]
  %i.gt = load float, ptr %.841.epil, align 4, !tbaa !68
  store float %i.gt, ptr %.014542.epil, align 4, !tbaa !68
  %i.gu = getelementptr inbounds nuw i8, ptr %.841.epil, i64 4
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !68
  %i.gw = getelementptr inbounds nuw i8, ptr %.014542.epil, i64 4
  store float %i.gv, ptr %i.gw, align 4, !tbaa !68
  %i.gx = getelementptr inbounds nuw i8, ptr %.841.epil, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.014542.epil, i64 %i.k
  %epil.iter135.next = add i32 %epil.iter135, 1   ; 2 uses
  %epil.iter135.cmp.not = icmp eq i32 %epil.iter135.next, %xtraiter134
  br i1 %epil.iter135.cmp.not, label %.loopexit2, label %.lr.ph44.epil, !llvm.loop !346

.loopexit2:                                       ; preds = %.loopexit2.loopexit119.unr-lcssa, %.lr.ph44.epil, %.lr.ph, %bb.c, %bb.d, %bb.e
  %.9 = phi ptr [ %.547, %bb.c ], [ %.547, %bb.e ], [ %i.fq, %.lr.ph ], [ %.547, %bb.d ], [ %i.gr, %.loopexit2.loopexit119.unr-lcssa ], [ %i.gx, %.lr.ph44.epil ] ; 2 uses
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 2 ; 3 uses
  %i.gz = icmp slt i64 %indvars.iv.next85, %invariant.op
  br i1 %i.gz, label %bb.c, label %.preheader.loopexit, !llvm.loop !347

bb.f:                                             ; preds = %.lr.ph63, %.loopexit
  %indvars.iv88 = phi i64 [ %i.el, %.lr.ph63 ], [ %indvars.iv.next89, %.loopexit ] ; 3 uses
  %.1062 = phi ptr [ %.5.lcssa, %.lr.ph63 ], [ %.14, %.loopexit ] ; 7 uses
  switch i32 %i.b, label %.loopexit [
    i32 4, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  br i1 %i.ej, label %.lr.ph54.preheader, label %.loopexit

.lr.ph54.preheader:                               ; preds = %bb.g
  %i.ha = load ptr, ptr %0, align 8, !tbaa !18
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.ei
  %i.hc = add nsw i64 %indvars.iv88, %i.em
  %.idx97 = shl nsw i64 %i.hc, 4
  %i.hd = getelementptr inbounds i8, ptr %i.hb, i64 %.idx97 ; 2 uses
  br i1 %i.er, label %.lr.ph54.epil.preheader, label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %.lr.ph54
  %.014352 = phi ptr [ %i.hp, %.lr.ph54 ], [ %i.hd, %.lr.ph54.preheader ] ; 2 uses
  %.1151 = phi ptr [ %i.ho, %.lr.ph54 ], [ %.1062, %.lr.ph54.preheader ] ; 5 uses
  %niter154 = phi i32 [ %niter154.next.3, %.lr.ph54 ], [ 0, %.lr.ph54.preheader ]
  %i.he = load <4 x float>, ptr %.1151, align 1, !tbaa !113
  store <4 x float> %i.he, ptr %.014352, align 16, !tbaa !113
  %i.hf = getelementptr inbounds nuw i8, ptr %.1151, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %.014352, i64 %.idx ; 2 uses
  %i.hh = load <4 x float>, ptr %i.hf, align 1, !tbaa !113
  store <4 x float> %i.hh, ptr %i.hg, align 16, !tbaa !113
  %i.hi = getelementptr inbounds nuw i8, ptr %.1151, i64 32
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx ; 2 uses
  %i.hk = load <4 x float>, ptr %i.hi, align 1, !tbaa !113
  store <4 x float> %i.hk, ptr %i.hj, align 16, !tbaa !113
  %i.hl = getelementptr inbounds nuw i8, ptr %.1151, i64 48
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.idx ; 2 uses
  %i.hn = load <4 x float>, ptr %i.hl, align 1, !tbaa !113
  store <4 x float> %i.hn, ptr %i.hm, align 16, !tbaa !113
  %i.ho = getelementptr inbounds nuw i8, ptr %.1151, i64 64 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.idx ; 2 uses
  %niter154.next.3 = add nuw nsw i32 %niter154, 4 ; 2 uses
  %niter154.ncmp.3.not = icmp eq i32 %niter154.next.3, %unroll_iter153
  br i1 %niter154.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph54, !llvm.loop !348

bb.h:                                             ; preds = %bb.f
  br i1 %i.ek, label %.lr.ph59.preheader, label %.loopexit

.lr.ph59.preheader:                               ; preds = %bb.h
  %i.hq = load ptr, ptr %0, align 8, !tbaa !18
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.ei
  %i.hs = getelementptr [4 x i8], ptr %i.hr, i64 %indvars.iv88
  %i.ht = getelementptr [4 x i8], ptr %i.hs, i64 %i.em ; 2 uses
  br i1 %i.eq, label %.lr.ph59.epil.preheader, label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %.lr.ph59
  %.014157 = phi ptr [ %i.ir, %.lr.ph59 ], [ %i.ht, %.lr.ph59.preheader ] ; 2 uses
  %.1356 = phi ptr [ %i.iq, %.lr.ph59 ], [ %.1062, %.lr.ph59.preheader ] ; 9 uses
  %niter147 = phi i32 [ %niter147.next.7, %.lr.ph59 ], [ 0, %.lr.ph59.preheader ]
  %i.hu = load float, ptr %.1356, align 4, !tbaa !68
  store float %i.hu, ptr %.014157, align 4, !tbaa !68
  %i.hv = getelementptr inbounds nuw i8, ptr %.1356, i64 4
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.014157, i64 %i.k ; 2 uses
  %i.hx = load float, ptr %i.hv, align 4, !tbaa !68
  store float %i.hx, ptr %i.hw, align 4, !tbaa !68
  %i.hy = getelementptr inbounds nuw i8, ptr %.1356, i64 8
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.k ; 2 uses
  %i.ia = load float, ptr %i.hy, align 4, !tbaa !68
  store float %i.ia, ptr %i.hz, align 4, !tbaa !68
  %i.ib = getelementptr inbounds nuw i8, ptr %.1356, i64 12
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.k ; 2 uses
  %i.id = load float, ptr %i.ib, align 4, !tbaa !68
  store float %i.id, ptr %i.ic, align 4, !tbaa !68
  %i.ie = getelementptr inbounds nuw i8, ptr %.1356, i64 16
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.k ; 2 uses
  %i.ig = load float, ptr %i.ie, align 4, !tbaa !68
  store float %i.ig, ptr %i.if, align 4, !tbaa !68
  %i.ih = getelementptr inbounds nuw i8, ptr %.1356, i64 20
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.k ; 2 uses
  %i.ij = load float, ptr %i.ih, align 4, !tbaa !68
  store float %i.ij, ptr %i.ii, align 4, !tbaa !68
  %i.ik = getelementptr inbounds nuw i8, ptr %.1356, i64 24
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.k ; 2 uses
  %i.im = load float, ptr %i.ik, align 4, !tbaa !68
  store float %i.im, ptr %i.il, align 4, !tbaa !68
  %i.in = getelementptr inbounds nuw i8, ptr %.1356, i64 28
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.k ; 2 uses
  %i.ip = load float, ptr %i.in, align 4, !tbaa !68
  store float %i.ip, ptr %i.io, align 4, !tbaa !68
  %i.iq = getelementptr inbounds nuw i8, ptr %.1356, i64 32 ; 3 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.k ; 2 uses
  %niter147.next.7 = add nuw nsw i32 %niter147, 8 ; 2 uses
  %niter147.ncmp.7 = icmp eq i32 %niter147.next.7, %unroll_iter146
  br i1 %niter147.ncmp.7, label %.loopexit.loopexit117.unr-lcssa, label %.lr.ph59, !llvm.loop !349

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph54
  br i1 %lcmp.mod150.not, label %.loopexit, label %.lr.ph54.epil.preheader

.lr.ph54.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph54.preheader
  %.014352.epil.init = phi ptr [ %i.hd, %.lr.ph54.preheader ], [ %i.hp, %.loopexit.loopexit.unr-lcssa ]
  %.1151.epil.init = phi ptr [ %.1062, %.lr.ph54.preheader ], [ %i.ho, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %.lr.ph54.epil

.lr.ph54.epil:                                    ; preds = %.lr.ph54.epil, %.lr.ph54.epil.preheader
  %.014352.epil = phi ptr [ %i.iu, %.lr.ph54.epil ], [ %.014352.epil.init, %.lr.ph54.epil.preheader ] ; 2 uses
  %.1151.epil = phi ptr [ %i.it, %.lr.ph54.epil ], [ %.1151.epil.init, %.lr.ph54.epil.preheader ] ; 2 uses
  %epil.iter149 = phi i32 [ %epil.iter149.next, %.lr.ph54.epil ], [ 0, %.lr.ph54.epil.preheader ]
  %i.is = load <4 x float>, ptr %.1151.epil, align 1, !tbaa !113
  store <4 x float> %i.is, ptr %.014352.epil, align 16, !tbaa !113
  %i.it = getelementptr inbounds nuw i8, ptr %.1151.epil, i64 16 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.014352.epil, i64 %.idx
  %epil.iter149.next = add i32 %epil.iter149, 1   ; 2 uses
  %epil.iter149.cmp.not = icmp eq i32 %epil.iter149.next, %xtraiter148
  br i1 %epil.iter149.cmp.not, label %.loopexit, label %.lr.ph54.epil, !llvm.loop !350

.loopexit.loopexit117.unr-lcssa:                  ; preds = %.lr.ph59
  br i1 %lcmp.mod143.not, label %.loopexit, label %.lr.ph59.epil.preheader

.lr.ph59.epil.preheader:                          ; preds = %.loopexit.loopexit117.unr-lcssa, %.lr.ph59.preheader
  %.014157.epil.init = phi ptr [ %i.ht, %.lr.ph59.preheader ], [ %i.ir, %.loopexit.loopexit117.unr-lcssa ]
  %.1356.epil.init = phi ptr [ %.1062, %.lr.ph59.preheader ], [ %i.iq, %.loopexit.loopexit117.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod145)
  br label %.lr.ph59.epil

.lr.ph59.epil:                                    ; preds = %.lr.ph59.epil, %.lr.ph59.epil.preheader
  %.014157.epil = phi ptr [ %i.ix, %.lr.ph59.epil ], [ %.014157.epil.init, %.lr.ph59.epil.preheader ] ; 2 uses
  %.1356.epil = phi ptr [ %i.iw, %.lr.ph59.epil ], [ %.1356.epil.init, %.lr.ph59.epil.preheader ] ; 2 uses
  %epil.iter142 = phi i32 [ %epil.iter142.next, %.lr.ph59.epil ], [ 0, %.lr.ph59.epil.preheader ]
  %i.iv = load float, ptr %.1356.epil, align 4, !tbaa !68
  store float %i.iv, ptr %.014157.epil, align 4, !tbaa !68
  %i.iw = getelementptr inbounds nuw i8, ptr %.1356.epil, i64 4 ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %.014157.epil, i64 %i.k
  %epil.iter142.next = add i32 %epil.iter142, 1   ; 2 uses
  %epil.iter142.cmp.not = icmp eq i32 %epil.iter142.next, %xtraiter141
  br i1 %epil.iter142.cmp.not, label %.loopexit, label %.lr.ph59.epil, !llvm.loop !351

.loopexit:                                        ; preds = %.loopexit.loopexit117.unr-lcssa, %.lr.ph59.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph54.epil, %bb.f, %bb.g, %bb.h
  %.14 = phi ptr [ %.1062, %bb.f ], [ %.1062, %bb.h ], [ %i.it, %.lr.ph54.epil ], [ %.1062, %bb.g ], [ %i.ho, %.loopexit.loopexit.unr-lcssa ], [ %i.iq, %.loopexit.loopexit117.unr-lcssa ], [ %i.iw, %.lr.ph59.epil ]
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  br i1 %exitcond91.not, label %._crit_edge, label %bb.f, !llvm.loop !352

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL11gemm_AT_x86ERKNS_3MatES2_S2_RS0_iiiiiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not71 = icmp sgt i32 %i.k, %i.j
  br i1 %.not71, label %._crit_edge, label %.noexc45.lr.ph

.noexc45.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %.noexc45

.noexc45:                                         ; preds = %.noexc45.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.072 = phi i32 [ %i.k, %.noexc45.lr.ph ], [ %i.an, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.o = load i32, ptr %3, align 4, !tbaa !45     ; 2 uses
  %i.p = sdiv i32 %.072, %i.o                     ; 2 uses
  %i.q = srem i32 %.072, %i.o                     ; 2 uses
  %i.r = load i32, ptr %4, align 4, !tbaa !45     ; 2 uses
  %i.s = mul nsw i32 %i.r, %i.p                   ; 3 uses
  %i.t = load i32, ptr %5, align 4, !tbaa !45     ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.q                   ; 3 uses
  %i.v = load i32, ptr %6, align 4, !tbaa !45
  %i.w = sub nsw i32 %i.v, %i.s
  %.sroa.speculated68 = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.w) ; 2 uses
  %i.x = load i32, ptr %7, align 4, !tbaa !45
  %i.y = sub nsw i32 %i.x, %i.u
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.y) ; 2 uses
  %i.z = load i32, ptr %i.l, align 4, !tbaa !86, !noalias !353
  %i.aa = load ptr, ptr %8, align 8, !tbaa !18, !noalias !353
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !353
  %i.ac = sext i32 %i.p to i64
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !59, !noalias !353 ; 2 uses
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  %i.ah = sext i32 %i.z to i64
  %i.ai = sext i32 %i.q to i64
  %i.aj = mul nsw i64 %i.ah, %i.ai
  %i.ak = mul i64 %i.aj, %i.ae
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %9, align 4, !tbaa !45
  %.not36 = icmp eq i32 %i.am, 0
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc45
  call fastcc void @_ZN4ncnnL11pack_B_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr %i.al, i32 noundef %i.s, i32 noundef %.sroa.speculated68, i32 noundef %i.u, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.d:                                             ; preds = %.noexc45
  call fastcc void @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr %i.al, i32 noundef %i.s, i32 noundef %.sroa.speculated68, i32 noundef %i.u, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c
  %i.an = add nsw i32 %.072, 1
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.072, %i.ao
  br i1 %.not.not, label %.noexc45, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL11gemm_AT_x86ERKNS_3MatES2_S2_RS0_iiiiiiiiiRKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %16) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not187 = icmp sgt i32 %i.k, %i.j
  br i1 %.not187, label %._crit_edge190, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 52
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 52
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.059188 = phi i32 [ %i.k, %.lr.ph ], [ %i.du, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.aj = load i32, ptr %3, align 4, !tbaa !45    ; 2 uses
  %i.ak = sdiv i32 %.059188, %i.aj
  %i.al = srem i32 %.059188, %i.aj
  %i.am = load i32, ptr %4, align 4, !tbaa !45    ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.ak                ; 5 uses
  %i.ao = load i32, ptr %5, align 4, !tbaa !45    ; 2 uses
  %i.ap = mul nsw i32 %i.ao, %i.al                ; 5 uses
  %i.aq = load i32, ptr %6, align 4, !tbaa !45
  %i.ar = sub nsw i32 %i.aq, %i.an
  %.sroa.speculated183 = call i32 @llvm.smin.i32(i32 %i.am, i32 %i.ar) ; 3 uses
  %i.as = load i32, ptr %7, align 4, !tbaa !45
  %i.at = sub nsw i32 %i.as, %i.ap
  %.sroa.speculated179 = call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.at) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #9
  store i64 0, ptr %i.u, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %17, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.o, i8 0, i64 28, i1 false)
  %i.au = load i32, ptr %8, align 4, !tbaa !45
  %i.av = load i32, ptr %9, align 4, !tbaa !45
  %i.aw = icmp sgt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = load i32, ptr %10, align 4, !tbaa !45
  %i.ay = icmp eq i32 %i.ax, 3
  br i1 %i.ay, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = load i32, ptr %11, align 4, !tbaa !45
  %.not60 = icmp eq i32 %i.az, 0
  br i1 %.not60, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ba = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc100 unwind label %bb.j

.noexc100:                                        ; preds = %bb.f
  %i.bb = load i32, ptr %i.v, align 4, !tbaa !86, !noalias !356 ; 2 uses
  %i.bc = load i32, ptr %i.w, align 8, !tbaa !88, !noalias !356 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4ncnn8Gemm_x8620create_pipeline_int8ERKNS_6OptionE.omp_outlined:bb.a
  %.097.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.fq, %.preheader1.i.loopexit.unr-lcssa ], [ %i.fq, %.lr.ph.i.epil.preheader ] ; 5 uses
  %i.ha = icmp slt i32 %.097.lcssa.i, %.sroa.speculated
  br i1 %i.ha, label %.lr.ph43.i.preheader, label %._crit_edge.i

.lr.ph43.i.preheader:                             ; preds = %.preheader1.i
  %i.hb = sub i32 %.sroa.speculated, %.097.lcssa.i
  %xtraiter126 = and i32 %i.hb, 3                 ; 2 uses
  %lcmp.mod127.not = icmp eq i32 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %.lr.ph43.i.prol.loopexit, label %.lr.ph43.i.prol

.lr.ph43.i.prol:                                  ; preds = %.lr.ph43.i.preheader, %.lr.ph43.i.prol
  %.142.i.prol = phi i32 [ %i.hi, %.lr.ph43.i.prol ], [ %.097.lcssa.i, %.lr.ph43.i.preheader ]
  %.19941.i.prol = phi ptr [ %i.hh, %.lr.ph43.i.prol ], [ %.098.lcssa.i, %.lr.ph43.i.preheader ] ; 3 uses
  %.540.i.prol = phi ptr [ %i.hg, %.lr.ph43.i.prol ], [ %.4.lcssa.i, %.lr.ph43.i.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph43.i.prol ], [ 0, %.lr.ph43.i.preheader ]
  %i.hc = load i8, ptr %.19941.i.prol, align 1, !tbaa !113
  store i8 %i.hc, ptr %.540.i.prol, align 1, !tbaa !113
  %i.hd = getelementptr inbounds nuw i8, ptr %.19941.i.prol, i64 1
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !113
  %i.hf = getelementptr inbounds nuw i8, ptr %.540.i.prol, i64 1
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !113
  %i.hg = getelementptr inbounds nuw i8, ptr %.540.i.prol, i64 2 ; 3 uses
  %i.hh = getelementptr inbounds i8, ptr %.19941.i.prol, i64 %i.fn ; 2 uses
  %i.hi = add nuw nsw i32 %.142.i.prol, 1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter126
  br i1 %prol.iter.cmp.not, label %.lr.ph43.i.prol.loopexit, label %.lr.ph43.i.prol, !llvm.loop !425

.lr.ph43.i.prol.loopexit:                         ; preds = %.lr.ph43.i.prol, %.lr.ph43.i.preheader
  %.lcssa118.unr = phi ptr [ poison, %.lr.ph43.i.preheader ], [ %i.hg, %.lr.ph43.i.prol ]
  %.142.i.unr = phi i32 [ %.097.lcssa.i, %.lr.ph43.i.preheader ], [ %i.hi, %.lr.ph43.i.prol ]
  %.19941.i.unr = phi ptr [ %.098.lcssa.i, %.lr.ph43.i.preheader ], [ %i.hh, %.lr.ph43.i.prol ]
  %.540.i.unr = phi ptr [ %.4.lcssa.i, %.lr.ph43.i.preheader ], [ %i.hg, %.lr.ph43.i.prol ]
  %i.hj = sub i32 %.097.lcssa.i, %.sroa.speculated
  %i.hk = icmp ugt i32 %i.hj, -4
  br i1 %i.hk, label %._crit_edge.i, label %.lr.ph43.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.09836.i = phi ptr [ %i.ii, %.lr.ph.i ], [ %i.gn, %.lr.ph.i.preheader ] ; 4 uses
  %.435.i = phi ptr [ %i.ih, %.lr.ph.i ], [ %.345.i, %.lr.ph.i.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.hl = load i8, ptr %.09836.i, align 1, !tbaa !113
  store i8 %i.hl, ptr %.435.i, align 1, !tbaa !113
  %i.hm = getelementptr inbounds i8, ptr %.09836.i, i64 %i.fn ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !113
  %i.ho = getelementptr inbounds nuw i8, ptr %.435.i, i64 1
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !113
  %i.hp = getelementptr inbounds nuw i8, ptr %.09836.i, i64 1
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !113
  %i.hr = getelementptr inbounds nuw i8, ptr %.435.i, i64 2
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !113
  %i.hs = getelementptr i8, ptr %i.hm, i64 1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !113
  %i.hu = getelementptr inbounds nuw i8, ptr %.435.i, i64 3
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !113
  %i.hv = getelementptr inbounds nuw i8, ptr %.435.i, i64 4
  %i.hw = getelementptr inbounds i8, ptr %.09836.i, i64 %i.fp ; 4 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !113
  store i8 %i.hx, ptr %i.hv, align 1, !tbaa !113
  %i.hy = getelementptr inbounds i8, ptr %i.hw, i64 %i.fn ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !113
  %i.ia = getelementptr inbounds nuw i8, ptr %.435.i, i64 5
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !113
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !113
  %i.id = getelementptr inbounds nuw i8, ptr %.435.i, i64 6
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !113
  %i.ie = getelementptr i8, ptr %i.hy, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !113
  %i.ig = getelementptr inbounds nuw i8, ptr %.435.i, i64 7
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !113
  %i.ih = getelementptr inbounds nuw i8, ptr %.435.i, i64 8 ; 3 uses
  %i.ii = getelementptr inbounds i8, ptr %i.hw, i64 %i.fp ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader1.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !426

.lr.ph43.i:                                       ; preds = %.lr.ph43.i.prol.loopexit, %.lr.ph43.i
  %.142.i = phi i32 [ %i.jh, %.lr.ph43.i ], [ %.142.i.unr, %.lr.ph43.i.prol.loopexit ]
  %.19941.i = phi ptr [ %i.jg, %.lr.ph43.i ], [ %.19941.i.unr, %.lr.ph43.i.prol.loopexit ] ; 3 uses
  %.540.i = phi ptr [ %i.jf, %.lr.ph43.i ], [ %.540.i.unr, %.lr.ph43.i.prol.loopexit ] ; 9 uses
  %i.ij = load i8, ptr %.19941.i, align 1, !tbaa !113
  store i8 %i.ij, ptr %.540.i, align 1, !tbaa !113
  %i.ik = getelementptr inbounds nuw i8, ptr %.19941.i, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !113
  %i.im = getelementptr inbounds nuw i8, ptr %.540.i, i64 1
  store i8 %i.il, ptr %i.im, align 1, !tbaa !113
  %i.in = getelementptr inbounds nuw i8, ptr %.540.i, i64 2
  %i.io = getelementptr inbounds i8, ptr %.19941.i, i64 %i.fn ; 3 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !113
  store i8 %i.ip, ptr %i.in, align 1, !tbaa !113
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !113
  %i.is = getelementptr inbounds nuw i8, ptr %.540.i, i64 3
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !113
  %i.it = getelementptr inbounds nuw i8, ptr %.540.i, i64 4
  %i.iu = getelementptr inbounds i8, ptr %i.io, i64 %i.fn ; 3 uses
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !113
  store i8 %i.iv, ptr %i.it, align 1, !tbaa !113
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 1
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !113
  %i.iy = getelementptr inbounds nuw i8, ptr %.540.i, i64 5
  store i8 %i.ix, ptr %i.iy, align 1, !tbaa !113
  %i.iz = getelementptr inbounds nuw i8, ptr %.540.i, i64 6
  %i.ja = getelementptr inbounds i8, ptr %i.iu, i64 %i.fn ; 3 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !113
  store i8 %i.jb, ptr %i.iz, align 1, !tbaa !113
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !113
  %i.je = getelementptr inbounds nuw i8, ptr %.540.i, i64 7
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !113
  %i.jf = getelementptr inbounds nuw i8, ptr %.540.i, i64 8 ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %i.ja, i64 %i.fn
  %i.jh = add nuw nsw i32 %.142.i, 4              ; 2 uses
  %exitcond80.not.i.3 = icmp eq i32 %i.jh, %.sroa.speculated
  br i1 %exitcond80.not.i.3, label %._crit_edge.i, label %.lr.ph43.i, !llvm.loop !427

._crit_edge.i:                                    ; preds = %.lr.ph43.i.prol.loopexit, %.lr.ph43.i, %.preheader1.i
  %.5.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader1.i ], [ %.lcssa118.unr, %.lr.ph43.i.prol.loopexit ], [ %i.jf, %.lr.ph43.i ] ; 2 uses
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 2 ; 3 uses
  %i.ji = icmp slt i64 %indvars.iv.next82.i, %invariant.op.i
  br i1 %i.ji, label %bb.e, label %.preheader.loopexit.i, !llvm.loop !428

.lr.ph54.i:                                       ; preds = %._crit_edge55.i, %.lr.ph54.preheader.i
  %indvars.iv85.i = phi i64 [ %i.gd, %.lr.ph54.preheader.i ], [ %indvars.iv.next86.i, %._crit_edge55.i ] ; 2 uses
  %.657.i = phi ptr [ %.3.lcssa.i, %.lr.ph54.preheader.i ], [ %.lcssa119, %._crit_edge55.i ] ; 2 uses
  %i.jj = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.jk = load i32, ptr %i.r, align 4, !tbaa !86
  %i.jl = sext i32 %i.jk to i64
  %i.jm = mul nsw i64 %i.jl, %i.ga
  %i.jn = load i64, ptr %i.s, align 8, !tbaa !59
  %i.jo = mul i64 %i.jm, %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jo
  %i.jq = getelementptr i8, ptr %i.jp, i64 %indvars.iv85.i
  %i.jr = getelementptr i8, ptr %i.jq, i64 %i.aa  ; 2 uses
  br i1 %i.ge, label %.epil.preheader, label %.lr.ph54.i.new

.lr.ph54.i.new:                                   ; preds = %.lr.ph54.i, %.lr.ph54.i.new
  %.09651.i = phi ptr [ %i.kp, %.lr.ph54.i.new ], [ %i.jr, %.lr.ph54.i ] ; 2 uses
  %.750.i = phi ptr [ %i.ko, %.lr.ph54.i.new ], [ %.657.i, %.lr.ph54.i ] ; 9 uses
  %niter133 = phi i32 [ %niter133.next.7, %.lr.ph54.i.new ], [ 0, %.lr.ph54.i ]
  %i.js = load i8, ptr %.09651.i, align 1, !tbaa !113
  store i8 %i.js, ptr %.750.i, align 1, !tbaa !113
  %i.jt = getelementptr inbounds nuw i8, ptr %.750.i, i64 1
  %i.ju = getelementptr inbounds i8, ptr %.09651.i, i64 %i.gc ; 2 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !113
  store i8 %i.jv, ptr %i.jt, align 1, !tbaa !113
  %i.jw = getelementptr inbounds nuw i8, ptr %.750.i, i64 2
  %i.jx = getelementptr inbounds i8, ptr %i.ju, i64 %i.gc ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !113
  store i8 %i.jy, ptr %i.jw, align 1, !tbaa !113
  %i.jz = getelementptr inbounds nuw i8, ptr %.750.i, i64 3
  %i.ka = getelementptr inbounds i8, ptr %i.jx, i64 %i.gc ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !113
  store i8 %i.kb, ptr %i.jz, align 1, !tbaa !113
  %i.kc = getelementptr inbounds nuw i8, ptr %.750.i, i64 4
  %i.kd = getelementptr inbounds i8, ptr %i.ka, i64 %i.gc ; 2 uses
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !113
  store i8 %i.ke, ptr %i.kc, align 1, !tbaa !113
  %i.kf = getelementptr inbounds nuw i8, ptr %.750.i, i64 5
  %i.kg = getelementptr inbounds i8, ptr %i.kd, i64 %i.gc ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !113
  store i8 %i.kh, ptr %i.kf, align 1, !tbaa !113
  %i.ki = getelementptr inbounds nuw i8, ptr %.750.i, i64 6
  %i.kj = getelementptr inbounds i8, ptr %i.kg, i64 %i.gc ; 2 uses
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !113
  store i8 %i.kk, ptr %i.ki, align 1, !tbaa !113
  %i.kl = getelementptr inbounds nuw i8, ptr %.750.i, i64 7
  %i.km = getelementptr inbounds i8, ptr %i.kj, i64 %i.gc ; 2 uses
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !113
  store i8 %i.kn, ptr %i.kl, align 1, !tbaa !113
  %i.ko = getelementptr inbounds nuw i8, ptr %.750.i, i64 8 ; 3 uses
  %i.kp = getelementptr inbounds i8, ptr %i.km, i64 %i.gc ; 2 uses
  %niter133.next.7 = add i32 %niter133, 8         ; 2 uses
  %niter133.ncmp.7 = icmp eq i32 %niter133.next.7, %unroll_iter132
  br i1 %niter133.ncmp.7, label %._crit_edge55.i.unr-lcssa, label %.lr.ph54.i.new, !llvm.loop !429

._crit_edge55.i.unr-lcssa:                        ; preds = %.lr.ph54.i.new
  br i1 %lcmp.mod129.not, label %._crit_edge55.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge55.i.unr-lcssa, %.lr.ph54.i
  %.09651.i.epil.init = phi ptr [ %i.jr, %.lr.ph54.i ], [ %i.kp, %._crit_edge55.i.unr-lcssa ]
  %.750.i.epil.init = phi ptr [ %.657.i, %.lr.ph54.i ], [ %i.ko, %._crit_edge55.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod131)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.09651.i.epil = phi ptr [ %.09651.i.epil.init, %.epil.preheader ], [ %i.ks, %bb.f ] ; 2 uses
  %.750.i.epil = phi ptr [ %.750.i.epil.init, %.epil.preheader ], [ %i.kr, %bb.f ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.kq = load i8, ptr %.09651.i.epil, align 1, !tbaa !113
  store i8 %i.kq, ptr %.750.i.epil, align 1, !tbaa !113
  %i.kr = getelementptr inbounds nuw i8, ptr %.750.i.epil, i64 1 ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %.09651.i.epil, i64 %i.gc
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter128
  br i1 %epil.iter.cmp.not, label %._crit_edge55.i, label %bb.f, !llvm.loop !430

._crit_edge55.i:                                  ; preds = %bb.f, %._crit_edge55.i.unr-lcssa
  %.lcssa119 = phi ptr [ %i.ko, %._crit_edge55.i.unr-lcssa ], [ %i.kr, %bb.f ]
  %indvars.iv.next86.i = add nsw i64 %indvars.iv85.i, 1 ; 2 uses
  %exitcond88.not.i = icmp eq i64 %indvars.iv.next86.i, %wide.trip.count.i
  br i1 %exitcond88.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph54.i, !llvm.loop !431

bb.g:                                             ; preds = %.noexc40
  call fastcc void @_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr %i.ay, i32 noundef %i.y, i32 noundef %.sroa.speculated63, i32 noundef %.074, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge55.i, %.lr.ph59.i, %.preheader.i, %bb.g
  %i.kt = load i32, ptr %5, align 4, !tbaa !45    ; 2 uses
  %i.ku = add nsw i32 %i.kt, %.074                ; 2 uses
  %i.kv = load i32, ptr %4, align 4, !tbaa !45    ; 3 uses
  %i.kw = icmp slt i32 %i.ku, %i.kv
  br i1 %i.kw, label %.noexc40, label %._crit_edge.loopexit, !llvm.loop !432

._crit_edge78:                                    ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge78, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly captures(none) %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #14 {
bb.a:
  %i.a = icmp sgt i32 %2, 3
  br i1 %i.a, label %.lr.ph26, label %.preheader2

.lr.ph26:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = sext i32 %3 to i64                       ; 8 uses
  %i.e = icmp sgt i32 %4, 1
  br i1 %i.e, label %.lr.ph.us.preheader, label %.lr.ph26.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph26
  %i.f = and i32 %4, 2147483646                   ; 2 uses
  %i.g = sext i32 %1 to i64
  %i.h = zext nneg i32 %2 to i64
  %i.i = icmp slt i32 %i.f, %4
  %i.j = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %i.j, 0
  %i.k = and i32 %4, 1
  %.not = icmp eq i32 %i.k, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv79 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next80, %._crit_edge.us ] ; 2 uses
  %.012623.us = phi ptr [ %.0.val, %.lr.ph.us.preheader ], [ %.2128.lcssa.us, %._crit_edge.us ]
  %i.l = add nsw i64 %indvars.iv79, %i.g          ; 4 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !18     ; 4 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !86
  %i.o = sext i32 %i.n to i64
  %i.p = load i64, ptr %i.c, align 8, !tbaa !59
  %i.q = mul i64 %i.p, %i.o                       ; 4 uses
  %i.r = mul i64 %i.q, %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.d
  %i.u = add nsw i64 %i.l, 1
  %i.v = mul i64 %i.q, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.d
  %i.y = add nsw i64 %i.l, 2
  %i.z = mul i64 %i.q, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.d
  %i.ac = add nsw i64 %i.l, 3
  %i.ad = mul i64 %i.q, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.d
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %.01149.us = phi i32 [ 0, %.lr.ph.us ], [ %i.be, %bb.b ]
  %.01168.us = phi ptr [ %i.af, %.lr.ph.us ], [ %i.bd, %bb.b ] ; 4 uses
  %.01187.us = phi ptr [ %i.ab, %.lr.ph.us ], [ %i.bc, %bb.b ] ; 4 uses
  %.01206.us = phi ptr [ %i.x, %.lr.ph.us ], [ %i.bb, %bb.b ] ; 4 uses
  %.01225.us = phi ptr [ %i.t, %.lr.ph.us ], [ %i.ba, %bb.b ] ; 4 uses
  %.11274.us = phi ptr [ %.012623.us, %.lr.ph.us ], [ %i.az, %bb.b ] ; 13 uses
  %i.ag = load i8, ptr %.01225.us, align 1, !tbaa !113
  store i8 %i.ag, ptr %.11274.us, align 1, !tbaa !113
  %i.ah = getelementptr inbounds nuw i8, ptr %.01225.us, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !113
  %i.aj = getelementptr inbounds nuw i8, ptr %.11274.us, i64 1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !113
  %i.ak = load i8, ptr %.01206.us, align 1, !tbaa !113
  %i.al = getelementptr inbounds nuw i8, ptr %.11274.us, i64 2
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !113
  %i.am = getelementptr inbounds nuw i8, ptr %.01206.us, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !113
  %i.ao = getelementptr inbounds nuw i8, ptr %.11274.us, i64 3
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !113
  %i.ap = load i8, ptr %.01187.us, align 1, !tbaa !113
  %i.aq = getelementptr inbounds nuw i8, ptr %.11274.us, i64 4
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !113
  %i.ar = getelementptr inbounds nuw i8, ptr %.01187.us, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !113
  %i.at = getelementptr inbounds nuw i8, ptr %.11274.us, i64 5
  store i8 %i.as, ptr %i.at, align 1, !tbaa !113
  %i.au = load i8, ptr %.01168.us, align 1, !tbaa !113
  %i.av = getelementptr inbounds nuw i8, ptr %.11274.us, i64 6
  store i8 %i.au, ptr %i.av, align 1, !tbaa !113
  %i.aw = getelementptr inbounds nuw i8, ptr %.01168.us, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !113
  %i.ay = getelementptr inbounds nuw i8, ptr %.11274.us, i64 7
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !113
  %i.az = getelementptr inbounds nuw i8, ptr %.11274.us, i64 8 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01225.us, i64 2 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.01206.us, i64 2 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01187.us, i64 2 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.01168.us, i64 2 ; 3 uses
  %i.be = add nuw nsw i32 %.01149.us, 2           ; 2 uses
  %i.bf = or disjoint i32 %i.be, 1
  %i.bg = icmp slt i32 %i.bf, %4
  br i1 %i.bg, label %bb.b, label %..preheader3_crit_edge.us, !llvm.loop !433

.lr.ph21.us:                                      ; preds = %.lr.ph21.us.prol.loopexit, %.lr.ph21.us
  %.111520.us = phi i32 [ %i.cf, %.lr.ph21.us ], [ %.111520.us.unr, %.lr.ph21.us.prol.loopexit ]
  %.111719.us = phi ptr [ %i.ce, %.lr.ph21.us ], [ %.111719.us.unr, %.lr.ph21.us.prol.loopexit ] ; 3 uses
  %.111918.us = phi ptr [ %i.cd, %.lr.ph21.us ], [ %.111918.us.unr, %.lr.ph21.us.prol.loopexit ] ; 3 uses
  %.112117.us = phi ptr [ %i.cc, %.lr.ph21.us ], [ %.112117.us.unr, %.lr.ph21.us.prol.loopexit ] ; 3 uses
  %.112316.us = phi ptr [ %i.cb, %.lr.ph21.us ], [ %.112316.us.unr, %.lr.ph21.us.prol.loopexit ] ; 3 uses
  %.212815.us = phi ptr [ %i.ca, %.lr.ph21.us ], [ %.212815.us.unr, %.lr.ph21.us.prol.loopexit ] ; 9 uses
  %i.bh = load i8, ptr %.112316.us, align 1, !tbaa !113
  store i8 %i.bh, ptr %.212815.us, align 1, !tbaa !113
  %i.bi = load i8, ptr %.112117.us, align 1, !tbaa !113
  %i.bj = getelementptr inbounds nuw i8, ptr %.212815.us, i64 1
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !113
  %i.bk = load i8, ptr %.111918.us, align 1, !tbaa !113
  %i.bl = getelementptr inbounds nuw i8, ptr %.212815.us, i64 2
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !113
  %i.bm = load i8, ptr %.111719.us, align 1, !tbaa !113
  %i.bn = getelementptr inbounds nuw i8, ptr %.212815.us, i64 3
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !113
  %i.bo = getelementptr inbounds nuw i8, ptr %.212815.us, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.112316.us, i64 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.112117.us, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %.111918.us, i64 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.111719.us, i64 1
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !113
  store i8 %i.bt, ptr %i.bo, align 1, !tbaa !113
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !113
  %i.bv = getelementptr inbounds nuw i8, ptr %.212815.us, i64 5
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !113
  %i.bw = load i8, ptr %i.br, align 1, !tbaa !113
  %i.bx = getelementptr inbounds nuw i8, ptr %.212815.us, i64 6
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !113
  %i.by = load i8, ptr %i.bs, align 1, !tbaa !113
  %i.bz = getelementptr inbounds nuw i8, ptr %.212815.us, i64 7
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !113
  %i.ca = getelementptr inbounds nuw i8, ptr %.212815.us, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.112316.us, i64 2
  %i.cc = getelementptr inbounds nuw i8, ptr %.112117.us, i64 2
  %i.cd = getelementptr inbounds nuw i8, ptr %.111918.us, i64 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.111719.us, i64 2
  %i.cf = add nuw nsw i32 %.111520.us, 2          ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.cf, %4
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.lr.ph21.us, !llvm.loop !434

._crit_edge.us:                                   ; preds = %.lr.ph21.us.prol.loopexit, %.lr.ph21.us, %..preheader3_crit_edge.us
  %.2128.lcssa.us = phi ptr [ %i.az, %..preheader3_crit_edge.us ], [ %.lcssa193.unr, %.lr.ph21.us.prol.loopexit ], [ %i.ca, %.lr.ph21.us ] ; 2 uses
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 4 ; 3 uses
  %i.cg = or disjoint i64 %indvars.iv.next80, 3
  %i.ch = icmp samesign ult i64 %i.cg, %i.h
  br i1 %i.ch, label %.lr.ph.us, label %.preheader2.loopexit, !llvm.loop !435

..preheader3_crit_edge.us:                        ; preds = %bb.b
  br i1 %i.i, label %.lr.ph21.us.preheader, label %._crit_edge.us

.lr.ph21.us.preheader:                            ; preds = %..preheader3_crit_edge.us
  br i1 %lcmp.mod.not, label %.lr.ph21.us.prol.loopexit, label %.lr.ph21.us.prol

.lr.ph21.us.prol:                                 ; preds = %.lr.ph21.us.preheader
  %i.ci = load i8, ptr %i.ba, align 1, !tbaa !113
  store i8 %i.ci, ptr %i.az, align 1, !tbaa !113
  %i.cj = load i8, ptr %i.bb, align 1, !tbaa !113
  %i.ck = getelementptr inbounds nuw i8, ptr %.11274.us, i64 9
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !113
  %i.cl = load i8, ptr %i.bc, align 1, !tbaa !113
  %i.cm = getelementptr inbounds nuw i8, ptr %.11274.us, i64 10
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !113
  %i.cn = load i8, ptr %i.bd, align 1, !tbaa !113
  %i.co = getelementptr inbounds nuw i8, ptr %.11274.us, i64 11
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !113
  %i.cp = getelementptr inbounds nuw i8, ptr %.11274.us, i64 12 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.01225.us, i64 3
  %i.cr = getelementptr inbounds nuw i8, ptr %.01206.us, i64 3
  %i.cs = getelementptr inbounds nuw i8, ptr %.01187.us, i64 3
  %i.ct = getelementptr inbounds nuw i8, ptr %.01168.us, i64 3
  br label %.lr.ph21.us.prol.loopexit

.lr.ph21.us.prol.loopexit:                        ; preds = %.lr.ph21.us.prol, %.lr.ph21.us.preheader
  %.lcssa193.unr = phi ptr [ poison, %.lr.ph21.us.preheader ], [ %i.cp, %.lr.ph21.us.prol ]
  %.111520.us.unr = phi i32 [ %i.f, %.lr.ph21.us.preheader ], [ %4, %.lr.ph21.us.prol ]
  %.111719.us.unr = phi ptr [ %i.bd, %.lr.ph21.us.preheader ], [ %i.ct, %.lr.ph21.us.prol ]
  %.111918.us.unr = phi ptr [ %i.bc, %.lr.ph21.us.preheader ], [ %i.cs, %.lr.ph21.us.prol ]
end_hunk_5
begin_hunk_6_@_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii:bb.a
  %i.il = getelementptr inbounds nuw i8, ptr %.430, i64 7
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !113
  %i.im = getelementptr inbounds nuw i8, ptr %.430, i64 8 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.011231, i64 4 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.011032, i64 4 ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader1.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !448

.lr.ph42:                                         ; preds = %.lr.ph42.prol.loopexit, %.lr.ph42
  %.141 = phi i32 [ %i.jn, %.lr.ph42 ], [ %.141.unr, %.lr.ph42.prol.loopexit ]
  %.111140 = phi ptr [ %i.jm, %.lr.ph42 ], [ %.111140.unr, %.lr.ph42.prol.loopexit ] ; 5 uses
  %.111339 = phi ptr [ %i.jl, %.lr.ph42 ], [ %.111339.unr, %.lr.ph42.prol.loopexit ] ; 5 uses
  %.538 = phi ptr [ %i.jk, %.lr.ph42 ], [ %.538.unr, %.lr.ph42.prol.loopexit ] ; 9 uses
  %i.ip = load i8, ptr %.111339, align 1, !tbaa !113
  store i8 %i.ip, ptr %.538, align 1, !tbaa !113
  %i.iq = load i8, ptr %.111140, align 1, !tbaa !113
  %i.ir = getelementptr inbounds nuw i8, ptr %.538, i64 1
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !113
  %i.is = getelementptr inbounds nuw i8, ptr %.538, i64 2
  %i.it = getelementptr inbounds nuw i8, ptr %.111339, i64 1
  %i.iu = getelementptr inbounds nuw i8, ptr %.111140, i64 1
  %i.iv = load i8, ptr %i.it, align 1, !tbaa !113
  store i8 %i.iv, ptr %i.is, align 1, !tbaa !113
  %i.iw = load i8, ptr %i.iu, align 1, !tbaa !113
  %i.ix = getelementptr inbounds nuw i8, ptr %.538, i64 3
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !113
  %i.iy = getelementptr inbounds nuw i8, ptr %.538, i64 4
  %i.iz = getelementptr inbounds nuw i8, ptr %.111339, i64 2
  %i.ja = getelementptr inbounds nuw i8, ptr %.111140, i64 2
  %i.jb = load i8, ptr %i.iz, align 1, !tbaa !113
  store i8 %i.jb, ptr %i.iy, align 1, !tbaa !113
  %i.jc = load i8, ptr %i.ja, align 1, !tbaa !113
  %i.jd = getelementptr inbounds nuw i8, ptr %.538, i64 5
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !113
  %i.je = getelementptr inbounds nuw i8, ptr %.538, i64 6
  %i.jf = getelementptr inbounds nuw i8, ptr %.111339, i64 3
  %i.jg = getelementptr inbounds nuw i8, ptr %.111140, i64 3
  %i.jh = load i8, ptr %i.jf, align 1, !tbaa !113
  store i8 %i.jh, ptr %i.je, align 1, !tbaa !113
  %i.ji = load i8, ptr %i.jg, align 1, !tbaa !113
  %i.jj = getelementptr inbounds nuw i8, ptr %.538, i64 7
  store i8 %i.ji, ptr %i.jj, align 1, !tbaa !113
  %i.jk = getelementptr inbounds nuw i8, ptr %.538, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.111339, i64 4
  %i.jm = getelementptr inbounds nuw i8, ptr %.111140, i64 4
  %i.jn = add nuw nsw i32 %.141, 4                ; 2 uses
  %exitcond82.not.3 = icmp eq i32 %i.jn, %4
  br i1 %exitcond82.not.3, label %._crit_edge43, label %.lr.ph42, !llvm.loop !449

._crit_edge43:                                    ; preds = %.lr.ph42.prol.loopexit, %.lr.ph42, %middle.block, %vec.epilog.middle.block, %.preheader1
  %.5.lcssa = phi ptr [ %.4.lcssa, %.preheader1 ], [ %i.he, %vec.epilog.middle.block ], [ %i.gt, %middle.block ], [ %.lcssa187.unr, %.lr.ph42.prol.loopexit ], [ %i.jk, %.lr.ph42 ] ; 2 uses
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 2 ; 3 uses
  %i.jo = icmp slt i64 %indvars.iv.next84, %invariant.op
  br i1 %i.jo, label %bb.c, label %.preheader.loopexit, !llvm.loop !450

iter.check166:                                    ; preds = %.lr.ph54.preheader, %._crit_edge55
  %indvars.iv87 = phi i64 [ %i.ez, %.lr.ph54.preheader ], [ %indvars.iv.next88, %._crit_edge55 ] ; 2 uses
  %.657 = phi ptr [ %.3.lcssa, %.lr.ph54.preheader ], [ %.lcssa, %._crit_edge55 ] ; 7 uses
  %i.jp = add i64 %indvars.iv87, %i.fa
  %i.jq = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.jr = load i32, ptr %i.ev, align 4, !tbaa !86
  %i.js = sext i32 %i.jr to i64
  %i.jt = mul i64 %i.jp, %i.js
  %i.ju = load i64, ptr %i.ew, align 8, !tbaa !59
  %i.jv = mul i64 %i.jt, %i.ju                    ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jv
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 %i.ex ; 6 uses
  br i1 %min.iters.check149, label %vec.epilog.scalar.ph167.preheader, label %vector.memcheck147

vector.memcheck147:                               ; preds = %iter.check166
  %i.jy = ptrtoaddr ptr %i.jq to i64
  %.657148 = ptrtoaddr ptr %.657 to i64
  %i.jz = add i64 %i.ex, %i.jy
  %i.ka = add i64 %i.jz, %i.jv
  %i.kb = sub i64 %i.ka, %.657148
  %diff.check = icmp ugt i64 %i.kb, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph167.preheader, label %vector.main.loop.iter.check150

vector.main.loop.iter.check150:                   ; preds = %vector.memcheck147
  br i1 %min.iters.check151, label %vec.epilog.ph170, label %vector.ph152

vector.ph152:                                     ; preds = %vector.main.loop.iter.check150
  %i.kc = getelementptr i8, ptr %i.jx, i64 %n.vec153
  %i.kd = getelementptr i8, ptr %.657, i64 %n.vec153 ; 2 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next160, %vector.body154 ] ; 3 uses
  %next.gep156 = getelementptr i8, ptr %i.jx, i64 %index155 ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.657, i64 %index155 ; 2 uses
  %i.ke = getelementptr i8, ptr %next.gep156, i64 16
  %wide.load158 = load <16 x i8>, ptr %next.gep156, align 1, !tbaa !113
  %wide.load159 = load <16 x i8>, ptr %i.ke, align 1, !tbaa !113
  %i.kf = getelementptr i8, ptr %next.gep157, i64 16
  store <16 x i8> %wide.load158, ptr %next.gep157, align 1, !tbaa !113
  store <16 x i8> %wide.load159, ptr %i.kf, align 1, !tbaa !113
  %index.next160 = add nuw i64 %index155, 32      ; 2 uses
  %i.kg = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.kg, label %middle.block161, label %vector.body154, !llvm.loop !451

middle.block161:                                  ; preds = %vector.body154
  br i1 %cmp.n162, label %._crit_edge55, label %vec.epilog.iter.check168

vec.epilog.iter.check168:                         ; preds = %middle.block161
  br i1 %min.epilog.iters.check169, label %vec.epilog.scalar.ph167.preheader, label %vec.epilog.ph170, !prof !452

vec.epilog.ph170:                                 ; preds = %vector.main.loop.iter.check150, %vec.epilog.iter.check168
  %vec.epilog.resume.val163 = phi i64 [ %n.vec153, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check150 ]
  %i.kh = getelementptr i8, ptr %i.jx, i64 %n.vec171
  %i.ki = getelementptr i8, ptr %.657, i64 %n.vec171 ; 2 uses
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph170
  %index173 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph170 ], [ %index.next177, %vec.epilog.vector.body172 ] ; 3 uses
  %next.gep174 = getelementptr i8, ptr %i.jx, i64 %index173
  %next.gep175 = getelementptr i8, ptr %.657, i64 %index173
  %wide.load176 = load <4 x i8>, ptr %next.gep174, align 1, !tbaa !113
  store <4 x i8> %wide.load176, ptr %next.gep175, align 1, !tbaa !113
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %i.kj = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.kj, label %vec.epilog.middle.block178, label %vec.epilog.vector.body172, !llvm.loop !453

vec.epilog.middle.block178:                       ; preds = %vec.epilog.vector.body172
  br i1 %cmp.n179, label %._crit_edge55, label %vec.epilog.scalar.ph167.preheader

vec.epilog.scalar.ph167.preheader:                ; preds = %vector.memcheck147, %iter.check166, %vec.epilog.iter.check168, %vec.epilog.middle.block178
  %.052.ph = phi i32 [ 0, %iter.check166 ], [ 0, %vector.memcheck147 ], [ %i.fd, %vec.epilog.iter.check168 ], [ %i.fe, %vec.epilog.middle.block178 ] ; 4 uses
  %.010851.ph = phi ptr [ %i.jx, %iter.check166 ], [ %i.jx, %vector.memcheck147 ], [ %i.kc, %vec.epilog.iter.check168 ], [ %i.kh, %vec.epilog.middle.block178 ] ; 2 uses
  %.750.ph = phi ptr [ %.657, %iter.check166 ], [ %.657, %vector.memcheck147 ], [ %i.kd, %vec.epilog.iter.check168 ], [ %i.ki, %vec.epilog.middle.block178 ] ; 2 uses
  %i.kk = sub i32 %4, %.052.ph
  %xtraiter202 = and i32 %i.kk, 7                 ; 2 uses
  %lcmp.mod203.not = icmp eq i32 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %vec.epilog.scalar.ph167.prol.loopexit, label %vec.epilog.scalar.ph167.prol

vec.epilog.scalar.ph167.prol:                     ; preds = %vec.epilog.scalar.ph167.preheader, %vec.epilog.scalar.ph167.prol
  %.052.prol = phi i32 [ %i.ko, %vec.epilog.scalar.ph167.prol ], [ %.052.ph, %vec.epilog.scalar.ph167.preheader ]
  %.010851.prol = phi ptr [ %i.kn, %vec.epilog.scalar.ph167.prol ], [ %.010851.ph, %vec.epilog.scalar.ph167.preheader ] ; 2 uses
  %.750.prol = phi ptr [ %i.km, %vec.epilog.scalar.ph167.prol ], [ %.750.ph, %vec.epilog.scalar.ph167.preheader ] ; 2 uses
  %prol.iter204 = phi i32 [ %prol.iter204.next, %vec.epilog.scalar.ph167.prol ], [ 0, %vec.epilog.scalar.ph167.preheader ]
  %i.kl = load i8, ptr %.010851.prol, align 1, !tbaa !113
  store i8 %i.kl, ptr %.750.prol, align 1, !tbaa !113
  %i.km = getelementptr inbounds nuw i8, ptr %.750.prol, i64 1 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.010851.prol, i64 1 ; 2 uses
  %i.ko = add nuw nsw i32 %.052.prol, 1           ; 2 uses
  %prol.iter204.next = add i32 %prol.iter204, 1   ; 2 uses
  %prol.iter204.cmp.not = icmp eq i32 %prol.iter204.next, %xtraiter202
  br i1 %prol.iter204.cmp.not, label %vec.epilog.scalar.ph167.prol.loopexit, label %vec.epilog.scalar.ph167.prol, !llvm.loop !454

vec.epilog.scalar.ph167.prol.loopexit:            ; preds = %vec.epilog.scalar.ph167.prol, %vec.epilog.scalar.ph167.preheader
  %.lcssa183.unr = phi ptr [ poison, %vec.epilog.scalar.ph167.preheader ], [ %i.km, %vec.epilog.scalar.ph167.prol ]
  %.052.unr = phi i32 [ %.052.ph, %vec.epilog.scalar.ph167.preheader ], [ %i.ko, %vec.epilog.scalar.ph167.prol ]
  %.010851.unr = phi ptr [ %.010851.ph, %vec.epilog.scalar.ph167.preheader ], [ %i.kn, %vec.epilog.scalar.ph167.prol ]
  %.750.unr = phi ptr [ %.750.ph, %vec.epilog.scalar.ph167.preheader ], [ %i.km, %vec.epilog.scalar.ph167.prol ]
  %i.kp = sub i32 %.052.ph, %4
  %i.kq = icmp ugt i32 %i.kp, -8
  br i1 %i.kq, label %._crit_edge55, label %vec.epilog.scalar.ph167

vec.epilog.scalar.ph167:                          ; preds = %vec.epilog.scalar.ph167.prol.loopexit, %vec.epilog.scalar.ph167
  %.052 = phi i32 [ %i.lp, %vec.epilog.scalar.ph167 ], [ %.052.unr, %vec.epilog.scalar.ph167.prol.loopexit ]
  %.010851 = phi ptr [ %i.lo, %vec.epilog.scalar.ph167 ], [ %.010851.unr, %vec.epilog.scalar.ph167.prol.loopexit ] ; 9 uses
  %.750 = phi ptr [ %i.ln, %vec.epilog.scalar.ph167 ], [ %.750.unr, %vec.epilog.scalar.ph167.prol.loopexit ] ; 9 uses
  %i.kr = load i8, ptr %.010851, align 1, !tbaa !113
  store i8 %i.kr, ptr %.750, align 1, !tbaa !113
  %i.ks = getelementptr inbounds nuw i8, ptr %.750, i64 1
  %i.kt = getelementptr inbounds nuw i8, ptr %.010851, i64 1
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !113
  store i8 %i.ku, ptr %i.ks, align 1, !tbaa !113
  %i.kv = getelementptr inbounds nuw i8, ptr %.750, i64 2
  %i.kw = getelementptr inbounds nuw i8, ptr %.010851, i64 2
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !113
  store i8 %i.kx, ptr %i.kv, align 1, !tbaa !113
  %i.ky = getelementptr inbounds nuw i8, ptr %.750, i64 3
  %i.kz = getelementptr inbounds nuw i8, ptr %.010851, i64 3
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !113
  store i8 %i.la, ptr %i.ky, align 1, !tbaa !113
  %i.lb = getelementptr inbounds nuw i8, ptr %.750, i64 4
  %i.lc = getelementptr inbounds nuw i8, ptr %.010851, i64 4
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !113
  store i8 %i.ld, ptr %i.lb, align 1, !tbaa !113
  %i.le = getelementptr inbounds nuw i8, ptr %.750, i64 5
  %i.lf = getelementptr inbounds nuw i8, ptr %.010851, i64 5
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !113
  store i8 %i.lg, ptr %i.le, align 1, !tbaa !113
  %i.lh = getelementptr inbounds nuw i8, ptr %.750, i64 6
  %i.li = getelementptr inbounds nuw i8, ptr %.010851, i64 6
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !113
  store i8 %i.lj, ptr %i.lh, align 1, !tbaa !113
  %i.lk = getelementptr inbounds nuw i8, ptr %.750, i64 7
  %i.ll = getelementptr inbounds nuw i8, ptr %.010851, i64 7
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !113
  store i8 %i.lm, ptr %i.lk, align 1, !tbaa !113
  %i.ln = getelementptr inbounds nuw i8, ptr %.750, i64 8 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.010851, i64 8
  %i.lp = add nuw nsw i32 %.052, 8                ; 2 uses
  %exitcond86.not.7 = icmp eq i32 %i.lp, %4
  br i1 %exitcond86.not.7, label %._crit_edge55, label %vec.epilog.scalar.ph167, !llvm.loop !455

._crit_edge55:                                    ; preds = %vec.epilog.scalar.ph167.prol.loopexit, %vec.epilog.scalar.ph167, %vec.epilog.middle.block178, %middle.block161
  %.lcssa = phi ptr [ %i.ki, %vec.epilog.middle.block178 ], [ %i.kd, %middle.block161 ], [ %.lcssa183.unr, %vec.epilog.scalar.ph167.prol.loopexit ], [ %i.ln, %vec.epilog.scalar.ph167 ]
  %indvars.iv.next88 = add nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count
  br i1 %exitcond90.not, label %._crit_edge60.split, label %iter.check166, !llvm.loop !456

._crit_edge60.split:                              ; preds = %._crit_edge55, %.lr.ph59, %.preheader
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn8Gemm_x8620create_pipeline_int8ERKNS_6OptionE.omp_outlined.9(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef readonly captures(none) %7) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not123 = icmp sgt i32 %i.k, %i.j
  br i1 %.not123, label %._crit_edge126, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 656
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 700
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 720
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 672
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 220
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 360 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 404 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 376 ; 9 uses
  %i.t = load i32, ptr %4, align 4, !tbaa !45     ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.split, label %._crit_edge126

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.v = phi i32 [ %i.ab, %._crit_edge ], [ %i.j, %.lr.ph ]
  %i.w = phi i32 [ %i.ac, %._crit_edge ], [ %i.t, %.lr.ph ] ; 3 uses
  %.030124 = phi i32 [ %i.ad, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.x = load i32, ptr %3, align 4, !tbaa !45
  %i.y = mul i32 %i.x, %.030124                   ; 3 uses
  %i.z = icmp sgt i32 %i.w, 0
  br i1 %i.z, label %.noexc40.lr.ph, label %._crit_edge

.noexc40.lr.ph:                                   ; preds = %.lr.ph.split
  %i.aa = sext i32 %i.y to i64                    ; 9 uses
  %.pre = load i32, ptr %5, align 4, !tbaa !45
  br label %.noexc40

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit
  %.pre161 = load i32, ptr %i.b, align 4, !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.split
  %i.ab = phi i32 [ %.pre161, %._crit_edge.loopexit ], [ %i.v, %.lr.ph.split ] ; 2 uses
  %i.ac = phi i32 [ %i.act, %._crit_edge.loopexit ], [ %i.w, %.lr.ph.split ]
  %i.ad = add i32 %.030124, 1
  %.not.not = icmp slt i32 %.030124, %i.ab
  br i1 %.not.not, label %.lr.ph.split, label %._crit_edge126, !llvm.loop !457

.noexc40:                                         ; preds = %.noexc40.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %i.ae = phi i32 [ %.pre, %.noexc40.lr.ph ], [ %i.acr, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.af = phi i32 [ %i.w, %.noexc40.lr.ph ], [ %i.act, %_ZN4ncnn3MatD2Ev.exit ]
  %.0122 = phi i32 [ 0, %.noexc40.lr.ph ], [ %i.acs, %_ZN4ncnn3MatD2Ev.exit ] ; 11 uses
  %i.ag = load i32, ptr %6, align 4, !tbaa !45
  %i.ah = sub nsw i32 %i.ag, %i.y
  %i.ai = load i32, ptr %3, align 4, !tbaa !45    ; 2 uses
  %.sroa.speculated86 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ah) ; 18 uses
  %i.aj = sub i32 %i.af, %.0122
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.aj) ; 54 uses
  %i.ak = sdiv i32 %i.y, %i.ai
  %i.al = load i32, ptr %i.m, align 4, !tbaa !86, !noalias !458
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !18, !noalias !458
  %i.an = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !458
  %i.ao = sext i32 %i.ak to i64
  %i.ap = mul i64 %i.an, %i.ao
  %i.aq = load i64, ptr %i.o, align 8, !tbaa !59, !noalias !458 ; 2 uses
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar
  %i.at = sext i32 %i.al to i64
  %i.au = sdiv i32 %.0122, %i.ae
  %i.av = sext i32 %i.au to i64
  %i.aw = mul i64 %i.aq, %i.at
  %i.ax = mul i64 %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ax ; 6 uses
  %i.az = load i32, ptr %i.p, align 4, !tbaa !84
  %.not31 = icmp eq i32 %i.az, 0
  br i1 %.not31, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.noexc40
  %i.ba = icmp sgt i32 %.sroa.speculated86, 7
  br i1 %i.ba, label %.lr.ph40.i, label %.preheader4.i

.lr.ph40.i:                                       ; preds = %bb.c
  %i.bb = sext i32 %.0122 to i64                  ; 8 uses
  %i.bc = icmp sgt i32 %.sroa.speculated, 1
  %i.bd = and i32 %.sroa.speculated, -2
  %i.be = zext nneg i32 %.sroa.speculated86 to i64
  br label %bb.d

.preheader4.loopexit.i:                           ; preds = %._crit_edge.i
  %i.bf = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader4.i

.preheader4.i:                                    ; preds = %.preheader4.loopexit.i, %bb.c
  %.0251.lcssa.i = phi ptr [ %i.ay, %bb.c ], [ %.2253.lcssa.i, %.preheader4.loopexit.i ] ; 2 uses
  %.0249.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.bf, %.preheader4.loopexit.i ] ; 3 uses
  %i.bg = or disjoint i32 %.0249.lcssa.i, 3
  %i.bh = icmp slt i32 %i.bg, %.sroa.speculated86
  br i1 %i.bh, label %.lr.ph68.i, label %.preheader2.i

.lr.ph68.i:                                       ; preds = %.preheader4.i
  %i.bi = sext i32 %.0122 to i64                  ; 4 uses
  %i.bj = icmp sgt i32 %.sroa.speculated, 1
  %i.bk = and i32 %.sroa.speculated, -2
  %i.bl = zext nneg i32 %.0249.lcssa.i to i64
  %i.bm = sext i32 %.sroa.speculated86 to i64
  %invariant.op.i = add nsw i64 %i.bm, -3
  %xtraiter = and i32 %.sroa.speculated, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph40.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph40.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.025137.i = phi ptr [ %i.ay, %.lr.ph40.i ], [ %.2253.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bn = add nsw i64 %indvars.iv.i, %i.aa        ; 8 uses
  %i.bo = load ptr, ptr %i.q, align 8, !tbaa !18  ; 8 uses
  %i.bp = load i32, ptr %i.r, align 4, !tbaa !86
  %i.bq = sext i32 %i.bp to i64
  %i.br = load i64, ptr %i.s, align 8, !tbaa !59
  %i.bs = mul i64 %i.br, %i.bq                    ; 8 uses
  %i.bt = mul i64 %i.bs, %i.bn
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bt
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bb ; 2 uses
  %i.bw = add nsw i64 %i.bn, 1
  %i.bx = mul i64 %i.bs, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %i.bb ; 2 uses
  %i.ca = add nsw i64 %i.bn, 2
  %i.cb = mul i64 %i.bs, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %i.bb ; 2 uses
  %i.ce = add nsw i64 %i.bn, 3
  %i.cf = mul i64 %i.bs, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.bb ; 2 uses
  %i.ci = add nsw i64 %i.bn, 4
  %i.cj = mul i64 %i.bs, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.bb ; 2 uses
  %i.cm = add nsw i64 %i.bn, 5
  %i.cn = mul i64 %i.bs, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.bb ; 2 uses
  %i.cq = add nsw i64 %i.bn, 6
  %i.cr = mul i64 %i.bs, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %i.bb ; 2 uses
  %i.cu = add nsw i64 %i.bn, 7
  %i.cv = mul i64 %i.bs, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cv
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.bb ; 2 uses
  br i1 %i.bc, label %.lr.ph.i, label %.preheader5.i

.preheader5.i:                                    ; preds = %.lr.ph.i, %bb.d
  %.1252.lcssa.i = phi ptr [ %.025137.i, %bb.d ], [ %i.em, %.lr.ph.i ] ; 2 uses
  %.0247.lcssa.i = phi ptr [ %i.bv, %bb.d ], [ %i.en, %.lr.ph.i ]
  %.0245.lcssa.i = phi ptr [ %i.bz, %bb.d ], [ %i.eo, %.lr.ph.i ]
  %.0243.lcssa.i = phi ptr [ %i.cd, %bb.d ], [ %i.ep, %.lr.ph.i ]
  %.0241.lcssa.i = phi ptr [ %i.ch, %bb.d ], [ %i.eq, %.lr.ph.i ]
  %.0239.lcssa.i = phi ptr [ %i.cl, %bb.d ], [ %i.er, %.lr.ph.i ]
  %.0237.lcssa.i = phi ptr [ %i.cp, %bb.d ], [ %i.es, %.lr.ph.i ]
  %.0235.lcssa.i = phi ptr [ %i.ct, %bb.d ], [ %i.et, %.lr.ph.i ]
  %.0233.lcssa.i = phi ptr [ %i.cx, %bb.d ], [ %i.eu, %.lr.ph.i ]
  %.0231.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.bd, %.lr.ph.i ] ; 2 uses
  %i.cy = icmp slt i32 %.0231.lcssa.i, %.sroa.speculated
  br i1 %i.cy, label %.lr.ph35.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.023115.i = phi i32 [ %i.ev, %.lr.ph.i ], [ 0, %bb.d ]
  %.023314.i = phi ptr [ %i.eu, %.lr.ph.i ], [ %i.cx, %bb.d ] ; 3 uses
  %.023513.i = phi ptr [ %i.et, %.lr.ph.i ], [ %i.ct, %bb.d ] ; 3 uses
  %.023712.i = phi ptr [ %i.es, %.lr.ph.i ], [ %i.cp, %bb.d ] ; 3 uses
  %.023911.i = phi ptr [ %i.er, %.lr.ph.i ], [ %i.cl, %bb.d ] ; 3 uses
  %.024110.i = phi ptr [ %i.eq, %.lr.ph.i ], [ %i.ch, %bb.d ] ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN4ncnn8Gemm_x8620create_pipeline_int8ERKNS_6OptionE.omp_outlined.9:bb.a
  %i.nm = getelementptr inbounds nuw i8, ptr %.771.i, i64 7
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !113
  %i.nn = getelementptr inbounds nuw i8, ptr %.771.i, i64 8 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.021972.i, i64 4 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.021773.i, i64 4 ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader1.i.loopexit.unr-lcssa, label %.lr.ph76.i, !llvm.loop !478

.lr.ph85.i:                                       ; preds = %.lr.ph85.i.prol.loopexit, %.lr.ph85.i
  %.184.i = phi i32 [ %i.oo, %.lr.ph85.i ], [ %.184.i.unr, %.lr.ph85.i.prol.loopexit ]
  %.121883.i = phi ptr [ %i.on, %.lr.ph85.i ], [ %.121883.i.unr, %.lr.ph85.i.prol.loopexit ] ; 5 uses
  %.122082.i = phi ptr [ %i.om, %.lr.ph85.i ], [ %.122082.i.unr, %.lr.ph85.i.prol.loopexit ] ; 5 uses
  %.881.i = phi ptr [ %i.ol, %.lr.ph85.i ], [ %.881.i.unr, %.lr.ph85.i.prol.loopexit ] ; 9 uses
  %i.nq = load i8, ptr %.122082.i, align 1, !tbaa !113
  store i8 %i.nq, ptr %.881.i, align 1, !tbaa !113
  %i.nr = load i8, ptr %.121883.i, align 1, !tbaa !113
  %i.ns = getelementptr inbounds nuw i8, ptr %.881.i, i64 1
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !113
  %i.nt = getelementptr inbounds nuw i8, ptr %.881.i, i64 2
  %i.nu = getelementptr inbounds nuw i8, ptr %.122082.i, i64 1
  %i.nv = getelementptr inbounds nuw i8, ptr %.121883.i, i64 1
  %i.nw = load i8, ptr %i.nu, align 1, !tbaa !113
  store i8 %i.nw, ptr %i.nt, align 1, !tbaa !113
  %i.nx = load i8, ptr %i.nv, align 1, !tbaa !113
  %i.ny = getelementptr inbounds nuw i8, ptr %.881.i, i64 3
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !113
  %i.nz = getelementptr inbounds nuw i8, ptr %.881.i, i64 4
  %i.oa = getelementptr inbounds nuw i8, ptr %.122082.i, i64 2
  %i.ob = getelementptr inbounds nuw i8, ptr %.121883.i, i64 2
  %i.oc = load i8, ptr %i.oa, align 1, !tbaa !113
  store i8 %i.oc, ptr %i.nz, align 1, !tbaa !113
  %i.od = load i8, ptr %i.ob, align 1, !tbaa !113
  %i.oe = getelementptr inbounds nuw i8, ptr %.881.i, i64 5
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !113
  %i.of = getelementptr inbounds nuw i8, ptr %.881.i, i64 6
  %i.og = getelementptr inbounds nuw i8, ptr %.122082.i, i64 3
  %i.oh = getelementptr inbounds nuw i8, ptr %.121883.i, i64 3
  %i.oi = load i8, ptr %i.og, align 1, !tbaa !113
  store i8 %i.oi, ptr %i.of, align 1, !tbaa !113
  %i.oj = load i8, ptr %i.oh, align 1, !tbaa !113
  %i.ok = getelementptr inbounds nuw i8, ptr %.881.i, i64 7
  store i8 %i.oj, ptr %i.ok, align 1, !tbaa !113
  %i.ol = getelementptr inbounds nuw i8, ptr %.881.i, i64 8 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.122082.i, i64 4
  %i.on = getelementptr inbounds nuw i8, ptr %.121883.i, i64 4
  %i.oo = add nuw nsw i32 %.184.i, 4              ; 2 uses
  %exitcond135.not.i.3 = icmp eq i32 %i.oo, %.sroa.speculated
  br i1 %exitcond135.not.i.3, label %._crit_edge86.i, label %.lr.ph85.i, !llvm.loop !479

._crit_edge86.i:                                  ; preds = %.lr.ph85.i.prol.loopexit, %.lr.ph85.i, %middle.block279, %vec.epilog.middle.block300, %.preheader1.i
  %.8.lcssa.i = phi ptr [ %.7.lcssa.i, %.preheader1.i ], [ %i.mf, %vec.epilog.middle.block300 ], [ %i.lu, %middle.block279 ], [ %.lcssa325.unr, %.lr.ph85.i.prol.loopexit ], [ %i.ol, %.lr.ph85.i ] ; 2 uses
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 2 ; 3 uses
  %i.op = icmp slt i64 %indvars.iv.next137.i, %invariant.op168.i
  br i1 %i.op, label %bb.f, label %.preheader.loopexit.i, !llvm.loop !480

iter.check:                                       ; preds = %._crit_edge98.i, %.lr.ph97.preheader.i
  %indvars.iv140.i = phi i64 [ %i.kb, %.lr.ph97.preheader.i ], [ %indvars.iv.next141.i, %._crit_edge98.i ] ; 2 uses
  %.9100.i = phi ptr [ %.6.lcssa.i, %.lr.ph97.preheader.i ], [ %.lcssa224, %._crit_edge98.i ] ; 7 uses
  %i.oq = add i64 %indvars.iv140.i, %i.aa
  %i.or = load ptr, ptr %i.q, align 8, !tbaa !18  ; 2 uses
  %i.os = load i32, ptr %i.r, align 4, !tbaa !86
  %i.ot = sext i32 %i.os to i64
  %i.ou = mul i64 %i.oq, %i.ot
  %i.ov = load i64, ptr %i.s, align 8, !tbaa !59
  %i.ow = mul i64 %i.ou, %i.ov                    ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.ow
  %i.oy = getelementptr inbounds i8, ptr %i.ox, i64 %i.jz ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.oz = ptrtoaddr ptr %i.or to i64
  %.9100.i237 = ptrtoaddr ptr %.9100.i to i64
  %i.pa = add i64 %i.jz, %i.oz
  %i.pb = add i64 %i.pa, %i.ow
  %i.pc = sub i64 %i.pb, %.9100.i237
  %diff.check = icmp ugt i64 %i.pc, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check238, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.pd = getelementptr i8, ptr %i.oy, i64 %n.vec
  %i.pe = getelementptr i8, ptr %.9100.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.oy, i64 %index ; 2 uses
  %next.gep239 = getelementptr i8, ptr %.9100.i, i64 %index ; 2 uses
  %i.pf = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !113
  %wide.load240 = load <16 x i8>, ptr %i.pf, align 1, !tbaa !113
  %i.pg = getelementptr i8, ptr %next.gep239, i64 16
  store <16 x i8> %wide.load, ptr %next.gep239, align 1, !tbaa !113
  store <16 x i8> %wide.load240, ptr %i.pg, align 1, !tbaa !113
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ph = icmp eq i64 %index.next, %n.vec
  br i1 %i.ph, label %middle.block, label %vector.body, !llvm.loop !481

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge98.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !452

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.pi = getelementptr i8, ptr %i.oy, i64 %n.vec243
  %i.pj = getelementptr i8, ptr %.9100.i, i64 %n.vec243 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index244 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next248, %vec.epilog.vector.body ] ; 3 uses
  %next.gep245 = getelementptr i8, ptr %i.oy, i64 %index244
  %next.gep246 = getelementptr i8, ptr %.9100.i, i64 %index244
  %wide.load247 = load <4 x i8>, ptr %next.gep245, align 1, !tbaa !113
  store <4 x i8> %wide.load247, ptr %next.gep246, align 1, !tbaa !113
  %index.next248 = add nuw i64 %index244, 4       ; 2 uses
  %i.pk = icmp eq i64 %index.next248, %n.vec243
  br i1 %i.pk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !482

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n249, label %._crit_edge98.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.095.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ke, %vec.epilog.iter.check ], [ %i.kf, %vec.epilog.middle.block ] ; 4 uses
  %.021594.i.ph = phi ptr [ %i.oy, %iter.check ], [ %i.oy, %vector.memcheck ], [ %i.pd, %vec.epilog.iter.check ], [ %i.pi, %vec.epilog.middle.block ] ; 2 uses
  %.1093.i.ph = phi ptr [ %.9100.i, %iter.check ], [ %.9100.i, %vector.memcheck ], [ %i.pe, %vec.epilog.iter.check ], [ %i.pj, %vec.epilog.middle.block ] ; 2 uses
  %i.pl = sub i32 %.sroa.speculated, %.095.i.ph
  %xtraiter347 = and i32 %i.pl, 7                 ; 2 uses
  %lcmp.mod348.not = icmp eq i32 %xtraiter347, 0
  br i1 %lcmp.mod348.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.095.i.prol = phi i32 [ %i.pp, %vec.epilog.scalar.ph.prol ], [ %.095.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.021594.i.prol = phi ptr [ %i.po, %vec.epilog.scalar.ph.prol ], [ %.021594.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1093.i.prol = phi ptr [ %i.pn, %vec.epilog.scalar.ph.prol ], [ %.1093.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter349 = phi i32 [ %prol.iter349.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.pm = load i8, ptr %.021594.i.prol, align 1, !tbaa !113
  store i8 %i.pm, ptr %.1093.i.prol, align 1, !tbaa !113
  %i.pn = getelementptr inbounds nuw i8, ptr %.1093.i.prol, i64 1 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.021594.i.prol, i64 1 ; 2 uses
  %i.pp = add nuw nsw i32 %.095.i.prol, 1         ; 2 uses
  %prol.iter349.next = add i32 %prol.iter349, 1   ; 2 uses
  %prol.iter349.cmp.not = icmp eq i32 %prol.iter349.next, %xtraiter347
  br i1 %prol.iter349.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !483

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa326.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.pn, %vec.epilog.scalar.ph.prol ]
  %.095.i.unr = phi i32 [ %.095.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.pp, %vec.epilog.scalar.ph.prol ]
  %.021594.i.unr = phi ptr [ %.021594.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.po, %vec.epilog.scalar.ph.prol ]
  %.1093.i.unr = phi ptr [ %.1093.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.pn, %vec.epilog.scalar.ph.prol ]
  %i.pq = sub i32 %.095.i.ph, %.sroa.speculated
  %i.pr = icmp ugt i32 %i.pq, -8
  br i1 %i.pr, label %._crit_edge98.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.095.i = phi i32 [ %i.qq, %vec.epilog.scalar.ph ], [ %.095.i.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.021594.i = phi ptr [ %i.qp, %vec.epilog.scalar.ph ], [ %.021594.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.1093.i = phi ptr [ %i.qo, %vec.epilog.scalar.ph ], [ %.1093.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.ps = load i8, ptr %.021594.i, align 1, !tbaa !113
  store i8 %i.ps, ptr %.1093.i, align 1, !tbaa !113
  %i.pt = getelementptr inbounds nuw i8, ptr %.1093.i, i64 1
  %i.pu = getelementptr inbounds nuw i8, ptr %.021594.i, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !113
  store i8 %i.pv, ptr %i.pt, align 1, !tbaa !113
  %i.pw = getelementptr inbounds nuw i8, ptr %.1093.i, i64 2
  %i.px = getelementptr inbounds nuw i8, ptr %.021594.i, i64 2
  %i.py = load i8, ptr %i.px, align 1, !tbaa !113
  store i8 %i.py, ptr %i.pw, align 1, !tbaa !113
  %i.pz = getelementptr inbounds nuw i8, ptr %.1093.i, i64 3
  %i.qa = getelementptr inbounds nuw i8, ptr %.021594.i, i64 3
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !113
  store i8 %i.qb, ptr %i.pz, align 1, !tbaa !113
  %i.qc = getelementptr inbounds nuw i8, ptr %.1093.i, i64 4
  %i.qd = getelementptr inbounds nuw i8, ptr %.021594.i, i64 4
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !113
  store i8 %i.qe, ptr %i.qc, align 1, !tbaa !113
  %i.qf = getelementptr inbounds nuw i8, ptr %.1093.i, i64 5
  %i.qg = getelementptr inbounds nuw i8, ptr %.021594.i, i64 5
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !113
  store i8 %i.qh, ptr %i.qf, align 1, !tbaa !113
  %i.qi = getelementptr inbounds nuw i8, ptr %.1093.i, i64 6
  %i.qj = getelementptr inbounds nuw i8, ptr %.021594.i, i64 6
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !113
  store i8 %i.qk, ptr %i.qi, align 1, !tbaa !113
  %i.ql = getelementptr inbounds nuw i8, ptr %.1093.i, i64 7
  %i.qm = getelementptr inbounds nuw i8, ptr %.021594.i, i64 7
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !113
  store i8 %i.qn, ptr %i.ql, align 1, !tbaa !113
  %i.qo = getelementptr inbounds nuw i8, ptr %.1093.i, i64 8 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.021594.i, i64 8
  %i.qq = add nuw nsw i32 %.095.i, 8              ; 2 uses
  %exitcond139.not.i.7 = icmp eq i32 %i.qq, %.sroa.speculated
  br i1 %exitcond139.not.i.7, label %._crit_edge98.i, label %vec.epilog.scalar.ph, !llvm.loop !484

._crit_edge98.i:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa224 = phi ptr [ %i.pj, %vec.epilog.middle.block ], [ %i.pe, %middle.block ], [ %.lcssa326.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.qo, %vec.epilog.scalar.ph ]
  %indvars.iv.next141.i = add nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %exitcond143.not.i = icmp eq i64 %indvars.iv.next141.i, %wide.trip.count.i
  br i1 %exitcond143.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %iter.check, !llvm.loop !485

bb.g:                                             ; preds = %.noexc40
  %i.qr = load i32, ptr %i.r, align 4, !tbaa !86  ; 7 uses
  %i.qs = icmp sgt i32 %.sroa.speculated86, 7
  br i1 %i.qs, label %.lr.ph19.i, label %.preheader4.i43

.lr.ph19.i:                                       ; preds = %bb.g
  %i.qt = sext i32 %.0122 to i64                  ; 2 uses
  %i.qu = icmp sgt i32 %.sroa.speculated, 1
  %i.qv = sext i32 %i.qr to i64                   ; 10 uses
  %i.qw = shl nsw i32 %i.qr, 1
  %i.qx = sext i32 %i.qw to i64
  br i1 %i.qu, label %.lr.ph.us.preheader.i, label %.lr.ph19.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph19.i
  %i.qy = and i32 %.sroa.speculated, 2147483646   ; 4 uses
  %i.qz = zext nneg i32 %.sroa.speculated86 to i64
  %.not89 = icmp eq i32 %i.qy, %.sroa.speculated
  %i.ra = and i32 %.sroa.speculated, 1            ; 2 uses
  %lcmp.mod351.not = icmp eq i32 %i.ra, 0
  %i.rb = sub nsw i32 %i.qy, %.sroa.speculated
  %i.rc = icmp ugt i32 %i.rb, -8
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv103.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next104.i, %._crit_edge.us.i ] ; 2 uses
  %.013317.us.i = phi ptr [ %i.ay, %.lr.ph.us.preheader.i ], [ %.2.lcssa.us.i, %._crit_edge.us.i ]
  %i.rd = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.re = load i32, ptr %i.r, align 4, !tbaa !86
  %i.rf = sext i32 %i.re to i64
  %i.rg = mul nsw i64 %i.rf, %i.qt
  %i.rh = load i64, ptr %i.s, align 8, !tbaa !59
  %i.ri = mul i64 %i.rg, %i.rh
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.ri
  %i.rk = getelementptr i8, ptr %i.rj, i64 %indvars.iv103.i
  %i.rl = getelementptr i8, ptr %i.rk, i64 %i.aa
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.us.i
  %.11348.us.i = phi ptr [ %.013317.us.i, %.lr.ph.us.i ], [ %i.ru, %bb.h ] ; 2 uses
  %.01397.us.i = phi ptr [ %i.rl, %.lr.ph.us.i ], [ %i.rv, %bb.h ] ; 3 uses
  %.01416.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %i.rw, %bb.h ]
  %i.rm = load i64, ptr %.01397.us.i, align 1, !tbaa !113
  %i.rn = insertelement <2 x i64> poison, i64 %i.rm, i64 0
  %i.ro = getelementptr inbounds i8, ptr %.01397.us.i, i64 %i.qv
  %i.rp = load i64, ptr %i.ro, align 1, !tbaa !113
  %i.rq = insertelement <2 x i64> poison, i64 %i.rp, i64 0
  %i.rr = bitcast <2 x i64> %i.rn to <16 x i8>
  %i.rs = bitcast <2 x i64> %i.rq to <16 x i8>
  %i.rt = shufflevector <16 x i8> %i.rr, <16 x i8> %i.rs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.rt, ptr %.11348.us.i, align 1, !tbaa !113
  %i.ru = getelementptr inbounds nuw i8, ptr %.11348.us.i, i64 16 ; 4 uses
  %i.rv = getelementptr inbounds i8, ptr %.01397.us.i, i64 %i.qx ; 3 uses
  %i.rw = add nuw nsw i32 %.01416.us.i, 2         ; 2 uses
  %i.rx = or disjoint i32 %i.rw, 1
  %i.ry = icmp slt i32 %i.rx, %.sroa.speculated
  br i1 %i.ry, label %bb.h, label %..preheader5_crit_edge.us.i, !llvm.loop !486

.lr.ph14.us.i:                                    ; preds = %.lr.ph14.us.i.prol.loopexit, %.lr.ph14.us.i
  %.213.us.i = phi ptr [ %i.sv, %.lr.ph14.us.i ], [ %.213.us.i.unr, %.lr.ph14.us.i.prol.loopexit ] ; 9 uses
  %.114012.us.i = phi ptr [ %i.sw, %.lr.ph14.us.i ], [ %.114012.us.i.unr, %.lr.ph14.us.i.prol.loopexit ] ; 2 uses
  %.114211.us.i = phi i32 [ %i.sx, %.lr.ph14.us.i ], [ %.114211.us.i.unr, %.lr.ph14.us.i.prol.loopexit ]
  %i.rz = load i64, ptr %.114012.us.i, align 1, !tbaa !113
  store i64 %i.rz, ptr %.213.us.i, align 1, !tbaa !113
  %i.sa = getelementptr inbounds nuw i8, ptr %.213.us.i, i64 8
  %i.sb = getelementptr inbounds i8, ptr %.114012.us.i, i64 %i.qv ; 2 uses
  %i.sc = load i64, ptr %i.sb, align 1, !tbaa !113
  store i64 %i.sc, ptr %i.sa, align 1, !tbaa !113
  %i.sd = getelementptr inbounds nuw i8, ptr %.213.us.i, i64 16
  %i.se = getelementptr inbounds i8, ptr %i.sb, i64 %i.qv ; 2 uses
  %i.sf = load i64, ptr %i.se, align 1, !tbaa !113
  store i64 %i.sf, ptr %i.sd, align 1, !tbaa !113
  %i.sg = getelementptr inbounds nuw i8, ptr %.213.us.i, i64 24
  %i.sh = getelementptr inbounds i8, ptr %i.se, i64 %i.qv ; 2 uses
  %i.si = load i64, ptr %i.sh, align 1, !tbaa !113
  store i64 %i.si, ptr %i.sg, align 1, !tbaa !113
  %i.sj = getelementptr inbounds nuw i8, ptr %.213.us.i, i64 32
  %i.sk = getelementptr inbounds i8, ptr %i.sh, i64 %i.qv ; 2 uses
  %i.sl = load i64, ptr %i.sk, align 1, !tbaa !113
  store i64 %i.sl, ptr %i.sj, align 1, !tbaa !113
  %i.sm = getelementptr inbounds nuw i8, ptr %.213.us.i, i64 40
  %i.sn = getelementptr inbounds i8, ptr %i.sk, i64 %i.qv ; 2 uses
  %i.so = load i64, ptr %i.sn, align 1, !tbaa !113
  store i64 %i.so, ptr %i.sm, align 1, !tbaa !113
  %i.sp = getelementptr inbounds nuw i8, ptr %.213.us.i, i64 48
  %i.sq = getelementptr inbounds i8, ptr %i.sn, i64 %i.qv ; 2 uses
  %i.sr = load i64, ptr %i.sq, align 1, !tbaa !113
  store i64 %i.sr, ptr %i.sp, align 1, !tbaa !113
  %i.ss = getelementptr inbounds nuw i8, ptr %.213.us.i, i64 56
  %i.st = getelementptr inbounds i8, ptr %i.sq, i64 %i.qv ; 2 uses
  %i.su = load i64, ptr %i.st, align 1, !tbaa !113
  store i64 %i.su, ptr %i.ss, align 1, !tbaa !113
  %i.sv = getelementptr inbounds nuw i8, ptr %.213.us.i, i64 64 ; 2 uses
  %i.sw = getelementptr inbounds i8, ptr %i.st, i64 %i.qv
  %i.sx = add nuw nsw i32 %.114211.us.i, 8        ; 2 uses
  %exitcond.not.i65.7 = icmp eq i32 %i.sx, %.sroa.speculated
  br i1 %exitcond.not.i65.7, label %._crit_edge.us.i, label %.lr.ph14.us.i, !llvm.loop !487

._crit_edge.us.i:                                 ; preds = %.lr.ph14.us.i.prol.loopexit, %.lr.ph14.us.i, %..preheader5_crit_edge.us.i
  %.2.lcssa.us.i = phi ptr [ %i.ru, %..preheader5_crit_edge.us.i ], [ %.lcssa330.unr, %.lr.ph14.us.i.prol.loopexit ], [ %i.sv, %.lr.ph14.us.i ] ; 2 uses
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 8 ; 3 uses
  %i.sy = or disjoint i64 %indvars.iv.next104.i, 7
  %i.sz = icmp samesign ult i64 %i.sy, %i.qz
  br i1 %i.sz, label %.lr.ph.us.i, label %.preheader4.loopexit.i64, !llvm.loop !488

..preheader5_crit_edge.us.i:                      ; preds = %bb.h
  br i1 %.not89, label %._crit_edge.us.i, label %.lr.ph14.us.i.preheader

.lr.ph14.us.i.preheader:                          ; preds = %..preheader5_crit_edge.us.i
  br i1 %lcmp.mod351.not, label %.lr.ph14.us.i.prol.loopexit, label %.lr.ph14.us.i.prol

.lr.ph14.us.i.prol:                               ; preds = %.lr.ph14.us.i.preheader, %.lr.ph14.us.i.prol
  %.213.us.i.prol = phi ptr [ %i.tb, %.lr.ph14.us.i.prol ], [ %i.ru, %.lr.ph14.us.i.preheader ] ; 2 uses
  %.114012.us.i.prol = phi ptr [ %i.tc, %.lr.ph14.us.i.prol ], [ %i.rv, %.lr.ph14.us.i.preheader ] ; 2 uses
  %.114211.us.i.prol = phi i32 [ %i.td, %.lr.ph14.us.i.prol ], [ %i.qy, %.lr.ph14.us.i.preheader ]
  %prol.iter352 = phi i32 [ %prol.iter352.next, %.lr.ph14.us.i.prol ], [ 0, %.lr.ph14.us.i.preheader ]
  %i.ta = load i64, ptr %.114012.us.i.prol, align 1, !tbaa !113
  store i64 %i.ta, ptr %.213.us.i.prol, align 1, !tbaa !113
  %i.tb = getelementptr inbounds nuw i8, ptr %.213.us.i.prol, i64 8 ; 3 uses
  %i.tc = getelementptr inbounds i8, ptr %.114012.us.i.prol, i64 %i.qv ; 2 uses
  %i.td = add nuw nsw i32 %.114211.us.i.prol, 1   ; 2 uses
  %prol.iter352.next = add i32 %prol.iter352, 1   ; 2 uses
  %prol.iter352.cmp.not = icmp eq i32 %prol.iter352.next, %i.ra
  br i1 %prol.iter352.cmp.not, label %.lr.ph14.us.i.prol.loopexit, label %.lr.ph14.us.i.prol, !llvm.loop !489

.lr.ph14.us.i.prol.loopexit:                      ; preds = %.lr.ph14.us.i.prol, %.lr.ph14.us.i.preheader
  %.lcssa330.unr = phi ptr [ poison, %.lr.ph14.us.i.preheader ], [ %i.tb, %.lr.ph14.us.i.prol ]
  %.213.us.i.unr = phi ptr [ %i.ru, %.lr.ph14.us.i.preheader ], [ %i.tb, %.lr.ph14.us.i.prol ]
  %.114012.us.i.unr = phi ptr [ %i.rv, %.lr.ph14.us.i.preheader ], [ %i.tc, %.lr.ph14.us.i.prol ]
  %.114211.us.i.unr = phi i32 [ %i.qy, %.lr.ph14.us.i.preheader ], [ %i.td, %.lr.ph14.us.i.prol ]
  br i1 %i.rc, label %._crit_edge.us.i, label %.lr.ph14.us.i

.lr.ph19.split.i:                                 ; preds = %.lr.ph19.i
  %i.te = icmp eq i32 %.sroa.speculated, 1
  br i1 %i.te, label %.preheader5.us23.preheader.i, label %.preheader5.preheader.i

.preheader5.preheader.i:                          ; preds = %.lr.ph19.split.i
  %i.tf = and i32 %.sroa.speculated86, 2147483640
  br label %.preheader4.i43

.preheader5.us23.preheader.i:                     ; preds = %.lr.ph19.split.i
  %i.tg = zext nneg i32 %.sroa.speculated86 to i64
  br label %._crit_edge.us31.i

._crit_edge.us31.i:                               ; preds = %._crit_edge.us31.i, %.preheader5.us23.preheader.i
  %indvars.iv.i62 = phi i64 [ 0, %.preheader5.us23.preheader.i ], [ %indvars.iv.next.i63, %._crit_edge.us31.i ] ; 2 uses
  %.013317.us24.i = phi ptr [ %i.ay, %.preheader5.us23.preheader.i ], [ %i.th, %._crit_edge.us31.i ] ; 2 uses
  %i.th = getelementptr i8, ptr %.013317.us24.i, i64 8 ; 2 uses
  %i.ti = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.tj = load i32, ptr %i.r, align 4, !tbaa !86
  %i.tk = sext i32 %i.tj to i64
  %i.tl = mul nsw i64 %i.tk, %i.qt
  %i.tm = load i64, ptr %i.s, align 8, !tbaa !59
  %i.tn = mul i64 %i.tl, %i.tm
  %i.to = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.tn
  %i.tp = getelementptr i8, ptr %i.to, i64 %indvars.iv.i62
  %i.tq = getelementptr i8, ptr %i.tp, i64 %i.aa
  %i.tr = load i64, ptr %i.tq, align 1, !tbaa !113
  store i64 %i.tr, ptr %.013317.us24.i, align 1, !tbaa !113
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 8 ; 3 uses
  %i.ts = or disjoint i64 %indvars.iv.next.i63, 7
  %i.tt = icmp samesign ult i64 %i.ts, %i.tg
  br i1 %i.tt, label %._crit_edge.us31.i, label %.preheader4.loopexit82.i, !llvm.loop !488

.preheader4.loopexit.i64:                         ; preds = %._crit_edge.us.i
  %i.tu = trunc nuw nsw i64 %indvars.iv.next104.i to i32
  br label %.preheader4.i43

.preheader4.loopexit82.i:                         ; preds = %._crit_edge.us31.i
  %i.tv = trunc nuw nsw i64 %indvars.iv.next.i63 to i32
  br label %.preheader4.i43

.preheader4.i43:                                  ; preds = %.preheader4.loopexit82.i, %.preheader4.loopexit.i64, %.preheader5.preheader.i, %bb.g
  %.0135.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.tv, %.preheader4.loopexit82.i ], [ %i.tu, %.preheader4.loopexit.i64 ], [ %i.tf, %.preheader5.preheader.i ] ; 3 uses
  %.0133.lcssa.i = phi ptr [ %i.ay, %bb.g ], [ %i.th, %.preheader4.loopexit82.i ], [ %.2.lcssa.us.i, %.preheader4.loopexit.i64 ], [ %i.ay, %.preheader5.preheader.i ] ; 2 uses
  %i.tw = or disjoint i32 %.0135.lcssa.i, 3
  %i.tx = icmp slt i32 %i.tw, %.sroa.speculated86
  br i1 %i.tx, label %.lr.ph49.i, label %.preheader2.i44

.lr.ph49.i:                                       ; preds = %.preheader4.i43
  %i.ty = sext i32 %.0122 to i64
  %i.tz = icmp sgt i32 %.sroa.speculated, 1
  %i.ua = sext i32 %i.qr to i64                   ; 4 uses
  %i.ub = shl nsw i32 %i.qr, 1
  %i.uc = sext i32 %i.ub to i64
  %i.ud = and i32 %.sroa.speculated, -2
  %i.ue = sext i32 %.0135.lcssa.i to i64
  %i.uf = sext i32 %.sroa.speculated86 to i64
  %invariant.op.i55 = add nsw i64 %i.uf, -3
  %xtraiter353 = and i32 %.sroa.speculated, 1
  %lcmp.mod354.not = icmp eq i32 %xtraiter353, 0
  br label %bb.i

.preheader2.loopexit.i60:                         ; preds = %._crit_edge.i58
  %i.ug = trunc nsw i64 %indvars.iv.next108.i to i32
  br label %.preheader2.i44

.preheader2.i44:                                  ; preds = %.preheader2.loopexit.i60, %.preheader4.i43
end_hunk_7
begin_hunk_8_@_ZN4ncnn8Gemm_x8620create_pipeline_int8ERKNS_6OptionE.omp_outlined.9:bb.a
  %.0126.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.uo, %.preheader1.i49.loopexit.unr-lcssa ], [ %i.uo, %.lr.ph56.i.epil.preheader ] ; 5 uses
  %i.yy = icmp slt i32 %.0126.lcssa.i, %.sroa.speculated
  br i1 %i.yy, label %.lr.ph63.i54.preheader, label %._crit_edge64.i51

.lr.ph63.i54.preheader:                           ; preds = %.preheader1.i49
  %i.yz = sub i32 %.sroa.speculated, %.0126.lcssa.i
  %xtraiter363 = and i32 %i.yz, 3                 ; 2 uses
  %lcmp.mod364.not = icmp eq i32 %xtraiter363, 0
  br i1 %lcmp.mod364.not, label %.lr.ph63.i54.prol.loopexit, label %.lr.ph63.i54.prol

.lr.ph63.i54.prol:                                ; preds = %.lr.ph63.i54.preheader, %.lr.ph63.i54.prol
  %.162.i.prol = phi i32 [ %i.zg, %.lr.ph63.i54.prol ], [ %.0126.lcssa.i, %.lr.ph63.i54.preheader ]
  %.112861.i.prol = phi ptr [ %i.zf, %.lr.ph63.i54.prol ], [ %.0127.lcssa.i, %.lr.ph63.i54.preheader ] ; 3 uses
  %.860.i.prol = phi ptr [ %i.ze, %.lr.ph63.i54.prol ], [ %.7.lcssa.i50, %.lr.ph63.i54.preheader ] ; 3 uses
  %prol.iter365 = phi i32 [ %prol.iter365.next, %.lr.ph63.i54.prol ], [ 0, %.lr.ph63.i54.preheader ]
  %i.za = load i8, ptr %.112861.i.prol, align 1, !tbaa !113
  store i8 %i.za, ptr %.860.i.prol, align 1, !tbaa !113
  %i.zb = getelementptr inbounds nuw i8, ptr %.112861.i.prol, i64 1
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !113
  %i.zd = getelementptr inbounds nuw i8, ptr %.860.i.prol, i64 1
  store i8 %i.zc, ptr %i.zd, align 1, !tbaa !113
  %i.ze = getelementptr inbounds nuw i8, ptr %.860.i.prol, i64 2 ; 3 uses
  %i.zf = getelementptr inbounds i8, ptr %.112861.i.prol, i64 %i.ul ; 2 uses
  %i.zg = add nuw nsw i32 %.162.i.prol, 1         ; 2 uses
  %prol.iter365.next = add i32 %prol.iter365, 1   ; 2 uses
  %prol.iter365.cmp.not = icmp eq i32 %prol.iter365.next, %xtraiter363
  br i1 %prol.iter365.cmp.not, label %.lr.ph63.i54.prol.loopexit, label %.lr.ph63.i54.prol, !llvm.loop !493

.lr.ph63.i54.prol.loopexit:                       ; preds = %.lr.ph63.i54.prol, %.lr.ph63.i54.preheader
  %.lcssa336.unr = phi ptr [ poison, %.lr.ph63.i54.preheader ], [ %i.ze, %.lr.ph63.i54.prol ]
  %.162.i.unr = phi i32 [ %.0126.lcssa.i, %.lr.ph63.i54.preheader ], [ %i.zg, %.lr.ph63.i54.prol ]
  %.112861.i.unr = phi ptr [ %.0127.lcssa.i, %.lr.ph63.i54.preheader ], [ %i.zf, %.lr.ph63.i54.prol ]
  %.860.i.unr = phi ptr [ %.7.lcssa.i50, %.lr.ph63.i54.preheader ], [ %i.ze, %.lr.ph63.i54.prol ]
  %i.zh = sub i32 %.0126.lcssa.i, %.sroa.speculated
  %i.zi = icmp ugt i32 %i.zh, -4
  br i1 %i.zi, label %._crit_edge64.i51, label %.lr.ph63.i54

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.preheader, %.lr.ph56.i
  %.012753.i = phi ptr [ %i.aag, %.lr.ph56.i ], [ %i.yl, %.lr.ph56.i.preheader ] ; 4 uses
  %.752.i = phi ptr [ %i.aaf, %.lr.ph56.i ], [ %.667.i, %.lr.ph56.i.preheader ] ; 9 uses
  %niter362 = phi i32 [ %niter362.next.1, %.lr.ph56.i ], [ 0, %.lr.ph56.i.preheader ]
  %i.zj = load i8, ptr %.012753.i, align 1, !tbaa !113
  store i8 %i.zj, ptr %.752.i, align 1, !tbaa !113
  %i.zk = getelementptr inbounds i8, ptr %.012753.i, i64 %i.ul ; 2 uses
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !113
  %i.zm = getelementptr inbounds nuw i8, ptr %.752.i, i64 1
  store i8 %i.zl, ptr %i.zm, align 1, !tbaa !113
  %i.zn = getelementptr inbounds nuw i8, ptr %.012753.i, i64 1
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !113
  %i.zp = getelementptr inbounds nuw i8, ptr %.752.i, i64 2
  store i8 %i.zo, ptr %i.zp, align 1, !tbaa !113
  %i.zq = getelementptr i8, ptr %i.zk, i64 1
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !113
  %i.zs = getelementptr inbounds nuw i8, ptr %.752.i, i64 3
  store i8 %i.zr, ptr %i.zs, align 1, !tbaa !113
  %i.zt = getelementptr inbounds nuw i8, ptr %.752.i, i64 4
  %i.zu = getelementptr inbounds i8, ptr %.012753.i, i64 %i.un ; 4 uses
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !113
  store i8 %i.zv, ptr %i.zt, align 1, !tbaa !113
  %i.zw = getelementptr inbounds i8, ptr %i.zu, i64 %i.ul ; 2 uses
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !113
  %i.zy = getelementptr inbounds nuw i8, ptr %.752.i, i64 5
  store i8 %i.zx, ptr %i.zy, align 1, !tbaa !113
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zu, i64 1
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !113
  %i.aab = getelementptr inbounds nuw i8, ptr %.752.i, i64 6
  store i8 %i.aaa, ptr %i.aab, align 1, !tbaa !113
  %i.aac = getelementptr i8, ptr %i.zw, i64 1
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !113
  %i.aae = getelementptr inbounds nuw i8, ptr %.752.i, i64 7
  store i8 %i.aad, ptr %i.aae, align 1, !tbaa !113
  %i.aaf = getelementptr inbounds nuw i8, ptr %.752.i, i64 8 ; 3 uses
  %i.aag = getelementptr inbounds i8, ptr %i.zu, i64 %i.un ; 3 uses
  %niter362.next.1 = add nuw nsw i32 %niter362, 2 ; 2 uses
  %niter362.ncmp.1.not = icmp eq i32 %niter362.next.1, %unroll_iter361
  br i1 %niter362.ncmp.1.not, label %.preheader1.i49.loopexit.unr-lcssa, label %.lr.ph56.i, !llvm.loop !494

.lr.ph63.i54:                                     ; preds = %.lr.ph63.i54.prol.loopexit, %.lr.ph63.i54
  %.162.i = phi i32 [ %i.abf, %.lr.ph63.i54 ], [ %.162.i.unr, %.lr.ph63.i54.prol.loopexit ]
  %.112861.i = phi ptr [ %i.abe, %.lr.ph63.i54 ], [ %.112861.i.unr, %.lr.ph63.i54.prol.loopexit ] ; 3 uses
  %.860.i = phi ptr [ %i.abd, %.lr.ph63.i54 ], [ %.860.i.unr, %.lr.ph63.i54.prol.loopexit ] ; 9 uses
  %i.aah = load i8, ptr %.112861.i, align 1, !tbaa !113
  store i8 %i.aah, ptr %.860.i, align 1, !tbaa !113
  %i.aai = getelementptr inbounds nuw i8, ptr %.112861.i, i64 1
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !113
  %i.aak = getelementptr inbounds nuw i8, ptr %.860.i, i64 1
  store i8 %i.aaj, ptr %i.aak, align 1, !tbaa !113
  %i.aal = getelementptr inbounds nuw i8, ptr %.860.i, i64 2
  %i.aam = getelementptr inbounds i8, ptr %.112861.i, i64 %i.ul ; 3 uses
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !113
  store i8 %i.aan, ptr %i.aal, align 1, !tbaa !113
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aam, i64 1
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !113
  %i.aaq = getelementptr inbounds nuw i8, ptr %.860.i, i64 3
  store i8 %i.aap, ptr %i.aaq, align 1, !tbaa !113
  %i.aar = getelementptr inbounds nuw i8, ptr %.860.i, i64 4
  %i.aas = getelementptr inbounds i8, ptr %i.aam, i64 %i.ul ; 3 uses
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !113
  store i8 %i.aat, ptr %i.aar, align 1, !tbaa !113
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aas, i64 1
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !113
  %i.aaw = getelementptr inbounds nuw i8, ptr %.860.i, i64 5
  store i8 %i.aav, ptr %i.aaw, align 1, !tbaa !113
  %i.aax = getelementptr inbounds nuw i8, ptr %.860.i, i64 6
  %i.aay = getelementptr inbounds i8, ptr %i.aas, i64 %i.ul ; 3 uses
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !113
  store i8 %i.aaz, ptr %i.aax, align 1, !tbaa !113
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aay, i64 1
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !113
  %i.abc = getelementptr inbounds nuw i8, ptr %.860.i, i64 7
  store i8 %i.abb, ptr %i.abc, align 1, !tbaa !113
  %i.abd = getelementptr inbounds nuw i8, ptr %.860.i, i64 8 ; 2 uses
  %i.abe = getelementptr inbounds i8, ptr %i.aay, i64 %i.ul
  %i.abf = add nuw nsw i32 %.162.i, 4             ; 2 uses
  %exitcond110.not.i.3 = icmp eq i32 %i.abf, %.sroa.speculated
  br i1 %exitcond110.not.i.3, label %._crit_edge64.i51, label %.lr.ph63.i54, !llvm.loop !495

._crit_edge64.i51:                                ; preds = %.lr.ph63.i54.prol.loopexit, %.lr.ph63.i54, %.preheader1.i49
  %.8.lcssa.i52 = phi ptr [ %.7.lcssa.i50, %.preheader1.i49 ], [ %.lcssa336.unr, %.lr.ph63.i54.prol.loopexit ], [ %i.abd, %.lr.ph63.i54 ] ; 2 uses
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 2 ; 3 uses
  %i.abg = icmp slt i64 %indvars.iv.next112.i, %invariant.op133.i
  br i1 %i.abg, label %bb.j, label %.preheader.loopexit.i53, !llvm.loop !496

.lr.ph75.i:                                       ; preds = %._crit_edge76.i, %.lr.ph75.preheader.i
  %indvars.iv115.i = phi i64 [ %i.ya, %.lr.ph75.preheader.i ], [ %indvars.iv.next116.i, %._crit_edge76.i ] ; 2 uses
  %.979.i = phi ptr [ %.6.lcssa.i46, %.lr.ph75.preheader.i ], [ %.lcssa337, %._crit_edge76.i ] ; 2 uses
  %i.abh = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.abi = load i32, ptr %i.r, align 4, !tbaa !86
  %i.abj = sext i32 %i.abi to i64
  %i.abk = mul nsw i64 %i.abj, %i.xx
  %i.abl = load i64, ptr %i.s, align 8, !tbaa !59
  %i.abm = mul i64 %i.abk, %i.abl
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abh, i64 %i.abm
  %i.abo = getelementptr i8, ptr %i.abn, i64 %indvars.iv115.i
  %i.abp = getelementptr i8, ptr %i.abo, i64 %i.aa ; 2 uses
  br i1 %i.yc, label %.epil.preheader, label %.lr.ph75.i.new

.lr.ph75.i.new:                                   ; preds = %.lr.ph75.i, %.lr.ph75.i.new
  %.012572.i = phi ptr [ %i.acn, %.lr.ph75.i.new ], [ %i.abp, %.lr.ph75.i ] ; 2 uses
  %.1071.i = phi ptr [ %i.acm, %.lr.ph75.i.new ], [ %.979.i, %.lr.ph75.i ] ; 9 uses
  %niter371 = phi i32 [ %niter371.next.7, %.lr.ph75.i.new ], [ 0, %.lr.ph75.i ]
  %i.abq = load i8, ptr %.012572.i, align 1, !tbaa !113
  store i8 %i.abq, ptr %.1071.i, align 1, !tbaa !113
  %i.abr = getelementptr inbounds nuw i8, ptr %.1071.i, i64 1
  %i.abs = getelementptr inbounds i8, ptr %.012572.i, i64 %i.xz ; 2 uses
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !113
  store i8 %i.abt, ptr %i.abr, align 1, !tbaa !113
  %i.abu = getelementptr inbounds nuw i8, ptr %.1071.i, i64 2
  %i.abv = getelementptr inbounds i8, ptr %i.abs, i64 %i.xz ; 2 uses
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !113
  store i8 %i.abw, ptr %i.abu, align 1, !tbaa !113
  %i.abx = getelementptr inbounds nuw i8, ptr %.1071.i, i64 3
  %i.aby = getelementptr inbounds i8, ptr %i.abv, i64 %i.xz ; 2 uses
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !113
  store i8 %i.abz, ptr %i.abx, align 1, !tbaa !113
  %i.aca = getelementptr inbounds nuw i8, ptr %.1071.i, i64 4
  %i.acb = getelementptr inbounds i8, ptr %i.aby, i64 %i.xz ; 2 uses
  %i.acc = load i8, ptr %i.acb, align 1, !tbaa !113
  store i8 %i.acc, ptr %i.aca, align 1, !tbaa !113
  %i.acd = getelementptr inbounds nuw i8, ptr %.1071.i, i64 5
  %i.ace = getelementptr inbounds i8, ptr %i.acb, i64 %i.xz ; 2 uses
  %i.acf = load i8, ptr %i.ace, align 1, !tbaa !113
  store i8 %i.acf, ptr %i.acd, align 1, !tbaa !113
  %i.acg = getelementptr inbounds nuw i8, ptr %.1071.i, i64 6
  %i.ach = getelementptr inbounds i8, ptr %i.ace, i64 %i.xz ; 2 uses
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !113
  store i8 %i.aci, ptr %i.acg, align 1, !tbaa !113
  %i.acj = getelementptr inbounds nuw i8, ptr %.1071.i, i64 7
  %i.ack = getelementptr inbounds i8, ptr %i.ach, i64 %i.xz ; 2 uses
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !113
  store i8 %i.acl, ptr %i.acj, align 1, !tbaa !113
  %i.acm = getelementptr inbounds nuw i8, ptr %.1071.i, i64 8 ; 3 uses
  %i.acn = getelementptr inbounds i8, ptr %i.ack, i64 %i.xz ; 2 uses
  %niter371.next.7 = add i32 %niter371, 8         ; 2 uses
  %niter371.ncmp.7 = icmp eq i32 %niter371.next.7, %unroll_iter370
  br i1 %niter371.ncmp.7, label %._crit_edge76.i.unr-lcssa, label %.lr.ph75.i.new, !llvm.loop !497

._crit_edge76.i.unr-lcssa:                        ; preds = %.lr.ph75.i.new
  br i1 %lcmp.mod367.not, label %._crit_edge76.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge76.i.unr-lcssa, %.lr.ph75.i
  %.012572.i.epil.init = phi ptr [ %i.abp, %.lr.ph75.i ], [ %i.acn, %._crit_edge76.i.unr-lcssa ]
  %.1071.i.epil.init = phi ptr [ %.979.i, %.lr.ph75.i ], [ %i.acm, %._crit_edge76.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod369)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %.012572.i.epil = phi ptr [ %.012572.i.epil.init, %.epil.preheader ], [ %i.acq, %bb.k ] ; 2 uses
  %.1071.i.epil = phi ptr [ %.1071.i.epil.init, %.epil.preheader ], [ %i.acp, %bb.k ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.aco = load i8, ptr %.012572.i.epil, align 1, !tbaa !113
  store i8 %i.aco, ptr %.1071.i.epil, align 1, !tbaa !113
  %i.acp = getelementptr inbounds nuw i8, ptr %.1071.i.epil, i64 1 ; 2 uses
  %i.acq = getelementptr inbounds i8, ptr %.012572.i.epil, i64 %i.xz
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter366
  br i1 %epil.iter.cmp.not, label %._crit_edge76.i, label %bb.k, !llvm.loop !498

._crit_edge76.i:                                  ; preds = %bb.k, %._crit_edge76.i.unr-lcssa
  %.lcssa337 = phi ptr [ %i.acm, %._crit_edge76.i.unr-lcssa ], [ %i.acp, %bb.k ]
  %indvars.iv.next116.i = add nsw i64 %indvars.iv115.i, 1 ; 2 uses
  %exitcond118.not.i = icmp eq i64 %indvars.iv.next116.i, %wide.trip.count.i47
  br i1 %exitcond118.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph75.i, !llvm.loop !499

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge98.i, %._crit_edge76.i, %.lr.ph80.i, %.preheader.i45, %.lr.ph102.i, %.preheader.i
  %i.acr = load i32, ptr %5, align 4, !tbaa !45   ; 2 uses
  %i.acs = add nsw i32 %i.acr, %.0122             ; 2 uses
  %i.act = load i32, ptr %4, align 4, !tbaa !45   ; 3 uses
  %i.acu = icmp slt i32 %i.acs, %i.act
  br i1 %i.acu, label %.noexc40, label %._crit_edge.loopexit, !llvm.loop !500

._crit_edge126:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge126, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL19gemm_AT_BT_x86_int8ERKNS_3MatES2_S2_fS2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not138 = icmp sgt i32 %i.k, %i.j
  br i1 %.not138, label %._crit_edge141, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 52
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 44
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 52
  %i.bl = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.052139 = phi i32 [ %i.k, %.lr.ph ], [ %i.fp, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.bn = load i32, ptr %3, align 4, !tbaa !243   ; 2 uses
  %i.bo = load i32, ptr %i.l, align 4, !tbaa !245 ; 2 uses
  %i.bp = load i32, ptr %i.m, align 4, !tbaa !246 ; 3 uses
  %i.bq = load i32, ptr %i.n, align 4, !tbaa !247
  %i.br = load i32, ptr %i.o, align 4, !tbaa !249
  %i.bs = load float, ptr %i.p, align 4, !tbaa !501
  %i.bt = load float, ptr %i.q, align 4, !tbaa !502
  %i.bu = load i32, ptr %4, align 4, !tbaa !45    ; 2 uses
  %i.bv = sdiv i32 %.052139, %i.bu                ; 2 uses
  %i.bw = srem i32 %.052139, %i.bu                ; 2 uses
  %i.bx = mul nsw i32 %i.bv, %i.bn                ; 3 uses
  %i.by = mul nsw i32 %i.bw, %i.bo                ; 3 uses
  %i.bz = load i32, ptr %5, align 4, !tbaa !45
  %i.ca = sub nsw i32 %i.bz, %i.bx
  %.sroa.speculated121 = call i32 @llvm.smin.i32(i32 %i.bn, i32 %i.ca) ; 2 uses
  %i.cb = load i32, ptr %6, align 4, !tbaa !45
  %i.cc = sub nsw i32 %i.cb, %i.by
  %.sroa.speculated117 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.cc) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.cd = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc82 unwind label %.loopexit.split-lp

.noexc82:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.ce = load i32, ptr %i.r, align 4, !tbaa !86, !noalias !503 ; 2 uses
  %i.cf = load i32, ptr %i.s, align 8, !tbaa !88, !noalias !503 ; 2 uses
  %i.cg = load i32, ptr %i.t, align 4, !tbaa !285, !noalias !503
  %i.ch = load ptr, ptr %7, align 8, !tbaa !18, !noalias !503
  %i.ci = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !503
  %i.cj = sext i32 %i.cd to i64
  %i.ck = mul i64 %i.ci, %i.cj
  %i.cl = load i64, ptr %i.v, align 8, !tbaa !59, !noalias !503 ; 4 uses
  %i.cm = mul i64 %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.w, align 8, !tbaa !60, !noalias !503
  %i.cp = load ptr, ptr %i.x, align 8, !tbaa !17, !noalias !503
  store ptr %i.cn, ptr %14, align 8, !tbaa !18
  store ptr null, ptr %i.y, align 8, !tbaa !11
  store i64 %i.cl, ptr %i.z, align 8, !tbaa !59
  store i32 %i.co, ptr %i.aa, align 8, !tbaa !60
  store ptr %i.cp, ptr %i.ab, align 8, !tbaa !17
  store i32 %i.ce, ptr %i.ad, align 4, !tbaa !86
  store i32 %i.cf, ptr %i.ae, align 8, !tbaa !88
  store i32 1, ptr %i.af, align 4, !tbaa !285
  store i32 %i.cg, ptr %i.ag, align 8, !tbaa !51
  %i.cq = sext i32 %i.ce to i64
  %i.cr = sext i32 %i.cf to i64
  %i.cs = mul nsw i64 %i.cr, %i.cq                ; 2 uses
  %i.ct = mul i64 %i.cl, %i.cs
  %i.cu = add i64 %i.ct, 15
  %i.cv = and i64 %i.cu, -16
  %i.cw = udiv i64 %i.cv, %i.cl
  store i64 %i.cw, ptr %i.ah, align 8, !tbaa !20
  %i.cx = load i32, ptr %i.ai, align 8, !tbaa !85, !noalias !503 ; 2 uses
  %i.cy = add nsw i32 %i.cx, -1
  store i32 %i.cy, ptr %i.ac, align 8, !tbaa !85, !alias.scope !503
  %i.cz = icmp eq i32 %i.cx, 4
  br i1 %i.cz, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit

bb.d:                                             ; preds = %.noexc82
  store i64 %i.cs, ptr %i.ah, align 8, !tbaa !20, !alias.scope !503
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %.noexc82, %bb.d
  %i.da = load i32, ptr %8, align 4, !tbaa !45    ; 2 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %_ZN4ncnn3MatD2Ev.exit56.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit56.lr.ph:                    ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.dc = sext i32 %i.bv to i64
  %i.dd = sext i32 %i.bw to i64
  br label %_ZN4ncnn3MatD2Ev.exit56

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit53
  %.val.pre = load ptr, ptr %14, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4ncnn3Mat7channelEi.exit
  %.val = phi ptr [ %.val.pre, %._crit_edge.loopexit ], [ %i.cn, %_ZN4ncnn3Mat7channelEi.exit ]
  call fastcc void @_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr %.val, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.bq, i32 noundef %i.bx, i32 noundef %.sroa.speculated121, i32 noundef %i.by, i32 noundef %.sroa.speculated117, ptr noundef nonnull align 8 dereferenceable(72) %13, float noundef nofpclass(nan inf) %i.bs, float noundef nofpclass(nan inf) %i.bt, i32 noundef %i.br)
  %i.de = load ptr, ptr %i.y, align 8, !tbaa !11  ; 2 uses
  %.not.i69 = icmp eq ptr %i.de, null
  br i1 %.not.i69, label %_ZN4ncnn3MatD2Ev.exit, label %bb.r

_ZN4ncnn3MatD2Ev.exit56:                          ; preds = %_ZN4ncnn3MatD2Ev.exit56.lr.ph, %_ZN4ncnn3MatD2Ev.exit53
  %i.df = phi i32 [ %i.da, %_ZN4ncnn3MatD2Ev.exit56.lr.ph ], [ %i.fe, %_ZN4ncnn3MatD2Ev.exit53 ]
end_hunk_8
begin_hunk_9_@_ZN4ncnnL20pack_B_tile_quantizeERKNS_3MatERS0_iiiif:bb.a
  %i.pd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.pc, <8 x i16> splat (i16 127))
  %i.pe = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.pd, <8 x i16> poison)
  %i.pf = bitcast <16 x i8> %i.pe to <4 x i32>
  %i.pg = extractelement <4 x i32> %i.pf, i64 0
  store i32 %i.pg, ptr %.16155.i, align 4, !tbaa !45
  %i.ph = getelementptr inbounds nuw i8, ptr %.16155.i, i64 4 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.1291153.i, i64 8 ; 2 uses
  %i.pj = add nuw nsw i32 %.1288154.i, 2          ; 3 uses
  %i.pk = or disjoint i32 %i.pj, 1
  %i.pl = icmp slt i32 %i.pk, %4
  br i1 %i.pl, label %.lr.ph156.i, label %.preheader73.i, !llvm.loop !601

.lr.ph163.i:                                      ; preds = %.lr.ph163.i.preheader160, %.lr.ph163.i
  %.17162.i = phi ptr [ %i.pw, %.lr.ph163.i ], [ %.17162.i.ph, %.lr.ph163.i.preheader160 ] ; 3 uses
  %.2289161.i = phi i32 [ %i.py, %.lr.ph163.i ], [ %.2289161.i.ph, %.lr.ph163.i.preheader160 ]
  %.2292160.i = phi ptr [ %i.px, %.lr.ph163.i ], [ %.2292160.i.ph, %.lr.ph163.i.preheader160 ] ; 3 uses
  %i.pm = load float, ptr %.2292160.i, align 4, !tbaa !68
  %i.pn = fmul fast float %i.pm, %5
  %i.po = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.pn)
  %i.pp = fptosi float %i.po to i32
  %spec.select.i31560.i = tail call i32 @llvm.smax.i32(i32 %i.pp, i32 -127)
  %.0.i31661.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i31560.i, i32 127)
  %.0.i316.i = trunc nsw i32 %.0.i31661.i to i8
  store i8 %.0.i316.i, ptr %.17162.i, align 1, !tbaa !113
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.2292160.i, i64 %i.k
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !68
  %i.ps = fmul fast float %i.pr, %5
  %i.pt = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ps)
  %i.pu = fptosi float %i.pt to i32
  %spec.select.i31362.i = tail call i32 @llvm.smax.i32(i32 %i.pu, i32 -127)
  %.0.i31463.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i31362.i, i32 127)
  %.0.i314.i = trunc nsw i32 %.0.i31463.i to i8
  %i.pv = getelementptr inbounds nuw i8, ptr %.17162.i, i64 1
  store i8 %.0.i314.i, ptr %i.pv, align 1, !tbaa !113
  %i.pw = getelementptr inbounds nuw i8, ptr %.17162.i, i64 2 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.2292160.i, i64 4
  %i.py = add nuw nsw i32 %.2289161.i, 1          ; 2 uses
  %exitcond226.not.i = icmp eq i32 %i.py, %4
  br i1 %exitcond226.not.i, label %._crit_edge.i, label %.lr.ph163.i, !llvm.loop !602

._crit_edge.i:                                    ; preds = %.lr.ph163.i, %middle.block, %.preheader73.i
  %.17.lcssa.i = phi ptr [ %.16.lcssa.i, %.preheader73.i ], [ %i.oc, %middle.block ], [ %i.pw, %.lr.ph163.i ] ; 2 uses
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 2 ; 3 uses
  %i.pz = icmp slt i64 %indvars.iv.next228.i, %invariant.op268.i
  br i1 %i.pz, label %bb.b, label %.preheader72.loopexit.i, !llvm.loop !603

bb.c:                                             ; preds = %._crit_edge182.i, %.lr.ph186.i
  %indvars.iv231.i = phi i64 [ %i.mj, %.lr.ph186.i ], [ %indvars.iv.next232.i, %._crit_edge182.i ] ; 2 uses
  %.18185.i = phi ptr [ %.14.lcssa.i, %.lr.ph186.i ], [ %.20.lcssa.i, %._crit_edge182.i ] ; 2 uses
  %i.qa = load ptr, ptr %0, align 8, !tbaa !18
  %i.qb = add nsw i64 %indvars.iv231.i, %i.mk
  %i.qc = mul i64 %i.qb, %i.k
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.qc
  %i.qe = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %i.me ; 2 uses
  br i1 %i.mh, label %.lr.ph174.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph174.i, %bb.c
  %.19.lcssa.i = phi ptr [ %.18185.i, %bb.c ], [ %i.rv, %.lr.ph174.i ] ; 7 uses
  %.0272.lcssa.i = phi ptr [ %i.qe, %bb.c ], [ %i.rw, %.lr.ph174.i ] ; 6 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.mi, %.lr.ph174.i ] ; 6 uses
  %i.qf = icmp slt i32 %.0.lcssa.i, %4
  br i1 %i.qf, label %.lr.ph181.i.preheader, label %._crit_edge182.i

.lr.ph181.i.preheader:                            ; preds = %.preheader.i
  %i.qg = xor i32 %.0.lcssa.i, -1
  %i.qh = add i32 %4, %i.qg                       ; 2 uses
  %i.qi = zext i32 %i.qh to i64
  %i.qj = add nuw nsw i64 %i.qi, 1                ; 2 uses
  %min.iters.check141 = icmp ult i32 %i.qh, 3
  br i1 %min.iters.check141, label %.lr.ph181.i.preheader157, label %vector.memcheck132

vector.memcheck132:                               ; preds = %.lr.ph181.i.preheader
  %scevgep133 = getelementptr i8, ptr %.19.lcssa.i, i64 1
  %i.qk = xor i32 %.0.lcssa.i, -1
  %i.ql = add i32 %4, %i.qk
  %i.qm = zext i32 %i.ql to i64                   ; 2 uses
  %scevgep134 = getelementptr i8, ptr %scevgep133, i64 %i.qm
  %scevgep135 = getelementptr i8, ptr %.0272.lcssa.i, i64 4
  %i.qn = shl nuw nsw i64 %i.qm, 2
  %scevgep136 = getelementptr i8, ptr %scevgep135, i64 %i.qn
  %bound0137 = icmp ult ptr %.19.lcssa.i, %scevgep136
  %bound1138 = icmp ult ptr %.0272.lcssa.i, %scevgep134
  %found.conflict139 = and i1 %bound0137, %bound1138
  br i1 %found.conflict139, label %.lr.ph181.i.preheader157, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck132
  %n.vec143 = and i64 %i.qj, 8589934588           ; 5 uses
  %i.qo = trunc i64 %n.vec143 to i32
  %i.qp = add i32 %.0.lcssa.i, %i.qo
  %i.qq = shl nuw nsw i64 %n.vec143, 2
  %i.qr = getelementptr i8, ptr %.0272.lcssa.i, i64 %i.qq
  %i.qs = getelementptr i8, ptr %.19.lcssa.i, i64 %n.vec143 ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph142
  %index147 = phi i64 [ 0, %vector.ph142 ], [ %index.next151, %vector.body146 ] ; 3 uses
  %i.qt = shl i64 %index147, 2
  %next.gep148 = getelementptr i8, ptr %.0272.lcssa.i, i64 %i.qt
  %next.gep149 = getelementptr i8, ptr %.19.lcssa.i, i64 %index147
  %wide.load150 = load <4 x float>, ptr %next.gep148, align 4, !tbaa !68, !alias.scope !604
  %i.qu = fmul fast <4 x float> %wide.load150, %broadcast.splat145
  %i.qv = tail call fast <4 x float> @llvm.round.v4f32(<4 x float> %i.qu)
  %i.qw = fptosi <4 x float> %i.qv to <4 x i32>
  %i.qx = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.qw, <4 x i32> splat (i32 -127))
  %i.qy = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.qx, <4 x i32> splat (i32 127))
  %i.qz = trunc nsw <4 x i32> %i.qy to <4 x i8>
  store <4 x i8> %i.qz, ptr %next.gep149, align 1, !tbaa !113, !alias.scope !607, !noalias !604
  %index.next151 = add nuw i64 %index147, 4       ; 2 uses
  %i.ra = icmp eq i64 %index.next151, %n.vec143
  br i1 %i.ra, label %middle.block152, label %vector.body146, !llvm.loop !609

middle.block152:                                  ; preds = %vector.body146
  %cmp.n153 = icmp eq i64 %i.qj, %n.vec143
  br i1 %cmp.n153, label %._crit_edge182.i, label %.lr.ph181.i.preheader157

.lr.ph181.i.preheader157:                         ; preds = %vector.memcheck132, %.lr.ph181.i.preheader, %middle.block152
  %.1180.i.ph = phi i32 [ %.0.lcssa.i, %vector.memcheck132 ], [ %.0.lcssa.i, %.lr.ph181.i.preheader ], [ %i.qp, %middle.block152 ] ; 4 uses
  %.1273179.i.ph = phi ptr [ %.0272.lcssa.i, %vector.memcheck132 ], [ %.0272.lcssa.i, %.lr.ph181.i.preheader ], [ %i.qr, %middle.block152 ] ; 3 uses
  %.20178.i.ph = phi ptr [ %.19.lcssa.i, %vector.memcheck132 ], [ %.19.lcssa.i, %.lr.ph181.i.preheader ], [ %i.qs, %middle.block152 ] ; 3 uses
  %i.rb = sub i32 %4, %.1180.i.ph
  %.neg183 = add i32 %.1180.i.ph, 1
  %xtraiter181 = and i32 %i.rb, 1
  %lcmp.mod182.not = icmp eq i32 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %.lr.ph181.i.prol.loopexit, label %.lr.ph181.i.prol

.lr.ph181.i.prol:                                 ; preds = %.lr.ph181.i.preheader157
  %i.rc = load float, ptr %.1273179.i.ph, align 4, !tbaa !68
  %i.rd = fmul fast float %i.rc, %5
  %i.re = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.rd)
  %i.rf = fptosi float %i.re to i32
  %spec.select.i58.i.prol = tail call i32 @llvm.smax.i32(i32 %i.rf, i32 -127)
  %.0.i59.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i58.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i59.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.20178.i.ph, align 1, !tbaa !113
  %i.rg = getelementptr inbounds nuw i8, ptr %.20178.i.ph, i64 1 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.1273179.i.ph, i64 4
  %i.ri = add nuw nsw i32 %.1180.i.ph, 1
  br label %.lr.ph181.i.prol.loopexit

.lr.ph181.i.prol.loopexit:                        ; preds = %.lr.ph181.i.prol, %.lr.ph181.i.preheader157
  %.lcssa159.unr = phi ptr [ poison, %.lr.ph181.i.preheader157 ], [ %i.rg, %.lr.ph181.i.prol ]
  %.1180.i.unr = phi i32 [ %.1180.i.ph, %.lr.ph181.i.preheader157 ], [ %i.ri, %.lr.ph181.i.prol ]
  %.1273179.i.unr = phi ptr [ %.1273179.i.ph, %.lr.ph181.i.preheader157 ], [ %i.rh, %.lr.ph181.i.prol ]
  %.20178.i.unr = phi ptr [ %.20178.i.ph, %.lr.ph181.i.preheader157 ], [ %i.rg, %.lr.ph181.i.prol ]
  %i.rj = icmp eq i32 %4, %.neg183
  br i1 %i.rj, label %._crit_edge182.i, label %.lr.ph181.i

.lr.ph174.i:                                      ; preds = %bb.c, %.lr.ph174.i
  %.0172.i = phi i32 [ %i.rx, %.lr.ph174.i ], [ 0, %bb.c ]
  %.0272171.i = phi ptr [ %i.rw, %.lr.ph174.i ], [ %i.qe, %bb.c ] ; 2 uses
  %.19170.i = phi ptr [ %i.rv, %.lr.ph174.i ], [ %.18185.i, %bb.c ] ; 2 uses
  %i.rk = load <4 x float>, ptr %.0272171.i, align 1, !tbaa !113
  %i.rl = fmul fast <4 x float> %i.rk, %i.mg      ; 2 uses
  %i.rm = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.rl)
  %i.rn = fadd fast <4 x float> %i.rm, %i.rl
  %i.ro = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rn) ; 2 uses
  %i.rp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ro, <4 x i32> %i.ro)
  %i.rq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rp, <8 x i16> splat (i16 -127))
  %i.rr = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.rq, <8 x i16> splat (i16 127))
  %i.rs = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.rr, <8 x i16> poison)
  %i.rt = bitcast <16 x i8> %i.rs to <4 x i32>
  %i.ru = extractelement <4 x i32> %i.rt, i64 0
  store i32 %i.ru, ptr %.19170.i, align 4, !tbaa !45
  %i.rv = getelementptr inbounds nuw i8, ptr %.19170.i, i64 4 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.0272171.i, i64 16 ; 2 uses
  %i.rx = add nuw nsw i32 %.0172.i, 4             ; 2 uses
  %i.ry = or disjoint i32 %i.rx, 3
  %i.rz = icmp slt i32 %i.ry, %4
  br i1 %i.rz, label %.lr.ph174.i, label %.preheader.i, !llvm.loop !610

.lr.ph181.i:                                      ; preds = %.lr.ph181.i.prol.loopexit, %.lr.ph181.i
  %.1180.i = phi i32 [ %i.sm, %.lr.ph181.i ], [ %.1180.i.unr, %.lr.ph181.i.prol.loopexit ]
  %.1273179.i = phi ptr [ %i.sl, %.lr.ph181.i ], [ %.1273179.i.unr, %.lr.ph181.i.prol.loopexit ] ; 3 uses
  %.20178.i = phi ptr [ %i.sk, %.lr.ph181.i ], [ %.20178.i.unr, %.lr.ph181.i.prol.loopexit ] ; 3 uses
  %i.sa = load float, ptr %.1273179.i, align 4, !tbaa !68
  %i.sb = fmul fast float %i.sa, %5
  %i.sc = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.sb)
  %i.sd = fptosi float %i.sc to i32
  %spec.select.i58.i = tail call i32 @llvm.smax.i32(i32 %i.sd, i32 -127)
  %.0.i59.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i58.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i59.i to i8
  store i8 %.0.i.i, ptr %.20178.i, align 1, !tbaa !113
  %i.se = getelementptr inbounds nuw i8, ptr %.20178.i, i64 1
  %i.sf = getelementptr inbounds nuw i8, ptr %.1273179.i, i64 4
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !68
  %i.sh = fmul fast float %i.sg, %5
  %i.si = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.sh)
  %i.sj = fptosi float %i.si to i32
  %spec.select.i58.i.1 = tail call i32 @llvm.smax.i32(i32 %i.sj, i32 -127)
  %.0.i59.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i58.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i59.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.se, align 1, !tbaa !113
  %i.sk = getelementptr inbounds nuw i8, ptr %.20178.i, i64 2 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.1273179.i, i64 8
  %i.sm = add nuw nsw i32 %.1180.i, 2             ; 2 uses
  %exitcond230.not.i.1 = icmp eq i32 %i.sm, %4
  br i1 %exitcond230.not.i.1, label %._crit_edge182.i, label %.lr.ph181.i, !llvm.loop !611

._crit_edge182.i:                                 ; preds = %.lr.ph181.i.prol.loopexit, %.lr.ph181.i, %middle.block152, %.preheader.i
  %.20.lcssa.i = phi ptr [ %.19.lcssa.i, %.preheader.i ], [ %i.qs, %middle.block152 ], [ %.lcssa159.unr, %.lr.ph181.i.prol.loopexit ], [ %i.sk, %.lr.ph181.i ]
  %indvars.iv.next232.i = add nsw i64 %indvars.iv231.i, 1 ; 2 uses
  %exitcond234.not.i = icmp eq i64 %indvars.iv.next232.i, %wide.trip.count.i
  br i1 %exitcond234.not.i, label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %bb.c, !llvm.loop !612

_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit: ; preds = %._crit_edge182.i, %.preheader72.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL30transpose_pack_B_tile_quantizeERKNS_3MatERS0_iiiif(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef nofpclass(nan inf) %5) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 27 uses
  %i.l = icmp sgt i32 %2, 7
  br i1 %i.l, label %.lr.ph112.i, label %.preheader90.i

.lr.ph112.i:                                      ; preds = %bb.a
  %i.m = sext i32 %3 to i64
  %i.n = mul i64 %i.k, %i.m                       ; 2 uses
  %i.o = icmp ne i32 %i.b, 4
  %i.p = insertelement <4 x float> poison, float %5, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> zeroinitializer ; 14 uses
  %i.r = icmp slt i32 %4, 4
  %.idx334.i = shl i64 %i.k, 4
  %i.s = icmp sgt i32 %4, 1
  %.idx333.i = shl i64 %i.k, 3
  %i.t = and i32 %4, -2
  %i.u = zext nneg i32 %2 to i64                  ; 3 uses
  %i.v = sext i32 %1 to i64                       ; 2 uses
  %i.w = sext i32 %i.b to i64                     ; 2 uses
  %brmerge.i = or i1 %i.r, %i.o
  br i1 %brmerge.i, label %.lr.ph112.i.split.us, label %.lr.ph.i.preheader

.lr.ph112.i.split.us:                             ; preds = %.lr.ph112.i
  %i.x = icmp eq i32 %i.b, 1
  br i1 %i.x, label %.loopexit93.i.us.us, label %.loopexit93.i.us.preheader

.loopexit93.i.us.preheader:                       ; preds = %.lr.ph112.i.split.us
  %umax = tail call i64 @llvm.umax.i64(i64 %i.u, i64 15)
  %i.y = and i64 %umax, 2147483640
  br label %.preheader90.loopexit.i

.loopexit93.i.us.us:                              ; preds = %.lr.ph112.i.split.us, %.loopexit92.i.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us, %.loopexit92.i.us.us ], [ 0, %.lr.ph112.i.split.us ] ; 2 uses
  %.0292111.i.us.us = phi ptr [ %.5.i.us.us, %.loopexit92.i.us.us ], [ %.0.val, %.lr.ph112.i.split.us ] ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.n
  %i.ab = add nsw i64 %indvars.iv.i.us.us, %i.v
  %i.ac = mul nuw nsw i64 %i.ab, %i.w
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  br i1 %i.s, label %.lr.ph101.i.us.us, label %.preheader91.i.us.us

.lr.ph101.i.us.us:                                ; preds = %.loopexit93.i.us.us, %.lr.ph101.i.us.us
  %.3295100.i.us.us = phi ptr [ %i.bm, %.lr.ph101.i.us.us ], [ %.0292111.i.us.us, %.loopexit93.i.us.us ] ; 2 uses
  %.230299.i.us.us = phi ptr [ %i.bn, %.lr.ph101.i.us.us ], [ %i.ad, %.loopexit93.i.us.us ] ; 4 uses
  %.030598.i.us.us = phi i32 [ %i.bo, %.lr.ph101.i.us.us ], [ 0, %.loopexit93.i.us.us ]
  %i.ae = load <4 x float>, ptr %.230299.i.us.us, align 1, !tbaa !113 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.230299.i.us.us, i64 16
  %i.ag = load <4 x float>, ptr %i.af, align 1, !tbaa !113 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.230299.i.us.us, i64 %i.k ; 2 uses
  %i.ai = load <4 x float>, ptr %i.ah, align 1, !tbaa !113 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = load <4 x float>, ptr %i.aj, align 1, !tbaa !113 ; 2 uses
  %i.al = shufflevector <4 x float> %i.ae, <4 x float> %i.ai, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.am = shufflevector <4 x float> %i.ae, <4 x float> %i.ai, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.an = shufflevector <4 x float> %i.ag, <4 x float> %i.ak, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ao = shufflevector <4 x float> %i.ag, <4 x float> %i.ak, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ap = fmul fast <4 x float> %i.al, %i.q       ; 2 uses
  %i.aq = fmul fast <4 x float> %i.am, %i.q       ; 2 uses
  %i.ar = fmul fast <4 x float> %i.an, %i.q       ; 2 uses
  %i.as = fmul fast <4 x float> %i.ao, %i.q       ; 2 uses
  %i.at = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ap)
  %i.au = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aq)
  %i.av = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ar)
  %i.aw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.as)
  %i.ax = fadd fast <4 x float> %i.at, %i.ap
  %i.ay = fadd fast <4 x float> %i.au, %i.aq
  %i.az = fadd fast <4 x float> %i.av, %i.ar
  %i.ba = fadd fast <4 x float> %i.aw, %i.as
  %i.bb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ax)
  %i.bc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ay)
  %i.bd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.az)
  %i.be = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ba)
  %i.bf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bb, <4 x i32> %i.bc)
  %i.bg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bd, <4 x i32> %i.be)
  %i.bh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bf, <8 x i16> splat (i16 -127))
  %i.bi = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bh, <8 x i16> splat (i16 127))
  %i.bj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bg, <8 x i16> splat (i16 -127))
  %i.bk = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bj, <8 x i16> splat (i16 127))
  %i.bl = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bi, <8 x i16> %i.bk)
  store <16 x i8> %i.bl, ptr %.3295100.i.us.us, align 1, !tbaa !113
  %i.bm = getelementptr inbounds nuw i8, ptr %.3295100.i.us.us, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.230299.i.us.us, i64 %.idx333.i ; 2 uses
  %i.bo = add nuw nsw i32 %.030598.i.us.us, 2     ; 2 uses
  %i.bp = or disjoint i32 %i.bo, 1
  %i.bq = icmp slt i32 %i.bp, %4
  br i1 %i.bq, label %.lr.ph101.i.us.us, label %.preheader91.i.us.us, !llvm.loop !613

.preheader91.i.us.us:                             ; preds = %.lr.ph101.i.us.us, %.loopexit93.i.us.us
  %.0305.lcssa.i.us.us = phi i32 [ 0, %.loopexit93.i.us.us ], [ %i.t, %.lr.ph101.i.us.us ] ; 2 uses
  %.2302.lcssa.i.us.us = phi ptr [ %i.ad, %.loopexit93.i.us.us ], [ %i.bn, %.lr.ph101.i.us.us ]
  %.3295.lcssa.i.us.us = phi ptr [ %.0292111.i.us.us, %.loopexit93.i.us.us ], [ %i.bm, %.lr.ph101.i.us.us ] ; 2 uses
  %i.br = icmp slt i32 %.0305.lcssa.i.us.us, %4
  br i1 %i.br, label %.lr.ph108.i.us.us, label %.loopexit92.i.us.us

.lr.ph108.i.us.us:                                ; preds = %.preheader91.i.us.us, %.lr.ph108.i.us.us
  %.4107.i.us.us = phi ptr [ %i.cj, %.lr.ph108.i.us.us ], [ %.3295.lcssa.i.us.us, %.preheader91.i.us.us ] ; 2 uses
  %.3303106.i.us.us = phi ptr [ %i.ck, %.lr.ph108.i.us.us ], [ %.2302.lcssa.i.us.us, %.preheader91.i.us.us ] ; 3 uses
  %.1306105.i.us.us = phi i32 [ %i.cl, %.lr.ph108.i.us.us ], [ %.0305.lcssa.i.us.us, %.preheader91.i.us.us ]
  %i.bs = load <4 x float>, ptr %.3303106.i.us.us, align 1, !tbaa !113
  %i.bt = getelementptr inbounds nuw i8, ptr %.3303106.i.us.us, i64 16
  %i.bu = load <4 x float>, ptr %i.bt, align 1, !tbaa !113
  %i.bv = fmul fast <4 x float> %i.bs, %i.q       ; 2 uses
  %i.bw = fmul fast <4 x float> %i.bu, %i.q       ; 2 uses
  %i.bx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bv)
  %i.by = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bw)
  %i.bz = fadd fast <4 x float> %i.bx, %i.bv
  %i.ca = fadd fast <4 x float> %i.by, %i.bw
  %i.cb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bz)
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ca)
  %i.cd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cb, <4 x i32> %i.cc)
  %i.ce = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cd, <8 x i16> splat (i16 -127))
  %i.cf = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ce, <8 x i16> splat (i16 127))
  %i.cg = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.cf, <8 x i16> poison)
  %i.ch = bitcast <16 x i8> %i.cg to <2 x i64>
  %i.ci = extractelement <2 x i64> %i.ch, i64 0
  store i64 %i.ci, ptr %.4107.i.us.us, align 8, !tbaa !581
  %i.cj = getelementptr inbounds nuw i8, ptr %.4107.i.us.us, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.3303106.i.us.us, i64 %i.k
  %i.cl = add nuw nsw i32 %.1306105.i.us.us, 1    ; 2 uses
  %exitcond.not.i.us.us = icmp eq i32 %i.cl, %4
  br i1 %exitcond.not.i.us.us, label %.loopexit92.i.us.us, label %.lr.ph108.i.us.us, !llvm.loop !614

.loopexit92.i.us.us:                              ; preds = %.lr.ph108.i.us.us, %.preheader91.i.us.us
  %.5.i.us.us = phi ptr [ %.3295.lcssa.i.us.us, %.preheader91.i.us.us ], [ %i.cj, %.lr.ph108.i.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 8 ; 3 uses
  %i.cm = or disjoint i64 %indvars.iv.next.i.us.us, 7
  %i.cn = icmp samesign ult i64 %i.cm, %i.u
  br i1 %i.cn, label %.loopexit93.i.us.us, label %.preheader90.loopexit.i, !llvm.loop !615

.preheader90.loopexit.i:                          ; preds = %.loopexit92.i.loopexit4, %.loopexit92.i.us.us, %.loopexit93.i.us.preheader
  %.us-phi = phi ptr [ %.5.i.us.us, %.loopexit92.i.us.us ], [ %.0.val, %.loopexit93.i.us.preheader ], [ %i.iy, %.loopexit92.i.loopexit4 ]
  %.us-phi23 = phi i64 [ %indvars.iv.next.i.us.us, %.loopexit92.i.us.us ], [ %i.y, %.loopexit93.i.us.preheader ], [ %indvars.iv.next.i, %.loopexit92.i.loopexit4 ]
  %i.co = trunc nuw nsw i64 %.us-phi23 to i32
  br label %.preheader90.i

.preheader90.i:                                   ; preds = %.preheader90.loopexit.i, %bb.a
  %.0296.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.co, %.preheader90.loopexit.i ] ; 3 uses
  %.0292.lcssa.i = phi ptr [ %.0.val, %bb.a ], [ %.us-phi, %.preheader90.loopexit.i ] ; 4 uses
  %i.cp = or disjoint i32 %.0296.lcssa.i, 3
  %i.cq = icmp slt i32 %i.cp, %2
  br i1 %i.cq, label %.lr.ph135.i, label %.preheader86.i

.lr.ph135.i:                                      ; preds = %.preheader90.i
  %i.cr = sext i32 %3 to i64
  %i.cs = mul i64 %i.k, %i.cr                     ; 2 uses
  %i.ct = icmp ne i32 %i.b, 4
  %i.cu = insertelement <4 x float> poison, float %5, i64 0
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.cw = icmp slt i32 %4, 4
  %.idx332.i = shl i64 %i.k, 4
  %i.cx = icmp sgt i32 %4, 1
  %.idx331.i = shl i64 %i.k, 3
  %i.cy = and i32 %4, -2
  %i.cz = zext i32 %.0296.lcssa.i to i64          ; 5 uses
  %i.da = sext i32 %2 to i64
  %i.db = sext i32 %1 to i64                      ; 2 uses
  %i.dc = sext i32 %i.b to i64                    ; 2 uses
  %brmerge192.i = or i1 %i.cw, %i.ct
  %invariant.op.i = add nsw i64 %i.da, -3         ; 3 uses
  br i1 %brmerge192.i, label %.lr.ph135.i.split.us, label %.lr.ph118.i.preheader

.lr.ph135.i.split.us:                             ; preds = %.lr.ph135.i
  %i.dd = icmp eq i32 %i.b, 1
  %i.de = load ptr, ptr %0, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.cs
  br i1 %i.dd, label %.loopexit89.i.us.us.preheader, label %.loopexit89.i.us.preheader

.loopexit89.i.us.us.preheader:                    ; preds = %.lr.ph135.i.split.us
  %xtraiter = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %.loopexit89.i.us.us

.loopexit89.i.us.preheader:                       ; preds = %.lr.ph135.i.split.us
  %i.dg = add nuw nsw i64 %i.cz, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.dg)
  %i.dh = xor i64 %i.cz, -1
  %i.di = add nsw i64 %smax, %i.dh
  %i.dj = and i64 %i.di, -4
  %i.dk = add i64 %i.dj, %i.cz
  %i.dl = add i64 %i.dk, 4
  br label %.preheader86.loopexit.i
end_hunk_9
begin_hunk_10_@_ZN4ncnnL30transpose_pack_B_tile_quantizeERKNS_3MatERS0_iiiif:bb.a
  %.0307116.i = phi ptr [ %i.ox, %.lr.ph118.i ], [ %i.nn, %.lr.ph118.i.preheader ] ; 5 uses
  %.0311115.i = phi i32 [ %i.oy, %.lr.ph118.i ], [ 0, %.lr.ph118.i.preheader ]
  %i.no = load <4 x float>, ptr %.0307116.i, align 16, !tbaa !113
  %i.np = getelementptr inbounds nuw i8, ptr %.0307116.i, i64 16
  %i.nq = load <4 x float>, ptr %i.np, align 16, !tbaa !113
  %i.nr = getelementptr inbounds nuw i8, ptr %.0307116.i, i64 32
  %i.ns = load <4 x float>, ptr %i.nr, align 16, !tbaa !113
  %i.nt = getelementptr inbounds nuw i8, ptr %.0307116.i, i64 48
  %i.nu = load <4 x float>, ptr %i.nt, align 16, !tbaa !113
  %i.nv = fmul fast <4 x float> %i.no, %i.cv      ; 2 uses
  %i.nw = fmul fast <4 x float> %i.nq, %i.cv      ; 2 uses
  %i.nx = fmul fast <4 x float> %i.ns, %i.cv      ; 2 uses
  %i.ny = fmul fast <4 x float> %i.nu, %i.cv      ; 2 uses
  %i.nz = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.nv)
  %i.oa = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.nw)
  %i.ob = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.nx)
  %i.oc = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ny)
  %i.od = fadd fast <4 x float> %i.nz, %i.nv
  %i.oe = fadd fast <4 x float> %i.oa, %i.nw
  %i.of = fadd fast <4 x float> %i.ob, %i.nx
  %i.og = fadd fast <4 x float> %i.oc, %i.ny
  %i.oh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.od)
  %i.oi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oe)
  %i.oj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.of)
  %i.ok = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.og)
  %i.ol = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.oh, <4 x i32> %i.oi)
  %i.om = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.oj, <4 x i32> %i.ok)
  %i.on = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ol, <8 x i16> splat (i16 -127))
  %i.oo = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.on, <8 x i16> splat (i16 127))
  %i.op = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.om, <8 x i16> splat (i16 -127))
  %i.oq = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.op, <8 x i16> splat (i16 127))
  %i.or = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.oo, <8 x i16> %i.oq)
  %i.os = bitcast <16 x i8> %i.or to <8 x i16>
  %i.ot = shufflevector <8 x i16> %i.os, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.ou = bitcast <8 x i16> %i.ot to <4 x i32>
  %i.ov = shufflevector <4 x i32> %i.ou, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.ov, ptr %.7117.i, align 16, !tbaa !113
  %i.ow = getelementptr inbounds nuw i8, ptr %.7117.i, i64 16 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.0307116.i, i64 %.idx332.i
  %i.oy = add nuw nsw i32 %.0311115.i, 4          ; 2 uses
  %i.oz = or disjoint i32 %i.oy, 3
  %i.pa = icmp slt i32 %i.oz, %4
  br i1 %i.pa, label %.lr.ph118.i, label %.loopexit88.i.loopexit3, !llvm.loop !624

.loopexit88.i.loopexit3:                          ; preds = %.lr.ph118.i
  %indvars.iv.next231.i = add nuw nsw i64 %indvars.iv230.i, 4 ; 3 uses
  %i.pb = icmp slt i64 %indvars.iv.next231.i, %invariant.op.i
  br i1 %i.pb, label %.lr.ph118.i.preheader, label %.preheader86.loopexit.i, !llvm.loop !618

.preheader81.loopexit.i:                          ; preds = %.loopexit83.i.loopexit2, %.loopexit83.i.us.us, %.loopexit85.i.us.preheader
  %.us-phi30 = phi ptr [ %.18.i.us.us, %.loopexit83.i.us.us ], [ %.6.lcssa.i, %.loopexit85.i.us.preheader ], [ %i.so, %.loopexit83.i.loopexit2 ]
  %.us-phi31 = phi i64 [ %indvars.iv.next235.i.us.us, %.loopexit83.i.us.us ], [ %i.kb, %.loopexit85.i.us.preheader ], [ %indvars.iv.next235.i, %.loopexit83.i.loopexit2 ]
  %i.pc = trunc nsw i64 %.us-phi31 to i32
  br label %.preheader81.i

.preheader81.i:                                   ; preds = %.preheader81.loopexit.i, %.preheader86.i
  %.2298.lcssa.i = phi i32 [ %.1297.lcssa.i, %.preheader86.i ], [ %i.pc, %.preheader81.loopexit.i ] ; 2 uses
  %.12.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader86.i ], [ %.us-phi30, %.preheader81.loopexit.i ] ; 2 uses
  %i.pd = icmp slt i32 %.2298.lcssa.i, %2
  br i1 %i.pd, label %.lr.ph188.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

.lr.ph188.i:                                      ; preds = %.preheader81.i
  %i.pe = sext i32 %3 to i64
  %i.pf = mul i64 %i.k, %i.pe                     ; 2 uses
  %i.pg = icmp ne i32 %i.b, 4
  %i.ph = insertelement <4 x float> poison, float %5, i64 0
  %i.pi = shufflevector <4 x float> %i.ph, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pj = icmp slt i32 %4, 4
  %.idx325.i = shl i64 %i.k, 4                    ; 2 uses
  %i.pk = icmp sgt i32 %4, 3
  %.idx.i = shl i64 %i.k, 3
  %.idx323.i = mul i64 %i.k, 12
  %i.pl = and i32 %4, -4
  %i.pm = sext i32 %.2298.lcssa.i to i64          ; 2 uses
  %i.pn = sext i32 %1 to i64                      ; 2 uses
  %i.po = sext i32 %i.b to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %2 to i64         ; 2 uses
  %brmerge198.i = or i1 %i.pj, %i.pg
  br i1 %brmerge198.i, label %.lr.ph188.i.split.us, label %.lr.ph171.i.preheader.preheader

.lr.ph171.i.preheader.preheader:                  ; preds = %.lr.ph188.i
  %.pre60 = load ptr, ptr %0, align 8, !tbaa !18
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %.pre60, i64 %i.pf
  br label %.lr.ph171.i.preheader

.lr.ph188.i.split.us:                             ; preds = %.lr.ph188.i
  %i.pq = icmp eq i32 %i.b, 1
  br i1 %i.pq, label %.loopexit80.i.us.preheader, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

.loopexit80.i.us.preheader:                       ; preds = %.lr.ph188.i.split.us
  %xtraiter131 = and i32 %4, 1
  %lcmp.mod132.not = icmp eq i32 %xtraiter131, 0
  br label %.loopexit80.i.us

.loopexit80.i.us:                                 ; preds = %.loopexit80.i.us.preheader, %.loopexit.i.us
  %indvars.iv238.i.us = phi i64 [ %indvars.iv.next239.i.us, %.loopexit.i.us ], [ %i.pm, %.loopexit80.i.us.preheader ] ; 2 uses
  %.19187.i.us = phi ptr [ %.24.i.us, %.loopexit.i.us ], [ %.12.lcssa.i, %.loopexit80.i.us.preheader ] ; 2 uses
  %i.pr = load ptr, ptr %0, align 8, !tbaa !18
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.pf
  %i.pt = add nsw i64 %indvars.iv238.i.us, %i.pn
  %i.pu = mul nuw nsw i64 %i.pt, %i.po
  %i.pv = getelementptr inbounds [4 x i8], ptr %i.ps, i64 %i.pu ; 2 uses
  br i1 %i.pk, label %.lr.ph177.i.us, label %.preheader.i.us

.lr.ph177.i.us:                                   ; preds = %.loopexit80.i.us, %.lr.ph177.i.us
  %.0176.i.us = phi i32 [ %i.qt, %.lr.ph177.i.us ], [ 0, %.loopexit80.i.us ]
  %.2175.i.us = phi ptr [ %i.qs, %.lr.ph177.i.us ], [ %i.pv, %.loopexit80.i.us ] ; 5 uses
  %.22174.i.us = phi ptr [ %i.qr, %.lr.ph177.i.us ], [ %.19187.i.us, %.loopexit80.i.us ] ; 2 uses
  %i.pw = load float, ptr %.2175.i.us, align 4, !tbaa !68
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.2175.i.us, i64 %i.k
  %i.py = load float, ptr %i.px, align 4, !tbaa !68
  %i.pz = getelementptr inbounds nuw i8, ptr %.2175.i.us, i64 %.idx.i
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !68
  %i.qb = getelementptr inbounds nuw i8, ptr %.2175.i.us, i64 %.idx323.i
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !68
  %i.qd = insertelement <4 x float> poison, float %i.pw, i64 0
  %i.qe = insertelement <4 x float> %i.qd, float %i.py, i64 1
  %i.qf = insertelement <4 x float> %i.qe, float %i.qa, i64 2
  %i.qg = insertelement <4 x float> %i.qf, float %i.qc, i64 3
  %i.qh = fmul fast <4 x float> %i.qg, %i.pi      ; 2 uses
  %i.qi = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qh)
  %i.qj = fadd fast <4 x float> %i.qi, %i.qh
  %i.qk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qj) ; 2 uses
  %i.ql = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.qk, <4 x i32> %i.qk)
  %i.qm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ql, <8 x i16> splat (i16 -127))
  %i.qn = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.qm, <8 x i16> splat (i16 127))
  %i.qo = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.qn, <8 x i16> poison)
  %i.qp = bitcast <16 x i8> %i.qo to <4 x i32>
  %i.qq = extractelement <4 x i32> %i.qp, i64 0
  store i32 %i.qq, ptr %.22174.i.us, align 4, !tbaa !45
  %i.qr = getelementptr inbounds nuw i8, ptr %.22174.i.us, i64 4 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.2175.i.us, i64 %.idx325.i ; 2 uses
  %i.qt = add nuw nsw i32 %.0176.i.us, 4          ; 2 uses
  %i.qu = or disjoint i32 %i.qt, 3
  %i.qv = icmp slt i32 %i.qu, %4
  br i1 %i.qv, label %.lr.ph177.i.us, label %.preheader.i.us, !llvm.loop !625

.preheader.i.us:                                  ; preds = %.lr.ph177.i.us, %.loopexit80.i.us
  %.22.lcssa.i.us = phi ptr [ %.19187.i.us, %.loopexit80.i.us ], [ %i.qr, %.lr.ph177.i.us ] ; 4 uses
  %.2.lcssa.i.us = phi ptr [ %i.pv, %.loopexit80.i.us ], [ %i.qs, %.lr.ph177.i.us ] ; 3 uses
  %.0.lcssa.i.us = phi i32 [ 0, %.loopexit80.i.us ], [ %i.pl, %.lr.ph177.i.us ] ; 4 uses
  %i.qw = icmp slt i32 %.0.lcssa.i.us, %4
  br i1 %i.qw, label %.lr.ph184.i.us.preheader, label %.loopexit.i.us

.lr.ph184.i.us.preheader:                         ; preds = %.preheader.i.us
  %.neg133 = or disjoint i32 %.0.lcssa.i.us, 1
  br i1 %lcmp.mod132.not, label %.lr.ph184.i.us.prol.loopexit, label %.lr.ph184.i.us.prol

.lr.ph184.i.us.prol:                              ; preds = %.lr.ph184.i.us.preheader
  %i.qx = load float, ptr %.2.lcssa.i.us, align 4, !tbaa !68
  %i.qy = fmul fast float %i.qx, %5
  %i.qz = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.qy)
  %i.ra = fptosi float %i.qz to i32
  %spec.select.i74.i.us.prol = tail call i32 @llvm.smax.i32(i32 %i.ra, i32 -127)
  %.0.i75.i.us.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i74.i.us.prol, i32 127)
  %.0.i.i.us.prol = trunc nsw i32 %.0.i75.i.us.prol to i8
  store i8 %.0.i.i.us.prol, ptr %.22.lcssa.i.us, align 1, !tbaa !113
  %i.rb = getelementptr inbounds nuw i8, ptr %.22.lcssa.i.us, i64 1 ; 2 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %.2.lcssa.i.us, i64 %i.k
  %i.rd = or disjoint i32 %.0.lcssa.i.us, 1
  br label %.lr.ph184.i.us.prol.loopexit

.lr.ph184.i.us.prol.loopexit:                     ; preds = %.lr.ph184.i.us.prol, %.lr.ph184.i.us.preheader
  %.lcssa110.unr = phi ptr [ poison, %.lr.ph184.i.us.preheader ], [ %i.rb, %.lr.ph184.i.us.prol ]
  %.1183.i.us.unr = phi i32 [ %.0.lcssa.i.us, %.lr.ph184.i.us.preheader ], [ %i.rd, %.lr.ph184.i.us.prol ]
  %.3182.i.us.unr = phi ptr [ %.2.lcssa.i.us, %.lr.ph184.i.us.preheader ], [ %i.rc, %.lr.ph184.i.us.prol ]
  %.23181.i.us.unr = phi ptr [ %.22.lcssa.i.us, %.lr.ph184.i.us.preheader ], [ %i.rb, %.lr.ph184.i.us.prol ]
  %i.re = icmp eq i32 %4, %.neg133
  br i1 %i.re, label %.loopexit.i.us, label %.lr.ph184.i.us

.lr.ph184.i.us:                                   ; preds = %.lr.ph184.i.us.prol.loopexit, %.lr.ph184.i.us
  %.1183.i.us = phi i32 [ %i.rr, %.lr.ph184.i.us ], [ %.1183.i.us.unr, %.lr.ph184.i.us.prol.loopexit ]
  %.3182.i.us = phi ptr [ %i.rq, %.lr.ph184.i.us ], [ %.3182.i.us.unr, %.lr.ph184.i.us.prol.loopexit ] ; 2 uses
  %.23181.i.us = phi ptr [ %i.rp, %.lr.ph184.i.us ], [ %.23181.i.us.unr, %.lr.ph184.i.us.prol.loopexit ] ; 3 uses
  %i.rf = load float, ptr %.3182.i.us, align 4, !tbaa !68
  %i.rg = fmul fast float %i.rf, %5
  %i.rh = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.rg)
  %i.ri = fptosi float %i.rh to i32
  %spec.select.i74.i.us = tail call i32 @llvm.smax.i32(i32 %i.ri, i32 -127)
  %.0.i75.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i74.i.us, i32 127)
  %.0.i.i.us = trunc nsw i32 %.0.i75.i.us to i8
  store i8 %.0.i.i.us, ptr %.23181.i.us, align 1, !tbaa !113
  %i.rj = getelementptr inbounds nuw i8, ptr %.23181.i.us, i64 1
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %.3182.i.us, i64 %i.k ; 2 uses
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !68
  %i.rm = fmul fast float %i.rl, %5
  %i.rn = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.rm)
  %i.ro = fptosi float %i.rn to i32
  %spec.select.i74.i.us.1 = tail call i32 @llvm.smax.i32(i32 %i.ro, i32 -127)
  %.0.i75.i.us.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i74.i.us.1, i32 127)
  %.0.i.i.us.1 = trunc nsw i32 %.0.i75.i.us.1 to i8
  store i8 %.0.i.i.us.1, ptr %i.rj, align 1, !tbaa !113
  %i.rp = getelementptr inbounds nuw i8, ptr %.23181.i.us, i64 2 ; 2 uses
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.k
  %i.rr = add nuw nsw i32 %.1183.i.us, 2          ; 2 uses
  %exitcond237.not.i.us.1 = icmp eq i32 %i.rr, %4
  br i1 %exitcond237.not.i.us.1, label %.loopexit.i.us, label %.lr.ph184.i.us, !llvm.loop !626

.loopexit.i.us:                                   ; preds = %.lr.ph184.i.us.prol.loopexit, %.lr.ph184.i.us, %.preheader.i.us
  %.24.i.us = phi ptr [ %.22.lcssa.i.us, %.preheader.i.us ], [ %.lcssa110.unr, %.lr.ph184.i.us.prol.loopexit ], [ %i.rp, %.lr.ph184.i.us ]
  %indvars.iv.next239.i.us = add nsw i64 %indvars.iv238.i.us, 1 ; 2 uses
  %exitcond241.not.i.us = icmp eq i64 %indvars.iv.next239.i.us, %wide.trip.count.i
  br i1 %exitcond241.not.i.us, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %.loopexit80.i.us, !llvm.loop !627

.lr.ph141.i.preheader:                            ; preds = %.lr.ph141.i.preheader.preheader, %.loopexit83.i.loopexit2
  %indvars.iv234.i = phi i64 [ %indvars.iv.next235.i, %.loopexit83.i.loopexit2 ], [ %i.jq, %.lr.ph141.i.preheader.preheader ] ; 2 uses
  %.12164.i = phi ptr [ %i.so, %.loopexit83.i.loopexit2 ], [ %.6.lcssa.i, %.lr.ph141.i.preheader.preheader ]
  %i.rs = add nsw i64 %indvars.iv234.i, %i.js
  %i.rt = mul nsw i64 %i.rs, %i.jt
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.ju, i64 %i.rt
  br label %.lr.ph141.i

.lr.ph141.i:                                      ; preds = %.lr.ph141.i.preheader, %.lr.ph141.i
  %.13140.i = phi ptr [ %i.so, %.lr.ph141.i ], [ %.12164.i, %.lr.ph141.i.preheader ] ; 2 uses
  %.0317139.i = phi ptr [ %i.sp, %.lr.ph141.i ], [ %i.ru, %.lr.ph141.i.preheader ] ; 3 uses
  %.0322138.i = phi i32 [ %i.sq, %.lr.ph141.i ], [ 0, %.lr.ph141.i.preheader ]
  %i.rv = load <4 x float>, ptr %.0317139.i, align 16, !tbaa !113
  %i.rw = getelementptr inbounds nuw i8, ptr %.0317139.i, i64 16
  %i.rx = load <4 x float>, ptr %i.rw, align 16, !tbaa !113
  %i.ry = fmul fast <4 x float> %i.rv, %i.jm      ; 2 uses
  %i.rz = fmul fast <4 x float> %i.rx, %i.jm      ; 2 uses
  %i.sa = shufflevector <4 x float> %i.ry, <4 x float> %i.rz, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.sb = shufflevector <4 x float> %i.ry, <4 x float> %i.rz, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.sc = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sa)
  %i.sd = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sb)
  %i.se = fadd fast <4 x float> %i.sc, %i.sa
  %i.sf = fadd fast <4 x float> %i.sd, %i.sb
  %i.sg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.se)
  %i.sh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sf)
  %i.si = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.sg, <4 x i32> %i.sh)
  %i.sj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.si, <8 x i16> splat (i16 -127))
  %i.sk = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.sj, <8 x i16> splat (i16 127))
  %i.sl = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.sk, <8 x i16> poison)
  %i.sm = bitcast <16 x i8> %i.sl to <2 x i64>
  %i.sn = extractelement <2 x i64> %i.sm, i64 0
  store i64 %i.sn, ptr %.13140.i, align 8, !tbaa !581
  %i.so = getelementptr inbounds nuw i8, ptr %.13140.i, i64 8 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.0317139.i, i64 %.idx330.i
  %i.sq = add nuw nsw i32 %.0322138.i, 4          ; 2 uses
  %i.sr = or disjoint i32 %i.sq, 3
  %i.ss = icmp slt i32 %i.sr, %4
  br i1 %i.ss, label %.lr.ph141.i, label %.loopexit83.i.loopexit2, !llvm.loop !628

.loopexit83.i.loopexit2:                          ; preds = %.lr.ph141.i
  %indvars.iv.next235.i = add nuw nsw i64 %indvars.iv234.i, 2 ; 3 uses
  %i.st = icmp slt i64 %indvars.iv.next235.i, %invariant.op279.i
  br i1 %i.st, label %.lr.ph141.i.preheader, label %.preheader81.loopexit.i, !llvm.loop !623

.lr.ph171.i.preheader:                            ; preds = %.lr.ph171.i.preheader.preheader, %.loopexit.i.loopexit1
  %indvars.iv238.i = phi i64 [ %indvars.iv.next239.i, %.loopexit.i.loopexit1 ], [ %i.pm, %.lr.ph171.i.preheader.preheader ] ; 2 uses
  %.19187.i = phi ptr [ %i.ti, %.loopexit.i.loopexit1 ], [ %.12.lcssa.i, %.lr.ph171.i.preheader.preheader ]
  %i.su = add nsw i64 %indvars.iv238.i, %i.pn
  %i.sv = mul nsw i64 %i.su, %i.po
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.pp, i64 %i.sv
  br label %.lr.ph171.i

.lr.ph171.i:                                      ; preds = %.lr.ph171.i.preheader, %.lr.ph171.i
  %.0289170.i = phi i32 [ %i.tk, %.lr.ph171.i ], [ 0, %.lr.ph171.i.preheader ]
  %.0290169.i = phi ptr [ %i.tj, %.lr.ph171.i ], [ %i.sw, %.lr.ph171.i.preheader ] ; 2 uses
  %.20168.i = phi ptr [ %i.ti, %.lr.ph171.i ], [ %.19187.i, %.lr.ph171.i.preheader ] ; 2 uses
  %i.sx = load <4 x float>, ptr %.0290169.i, align 16, !tbaa !113
  %i.sy = fmul fast <4 x float> %i.sx, %i.pi      ; 2 uses
  %i.sz = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sy)
  %i.ta = fadd fast <4 x float> %i.sz, %i.sy
  %i.tb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ta) ; 2 uses
  %i.tc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.tb, <4 x i32> %i.tb)
  %i.td = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tc, <8 x i16> splat (i16 -127))
  %i.te = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.td, <8 x i16> splat (i16 127))
  %i.tf = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.te, <8 x i16> poison)
  %i.tg = bitcast <16 x i8> %i.tf to <4 x i32>
  %i.th = extractelement <4 x i32> %i.tg, i64 0
  store i32 %i.th, ptr %.20168.i, align 4, !tbaa !45
  %i.ti = getelementptr inbounds nuw i8, ptr %.20168.i, i64 4 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.0290169.i, i64 %.idx325.i
  %i.tk = add nuw nsw i32 %.0289170.i, 4          ; 2 uses
  %i.tl = or disjoint i32 %i.tk, 3
  %i.tm = icmp slt i32 %i.tl, %4
  br i1 %i.tm, label %.lr.ph171.i, label %.loopexit.i.loopexit1, !llvm.loop !629

.loopexit.i.loopexit1:                            ; preds = %.lr.ph171.i
  %indvars.iv.next239.i = add nsw i64 %indvars.iv238.i, 1 ; 2 uses
  %exitcond241.not.i = icmp eq i64 %indvars.iv.next239.i, %wide.trip.count.i
  br i1 %exitcond241.not.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %.lr.ph171.i.preheader, !llvm.loop !627

_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit: ; preds = %.loopexit.i.loopexit1, %.loopexit.i.us, %.lr.ph188.i.split.us, %.preheader81.i
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL16gemm_AT_x86_int8ERKNS_3MatES2_S2_S2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not138 = icmp sgt i32 %i.k, %i.j
  br i1 %.not138, label %._crit_edge141, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 52
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 44
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 52
  %i.bl = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.051139 = phi i32 [ %i.k, %.lr.ph ], [ %i.fp, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.bn = load i32, ptr %3, align 4, !tbaa !243   ; 2 uses
  %i.bo = load i32, ptr %i.l, align 4, !tbaa !245 ; 2 uses
  %i.bp = load i32, ptr %i.m, align 4, !tbaa !246 ; 3 uses
  %i.bq = load i32, ptr %i.n, align 4, !tbaa !247
  %i.br = load i32, ptr %i.o, align 4, !tbaa !249
  %i.bs = load float, ptr %i.p, align 4, !tbaa !501
  %i.bt = load float, ptr %i.q, align 4, !tbaa !502
  %i.bu = load i32, ptr %4, align 4, !tbaa !45    ; 2 uses
  %i.bv = sdiv i32 %.051139, %i.bu                ; 2 uses
  %i.bw = srem i32 %.051139, %i.bu                ; 2 uses
  %i.bx = mul nsw i32 %i.bv, %i.bn                ; 3 uses
  %i.by = mul nsw i32 %i.bw, %i.bo                ; 3 uses
  %i.bz = load i32, ptr %5, align 4, !tbaa !45
  %i.ca = sub nsw i32 %i.bz, %i.bx
  %.sroa.speculated121 = call i32 @llvm.smin.i32(i32 %i.bn, i32 %i.ca) ; 2 uses
  %i.cb = load i32, ptr %6, align 4, !tbaa !45
  %i.cc = sub nsw i32 %i.cb, %i.by
  %.sroa.speculated117 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.cc) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.cd = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc82 unwind label %.loopexit.split-lp

.noexc82:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.ce = load i32, ptr %i.r, align 4, !tbaa !86, !noalias !630 ; 2 uses
  %i.cf = load i32, ptr %i.s, align 8, !tbaa !88, !noalias !630 ; 2 uses
  %i.cg = load i32, ptr %i.t, align 4, !tbaa !285, !noalias !630
  %i.ch = load ptr, ptr %7, align 8, !tbaa !18, !noalias !630
  %i.ci = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !630
  %i.cj = sext i32 %i.cd to i64
  %i.ck = mul i64 %i.ci, %i.cj
  %i.cl = load i64, ptr %i.v, align 8, !tbaa !59, !noalias !630 ; 4 uses
  %i.cm = mul i64 %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.w, align 8, !tbaa !60, !noalias !630
  %i.cp = load ptr, ptr %i.x, align 8, !tbaa !17, !noalias !630
  store ptr %i.cn, ptr %14, align 8, !tbaa !18
  store ptr null, ptr %i.y, align 8, !tbaa !11
  store i64 %i.cl, ptr %i.z, align 8, !tbaa !59
  store i32 %i.co, ptr %i.aa, align 8, !tbaa !60
  store ptr %i.cp, ptr %i.ab, align 8, !tbaa !17
  store i32 %i.ce, ptr %i.ad, align 4, !tbaa !86
  store i32 %i.cf, ptr %i.ae, align 8, !tbaa !88
  store i32 1, ptr %i.af, align 4, !tbaa !285
  store i32 %i.cg, ptr %i.ag, align 8, !tbaa !51
  %i.cq = sext i32 %i.ce to i64
  %i.cr = sext i32 %i.cf to i64
  %i.cs = mul nsw i64 %i.cr, %i.cq                ; 2 uses
  %i.ct = mul i64 %i.cl, %i.cs
  %i.cu = add i64 %i.ct, 15
  %i.cv = and i64 %i.cu, -16
  %i.cw = udiv i64 %i.cv, %i.cl
  store i64 %i.cw, ptr %i.ah, align 8, !tbaa !20
  %i.cx = load i32, ptr %i.ai, align 8, !tbaa !85, !noalias !630 ; 2 uses
  %i.cy = add nsw i32 %i.cx, -1
  store i32 %i.cy, ptr %i.ac, align 8, !tbaa !85, !alias.scope !630
  %i.cz = icmp eq i32 %i.cx, 4
  br i1 %i.cz, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit83

bb.d:                                             ; preds = %.noexc82
  store i64 %i.cs, ptr %i.ah, align 8, !tbaa !20, !alias.scope !630
  br label %_ZN4ncnn3Mat7channelEi.exit83

_ZN4ncnn3Mat7channelEi.exit83:                    ; preds = %.noexc82, %bb.d
  %i.da = load i32, ptr %8, align 4, !tbaa !45    ; 2 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.noexc81.lr.ph, label %._crit_edge

.noexc81.lr.ph:                                   ; preds = %_ZN4ncnn3Mat7channelEi.exit83
  %i.dc = sext i32 %i.bv to i64
  %i.dd = sext i32 %i.bw to i64
  br label %.noexc81

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit52
  %.val.pre = load ptr, ptr %14, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4ncnn3Mat7channelEi.exit83
  %.val = phi ptr [ %.val.pre, %._crit_edge.loopexit ], [ %i.cn, %_ZN4ncnn3Mat7channelEi.exit83 ]
  call fastcc void @_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi(ptr %.val, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.bq, i32 noundef %i.bx, i32 noundef %.sroa.speculated121, i32 noundef %i.by, i32 noundef %.sroa.speculated117, ptr noundef nonnull align 8 dereferenceable(72) %13, float noundef nofpclass(nan inf) %i.bs, float noundef nofpclass(nan inf) %i.bt, i32 noundef %i.br)
  %i.de = load ptr, ptr %i.y, align 8, !tbaa !11  ; 2 uses
  %.not.i68 = icmp eq ptr %i.de, null
  br i1 %.not.i68, label %_ZN4ncnn3MatD2Ev.exit, label %bb.r

.noexc81:                                         ; preds = %.noexc81.lr.ph, %_ZN4ncnn3MatD2Ev.exit52
  %i.df = phi i32 [ %i.da, %.noexc81.lr.ph ], [ %i.fe, %_ZN4ncnn3MatD2Ev.exit52 ]
  %.0137 = phi i32 [ 0, %.noexc81.lr.ph ], [ %i.fd, %_ZN4ncnn3MatD2Ev.exit52 ] ; 4 uses
  %i.dg = sub nsw i32 %i.df, %.0137
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.dg)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  %i.dh = load i32, ptr %i.aj, align 4, !tbaa !86, !noalias !633 ; 2 uses
  %i.di = load ptr, ptr %9, align 8, !tbaa !18, !noalias !633
  %i.dj = load i64, ptr %i.ak, align 8, !tbaa !20, !noalias !633
  %i.dk = mul i64 %i.dj, %i.dc
  %i.dl = load i64, ptr %i.al, align 8, !tbaa !59, !noalias !633 ; 3 uses
  %i.dm = mul i64 %i.dk, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dm
  %i.do = load i32, ptr %i.am, align 8, !tbaa !60, !noalias !633
  %i.dp = load ptr, ptr %i.an, align 8, !tbaa !17, !noalias !633
  %i.dq = sext i32 %i.dh to i64                   ; 2 uses
  %i.dr = sdiv i32 %.0137, %i.bp
end_hunk_10
begin_hunk_11_@_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  %i.kg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ke)
  %i.kh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.kf)
  %i.ki = fadd fast <4 x float> %i.kg, %i.ke
  %i.kj = fadd fast <4 x float> %i.kh, %i.kf
  %i.kk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ki)
  %i.kl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kj)
  %i.km = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kk, <4 x i32> %i.kl)
  %i.kn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.km, <8 x i16> splat (i16 -127))
  %i.ko = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.kn, <8 x i16> splat (i16 127))
  %i.kp = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ko, <8 x i16> poison)
  %i.kq = bitcast <16 x i8> %i.kp to <2 x i64>
  %i.kr = extractelement <2 x i64> %i.kq, i64 0
  store i64 %i.kr, ptr %.771.us102.us.i, align 8, !tbaa !581
  %i.ks = getelementptr inbounds nuw i8, ptr %.771.us102.us.i, i64 8 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.025470.us103.us.i, i64 %.idx267.i
  %i.ku = add nuw nsw i32 %.025969.us104.us.i, 4  ; 2 uses
  %i.kv = or disjoint i32 %i.ku, 3
  %i.kw = icmp slt i32 %i.kv, %4
  br i1 %i.kw, label %bb.c, label %..loopexit43_crit_edge.us109.us.i, !llvm.loop !692

..loopexit43_crit_edge.us109.us.i:                ; preds = %bb.c
  %indvars.iv.next169.i = add nuw nsw i64 %indvars.iv168.i, 2 ; 3 uses
  %i.kx = icmp slt i64 %indvars.iv.next169.i, %invariant.op.i
  br i1 %i.kx, label %.lr.ph72.us108.us.i, label %.preheader39.loopexit138.i, !llvm.loop !691

.preheader39.loopexit.i:                          ; preds = %.loopexit41.us.i
  %i.ky = trunc nuw nsw i64 %indvars.iv.next173.i to i32
  br label %.preheader39.i

.preheader39.loopexit138.i:                       ; preds = %..loopexit43_crit_edge.us109.us.i
  %i.kz = trunc nuw nsw i64 %indvars.iv.next169.i to i32
  br label %.preheader39.i

.preheader39.i:                                   ; preds = %.preheader39.loopexit138.i, %.preheader39.loopexit.i, %.loopexit43.us106.preheader.i, %.lr.ph96.split.split.preheader.i, %.preheader44.i
  %.1242.lcssa.i = phi i32 [ %.0241.lcssa.i, %.preheader44.i ], [ %i.jl, %.loopexit43.us106.preheader.i ], [ %i.kz, %.preheader39.loopexit138.i ], [ %i.ky, %.preheader39.loopexit.i ], [ %i.jd, %.lr.ph96.split.split.preheader.i ] ; 2 uses
  %.6.lcssa.i = phi ptr [ %.0237.lcssa.i, %.preheader44.i ], [ %.0237.lcssa.i, %.loopexit43.us106.preheader.i ], [ %i.ks, %.preheader39.loopexit138.i ], [ %.11.lcssa.us.i, %.preheader39.loopexit.i ], [ %.0237.lcssa.i, %.lr.ph96.split.split.preheader.i ]
  %i.la = icmp slt i32 %.1242.lcssa.i, %2
  br i1 %i.la, label %.lr.ph137.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph137.i:                                      ; preds = %.preheader39.i
  %i.lb = sext i32 %3 to i64
  %i.lc = mul i64 %i.k, %i.lb
  %i.ld = icmp sgt i32 %4, 3                      ; 2 uses
  %.idx262.i = shl i64 %i.k, 4                    ; 2 uses
  %.idx.i = shl i64 %i.k, 3
  %.idx260.i = mul i64 %i.k, 12
  %i.le = and i32 %4, -4
  %i.lf = sext i32 %.1242.lcssa.i to i64
  %i.lg = sext i32 %1 to i64
  %i.lh = sext i32 %i.b to i64
  %wide.trip.count.i = sext i32 %2 to i64
  %xtraiter98 = and i32 %4, 1
  %lcmp.mod99.not = icmp eq i32 %xtraiter98, 0
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph137.i
  %indvars.iv176.i = phi i64 [ %i.lf, %.lr.ph137.i ], [ %indvars.iv.next177.i, %.loopexit.i ] ; 2 uses
  %.13136.i = phi ptr [ %.6.lcssa.i, %.lr.ph137.i ], [ %.18.i, %.loopexit.i ] ; 5 uses
  %i.li = load ptr, ptr %0, align 8, !tbaa !18
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.lc
  %i.lk = add nsw i64 %indvars.iv176.i, %i.lg     ; 2 uses
  %i.ll = mul nsw i64 %i.lk, %i.lh
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.ll ; 3 uses
  %i.ln = load ptr, ptr %5, align 8, !tbaa !18
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.lk
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !68 ; 5 uses
  switch i32 %i.b, label %.loopexit.i [
    i32 4, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.lq = insertelement <4 x float> poison, float %i.lp, i64 0
  %i.lr = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.ld, label %.lr.ph120.i, label %.loopexit.i

.lr.ph120.i:                                      ; preds = %bb.e, %.lr.ph120.i
  %.0234119.i = phi i32 [ %i.mf, %.lr.ph120.i ], [ 0, %bb.e ]
  %.0235118.i = phi ptr [ %i.me, %.lr.ph120.i ], [ %i.lm, %bb.e ] ; 2 uses
  %.14117.i = phi ptr [ %i.md, %.lr.ph120.i ], [ %.13136.i, %bb.e ] ; 2 uses
  %i.ls = load <4 x float>, ptr %.0235118.i, align 16, !tbaa !113
  %i.lt = fmul fast <4 x float> %i.ls, %i.lr      ; 2 uses
  %i.lu = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.lt)
  %i.lv = fadd fast <4 x float> %i.lu, %i.lt
  %i.lw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lv) ; 2 uses
  %i.lx = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.lw, <4 x i32> %i.lw)
  %i.ly = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.lx, <8 x i16> splat (i16 -127))
  %i.lz = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ly, <8 x i16> splat (i16 127))
  %i.ma = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.lz, <8 x i16> poison)
  %i.mb = bitcast <16 x i8> %i.ma to <4 x i32>
  %i.mc = extractelement <4 x i32> %i.mb, i64 0
  store i32 %i.mc, ptr %.14117.i, align 4, !tbaa !45
  %i.md = getelementptr inbounds nuw i8, ptr %.14117.i, i64 4 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.0235118.i, i64 %.idx262.i
  %i.mf = add nuw nsw i32 %.0234119.i, 4          ; 2 uses
  %i.mg = or disjoint i32 %i.mf, 3
  %i.mh = icmp slt i32 %i.mg, %4
  br i1 %i.mh, label %.lr.ph120.i, label %.loopexit.i, !llvm.loop !693

bb.f:                                             ; preds = %bb.d
  %i.mi = insertelement <4 x float> poison, float %i.lp, i64 0
  %i.mj = shufflevector <4 x float> %i.mi, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.ld, label %.lr.ph126.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph126.i, %bb.f
  %.16.lcssa.i = phi ptr [ %.13136.i, %bb.f ], [ %i.no, %.lr.ph126.i ] ; 4 uses
  %.2.lcssa.i = phi ptr [ %i.lm, %bb.f ], [ %i.np, %.lr.ph126.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.le, %.lr.ph126.i ] ; 4 uses
  %i.mk = icmp slt i32 %.0.lcssa.i, %4
  br i1 %i.mk, label %.lr.ph133.i.preheader, label %.loopexit.i

.lr.ph133.i.preheader:                            ; preds = %.preheader.i
  %.neg100 = or disjoint i32 %.0.lcssa.i, 1
  br i1 %lcmp.mod99.not, label %.lr.ph133.i.prol.loopexit, label %.lr.ph133.i.prol

.lr.ph133.i.prol:                                 ; preds = %.lr.ph133.i.preheader
  %i.ml = load float, ptr %.2.lcssa.i, align 4, !tbaa !68
  %i.mm = fmul fast float %i.ml, %i.lp
  %i.mn = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.mm)
  %i.mo = fptosi float %i.mn to i32
  %spec.select.i32.i.prol = tail call i32 @llvm.smax.i32(i32 %i.mo, i32 -127)
  %.0.i33.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i32.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i33.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.16.lcssa.i, align 1, !tbaa !113
  %i.mp = getelementptr inbounds nuw i8, ptr %.16.lcssa.i, i64 1 ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.2.lcssa.i, i64 %i.k
  %i.mr = or disjoint i32 %.0.lcssa.i, 1
  br label %.lr.ph133.i.prol.loopexit

.lr.ph133.i.prol.loopexit:                        ; preds = %.lr.ph133.i.prol, %.lr.ph133.i.preheader
  %.lcssa84.unr = phi ptr [ poison, %.lr.ph133.i.preheader ], [ %i.mp, %.lr.ph133.i.prol ]
  %.1132.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph133.i.preheader ], [ %i.mr, %.lr.ph133.i.prol ]
  %.3131.i.unr = phi ptr [ %.2.lcssa.i, %.lr.ph133.i.preheader ], [ %i.mq, %.lr.ph133.i.prol ]
  %.17130.i.unr = phi ptr [ %.16.lcssa.i, %.lr.ph133.i.preheader ], [ %i.mp, %.lr.ph133.i.prol ]
  %i.ms = icmp eq i32 %4, %.neg100
  br i1 %i.ms, label %.loopexit.i, label %.lr.ph133.i

.lr.ph126.i:                                      ; preds = %bb.f, %.lr.ph126.i
  %.0125.i = phi i32 [ %i.nq, %.lr.ph126.i ], [ 0, %bb.f ]
  %.2124.i = phi ptr [ %i.np, %.lr.ph126.i ], [ %i.lm, %bb.f ] ; 5 uses
  %.16123.i = phi ptr [ %i.no, %.lr.ph126.i ], [ %.13136.i, %bb.f ] ; 2 uses
  %i.mt = load float, ptr %.2124.i, align 4, !tbaa !68
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %.2124.i, i64 %i.k
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !68
  %i.mw = getelementptr inbounds nuw i8, ptr %.2124.i, i64 %.idx.i
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !68
  %i.my = getelementptr inbounds nuw i8, ptr %.2124.i, i64 %.idx260.i
  %i.mz = load float, ptr %i.my, align 4, !tbaa !68
  %i.na = insertelement <4 x float> poison, float %i.mt, i64 0
  %i.nb = insertelement <4 x float> %i.na, float %i.mv, i64 1
  %i.nc = insertelement <4 x float> %i.nb, float %i.mx, i64 2
  %i.nd = insertelement <4 x float> %i.nc, float %i.mz, i64 3
  %i.ne = fmul fast <4 x float> %i.nd, %i.mj      ; 2 uses
  %i.nf = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ne)
  %i.ng = fadd fast <4 x float> %i.nf, %i.ne
  %i.nh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ng) ; 2 uses
  %i.ni = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.nh, <4 x i32> %i.nh)
  %i.nj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ni, <8 x i16> splat (i16 -127))
  %i.nk = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.nj, <8 x i16> splat (i16 127))
  %i.nl = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.nk, <8 x i16> poison)
  %i.nm = bitcast <16 x i8> %i.nl to <4 x i32>
  %i.nn = extractelement <4 x i32> %i.nm, i64 0
  store i32 %i.nn, ptr %.16123.i, align 4, !tbaa !45
  %i.no = getelementptr inbounds nuw i8, ptr %.16123.i, i64 4 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.2124.i, i64 %.idx262.i ; 2 uses
  %i.nq = add nuw nsw i32 %.0125.i, 4             ; 2 uses
  %i.nr = or disjoint i32 %i.nq, 3
  %i.ns = icmp slt i32 %i.nr, %4
  br i1 %i.ns, label %.lr.ph126.i, label %.preheader.i, !llvm.loop !694

.lr.ph133.i:                                      ; preds = %.lr.ph133.i.prol.loopexit, %.lr.ph133.i
  %.1132.i = phi i32 [ %i.of, %.lr.ph133.i ], [ %.1132.i.unr, %.lr.ph133.i.prol.loopexit ]
  %.3131.i = phi ptr [ %i.oe, %.lr.ph133.i ], [ %.3131.i.unr, %.lr.ph133.i.prol.loopexit ] ; 2 uses
  %.17130.i = phi ptr [ %i.od, %.lr.ph133.i ], [ %.17130.i.unr, %.lr.ph133.i.prol.loopexit ] ; 3 uses
  %i.nt = load float, ptr %.3131.i, align 4, !tbaa !68
  %i.nu = fmul fast float %i.nt, %i.lp
  %i.nv = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.nu)
  %i.nw = fptosi float %i.nv to i32
  %spec.select.i32.i = tail call i32 @llvm.smax.i32(i32 %i.nw, i32 -127)
  %.0.i33.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i32.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i33.i to i8
  store i8 %.0.i.i, ptr %.17130.i, align 1, !tbaa !113
  %i.nx = getelementptr inbounds nuw i8, ptr %.17130.i, i64 1
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.3131.i, i64 %i.k ; 2 uses
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !68
  %i.oa = fmul fast float %i.nz, %i.lp
  %i.ob = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.oa)
  %i.oc = fptosi float %i.ob to i32
  %spec.select.i32.i.1 = tail call i32 @llvm.smax.i32(i32 %i.oc, i32 -127)
  %.0.i33.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i32.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i33.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.nx, align 1, !tbaa !113
  %i.od = getelementptr inbounds nuw i8, ptr %.17130.i, i64 2 ; 2 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.k
  %i.of = add nuw nsw i32 %.1132.i, 2             ; 2 uses
  %exitcond175.not.i.1 = icmp eq i32 %i.of, %4
  br i1 %exitcond175.not.i.1, label %.loopexit.i, label %.lr.ph133.i, !llvm.loop !695

.loopexit.i:                                      ; preds = %.lr.ph133.i.prol.loopexit, %.lr.ph133.i, %.lr.ph120.i, %.preheader.i, %bb.e, %bb.d
  %.18.i = phi ptr [ %.13136.i, %bb.d ], [ %.16.lcssa.i, %.preheader.i ], [ %i.md, %.lr.ph120.i ], [ %.13136.i, %bb.e ], [ %.lcssa84.unr, %.lr.ph133.i.prol.loopexit ], [ %i.od, %.lr.ph133.i ]
  %indvars.iv.next177.i = add nsw i64 %indvars.iv176.i, 1 ; 2 uses
  %exitcond179.not.i = icmp eq i64 %indvars.iv.next177.i, %wide.trip.count.i
  br i1 %exitcond179.not.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit, label %bb.d, !llvm.loop !696

_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit: ; preds = %.loopexit.i, %.preheader39.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly captures(none) %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85
  %i.c = icmp eq i32 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sext i32 %i.g to i64
  %i.i = select i1 %i.c, i64 %i.e, i64 %i.h       ; 16 uses
  %i.j = icmp sgt i32 %2, 3
  br i1 %i.j, label %.lr.ph62.i, label %.preheader31.i

.lr.ph62.i:                                       ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !18
  %i.n = mul nsw i32 %i.l, %3
  %i.o = sext i32 %i.n to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.m, i64 %i.o ; 2 uses
  %i.p = load ptr, ptr %5, align 8, !tbaa !18
  %i.q = sext i32 %1 to i64                       ; 3 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = icmp sgt i32 %4, 1                       ; 2 uses
  %.idx26.i = shl i64 %i.i, 3                     ; 2 uses
  %.idx27.i = mul i64 %i.i, 12                    ; 2 uses
  %i.t = and i32 %4, -2                           ; 2 uses
  %i.u = zext nneg i32 %2 to i64                  ; 3 uses
  switch i32 %i.l, label %.loopexit.i.preheader [
    i32 4, label %.preheader36.i.us.preheader
    i32 1, label %.preheader33.i.us
  ]

.preheader36.i.us.preheader:                      ; preds = %.lr.ph62.i
  %xtraiter = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br label %.preheader36.i.us

.loopexit.i.preheader:                            ; preds = %.lr.ph62.i
  %umax = tail call i64 @llvm.umax.i64(i64 %i.u, i64 7)
  %i.v = and i64 %umax, 2147483644
  br label %.preheader31.loopexit.i

.preheader36.i.us:                                ; preds = %.preheader36.i.us.preheader, %.loopexit.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit.i.us ], [ 0, %.preheader36.i.us.preheader ] ; 3 uses
  %.018061.i.us = phi ptr [ %.6.i.us, %.loopexit.i.us ], [ %.0.val, %.preheader36.i.us.preheader ] ; 2 uses
  %i.w = add nsw i64 %indvars.iv.i.us, %i.q
  %i.x = mul i64 %i.w, %i.i
  %gep.i.us = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.x ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.us
  %i.z = load <4 x float>, ptr %i.y, align 16, !tbaa !113 ; 5 uses
  br i1 %i.s, label %.lr.ph.i.us, label %.preheader34.i.us

.lr.ph.i.us:                                      ; preds = %.preheader36.i.us, %.lr.ph.i.us
  %.118139.i.us = phi ptr [ %i.at, %.lr.ph.i.us ], [ %.018061.i.us, %.preheader36.i.us ] ; 2 uses
  %.018538.i.us = phi ptr [ %i.au, %.lr.ph.i.us ], [ %gep.i.us, %.preheader36.i.us ] ; 3 uses
  %.019037.i.us = phi i32 [ %i.av, %.lr.ph.i.us ], [ 0, %.preheader36.i.us ]
  %i.aa = load <4 x float>, ptr %.018538.i.us, align 16, !tbaa !113
  %i.ab = getelementptr inbounds nuw i8, ptr %.018538.i.us, i64 16
  %i.ac = load <4 x float>, ptr %i.ab, align 16, !tbaa !113
  %i.ad = fmul fast <4 x float> %i.aa, %i.z       ; 2 uses
  %i.ae = fmul fast <4 x float> %i.ac, %i.z       ; 2 uses
  %i.af = shufflevector <4 x float> %i.ad, <4 x float> %i.ae, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ag = shufflevector <4 x float> %i.ad, <4 x float> %i.ae, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ah = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.af)
  %i.ai = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ag)
  %i.aj = fadd fast <4 x float> %i.ah, %i.af
  %i.ak = fadd fast <4 x float> %i.ai, %i.ag
  %i.al = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aj)
  %i.am = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ak)
  %i.an = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.al, <4 x i32> %i.am)
  %i.ao = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.an, <8 x i16> splat (i16 -127))
  %i.ap = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ao, <8 x i16> splat (i16 127))
  %i.aq = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ap, <8 x i16> poison)
  %i.ar = bitcast <16 x i8> %i.aq to <2 x i64>
  %i.as = extractelement <2 x i64> %i.ar, i64 0
  store i64 %i.as, ptr %.118139.i.us, align 8, !tbaa !581
  %i.at = getelementptr inbounds nuw i8, ptr %.118139.i.us, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.018538.i.us, i64 32 ; 2 uses
  %i.av = add nuw nsw i32 %.019037.i.us, 2        ; 2 uses
  %i.aw = or disjoint i32 %i.av, 1
  %i.ax = icmp slt i32 %i.aw, %4
  br i1 %i.ax, label %.lr.ph.i.us, label %.preheader34.i.us, !llvm.loop !697

.preheader34.i.us:                                ; preds = %.lr.ph.i.us, %.preheader36.i.us
  %.0190.lcssa.i.us = phi i32 [ 0, %.preheader36.i.us ], [ %i.t, %.lr.ph.i.us ] ; 4 uses
  %.0185.lcssa.i.us = phi ptr [ %gep.i.us, %.preheader36.i.us ], [ %i.au, %.lr.ph.i.us ] ; 3 uses
  %.1181.lcssa.i.us = phi ptr [ %.018061.i.us, %.preheader36.i.us ], [ %i.at, %.lr.ph.i.us ] ; 4 uses
  %i.ay = icmp slt i32 %.0190.lcssa.i.us, %4
  br i1 %i.ay, label %.lr.ph45.i.us.preheader, label %.loopexit.i.us

.lr.ph45.i.us.preheader:                          ; preds = %.preheader34.i.us
  %.neg = or disjoint i32 %.0190.lcssa.i.us, 1
  br i1 %lcmp.mod.not, label %.lr.ph45.i.us.prol.loopexit, label %.lr.ph45.i.us.prol

.lr.ph45.i.us.prol:                               ; preds = %.lr.ph45.i.us.preheader
  %i.az = load <4 x float>, ptr %.0185.lcssa.i.us, align 16, !tbaa !113
  %i.ba = fmul fast <4 x float> %i.az, %i.z       ; 2 uses
  %i.bb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ba)
  %i.bc = fadd fast <4 x float> %i.bb, %i.ba
  %i.bd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bc) ; 2 uses
  %i.be = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bd, <4 x i32> %i.bd)
  %i.bf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.be, <8 x i16> splat (i16 -127))
  %i.bg = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bf, <8 x i16> splat (i16 127))
  %i.bh = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bg, <8 x i16> poison)
  %i.bi = bitcast <16 x i8> %i.bh to <4 x i32>
  %i.bj = extractelement <4 x i32> %i.bi, i64 0
  store i32 %i.bj, ptr %.1181.lcssa.i.us, align 4, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %.1181.lcssa.i.us, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0185.lcssa.i.us, i64 16
  %i.bm = or disjoint i32 %.0190.lcssa.i.us, 1
  br label %.lr.ph45.i.us.prol.loopexit

.lr.ph45.i.us.prol.loopexit:                      ; preds = %.lr.ph45.i.us.prol, %.lr.ph45.i.us.preheader
  %.lcssa141.unr = phi ptr [ poison, %.lr.ph45.i.us.preheader ], [ %i.bk, %.lr.ph45.i.us.prol ]
  %.244.i.us.unr = phi ptr [ %.1181.lcssa.i.us, %.lr.ph45.i.us.preheader ], [ %i.bk, %.lr.ph45.i.us.prol ]
  %.118643.i.us.unr = phi ptr [ %.0185.lcssa.i.us, %.lr.ph45.i.us.preheader ], [ %i.bl, %.lr.ph45.i.us.prol ]
  %.119142.i.us.unr = phi i32 [ %.0190.lcssa.i.us, %.lr.ph45.i.us.preheader ], [ %i.bm, %.lr.ph45.i.us.prol ]
  %i.bn = icmp eq i32 %4, %.neg
  br i1 %i.bn, label %.loopexit.i.us, label %.lr.ph45.i.us

.lr.ph45.i.us:                                    ; preds = %.lr.ph45.i.us.prol.loopexit, %.lr.ph45.i.us
  %.244.i.us = phi ptr [ %i.cm, %.lr.ph45.i.us ], [ %.244.i.us.unr, %.lr.ph45.i.us.prol.loopexit ] ; 3 uses
  %.118643.i.us = phi ptr [ %i.cn, %.lr.ph45.i.us ], [ %.118643.i.us.unr, %.lr.ph45.i.us.prol.loopexit ] ; 3 uses
  %.119142.i.us = phi i32 [ %i.co, %.lr.ph45.i.us ], [ %.119142.i.us.unr, %.lr.ph45.i.us.prol.loopexit ]
  %i.bo = load <4 x float>, ptr %.118643.i.us, align 16, !tbaa !113
  %i.bp = fmul fast <4 x float> %i.bo, %i.z       ; 2 uses
  %i.bq = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bp)
  %i.br = fadd fast <4 x float> %i.bq, %i.bp
  %i.bs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.br) ; 2 uses
  %i.bt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bs, <4 x i32> %i.bs)
  %i.bu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bt, <8 x i16> splat (i16 -127))
  %i.bv = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bu, <8 x i16> splat (i16 127))
  %i.bw = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bv, <8 x i16> poison)
  %i.bx = bitcast <16 x i8> %i.bw to <4 x i32>
  %i.by = extractelement <4 x i32> %i.bx, i64 0
  store i32 %i.by, ptr %.244.i.us, align 4, !tbaa !45
  %i.bz = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.118643.i.us, i64 16
  %i.cb = load <4 x float>, ptr %i.ca, align 16, !tbaa !113
  %i.cc = fmul fast <4 x float> %i.cb, %i.z       ; 2 uses
  %i.cd = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.cc)
  %i.ce = fadd fast <4 x float> %i.cd, %i.cc
  %i.cf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ce) ; 2 uses
  %i.cg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cf, <4 x i32> %i.cf)
  %i.ch = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cg, <8 x i16> splat (i16 -127))
  %i.ci = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ch, <8 x i16> splat (i16 127))
  %i.cj = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ci, <8 x i16> poison)
  %i.ck = bitcast <16 x i8> %i.cj to <4 x i32>
  %i.cl = extractelement <4 x i32> %i.ck, i64 0
  store i32 %i.cl, ptr %i.bz, align 4, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.118643.i.us, i64 32
  %i.co = add nuw nsw i32 %.119142.i.us, 2        ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i32 %i.co, %4
  br i1 %exitcond.not.i.us.1, label %.loopexit.i.us, label %.lr.ph45.i.us, !llvm.loop !698

.loopexit.i.us:                                   ; preds = %.lr.ph45.i.us.prol.loopexit, %.lr.ph45.i.us, %.preheader34.i.us
  %.6.i.us = phi ptr [ %.1181.lcssa.i.us, %.preheader34.i.us ], [ %.lcssa141.unr, %.lr.ph45.i.us.prol.loopexit ], [ %i.cm, %.lr.ph45.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 4 ; 3 uses
  %i.cp = or disjoint i64 %indvars.iv.next.i.us, 3
  %i.cq = icmp samesign ult i64 %i.cp, %i.u
  br i1 %i.cq, label %.preheader36.i.us, label %.preheader31.loopexit.i, !llvm.loop !699

.preheader33.i.us:                                ; preds = %.lr.ph62.i, %.loopexit.i.us23
  %indvars.iv.i.us20 = phi i64 [ %indvars.iv.next.i.us25, %.loopexit.i.us23 ], [ 0, %.lr.ph62.i ] ; 3 uses
  %.018061.i.us21 = phi ptr [ %.6.i.us24, %.loopexit.i.us23 ], [ %.0.val, %.lr.ph62.i ] ; 2 uses
  %i.cr = add nsw i64 %indvars.iv.i.us20, %i.q
  %i.cs = mul i64 %i.cr, %i.i
  %gep.i.us22 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cs ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.us20
  %i.cu = load <4 x float>, ptr %i.ct, align 16, !tbaa !113 ; 3 uses
  br i1 %i.s, label %.lr.ph51.i.us, label %.preheader32.i.us

.lr.ph51.i.us:                                    ; preds = %.preheader33.i.us, %.lr.ph51.i.us
  %.450.i.us = phi ptr [ %i.ei, %.lr.ph51.i.us ], [ %.018061.i.us21, %.preheader33.i.us ] ; 2 uses
  %.318849.i.us = phi ptr [ %i.ej, %.lr.ph51.i.us ], [ %gep.i.us22, %.preheader33.i.us ] ; 6 uses
  %.019848.i.us = phi i32 [ %i.ek, %.lr.ph51.i.us ], [ 0, %.preheader33.i.us ]
  %i.cv = load float, ptr %.318849.i.us, align 4, !tbaa !68
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.318849.i.us, i64 %i.i ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !68
  %i.cy = getelementptr inbounds nuw i8, ptr %.318849.i.us, i64 %.idx26.i ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !68
  %i.da = getelementptr inbounds nuw i8, ptr %.318849.i.us, i64 %.idx27.i ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !68
  %i.dc = insertelement <4 x float> poison, float %i.cv, i64 0
  %i.dd = insertelement <4 x float> %i.dc, float %i.cx, i64 1
  %i.de = insertelement <4 x float> %i.dd, float %i.cz, i64 2
  %i.df = insertelement <4 x float> %i.de, float %i.db, i64 3
  %i.dg = getelementptr inbounds nuw i8, ptr %.318849.i.us, i64 4
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !68
end_hunk_11
begin_hunk_12_@_ZN4ncnnL26transpose_pack_A_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  br i1 %i.eh, label %.lr.ph53.epil.preheader, label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53.preheader, %.lr.ph53
  %.212151 = phi ptr [ %i.ha, %.lr.ph53 ], [ %i.fb, %.lr.ph53.preheader ] ; 3 uses
  %.850 = phi ptr [ %i.gz, %.lr.ph53 ], [ %.556, %.lr.ph53.preheader ] ; 9 uses
  %niter172 = phi i32 [ %niter172.next.3, %.lr.ph53 ], [ 0, %.lr.ph53.preheader ]
  %i.gd = load i16, ptr %.212151, align 2, !tbaa !526
  store i16 %i.gd, ptr %.850, align 2, !tbaa !526
  %i.ge = getelementptr inbounds nuw i8, ptr %.212151, i64 2
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !526
  %i.gg = getelementptr inbounds nuw i8, ptr %.850, i64 2
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !526
  %i.gh = getelementptr inbounds nuw i8, ptr %.850, i64 4
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %.212151, i64 %i.k ; 3 uses
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !526
  store i16 %i.gj, ptr %i.gh, align 2, !tbaa !526
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !526
  %i.gm = getelementptr inbounds nuw i8, ptr %.850, i64 6
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !526
  %i.gn = getelementptr inbounds nuw i8, ptr %.850, i64 8
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.k ; 3 uses
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !526
  store i16 %i.gp, ptr %i.gn, align 2, !tbaa !526
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !526
  %i.gs = getelementptr inbounds nuw i8, ptr %.850, i64 10
  store i16 %i.gr, ptr %i.gs, align 2, !tbaa !526
  %i.gt = getelementptr inbounds nuw i8, ptr %.850, i64 12
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.k ; 3 uses
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !526
  store i16 %i.gv, ptr %i.gt, align 2, !tbaa !526
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 2
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !526
  %i.gy = getelementptr inbounds nuw i8, ptr %.850, i64 14
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !526
  %i.gz = getelementptr inbounds nuw i8, ptr %.850, i64 16 ; 3 uses
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %i.k ; 2 uses
  %niter172.next.3 = add nuw nsw i32 %niter172, 4 ; 2 uses
  %niter172.ncmp.3 = icmp eq i32 %niter172.next.3, %unroll_iter171
  br i1 %niter172.ncmp.3, label %.loopexit5.loopexit.unr-lcssa, label %.lr.ph53, !llvm.loop !819

.loopexit5.loopexit.unr-lcssa:                    ; preds = %.lr.ph53
  br i1 %lcmp.mod168.not, label %.loopexit5, label %.lr.ph53.epil.preheader

.lr.ph53.epil.preheader:                          ; preds = %.loopexit5.loopexit.unr-lcssa, %.lr.ph53.preheader
  %.212151.epil.init = phi ptr [ %i.fb, %.lr.ph53.preheader ], [ %i.ha, %.loopexit5.loopexit.unr-lcssa ]
  %.850.epil.init = phi ptr [ %.556, %.lr.ph53.preheader ], [ %i.gz, %.loopexit5.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph53.epil

.lr.ph53.epil:                                    ; preds = %.lr.ph53.epil, %.lr.ph53.epil.preheader
  %.212151.epil = phi ptr [ %i.hg, %.lr.ph53.epil ], [ %.212151.epil.init, %.lr.ph53.epil.preheader ] ; 3 uses
  %.850.epil = phi ptr [ %i.hf, %.lr.ph53.epil ], [ %.850.epil.init, %.lr.ph53.epil.preheader ] ; 3 uses
  %epil.iter167 = phi i32 [ %epil.iter167.next, %.lr.ph53.epil ], [ 0, %.lr.ph53.epil.preheader ]
  %i.hb = load i16, ptr %.212151.epil, align 2, !tbaa !526
  store i16 %i.hb, ptr %.850.epil, align 2, !tbaa !526
  %i.hc = getelementptr inbounds nuw i8, ptr %.212151.epil, i64 2
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !526
  %i.he = getelementptr inbounds nuw i8, ptr %.850.epil, i64 2
  store i16 %i.hd, ptr %i.he, align 2, !tbaa !526
  %i.hf = getelementptr inbounds nuw i8, ptr %.850.epil, i64 4 ; 2 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %.212151.epil, i64 %i.k
  %epil.iter167.next = add i32 %epil.iter167, 1   ; 2 uses
  %epil.iter167.cmp.not = icmp eq i32 %epil.iter167.next, %xtraiter166
  br i1 %epil.iter167.cmp.not, label %.loopexit5, label %.lr.ph53.epil, !llvm.loop !820

.loopexit5:                                       ; preds = %.lr.ph, %.loopexit5.loopexit.unr-lcssa, %.lr.ph53.epil, %.loopexit7
  %.9 = phi ptr [ %.556, %.loopexit7 ], [ %i.hf, %.lr.ph53.epil ], [ %i.gz, %.loopexit5.loopexit.unr-lcssa ], [ %i.fy, %.lr.ph ] ; 2 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 2 ; 3 uses
  %i.hh = icmp slt i64 %indvars.iv.next111, %invariant.op
  br i1 %i.hh, label %bb.c, label %.preheader3.loopexit, !llvm.loop !821

bb.d:                                             ; preds = %.lr.ph73, %.loopexit
  %indvars.iv114 = phi i64 [ %i.eq, %.lr.ph73 ], [ %indvars.iv.next115, %.loopexit ] ; 2 uses
  %.1072 = phi ptr [ %.5.lcssa, %.lr.ph73 ], [ %.14, %.loopexit ] ; 5 uses
  %i.hi = load ptr, ptr %0, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.el
  %i.hk = add nsw i64 %indvars.iv114, %i.er
  %i.hl = mul nsw i64 %i.hk, %i.es
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %i.hl ; 4 uses
  br i1 %brmerge83, label %.loopexit2, label %.lr.ph63.preheader

.lr.ph63.preheader:                               ; preds = %bb.d
  br i1 %i.ex, label %.lr.ph63.epil.preheader, label %.lr.ph63

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %.lr.ph63
  %.011661 = phi ptr [ %i.hy, %.lr.ph63 ], [ %i.hm, %.lr.ph63.preheader ] ; 2 uses
  %.1160 = phi ptr [ %i.hx, %.lr.ph63 ], [ %.1072, %.lr.ph63.preheader ] ; 5 uses
  %niter179 = phi i32 [ %niter179.next.3, %.lr.ph63 ], [ 0, %.lr.ph63.preheader ]
  %i.hn = load i64, ptr %.011661, align 1, !tbaa !113
  store i64 %i.hn, ptr %.1160, align 1, !tbaa !113
  %i.ho = getelementptr inbounds nuw i8, ptr %.1160, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %.011661, i64 %.idx ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 1, !tbaa !113
  store i64 %i.hq, ptr %i.ho, align 1, !tbaa !113
  %i.hr = getelementptr inbounds nuw i8, ptr %.1160, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.idx ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 1, !tbaa !113
  store i64 %i.ht, ptr %i.hr, align 1, !tbaa !113
  %i.hu = getelementptr inbounds nuw i8, ptr %.1160, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.idx ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 1, !tbaa !113
  store i64 %i.hw, ptr %i.hu, align 1, !tbaa !113
  %i.hx = getelementptr inbounds nuw i8, ptr %.1160, i64 32 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.idx ; 2 uses
  %niter179.next.3 = add nuw nsw i32 %niter179, 4 ; 2 uses
  %niter179.ncmp.3.not = icmp eq i32 %niter179.next.3, %unroll_iter178
  br i1 %niter179.ncmp.3.not, label %.loopexit.loopexit148.unr-lcssa, label %.lr.ph63, !llvm.loop !822

.loopexit2:                                       ; preds = %bb.d
  br i1 %brmerge86, label %.loopexit, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %.loopexit2
  br i1 %i.ey, label %.lr.ph69.epil.preheader, label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %.lr.ph69
  %.267 = phi ptr [ %i.iw, %.lr.ph69 ], [ %i.hm, %.lr.ph69.preheader ] ; 2 uses
  %.1366 = phi ptr [ %i.iv, %.lr.ph69 ], [ %.1072, %.lr.ph69.preheader ] ; 9 uses
  %niter186 = phi i32 [ %niter186.next.7, %.lr.ph69 ], [ 0, %.lr.ph69.preheader ]
  %i.hz = load i16, ptr %.267, align 2, !tbaa !526
  store i16 %i.hz, ptr %.1366, align 2, !tbaa !526
  %i.ia = getelementptr inbounds nuw i8, ptr %.1366, i64 2
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %.267, i64 %i.k ; 2 uses
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !526
  store i16 %i.ic, ptr %i.ia, align 2, !tbaa !526
  %i.id = getelementptr inbounds nuw i8, ptr %.1366, i64 4
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %i.k ; 2 uses
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !526
  store i16 %i.if, ptr %i.id, align 2, !tbaa !526
  %i.ig = getelementptr inbounds nuw i8, ptr %.1366, i64 6
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %i.k ; 2 uses
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !526
  store i16 %i.ii, ptr %i.ig, align 2, !tbaa !526
  %i.ij = getelementptr inbounds nuw i8, ptr %.1366, i64 8
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.ih, i64 %i.k ; 2 uses
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !526
  store i16 %i.il, ptr %i.ij, align 2, !tbaa !526
  %i.im = getelementptr inbounds nuw i8, ptr %.1366, i64 10
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.k ; 2 uses
  %i.io = load i16, ptr %i.in, align 2, !tbaa !526
  store i16 %i.io, ptr %i.im, align 2, !tbaa !526
  %i.ip = getelementptr inbounds nuw i8, ptr %.1366, i64 12
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %i.k ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !526
  store i16 %i.ir, ptr %i.ip, align 2, !tbaa !526
  %i.is = getelementptr inbounds nuw i8, ptr %.1366, i64 14
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.iq, i64 %i.k ; 2 uses
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !526
  store i16 %i.iu, ptr %i.is, align 2, !tbaa !526
  %i.iv = getelementptr inbounds nuw i8, ptr %.1366, i64 16 ; 3 uses
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.it, i64 %i.k ; 2 uses
  %niter186.next.7 = add nuw nsw i32 %niter186, 8 ; 2 uses
  %niter186.ncmp.7 = icmp eq i32 %niter186.next.7, %unroll_iter185
  br i1 %niter186.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph69, !llvm.loop !823

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph69
  br i1 %lcmp.mod182.not, label %.loopexit, label %.lr.ph69.epil.preheader

.lr.ph69.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph69.preheader
  %.267.epil.init = phi ptr [ %i.hm, %.lr.ph69.preheader ], [ %i.iw, %.loopexit.loopexit.unr-lcssa ]
  %.1366.epil.init = phi ptr [ %.1072, %.lr.ph69.preheader ], [ %i.iv, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod184)
  br label %.lr.ph69.epil

.lr.ph69.epil:                                    ; preds = %.lr.ph69.epil, %.lr.ph69.epil.preheader
  %.267.epil = phi ptr [ %i.iz, %.lr.ph69.epil ], [ %.267.epil.init, %.lr.ph69.epil.preheader ] ; 2 uses
  %.1366.epil = phi ptr [ %i.iy, %.lr.ph69.epil ], [ %.1366.epil.init, %.lr.ph69.epil.preheader ] ; 2 uses
  %epil.iter181 = phi i32 [ %epil.iter181.next, %.lr.ph69.epil ], [ 0, %.lr.ph69.epil.preheader ]
  %i.ix = load i16, ptr %.267.epil, align 2, !tbaa !526
  store i16 %i.ix, ptr %.1366.epil, align 2, !tbaa !526
  %i.iy = getelementptr inbounds nuw i8, ptr %.1366.epil, i64 2 ; 2 uses
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %.267.epil, i64 %i.k
  %epil.iter181.next = add i32 %epil.iter181, 1   ; 2 uses
  %epil.iter181.cmp.not = icmp eq i32 %epil.iter181.next, %xtraiter180
  br i1 %epil.iter181.cmp.not, label %.loopexit, label %.lr.ph69.epil, !llvm.loop !824

.loopexit.loopexit148.unr-lcssa:                  ; preds = %.lr.ph63
  br i1 %lcmp.mod175.not, label %.loopexit, label %.lr.ph63.epil.preheader

.lr.ph63.epil.preheader:                          ; preds = %.loopexit.loopexit148.unr-lcssa, %.lr.ph63.preheader
  %.011661.epil.init = phi ptr [ %i.hm, %.lr.ph63.preheader ], [ %i.hy, %.loopexit.loopexit148.unr-lcssa ]
  %.1160.epil.init = phi ptr [ %.1072, %.lr.ph63.preheader ], [ %i.hx, %.loopexit.loopexit148.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph63.epil

.lr.ph63.epil:                                    ; preds = %.lr.ph63.epil, %.lr.ph63.epil.preheader
  %.011661.epil = phi ptr [ %i.jc, %.lr.ph63.epil ], [ %.011661.epil.init, %.lr.ph63.epil.preheader ] ; 2 uses
  %.1160.epil = phi ptr [ %i.jb, %.lr.ph63.epil ], [ %.1160.epil.init, %.lr.ph63.epil.preheader ] ; 2 uses
  %epil.iter174 = phi i32 [ %epil.iter174.next, %.lr.ph63.epil ], [ 0, %.lr.ph63.epil.preheader ]
  %i.ja = load i64, ptr %.011661.epil, align 1, !tbaa !113
  store i64 %i.ja, ptr %.1160.epil, align 1, !tbaa !113
  %i.jb = getelementptr inbounds nuw i8, ptr %.1160.epil, i64 8 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.011661.epil, i64 %.idx
  %epil.iter174.next = add i32 %epil.iter174, 1   ; 2 uses
  %epil.iter174.cmp.not = icmp eq i32 %epil.iter174.next, %xtraiter173
  br i1 %epil.iter174.cmp.not, label %.loopexit, label %.lr.ph63.epil, !llvm.loop !825

.loopexit:                                        ; preds = %.loopexit.loopexit148.unr-lcssa, %.lr.ph63.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph69.epil, %.loopexit2
  %.14 = phi ptr [ %.1072, %.loopexit2 ], [ %i.iy, %.lr.ph69.epil ], [ %i.iv, %.loopexit.loopexit.unr-lcssa ], [ %i.hx, %.loopexit.loopexit148.unr-lcssa ], [ %i.jb, %.lr.ph63.epil ]
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count
  br i1 %exitcond117.not, label %._crit_edge, label %bb.d, !llvm.loop !826

._crit_edge:                                      ; preds = %.loopexit, %.preheader3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly captures(none) %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85
  %i.c = icmp eq i32 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sext i32 %i.g to i64
  %i.i = select i1 %i.c, i64 %i.e, i64 %i.h       ; 19 uses
  %i.j = icmp sgt i32 %2, 3
  br i1 %i.j, label %.lr.ph32, label %.preheader1

.lr.ph32:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !60   ; 3 uses
  %i.m = mul i32 %i.l, %3
  %i.n = sext i32 %i.m to i64                     ; 4 uses
  %i.o = icmp ne i32 %i.l, 4                      ; 2 uses
  %i.p = icmp slt i32 %4, 1                       ; 2 uses
  %i.q = icmp eq i32 %i.l, 1
  %.idx = shl i64 %i.i, 2
  %.idx124 = mul i64 %i.i, 6
  %i.r = icmp sgt i32 %4, 3
  br i1 %i.q, label %.lr.ph32.split.us.preheader, label %.lr.ph32.split

.lr.ph32.split.us.preheader:                      ; preds = %.lr.ph32
  %i.s = and i32 %4, -4
  %i.t = sext i32 %1 to i64                       ; 2 uses
  %i.u = zext nneg i32 %2 to i64
  %brmerge = or i1 %i.o, %i.p
  %i.v = mul i64 %i.i, %i.t
  %i.w = mul i64 %i.v, -2
  %i.x = shl nsw i64 %i.n, 1
  %i.y = sub i64 %i.w, %i.x
  %i.z = mul i64 %i.i, -8
  %i.aa = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check192 = icmp ult i32 %4, 6
  %n.vec194 = and i64 %i.aa, 2147483644           ; 4 uses
  %i.ab = shl nuw nsw i64 %n.vec194, 3            ; 2 uses
  %i.ac = trunc nuw nsw i64 %n.vec194 to i32
  %cmp.n203 = icmp eq i64 %n.vec194, %i.aa
  br label %.lr.ph32.split.us

.lr.ph32.split.us:                                ; preds = %.lr.ph32.split.us.preheader, %.loopexit.us
  %indvar188 = phi i64 [ 0, %.lr.ph32.split.us.preheader ], [ %indvar.next189, %.loopexit.us ] ; 2 uses
  %indvars.iv100 = phi i64 [ 0, %.lr.ph32.split.us.preheader ], [ %indvars.iv.next101, %.loopexit.us ] ; 2 uses
  %.010731.us = phi ptr [ %.0.val, %.lr.ph32.split.us.preheader ], [ %.4.lcssa.us, %.loopexit.us ] ; 6 uses
  %.010731.us187 = ptrtoaddr ptr %.010731.us to i64
  %i.ad = mul i64 %i.z, %indvar188
  %i.ae = add i64 %i.y, %i.ad
  %i.af = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = add nsw i64 %indvars.iv100, %i.t
  %i.ai = mul i64 %i.i, %i.ah
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ai
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.n ; 5 uses
  br i1 %brmerge, label %.loopexit4.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph32.split.us
  br i1 %min.iters.check192, label %.lr.ph.us.preheader295, label %vector.memcheck186

vector.memcheck186:                               ; preds = %.lr.ph.us.preheader
  %i.al = add i64 %i.ae, %.010731.us187
  %i.am = sub i64 %i.ag, %i.al
  %diff.check190 = icmp ugt i64 %i.am, -32
  br i1 %diff.check190, label %.lr.ph.us.preheader295, label %vector.ph193

vector.ph193:                                     ; preds = %vector.memcheck186
  %i.an = getelementptr i8, ptr %.010731.us, i64 %i.ab ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ak, i64 %i.ab  ; 2 uses
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph193
  %index196 = phi i64 [ 0, %vector.ph193 ], [ %index.next201, %vector.body195 ] ; 2 uses
  %i.ap = shl i64 %index196, 3                    ; 2 uses
  %next.gep197 = getelementptr i8, ptr %.010731.us, i64 %i.ap ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.ak, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep198, i64 16
  %wide.load199 = load <2 x i64>, ptr %next.gep198, align 1, !tbaa !113
  %wide.load200 = load <2 x i64>, ptr %i.aq, align 1, !tbaa !113
  %i.ar = getelementptr i8, ptr %next.gep197, i64 16
  store <2 x i64> %wide.load199, ptr %next.gep197, align 1, !tbaa !113
  store <2 x i64> %wide.load200, ptr %i.ar, align 1, !tbaa !113
  %index.next201 = add nuw i64 %index196, 4       ; 2 uses
  %i.as = icmp eq i64 %index.next201, %n.vec194
  br i1 %i.as, label %middle.block202, label %vector.body195, !llvm.loop !827

middle.block202:                                  ; preds = %vector.body195
  br i1 %cmp.n203, label %.loopexit4.us, label %.lr.ph.us.preheader295

.lr.ph.us.preheader295:                           ; preds = %vector.memcheck186, %.lr.ph.us.preheader, %middle.block202
  %.17.us.ph = phi ptr [ %.010731.us, %vector.memcheck186 ], [ %.010731.us, %.lr.ph.us.preheader ], [ %i.an, %middle.block202 ] ; 2 uses
  %.01116.us.ph = phi ptr [ %i.ak, %vector.memcheck186 ], [ %i.ak, %.lr.ph.us.preheader ], [ %i.ao, %middle.block202 ] ; 2 uses
  %.01155.us.ph = phi i32 [ 0, %vector.memcheck186 ], [ 0, %.lr.ph.us.preheader ], [ %i.ac, %middle.block202 ] ; 4 uses
  %i.at = sub i32 %4, %.01155.us.ph
  %xtraiter305 = and i32 %i.at, 7                 ; 2 uses
  %lcmp.mod306.not = icmp eq i32 %xtraiter305, 0
  br i1 %lcmp.mod306.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader295, %.lr.ph.us.prol
  %.17.us.prol = phi ptr [ %i.av, %.lr.ph.us.prol ], [ %.17.us.ph, %.lr.ph.us.preheader295 ] ; 2 uses
  %.01116.us.prol = phi ptr [ %i.aw, %.lr.ph.us.prol ], [ %.01116.us.ph, %.lr.ph.us.preheader295 ] ; 2 uses
  %.01155.us.prol = phi i32 [ %i.ax, %.lr.ph.us.prol ], [ %.01155.us.ph, %.lr.ph.us.preheader295 ]
  %prol.iter307 = phi i32 [ %prol.iter307.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader295 ]
  %i.au = load i64, ptr %.01116.us.prol, align 1, !tbaa !113
  store i64 %i.au, ptr %.17.us.prol, align 1, !tbaa !113
  %i.av = getelementptr inbounds nuw i8, ptr %.17.us.prol, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01116.us.prol, i64 8 ; 3 uses
  %i.ax = add nuw nsw i32 %.01155.us.prol, 1      ; 2 uses
  %prol.iter307.next = add i32 %prol.iter307, 1   ; 2 uses
  %prol.iter307.cmp.not = icmp eq i32 %prol.iter307.next, %xtraiter305
  br i1 %prol.iter307.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !828

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader295
  %.lcssa297.unr = phi ptr [ poison, %.lr.ph.us.preheader295 ], [ %i.av, %.lr.ph.us.prol ]
  %.lcssa296.unr = phi ptr [ poison, %.lr.ph.us.preheader295 ], [ %i.aw, %.lr.ph.us.prol ]
  %.17.us.unr = phi ptr [ %.17.us.ph, %.lr.ph.us.preheader295 ], [ %i.av, %.lr.ph.us.prol ]
  %.01116.us.unr = phi ptr [ %.01116.us.ph, %.lr.ph.us.preheader295 ], [ %i.aw, %.lr.ph.us.prol ]
  %.01155.us.unr = phi i32 [ %.01155.us.ph, %.lr.ph.us.preheader295 ], [ %i.ax, %.lr.ph.us.prol ]
  %i.ay = sub i32 %.01155.us.ph, %4
  %i.az = icmp ugt i32 %i.ay, -8
  br i1 %i.az, label %.loopexit4.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.17.us = phi ptr [ %i.bw, %.lr.ph.us ], [ %.17.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.01116.us = phi ptr [ %i.bx, %.lr.ph.us ], [ %.01116.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.01155.us = phi i32 [ %i.by, %.lr.ph.us ], [ %.01155.us.unr, %.lr.ph.us.prol.loopexit ]
  %i.ba = load i64, ptr %.01116.us, align 1, !tbaa !113
  store i64 %i.ba, ptr %.17.us, align 1, !tbaa !113
  %i.bb = getelementptr inbounds nuw i8, ptr %.17.us, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.01116.us, i64 8
  %i.bd = load i64, ptr %i.bc, align 1, !tbaa !113
  store i64 %i.bd, ptr %i.bb, align 1, !tbaa !113
  %i.be = getelementptr inbounds nuw i8, ptr %.17.us, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.01116.us, i64 16
  %i.bg = load i64, ptr %i.bf, align 1, !tbaa !113
  store i64 %i.bg, ptr %i.be, align 1, !tbaa !113
  %i.bh = getelementptr inbounds nuw i8, ptr %.17.us, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %.01116.us, i64 24
  %i.bj = load i64, ptr %i.bi, align 1, !tbaa !113
  store i64 %i.bj, ptr %i.bh, align 1, !tbaa !113
  %i.bk = getelementptr inbounds nuw i8, ptr %.17.us, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %.01116.us, i64 32
  %i.bm = load i64, ptr %i.bl, align 1, !tbaa !113
  store i64 %i.bm, ptr %i.bk, align 1, !tbaa !113
  %i.bn = getelementptr inbounds nuw i8, ptr %.17.us, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %.01116.us, i64 40
  %i.bp = load i64, ptr %i.bo, align 1, !tbaa !113
  store i64 %i.bp, ptr %i.bn, align 1, !tbaa !113
  %i.bq = getelementptr inbounds nuw i8, ptr %.17.us, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %.01116.us, i64 48
  %i.bs = load i64, ptr %i.br, align 1, !tbaa !113
  store i64 %i.bs, ptr %i.bq, align 1, !tbaa !113
  %i.bt = getelementptr inbounds nuw i8, ptr %.17.us, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %.01116.us, i64 56
  %i.bv = load i64, ptr %i.bu, align 1, !tbaa !113
  store i64 %i.bv, ptr %i.bt, align 1, !tbaa !113
  %i.bw = getelementptr inbounds nuw i8, ptr %.17.us, i64 64 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01116.us, i64 64 ; 2 uses
  %i.by = add nuw nsw i32 %.01155.us, 8           ; 2 uses
  %exitcond98.not.7 = icmp eq i32 %i.by, %4
  br i1 %exitcond98.not.7, label %.loopexit4.us, label %.lr.ph.us, !llvm.loop !829

.loopexit4.us:                                    ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block202, %.lr.ph32.split.us
  %.1112.us = phi ptr [ %i.ak, %.lr.ph32.split.us ], [ %i.ao, %middle.block202 ], [ %.lcssa296.unr, %.lr.ph.us.prol.loopexit ], [ %i.bx, %.lr.ph.us ] ; 5 uses
  %.2.us = phi ptr [ %.010731.us, %.lr.ph32.split.us ], [ %i.an, %middle.block202 ], [ %.lcssa297.unr, %.lr.ph.us.prol.loopexit ], [ %i.bw, %.lr.ph.us ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.1112.us, i64 %i.i ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.1112.us, i64 %.idx ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.1112.us, i64 %.idx124 ; 2 uses
  br i1 %i.r, label %.lr.ph15.us, label %.preheader2.us

.lr.ph15.us:                                      ; preds = %.loopexit4.us, %.lr.ph15.us
  %.314.us = phi ptr [ %i.cv, %.lr.ph15.us ], [ %.2.us, %.loopexit4.us ] ; 3 uses
  %.211313.us = phi ptr [ %i.cw, %.lr.ph15.us ], [ %.1112.us, %.loopexit4.us ] ; 2 uses
  %.011612.us = phi i32 [ %i.da, %.lr.ph15.us ], [ 0, %.loopexit4.us ]
  %.011811.us = phi ptr [ %i.cz, %.lr.ph15.us ], [ %i.cb, %.loopexit4.us ] ; 2 uses
  %.012010.us = phi ptr [ %i.cy, %.lr.ph15.us ], [ %i.ca, %.loopexit4.us ] ; 2 uses
  %.01229.us = phi ptr [ %i.cx, %.lr.ph15.us ], [ %i.bz, %.loopexit4.us ] ; 2 uses
  %i.cc = load i64, ptr %.211313.us, align 1, !tbaa !113
  %i.cd = insertelement <2 x i64> poison, i64 %i.cc, i64 0
  %i.ce = load i64, ptr %.01229.us, align 1, !tbaa !113
  %i.cf = insertelement <2 x i64> poison, i64 %i.ce, i64 0
  %i.cg = load i64, ptr %.012010.us, align 1, !tbaa !113
  %i.ch = insertelement <2 x i64> poison, i64 %i.cg, i64 0
  %i.ci = load i64, ptr %.011811.us, align 1, !tbaa !113
  %i.cj = insertelement <2 x i64> poison, i64 %i.ci, i64 0
  %i.ck = bitcast <2 x i64> %i.cd to <8 x i16>
  %i.cl = bitcast <2 x i64> %i.cf to <8 x i16>
  %i.cm = shufflevector <8 x i16> %i.ck, <8 x i16> %i.cl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cn = bitcast <2 x i64> %i.ch to <8 x i16>
end_hunk_12
begin_hunk_13_@_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  %i.lp = load i16, ptr %i.ln, align 2, !tbaa !526
  %i.lq = getelementptr inbounds nuw i8, ptr %.754.us, i64 14
  store i16 %i.lp, ptr %i.lq, align 2, !tbaa !526
  %i.lr = getelementptr inbounds nuw i8, ptr %.754.us, i64 16 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.010655.us, i64 8
  %i.lt = getelementptr inbounds nuw i8, ptr %.010556.us, i64 8
  %i.lu = add nuw nsw i32 %.010457.us, 4          ; 2 uses
  %exitcond103.not.3 = icmp eq i32 %i.lu, %4
  br i1 %exitcond103.not.3, label %._crit_edge.us, label %scalar.ph222, !llvm.loop !859

._crit_edge.us:                                   ; preds = %scalar.ph222.prol.loopexit, %scalar.ph222, %middle.block239
  %.lcssa126 = phi ptr [ %i.kf, %middle.block239 ], [ %.lcssa293.unr, %scalar.ph222.prol.loopexit ], [ %i.lr, %scalar.ph222 ] ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 2 ; 3 uses
  %i.lv = icmp slt i64 %indvars.iv.next105, %invariant.op
  br i1 %i.lv, label %.lr.ph.us63, label %.preheader.loopexit, !llvm.loop !860

.preheader.loopexit:                              ; preds = %._crit_edge.us
  %i.lw = trunc nsw i64 %indvars.iv.next105 to i32
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph60.split.preheader, %.preheader.loopexit, %.preheader1
  %.1109.lcssa = phi i32 [ %.0108.lcssa, %.preheader1 ], [ %i.lw, %.preheader.loopexit ], [ %i.in, %.lr.ph60.split.preheader ] ; 2 uses
  %.6.lcssa = phi ptr [ %.0107.lcssa, %.preheader1 ], [ %.lcssa126, %.preheader.loopexit ], [ %.0107.lcssa, %.lr.ph60.split.preheader ]
  %i.lx = icmp slt i32 %.1109.lcssa, %2
  br i1 %i.lx, label %.lr.ph72, label %._crit_edge73.split

.lr.ph72:                                         ; preds = %.preheader
  %i.ly = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.lz = sext i32 %3 to i64                      ; 2 uses
  %invariant.gep74 = getelementptr [2 x i8], ptr %i.ly, i64 %i.lz
  %i.ma = icmp sgt i32 %4, 0
  br i1 %i.ma, label %.lr.ph.preheader, label %._crit_edge73.split

.lr.ph.preheader:                                 ; preds = %.lr.ph72
  %i.mb = ptrtoaddr ptr %i.ly to i64
  %i.mc = sext i32 %.1109.lcssa to i64            ; 2 uses
  %i.md = sext i32 %1 to i64                      ; 2 uses
  %wide.trip.count = sext i32 %2 to i64
  %i.me = add nsw i64 %i.mc, %i.md
  %i.mf = mul i64 %i.i, %i.me
  %i.mg = add i64 %i.mf, %i.lz
  %.neg = mul i64 %i.mg, -2
  %.neg283 = sub i64 %.neg, %i.mb
  %i.mh = mul i64 %i.i, -2
  %i.mi = zext nneg i32 %4 to i64                 ; 5 uses
  %min.iters.check251 = icmp ult i32 %4, 4
  %min.iters.check252 = icmp ult i32 %4, 16
  %i.mj = and i64 %i.mi, 12
  %n.vec254 = and i64 %i.mi, 2147483632           ; 5 uses
  %i.mk = trunc nuw nsw i64 %n.vec254 to i32
  %i.ml = shl nuw nsw i64 %n.vec254, 1            ; 2 uses
  %cmp.n263 = icmp eq i64 %n.vec254, %i.mi
  %min.epilog.iters.check = icmp eq i64 %i.mj, 0
  %n.vec267 = and i64 %i.mi, 2147483644           ; 4 uses
  %i.mm = trunc nuw nsw i64 %n.vec267 to i32
  %i.mn = shl nuw nsw i64 %n.vec267, 1            ; 2 uses
  %cmp.n273 = icmp eq i64 %n.vec267, %i.mi
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar247 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next248, %._crit_edge ] ; 2 uses
  %indvars.iv109 = phi i64 [ %i.mc, %.lr.ph.preheader ], [ %indvars.iv.next110, %._crit_edge ] ; 2 uses
  %.871 = phi ptr [ %.6.lcssa, %.lr.ph.preheader ], [ %.lcssa, %._crit_edge ] ; 7 uses
  %i.mo = add nsw i64 %indvars.iv109, %i.md
  %i.mp = mul i64 %i.i, %i.mo
  %gep = getelementptr [2 x i8], ptr %invariant.gep74, i64 %i.mp ; 6 uses
  br i1 %min.iters.check251, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck245

vector.memcheck245:                               ; preds = %iter.check
  %i.mq = mul i64 %i.mh, %indvar247
  %i.mr = add i64 %.neg283, %i.mq
  %.871246 = ptrtoaddr ptr %.871 to i64
  %i.ms = add i64 %i.mr, %.871246
  %i.mt = add i64 %i.ms, -1
  %diff.check249 = icmp ult i64 %i.mt, 31
  br i1 %diff.check249, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck245
  br i1 %min.iters.check252, label %vec.epilog.ph, label %vector.ph253

vector.ph253:                                     ; preds = %vector.main.loop.iter.check
  %i.mu = getelementptr i8, ptr %gep, i64 %i.ml
  %i.mv = getelementptr i8, ptr %.871, i64 %i.ml  ; 2 uses
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %vector.ph253
  %index256 = phi i64 [ 0, %vector.ph253 ], [ %index.next261, %vector.body255 ] ; 2 uses
  %i.mw = shl i64 %index256, 1                    ; 2 uses
  %next.gep257 = getelementptr i8, ptr %gep, i64 %i.mw ; 2 uses
  %next.gep258 = getelementptr i8, ptr %.871, i64 %i.mw ; 2 uses
  %i.mx = getelementptr i8, ptr %next.gep257, i64 16
  %wide.load259 = load <8 x i16>, ptr %next.gep257, align 2, !tbaa !526
  %wide.load260 = load <8 x i16>, ptr %i.mx, align 2, !tbaa !526
  %i.my = getelementptr i8, ptr %next.gep258, i64 16
  store <8 x i16> %wide.load259, ptr %next.gep258, align 2, !tbaa !526
  store <8 x i16> %wide.load260, ptr %i.my, align 2, !tbaa !526
  %index.next261 = add nuw i64 %index256, 16      ; 2 uses
  %i.mz = icmp eq i64 %index.next261, %n.vec254
  br i1 %i.mz, label %middle.block262, label %vector.body255, !llvm.loop !861

middle.block262:                                  ; preds = %vector.body255
  br i1 %cmp.n263, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block262
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !445

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec254, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.na = getelementptr i8, ptr %gep, i64 %i.mn
  %i.nb = getelementptr i8, ptr %.871, i64 %i.mn  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index268 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next272, %vec.epilog.vector.body ] ; 2 uses
  %i.nc = shl i64 %index268, 1                    ; 2 uses
  %next.gep269 = getelementptr i8, ptr %gep, i64 %i.nc
  %next.gep270 = getelementptr i8, ptr %.871, i64 %i.nc
  %wide.load271 = load <4 x i16>, ptr %next.gep269, align 2, !tbaa !526
  store <4 x i16> %wide.load271, ptr %next.gep270, align 2, !tbaa !526
  %index.next272 = add nuw i64 %index268, 4       ; 2 uses
  %i.nd = icmp eq i64 %index.next272, %n.vec267
  br i1 %i.nd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !862

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n273, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck245, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.069.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck245 ], [ %i.mk, %vec.epilog.iter.check ], [ %i.mm, %vec.epilog.middle.block ] ; 4 uses
  %.010368.ph = phi ptr [ %gep, %iter.check ], [ %gep, %vector.memcheck245 ], [ %i.mu, %vec.epilog.iter.check ], [ %i.na, %vec.epilog.middle.block ] ; 2 uses
  %.967.ph = phi ptr [ %.871, %iter.check ], [ %.871, %vector.memcheck245 ], [ %i.mv, %vec.epilog.iter.check ], [ %i.nb, %vec.epilog.middle.block ] ; 2 uses
  %i.ne = sub i32 %4, %.069.ph
  %xtraiter314 = and i32 %i.ne, 7                 ; 2 uses
  %lcmp.mod315.not = icmp eq i32 %xtraiter314, 0
  br i1 %lcmp.mod315.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.069.prol = phi i32 [ %i.ni, %vec.epilog.scalar.ph.prol ], [ %.069.ph, %vec.epilog.scalar.ph.preheader ]
  %.010368.prol = phi ptr [ %i.nh, %vec.epilog.scalar.ph.prol ], [ %.010368.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.967.prol = phi ptr [ %i.ng, %vec.epilog.scalar.ph.prol ], [ %.967.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter316 = phi i32 [ %prol.iter316.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.nf = load i16, ptr %.010368.prol, align 2, !tbaa !526
  store i16 %i.nf, ptr %.967.prol, align 2, !tbaa !526
  %i.ng = getelementptr inbounds nuw i8, ptr %.967.prol, i64 2 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.010368.prol, i64 2 ; 2 uses
  %i.ni = add nuw nsw i32 %.069.prol, 1           ; 2 uses
  %prol.iter316.next = add i32 %prol.iter316, 1   ; 2 uses
  %prol.iter316.cmp.not = icmp eq i32 %prol.iter316.next, %xtraiter314
  br i1 %prol.iter316.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !863

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa292.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ng, %vec.epilog.scalar.ph.prol ]
  %.069.unr = phi i32 [ %.069.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ni, %vec.epilog.scalar.ph.prol ]
  %.010368.unr = phi ptr [ %.010368.ph, %vec.epilog.scalar.ph.preheader ], [ %i.nh, %vec.epilog.scalar.ph.prol ]
  %.967.unr = phi ptr [ %.967.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ng, %vec.epilog.scalar.ph.prol ]
  %i.nj = sub i32 %.069.ph, %4
  %i.nk = icmp ugt i32 %i.nj, -8
  br i1 %i.nk, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.069 = phi i32 [ %i.oj, %vec.epilog.scalar.ph ], [ %.069.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.010368 = phi ptr [ %i.oi, %vec.epilog.scalar.ph ], [ %.010368.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.967 = phi ptr [ %i.oh, %vec.epilog.scalar.ph ], [ %.967.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.nl = load i16, ptr %.010368, align 2, !tbaa !526
  store i16 %i.nl, ptr %.967, align 2, !tbaa !526
  %i.nm = getelementptr inbounds nuw i8, ptr %.967, i64 2
  %i.nn = getelementptr inbounds nuw i8, ptr %.010368, i64 2
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !526
  store i16 %i.no, ptr %i.nm, align 2, !tbaa !526
  %i.np = getelementptr inbounds nuw i8, ptr %.967, i64 4
  %i.nq = getelementptr inbounds nuw i8, ptr %.010368, i64 4
  %i.nr = load i16, ptr %i.nq, align 2, !tbaa !526
  store i16 %i.nr, ptr %i.np, align 2, !tbaa !526
  %i.ns = getelementptr inbounds nuw i8, ptr %.967, i64 6
  %i.nt = getelementptr inbounds nuw i8, ptr %.010368, i64 6
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !526
  store i16 %i.nu, ptr %i.ns, align 2, !tbaa !526
  %i.nv = getelementptr inbounds nuw i8, ptr %.967, i64 8
  %i.nw = getelementptr inbounds nuw i8, ptr %.010368, i64 8
  %i.nx = load i16, ptr %i.nw, align 2, !tbaa !526
  store i16 %i.nx, ptr %i.nv, align 2, !tbaa !526
  %i.ny = getelementptr inbounds nuw i8, ptr %.967, i64 10
  %i.nz = getelementptr inbounds nuw i8, ptr %.010368, i64 10
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !526
  store i16 %i.oa, ptr %i.ny, align 2, !tbaa !526
  %i.ob = getelementptr inbounds nuw i8, ptr %.967, i64 12
  %i.oc = getelementptr inbounds nuw i8, ptr %.010368, i64 12
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !526
  store i16 %i.od, ptr %i.ob, align 2, !tbaa !526
  %i.oe = getelementptr inbounds nuw i8, ptr %.967, i64 14
  %i.of = getelementptr inbounds nuw i8, ptr %.010368, i64 14
  %i.og = load i16, ptr %i.of, align 2, !tbaa !526
  store i16 %i.og, ptr %i.oe, align 2, !tbaa !526
  %i.oh = getelementptr inbounds nuw i8, ptr %.967, i64 16 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.010368, i64 16
  %i.oj = add nuw nsw i32 %.069, 8                ; 2 uses
  %exitcond108.not.7 = icmp eq i32 %i.oj, %4
  br i1 %exitcond108.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !864

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block262
  %.lcssa = phi ptr [ %i.nb, %vec.epilog.middle.block ], [ %i.mv, %middle.block262 ], [ %.lcssa292.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.oh, %vec.epilog.scalar.ph ]
  %indvars.iv.next110 = add nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count
  %indvar.next248 = add i64 %indvar247, 1
  br i1 %exitcond112.not, label %._crit_edge73.split, label %iter.check, !llvm.loop !865

._crit_edge73.split:                              ; preds = %._crit_edge, %.lr.ph72, %.preheader
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn8Gemm_x8621create_pipeline_bf16sERKNS_6OptionE.omp_outlined.18(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not68 = icmp sgt i32 %i.k, %i.j
  br i1 %.not68, label %._crit_edge, label %.noexc42.lr.ph

.noexc42.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 656
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 700
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 720
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 672
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 220
  br label %.noexc42

.noexc42:                                         ; preds = %.noexc42.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.069 = phi i32 [ %i.k, %.noexc42.lr.ph ], [ %i.ap, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.q = load i32, ptr %3, align 4, !tbaa !45     ; 2 uses
  %i.r = sdiv i32 %.069, %i.q                     ; 2 uses
  %i.s = srem i32 %.069, %i.q                     ; 2 uses
  %i.t = load i32, ptr %4, align 4, !tbaa !45     ; 2 uses
  %i.u = mul nsw i32 %i.t, %i.r                   ; 3 uses
  %i.v = load i32, ptr %5, align 4, !tbaa !45     ; 2 uses
  %i.w = mul nsw i32 %i.v, %i.s                   ; 3 uses
  %i.x = load i32, ptr %6, align 4, !tbaa !45
  %i.y = sub nsw i32 %i.x, %i.u
  %.sroa.speculated65 = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.y) ; 2 uses
  %i.z = load i32, ptr %7, align 4, !tbaa !45
  %i.aa = sub nsw i32 %i.z, %i.w
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.v, i32 %i.aa) ; 2 uses
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !86, !noalias !866
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !18, !noalias !866
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !866
  %i.ae = sext i32 %i.r to i64
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !59, !noalias !866 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %i.aj = sext i32 %i.ab to i64
  %i.ak = sext i32 %i.s to i64
  %i.al = mul nsw i64 %i.aj, %i.ak
  %i.am = mul i64 %i.al, %i.ag
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.p, align 4, !tbaa !84
  %.not33 = icmp eq i32 %i.ao, 0
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc42
  call fastcc void @_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr %i.an, i32 noundef %i.u, i32 noundef %.sroa.speculated65, i32 noundef %i.w, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.d:                                             ; preds = %.noexc42
  call fastcc void @_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr %i.an, i32 noundef %i.u, i32 noundef %.sroa.speculated65, i32 noundef %i.w, i32 noundef %.sroa.speculated)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c
  %i.ap = add nsw i32 %.069, 1
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.069, %i.aq
  br i1 %.not.not, label %.noexc42, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly captures(none) %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 30 uses
  %i.l = icmp sgt i32 %2, 7
  br i1 %i.l, label %.lr.ph20, label %.preheader4

.lr.ph20:                                         ; preds = %bb.a
  %i.m = mul nsw i32 %i.b, %3
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = icmp eq i32 %i.b, 4                      ; 2 uses
  %.idx154 = shl i64 %i.k, 3                      ; 3 uses
  %i.p = icmp sgt i32 %4, 0                       ; 3 uses
  %i.q = icmp eq i32 %i.b, 1
  %.idx155 = shl i64 %i.k, 2
  %.idx156 = mul i64 %i.k, 6
  %.idx158 = mul i64 %i.k, 10
  %.idx159 = mul i64 %i.k, 12
  %.idx160 = mul i64 %i.k, 14
  br i1 %i.q, label %.lr.ph20.split.us.preheader, label %.lr.ph20.split

.lr.ph20.split.us.preheader:                      ; preds = %.lr.ph20
  %i.r = sext i32 %1 to i64
  %i.s = zext nneg i32 %2 to i64
  %i.t = add i32 %4, -1
  %xtraiter292 = and i32 %4, 3                    ; 3 uses
  %i.u = icmp ult i32 %i.t, 3
  %unroll_iter298 = and i32 %4, 2147483644
  %lcmp.mod294.not = icmp eq i32 %xtraiter292, 0
  %lcmp.mod297 = icmp ne i32 %xtraiter292, 0
  br label %.lr.ph20.split.us

.lr.ph20.split.us:                                ; preds = %.lr.ph20.split.us.preheader, %.loopexit6.us
  %indvars.iv105 = phi i64 [ 0, %.lr.ph20.split.us.preheader ], [ %indvars.iv.next106, %.loopexit6.us ] ; 2 uses
  %.014918.us = phi ptr [ %.0.val, %.lr.ph20.split.us.preheader ], [ %.3152.lcssa.us, %.loopexit6.us ] ; 5 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !18
  %i.w = add nsw i64 %indvars.iv105, %i.r
  %i.x = mul i64 %i.k, %i.w
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.x
  %i.z = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.n ; 4 uses
  br i1 %i.o, label %bb.b, label %.preheader5.us

bb.b:                                             ; preds = %.lr.ph20.split.us
  br i1 %i.p, label %.lr.ph.us.preheader, label %.loopexit6.us

.lr.ph.us.preheader:                              ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx154 ; 2 uses
  br i1 %i.u, label %.lr.ph.us.epil.preheader, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.014210.us = phi ptr [ %i.ay, %.lr.ph.us ], [ %i.aa, %.lr.ph.us.preheader ] ; 5 uses
  %.01439.us = phi ptr [ %i.ax, %.lr.ph.us ], [ %i.z, %.lr.ph.us.preheader ] ; 5 uses
  %.11508.us = phi ptr [ %i.aw, %.lr.ph.us ], [ %.014918.us, %.lr.ph.us.preheader ] ; 9 uses
  %niter299 = phi i32 [ %niter299.next.3, %.lr.ph.us ], [ 0, %.lr.ph.us.preheader ]
  %i.ab = load i64, ptr %.01439.us, align 1, !tbaa !113
  store i64 %i.ab, ptr %.11508.us, align 1, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %.11508.us, i64 8
  %i.ad = load i64, ptr %.014210.us, align 1, !tbaa !113
  store i64 %i.ad, ptr %i.ac, align 1, !tbaa !113
  %i.ae = getelementptr inbounds nuw i8, ptr %.11508.us, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.01439.us, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.014210.us, i64 8
  %i.ah = load i64, ptr %i.af, align 1, !tbaa !113
  store i64 %i.ah, ptr %i.ae, align 1, !tbaa !113
  %i.ai = getelementptr inbounds nuw i8, ptr %.11508.us, i64 24
  %i.aj = load i64, ptr %i.ag, align 1, !tbaa !113
  store i64 %i.aj, ptr %i.ai, align 1, !tbaa !113
  %i.ak = getelementptr inbounds nuw i8, ptr %.11508.us, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.01439.us, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.014210.us, i64 16
  %i.an = load i64, ptr %i.al, align 1, !tbaa !113
  store i64 %i.an, ptr %i.ak, align 1, !tbaa !113
  %i.ao = getelementptr inbounds nuw i8, ptr %.11508.us, i64 40
  %i.ap = load i64, ptr %i.am, align 1, !tbaa !113
  store i64 %i.ap, ptr %i.ao, align 1, !tbaa !113
  %i.aq = getelementptr inbounds nuw i8, ptr %.11508.us, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %.01439.us, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %.014210.us, i64 24
  %i.at = load i64, ptr %i.ar, align 1, !tbaa !113
  store i64 %i.at, ptr %i.aq, align 1, !tbaa !113
  %i.au = getelementptr inbounds nuw i8, ptr %.11508.us, i64 56
  %i.av = load i64, ptr %i.as, align 1, !tbaa !113
  store i64 %i.av, ptr %i.au, align 1, !tbaa !113
  %i.aw = getelementptr inbounds nuw i8, ptr %.11508.us, i64 64 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01439.us, i64 32 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.014210.us, i64 32 ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN4ncnnL16pack_B_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  %i.nr = getelementptr inbounds nuw i8, ptr %.846, i64 16 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.247, i64 4
  %i.nt = getelementptr inbounds nuw i8, ptr %.013748, i64 4
  %i.nu = getelementptr inbounds nuw i8, ptr %.013649, i64 4
  %i.nv = getelementptr inbounds nuw i8, ptr %.013550, i64 4
  %i.nw = add nuw nsw i32 %.013451, 2             ; 2 uses
  %exitcond109.not.1 = icmp eq i32 %i.nw, %4
  br i1 %exitcond109.not.1, label %.loopexit, label %.lr.ph52, !llvm.loop !902

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph52.prol.loopexit, %.lr.ph52, %middle.block196, %middle.block, %.loopexit3
  %.9 = phi ptr [ %.554, %.loopexit3 ], [ %i.nr, %.lr.ph52 ], [ %i.md, %middle.block ], [ %i.jw, %middle.block196 ], [ %.lcssa285.unr, %.lr.ph52.prol.loopexit ], [ %.lcssa284.unr, %.lr.ph.prol.loopexit ], [ %i.le, %.lr.ph ] ; 2 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 4 ; 3 uses
  %i.nx = icmp slt i64 %indvars.iv.next111, %invariant.op
  %indvar.next = add i64 %indvar, 1
  br i1 %i.nx, label %bb.d, label %.preheader1.loopexit, !llvm.loop !903

.preheader.loopexit:                              ; preds = %._crit_edge.us
  %i.ny = trunc nsw i64 %indvars.iv.next115 to i32
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph67.split.preheader, %.preheader.loopexit, %.preheader1
  %.10.lcssa = phi ptr [ %.5.lcssa, %.preheader1 ], [ %.lcssa149, %.preheader.loopexit ], [ %.5.lcssa, %.lr.ph67.split.preheader ]
  %.2148.lcssa = phi i32 [ %.1147.lcssa, %.preheader1 ], [ %i.ny, %.preheader.loopexit ], [ %i.gb, %.lr.ph67.split.preheader ] ; 2 uses
  %i.nz = icmp slt i32 %.2148.lcssa, %2
  br i1 %i.nz, label %.lr.ph79, label %._crit_edge80.split

.lr.ph79:                                         ; preds = %.preheader
  %i.oa = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ob = sext i32 %3 to i64                      ; 2 uses
  %invariant.gep81 = getelementptr [2 x i8], ptr %i.oa, i64 %i.ob
  %i.oc = icmp sgt i32 %4, 0
  br i1 %i.oc, label %.lr.ph75.preheader, label %._crit_edge80.split

.lr.ph75.preheader:                               ; preds = %.lr.ph79
  %i.od = ptrtoaddr ptr %i.oa to i64
  %i.oe = sext i32 %.2148.lcssa to i64            ; 2 uses
  %i.of = sext i32 %1 to i64                      ; 2 uses
  %wide.trip.count = sext i32 %2 to i64
  %i.og = add nsw i64 %i.oe, %i.of
  %i.oh = mul i64 %i.k, %i.og
  %i.oi = add i64 %i.oh, %i.ob
  %.neg = mul i64 %i.oi, -2
  %.neg274 = sub i64 %.neg, %i.od
  %i.oj = mul i64 %i.k, -2
  %i.ok = zext nneg i32 %4 to i64                 ; 5 uses
  %min.iters.check245 = icmp ult i32 %4, 4
  %min.iters.check246 = icmp ult i32 %4, 16
  %i.ol = and i64 %i.ok, 12
  %n.vec248 = and i64 %i.ok, 2147483632           ; 5 uses
  %i.om = trunc nuw nsw i64 %n.vec248 to i32
  %i.on = shl nuw nsw i64 %n.vec248, 1            ; 2 uses
  %cmp.n257 = icmp eq i64 %n.vec248, %i.ok
  %min.epilog.iters.check = icmp eq i64 %i.ol, 0
  %n.vec261 = and i64 %i.ok, 2147483644           ; 4 uses
  %i.oo = trunc nuw nsw i64 %n.vec261 to i32
  %i.op = shl nuw nsw i64 %n.vec261, 1            ; 2 uses
  %cmp.n267 = icmp eq i64 %n.vec261, %i.ok
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph75.preheader, %._crit_edge
  %indvar241 = phi i64 [ 0, %.lr.ph75.preheader ], [ %indvar.next242, %._crit_edge ] ; 2 uses
  %indvars.iv119 = phi i64 [ %i.oe, %.lr.ph75.preheader ], [ %indvars.iv.next120, %._crit_edge ] ; 2 uses
  %.1277 = phi ptr [ %.10.lcssa, %.lr.ph75.preheader ], [ %.lcssa, %._crit_edge ] ; 7 uses
  %i.oq = add nsw i64 %indvars.iv119, %i.of
  %i.or = mul i64 %i.k, %i.oq
  %gep = getelementptr [2 x i8], ptr %invariant.gep81, i64 %i.or ; 6 uses
  br i1 %min.iters.check245, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck239

vector.memcheck239:                               ; preds = %iter.check
  %i.os = mul i64 %i.oj, %indvar241
  %i.ot = add i64 %.neg274, %i.os
  %.1277240 = ptrtoaddr ptr %.1277 to i64
  %i.ou = add i64 %i.ot, %.1277240
  %i.ov = add i64 %i.ou, -1
  %diff.check243 = icmp ult i64 %i.ov, 31
  br i1 %diff.check243, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck239
  br i1 %min.iters.check246, label %vec.epilog.ph, label %vector.ph247

vector.ph247:                                     ; preds = %vector.main.loop.iter.check
  %i.ow = getelementptr i8, ptr %gep, i64 %i.on
  %i.ox = getelementptr i8, ptr %.1277, i64 %i.on ; 2 uses
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph247
  %index250 = phi i64 [ 0, %vector.ph247 ], [ %index.next255, %vector.body249 ] ; 2 uses
  %i.oy = shl i64 %index250, 1                    ; 2 uses
  %next.gep251 = getelementptr i8, ptr %gep, i64 %i.oy ; 2 uses
  %next.gep252 = getelementptr i8, ptr %.1277, i64 %i.oy ; 2 uses
  %i.oz = getelementptr i8, ptr %next.gep251, i64 16
  %wide.load253 = load <8 x i16>, ptr %next.gep251, align 2, !tbaa !526
  %wide.load254 = load <8 x i16>, ptr %i.oz, align 2, !tbaa !526
  %i.pa = getelementptr i8, ptr %next.gep252, i64 16
  store <8 x i16> %wide.load253, ptr %next.gep252, align 2, !tbaa !526
  store <8 x i16> %wide.load254, ptr %i.pa, align 2, !tbaa !526
  %index.next255 = add nuw i64 %index250, 16      ; 2 uses
  %i.pb = icmp eq i64 %index.next255, %n.vec248
  br i1 %i.pb, label %middle.block256, label %vector.body249, !llvm.loop !904

middle.block256:                                  ; preds = %vector.body249
  br i1 %cmp.n257, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block256
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !445

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec248, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.pc = getelementptr i8, ptr %gep, i64 %i.op
  %i.pd = getelementptr i8, ptr %.1277, i64 %i.op ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index262 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next266, %vec.epilog.vector.body ] ; 2 uses
  %i.pe = shl i64 %index262, 1                    ; 2 uses
  %next.gep263 = getelementptr i8, ptr %gep, i64 %i.pe
  %next.gep264 = getelementptr i8, ptr %.1277, i64 %i.pe
  %wide.load265 = load <4 x i16>, ptr %next.gep263, align 2, !tbaa !526
  store <4 x i16> %wide.load265, ptr %next.gep264, align 2, !tbaa !526
  %index.next266 = add nuw i64 %index262, 4       ; 2 uses
  %i.pf = icmp eq i64 %index.next266, %n.vec261
  br i1 %i.pf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !905

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n267, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck239, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.074.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck239 ], [ %i.om, %vec.epilog.iter.check ], [ %i.oo, %vec.epilog.middle.block ] ; 4 uses
  %.013073.ph = phi ptr [ %gep, %iter.check ], [ %gep, %vector.memcheck239 ], [ %i.ow, %vec.epilog.iter.check ], [ %i.pc, %vec.epilog.middle.block ] ; 2 uses
  %.1372.ph = phi ptr [ %.1277, %iter.check ], [ %.1277, %vector.memcheck239 ], [ %i.ox, %vec.epilog.iter.check ], [ %i.pd, %vec.epilog.middle.block ] ; 2 uses
  %i.pg = sub i32 %4, %.074.ph
  %xtraiter308 = and i32 %i.pg, 7                 ; 2 uses
  %lcmp.mod309.not = icmp eq i32 %xtraiter308, 0
  br i1 %lcmp.mod309.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.074.prol = phi i32 [ %i.pk, %vec.epilog.scalar.ph.prol ], [ %.074.ph, %vec.epilog.scalar.ph.preheader ]
  %.013073.prol = phi ptr [ %i.pj, %vec.epilog.scalar.ph.prol ], [ %.013073.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1372.prol = phi ptr [ %i.pi, %vec.epilog.scalar.ph.prol ], [ %.1372.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter310 = phi i32 [ %prol.iter310.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ph = load i16, ptr %.013073.prol, align 2, !tbaa !526
  store i16 %i.ph, ptr %.1372.prol, align 2, !tbaa !526
  %i.pi = getelementptr inbounds nuw i8, ptr %.1372.prol, i64 2 ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.013073.prol, i64 2 ; 2 uses
  %i.pk = add nuw nsw i32 %.074.prol, 1           ; 2 uses
  %prol.iter310.next = add i32 %prol.iter310, 1   ; 2 uses
  %prol.iter310.cmp.not = icmp eq i32 %prol.iter310.next, %xtraiter308
  br i1 %prol.iter310.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !906

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa279.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.pi, %vec.epilog.scalar.ph.prol ]
  %.074.unr = phi i32 [ %.074.ph, %vec.epilog.scalar.ph.preheader ], [ %i.pk, %vec.epilog.scalar.ph.prol ]
  %.013073.unr = phi ptr [ %.013073.ph, %vec.epilog.scalar.ph.preheader ], [ %i.pj, %vec.epilog.scalar.ph.prol ]
  %.1372.unr = phi ptr [ %.1372.ph, %vec.epilog.scalar.ph.preheader ], [ %i.pi, %vec.epilog.scalar.ph.prol ]
  %i.pl = sub i32 %.074.ph, %4
  %i.pm = icmp ugt i32 %i.pl, -8
  br i1 %i.pm, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.074 = phi i32 [ %i.ql, %vec.epilog.scalar.ph ], [ %.074.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.013073 = phi ptr [ %i.qk, %vec.epilog.scalar.ph ], [ %.013073.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.1372 = phi ptr [ %i.qj, %vec.epilog.scalar.ph ], [ %.1372.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.pn = load i16, ptr %.013073, align 2, !tbaa !526
  store i16 %i.pn, ptr %.1372, align 2, !tbaa !526
  %i.po = getelementptr inbounds nuw i8, ptr %.1372, i64 2
  %i.pp = getelementptr inbounds nuw i8, ptr %.013073, i64 2
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !526
  store i16 %i.pq, ptr %i.po, align 2, !tbaa !526
  %i.pr = getelementptr inbounds nuw i8, ptr %.1372, i64 4
  %i.ps = getelementptr inbounds nuw i8, ptr %.013073, i64 4
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !526
  store i16 %i.pt, ptr %i.pr, align 2, !tbaa !526
  %i.pu = getelementptr inbounds nuw i8, ptr %.1372, i64 6
  %i.pv = getelementptr inbounds nuw i8, ptr %.013073, i64 6
  %i.pw = load i16, ptr %i.pv, align 2, !tbaa !526
  store i16 %i.pw, ptr %i.pu, align 2, !tbaa !526
  %i.px = getelementptr inbounds nuw i8, ptr %.1372, i64 8
  %i.py = getelementptr inbounds nuw i8, ptr %.013073, i64 8
  %i.pz = load i16, ptr %i.py, align 2, !tbaa !526
  store i16 %i.pz, ptr %i.px, align 2, !tbaa !526
  %i.qa = getelementptr inbounds nuw i8, ptr %.1372, i64 10
  %i.qb = getelementptr inbounds nuw i8, ptr %.013073, i64 10
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !526
  store i16 %i.qc, ptr %i.qa, align 2, !tbaa !526
  %i.qd = getelementptr inbounds nuw i8, ptr %.1372, i64 12
  %i.qe = getelementptr inbounds nuw i8, ptr %.013073, i64 12
  %i.qf = load i16, ptr %i.qe, align 2, !tbaa !526
  store i16 %i.qf, ptr %i.qd, align 2, !tbaa !526
  %i.qg = getelementptr inbounds nuw i8, ptr %.1372, i64 14
  %i.qh = getelementptr inbounds nuw i8, ptr %.013073, i64 14
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !526
  store i16 %i.qi, ptr %i.qg, align 2, !tbaa !526
  %i.qj = getelementptr inbounds nuw i8, ptr %.1372, i64 16 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.013073, i64 16
  %i.ql = add nuw nsw i32 %.074, 8                ; 2 uses
  %exitcond118.not.7 = icmp eq i32 %i.ql, %4
  br i1 %exitcond118.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !907

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block256
  %.lcssa = phi ptr [ %i.pd, %vec.epilog.middle.block ], [ %i.ox, %middle.block256 ], [ %.lcssa279.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.qj, %vec.epilog.scalar.ph ]
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count
  %indvar.next242 = add i64 %indvar241, 1
  br i1 %exitcond122.not, label %._crit_edge80.split, label %iter.check, !llvm.loop !908

._crit_edge80.split:                              ; preds = %._crit_edge, %.lr.ph79, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly captures(none) %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 49 uses
  %i.l = icmp sgt i32 %2, 7
  br i1 %i.l, label %.lr.ph29, label %.preheader13

.lr.ph29:                                         ; preds = %bb.a
  %i.m = sext i32 %3 to i64
  %i.n = mul i64 %i.k, %i.m                       ; 2 uses
  %i.o = icmp eq i32 %i.b, 4
  %i.p = icmp sgt i32 %4, 3
  %.idx206 = shl i64 %i.k, 3
  %i.q = icmp ne i32 %i.b, 1                      ; 2 uses
  %i.r = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %i.o, label %.preheader16.us.preheader, label %.lr.ph29.split

.preheader16.us.preheader:                        ; preds = %.lr.ph29
  %i.s = sext i32 %1 to i64
  %i.t = zext nneg i32 %2 to i64
  %brmerge = or i1 %i.q, %i.r
  %i.u = add i32 %4, -1
  %xtraiter208 = and i32 %4, 7                    ; 3 uses
  %i.v = icmp ult i32 %i.u, 7
  %unroll_iter213 = and i32 %4, 2147483640
  %lcmp.mod210.not = icmp eq i32 %xtraiter208, 0
  %lcmp.mod212 = icmp ne i32 %xtraiter208, 0
  br label %.preheader16.us

.preheader16.us:                                  ; preds = %.preheader16.us.preheader, %.loopexit15.us
  %indvars.iv137 = phi i64 [ 0, %.preheader16.us.preheader ], [ %indvars.iv.next138, %.loopexit15.us ] ; 2 uses
  %.018828.us = phi ptr [ %.0.val, %.preheader16.us.preheader ], [ %.4.us, %.loopexit15.us ] ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.n
  %i.y = add nsw i64 %indvars.iv137, %i.s
  %.idx159 = shl nsw i64 %i.y, 3
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %.idx159 ; 2 uses
  br i1 %i.p, label %.lr.ph.us, label %.loopexit17.us

.lr.ph.us:                                        ; preds = %.preheader16.us, %.lr.ph.us
  %.118920.us = phi ptr [ %i.cc, %.lr.ph.us ], [ %.018828.us, %.preheader16.us ] ; 5 uses
  %.019519.us = phi ptr [ %i.cd, %.lr.ph.us ], [ %i.z, %.preheader16.us ] ; 9 uses
  %.019818.us = phi i32 [ %i.ce, %.lr.ph.us ], [ 0, %.preheader16.us ]
  %i.aa = load i64, ptr %.019519.us, align 1, !tbaa !113
  %i.ab = insertelement <2 x i64> poison, i64 %i.aa, i64 0
  %i.ac = getelementptr inbounds nuw i8, ptr %.019519.us, i64 8
  %i.ad = load i64, ptr %i.ac, align 1, !tbaa !113
  %i.ae = insertelement <2 x i64> poison, i64 %i.ad, i64 0
  %i.af = getelementptr inbounds nuw i8, ptr %.019519.us, i64 16
  %i.ag = load i64, ptr %i.af, align 1, !tbaa !113
  %i.ah = insertelement <2 x i64> poison, i64 %i.ag, i64 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.019519.us, i64 24
  %i.aj = load i64, ptr %i.ai, align 1, !tbaa !113
  %i.ak = insertelement <2 x i64> poison, i64 %i.aj, i64 0
  %i.al = getelementptr inbounds nuw i8, ptr %.019519.us, i64 32
  %i.am = load i64, ptr %i.al, align 1, !tbaa !113
  %i.an = insertelement <2 x i64> poison, i64 %i.am, i64 0
  %i.ao = getelementptr inbounds nuw i8, ptr %.019519.us, i64 40
  %i.ap = load i64, ptr %i.ao, align 1, !tbaa !113
  %i.aq = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %i.ar = getelementptr inbounds nuw i8, ptr %.019519.us, i64 48
  %i.as = load i64, ptr %i.ar, align 1, !tbaa !113
  %i.at = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %i.au = getelementptr inbounds nuw i8, ptr %.019519.us, i64 56
  %i.av = load i64, ptr %i.au, align 1, !tbaa !113
  %i.aw = insertelement <2 x i64> poison, i64 %i.av, i64 0
  %i.ax = bitcast <2 x i64> %i.ab to <8 x i16>
  %i.ay = bitcast <2 x i64> %i.ae to <8 x i16>
  %i.az = shufflevector <8 x i16> %i.ax, <8 x i16> %i.ay, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ba = bitcast <2 x i64> %i.ah to <8 x i16>
  %i.bb = bitcast <2 x i64> %i.ak to <8 x i16>
  %i.bc = shufflevector <8 x i16> %i.ba, <8 x i16> %i.bb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bd = bitcast <2 x i64> %i.an to <8 x i16>
  %i.be = bitcast <2 x i64> %i.aq to <8 x i16>
  %i.bf = shufflevector <8 x i16> %i.bd, <8 x i16> %i.be, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bg = bitcast <2 x i64> %i.at to <8 x i16>
  %i.bh = bitcast <2 x i64> %i.aw to <8 x i16>
  %i.bi = shufflevector <8 x i16> %i.bg, <8 x i16> %i.bh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bj = bitcast <8 x i16> %i.az to <4 x i32>    ; 2 uses
  %i.bk = bitcast <8 x i16> %i.bc to <4 x i32>    ; 2 uses
  %i.bl = shufflevector <4 x i32> %i.bj, <4 x i32> %i.bk, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bm = bitcast <4 x i32> %i.bl to <2 x i64>    ; 2 uses
  %i.bn = shufflevector <4 x i32> %i.bj, <4 x i32> %i.bk, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bo = bitcast <4 x i32> %i.bn to <2 x i64>    ; 2 uses
  %i.bp = bitcast <8 x i16> %i.bf to <4 x i32>    ; 2 uses
  %i.bq = bitcast <8 x i16> %i.bi to <4 x i32>    ; 2 uses
  %i.br = shufflevector <4 x i32> %i.bp, <4 x i32> %i.bq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bs = bitcast <4 x i32> %i.br to <2 x i64>    ; 2 uses
  %i.bt = shufflevector <4 x i32> %i.bp, <4 x i32> %i.bq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bu = bitcast <4 x i32> %i.bt to <2 x i64>    ; 2 uses
  %i.bv = shufflevector <2 x i64> %i.bm, <2 x i64> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.bw = shufflevector <2 x i64> %i.bm, <2 x i64> %i.bs, <2 x i32> <i32 1, i32 3>
  %i.bx = shufflevector <2 x i64> %i.bo, <2 x i64> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.by = shufflevector <2 x i64> %i.bo, <2 x i64> %i.bu, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.bv, ptr %.118920.us, align 1, !tbaa !113
  %i.bz = getelementptr inbounds nuw i8, ptr %.118920.us, i64 16
  store <2 x i64> %i.bw, ptr %i.bz, align 1, !tbaa !113
  %i.ca = getelementptr inbounds nuw i8, ptr %.118920.us, i64 32
  store <2 x i64> %i.bx, ptr %i.ca, align 1, !tbaa !113
  %i.cb = getelementptr inbounds nuw i8, ptr %.118920.us, i64 48
  store <2 x i64> %i.by, ptr %i.cb, align 1, !tbaa !113
  %i.cc = getelementptr inbounds nuw i8, ptr %.118920.us, i64 64 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.019519.us, i64 %.idx206 ; 2 uses
  %i.ce = add nuw nsw i32 %.019818.us, 4          ; 2 uses
  %i.cf = or disjoint i32 %i.ce, 3
  %i.cg = icmp slt i32 %i.cf, %4
  br i1 %i.cg, label %.lr.ph.us, label %.loopexit17.us, !llvm.loop !909

.lr.ph25.us:                                      ; preds = %.lr.ph25.us.preheader, %.lr.ph25.us
  %.324.us = phi ptr [ %i.dd, %.lr.ph25.us ], [ %.1189.lcssa.us, %.lr.ph25.us.preheader ] ; 9 uses
  %.219723.us = phi ptr [ %i.de, %.lr.ph25.us ], [ %.0195.lcssa.us, %.lr.ph25.us.preheader ] ; 2 uses
  %niter214 = phi i32 [ %niter214.next.7, %.lr.ph25.us ], [ 0, %.lr.ph25.us.preheader ]
  %i.ch = load <2 x i64>, ptr %.219723.us, align 1, !tbaa !113
  store <2 x i64> %i.ch, ptr %.324.us, align 1, !tbaa !113
  %i.ci = getelementptr inbounds nuw i8, ptr %.324.us, i64 16
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.219723.us, i64 %i.k ; 2 uses
  %i.ck = load <2 x i64>, ptr %i.cj, align 1, !tbaa !113
  store <2 x i64> %i.ck, ptr %i.ci, align 1, !tbaa !113
  %i.cl = getelementptr inbounds nuw i8, ptr %.324.us, i64 32
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.k ; 2 uses
  %i.cn = load <2 x i64>, ptr %i.cm, align 1, !tbaa !113
  store <2 x i64> %i.cn, ptr %i.cl, align 1, !tbaa !113
  %i.co = getelementptr inbounds nuw i8, ptr %.324.us, i64 48
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.k ; 2 uses
  %i.cq = load <2 x i64>, ptr %i.cp, align 1, !tbaa !113
  store <2 x i64> %i.cq, ptr %i.co, align 1, !tbaa !113
  %i.cr = getelementptr inbounds nuw i8, ptr %.324.us, i64 64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.k ; 2 uses
  %i.ct = load <2 x i64>, ptr %i.cs, align 1, !tbaa !113
  store <2 x i64> %i.ct, ptr %i.cr, align 1, !tbaa !113
  %i.cu = getelementptr inbounds nuw i8, ptr %.324.us, i64 80
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.k ; 2 uses
  %i.cw = load <2 x i64>, ptr %i.cv, align 1, !tbaa !113
  store <2 x i64> %i.cw, ptr %i.cu, align 1, !tbaa !113
  %i.cx = getelementptr inbounds nuw i8, ptr %.324.us, i64 96
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.k ; 2 uses
  %i.cz = load <2 x i64>, ptr %i.cy, align 1, !tbaa !113
  store <2 x i64> %i.cz, ptr %i.cx, align 1, !tbaa !113
  %i.da = getelementptr inbounds nuw i8, ptr %.324.us, i64 112
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.k ; 2 uses
  %i.dc = load <2 x i64>, ptr %i.db, align 1, !tbaa !113
  store <2 x i64> %i.dc, ptr %i.da, align 1, !tbaa !113
  %i.dd = getelementptr inbounds nuw i8, ptr %.324.us, i64 128 ; 3 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.k ; 2 uses
  %niter214.next.7 = add nuw nsw i32 %niter214, 8 ; 2 uses
  %niter214.ncmp.7 = icmp eq i32 %niter214.next.7, %unroll_iter213
  br i1 %niter214.ncmp.7, label %.loopexit15.us.loopexit.unr-lcssa, label %.lr.ph25.us, !llvm.loop !910

.loopexit15.us.loopexit.unr-lcssa:                ; preds = %.lr.ph25.us
  br i1 %lcmp.mod210.not, label %.loopexit15.us, label %.lr.ph25.us.epil.preheader

.lr.ph25.us.epil.preheader:                       ; preds = %.loopexit15.us.loopexit.unr-lcssa, %.lr.ph25.us.preheader
  %.324.us.epil.init = phi ptr [ %.1189.lcssa.us, %.lr.ph25.us.preheader ], [ %i.dd, %.loopexit15.us.loopexit.unr-lcssa ]
  %.219723.us.epil.init = phi ptr [ %.0195.lcssa.us, %.lr.ph25.us.preheader ], [ %i.de, %.loopexit15.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod212)
  br label %.lr.ph25.us.epil

.lr.ph25.us.epil:                                 ; preds = %.lr.ph25.us.epil, %.lr.ph25.us.epil.preheader
  %.324.us.epil = phi ptr [ %i.dg, %.lr.ph25.us.epil ], [ %.324.us.epil.init, %.lr.ph25.us.epil.preheader ] ; 2 uses
  %.219723.us.epil = phi ptr [ %i.dh, %.lr.ph25.us.epil ], [ %.219723.us.epil.init, %.lr.ph25.us.epil.preheader ] ; 2 uses
  %epil.iter209 = phi i32 [ %epil.iter209.next, %.lr.ph25.us.epil ], [ 0, %.lr.ph25.us.epil.preheader ]
  %i.df = load <2 x i64>, ptr %.219723.us.epil, align 1, !tbaa !113
  store <2 x i64> %i.df, ptr %.324.us.epil, align 1, !tbaa !113
  %i.dg = getelementptr inbounds nuw i8, ptr %.324.us.epil, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %.219723.us.epil, i64 %i.k
  %epil.iter209.next = add i32 %epil.iter209, 1   ; 2 uses
  %epil.iter209.cmp.not = icmp eq i32 %epil.iter209.next, %xtraiter208
  br i1 %epil.iter209.cmp.not, label %.loopexit15.us, label %.lr.ph25.us.epil, !llvm.loop !911

.loopexit15.us:                                   ; preds = %.loopexit15.us.loopexit.unr-lcssa, %.lr.ph25.us.epil, %.loopexit17.us
  %.4.us = phi ptr [ %.1189.lcssa.us, %.loopexit17.us ], [ %i.dd, %.loopexit15.us.loopexit.unr-lcssa ], [ %i.dg, %.lr.ph25.us.epil ] ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 8 ; 3 uses
  %i.di = or disjoint i64 %indvars.iv.next138, 7
  %i.dj = icmp samesign ult i64 %i.di, %i.t
  br i1 %i.dj, label %.preheader16.us, label %.preheader13.loopexit, !llvm.loop !912

.loopexit17.us:                                   ; preds = %.lr.ph.us, %.preheader16.us
  %.0195.lcssa.us = phi ptr [ %i.z, %.preheader16.us ], [ %i.cd, %.lr.ph.us ] ; 2 uses
  %.1189.lcssa.us = phi ptr [ %.018828.us, %.preheader16.us ], [ %i.cc, %.lr.ph.us ] ; 3 uses
  br i1 %brmerge, label %.loopexit15.us, label %.lr.ph25.us.preheader

.lr.ph25.us.preheader:                            ; preds = %.loopexit17.us
end_hunk_14
begin_hunk_15_@_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  br i1 %i.gd, label %.lr.ph74.epil.preheader, label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %.lr.ph74
  %.218672 = phi ptr [ %i.le, %.lr.ph74 ], [ %i.jf, %.lr.ph74.preheader ] ; 3 uses
  %.1371 = phi ptr [ %i.ld, %.lr.ph74 ], [ %.1077, %.lr.ph74.preheader ] ; 9 uses
  %niter228 = phi i32 [ %niter228.next.3, %.lr.ph74 ], [ 0, %.lr.ph74.preheader ]
  %i.kh = load i16, ptr %.218672, align 2, !tbaa !526
  store i16 %i.kh, ptr %.1371, align 2, !tbaa !526
  %i.ki = getelementptr inbounds nuw i8, ptr %.218672, i64 2
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !526
  %i.kk = getelementptr inbounds nuw i8, ptr %.1371, i64 2
  store i16 %i.kj, ptr %i.kk, align 2, !tbaa !526
  %i.kl = getelementptr inbounds nuw i8, ptr %.1371, i64 4
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %.218672, i64 %i.k ; 3 uses
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !526
  store i16 %i.kn, ptr %i.kl, align 2, !tbaa !526
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 2
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !526
  %i.kq = getelementptr inbounds nuw i8, ptr %.1371, i64 6
  store i16 %i.kp, ptr %i.kq, align 2, !tbaa !526
  %i.kr = getelementptr inbounds nuw i8, ptr %.1371, i64 8
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %i.km, i64 %i.k ; 3 uses
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !526
  store i16 %i.kt, ptr %i.kr, align 2, !tbaa !526
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 2
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !526
  %i.kw = getelementptr inbounds nuw i8, ptr %.1371, i64 10
  store i16 %i.kv, ptr %i.kw, align 2, !tbaa !526
  %i.kx = getelementptr inbounds nuw i8, ptr %.1371, i64 12
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %i.k ; 3 uses
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !526
  store i16 %i.kz, ptr %i.kx, align 2, !tbaa !526
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 2
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !526
  %i.lc = getelementptr inbounds nuw i8, ptr %.1371, i64 14
  store i16 %i.lb, ptr %i.lc, align 2, !tbaa !526
  %i.ld = getelementptr inbounds nuw i8, ptr %.1371, i64 16 ; 3 uses
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.ky, i64 %i.k ; 2 uses
  %niter228.next.3 = add nuw nsw i32 %niter228, 4 ; 2 uses
  %niter228.ncmp.3 = icmp eq i32 %niter228.next.3, %unroll_iter227
  br i1 %niter228.ncmp.3, label %.loopexit5.loopexit.unr-lcssa, label %.lr.ph74, !llvm.loop !919

.loopexit5.loopexit.unr-lcssa:                    ; preds = %.lr.ph74
  br i1 %lcmp.mod224.not, label %.loopexit5, label %.lr.ph74.epil.preheader

.lr.ph74.epil.preheader:                          ; preds = %.loopexit5.loopexit.unr-lcssa, %.lr.ph74.preheader
  %.218672.epil.init = phi ptr [ %i.jf, %.lr.ph74.preheader ], [ %i.le, %.loopexit5.loopexit.unr-lcssa ]
  %.1371.epil.init = phi ptr [ %.1077, %.lr.ph74.preheader ], [ %i.ld, %.loopexit5.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod226)
  br label %.lr.ph74.epil

.lr.ph74.epil:                                    ; preds = %.lr.ph74.epil, %.lr.ph74.epil.preheader
  %.218672.epil = phi ptr [ %i.lk, %.lr.ph74.epil ], [ %.218672.epil.init, %.lr.ph74.epil.preheader ] ; 3 uses
  %.1371.epil = phi ptr [ %i.lj, %.lr.ph74.epil ], [ %.1371.epil.init, %.lr.ph74.epil.preheader ] ; 3 uses
  %epil.iter223 = phi i32 [ %epil.iter223.next, %.lr.ph74.epil ], [ 0, %.lr.ph74.epil.preheader ]
  %i.lf = load i16, ptr %.218672.epil, align 2, !tbaa !526
  store i16 %i.lf, ptr %.1371.epil, align 2, !tbaa !526
  %i.lg = getelementptr inbounds nuw i8, ptr %.218672.epil, i64 2
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !526
  %i.li = getelementptr inbounds nuw i8, ptr %.1371.epil, i64 2
  store i16 %i.lh, ptr %i.li, align 2, !tbaa !526
  %i.lj = getelementptr inbounds nuw i8, ptr %.1371.epil, i64 4 ; 2 uses
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %.218672.epil, i64 %i.k
  %epil.iter223.next = add i32 %epil.iter223, 1   ; 2 uses
  %epil.iter223.cmp.not = icmp eq i32 %epil.iter223.next, %xtraiter222
  br i1 %epil.iter223.cmp.not, label %.loopexit5, label %.lr.ph74.epil, !llvm.loop !920

.loopexit5:                                       ; preds = %.lr.ph68, %.loopexit5.loopexit.unr-lcssa, %.lr.ph74.epil, %.loopexit7
  %.14 = phi ptr [ %.1077, %.loopexit7 ], [ %i.lj, %.lr.ph74.epil ], [ %i.ld, %.loopexit5.loopexit.unr-lcssa ], [ %i.kc, %.lr.ph68 ] ; 2 uses
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 2 ; 3 uses
  %i.ll = icmp slt i64 %indvars.iv.next146, %invariant.op181
  br i1 %i.ll, label %bb.d, label %.preheader3.loopexit, !llvm.loop !921

bb.e:                                             ; preds = %.lr.ph94, %.loopexit
  %indvars.iv149 = phi i64 [ %i.iu, %.lr.ph94 ], [ %indvars.iv.next150, %.loopexit ] ; 2 uses
  %.1593 = phi ptr [ %.10.lcssa, %.lr.ph94 ], [ %.19, %.loopexit ] ; 5 uses
  %i.lm = load ptr, ptr %0, align 8, !tbaa !18
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %i.ip
  %i.lo = add nsw i64 %indvars.iv149, %i.iv
  %i.lp = mul nsw i64 %i.lo, %i.iw
  %i.lq = getelementptr inbounds [2 x i8], ptr %i.ln, i64 %i.lp ; 4 uses
  br i1 %brmerge110, label %.loopexit2, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %bb.e
  br i1 %i.jb, label %.lr.ph84.epil.preheader, label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %.lr.ph84
  %.018182 = phi ptr [ %i.mc, %.lr.ph84 ], [ %i.lq, %.lr.ph84.preheader ] ; 2 uses
  %.1681 = phi ptr [ %i.mb, %.lr.ph84 ], [ %.1593, %.lr.ph84.preheader ] ; 5 uses
  %niter235 = phi i32 [ %niter235.next.3, %.lr.ph84 ], [ 0, %.lr.ph84.preheader ]
  %i.lr = load i64, ptr %.018182, align 1, !tbaa !113
  store i64 %i.lr, ptr %.1681, align 1, !tbaa !113
  %i.ls = getelementptr inbounds nuw i8, ptr %.1681, i64 8
  %i.lt = getelementptr inbounds nuw i8, ptr %.018182, i64 %.idx ; 2 uses
  %i.lu = load i64, ptr %i.lt, align 1, !tbaa !113
  store i64 %i.lu, ptr %i.ls, align 1, !tbaa !113
  %i.lv = getelementptr inbounds nuw i8, ptr %.1681, i64 16
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 %.idx ; 2 uses
  %i.lx = load i64, ptr %i.lw, align 1, !tbaa !113
  store i64 %i.lx, ptr %i.lv, align 1, !tbaa !113
  %i.ly = getelementptr inbounds nuw i8, ptr %.1681, i64 24
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 %.idx ; 2 uses
  %i.ma = load i64, ptr %i.lz, align 1, !tbaa !113
  store i64 %i.ma, ptr %i.ly, align 1, !tbaa !113
  %i.mb = getelementptr inbounds nuw i8, ptr %.1681, i64 32 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 %.idx ; 2 uses
  %niter235.next.3 = add nuw nsw i32 %niter235, 4 ; 2 uses
  %niter235.ncmp.3.not = icmp eq i32 %niter235.next.3, %unroll_iter234
  br i1 %niter235.ncmp.3.not, label %.loopexit.loopexit194.unr-lcssa, label %.lr.ph84, !llvm.loop !922

.loopexit2:                                       ; preds = %bb.e
  br i1 %brmerge113, label %.loopexit, label %.lr.ph90.preheader

.lr.ph90.preheader:                               ; preds = %.loopexit2
  br i1 %i.jc, label %.lr.ph90.epil.preheader, label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %.lr.ph90
  %.288 = phi ptr [ %i.na, %.lr.ph90 ], [ %i.lq, %.lr.ph90.preheader ] ; 2 uses
  %.1887 = phi ptr [ %i.mz, %.lr.ph90 ], [ %.1593, %.lr.ph90.preheader ] ; 9 uses
  %niter242 = phi i32 [ %niter242.next.7, %.lr.ph90 ], [ 0, %.lr.ph90.preheader ]
  %i.md = load i16, ptr %.288, align 2, !tbaa !526
  store i16 %i.md, ptr %.1887, align 2, !tbaa !526
  %i.me = getelementptr inbounds nuw i8, ptr %.1887, i64 2
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %.288, i64 %i.k ; 2 uses
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !526
  store i16 %i.mg, ptr %i.me, align 2, !tbaa !526
  %i.mh = getelementptr inbounds nuw i8, ptr %.1887, i64 4
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.mf, i64 %i.k ; 2 uses
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !526
  store i16 %i.mj, ptr %i.mh, align 2, !tbaa !526
  %i.mk = getelementptr inbounds nuw i8, ptr %.1887, i64 6
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %i.k ; 2 uses
  %i.mm = load i16, ptr %i.ml, align 2, !tbaa !526
  store i16 %i.mm, ptr %i.mk, align 2, !tbaa !526
  %i.mn = getelementptr inbounds nuw i8, ptr %.1887, i64 8
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %i.k ; 2 uses
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !526
  store i16 %i.mp, ptr %i.mn, align 2, !tbaa !526
  %i.mq = getelementptr inbounds nuw i8, ptr %.1887, i64 10
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %i.k ; 2 uses
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !526
  store i16 %i.ms, ptr %i.mq, align 2, !tbaa !526
  %i.mt = getelementptr inbounds nuw i8, ptr %.1887, i64 12
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.mr, i64 %i.k ; 2 uses
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !526
  store i16 %i.mv, ptr %i.mt, align 2, !tbaa !526
  %i.mw = getelementptr inbounds nuw i8, ptr %.1887, i64 14
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %i.mu, i64 %i.k ; 2 uses
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !526
  store i16 %i.my, ptr %i.mw, align 2, !tbaa !526
  %i.mz = getelementptr inbounds nuw i8, ptr %.1887, i64 16 ; 3 uses
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %i.k ; 2 uses
  %niter242.next.7 = add nuw nsw i32 %niter242, 8 ; 2 uses
  %niter242.ncmp.7 = icmp eq i32 %niter242.next.7, %unroll_iter241
  br i1 %niter242.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph90, !llvm.loop !923

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph90
  br i1 %lcmp.mod238.not, label %.loopexit, label %.lr.ph90.epil.preheader

.lr.ph90.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph90.preheader
  %.288.epil.init = phi ptr [ %i.lq, %.lr.ph90.preheader ], [ %i.na, %.loopexit.loopexit.unr-lcssa ]
  %.1887.epil.init = phi ptr [ %.1593, %.lr.ph90.preheader ], [ %i.mz, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod240)
  br label %.lr.ph90.epil

.lr.ph90.epil:                                    ; preds = %.lr.ph90.epil, %.lr.ph90.epil.preheader
  %.288.epil = phi ptr [ %i.nd, %.lr.ph90.epil ], [ %.288.epil.init, %.lr.ph90.epil.preheader ] ; 2 uses
  %.1887.epil = phi ptr [ %i.nc, %.lr.ph90.epil ], [ %.1887.epil.init, %.lr.ph90.epil.preheader ] ; 2 uses
  %epil.iter237 = phi i32 [ %epil.iter237.next, %.lr.ph90.epil ], [ 0, %.lr.ph90.epil.preheader ]
  %i.nb = load i16, ptr %.288.epil, align 2, !tbaa !526
  store i16 %i.nb, ptr %.1887.epil, align 2, !tbaa !526
  %i.nc = getelementptr inbounds nuw i8, ptr %.1887.epil, i64 2 ; 2 uses
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %.288.epil, i64 %i.k
  %epil.iter237.next = add i32 %epil.iter237, 1   ; 2 uses
  %epil.iter237.cmp.not = icmp eq i32 %epil.iter237.next, %xtraiter236
  br i1 %epil.iter237.cmp.not, label %.loopexit, label %.lr.ph90.epil, !llvm.loop !924

.loopexit.loopexit194.unr-lcssa:                  ; preds = %.lr.ph84
  br i1 %lcmp.mod231.not, label %.loopexit, label %.lr.ph84.epil.preheader

.lr.ph84.epil.preheader:                          ; preds = %.loopexit.loopexit194.unr-lcssa, %.lr.ph84.preheader
  %.018182.epil.init = phi ptr [ %i.lq, %.lr.ph84.preheader ], [ %i.mc, %.loopexit.loopexit194.unr-lcssa ]
  %.1681.epil.init = phi ptr [ %.1593, %.lr.ph84.preheader ], [ %i.mb, %.loopexit.loopexit194.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod233)
  br label %.lr.ph84.epil

.lr.ph84.epil:                                    ; preds = %.lr.ph84.epil, %.lr.ph84.epil.preheader
  %.018182.epil = phi ptr [ %i.ng, %.lr.ph84.epil ], [ %.018182.epil.init, %.lr.ph84.epil.preheader ] ; 2 uses
  %.1681.epil = phi ptr [ %i.nf, %.lr.ph84.epil ], [ %.1681.epil.init, %.lr.ph84.epil.preheader ] ; 2 uses
  %epil.iter230 = phi i32 [ %epil.iter230.next, %.lr.ph84.epil ], [ 0, %.lr.ph84.epil.preheader ]
  %i.ne = load i64, ptr %.018182.epil, align 1, !tbaa !113
  store i64 %i.ne, ptr %.1681.epil, align 1, !tbaa !113
  %i.nf = getelementptr inbounds nuw i8, ptr %.1681.epil, i64 8 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.018182.epil, i64 %.idx
  %epil.iter230.next = add i32 %epil.iter230, 1   ; 2 uses
  %epil.iter230.cmp.not = icmp eq i32 %epil.iter230.next, %xtraiter229
  br i1 %epil.iter230.cmp.not, label %.loopexit, label %.lr.ph84.epil, !llvm.loop !925

.loopexit:                                        ; preds = %.loopexit.loopexit194.unr-lcssa, %.lr.ph84.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph90.epil, %.loopexit2
  %.19 = phi ptr [ %.1593, %.loopexit2 ], [ %i.nc, %.lr.ph90.epil ], [ %i.mz, %.loopexit.loopexit.unr-lcssa ], [ %i.mb, %.loopexit.loopexit194.unr-lcssa ], [ %i.nf, %.lr.ph84.epil ]
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count
  br i1 %exitcond152.not, label %._crit_edge, label %bb.e, !llvm.loop !926

._crit_edge:                                      ; preds = %.loopexit, %.preheader3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20gemm_AT_BT_x86_bf16sERKNS_3MatES2_S2_RS0_iiiiiffiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %18, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %19) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not162 = icmp sgt i32 %i.k, %i.j
  br i1 %.not162, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.054163 = phi i32 [ %i.k, %.lr.ph ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !45     ; 2 uses
  %i.u = sdiv i32 %.054163, %i.t
  %i.v = srem i32 %.054163, %i.t
  %i.w = load i32, ptr %4, align 4, !tbaa !45     ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.u                   ; 3 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !45     ; 2 uses
  %i.z = mul nsw i32 %i.y, %i.v                   ; 3 uses
  %i.aa = load i32, ptr %6, align 4, !tbaa !45
  %i.ab = sub nsw i32 %i.aa, %i.x
  %.sroa.speculated158 = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 2 uses
  %i.ac = load i32, ptr %7, align 4, !tbaa !45
  %i.ad = sub nsw i32 %i.ac, %i.z
  %.sroa.speculated154 = call i32 @llvm.smin.i32(i32 %i.y, i32 %i.ad) ; 2 uses
  %i.ae = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc84 unwind label %bb.e

.noexc84:                                         ; preds = %bb.c
  %i.af = load ptr, ptr %8, align 8, !tbaa !18, !noalias !927
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !927
  %i.ah = sext i32 %i.ae to i64
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !59, !noalias !927
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %9, align 4, !tbaa !45    ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %_ZN4ncnn3MatD2Ev.exit58.preheader, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit58.preheader:                ; preds = %.noexc84
  %.pre = load i32, ptr %10, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit58

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit58, %.noexc84
  %i.ao = load i32, ptr %15, align 4, !tbaa !45
  %i.ap = load float, ptr %16, align 4, !tbaa !68
  %i.aq = load float, ptr %17, align 4, !tbaa !68
  %i.ar = load i32, ptr %18, align 4, !tbaa !45
  %i.as = load i32, ptr %19, align 4, !tbaa !45
  call fastcc void @_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii(ptr %i.al, ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.ao, i32 noundef %i.x, i32 noundef %.sroa.speculated158, i32 noundef %i.z, i32 noundef %.sroa.speculated154, float noundef nofpclass(nan inf) %i.ap, float noundef nofpclass(nan inf) %i.aq, i32 noundef %i.ar, i32 noundef %i.as)
  %i.at = add nsw i32 %.054163, 1
  %i.au = load i32, ptr %i.b, align 4, !tbaa !45
  %.not.not = icmp slt i32 %.054163, %i.au
  br i1 %.not.not, label %bb.c, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit58:                          ; preds = %_ZN4ncnn3MatD2Ev.exit58.preheader, %_ZN4ncnn3MatD2Ev.exit58
  %i.av = phi i32 [ %i.cc, %_ZN4ncnn3MatD2Ev.exit58 ], [ %.pre, %_ZN4ncnn3MatD2Ev.exit58.preheader ] ; 2 uses
  %i.aw = phi i32 [ %i.ce, %_ZN4ncnn3MatD2Ev.exit58 ], [ %i.am, %_ZN4ncnn3MatD2Ev.exit58.preheader ]
  %.0161 = phi i32 [ %i.cd, %_ZN4ncnn3MatD2Ev.exit58 ], [ 0, %_ZN4ncnn3MatD2Ev.exit58.preheader ] ; 4 uses
  %i.ax = sub nsw i32 %i.aw, %.0161
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.av, i32 %i.ax)
  %i.ay = load i32, ptr %4, align 4, !tbaa !45
  %i.az = sdiv i32 %i.x, %i.ay
  %i.ba = load i32, ptr %i.n, align 4, !tbaa !86, !noalias !930
  %i.bb = load ptr, ptr %11, align 8, !tbaa !18, !noalias !930
  %i.bc = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !930
  %i.bd = sext i32 %i.az to i64
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = load i64, ptr %i.p, align 8, !tbaa !59, !noalias !930 ; 2 uses
  %i.bg = mul i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg
  %i.bi = sext i32 %i.ba to i64
  %i.bj = sdiv i32 %.0161, %i.av
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = mul i64 %i.bf, %i.bi
  %i.bm = mul i64 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bm
  %i.bo = load i32, ptr %5, align 4, !tbaa !45
  %i.bp = sdiv i32 %i.z, %i.bo
  %i.bq = load i32, ptr %i.q, align 4, !tbaa !86, !noalias !933
  %i.br = load ptr, ptr %12, align 8, !tbaa !18, !noalias !933
  %i.bs = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !933
  %i.bt = sext i32 %i.bp to i64
  %i.bu = mul i64 %i.bs, %i.bt
  %i.bv = load i64, ptr %i.s, align 8, !tbaa !59, !noalias !933 ; 2 uses
  %i.bw = mul i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw
  %i.by = sext i32 %i.bq to i64
  %i.bz = mul i64 %i.bv, %i.by
  %i.ca = mul i64 %i.bz, %i.bk
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ca
  call fastcc void @_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii(ptr %i.bn, ptr %i.cb, ptr %i.al, i32 noundef %.sroa.speculated158, i32 noundef %.sroa.speculated154, i32 noundef %.0161, i32 noundef %.sroa.speculated)
  %i.cc = load i32, ptr %10, align 4, !tbaa !45   ; 2 uses
  %i.cd = add nsw i32 %i.cc, %.0161               ; 2 uses
  %i.ce = load i32, ptr %9, align 4, !tbaa !45    ; 2 uses
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %_ZN4ncnn3MatD2Ev.exit58, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !936

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #23
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii(ptr nofree readonly %.0.val, ptr nofree readonly %.0.val1, ptr nofree %.0.val3, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %0, 3
  br i1 %i.a, label %.preheader254.lr.ph, label %.preheader250

.preheader254.lr.ph:                              ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 7
  %.not515 = icmp eq i32 %2, 0                    ; 6 uses
  %i.c = icmp sgt i32 %3, 0                       ; 4 uses
  %i.d = shl nsw i32 %3, 2
  %i.e = sext i32 %i.d to i64
  %i.f = add i32 %3, -1
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = shl nuw nsw i64 %i.g, 4
  %i.i = and i32 %1, -8
  %i.j = shl nuw nsw i64 %i.g, 3
  %i.k = shl nuw nsw i64 %i.g, 2
  %i.l = add nsw i32 %1, -1                       ; 2 uses
  %i.m = shl nuw nsw i64 %i.g, 1
  br label %.preheader254

.preheader254:                                    ; preds = %.preheader254.lr.ph, %._crit_edge346
  %.0401356 = phi ptr [ %.0.val, %.preheader254.lr.ph ], [ %i.he, %._crit_edge346 ] ; 5 uses
  %.0403355 = phi ptr [ %.0.val3, %.preheader254.lr.ph ], [ %.4.lcssa, %._crit_edge346 ] ; 2 uses
  %.0406354 = phi i32 [ 0, %.preheader254.lr.ph ], [ %i.hf, %._crit_edge346 ]
  br i1 %i.b, label %.lr.ph277, label %.preheader253

.preheader250.loopexit:                           ; preds = %._crit_edge346
  %i.n = and i32 %0, 2147483644
  br label %.preheader250

.preheader250:                                    ; preds = %.preheader250.loopexit, %bb.a
  %.0406.lcssa = phi i32 [ 0, %bb.a ], [ %i.n, %.preheader250.loopexit ] ; 3 uses
  %.0403.lcssa = phi ptr [ %.0.val3, %bb.a ], [ %.4.lcssa, %.preheader250.loopexit ] ; 2 uses
  %.0401.lcssa = phi ptr [ %.0.val, %bb.a ], [ %i.he, %.preheader250.loopexit ] ; 2 uses
  %i.o = or disjoint i32 %.0406.lcssa, 1
  %i.p = icmp slt i32 %i.o, %0
  br i1 %i.p, label %.preheader249.lr.ph, label %.preheader245
end_hunk_15
