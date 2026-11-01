Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/MSDFErrorCorrection?download=true
inline.NumInlined: 699
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_21SimpleContourCombinerELi3EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE:bb.a
  %i.bh = call double @llvm.fmuladd.f64(double %i.be, double %i.be, double %i.bg)
  %sqrt.i124 = call noundef double @llvm.sqrt.f64(double %i.bh)
  %i.bi = fmul double %i.ba, %sqrt.i124           ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %9, i8 0, i64 32, i1 false)
  store ptr %2, ptr %i.bl, align 8, !tbaa !49
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 168
  %i.bq = load <2 x double>, ptr %i.ad, align 8, !tbaa !50
  call void @_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEC1ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull align 8 dereferenceable(25) %2)
  %i.br = call noundef i32 @_ZNK7msdfgen5Shape9edgeCountEv(ptr noundef nonnull align 8 dereferenceable(25) %2)
  %i.bs = sext i32 %i.br to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef %i.bs, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !54
  store <2 x double> %i.bq, ptr %i.bp, align 8, !tbaa !50
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  store double %i.bk, ptr %i.bu, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store <2 x double> splat (double 1.000000e+00), ptr %5, align 16, !tbaa !50
  %i.bv = invoke { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EEC2ERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit unwind label %bb.d ; 2 uses

bb.d:                                             ; preds = %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.bx = load ptr, ptr %i.bn, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !69
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EED2Ev.exit143
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EED2Ev.exit143 ], [ %i.bw, %bb.e ], [ %i.bw, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EEC2ERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit: ; preds = %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.ce = extractvalue { double, double } %i.bv, 0
  %i.cf = extractvalue { double, double } %i.bv, 1
  store double %i.ce, ptr %i.bt, align 8, !tbaa !50
  store double %i.cf, ptr %i.cd, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !23 ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph236, label %._crit_edge237

.lr.ph236:                                        ; preds = %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EEC2ERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.dp = load i32, ptr %i.cj, align 8, !tbaa !24 ; 4 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph236.split.preheader, label %._crit_edge237

.lr.ph236.split.preheader:                        ; preds = %.lr.ph236
  %i.dr = add nsw i32 %i.dp, -1
  %i.ds = add nsw i32 %i.dp, -1
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = add nsw i32 %i.ch, -1
  br label %.lr.ph

._crit_edge237:                                   ; preds = %._crit_edge, %.lr.ph236, %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EEC2ERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit
  %i.dv = load ptr, ptr %i.bn, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i125 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i125, label %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge237
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !69
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #19
  br label %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EED2Ev.exit

_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EED2Ev.exit: ; preds = %._crit_edge237, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret void

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph236.split.preheader
  %.0111235 = phi i32 [ %i.eh, %._crit_edge ], [ 0, %.lr.ph236.split.preheader ] ; 9 uses
  %.0112234 = phi i32 [ %i.el, %._crit_edge ], [ 1, %.lr.ph236.split.preheader ] ; 3 uses
  %i.eb = icmp slt i32 %.0112234, 0
  %i.ec = select i1 %i.eb, i32 %i.dr, i32 0
  %i.ed = uitofp nneg i32 %.0111235 to double
  %i.ee = fadd double %i.ed, 5.000000e-01         ; 3 uses
  %i.ef = icmp ne i32 %.0111235, 0                ; 3 uses
  %i.eg = add nsw i32 %.0111235, -1               ; 3 uses
  %i.eh = add nuw nsw i32 %.0111235, 1            ; 5 uses
  %i.ei = zext nneg i32 %i.ec to i64
  %i.ej = sext i32 %.0112234 to i64
  %i.ek = icmp slt i32 %.0111235, %i.du           ; 3 uses
  br label %bb.g

._crit_edge:                                      ; preds = %bb.ay
  %i.el = sub nsw i32 0, %.0112234
  %i.em = icmp slt i32 %i.eh, %i.ch
  br i1 %i.em, label %.lr.ph, label %._crit_edge237, !llvm.loop !139

bb.g:                                             ; preds = %.lr.ph, %bb.ay
  %indvars.iv = phi i64 [ %i.ei, %.lr.ph ], [ %indvars.iv.next, %bb.ay ] ; 12 uses
  %.0109233 = phi i32 [ 0, %.lr.ph ], [ %i.yp, %bb.ay ]
  %i.en = load ptr, ptr %0, align 8, !tbaa !18
  %i.eo = load i32, ptr %i.ck, align 8, !tbaa !16
  %i.ep = mul nsw i32 %i.eo, %.0111235
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds i8, ptr %i.en, i64 %i.eq
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %indvars.iv
  %i.et = load i8, ptr %i.es, align 1, !tbaa !31
  %i.eu = and i8 %i.et, 1
  %.not = icmp eq i8 %i.eu, 0
  br i1 %.not, label %bb.h, label %bb.ay

bb.h:                                             ; preds = %bb.g
  %i.ev = load ptr, ptr %1, align 8, !tbaa !25    ; 7 uses
  %i.ew = load i32, ptr %i.cl, align 8, !tbaa !26 ; 7 uses
  %i.ex = mul nsw i32 %i.ew, %.0111235
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.ey ; 3 uses
  %i.fa = mul nsw i64 %indvars.iv, 3              ; 3 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.fa ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.fc = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  %i.fd = sitofp i32 %i.fc to double
  %i.fe = fadd double %i.fd, 5.000000e-01         ; 3 uses
  store double %i.fe, ptr %10, align 8, !tbaa !21
  store double %i.ee, ptr %i.cm, align 8, !tbaa !22
  %i.ff = invoke { double, double } @_ZNK7msdfgen10Projection9unprojectERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.i unwind label %bb.az      ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.fg = extractvalue { double, double } %i.ff, 0
  %i.fh = extractvalue { double, double } %i.ff, 1
  store double %i.fg, ptr %9, align 8, !tbaa !50
  store double %i.fh, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  store double %i.fe, ptr %i.cn, align 8, !tbaa !50
  store double %i.ee, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !50
  store ptr %i.fb, ptr %i.co, align 8, !tbaa !70
  %i.fi = load ptr, ptr %0, align 8, !tbaa !18
  %i.fj = load i32, ptr %i.ck, align 8, !tbaa !16
  %i.fk = mul nsw i32 %i.fj, %.0111235
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.fi, i64 %i.fl
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %indvars.iv
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !31
  %i.fp = lshr i8 %i.fo, 1                        ; 2 uses
  %.lobit = and i8 %i.fp, 1                       ; 2 uses
  store i8 %.lobit, ptr %i.cp, align 8, !tbaa !157
  %i.fq = load float, ptr %i.fb, align 4, !tbaa !30 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 10 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !30 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 8 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !30 ; 2 uses
  %i.fv = fcmp olt float %i.fs, %i.fq
  %i.fw = select i1 %i.fv, float %i.fs, float %i.fq ; 2 uses
  %i.fx = fcmp olt float %i.fq, %i.fs
  %i.fy = select i1 %i.fx, float %i.fs, float %i.fq ; 2 uses
  %i.fz = fcmp olt float %i.fu, %i.fy
  %i.ga = select i1 %i.fz, float %i.fu, float %i.fy ; 2 uses
  %i.gb = fcmp olt float %i.fw, %i.ga
  %i.gc = select i1 %i.gb, float %i.ga, float %i.fw ; 38 uses
  %i.gd = icmp sgt i64 %indvars.iv, 0             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  br i1 %i.gd, label %bb.j, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215

bb.j:                                             ; preds = %bb.i
  %i.ge = mul i64 %indvars.iv, 3
  %i.gf = add i64 %i.ge, 4294967293
  %i.gg = and i64 %i.gf, 4294967295
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.gg ; 8 uses
  store double %i.ax, ptr %11, align 8, !tbaa !45, !alias.scope !158
  store i8 %.lobit, ptr %i.cq, align 8, !tbaa !46, !alias.scope !158
  store ptr %9, ptr %i.cr, align 8, !tbaa !73, !alias.scope !158
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.cs, align 8, !tbaa !50
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !30 ; 8 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 4 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gl = load <2 x float>, ptr %i.gj, align 4, !tbaa !30 ; 7 uses
  %i.gm = extractelement <2 x float> %i.gl, i64 0 ; 3 uses
  %i.gn = fcmp olt float %i.gi, %i.gm
  %i.go = select i1 %i.gn, float %i.gm, float %i.gi
  %i.gp = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gq = insertelement <2 x float> %i.gp, float %i.go, i64 1 ; 2 uses
  %i.gr = fcmp olt <2 x float> %i.gl, %i.gq
  %i.gs = select <2 x i1> %i.gr, <2 x float> %i.gl, <2 x float> %i.gq ; 2 uses
  %i.gt = extractelement <2 x float> %i.gs, i64 0 ; 2 uses
  %i.gu = extractelement <2 x float> %i.gs, i64 1 ; 2 uses
  %i.gv = fcmp olt float %i.gt, %i.gu
  %i.gw = select i1 %i.gv, float %i.gu, float %i.gt ; 16 uses
  %i.gx = fadd float %i.gc, -5.000000e-01
  %i.gy = call float @llvm.fabs.f32(float %i.gx)
  %i.gz = fadd float %i.gw, -5.000000e-01
  %i.ha = call float @llvm.fabs.f32(float %i.gz)
  %i.hb = fcmp ult float %i.gy, %i.ha
  br i1 %i.hb, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hc = load float, ptr %i.fb, align 4, !tbaa !30 ; 5 uses
  %i.hd = fsub float %i.gm, %i.gi
  %i.he = load <2 x float>, ptr %i.fr, align 4, !tbaa !30 ; 5 uses
  %i.hf = extractelement <2 x float> %i.he, i64 0
  %i.hg = fsub float %i.hf, %i.hc                 ; 2 uses
  %i.hh = fpext float %i.hg to double
  %i.hi = fsub float %i.hg, %i.hd
  %i.hj = fpext float %i.hi to double
  %i.hk = fdiv double %i.hh, %i.hj                ; 8 uses
  %i.hl = fcmp ogt double %i.hk, 1.000000e-02
  %i.hm = fcmp olt double %i.hk, f0x3FEFAE147AE147AE
  %or.cond.i145 = and i1 %i.hl, %i.hm
  br i1 %or.cond.i145, label %bb.l, label %.noexc.thread

bb.l:                                             ; preds = %bb.k
  %i.hn = fsub double 1.000000e+00, %i.hk         ; 4 uses
  %i.ho = fpext float %i.hc to double
  %i.hp = fpext float %i.gi to double
  %i.hq = fmul double %i.hk, %i.hp
  %i.hr = call double @llvm.fmuladd.f64(double %i.hn, double %i.ho, double %i.hq)
  %i.hs = fptrunc double %i.hr to float           ; 3 uses
  %i.ht = fpext <2 x float> %i.he to <2 x double>
  %i.hu = fpext <2 x float> %i.gl to <2 x double>
  %i.hv = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x double> %i.hw, %i.hu
  %i.hy = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.ht, <2 x double> %i.hx)
  %i.ib = fptrunc <2 x double> %i.ia to <2 x float> ; 3 uses
  %i.ic = extractelement <2 x float> %i.ib, i64 0 ; 2 uses
  %i.id = fcmp ogt float %i.ic, %i.hs
  %i.ie = select i1 %i.id, float %i.ic, float %i.hs
  %i.if = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %i.ie, i64 1 ; 2 uses
  %i.ih = fcmp ogt <2 x float> %i.ig, %i.ib
  %i.ii = select <2 x i1> %i.ih, <2 x float> %i.ib, <2 x float> %i.ig ; 2 uses
  %i.ij = extractelement <2 x float> %i.ii, i64 0 ; 2 uses
  %i.ik = extractelement <2 x float> %i.ii, i64 1 ; 2 uses
  %i.il = fcmp olt float %i.ij, %i.ik
  %i.im = select i1 %i.il, float %i.ik, float %i.ij ; 6 uses
  %i.in = fcmp ogt float %i.gc, 5.000000e-01
  %i.io = fcmp ogt float %i.gw, 5.000000e-01
  %or.cond.i.i147 = and i1 %i.in, %i.io
  %i.ip = fcmp ole float %i.im, 5.000000e-01
  %or.cond3.i.i148 = and i1 %or.cond.i.i147, %i.ip
  br i1 %or.cond3.i.i148, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.iq = fcmp olt float %i.gc, 5.000000e-01
  %i.ir = fcmp olt float %i.gw, 5.000000e-01
  %or.cond5.i.i149 = and i1 %i.iq, %i.ir
  %i.is = fcmp oge float %i.im, 5.000000e-01
  %or.cond7.i.i150 = and i1 %or.cond5.i.i149, %i.is
  br i1 %or.cond7.i.i150, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.it = trunc i8 %i.fp to i1
  br i1 %i.it, label %.noexc.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.iu = fcmp olt float %i.gw, %i.gc
  %i.iv = select i1 %i.iu, float %i.gw, float %i.gc ; 2 uses
  %i.iw = fcmp olt float %i.gc, %i.gw
  %i.ix = select i1 %i.iw, float %i.gw, float %i.gc ; 2 uses
  %i.iy = fcmp olt float %i.im, %i.ix
  %i.iz = select i1 %i.iy, float %i.im, float %i.ix ; 2 uses
  %i.ja = fcmp olt float %i.iv, %i.iz
  %i.jb = select i1 %i.ja, float %i.iz, float %i.iv
  %i.jc = fcmp une float %i.jb, %i.im
  br i1 %i.jc, label %bb.p, label %.noexc.thread

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.jd = fmul double %i.ax, %i.hk                ; 2 uses
  %i.je = fpext float %i.im to double             ; 4 uses
  %i.jf = fpext float %i.gc to double             ; 2 uses
  %i.jg = fsub double %i.jf, %i.jd
  %i.jh = fcmp ugt double %i.jg, %i.je
  %i.ji = fadd double %i.jd, %i.jf
  %i.jj = fcmp ult double %i.ji, %i.je
  %or.cond36.i.i153 = or i1 %i.jh, %i.jj
  br i1 %or.cond36.i.i153, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i151

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i151: ; preds = %bb.p
  %i.jk = fpext float %i.gw to double             ; 2 uses
  %i.jl = fmul double %i.ax, %i.hn                ; 2 uses
  %i.jm = fsub double %i.jk, %i.jl
  %i.jn = fcmp ole double %i.jm, %i.je
  %i.jo = fadd double %i.jl, %i.jk
  %i.jp = fcmp oge double %i.jo, %i.je
  %or.cond38.i.i154.not = and i1 %i.jn, %i.jp
  br i1 %or.cond38.i.i154.not, label %bb.q, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread

bb.q:                                             ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.jq = fsub double %i.fe, %i.hk
  invoke void @_ZN7msdfgen11interpolateIfLi3EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, double %i.jq, double %i.ee)
          to label %.noexc174 unwind label %bb.ba

.noexc174:                                        ; preds = %bb.q
  %i.jr = load ptr, ptr %i.cr, align 8, !tbaa !73 ; 5 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !70 ; 2 uses
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !30 ; 5 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.jw = load float, ptr %i.a, align 4, !tbaa !30 ; 5 uses
  %i.jx = fpext float %i.jw to double
  %i.jy = load <2 x float>, ptr %i.jv, align 4, !tbaa !30 ; 3 uses
  %i.jz = extractelement <2 x float> %i.jy, i64 0 ; 4 uses
  %i.ka = fcmp olt float %i.jz, %i.ju
  %i.kb = select i1 %i.ka, float %i.jz, float %i.ju ; 2 uses
  %i.kc = fcmp olt float %i.ju, %i.jz
  %i.kd = select i1 %i.kc, float %i.jz, float %i.ju ; 2 uses
  %i.ke = extractelement <2 x float> %i.jy, i64 1 ; 2 uses
  %i.kf = fcmp olt float %i.ke, %i.kd
  %i.kg = select i1 %i.kf, float %i.ke, float %i.kd ; 2 uses
  %i.kh = fcmp olt float %i.kb, %i.kg
  %i.ki = select i1 %i.kh, float %i.kg, float %i.kb ; 2 uses
  %i.kj = fsub float %i.ki, %i.ju
  %i.kk = fpext float %i.kj to double
  %i.kl = call double @llvm.fmuladd.f64(double %i.hn, double %i.kk, double %i.jx)
  %i.km = fptrunc double %i.kl to float           ; 4 uses
  %i.kn = load <2 x float>, ptr %i.ct, align 4, !tbaa !30 ; 3 uses
  %i.ko = fpext <2 x float> %i.kn to <2 x double>
  %i.kp = insertelement <2 x float> poison, float %i.ki, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = fsub <2 x float> %i.kq, %i.jy
  %i.ks = fpext <2 x float> %i.kr to <2 x double>
  %i.kt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.ks, <2 x double> %i.ko) ; 2 uses
  %i.ku = extractelement <2 x double> %i.kt, i64 0
  %i.kv = fptrunc double %i.ku to float           ; 4 uses
  %i.kw = extractelement <2 x double> %i.kt, i64 1
  %i.kx = fptrunc double %i.kw to float           ; 2 uses
  %i.ky = extractelement <2 x float> %i.kn, i64 0 ; 4 uses
  %i.kz = fcmp olt float %i.ky, %i.jw
  %i.la = select i1 %i.kz, float %i.ky, float %i.jw ; 2 uses
  %i.lb = fcmp olt float %i.jw, %i.ky
  %i.lc = select i1 %i.lb, float %i.ky, float %i.jw ; 2 uses
  %i.ld = extractelement <2 x float> %i.kn, i64 1 ; 2 uses
  %i.le = fcmp olt float %i.ld, %i.lc
  %i.lf = select i1 %i.le, float %i.ld, float %i.lc ; 2 uses
  %i.lg = fcmp olt float %i.la, %i.lf
  %i.lh = select i1 %i.lg, float %i.lf, float %i.la
  %i.li = fcmp olt float %i.kv, %i.km
  %i.lj = select i1 %i.li, float %i.kv, float %i.km ; 2 uses
  %i.lk = fcmp olt float %i.km, %i.kv
  %i.ll = select i1 %i.lk, float %i.kv, float %i.km ; 2 uses
  %i.lm = fcmp ogt float %i.ll, %i.kx
end_hunk_0
begin_hunk_1_@_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_21SimpleContourCombinerELi3EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE:bb.a
  %i.lz = invoke noundef double @_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(96) %i.lq, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc175 unwind label %bb.ba

.noexc175:                                        ; preds = %.noexc174
  %i.ma = getelementptr inbounds nuw i8, ptr %i.jr, i64 168
  %i.mb = invoke noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %i.ma, double noundef %i.lz)
          to label %.noexc unwind label %bb.ba

.noexc:                                           ; preds = %.noexc175
  %i.mc = fptrunc double %i.mb to float           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.md = load ptr, ptr %i.cr, align 8, !tbaa !73
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 200
  %i.mf = load double, ptr %i.me, align 8, !tbaa !67
  %i.mg = fsub float %i.lp, %i.mc
  %i.mh = call float @llvm.fabs.f32(float %i.mg)
  %i.mi = fpext float %i.mh to double
  %i.mj = fmul double %i.mf, %i.mi
  %i.mk = fsub float %i.lh, %i.mc
  %i.ml = call float @llvm.fabs.f32(float %i.mk)
  %i.mm = fpext float %i.ml to double
  %i.mn = fcmp olt double %i.mj, %i.mm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %i.mn, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %.noexc..noexc.thread_crit_edge

.noexc..noexc.thread_crit_edge:                   ; preds = %.noexc
  %i.mo = load <2 x float>, ptr %i.fr, align 4, !tbaa !30
  %i.mp = load <2 x float>, ptr %i.gj, align 4, !tbaa !30
  %.pre245.pre = load float, ptr %i.fb, align 4, !tbaa !30
  %.pre248.pre = load float, ptr %i.gh, align 4, !tbaa !30
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %.noexc..noexc.thread_crit_edge, %bb.o, %bb.n, %bb.k
  %.pre248 = phi float [ %.pre248.pre, %.noexc..noexc.thread_crit_edge ], [ %i.gi, %bb.o ], [ %i.gi, %bb.n ], [ %i.gi, %bb.k ] ; 2 uses
  %.pre245 = phi float [ %.pre245.pre, %.noexc..noexc.thread_crit_edge ], [ %i.hc, %bb.o ], [ %i.hc, %bb.n ], [ %i.hc, %bb.k ] ; 2 uses
  %i.mq = phi <2 x float> [ %i.mo, %.noexc..noexc.thread_crit_edge ], [ %i.he, %bb.o ], [ %i.he, %bb.n ], [ %i.he, %bb.k ] ; 3 uses
  %i.mr = phi <2 x float> [ %i.mp, %.noexc..noexc.thread_crit_edge ], [ %i.gl, %bb.o ], [ %i.gl, %bb.n ], [ %i.gl, %bb.k ] ; 3 uses
  %i.ms = extractelement <2 x float> %i.mq, i64 0
  %i.mt = extractelement <2 x float> %i.mq, i64 1 ; 2 uses
  %i.mu = fsub float %i.mt, %i.ms                 ; 2 uses
  %i.mv = extractelement <2 x float> %i.mr, i64 0
  %i.mw = extractelement <2 x float> %i.mr, i64 1 ; 2 uses
  %i.mx = fsub float %i.mw, %i.mv
  %i.my = fpext float %i.mu to double
  %i.mz = fsub float %i.mu, %i.mx
  %i.na = fpext float %i.mz to double
  %i.nb = fdiv double %i.my, %i.na                ; 7 uses
  %i.nc = fcmp ogt double %i.nb, 1.000000e-02
  %i.nd = fcmp olt double %i.nb, f0x3FEFAE147AE147AE
  %or.cond.i = and i1 %i.nc, %i.nd
  br i1 %or.cond.i, label %bb.r, label %.noexc127.thread

bb.r:                                             ; preds = %.noexc.thread
  %i.ne = fsub double 1.000000e+00, %i.nb         ; 3 uses
  %i.nf = fpext float %.pre245 to double
  %i.ng = fpext float %.pre248 to double
  %i.nh = fmul double %i.nb, %i.ng
  %i.ni = call double @llvm.fmuladd.f64(double %i.ne, double %i.nf, double %i.nh)
  %i.nj = fptrunc double %i.ni to float           ; 3 uses
  %i.nk = fpext <2 x float> %i.mq to <2 x double>
  %i.nl = fpext <2 x float> %i.mr to <2 x double>
  %i.nm = insertelement <2 x double> poison, double %i.nb, i64 0
  %i.nn = shufflevector <2 x double> %i.nm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.no = fmul <2 x double> %i.nn, %i.nl
  %i.np = insertelement <2 x double> poison, double %i.ne, i64 0
  %i.nq = shufflevector <2 x double> %i.np, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nq, <2 x double> %i.nk, <2 x double> %i.no)
  %i.ns = fptrunc <2 x double> %i.nr to <2 x float> ; 3 uses
  %i.nt = extractelement <2 x float> %i.ns, i64 0 ; 2 uses
  %i.nu = fcmp ogt float %i.nt, %i.nj
  %i.nv = select i1 %i.nu, float %i.nt, float %i.nj
  %i.nw = insertelement <2 x float> poison, float %i.nj, i64 0
  %i.nx = insertelement <2 x float> %i.nw, float %i.nv, i64 1 ; 2 uses
  %i.ny = fcmp ogt <2 x float> %i.nx, %i.ns
  %i.nz = select <2 x i1> %i.ny, <2 x float> %i.ns, <2 x float> %i.nx ; 2 uses
  %i.oa = extractelement <2 x float> %i.nz, i64 0 ; 2 uses
  %i.ob = extractelement <2 x float> %i.nz, i64 1 ; 2 uses
  %i.oc = fcmp olt float %i.oa, %i.ob
  %i.od = select i1 %i.oc, float %i.ob, float %i.oa ; 7 uses
  %i.oe = fcmp ogt float %i.gc, 5.000000e-01
  %i.of = fcmp ogt float %i.gw, 5.000000e-01
  %or.cond.i.i = and i1 %i.oe, %i.of
  %i.og = fcmp ole float %i.od, 5.000000e-01
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.og
  br i1 %or.cond3.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.oh = fcmp olt float %i.gc, 5.000000e-01
  %i.oi = fcmp olt float %i.gw, 5.000000e-01
  %or.cond5.i.i = and i1 %i.oh, %i.oi
  %i.oj = fcmp oge float %i.od, 5.000000e-01
  %or.cond7.i.i = and i1 %or.cond5.i.i, %i.oj
  br i1 %or.cond7.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ok = load i8, ptr %i.cq, align 8, !tbaa !46, !range !74, !noundef !75
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.om = fcmp olt float %i.gw, %i.gc
  %i.on = select i1 %i.om, float %i.gw, float %i.gc ; 2 uses
  %i.oo = fcmp olt float %i.gc, %i.gw
  %i.op = select i1 %i.oo, float %i.gw, float %i.gc ; 2 uses
  %i.oq = fcmp olt float %i.od, %i.op
  %i.or = select i1 %i.oq, float %i.od, float %i.op ; 2 uses
  %i.os = fcmp olt float %i.on, %i.or
  %i.ot = select i1 %i.os, float %i.or, float %i.on
  %i.ou = fcmp une float %i.ot, %i.od
  br i1 %i.ou, label %bb.v, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.r
  %i.ov = load double, ptr %11, align 8, !tbaa !45 ; 2 uses
  %i.ow = fmul double %i.nb, %i.ov                ; 2 uses
  %i.ox = fpext float %i.od to double             ; 4 uses
  %i.oy = fpext float %i.gc to double             ; 2 uses
  %i.oz = fsub double %i.oy, %i.ow
  %i.pa = fcmp ugt double %i.oz, %i.ox
  %i.pb = fadd double %i.ow, %i.oy
  %i.pc = fcmp ult double %i.pb, %i.ox
  %or.cond36.i.i = or i1 %i.pa, %i.pc
  br i1 %or.cond36.i.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.pd = fmul double %i.ne, %i.ov                ; 2 uses
  %i.pe = fpext float %i.gw to double             ; 2 uses
  %i.pf = fsub double %i.pe, %i.pd
  %i.pg = fcmp ugt double %i.pf, %i.ox
  %i.ph = fadd double %i.pd, %i.pe
  %i.pi = fcmp ult double %i.ph, %i.ox
  %or.cond38.i.i = or i1 %i.pg, %i.pi
  %spec.select.i.i = select i1 %or.cond38.i.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.1.i.i = phi i32 [ 3, %bb.v ], [ 0, %bb.t ], [ %spec.select.i.i, %bb.w ], [ 0, %bb.u ]
  %i.pj = invoke noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %11, double noundef %i.nb, float noundef %i.od, i32 noundef %.1.i.i)
          to label %.noexc127 unwind label %bb.ba

.noexc127:                                        ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i
  br i1 %i.pj, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %.noexc127..noexc127.thread_crit_edge

.noexc127..noexc127.thread_crit_edge:             ; preds = %.noexc127
  %.pre244 = load float, ptr %i.fb, align 4, !tbaa !30
  %.pre246 = load float, ptr %i.ft, align 4, !tbaa !30
  %.pre247 = load float, ptr %i.gh, align 4, !tbaa !30
  %.pre249 = load float, ptr %i.gk, align 4, !tbaa !30
  br label %.noexc127.thread

.noexc127.thread:                                 ; preds = %.noexc127..noexc127.thread_crit_edge, %.noexc.thread
  %i.pk = phi float [ %.pre249, %.noexc127..noexc127.thread_crit_edge ], [ %i.mw, %.noexc.thread ]
  %i.pl = phi float [ %.pre247, %.noexc127..noexc127.thread_crit_edge ], [ %.pre248, %.noexc.thread ]
  %i.pm = phi float [ %.pre246, %.noexc127..noexc127.thread_crit_edge ], [ %i.mt, %.noexc.thread ]
  %i.pn = phi float [ %.pre244, %.noexc127..noexc127.thread_crit_edge ], [ %.pre245, %.noexc.thread ]
  %i.po = fsub float %i.pn, %i.pm
  %i.pp = fsub float %i.pl, %i.pk
  %i.pq = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %11, float noundef %i.gc, float noundef %i.gw, ptr noundef nonnull readonly %i.fb, ptr noundef nonnull readonly %i.gh, float noundef %i.po, float noundef %i.pp)
          to label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit unwind label %bb.ba

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit: ; preds = %.noexc127.thread
  br i1 %i.pq, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215: ; preds = %bb.j, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit, %bb.i
  %.098 = phi ptr [ %i.gh, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit ], [ null, %bb.i ], [ %i.gh, %bb.j ] ; 2 uses
  br i1 %i.ef, label %bb.x, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132.thread217

bb.x:                                             ; preds = %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215
  %i.pr = mul nsw i32 %i.ew, %i.eg
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.ps
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.fa ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.pv = load i8, ptr %i.cp, align 8, !tbaa !157, !range !74, !noalias !159, !noundef !75 ; 2 uses
  store double %i.az, ptr %12, align 8, !tbaa !45, !alias.scope !159
  store i8 %i.pv, ptr %i.cu, align 8, !tbaa !46, !alias.scope !159
  store ptr %9, ptr %i.cv, align 8, !tbaa !73, !alias.scope !159
  store <2 x double> <double 0.000000e+00, double -1.000000e+00>, ptr %i.cw, align 8, !tbaa !50
  %i.pw = load float, ptr %i.pu, align 4, !tbaa !30 ; 5 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 4 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 8 ; 2 uses
  %i.pz = load <2 x float>, ptr %i.px, align 4, !tbaa !30 ; 5 uses
  %i.qa = extractelement <2 x float> %i.pz, i64 0 ; 4 uses
  %i.qb = fcmp olt float %i.pw, %i.qa
  %i.qc = select i1 %i.qb, float %i.qa, float %i.pw
  %i.qd = insertelement <2 x float> poison, float %i.pw, i64 0
  %i.qe = insertelement <2 x float> %i.qd, float %i.qc, i64 1 ; 2 uses
  %i.qf = fcmp olt <2 x float> %i.pz, %i.qe
  %i.qg = select <2 x i1> %i.qf, <2 x float> %i.pz, <2 x float> %i.qe ; 2 uses
  %i.qh = extractelement <2 x float> %i.qg, i64 0 ; 2 uses
  %i.qi = extractelement <2 x float> %i.qg, i64 1 ; 2 uses
  %i.qj = fcmp olt float %i.qh, %i.qi
  %i.qk = select i1 %i.qj, float %i.qi, float %i.qh ; 10 uses
  %i.ql = fadd float %i.gc, -5.000000e-01
  %i.qm = call float @llvm.fabs.f32(float %i.ql)
  %i.qn = fadd float %i.qk, -5.000000e-01
  %i.qo = call float @llvm.fabs.f32(float %i.qn)
  %i.qp = fcmp ult float %i.qm, %i.qo
  br i1 %i.qp, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132.thread217, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.qq = load float, ptr %i.fr, align 4, !tbaa !30 ; 2 uses
  %i.qr = load float, ptr %i.fb, align 4, !tbaa !30 ; 2 uses
  %i.qs = fsub float %i.qq, %i.qr                 ; 2 uses
  %i.qt = fsub float %i.qa, %i.pw
  %i.qu = fpext float %i.qs to double
  %i.qv = fsub float %i.qs, %i.qt
  %i.qw = fpext float %i.qv to double
  %i.qx = fdiv double %i.qu, %i.qw                ; 7 uses
  %i.qy = fcmp ogt double %i.qx, 1.000000e-02
  %i.qz = fcmp olt double %i.qx, f0x3FEFAE147AE147AE
  %or.cond.i158 = and i1 %i.qy, %i.qz
  %i.ra = extractelement <2 x float> %i.pz, i64 1
  br i1 %or.cond.i158, label %bb.z, label %.noexc129.thread

bb.z:                                             ; preds = %bb.y
  %i.rb = fsub double 1.000000e+00, %i.qx         ; 3 uses
  %i.rc = fpext float %i.qr to double
  %i.rd = fpext float %i.pw to double
  %i.re = fmul double %i.qx, %i.rd
  %i.rf = call double @llvm.fmuladd.f64(double %i.rb, double %i.rc, double %i.re)
  %i.rg = fptrunc double %i.rf to float           ; 3 uses
  %i.rh = fpext <2 x float> %i.pz to <2 x double>
  %19 = load <2 x float>, ptr %i.fr, align 4, !tbaa !30
  %i.ri = fpext <2 x float> %19 to <2 x double>
  %i.rj = insertelement <2 x double> poison, double %i.qx, i64 0
  %i.rk = shufflevector <2 x double> %i.rj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rl = fmul <2 x double> %i.rk, %i.rh
  %i.rm = insertelement <2 x double> poison, double %i.rb, i64 0
  %i.rn = shufflevector <2 x double> %i.rm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ro = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rn, <2 x double> %i.ri, <2 x double> %i.rl)
  %i.rp = fptrunc <2 x double> %i.ro to <2 x float> ; 3 uses
  %i.rq = extractelement <2 x float> %i.rp, i64 0 ; 2 uses
  %i.rr = fcmp ogt float %i.rq, %i.rg
  %i.rs = select i1 %i.rr, float %i.rq, float %i.rg
  %i.rt = insertelement <2 x float> poison, float %i.rg, i64 0
  %i.ru = insertelement <2 x float> %i.rt, float %i.rs, i64 1 ; 2 uses
  %i.rv = fcmp ogt <2 x float> %i.ru, %i.rp
  %i.rw = select <2 x i1> %i.rv, <2 x float> %i.rp, <2 x float> %i.ru ; 2 uses
  %i.rx = extractelement <2 x float> %i.rw, i64 0 ; 2 uses
  %i.ry = extractelement <2 x float> %i.rw, i64 1 ; 2 uses
  %i.rz = fcmp olt float %i.rx, %i.ry
  %i.sa = select i1 %i.rz, float %i.ry, float %i.rx ; 7 uses
  %i.sb = fcmp ogt float %i.gc, 5.000000e-01
  %i.sc = fcmp ogt float %i.qk, 5.000000e-01
  %or.cond.i.i160 = and i1 %i.sb, %i.sc
  %i.sd = fcmp ole float %i.sa, 5.000000e-01
  %or.cond3.i.i161 = and i1 %or.cond.i.i160, %i.sd
  br i1 %or.cond3.i.i161, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.se = fcmp olt float %i.gc, 5.000000e-01
  %i.sf = fcmp olt float %i.qk, 5.000000e-01
  %or.cond5.i.i162 = and i1 %i.se, %i.sf
  %i.sg = fcmp oge float %i.sa, 5.000000e-01
  %or.cond7.i.i163 = and i1 %or.cond5.i.i162, %i.sg
  br i1 %or.cond7.i.i163, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.sh = trunc nuw i8 %i.pv to i1
  br i1 %i.sh, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i164, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.si = fcmp olt float %i.qk, %i.gc
  %i.sj = select i1 %i.si, float %i.qk, float %i.gc ; 2 uses
  %i.sk = fcmp olt float %i.gc, %i.qk
  %i.sl = select i1 %i.sk, float %i.qk, float %i.gc ; 2 uses
  %i.sm = fcmp olt float %i.sa, %i.sl
  %i.sn = select i1 %i.sm, float %i.sa, float %i.sl ; 2 uses
  %i.so = fcmp olt float %i.sj, %i.sn
  %i.sp = select i1 %i.so, float %i.sn, float %i.sj
  %i.sq = fcmp une float %i.sp, %i.sa
  br i1 %i.sq, label %bb.ad, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i164

bb.ad:                                            ; preds = %bb.ac, %bb.aa, %bb.z
  %i.sr = fmul double %i.az, %i.qx                ; 2 uses
  %i.ss = fpext float %i.sa to double             ; 4 uses
  %i.st = fpext float %i.gc to double             ; 2 uses
  %i.su = fsub double %i.st, %i.sr
  %i.sv = fcmp ugt double %i.su, %i.ss
  %i.sw = fadd double %i.sr, %i.st
  %i.sx = fcmp ult double %i.sw, %i.ss
  %or.cond36.i.i166 = or i1 %i.sv, %i.sx
  br i1 %or.cond36.i.i166, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i164, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.sy = fmul double %i.az, %i.rb                ; 2 uses
  %i.sz = fpext float %i.qk to double             ; 2 uses
  %i.ta = fsub double %i.sz, %i.sy
  %i.tb = fcmp ugt double %i.ta, %i.ss
  %i.tc = fadd double %i.sy, %i.sz
  %i.td = fcmp ult double %i.tc, %i.ss
  %or.cond38.i.i167 = or i1 %i.tb, %i.td
  %spec.select.i.i168 = select i1 %or.cond38.i.i167, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i164

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i164: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.1.i.i165 = phi i32 [ 3, %bb.ad ], [ 0, %bb.ab ], [ %spec.select.i.i168, %bb.ae ], [ 0, %bb.ac ]
  %i.te = invoke noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %12, double noundef %i.qx, float noundef %i.sa, i32 noundef %.1.i.i165)
          to label %.noexc129 unwind label %bb.bb

.noexc129:                                        ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i164
  br i1 %i.te, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %.noexc129..noexc129.thread_crit_edge

.noexc129..noexc129.thread_crit_edge:             ; preds = %.noexc129
  %.pre250 = load float, ptr %i.fr, align 4, !tbaa !30
  %.pre251 = load float, ptr %i.py, align 4, !tbaa !30
  %.pre252 = load float, ptr %i.px, align 4, !tbaa !30
  br label %.noexc129.thread

.noexc129.thread:                                 ; preds = %.noexc129..noexc129.thread_crit_edge, %bb.y
  %i.tf = phi float [ %.pre252, %.noexc129..noexc129.thread_crit_edge ], [ %i.qa, %bb.y ]
  %i.tg = phi float [ %.pre251, %.noexc129..noexc129.thread_crit_edge ], [ %i.ra, %bb.y ]
  %i.th = phi float [ %.pre250, %.noexc129..noexc129.thread_crit_edge ], [ %i.qq, %bb.y ]
  %i.ti = load float, ptr %i.ft, align 4, !tbaa !30
  %i.tj = fsub float %i.ti, %i.th
  %i.tk = fsub float %i.tg, %i.tf
  %i.tl = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %12, float noundef %i.gc, float noundef %i.qk, ptr noundef nonnull readonly %i.fb, ptr noundef nonnull readonly %i.pu, float noundef %i.tj, float noundef %i.tk)
          to label %.noexc130 unwind label %bb.bb

.noexc130:                                        ; preds = %.noexc129.thread
  br i1 %i.tl, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %bb.af

bb.af:                                            ; preds = %.noexc130
  %i.tm = load float, ptr %i.fb, align 4, !tbaa !30
  %i.tn = load float, ptr %i.ft, align 4, !tbaa !30
  %i.to = fsub float %i.tm, %i.tn
  %i.tp = load float, ptr %i.pu, align 4, !tbaa !30
  %i.tq = load float, ptr %i.py, align 4, !tbaa !30
  %i.tr = fsub float %i.tp, %i.tq
  %i.ts = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %12, float noundef %i.gc, float noundef %i.qk, ptr noundef nonnull readonly %i.fb, ptr noundef nonnull readonly %i.pu, float noundef %i.to, float noundef %i.tr)
          to label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132 unwind label %bb.bb

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132: ; preds = %bb.af
  br i1 %i.ts, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132.thread217

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132.thread217: ; preds = %bb.x, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215
  %.097 = phi ptr [ %i.pu, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132 ], [ null, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215 ], [ %i.pu, %bb.x ] ; 2 uses
  %i.tt = icmp slt i64 %indvars.iv, %i.dt         ; 4 uses
  br i1 %i.tt, label %bb.ag, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136.thread218

bb.ag:                                            ; preds = %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132.thread217
  %i.tu = mul i64 %indvars.iv, 12884901888
  %sext = add i64 %i.tu, 12884901888
  %i.tv = ashr exact i64 %sext, 30
  %i.tw = getelementptr inbounds i8, ptr %i.ez, i64 %i.tv ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.tx = load i8, ptr %i.cp, align 8, !tbaa !157, !range !74, !noalias !160, !noundef !75
  store double %i.ax, ptr %13, align 8, !tbaa !45, !alias.scope !160
  store i8 %i.tx, ptr %i.cx, align 8, !tbaa !46, !alias.scope !160
  store ptr %9, ptr %i.cy, align 8, !tbaa !73, !alias.scope !160
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.cz, align 8, !tbaa !50
  %i.ty = load float, ptr %i.tw, align 4, !tbaa !30 ; 5 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 4 ; 2 uses
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !30 ; 5 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tw, i64 8 ; 3 uses
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !30 ; 2 uses
  %i.ud = fcmp olt float %i.ua, %i.ty
  %i.ue = select i1 %i.ud, float %i.ua, float %i.ty ; 2 uses
  %i.uf = fcmp olt float %i.ty, %i.ua
  %i.ug = select i1 %i.uf, float %i.ua, float %i.ty ; 2 uses
  %i.uh = fcmp olt float %i.uc, %i.ug
  %i.ui = select i1 %i.uh, float %i.uc, float %i.ug ; 2 uses
  %i.uj = fcmp olt float %i.ue, %i.ui
  %i.uk = select i1 %i.uj, float %i.ui, float %i.ue ; 4 uses
  %i.ul = fadd float %i.gc, -5.000000e-01
  %i.um = call float @llvm.fabs.f32(float %i.ul)
  %i.un = fadd float %i.uk, -5.000000e-01
  %i.uo = call float @llvm.fabs.f32(float %i.un)
  %i.up = fcmp ult float %i.um, %i.uo
  br i1 %i.up, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136.thread218, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.uq = load float, ptr %i.fr, align 4, !tbaa !30
  %i.ur = load float, ptr %i.fb, align 4, !tbaa !30
  %i.us = fsub float %i.uq, %i.ur
  %i.ut = fsub float %i.ua, %i.ty
  %i.uu = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %13, float noundef %i.gc, float noundef %i.uk, ptr noundef nonnull readonly %i.fb, ptr noundef nonnull readonly %i.tw, float noundef %i.us, float noundef %i.ut)
          to label %.noexc133 unwind label %bb.bc

.noexc133:                                        ; preds = %bb.ah
  br i1 %i.uu, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %.noexc133
  %i.uv = load float, ptr %i.ft, align 4, !tbaa !30
  %i.uw = load float, ptr %i.fr, align 4, !tbaa !30
  %i.ux = fsub float %i.uv, %i.uw
  %i.uy = load float, ptr %i.ub, align 4, !tbaa !30
  %i.uz = load float, ptr %i.tz, align 4, !tbaa !30
  %i.va = fsub float %i.uy, %i.uz
  %i.vb = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %13, float noundef %i.gc, float noundef %i.uk, ptr noundef nonnull readonly %i.fb, ptr noundef nonnull readonly %i.tw, float noundef %i.ux, float noundef %i.va)
          to label %.noexc134 unwind label %bb.bc

.noexc134:                                        ; preds = %bb.ai
  br i1 %i.vb, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %.noexc134
  %i.vc = load float, ptr %i.fb, align 4, !tbaa !30
  %i.vd = load float, ptr %i.ft, align 4, !tbaa !30
  %i.ve = fsub float %i.vc, %i.vd
  %i.vf = load float, ptr %i.tw, align 4, !tbaa !30
  %i.vg = load float, ptr %i.ub, align 4, !tbaa !30
  %i.vh = fsub float %i.vf, %i.vg
  %i.vi = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %13, float noundef %i.gc, float noundef %i.uk, ptr noundef nonnull readonly %i.fb, ptr noundef nonnull readonly %i.tw, float noundef %i.ve, float noundef %i.vh)
          to label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136 unwind label %bb.bc

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136: ; preds = %bb.aj
  br i1 %i.vi, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136.thread218

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136.thread218: ; preds = %bb.ag, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132.thread217
  %.096 = phi ptr [ %i.tw, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136 ], [ null, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132.thread217 ], [ %i.tw, %bb.ag ] ; 2 uses
  br i1 %i.ek, label %bb.ak, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit140.thread219

bb.ak:                                            ; preds = %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136.thread218
  %i.vj = mul nsw i32 %i.ew, %i.eh
  %i.vk = sext i32 %i.vj to i64
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.vk
  %i.vm = getelementptr inbounds [4 x i8], ptr %i.vl, i64 %i.fa ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.vn = load i8, ptr %i.cp, align 8, !tbaa !157, !range !74, !noalias !161, !noundef !75
  store double %i.az, ptr %14, align 8, !tbaa !45, !alias.scope !161
  store i8 %i.vn, ptr %i.da, align 8, !tbaa !46, !alias.scope !161
  store ptr %9, ptr %i.db, align 8, !tbaa !73, !alias.scope !161
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.dc, align 8, !tbaa !50
  %i.vo = load float, ptr %i.vm, align 4, !tbaa !30 ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_21SimpleContourCombinerELi4EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE:bb.a
  %i.bh = call double @llvm.fmuladd.f64(double %i.be, double %i.be, double %i.bg)
  %sqrt.i124 = call noundef double @llvm.sqrt.f64(double %i.bh)
  %i.bi = fmul double %i.ba, %sqrt.i124           ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %9, i8 0, i64 32, i1 false)
  store ptr %2, ptr %i.bl, align 8, !tbaa !49
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 168
  %i.bq = load <2 x double>, ptr %i.ad, align 8, !tbaa !50
  call void @_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEC1ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull align 8 dereferenceable(25) %2)
  %i.br = call noundef i32 @_ZNK7msdfgen5Shape9edgeCountEv(ptr noundef nonnull align 8 dereferenceable(25) %2)
  %i.bs = sext i32 %i.br to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef %i.bs, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !54
  store <2 x double> %i.bq, ptr %i.bp, align 8, !tbaa !50
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  store double %i.bk, ptr %i.bu, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store <2 x double> splat (double 1.000000e+00), ptr %5, align 16, !tbaa !50
  %i.bv = invoke { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EEC2ERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit unwind label %bb.d ; 2 uses

bb.d:                                             ; preds = %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.bx = load ptr, ptr %i.bn, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !69
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EED2Ev.exit143
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EED2Ev.exit143 ], [ %i.bw, %bb.e ], [ %i.bw, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EEC2ERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit: ; preds = %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.ce = extractvalue { double, double } %i.bv, 0
  %i.cf = extractvalue { double, double } %i.bv, 1
  store double %i.ce, ptr %i.bt, align 8, !tbaa !50
  store double %i.cf, ptr %i.cd, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !34 ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph236, label %._crit_edge237

.lr.ph236:                                        ; preds = %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EEC2ERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.dp = load i32, ptr %i.cj, align 8, !tbaa !35 ; 4 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph236.split.preheader, label %._crit_edge237

.lr.ph236.split.preheader:                        ; preds = %.lr.ph236
  %i.dr = add nsw i32 %i.dp, -1
  %i.ds = add nsw i32 %i.dp, -1
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = add nsw i32 %i.ch, -1
  br label %.lr.ph

._crit_edge237:                                   ; preds = %._crit_edge, %.lr.ph236, %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EEC2ERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit
  %i.dv = load ptr, ptr %i.bn, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i125 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i125, label %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge237
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !69
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #19
  br label %_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EED2Ev.exit

_ZN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EED2Ev.exit: ; preds = %._crit_edge237, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret void

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph236.split.preheader
  %.0111235 = phi i32 [ %i.eh, %._crit_edge ], [ 0, %.lr.ph236.split.preheader ] ; 9 uses
  %.0112234 = phi i32 [ %i.el, %._crit_edge ], [ 1, %.lr.ph236.split.preheader ] ; 3 uses
  %i.eb = icmp slt i32 %.0112234, 0
  %i.ec = select i1 %i.eb, i32 %i.dr, i32 0
  %i.ed = uitofp nneg i32 %.0111235 to double
  %i.ee = fadd double %i.ed, 5.000000e-01         ; 3 uses
  %i.ef = icmp ne i32 %.0111235, 0                ; 3 uses
  %i.eg = add nsw i32 %.0111235, -1               ; 3 uses
  %i.eh = add nuw nsw i32 %.0111235, 1            ; 5 uses
  %i.ei = zext nneg i32 %i.ec to i64
  %i.ej = sext i32 %.0112234 to i64
  %i.ek = icmp slt i32 %.0111235, %i.du           ; 3 uses
  br label %bb.g

._crit_edge:                                      ; preds = %bb.ay
  %i.el = sub nsw i32 0, %.0112234
  %i.em = icmp slt i32 %i.eh, %i.ch
  br i1 %i.em, label %.lr.ph, label %._crit_edge237, !llvm.loop !166

bb.g:                                             ; preds = %.lr.ph, %bb.ay
  %indvars.iv = phi i64 [ %i.ei, %.lr.ph ], [ %indvars.iv.next, %bb.ay ] ; 10 uses
  %.0109233 = phi i32 [ 0, %.lr.ph ], [ %i.yr, %bb.ay ]
  %i.en = load ptr, ptr %0, align 8, !tbaa !18
  %i.eo = load i32, ptr %i.ck, align 8, !tbaa !16
  %i.ep = mul nsw i32 %i.eo, %.0111235
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds i8, ptr %i.en, i64 %i.eq
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %indvars.iv
  %i.et = load i8, ptr %i.es, align 1, !tbaa !31
  %i.eu = and i8 %i.et, 1
  %.not = icmp eq i8 %i.eu, 0
  br i1 %.not, label %bb.h, label %bb.ay

bb.h:                                             ; preds = %bb.g
  %i.ev = load ptr, ptr %1, align 8, !tbaa !36    ; 7 uses
  %i.ew = load i32, ptr %i.cl, align 8, !tbaa !37 ; 7 uses
  %i.ex = mul nsw i32 %i.ew, %.0111235
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.ey ; 3 uses
  %i.fa = shl nsw i64 %indvars.iv, 2              ; 3 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.fa ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.fc = trunc nsw i64 %indvars.iv to i32        ; 5 uses
  %i.fd = sitofp i32 %i.fc to double
  %i.fe = fadd double %i.fd, 5.000000e-01         ; 3 uses
  store double %i.fe, ptr %10, align 8, !tbaa !21
  store double %i.ee, ptr %i.cm, align 8, !tbaa !22
  %i.ff = invoke { double, double } @_ZNK7msdfgen10Projection9unprojectERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.i unwind label %bb.az      ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.fg = extractvalue { double, double } %i.ff, 0
  %i.fh = extractvalue { double, double } %i.ff, 1
  store double %i.fg, ptr %9, align 8, !tbaa !50
  store double %i.fh, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  store double %i.fe, ptr %i.cn, align 8, !tbaa !50
  store double %i.ee, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !50
  store ptr %i.fb, ptr %i.co, align 8, !tbaa !78
  %i.fi = load ptr, ptr %0, align 8, !tbaa !18
  %i.fj = load i32, ptr %i.ck, align 8, !tbaa !16
  %i.fk = mul nsw i32 %i.fj, %.0111235
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.fi, i64 %i.fl
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %indvars.iv
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !31
  %i.fp = lshr i8 %i.fo, 1                        ; 2 uses
  %.lobit = and i8 %i.fp, 1                       ; 2 uses
  store i8 %.lobit, ptr %i.cp, align 8, !tbaa !184
  %i.fq = load float, ptr %i.fb, align 4, !tbaa !30 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 10 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !30 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 8 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !30 ; 2 uses
  %i.fv = fcmp olt float %i.fs, %i.fq
  %i.fw = select i1 %i.fv, float %i.fs, float %i.fq ; 2 uses
  %i.fx = fcmp olt float %i.fq, %i.fs
  %i.fy = select i1 %i.fx, float %i.fs, float %i.fq ; 2 uses
  %i.fz = fcmp olt float %i.fu, %i.fy
  %i.ga = select i1 %i.fz, float %i.fu, float %i.fy ; 2 uses
  %i.gb = fcmp olt float %i.fw, %i.ga
  %i.gc = select i1 %i.gb, float %i.ga, float %i.fw ; 38 uses
  %i.gd = icmp sgt i64 %indvars.iv, 0             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  br i1 %i.gd, label %bb.j, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215

bb.j:                                             ; preds = %bb.i
  %i.ge = shl i64 %indvars.iv, 2
  %i.gf = add i64 %i.ge, 4294967292
  %i.gg = and i64 %i.gf, 4294967292
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.gg ; 8 uses
  store double %i.ax, ptr %11, align 8, !tbaa !45, !alias.scope !185
  store i8 %.lobit, ptr %i.cq, align 8, !tbaa !46, !alias.scope !185
  store ptr %9, ptr %i.cr, align 8, !tbaa !81, !alias.scope !185
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.cs, align 8, !tbaa !50
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !30 ; 8 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 4 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gl = load <2 x float>, ptr %i.gj, align 4, !tbaa !30 ; 7 uses
  %i.gm = extractelement <2 x float> %i.gl, i64 0 ; 3 uses
  %i.gn = fcmp olt float %i.gi, %i.gm
  %i.go = select i1 %i.gn, float %i.gm, float %i.gi
  %i.gp = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gq = insertelement <2 x float> %i.gp, float %i.go, i64 1 ; 2 uses
  %i.gr = fcmp olt <2 x float> %i.gl, %i.gq
  %i.gs = select <2 x i1> %i.gr, <2 x float> %i.gl, <2 x float> %i.gq ; 2 uses
  %i.gt = extractelement <2 x float> %i.gs, i64 0 ; 2 uses
  %i.gu = extractelement <2 x float> %i.gs, i64 1 ; 2 uses
  %i.gv = fcmp olt float %i.gt, %i.gu
  %i.gw = select i1 %i.gv, float %i.gu, float %i.gt ; 16 uses
  %i.gx = fadd float %i.gc, -5.000000e-01
  %i.gy = call float @llvm.fabs.f32(float %i.gx)
  %i.gz = fadd float %i.gw, -5.000000e-01
  %i.ha = call float @llvm.fabs.f32(float %i.gz)
  %i.hb = fcmp ult float %i.gy, %i.ha
  br i1 %i.hb, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hc = load float, ptr %i.fb, align 4, !tbaa !30 ; 5 uses
  %i.hd = fsub float %i.gm, %i.gi
  %i.he = load <2 x float>, ptr %i.fr, align 4, !tbaa !30 ; 5 uses
  %i.hf = extractelement <2 x float> %i.he, i64 0
  %i.hg = fsub float %i.hf, %i.hc                 ; 2 uses
  %i.hh = fpext float %i.hg to double
  %i.hi = fsub float %i.hg, %i.hd
  %i.hj = fpext float %i.hi to double
  %i.hk = fdiv double %i.hh, %i.hj                ; 8 uses
  %i.hl = fcmp ogt double %i.hk, 1.000000e-02
  %i.hm = fcmp olt double %i.hk, f0x3FEFAE147AE147AE
  %or.cond.i145 = and i1 %i.hl, %i.hm
  br i1 %or.cond.i145, label %bb.l, label %.noexc.thread

bb.l:                                             ; preds = %bb.k
  %i.hn = fsub double 1.000000e+00, %i.hk         ; 4 uses
  %i.ho = fpext float %i.hc to double
  %i.hp = fpext float %i.gi to double
  %i.hq = fmul double %i.hk, %i.hp
  %i.hr = call double @llvm.fmuladd.f64(double %i.hn, double %i.ho, double %i.hq)
  %i.hs = fptrunc double %i.hr to float           ; 3 uses
  %i.ht = fpext <2 x float> %i.he to <2 x double>
  %i.hu = fpext <2 x float> %i.gl to <2 x double>
  %i.hv = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x double> %i.hw, %i.hu
  %i.hy = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.ht, <2 x double> %i.hx)
  %i.ib = fptrunc <2 x double> %i.ia to <2 x float> ; 3 uses
  %i.ic = extractelement <2 x float> %i.ib, i64 0 ; 2 uses
  %i.id = fcmp ogt float %i.ic, %i.hs
  %i.ie = select i1 %i.id, float %i.ic, float %i.hs
  %i.if = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %i.ie, i64 1 ; 2 uses
  %i.ih = fcmp ogt <2 x float> %i.ig, %i.ib
  %i.ii = select <2 x i1> %i.ih, <2 x float> %i.ib, <2 x float> %i.ig ; 2 uses
  %i.ij = extractelement <2 x float> %i.ii, i64 0 ; 2 uses
  %i.ik = extractelement <2 x float> %i.ii, i64 1 ; 2 uses
  %i.il = fcmp olt float %i.ij, %i.ik
  %i.im = select i1 %i.il, float %i.ik, float %i.ij ; 6 uses
  %i.in = fcmp ogt float %i.gc, 5.000000e-01
  %i.io = fcmp ogt float %i.gw, 5.000000e-01
  %or.cond.i.i147 = and i1 %i.in, %i.io
  %i.ip = fcmp ole float %i.im, 5.000000e-01
  %or.cond3.i.i148 = and i1 %or.cond.i.i147, %i.ip
  br i1 %or.cond3.i.i148, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.iq = fcmp olt float %i.gc, 5.000000e-01
  %i.ir = fcmp olt float %i.gw, 5.000000e-01
  %or.cond5.i.i149 = and i1 %i.iq, %i.ir
  %i.is = fcmp oge float %i.im, 5.000000e-01
  %or.cond7.i.i150 = and i1 %or.cond5.i.i149, %i.is
  br i1 %or.cond7.i.i150, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.it = trunc i8 %i.fp to i1
  br i1 %i.it, label %.noexc.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.iu = fcmp olt float %i.gw, %i.gc
  %i.iv = select i1 %i.iu, float %i.gw, float %i.gc ; 2 uses
  %i.iw = fcmp olt float %i.gc, %i.gw
  %i.ix = select i1 %i.iw, float %i.gw, float %i.gc ; 2 uses
  %i.iy = fcmp olt float %i.im, %i.ix
  %i.iz = select i1 %i.iy, float %i.im, float %i.ix ; 2 uses
  %i.ja = fcmp olt float %i.iv, %i.iz
  %i.jb = select i1 %i.ja, float %i.iz, float %i.iv
  %i.jc = fcmp une float %i.jb, %i.im
  br i1 %i.jc, label %bb.p, label %.noexc.thread

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.jd = fmul double %i.ax, %i.hk                ; 2 uses
  %i.je = fpext float %i.im to double             ; 4 uses
  %i.jf = fpext float %i.gc to double             ; 2 uses
  %i.jg = fsub double %i.jf, %i.jd
  %i.jh = fcmp ugt double %i.jg, %i.je
  %i.ji = fadd double %i.jd, %i.jf
  %i.jj = fcmp ult double %i.ji, %i.je
  %or.cond36.i.i153 = or i1 %i.jh, %i.jj
  br i1 %or.cond36.i.i153, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i151

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i151: ; preds = %bb.p
  %i.jk = fpext float %i.gw to double             ; 2 uses
  %i.jl = fmul double %i.ax, %i.hn                ; 2 uses
  %i.jm = fsub double %i.jk, %i.jl
  %i.jn = fcmp ole double %i.jm, %i.je
  %i.jo = fadd double %i.jl, %i.jk
  %i.jp = fcmp oge double %i.jo, %i.je
  %or.cond38.i.i154.not = and i1 %i.jn, %i.jp
  br i1 %or.cond38.i.i154.not, label %bb.q, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread

bb.q:                                             ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.jq = fsub double %i.fe, %i.hk
  invoke void @_ZN7msdfgen11interpolateIfLi4EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, double %i.jq, double %i.ee)
          to label %.noexc174 unwind label %bb.ba

.noexc174:                                        ; preds = %bb.q
  %i.jr = load ptr, ptr %i.cr, align 8, !tbaa !81 ; 5 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !78 ; 2 uses
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !30 ; 5 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.jw = load float, ptr %i.a, align 16, !tbaa !30 ; 5 uses
  %i.jx = fpext float %i.jw to double
  %i.jy = load <2 x float>, ptr %i.jv, align 4, !tbaa !30 ; 3 uses
  %i.jz = extractelement <2 x float> %i.jy, i64 0 ; 4 uses
  %i.ka = fcmp olt float %i.jz, %i.ju
  %i.kb = select i1 %i.ka, float %i.jz, float %i.ju ; 2 uses
  %i.kc = fcmp olt float %i.ju, %i.jz
  %i.kd = select i1 %i.kc, float %i.jz, float %i.ju ; 2 uses
  %i.ke = extractelement <2 x float> %i.jy, i64 1 ; 2 uses
  %i.kf = fcmp olt float %i.ke, %i.kd
  %i.kg = select i1 %i.kf, float %i.ke, float %i.kd ; 2 uses
  %i.kh = fcmp olt float %i.kb, %i.kg
  %i.ki = select i1 %i.kh, float %i.kg, float %i.kb ; 2 uses
  %i.kj = fsub float %i.ki, %i.ju
  %i.kk = fpext float %i.kj to double
  %i.kl = call double @llvm.fmuladd.f64(double %i.hn, double %i.kk, double %i.jx)
  %i.km = fptrunc double %i.kl to float           ; 4 uses
  %i.kn = load <2 x float>, ptr %i.ct, align 4, !tbaa !30 ; 3 uses
  %i.ko = fpext <2 x float> %i.kn to <2 x double>
  %i.kp = insertelement <2 x float> poison, float %i.ki, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = fsub <2 x float> %i.kq, %i.jy
  %i.ks = fpext <2 x float> %i.kr to <2 x double>
  %i.kt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.ks, <2 x double> %i.ko) ; 2 uses
  %i.ku = extractelement <2 x double> %i.kt, i64 0
  %i.kv = fptrunc double %i.ku to float           ; 4 uses
  %i.kw = extractelement <2 x double> %i.kt, i64 1
  %i.kx = fptrunc double %i.kw to float           ; 2 uses
  %i.ky = extractelement <2 x float> %i.kn, i64 0 ; 4 uses
  %i.kz = fcmp olt float %i.ky, %i.jw
  %i.la = select i1 %i.kz, float %i.ky, float %i.jw ; 2 uses
  %i.lb = fcmp olt float %i.jw, %i.ky
  %i.lc = select i1 %i.lb, float %i.ky, float %i.jw ; 2 uses
  %i.ld = extractelement <2 x float> %i.kn, i64 1 ; 2 uses
  %i.le = fcmp olt float %i.ld, %i.lc
  %i.lf = select i1 %i.le, float %i.ld, float %i.lc ; 2 uses
  %i.lg = fcmp olt float %i.la, %i.lf
  %i.lh = select i1 %i.lg, float %i.lf, float %i.la
  %i.li = fcmp olt float %i.kv, %i.km
  %i.lj = select i1 %i.li, float %i.kv, float %i.km ; 2 uses
  %i.lk = fcmp olt float %i.km, %i.kv
  %i.ll = select i1 %i.lk, float %i.kv, float %i.km ; 2 uses
  %i.lm = fcmp ogt float %i.ll, %i.kx
end_hunk_2
begin_hunk_3_@_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_21SimpleContourCombinerELi4EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE:bb.a
  %i.lz = invoke noundef double @_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(96) %i.lq, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc175 unwind label %bb.ba

.noexc175:                                        ; preds = %.noexc174
  %i.ma = getelementptr inbounds nuw i8, ptr %i.jr, i64 168
  %i.mb = invoke noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %i.ma, double noundef %i.lz)
          to label %.noexc unwind label %bb.ba

.noexc:                                           ; preds = %.noexc175
  %i.mc = fptrunc double %i.mb to float           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.md = load ptr, ptr %i.cr, align 8, !tbaa !81
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 200
  %i.mf = load double, ptr %i.me, align 8, !tbaa !77
  %i.mg = fsub float %i.lp, %i.mc
  %i.mh = call float @llvm.fabs.f32(float %i.mg)
  %i.mi = fpext float %i.mh to double
  %i.mj = fmul double %i.mf, %i.mi
  %i.mk = fsub float %i.lh, %i.mc
  %i.ml = call float @llvm.fabs.f32(float %i.mk)
  %i.mm = fpext float %i.ml to double
  %i.mn = fcmp olt double %i.mj, %i.mm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %i.mn, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %.noexc..noexc.thread_crit_edge

.noexc..noexc.thread_crit_edge:                   ; preds = %.noexc
  %i.mo = load <2 x float>, ptr %i.fr, align 4, !tbaa !30
  %i.mp = load <2 x float>, ptr %i.gj, align 4, !tbaa !30
  %.pre245.pre = load float, ptr %i.fb, align 4, !tbaa !30
  %.pre248.pre = load float, ptr %i.gh, align 4, !tbaa !30
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %.noexc..noexc.thread_crit_edge, %bb.o, %bb.n, %bb.k
  %.pre248 = phi float [ %.pre248.pre, %.noexc..noexc.thread_crit_edge ], [ %i.gi, %bb.o ], [ %i.gi, %bb.n ], [ %i.gi, %bb.k ] ; 2 uses
  %.pre245 = phi float [ %.pre245.pre, %.noexc..noexc.thread_crit_edge ], [ %i.hc, %bb.o ], [ %i.hc, %bb.n ], [ %i.hc, %bb.k ] ; 2 uses
  %i.mq = phi <2 x float> [ %i.mo, %.noexc..noexc.thread_crit_edge ], [ %i.he, %bb.o ], [ %i.he, %bb.n ], [ %i.he, %bb.k ] ; 3 uses
  %i.mr = phi <2 x float> [ %i.mp, %.noexc..noexc.thread_crit_edge ], [ %i.gl, %bb.o ], [ %i.gl, %bb.n ], [ %i.gl, %bb.k ] ; 3 uses
  %i.ms = extractelement <2 x float> %i.mq, i64 0
  %i.mt = extractelement <2 x float> %i.mq, i64 1 ; 2 uses
  %i.mu = fsub float %i.mt, %i.ms                 ; 2 uses
  %i.mv = extractelement <2 x float> %i.mr, i64 0
  %i.mw = extractelement <2 x float> %i.mr, i64 1 ; 2 uses
  %i.mx = fsub float %i.mw, %i.mv
  %i.my = fpext float %i.mu to double
  %i.mz = fsub float %i.mu, %i.mx
  %i.na = fpext float %i.mz to double
  %i.nb = fdiv double %i.my, %i.na                ; 7 uses
  %i.nc = fcmp ogt double %i.nb, 1.000000e-02
  %i.nd = fcmp olt double %i.nb, f0x3FEFAE147AE147AE
  %or.cond.i = and i1 %i.nc, %i.nd
  br i1 %or.cond.i, label %bb.r, label %.noexc127.thread

bb.r:                                             ; preds = %.noexc.thread
  %i.ne = fsub double 1.000000e+00, %i.nb         ; 3 uses
  %i.nf = fpext float %.pre245 to double
  %i.ng = fpext float %.pre248 to double
  %i.nh = fmul double %i.nb, %i.ng
  %i.ni = call double @llvm.fmuladd.f64(double %i.ne, double %i.nf, double %i.nh)
  %i.nj = fptrunc double %i.ni to float           ; 3 uses
  %i.nk = fpext <2 x float> %i.mq to <2 x double>
  %i.nl = fpext <2 x float> %i.mr to <2 x double>
  %i.nm = insertelement <2 x double> poison, double %i.nb, i64 0
  %i.nn = shufflevector <2 x double> %i.nm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.no = fmul <2 x double> %i.nn, %i.nl
  %i.np = insertelement <2 x double> poison, double %i.ne, i64 0
  %i.nq = shufflevector <2 x double> %i.np, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nq, <2 x double> %i.nk, <2 x double> %i.no)
  %i.ns = fptrunc <2 x double> %i.nr to <2 x float> ; 3 uses
  %i.nt = extractelement <2 x float> %i.ns, i64 0 ; 2 uses
  %i.nu = fcmp ogt float %i.nt, %i.nj
  %i.nv = select i1 %i.nu, float %i.nt, float %i.nj
  %i.nw = insertelement <2 x float> poison, float %i.nj, i64 0
  %i.nx = insertelement <2 x float> %i.nw, float %i.nv, i64 1 ; 2 uses
  %i.ny = fcmp ogt <2 x float> %i.nx, %i.ns
  %i.nz = select <2 x i1> %i.ny, <2 x float> %i.ns, <2 x float> %i.nx ; 2 uses
  %i.oa = extractelement <2 x float> %i.nz, i64 0 ; 2 uses
  %i.ob = extractelement <2 x float> %i.nz, i64 1 ; 2 uses
  %i.oc = fcmp olt float %i.oa, %i.ob
  %i.od = select i1 %i.oc, float %i.ob, float %i.oa ; 7 uses
  %i.oe = fcmp ogt float %i.gc, 5.000000e-01
  %i.of = fcmp ogt float %i.gw, 5.000000e-01
  %or.cond.i.i = and i1 %i.oe, %i.of
  %i.og = fcmp ole float %i.od, 5.000000e-01
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.og
  br i1 %or.cond3.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.oh = fcmp olt float %i.gc, 5.000000e-01
  %i.oi = fcmp olt float %i.gw, 5.000000e-01
  %or.cond5.i.i = and i1 %i.oh, %i.oi
  %i.oj = fcmp oge float %i.od, 5.000000e-01
  %or.cond7.i.i = and i1 %or.cond5.i.i, %i.oj
  br i1 %or.cond7.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ok = load i8, ptr %i.cq, align 8, !tbaa !46, !range !74, !noundef !75
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.om = fcmp olt float %i.gw, %i.gc
  %i.on = select i1 %i.om, float %i.gw, float %i.gc ; 2 uses
  %i.oo = fcmp olt float %i.gc, %i.gw
  %i.op = select i1 %i.oo, float %i.gw, float %i.gc ; 2 uses
  %i.oq = fcmp olt float %i.od, %i.op
  %i.or = select i1 %i.oq, float %i.od, float %i.op ; 2 uses
  %i.os = fcmp olt float %i.on, %i.or
  %i.ot = select i1 %i.os, float %i.or, float %i.on
  %i.ou = fcmp une float %i.ot, %i.od
  br i1 %i.ou, label %bb.v, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.r
  %i.ov = load double, ptr %11, align 8, !tbaa !45 ; 2 uses
  %i.ow = fmul double %i.nb, %i.ov                ; 2 uses
  %i.ox = fpext float %i.od to double             ; 4 uses
  %i.oy = fpext float %i.gc to double             ; 2 uses
  %i.oz = fsub double %i.oy, %i.ow
  %i.pa = fcmp ugt double %i.oz, %i.ox
  %i.pb = fadd double %i.ow, %i.oy
  %i.pc = fcmp ult double %i.pb, %i.ox
  %or.cond36.i.i = or i1 %i.pa, %i.pc
  br i1 %or.cond36.i.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.pd = fmul double %i.ne, %i.ov                ; 2 uses
  %i.pe = fpext float %i.gw to double             ; 2 uses
  %i.pf = fsub double %i.pe, %i.pd
  %i.pg = fcmp ugt double %i.pf, %i.ox
  %i.ph = fadd double %i.pd, %i.pe
  %i.pi = fcmp ult double %i.ph, %i.ox
  %or.cond38.i.i = or i1 %i.pg, %i.pi
  %spec.select.i.i = select i1 %or.cond38.i.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.1.i.i = phi i32 [ 3, %bb.v ], [ 0, %bb.t ], [ %spec.select.i.i, %bb.w ], [ 0, %bb.u ]
  %i.pj = invoke noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %11, double noundef %i.nb, float noundef %i.od, i32 noundef %.1.i.i)
          to label %.noexc127 unwind label %bb.ba

.noexc127:                                        ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i
  br i1 %i.pj, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %.noexc127..noexc127.thread_crit_edge

.noexc127..noexc127.thread_crit_edge:             ; preds = %.noexc127
  %.pre244 = load float, ptr %i.fb, align 4, !tbaa !30
  %.pre246 = load float, ptr %i.ft, align 4, !tbaa !30
  %.pre247 = load float, ptr %i.gh, align 4, !tbaa !30
  %.pre249 = load float, ptr %i.gk, align 4, !tbaa !30
  br label %.noexc127.thread

.noexc127.thread:                                 ; preds = %.noexc127..noexc127.thread_crit_edge, %.noexc.thread
  %i.pk = phi float [ %.pre249, %.noexc127..noexc127.thread_crit_edge ], [ %i.mw, %.noexc.thread ]
  %i.pl = phi float [ %.pre247, %.noexc127..noexc127.thread_crit_edge ], [ %.pre248, %.noexc.thread ]
  %i.pm = phi float [ %.pre246, %.noexc127..noexc127.thread_crit_edge ], [ %i.mt, %.noexc.thread ]
  %i.pn = phi float [ %.pre244, %.noexc127..noexc127.thread_crit_edge ], [ %.pre245, %.noexc.thread ]
  %i.po = fsub float %i.pn, %i.pm
  %i.pp = fsub float %i.pl, %i.pk
  %i.pq = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %11, float noundef %i.gc, float noundef %i.gw, ptr noundef nonnull readonly %i.fb, ptr noundef nonnull readonly %i.gh, float noundef %i.po, float noundef %i.pp)
          to label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit unwind label %bb.ba

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit: ; preds = %.noexc127.thread
  br i1 %i.pq, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215: ; preds = %bb.j, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit, %bb.i
  %.098 = phi ptr [ %i.gh, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit ], [ null, %bb.i ], [ %i.gh, %bb.j ] ; 2 uses
  br i1 %i.ef, label %bb.x, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132.thread217

bb.x:                                             ; preds = %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215
  %i.pr = mul nsw i32 %i.ew, %i.eg
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.ps
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.fa ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.pv = load i8, ptr %i.cp, align 8, !tbaa !184, !range !74, !noalias !186, !noundef !75 ; 2 uses
  store double %i.az, ptr %12, align 8, !tbaa !45, !alias.scope !186
  store i8 %i.pv, ptr %i.cu, align 8, !tbaa !46, !alias.scope !186
  store ptr %9, ptr %i.cv, align 8, !tbaa !81, !alias.scope !186
  store <2 x double> <double 0.000000e+00, double -1.000000e+00>, ptr %i.cw, align 8, !tbaa !50
  %i.pw = load float, ptr %i.pu, align 4, !tbaa !30 ; 5 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 4 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 8 ; 2 uses
  %i.pz = load <2 x float>, ptr %i.px, align 4, !tbaa !30 ; 5 uses
  %i.qa = extractelement <2 x float> %i.pz, i64 0 ; 4 uses
  %i.qb = fcmp olt float %i.pw, %i.qa
  %i.qc = select i1 %i.qb, float %i.qa, float %i.pw
  %i.qd = insertelement <2 x float> poison, float %i.pw, i64 0
  %i.qe = insertelement <2 x float> %i.qd, float %i.qc, i64 1 ; 2 uses
  %i.qf = fcmp olt <2 x float> %i.pz, %i.qe
  %i.qg = select <2 x i1> %i.qf, <2 x float> %i.pz, <2 x float> %i.qe ; 2 uses
  %i.qh = extractelement <2 x float> %i.qg, i64 0 ; 2 uses
  %i.qi = extractelement <2 x float> %i.qg, i64 1 ; 2 uses
  %i.qj = fcmp olt float %i.qh, %i.qi
  %i.qk = select i1 %i.qj, float %i.qi, float %i.qh ; 10 uses
  %i.ql = fadd float %i.gc, -5.000000e-01
  %i.qm = call float @llvm.fabs.f32(float %i.ql)
  %i.qn = fadd float %i.qk, -5.000000e-01
  %i.qo = call float @llvm.fabs.f32(float %i.qn)
  %i.qp = fcmp ult float %i.qm, %i.qo
  br i1 %i.qp, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132.thread217, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.qq = load float, ptr %i.fr, align 4, !tbaa !30 ; 2 uses
  %i.qr = load float, ptr %i.fb, align 4, !tbaa !30 ; 2 uses
  %i.qs = fsub float %i.qq, %i.qr                 ; 2 uses
  %i.qt = fsub float %i.qa, %i.pw
  %i.qu = fpext float %i.qs to double
  %i.qv = fsub float %i.qs, %i.qt
  %i.qw = fpext float %i.qv to double
  %i.qx = fdiv double %i.qu, %i.qw                ; 7 uses
  %i.qy = fcmp ogt double %i.qx, 1.000000e-02
  %i.qz = fcmp olt double %i.qx, f0x3FEFAE147AE147AE
  %or.cond.i158 = and i1 %i.qy, %i.qz
  %i.ra = extractelement <2 x float> %i.pz, i64 1
  br i1 %or.cond.i158, label %bb.z, label %.noexc129.thread

bb.z:                                             ; preds = %bb.y
  %i.rb = fsub double 1.000000e+00, %i.qx         ; 3 uses
  %i.rc = fpext float %i.qr to double
  %i.rd = fpext float %i.pw to double
  %i.re = fmul double %i.qx, %i.rd
  %i.rf = call double @llvm.fmuladd.f64(double %i.rb, double %i.rc, double %i.re)
  %i.rg = fptrunc double %i.rf to float           ; 3 uses
  %i.rh = fpext <2 x float> %i.pz to <2 x double>
  %19 = load <2 x float>, ptr %i.fr, align 4, !tbaa !30
  %i.ri = fpext <2 x float> %19 to <2 x double>
  %i.rj = insertelement <2 x double> poison, double %i.qx, i64 0
  %i.rk = shufflevector <2 x double> %i.rj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rl = fmul <2 x double> %i.rk, %i.rh
  %i.rm = insertelement <2 x double> poison, double %i.rb, i64 0
  %i.rn = shufflevector <2 x double> %i.rm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ro = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rn, <2 x double> %i.ri, <2 x double> %i.rl)
  %i.rp = fptrunc <2 x double> %i.ro to <2 x float> ; 3 uses
  %i.rq = extractelement <2 x float> %i.rp, i64 0 ; 2 uses
  %i.rr = fcmp ogt float %i.rq, %i.rg
  %i.rs = select i1 %i.rr, float %i.rq, float %i.rg
  %i.rt = insertelement <2 x float> poison, float %i.rg, i64 0
  %i.ru = insertelement <2 x float> %i.rt, float %i.rs, i64 1 ; 2 uses
  %i.rv = fcmp ogt <2 x float> %i.ru, %i.rp
  %i.rw = select <2 x i1> %i.rv, <2 x float> %i.rp, <2 x float> %i.ru ; 2 uses
  %i.rx = extractelement <2 x float> %i.rw, i64 0 ; 2 uses
  %i.ry = extractelement <2 x float> %i.rw, i64 1 ; 2 uses
  %i.rz = fcmp olt float %i.rx, %i.ry
  %i.sa = select i1 %i.rz, float %i.ry, float %i.rx ; 7 uses
  %i.sb = fcmp ogt float %i.gc, 5.000000e-01
  %i.sc = fcmp ogt float %i.qk, 5.000000e-01
  %or.cond.i.i160 = and i1 %i.sb, %i.sc
  %i.sd = fcmp ole float %i.sa, 5.000000e-01
  %or.cond3.i.i161 = and i1 %or.cond.i.i160, %i.sd
  br i1 %or.cond3.i.i161, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.se = fcmp olt float %i.gc, 5.000000e-01
  %i.sf = fcmp olt float %i.qk, 5.000000e-01
  %or.cond5.i.i162 = and i1 %i.se, %i.sf
  %i.sg = fcmp oge float %i.sa, 5.000000e-01
  %or.cond7.i.i163 = and i1 %or.cond5.i.i162, %i.sg
  br i1 %or.cond7.i.i163, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.sh = trunc nuw i8 %i.pv to i1
  br i1 %i.sh, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i164, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.si = fcmp olt float %i.qk, %i.gc
  %i.sj = select i1 %i.si, float %i.qk, float %i.gc ; 2 uses
  %i.sk = fcmp olt float %i.gc, %i.qk
  %i.sl = select i1 %i.sk, float %i.qk, float %i.gc ; 2 uses
  %i.sm = fcmp olt float %i.sa, %i.sl
  %i.sn = select i1 %i.sm, float %i.sa, float %i.sl ; 2 uses
  %i.so = fcmp olt float %i.sj, %i.sn
  %i.sp = select i1 %i.so, float %i.sn, float %i.sj
  %i.sq = fcmp une float %i.sp, %i.sa
  br i1 %i.sq, label %bb.ad, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i164

bb.ad:                                            ; preds = %bb.ac, %bb.aa, %bb.z
  %i.sr = fmul double %i.az, %i.qx                ; 2 uses
  %i.ss = fpext float %i.sa to double             ; 4 uses
  %i.st = fpext float %i.gc to double             ; 2 uses
  %i.su = fsub double %i.st, %i.sr
  %i.sv = fcmp ugt double %i.su, %i.ss
  %i.sw = fadd double %i.sr, %i.st
  %i.sx = fcmp ult double %i.sw, %i.ss
  %or.cond36.i.i166 = or i1 %i.sv, %i.sx
  br i1 %or.cond36.i.i166, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i164, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.sy = fmul double %i.az, %i.rb                ; 2 uses
  %i.sz = fpext float %i.qk to double             ; 2 uses
  %i.ta = fsub double %i.sz, %i.sy
  %i.tb = fcmp ugt double %i.ta, %i.ss
  %i.tc = fadd double %i.sy, %i.sz
  %i.td = fcmp ult double %i.tc, %i.ss
  %or.cond38.i.i167 = or i1 %i.tb, %i.td
  %spec.select.i.i168 = select i1 %or.cond38.i.i167, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i164

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i164: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.1.i.i165 = phi i32 [ 3, %bb.ad ], [ 0, %bb.ab ], [ %spec.select.i.i168, %bb.ae ], [ 0, %bb.ac ]
  %i.te = invoke noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %12, double noundef %i.qx, float noundef %i.sa, i32 noundef %.1.i.i165)
          to label %.noexc129 unwind label %bb.bb

.noexc129:                                        ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i164
  br i1 %i.te, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %.noexc129..noexc129.thread_crit_edge

.noexc129..noexc129.thread_crit_edge:             ; preds = %.noexc129
  %.pre250 = load float, ptr %i.fr, align 4, !tbaa !30
  %.pre251 = load float, ptr %i.py, align 4, !tbaa !30
  %.pre252 = load float, ptr %i.px, align 4, !tbaa !30
  br label %.noexc129.thread

.noexc129.thread:                                 ; preds = %.noexc129..noexc129.thread_crit_edge, %bb.y
  %i.tf = phi float [ %.pre252, %.noexc129..noexc129.thread_crit_edge ], [ %i.qa, %bb.y ]
  %i.tg = phi float [ %.pre251, %.noexc129..noexc129.thread_crit_edge ], [ %i.ra, %bb.y ]
  %i.th = phi float [ %.pre250, %.noexc129..noexc129.thread_crit_edge ], [ %i.qq, %bb.y ]
  %i.ti = load float, ptr %i.ft, align 4, !tbaa !30
  %i.tj = fsub float %i.ti, %i.th
  %i.tk = fsub float %i.tg, %i.tf
  %i.tl = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %12, float noundef %i.gc, float noundef %i.qk, ptr noundef nonnull readonly %i.fb, ptr noundef nonnull readonly %i.pu, float noundef %i.tj, float noundef %i.tk)
          to label %.noexc130 unwind label %bb.bb

.noexc130:                                        ; preds = %.noexc129.thread
  br i1 %i.tl, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %bb.af

bb.af:                                            ; preds = %.noexc130
  %i.tm = load float, ptr %i.fb, align 4, !tbaa !30
  %i.tn = load float, ptr %i.ft, align 4, !tbaa !30
  %i.to = fsub float %i.tm, %i.tn
  %i.tp = load float, ptr %i.pu, align 4, !tbaa !30
  %i.tq = load float, ptr %i.py, align 4, !tbaa !30
  %i.tr = fsub float %i.tp, %i.tq
  %i.ts = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %12, float noundef %i.gc, float noundef %i.qk, ptr noundef nonnull readonly %i.fb, ptr noundef nonnull readonly %i.pu, float noundef %i.to, float noundef %i.tr)
          to label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132 unwind label %bb.bb

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132: ; preds = %bb.af
  br i1 %i.ts, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132.thread217

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132.thread217: ; preds = %bb.x, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215
  %.097 = phi ptr [ %i.pu, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132 ], [ null, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread215 ], [ %i.pu, %bb.x ] ; 2 uses
  %i.tt = icmp slt i64 %indvars.iv, %i.dt         ; 4 uses
  br i1 %i.tt, label %bb.ag, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136.thread218

bb.ag:                                            ; preds = %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132.thread217
  %i.tu = shl i32 %i.fc, 2
  %i.tv = add i32 %i.tu, 4
  %i.tw = sext i32 %i.tv to i64
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.tw ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.ty = load i8, ptr %i.cp, align 8, !tbaa !184, !range !74, !noalias !187, !noundef !75
  store double %i.ax, ptr %13, align 8, !tbaa !45, !alias.scope !187
  store i8 %i.ty, ptr %i.cx, align 8, !tbaa !46, !alias.scope !187
  store ptr %9, ptr %i.cy, align 8, !tbaa !81, !alias.scope !187
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.cz, align 8, !tbaa !50
  %i.tz = load float, ptr %i.tx, align 4, !tbaa !30 ; 5 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 4 ; 2 uses
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !30 ; 5 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tx, i64 8 ; 3 uses
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !30 ; 2 uses
  %i.ue = fcmp olt float %i.ub, %i.tz
  %i.uf = select i1 %i.ue, float %i.ub, float %i.tz ; 2 uses
  %i.ug = fcmp olt float %i.tz, %i.ub
  %i.uh = select i1 %i.ug, float %i.ub, float %i.tz ; 2 uses
  %i.ui = fcmp olt float %i.ud, %i.uh
  %i.uj = select i1 %i.ui, float %i.ud, float %i.uh ; 2 uses
  %i.uk = fcmp olt float %i.uf, %i.uj
  %i.ul = select i1 %i.uk, float %i.uj, float %i.uf ; 4 uses
  %i.um = fadd float %i.gc, -5.000000e-01
  %i.un = call float @llvm.fabs.f32(float %i.um)
  %i.uo = fadd float %i.ul, -5.000000e-01
  %i.up = call float @llvm.fabs.f32(float %i.uo)
  %i.uq = fcmp ult float %i.un, %i.up
  br i1 %i.uq, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136.thread218, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ur = load float, ptr %i.fr, align 4, !tbaa !30
  %i.us = load float, ptr %i.fb, align 4, !tbaa !30
  %i.ut = fsub float %i.ur, %i.us
  %i.uu = fsub float %i.ub, %i.tz
  %i.uv = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %13, float noundef %i.gc, float noundef %i.ul, ptr noundef nonnull readonly %i.fb, ptr noundef nonnull readonly %i.tx, float noundef %i.ut, float noundef %i.uu)
          to label %.noexc133 unwind label %bb.bc

.noexc133:                                        ; preds = %bb.ah
  br i1 %i.uv, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %.noexc133
  %i.uw = load float, ptr %i.ft, align 4, !tbaa !30
  %i.ux = load float, ptr %i.fr, align 4, !tbaa !30
  %i.uy = fsub float %i.uw, %i.ux
  %i.uz = load float, ptr %i.uc, align 4, !tbaa !30
  %i.va = load float, ptr %i.ua, align 4, !tbaa !30
  %i.vb = fsub float %i.uz, %i.va
  %i.vc = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %13, float noundef %i.gc, float noundef %i.ul, ptr noundef nonnull readonly %i.fb, ptr noundef nonnull readonly %i.tx, float noundef %i.uy, float noundef %i.vb)
          to label %.noexc134 unwind label %bb.bc

.noexc134:                                        ; preds = %bb.ai
  br i1 %i.vc, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %.noexc134
  %i.vd = load float, ptr %i.fb, align 4, !tbaa !30
  %i.ve = load float, ptr %i.ft, align 4, !tbaa !30
  %i.vf = fsub float %i.vd, %i.ve
  %i.vg = load float, ptr %i.tx, align 4, !tbaa !30
  %i.vh = load float, ptr %i.uc, align 4, !tbaa !30
  %i.vi = fsub float %i.vg, %i.vh
  %i.vj = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %13, float noundef %i.gc, float noundef %i.ul, ptr noundef nonnull readonly %i.fb, ptr noundef nonnull readonly %i.tx, float noundef %i.vf, float noundef %i.vi)
          to label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136 unwind label %bb.bc

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136: ; preds = %bb.aj
  br i1 %i.vj, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136.thread218

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136.thread218: ; preds = %bb.ag, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132.thread217
  %.096 = phi ptr [ %i.tx, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136 ], [ null, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit132.thread217 ], [ %i.tx, %bb.ag ] ; 2 uses
  br i1 %i.ek, label %bb.ak, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit140.thread219

bb.ak:                                            ; preds = %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit136.thread218
  %i.vk = mul nsw i32 %i.ew, %i.eh
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.vl
  %i.vn = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.fa ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.vo = load i8, ptr %i.cp, align 8, !tbaa !184, !range !74, !noalias !188, !noundef !75
  store double %i.az, ptr %14, align 8, !tbaa !45, !alias.scope !188
  store i8 %i.vo, ptr %i.da, align 8, !tbaa !46, !alias.scope !188
  store ptr %9, ptr %i.db, align 8, !tbaa !81, !alias.scope !188
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.dc, align 8, !tbaa !50
  %i.vp = load float, ptr %i.vn, align 4, !tbaa !30 ; 5 uses
end_hunk_3
begin_hunk_4_@_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_26OverlappingContourCombinerELi3EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE:bb.a

_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !54
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 168
  store <2 x double> %i.bj, ptr %i.bu, align 8, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  store double %i.bl, ptr %i.bw, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store <2 x double> splat (double 1.000000e+00), ptr %5, align 16, !tbaa !50
  %i.bx = invoke { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EEC2ERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit unwind label %bb.h ; 2 uses

bb.h:                                             ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.bm) #18
  br label %common.resume

_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EEC2ERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit: ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.ca = extractvalue { double, double } %i.bx, 0
  %i.cb = extractvalue { double, double } %i.bx, 1
  store double %i.ca, ptr %i.bv, align 8, !tbaa !50
  store double %i.cb, ptr %i.bz, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !23 ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph231, label %._crit_edge232

.lr.ph231:                                        ; preds = %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EEC2ERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.dl = load i32, ptr %i.cf, align 8, !tbaa !24 ; 4 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.lr.ph231.split.preheader, label %._crit_edge232

.lr.ph231.split.preheader:                        ; preds = %.lr.ph231
  %i.dn = add nsw i32 %i.dl, -1
  %i.do = add nsw i32 %i.dl, -1
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = add nsw i32 %i.cd, -1
  br label %.lr.ph

._crit_edge232:                                   ; preds = %._crit_edge, %.lr.ph231, %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EEC2ERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit
  %i.dr = load ptr, ptr %i.bp, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge232
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !69
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #19
  br label %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i: ; preds = %bb.i, %._crit_edge232
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !96 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !97
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #19
  br label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i

_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !98 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !99
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #19
  br label %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EED2Ev.exit

_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EED2Ev.exit: ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret void

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph231.split.preheader
  %.0111230 = phi i32 [ %i.er, %._crit_edge ], [ 0, %.lr.ph231.split.preheader ] ; 9 uses
  %.0112229 = phi i32 [ %i.ev, %._crit_edge ], [ 1, %.lr.ph231.split.preheader ] ; 3 uses
  %i.el = icmp slt i32 %.0112229, 0
  %i.em = select i1 %i.el, i32 %i.dn, i32 0
  %i.en = uitofp nneg i32 %.0111230 to double
  %i.eo = fadd double %i.en, 5.000000e-01         ; 3 uses
  %i.ep = icmp ne i32 %.0111230, 0                ; 3 uses
  %i.eq = add nsw i32 %.0111230, -1               ; 3 uses
  %i.er = add nuw nsw i32 %.0111230, 1            ; 5 uses
  %i.es = zext nneg i32 %i.em to i64
  %i.et = sext i32 %.0112229 to i64
  %i.eu = icmp slt i32 %.0111230, %i.dq           ; 3 uses
  br label %bb.l

._crit_edge:                                      ; preds = %bb.bd
  %i.ev = sub nsw i32 0, %.0112229
  %i.ew = icmp slt i32 %i.er, %i.cd
  br i1 %i.ew, label %.lr.ph, label %._crit_edge232, !llvm.loop !193

bb.l:                                             ; preds = %.lr.ph, %bb.bd
  %indvars.iv = phi i64 [ %i.es, %.lr.ph ], [ %indvars.iv.next, %bb.bd ] ; 12 uses
  %.0109228 = phi i32 [ 0, %.lr.ph ], [ %i.yz, %bb.bd ]
  %i.ex = load ptr, ptr %0, align 8, !tbaa !18
  %i.ey = load i32, ptr %i.cg, align 8, !tbaa !16
  %i.ez = mul nsw i32 %i.ey, %.0111230
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %i.ex, i64 %i.fa
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 %indvars.iv
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !31
  %i.fe = and i8 %i.fd, 1
  %.not = icmp eq i8 %i.fe, 0
  br i1 %.not, label %bb.m, label %bb.bd

bb.m:                                             ; preds = %bb.l
  %i.ff = load ptr, ptr %1, align 8, !tbaa !25    ; 7 uses
  %i.fg = load i32, ptr %i.ch, align 8, !tbaa !26 ; 7 uses
  %i.fh = mul nsw i32 %i.fg, %.0111230
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.fi ; 3 uses
  %i.fk = mul nsw i64 %indvars.iv, 3              ; 3 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.fk ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.fm = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  %i.fn = sitofp i32 %i.fm to double
  %i.fo = fadd double %i.fn, 5.000000e-01         ; 3 uses
  store double %i.fo, ptr %10, align 8, !tbaa !21
  store double %i.eo, ptr %i.ci, align 8, !tbaa !22
  %i.fp = invoke { double, double } @_ZNK7msdfgen10Projection9unprojectERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.n unwind label %bb.be      ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.fq = extractvalue { double, double } %i.fp, 0
  %i.fr = extractvalue { double, double } %i.fp, 1
  store double %i.fq, ptr %9, align 8, !tbaa !50
  store double %i.fr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  store double %i.fo, ptr %i.cj, align 8, !tbaa !50
  store double %i.eo, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !50
  store ptr %i.fl, ptr %i.ck, align 8, !tbaa !100
  %i.fs = load ptr, ptr %0, align 8, !tbaa !18
  %i.ft = load i32, ptr %i.cg, align 8, !tbaa !16
  %i.fu = mul nsw i32 %i.ft, %.0111230
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds i8, ptr %i.fs, i64 %i.fv
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 %indvars.iv
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !31
  %i.fz = lshr i8 %i.fy, 1                        ; 2 uses
  %.lobit = and i8 %i.fz, 1                       ; 2 uses
  store i8 %.lobit, ptr %i.cl, align 8, !tbaa !211
  %i.ga = load float, ptr %i.fl, align 4, !tbaa !30 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 10 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !30 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 8 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !30 ; 2 uses
  %i.gf = fcmp olt float %i.gc, %i.ga
  %i.gg = select i1 %i.gf, float %i.gc, float %i.ga ; 2 uses
  %i.gh = fcmp olt float %i.ga, %i.gc
  %i.gi = select i1 %i.gh, float %i.gc, float %i.ga ; 2 uses
  %i.gj = fcmp olt float %i.ge, %i.gi
  %i.gk = select i1 %i.gj, float %i.ge, float %i.gi ; 2 uses
  %i.gl = fcmp olt float %i.gg, %i.gk
  %i.gm = select i1 %i.gl, float %i.gk, float %i.gg ; 38 uses
  %i.gn = icmp sgt i64 %indvars.iv, 0             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  br i1 %i.gn, label %bb.o, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210

bb.o:                                             ; preds = %bb.n
  %i.go = mul i64 %indvars.iv, 3
  %i.gp = add i64 %i.go, 4294967293
  %i.gq = and i64 %i.gp, 4294967295
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.gq ; 8 uses
  store double %i.ax, ptr %11, align 8, !tbaa !45, !alias.scope !212
  store i8 %.lobit, ptr %i.cm, align 8, !tbaa !46, !alias.scope !212
  store ptr %9, ptr %i.cn, align 8, !tbaa !103, !alias.scope !212
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.co, align 8, !tbaa !50
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !30 ; 8 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 4 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gv = load <2 x float>, ptr %i.gt, align 4, !tbaa !30 ; 7 uses
  %i.gw = extractelement <2 x float> %i.gv, i64 0 ; 3 uses
  %i.gx = fcmp olt float %i.gs, %i.gw
  %i.gy = select i1 %i.gx, float %i.gw, float %i.gs
  %i.gz = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.ha = insertelement <2 x float> %i.gz, float %i.gy, i64 1 ; 2 uses
  %i.hb = fcmp olt <2 x float> %i.gv, %i.ha
  %i.hc = select <2 x i1> %i.hb, <2 x float> %i.gv, <2 x float> %i.ha ; 2 uses
  %i.hd = extractelement <2 x float> %i.hc, i64 0 ; 2 uses
  %i.he = extractelement <2 x float> %i.hc, i64 1 ; 2 uses
  %i.hf = fcmp olt float %i.hd, %i.he
  %i.hg = select i1 %i.hf, float %i.he, float %i.hd ; 16 uses
  %i.hh = fadd float %i.gm, -5.000000e-01
  %i.hi = call float @llvm.fabs.f32(float %i.hh)
  %i.hj = fadd float %i.hg, -5.000000e-01
  %i.hk = call float @llvm.fabs.f32(float %i.hj)
  %i.hl = fcmp ult float %i.hi, %i.hk
  br i1 %i.hl, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hm = load float, ptr %i.fl, align 4, !tbaa !30 ; 5 uses
  %i.hn = fsub float %i.gw, %i.gs
  %i.ho = load <2 x float>, ptr %i.gb, align 4, !tbaa !30 ; 5 uses
  %i.hp = extractelement <2 x float> %i.ho, i64 0
  %i.hq = fsub float %i.hp, %i.hm                 ; 2 uses
  %i.hr = fpext float %i.hq to double
  %i.hs = fsub float %i.hq, %i.hn
  %i.ht = fpext float %i.hs to double
  %i.hu = fdiv double %i.hr, %i.ht                ; 8 uses
  %i.hv = fcmp ogt double %i.hu, 1.000000e-02
  %i.hw = fcmp olt double %i.hu, f0x3FEFAE147AE147AE
  %or.cond.i140 = and i1 %i.hv, %i.hw
  br i1 %or.cond.i140, label %bb.q, label %.noexc.thread

bb.q:                                             ; preds = %bb.p
  %i.hx = fsub double 1.000000e+00, %i.hu         ; 4 uses
  %i.hy = fpext float %i.hm to double
  %i.hz = fpext float %i.gs to double
  %i.ia = fmul double %i.hu, %i.hz
  %i.ib = call double @llvm.fmuladd.f64(double %i.hx, double %i.hy, double %i.ia)
  %i.ic = fptrunc double %i.ib to float           ; 3 uses
  %i.id = fpext <2 x float> %i.ho to <2 x double>
  %i.ie = fpext <2 x float> %i.gv to <2 x double>
  %i.if = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = fmul <2 x double> %i.ig, %i.ie
  %i.ii = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ik = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.id, <2 x double> %i.ih)
  %i.il = fptrunc <2 x double> %i.ik to <2 x float> ; 3 uses
  %i.im = extractelement <2 x float> %i.il, i64 0 ; 2 uses
  %i.in = fcmp ogt float %i.im, %i.ic
  %i.io = select i1 %i.in, float %i.im, float %i.ic
  %i.ip = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.iq = insertelement <2 x float> %i.ip, float %i.io, i64 1 ; 2 uses
  %i.ir = fcmp ogt <2 x float> %i.iq, %i.il
  %i.is = select <2 x i1> %i.ir, <2 x float> %i.il, <2 x float> %i.iq ; 2 uses
  %i.it = extractelement <2 x float> %i.is, i64 0 ; 2 uses
  %i.iu = extractelement <2 x float> %i.is, i64 1 ; 2 uses
  %i.iv = fcmp olt float %i.it, %i.iu
  %i.iw = select i1 %i.iv, float %i.iu, float %i.it ; 6 uses
  %i.ix = fcmp ogt float %i.gm, 5.000000e-01
  %i.iy = fcmp ogt float %i.hg, 5.000000e-01
  %or.cond.i.i142 = and i1 %i.ix, %i.iy
  %i.iz = fcmp ole float %i.iw, 5.000000e-01
  %or.cond3.i.i143 = and i1 %or.cond.i.i142, %i.iz
  br i1 %or.cond3.i.i143, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ja = fcmp olt float %i.gm, 5.000000e-01
  %i.jb = fcmp olt float %i.hg, 5.000000e-01
  %or.cond5.i.i144 = and i1 %i.ja, %i.jb
  %i.jc = fcmp oge float %i.iw, 5.000000e-01
  %or.cond7.i.i145 = and i1 %or.cond5.i.i144, %i.jc
  br i1 %or.cond7.i.i145, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jd = trunc i8 %i.fz to i1
  br i1 %i.jd, label %.noexc.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.je = fcmp olt float %i.hg, %i.gm
  %i.jf = select i1 %i.je, float %i.hg, float %i.gm ; 2 uses
  %i.jg = fcmp olt float %i.gm, %i.hg
  %i.jh = select i1 %i.jg, float %i.hg, float %i.gm ; 2 uses
  %i.ji = fcmp olt float %i.iw, %i.jh
  %i.jj = select i1 %i.ji, float %i.iw, float %i.jh ; 2 uses
  %i.jk = fcmp olt float %i.jf, %i.jj
  %i.jl = select i1 %i.jk, float %i.jj, float %i.jf
  %i.jm = fcmp une float %i.jl, %i.iw
  br i1 %i.jm, label %bb.u, label %.noexc.thread

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.jn = fmul double %i.ax, %i.hu                ; 2 uses
  %i.jo = fpext float %i.iw to double             ; 4 uses
  %i.jp = fpext float %i.gm to double             ; 2 uses
  %i.jq = fsub double %i.jp, %i.jn
  %i.jr = fcmp ugt double %i.jq, %i.jo
  %i.js = fadd double %i.jn, %i.jp
  %i.jt = fcmp ult double %i.js, %i.jo
  %or.cond36.i.i148 = or i1 %i.jr, %i.jt
  br i1 %or.cond36.i.i148, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i146

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i146: ; preds = %bb.u
  %i.ju = fpext float %i.hg to double             ; 2 uses
  %i.jv = fmul double %i.ax, %i.hx                ; 2 uses
  %i.jw = fsub double %i.ju, %i.jv
  %i.jx = fcmp ole double %i.jw, %i.jo
  %i.jy = fadd double %i.jv, %i.ju
  %i.jz = fcmp oge double %i.jy, %i.jo
  %or.cond38.i.i149.not = and i1 %i.jx, %i.jz
  br i1 %or.cond38.i.i149.not, label %bb.v, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread

bb.v:                                             ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ka = fsub double %i.fo, %i.hu
  invoke void @_ZN7msdfgen11interpolateIfLi3EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, double %i.ka, double %i.eo)
          to label %.noexc169 unwind label %bb.bf

.noexc169:                                        ; preds = %bb.v
  %i.kb = load ptr, ptr %i.cn, align 8, !tbaa !103 ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !100 ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !30 ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kg = load float, ptr %i.a, align 4, !tbaa !30 ; 5 uses
  %i.kh = fpext float %i.kg to double
  %i.ki = load <2 x float>, ptr %i.kf, align 4, !tbaa !30 ; 3 uses
  %i.kj = extractelement <2 x float> %i.ki, i64 0 ; 4 uses
  %i.kk = fcmp olt float %i.kj, %i.ke
  %i.kl = select i1 %i.kk, float %i.kj, float %i.ke ; 2 uses
  %i.km = fcmp olt float %i.ke, %i.kj
  %i.kn = select i1 %i.km, float %i.kj, float %i.ke ; 2 uses
  %i.ko = extractelement <2 x float> %i.ki, i64 1 ; 2 uses
  %i.kp = fcmp olt float %i.ko, %i.kn
  %i.kq = select i1 %i.kp, float %i.ko, float %i.kn ; 2 uses
  %i.kr = fcmp olt float %i.kl, %i.kq
  %i.ks = select i1 %i.kr, float %i.kq, float %i.kl ; 2 uses
  %i.kt = fsub float %i.ks, %i.ke
  %i.ku = fpext float %i.kt to double
  %i.kv = call double @llvm.fmuladd.f64(double %i.hx, double %i.ku, double %i.kh)
  %i.kw = fptrunc double %i.kv to float           ; 4 uses
  %i.kx = load <2 x float>, ptr %i.cp, align 4, !tbaa !30 ; 3 uses
  %i.ky = fpext <2 x float> %i.kx to <2 x double>
  %i.kz = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.la = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lb = fsub <2 x float> %i.la, %i.ki
  %i.lc = fpext <2 x float> %i.lb to <2 x double>
  %i.ld = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.lc, <2 x double> %i.ky) ; 2 uses
  %i.le = extractelement <2 x double> %i.ld, i64 0
  %i.lf = fptrunc double %i.le to float           ; 4 uses
  %i.lg = extractelement <2 x double> %i.ld, i64 1
  %i.lh = fptrunc double %i.lg to float           ; 2 uses
  %i.li = extractelement <2 x float> %i.kx, i64 0 ; 4 uses
  %i.lj = fcmp olt float %i.li, %i.kg
  %i.lk = select i1 %i.lj, float %i.li, float %i.kg ; 2 uses
  %i.ll = fcmp olt float %i.kg, %i.li
  %i.lm = select i1 %i.ll, float %i.li, float %i.kg ; 2 uses
  %i.ln = extractelement <2 x float> %i.kx, i64 1 ; 2 uses
  %i.lo = fcmp olt float %i.ln, %i.lm
  %i.lp = select i1 %i.lo, float %i.ln, float %i.lm ; 2 uses
  %i.lq = fcmp olt float %i.lk, %i.lp
  %i.lr = select i1 %i.lq, float %i.lp, float %i.lk
  %i.ls = fcmp olt float %i.lf, %i.kw
  %i.lt = select i1 %i.ls, float %i.lf, float %i.kw ; 2 uses
  %i.lu = fcmp olt float %i.kw, %i.lf
  %i.lv = select i1 %i.lu, float %i.lf, float %i.kw ; 2 uses
  %i.lw = fcmp ogt float %i.lv, %i.lh
end_hunk_4
begin_hunk_5_@_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_26OverlappingContourCombinerELi3EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE:bb.a
  %i.mj = invoke noundef double @_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(96) %i.ma, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc170 unwind label %bb.bf

.noexc170:                                        ; preds = %.noexc169
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kb, i64 168
  %i.ml = invoke noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %i.mk, double noundef %i.mj)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %.noexc170
  %i.mm = fptrunc double %i.ml to float           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.mn = load ptr, ptr %i.cn, align 8, !tbaa !103
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 200
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !95
  %i.mq = fsub float %i.lz, %i.mm
  %i.mr = call float @llvm.fabs.f32(float %i.mq)
  %i.ms = fpext float %i.mr to double
  %i.mt = fmul double %i.mp, %i.ms
  %i.mu = fsub float %i.lr, %i.mm
  %i.mv = call float @llvm.fabs.f32(float %i.mu)
  %i.mw = fpext float %i.mv to double
  %i.mx = fcmp olt double %i.mt, %i.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %i.mx, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %.noexc..noexc.thread_crit_edge

.noexc..noexc.thread_crit_edge:                   ; preds = %.noexc
  %i.my = load <2 x float>, ptr %i.gb, align 4, !tbaa !30
  %i.mz = load <2 x float>, ptr %i.gt, align 4, !tbaa !30
  %.pre240.pre = load float, ptr %i.fl, align 4, !tbaa !30
  %.pre243.pre = load float, ptr %i.gr, align 4, !tbaa !30
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %.noexc..noexc.thread_crit_edge, %bb.t, %bb.s, %bb.p
  %.pre243 = phi float [ %.pre243.pre, %.noexc..noexc.thread_crit_edge ], [ %i.gs, %bb.t ], [ %i.gs, %bb.s ], [ %i.gs, %bb.p ] ; 2 uses
  %.pre240 = phi float [ %.pre240.pre, %.noexc..noexc.thread_crit_edge ], [ %i.hm, %bb.t ], [ %i.hm, %bb.s ], [ %i.hm, %bb.p ] ; 2 uses
  %i.na = phi <2 x float> [ %i.my, %.noexc..noexc.thread_crit_edge ], [ %i.ho, %bb.t ], [ %i.ho, %bb.s ], [ %i.ho, %bb.p ] ; 3 uses
  %i.nb = phi <2 x float> [ %i.mz, %.noexc..noexc.thread_crit_edge ], [ %i.gv, %bb.t ], [ %i.gv, %bb.s ], [ %i.gv, %bb.p ] ; 3 uses
  %i.nc = extractelement <2 x float> %i.na, i64 0
  %i.nd = extractelement <2 x float> %i.na, i64 1 ; 2 uses
  %i.ne = fsub float %i.nd, %i.nc                 ; 2 uses
  %i.nf = extractelement <2 x float> %i.nb, i64 0
  %i.ng = extractelement <2 x float> %i.nb, i64 1 ; 2 uses
  %i.nh = fsub float %i.ng, %i.nf
  %i.ni = fpext float %i.ne to double
  %i.nj = fsub float %i.ne, %i.nh
  %i.nk = fpext float %i.nj to double
  %i.nl = fdiv double %i.ni, %i.nk                ; 7 uses
  %i.nm = fcmp ogt double %i.nl, 1.000000e-02
  %i.nn = fcmp olt double %i.nl, f0x3FEFAE147AE147AE
  %or.cond.i = and i1 %i.nm, %i.nn
  br i1 %or.cond.i, label %bb.w, label %.noexc125.thread

bb.w:                                             ; preds = %.noexc.thread
  %i.no = fsub double 1.000000e+00, %i.nl         ; 3 uses
  %i.np = fpext float %.pre240 to double
  %i.nq = fpext float %.pre243 to double
  %i.nr = fmul double %i.nl, %i.nq
  %i.ns = call double @llvm.fmuladd.f64(double %i.no, double %i.np, double %i.nr)
  %i.nt = fptrunc double %i.ns to float           ; 3 uses
  %i.nu = fpext <2 x float> %i.na to <2 x double>
  %i.nv = fpext <2 x float> %i.nb to <2 x double>
  %i.nw = insertelement <2 x double> poison, double %i.nl, i64 0
  %i.nx = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ny = fmul <2 x double> %i.nx, %i.nv
  %i.nz = insertelement <2 x double> poison, double %i.no, i64 0
  %i.oa = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ob = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oa, <2 x double> %i.nu, <2 x double> %i.ny)
  %i.oc = fptrunc <2 x double> %i.ob to <2 x float> ; 3 uses
  %i.od = extractelement <2 x float> %i.oc, i64 0 ; 2 uses
  %i.oe = fcmp ogt float %i.od, %i.nt
  %i.of = select i1 %i.oe, float %i.od, float %i.nt
  %i.og = insertelement <2 x float> poison, float %i.nt, i64 0
  %i.oh = insertelement <2 x float> %i.og, float %i.of, i64 1 ; 2 uses
  %i.oi = fcmp ogt <2 x float> %i.oh, %i.oc
  %i.oj = select <2 x i1> %i.oi, <2 x float> %i.oc, <2 x float> %i.oh ; 2 uses
  %i.ok = extractelement <2 x float> %i.oj, i64 0 ; 2 uses
  %i.ol = extractelement <2 x float> %i.oj, i64 1 ; 2 uses
  %i.om = fcmp olt float %i.ok, %i.ol
  %i.on = select i1 %i.om, float %i.ol, float %i.ok ; 7 uses
  %i.oo = fcmp ogt float %i.gm, 5.000000e-01
  %i.op = fcmp ogt float %i.hg, 5.000000e-01
  %or.cond.i.i = and i1 %i.oo, %i.op
  %i.oq = fcmp ole float %i.on, 5.000000e-01
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.oq
  br i1 %or.cond3.i.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.or = fcmp olt float %i.gm, 5.000000e-01
  %i.os = fcmp olt float %i.hg, 5.000000e-01
  %or.cond5.i.i = and i1 %i.or, %i.os
  %i.ot = fcmp oge float %i.on, 5.000000e-01
  %or.cond7.i.i = and i1 %or.cond5.i.i, %i.ot
  br i1 %or.cond7.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ou = load i8, ptr %i.cm, align 8, !tbaa !46, !range !74, !noundef !75
  %i.ov = trunc nuw i8 %i.ou to i1
  br i1 %i.ov, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ow = fcmp olt float %i.hg, %i.gm
  %i.ox = select i1 %i.ow, float %i.hg, float %i.gm ; 2 uses
  %i.oy = fcmp olt float %i.gm, %i.hg
  %i.oz = select i1 %i.oy, float %i.hg, float %i.gm ; 2 uses
  %i.pa = fcmp olt float %i.on, %i.oz
  %i.pb = select i1 %i.pa, float %i.on, float %i.oz ; 2 uses
  %i.pc = fcmp olt float %i.ox, %i.pb
  %i.pd = select i1 %i.pc, float %i.pb, float %i.ox
  %i.pe = fcmp une float %i.pd, %i.on
  br i1 %i.pe, label %bb.aa, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.w
  %i.pf = load double, ptr %11, align 8, !tbaa !45 ; 2 uses
  %i.pg = fmul double %i.nl, %i.pf                ; 2 uses
  %i.ph = fpext float %i.on to double             ; 4 uses
  %i.pi = fpext float %i.gm to double             ; 2 uses
  %i.pj = fsub double %i.pi, %i.pg
  %i.pk = fcmp ugt double %i.pj, %i.ph
  %i.pl = fadd double %i.pg, %i.pi
  %i.pm = fcmp ult double %i.pl, %i.ph
  %or.cond36.i.i = or i1 %i.pk, %i.pm
  br i1 %or.cond36.i.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.pn = fmul double %i.no, %i.pf                ; 2 uses
  %i.po = fpext float %i.hg to double             ; 2 uses
  %i.pp = fsub double %i.po, %i.pn
  %i.pq = fcmp ugt double %i.pp, %i.ph
  %i.pr = fadd double %i.pn, %i.po
  %i.ps = fcmp ult double %i.pr, %i.ph
  %or.cond38.i.i = or i1 %i.pq, %i.ps
  %spec.select.i.i = select i1 %or.cond38.i.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %.1.i.i = phi i32 [ 3, %bb.aa ], [ 0, %bb.y ], [ %spec.select.i.i, %bb.ab ], [ 0, %bb.z ]
  %i.pt = invoke noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %11, double noundef %i.nl, float noundef %i.on, i32 noundef %.1.i.i)
          to label %.noexc125 unwind label %bb.bf

.noexc125:                                        ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i
  br i1 %i.pt, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %.noexc125..noexc125.thread_crit_edge

.noexc125..noexc125.thread_crit_edge:             ; preds = %.noexc125
  %.pre239 = load float, ptr %i.fl, align 4, !tbaa !30
  %.pre241 = load float, ptr %i.gd, align 4, !tbaa !30
  %.pre242 = load float, ptr %i.gr, align 4, !tbaa !30
  %.pre244 = load float, ptr %i.gu, align 4, !tbaa !30
  br label %.noexc125.thread

.noexc125.thread:                                 ; preds = %.noexc125..noexc125.thread_crit_edge, %.noexc.thread
  %i.pu = phi float [ %.pre244, %.noexc125..noexc125.thread_crit_edge ], [ %i.ng, %.noexc.thread ]
  %i.pv = phi float [ %.pre242, %.noexc125..noexc125.thread_crit_edge ], [ %.pre243, %.noexc.thread ]
  %i.pw = phi float [ %.pre241, %.noexc125..noexc125.thread_crit_edge ], [ %i.nd, %.noexc.thread ]
  %i.px = phi float [ %.pre239, %.noexc125..noexc125.thread_crit_edge ], [ %.pre240, %.noexc.thread ]
  %i.py = fsub float %i.px, %i.pw
  %i.pz = fsub float %i.pv, %i.pu
  %i.qa = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %11, float noundef %i.gm, float noundef %i.hg, ptr noundef nonnull readonly %i.fl, ptr noundef nonnull readonly %i.gr, float noundef %i.py, float noundef %i.pz)
          to label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit unwind label %bb.bf

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit: ; preds = %.noexc125.thread
  br i1 %i.qa, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210: ; preds = %bb.o, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit, %bb.n
  %.098 = phi ptr [ %i.gr, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit ], [ null, %bb.n ], [ %i.gr, %bb.o ] ; 2 uses
  br i1 %i.ep, label %bb.ac, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130.thread212

bb.ac:                                            ; preds = %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210
  %i.qb = mul nsw i32 %i.fg, %i.eq
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.qc
  %i.qe = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %i.fk ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.qf = load i8, ptr %i.cl, align 8, !tbaa !211, !range !74, !noalias !213, !noundef !75 ; 2 uses
  store double %i.az, ptr %12, align 8, !tbaa !45, !alias.scope !213
  store i8 %i.qf, ptr %i.cq, align 8, !tbaa !46, !alias.scope !213
  store ptr %9, ptr %i.cr, align 8, !tbaa !103, !alias.scope !213
  store <2 x double> <double 0.000000e+00, double -1.000000e+00>, ptr %i.cs, align 8, !tbaa !50
  %i.qg = load float, ptr %i.qe, align 4, !tbaa !30 ; 5 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 4 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 8 ; 2 uses
  %i.qj = load <2 x float>, ptr %i.qh, align 4, !tbaa !30 ; 5 uses
  %i.qk = extractelement <2 x float> %i.qj, i64 0 ; 4 uses
  %i.ql = fcmp olt float %i.qg, %i.qk
  %i.qm = select i1 %i.ql, float %i.qk, float %i.qg
  %i.qn = insertelement <2 x float> poison, float %i.qg, i64 0
  %i.qo = insertelement <2 x float> %i.qn, float %i.qm, i64 1 ; 2 uses
  %i.qp = fcmp olt <2 x float> %i.qj, %i.qo
  %i.qq = select <2 x i1> %i.qp, <2 x float> %i.qj, <2 x float> %i.qo ; 2 uses
  %i.qr = extractelement <2 x float> %i.qq, i64 0 ; 2 uses
  %i.qs = extractelement <2 x float> %i.qq, i64 1 ; 2 uses
  %i.qt = fcmp olt float %i.qr, %i.qs
  %i.qu = select i1 %i.qt, float %i.qs, float %i.qr ; 10 uses
  %i.qv = fadd float %i.gm, -5.000000e-01
  %i.qw = call float @llvm.fabs.f32(float %i.qv)
  %i.qx = fadd float %i.qu, -5.000000e-01
  %i.qy = call float @llvm.fabs.f32(float %i.qx)
  %i.qz = fcmp ult float %i.qw, %i.qy
  br i1 %i.qz, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130.thread212, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ra = load float, ptr %i.gb, align 4, !tbaa !30 ; 2 uses
  %i.rb = load float, ptr %i.fl, align 4, !tbaa !30 ; 2 uses
  %i.rc = fsub float %i.ra, %i.rb                 ; 2 uses
  %i.rd = fsub float %i.qk, %i.qg
  %i.re = fpext float %i.rc to double
  %i.rf = fsub float %i.rc, %i.rd
  %i.rg = fpext float %i.rf to double
  %i.rh = fdiv double %i.re, %i.rg                ; 7 uses
  %i.ri = fcmp ogt double %i.rh, 1.000000e-02
  %i.rj = fcmp olt double %i.rh, f0x3FEFAE147AE147AE
  %or.cond.i153 = and i1 %i.ri, %i.rj
  %i.rk = extractelement <2 x float> %i.qj, i64 1
  br i1 %or.cond.i153, label %bb.ae, label %.noexc127.thread

bb.ae:                                            ; preds = %bb.ad
  %i.rl = fsub double 1.000000e+00, %i.rh         ; 3 uses
  %i.rm = fpext float %i.rb to double
  %i.rn = fpext float %i.qg to double
  %i.ro = fmul double %i.rh, %i.rn
  %i.rp = call double @llvm.fmuladd.f64(double %i.rl, double %i.rm, double %i.ro)
  %i.rq = fptrunc double %i.rp to float           ; 3 uses
  %i.rr = fpext <2 x float> %i.qj to <2 x double>
  %19 = load <2 x float>, ptr %i.gb, align 4, !tbaa !30
  %i.rs = fpext <2 x float> %19 to <2 x double>
  %i.rt = insertelement <2 x double> poison, double %i.rh, i64 0
  %i.ru = shufflevector <2 x double> %i.rt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rv = fmul <2 x double> %i.ru, %i.rr
  %i.rw = insertelement <2 x double> poison, double %i.rl, i64 0
  %i.rx = shufflevector <2 x double> %i.rw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ry = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rx, <2 x double> %i.rs, <2 x double> %i.rv)
  %i.rz = fptrunc <2 x double> %i.ry to <2 x float> ; 3 uses
  %i.sa = extractelement <2 x float> %i.rz, i64 0 ; 2 uses
  %i.sb = fcmp ogt float %i.sa, %i.rq
  %i.sc = select i1 %i.sb, float %i.sa, float %i.rq
  %i.sd = insertelement <2 x float> poison, float %i.rq, i64 0
  %i.se = insertelement <2 x float> %i.sd, float %i.sc, i64 1 ; 2 uses
  %i.sf = fcmp ogt <2 x float> %i.se, %i.rz
  %i.sg = select <2 x i1> %i.sf, <2 x float> %i.rz, <2 x float> %i.se ; 2 uses
  %i.sh = extractelement <2 x float> %i.sg, i64 0 ; 2 uses
  %i.si = extractelement <2 x float> %i.sg, i64 1 ; 2 uses
  %i.sj = fcmp olt float %i.sh, %i.si
  %i.sk = select i1 %i.sj, float %i.si, float %i.sh ; 7 uses
  %i.sl = fcmp ogt float %i.gm, 5.000000e-01
  %i.sm = fcmp ogt float %i.qu, 5.000000e-01
  %or.cond.i.i155 = and i1 %i.sl, %i.sm
  %i.sn = fcmp ole float %i.sk, 5.000000e-01
  %or.cond3.i.i156 = and i1 %or.cond.i.i155, %i.sn
  br i1 %or.cond3.i.i156, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.so = fcmp olt float %i.gm, 5.000000e-01
  %i.sp = fcmp olt float %i.qu, 5.000000e-01
  %or.cond5.i.i157 = and i1 %i.so, %i.sp
  %i.sq = fcmp oge float %i.sk, 5.000000e-01
  %or.cond7.i.i158 = and i1 %or.cond5.i.i157, %i.sq
  br i1 %or.cond7.i.i158, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.sr = trunc nuw i8 %i.qf to i1
  br i1 %i.sr, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i159, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ss = fcmp olt float %i.qu, %i.gm
  %i.st = select i1 %i.ss, float %i.qu, float %i.gm ; 2 uses
  %i.su = fcmp olt float %i.gm, %i.qu
  %i.sv = select i1 %i.su, float %i.qu, float %i.gm ; 2 uses
  %i.sw = fcmp olt float %i.sk, %i.sv
  %i.sx = select i1 %i.sw, float %i.sk, float %i.sv ; 2 uses
  %i.sy = fcmp olt float %i.st, %i.sx
  %i.sz = select i1 %i.sy, float %i.sx, float %i.st
  %i.ta = fcmp une float %i.sz, %i.sk
  br i1 %i.ta, label %bb.ai, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i159

bb.ai:                                            ; preds = %bb.ah, %bb.af, %bb.ae
  %i.tb = fmul double %i.az, %i.rh                ; 2 uses
  %i.tc = fpext float %i.sk to double             ; 4 uses
  %i.td = fpext float %i.gm to double             ; 2 uses
  %i.te = fsub double %i.td, %i.tb
  %i.tf = fcmp ugt double %i.te, %i.tc
  %i.tg = fadd double %i.tb, %i.td
  %i.th = fcmp ult double %i.tg, %i.tc
  %or.cond36.i.i161 = or i1 %i.tf, %i.th
  br i1 %or.cond36.i.i161, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i159, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ti = fmul double %i.az, %i.rl                ; 2 uses
  %i.tj = fpext float %i.qu to double             ; 2 uses
  %i.tk = fsub double %i.tj, %i.ti
  %i.tl = fcmp ugt double %i.tk, %i.tc
  %i.tm = fadd double %i.ti, %i.tj
  %i.tn = fcmp ult double %i.tm, %i.tc
  %or.cond38.i.i162 = or i1 %i.tl, %i.tn
  %spec.select.i.i163 = select i1 %or.cond38.i.i162, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i159

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i159: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.1.i.i160 = phi i32 [ 3, %bb.ai ], [ 0, %bb.ag ], [ %spec.select.i.i163, %bb.aj ], [ 0, %bb.ah ]
  %i.to = invoke noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %12, double noundef %i.rh, float noundef %i.sk, i32 noundef %.1.i.i160)
          to label %.noexc127 unwind label %bb.bg

.noexc127:                                        ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i159
  br i1 %i.to, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %.noexc127..noexc127.thread_crit_edge

.noexc127..noexc127.thread_crit_edge:             ; preds = %.noexc127
  %.pre245 = load float, ptr %i.gb, align 4, !tbaa !30
  %.pre246 = load float, ptr %i.qi, align 4, !tbaa !30
  %.pre247 = load float, ptr %i.qh, align 4, !tbaa !30
  br label %.noexc127.thread

.noexc127.thread:                                 ; preds = %.noexc127..noexc127.thread_crit_edge, %bb.ad
  %i.tp = phi float [ %.pre247, %.noexc127..noexc127.thread_crit_edge ], [ %i.qk, %bb.ad ]
  %i.tq = phi float [ %.pre246, %.noexc127..noexc127.thread_crit_edge ], [ %i.rk, %bb.ad ]
  %i.tr = phi float [ %.pre245, %.noexc127..noexc127.thread_crit_edge ], [ %i.ra, %bb.ad ]
  %i.ts = load float, ptr %i.gd, align 4, !tbaa !30
  %i.tt = fsub float %i.ts, %i.tr
  %i.tu = fsub float %i.tq, %i.tp
  %i.tv = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %12, float noundef %i.gm, float noundef %i.qu, ptr noundef nonnull readonly %i.fl, ptr noundef nonnull readonly %i.qe, float noundef %i.tt, float noundef %i.tu)
          to label %.noexc128 unwind label %bb.bg

.noexc128:                                        ; preds = %.noexc127.thread
  br i1 %i.tv, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %.noexc128
  %i.tw = load float, ptr %i.fl, align 4, !tbaa !30
  %i.tx = load float, ptr %i.gd, align 4, !tbaa !30
  %i.ty = fsub float %i.tw, %i.tx
  %i.tz = load float, ptr %i.qe, align 4, !tbaa !30
  %i.ua = load float, ptr %i.qi, align 4, !tbaa !30
  %i.ub = fsub float %i.tz, %i.ua
  %i.uc = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %12, float noundef %i.gm, float noundef %i.qu, ptr noundef nonnull readonly %i.fl, ptr noundef nonnull readonly %i.qe, float noundef %i.ty, float noundef %i.ub)
          to label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130 unwind label %bb.bg

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130: ; preds = %bb.ak
  br i1 %i.uc, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130.thread212

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130.thread212: ; preds = %bb.ac, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210
  %.097 = phi ptr [ %i.qe, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130 ], [ null, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210 ], [ %i.qe, %bb.ac ] ; 2 uses
  %i.ud = icmp slt i64 %indvars.iv, %i.dp         ; 4 uses
  br i1 %i.ud, label %bb.al, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134.thread213

bb.al:                                            ; preds = %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130.thread212
  %i.ue = mul i64 %indvars.iv, 12884901888
  %sext = add i64 %i.ue, 12884901888
  %i.uf = ashr exact i64 %sext, 30
  %i.ug = getelementptr inbounds i8, ptr %i.fj, i64 %i.uf ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.uh = load i8, ptr %i.cl, align 8, !tbaa !211, !range !74, !noalias !214, !noundef !75
  store double %i.ax, ptr %13, align 8, !tbaa !45, !alias.scope !214
  store i8 %i.uh, ptr %i.ct, align 8, !tbaa !46, !alias.scope !214
  store ptr %9, ptr %i.cu, align 8, !tbaa !103, !alias.scope !214
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.cv, align 8, !tbaa !50
  %i.ui = load float, ptr %i.ug, align 4, !tbaa !30 ; 5 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ug, i64 4 ; 2 uses
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !30 ; 5 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ug, i64 8 ; 3 uses
  %i.um = load float, ptr %i.ul, align 4, !tbaa !30 ; 2 uses
  %i.un = fcmp olt float %i.uk, %i.ui
  %i.uo = select i1 %i.un, float %i.uk, float %i.ui ; 2 uses
  %i.up = fcmp olt float %i.ui, %i.uk
  %i.uq = select i1 %i.up, float %i.uk, float %i.ui ; 2 uses
  %i.ur = fcmp olt float %i.um, %i.uq
  %i.us = select i1 %i.ur, float %i.um, float %i.uq ; 2 uses
  %i.ut = fcmp olt float %i.uo, %i.us
  %i.uu = select i1 %i.ut, float %i.us, float %i.uo ; 4 uses
  %i.uv = fadd float %i.gm, -5.000000e-01
  %i.uw = call float @llvm.fabs.f32(float %i.uv)
  %i.ux = fadd float %i.uu, -5.000000e-01
  %i.uy = call float @llvm.fabs.f32(float %i.ux)
  %i.uz = fcmp ult float %i.uw, %i.uy
  br i1 %i.uz, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134.thread213, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.va = load float, ptr %i.gb, align 4, !tbaa !30
  %i.vb = load float, ptr %i.fl, align 4, !tbaa !30
  %i.vc = fsub float %i.va, %i.vb
  %i.vd = fsub float %i.uk, %i.ui
  %i.ve = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %13, float noundef %i.gm, float noundef %i.uu, ptr noundef nonnull readonly %i.fl, ptr noundef nonnull readonly %i.ug, float noundef %i.vc, float noundef %i.vd)
          to label %.noexc131 unwind label %bb.bh

.noexc131:                                        ; preds = %bb.am
  br i1 %i.ve, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %bb.an

bb.an:                                            ; preds = %.noexc131
  %i.vf = load float, ptr %i.gd, align 4, !tbaa !30
  %i.vg = load float, ptr %i.gb, align 4, !tbaa !30
  %i.vh = fsub float %i.vf, %i.vg
  %i.vi = load float, ptr %i.ul, align 4, !tbaa !30
  %i.vj = load float, ptr %i.uj, align 4, !tbaa !30
  %i.vk = fsub float %i.vi, %i.vj
  %i.vl = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %13, float noundef %i.gm, float noundef %i.uu, ptr noundef nonnull readonly %i.fl, ptr noundef nonnull readonly %i.ug, float noundef %i.vh, float noundef %i.vk)
          to label %.noexc132 unwind label %bb.bh

.noexc132:                                        ; preds = %bb.an
  br i1 %i.vl, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %.noexc132
  %i.vm = load float, ptr %i.fl, align 4, !tbaa !30
  %i.vn = load float, ptr %i.gd, align 4, !tbaa !30
  %i.vo = fsub float %i.vm, %i.vn
  %i.vp = load float, ptr %i.ug, align 4, !tbaa !30
  %i.vq = load float, ptr %i.ul, align 4, !tbaa !30
  %i.vr = fsub float %i.vp, %i.vq
  %i.vs = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %13, float noundef %i.gm, float noundef %i.uu, ptr noundef nonnull readonly %i.fl, ptr noundef nonnull readonly %i.ug, float noundef %i.vo, float noundef %i.vr)
          to label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134 unwind label %bb.bh

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134: ; preds = %bb.ao
  br i1 %i.vs, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134.thread213

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134.thread213: ; preds = %bb.al, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130.thread212
  %.096 = phi ptr [ %i.ug, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134 ], [ null, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130.thread212 ], [ %i.ug, %bb.al ] ; 2 uses
  br i1 %i.eu, label %bb.ap, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit138.thread214

bb.ap:                                            ; preds = %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134.thread213
  %i.vt = mul nsw i32 %i.fg, %i.er
  %i.vu = sext i32 %i.vt to i64
  %i.vv = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.vu
  %i.vw = getelementptr inbounds [4 x i8], ptr %i.vv, i64 %i.fk ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.vx = load i8, ptr %i.cl, align 8, !tbaa !211, !range !74, !noalias !215, !noundef !75
  store double %i.az, ptr %14, align 8, !tbaa !45, !alias.scope !215
  store i8 %i.vx, ptr %i.cw, align 8, !tbaa !46, !alias.scope !215
  store ptr %9, ptr %i.cx, align 8, !tbaa !103, !alias.scope !215
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.cy, align 8, !tbaa !50
  %i.vy = load float, ptr %i.vw, align 4, !tbaa !30 ; 5 uses
end_hunk_5
begin_hunk_6_@_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_26OverlappingContourCombinerELi4EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE:bb.a

_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !54
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 168
  store <2 x double> %i.bj, ptr %i.bu, align 8, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  store double %i.bl, ptr %i.bw, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store <2 x double> splat (double 1.000000e+00), ptr %5, align 16, !tbaa !50
  %i.bx = invoke { double, double } @_ZNK7msdfgen10Projection15unprojectVectorERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EEC2ERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit unwind label %bb.h ; 2 uses

bb.h:                                             ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.bm) #18
  br label %common.resume

_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EEC2ERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit: ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.ca = extractvalue { double, double } %i.bx, 0
  %i.cb = extractvalue { double, double } %i.bx, 1
  store double %i.ca, ptr %i.bv, align 8, !tbaa !50
  store double %i.cb, ptr %i.bz, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !34 ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph231, label %._crit_edge232

.lr.ph231:                                        ; preds = %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EEC2ERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.dl = load i32, ptr %i.cf, align 8, !tbaa !35 ; 4 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.lr.ph231.split.preheader, label %._crit_edge232

.lr.ph231.split.preheader:                        ; preds = %.lr.ph231
  %i.dn = add nsw i32 %i.dl, -1
  %i.do = add nsw i32 %i.dl, -1
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = add nsw i32 %i.cd, -1
  br label %.lr.ph

._crit_edge232:                                   ; preds = %._crit_edge, %.lr.ph231, %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EEC2ERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_15DistanceMappingEd.exit
  %i.dr = load ptr, ptr %i.bp, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge232
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !69
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #19
  br label %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i: ; preds = %bb.i, %._crit_edge232
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !96 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !97
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #19
  br label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i

_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !98 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !99
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #19
  br label %_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EED2Ev.exit

_ZN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EED2Ev.exit: ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret void

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph231.split.preheader
  %.0111230 = phi i32 [ %i.er, %._crit_edge ], [ 0, %.lr.ph231.split.preheader ] ; 9 uses
  %.0112229 = phi i32 [ %i.ev, %._crit_edge ], [ 1, %.lr.ph231.split.preheader ] ; 3 uses
  %i.el = icmp slt i32 %.0112229, 0
  %i.em = select i1 %i.el, i32 %i.dn, i32 0
  %i.en = uitofp nneg i32 %.0111230 to double
  %i.eo = fadd double %i.en, 5.000000e-01         ; 3 uses
  %i.ep = icmp ne i32 %.0111230, 0                ; 3 uses
  %i.eq = add nsw i32 %.0111230, -1               ; 3 uses
  %i.er = add nuw nsw i32 %.0111230, 1            ; 5 uses
  %i.es = zext nneg i32 %i.em to i64
  %i.et = sext i32 %.0112229 to i64
  %i.eu = icmp slt i32 %.0111230, %i.dq           ; 3 uses
  br label %bb.l

._crit_edge:                                      ; preds = %bb.bd
  %i.ev = sub nsw i32 0, %.0112229
  %i.ew = icmp slt i32 %i.er, %i.cd
  br i1 %i.ew, label %.lr.ph, label %._crit_edge232, !llvm.loop !220

bb.l:                                             ; preds = %.lr.ph, %bb.bd
  %indvars.iv = phi i64 [ %i.es, %.lr.ph ], [ %indvars.iv.next, %bb.bd ] ; 10 uses
  %.0109228 = phi i32 [ 0, %.lr.ph ], [ %i.zb, %bb.bd ]
  %i.ex = load ptr, ptr %0, align 8, !tbaa !18
  %i.ey = load i32, ptr %i.cg, align 8, !tbaa !16
  %i.ez = mul nsw i32 %i.ey, %.0111230
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %i.ex, i64 %i.fa
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 %indvars.iv
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !31
  %i.fe = and i8 %i.fd, 1
  %.not = icmp eq i8 %i.fe, 0
  br i1 %.not, label %bb.m, label %bb.bd

bb.m:                                             ; preds = %bb.l
  %i.ff = load ptr, ptr %1, align 8, !tbaa !36    ; 7 uses
  %i.fg = load i32, ptr %i.ch, align 8, !tbaa !37 ; 7 uses
  %i.fh = mul nsw i32 %i.fg, %.0111230
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.fi ; 3 uses
  %i.fk = shl nsw i64 %indvars.iv, 2              ; 3 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.fk ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.fm = trunc nsw i64 %indvars.iv to i32        ; 5 uses
  %i.fn = sitofp i32 %i.fm to double
  %i.fo = fadd double %i.fn, 5.000000e-01         ; 3 uses
  store double %i.fo, ptr %10, align 8, !tbaa !21
  store double %i.eo, ptr %i.ci, align 8, !tbaa !22
  %i.fp = invoke { double, double } @_ZNK7msdfgen10Projection9unprojectERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.n unwind label %bb.be      ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.fq = extractvalue { double, double } %i.fp, 0
  %i.fr = extractvalue { double, double } %i.fp, 1
  store double %i.fq, ptr %9, align 8, !tbaa !50
  store double %i.fr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  store double %i.fo, ptr %i.cj, align 8, !tbaa !50
  store double %i.eo, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !50
  store ptr %i.fl, ptr %i.ck, align 8, !tbaa !106
  %i.fs = load ptr, ptr %0, align 8, !tbaa !18
  %i.ft = load i32, ptr %i.cg, align 8, !tbaa !16
  %i.fu = mul nsw i32 %i.ft, %.0111230
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds i8, ptr %i.fs, i64 %i.fv
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 %indvars.iv
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !31
  %i.fz = lshr i8 %i.fy, 1                        ; 2 uses
  %.lobit = and i8 %i.fz, 1                       ; 2 uses
  store i8 %.lobit, ptr %i.cl, align 8, !tbaa !238
  %i.ga = load float, ptr %i.fl, align 4, !tbaa !30 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 10 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !30 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 8 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !30 ; 2 uses
  %i.gf = fcmp olt float %i.gc, %i.ga
  %i.gg = select i1 %i.gf, float %i.gc, float %i.ga ; 2 uses
  %i.gh = fcmp olt float %i.ga, %i.gc
  %i.gi = select i1 %i.gh, float %i.gc, float %i.ga ; 2 uses
  %i.gj = fcmp olt float %i.ge, %i.gi
  %i.gk = select i1 %i.gj, float %i.ge, float %i.gi ; 2 uses
  %i.gl = fcmp olt float %i.gg, %i.gk
  %i.gm = select i1 %i.gl, float %i.gk, float %i.gg ; 38 uses
  %i.gn = icmp sgt i64 %indvars.iv, 0             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  br i1 %i.gn, label %bb.o, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210

bb.o:                                             ; preds = %bb.n
  %i.go = shl i64 %indvars.iv, 2
  %i.gp = add i64 %i.go, 4294967292
  %i.gq = and i64 %i.gp, 4294967292
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.gq ; 8 uses
  store double %i.ax, ptr %11, align 8, !tbaa !45, !alias.scope !239
  store i8 %.lobit, ptr %i.cm, align 8, !tbaa !46, !alias.scope !239
  store ptr %9, ptr %i.cn, align 8, !tbaa !109, !alias.scope !239
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.co, align 8, !tbaa !50
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !30 ; 8 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 4 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gv = load <2 x float>, ptr %i.gt, align 4, !tbaa !30 ; 7 uses
  %i.gw = extractelement <2 x float> %i.gv, i64 0 ; 3 uses
  %i.gx = fcmp olt float %i.gs, %i.gw
  %i.gy = select i1 %i.gx, float %i.gw, float %i.gs
  %i.gz = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.ha = insertelement <2 x float> %i.gz, float %i.gy, i64 1 ; 2 uses
  %i.hb = fcmp olt <2 x float> %i.gv, %i.ha
  %i.hc = select <2 x i1> %i.hb, <2 x float> %i.gv, <2 x float> %i.ha ; 2 uses
  %i.hd = extractelement <2 x float> %i.hc, i64 0 ; 2 uses
  %i.he = extractelement <2 x float> %i.hc, i64 1 ; 2 uses
  %i.hf = fcmp olt float %i.hd, %i.he
  %i.hg = select i1 %i.hf, float %i.he, float %i.hd ; 16 uses
  %i.hh = fadd float %i.gm, -5.000000e-01
  %i.hi = call float @llvm.fabs.f32(float %i.hh)
  %i.hj = fadd float %i.hg, -5.000000e-01
  %i.hk = call float @llvm.fabs.f32(float %i.hj)
  %i.hl = fcmp ult float %i.hi, %i.hk
  br i1 %i.hl, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hm = load float, ptr %i.fl, align 4, !tbaa !30 ; 5 uses
  %i.hn = fsub float %i.gw, %i.gs
  %i.ho = load <2 x float>, ptr %i.gb, align 4, !tbaa !30 ; 5 uses
  %i.hp = extractelement <2 x float> %i.ho, i64 0
  %i.hq = fsub float %i.hp, %i.hm                 ; 2 uses
  %i.hr = fpext float %i.hq to double
  %i.hs = fsub float %i.hq, %i.hn
  %i.ht = fpext float %i.hs to double
  %i.hu = fdiv double %i.hr, %i.ht                ; 8 uses
  %i.hv = fcmp ogt double %i.hu, 1.000000e-02
  %i.hw = fcmp olt double %i.hu, f0x3FEFAE147AE147AE
  %or.cond.i140 = and i1 %i.hv, %i.hw
  br i1 %or.cond.i140, label %bb.q, label %.noexc.thread

bb.q:                                             ; preds = %bb.p
  %i.hx = fsub double 1.000000e+00, %i.hu         ; 4 uses
  %i.hy = fpext float %i.hm to double
  %i.hz = fpext float %i.gs to double
  %i.ia = fmul double %i.hu, %i.hz
  %i.ib = call double @llvm.fmuladd.f64(double %i.hx, double %i.hy, double %i.ia)
  %i.ic = fptrunc double %i.ib to float           ; 3 uses
  %i.id = fpext <2 x float> %i.ho to <2 x double>
  %i.ie = fpext <2 x float> %i.gv to <2 x double>
  %i.if = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = fmul <2 x double> %i.ig, %i.ie
  %i.ii = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ik = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.id, <2 x double> %i.ih)
  %i.il = fptrunc <2 x double> %i.ik to <2 x float> ; 3 uses
  %i.im = extractelement <2 x float> %i.il, i64 0 ; 2 uses
  %i.in = fcmp ogt float %i.im, %i.ic
  %i.io = select i1 %i.in, float %i.im, float %i.ic
  %i.ip = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.iq = insertelement <2 x float> %i.ip, float %i.io, i64 1 ; 2 uses
  %i.ir = fcmp ogt <2 x float> %i.iq, %i.il
  %i.is = select <2 x i1> %i.ir, <2 x float> %i.il, <2 x float> %i.iq ; 2 uses
  %i.it = extractelement <2 x float> %i.is, i64 0 ; 2 uses
  %i.iu = extractelement <2 x float> %i.is, i64 1 ; 2 uses
  %i.iv = fcmp olt float %i.it, %i.iu
  %i.iw = select i1 %i.iv, float %i.iu, float %i.it ; 6 uses
  %i.ix = fcmp ogt float %i.gm, 5.000000e-01
  %i.iy = fcmp ogt float %i.hg, 5.000000e-01
  %or.cond.i.i142 = and i1 %i.ix, %i.iy
  %i.iz = fcmp ole float %i.iw, 5.000000e-01
  %or.cond3.i.i143 = and i1 %or.cond.i.i142, %i.iz
  br i1 %or.cond3.i.i143, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ja = fcmp olt float %i.gm, 5.000000e-01
  %i.jb = fcmp olt float %i.hg, 5.000000e-01
  %or.cond5.i.i144 = and i1 %i.ja, %i.jb
  %i.jc = fcmp oge float %i.iw, 5.000000e-01
  %or.cond7.i.i145 = and i1 %or.cond5.i.i144, %i.jc
  br i1 %or.cond7.i.i145, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jd = trunc i8 %i.fz to i1
  br i1 %i.jd, label %.noexc.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.je = fcmp olt float %i.hg, %i.gm
  %i.jf = select i1 %i.je, float %i.hg, float %i.gm ; 2 uses
  %i.jg = fcmp olt float %i.gm, %i.hg
  %i.jh = select i1 %i.jg, float %i.hg, float %i.gm ; 2 uses
  %i.ji = fcmp olt float %i.iw, %i.jh
  %i.jj = select i1 %i.ji, float %i.iw, float %i.jh ; 2 uses
  %i.jk = fcmp olt float %i.jf, %i.jj
  %i.jl = select i1 %i.jk, float %i.jj, float %i.jf
  %i.jm = fcmp une float %i.jl, %i.iw
  br i1 %i.jm, label %bb.u, label %.noexc.thread

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.jn = fmul double %i.ax, %i.hu                ; 2 uses
  %i.jo = fpext float %i.iw to double             ; 4 uses
  %i.jp = fpext float %i.gm to double             ; 2 uses
  %i.jq = fsub double %i.jp, %i.jn
  %i.jr = fcmp ugt double %i.jq, %i.jo
  %i.js = fadd double %i.jn, %i.jp
  %i.jt = fcmp ult double %i.js, %i.jo
  %or.cond36.i.i148 = or i1 %i.jr, %i.jt
  br i1 %or.cond36.i.i148, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i146

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i146: ; preds = %bb.u
  %i.ju = fpext float %i.hg to double             ; 2 uses
  %i.jv = fmul double %i.ax, %i.hx                ; 2 uses
  %i.jw = fsub double %i.ju, %i.jv
  %i.jx = fcmp ole double %i.jw, %i.jo
  %i.jy = fadd double %i.jv, %i.ju
  %i.jz = fcmp oge double %i.jy, %i.jo
  %or.cond38.i.i149.not = and i1 %i.jx, %i.jz
  br i1 %or.cond38.i.i149.not, label %bb.v, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread

bb.v:                                             ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ka = fsub double %i.fo, %i.hu
  invoke void @_ZN7msdfgen11interpolateIfLi4EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, double %i.ka, double %i.eo)
          to label %.noexc169 unwind label %bb.bf

.noexc169:                                        ; preds = %bb.v
  %i.kb = load ptr, ptr %i.cn, align 8, !tbaa !109 ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !106 ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !30 ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kg = load float, ptr %i.a, align 16, !tbaa !30 ; 5 uses
  %i.kh = fpext float %i.kg to double
  %i.ki = load <2 x float>, ptr %i.kf, align 4, !tbaa !30 ; 3 uses
  %i.kj = extractelement <2 x float> %i.ki, i64 0 ; 4 uses
  %i.kk = fcmp olt float %i.kj, %i.ke
  %i.kl = select i1 %i.kk, float %i.kj, float %i.ke ; 2 uses
  %i.km = fcmp olt float %i.ke, %i.kj
  %i.kn = select i1 %i.km, float %i.kj, float %i.ke ; 2 uses
  %i.ko = extractelement <2 x float> %i.ki, i64 1 ; 2 uses
  %i.kp = fcmp olt float %i.ko, %i.kn
  %i.kq = select i1 %i.kp, float %i.ko, float %i.kn ; 2 uses
  %i.kr = fcmp olt float %i.kl, %i.kq
  %i.ks = select i1 %i.kr, float %i.kq, float %i.kl ; 2 uses
  %i.kt = fsub float %i.ks, %i.ke
  %i.ku = fpext float %i.kt to double
  %i.kv = call double @llvm.fmuladd.f64(double %i.hx, double %i.ku, double %i.kh)
  %i.kw = fptrunc double %i.kv to float           ; 4 uses
  %i.kx = load <2 x float>, ptr %i.cp, align 4, !tbaa !30 ; 3 uses
  %i.ky = fpext <2 x float> %i.kx to <2 x double>
  %i.kz = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.la = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lb = fsub <2 x float> %i.la, %i.ki
  %i.lc = fpext <2 x float> %i.lb to <2 x double>
  %i.ld = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.lc, <2 x double> %i.ky) ; 2 uses
  %i.le = extractelement <2 x double> %i.ld, i64 0
  %i.lf = fptrunc double %i.le to float           ; 4 uses
  %i.lg = extractelement <2 x double> %i.ld, i64 1
  %i.lh = fptrunc double %i.lg to float           ; 2 uses
  %i.li = extractelement <2 x float> %i.kx, i64 0 ; 4 uses
  %i.lj = fcmp olt float %i.li, %i.kg
  %i.lk = select i1 %i.lj, float %i.li, float %i.kg ; 2 uses
  %i.ll = fcmp olt float %i.kg, %i.li
  %i.lm = select i1 %i.ll, float %i.li, float %i.kg ; 2 uses
  %i.ln = extractelement <2 x float> %i.kx, i64 1 ; 2 uses
  %i.lo = fcmp olt float %i.ln, %i.lm
  %i.lp = select i1 %i.lo, float %i.ln, float %i.lm ; 2 uses
  %i.lq = fcmp olt float %i.lk, %i.lp
  %i.lr = select i1 %i.lq, float %i.lp, float %i.lk
  %i.ls = fcmp olt float %i.lf, %i.kw
  %i.lt = select i1 %i.ls, float %i.lf, float %i.kw ; 2 uses
  %i.lu = fcmp olt float %i.kw, %i.lf
  %i.lv = select i1 %i.lu, float %i.lf, float %i.kw ; 2 uses
  %i.lw = fcmp ogt float %i.lv, %i.lh
end_hunk_6
begin_hunk_7_@_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_26OverlappingContourCombinerELi4EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE:bb.a
  %i.mj = invoke noundef double @_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(96) %i.ma, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc170 unwind label %bb.bf

.noexc170:                                        ; preds = %.noexc169
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kb, i64 168
  %i.ml = invoke noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %i.mk, double noundef %i.mj)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %.noexc170
  %i.mm = fptrunc double %i.ml to float           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.mn = load ptr, ptr %i.cn, align 8, !tbaa !109
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 200
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !105
  %i.mq = fsub float %i.lz, %i.mm
  %i.mr = call float @llvm.fabs.f32(float %i.mq)
  %i.ms = fpext float %i.mr to double
  %i.mt = fmul double %i.mp, %i.ms
  %i.mu = fsub float %i.lr, %i.mm
  %i.mv = call float @llvm.fabs.f32(float %i.mu)
  %i.mw = fpext float %i.mv to double
  %i.mx = fcmp olt double %i.mt, %i.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %i.mx, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %.noexc..noexc.thread_crit_edge

.noexc..noexc.thread_crit_edge:                   ; preds = %.noexc
  %i.my = load <2 x float>, ptr %i.gb, align 4, !tbaa !30
  %i.mz = load <2 x float>, ptr %i.gt, align 4, !tbaa !30
  %.pre240.pre = load float, ptr %i.fl, align 4, !tbaa !30
  %.pre243.pre = load float, ptr %i.gr, align 4, !tbaa !30
  br label %.noexc.thread

.noexc.thread:                                    ; preds = %.noexc..noexc.thread_crit_edge, %bb.t, %bb.s, %bb.p
  %.pre243 = phi float [ %.pre243.pre, %.noexc..noexc.thread_crit_edge ], [ %i.gs, %bb.t ], [ %i.gs, %bb.s ], [ %i.gs, %bb.p ] ; 2 uses
  %.pre240 = phi float [ %.pre240.pre, %.noexc..noexc.thread_crit_edge ], [ %i.hm, %bb.t ], [ %i.hm, %bb.s ], [ %i.hm, %bb.p ] ; 2 uses
  %i.na = phi <2 x float> [ %i.my, %.noexc..noexc.thread_crit_edge ], [ %i.ho, %bb.t ], [ %i.ho, %bb.s ], [ %i.ho, %bb.p ] ; 3 uses
  %i.nb = phi <2 x float> [ %i.mz, %.noexc..noexc.thread_crit_edge ], [ %i.gv, %bb.t ], [ %i.gv, %bb.s ], [ %i.gv, %bb.p ] ; 3 uses
  %i.nc = extractelement <2 x float> %i.na, i64 0
  %i.nd = extractelement <2 x float> %i.na, i64 1 ; 2 uses
  %i.ne = fsub float %i.nd, %i.nc                 ; 2 uses
  %i.nf = extractelement <2 x float> %i.nb, i64 0
  %i.ng = extractelement <2 x float> %i.nb, i64 1 ; 2 uses
  %i.nh = fsub float %i.ng, %i.nf
  %i.ni = fpext float %i.ne to double
  %i.nj = fsub float %i.ne, %i.nh
  %i.nk = fpext float %i.nj to double
  %i.nl = fdiv double %i.ni, %i.nk                ; 7 uses
  %i.nm = fcmp ogt double %i.nl, 1.000000e-02
  %i.nn = fcmp olt double %i.nl, f0x3FEFAE147AE147AE
  %or.cond.i = and i1 %i.nm, %i.nn
  br i1 %or.cond.i, label %bb.w, label %.noexc125.thread

bb.w:                                             ; preds = %.noexc.thread
  %i.no = fsub double 1.000000e+00, %i.nl         ; 3 uses
  %i.np = fpext float %.pre240 to double
  %i.nq = fpext float %.pre243 to double
  %i.nr = fmul double %i.nl, %i.nq
  %i.ns = call double @llvm.fmuladd.f64(double %i.no, double %i.np, double %i.nr)
  %i.nt = fptrunc double %i.ns to float           ; 3 uses
  %i.nu = fpext <2 x float> %i.na to <2 x double>
  %i.nv = fpext <2 x float> %i.nb to <2 x double>
  %i.nw = insertelement <2 x double> poison, double %i.nl, i64 0
  %i.nx = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ny = fmul <2 x double> %i.nx, %i.nv
  %i.nz = insertelement <2 x double> poison, double %i.no, i64 0
  %i.oa = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ob = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oa, <2 x double> %i.nu, <2 x double> %i.ny)
  %i.oc = fptrunc <2 x double> %i.ob to <2 x float> ; 3 uses
  %i.od = extractelement <2 x float> %i.oc, i64 0 ; 2 uses
  %i.oe = fcmp ogt float %i.od, %i.nt
  %i.of = select i1 %i.oe, float %i.od, float %i.nt
  %i.og = insertelement <2 x float> poison, float %i.nt, i64 0
  %i.oh = insertelement <2 x float> %i.og, float %i.of, i64 1 ; 2 uses
  %i.oi = fcmp ogt <2 x float> %i.oh, %i.oc
  %i.oj = select <2 x i1> %i.oi, <2 x float> %i.oc, <2 x float> %i.oh ; 2 uses
  %i.ok = extractelement <2 x float> %i.oj, i64 0 ; 2 uses
  %i.ol = extractelement <2 x float> %i.oj, i64 1 ; 2 uses
  %i.om = fcmp olt float %i.ok, %i.ol
  %i.on = select i1 %i.om, float %i.ol, float %i.ok ; 7 uses
  %i.oo = fcmp ogt float %i.gm, 5.000000e-01
  %i.op = fcmp ogt float %i.hg, 5.000000e-01
  %or.cond.i.i = and i1 %i.oo, %i.op
  %i.oq = fcmp ole float %i.on, 5.000000e-01
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.oq
  br i1 %or.cond3.i.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.or = fcmp olt float %i.gm, 5.000000e-01
  %i.os = fcmp olt float %i.hg, 5.000000e-01
  %or.cond5.i.i = and i1 %i.or, %i.os
  %i.ot = fcmp oge float %i.on, 5.000000e-01
  %or.cond7.i.i = and i1 %or.cond5.i.i, %i.ot
  br i1 %or.cond7.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ou = load i8, ptr %i.cm, align 8, !tbaa !46, !range !74, !noundef !75
  %i.ov = trunc nuw i8 %i.ou to i1
  br i1 %i.ov, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ow = fcmp olt float %i.hg, %i.gm
  %i.ox = select i1 %i.ow, float %i.hg, float %i.gm ; 2 uses
  %i.oy = fcmp olt float %i.gm, %i.hg
  %i.oz = select i1 %i.oy, float %i.hg, float %i.gm ; 2 uses
  %i.pa = fcmp olt float %i.on, %i.oz
  %i.pb = select i1 %i.pa, float %i.on, float %i.oz ; 2 uses
  %i.pc = fcmp olt float %i.ox, %i.pb
  %i.pd = select i1 %i.pc, float %i.pb, float %i.ox
  %i.pe = fcmp une float %i.pd, %i.on
  br i1 %i.pe, label %bb.aa, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.w
  %i.pf = load double, ptr %11, align 8, !tbaa !45 ; 2 uses
  %i.pg = fmul double %i.nl, %i.pf                ; 2 uses
  %i.ph = fpext float %i.on to double             ; 4 uses
  %i.pi = fpext float %i.gm to double             ; 2 uses
  %i.pj = fsub double %i.pi, %i.pg
  %i.pk = fcmp ugt double %i.pj, %i.ph
  %i.pl = fadd double %i.pg, %i.pi
  %i.pm = fcmp ult double %i.pl, %i.ph
  %or.cond36.i.i = or i1 %i.pk, %i.pm
  br i1 %or.cond36.i.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.pn = fmul double %i.no, %i.pf                ; 2 uses
  %i.po = fpext float %i.hg to double             ; 2 uses
  %i.pp = fsub double %i.po, %i.pn
  %i.pq = fcmp ugt double %i.pp, %i.ph
  %i.pr = fadd double %i.pn, %i.po
  %i.ps = fcmp ult double %i.pr, %i.ph
  %or.cond38.i.i = or i1 %i.pq, %i.ps
  %spec.select.i.i = select i1 %or.cond38.i.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %.1.i.i = phi i32 [ 3, %bb.aa ], [ 0, %bb.y ], [ %spec.select.i.i, %bb.ab ], [ 0, %bb.z ]
  %i.pt = invoke noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %11, double noundef %i.nl, float noundef %i.on, i32 noundef %.1.i.i)
          to label %.noexc125 unwind label %bb.bf

.noexc125:                                        ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i
  br i1 %i.pt, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %.noexc125..noexc125.thread_crit_edge

.noexc125..noexc125.thread_crit_edge:             ; preds = %.noexc125
  %.pre239 = load float, ptr %i.fl, align 4, !tbaa !30
  %.pre241 = load float, ptr %i.gd, align 4, !tbaa !30
  %.pre242 = load float, ptr %i.gr, align 4, !tbaa !30
  %.pre244 = load float, ptr %i.gu, align 4, !tbaa !30
  br label %.noexc125.thread

.noexc125.thread:                                 ; preds = %.noexc125..noexc125.thread_crit_edge, %.noexc.thread
  %i.pu = phi float [ %.pre244, %.noexc125..noexc125.thread_crit_edge ], [ %i.ng, %.noexc.thread ]
  %i.pv = phi float [ %.pre242, %.noexc125..noexc125.thread_crit_edge ], [ %.pre243, %.noexc.thread ]
  %i.pw = phi float [ %.pre241, %.noexc125..noexc125.thread_crit_edge ], [ %i.nd, %.noexc.thread ]
  %i.px = phi float [ %.pre239, %.noexc125..noexc125.thread_crit_edge ], [ %.pre240, %.noexc.thread ]
  %i.py = fsub float %i.px, %i.pw
  %i.pz = fsub float %i.pv, %i.pu
  %i.qa = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %11, float noundef %i.gm, float noundef %i.hg, ptr noundef nonnull readonly %i.fl, ptr noundef nonnull readonly %i.gr, float noundef %i.py, float noundef %i.pz)
          to label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit unwind label %bb.bf

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit: ; preds = %.noexc125.thread
  br i1 %i.qa, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210: ; preds = %bb.o, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit, %bb.n
  %.098 = phi ptr [ %i.gr, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit ], [ null, %bb.n ], [ %i.gr, %bb.o ] ; 2 uses
  br i1 %i.ep, label %bb.ac, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130.thread212

bb.ac:                                            ; preds = %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210
  %i.qb = mul nsw i32 %i.fg, %i.eq
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.qc
  %i.qe = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %i.fk ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.qf = load i8, ptr %i.cl, align 8, !tbaa !238, !range !74, !noalias !240, !noundef !75 ; 2 uses
  store double %i.az, ptr %12, align 8, !tbaa !45, !alias.scope !240
  store i8 %i.qf, ptr %i.cq, align 8, !tbaa !46, !alias.scope !240
  store ptr %9, ptr %i.cr, align 8, !tbaa !109, !alias.scope !240
  store <2 x double> <double 0.000000e+00, double -1.000000e+00>, ptr %i.cs, align 8, !tbaa !50
  %i.qg = load float, ptr %i.qe, align 4, !tbaa !30 ; 5 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 4 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 8 ; 2 uses
  %i.qj = load <2 x float>, ptr %i.qh, align 4, !tbaa !30 ; 5 uses
  %i.qk = extractelement <2 x float> %i.qj, i64 0 ; 4 uses
  %i.ql = fcmp olt float %i.qg, %i.qk
  %i.qm = select i1 %i.ql, float %i.qk, float %i.qg
  %i.qn = insertelement <2 x float> poison, float %i.qg, i64 0
  %i.qo = insertelement <2 x float> %i.qn, float %i.qm, i64 1 ; 2 uses
  %i.qp = fcmp olt <2 x float> %i.qj, %i.qo
  %i.qq = select <2 x i1> %i.qp, <2 x float> %i.qj, <2 x float> %i.qo ; 2 uses
  %i.qr = extractelement <2 x float> %i.qq, i64 0 ; 2 uses
  %i.qs = extractelement <2 x float> %i.qq, i64 1 ; 2 uses
  %i.qt = fcmp olt float %i.qr, %i.qs
  %i.qu = select i1 %i.qt, float %i.qs, float %i.qr ; 10 uses
  %i.qv = fadd float %i.gm, -5.000000e-01
  %i.qw = call float @llvm.fabs.f32(float %i.qv)
  %i.qx = fadd float %i.qu, -5.000000e-01
  %i.qy = call float @llvm.fabs.f32(float %i.qx)
  %i.qz = fcmp ult float %i.qw, %i.qy
  br i1 %i.qz, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130.thread212, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ra = load float, ptr %i.gb, align 4, !tbaa !30 ; 2 uses
  %i.rb = load float, ptr %i.fl, align 4, !tbaa !30 ; 2 uses
  %i.rc = fsub float %i.ra, %i.rb                 ; 2 uses
  %i.rd = fsub float %i.qk, %i.qg
  %i.re = fpext float %i.rc to double
  %i.rf = fsub float %i.rc, %i.rd
  %i.rg = fpext float %i.rf to double
  %i.rh = fdiv double %i.re, %i.rg                ; 7 uses
  %i.ri = fcmp ogt double %i.rh, 1.000000e-02
  %i.rj = fcmp olt double %i.rh, f0x3FEFAE147AE147AE
  %or.cond.i153 = and i1 %i.ri, %i.rj
  %i.rk = extractelement <2 x float> %i.qj, i64 1
  br i1 %or.cond.i153, label %bb.ae, label %.noexc127.thread

bb.ae:                                            ; preds = %bb.ad
  %i.rl = fsub double 1.000000e+00, %i.rh         ; 3 uses
  %i.rm = fpext float %i.rb to double
  %i.rn = fpext float %i.qg to double
  %i.ro = fmul double %i.rh, %i.rn
  %i.rp = call double @llvm.fmuladd.f64(double %i.rl, double %i.rm, double %i.ro)
  %i.rq = fptrunc double %i.rp to float           ; 3 uses
  %i.rr = fpext <2 x float> %i.qj to <2 x double>
  %19 = load <2 x float>, ptr %i.gb, align 4, !tbaa !30
  %i.rs = fpext <2 x float> %19 to <2 x double>
  %i.rt = insertelement <2 x double> poison, double %i.rh, i64 0
  %i.ru = shufflevector <2 x double> %i.rt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rv = fmul <2 x double> %i.ru, %i.rr
  %i.rw = insertelement <2 x double> poison, double %i.rl, i64 0
  %i.rx = shufflevector <2 x double> %i.rw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ry = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rx, <2 x double> %i.rs, <2 x double> %i.rv)
  %i.rz = fptrunc <2 x double> %i.ry to <2 x float> ; 3 uses
  %i.sa = extractelement <2 x float> %i.rz, i64 0 ; 2 uses
  %i.sb = fcmp ogt float %i.sa, %i.rq
  %i.sc = select i1 %i.sb, float %i.sa, float %i.rq
  %i.sd = insertelement <2 x float> poison, float %i.rq, i64 0
  %i.se = insertelement <2 x float> %i.sd, float %i.sc, i64 1 ; 2 uses
  %i.sf = fcmp ogt <2 x float> %i.se, %i.rz
  %i.sg = select <2 x i1> %i.sf, <2 x float> %i.rz, <2 x float> %i.se ; 2 uses
  %i.sh = extractelement <2 x float> %i.sg, i64 0 ; 2 uses
  %i.si = extractelement <2 x float> %i.sg, i64 1 ; 2 uses
  %i.sj = fcmp olt float %i.sh, %i.si
  %i.sk = select i1 %i.sj, float %i.si, float %i.sh ; 7 uses
  %i.sl = fcmp ogt float %i.gm, 5.000000e-01
  %i.sm = fcmp ogt float %i.qu, 5.000000e-01
  %or.cond.i.i155 = and i1 %i.sl, %i.sm
  %i.sn = fcmp ole float %i.sk, 5.000000e-01
  %or.cond3.i.i156 = and i1 %or.cond.i.i155, %i.sn
  br i1 %or.cond3.i.i156, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.so = fcmp olt float %i.gm, 5.000000e-01
  %i.sp = fcmp olt float %i.qu, 5.000000e-01
  %or.cond5.i.i157 = and i1 %i.so, %i.sp
  %i.sq = fcmp oge float %i.sk, 5.000000e-01
  %or.cond7.i.i158 = and i1 %or.cond5.i.i157, %i.sq
  br i1 %or.cond7.i.i158, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.sr = trunc nuw i8 %i.qf to i1
  br i1 %i.sr, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i159, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ss = fcmp olt float %i.qu, %i.gm
  %i.st = select i1 %i.ss, float %i.qu, float %i.gm ; 2 uses
  %i.su = fcmp olt float %i.gm, %i.qu
  %i.sv = select i1 %i.su, float %i.qu, float %i.gm ; 2 uses
  %i.sw = fcmp olt float %i.sk, %i.sv
  %i.sx = select i1 %i.sw, float %i.sk, float %i.sv ; 2 uses
  %i.sy = fcmp olt float %i.st, %i.sx
  %i.sz = select i1 %i.sy, float %i.sx, float %i.st
  %i.ta = fcmp une float %i.sz, %i.sk
  br i1 %i.ta, label %bb.ai, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i159

bb.ai:                                            ; preds = %bb.ah, %bb.af, %bb.ae
  %i.tb = fmul double %i.az, %i.rh                ; 2 uses
  %i.tc = fpext float %i.sk to double             ; 4 uses
  %i.td = fpext float %i.gm to double             ; 2 uses
  %i.te = fsub double %i.td, %i.tb
  %i.tf = fcmp ugt double %i.te, %i.tc
  %i.tg = fadd double %i.tb, %i.td
  %i.th = fcmp ult double %i.tg, %i.tc
  %or.cond36.i.i161 = or i1 %i.tf, %i.th
  br i1 %or.cond36.i.i161, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i159, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ti = fmul double %i.az, %i.rl                ; 2 uses
  %i.tj = fpext float %i.qu to double             ; 2 uses
  %i.tk = fsub double %i.tj, %i.ti
  %i.tl = fcmp ugt double %i.tk, %i.tc
  %i.tm = fadd double %i.ti, %i.tj
  %i.tn = fcmp ult double %i.tm, %i.tc
  %or.cond38.i.i162 = or i1 %i.tl, %i.tn
  %spec.select.i.i163 = select i1 %or.cond38.i.i162, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i159

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i159: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.1.i.i160 = phi i32 [ 3, %bb.ai ], [ 0, %bb.ag ], [ %spec.select.i.i163, %bb.aj ], [ 0, %bb.ah ]
  %i.to = invoke noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %12, double noundef %i.rh, float noundef %i.sk, i32 noundef %.1.i.i160)
          to label %.noexc127 unwind label %bb.bg

.noexc127:                                        ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit.i159
  br i1 %i.to, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %.noexc127..noexc127.thread_crit_edge

.noexc127..noexc127.thread_crit_edge:             ; preds = %.noexc127
  %.pre245 = load float, ptr %i.gb, align 4, !tbaa !30
  %.pre246 = load float, ptr %i.qi, align 4, !tbaa !30
  %.pre247 = load float, ptr %i.qh, align 4, !tbaa !30
  br label %.noexc127.thread

.noexc127.thread:                                 ; preds = %.noexc127..noexc127.thread_crit_edge, %bb.ad
  %i.tp = phi float [ %.pre247, %.noexc127..noexc127.thread_crit_edge ], [ %i.qk, %bb.ad ]
  %i.tq = phi float [ %.pre246, %.noexc127..noexc127.thread_crit_edge ], [ %i.rk, %bb.ad ]
  %i.tr = phi float [ %.pre245, %.noexc127..noexc127.thread_crit_edge ], [ %i.ra, %bb.ad ]
  %i.ts = load float, ptr %i.gd, align 4, !tbaa !30
  %i.tt = fsub float %i.ts, %i.tr
  %i.tu = fsub float %i.tq, %i.tp
  %i.tv = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %12, float noundef %i.gm, float noundef %i.qu, ptr noundef nonnull readonly %i.fl, ptr noundef nonnull readonly %i.qe, float noundef %i.tt, float noundef %i.tu)
          to label %.noexc128 unwind label %bb.bg

.noexc128:                                        ; preds = %.noexc127.thread
  br i1 %i.tv, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %.noexc128
  %i.tw = load float, ptr %i.fl, align 4, !tbaa !30
  %i.tx = load float, ptr %i.gd, align 4, !tbaa !30
  %i.ty = fsub float %i.tw, %i.tx
  %i.tz = load float, ptr %i.qe, align 4, !tbaa !30
  %i.ua = load float, ptr %i.qi, align 4, !tbaa !30
  %i.ub = fsub float %i.tz, %i.ua
  %i.uc = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %12, float noundef %i.gm, float noundef %i.qu, ptr noundef nonnull readonly %i.fl, ptr noundef nonnull readonly %i.qe, float noundef %i.ty, float noundef %i.ub)
          to label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130 unwind label %bb.bg

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130: ; preds = %bb.ak
  br i1 %i.uc, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130.thread212

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130.thread212: ; preds = %bb.ac, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210
  %.097 = phi ptr [ %i.qe, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130 ], [ null, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread210 ], [ %i.qe, %bb.ac ] ; 2 uses
  %i.ud = icmp slt i64 %indvars.iv, %i.dp         ; 4 uses
  br i1 %i.ud, label %bb.al, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134.thread213

bb.al:                                            ; preds = %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130.thread212
  %i.ue = shl i32 %i.fm, 2
  %i.uf = add i32 %i.ue, 4
  %i.ug = sext i32 %i.uf to i64
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.ug ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.ui = load i8, ptr %i.cl, align 8, !tbaa !238, !range !74, !noalias !241, !noundef !75
  store double %i.ax, ptr %13, align 8, !tbaa !45, !alias.scope !241
  store i8 %i.ui, ptr %i.ct, align 8, !tbaa !46, !alias.scope !241
  store ptr %9, ptr %i.cu, align 8, !tbaa !109, !alias.scope !241
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.cv, align 8, !tbaa !50
  %i.uj = load float, ptr %i.uh, align 4, !tbaa !30 ; 5 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 4 ; 2 uses
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !30 ; 5 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.uh, i64 8 ; 3 uses
  %i.un = load float, ptr %i.um, align 4, !tbaa !30 ; 2 uses
  %i.uo = fcmp olt float %i.ul, %i.uj
  %i.up = select i1 %i.uo, float %i.ul, float %i.uj ; 2 uses
  %i.uq = fcmp olt float %i.uj, %i.ul
  %i.ur = select i1 %i.uq, float %i.ul, float %i.uj ; 2 uses
  %i.us = fcmp olt float %i.un, %i.ur
  %i.ut = select i1 %i.us, float %i.un, float %i.ur ; 2 uses
  %i.uu = fcmp olt float %i.up, %i.ut
  %i.uv = select i1 %i.uu, float %i.ut, float %i.up ; 4 uses
  %i.uw = fadd float %i.gm, -5.000000e-01
  %i.ux = call float @llvm.fabs.f32(float %i.uw)
  %i.uy = fadd float %i.uv, -5.000000e-01
  %i.uz = call float @llvm.fabs.f32(float %i.uy)
  %i.va = fcmp ult float %i.ux, %i.uz
  br i1 %i.va, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134.thread213, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.vb = load float, ptr %i.gb, align 4, !tbaa !30
  %i.vc = load float, ptr %i.fl, align 4, !tbaa !30
  %i.vd = fsub float %i.vb, %i.vc
  %i.ve = fsub float %i.ul, %i.uj
  %i.vf = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %13, float noundef %i.gm, float noundef %i.uv, ptr noundef nonnull readonly %i.fl, ptr noundef nonnull readonly %i.uh, float noundef %i.vd, float noundef %i.ve)
          to label %.noexc131 unwind label %bb.bh

.noexc131:                                        ; preds = %bb.am
  br i1 %i.vf, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %bb.an

bb.an:                                            ; preds = %.noexc131
  %i.vg = load float, ptr %i.gd, align 4, !tbaa !30
  %i.vh = load float, ptr %i.gb, align 4, !tbaa !30
  %i.vi = fsub float %i.vg, %i.vh
  %i.vj = load float, ptr %i.um, align 4, !tbaa !30
  %i.vk = load float, ptr %i.uk, align 4, !tbaa !30
  %i.vl = fsub float %i.vj, %i.vk
  %i.vm = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %13, float noundef %i.gm, float noundef %i.uv, ptr noundef nonnull readonly %i.fl, ptr noundef nonnull readonly %i.uh, float noundef %i.vi, float noundef %i.vl)
          to label %.noexc132 unwind label %bb.bh

.noexc132:                                        ; preds = %bb.an
  br i1 %i.vm, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %.noexc132
  %i.vn = load float, ptr %i.fl, align 4, !tbaa !30
  %i.vo = load float, ptr %i.gd, align 4, !tbaa !30
  %i.vp = fsub float %i.vn, %i.vo
  %i.vq = load float, ptr %i.uh, align 4, !tbaa !30
  %i.vr = load float, ptr %i.um, align 4, !tbaa !30
  %i.vs = fsub float %i.vq, %i.vr
  %i.vt = invoke fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %13, float noundef %i.gm, float noundef %i.uv, ptr noundef nonnull readonly %i.fl, ptr noundef nonnull readonly %i.uh, float noundef %i.vp, float noundef %i.vs)
          to label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134 unwind label %bb.bh

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134: ; preds = %bb.ao
  br i1 %i.vt, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit.thread, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134.thread213

_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134.thread213: ; preds = %bb.al, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130.thread212
  %.096 = phi ptr [ %i.uh, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134 ], [ null, %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit130.thread212 ], [ %i.uh, %bb.al ] ; 2 uses
  br i1 %i.eu, label %bb.ap, label %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit138.thread214

bb.ap:                                            ; preds = %_ZN7msdfgenL17hasLinearArtifactINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_fPKfS9_.exit134.thread213
  %i.vu = mul nsw i32 %i.fg, %i.er
  %i.vv = sext i32 %i.vu to i64
  %i.vw = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.vv
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.vw, i64 %i.fk ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.vy = load i8, ptr %i.cl, align 8, !tbaa !238, !range !74, !noalias !242, !noundef !75
  store double %i.az, ptr %14, align 8, !tbaa !45, !alias.scope !242
  store i8 %i.vy, ptr %i.cw, align 8, !tbaa !46, !alias.scope !242
  store ptr %9, ptr %i.cx, align 8, !tbaa !109, !alias.scope !242
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.cy, align 8, !tbaa !50
  %i.vz = load float, ptr %i.vx, align 4, !tbaa !30 ; 5 uses
end_hunk_7
