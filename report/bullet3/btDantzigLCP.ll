Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDantzigLCP?download=true
inline.NumInlined: 132
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_Z12btFactorLDLTPfS_ii:bb.a
  store float %i.hk, ptr %i.hf, align 4, !tbaa !17
  %indvars.iv.next.i345 = add nuw nsw i64 %indvars.iv.i340, 2
  %i.hl = icmp samesign ult i64 %indvars.iv.i340, %indvars.iv
  br i1 %i.hl, label %bb.c, label %_ZL11btSolveL1_1PKfPfii.exit, !llvm.loop !67

_ZL11btSolveL1_1PKfPfii.exit:                     ; preds = %._crit_edge.i344
  %i.hm = icmp samesign ugt i64 %indvars.iv, 3
  br i1 %i.hm, label %.lr.ph389, label %.preheader

.preheader:                                       ; preds = %.lr.ph389, %_ZL11btSolveL1_1PKfPfii.exit
  %.2335.in.lcssa = phi i32 [ %i.ga, %_ZL11btSolveL1_1PKfPfii.exit ], [ %.2335, %.lr.ph389 ] ; 4 uses
  %.2331.lcssa = phi ptr [ %i.ge, %_ZL11btSolveL1_1PKfPfii.exit ], [ %i.jk, %.lr.ph389 ] ; 5 uses
  %.2327.lcssa = phi ptr [ %1, %_ZL11btSolveL1_1PKfPfii.exit ], [ %i.jl, %.lr.ph389 ] ; 3 uses
  %.2.lcssa = phi float [ 0.000000e+00, %_ZL11btSolveL1_1PKfPfii.exit ], [ %i.jj, %.lr.ph389 ] ; 3 uses
  %i.hn = icmp sgt i32 %.2335.in.lcssa, 0
  br i1 %i.hn, label %.lr.ph398.preheader, label %._crit_edge399

.lr.ph398.preheader:                              ; preds = %.preheader
  %xtraiter = and i32 %.2335.in.lcssa, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph398.preheader.new, label %.lr.ph398.prol

.lr.ph398.prol:                                   ; preds = %.lr.ph398.preheader
  %i.ho = load float, ptr %.2331.lcssa, align 4, !tbaa !17 ; 2 uses
  %i.hp = load float, ptr %.2327.lcssa, align 4, !tbaa !17
  %i.hq = fmul float %i.ho, %i.hp                 ; 2 uses
  store float %i.hq, ptr %.2331.lcssa, align 4, !tbaa !17
  %i.hr = fmul float %i.ho, %i.hq
  %i.hs = fadd float %.2.lcssa, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %.2331.lcssa, i64 4
  %i.hu = getelementptr inbounds nuw i8, ptr %.2327.lcssa, i64 4
  %i.hv = add nsw i32 %.2335.in.lcssa, -1
  br label %.lr.ph398.preheader.new

.lr.ph398.preheader.new:                          ; preds = %.lr.ph398.preheader, %.lr.ph398.prol
  %.3397.unr = phi float [ %.2.lcssa, %.lr.ph398.preheader ], [ %i.hs, %.lr.ph398.prol ]
  %.3328396.unr = phi ptr [ %.2327.lcssa, %.lr.ph398.preheader ], [ %i.hu, %.lr.ph398.prol ]
  %.3332395.unr = phi ptr [ %.2331.lcssa, %.lr.ph398.preheader ], [ %i.ht, %.lr.ph398.prol ]
  %.3336394.unr = phi i32 [ %.2335.in.lcssa, %.lr.ph398.preheader ], [ %i.hv, %.lr.ph398.prol ]
  br label %.lr.ph398

.lr.ph389:                                        ; preds = %_ZL11btSolveL1_1PKfPfii.exit, %.lr.ph389
  %.2388 = phi float [ %i.jj, %.lr.ph389 ], [ 0.000000e+00, %_ZL11btSolveL1_1PKfPfii.exit ]
  %.2327387 = phi ptr [ %i.jl, %.lr.ph389 ], [ %1, %_ZL11btSolveL1_1PKfPfii.exit ] ; 7 uses
  %.2331386 = phi ptr [ %i.jk, %.lr.ph389 ], [ %i.ge, %_ZL11btSolveL1_1PKfPfii.exit ] ; 8 uses
  %.2335.in385 = phi i32 [ %.2335, %.lr.ph389 ], [ %i.ga, %_ZL11btSolveL1_1PKfPfii.exit ] ; 2 uses
  %.2335 = add nsw i32 %.2335.in385, -6           ; 2 uses
  %i.hw = load float, ptr %.2331386, align 4, !tbaa !17 ; 2 uses
  %i.hx = load float, ptr %.2327387, align 4, !tbaa !17
  %i.hy = fmul float %i.hw, %i.hx                 ; 2 uses
  store float %i.hy, ptr %.2331386, align 4, !tbaa !17
  %i.hz = fmul float %i.hw, %i.hy
  %i.ia = fadd float %.2388, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %.2331386, i64 4 ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !17 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.2327387, i64 4
  %i.ie = load float, ptr %i.id, align 4, !tbaa !17
  %i.if = fmul float %i.ic, %i.ie                 ; 2 uses
  store float %i.if, ptr %i.ib, align 4, !tbaa !17
  %i.ig = fmul float %i.ic, %i.if
  %i.ih = fadd float %i.ia, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %.2331386, i64 8 ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !17 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.2327387, i64 8
  %i.il = load float, ptr %i.ik, align 4, !tbaa !17
  %i.im = fmul float %i.ij, %i.il                 ; 2 uses
  store float %i.im, ptr %i.ii, align 4, !tbaa !17
  %i.in = fmul float %i.ij, %i.im
  %i.io = fadd float %i.ih, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %.2331386, i64 12 ; 2 uses
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !17 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.2327387, i64 12
  %i.is = load float, ptr %i.ir, align 4, !tbaa !17
  %i.it = fmul float %i.iq, %i.is                 ; 2 uses
  store float %i.it, ptr %i.ip, align 4, !tbaa !17
  %i.iu = fmul float %i.iq, %i.it
  %i.iv = fadd float %i.io, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %.2331386, i64 16 ; 2 uses
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !17 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.2327387, i64 16
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !17
  %i.ja = fmul float %i.ix, %i.iz                 ; 2 uses
  store float %i.ja, ptr %i.iw, align 4, !tbaa !17
  %i.jb = fmul float %i.ix, %i.ja
  %i.jc = fadd float %i.iv, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %.2331386, i64 20 ; 2 uses
  %i.je = load float, ptr %i.jd, align 4, !tbaa !17 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.2327387, i64 20
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !17
  %i.jh = fmul float %i.je, %i.jg                 ; 2 uses
  store float %i.jh, ptr %i.jd, align 4, !tbaa !17
  %i.ji = fmul float %i.je, %i.jh
  %i.jj = fadd float %i.jc, %i.ji                 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.2331386, i64 24 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.2327387, i64 24 ; 2 uses
  %i.jm = icmp samesign ugt i32 %.2335.in385, 11
  br i1 %i.jm, label %.lr.ph389, label %.preheader, !llvm.loop !68

.lr.ph398:                                        ; preds = %.lr.ph398, %.lr.ph398.preheader.new
  %.3397 = phi float [ %.3397.unr, %.lr.ph398.preheader.new ], [ %i.jy, %.lr.ph398 ]
  %.3328396 = phi ptr [ %.3328396.unr, %.lr.ph398.preheader.new ], [ %i.ka, %.lr.ph398 ] ; 3 uses
  %.3332395 = phi ptr [ %.3332395.unr, %.lr.ph398.preheader.new ], [ %i.jz, %.lr.ph398 ] ; 4 uses
  %.3336394 = phi i32 [ %.3336394.unr, %.lr.ph398.preheader.new ], [ %i.kb, %.lr.ph398 ] ; 2 uses
  %i.jn = load float, ptr %.3332395, align 4, !tbaa !17 ; 2 uses
  %i.jo = load float, ptr %.3328396, align 4, !tbaa !17
  %i.jp = fmul float %i.jn, %i.jo                 ; 2 uses
  store float %i.jp, ptr %.3332395, align 4, !tbaa !17
  %i.jq = fmul float %i.jn, %i.jp
  %i.jr = fadd float %.3397, %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %.3332395, i64 4 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.3328396, i64 4
  %i.ju = load float, ptr %i.js, align 4, !tbaa !17 ; 2 uses
  %i.jv = load float, ptr %i.jt, align 4, !tbaa !17
  %i.jw = fmul float %i.ju, %i.jv                 ; 2 uses
  store float %i.jw, ptr %i.js, align 4, !tbaa !17
  %i.jx = fmul float %i.ju, %i.jw
  %i.jy = fadd float %i.jr, %i.jx                 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.3332395, i64 8 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.3328396, i64 8
  %i.kb = add nsw i32 %.3336394, -2
  %i.kc = icmp sgt i32 %.3336394, 2
  br i1 %i.kc, label %.lr.ph398, label %._crit_edge399, !llvm.loop !69

._crit_edge399:                                   ; preds = %.lr.ph398, %.preheader348, %.preheader
  %.0337.lcssa448451453459 = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %.preheader348 ], [ %indvars.iv.next, %.lr.ph398 ]
  %.3332.lcssa = phi ptr [ %.2331.lcssa, %.preheader ], [ %0, %.preheader348 ], [ %i.jz, %.lr.ph398 ]
  %.3.lcssa = phi float [ %.2.lcssa, %.preheader ], [ 0.000000e+00, %.preheader348 ], [ %i.jy, %.lr.ph398 ]
  %i.kd = load float, ptr %.3332.lcssa, align 4, !tbaa !17
  %i.ke = fsub float %i.kd, %.3.lcssa
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0337.lcssa448451453459
  %i.kg = fdiv float 1.000000e+00, %i.ke
  store float %i.kg, ptr %i.kf, align 4, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge399, %._crit_edge383, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z9btSolveL1PKfPfii(ptr nofree noundef readonly %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not453 = icmp slt i32 %2, 4
  br i1 %.not453, label %.preheader424, label %.lr.ph456

.lr.ph456:                                        ; preds = %bb.a
  %i.a = add nsw i32 %2, -4
  %i.b = mul nsw i32 %3, 3
  %i.c = shl nsw i32 %3, 1
  %i.d = sext i32 %3 to i64                       ; 4 uses
  %i.e = sext i32 %i.c to i64                     ; 3 uses
  %i.f = sext i32 %i.b to i64                     ; 3 uses
  %i.g = zext nneg i32 %i.a to i64
  br label %bb.b

.preheader424.loopexit:                           ; preds = %._crit_edge
  %i.h = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader424

.preheader424:                                    ; preds = %.preheader424.loopexit, %bb.a
  %.0404.lcssa = phi i32 [ 0, %bb.a ], [ %i.h, %.preheader424.loopexit ] ; 2 uses
  %i.i = icmp slt i32 %.0404.lcssa, %2
  br i1 %i.i, label %.lr.ph477.preheader, label %._crit_edge478

.lr.ph477.preheader:                              ; preds = %.preheader424
  %i.j = zext nneg i32 %.0404.lcssa to i64
  %i.k = sext i32 %3 to i64
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph477

bb.b:                                             ; preds = %.lr.ph456, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph456 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.l = mul nsw i64 %indvars.iv, %i.d
  %i.m = getelementptr inbounds [4 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.n = icmp samesign ugt i64 %indvars.iv, 11
  %i.o = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  br i1 %i.n, label %.lr.ph, label %.preheader425

.preheader425.loopexit:                           ; preds = %.lr.ph
  %i.p = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  br label %.preheader425

.preheader425:                                    ; preds = %.preheader425.loopexit, %bb.b
  %.0410.lcssa = phi ptr [ %1, %bb.b ], [ %i.co, %.preheader425.loopexit ] ; 3 uses
  %.0406.lcssa = phi ptr [ %i.m, %bb.b ], [ %i.cn, %.preheader425.loopexit ] ; 3 uses
  %.0.in.lcssa = phi i32 [ %i.o, %bb.b ], [ %.0, %.preheader425.loopexit ] ; 3 uses
  %i.q = phi <4 x float> [ zeroinitializer, %bb.b ], [ %i.p, %.preheader425.loopexit ] ; 2 uses
  %i.r = icmp sgt i32 %.0.in.lcssa, 0
  br i1 %i.r, label %.lr.ph446, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0.in432 = phi i32 [ %.0, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %.0406431 = phi ptr [ %i.cn, %.lr.ph ], [ %i.m, %bb.b ] ; 10 uses
  %.0410430 = phi ptr [ %i.co, %.lr.ph ], [ %1, %bb.b ] ; 13 uses
  %i.s = phi <4 x float> [ %i.cm, %.lr.ph ], [ zeroinitializer, %bb.b ]
  %.0 = add nsw i32 %.0.in432, -12                ; 2 uses
  %i.t = load float, ptr %.0406431, align 4, !tbaa !17
  %i.u = load float, ptr %.0410430, align 4, !tbaa !17
  %i.v = getelementptr inbounds [4 x i8], ptr %.0406431, i64 %i.d ; 6 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !17
  %i.x = getelementptr inbounds [4 x i8], ptr %.0406431, i64 %i.e ; 6 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !17
  %i.z = getelementptr inbounds [4 x i8], ptr %.0406431, i64 %i.f ; 6 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !17
  %i.ab = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 1
  %i.ad = insertelement <4 x float> %i.ac, float %i.w, i64 2
  %i.ae = insertelement <4 x float> %i.ad, float %i.t, i64 3
  %i.af = insertelement <4 x float> poison, float %i.u, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.ag, <4 x float> %i.s)
  %4 = getelementptr inbounds nuw i8, ptr %.0406431, i64 4
  %5 = getelementptr inbounds nuw i8, ptr %.0410430, i64 4
  %6 = getelementptr i8, ptr %i.v, i64 4
  %7 = getelementptr i8, ptr %i.x, i64 4
  %8 = getelementptr i8, ptr %i.z, i64 4
  %9 = getelementptr inbounds nuw i8, ptr %.0410430, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %.0410430, i64 12
  %11 = getelementptr inbounds nuw i8, ptr %.0410430, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %.0406431, i64 20
  %13 = getelementptr inbounds nuw i8, ptr %.0410430, i64 20
  %14 = getelementptr i8, ptr %i.v, i64 20
  %15 = getelementptr i8, ptr %i.x, i64 20
  %16 = getelementptr i8, ptr %i.z, i64 20
  %17 = getelementptr inbounds nuw i8, ptr %.0410430, i64 24
  %18 = getelementptr inbounds nuw i8, ptr %.0410430, i64 28
  %19 = getelementptr inbounds nuw i8, ptr %.0410430, i64 32
  %20 = getelementptr inbounds nuw i8, ptr %.0406431, i64 36
  %21 = getelementptr inbounds nuw i8, ptr %.0410430, i64 36
  %i.ai = getelementptr i8, ptr %i.v, i64 36
  %i.aj = getelementptr i8, ptr %i.x, i64 36
  %i.ak = getelementptr i8, ptr %i.z, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %.0406431, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %.0410430, i64 40
  %i.an = getelementptr i8, ptr %i.v, i64 40
  %i.ao = getelementptr i8, ptr %i.x, i64 40
  %i.ap = getelementptr i8, ptr %i.z, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.0406431, i64 44
  %i.ar = getelementptr inbounds nuw i8, ptr %.0410430, i64 44
  %i.as = getelementptr i8, ptr %i.v, i64 44
  %i.at = getelementptr i8, ptr %i.x, i64 44
  %i.au = getelementptr i8, ptr %i.z, i64 44
  %i.av = load <4 x float>, ptr %4, align 4, !tbaa !17 ; 4 uses
  %i.aw = load <4 x float>, ptr %6, align 4, !tbaa !17 ; 4 uses
  %i.ax = load <4 x float>, ptr %7, align 4, !tbaa !17 ; 4 uses
  %i.ay = load <4 x float>, ptr %8, align 4, !tbaa !17 ; 4 uses
  %22 = load float, ptr %5, align 4, !tbaa !17
  %23 = load float, ptr %9, align 4, !tbaa !17
  %24 = load float, ptr %10, align 4, !tbaa !17
  %25 = load float, ptr %11, align 4, !tbaa !17
  %26 = load float, ptr %13, align 4, !tbaa !17
  %27 = load float, ptr %17, align 4, !tbaa !17
  %28 = load float, ptr %18, align 4, !tbaa !17
  %29 = load float, ptr %19, align 4, !tbaa !17
  %30 = load float, ptr %21, align 4, !tbaa !17
  %31 = load float, ptr %i.am, align 4, !tbaa !17
  %32 = load float, ptr %i.ar, align 4, !tbaa !17
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> %i.ax, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %33 = insertelement <4 x float> poison, float %22, i64 0
  %i.bc = shufflevector <4 x float> %33, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %i.bc, <4 x float> %i.ah)
  %i.be = shufflevector <4 x float> %i.ay, <4 x float> %i.ax, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %34 = insertelement <4 x float> poison, float %23, i64 0
  %35 = shufflevector <4 x float> %34, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %35, <4 x float> %i.bd)
  %i.bi = shufflevector <4 x float> %i.ay, <4 x float> %i.ax, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %36 = insertelement <4 x float> poison, float %24, i64 0
  %37 = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %37, <4 x float> %i.bh)
  %i.bm = shufflevector <4 x float> %i.ay, <4 x float> %i.ax, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %38 = insertelement <4 x float> poison, float %25, i64 0
  %39 = shufflevector <4 x float> %38, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> %39, <4 x float> %i.bl)
  %i.bq = load <4 x float>, ptr %12, align 4, !tbaa !17 ; 4 uses
  %i.br = load <4 x float>, ptr %14, align 4, !tbaa !17 ; 4 uses
  %i.bs = load <4 x float>, ptr %15, align 4, !tbaa !17 ; 4 uses
  %i.bt = load <4 x float>, ptr %16, align 4, !tbaa !17 ; 4 uses
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> %i.bs, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> %i.bq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %40 = insertelement <4 x float> poison, float %26, i64 0
  %41 = shufflevector <4 x float> %40, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %41, <4 x float> %i.bp)
  %i.by = shufflevector <4 x float> %i.bt, <4 x float> %i.bs, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> %i.bq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %42 = insertelement <4 x float> poison, float %27, i64 0
  %43 = shufflevector <4 x float> %42, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %43, <4 x float> %i.bx)
  %i.cc = shufflevector <4 x float> %i.bt, <4 x float> %i.bs, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> %i.bq, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %44 = insertelement <4 x float> poison, float %28, i64 0
  %45 = shufflevector <4 x float> %44, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %45, <4 x float> %i.cb)
  %i.cg = shufflevector <4 x float> %i.bt, <4 x float> %i.bs, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> %i.bq, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %46 = insertelement <4 x float> poison, float %29, i64 0
  %47 = shufflevector <4 x float> %46, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %47, <4 x float> %i.cf)
  %48 = load float, ptr %i.aq, align 4, !tbaa !17
  %49 = load float, ptr %i.al, align 4, !tbaa !17
  %50 = load float, ptr %20, align 4, !tbaa !17
  %51 = load float, ptr %i.as, align 4, !tbaa !17
  %52 = load float, ptr %i.an, align 4, !tbaa !17
  %53 = load float, ptr %i.ai, align 4, !tbaa !17
  %54 = load float, ptr %i.at, align 4, !tbaa !17
  %55 = load float, ptr %i.ao, align 4, !tbaa !17
  %56 = load float, ptr %i.aj, align 4, !tbaa !17
  %57 = load float, ptr %i.au, align 4, !tbaa !17
  %58 = load float, ptr %i.ap, align 4, !tbaa !17
  %59 = load float, ptr %i.ak, align 4, !tbaa !17
  %60 = insertelement <4 x float> poison, float %59, i64 0
  %61 = insertelement <4 x float> %60, float %56, i64 1
  %62 = insertelement <4 x float> %61, float %53, i64 2
  %63 = insertelement <4 x float> %62, float %50, i64 3
  %64 = insertelement <4 x float> poison, float %30, i64 0
  %65 = shufflevector <4 x float> %64, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %63, <4 x float> %65, <4 x float> %i.cj)
  %66 = insertelement <4 x float> poison, float %58, i64 0
  %67 = insertelement <4 x float> %66, float %55, i64 1
  %68 = insertelement <4 x float> %67, float %52, i64 2
  %69 = insertelement <4 x float> %68, float %49, i64 3
  %70 = insertelement <4 x float> poison, float %31, i64 0
  %71 = shufflevector <4 x float> %70, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %69, <4 x float> %71, <4 x float> %i.ck)
  %72 = insertelement <4 x float> poison, float %57, i64 0
  %73 = insertelement <4 x float> %72, float %54, i64 1
  %74 = insertelement <4 x float> %73, float %51, i64 2
  %75 = insertelement <4 x float> %74, float %48, i64 3
  %76 = insertelement <4 x float> poison, float %32, i64 0
  %77 = shufflevector <4 x float> %76, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %75, <4 x float> %77, <4 x float> %i.cl) ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0406431, i64 48 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0410430, i64 48 ; 2 uses
  %i.cp = icmp sgt i32 %.0.in432, 23
  br i1 %i.cp, label %.lr.ph, label %.preheader425.loopexit, !llvm.loop !70

.lr.ph446:                                        ; preds = %.preheader425, %.lr.ph446
  %.1445 = phi i32 [ %i.di, %.lr.ph446 ], [ %.0.in.lcssa, %.preheader425 ] ; 2 uses
  %.1407444 = phi ptr [ %i.dg, %.lr.ph446 ], [ %.0406.lcssa, %.preheader425 ] ; 5 uses
  %.1411443 = phi ptr [ %i.dh, %.lr.ph446 ], [ %.0410.lcssa, %.preheader425 ] ; 2 uses
  %i.cq = phi <4 x float> [ %i.df, %.lr.ph446 ], [ %i.q, %.preheader425 ]
  %i.cr = load float, ptr %.1407444, align 4, !tbaa !17
  %i.cs = load float, ptr %.1411443, align 4, !tbaa !17
  %i.ct = getelementptr inbounds [4 x i8], ptr %.1407444, i64 %i.d
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !17
  %i.cv = getelementptr inbounds [4 x i8], ptr %.1407444, i64 %i.e
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !17
  %i.cx = getelementptr inbounds [4 x i8], ptr %.1407444, i64 %i.f
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !17
  %i.cz = insertelement <4 x float> poison, float %i.cr, i64 0
  %i.da = insertelement <4 x float> %i.cz, float %i.cu, i64 1
  %i.db = insertelement <4 x float> %i.da, float %i.cw, i64 2
  %i.dc = insertelement <4 x float> %i.db, float %i.cy, i64 3
  %i.dd = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> %i.de, <4 x float> %i.cq) ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1407444, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.1411443, i64 4
  %i.di = add nsw i32 %.1445, -1
  %i.dj = icmp samesign ugt i32 %.1445, 1
  br i1 %i.dj, label %.lr.ph446, label %._crit_edge.loopexit, !llvm.loop !71

._crit_edge.loopexit:                             ; preds = %.lr.ph446
  %scevgep = getelementptr i8, ptr %.0406.lcssa, i64 4
  %i.dk = add nsw i32 %.0.in.lcssa, -1
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 2                ; 2 uses
  %scevgep496 = getelementptr i8, ptr %scevgep, i64 %i.dm
  %scevgep497 = getelementptr i8, ptr %.0410.lcssa, i64 4
  %scevgep498 = getelementptr i8, ptr %scevgep497, i64 %i.dm
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader425
  %.1411.lcssa = phi ptr [ %.0410.lcssa, %.preheader425 ], [ %scevgep498, %._crit_edge.loopexit ] ; 5 uses
  %.1407.lcssa = phi ptr [ %.0406.lcssa, %.preheader425 ], [ %scevgep496, %._crit_edge.loopexit ] ; 3 uses
  %i.dn = phi <4 x float> [ %i.q, %.preheader425 ], [ %i.df, %._crit_edge.loopexit ] ; 3 uses
  %i.do = load float, ptr %.1411.lcssa, align 4, !tbaa !17
  %i.dp = extractelement <4 x float> %i.dn, i64 0
  %i.dq = fsub float %i.do, %i.dp                 ; 4 uses
  store float %i.dq, ptr %.1411.lcssa, align 4, !tbaa !17
  %i.dr = getelementptr inbounds [4 x i8], ptr %.1407.lcssa, i64 %i.d
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !17
  %i.dt = getelementptr inbounds nuw i8, ptr %.1411.lcssa, i64 4 ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !17
  %i.dv = extractelement <4 x float> %i.dn, i64 1
  %i.dw = fsub float %i.du, %i.dv
  %i.dx = fneg float %i.ds
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.dq, float %i.dw) ; 3 uses
  store float %i.dy, ptr %i.dt, align 4, !tbaa !17
  %i.dz = getelementptr inbounds [4 x i8], ptr %.1407.lcssa, i64 %i.e ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !17
  %i.eb = getelementptr i8, ptr %i.dz, i64 4
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !17
  %i.ed = getelementptr inbounds nuw i8, ptr %.1411.lcssa, i64 8 ; 2 uses
  %i.ee = fneg float %i.ea
  %i.ef = fneg float %i.ec
  %i.eg = getelementptr inbounds [4 x i8], ptr %.1407.lcssa, i64 %i.f ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  %i.ei = getelementptr inbounds nuw i8, ptr %.1411.lcssa, i64 12
  %i.ej = load <2 x float>, ptr %i.ed, align 4, !tbaa !17
  %i.ek = shufflevector <4 x float> %i.dn, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.el = fsub <2 x float> %i.ej, %i.ek           ; 2 uses
  %i.em = extractelement <2 x float> %i.el, i64 0
  %i.en = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.dq, float %i.em)
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.dy, float %i.en) ; 2 uses
  store float %i.eo, ptr %i.ed, align 4, !tbaa !17
  %i.ep = load float, ptr %i.eg, align 4, !tbaa !17
  %i.eq = fneg float %i.ep
  %i.er = extractelement <2 x float> %i.el, i64 1
  %i.es = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.dq, float %i.er)
  %i.et = load <2 x float>, ptr %i.eh, align 4, !tbaa !17
  %i.eu = fneg <2 x float> %i.et                  ; 2 uses
  %i.ev = extractelement <2 x float> %i.eu, i64 0
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.dy, float %i.es)
  %i.ex = extractelement <2 x float> %i.eu, i64 1
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.eo, float %i.ew)
  store float %i.ey, ptr %i.ei, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.g
  br i1 %.not, label %.preheader424.loopexit, label %bb.b, !llvm.loop !72

.lr.ph477:                                        ; preds = %.lr.ph477.preheader, %._crit_edge473
  %indvars.iv502 = phi i64 [ %i.j, %.lr.ph477.preheader ], [ %indvars.iv.next503, %._crit_edge473 ] ; 4 uses
  %i.ez = mul nsw i64 %indvars.iv502, %i.k
  %i.fa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ez ; 2 uses
  %i.fb = icmp samesign ugt i64 %indvars.iv502, 11
  %i.fc = trunc nuw nsw i64 %indvars.iv502 to i32 ; 2 uses
  br i1 %i.fb, label %.lr.ph463, label %.preheader

.preheader:                                       ; preds = %.lr.ph463, %.lr.ph477
  %.2422.lcssa = phi float [ 0.000000e+00, %.lr.ph477 ], [ %i.hq, %.lr.ph463 ] ; 3 uses
  %.2412.lcssa = phi ptr [ %1, %.lr.ph477 ], [ %i.hs, %.lr.ph463 ] ; 4 uses
  %.2408.lcssa = phi ptr [ %i.fa, %.lr.ph477 ], [ %i.hr, %.lr.ph463 ] ; 2 uses
  %.2.in.lcssa = phi i32 [ %i.fc, %.lr.ph477 ], [ %.2, %.lr.ph463 ] ; 6 uses
  %i.fd = icmp sgt i32 %.2.in.lcssa, 0
  br i1 %i.fd, label %.lr.ph472.preheader, label %._crit_edge473

.lr.ph472.preheader:                              ; preds = %.preheader
  %xtraiter = and i32 %.2.in.lcssa, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph472.prol.loopexit, label %.lr.ph472.prol

.lr.ph472.prol:                                   ; preds = %.lr.ph472.preheader, %.lr.ph472.prol
  %.3471.prol = phi i32 [ %i.fj, %.lr.ph472.prol ], [ %.2.in.lcssa, %.lr.ph472.preheader ]
  %.3409470.prol = phi ptr [ %i.fh, %.lr.ph472.prol ], [ %.2408.lcssa, %.lr.ph472.preheader ] ; 2 uses
  %.3413469.prol = phi ptr [ %i.fi, %.lr.ph472.prol ], [ %.2412.lcssa, %.lr.ph472.preheader ] ; 2 uses
  %.3423468.prol = phi float [ %i.fg, %.lr.ph472.prol ], [ %.2422.lcssa, %.lr.ph472.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph472.prol ], [ 0, %.lr.ph472.preheader ]
  %i.fe = load float, ptr %.3409470.prol, align 4, !tbaa !17
  %i.ff = load float, ptr %.3413469.prol, align 4, !tbaa !17
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.ff, float %.3423468.prol) ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.3409470.prol, i64 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.3413469.prol, i64 4 ; 2 uses
  %i.fj = add nsw i32 %.3471.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph472.prol.loopexit, label %.lr.ph472.prol, !llvm.loop !73

.lr.ph472.prol.loopexit:                          ; preds = %.lr.ph472.prol, %.lr.ph472.preheader
  %.3471.unr = phi i32 [ %.2.in.lcssa, %.lr.ph472.preheader ], [ %i.fj, %.lr.ph472.prol ]
  %.3409470.unr = phi ptr [ %.2408.lcssa, %.lr.ph472.preheader ], [ %i.fh, %.lr.ph472.prol ]
  %.3413469.unr = phi ptr [ %.2412.lcssa, %.lr.ph472.preheader ], [ %i.fi, %.lr.ph472.prol ]
  %.3423468.unr = phi float [ %.2422.lcssa, %.lr.ph472.preheader ], [ %i.fg, %.lr.ph472.prol ]
  %.lcssa534.unr = phi float [ poison, %.lr.ph472.preheader ], [ %i.fg, %.lr.ph472.prol ]
  %i.fk = icmp ult i32 %.2.in.lcssa, 4
  br i1 %i.fk, label %._crit_edge473.loopexit, label %.lr.ph472

.lr.ph463:                                        ; preds = %.lr.ph477, %.lr.ph463
  %.2.in461 = phi i32 [ %.2, %.lr.ph463 ], [ %i.fc, %.lr.ph477 ] ; 2 uses
  %.2408460 = phi ptr [ %i.hr, %.lr.ph463 ], [ %i.fa, %.lr.ph477 ] ; 13 uses
  %.2412459 = phi ptr [ %i.hs, %.lr.ph463 ], [ %1, %.lr.ph477 ] ; 13 uses
  %.2422458 = phi float [ %i.hq, %.lr.ph463 ], [ 0.000000e+00, %.lr.ph477 ]
  %.2 = add nsw i32 %.2.in461, -12                ; 2 uses
  %i.fl = load float, ptr %.2408460, align 4, !tbaa !17
  %i.fm = load float, ptr %.2412459, align 4, !tbaa !17
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.fm, float %.2422458)
  %i.fo = getelementptr inbounds nuw i8, ptr %.2408460, i64 4
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !17
  %i.fq = getelementptr inbounds nuw i8, ptr %.2412459, i64 4
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !17
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fp, float %i.fr, float %i.fn)
  %i.ft = getelementptr inbounds nuw i8, ptr %.2408460, i64 8
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !17
  %i.fv = getelementptr inbounds nuw i8, ptr %.2412459, i64 8
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !17
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.fw, float %i.fs)
  %i.fy = getelementptr inbounds nuw i8, ptr %.2408460, i64 12
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !17
  %i.ga = getelementptr inbounds nuw i8, ptr %.2412459, i64 12
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !17
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.gb, float %i.fx)
  %i.gd = getelementptr inbounds nuw i8, ptr %.2408460, i64 16
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !17
  %i.gf = getelementptr inbounds nuw i8, ptr %.2412459, i64 16
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !17
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.ge, float %i.gg, float %i.gc)
  %i.gi = getelementptr inbounds nuw i8, ptr %.2408460, i64 20
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !17
  %i.gk = getelementptr inbounds nuw i8, ptr %.2412459, i64 20
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !17
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gj, float %i.gl, float %i.gh)
  %i.gn = getelementptr inbounds nuw i8, ptr %.2408460, i64 24
  %i.go = load float, ptr %i.gn, align 4, !tbaa !17
  %i.gp = getelementptr inbounds nuw i8, ptr %.2412459, i64 24
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !17
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.go, float %i.gq, float %i.gm)
  %i.gs = getelementptr inbounds nuw i8, ptr %.2408460, i64 28
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !17
  %i.gu = getelementptr inbounds nuw i8, ptr %.2412459, i64 28
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !17
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.gt, float %i.gv, float %i.gr)
  %i.gx = getelementptr inbounds nuw i8, ptr %.2408460, i64 32
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !17
  %i.gz = getelementptr inbounds nuw i8, ptr %.2412459, i64 32
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !17
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.gy, float %i.ha, float %i.gw)
  %i.hc = getelementptr inbounds nuw i8, ptr %.2408460, i64 36
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !17
  %i.he = getelementptr inbounds nuw i8, ptr %.2412459, i64 36
  %i.hf = load float, ptr %i.he, align 4, !tbaa !17
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.hd, float %i.hf, float %i.hb)
  %i.hh = getelementptr inbounds nuw i8, ptr %.2408460, i64 40
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !17
  %i.hj = getelementptr inbounds nuw i8, ptr %.2412459, i64 40
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !17
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.hi, float %i.hk, float %i.hg)
  %i.hm = getelementptr inbounds nuw i8, ptr %.2408460, i64 44
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !17
  %i.ho = getelementptr inbounds nuw i8, ptr %.2412459, i64 44
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !17
  %i.hq = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.hp, float %i.hl) ; 2 uses
end_hunk_0
