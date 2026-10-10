Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/splines?download=true
inline.NumInlined: 2007
inline.NumDeleted: 1087
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3jxl6N_SSE412_GLOBAL__N_112DrawSegmentsEPfS2_S2_mmmbPKNS_13SplineSegmentEPKmS7_:bb.a
_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i: ; preds = %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, %.lr.ph.i
  %i.bm = phi i64 [ %i.w, %.lr.ph.i ], [ %i.eb, %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i ] ; 3 uses
  %.046.i = phi i64 [ %i.t, %.lr.ph.i ], [ %i.bm, %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i ] ; 4 uses
  %i.bn = add i64 %.046.i, %4
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %i.bq = shufflevector <4 x i32> %i.bp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.br = add <4 x i32> %i.bq, <i32 0, i32 1, i32 2, i32 3>
  %i.bs = sitofp <4 x i32> %i.br to <4 x float>
  %i.bt = fsub <4 x float> %i.bs, %i.ae           ; 2 uses
  %i.bu = fmul <4 x float> %i.bt, %i.bt
  %i.bv = fadd <4 x float> %i.bu, %i.ai
  %i.bw = tail call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bv)
  %i.bx = fmul <4 x float> %i.bw, splat (float 5.000000e-01) ; 2 uses
  %i.by = fadd <4 x float> %i.bx, splat (float f0x3EB504F3)
  %i.bz = fmul <4 x float> %i.aa, %i.by           ; 2 uses
  %i.ca = fcmp ole <4 x float> %i.bz, zeroinitializer
  %i.cb = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bz) ; 4 uses
  %i.cc = fmul <4 x float> %i.cb, splat (float f0x3D9F35DB)
  %i.cd = fadd <4 x float> %i.cc, splat (float f0x39573B11)
  %i.ce = fmul <4 x float> %i.cb, %i.cd
  %i.cf = fadd <4 x float> %i.ce, splat (float f0x3E6DB0EC)
  %i.cg = fmul <4 x float> %i.cb, %i.cf
  %i.ch = fadd <4 x float> %i.cg, splat (float f0x3E8E3E87)
  %i.ci = fmul <4 x float> %i.cb, %i.ch
  %i.cj = fadd <4 x float> %i.ci, splat (float 1.000000e+00) ; 2 uses
  %i.ck = fmul <4 x float> %i.cj, %i.cj
  %i.cl = fdiv <4 x float> splat (float 1.000000e+00), %i.ck ; 2 uses
  %i.cm = fmul <4 x float> %i.cl, %i.cl
  %i.cn = fsub <4 x float> splat (float 1.000000e+00), %i.cm
  %i.co = select <4 x i1> %i.ca, <4 x i32> splat (i32 -2147483648), <4 x i32> zeroinitializer
  %i.cp = bitcast <4 x float> %i.cn to <4 x i32>
  %i.cq = xor <4 x i32> %i.co, %i.cp
  %i.cr = bitcast <4 x i32> %i.cq to <4 x float>
  %i.cs = fadd <4 x float> %i.bx, splat (float f0xBEB504F3)
  %i.ct = fmul <4 x float> %i.aa, %i.cs           ; 2 uses
  %i.cu = fcmp ole <4 x float> %i.ct, zeroinitializer
  %i.cv = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ct) ; 4 uses
  %i.cw = fmul <4 x float> %i.cv, splat (float f0x3D9F35DB)
  %i.cx = fadd <4 x float> %i.cw, splat (float f0x39573B11)
  %i.cy = fmul <4 x float> %i.cv, %i.cx
  %i.cz = fadd <4 x float> %i.cy, splat (float f0x3E6DB0EC)
  %i.da = fmul <4 x float> %i.cv, %i.cz
  %i.db = fadd <4 x float> %i.da, splat (float f0x3E8E3E87)
  %i.dc = fmul <4 x float> %i.cv, %i.db
  %i.dd = fadd <4 x float> %i.dc, splat (float 1.000000e+00) ; 2 uses
  %i.de = fmul <4 x float> %i.dd, %i.dd
  %i.df = fdiv <4 x float> splat (float 1.000000e+00), %i.de ; 2 uses
  %i.dg = fmul <4 x float> %i.df, %i.df
  %i.dh = fsub <4 x float> splat (float 1.000000e+00), %i.dg
  %i.di = select <4 x i1> %i.cu, <4 x i32> splat (i32 -2147483648), <4 x i32> zeroinitializer
  %i.dj = bitcast <4 x float> %i.dh to <4 x i32>
  %i.dk = xor <4 x i32> %i.di, %i.dj
  %i.dl = bitcast <4 x i32> %i.dk to <4 x float>
  %i.dm = fsub <4 x float> %i.cr, %i.dl           ; 2 uses
  %i.dn = fmul <4 x float> %i.dm, %i.dm
  %i.do = fmul <4 x float> %i.ac, %i.dn           ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.046.i ; 2 uses
  %i.dq = load <4 x float>, ptr %i.dp, align 1, !tbaa !50
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.046.i ; 2 uses
  %i.ds = fmul <4 x float> %., %i.do
  %i.dt = fadd <4 x float> %i.ds, %i.dq
  store <4 x float> %i.dt, ptr %i.dp, align 1, !tbaa !50
  %i.du = load <4 x float>, ptr %i.dr, align 1, !tbaa !50
  %i.dv = fmul <4 x float> %i.do, %.40
  %i.dw = fadd <4 x float> %i.du, %i.dv
  store <4 x float> %i.dw, ptr %i.dr, align 1, !tbaa !50
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.046.i ; 2 uses
  %i.dy = load <4 x float>, ptr %i.dx, align 1, !tbaa !50
  %i.dz = fmul <4 x float> %i.do, %i.au
  %i.ea = fadd <4 x float> %i.dy, %i.dz
  store <4 x float> %i.ea, ptr %i.dx, align 1, !tbaa !50
  %i.eb = add i64 %i.bm, 4                        ; 2 uses
  %.not33.i = icmp ugt i64 %i.eb, %i.v
  br i1 %.not33.i, label %.preheader.i, label %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, !llvm.loop !450

bb.d:                                             ; preds = %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, %.lr.ph48.i
  %.147.i = phi i64 [ %.0.lcssa.i, %.lr.ph48.i ], [ %i.gx, %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i ] ; 5 uses
  %i.ec = add i64 %.147.i, %4
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = insertelement <4 x i32> poison, i32 %i.ed, i64 0
  %i.ef = shufflevector <4 x i32> %i.ee, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eg = add <4 x i32> %i.ef, <i32 0, i32 1, i32 2, i32 3>
  %i.eh = sitofp <4 x i32> %i.eg to <4 x float>
  %i.ei = fsub <4 x float> %i.eh, %i.be           ; 3 uses
  %foldExtExtBinop = fmul <4 x float> %i.ei, %i.ei
  %i.ej = shufflevector <4 x float> %foldExtExtBinop, <4 x float> %i.ei, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ek = fadd <4 x float> %i.bk, %i.ej           ; 2 uses
  %i.el = extractelement <4 x float> %i.ek, i64 0
  %i.em = tail call float @llvm.sqrt.f32(float %i.el)
  %i.en = fmul float %i.em, 5.000000e-01
  %i.eo = insertelement <4 x float> %i.ek, float %i.en, i64 0 ; 2 uses
  %i.ep = fadd <4 x float> %i.eo, splat (float f0x3EB504F3) ; 2 uses
  %i.eq = extractelement <4 x float> %i.ep, i64 0
  %i.er = fmul float %i.bb, %i.eq
  %i.es = insertelement <4 x float> %i.ep, float %i.er, i64 0 ; 2 uses
  %i.et = fcmp ole <4 x float> %i.es, zeroinitializer
  %i.eu = select <4 x i1> %i.et, <4 x i32> <i32 -2147483648, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ev = fadd <4 x float> %i.eo, splat (float f0xBEB504F3) ; 2 uses
  %i.ew = extractelement <4 x float> %i.ev, i64 0
  %i.ex = fmul float %i.bb, %i.ew
  %i.ey = insertelement <4 x float> %i.ev, float %i.ex, i64 0 ; 2 uses
  %i.ez = fcmp ole <4 x float> %i.ey, zeroinitializer
  %i.fa = shufflevector <4 x float> %i.es, <4 x float> %i.ey, <2 x i32> <i32 0, i32 4>
  %i.fb = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.fa) ; 4 uses
  %i.fc = fmul <2 x float> %i.fb, splat (float f0x3D9F35DB)
  %i.fd = fadd <2 x float> %i.fc, splat (float f0x39573B11)
  %i.fe = fmul <2 x float> %i.fb, %i.fd
  %i.ff = fadd <2 x float> %i.fe, splat (float f0x3E6DB0EC)
  %i.fg = fmul <2 x float> %i.fb, %i.ff
  %i.fh = fadd <2 x float> %i.fg, splat (float f0x3E8E3E87)
  %i.fi = fmul <2 x float> %i.fb, %i.fh
  %i.fj = fadd <2 x float> %i.fi, splat (float 1.000000e+00) ; 2 uses
  %i.fk = fmul <2 x float> %i.fj, %i.fj
  %i.fl = fdiv <2 x float> splat (float 1.000000e+00), %i.fk ; 2 uses
  %i.fm = fmul <2 x float> %i.fl, %i.fl
  %i.fn = fsub <2 x float> splat (float 1.000000e+00), %i.fm ; 2 uses
  %i.fo = bitcast <2 x float> %i.fn to <2 x i32>
  %i.fp = shufflevector <2 x i32> %i.fo, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fq = xor <4 x i32> %i.eu, %i.fp
  %i.fr = bitcast <4 x i32> %i.fq to <4 x float>
  %i.fs = select <4 x i1> %i.ez, <4 x i32> <i32 -2147483648, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ft = bitcast <2 x float> %i.fn to <2 x i32>
  %i.fu = shufflevector <2 x i32> %i.ft, <2 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fv = xor <4 x i32> %i.fs, %i.fu
  %i.fw = bitcast <4 x i32> %i.fv to <4 x float>
  %i.fx = fsub <4 x float> %i.fr, %i.fw           ; 2 uses
  %foldExtExtBinop43 = fmul <4 x float> %i.fx, %i.fx
  %i.fy = extractelement <4 x float> %foldExtExtBinop43, i64 0
  %i.fz = fmul float %i.bc, %i.fy                 ; 5 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.147.i ; 3 uses
  %i.gb = load float, ptr %i.ga, align 1, !tbaa !50, !alias.scope !457 ; 2 uses
  %i.gc = fmul float %i.bl, %i.fz                 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.147.i ; 4 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.147.i ; 3 uses
  br i1 %6, label %.split.us.preheader.i35.i, label %.split.preheader.i34.i

.split.preheader.i34.i:                           ; preds = %bb.d
  %i.gf = fsub float %i.gb, %i.gc
  store float %i.gf, ptr %i.ga, align 1, !tbaa !50, !alias.scope !458
  %i.gg = load float, ptr %i.az, align 4, !tbaa !27
  %i.gh = load float, ptr %i.gd, align 1, !tbaa !50, !alias.scope !457
  %i.gi = fmul float %i.fz, %i.gg
  %i.gj = fsub float %i.gh, %i.gi
  store float %i.gj, ptr %i.gd, align 1, !tbaa !50, !alias.scope !458
  %i.gk = load float, ptr %i.ba, align 4, !tbaa !27
  %i.gl = load float, ptr %i.ge, align 1, !tbaa !50, !alias.scope !457
  %i.gm = fmul float %i.fz, %i.gk
  %i.gn = fsub float %i.gl, %i.gm
  br label %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i

.split.us.preheader.i35.i:                        ; preds = %bb.d
  %i.go = fadd float %i.gb, %i.gc
  store float %i.go, ptr %i.ga, align 1, !tbaa !50, !alias.scope !458
  %i.gp = load float, ptr %i.az, align 4, !tbaa !27
  %i.gq = load float, ptr %i.gd, align 1, !tbaa !50, !alias.scope !457
  %i.gr = fmul float %i.fz, %i.gp
  %i.gs = fadd float %i.gr, %i.gq
  store float %i.gs, ptr %i.gd, align 1, !tbaa !50, !alias.scope !458
  %i.gt = load float, ptr %i.ba, align 4, !tbaa !27
  %i.gu = load float, ptr %i.ge, align 1, !tbaa !50, !alias.scope !457
  %i.gv = fmul float %i.fz, %i.gt
  %i.gw = fadd float %i.gv, %i.gu
  br label %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i

_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i: ; preds = %.split.us.preheader.i35.i, %.split.preheader.i34.i
  %.sink39 = phi float [ %i.gw, %.split.us.preheader.i35.i ], [ %i.gn, %.split.preheader.i34.i ]
  store float %.sink39, ptr %i.ge, align 1, !tbaa !50, !alias.scope !458
  %i.gx = add nuw i64 %.147.i, 1                  ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.v
  br i1 %i.gy, label %bb.d, label %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit, !llvm.loop !455

_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit: ; preds = %_ZN3jxl6N_SSE412_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE44SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, %bb.b, %.preheader.i
  %i.gz = add nuw i64 %.022, 1                    ; 2 uses
  %i.ha = load i64, ptr %i.c, align 8, !tbaa !29
  %i.hb = icmp ult i64 %i.gz, %i.ha
  br i1 %i.hb, label %bb.b, label %._crit_edge, !llvm.loop !456
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3jxl6N_SSE212_GLOBAL__N_112DrawSegmentsEPfS2_S2_mmmbPKNS_13SplineSegmentEPKmS7_(ptr noalias nofree noundef captures(none) %0, ptr noalias nofree noundef captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9) #18 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %3 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = uitofp i64 %3 to float                   ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit
  %.022 = phi i64 [ %i.b, %.lr.ph ], [ %i.go, %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.022
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %7, i64 %i.h ; 12 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !121
  %i.m = fsub float %i.j, %i.l
  %i.n = tail call noundef i64 @llroundf(float noundef %i.m) #27 ; 2 uses
  %i.o = load float, ptr %i.i, align 4, !tbaa !120
  %i.p = load float, ptr %i.k, align 4, !tbaa !121
  %i.q = fadd float %i.o, %i.p
  %i.r = tail call noundef i64 @llroundf(float noundef %i.q) #27 ; 2 uses
  %i.s = icmp sge i64 %i.r, %4
  %.not.i = icmp slt i64 %i.n, %5
  %or.cond.i = and i1 %.not.i, %i.s
  br i1 %or.cond.i, label %bb.c, label %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated39.i = tail call i64 @llvm.smax.i64(i64 %4, i64 %i.n)
  %i.t = sub i64 %.sroa.speculated39.i, %4        ; 3 uses
  %i.u = add nsw i64 %i.r, 1
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.u, i64 %5)
  %i.v = sub i64 %.sroa.speculated.i, %4          ; 4 uses
  %i.w = add i64 %i.t, 4                          ; 2 uses
  %.not3345.i = icmp ugt i64 %i.w, %i.v
  br i1 %.not3345.i, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.z = load <1 x float>, ptr %i.x, align 4
  %i.aa = shufflevector <1 x float> %i.z, <1 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ab = load <4 x float>, ptr %i.y, align 4     ; 6 uses
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ad = load <4 x float>, ptr %i.i, align 4     ; 2 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.af = extractelement <4 x float> %i.ad, i64 1
  %i.ag = fsub float %i.f, %i.af                  ; 2 uses
  %.scalar.i.i = fmul float %i.ag, %i.ag
  %i.ah = insertelement <4 x float> poison, float %.scalar.i.i, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = extractelement <4 x float> %i.ab, i64 1
  %i.ak = fneg float %i.aj
  %i.al = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> zeroinitializer
  %i.an = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ao = extractelement <4 x float> %i.ab, i64 3
  %i.ap = fneg <4 x float> %i.ab                  ; 2 uses
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ar = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.as = extractelement <4 x float> %i.ap, i64 3
  %. = select i1 %6, <4 x float> %i.an, <4 x float> %i.am
  %.40 = select i1 %6, <4 x float> %i.ar, <4 x float> %i.aq
  %.41 = select i1 %6, float %i.ao, float %i.as
  %i.at = insertelement <4 x float> poison, float %.41, i64 0
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer
  br label %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE24SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i

.preheader.i:                                     ; preds = %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE24SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, %bb.c
  %.0.lcssa.i = phi i64 [ %i.t, %bb.c ], [ %i.bl, %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE24SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i ] ; 2 uses
  %i.av = icmp ult i64 %.0.lcssa.i, %i.v
  br i1 %i.av, label %.lr.ph48.i, label %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit

.lr.ph48.i:                                       ; preds = %.preheader.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !122 ; 2 uses
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !123
  %i.bc = load <4 x float>, ptr %i.i, align 4     ; 2 uses
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.be = extractelement <4 x float> %i.bc, i64 1
  %i.bf = fsub float %i.f, %i.be                  ; 3 uses
  %i.bg = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.bi = fmul float %i.bf, %i.bf
  %i.bj = insertelement <4 x float> %i.bh, float %i.bi, i64 0
  %i.bk = load float, ptr %i.ay, align 4, !tbaa !27
  br label %bb.d

_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE24SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i: ; preds = %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE24SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, %.lr.ph.i
  %i.bl = phi i64 [ %i.w, %.lr.ph.i ], [ %i.ea, %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE24SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i ] ; 3 uses
  %.046.i = phi i64 [ %i.t, %.lr.ph.i ], [ %i.bl, %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE24SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i ] ; 4 uses
  %i.bm = add i64 %.046.i, %4
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %i.bp = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bq = add <4 x i32> %i.bp, <i32 0, i32 1, i32 2, i32 3>
  %i.br = sitofp <4 x i32> %i.bq to <4 x float>
  %i.bs = fsub <4 x float> %i.br, %i.ae           ; 2 uses
  %i.bt = fmul <4 x float> %i.bs, %i.bs
  %i.bu = fadd <4 x float> %i.bt, %i.ai
  %i.bv = tail call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bu)
  %i.bw = fmul <4 x float> %i.bv, splat (float 5.000000e-01) ; 2 uses
  %i.bx = fadd <4 x float> %i.bw, splat (float f0x3EB504F3)
  %i.by = fmul <4 x float> %i.aa, %i.bx           ; 2 uses
  %i.bz = fcmp ole <4 x float> %i.by, zeroinitializer
  %i.ca = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.by) ; 4 uses
  %i.cb = fmul <4 x float> %i.ca, splat (float f0x3D9F35DB)
  %i.cc = fadd <4 x float> %i.cb, splat (float f0x39573B11)
  %i.cd = fmul <4 x float> %i.ca, %i.cc
  %i.ce = fadd <4 x float> %i.cd, splat (float f0x3E6DB0EC)
  %i.cf = fmul <4 x float> %i.ca, %i.ce
  %i.cg = fadd <4 x float> %i.cf, splat (float f0x3E8E3E87)
  %i.ch = fmul <4 x float> %i.ca, %i.cg
  %i.ci = fadd <4 x float> %i.ch, splat (float 1.000000e+00) ; 2 uses
  %i.cj = fmul <4 x float> %i.ci, %i.ci
  %i.ck = fdiv <4 x float> splat (float 1.000000e+00), %i.cj ; 2 uses
  %i.cl = fmul <4 x float> %i.ck, %i.ck
  %i.cm = fsub <4 x float> splat (float 1.000000e+00), %i.cl
  %i.cn = select <4 x i1> %i.bz, <4 x i32> splat (i32 -2147483648), <4 x i32> zeroinitializer
  %i.co = bitcast <4 x float> %i.cm to <4 x i32>
  %i.cp = xor <4 x i32> %i.cn, %i.co
  %i.cq = bitcast <4 x i32> %i.cp to <4 x float>
  %i.cr = fadd <4 x float> %i.bw, splat (float f0xBEB504F3)
  %i.cs = fmul <4 x float> %i.aa, %i.cr           ; 2 uses
  %i.ct = fcmp ole <4 x float> %i.cs, zeroinitializer
  %i.cu = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cs) ; 4 uses
  %i.cv = fmul <4 x float> %i.cu, splat (float f0x3D9F35DB)
  %i.cw = fadd <4 x float> %i.cv, splat (float f0x39573B11)
  %i.cx = fmul <4 x float> %i.cu, %i.cw
  %i.cy = fadd <4 x float> %i.cx, splat (float f0x3E6DB0EC)
  %i.cz = fmul <4 x float> %i.cu, %i.cy
  %i.da = fadd <4 x float> %i.cz, splat (float f0x3E8E3E87)
  %i.db = fmul <4 x float> %i.cu, %i.da
  %i.dc = fadd <4 x float> %i.db, splat (float 1.000000e+00) ; 2 uses
  %i.dd = fmul <4 x float> %i.dc, %i.dc
  %i.de = fdiv <4 x float> splat (float 1.000000e+00), %i.dd ; 2 uses
  %i.df = fmul <4 x float> %i.de, %i.de
  %i.dg = fsub <4 x float> splat (float 1.000000e+00), %i.df
  %i.dh = select <4 x i1> %i.ct, <4 x i32> splat (i32 -2147483648), <4 x i32> zeroinitializer
  %i.di = bitcast <4 x float> %i.dg to <4 x i32>
  %i.dj = xor <4 x i32> %i.dh, %i.di
  %i.dk = bitcast <4 x i32> %i.dj to <4 x float>
  %i.dl = fsub <4 x float> %i.cq, %i.dk           ; 2 uses
  %i.dm = fmul <4 x float> %i.dl, %i.dl
  %i.dn = fmul <4 x float> %i.ac, %i.dm           ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.046.i ; 2 uses
  %i.dp = load <4 x float>, ptr %i.do, align 1, !tbaa !50, !alias.scope !470
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.046.i ; 2 uses
  %i.dr = fmul <4 x float> %., %i.dn
  %i.ds = fadd <4 x float> %i.dr, %i.dp
  store <4 x float> %i.ds, ptr %i.do, align 1, !tbaa !50, !alias.scope !471
  %i.dt = load <4 x float>, ptr %i.dq, align 1, !tbaa !50, !alias.scope !470
  %i.du = fmul <4 x float> %i.dn, %.40
  %i.dv = fadd <4 x float> %i.dt, %i.du
  store <4 x float> %i.dv, ptr %i.dq, align 1, !tbaa !50, !alias.scope !471
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.046.i ; 2 uses
  %i.dx = load <4 x float>, ptr %i.dw, align 1, !tbaa !50, !alias.scope !470
  %i.dy = fmul <4 x float> %i.dn, %i.au
  %i.dz = fadd <4 x float> %i.dx, %i.dy
  store <4 x float> %i.dz, ptr %i.dw, align 1, !tbaa !50, !alias.scope !471
  %i.ea = add i64 %i.bl, 4                        ; 2 uses
  %.not33.i = icmp ugt i64 %i.ea, %i.v
  br i1 %.not33.i, label %.preheader.i, label %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE24SimdIfLm4ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, !llvm.loop !463

bb.d:                                             ; preds = %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE24SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, %.lr.ph48.i
  %.147.i = phi i64 [ %.0.lcssa.i, %.lr.ph48.i ], [ %i.gm, %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE24SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i ] ; 5 uses
  %i.eb = add i64 %.147.i, %4
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = insertelement <4 x i32> poison, i32 %i.ec, i64 0
  %i.ee = shufflevector <4 x i32> %i.ed, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ef = add <4 x i32> %i.ee, <i32 0, i32 1, i32 2, i32 3>
  %i.eg = sitofp <4 x i32> %i.ef to <4 x float>
  %i.eh = fsub <4 x float> %i.eg, %i.bd           ; 3 uses
  %foldExtExtBinop = fmul <4 x float> %i.eh, %i.eh
  %i.ei = shufflevector <4 x float> %foldExtExtBinop, <4 x float> %i.eh, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ej = fadd <4 x float> %i.bj, %i.ei           ; 2 uses
  %i.ek = extractelement <4 x float> %i.ej, i64 0
  %i.el = tail call float @llvm.sqrt.f32(float %i.ek)
  %i.em = fmul float %i.el, 5.000000e-01
  %i.en = insertelement <4 x float> %i.ej, float %i.em, i64 0 ; 2 uses
  %i.eo = fadd <4 x float> %i.en, splat (float f0x3EB504F3) ; 2 uses
  %i.ep = extractelement <4 x float> %i.eo, i64 0
  %i.eq = fmul float %i.ba, %i.ep
  %i.er = insertelement <4 x float> %i.eo, float %i.eq, i64 0 ; 2 uses
  %i.es = fcmp ole <4 x float> %i.er, zeroinitializer
  %i.et = select <4 x i1> %i.es, <4 x i32> <i32 -2147483648, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.eu = fadd <4 x float> %i.en, splat (float f0xBEB504F3) ; 2 uses
  %i.ev = extractelement <4 x float> %i.eu, i64 0
  %i.ew = fmul float %i.ba, %i.ev
  %i.ex = insertelement <4 x float> %i.eu, float %i.ew, i64 0 ; 2 uses
  %i.ey = fcmp ole <4 x float> %i.ex, zeroinitializer
  %i.ez = shufflevector <4 x float> %i.er, <4 x float> %i.ex, <2 x i32> <i32 0, i32 4>
  %i.fa = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ez) ; 4 uses
  %i.fb = fmul <2 x float> %i.fa, splat (float f0x3D9F35DB)
  %i.fc = fadd <2 x float> %i.fb, splat (float f0x39573B11)
  %i.fd = fmul <2 x float> %i.fa, %i.fc
  %i.fe = fadd <2 x float> %i.fd, splat (float f0x3E6DB0EC)
  %i.ff = fmul <2 x float> %i.fa, %i.fe
  %i.fg = fadd <2 x float> %i.ff, splat (float f0x3E8E3E87)
  %i.fh = fmul <2 x float> %i.fa, %i.fg
  %i.fi = fadd <2 x float> %i.fh, splat (float 1.000000e+00) ; 2 uses
  %i.fj = fmul <2 x float> %i.fi, %i.fi
  %i.fk = fdiv <2 x float> splat (float 1.000000e+00), %i.fj ; 2 uses
  %i.fl = fmul <2 x float> %i.fk, %i.fk
  %i.fm = fsub <2 x float> splat (float 1.000000e+00), %i.fl ; 2 uses
  %i.fn = bitcast <2 x float> %i.fm to <2 x i32>
  %i.fo = shufflevector <2 x i32> %i.fn, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fp = xor <4 x i32> %i.et, %i.fo
  %i.fq = bitcast <4 x i32> %i.fp to <4 x float>
  %i.fr = select <4 x i1> %i.ey, <4 x i32> <i32 -2147483648, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fs = bitcast <2 x float> %i.fm to <2 x i32>
  %i.ft = shufflevector <2 x i32> %i.fs, <2 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fu = xor <4 x i32> %i.fr, %i.ft
  %i.fv = bitcast <4 x i32> %i.fu to <4 x float>
  %i.fw = fsub <4 x float> %i.fq, %i.fv           ; 2 uses
  %foldExtExtBinop43 = fmul <4 x float> %i.fw, %i.fw
  %i.fx = extractelement <4 x float> %foldExtExtBinop43, i64 0
  %i.fy = fmul float %i.bb, %i.fx                 ; 5 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.147.i ; 3 uses
  %i.ga = load float, ptr %i.fz, align 1, !tbaa !50, !alias.scope !472 ; 2 uses
  %i.gb = fmul float %i.bk, %i.fy                 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.147.i ; 4 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.147.i ; 3 uses
  br i1 %6, label %.split.us.preheader.i35.i, label %.split.preheader.i34.i

.split.preheader.i34.i:                           ; preds = %bb.d
  %i.ge = fsub float %i.ga, %i.gb
  store float %i.ge, ptr %i.fz, align 1, !tbaa !50, !alias.scope !473
  %i.gf = load float, ptr %i.az, align 4, !tbaa !27
  %i.gg = load float, ptr %i.gc, align 1, !tbaa !50, !alias.scope !472
  %11 = fmul float %i.fy, %i.gf
  %12 = fsub float %i.gg, %11
  store float %12, ptr %i.gc, align 1, !tbaa !50, !alias.scope !473
  %13 = load float, ptr %10, align 4, !tbaa !27
  %14 = load float, ptr %i.gd, align 1, !tbaa !50, !alias.scope !472
  %15 = fmul float %i.fy, %13
  %i.gh = fsub float %14, %15
  br label %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE24SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i

.split.us.preheader.i35.i:                        ; preds = %bb.d
  %i.gi = fadd float %i.ga, %i.gb
  store float %i.gi, ptr %i.fz, align 1, !tbaa !50, !alias.scope !473
  %i.gj = load float, ptr %i.az, align 4, !tbaa !27
  %i.gk = load float, ptr %i.gc, align 1, !tbaa !50, !alias.scope !472
  %16 = fmul float %i.fy, %i.gj
  %17 = fadd float %16, %i.gk
  store float %17, ptr %i.gc, align 1, !tbaa !50, !alias.scope !473
  %18 = load float, ptr %10, align 4, !tbaa !27
  %19 = load float, ptr %i.gd, align 1, !tbaa !50, !alias.scope !472
  %20 = fmul float %i.fy, %18
  %i.gl = fadd float %20, %19
  br label %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE24SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i

_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE24SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i: ; preds = %.split.us.preheader.i35.i, %.split.preheader.i34.i
  %.sink39 = phi float [ %i.gl, %.split.us.preheader.i35.i ], [ %i.gh, %.split.preheader.i34.i ]
  store float %.sink39, ptr %i.gd, align 1, !tbaa !50, !alias.scope !473
  %i.gm = add nuw i64 %.147.i, 1                  ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.v
  br i1 %i.gn, label %bb.d, label %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit, !llvm.loop !468

_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentERKNS_13SplineSegmentEbmmmPrPf.exit: ; preds = %_ZN3jxl6N_SSE212_GLOBAL__N_111DrawSegmentIN3hwy6N_SSE24SimdIfLm1ELi0EEEEEvT_RKNS_13SplineSegmentEbmmmPrPf.exit.i, %bb.b, %.preheader.i
  %i.go = add nuw i64 %.022, 1                    ; 2 uses
  %i.gp = load i64, ptr %i.c, align 8, !tbaa !29
  %i.gq = icmp ult i64 %i.go, %i.gp
  br i1 %i.gq, label %bb.b, label %._crit_edge, !llvm.loop !469
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEPS2_OT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(536) %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = load ptr, ptr %0, align 8, !tbaa !98
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 536
  %i.h = add nsw i64 %i.g, 1                      ; 2 uses
  %i.i = icmp ugt i64 %i.h, 34415567301696924
  br i1 %i.i, label %bb.b, label %_ZNKSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  unreachable

_ZNKSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = sdiv exact i64 %i.m, 536                 ; 2 uses
  %.not.i = icmp ult i64 %i.n, 17207783650848462
  %i.o = shl nuw nsw i64 %i.n, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.h)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 34415567301696924 ; 4 uses
  %i.p = icmp eq i64 %.0.i, 0
  br i1 %i.p, label %_ZNSt3__114__split_bufferIN3jxl6SplineERNS_9allocatorIS2_EEEC2EmmS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit
  %i.q = icmp ugt i64 %.0.i, 34415567301696924
  br i1 %i.q, label %bb.d, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl6SplineEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #23
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl6SplineEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i: ; preds = %bb.c
  %i.r = mul nuw i64 %.0.i, 536
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #24
  br label %_ZNSt3__114__split_bufferIN3jxl6SplineERNS_9allocatorIS2_EEEC2EmmS5_.exit

_ZNSt3__114__split_bufferIN3jxl6SplineERNS_9allocatorIS2_EEEC2EmmS5_.exit: ; preds = %_ZNKSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl6SplineEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i
  %storemerge.i = phi ptr [ %i.s, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl6SplineEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i ], [ null, %_ZNKSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.f ; 9 uses
  %i.u = getelementptr inbounds nuw [536 x i8], ptr %storemerge.i, i64 %.0.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.t, i8 0, i64 24, i1 false)
  %i.x = load ptr, ptr %1, align 8, !tbaa !21     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22   ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl6SplineEEEE9constructB8nn180100IS3_JRKS3_EvEEvRS4_PT_DpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__114__split_bufferIN3jxl6SplineERNS_9allocatorIS2_EEEC2EmmS5_.exit
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %_ZNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEE11__vallocateB8nn180100Em.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNKSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(536) %i.t) #23
  unreachable

_ZNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEE11__vallocateB8nn180100Em.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #24 ; 3 uses
  store ptr %i.ae, ptr %i.t, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac ; 2 uses
  store ptr %i.af, ptr %i.w, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr align 4 %i.x, i64 %i.ac, i1 false)
  store ptr %i.af, ptr %i.v, align 8, !tbaa !22
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl6SplineEEEE9constructB8nn180100IS3_JRKS3_EvEEvRS4_PT_DpOT0_.exit

_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl6SplineEEEE9constructB8nn180100IS3_JRKS3_EvEEvRS4_PT_DpOT0_.exit: ; preds = %_ZNSt3__114__split_bufferIN3jxl6SplineERNS_9allocatorIS2_EEEC2EmmS5_.exit, %_ZNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEE11__vallocateB8nn180100Em.exit.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.ag, ptr noundef nonnull align 8 dereferenceable(512) %i.ah, i64 512, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 536 ; 2 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !96  ; 3 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !97    ; 3 uses
  %.not13.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not13.i.i, label %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl6SplineEEEE9constructB8nn180100IS3_JRKS3_EvEEvRS4_PT_DpOT0_.exit, %.lr.ph.i.i
  %i.al = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.t, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl6SplineEEEE9constructB8nn180100IS3_JRKS3_EvEEvRS4_PT_DpOT0_.exit ] ; 3 uses
  %.sroa.18.014.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %i.aj, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl6SplineEEEE9constructB8nn180100IS3_JRKS3_EvEEvRS4_PT_DpOT0_.exit ] ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -536 ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -536 ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 -520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.am, i8 0, i64 24, i1 false)
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !tbaa !38
  store <2 x ptr> %i.ap, ptr %i.am, align 8, !tbaa !38
  %i.aq = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -520
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.an, i8 0, i64 24, i1 false)
  %i.as = getelementptr inbounds i8, ptr %i.al, i64 -512
  %i.at = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.as, ptr noundef nonnull align 8 dereferenceable(512) %i.at, i64 512, i1 false)
  %.not.i.i = icmp eq ptr %i.an, %i.ak
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !474

_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !97
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !97
  br label %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit

_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit: ; preds = %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl6SplineEEEE9constructB8nn180100IS3_JRKS3_EvEEvRS4_PT_DpOT0_.exit
  %i.au = phi ptr [ %.pre, %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split ], [ %i.aj, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl6SplineEEEE9constructB8nn180100IS3_JRKS3_EvEEvRS4_PT_DpOT0_.exit ] ; 2 uses
  %i.av = phi ptr [ %.pr, %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split ], [ %i.ak, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl6SplineEEEE9constructB8nn180100IS3_JRKS3_EvEEvRS4_PT_DpOT0_.exit ] ; 5 uses
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.am, %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split ], [ %i.t, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl6SplineEEEE9constructB8nn180100IS3_JRKS3_EvEEvRS4_PT_DpOT0_.exit ]
  store ptr %.sroa.2.0.copyload.i.i, ptr %0, align 8, !tbaa !97
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !97
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !97
  store ptr %i.u, ptr %i.j, align 8, !tbaa !97
  %.not2.i.i.i.i = icmp eq ptr %i.av, %i.au
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl6SplineERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl6SplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i
  %i.ax = phi ptr [ %i.ay, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl6SplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i ], [ %i.au, %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit ] ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -536 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl6SplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 -528
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !22
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 -520
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !38
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.az to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bf) #25
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl6SplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl6SplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.ay
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl6SplineERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !475

_ZNSt3__114__split_bufferIN3jxl6SplineERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl6SplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i, %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit
  %.not.i4 = icmp eq ptr %i.av, null
  br i1 %.not.i4, label %_ZNSt3__114__split_bufferIN3jxl6SplineERNS_9allocatorIS2_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__114__split_bufferIN3jxl6SplineERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i
  %i.bg = ptrtoint ptr %i.aw to i64
  %i.bh = ptrtoint ptr %i.av to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bi) #25
  br label %_ZNSt3__114__split_bufferIN3jxl6SplineERNS_9allocatorIS2_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3jxl6SplineERNS_9allocatorIS2_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIN3jxl6SplineERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i, %bb.h
  ret ptr %i.ai
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.26) #23
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_4pairIN3jxl6Spline5PointEfEENS_9allocatorIS5_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.26) #23
  unreachable
}
end_hunk_0
