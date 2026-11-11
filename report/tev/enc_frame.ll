Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_frame?download=true
inline.NumInlined: 8030
inline.NumDeleted: 4373
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN3jxl12_GLOBAL__N_117SimplifyInvisibleEPNS_6Image3IfEERKNS_5PlaneIfEEb:bb.a
  br i1 %i.iv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.iw = fdiv float %i.iu, %.6.us.us.peel
  store float %i.iw, ptr %i.gm, align 64, !tbaa !94
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %.lr.ph.us.us
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge.split.us7.us, label %.peel.next

.peel.next:                                       ; preds = %bb.ao, %bb.bk
  %.01011.us6.us = phi i64 [ %.pre-phi, %bb.bk ], [ 1, %bb.ao ] ; 9 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %.01011.us6.us
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !94
  %i.iz = fcmp oeq float %i.iy, 0.000000e+00
  br i1 %i.iz, label %bb.ap, label %._crit_edge25

._crit_edge25:                                    ; preds = %.peel.next
  %.pre = add nuw nsw i64 %.01011.us6.us, 1
  br label %bb.bk

bb.ap:                                            ; preds = %.peel.next
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %.01011.us6.us ; 9 uses
  %i.jb = add nsw i64 %.01011.us6.us, -1          ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.jb
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !94 ; 2 uses
  %i.je = fadd float %i.jd, 0.000000e+00          ; 3 uses
  store float %i.je, ptr %i.ja, align 4, !tbaa !94
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.jb
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !94
  %i.jh = fcmp ogt float %i.jg, 0.000000e+00
  br i1 %i.jh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ji = fadd float %i.jd, %i.je                 ; 2 uses
  store float %i.ji, ptr %i.ja, align 4, !tbaa !94
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.jj = phi float [ %i.ji, %bb.aq ], [ %i.je, %bb.ap ] ; 3 uses
  %.0.us.us = phi float [ 2.000000e+00, %bb.aq ], [ 1.000000e+00, %bb.ap ] ; 3 uses
  %i.jk = add nuw nsw i64 %.01011.us6.us, 1       ; 10 uses
  %i.jl = icmp samesign ult i64 %i.jk, %i.g
  br i1 %i.jl, label %bb.as, label %bb.bc

bb.as:                                            ; preds = %bb.ar
  br i1 %.not.us.us, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.jk
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !94
  %i.jo = fadd float %i.jn, %i.jj                 ; 2 uses
  store float %i.jo, ptr %i.ja, align 4, !tbaa !94
  %i.jp = fadd float %.0.us.us, 1.000000e+00
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.jq = phi float [ %i.jo, %bb.at ], [ %i.jj, %bb.as ] ; 2 uses
  %.1.us.us = phi float [ %i.jp, %bb.at ], [ %.0.us.us, %bb.as ] ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.jk
  %i.js = load float, ptr %i.jr, align 4, !tbaa !94
  %i.jt = fcmp ogt float %i.js, 0.000000e+00
  br i1 %i.jt, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.jk
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !94
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.jv, float 2.000000e+00, float %i.jq) ; 2 uses
  store float %i.jw, ptr %i.ja, align 4, !tbaa !94
  %i.jx = fadd float %.1.us.us, 2.000000e+00
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.jy = phi float [ %i.jw, %bb.av ], [ %i.jq, %bb.au ] ; 3 uses
  %.2.us.us = phi float [ %i.jx, %bb.av ], [ %.1.us.us, %bb.au ] ; 3 uses
  br i1 %.not.us.us, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.jk
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !94
  %i.kb = fcmp ogt float %i.ka, 0.000000e+00
  br i1 %i.kb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.jk
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !94
  %i.ke = tail call float @llvm.fmuladd.f32(float %i.kd, float 2.000000e+00, float %i.jy) ; 2 uses
  store float %i.ke, ptr %i.ja, align 4, !tbaa !94
  %i.kf = fadd float %.2.us.us, 2.000000e+00
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.kg = phi float [ %i.ke, %bb.ay ], [ %i.jy, %bb.ax ], [ %i.jy, %bb.aw ] ; 3 uses
  %.3.us.us = phi float [ %i.kf, %bb.ay ], [ %.2.us.us, %bb.ax ], [ %.2.us.us, %bb.aw ] ; 3 uses
  br i1 %i.gs, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.jk
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !94
  %i.kj = fcmp ogt float %i.ki, 0.000000e+00
  br i1 %i.kj, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.jk
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !94
  %i.km = tail call float @llvm.fmuladd.f32(float %i.kl, float 2.000000e+00, float %i.kg) ; 2 uses
  store float %i.km, ptr %i.ja, align 4, !tbaa !94
  %i.kn = fadd float %.3.us.us, 2.000000e+00
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ar
  %i.ko = phi float [ %i.km, %bb.bb ], [ %i.kg, %bb.ba ], [ %i.kg, %bb.az ], [ %i.jj, %bb.ar ] ; 3 uses
  %.4.us.us = phi float [ %i.kn, %bb.bb ], [ %.3.us.us, %bb.ba ], [ %.3.us.us, %bb.az ], [ %.0.us.us, %bb.ar ] ; 3 uses
  br i1 %.not.us.us, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.01011.us6.us
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !94
  %i.kr = fcmp ogt float %i.kq, 0.000000e+00
  br i1 %i.kr, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.01011.us6.us
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !94
  %i.ku = tail call float @llvm.fmuladd.f32(float %i.kt, float 2.000000e+00, float %i.ko) ; 2 uses
  store float %i.ku, ptr %i.ja, align 4, !tbaa !94
  %i.kv = fadd float %.4.us.us, 2.000000e+00
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %i.kw = phi float [ %i.ku, %bb.be ], [ %i.ko, %bb.bd ], [ %i.ko, %bb.bc ] ; 3 uses
  %.5.us.us = phi float [ %i.kv, %bb.be ], [ %.4.us.us, %bb.bd ], [ %.4.us.us, %bb.bc ] ; 3 uses
  br i1 %i.gs, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.01011.us6.us
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !94
  %i.kz = fcmp ogt float %i.ky, 0.000000e+00
  br i1 %i.kz, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.01011.us6.us
  %i.lb = load float, ptr %i.la, align 4, !tbaa !94
  %i.lc = tail call float @llvm.fmuladd.f32(float %i.lb, float 2.000000e+00, float %i.kw) ; 2 uses
  store float %i.lc, ptr %i.ja, align 4, !tbaa !94
  %i.ld = fadd float %.5.us.us, 2.000000e+00
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.le = phi float [ %i.lc, %bb.bh ], [ %i.kw, %bb.bg ], [ %i.kw, %bb.bf ]
  %.6.us.us = phi float [ %i.ld, %bb.bh ], [ %.5.us.us, %bb.bg ], [ %.5.us.us, %bb.bf ] ; 2 uses
  %i.lf = fcmp ogt float %.6.us.us, 1.000000e+00
  br i1 %i.lf, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lg = fdiv float %i.le, %.6.us.us
  store float %i.lg, ptr %i.ja, align 4, !tbaa !94
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge25, %bb.bj, %bb.bi
  %.pre-phi = phi i64 [ %.pre, %._crit_edge25 ], [ %i.jk, %bb.bj ], [ %i.jk, %bb.bi ] ; 2 uses
  %exitcond.not = icmp eq i64 %.pre-phi, %i.g
  br i1 %exitcond.not, label %..loopexit_crit_edge.split.us7.us, label %.peel.next, !llvm.loop !1098

..loopexit_crit_edge.split.us7.us:                ; preds = %bb.bk, %bb.ao
  %exitcond17.not = icmp eq i64 %i.gr, %i.c
  br i1 %exitcond17.not, label %._crit_edge.split.us.us.split, label %bb.n, !llvm.loop !1087

._crit_edge.split.us.us.split:                    ; preds = %..loopexit_crit_edge.split.us7.us
  %i.lh = add nuw nsw i64 %.01038.us, 1           ; 2 uses
  %exitcond18.not = icmp eq i64 %i.lh, 3
  br i1 %exitcond18.not, label %.split9, label %.preheader.us, !llvm.loop !1099

.split9:                                          ; preds = %._crit_edge.split.us.us.split, %..loopexit_crit_edge.split.us.us.us.us.us.2, %.split, %bb.a
  ret void
}

declare i32 @_ZN3jxl30PadImageToBlockMultipleInPlaceEPNS_6Image3IfEEm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_ZN3jxl12_GLOBAL__N_128ComputeChromacityAdjustmentsERKNS_14CompressParamsERKNS_6Image3IfEERKNS_5RectTImEEPNS_11FrameHeaderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !352
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !82
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 3 uses
  store i32 3, ptr %i.f, align 4, !tbaa !460
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.h = load float, ptr %i.g, align 8, !tbaa !85 ; 3 uses
  %i.i = fcmp ogt float %i.h, 2.500000e+00        ; 2 uses
  %spec.store.select = select i1 %i.i, i32 4, i32 3
  %spec.select = select i1 %i.i, i32 4, i32 3
  %i.j = fcmp ogt float %i.h, 5.500000e+00        ; 2 uses
  %4 = select i1 %i.j, i32 5, i32 %spec.select
  %i.k = fcmp ogt float %i.h, 9.500000e+00
  %5 = select i1 %i.k, i32 6, i32 %4              ; 2 uses
  %spec.select56 = select i1 %i.j, i32 %5, i32 %spec.store.select
  store i32 %spec.select56, ptr %i.f, align 4, !tbaa !460
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !89
  %i.n = icmp slt i32 %i.m, 4
  br i1 %i.n, label %bb.c, label %.thread49

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !506, !noalias !1120 ; 3 uses
  %i.q = icmp ugt i64 %i.p, 1
  br i1 %i.q, label %.preheader.lr.ph.i.i, label %.thread49

.preheader.lr.ph.i.i:                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !505, !noalias !1120 ; 4 uses
  %i.t = icmp ugt i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !1120 ; 3 uses
  %i.w = load i64, ptr %2, align 8, !noalias !1120 ; 6 uses
  %invariant.op.i.i = add i64 %i.v, -1            ; 2 uses
  br i1 %i.t, label %.preheader.lr.ph.split.us.i.i, label %.thread49

.preheader.lr.ph.split.us.i.i:                    ; preds = %.preheader.lr.ph.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !342, !alias.scope !1120 ; 2 uses
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !540, !alias.scope !1120 ; 2 uses
  %i.ab = add i64 %i.s, -1                        ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.ac = icmp eq i64 %i.s, 2
  %unroll_iter = and i64 %i.ab, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod59 = trunc i64 %i.ab to i1
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.lr.ph.split.us.i.i
  %.041.us.i.i = phi i64 [ 1, %.preheader.lr.ph.split.us.i.i ], [ %i.bv, %._crit_edge.us.i.i ] ; 3 uses
  %i.ad = phi <2 x float> [ zeroinitializer, %.preheader.lr.ph.split.us.i.i ], [ %.lcssa57, %._crit_edge.us.i.i ] ; 2 uses
  %i.ae = add i64 %.041.us.i.i, %i.v
  %i.af = mul i64 %i.ae, %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.w ; 3 uses
  %.reass.us.i.i = add i64 %.041.us.i.i, %invariant.op.i.i
  %i.ai = mul i64 %.reass.us.i.i, %i.aa
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ai ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aj, i64 64) ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.w ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ag, i64 64) ]
  br i1 %i.ac, label %.epil.preheader, label %.preheader.us.i.i.new

.preheader.us.i.i.new:                            ; preds = %.preheader.us.i.i, %.preheader.us.i.i.new
  %.02137.us.i.i = phi i64 [ %i.bj, %.preheader.us.i.i.new ], [ 1, %.preheader.us.i.i ] ; 4 uses
  %i.al = phi <2 x float> [ %i.bi, %.preheader.us.i.i.new ], [ %i.ad, %.preheader.us.i.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.i.i.new ], [ 0, %.preheader.us.i.i ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.02137.us.i.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.02137.us.i.i
  %i.ao = load float, ptr %i.an, align 4, !tbaa !94, !noalias !1120
  %i.ap = getelementptr i8, ptr %i.am, i64 -4
  %i.aq = load <2 x float>, ptr %i.ap, align 4, !tbaa !94, !noalias !1120 ; 2 uses
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.as = insertelement <2 x float> %i.ar, float %i.ao, i64 1
  %i.at = fsub <2 x float> %i.aq, %i.as
  %i.au = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.at) ; 2 uses
  %i.av = fcmp olt <2 x float> %i.al, %i.au
  %i.aw = select <2 x i1> %i.av, <2 x float> %i.au, <2 x float> %i.al ; 2 uses
  %i.ax = add nuw i64 %.02137.us.i.i, 1           ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !94, !noalias !1120
  %i.bb = getelementptr i8, ptr %i.ay, i64 -4
  %i.bc = load <2 x float>, ptr %i.bb, align 4, !tbaa !94, !noalias !1120 ; 2 uses
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.be = insertelement <2 x float> %i.bd, float %i.ba, i64 1
  %i.bf = fsub <2 x float> %i.bc, %i.be
  %i.bg = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bf) ; 2 uses
  %i.bh = fcmp olt <2 x float> %i.aw, %i.bg
  %i.bi = select <2 x i1> %i.bh, <2 x float> %i.bg, <2 x float> %i.aw ; 3 uses
  %i.bj = add nuw i64 %.02137.us.i.i, 2           ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.i.unr-lcssa, label %.preheader.us.i.i.new, !llvm.loop !1111

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %.preheader.us.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.unr-lcssa, %.preheader.us.i.i
  %.02137.us.i.i.epil.init = phi i64 [ 1, %.preheader.us.i.i ], [ %i.bj, %._crit_edge.us.i.i.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x float> [ %i.ad, %.preheader.us.i.i ], [ %i.bi, %._crit_edge.us.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.02137.us.i.i.epil.init
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.02137.us.i.i.epil.init
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !94, !noalias !1120
  %i.bn = getelementptr i8, ptr %i.bk, i64 -4
  %i.bo = load <2 x float>, ptr %i.bn, align 4, !tbaa !94, !noalias !1120 ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bq = insertelement <2 x float> %i.bp, float %i.bm, i64 1
  %i.br = fsub <2 x float> %i.bo, %i.bq
  %i.bs = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.br) ; 2 uses
  %i.bt = fcmp olt <2 x float> %.epil.init, %i.bs
  %i.bu = select <2 x i1> %i.bt, <2 x float> %i.bs, <2 x float> %.epil.init
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %._crit_edge.us.i.i.unr-lcssa, %.epil.preheader
  %.lcssa57 = phi <2 x float> [ %i.bi, %._crit_edge.us.i.i.unr-lcssa ], [ %i.bu, %.epil.preheader ] ; 3 uses
  %i.bv = add nuw i64 %.041.us.i.i, 1             ; 2 uses
  %exitcond47.not.i.i = icmp eq i64 %i.bv, %i.p
  br i1 %exitcond47.not.i.i, label %.preheader.lr.ph.i6.i, label %.preheader.us.i.i, !llvm.loop !1112

.preheader.lr.ph.i6.i:                            ; preds = %._crit_edge.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !342, !alias.scope !1123 ; 2 uses
  %i.cb = load i64, ptr %i.by, align 8, !tbaa !540, !alias.scope !1123 ; 2 uses
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !342, !alias.scope !1124 ; 2 uses
  %i.cd = load i64, ptr %i.bw, align 8, !tbaa !540, !alias.scope !1124 ; 2 uses
  br label %.preheader.us.i9.i

.preheader.us.i9.i:                               ; preds = %._crit_edge.us.i13.i, %.preheader.lr.ph.i6.i
  %.04477.us.i.i = phi i64 [ 1, %.preheader.lr.ph.i6.i ], [ %i.ed, %._crit_edge.us.i13.i ] ; 3 uses
  %.06376.us.i.i = phi float [ 0.000000e+00, %.preheader.lr.ph.i6.i ], [ %.2.us.i.i, %._crit_edge.us.i13.i ]
  %i.ce = phi <2 x float> [ zeroinitializer, %.preheader.lr.ph.i6.i ], [ %i.ds, %._crit_edge.us.i13.i ]
  %i.cf = add i64 %.04477.us.i.i, %i.v            ; 2 uses
  %i.cg = mul i64 %i.cf, %i.cb
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ch, i64 64) ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.w ; 2 uses
  %i.cj = mul i64 %i.cf, %i.cd
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ck, i64 64) ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.w ; 2 uses
  %.reass.us.i10.i = add i64 %.04477.us.i.i, %invariant.op.i.i ; 2 uses
  %i.cm = mul i64 %.reass.us.i10.i, %i.cd
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cn, i64 64) ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.w
  %i.cp = mul i64 %.reass.us.i10.i, %i.cb
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cp ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cq, i64 64) ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.w
  %.pre.i.i = load float, ptr %i.cl, align 4, !tbaa !94, !noalias !1125
  %.pre86.i.i = load float, ptr %i.ci, align 4, !tbaa !94, !noalias !1125
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.preheader.us.i9.i
  %i.cs = phi float [ %.pre86.i.i, %.preheader.us.i9.i ], [ %i.cw, %bb.f ]
  %i.ct = phi float [ %.pre.i.i, %.preheader.us.i9.i ], [ %i.cy, %bb.f ] ; 2 uses
  %.071.us.i.i = phi i64 [ 1, %.preheader.us.i9.i ], [ %i.ec, %bb.f ] ; 5 uses
  %.170.us.i.i = phi float [ %.06376.us.i.i, %.preheader.us.i9.i ], [ %.2.us.i.i, %bb.f ] ; 3 uses
  %i.cu = phi <2 x float> [ %i.ce, %.preheader.us.i9.i ], [ %i.ds, %bb.f ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.071.us.i.i
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !94, !noalias !1125 ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.071.us.i.i
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !94, !noalias !1125 ; 5 uses
  %i.cz = fpext float %i.cy to double
  %i.da = fpext float %i.cw to double
  %i.db = fneg double %i.da
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.db, double 1.200000e+00, double %i.cz) ; 2 uses
  %i.dd = fsub float %i.cy, %i.cw
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.071.us.i.i
  %i.df = load float, ptr %i.de, align 4, !tbaa !94, !noalias !1125 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.071.us.i.i
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !94, !noalias !1125
  %i.di = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.df, i64 1
  %i.dk = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.dh, i64 1
  %i.dm = fsub <2 x float> %i.dj, %i.dl
  %i.dn = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fsub <2 x float> %i.do, %i.dm
  %i.dq = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dp) ; 2 uses
  %i.dr = fcmp olt <2 x float> %i.cu, %i.dq
  %i.ds = select <2 x i1> %i.dr, <2 x float> %i.dq, <2 x float> %i.cu ; 4 uses
  %i.dt = fcmp ult double %i.dc, f0xB690000000000000
  br i1 %i.dt, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.du = fptrunc nnan double %i.dc to float
  %i.dv = fsub float %i.cy, %i.ct
  %i.dw = tail call noundef float @llvm.fabs.f32(float %i.dv)
  %i.dx = fsub float %i.cy, %i.df
  %i.dy = tail call noundef float @llvm.fabs.f32(float %i.dx)
  %i.dz = fadd float %i.dw, %i.dy
  %i.ea = fmul float %i.dz, %i.du                 ; 2 uses
  %i.eb = fcmp olt float %.170.us.i.i, %i.ea
  %.sroa.speculated52.us.i.i = select i1 %i.eb, float %i.ea, float %.170.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2.us.i.i = phi float [ %.170.us.i.i, %bb.d ], [ %.sroa.speculated52.us.i.i, %bb.e ] ; 3 uses
  %i.ec = add nuw i64 %.071.us.i.i, 1             ; 2 uses
  %exitcond.not.i12.i = icmp eq i64 %i.ec, %i.s
  br i1 %exitcond.not.i12.i, label %._crit_edge.us.i13.i, label %bb.d, !llvm.loop !1116

._crit_edge.us.i13.i:                             ; preds = %bb.f
  %i.ed = add nuw i64 %.04477.us.i.i, 1           ; 2 uses
  %exitcond85.not.i.i = icmp eq i64 %i.ed, %i.p
  br i1 %exitcond85.not.i.i, label %bb.g, label %.preheader.us.i9.i, !llvm.loop !1117

bb.g:                                             ; preds = %._crit_edge.us.i13.i
  %i.ee = extractelement <2 x float> %.lcssa57, i64 0 ; 2 uses
  %i.ef = extractelement <2 x float> %.lcssa57, i64 1 ; 2 uses
  %i.eg = fcmp olt float %i.ee, %i.ef
  %.sroa.speculated28.i.i = select i1 %i.eg, float %i.ef, float %i.ee
  %i.eh = fpext float %.sroa.speculated28.i.i to double ; 3 uses
  %i.ei = fpext float %.2.us.i.i to double
  %i.ej = fcmp oge double %i.ei, 1.300000e-01     ; 3 uses
  %i.ek = extractelement <2 x float> %i.ds, i64 0 ; 2 uses
  %i.el = extractelement <2 x float> %i.ds, i64 1 ; 2 uses
  %i.em = fcmp olt float %i.ek, %i.el
  %.sroa.speculated57.i.i = select i1 %i.em, float %i.el, float %i.ek
  %i.en = fpext float %.sroa.speculated57.i.i to double ; 3 uses
  %i.eo = fcmp ult double %i.eh, 2.600000e-02
  br i1 %i.eo, label %bb.h, label %_ZNK3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment26HowMuchIsXChannelPixelizedEv.exit

bb.h:                                             ; preds = %bb.g
  %i.ep = fcmp ult double %i.eh, 2.200000e-02
  br i1 %i.ep, label %.thread49, label %_ZNK3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment26HowMuchIsXChannelPixelizedEv.exit

.thread49:                                        ; preds = %.preheader.lr.ph.i.i, %bb.c, %bb.b, %bb.h
  %.sroa.9.03855 = phi i1 [ %i.ej, %bb.h ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.preheader.lr.ph.i.i ]
  %.sroa.6.04054 = phi double [ %i.en, %bb.h ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %.preheader.lr.ph.i.i ]
  %.sroa.0.04153 = phi double [ %i.eh, %bb.h ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %.preheader.lr.ph.i.i ]
  %i.eq = fcmp oge double %.sroa.0.04153, 1.500000e-02
  %i.er = select i1 %i.eq, i32 3, i32 2
  br label %_ZNK3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment26HowMuchIsXChannelPixelizedEv.exit

_ZNK3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment26HowMuchIsXChannelPixelizedEv.exit: ; preds = %bb.g, %bb.h, %.thread49
  %.sroa.6.039 = phi double [ %i.en, %bb.h ], [ %i.en, %bb.g ], [ %.sroa.6.04054, %.thread49 ] ; 3 uses
  %.sroa.9.037 = phi i1 [ %i.ej, %bb.h ], [ %i.ej, %bb.g ], [ %.sroa.9.03855, %.thread49 ] ; 3 uses
  %.0.i = phi i32 [ 4, %bb.h ], [ 5, %bb.g ], [ %i.er, %.thread49 ]
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %5, i32 %.0.i)
  store i32 %.sroa.speculated, ptr %i.f, align 4, !tbaa !460
  %i.es = fcmp ogt double %.sroa.6.039, 3.800000e-01
  br i1 %i.es, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment26HowMuchIsXChannelPixelizedEv.exit
  %i.et = select i1 %.sroa.9.037, i32 3, i32 2
  br label %_ZNK3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment26HowMuchIsBChannelPixelizedEv.exit

bb.j:                                             ; preds = %_ZNK3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment26HowMuchIsXChannelPixelizedEv.exit
  %i.eu = fcmp ogt double %.sroa.6.039, 3.300000e-01
  br i1 %i.eu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ev = select i1 %.sroa.9.037, i32 2, i32 1
  br label %_ZNK3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment26HowMuchIsBChannelPixelizedEv.exit

bb.l:                                             ; preds = %bb.j
  %i.ew = fcmp ogt double %.sroa.6.039, 2.800000e-01
  %narrow.i = select i1 %i.ew, i1 %.sroa.9.037, i1 false
  %..i23 = zext i1 %narrow.i to i32
  br label %_ZNK3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment26HowMuchIsBChannelPixelizedEv.exit

_ZNK3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment26HowMuchIsBChannelPixelizedEv.exit: ; preds = %bb.i, %bb.k, %bb.l
  %.0.i24 = phi i32 [ %i.et, %bb.i ], [ %i.ev, %bb.k ], [ %..i23, %bb.l ]
  %i.ex = add nuw nsw i32 %.0.i24, 2
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 %i.ex, ptr %i.ey, align 8, !tbaa !461
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK3jxl12_GLOBAL__N_133PixelStatsForChromacityAdjustment26HowMuchIsBChannelPixelizedEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN3jxl12_GLOBAL__N_118ComputeNoiseParamsERKNS_14CompressParamsEbbRKNS_6Image3IfEERKNS_15FrameDimensionsEPNS_11FrameHeaderEPNS_11NoiseParamsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %0, i1 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(168) %3, i64 %.0.val, i64 %.8.val, ptr nofree noundef nonnull captures(none) %4, ptr noundef nonnull %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %"struct.jxl::NoiseParams", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load float, ptr %i.a, align 8, !tbaa !283 ; 2 uses
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN3jxl19SimulatePhotonNoiseEmmf(ptr dead_on_unwind nonnull writable sret(%"struct.jxl::NoiseParams") align 4 %6, i64 noundef %.0.val, i64 noundef %.8.val, float noundef %i.b) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !1126
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !36   ; 9 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp eq i64 %i.j, 32
  br i1 %i.k, label %.preheader.preheader, label %bb.d

.preheader.preheader:                             ; preds = %bb.c
  %i.l = load float, ptr %i.g, align 4, !tbaa !94
  store float %i.l, ptr %5, align 4, !tbaa !94
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.n, ptr %i.o, align 4, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.q, ptr %i.r, align 4, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.t = load float, ptr %i.s, align 4, !tbaa !94
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.t, ptr %i.u, align 4, !tbaa !94
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.w = load float, ptr %i.v, align 4, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  store float %i.w, ptr %i.x, align 4, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.z = load float, ptr %i.y, align 4, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %i.z, ptr %i.aa, align 4, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !94
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %i.ac, ptr %i.ad, align 4, !tbaa !94
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.af = load float, ptr %i.ae, align 4, !tbaa !94
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float %i.af, ptr %i.ag, align 4, !tbaa !94
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !352
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !465
  %i.am = and i64 %i.al, 1
  %i.an = icmp eq i64 %i.am, 0
  %or.cond = or i1 %2, %i.an
  %or.cond3 = or i1 %1, %or.cond
  br i1 %or.cond3, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load float, ptr %0, align 8, !tbaa !84
  %i.ap = fadd float %i.ao, -1.000000e+00
  %i.aq = fdiv float %i.ap, 6.000000e-01          ; 3 uses
  %i.ar = fcmp uge float %i.aq, 1.000000e+00
  %i.as = tail call float @llvm.fmuladd.f32(float %i.aq, float 7.500000e-01, float 2.500000e-01)
  %i.at = fcmp olt float %i.aq, 0.000000e+00
  %i.au = or i1 %i.at, %i.ar
  %.1 = select i1 %i.au, float 1.000000e+00, float %i.as
  %i.av = tail call i32 @_ZN3jxl17GetNoiseParameterERKNS_6Image3IfEEPNS_11NoiseParamsEf(ptr noundef nonnull align 8 dereferenceable(168) %3, ptr noundef nonnull %5, float noundef %.1) #30
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = load i64, ptr %i.ak, align 8, !tbaa !465
  %i.ay = and i64 %i.ax, -2
  store i64 %i.ay, ptr %i.ak, align 8, !tbaa !465
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.f, %bb.g, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i32 @_ZN3jxl12_GLOBAL__N_123DownsampleColorChannelsERKNS_14CompressParamsERKNS_11FrameHeaderEbPNS_6Image3IfEE(i32 %.52.val, i8 %.396.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(576) %0, i1 noundef zeroext %1, ptr noundef nonnull %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.jxl::StatusOr.374", align 8 ; 14 uses
  %4 = alloca %"class.jxl::Image3", align 8       ; 12 uses
  br i1 %1, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.b = load i32, ptr %i.a, align 4, !tbaa !470  ; 3 uses
  %i.c = icmp eq i32 %i.b, 1
  %i.d = trunc nuw i8 %.396.val to i1
  %or.cond = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !352
  %i.g = icmp eq i32 %i.f, 0
  %i.h = icmp eq i32 %i.b, 2
  %or.cond23 = and i1 %i.h, %i.g
  br i1 %or.cond23, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i32 %.52.val, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @_ZN3jxl26DownsampleImage2_IterativeEPNS_6Image3IfEE(ptr noundef nonnull %2) #30 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.j, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.l = tail call i32 @_ZN3jxl24DownsampleImage2_SharperEPNS_6Image3IfEE(ptr noundef nonnull %2) #30 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.j, label %bb.m

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.n = zext i32 %i.b to i64
  call void @_ZN3jxl15DownsampleImageERKNS_6Image3IfEEm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.374") align 8 %3, ptr noundef nonnull align 8 dereferenceable(168) %2, i64 noundef %i.n) #30
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !500  ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.r, i8 0, i64 144, i1 false), !alias.scope !1129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(172) %3, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.t = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s) #30 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.v = load i64, ptr %i.u, align 8, !tbaa !492, !noalias !1129
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !492, !alias.scope !1129
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.ab = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #30 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !492, !noalias !1129
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !492, !alias.scope !1129
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 112
end_hunk_0
