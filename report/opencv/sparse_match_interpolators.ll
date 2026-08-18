inline.NumInlined: 1684
inline.NumDeleted: 516
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv8ximgproc19RICInterpolatorImpl20HypothesisEvaluationERKNS_3MatEPKiPKfiRKSt6vectorINS0_11SparseMatchESaISA_EERS2_:bb.a
  %i.ez = extractelement <2 x float> %i.be, i64 1
  %i.fa = fsub float %i.ew, %i.ez
  %.fr87 = freeze float %i.fa                     ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.fc = load <2 x float>, ptr %i.fb, align 4, !tbaa !27
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !27
  %i.ff = fneg float %i.fe
  %i.fg = fdiv float %i.ff, %i.o
  %i.fh = tail call noundef float @expf(float noundef %i.fg) #27
  %or.cond = fcmp uno float %i.ey, %.fr87
  br i1 %or.cond, label %bb.o, label %bb.v

bb.o:                                             ; preds = %_ZNK2cv3Mat2atIfEERKT_i.exit73
  %i.fi = load i32, ptr %i.p, align 4, !tbaa !63
  %i.fj = icmp slt i32 %i.fi, 2
  br i1 %i.fj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIiEERT_i.exit

bb.q:                                             ; preds = %bb.o
  %i.fl = load i32, ptr %6, align 8, !tbaa !56
  %i.fm = and i32 %i.fl, 16384
  %i.fn = icmp ne i32 %i.fm, 0
  %i.fo = load i32, ptr %i.q, align 4
  %i.fp = icmp eq i32 %i.fo, 1
  %or.cond.i74 = select i1 %i.fn, i1 true, i1 %i.fp
  br i1 %or.cond.i74, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIiEERT_i.exit

bb.s:                                             ; preds = %bb.q
  %i.fr = load i32, ptr %i.r, align 8, !tbaa !88
  %i.fs = icmp eq i32 %i.fr, 1
  br i1 %i.fs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ft = mul i64 %i.ax, %indvars.iv
  %i.fu = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ft
  br label %_ZN2cv3Mat2atIiEERT_i.exit

bb.u:                                             ; preds = %bb.s
  %i.fv = load i32, ptr %i.s, align 4, !tbaa !127 ; 3 uses
  %i.fw = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.fx = sdiv i32 %i.fw, %i.fv                   ; 2 uses
  %i.fy = mul nsw i32 %i.fx, %i.fv                ; 0 uses
  %.recomposed113 = srem i32 %i.fw, %i.fv
  %i.fz = sext i32 %i.fx to i64
  %i.ga = mul i64 %i.av, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ga
  %i.gc = sext i32 %.recomposed113 to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gc
  br label %_ZN2cv3Mat2atIiEERT_i.exit

_ZN2cv3Mat2atIiEERT_i.exit:                       ; preds = %bb.p, %bb.r, %bb.t, %bb.u
  %.0.i75 = phi ptr [ %i.fk, %bb.p ], [ %i.fq, %bb.r ], [ %i.fu, %bb.t ], [ %i.gd, %bb.u ]
  store i32 0, ptr %.0.i75, align 4, !tbaa !88
  br label %bb.ak

bb.v:                                             ; preds = %_ZNK2cv3Mat2atIfEERKT_i.exit73
  %i.ge = fsub <2 x float> %i.fc, %i.be           ; 2 uses
  %i.gf = extractelement <2 x float> %i.ge, i64 0
  %i.gg = fsub float %i.gf, %i.ey                 ; 2 uses
  %i.gh = extractelement <2 x float> %i.ge, i64 1
  %i.gi = fsub float %i.gh, %.fr87                ; 2 uses
  %i.gj = fmul float %i.gi, %i.gi
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.gg, float %i.gj)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.gk) ; 2 uses
  %i.gl = fcmp olt float %sqrt, 5.000000e+00
  %i.gm = load i32, ptr %i.p, align 4, !tbaa !63
  %i.gn = icmp slt i32 %i.gm, 2                   ; 2 uses
  br i1 %i.gl, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  br i1 %i.gn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIiEERT_i.exit78

bb.y:                                             ; preds = %bb.w
  %i.gp = load i32, ptr %6, align 8, !tbaa !56
  %i.gq = and i32 %i.gp, 16384
  %i.gr = icmp ne i32 %i.gq, 0
  %i.gs = load i32, ptr %i.q, align 4
  %i.gt = icmp eq i32 %i.gs, 1
  %or.cond.i76 = select i1 %i.gr, i1 true, i1 %i.gt
  br i1 %or.cond.i76, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIiEERT_i.exit78

bb.aa:                                            ; preds = %bb.y
  %i.gv = load i32, ptr %i.r, align 8, !tbaa !88
  %i.gw = icmp eq i32 %i.gv, 1
  br i1 %i.gw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gx = mul i64 %i.ar, %indvars.iv
  %i.gy = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.gx
  br label %_ZN2cv3Mat2atIiEERT_i.exit78

bb.ac:                                            ; preds = %bb.aa
  %i.gz = load i32, ptr %i.s, align 4, !tbaa !127 ; 3 uses
  %i.ha = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.hb = sdiv i32 %i.ha, %i.gz                   ; 2 uses
  %i.hc = mul nsw i32 %i.hb, %i.gz                ; 0 uses
  %.recomposed114 = srem i32 %i.ha, %i.gz
  %i.hd = sext i32 %i.hb to i64
  %i.he = mul i64 %i.ap, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.he
  %i.hg = sext i32 %.recomposed114 to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.hg
  br label %_ZN2cv3Mat2atIiEERT_i.exit78

_ZN2cv3Mat2atIiEERT_i.exit78:                     ; preds = %bb.x, %bb.z, %bb.ab, %bb.ac
  %.0.i77 = phi ptr [ %i.go, %bb.x ], [ %i.gu, %bb.z ], [ %i.gy, %bb.ab ], [ %i.hh, %bb.ac ]
  store i32 1, ptr %.0.i77, align 4, !tbaa !88
  br label %bb.ak

bb.ad:                                            ; preds = %bb.v
  br i1 %i.gn, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIiEERT_i.exit81

bb.af:                                            ; preds = %bb.ad
  %i.hj = load i32, ptr %6, align 8, !tbaa !56
  %i.hk = and i32 %i.hj, 16384
  %i.hl = icmp ne i32 %i.hk, 0
  %i.hm = load i32, ptr %i.q, align 4
  %i.hn = icmp eq i32 %i.hm, 1
  %or.cond.i79 = select i1 %i.hl, i1 true, i1 %i.hn
  br i1 %or.cond.i79, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIiEERT_i.exit81

bb.ah:                                            ; preds = %bb.af
  %i.hp = load i32, ptr %i.r, align 8, !tbaa !88
  %i.hq = icmp eq i32 %i.hp, 1
  br i1 %i.hq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hr = mul i64 %i.al, %indvars.iv
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.hr
  br label %_ZN2cv3Mat2atIiEERT_i.exit81

bb.aj:                                            ; preds = %bb.ah
  %i.ht = load i32, ptr %i.s, align 4, !tbaa !127 ; 3 uses
  %i.hu = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.hv = sdiv i32 %i.hu, %i.ht                   ; 2 uses
  %i.hw = mul nsw i32 %i.hv, %i.ht                ; 0 uses
  %.recomposed115 = srem i32 %i.hu, %i.ht
  %i.hx = sext i32 %i.hv to i64
  %i.hy = mul i64 %i.aj, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.hy
  %i.ia = sext i32 %.recomposed115 to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.ia
  br label %_ZN2cv3Mat2atIiEERT_i.exit81

_ZN2cv3Mat2atIiEERT_i.exit81:                     ; preds = %bb.ae, %bb.ag, %bb.ai, %bb.aj
  %.0.i80 = phi ptr [ %i.hi, %bb.ae ], [ %i.ho, %bb.ag ], [ %i.hs, %bb.ai ], [ %i.ib, %bb.aj ]
  store i32 0, ptr %.0.i80, align 4, !tbaa !88
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN2cv3Mat2atIiEERT_i.exit78, %_ZN2cv3Mat2atIiEERT_i.exit81, %_ZN2cv3Mat2atIiEERT_i.exit
  %sqrt.sink = phi float [ %sqrt, %_ZN2cv3Mat2atIiEERT_i.exit78 ], [ 5.000000e+00, %_ZN2cv3Mat2atIiEERT_i.exit81 ], [ 5.000000e+00, %_ZN2cv3Mat2atIiEERT_i.exit ]
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.fh, float %sqrt.sink, float %.090) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !493
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -1, 1) i32 @_ZN2cv8ximgproc19RICInterpolatorImpl20HypothesisGenerationEPiiRKSt6vectorINS0_11SparseMatchESaIS4_EERNS_3MatE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %4) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 3
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.04473 = phi i32 [ %i.bc, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.b = tail call i32 @rand() #27
  %i.c = srem i32 %i.b, %2
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !88
  %i.g = sext i32 %i.f to i64
  %i.h = load ptr, ptr %3, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.g ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.m = load <4 x float>, ptr %i.i, align 4, !tbaa !27 ; 4 uses
  %i.n = load float, ptr %i.l, align 4, !tbaa !494 ; 4 uses
  %i.o = load float, ptr %i.k, align 4, !tbaa !495 ; 3 uses
  %i.p = load float, ptr %i.j, align 4, !tbaa !262 ; 6 uses
  %i.q = tail call i32 @rand() #27
  %i.r = srem i32 %i.q, %2
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %1, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !88
  %i.v = sext i32 %i.u to i64
  %i.w = load ptr, ptr %3, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.v ; 4 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !309 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load <2 x float>, ptr %i.z, align 4, !tbaa !27 ; 3 uses
  %i.ac = load float, ptr %i.aa, align 4, !tbaa !495 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !494 ; 5 uses
  %i.af = tail call i32 @rand() #27
  %i.ag = srem i32 %i.af, %2
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !88
  %i.ak = sext i32 %i.aj to i64
  %i.al = load ptr, ptr %3, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ak ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %5 = load <2 x float>, ptr %i.am, align 4, !tbaa !27 ; 4 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !262 ; 5 uses
  %i.ap = fmul float %i.y, %i.ao
  %i.aq = extractelement <4 x float> %i.m, i64 0  ; 4 uses
  %i.ar = extractelement <2 x float> %i.ab, i64 0 ; 4 uses
  %i.as = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ar, float %i.ap)
  %6 = extractelement <2 x float> %5, i64 0       ; 3 uses
  %i.at = tail call float @llvm.fmuladd.f32(float %6, float %i.p, float %i.as)
  %i.au = fneg float %6                           ; 2 uses
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %i.ar, float %i.at)
  %i.aw = fneg float %i.aq
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.ao, float %i.av)
  %i.ay = fneg float %i.y                         ; 2 uses
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.p, float %i.ax) ; 2 uses
  %i.ba = tail call noundef float @llvm.fabs.f32(float %i.az)
  %i.bb = fcmp ugt float %i.ba, f0x34000000
  br i1 %i.bb, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.preheader
  %exitcond = icmp eq i32 %.04473, 10
  %i.bc = add nuw nsw i32 %.04473, 1
  br i1 %exitcond, label %.loopexit, label %.preheader

.critedge:                                        ; preds = %.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %7 = insertelement <4 x float> poison, float %i.ao, i64 0
  %8 = insertelement <4 x float> %7, float %i.y, i64 1
  %9 = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %10 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %11 = insertelement <2 x float> %10, float %i.p, i64 0
  %i.bf = insertelement <4 x float> poison, float %i.p, i64 0
  %i.bg = insertelement <4 x float> %i.bf, float %i.y, i64 1
  %i.bh = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bi = fmul float %i.ar, %i.au
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.y, float %i.ao, float %i.bi)
  %i.bk = fneg float %i.ao
  %i.bl = fmul float %i.aq, %i.bk
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.p, float %6, float %i.bl)
  %i.bn = fmul float %i.p, %i.ay
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ar, float %i.bn)
  %i.bp = load <2 x float>, ptr %i.bd, align 4, !tbaa !27 ; 2 uses
  %i.bq = load float, ptr %i.be, align 4, !tbaa !494 ; 4 uses
  %i.br = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.bj, i64 1
  %12 = shufflevector <2 x float> %i.ab, <2 x float> %5, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %13 = fsub <4 x float> %12, %8
  %14 = shufflevector <4 x float> %i.br, <4 x float> %13, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bs = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.az, i64 1
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 3 uses
  %i.bu = fdiv <4 x float> %14, %i.bt             ; 5 uses
  %i.bv = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.bm, i64 1
  %15 = shufflevector <2 x float> %9, <2 x float> %5, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %16 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %17 = fsub <4 x float> %15, %16
  %18 = shufflevector <4 x float> %i.bv, <4 x float> %17, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bw = fdiv <4 x float> %18, %i.bt             ; 5 uses
  %i.bx = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.bo, i64 1
  %i.by = shufflevector <4 x float> %i.bh, <4 x float> %i.m, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bz = fsub <4 x float> %i.bg, %i.by
  %i.ca = shufflevector <4 x float> %i.bx, <4 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cb = fdiv <4 x float> %i.ca, %i.bt           ; 5 uses
  %i.cc = extractelement <4 x float> %i.bw, i64 2 ; 2 uses
  %i.cd = fmul float %i.cc, %i.ac
  %i.ce = extractelement <4 x float> %i.bu, i64 2 ; 2 uses
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.o, float %i.cd)
  %i.cg = extractelement <4 x float> %i.cb, i64 2 ; 2 uses
  %i.ch = extractelement <2 x float> %i.bp, i64 0 ; 3 uses
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.ch, float %i.cf)
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !63
  %i.cl = icmp slt i32 %i.ck, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !87 ; 18 uses
  store float %i.ci, ptr %i.cn, align 4, !tbaa !27
  %i.co = extractelement <4 x float> %i.bw, i64 3 ; 2 uses
  %i.cp = fmul float %i.co, %i.ac
  %i.cq = extractelement <4 x float> %i.bu, i64 3 ; 2 uses
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.o, float %i.cp)
  %i.cs = extractelement <4 x float> %i.cb, i64 3 ; 2 uses
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.ch, float %i.cr) ; 2 uses
  br i1 %i.cl, label %bb.w, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.cu = load i32, ptr %4, align 8, !tbaa !56
  %i.cv = and i32 %i.cu, 16384
  %i.cw = icmp ne i32 %i.cv, 0                    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 84 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = icmp eq i32 %i.cy, 1
  %or.cond.i52 = select i1 %i.cw, i1 true, i1 %i.cz
  br i1 %or.cond.i52, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !88
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.df = load i64, ptr %i.de, align 8, !tbaa !85
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.df
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !127
  %.fr = freeze i32 %i.di                         ; 3 uses
  %i.dj = add i32 %.fr, 1
  %i.dk = icmp ult i32 %i.dj, 3
  %i.dl = select i1 %i.dk, i32 %.fr, i32 0        ; 2 uses
  %i.dm = mul nsw i32 %i.dl, %.fr
  %i.dn = sub nsw i32 1, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !85
  %i.dq = sext i32 %i.dl to i64
  %i.dr = mul i64 %i.dp, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dr
  %i.dt = sext i32 %i.dn to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dt
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g
  %.0.i53.ph = phi ptr [ %i.du, %bb.g ], [ %i.dg, %bb.f ], [ %i.da, %bb.d ]
  store float %i.ct, ptr %.0.i53.ph, align 4, !tbaa !27
  %i.dv = extractelement <4 x float> %i.bw, i64 1 ; 2 uses
  %i.dw = fmul float %i.ac, %i.dv
  %i.dx = extractelement <4 x float> %i.bu, i64 1 ; 2 uses
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.o, float %i.dw)
  %i.dz = extractelement <4 x float> %i.cb, i64 1 ; 2 uses
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dz, float %i.ch, float %i.dy)
  %i.eb = load i32, ptr %i.cx, align 4
  %i.ec = icmp eq i32 %i.eb, 1
  %or.cond.i55 = select i1 %i.cw, i1 true, i1 %i.ec
  br i1 %or.cond.i55, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !88
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !85
  %i.ej = shl i64 %i.ei, 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ej
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.em = load i32, ptr %i.el, align 4, !tbaa !127 ; 3 uses
  %i.en = sdiv i32 2, %i.em                       ; 2 uses
  %i.eo = mul nsw i32 %i.en, %i.em                ; 0 uses
  %.recomposed = srem i32 2, %i.em
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !85
  %i.er = sext i32 %i.en to i64
  %i.es = mul i64 %i.eq, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.es
  %i.eu = sext i32 %.recomposed to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.eu
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.k, %bb.l
  %.0.i56.ph = phi ptr [ %i.ev, %bb.l ], [ %i.ek, %bb.k ], [ %i.ed, %bb.i ]
  store float %i.ea, ptr %.0.i56.ph, align 4, !tbaa !27
  %i.ew = fmul float %i.cc, %i.ae
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.n, float %i.ew)
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.bq, float %i.ex)
  %i.ez = load i32, ptr %4, align 8, !tbaa !56
  %i.fa = and i32 %i.ez, 16384
  %i.fb = icmp ne i32 %i.fa, 0                    ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 84 ; 3 uses
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = icmp eq i32 %i.fd, 1
  %or.cond.i58 = select i1 %i.fb, i1 true, i1 %i.fe
  br i1 %or.cond.i58, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !88
  %i.fi = icmp eq i32 %i.fh, 1
  br i1 %i.fi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !85
  %i.fl = mul i64 %i.fk, 3
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.fl
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !127 ; 3 uses
  %i.fp = sdiv i32 3, %i.fo                       ; 2 uses
  %i.fq = mul nsw i32 %i.fp, %i.fo                ; 0 uses
  %.recomposed208 = srem i32 3, %i.fo
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !85
  %i.ft = sext i32 %i.fp to i64
  %i.fu = mul i64 %i.fs, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.fu
  %i.fw = sext i32 %.recomposed208 to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.fw
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.p, %bb.q
  %.0.i59.ph = phi ptr [ %i.fx, %bb.q ], [ %i.fm, %bb.p ], [ %i.ff, %bb.n ]
  store float %i.ey, ptr %.0.i59.ph, align 4, !tbaa !27
  %i.fy = fmul float %i.co, %i.ae
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.n, float %i.fy)
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.bq, float %i.fz)
  %i.gb = load i32, ptr %i.fc, align 4
  %i.gc = icmp eq i32 %i.gb, 1
  %or.cond.i61 = select i1 %i.fb, i1 true, i1 %i.gc
  br i1 %or.cond.i61, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !88
  %i.gg = icmp eq i32 %i.gf, 1
  br i1 %i.gg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !85
  %i.gj = shl i64 %i.gi, 2
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.gj
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !127 ; 3 uses
  %i.gn = sdiv i32 4, %i.gm                       ; 2 uses
  %i.go = mul nsw i32 %i.gn, %i.gm                ; 0 uses
  %.recomposed209 = srem i32 4, %i.gm
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !85
  %i.gr = sext i32 %i.gn to i64
end_hunk_0
