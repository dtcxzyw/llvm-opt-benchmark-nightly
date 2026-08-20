inline.NumInlined: 16
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@psy_3gpp_init:bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.cn = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fdiv nsz <2 x float> %i.cj, %i.co
  store <2 x float> %i.cp, ptr %i.cm, align 4, !tbaa !49
  %i.cq = sub nsw i32 6144, %spec.select
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cs = and i32 %i.cq, -8                       ; 2 uses
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !50
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !51
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !52
  %i.cx = sitofp nsz i32 %.0305 to float
  %i.cy = icmp slt i32 %.0305, 23
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !53
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge423
  %i.db = phi i1 [ false, %bb.q ], [ true, %._crit_edge423 ] ; 4 uses
  %i.dc = phi i1 [ true, %bb.q ], [ false, %._crit_edge423 ]
  %indvars.iv437 = phi i64 [ 0, %bb.q ], [ 1, %._crit_edge423 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [1792 x i8], ptr %i.cu, i64 %indvars.iv437 ; 5 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv437
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !54 ; 3 uses
  %i.dg = select nsz i1 %i.db, float 2.560000e+02, float 2.048000e+03
  %i.dh = fdiv nsz float %i.ck, %i.dg             ; 3 uses
  %i.di = select nsz i1 %i.db, float 1.280000e+02, float 1.024000e+03
  %i.dj = fmul nnan nsz float %i.di, %i.cx
  %i.dk = fdiv nsz float %i.dj, %i.ck
  %i.dl = fmul nsz float %i.dk, 1.180000e+00
  %i.dm = fmul nsz float %i.dl, 2.400000e-02
  %i.dn = fdiv nsz float %i.dm, %i.bi
  %i.do = or i1 %i.cy, %i.db
  %i.dp = insertelement <2 x i1> poison, i1 %i.db, i64 0
  %i.dq = insertelement <2 x i1> %i.dp, i1 %i.do, i64 1
  %i.dr = select <2 x i1> %i.dq, <2 x float> <float 2.000000e+00, float 1.500000e+00>, <2 x float> <float 3.000000e+00, float 2.000000e+00>
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv437
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !55 ; 5 uses
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.lr.ph.preheader, label %._crit_edge423

.lr.ph.preheader:                                 ; preds = %bb.r
  %wide.trip.count = zext nneg i32 %i.dt to i64
  br label %.lr.ph

.preheader405:                                    ; preds = %.lr.ph
  %.not450 = icmp eq i32 %i.dt, 1
  br i1 %.not450, label %.lr.ph422.preheader, label %.lr.ph412

.lr.ph412:                                        ; preds = %.preheader405
  %i.dv = add nsw i32 %i.dt, -1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %wide.trip.count429 = zext nneg i32 %i.dv to i64
  %.pre = load float, ptr %i.dw, align 4, !tbaa !56
  %i.dx = shufflevector <2 x float> %i.dr, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  br label %bb.s

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.0307410 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.el, %.lr.ph ]
  %.0311408 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.eb, %.lr.ph ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !58
  %i.ea = zext i8 %i.dz to i32
  %i.eb = add nuw nsw i32 %.0311408, %i.ea        ; 2 uses
  %i.ec = add nsw i32 %i.eb, -1
  %i.ed = sitofp nsz i32 %i.ec to float
  %i.ee = fmul nsz float %i.dh, %i.ed             ; 2 uses
  %i.ef = fmul nsz float %i.ee, 7.600000e-04
  %i.eg = tail call nsz float @llvm.atan.f32(float %i.ef)
  %i.eh = fdiv nsz float %i.ee, 7.500000e+03      ; 2 uses
  %i.ei = fmul nsz float %i.eh, %i.eh
  %i.ej = tail call nsz float @llvm.atan.f32(float %i.ei)
  %i.ek = fmul nsz float %i.ej, 3.500000e+00
  %i.el = tail call nsz float @llvm.fmuladd.f32(float %i.eg, float 1.330000e+01, float %i.ek) ; 2 uses
  %i.em = fadd nsz float %.0307410, %i.el
  %i.en = fmul nsz float %i.em, 5.000000e-01
  %i.eo = getelementptr inbounds nuw [28 x i8], ptr %i.dd, i64 %indvars.iv
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store float %i.en, ptr %i.ep, align 4, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader405, label %.lr.ph, !llvm.loop !59

.lr.ph422.preheader:                              ; preds = %bb.s, %.preheader405
  %wide.trip.count435 = zext nneg i32 %i.dt to i64
  br label %.lr.ph422

bb.s:                                             ; preds = %.lr.ph412, %bb.s
  %indvars.iv426 = phi i64 [ 0, %.lr.ph412 ], [ %indvars.iv.next427, %bb.s ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [28 x i8], ptr %i.dd, i64 %indvars.iv426 ; 2 uses
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 3 uses
  %i.er = getelementptr inbounds nuw [28 x i8], ptr %i.dd, i64 %indvars.iv.next427
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load float, ptr %i.es, align 4, !tbaa !56
  %i.eu = fsub nsz float %i.et, %.pre             ; 3 uses
  %i.ev = fneg nsz float %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ex = insertelement <4 x float> %i.dx, float %i.eu, i64 0
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ez = insertelement <4 x float> <float -3.000000e+00, float poison, float -1.500000e+00, float poison>, float %i.ev, i64 1
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.fb = fmul nsz <4 x float> %i.ey, %i.fa
  %i.fc = fpext <4 x float> %i.fb to <4 x double>
  %i.fd = fmul nsz <4 x double> %i.fc, splat (double f0x400A934F0979A371)
  %i.fe = tail call nsz <4 x double> @llvm.exp2.v4f64(<4 x double> %i.fd)
  %i.ff = fptrunc <4 x double> %i.fe to <4 x float>
  store <4 x float> %i.ff, ptr %i.ew, align 4, !tbaa !49
  %i.fg = fmul nsz float %i.dn, %i.eu
  %i.fh = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv426
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !58
  %i.fj = uitofp i8 %i.fi to float
  %i.fk = fdiv nsz float %i.fg, %i.fj
  %i.fl = fpext nsz float %i.fk to double
  %i.fm = tail call nsz double @llvm.exp2.f64(double %i.fl)
  %i.fn = fadd nsz double %i.fm, -1.500000e+00
  %i.fo = fptrunc nsz double %i.fn to float
  %i.fp = fdiv nsz float 1.000000e+00, %i.fo      ; 2 uses
  %i.fq = fcmp nsz ogt float %i.fp, f0x3B4F3E37
  %i.fr = select nsz i1 %i.fq, float %i.fp, float f0x3B4F3E37 ; 2 uses
  %i.fs = fcmp nsz ogt float %i.fr, f0x3F4B5918
  %..i = select nsz i1 %i.fs, float f0x3F4B5918, float %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store float %..i, ptr %i.ft, align 4, !tbaa !61
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %wide.trip.count429
  br i1 %exitcond430.not, label %.lr.ph422.preheader, label %bb.s, !llvm.loop !62

.lr.ph422:                                        ; preds = %.lr.ph422.preheader, %._crit_edge
  %indvars.iv432 = phi i64 [ 0, %.lr.ph422.preheader ], [ %indvars.iv.next433, %._crit_edge ] ; 3 uses
  %.0308421 = phi i32 [ 0, %.lr.ph422.preheader ], [ %i.gm, %._crit_edge ] ; 3 uses
  %i.fu = uitofp nneg i32 %.0308421 to float
  %i.fv = fmul nsz float %i.dh, %i.fu
  %i.fw = tail call fastcc float @ath(float noundef %i.fv) #12 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv432 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !58  ; 2 uses
  %i.fz = zext i8 %i.fy to i32
  %i.ga = icmp ugt i8 %i.fy, 1
  br i1 %i.ga, label %.lr.ph416, label %._crit_edge

.lr.ph416:                                        ; preds = %.lr.ph422, %.lr.ph416
  %.0306415 = phi float [ %i.gg, %.lr.ph416 ], [ %i.fw, %.lr.ph422 ] ; 2 uses
  %.1312414 = phi i32 [ %i.gh, %.lr.ph416 ], [ 1, %.lr.ph422 ] ; 2 uses
  %i.gb = add nuw nsw i32 %.1312414, %.0308421
  %i.gc = uitofp nneg i32 %i.gb to float
  %i.gd = fmul nsz float %i.dh, %i.gc
  %i.ge = tail call fastcc float @ath(float noundef %i.gd) #12 ; 2 uses
  %i.gf = fcmp nsz ogt float %.0306415, %i.ge
  %i.gg = select nsz i1 %i.gf, float %i.ge, float %.0306415 ; 2 uses
  %i.gh = add nuw nsw i32 %.1312414, 1            ; 2 uses
  %exitcond431.not = icmp eq i32 %i.gh, %i.fz
  br i1 %exitcond431.not, label %._crit_edge, label %.lr.ph416, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph416, %.lr.ph422
  %.0306.lcssa = phi float [ %i.fw, %.lr.ph422 ], [ %i.gg, %.lr.ph416 ]
  %i.gi = fadd nsz float %.0306.lcssa, f0x40A7C1E0
  %i.gj = getelementptr inbounds nuw [28 x i8], ptr %i.dd, i64 %indvars.iv432
  store float %i.gi, ptr %i.gj, align 4, !tbaa !64
  %i.gk = load i8, ptr %i.fx, align 1, !tbaa !58
  %i.gl = zext i8 %i.gk to i32
  %i.gm = add nuw nsw i32 %.0308421, %i.gl
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 1 ; 2 uses
  %exitcond436.not = icmp eq i64 %indvars.iv.next433, %wide.trip.count435
  br i1 %exitcond436.not, label %._crit_edge423, label %.lr.ph422, !llvm.loop !65

._crit_edge423:                                   ; preds = %._crit_edge, %bb.r
  br i1 %i.dc, label %bb.r, label %bb.t, !llvm.loop !66

bb.t:                                             ; preds = %._crit_edge423
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bm, i64 356
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !38
  %i.gp = sext i32 %i.go to i64
  %i.gq = tail call noalias ptr @av_calloc(i64 noundef %i.gp, i64 noundef 9312) #11 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bk, i64 3616
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !67
  %.not371 = icmp eq ptr %i.gq, null
  br i1 %.not371, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @av_freep(ptr noundef nonnull %i.bl) #11
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.gs = load ptr, ptr %0, align 8, !tbaa !9
  tail call fastcc void @lame_window_init(ptr noundef %i.bk, ptr noundef %i.gs) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.n, %bb.m, %bb.v, %bb.u
  %.0 = phi i32 [ -22, %bb.m ], [ 0, %bb.v ], [ -12, %bb.u ], [ -12, %bb.n ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @psy_lame_window(ptr dead_on_unwind noalias nofree writable sret(%struct.FFPsyWindowInfo) align 8 captures(none) initializes((0, 96)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = alloca [1024 x float], align 16          ; 4 uses
  %i.b = alloca [18 x float], align 16            ; 19 uses
  %i.c = alloca [18 x float], align 16            ; 5 uses
  %i.d = alloca [9 x float], align 16             ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3616
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %i.i = sext i32 %4 to i64                       ; 2 uses
  %i.j = getelementptr inbounds [9312 x i8], ptr %i.h, i64 %i.i ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.split, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.d, i8 0, i64 36, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 44
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 21 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %wide.load = load <4 x float>, ptr %i.m, align 4, !tbaa !49
  %wide.load378 = load <4 x float>, ptr %i.l, align 4, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %wide.load379 = load <4 x float>, ptr %i.n, align 4, !tbaa !49
  %i.o = fadd nsz <4 x float> %wide.load378, %wide.load379
  %i.p = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> splat (float f0xA39F982B), <4 x float> %wide.load)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %wide.load380 = load <4 x float>, ptr %i.q, align 4, !tbaa !49
  %i.r = getelementptr i8, ptr %i.l, i64 80
  %wide.load381 = load <4 x float>, ptr %i.r, align 4, !tbaa !49
  %i.s = fadd nsz <4 x float> %wide.load380, %wide.load381
  %i.t = fmul nsz <4 x float> %i.s, splat (float f0xBC8B861B)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %wide.load382 = load <4 x float>, ptr %i.u, align 4, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %wide.load383 = load <4 x float>, ptr %i.v, align 4, !tbaa !49
  %i.w = fadd nsz <4 x float> %wide.load382, %wide.load383
  %i.x = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> splat (float f0xA378F1A8), <4 x float> %i.p)
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %wide.load384 = load <4 x float>, ptr %i.y, align 4, !tbaa !49
  %i.z = getelementptr i8, ptr %i.l, i64 72
  %wide.load385 = load <4 x float>, ptr %i.z, align 4, !tbaa !49
  %i.aa = fadd nsz <4 x float> %wide.load384, %wide.load385
  %i.ab = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> splat (float 4.180720e-02), <4 x float> %i.t)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load386 = load <4 x float>, ptr %i.ac, align 4, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  %wide.load387 = load <4 x float>, ptr %i.ad, align 4, !tbaa !49
  %i.ae = fadd nsz <4 x float> %wide.load386, %wide.load387
  %i.af = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> splat (float f0xA49B3F51), <4 x float> %i.x)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %wide.load388 = load <4 x float>, ptr %i.ag, align 4, !tbaa !49
  %i.ah = getelementptr i8, ptr %i.l, i64 64
  %wide.load389 = load <4 x float>, ptr %i.ah, align 4, !tbaa !49
  %i.ai = fadd nsz <4 x float> %wide.load388, %wide.load389
  %i.aj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> splat (float -8.763240e-02), <4 x float> %i.ab)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %wide.load390 = load <4 x float>, ptr %i.ak, align 4, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %wide.load391 = load <4 x float>, ptr %i.al, align 4, !tbaa !49
  %i.am = fadd nsz <4 x float> %wide.load390, %wide.load391
  %i.an = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> splat (float -3.083500e-17), <4 x float> %i.af)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %wide.load392 = load <4 x float>, ptr %i.ao, align 4, !tbaa !49
  %i.ap = getelementptr i8, ptr %i.l, i64 56
  %wide.load393 = load <4 x float>, ptr %i.ap, align 4, !tbaa !49
  %i.aq = fadd nsz <4 x float> %wide.load392, %wide.load393
  %i.ar = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> splat (float f0x3E3ED1E8), <4 x float> %i.aj)
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %wide.load394 = load <4 x float>, ptr %i.as, align 4, !tbaa !49
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %wide.load395 = load <4 x float>, ptr %i.at, align 4, !tbaa !49
  %i.au = fadd nsz <4 x float> %wide.load394, %wide.load395
  %i.av = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> splat (float f0xA4FEA9B0), <4 x float> %i.an)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %wide.load396 = load <4 x float>, ptr %i.aw, align 4, !tbaa !49
  %i.ax = getelementptr i8, ptr %i.l, i64 48
  %wide.load397 = load <4 x float>, ptr %i.ax, align 4, !tbaa !49
  %i.ay = fadd nsz <4 x float> %wide.load396, %wide.load397
  %i.az = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> splat (float -6.276380e-01), <4 x float> %i.ar)
  %i.ba = fadd nsz <4 x float> %i.av, %i.az
  %i.bb = fmul nsz <4 x float> %i.ba, splat (float 3.276800e+04)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  store <4 x float> %i.bb, ptr %i.bc, align 16, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, 1024
  br i1 %i.bd, label %psy_hp_filter.exit.preheader, label %vector.body, !llvm.loop !68

psy_hp_filter.exit.preheader:                     ; preds = %vector.body
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 9240
  %i.bf = mul nsw i64 %i.i, 9312
  %i.bg = getelementptr i8, ptr %i.h, i64 %i.bf
  %scevgep = getelementptr i8, ptr %i.bg, i64 9296
  %i.bh = load i64, ptr %scevgep, align 4, !tbaa !49
  store i64 %i.bh, ptr %i.c, align 16, !tbaa !49
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 9296
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 9288
  %i.bk = load <2 x float>, ptr %i.bi, align 4, !tbaa !49 ; 3 uses
  %i.bl = load <2 x float>, ptr %i.bj, align 4, !tbaa !49
  %i.bm = fdiv nsz <2 x float> %i.bk, %i.bl       ; 2 uses
  %shift = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x float> %shift, %i.bk
  %i.bn = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  br label %.preheader134

.preheader134:                                    ; preds = %psy_hp_filter.exit.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %psy_hp_filter.exit.preheader ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %.098141 = phi ptr [ %i.a, %psy_hp_filter.exit.preheader ], [ %scevgep156, %bb.g ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader134
  %.095138 = phi float [ 1.000000e+00, %.preheader134 ], [ %.095..1, %bb.b ] ; 2 uses
  %.199.idx137 = phi i64 [ 0, %.preheader134 ], [ %.199.add.1, %bb.b ] ; 3 uses
  %.199.ptr139 = getelementptr inbounds nuw i8, ptr %.098141, i64 %.199.idx137
  %i.bo = load float, ptr %.199.ptr139, align 4, !tbaa !49
  %i.bp = tail call nsz float @llvm.fabs.f32(float %i.bo) ; 2 uses
  %i.bq = fcmp nsz ogt float %.095138, %i.bp
  %.095. = select nsz i1 %i.bq, float %.095138, float %i.bp ; 2 uses
  %.199.add = or disjoint i64 %.199.idx137, 4     ; 2 uses
  %.199.ptr139.1 = getelementptr inbounds nuw i8, ptr %.098141, i64 %.199.add
  %i.br = load float, ptr %.199.ptr139.1, align 4, !tbaa !49
  %i.bs = tail call nsz float @llvm.fabs.f32(float %i.br) ; 2 uses
  %i.bt = fcmp nsz ogt float %.095., %i.bs
  %.095..1 = select nsz i1 %i.bt, float %.095., float %i.bs ; 7 uses
  %.199.add.1 = add nuw nsw i64 %.199.idx137, 8
  %i.bu = icmp samesign ult i64 %.199.add, 252
  br i1 %i.bu, label %bb.b, label %bb.c, !llvm.loop !71

bb.c:                                             ; preds = %bb.b
  %scevgep156 = getelementptr i8, ptr %.098141, i64 256
  %i.bv = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bv
  store float %.095..1, ptr %i.bw, align 4, !tbaa !49
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  store float %.095..1, ptr %i.bx, align 4, !tbaa !49
  %i.by = lshr i64 %indvars.iv, 1
  %i.bz = and i64 %i.by, 2147483647
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !49
  %i.cd = fadd nsz float %.095..1, %i.cc
  store float %i.cd, ptr %i.cb, align 4, !tbaa !49
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !49 ; 4 uses
  %i.cg = fcmp nsz ogt float %.095..1, %i.cf
  br i1 %i.cg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ch = fdiv nsz float %.095..1, %i.cf
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ci = fmul nsz float %.095..1, 1.000000e+01   ; 2 uses
  %i.cj = fcmp nsz ogt float %i.cf, %i.ci
  br i1 %i.cj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ck = fdiv nsz float %i.cf, %i.ci
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.196 = phi nsz float [ %i.ch, %bb.d ], [ %i.ck, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bv
  store float %.196, ptr %i.cl, align 4, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.h, label %.preheader134, !llvm.loop !72

bb.h:                                             ; preds = %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 9236 ; 18 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !73
  %i.co = extractelement <2 x float> %i.bm, i64 0
  %i.cp = fcmp nsz ule float %i.co, %i.cn
  br i1 %i.cp, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cq = load float, ptr %i.cm, align 4, !tbaa !73
  %i.cr = extractelement <2 x float> %i.bm, i64 1
  %i.cs = fcmp nsz ogt float %i.cr, %i.cq
  br i1 %i.cs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0.3 = phi i32 [ 2, %bb.j ], [ 0, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !49
  %i.cv = load float, ptr %i.cm, align 4, !tbaa !73
  %i.cw = fcmp nsz ule float %i.cu, %i.cv
  br i1 %i.cw, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !49
  %i.cz = load float, ptr %i.cm, align 4, !tbaa !73
  %i.da = fcmp nsz ogt float %i.cy, %i.cz
  br i1 %i.da, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.sroa.14.5 = phi i32 [ 2, %bb.m ], [ 0, %bb.l ], [ 1, %bb.k ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dc = load float, ptr %i.db, align 16, !tbaa !49
  %i.dd = load float, ptr %i.cm, align 4, !tbaa !73
  %i.de = fcmp nsz ule float %i.dc, %i.dd
  br i1 %i.de, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.dg = load float, ptr %i.df, align 4, !tbaa !49
  %i.dh = load float, ptr %i.cm, align 4, !tbaa !73
  %i.di = fcmp nsz ogt float %i.dg, %i.dh
  br i1 %i.di, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %.sroa.25.3 = phi i32 [ 2, %bb.p ], [ 0, %bb.o ], [ 1, %bb.n ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !49
  %i.dl = load float, ptr %i.cm, align 4, !tbaa !73
  %i.dm = fcmp nsz ule float %i.dk, %i.dl
  br i1 %i.dm, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.do = load float, ptr %i.dn, align 4, !tbaa !49
  %i.dp = load float, ptr %i.cm, align 4, !tbaa !73
  %i.dq = fcmp nsz ogt float %i.do, %i.dp
  br i1 %i.dq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %.sroa.36.3 = phi i32 [ 2, %bb.s ], [ 0, %bb.r ], [ 1, %bb.q ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ds = load float, ptr %i.dr, align 16, !tbaa !49
  %i.dt = load float, ptr %i.cm, align 4, !tbaa !73
  %i.du = fcmp nsz ule float %i.ds, %i.dt
  br i1 %i.du, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !49
  %i.dx = load float, ptr %i.cm, align 4, !tbaa !73
  %i.dy = fcmp nsz ogt float %i.dw, %i.dx
  br i1 %i.dy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v
  %.sroa.47.3 = phi i32 [ 2, %bb.v ], [ 0, %bb.u ], [ 1, %bb.t ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ea = load float, ptr %i.dz, align 8, !tbaa !49
  %i.eb = load float, ptr %i.cm, align 4, !tbaa !73
  %i.ec = fcmp nsz ule float %i.ea, %i.eb
  br i1 %i.ec, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !49
  %i.ef = load float, ptr %i.cm, align 4, !tbaa !73
  %i.eg = fcmp nsz ogt float %i.ee, %i.ef
  br i1 %i.eg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.y
  %.sroa.58.3 = phi i32 [ 2, %bb.y ], [ 0, %bb.x ], [ 1, %bb.w ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ei = load float, ptr %i.eh, align 16, !tbaa !49
  %i.ej = load float, ptr %i.cm, align 4, !tbaa !73
  %i.ek = fcmp nsz ule float %i.ei, %i.ej
  br i1 %i.ek, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.em = load float, ptr %i.el, align 4, !tbaa !49
  %i.en = load float, ptr %i.cm, align 4, !tbaa !73
  %i.eo = fcmp nsz ogt float %i.em, %i.en
  br i1 %i.eo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.ab
  %.sroa.69.3 = phi i32 [ 2, %bb.ab ], [ 0, %bb.aa ], [ 1, %bb.z ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.eq = load float, ptr %i.ep, align 8, !tbaa !49
  %i.er = load float, ptr %i.cm, align 4, !tbaa !73
  %i.es = fcmp nsz ule float %i.eq, %i.er
  br i1 %i.es, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.eu = load float, ptr %i.et, align 4, !tbaa !49
  %i.ev = load float, ptr %i.cm, align 4, !tbaa !73
  %i.ew = fcmp nsz ogt float %i.eu, %i.ev
  br i1 %i.ew, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %.sroa.80.3 = phi i32 [ 2, %bb.ae ], [ 0, %bb.ad ], [ 1, %bb.ac ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ey = load float, ptr %i.ex, align 16, !tbaa !49
  %i.ez = load float, ptr %i.cm, align 4, !tbaa !73
  %i.fa = fcmp nsz ule float %i.ey, %i.ez
  br i1 %i.fa, label %bb.ag, label %.preheader132

bb.ag:                                            ; preds = %bb.af
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !49
  %i.fd = load float, ptr %i.cm, align 4, !tbaa !73
  %i.fe = fcmp nsz ogt float %i.fc, %i.fd
  br i1 %i.fe, label %bb.ah, label %.preheader132

bb.ah:                                            ; preds = %bb.ag
  br label %.preheader132

.preheader132:                                    ; preds = %bb.ah, %bb.ag, %bb.af
  %.sroa.92.3 = phi i32 [ 2, %bb.ah ], [ 0, %bb.ag ], [ 1, %bb.af ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.fg = icmp samesign uge i32 %.sroa.0.3, %.sroa.14.5
  %i.fh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.fj = load <4 x float>, ptr %i.ff, align 4, !tbaa !49 ; 5 uses
  %i.fk = extractelement <4 x float> %i.fj, i64 0 ; 3 uses
  %i.fl = load float, ptr %i.fi, align 4, !tbaa !49 ; 3 uses
  %i.fm = load <4 x float>, ptr %i.fh, align 8, !tbaa !49 ; 4 uses
  %i.fn = fmul nsz <4 x float> %i.fj, splat (float 2.300000e+00) ; 2 uses
  %i.fo = fcmp nsz ogt <4 x float> %i.fj, %i.fm
  %i.fp = select <4 x i1> %i.fo, <4 x float> %i.fj, <4 x float> %i.fm
  %i.fq = fcmp nsz olt <4 x float> %i.fp, splat (float 4.000000e+04)
  %i.fr = fmul nsz <4 x float> %i.fm, splat (float 2.300000e+00) ; 2 uses
  %i.fs = fcmp nsz olt <4 x float> %i.fj, %i.fr
  %i.ft = and <4 x i1> %i.fs, %i.fq
  %i.fu = fcmp nsz olt <4 x float> %i.fm, %i.fn
  %i.fv = and <4 x i1> %i.fu, %i.ft
  %i.fw = insertelement <4 x i32> poison, i32 %.sroa.25.3, i64 0
  %i.fx = insertelement <4 x i32> %i.fw, i32 %.sroa.36.3, i64 1
  %i.fy = insertelement <4 x i32> %i.fx, i32 %.sroa.47.3, i64 2
  %i.fz = insertelement <4 x i32> %i.fy, i32 %.sroa.58.3, i64 3
  %i.ga = select <4 x i1> %i.fv, <4 x i32> zeroinitializer, <4 x i32> %i.fz ; 7 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %7 = extractelement <4 x float> %i.fn, i64 0
  %8 = extractelement <4 x float> %i.fr, i64 3
  %9 = fmul nsz float %i.bn, 2.300000e+00
  %i.gc = fcmp nsz ogt float %i.bn, %i.fk
  %i.gd = select nsz i1 %i.gc, float %i.bn, float %i.fk
  %10 = fcmp nsz uge float %i.gd, 4.000000e+04
  %11 = fcmp nsz uge float %i.bn, %7
  %or.cond121.not372 = or i1 %11, %10
  %12 = fcmp nsz uge float %i.fk, %9
  %or.cond123.not369 = or i1 %12, %or.cond121.not372 ; 2 uses
  %.not367 = select i1 %or.cond123.not369, i1 true, i1 %i.fg
  %13 = load <2 x float>, ptr %6, align 4, !tbaa !49 ; 4 uses
  %14 = load <2 x float>, ptr %i.gb, align 8, !tbaa !49 ; 5 uses
  %15 = fcmp nsz ogt <2 x float> %14, %13
  %16 = extractelement <2 x float> %14, i64 0     ; 3 uses
  %i.ge = fcmp nsz ogt float %i.fl, %16
  %17 = select <2 x i1> %15, <2 x float> %14, <2 x float> %13
  %i.gf = select nsz i1 %i.ge, float %i.fl, float %16
  %18 = fcmp nsz olt <2 x float> %17, splat (float 4.000000e+04)
  %i.gg = fcmp nsz olt float %i.gf, 4.000000e+04
  %19 = fmul nsz <2 x float> %13, splat (float 2.300000e+00)
  %20 = fmul nsz <2 x float> %14, splat (float 2.300000e+00) ; 2 uses
  %21 = fcmp nsz olt <2 x float> %14, %19
  %22 = extractelement <2 x float> %20, i64 0
  %i.gh = fcmp nsz olt float %i.fl, %22
  %23 = and <2 x i1> %21, %18
  %or.cond121.5 = and i1 %i.gh, %i.gg
  %24 = fcmp nsz olt <2 x float> %13, %20
  %25 = fcmp nsz olt float %16, %8
  %26 = and <2 x i1> %24, %23
  %or.cond123.5 = and i1 %25, %or.cond121.5
  %27 = insertelement <2 x i32> poison, i32 %.sroa.80.3, i64 0
  %28 = insertelement <2 x i32> %27, i32 %.sroa.92.3, i64 1
  %29 = select <2 x i1> %26, <2 x i32> zeroinitializer, <2 x i32> %28 ; 3 uses
  %.sroa.69.4 = select i1 %or.cond123.5, i32 0, i32 %.sroa.69.3 ; 4 uses
  %.sroa.14.0 = select i1 %or.cond123.not369, i32 %.sroa.14.5, i32 0 ; 4 uses
  %30 = insertelement <4 x i32> poison, i32 %.sroa.14.0, i64 0
  %31 = insertelement <4 x i32> %30, i32 %.sroa.69.4, i64 1
  %32 = shufflevector <2 x i32> %29, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %33 = shufflevector <4 x i32> %31, <4 x i32> %32, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison>
  %34 = shufflevector <4 x i32> %i.ga, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %35 = shufflevector <8 x i32> %33, <8 x i32> %34, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %36 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %35)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.j, i64 9308 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !75
  %.not111 = icmp eq i32 %i.gj, 0
  %i.gk = select i1 %.not111, i1 %.not367, i1 false
  %.sroa.0.1 = select i1 %i.gk, i32 %.sroa.0.3, i32 0 ; 2 uses
  %37 = extractelement <2 x i32> %29, i64 1       ; 3 uses
  %.not112 = icmp eq i32 %37, 0                   ; 2 uses
  %i.gl = zext i1 %.not112 to i32
  store i32 %i.gl, ptr %i.gi, align 4, !tbaa !75
  %i.gm = getelementptr inbounds nuw i8, ptr %i.j, i64 9304
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !76 ; 2 uses
  %.not113 = icmp sgt i32 %.sroa.0.1, %i.gn
  %spec.store.select124 = select i1 %.not113, i32 %.sroa.0.1, i32 0 ; 3 uses
  %i.go = icmp eq i32 %i.gn, 2
  %i.gp = sub nsw i32 0, %spec.store.select124
  %i.gq = icmp ne i32 %36, %i.gp
  %or.cond = select i1 %i.go, i1 true, i1 %i.gq   ; 2 uses
  %38 = extractelement <2 x i32> %29, i64 0       ; 4 uses
  br i1 %or.cond, label %.preheader.preheader, label %bb.aj

.preheader.preheader:                             ; preds = %.preheader132
  %.not117 = icmp eq i32 %.sroa.14.0, 0
  %.not118 = icmp ne i32 %spec.store.select124, 0
  %.not373.not375 = select i1 %.not117, i1 true, i1 %.not118 ; 2 uses
  %.sroa.14.1 = select i1 %.not373.not375, i32 0, i32 %.sroa.14.0 ; 2 uses
  %i.gr = extractelement <4 x i32> %i.ga, i64 1
  %.not117.2 = icmp eq i32 %i.gr, 0
  %i.gs = shufflevector <4 x i32> %i.ga, <4 x i32> poison, <2 x i32> <i32 2, i32 0>
  %i.gt = icmp ne <2 x i32> %i.gs, zeroinitializer ; 2 uses
  %i.gu = extractelement <2 x i1> %i.gt, i64 1
  %.not374 = select i1 %i.gu, i1 %.not373.not375, i1 false ; 2 uses
  %i.gv = select i1 %.not117.2, i1 true, i1 %.not374 ; 2 uses
  %i.gw = extractelement <2 x i1> %i.gt, i64 0
  %.not376 = select i1 %i.gw, i1 %i.gv, i1 false  ; 2 uses
  %i.gx = extractelement <4 x i32> %i.ga, i64 3
  %.not117.4 = icmp eq i32 %i.gx, 0
  %i.gy = select i1 %.not117.4, i1 true, i1 %.not376 ; 2 uses
  %i.gz = insertelement <4 x i1> poison, i1 %.not374, i64 0
  %i.ha = insertelement <4 x i1> %i.gz, i1 %i.gv, i64 1
  %i.hb = insertelement <4 x i1> %i.ha, i1 %.not376, i64 2
  %i.hc = insertelement <4 x i1> %i.hb, i1 %i.gy, i64 3
  %i.hd = shufflevector <4 x i32> %i.ga, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.he = shufflevector <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>, <4 x i32> %i.ga, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.hf = select <4 x i1> %i.hc, <4 x i32> %i.hd, <4 x i32> %i.he ; 2 uses
  %.not117.5 = icmp ne i32 %.sroa.69.4, 0
  %.not377 = select i1 %.not117.5, i1 %i.gy, i1 false ; 2 uses
  %.sroa.69.5 = select i1 %.not377, i32 %.sroa.69.4, i32 0 ; 2 uses
  %.not117.6 = icmp eq i32 %38, 0
  %i.hg = select i1 %.not117.6, i1 true, i1 %.not377 ; 3 uses
  %.sroa.80.5 = select i1 %i.hg, i32 0, i32 %38
  br i1 %.not112, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.preheader.preheader
  %spec.select357 = select i1 %i.hg, i32 0, i32 %38
  %spec.select358 = select i1 %i.hg, i32 %37, i32 0
  br label %bb.aj

.split:                                           ; preds = %bb.a
  %.not130 = icmp eq i32 %5, 2
  %i.hh = getelementptr inbounds nuw i8, ptr %i.j, i64 9232 ; 3 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !77 ; 2 uses
  br i1 %.not130, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %.preheader132, %.preheader.preheader
  %.sroa.14.2 = phi i32 [ %.sroa.14.0, %.preheader132 ], [ %.sroa.14.1, %.preheader.preheader ], [ %.sroa.14.1, %bb.ai ]
  %.sroa.69.0 = phi i32 [ %.sroa.69.4, %.preheader132 ], [ %.sroa.69.5, %.preheader.preheader ], [ %.sroa.69.5, %bb.ai ]
  %.sroa.80.0 = phi i32 [ %38, %.preheader132 ], [ %.sroa.80.5, %.preheader.preheader ], [ %spec.select357, %bb.ai ] ; 2 uses
  %.sroa.92.0 = phi i32 [ %37, %.preheader132 ], [ 0, %.preheader.preheader ], [ %spec.select358, %bb.ai ]
  %i.hj = phi <4 x i32> [ %i.ga, %.preheader132 ], [ %i.hf, %.preheader.preheader ], [ %i.hf, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.hk = icmp eq i32 %spec.store.select124, 0    ; 2 uses
  %i.hl = icmp eq i32 %.sroa.14.2, 0              ; 2 uses
  %i.hm = icmp eq <4 x i32> %i.hj, zeroinitializer ; 2 uses
  %i.hn = icmp eq i32 %.sroa.69.0, 0              ; 2 uses
  %i.ho = icmp eq i32 %.sroa.92.0, 0              ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.j, i64 9232 ; 3 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !77 ; 2 uses
  br i1 %or.cond, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.split, %bb.aj
  %i.hr = phi i32 [ %i.hi, %.split ], [ %i.hq, %bb.aj ] ; 2 uses
  %i.hs = phi ptr [ %i.hh, %.split ], [ %i.hp, %bb.aj ]
  %.sroa.92.1339 = phi i1 [ true, %.split ], [ %i.ho, %bb.aj ]
  %.sroa.80.1333 = phi i32 [ 0, %.split ], [ %.sroa.80.0, %bb.aj ]
  %.sroa.69.1327 = phi i1 [ true, %.split ], [ %i.hn, %bb.aj ]
  %.sroa.14.3297 = phi i1 [ true, %.split ], [ %i.hl, %bb.aj ]
  %.sroa.0.2291 = phi i1 [ true, %.split ], [ %i.hk, %bb.aj ]
  %i.ht = phi <4 x i1> [ splat (i1 true), %.split ], [ %i.hm, %bb.aj ]
  %i.hu = icmp eq i32 %i.hr, 2
  %spec.select.i = select i1 %i.hu, i32 3, i32 0
  br label %lame_apply_block_type.exit

bb.al:                                            ; preds = %.split, %bb.aj
  %i.hv = phi i32 [ %i.hi, %.split ], [ %i.hq, %bb.aj ] ; 2 uses
  %i.hw = phi ptr [ %i.hh, %.split ], [ %i.hp, %bb.aj ] ; 3 uses
  %.sroa.92.1340 = phi i1 [ true, %.split ], [ %i.ho, %bb.aj ] ; 3 uses
  %.sroa.80.1334 = phi i32 [ 0, %.split ], [ %.sroa.80.0, %bb.aj ] ; 4 uses
  %.sroa.69.1328 = phi i1 [ true, %.split ], [ %i.hn, %bb.aj ] ; 3 uses
  %.sroa.14.3298 = phi i1 [ true, %.split ], [ %i.hl, %bb.aj ] ; 3 uses
  %.sroa.0.2292 = phi i1 [ true, %.split ], [ %i.hk, %bb.aj ] ; 3 uses
  %i.hx = phi <4 x i1> [ splat (i1 true), %.split ], [ %i.hm, %bb.aj ] ; 3 uses
  switch i32 %i.hv, label %lame_apply_block_type.exit [
    i32 0, label %.thread
    i32 3, label %lame_apply_block_type.exit.thread
  ]

.thread:                                          ; preds = %bb.al
  store i32 1, ptr %0, align 8, !tbaa !55
  store i32 2, ptr %i.hw, align 4, !tbaa !77
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %i.hy, align 4, !tbaa !55
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.hz, align 8, !tbaa !78
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.ia, align 4, !tbaa !55
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ib, align 4, !tbaa !80
  br i1 %.sroa.0.2292, label %bb.an, label %bb.ap

lame_apply_block_type.exit.thread:                ; preds = %bb.al
  store i32 2, ptr %0, align 8, !tbaa !55
  store i32 2, ptr %i.hw, align 4, !tbaa !77
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %i.ic, align 4, !tbaa !55
  br label %.loopexit.loopexit

lame_apply_block_type.exit:                       ; preds = %bb.ak, %bb.al
  %i.id = phi i32 [ %i.hv, %bb.al ], [ %i.hr, %bb.ak ] ; 3 uses
  %i.ie = phi ptr [ %i.hw, %bb.al ], [ %i.hs, %bb.ak ]
  %.sroa.92.1338 = phi i1 [ %.sroa.92.1340, %bb.al ], [ %.sroa.92.1339, %bb.ak ] ; 3 uses
  %.sroa.80.1332 = phi i32 [ %.sroa.80.1334, %bb.al ], [ %.sroa.80.1333, %bb.ak ] ; 5 uses
  %.sroa.69.1326 = phi i1 [ %.sroa.69.1328, %bb.al ], [ %.sroa.69.1327, %bb.ak ] ; 3 uses
  %.sroa.14.3296 = phi i1 [ %.sroa.14.3298, %bb.al ], [ %.sroa.14.3297, %bb.ak ] ; 3 uses
  %.sroa.0.2290 = phi i1 [ %.sroa.0.2292, %bb.al ], [ %.sroa.0.2291, %bb.ak ] ; 3 uses
  %.0.i = phi i32 [ 2, %bb.al ], [ %spec.select.i, %bb.ak ]
  %i.if = phi <4 x i1> [ %i.hx, %bb.al ], [ %i.ht, %bb.ak ] ; 3 uses
  store i32 %i.id, ptr %0, align 8, !tbaa !55
  store i32 %.0.i, ptr %i.ie, align 4, !tbaa !77
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %i.ig, align 4, !tbaa !55
  %.not114 = icmp eq i32 %i.id, 2
  br i1 %.not114, label %.loopexit.loopexit, label %bb.am

bb.am:                                            ; preds = %lame_apply_block_type.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.ih, align 8, !tbaa !78
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.ii, align 4, !tbaa !55
  %i.ij = icmp eq i32 %i.id, 1
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %i.ij, label %.loopexit, label %.split350

.split350:                                        ; preds = %bb.am
  store i32 1, ptr %i.ik, align 4, !tbaa !80
  br i1 %.sroa.0.2290, label %bb.an, label %bb.ap

.loopexit.loopexit:                               ; preds = %lame_apply_block_type.exit.thread, %lame_apply_block_type.exit
  %.sroa.92.1337 = phi i1 [ %.sroa.92.1340, %lame_apply_block_type.exit.thread ], [ %.sroa.92.1338, %lame_apply_block_type.exit ]
  %.sroa.80.1331 = phi i32 [ %.sroa.80.1334, %lame_apply_block_type.exit.thread ], [ %.sroa.80.1332, %lame_apply_block_type.exit ] ; 2 uses
  %.sroa.69.1325 = phi i1 [ %.sroa.69.1328, %lame_apply_block_type.exit.thread ], [ %.sroa.69.1326, %lame_apply_block_type.exit ]
  %.sroa.14.3295 = phi i1 [ %.sroa.14.3298, %lame_apply_block_type.exit.thread ], [ %.sroa.14.3296, %lame_apply_block_type.exit ]
  %.sroa.0.2289 = phi i1 [ %.sroa.0.2292, %lame_apply_block_type.exit.thread ], [ %.sroa.0.2290, %lame_apply_block_type.exit ]
  %i.il = phi <4 x i1> [ %i.hx, %lame_apply_block_type.exit.thread ], [ %i.if, %lame_apply_block_type.exit ]
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 8, ptr %i.im, align 8, !tbaa !78
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.in, align 4, !tbaa !80
  %i.io = getelementptr inbounds nuw i8, ptr %i.j, i64 9228
  %i.ip = load i8, ptr %i.io, align 4, !tbaa !81  ; 2 uses
  %i.iq = zext i8 %i.ip to i32                    ; 6 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  store i32 1, ptr %i.ir, align 4, !tbaa !55
  %i.is = lshr i32 %i.iq, 1
  %.lobit = and i32 %i.is, 1
  %spec.select.1 = xor i32 %.lobit, 1             ; 2 uses
  %i.it = zext nneg i32 %spec.select.1 to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.it ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !55
  %i.iw = add nsw i32 %i.iv, 1
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !55
  %i.ix = and i32 %i.iq, 4
  %.not115.2 = icmp eq i32 %i.ix, 0
  %spec.select.2 = select i1 %.not115.2, i32 2, i32 %spec.select.1 ; 2 uses
  %i.iy = zext nneg i32 %spec.select.2 to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.iy ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !55
  %i.jb = add nsw i32 %i.ja, 1
  store i32 %i.jb, ptr %i.iz, align 4, !tbaa !55
  %i.jc = and i32 %i.iq, 8
  %.not115.3 = icmp eq i32 %i.jc, 0
  %spec.select.3 = select i1 %.not115.3, i32 3, i32 %spec.select.2 ; 2 uses
  %i.jd = zext nneg i32 %spec.select.3 to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.jd ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !55
  %i.jg = add nsw i32 %i.jf, 1
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !55
  %i.jh = and i32 %i.iq, 16
  %.not115.4 = icmp eq i32 %i.jh, 0
  %spec.select.4 = select i1 %.not115.4, i32 4, i32 %spec.select.3 ; 2 uses
  %i.ji = zext nneg i32 %spec.select.4 to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.ji ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !55
  %i.jl = add nsw i32 %i.jk, 1
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !55
  %i.jm = and i32 %i.iq, 32
  %.not115.5 = icmp eq i32 %i.jm, 0
  %spec.select.5 = select i1 %.not115.5, i32 5, i32 %spec.select.4 ; 2 uses
  %i.jn = zext nneg i32 %spec.select.5 to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.jn ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !55
  %i.jq = add nsw i32 %i.jp, 1
  store i32 %i.jq, ptr %i.jo, align 4, !tbaa !55
  %i.jr = and i32 %i.iq, 64
  %.not115.6 = icmp eq i32 %i.jr, 0
  %spec.select.6 = select i1 %.not115.6, i32 6, i32 %spec.select.5 ; 2 uses
  %i.js = zext nneg i32 %spec.select.6 to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.js ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !55
  %i.jv = add nsw i32 %i.ju, 1
  store i32 %i.jv, ptr %i.jt, align 4, !tbaa !55
  %.not115.7 = icmp sgt i8 %i.ip, -1
  %i.jw = zext nneg i32 %spec.select.6 to i64
  %i.jx = select i1 %.not115.7, i64 7, i64 %i.jw
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.jx ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !55
  %i.ka = add nsw i32 %i.jz, 1
  store i32 %i.ka, ptr %i.jy, align 4, !tbaa !55
  br i1 %.sroa.0.2289, label %bb.an, label %bb.ap

.loopexit:                                        ; preds = %bb.am
  store i32 0, ptr %i.ik, align 4, !tbaa !80
  br i1 %.sroa.0.2290, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.thread, %.split350, %.loopexit.loopexit, %.loopexit
  %.sroa.14.3293349 = phi i1 [ %.sroa.14.3295, %.loopexit.loopexit ], [ %.sroa.14.3296, %.loopexit ], [ %.sroa.14.3296, %.split350 ], [ %.sroa.14.3298, %.thread ] ; 2 uses
  %.sroa.69.1323344 = phi i1 [ %.sroa.69.1325, %.loopexit.loopexit ], [ %.sroa.69.1326, %.loopexit ], [ %.sroa.69.1326, %.split350 ], [ %.sroa.69.1328, %.thread ]
  %.sroa.80.1329342 = phi i32 [ %.sroa.80.1331, %.loopexit.loopexit ], [ %.sroa.80.1332, %.loopexit ], [ %.sroa.80.1332, %.split350 ], [ %.sroa.80.1334, %.thread ] ; 3 uses
  %.sroa.92.1335341 = phi i1 [ %.sroa.92.1337, %.loopexit.loopexit ], [ %.sroa.92.1338, %.loopexit ], [ %.sroa.92.1338, %.split350 ], [ %.sroa.92.1340, %.thread ]
  %i.kb = phi <4 x i1> [ %i.il, %.loopexit.loopexit ], [ %i.if, %.loopexit ], [ %i.if, %.split350 ], [ %i.hx, %.thread ] ; 4 uses
  %i.kc = extractelement <4 x i1> %i.kb, i64 0    ; 2 uses
  %i.kd = select i1 %.sroa.14.3293349, i1 %i.kc, i1 false
  %i.ke = extractelement <4 x i1> %i.kb, i64 1
  %i.kf = select i1 %i.kd, i1 %i.ke, i1 false     ; 2 uses
  %.mux = select i1 %i.kc, i64 3, i64 2
  %.mux.mux = select i1 %.sroa.14.3293349, i64 %.mux, i64 1
  %i.kg = extractelement <4 x i1> %i.kb, i64 2    ; 2 uses
  %i.kh = select i1 %i.kf, i1 %i.kg, i1 false
  %i.ki = extractelement <4 x i1> %i.kb, i64 3
  %i.kj = select i1 %i.kh, i1 %i.ki, i1 false     ; 2 uses
  %.mux.mux.mux = select i1 %i.kg, i64 5, i64 4
  %.mux.mux.mux.mux = select i1 %i.kf, i64 %.mux.mux.mux, i64 %.mux.mux
  %i.kk = select i1 %i.kj, i1 %.sroa.69.1323344, i1 false
  %.mux.mux.mux.mux.mux = select i1 %i.kj, i64 6, i64 %.mux.mux.mux.mux
  br i1 %i.kk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.not116.7 = icmp eq i32 %.sroa.80.1329342, 0
  %spec.select363 = select i1 %.sroa.92.1335341, i64 0, i64 8
  %spec.select365 = select i1 %.not116.7, i64 %spec.select363, i64 7
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.thread, %.split350, %.loopexit.loopexit, %.loopexit
  %.sroa.80.1329343 = phi i32 [ %.sroa.80.1329342, %bb.ao ], [ %.sroa.80.1332, %.loopexit ], [ %.sroa.80.1329342, %bb.an ], [ %.sroa.80.1332, %.split350 ], [ %.sroa.80.1334, %.thread ], [ %.sroa.80.1331, %.loopexit.loopexit ]
  %.0104 = phi i64 [ %spec.select365, %bb.ao ], [ 0, %.loopexit ], [ %.mux.mux.mux.mux.mux, %bb.an ], [ 0, %.split350 ], [ 0, %.thread ], [ 0, %.loopexit.loopexit ]
  %i.kl = getelementptr inbounds nuw i8, ptr @window_grouping, i64 %.0104
end_hunk_0
begin_hunk_1_@ath:bb.a
  %i.g = fmul nsz <2 x double> %i.f, <double -6.000000e-01, double -1.500000e-01>
  %i.h = fmul nsz <2 x double> %i.f, %i.g
  %i.i = tail call nsz <2 x double> @llvm.exp.v2f64(<2 x double> %i.h) ; 2 uses
  %i.j = extractelement <2 x double> %i.i, i64 0
  %i.k = fmul nsz double %i.j, -6.800000e+00
  %i.l = tail call nsz double @llvm.fmuladd.f64(double %i.c, double 3.640000e+00, double %i.k)
  %i.m = extractelement <2 x double> %i.i, i64 1
  %i.n = tail call nsz double @llvm.fmuladd.f64(double %i.m, double 6.000000e+00, double %i.l)
  %i.o = fmul nsz double %i.b, 7.600000e-04
  %i.p = fmul nsz double %i.o, %i.b
  %i.q = fmul nsz double %i.p, %i.b
  %i.r = tail call nsz double @llvm.fmuladd.f64(double %i.q, double %i.b, double %i.n)
  %i.s = fptrunc nsz double %i.r to float
  ret float %i.s
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp2.f64(double) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @av_freep(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @lame_window_init(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !37
  %i.h = and i32 %i.g, 2
  %.not = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = zext nneg i32 %i.b to i64                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %middle.block
  %indvars.iv19 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next20, %middle.block ] ; 2 uses
  %i.k = getelementptr inbounds nuw [9312 x i8], ptr %i.e, i64 %indvars.iv19 ; 2 uses
  br i1 %.not, label %bb.c, label %vector.ph

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.i, align 8, !tbaa !20
  %i.m = sdiv i64 %i.l, %i.j
  %i.n = sdiv i64 %i.m, 1000
  %i.o = trunc i64 %i.n to i32                    ; 14 uses
  %.not.not.i = icmp slt i32 %i.o, 16
  br i1 %.not.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  %.026.lcssa.wide.i = phi i64 [ 1, %bb.c ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ], [ 8, %bb.k ], [ 9, %bb.l ], [ 10, %bb.m ], [ 11, %bb.n ], [ 12, %bb.o ] ; 2 uses
  %.lcssa.i = phi i32 [ 16, %bb.c ], [ 24, %bb.e ], [ 32, %bb.f ], [ 40, %bb.g ], [ 48, %bb.h ], [ 56, %bb.i ], [ 64, %bb.j ], [ 80, %bb.k ], [ 96, %bb.l ], [ 112, %bb.m ], [ 128, %bb.n ], [ 160, %bb.o ]
  %i.p = add nuw nsw i64 %.026.lcssa.wide.i, 4294967295
  %i.q = and i64 %i.p, 4294967295                 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @psy_abr_map, i64 %i.q
  %i.s = load i32, ptr %i.r, align 8, !tbaa !136
  br label %lame_calc_attack_threshold.exit

bb.e:                                             ; preds = %bb.c
  %.not.not.1.i = icmp samesign ult i32 %i.o, 24
  br i1 %.not.not.1.i, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.not.2.i = icmp samesign ult i32 %i.o, 32
  br i1 %.not.not.2.i, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.not.3.i = icmp samesign ult i32 %i.o, 40
  br i1 %.not.not.3.i, label %bb.d, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.not.4.i = icmp samesign ult i32 %i.o, 48
  br i1 %.not.not.4.i, label %bb.d, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.not.5.i = icmp samesign ult i32 %i.o, 56
  br i1 %.not.not.5.i, label %bb.d, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.not.6.i = icmp samesign ult i32 %i.o, 64
  br i1 %.not.not.6.i, label %bb.d, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.not.7.i = icmp samesign ult i32 %i.o, 80
  br i1 %.not.not.7.i, label %bb.d, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.not.8.i = icmp samesign ult i32 %i.o, 96
  br i1 %.not.not.8.i, label %bb.d, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.not.9.i = icmp samesign ult i32 %i.o, 112
  br i1 %.not.not.9.i, label %bb.d, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.not.10.i = icmp samesign ult i32 %i.o, 128
  br i1 %.not.not.10.i, label %bb.d, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.not.11.i = icmp samesign ult i32 %i.o, 160
  br i1 %.not.not.11.i, label %bb.d, label %lame_calc_attack_threshold.exit

lame_calc_attack_threshold.exit:                  ; preds = %bb.d, %bb.o
  %.020.i = phi i64 [ %i.q, %bb.d ], [ 12, %bb.o ]
  %.019.i = phi i64 [ %.026.lcssa.wide.i, %bb.d ], [ 12, %bb.o ]
  %.018.i = phi i32 [ %i.s, %bb.d ], [ 160, %bb.o ]
  %.017.i = phi i32 [ %.lcssa.i, %bb.d ], [ 160, %bb.o ]
  %i.t = sub nsw i32 %.017.i, %i.o
  %i.u = sub nsw i32 %i.o, %.018.i
  %i.v = icmp sgt i32 %i.t, %i.u
  %.020..019.i = select i1 %i.v, i64 %.020.i, i64 %.019.i
  %.pn.i = getelementptr inbounds nuw [8 x i8], ptr @psy_abr_map, i64 %.020..019.i
  %.021.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 4
  %.021.i = load float, ptr %.021.in.i, align 4, !tbaa !138
  br label %vector.ph

vector.ph:                                        ; preds = %bb.b, %lame_calc_attack_threshold.exit
  %.021.i.sink = phi float [ %.021.i, %lame_calc_attack_threshold.exit ], [ 4.200000e+00, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 9236
  store float %.021.i.sink, ptr %i.w, align 4, !tbaa !73
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 9240
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index
  store <4 x float> splat (float 1.000000e+01), ptr %i.y, align 4, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, 16
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next20, %i.j
  br i1 %exitcond22.not, label %._crit_edge, label %bb.b, !llvm.loop !140

._crit_edge:                                      ; preds = %middle.block, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

declare ptr @ff_psy_find_group(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.exp2.v4f64(<4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp2.v2f32(<2 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.exp.v2f64(<2 x double>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"FFPsyContext", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !16, i64 40, !18, i64 48, !6, i64 56, !19, i64 60, !12, i64 72}
!11 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS10FFPsyModel", !12, i64 0}
!14 = !{!"p1 _ZTS12FFPsyChannel", !12, i64 0}
!15 = !{!"p1 _ZTS17FFPsyChannelGroup", !12, i64 0}
!16 = !{!"p2 omnipotent char", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p1 int", !12, i64 0}
!19 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!20 = !{!21, !25, i64 56}
!21 = !{!"AVCodecContext", !22, i64 0, !6, i64 8, !6, i64 12, !23, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !24, i64 40, !12, i64 48, !25, i64 56, !6, i64 64, !6, i64 68, !26, i64 72, !6, i64 80, !27, i64 84, !27, i64 92, !27, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !27, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !28, i64 204, !28, i64 208, !28, i64 212, !28, i64 216, !28, i64 220, !28, i64 224, !28, i64 228, !28, i64 232, !28, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !29, i64 288, !29, i64 296, !29, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !30, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !28, i64 428, !28, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !31, i64 456, !25, i64 464, !25, i64 472, !28, i64 480, !28, i64 484, !6, i64 488, !6, i64 492, !26, i64 496, !26, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !32, i64 536, !12, i64 544, !33, i64 552, !33, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !34, i64 728, !26, i64 736, !6, i64 744, !6, i64 748, !26, i64 752, !26, i64 760, !26, i64 768, !35, i64 776, !6, i64 784, !6, i64 788, !25, i64 792, !6, i64 800, !6, i64 804, !25, i64 808, !12, i64 816, !25, i64 824, !18, i64 832, !6, i64 840, !36, i64 848, !6, i64 856, !6, i64 860}
!22 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!23 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!24 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!25 = !{!"long", !7, i64 0}
!26 = !{!"p1 omnipotent char", !12, i64 0}
!27 = !{!"AVRational", !6, i64 0, !6, i64 4}
!28 = !{!"float", !7, i64 0}
!29 = !{!"p1 short", !12, i64 0}
!30 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!31 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!32 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!33 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!34 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!35 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!36 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!37 = !{!21, !6, i64 64}
!38 = !{!21, !6, i64 356}
!39 = !{!10, !6, i64 36}
!40 = !{!21, !6, i64 344}
!41 = !{!10, !12, i64 72}
!42 = !{!21, !6, i64 420}
!43 = !{!44, !28, i64 3624}
!44 = !{!"AacPsyContext", !6, i64 0, !6, i64 4, !6, i64 8, !45, i64 12, !7, i64 28, !46, i64 3616, !28, i64 3624}
!45 = !{!"", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12}
!46 = !{!"p1 _ZTS13AacPsyChannel", !12, i64 0}
!47 = !{!44, !6, i64 0}
!48 = !{!44, !6, i64 4}
!49 = !{!28, !28, i64 0}
!50 = !{!10, !6, i64 60}
!51 = !{!44, !6, i64 8}
!52 = !{!10, !16, i64 40}
!53 = !{!10, !18, i64 48}
!54 = !{!26, !26, i64 0}
!55 = !{!6, !6, i64 0}
!56 = !{!57, !28, i64 4}
!57 = !{!"AacPsyCoeffs", !28, i64 0, !28, i64 4, !7, i64 8, !7, i64 16, !28, i64 24}
!58 = !{!7, !7, i64 0}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!57, !28, i64 24}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !60}
!64 = !{!57, !28, i64 0}
!65 = distinct !{!65, !60}
!66 = distinct !{!66, !60}
!67 = !{!44, !46, i64 3616}
!68 = distinct !{!68, !60, !69, !70}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = distinct !{!71, !60}
!72 = distinct !{!72, !60}
!73 = !{!74, !28, i64 9236}
!74 = !{!"AacPsyChannel", !7, i64 0, !7, i64 4608, !28, i64 9216, !7, i64 9220, !7, i64 9228, !6, i64 9232, !28, i64 9236, !7, i64 9240, !6, i64 9304, !6, i64 9308}
!75 = !{!74, !6, i64 9308}
!76 = !{!74, !6, i64 9304}
!77 = !{!74, !6, i64 9232}
!78 = !{!79, !6, i64 16}
!79 = !{!"FFPsyWindowInfo", !7, i64 0, !6, i64 12, !6, i64 16, !7, i64 20, !7, i64 52, !18, i64 88}
!80 = !{!79, !6, i64 12}
!81 = !{!74, !7, i64 9228}
!82 = !{!83, !7, i64 160}
!83 = !{!"FFPsyChannelGroup", !7, i64 0, !7, i64 160, !7, i64 161}
!84 = !{!85, !85, i64 0}
!85 = !{!"p1 float", !12, i64 0}
!86 = !{!87, !28, i64 0}
!87 = !{!"AacPsyBand", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !28, i64 28, !6, i64 32}
!88 = distinct !{!88, !60}
!89 = !{!87, !28, i64 4}
!90 = !{!87, !28, i64 12}
!91 = distinct !{!91, !60}
!92 = distinct !{!92, !60}
!93 = distinct !{!93, !60}
!94 = distinct !{!94, !60}
!95 = !{!87, !28, i64 8}
!96 = !{!87, !28, i64 24}
!97 = !{!87, !28, i64 16}
!98 = !{!87, !6, i64 32}
!99 = distinct !{!99, !60}
!100 = distinct !{!100, !60}
!101 = !{!10, !14, i64 16}
!102 = !{!103, !28, i64 2048}
!103 = !{!"FFPsyChannel", !7, i64 0, !28, i64 2048}
!104 = !{!10, !6, i64 64}
!105 = !{!44, !28, i64 16}
!106 = !{!44, !28, i64 12}
!107 = !{!44, !28, i64 20}
!108 = !{!10, !6, i64 68}
!109 = distinct !{!109, !60}
!110 = distinct !{!110, !60}
!111 = distinct !{!111, !60}
!112 = distinct !{!112, !60}
!113 = !{!87, !28, i64 28}
!114 = distinct !{!114, !60}
!115 = distinct !{!115, !60}
!116 = distinct !{!116, !60}
!117 = !{!87, !28, i64 20}
!118 = distinct !{!118, !60}
!119 = distinct !{!119, !60}
!120 = distinct !{!120, !60}
!121 = !{!122}
!122 = distinct !{!122, !123}
!123 = distinct !{!123, !"LVerDomain"}
!124 = !{!125}
!125 = distinct !{!125, !123}
!126 = !{!122, !127}
!127 = distinct !{!127, !123}
!128 = !{!127}
!129 = !{!130, !28, i64 12}
!130 = !{!"FFPsyBand", !6, i64 0, !28, i64 4, !28, i64 8, !28, i64 12}
!131 = !{!130, !6, i64 0}
!132 = distinct !{!132, !60, !69, !70}
!133 = distinct !{!133, !60, !69}
!134 = distinct !{!134, !60}
!135 = distinct !{!135, !60}
!136 = !{!137, !6, i64 0}
!137 = !{!"PsyLamePreset", !6, i64 0, !28, i64 4}
!138 = !{!137, !28, i64 4}
!139 = distinct !{!139, !60, !69, !70}
!140 = distinct !{!140, !60}
end_hunk_1
