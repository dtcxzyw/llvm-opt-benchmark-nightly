Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7lodepngL19convertFromXYZ_chrmEPfPKfjjPK11LodePNGInfojPKNS_10LodePNGICCES2_j:bb.a
  %i.eh = shufflevector <2 x float> %i.ed, <2 x float> %i.ec, <2 x i32> <i32 0, i32 3>
  %i.ei = fpext <2 x float> %i.eh to <2 x double> ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ek = load float, ptr %i.ej, align 8, !tbaa !58
  %i.el = fpext float %i.ek to double             ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.en = load float, ptr %i.em, align 4, !tbaa !58
  %i.eo = fpext float %i.en to double             ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.eq = load float, ptr %i.ep, align 16, !tbaa !58
  %i.er = fpext float %i.eq to double             ; 2 uses
  %min.iters.check60 = icmp eq i64 %mul.i46, 1
  br i1 %min.iters.check60, label %scalar.ph59.preheader, label %vector.memcheck61

vector.memcheck61:                                ; preds = %.lr.ph50
  %i.es = mul nuw i64 %i.f, %i.e
  %i.et = shl i64 %i.es, 4                        ; 2 uses
  %i.eu = getelementptr i8, ptr %0, i64 %i.et
  %i.ev = getelementptr i8, ptr %1, i64 %i.et
  %bound0 = icmp ult ptr %0, %i.ev
  %bound1 = icmp ult ptr %1, %i.eu
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph59.preheader, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck61
  %n.vec63 = and i64 %mul.i46, -2                 ; 3 uses
  %broadcast.splatinsert74 = insertelement <2 x double> poison, double %i.el, i64 0
  %broadcast.splat75 = shufflevector <2 x double> %broadcast.splatinsert74, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert76 = insertelement <2 x double> poison, double %i.eo, i64 0
  %broadcast.splat77 = shufflevector <2 x double> %broadcast.splatinsert76, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert78 = insertelement <2 x double> poison, double %i.er, i64 0
  %broadcast.splat79 = shufflevector <2 x double> %broadcast.splatinsert78, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = shufflevector <2 x double> %i.ei, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ex = shufflevector <2 x double> %i.eb, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ey = shufflevector <2 x double> %i.eg, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph62
  %index81 = phi i64 [ 0, %vector.ph62 ], [ %index.next82, %vector.body80 ] ; 3 uses
  %i.ez = shl i64 %index81, 2                     ; 5 uses
  %i.fa = shl i64 %index81, 2                     ; 4 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ez
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ez
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fa
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load float, ptr %i.fc, align 4, !tbaa !58, !alias.scope !138
  %i.fg = load float, ptr %i.fe, align 4, !tbaa !58, !alias.scope !138
  %i.fh = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %i.fg, i64 1
  %i.fj = fpext <2 x float> %i.fi to <2 x double> ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ez
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fa
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 20
  %i.fo = load float, ptr %i.fl, align 4, !tbaa !58, !alias.scope !138
  %i.fp = load float, ptr %i.fn, align 4, !tbaa !58, !alias.scope !138
  %i.fq = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %i.fp, i64 1
  %i.fs = fpext <2 x float> %i.fr to <2 x double> ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ez
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fa
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load float, ptr %i.fu, align 4, !tbaa !58, !alias.scope !138
  %i.fy = load float, ptr %i.fw, align 4, !tbaa !58, !alias.scope !138
  %i.fz = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.ga = insertelement <2 x float> %i.fz, float %i.fy, i64 1
  %i.gb = fpext <2 x float> %i.ga to <2 x double> ; 2 uses
  %i.gc = fmul <2 x double> %broadcast.splat77, %i.fs
  %i.gd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fj, <2 x double> %broadcast.splat75, <2 x double> %i.gc)
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %broadcast.splat79, <2 x double> %i.gd)
  %i.gf = fptrunc <2 x double> %i.ge to <2 x float>
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ez
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fa
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 28
  %i.gk = load float, ptr %i.gh, align 4, !tbaa !58, !alias.scope !138
  %i.gl = load float, ptr %i.gj, align 4, !tbaa !58, !alias.scope !138
  %i.gm = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.gl, i64 1
  %i.go = shufflevector <2 x double> %i.gb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gp = shufflevector <2 x double> %i.fj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gq = shufflevector <2 x double> %i.fs, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gr = fmul <4 x double> %i.ey, %i.gq
  %i.gs = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gp, <4 x double> %i.ex, <4 x double> %i.gr)
  %i.gt = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.go, <4 x double> %i.ew, <4 x double> %i.gs)
  %i.gu = fptrunc <4 x double> %i.gt to <4 x float>
  %i.gv = shufflevector <2 x float> %i.gf, <2 x float> %i.gn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x float> %i.gu, <4 x float> %i.gv, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.fb, align 4, !tbaa !58, !alias.scope !139, !noalias !138
  %index.next82 = add nuw i64 %index81, 2         ; 2 uses
  %i.gw = icmp eq i64 %index.next82, %n.vec63
  br i1 %i.gw, label %middle.block83, label %vector.body80, !llvm.loop !135

middle.block83:                                   ; preds = %vector.body80
  %cmp.n84 = icmp eq i64 %mul.i46, %n.vec63
  br i1 %cmp.n84, label %.loopexit, label %scalar.ph59.preheader

scalar.ph59.preheader:                            ; preds = %vector.memcheck61, %.lr.ph50, %middle.block83
  %.04049.ph = phi i64 [ 0, %vector.memcheck61 ], [ 0, %.lr.ph50 ], [ %n.vec63, %middle.block83 ]
  br label %scalar.ph59

scalar.ph59:                                      ; preds = %scalar.ph59.preheader, %scalar.ph59
  %.04049 = phi i64 [ %i.id, %scalar.ph59 ], [ %.04049.ph, %scalar.ph59.preheader ] ; 2 uses
  %i.gx = shl i64 %.04049, 2                      ; 5 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gx
  %i.gz = or disjoint i64 %i.gx, 2                ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gz
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gx
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gx
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gz
  %i.hf = load float, ptr %i.hb, align 4, !tbaa !58
  %i.hg = fpext float %i.hf to double             ; 2 uses
  %i.hh = load float, ptr %i.hd, align 4, !tbaa !58
  %i.hi = fpext float %i.hh to double             ; 2 uses
  %i.hj = load float, ptr %i.he, align 4, !tbaa !58
  %i.hk = fpext float %i.hj to double             ; 2 uses
  %i.hl = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hm = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hn = fmul <2 x double> %i.hm, %i.eg
  %i.ho = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hp = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> %i.eb, <2 x double> %i.hn)
  %i.hr = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.ei, <2 x double> %i.hq)
  %i.hu = fptrunc <2 x double> %i.ht to <2 x float>
  store <2 x float> %i.hu, ptr %i.gy, align 4, !tbaa !58
  %i.hv = fmul double %i.hi, %i.eo
  %i.hw = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.el, double %i.hv)
  %i.hx = tail call double @llvm.fmuladd.f64(double %i.hk, double %i.er, double %i.hw)
  %i.hy = fptrunc double %i.hx to float
  store float %i.hy, ptr %i.ha, align 4, !tbaa !58
  %i.hz = or disjoint i64 %i.gx, 3                ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !58
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hz
  store float %i.ib, ptr %i.ic, align 4, !tbaa !58
  %i.id = add nuw i64 %.04049, 1                  ; 2 uses
  %exitcond53.not = icmp eq i64 %i.id, %mul.i46
  br i1 %exitcond53.not, label %.loopexit, label %scalar.ph59, !llvm.loop !136

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader87
  %.14148 = phi i64 [ %.14148.ph, %.lr.ph.preheader87 ], [ %i.it, %.lr.ph ] ; 6 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.14148
  %i.if = load float, ptr %i.ie, align 4, !tbaa !58
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.14148
  store float %i.if, ptr %i.ig, align 4, !tbaa !58
  %i.ih = or disjoint i64 %.14148, 1              ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ih
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !58
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ih
  store float %i.ij, ptr %i.ik, align 4, !tbaa !58
  %i.il = or disjoint i64 %.14148, 2              ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.il
  %i.in = load float, ptr %i.im, align 4, !tbaa !58
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.il
  store float %i.in, ptr %i.io, align 4, !tbaa !58
  %i.ip = or disjoint i64 %.14148, 3              ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ip
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !58
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ip
  store float %i.ir, ptr %i.is, align 4, !tbaa !58
  %i.it = add nuw i64 %.14148, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.it, %i.dr
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !137

.loopexit:                                        ; preds = %.lr.ph, %scalar.ph59, %middle.block, %middle.block83, %.preheader, %bb.g, %bb.b, %bb.a
  %.1 = phi i32 [ 1, %bb.b ], [ 0, %bb.g ], [ 1, %bb.a ], [ 0, %.preheader ], [ 0, %middle.block83 ], [ 0, %middle.block ], [ 0, %scalar.ph59 ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 93) i32 @_ZN7lodepngL20convertFromXYZ_gammaEPfjjPK11LodePNGInfojPKNS_10LodePNGICCE(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef nonnull readonly captures(none) %5) unnamed_addr #9 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = zext i32 %2 to i64
  %mul.i60 = mul nuw i64 %i.b, %i.a               ; 6 uses
  %.not52 = icmp eq i32 %4, 0
  br i1 %.not52, label %bb.z, label %.preheader64

.preheader64:                                     ; preds = %bb.a
  %.not = icmp eq i64 %mul.i60, 0
  br i1 %.not, label %.loopexit, label %.preheader63.lr.ph

.preheader63.lr.ph:                               ; preds = %.preheader64
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 128
  br label %.preheader63

.preheader63:                                     ; preds = %.preheader63.lr.ph, %bb.y
  %.04469 = phi i64 [ 0, %.preheader63.lr.ph ], [ %i.de, %bb.y ] ; 2 uses
  %.idx57 = shl i64 %.04469, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx57
  br label %bb.b

bb.b:                                             ; preds = %.preheader63, %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit
  %.068 = phi i64 [ 0, %.preheader63 ], [ %i.dd, %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %.068 ; 26 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.068 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !58 ; 23 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !60
  switch i32 %i.h, label %bb.x [
    i32 0, label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit
    i32 1, label %bb.c
    i32 2, label %bb.h
    i32 3, label %bb.j
    i32 4, label %bb.n
    i32 5, label %bb.r
    i32 6, label %bb.u
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp ugt float %i.g, 0.000000e+00
  %i.j = fcmp ult float %i.g, 1.000000e+00
  %or.cond.i = and i1 %i.i, %i.j
  br i1 %or.cond.i, label %bb.d, label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !62   ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  br i1 %i.m, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.d
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !48
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %.._crit_edge_crit_edge.i
  %i.n = phi ptr [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.ag, %bb.g ]
  %.087.lcssa.i = phi i64 [ 0, %.._crit_edge_crit_edge.i ], [ %.087..i, %bb.g ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.087.lcssa.i
  %i.p = load float, ptr %i.o, align 4, !tbaa !58
  br label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.g
  %.0101.i = phi i64 [ %..0.i, %bb.g ], [ %i.l, %bb.d ] ; 4 uses
  %.087100.i = phi i64 [ %.087..i, %bb.g ], [ 0, %bb.d ] ; 4 uses
  %i.q = add nuw i64 %.087100.i, 1
  %i.r = icmp eq i64 %i.q, %.0101.i
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !48 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.087100.i
  %i.u = load float, ptr %i.t, align 4, !tbaa !58 ; 5 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0101.i
  %i.w = load float, ptr %i.v, align 4, !tbaa !58 ; 3 uses
  %i.x = fcmp oeq float %i.u, %i.w
  br i1 %i.x, label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = fsub float %i.g, %i.u
  %i.z = fsub float %i.w, %i.u
  %i.aa = fdiv float %i.y, %i.z                   ; 2 uses
  %i.ab = fsub float 1.000000e+00, %i.aa
  %i.ac = fmul float %i.w, %i.aa
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.u, float %i.ab, float %i.ac)
  br label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.ae = add i64 %.087100.i, %.0101.i
  %i.af = lshr i64 %i.ae, 1                       ; 3 uses
  %i.ag = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !48 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !58
  %i.aj = fcmp ogt float %i.ai, %i.g              ; 2 uses
  %.087..i = select i1 %i.aj, i64 %.087100.i, i64 %i.af ; 3 uses
  %..0.i = select i1 %i.aj, i64 %i.af, i64 %.0101.i ; 2 uses
  %i.ak = icmp eq i64 %.087..i, %..0.i
  br i1 %i.ak, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !140

bb.h:                                             ; preds = %bb.b
  %i.al = fcmp ogt float %i.g, 0.000000e+00
  br i1 %i.al, label %bb.i, label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.an = load float, ptr %i.am, align 8, !tbaa !61
  %i.ao = fdiv float 1.000000e+00, %i.an
  %i.ap = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.g, float noundef %i.ao)
  br label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

bb.j:                                             ; preds = %bb.b
  %i.aq = fcmp olt float %i.g, 0.000000e+00
  br i1 %i.aq, label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = fcmp ogt float %i.g, 0.000000e+00
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.at = load float, ptr %i.as, align 8, !tbaa !61
  %i.au = fdiv float 1.000000e+00, %i.at
  %i.av = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.g, float noundef %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !64
  %i.ay = fsub float %i.av, %i.ax
  %6 = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %7 = load float, ptr %6, align 4, !tbaa !63
  %8 = fdiv float %i.ay, %7
  br label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ba = load float, ptr %i.az, align 8, !tbaa !64
  %i.bb = fneg float %i.ba
  %9 = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %10 = load float, ptr %9, align 4, !tbaa !63
  %11 = fdiv float %i.bb, %10
  br label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

bb.n:                                             ; preds = %bb.b
  %i.bc = fcmp olt float %i.g, 0.000000e+00
  br i1 %i.bc, label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.be = load float, ptr %i.bd, align 4, !tbaa !65 ; 2 uses
  %i.bf = fcmp ogt float %i.g, %i.be
  br i1 %i.bf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bg = fsub float %i.g, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !61
  %i.bj = fdiv float 1.000000e+00, %i.bi
  %i.bk = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.bg, float noundef %i.bj)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !64
  %i.bn = fsub float %i.bk, %i.bm
  %12 = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %13 = load float, ptr %12, align 4, !tbaa !63
  %14 = fdiv float %i.bn, %13
  br label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

bb.q:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !64
  %i.bq = fneg float %i.bp
  %15 = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %16 = load float, ptr %15, align 4, !tbaa !63
  %17 = fdiv float %i.bq, %16
  br label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

bb.r:                                             ; preds = %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.bs = load float, ptr %i.br, align 4, !tbaa !65 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !66
  %i.bv = fmul float %i.bs, %i.bu
  %i.bw = fcmp ogt float %i.g, %i.bv
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.by = load float, ptr %i.bx, align 8, !tbaa !61
  %i.bz = fdiv float 1.000000e+00, %i.by
  %i.ca = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.g, float noundef %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !64
  %i.cd = fsub float %i.ca, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !63
  %i.cg = fdiv float %i.cd, %i.cf
  br label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

bb.t:                                             ; preds = %bb.r
  %i.ch = fdiv float %i.g, %i.bs
  br label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

bb.u:                                             ; preds = %bb.b
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !65 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !66
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !67 ; 2 uses
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.cl, float %i.cn)
  %i.cp = fcmp ogt float %i.g, %i.co
  br i1 %i.cp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cq = fsub float %i.g, %i.cj
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !61
  %i.ct = fdiv float 1.000000e+00, %i.cs
  %i.cu = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.cq, float noundef %i.ct)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !64
  %i.cx = fsub float %i.cu, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !63
  %i.da = fdiv float %i.cx, %i.cz
  br label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

bb.w:                                             ; preds = %bb.u
  %i.db = fsub float %i.g, %i.cn
  %i.dc = fdiv float %i.db, %i.cj
  br label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

bb.x:                                             ; preds = %bb.b
  br label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit: ; preds = %bb.b, %bb.c, %._crit_edge.i, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.l, %bb.m, %bb.n, %bb.p, %bb.q, %bb.s, %bb.t, %bb.v, %bb.w, %bb.x
  %.2.i = phi float [ 0.000000e+00, %bb.x ], [ %i.g, %bb.b ], [ %i.u, %bb.e ], [ %i.g, %bb.h ], [ %i.g, %bb.j ], [ %11, %bb.m ], [ %i.g, %bb.n ], [ %17, %bb.q ], [ %i.ch, %bb.t ], [ %i.dc, %bb.w ], [ %i.g, %bb.c ], [ %i.p, %._crit_edge.i ], [ %i.ad, %bb.f ], [ %i.ap, %bb.i ], [ %8, %bb.l ], [ %14, %bb.p ], [ %i.cg, %bb.s ], [ %i.da, %bb.v ]
  store float %.2.i, ptr %i.f, align 4, !tbaa !58
  %i.dd = add nuw nsw i64 %.068, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dd, 3
  br i1 %exitcond.not, label %bb.y, label %bb.b, !llvm.loop !141

bb.y:                                             ; preds = %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit
  %i.de = add nuw i64 %.04469, 1                  ; 2 uses
  %exitcond80.not = icmp eq i64 %i.de, %mul.i60
  br i1 %exitcond80.not, label %.loopexit, label %.preheader63, !llvm.loop !142

bb.z:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !68
  %.not53 = icmp eq i32 %i.dg, 0
  br i1 %.not53, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 244
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !69
  %.not54 = icmp eq i32 %i.di, 0
  br i1 %.not54, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 204
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !70 ; 2 uses
  %.not55 = icmp eq i32 %i.dk, 100000
  br i1 %.not55, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dl = uitofp i32 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.000000e+05          ; 3 uses
  %.not74 = icmp eq i64 %mul.i60, 0
  br i1 %.not74, label %.loopexit, label %.preheader61

.preheader61:                                     ; preds = %bb.ac, %bb.ai
  %.14571 = phi i64 [ %i.dz, %bb.ai ], [ 0, %bb.ac ] ; 2 uses
  %.idx = shl i64 %.14571, 4
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !58 ; 2 uses
  %i.dp = fcmp ogt float %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.preheader61
  %i.dq = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.do, float noundef %i.dm)
  store float %i.dq, ptr %i.dn, align 4, !tbaa !58
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader61, %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !58 ; 2 uses
  %i.dt = fcmp ogt float %i.ds, 0.000000e+00
  br i1 %i.dt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.du = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.ds, float noundef %i.dm)
  store float %i.du, ptr %i.dr, align 4, !tbaa !58
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !58 ; 2 uses
  %i.dx = fcmp ogt float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dy = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.dw, float noundef %i.dm)
  store float %i.dy, ptr %i.dv, align 4, !tbaa !58
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dz = add nuw i64 %.14571, 1                  ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dz, %mul.i60
  br i1 %exitcond82.not, label %.loopexit, label %.preheader61, !llvm.loop !143

bb.aj:                                            ; preds = %bb.aa, %bb.z
  %.not75 = icmp eq i64 %mul.i60, 0
  br i1 %.not75, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.aj, %bb.as
  %.24673 = phi i64 [ %i.ev, %bb.as ], [ 0, %bb.aj ] ; 2 uses
  %.idx56 = shl i64 %.24673, 4
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %.idx56 ; 4 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !58 ; 3 uses
  %i.ec = fcmp olt float %i.eb, 3.130800e-03
  br i1 %i.ec, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.preheader
  %i.ed = fmul nnan float %i.eb, 1.292000e+01
  br label %bb.am

bb.al:                                            ; preds = %.preheader
  %i.ee = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.eb, float noundef f0x3ED55555)
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.ee, float 1.055000e+00, float -5.500000e-02)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.eg = phi float [ %i.ed, %bb.ak ], [ %i.ef, %bb.al ]
  store float %i.eg, ptr %i.ea, align 4, !tbaa !58
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !58 ; 3 uses
  %i.ej = fcmp olt float %i.ei, 3.130800e-03
  br i1 %i.ej, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ek = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.ei, float noundef f0x3ED55555)
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ek, float 1.055000e+00, float -5.500000e-02)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.em = fmul nnan float %i.ei, 1.292000e+01
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.en = phi float [ %i.em, %bb.ao ], [ %i.el, %bb.an ]
  store float %i.en, ptr %i.eh, align 4, !tbaa !58
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !58 ; 3 uses
  %i.eq = fcmp olt float %i.ep, 3.130800e-03
  br i1 %i.eq, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.er = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.ep, float noundef f0x3ED55555)
  %i.es = tail call float @llvm.fmuladd.f32(float %i.er, float 1.055000e+00, float -5.500000e-02)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.et = fmul nnan float %i.ep, 1.292000e+01
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.eu = phi float [ %i.et, %bb.ar ], [ %i.es, %bb.aq ]
  store float %i.eu, ptr %i.eo, align 4, !tbaa !58
  %i.ev = add nuw i64 %.24673, 1                  ; 2 uses
  %exitcond84.not = icmp eq i64 %i.ev, %mul.i60
  br i1 %exitcond84.not, label %.loopexit, label %.preheader, !llvm.loop !144

.loopexit:                                        ; preds = %bb.y, %bb.ai, %bb.as, %.preheader64, %bb.ac, %bb.aj, %bb.ab
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef range(i32 0, 93) i32 @_ZN7lodepng19convertFromXYZFloatEPfPKfjjPK12LodePNGStateS2_j(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #11 {
bb.a:
  %7 = alloca %"struct.lodepng::LodePNGICC", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 248 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 460
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 472
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 480
  %i.j = load i32, ptr %i.i, align 8, !tbaa !52
  %i.k = zext i32 %i.j to i64
  %i.l = call fastcc noundef i32 @_ZN7lodepngL8parseICCEPNS_10LodePNGICCEPKhm(ptr noundef %7, ptr noundef %i.h, i64 noundef %i.k)
  %.not22 = icmp eq i32 %i.l, 0
  br i1 %.not22, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %7, align 8, !tbaa !54     ; 2 uses
  switch i32 %i.m, label %bb.e [
    i32 0, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 84
  %i.o = load i32, ptr %i.n, align 4, !tbaa !55
  %.not.i = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.q = load i32, ptr %i.p, align 4
  %.not6.i = icmp eq i32 %i.q, 0
  %or.cond = select i1 %.not.i, i1 true, i1 %.not6.i
  br i1 %or.cond, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %.old = getelementptr inbounds nuw i8, ptr %7, i64 68
  %.old24 = load i32, ptr %.old, align 4, !tbaa !56
  %.not6.i.old = icmp eq i32 %.old24, 0
  br i1 %.not6.i.old, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 124
  %i.s = load i32, ptr %i.r, align 4, !tbaa !57
  %.not7.i = icmp ne i32 %i.s, 0
  %..i = zext i1 %.not7.i to i32
  br label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit

end_hunk_0
begin_hunk_1_@_ZN7lodepngL12lodepng_powfEff:bb.a
  %i.x = fdiv float 1.000000e+00, %0
  %i.y = select i1 %i.w, float %i.x, float %0
  br label %common.ret231

common.ret231:                                    ; preds = %bb.ae, %._crit_edge160.thread, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.v, %bb.q, %bb.l, %bb.n, %bb.m, %bb.b, %bb.a, %bb.ac, %bb.t, %bb.h, %bb.e, %bb.r
  %common.ret231.op = phi float [ %i.ab, %bb.r ], [ %i.cq, %bb.ae ], [ +qnan, %bb.m ], [ 1.000000e+00, %bb.a ], [ %i.bu, %bb.ac ], [ 0.000000e+00, %bb.z ], [ %i.i, %bb.e ], [ %., %bb.h ], [ 1.000000e+00, %bb.x ], [ %i.ae, %bb.t ], [ %i.cu, %._crit_edge160.thread ], [ 0.000000e+00, %bb.v ], [ %0, %bb.b ], [ %i.q, %bb.l ], [ %i.t, %bb.n ], [ %i.y, %bb.q ], [ %i.ai, %bb.w ], [ %i.ap, %bb.aa ]
  ret float %common.ret231.op

bb.r:                                             ; preds = %bb.p
  %i.z = fneg float %0
  %i.aa = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.z, float noundef %1)
  %i.ab = fneg float %i.aa
  br label %common.ret231

bb.s:                                             ; preds = %bb.o, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ %i.l, %bb.o ]
  %i.ac = fcmp oeq float %0, 0.000000e+00
  br i1 %i.ac, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ad = fcmp ole float %1, 0.000000e+00
  %i.ae = select i1 %i.ad, float +inf, float 0.000000e+00
  br label %common.ret231

bb.u:                                             ; preds = %bb.s
  %i.af = fcmp olt float %0, f0xFF7FFFFF
  br i1 %i.af, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ag = fcmp ugt float %1, 0.000000e+00
  br i1 %i.ag, label %bb.w, label %common.ret231

bb.w:                                             ; preds = %bb.v
  %i.ah = and i32 %.0, 1
  %.not127 = icmp eq i32 %i.ah, 0
  %i.ai = select i1 %.not127, float +inf, float -inf
  br label %common.ret231

bb.x:                                             ; preds = %bb.u
  %i.aj = fneg float %0
  %i.ak = fcmp oeq float %0, -1.000000e+00
  br i1 %i.ak, label %common.ret231, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.g
  %.0121 = phi float [ %0, %bb.g ], [ %i.aj, %bb.x ] ; 2 uses
  %or.cond11 = fcmp ogt float %i.f, f0x7F7FFFFF
  br i1 %or.cond11, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.al = fcmp olt float %.0121, 1.000000e+00
  %i.am = fcmp ule float %1, 0.000000e+00
  %.not128 = xor i1 %i.am, %i.al
  br i1 %.not128, label %common.ret231, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.an = fcmp olt float %1, 0.000000e+00
  %i.ao = fneg float %1
  %i.ap = select i1 %i.an, float %i.ao, float %1
  br label %common.ret231

bb.ab:                                            ; preds = %bb.y, %bb.c
  %.1122 = phi float [ %0, %bb.c ], [ %.0121, %bb.y ] ; 4 uses
  %i.aq = fcmp olt float %.1122, f0x37800000
  br i1 %i.aq, label %.lr.ph, label %.preheader132

.preheader132:                                    ; preds = %.lr.ph, %bb.ab
  %.0116.lcssa = phi float [ 0.000000e+00, %bb.ab ], [ %i.as, %.lr.ph ] ; 2 uses
  %.0111.lcssa = phi float [ %.1122, %bb.ab ], [ %i.at, %.lr.ph ] ; 3 uses
  %i.ar = fcmp ogt float %.0111.lcssa, 6.553600e+04
  br i1 %i.ar, label %.lr.ph138, label %.preheader131

.lr.ph:                                           ; preds = %bb.ab, %.lr.ph
  %.0111134 = phi float [ %i.at, %.lr.ph ], [ %.1122, %bb.ab ]
  %.0116133 = phi float [ %i.as, %.lr.ph ], [ 0.000000e+00, %bb.ab ]
  %i.as = fadd float %.0116133, -1.600000e+01     ; 2 uses
  %i.at = fmul nnan float %.0111134, 6.553600e+04 ; 3 uses
  %i.au = fcmp olt float %i.at, f0x37800000
  br i1 %i.au, label %.lr.ph, label %.preheader132, !llvm.loop !148

.preheader131:                                    ; preds = %.lr.ph138, %.preheader132
  %.1117.lcssa = phi float [ %.0116.lcssa, %.preheader132 ], [ %i.aw, %.lr.ph138 ] ; 2 uses
  %.1112.lcssa = phi float [ %.0111.lcssa, %.preheader132 ], [ %i.ax, %.lr.ph138 ] ; 3 uses
  %i.av = fcmp olt float %.1112.lcssa, 1.000000e+00
  br i1 %i.av, label %.lr.ph143, label %.preheader130

.lr.ph138:                                        ; preds = %.preheader132, %.lr.ph138
  %.1112137 = phi float [ %i.ax, %.lr.ph138 ], [ %.0111.lcssa, %.preheader132 ]
  %.1117136 = phi float [ %i.aw, %.lr.ph138 ], [ %.0116.lcssa, %.preheader132 ]
  %i.aw = fadd float %.1117136, 1.600000e+01      ; 2 uses
  %i.ax = fmul nnan float %.1112137, f0x37800000  ; 3 uses
  %i.ay = fcmp ogt float %i.ax, 6.553600e+04
  br i1 %i.ay, label %.lr.ph138, label %.preheader131, !llvm.loop !149

.preheader130:                                    ; preds = %.lr.ph143, %.preheader131
  %.2118.lcssa = phi float [ %.1117.lcssa, %.preheader131 ], [ %i.ba, %.lr.ph143 ] ; 2 uses
  %.2113.lcssa = phi float [ %.1112.lcssa, %.preheader131 ], [ %i.bb, %.lr.ph143 ] ; 3 uses
  %i.az = fcmp ogt float %.2113.lcssa, 2.000000e+00
  br i1 %i.az, label %.lr.ph148, label %._crit_edge

.lr.ph143:                                        ; preds = %.preheader131, %.lr.ph143
  %.2113142 = phi float [ %i.bb, %.lr.ph143 ], [ %.1112.lcssa, %.preheader131 ]
  %.2118141 = phi float [ %i.ba, %.lr.ph143 ], [ %.1117.lcssa, %.preheader131 ]
  %i.ba = fadd float %.2118141, -1.000000e+00     ; 2 uses
  %i.bb = fmul nnan float %.2113142, 2.000000e+00 ; 3 uses
  %i.bc = fcmp olt float %i.bb, 1.000000e+00
  br i1 %i.bc, label %.lr.ph143, label %.preheader130, !llvm.loop !150

.lr.ph148:                                        ; preds = %.preheader130, %.lr.ph148
  %.3147 = phi float [ %i.be, %.lr.ph148 ], [ %.2113.lcssa, %.preheader130 ]
  %.3119146 = phi float [ %i.bd, %.lr.ph148 ], [ %.2118.lcssa, %.preheader130 ]
  %i.bd = fadd float %.3119146, 1.000000e+00      ; 2 uses
  %i.be = fmul nnan float %.3147, 5.000000e-01    ; 3 uses
  %i.bf = fcmp ogt float %i.be, 2.000000e+00
  br i1 %i.bf, label %.lr.ph148, label %._crit_edge, !llvm.loop !151

._crit_edge:                                      ; preds = %.lr.ph148, %.preheader130
  %.3119.lcssa = phi float [ %.2118.lcssa, %.preheader130 ], [ %i.bd, %.lr.ph148 ]
  %.3.lcssa = phi float [ %.2113.lcssa, %.preheader130 ], [ %i.be, %.lr.ph148 ]
  %i.bg = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.3.lcssa, i64 0 ; 2 uses
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> <float f0x3C7B5381, float 0.000000e+00>, <2 x float> <float f0x3EEEAA40, float f0x3E0C8592>)
  %i.bi = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bh, <2 x float> <float f0xBDB4F828, float f0x3EC71CDB>)
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bj, <2 x float> <float f0xBEC946D1, float f0x3DB9D868>) ; 2 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 0
  %i.bm = extractelement <2 x float> %i.bk, i64 1
  %i.bn = fdiv float %i.bl, %i.bm
  %i.bo = fadd float %.3119.lcssa, %i.bn
  %i.bp = fmul float %1, %i.bo                    ; 3 uses
  %i.bq = tail call float @llvm.fabs.f32(float %i.bp)
  %or.cond13 = fcmp ult float %i.bq, 1.280000e+02
  br i1 %or.cond13, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.br = fcmp ogt float %.1122, 1.000000e+00
  %i.bs = fcmp ule float %1, 0.000000e+00
  %i.bt = xor i1 %i.bs, %i.br
  %i.bu = select i1 %i.bt, float +inf, float 0.000000e+00
  br label %common.ret231

bb.ad:                                            ; preds = %._crit_edge
  %i.bv = fptosi float %i.bp to i32               ; 6 uses
  %i.bw = sitofp i32 %i.bv to float
  %i.bx = fsub float %i.bp, %i.bw                 ; 5 uses
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float f0x3BB8A601, float f0x3D953178)
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.by, float f0x3ED5E70B)
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bz, float 1.000000e+00) ; 3 uses
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bx, float f0x3CC0861B, float f0xBE8CFD51)
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.cb, float 1.000000e+00) ; 2 uses
  %i.cd = icmp slt i32 %i.bv, -30
  br i1 %i.cd, label %.lr.ph154, label %.preheader

.preheader:                                       ; preds = %bb.ad
  %i.ce = icmp sgt i32 %i.bv, 30
  br i1 %i.ce, label %.lr.ph159, label %._crit_edge160

.lr.ph154:                                        ; preds = %bb.ad, %.lr.ph154
  %.1152 = phi i32 [ %i.cg, %.lr.ph154 ], [ %i.bv, %bb.ad ] ; 2 uses
  %.0114151 = phi float [ %i.cf, %.lr.ph154 ], [ %i.ca, %bb.ad ]
  %i.cf = fmul float %.0114151, f0x30000000       ; 2 uses
  %i.cg = add nsw i32 %.1152, 31                  ; 2 uses
  %i.ch = icmp samesign ult i32 %.1152, -61
  br i1 %i.ch, label %.lr.ph154, label %._crit_edge160, !llvm.loop !152

.lr.ph159:                                        ; preds = %.preheader, %.lr.ph159
  %.2158 = phi i32 [ %i.cj, %.lr.ph159 ], [ %i.bv, %.preheader ] ; 2 uses
  %.1115157 = phi float [ %i.ci, %.lr.ph159 ], [ %i.ca, %.preheader ]
  %i.ci = fmul float %.1115157, f0x4F000000       ; 2 uses
  %i.cj = add nsw i32 %.2158, -31                 ; 2 uses
  %i.ck = icmp samesign ugt i32 %.2158, 61
  br i1 %i.ck, label %.lr.ph159, label %._crit_edge160.thread, !llvm.loop !153

._crit_edge160:                                   ; preds = %.lr.ph154, %.preheader
  %.1115.lcssa = phi float [ %i.ca, %.preheader ], [ %i.cf, %.lr.ph154 ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.bv, %.preheader ], [ %i.cg, %.lr.ph154 ] ; 3 uses
  %i.cl = icmp slt i32 %.2.lcssa, 0
  br i1 %i.cl, label %bb.ae, label %._crit_edge160.thread

bb.ae:                                            ; preds = %._crit_edge160
  %i.cm = sub nsw i32 0, %.2.lcssa
  %i.cn = shl nuw nsw i32 1, %i.cm
  %i.co = uitofp nneg i32 %i.cn to float
  %i.cp = fmul float %i.cc, %i.co
  %i.cq = fdiv float %.1115.lcssa, %i.cp
  br label %common.ret231

._crit_edge160.thread:                            ; preds = %.lr.ph159, %._crit_edge160
  %.2.lcssa186 = phi i32 [ %.2.lcssa, %._crit_edge160 ], [ %i.cj, %.lr.ph159 ]
  %.1115.lcssa185 = phi float [ %.1115.lcssa, %._crit_edge160 ], [ %i.ci, %.lr.ph159 ]
  %i.cr = shl nuw nsw i32 1, %.2.lcssa186
  %i.cs = uitofp nneg i32 %i.cr to float
  %i.ct = fmul float %.1115.lcssa185, %i.cs
  %i.cu = fdiv float %i.ct, %i.cc
  br label %common.ret231
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN7lodepngL7getChrmEPfS0_jPKNS_10LodePNGICCEPK11LodePNGInfo(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #17 {
bb.a:
  %i.a = alloca [9 x float], align 16             ; 9 uses
  %i.b = alloca [9 x float], align 16             ; 11 uses
  %i.c = alloca [9 x float], align 16             ; 10 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 8, !tbaa !54
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !59
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load float, ptr %i.h, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.k = load float, ptr %i.j, align 4, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load float, ptr %i.l, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.p = fpext float %i.i to double
  %i.q = fpext float %i.k to double
  %i.r = fpext float %i.m to double
  %i.s = load <2 x float>, ptr %i.n, align 8, !tbaa !58 ; 2 uses
  %i.t = load float, ptr %i.o, align 8, !tbaa !58 ; 2 uses
  %i.u = insertelement <3 x double> poison, double %i.q, i64 0
  %i.v = shufflevector <3 x double> %i.u, <3 x double> poison, <3 x i32> zeroinitializer
  %i.w = fmul <3 x double> %i.v, <double f0x3FD10CB2A0000000, double f0x3FFB6A7F00000000, double f0xBFB1893740000000>
  %i.x = insertelement <3 x double> poison, double %i.p, i64 0
  %i.y = shufflevector <3 x double> %i.x, <3 x double> poison, <3 x i32> zeroinitializer
  %i.z = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.y, <3 x double> <double f0x3FECA4A8C0000000, double f0xBFE801A360000000, double f0x3FA3EAB360000000>, <3 x double> %i.w)
  %i.aa = insertelement <3 x double> poison, double %i.r, i64 0
  %i.ab = shufflevector <3 x double> %i.aa, <3 x double> poison, <3 x i32> zeroinitializer
  %i.ac = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ab, <3 x double> <double f0xBFC4A8C160000000, double f0x3FA2CA57A0000000, double f0x3FF0793DE0000000>, <3 x double> %i.z)
  %i.ad = fptrunc <3 x double> %i.ac to <3 x float>
  %i.ae = fpext <2 x float> %i.s to <2 x double>  ; 2 uses
  %i.af = fpext float %i.t to double
  %i.ag = shufflevector <2 x double> %i.ae, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ah = fmul <3 x double> %i.ag, <double f0x3FD10CB2A0000000, double f0x3FFB6A7F00000000, double f0xBFB1893740000000>
  %i.ai = shufflevector <2 x double> %i.ae, <2 x double> poison, <3 x i32> zeroinitializer
  %i.aj = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ai, <3 x double> <double f0x3FECA4A8C0000000, double f0xBFE801A360000000, double f0x3FA3EAB360000000>, <3 x double> %i.ah)
  %i.ak = insertelement <3 x double> poison, double %i.af, i64 0
  %i.al = shufflevector <3 x double> %i.ak, <3 x double> poison, <3 x i32> zeroinitializer
  %i.am = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.al, <3 x double> <double f0xBFC4A8C160000000, double f0x3FA2CA57A0000000, double f0x3FF0793DE0000000>, <3 x double> %i.aj)
  %i.an = fptrunc <3 x double> %i.am to <3 x float>
  %i.ao = fdiv <3 x float> %i.an, %i.ad
  %i.ap = shufflevector <3 x float> %i.ao, <3 x float> poison, <9 x i32> <i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.aq = fmul <9 x float> %i.ap, <float 1.029600e+00, float -1.614000e-01, float 3.670000e-02, float 3.890000e-02, float f0x3F652546, float f0xBF400D1B, float -6.850000e-02, float 2.664000e-01, float 1.713500e+00>
  %i.ar = fpext <9 x float> %i.aq to <9 x double> ; 15 uses
  %i.as = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 5, i32 5>
  %i.at = fmul <2 x double> %i.as, <double f0xBFC2D2ACE0000000, double f0x3FE0966860000000>
  %i.au = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 4, i32 4>
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> <double f0x3FEF957220000000, double f0x3FDBAAE3E0000000>, <2 x double> %i.at)
  %i.aw = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> <double f0x3FC479A860000000, double f0x3FA93CB240000000>, <2 x double> %i.av)
  %i.ay = fptrunc <2 x double> %i.ax to <2 x float>
  %i.az = extractelement <9 x double> %i.ar, i64 5
  %i.ba = fmul double %i.az, f0x3FA4807D60000000
  %i.bb = extractelement <9 x double> %i.ar, i64 4
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double f0xBF81777EC0000000, double %i.ba)
  %i.bd = extractelement <9 x double> %i.ar, i64 3
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double f0x3FEEFDD7E0000000, double %i.bc)
  %i.bf = fptrunc double %i.be to float
  %i.bg = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 8, i32 8>
  %i.bh = fmul <2 x double> %i.bg, <double f0xBFC2D2ACE0000000, double f0x3FE0966860000000>
  %i.bi = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 7, i32 7>
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> <double f0x3FEF957220000000, double f0x3FDBAAE3E0000000>, <2 x double> %i.bh)
  %i.bk = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 6, i32 6>
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> <double f0x3FC479A860000000, double f0x3FA93CB240000000>, <2 x double> %i.bj)
  %i.bm = fptrunc <2 x double> %i.bl to <2 x float>
  %i.bn = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bo = fmul <2 x double> %i.bn, <double f0xBFC2D2ACE0000000, double f0x3FE0966860000000>
  %i.bp = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> <double f0x3FEF957220000000, double f0x3FDBAAE3E0000000>, <2 x double> %i.bo)
  %i.br = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> zeroinitializer
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> <double f0x3FC479A860000000, double f0x3FA93CB240000000>, <2 x double> %i.bq)
  %i.bt = fptrunc <2 x double> %i.bs to <2 x float>
  %i.bu = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 8, i32 2>
  %i.bv = fmul <2 x double> %i.bu, splat (double f0x3FA4807D60000000)
  %i.bw = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 7, i32 1>
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> splat (double f0xBF81777EC0000000), <2 x double> %i.bv)
  %i.by = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 6, i32 0>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> splat (double f0x3FEEFDD7E0000000), <2 x double> %i.bx)
  %i.ca = fptrunc <2 x double> %i.bz to <2 x float>
  %i.cb = fpext <2 x float> %i.ay to <2 x double>
  %i.cc = fpext <2 x float> %i.bm to <2 x double>
  %i.cd = fpext <2 x float> %i.bt to <2 x double>
  %.pre86.i = fpext float %i.bf to double
  %i.ce = fpext <2 x float> %i.ca to <2 x double>
  br label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(36) %i.cg, i64 36, i1 false), !tbaa !58
  %i.ch = call fastcc noundef i32 @_ZN7lodepngL9invMatrixEPf(ptr noundef %i.c) ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.co = load <4 x float>, ptr %i.ck, align 4, !tbaa !58
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cq = fpext <2 x float> %i.cp to <2 x double> ; 2 uses
  %i.cr = load <4 x float>, ptr %i.c, align 16, !tbaa !58
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ct = load <4 x float>, ptr %i.cl, align 8, !tbaa !58
  %i.cu = load float, ptr %i.cm, align 8, !tbaa !58
  %i.cv = fpext <2 x float> %i.cs to <2 x double> ; 2 uses
  %i.cw = shufflevector <4 x float> %i.ct, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cx = fpext <2 x float> %i.cw to <2 x double> ; 2 uses
  %i.cy = load float, ptr %i.ci, align 8, !tbaa !58
  %i.cz = fpext float %i.cy to double             ; 2 uses
  %i.da = load float, ptr %i.cf, align 4, !tbaa !58
  %i.db = fpext float %i.da to double             ; 2 uses
  %i.dc = load float, ptr %i.cj, align 8, !tbaa !58
  %i.dd = fpext float %i.dc to double             ; 2 uses
  %i.de = insertelement <2 x double> poison, double %i.db, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x double> %i.df, %i.cq
  %i.dh = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %i.cv, <2 x double> %i.dg)
  %i.dk = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.cx, <2 x double> %i.dj)
  %i.dn = fptrunc <2 x double> %i.dm to <2 x float>
  %i.do = fpext float %i.cu to double             ; 2 uses
  %i.dp = load <2 x float>, ptr %i.cn, align 4, !tbaa !58
  %i.dq = fpext <2 x float> %i.dp to <2 x double> ; 3 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 0
  %i.ds = fmul double %i.dr, %i.db
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.do, double %i.ds)
  %i.du = extractelement <2 x double> %i.dq, i64 1
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.du, double %i.dt)
  %i.dw = fptrunc double %i.dv to float
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.d, %.preheader.i
  %.pre-phi87.i = phi double [ %.pre86.i, %.preheader.i ], [ %i.do, %bb.d ] ; 2 uses
  %.sroa.8.0.i = phi float [ %i.t, %.preheader.i ], [ %i.dw, %bb.d ] ; 2 uses
  %i.dx = phi <2 x double> [ %i.cd, %.preheader.i ], [ %i.cx, %bb.d ] ; 2 uses
  %i.dy = phi <2 x double> [ %i.cb, %.preheader.i ], [ %i.cv, %bb.d ] ; 2 uses
  %i.dz = phi <2 x double> [ %i.cc, %.preheader.i ], [ %i.cq, %bb.d ] ; 2 uses
  %i.ea = phi <2 x float> [ %i.s, %.preheader.i ], [ %i.dn, %bb.d ] ; 2 uses
  %i.eb = phi <2 x double> [ %i.ce, %.preheader.i ], [ %i.dq, %bb.d ] ; 4 uses
  %i.ec = shufflevector <2 x double> %i.dz, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ed = shufflevector <2 x double> %i.dy, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ee = shufflevector <2 x double> %i.dx, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.eh = load float, ptr %i.eg, align 8, !tbaa !58
  %i.ei = load <8 x float>, ptr %i.ef, align 8, !tbaa !58 ; 3 uses
  %i.ej = shufflevector <8 x float> %i.ei, <8 x float> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 1>
  %i.ek = fpext <4 x float> %i.ej to <4 x double> ; 3 uses
  %i.el = shufflevector <8 x float> %i.ei, <8 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.em = fpext <4 x float> %i.el to <4 x double> ; 3 uses
  %i.en = shufflevector <8 x float> %i.ei, <8 x float> poison, <3 x i32> <i32 5, i32 poison, i32 2>
  %i.eo = insertelement <3 x float> %i.en, float %i.eh, i64 1
  %i.ep = shufflevector <3 x float> %i.eo, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.eq = fpext <4 x float> %i.ep to <4 x double> ; 3 uses
  %i.er = fmul <4 x double> %i.ec, %i.ek
  %i.es = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.em, <4 x double> %i.ed, <4 x double> %i.er)
  %i.et = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.eq, <4 x double> %i.ee, <4 x double> %i.es)
  %i.eu = fptrunc <4 x double> %i.et to <4 x float> ; 2 uses
  %i.ev = extractelement <4 x double> %i.ek, i64 2
  %i.ew = extractelement <4 x double> %i.em, i64 2
  %i.ex = extractelement <4 x double> %i.eq, i64 2
  %i.ey = shufflevector <2 x double> %i.dz, <2 x double> %i.eb, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.ez = shufflevector <4 x double> %i.ek, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.fa = fmul <4 x double> %i.ey, %i.ez
  %i.fb = shufflevector <4 x double> %i.em, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.fc = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fd = insertelement <2 x double> %i.fc, double %.pre-phi87.i, i64 1
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ff = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fb, <4 x double> %i.fe, <4 x double> %i.fa)
  %i.fg = shufflevector <4 x double> %i.eq, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.fh = shufflevector <2 x double> %i.dx, <2 x double> %i.eb, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.fi = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fg, <4 x double> %i.fh, <4 x double> %i.ff)
  %i.fj = fptrunc <4 x double> %i.fi to <4 x float> ; 2 uses
  %i.fk = extractelement <2 x double> %i.eb, i64 0
  %i.fl = fmul double %i.fk, %i.ev
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.ew, double %.pre-phi87.i, double %i.fl)
  %i.fn = extractelement <2 x double> %i.eb, i64 1
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.fn, double %i.fm)
  %i.fp = fptrunc double %i.fo to float           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store <4 x float> %i.eu, ptr %i.a, align 16, !tbaa !58
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.fr = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.fr, ptr %i.fq, align 16, !tbaa !58
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store float %i.fp, ptr %i.fs, align 16, !tbaa !58
  %i.ft = call fastcc noundef i32 @_ZN7lodepngL9invMatrixEPf(ptr noundef %i.a)
  %.not.i46 = icmp eq i32 %i.ft, 0
  br i1 %.not.i46, label %bb.e, label %_ZN7lodepngL10getICCChrmEPfS0_PKNS_10LodePNGICCE.exit

bb.e:                                             ; preds = %.loopexit.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.fv = fpext <2 x float> %i.ea to <2 x double> ; 2 uses
  %i.fw = fpext float %.sroa.8.0.i to double
  %i.fx = load <4 x float>, ptr %i.a, align 16, !tbaa !58 ; 3 uses
  %i.fy = load <4 x float>, ptr %i.fu, align 4, !tbaa !58 ; 2 uses
  %i.fz = shufflevector <4 x float> %i.fx, <4 x float> %i.fy, <4 x i32> <i32 0, i32 3, i32 5, i32 0>
  %i.ga = fpext <4 x float> %i.fz to <4 x double>
  %i.gb = load <4 x float>, ptr %i.fq, align 16, !tbaa !58
  %i.gc = shufflevector <4 x float> %i.fx, <4 x float> %i.gb, <4 x i32> <i32 1, i32 4, i32 7, i32 1>
  %i.gd = fpext <4 x float> %i.gc to <4 x double>
  %i.ge = shufflevector <2 x double> %i.fv, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gf = fmul <4 x double> %i.ge, %i.gd
  %i.gg = shufflevector <2 x double> %i.fv, <2 x double> poison, <4 x i32> zeroinitializer
  %i.gh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gg, <4 x double> %i.ga, <4 x double> %i.gf)
  %i.gi = shufflevector <4 x float> %i.fy, <4 x float> %i.fx, <4 x i32> <i32 6, i32 0, i32 3, i32 6>
  %i.gj = fpext <4 x float> %i.gi to <4 x double>
  %i.gk = insertelement <4 x double> poison, double %i.fw, i64 0
  %i.gl = shufflevector <4 x double> %i.gk, <4 x double> poison, <4 x i32> zeroinitializer
  %i.gm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gl, <4 x double> %i.gj, <4 x double> %i.gh)
  %i.gn = fptrunc <4 x double> %i.gm to <4 x float> ; 3 uses
  %i.go = fmul <4 x float> %i.eu, %i.gn
  store <4 x float> %i.go, ptr %0, align 4, !tbaa !58
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gq = extractelement <4 x float> %i.gn, i64 2
  %i.gr = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.gs = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.gt = fmul <4 x float> %i.gr, %i.gs
  store <4 x float> %i.gt, ptr %i.gp, align 4, !tbaa !58
  %i.gu = fmul float %i.gq, %i.fp
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.gu, ptr %i.gv, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  store <2 x float> %i.ea, ptr %1, align 4, !tbaa !58
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %.sroa.8.0.i, ptr %i.gw, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.critedge

bb.f:                                             ; preds = %bb.b
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %i.gx, align 4, !tbaa !58
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gy, align 4, !tbaa !58
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !58
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 1.000000e+00, ptr %i.gz, align 4, !tbaa !58
  store <2 x float> splat (float 1.000000e+00), ptr %1, align 4, !tbaa !58
  br label %.critedge

_ZN7lodepngL10getICCChrmEPfS0_PKNS_10LodePNGICCE.exit: ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.critedge

bb.g:                                             ; preds = %bb.a
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !73
  %.not42 = icmp eq i32 %i.hb, 0
  br i1 %.not42, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 244
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !69
  %.not43 = icmp eq i32 %i.hd, 0
  br i1 %.not43, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.hf = load <2 x i32>, ptr %i.he, align 4, !tbaa !15
  %i.hg = uitofp <2 x i32> %i.hf to <2 x float>
  %i.hh = fdiv <2 x float> %i.hg, splat (float 1.000000e+05) ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !75
  %i.hk = uitofp i32 %i.hj to float
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !77
  %i.hn = uitofp i32 %i.hm to float
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !79
  %i.hq = uitofp i32 %i.hp to float
  %i.hr = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.hk, i64 0
  %i.hs = insertelement <4 x float> %i.hr, float %i.hn, i64 1
  %i.ht = insertelement <4 x float> %i.hs, float %i.hq, i64 2
  %i.hu = fdiv <4 x float> %i.ht, <float 1.000000e+05, float 1.000000e+05, float 1.000000e+05, float 1.000000e+00> ; 4 uses
  %i.hv = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hw = shufflevector <4 x float> %i.hu, <4 x float> %i.hv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hx = fcmp oeq <4 x float> %i.hw, zeroinitializer
  %i.hy = bitcast <4 x i1> %i.hx to i4
  %.not61 = icmp eq i4 %i.hy, 0
  br i1 %.not61, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 236
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !78
  %i.ib = uitofp i32 %i.ia to float
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !76
  %i.ie = uitofp i32 %i.id to float
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !74
  %i.ih = uitofp i32 %i.ig to float
  %i.ii = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ih, i64 0
  %i.ij = insertelement <4 x float> %i.ii, float %i.ie, i64 1
  %i.ik = insertelement <4 x float> %i.ij, float %i.ib, i64 2
  %i.il = fdiv <4 x float> %i.ik, <float 1.000000e+05, float 1.000000e+05, float 1.000000e+05, float 1.000000e+00> ; 2 uses
  %i.im = fdiv <4 x float> %i.il, %i.hu           ; 2 uses
  %i.in = shufflevector <4 x float> %i.il, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.io = fsub <4 x float> splat (float 1.000000e+00), %i.in
  %i.ip = shufflevector <4 x float> %i.hu, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.iq = fsub <4 x float> %i.io, %i.ip
  %i.ir = shufflevector <4 x float> %i.hu, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.is = fdiv <4 x float> %i.iq, %i.ir           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.it = insertelement <4 x float> %i.im, float 1.000000e+00, i64 3
  store <4 x float> %i.it, ptr %i.b, align 16, !tbaa !58
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.iv = shufflevector <4 x float> %i.is, <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 1, i32 2>
  store <4 x float> %i.iv, ptr %i.iu, align 16, !tbaa !58
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ix = extractelement <4 x float> %i.is, i64 3
  store float %i.ix, ptr %i.iw, align 16, !tbaa !58
  %i.iy = call fastcc noundef i32 @_ZN7lodepngL9invMatrixEPf(ptr noundef %i.b)
  %.not.i.i = icmp eq i32 %i.iy, 0
  br i1 %.not.i.i, label %bb.k, label %_ZN7lodepngL15getChrmMatrixXYEPfffffffff.exit

_ZN7lodepngL15getChrmMatrixXYEPfffffffff.exit:    ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.iz = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.jc = extractelement <2 x float> %i.hh, i64 0
  %i.jd = fsub float 1.000000e+00, %i.jc
  %i.je = extractelement <2 x float> %i.hh, i64 1
  %i.jf = fsub float %i.jd, %i.je
  %i.jg = insertelement <2 x float> poison, float %i.jf, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> %i.hh, <2 x i32> <i32 0, i32 2>
  %i.ji = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jj = fdiv <2 x float> %i.jh, %i.ji           ; 3 uses
  %i.jk = fpext <2 x float> %i.jj to <2 x double> ; 2 uses
  %i.jl = load <4 x float>, ptr %i.jb, align 4, !tbaa !58
  %i.jm = load <5 x float>, ptr %i.ja, align 8, !tbaa !58
  %i.jn = load <7 x float>, ptr %i.b, align 16, !tbaa !58
  %i.jo = shufflevector <7 x float> %i.jn, <7 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.jp = fpext <4 x float> %i.jo to <4 x double>
  %i.jq = load <2 x float>, ptr %i.iz, align 4, !tbaa !58 ; 2 uses
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.js = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.ju = fpext <4 x float> %i.jt to <4 x double>
  %i.jv = shufflevector <2 x double> %i.jk, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.jw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jv, <4 x double> %i.jp, <4 x double> %i.ju)
  %i.jx = shufflevector <2 x float> %i.jq, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.jy = shufflevector <5 x float> %i.jm, <5 x float> %i.jx, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.jz = fpext <4 x float> %i.jy to <4 x double>
  %i.ka = shufflevector <2 x double> %i.jk, <2 x double> poison, <4 x i32> zeroinitializer
  %i.kb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ka, <4 x double> %i.jz, <4 x double> %i.jw)
  %i.kc = fptrunc <4 x double> %i.kb to <4 x float> ; 3 uses
  %i.kd = fmul <4 x float> %i.im, %i.kc
  store <4 x float> %i.kd, ptr %0, align 4, !tbaa !58
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kf = extractelement <4 x float> %i.kc, i64 1
  store float %i.kf, ptr %i.ke, align 4, !tbaa !58
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.kh = shufflevector <4 x float> %i.kc, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.ki = fmul <4 x float> %i.is, %i.kh
  store <4 x float> %i.ki, ptr %i.kg, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.kj = extractelement <2 x float> %i.jj, i64 1
  store float %i.kj, ptr %1, align 4, !tbaa !58
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float 1.000000e+00, ptr %i.kk, align 4, !tbaa !58
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.km = extractelement <2 x float> %i.jj, i64 0
  store float %i.km, ptr %i.kl, align 4, !tbaa !58
  br label %.critedge

bb.l:                                             ; preds = %bb.h, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 16 dereferenceable(36) @_ZZN7lodepngL7getChrmEPfS0_jPKNS_10LodePNGICCEPK11LodePNGInfoE4srgb, i64 36, i1 false), !tbaa !58
  store <2 x float> <float f0x3F735114, float 1.000000e+00>, ptr %1, align 4, !tbaa !58
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float f0x3F8B663F, ptr %i.kn, align 4, !tbaa !58
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.f, %bb.e, %bb.l, %bb.k, %_ZN7lodepngL15getChrmMatrixXYEPfffffffff.exit, %_ZN7lodepngL10getICCChrmEPfS0_PKNS_10LodePNGICCE.exit
  %.1 = phi i32 [ 1, %_ZN7lodepngL15getChrmMatrixXYEPfffffffff.exit ], [ 0, %bb.f ], [ 1, %_ZN7lodepngL10getICCChrmEPfS0_PKNS_10LodePNGICCE.exit ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.e ], [ 1, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN7lodepngL9invMatrixEPf(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !58
  %i.e = fpext float %i.d to double               ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load float, ptr %i.f, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load float, ptr %i.h, align 4, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load float, ptr %i.j, align 4, !tbaa !58
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.b, i64 1
  %i.n = fpext <2 x float> %i.m to <2 x double>   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !58
  %i.q = extractelement <2 x double> %i.n, i64 0
  %i.r = fneg double %i.q                         ; 2 uses
  %i.s = load float, ptr %0, align 4, !tbaa !58
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.p, i64 1
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = insertelement <2 x float> poison, float %i.g, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.i, i64 1
  %i.z = fpext <2 x float> %i.y to <2 x double>   ; 7 uses
  %i.aa = insertelement <2 x double> %i.z, double %i.e, i64 0
  %i.ab = fneg <2 x double> %i.aa                 ; 2 uses
  %i.ac = shufflevector <2 x double> %i.v, <2 x double> %i.z, <2 x i32> <i32 1, i32 2>
  %i.ad = fmul <2 x double> %i.ac, %i.ab
  %i.ae = insertelement <2 x double> %i.z, double %i.e, i64 1
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.ae, <2 x double> %i.ad) ; 3 uses
  %i.ag = load <2 x float>, ptr %i.w, align 4, !tbaa !58
  %i.ah = fpext <2 x float> %i.ag to <2 x double> ; 8 uses
  %i.ai = shufflevector <2 x double> %i.af, <2 x double> %i.n, <2 x i32> <i32 0, i32 3>
  %i.aj = insertelement <2 x double> %i.ah, double %i.r, i64 1
  %i.ak = fmul <2 x double> %i.ai, %i.aj
  %i.al = shufflevector <2 x double> %i.af, <2 x double> %i.z, <2 x i32> <i32 1, i32 3>
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.al, <2 x double> %i.ak) ; 3 uses
  %i.an = extractelement <2 x double> %i.ah, i64 1
  %i.ao = extractelement <2 x double> %i.am, i64 0
  %i.ap = extractelement <2 x double> %i.am, i64 1
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ap, double %i.ao)
  %i.ar = fdiv double 1.000000e+00, %i.aq         ; 3 uses
  %i.as = tail call double @llvm.fabs.f64(double %i.ar)
  %i.at = fcmp ogt double %i.as, 1.000000e+15
  br i1 %i.at, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.au = shufflevector <2 x double> %i.n, <2 x double> %i.z, <2 x i32> <i32 1, i32 2>
  %i.av = fneg <2 x double> %i.au                 ; 2 uses
  %i.aw = shufflevector <2 x double> %i.ab, <2 x double> %i.av, <2 x i32> <i32 2, i32 0>
  %i.ax = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ay = fmul <2 x double> %i.aw, %i.ax
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.z, <2 x double> %i.ay)
  %i.ba = shufflevector <2 x double> %i.af, <2 x double> %i.az, <4 x i32> <i32 1, i32 3, i32 2, i32 0>
  %i.bb = insertelement <4 x double> poison, double %i.ar, i64 0
  %i.bc = shufflevector <4 x double> %i.bb, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bd = fmul <4 x double> %i.ba, %i.bc
  %i.be = fptrunc <4 x double> %i.bd to <4 x float>
  store <4 x float> %i.be, ptr %0, align 4, !tbaa !58
  %i.bf = insertelement <2 x double> %i.av, double %i.r, i64 0
  %i.bg = shufflevector <2 x double> %i.ah, <2 x double> %i.v, <2 x i32> <i32 1, i32 2>
  %i.bh = fmul <2 x double> %i.bf, %i.bg
  %i.bi = insertelement <2 x double> %i.ah, double %i.e, i64 0
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.bi, <2 x double> %i.bh)
  %i.bk = shufflevector <2 x double> %i.z, <2 x double> %i.ah, <2 x i32> <i32 1, i32 2>
  %i.bl = fneg <2 x double> %i.bk
  %i.bm = fmul <2 x double> %i.v, %i.bl
  %i.bn = shufflevector <2 x double> %i.ah, <2 x double> %i.v, <2 x i32> <i32 0, i32 2>
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.n, <2 x double> %i.bm) ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 1
  %i.bq = fmul double %i.bp, %i.ar
  %i.br = shufflevector <2 x double> %i.bj, <2 x double> %i.am, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.bs = shufflevector <2 x double> %i.bo, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x double> %i.br, <4 x double> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bu = fmul <4 x double> %i.bt, %i.bc
  %i.bv = fptrunc <4 x double> %i.bu to <4 x float>
  store <4 x float> %i.bv, ptr %i.a, align 4, !tbaa !58
  %i.bw = fptrunc double %i.bq to float
  store float %i.bw, ptr %i.c, align 4, !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.062 = phi i32 [ 1, %bb.a ], [ 0, %.loopexit.loopexit ]
  ret i32 %.062
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #19 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #20

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !80     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !23
  %i.s = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !26   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !25
  %i.z = load i64, ptr %i.t, align 8, !tbaa !21
  store i64 %i.z, ptr %i.r, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !26
  store ptr %i.t, ptr %2, align 8, !tbaa !25
  store i64 0, ptr %i.ab, align 8, !tbaa !26
  store i8 0, ptr %i.t, align 8, !tbaa !21
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !23, !alias.scope !160
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !25, !alias.scope !161 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
end_hunk_1
