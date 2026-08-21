Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacpsy?download=true
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
  %6 = alloca [9 x float], align 16               ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 3616
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67   ; 2 uses
  %i.h = sext i32 %4 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [9312 x i8], ptr %i.g, i64 %i.h ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.split, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %6, i8 0, i64 36, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 44
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 21 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %wide.load = load <4 x float>, ptr %i.l, align 4, !tbaa !49
  %wide.load378 = load <4 x float>, ptr %i.k, align 4, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %wide.load379 = load <4 x float>, ptr %i.m, align 4, !tbaa !49
  %i.n = fadd nsz <4 x float> %wide.load378, %wide.load379
  %i.o = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> splat (float f0xA39F982B), <4 x float> %wide.load)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %wide.load380 = load <4 x float>, ptr %i.p, align 4, !tbaa !49
  %i.q = getelementptr i8, ptr %i.k, i64 80
  %wide.load381 = load <4 x float>, ptr %i.q, align 4, !tbaa !49
  %i.r = fadd nsz <4 x float> %wide.load380, %wide.load381
  %i.s = fmul nsz <4 x float> %i.r, splat (float f0xBC8B861B)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.load382 = load <4 x float>, ptr %i.t, align 4, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  %wide.load383 = load <4 x float>, ptr %i.u, align 4, !tbaa !49
  %i.v = fadd nsz <4 x float> %wide.load382, %wide.load383
  %i.w = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> splat (float f0xA378F1A8), <4 x float> %i.o)
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %wide.load384 = load <4 x float>, ptr %i.x, align 4, !tbaa !49
  %i.y = getelementptr i8, ptr %i.k, i64 72
  %wide.load385 = load <4 x float>, ptr %i.y, align 4, !tbaa !49
  %i.z = fadd nsz <4 x float> %wide.load384, %wide.load385
  %i.aa = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> splat (float 4.180720e-02), <4 x float> %i.s)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load386 = load <4 x float>, ptr %i.ab, align 4, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %wide.load387 = load <4 x float>, ptr %i.ac, align 4, !tbaa !49
  %i.ad = fadd nsz <4 x float> %wide.load386, %wide.load387
  %i.ae = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> splat (float f0xA49B3F51), <4 x float> %i.w)
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %wide.load388 = load <4 x float>, ptr %i.af, align 4, !tbaa !49
  %i.ag = getelementptr i8, ptr %i.k, i64 64
  %wide.load389 = load <4 x float>, ptr %i.ag, align 4, !tbaa !49
  %i.ah = fadd nsz <4 x float> %wide.load388, %wide.load389
  %i.ai = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> splat (float -8.763240e-02), <4 x float> %i.aa)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %wide.load390 = load <4 x float>, ptr %i.aj, align 4, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  %wide.load391 = load <4 x float>, ptr %i.ak, align 4, !tbaa !49
  %i.al = fadd nsz <4 x float> %wide.load390, %wide.load391
  %i.am = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> splat (float -3.083500e-17), <4 x float> %i.ae)
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %wide.load392 = load <4 x float>, ptr %i.an, align 4, !tbaa !49
  %i.ao = getelementptr i8, ptr %i.k, i64 56
  %wide.load393 = load <4 x float>, ptr %i.ao, align 4, !tbaa !49
  %i.ap = fadd nsz <4 x float> %wide.load392, %wide.load393
  %i.aq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> splat (float f0x3E3ED1E8), <4 x float> %i.ai)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %wide.load394 = load <4 x float>, ptr %i.ar, align 4, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %wide.load395 = load <4 x float>, ptr %i.as, align 4, !tbaa !49
  %i.at = fadd nsz <4 x float> %wide.load394, %wide.load395
  %i.au = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> splat (float f0xA4FEA9B0), <4 x float> %i.am)
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %wide.load396 = load <4 x float>, ptr %i.av, align 4, !tbaa !49
  %i.aw = getelementptr i8, ptr %i.k, i64 48
  %wide.load397 = load <4 x float>, ptr %i.aw, align 4, !tbaa !49
  %i.ax = fadd nsz <4 x float> %wide.load396, %wide.load397
  %i.ay = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ax, <4 x float> splat (float -6.276380e-01), <4 x float> %i.aq)
  %i.az = fadd nsz <4 x float> %i.au, %i.ay
  %i.ba = fmul nsz <4 x float> %i.az, splat (float 3.276800e+04)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  store <4 x float> %i.ba, ptr %i.bb, align 16, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, 1024
  br i1 %i.bc, label %psy_hp_filter.exit.preheader, label %vector.body, !llvm.loop !68

psy_hp_filter.exit.preheader:                     ; preds = %vector.body
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 9240
  %i.be = mul nsw i64 %i.h, 9312
  %i.bf = getelementptr i8, ptr %i.g, i64 %i.be
  %scevgep = getelementptr i8, ptr %i.bf, i64 9296
  %i.bg = load i64, ptr %scevgep, align 4, !tbaa !49
  store i64 %i.bg, ptr %i.c, align 16, !tbaa !49
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 9296
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 9288
  %i.bj = load <2 x float>, ptr %i.bh, align 4, !tbaa !49 ; 3 uses
  %i.bk = load <2 x float>, ptr %i.bi, align 4, !tbaa !49
  %i.bl = fdiv nsz <2 x float> %i.bj, %i.bk       ; 2 uses
  %shift = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x float> %shift, %i.bj
  %i.bm = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  br label %.preheader134

.preheader134:                                    ; preds = %psy_hp_filter.exit.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %psy_hp_filter.exit.preheader ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %.098141 = phi ptr [ %i.a, %psy_hp_filter.exit.preheader ], [ %scevgep156, %bb.g ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader134
  %.095138 = phi float [ 1.000000e+00, %.preheader134 ], [ %.095..1, %bb.b ] ; 2 uses
  %.199.idx137 = phi i64 [ 0, %.preheader134 ], [ %.199.add.1, %bb.b ] ; 3 uses
  %.199.ptr139 = getelementptr inbounds nuw i8, ptr %.098141, i64 %.199.idx137
  %i.bn = load float, ptr %.199.ptr139, align 4, !tbaa !49
  %i.bo = tail call nsz float @llvm.fabs.f32(float %i.bn) ; 2 uses
  %i.bp = fcmp nsz ogt float %.095138, %i.bo
  %.095. = select nsz i1 %i.bp, float %.095138, float %i.bo ; 2 uses
  %.199.add = or disjoint i64 %.199.idx137, 4     ; 2 uses
  %.199.ptr139.1 = getelementptr inbounds nuw i8, ptr %.098141, i64 %.199.add
  %i.bq = load float, ptr %.199.ptr139.1, align 4, !tbaa !49
  %i.br = tail call nsz float @llvm.fabs.f32(float %i.bq) ; 2 uses
  %i.bs = fcmp nsz ogt float %.095., %i.br
  %.095..1 = select nsz i1 %i.bs, float %.095., float %i.br ; 7 uses
  %.199.add.1 = add nuw nsw i64 %.199.idx137, 8
  %i.bt = icmp samesign ult i64 %.199.add, 252
  br i1 %i.bt, label %bb.b, label %bb.c, !llvm.loop !71

bb.c:                                             ; preds = %bb.b
  %scevgep156 = getelementptr i8, ptr %.098141, i64 256
  %i.bu = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bu
  store float %.095..1, ptr %i.bv, align 4, !tbaa !49
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  store float %.095..1, ptr %i.bw, align 4, !tbaa !49
  %i.bx = lshr i64 %indvars.iv, 1
  %i.by = and i64 %i.bx, 2147483647
  %7 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.by
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !49
  %i.cb = fadd nsz float %.095..1, %i.ca
  store float %i.cb, ptr %i.bz, align 4, !tbaa !49
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !49 ; 4 uses
  %i.ce = fcmp nsz ogt float %.095..1, %i.cd
  br i1 %i.ce, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cf = fdiv nsz float %.095..1, %i.cd
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.cg = fmul nsz float %.095..1, 1.000000e+01   ; 2 uses
  %i.ch = fcmp nsz ogt float %i.cd, %i.cg
  br i1 %i.ch, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ci = fdiv nsz float %i.cd, %i.cg
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.196 = phi nsz float [ %i.cf, %bb.d ], [ %i.ci, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bu
  store float %.196, ptr %i.cj, align 4, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.h, label %.preheader134, !llvm.loop !72

bb.h:                                             ; preds = %bb.g
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 9236 ; 18 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !73
  %i.cm = extractelement <2 x float> %i.bl, i64 0
  %i.cn = fcmp nsz ule float %i.cm, %i.cl
  br i1 %i.cn, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.co = load float, ptr %i.ck, align 4, !tbaa !73
  %i.cp = extractelement <2 x float> %i.bl, i64 1
  %i.cq = fcmp nsz ogt float %i.cp, %i.co
  br i1 %i.cq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0.3 = phi i32 [ 2, %bb.j ], [ 0, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !49
  %i.ct = load float, ptr %i.ck, align 4, !tbaa !73
  %i.cu = fcmp nsz ule float %i.cs, %i.ct
  br i1 %i.cu, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !49
  %i.cx = load float, ptr %i.ck, align 4, !tbaa !73
  %i.cy = fcmp nsz ogt float %i.cw, %i.cx
  br i1 %i.cy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.sroa.14.5 = phi i32 [ 2, %bb.m ], [ 0, %bb.l ], [ 1, %bb.k ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.da = load float, ptr %i.cz, align 16, !tbaa !49
  %i.db = load float, ptr %i.ck, align 4, !tbaa !73
  %i.dc = fcmp nsz ule float %i.da, %i.db
  br i1 %i.dc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.de = load float, ptr %i.dd, align 4, !tbaa !49
  %i.df = load float, ptr %i.ck, align 4, !tbaa !73
  %i.dg = fcmp nsz ogt float %i.de, %i.df
  br i1 %i.dg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %.sroa.25.3 = phi i32 [ 2, %bb.p ], [ 0, %bb.o ], [ 1, %bb.n ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.di = load float, ptr %i.dh, align 8, !tbaa !49
  %i.dj = load float, ptr %i.ck, align 4, !tbaa !73
  %i.dk = fcmp nsz ule float %i.di, %i.dj
  br i1 %i.dk, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !49
  %i.dn = load float, ptr %i.ck, align 4, !tbaa !73
  %i.do = fcmp nsz ogt float %i.dm, %i.dn
  br i1 %i.do, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %.sroa.36.3 = phi i32 [ 2, %bb.s ], [ 0, %bb.r ], [ 1, %bb.q ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dq = load float, ptr %i.dp, align 16, !tbaa !49
  %i.dr = load float, ptr %i.ck, align 4, !tbaa !73
  %i.ds = fcmp nsz ule float %i.dq, %i.dr
  br i1 %i.ds, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.du = load float, ptr %i.dt, align 4, !tbaa !49
  %i.dv = load float, ptr %i.ck, align 4, !tbaa !73
  %i.dw = fcmp nsz ogt float %i.du, %i.dv
  br i1 %i.dw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v
  %.sroa.47.3 = phi i32 [ 2, %bb.v ], [ 0, %bb.u ], [ 1, %bb.t ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.dy = load float, ptr %i.dx, align 8, !tbaa !49
  %i.dz = load float, ptr %i.ck, align 4, !tbaa !73
  %i.ea = fcmp nsz ule float %i.dy, %i.dz
  br i1 %i.ea, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !49
  %i.ed = load float, ptr %i.ck, align 4, !tbaa !73
  %i.ee = fcmp nsz ogt float %i.ec, %i.ed
  br i1 %i.ee, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.y
  %.sroa.58.3 = phi i32 [ 2, %bb.y ], [ 0, %bb.x ], [ 1, %bb.w ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.eg = load float, ptr %i.ef, align 16, !tbaa !49
  %i.eh = load float, ptr %i.ck, align 4, !tbaa !73
  %i.ei = fcmp nsz ule float %i.eg, %i.eh
  br i1 %i.ei, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !49
  %i.el = load float, ptr %i.ck, align 4, !tbaa !73
  %i.em = fcmp nsz ogt float %i.ek, %i.el
  br i1 %i.em, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.ab
  %.sroa.69.3 = phi i32 [ 2, %bb.ab ], [ 0, %bb.aa ], [ 1, %bb.z ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.eo = load float, ptr %i.en, align 8, !tbaa !49
  %i.ep = load float, ptr %i.ck, align 4, !tbaa !73
  %i.eq = fcmp nsz ule float %i.eo, %i.ep
  br i1 %i.eq, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.es = load float, ptr %i.er, align 4, !tbaa !49
  %i.et = load float, ptr %i.ck, align 4, !tbaa !73
  %i.eu = fcmp nsz ogt float %i.es, %i.et
  br i1 %i.eu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %.sroa.80.3 = phi i32 [ 2, %bb.ae ], [ 0, %bb.ad ], [ 1, %bb.ac ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ew = load float, ptr %i.ev, align 16, !tbaa !49
  %i.ex = load float, ptr %i.ck, align 4, !tbaa !73
  %i.ey = fcmp nsz ule float %i.ew, %i.ex
  br i1 %i.ey, label %bb.ag, label %.preheader132

bb.ag:                                            ; preds = %bb.af
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !49
  %i.fb = load float, ptr %i.ck, align 4, !tbaa !73
  %i.fc = fcmp nsz ogt float %i.fa, %i.fb
  br i1 %i.fc, label %bb.ah, label %.preheader132

bb.ah:                                            ; preds = %bb.ag
  br label %.preheader132

.preheader132:                                    ; preds = %bb.ah, %bb.ag, %bb.af
  %.sroa.92.3 = phi i32 [ 2, %bb.ah ], [ 0, %bb.ag ], [ 1, %bb.af ]
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fd = fmul nsz float %i.bm, 2.300000e+00
  %i.fe = icmp samesign uge i32 %.sroa.0.3, %.sroa.14.5
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ff = load <4 x float>, ptr %8, align 4, !tbaa !49 ; 5 uses
  %i.fg = extractelement <4 x float> %i.ff, i64 0 ; 3 uses
  %i.fh = fcmp nsz ogt float %i.bm, %i.fg
  %i.fi = select nsz i1 %i.fh, float %i.bm, float %i.fg
  %i.fj = fcmp nsz uge float %i.fi, 4.000000e+04
  %i.fk = load float, ptr %10, align 4, !tbaa !49 ; 3 uses
  %i.fl = load <4 x float>, ptr %9, align 8, !tbaa !49 ; 4 uses
  %i.fm = fmul nsz <4 x float> %i.ff, splat (float 2.300000e+00) ; 2 uses
  %i.fn = extractelement <4 x float> %i.fm, i64 0
  %i.fo = fcmp nsz uge float %i.bm, %i.fn
  %or.cond121.not372 = or i1 %i.fo, %i.fj
  %i.fp = fcmp nsz uge float %i.fg, %i.fd
  %or.cond123.not369 = or i1 %i.fp, %or.cond121.not372 ; 2 uses
  %.sroa.14.0 = select i1 %or.cond123.not369, i32 %.sroa.14.5, i32 0 ; 4 uses
  %.not367 = select i1 %or.cond123.not369, i1 true, i1 %i.fe
  %i.fq = fcmp nsz ogt <4 x float> %i.ff, %i.fl
  %i.fr = select <4 x i1> %i.fq, <4 x float> %i.ff, <4 x float> %i.fl
  %i.fs = fcmp nsz olt <4 x float> %i.fr, splat (float 4.000000e+04)
  %i.ft = fmul nsz <4 x float> %i.fl, splat (float 2.300000e+00) ; 2 uses
  %i.fu = fcmp nsz olt <4 x float> %i.ff, %i.ft
  %i.fv = and <4 x i1> %i.fu, %i.fs
  %i.fw = fcmp nsz olt <4 x float> %i.fl, %i.fm
  %i.fx = and <4 x i1> %i.fw, %i.fv
  %i.fy = insertelement <4 x i32> poison, i32 %.sroa.25.3, i64 0
  %i.fz = insertelement <4 x i32> %i.fy, i32 %.sroa.36.3, i64 1
  %i.ga = insertelement <4 x i32> %i.fz, i32 %.sroa.47.3, i64 2
  %i.gb = insertelement <4 x i32> %i.ga, i32 %.sroa.58.3, i64 3
  %i.gc = select <4 x i1> %i.fx, <4 x i32> zeroinitializer, <4 x i32> %i.gb ; 7 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ge = load float, ptr %i.gd, align 8, !tbaa !49 ; 7 uses
  %i.gf = fcmp nsz ogt float %i.fk, %i.ge
  %i.gg = select nsz i1 %i.gf, float %i.fk, float %i.ge
  %i.gh = fcmp nsz olt float %i.gg, 4.000000e+04
  %i.gi = fmul nsz float %i.ge, 2.300000e+00      ; 2 uses
  %i.gj = fcmp nsz olt float %i.fk, %i.gi
  %or.cond121.5 = and i1 %i.gj, %i.gh
  %i.gk = extractelement <4 x float> %i.ft, i64 3
  %i.gl = fcmp nsz olt float %i.ge, %i.gk
  %or.cond123.5 = and i1 %i.gl, %or.cond121.5
  %.sroa.69.4 = select i1 %or.cond123.5, i32 0, i32 %.sroa.69.3 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !49 ; 7 uses
  %i.go = fcmp nsz ogt float %i.ge, %i.gn
  %i.gp = select nsz i1 %i.go, float %i.ge, float %i.gn
  %i.gq = fcmp nsz olt float %i.gp, 4.000000e+04
  %i.gr = fmul nsz float %i.gn, 2.300000e+00      ; 2 uses
  %i.gs = fcmp nsz olt float %i.ge, %i.gr
  %or.cond121.6 = and i1 %i.gs, %i.gq
  %i.gt = fcmp nsz olt float %i.gn, %i.gi
  %or.cond123.6 = and i1 %i.gt, %or.cond121.6
  %.sroa.80.4 = select i1 %or.cond123.6, i32 0, i32 %.sroa.80.3 ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.gv = load float, ptr %i.gu, align 16, !tbaa !49 ; 4 uses
  %i.gw = fcmp nsz ogt float %i.gn, %i.gv
  %i.gx = select nsz i1 %i.gw, float %i.gn, float %i.gv
  %i.gy = fcmp nsz olt float %i.gx, 4.000000e+04
  %i.gz = fmul nsz float %i.gv, 2.300000e+00
  %i.ha = fcmp nsz olt float %i.gn, %i.gz
  %or.cond121.7 = and i1 %i.ha, %i.gy
  %i.hb = fcmp nsz olt float %i.gv, %i.gr
  %or.cond123.7 = and i1 %i.hb, %or.cond121.7
  %.sroa.92.4 = select i1 %or.cond123.7, i32 0, i32 %.sroa.92.3 ; 4 uses
  %i.hc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gc)
  %op.rdx = add i32 %i.hc, %.sroa.14.0
  %op.rdx398 = add nuw nsw i32 %.sroa.69.4, %.sroa.80.4
  %op.rdx399 = add i32 %op.rdx, %op.rdx398
  %op.rdx400 = add i32 %op.rdx399, %.sroa.92.4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.i, i64 9308 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !75
  %.not111 = icmp eq i32 %i.he, 0
  %i.hf = select i1 %.not111, i1 %.not367, i1 false
  %.sroa.0.1 = select i1 %i.hf, i32 %.sroa.0.3, i32 0 ; 2 uses
  %.not112 = icmp eq i32 %.sroa.92.4, 0           ; 2 uses
  %i.hg = zext i1 %.not112 to i32
  store i32 %i.hg, ptr %i.hd, align 4, !tbaa !75
  %i.hh = getelementptr inbounds nuw i8, ptr %i.i, i64 9304
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !76 ; 2 uses
  %.not113 = icmp sgt i32 %.sroa.0.1, %i.hi
  %spec.store.select124 = select i1 %.not113, i32 %.sroa.0.1, i32 0 ; 3 uses
  %i.hj = icmp eq i32 %i.hi, 2
  %i.hk = sub nsw i32 0, %spec.store.select124
  %i.hl = icmp ne i32 %op.rdx400, %i.hk
  %or.cond = select i1 %i.hj, i1 true, i1 %i.hl   ; 2 uses
  br i1 %or.cond, label %.preheader.preheader, label %bb.aj

.preheader.preheader:                             ; preds = %.preheader132
  %.not117 = icmp eq i32 %.sroa.14.0, 0
  %.not118 = icmp ne i32 %spec.store.select124, 0
  %.not373.not375 = select i1 %.not117, i1 true, i1 %.not118 ; 2 uses
  %.sroa.14.1 = select i1 %.not373.not375, i32 0, i32 %.sroa.14.0 ; 2 uses
  %i.hm = extractelement <4 x i32> %i.gc, i64 1
  %.not117.2 = icmp eq i32 %i.hm, 0
  %i.hn = shufflevector <4 x i32> %i.gc, <4 x i32> poison, <2 x i32> <i32 2, i32 0>
  %i.ho = icmp ne <2 x i32> %i.hn, zeroinitializer ; 2 uses
  %i.hp = extractelement <2 x i1> %i.ho, i64 1
  %.not374 = select i1 %i.hp, i1 %.not373.not375, i1 false ; 2 uses
  %i.hq = select i1 %.not117.2, i1 true, i1 %.not374 ; 2 uses
  %i.hr = extractelement <2 x i1> %i.ho, i64 0
  %.not376 = select i1 %i.hr, i1 %i.hq, i1 false  ; 2 uses
  %i.hs = extractelement <4 x i32> %i.gc, i64 3
  %.not117.4 = icmp eq i32 %i.hs, 0
  %i.ht = select i1 %.not117.4, i1 true, i1 %.not376 ; 2 uses
  %i.hu = insertelement <4 x i1> poison, i1 %.not374, i64 0
  %i.hv = insertelement <4 x i1> %i.hu, i1 %i.hq, i64 1
  %i.hw = insertelement <4 x i1> %i.hv, i1 %.not376, i64 2
  %i.hx = insertelement <4 x i1> %i.hw, i1 %i.ht, i64 3
  %i.hy = shufflevector <4 x i32> %i.gc, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.hz = shufflevector <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>, <4 x i32> %i.gc, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ia = select <4 x i1> %i.hx, <4 x i32> %i.hy, <4 x i32> %i.hz ; 2 uses
  %.not117.5 = icmp ne i32 %.sroa.69.4, 0
  %.not377 = select i1 %.not117.5, i1 %i.ht, i1 false ; 2 uses
  %.sroa.69.5 = select i1 %.not377, i32 %.sroa.69.4, i32 0 ; 2 uses
  %.not117.6 = icmp eq i32 %.sroa.80.4, 0
  %i.ib = select i1 %.not117.6, i1 true, i1 %.not377 ; 3 uses
  %.sroa.80.5 = select i1 %i.ib, i32 0, i32 %.sroa.80.4
  br i1 %.not112, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.preheader.preheader
  %spec.select357 = select i1 %i.ib, i32 0, i32 %.sroa.80.4
  %spec.select358 = select i1 %i.ib, i32 %.sroa.92.4, i32 0
  br label %bb.aj

.split:                                           ; preds = %bb.a
  %.not130 = icmp eq i32 %5, 2
  %i.ic = getelementptr inbounds nuw i8, ptr %i.i, i64 9232 ; 3 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !77 ; 2 uses
  br i1 %.not130, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %.preheader132, %.preheader.preheader
  %.sroa.14.2 = phi i32 [ %.sroa.14.0, %.preheader132 ], [ %.sroa.14.1, %.preheader.preheader ], [ %.sroa.14.1, %bb.ai ]
  %.sroa.69.0 = phi i32 [ %.sroa.69.4, %.preheader132 ], [ %.sroa.69.5, %.preheader.preheader ], [ %.sroa.69.5, %bb.ai ]
  %.sroa.80.0 = phi i32 [ %.sroa.80.4, %.preheader132 ], [ %.sroa.80.5, %.preheader.preheader ], [ %spec.select357, %bb.ai ] ; 2 uses
  %.sroa.92.0 = phi i32 [ %.sroa.92.4, %.preheader132 ], [ 0, %.preheader.preheader ], [ %spec.select358, %bb.ai ]
  %i.ie = phi <4 x i32> [ %i.gc, %.preheader132 ], [ %i.ia, %.preheader.preheader ], [ %i.ia, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.if = icmp eq i32 %spec.store.select124, 0    ; 2 uses
  %i.ig = icmp eq i32 %.sroa.14.2, 0              ; 2 uses
  %i.ih = icmp eq <4 x i32> %i.ie, zeroinitializer ; 2 uses
  %i.ii = icmp eq i32 %.sroa.69.0, 0              ; 2 uses
  %i.ij = icmp eq i32 %.sroa.92.0, 0              ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.i, i64 9232 ; 3 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !77 ; 2 uses
  br i1 %or.cond, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.split, %bb.aj
  %i.im = phi i32 [ %i.id, %.split ], [ %i.il, %bb.aj ] ; 2 uses
  %i.in = phi ptr [ %i.ic, %.split ], [ %i.ik, %bb.aj ]
  %.sroa.92.1339 = phi i1 [ true, %.split ], [ %i.ij, %bb.aj ]
  %.sroa.80.1333 = phi i32 [ 0, %.split ], [ %.sroa.80.0, %bb.aj ]
  %.sroa.69.1327 = phi i1 [ true, %.split ], [ %i.ii, %bb.aj ]
  %.sroa.14.3297 = phi i1 [ true, %.split ], [ %i.ig, %bb.aj ]
  %.sroa.0.2291 = phi i1 [ true, %.split ], [ %i.if, %bb.aj ]
  %i.io = phi <4 x i1> [ splat (i1 true), %.split ], [ %i.ih, %bb.aj ]
  %i.ip = icmp eq i32 %i.im, 2
  %spec.select.i = select i1 %i.ip, i32 3, i32 0
  br label %lame_apply_block_type.exit

bb.al:                                            ; preds = %.split, %bb.aj
  %i.iq = phi i32 [ %i.id, %.split ], [ %i.il, %bb.aj ] ; 2 uses
  %i.ir = phi ptr [ %i.ic, %.split ], [ %i.ik, %bb.aj ] ; 3 uses
  %.sroa.92.1340 = phi i1 [ true, %.split ], [ %i.ij, %bb.aj ] ; 3 uses
  %.sroa.80.1334 = phi i32 [ 0, %.split ], [ %.sroa.80.0, %bb.aj ] ; 4 uses
  %.sroa.69.1328 = phi i1 [ true, %.split ], [ %i.ii, %bb.aj ] ; 3 uses
  %.sroa.14.3298 = phi i1 [ true, %.split ], [ %i.ig, %bb.aj ] ; 3 uses
  %.sroa.0.2292 = phi i1 [ true, %.split ], [ %i.if, %bb.aj ] ; 3 uses
  %i.is = phi <4 x i1> [ splat (i1 true), %.split ], [ %i.ih, %bb.aj ] ; 3 uses
  switch i32 %i.iq, label %lame_apply_block_type.exit [
    i32 0, label %.thread
    i32 3, label %lame_apply_block_type.exit.thread
  ]

.thread:                                          ; preds = %bb.al
  store i32 1, ptr %0, align 8, !tbaa !55
  store i32 2, ptr %i.ir, align 4, !tbaa !77
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %i.it, align 4, !tbaa !55
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.iu, align 8, !tbaa !78
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.iv, align 4, !tbaa !55
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.iw, align 4, !tbaa !80
  br i1 %.sroa.0.2292, label %bb.an, label %bb.ap

lame_apply_block_type.exit.thread:                ; preds = %bb.al
  store i32 2, ptr %0, align 8, !tbaa !55
  store i32 2, ptr %i.ir, align 4, !tbaa !77
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %i.ix, align 4, !tbaa !55
  br label %.loopexit.loopexit

lame_apply_block_type.exit:                       ; preds = %bb.ak, %bb.al
  %i.iy = phi i32 [ %i.iq, %bb.al ], [ %i.im, %bb.ak ] ; 3 uses
  %i.iz = phi ptr [ %i.ir, %bb.al ], [ %i.in, %bb.ak ]
  %.sroa.92.1338 = phi i1 [ %.sroa.92.1340, %bb.al ], [ %.sroa.92.1339, %bb.ak ] ; 3 uses
  %.sroa.80.1332 = phi i32 [ %.sroa.80.1334, %bb.al ], [ %.sroa.80.1333, %bb.ak ] ; 5 uses
  %.sroa.69.1326 = phi i1 [ %.sroa.69.1328, %bb.al ], [ %.sroa.69.1327, %bb.ak ] ; 3 uses
  %.sroa.14.3296 = phi i1 [ %.sroa.14.3298, %bb.al ], [ %.sroa.14.3297, %bb.ak ] ; 3 uses
  %.sroa.0.2290 = phi i1 [ %.sroa.0.2292, %bb.al ], [ %.sroa.0.2291, %bb.ak ] ; 3 uses
  %.0.i = phi i32 [ 2, %bb.al ], [ %spec.select.i, %bb.ak ]
  %i.ja = phi <4 x i1> [ %i.is, %bb.al ], [ %i.io, %bb.ak ] ; 3 uses
  store i32 %i.iy, ptr %0, align 8, !tbaa !55
  store i32 %.0.i, ptr %i.iz, align 4, !tbaa !77
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %i.jb, align 4, !tbaa !55
  %.not114 = icmp eq i32 %i.iy, 2
  br i1 %.not114, label %.loopexit.loopexit, label %bb.am

bb.am:                                            ; preds = %lame_apply_block_type.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.jc, align 8, !tbaa !78
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.jd, align 4, !tbaa !55
  %i.je = icmp eq i32 %i.iy, 1
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %i.je, label %.loopexit, label %.split350

.split350:                                        ; preds = %bb.am
  store i32 1, ptr %i.jf, align 4, !tbaa !80
  br i1 %.sroa.0.2290, label %bb.an, label %bb.ap

.loopexit.loopexit:                               ; preds = %lame_apply_block_type.exit.thread, %lame_apply_block_type.exit
  %.sroa.92.1337 = phi i1 [ %.sroa.92.1340, %lame_apply_block_type.exit.thread ], [ %.sroa.92.1338, %lame_apply_block_type.exit ]
  %.sroa.80.1331 = phi i32 [ %.sroa.80.1334, %lame_apply_block_type.exit.thread ], [ %.sroa.80.1332, %lame_apply_block_type.exit ] ; 2 uses
  %.sroa.69.1325 = phi i1 [ %.sroa.69.1328, %lame_apply_block_type.exit.thread ], [ %.sroa.69.1326, %lame_apply_block_type.exit ]
  %.sroa.14.3295 = phi i1 [ %.sroa.14.3298, %lame_apply_block_type.exit.thread ], [ %.sroa.14.3296, %lame_apply_block_type.exit ]
  %.sroa.0.2289 = phi i1 [ %.sroa.0.2292, %lame_apply_block_type.exit.thread ], [ %.sroa.0.2290, %lame_apply_block_type.exit ]
  %i.jg = phi <4 x i1> [ %i.is, %lame_apply_block_type.exit.thread ], [ %i.ja, %lame_apply_block_type.exit ]
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 8, ptr %i.jh, align 8, !tbaa !78
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ji, align 4, !tbaa !80
  %i.jj = getelementptr inbounds nuw i8, ptr %i.i, i64 9228
  %i.jk = load i8, ptr %i.jj, align 4, !tbaa !81  ; 2 uses
  %i.jl = zext i8 %i.jk to i32                    ; 6 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  store i32 1, ptr %i.jm, align 4, !tbaa !55
  %i.jn = lshr i32 %i.jl, 1
  %.lobit = and i32 %i.jn, 1
  %spec.select.1 = xor i32 %.lobit, 1             ; 2 uses
  %i.jo = zext nneg i32 %spec.select.1 to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jo ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !55
  %i.jr = add nsw i32 %i.jq, 1
  store i32 %i.jr, ptr %i.jp, align 4, !tbaa !55
  %i.js = and i32 %i.jl, 4
  %.not115.2 = icmp eq i32 %i.js, 0
  %spec.select.2 = select i1 %.not115.2, i32 2, i32 %spec.select.1 ; 2 uses
  %i.jt = zext nneg i32 %spec.select.2 to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jt ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !55
  %i.jw = add nsw i32 %i.jv, 1
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !55
  %i.jx = and i32 %i.jl, 8
  %.not115.3 = icmp eq i32 %i.jx, 0
  %spec.select.3 = select i1 %.not115.3, i32 3, i32 %spec.select.2 ; 2 uses
  %i.jy = zext nneg i32 %spec.select.3 to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jy ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !55
  %i.kb = add nsw i32 %i.ka, 1
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !55
  %i.kc = and i32 %i.jl, 16
  %.not115.4 = icmp eq i32 %i.kc, 0
  %spec.select.4 = select i1 %.not115.4, i32 4, i32 %spec.select.3 ; 2 uses
  %i.kd = zext nneg i32 %spec.select.4 to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.kd ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !55
  %i.kg = add nsw i32 %i.kf, 1
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !55
  %i.kh = and i32 %i.jl, 32
  %.not115.5 = icmp eq i32 %i.kh, 0
  %spec.select.5 = select i1 %.not115.5, i32 5, i32 %spec.select.4 ; 2 uses
  %i.ki = zext nneg i32 %spec.select.5 to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.ki ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !55
  %i.kl = add nsw i32 %i.kk, 1
  store i32 %i.kl, ptr %i.kj, align 4, !tbaa !55
  %i.km = and i32 %i.jl, 64
  %.not115.6 = icmp eq i32 %i.km, 0
  %spec.select.6 = select i1 %.not115.6, i32 6, i32 %spec.select.5 ; 2 uses
  %i.kn = zext nneg i32 %spec.select.6 to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.kn ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !55
  %i.kq = add nsw i32 %i.kp, 1
  store i32 %i.kq, ptr %i.ko, align 4, !tbaa !55
  %.not115.7 = icmp sgt i8 %i.jk, -1
  %i.kr = zext nneg i32 %spec.select.6 to i64
  %i.ks = select i1 %.not115.7, i64 7, i64 %i.kr
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.ks ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !55
  %i.kv = add nsw i32 %i.ku, 1
  store i32 %i.kv, ptr %i.kt, align 4, !tbaa !55
  br i1 %.sroa.0.2289, label %bb.an, label %bb.ap

.loopexit:                                        ; preds = %bb.am
  store i32 0, ptr %i.jf, align 4, !tbaa !80
  br i1 %.sroa.0.2290, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.thread, %.split350, %.loopexit.loopexit, %.loopexit
  %.sroa.14.3293349 = phi i1 [ %.sroa.14.3295, %.loopexit.loopexit ], [ %.sroa.14.3296, %.loopexit ], [ %.sroa.14.3296, %.split350 ], [ %.sroa.14.3298, %.thread ] ; 2 uses
  %.sroa.69.1323344 = phi i1 [ %.sroa.69.1325, %.loopexit.loopexit ], [ %.sroa.69.1326, %.loopexit ], [ %.sroa.69.1326, %.split350 ], [ %.sroa.69.1328, %.thread ]
  %.sroa.80.1329342 = phi i32 [ %.sroa.80.1331, %.loopexit.loopexit ], [ %.sroa.80.1332, %.loopexit ], [ %.sroa.80.1332, %.split350 ], [ %.sroa.80.1334, %.thread ] ; 3 uses
  %.sroa.92.1335341 = phi i1 [ %.sroa.92.1337, %.loopexit.loopexit ], [ %.sroa.92.1338, %.loopexit ], [ %.sroa.92.1338, %.split350 ], [ %.sroa.92.1340, %.thread ]
  %i.kw = phi <4 x i1> [ %i.jg, %.loopexit.loopexit ], [ %i.ja, %.loopexit ], [ %i.ja, %.split350 ], [ %i.is, %.thread ] ; 4 uses
  %i.kx = extractelement <4 x i1> %i.kw, i64 0    ; 2 uses
  %i.ky = select i1 %.sroa.14.3293349, i1 %i.kx, i1 false
  %i.kz = extractelement <4 x i1> %i.kw, i64 1
  %i.la = select i1 %i.ky, i1 %i.kz, i1 false     ; 2 uses
  %.mux = select i1 %i.kx, i64 3, i64 2
  %.mux.mux = select i1 %.sroa.14.3293349, i64 %.mux, i64 1
  %i.lb = extractelement <4 x i1> %i.kw, i64 2    ; 2 uses
  %i.lc = select i1 %i.la, i1 %i.lb, i1 false
  %i.ld = extractelement <4 x i1> %i.kw, i64 3
  %i.le = select i1 %i.lc, i1 %i.ld, i1 false     ; 2 uses
  %.mux.mux.mux = select i1 %i.lb, i64 5, i64 4
  %.mux.mux.mux.mux = select i1 %i.la, i64 %.mux.mux.mux, i64 %.mux.mux
  %i.lf = select i1 %i.le, i1 %.sroa.69.1323344, i1 false
  %.mux.mux.mux.mux.mux = select i1 %i.le, i64 6, i64 %.mux.mux.mux.mux
  br i1 %i.lf, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.not116.7 = icmp eq i32 %.sroa.80.1329342, 0
  %spec.select363 = select i1 %.sroa.92.1335341, i64 0, i64 8
  %spec.select365 = select i1 %.not116.7, i64 %spec.select363, i64 7
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.thread, %.split350, %.loopexit.loopexit, %.loopexit
  %.sroa.80.1329343 = phi i32 [ %.sroa.80.1329342, %bb.ao ], [ %.sroa.80.1332, %.loopexit ], [ %.sroa.80.1329342, %bb.an ], [ %.sroa.80.1332, %.split350 ], [ %.sroa.80.1334, %.thread ], [ %.sroa.80.1331, %.loopexit.loopexit ]
  %.0104 = phi i64 [ %spec.select365, %bb.ao ], [ 0, %.loopexit ], [ %.mux.mux.mux.mux.mux, %bb.an ], [ 0, %.split350 ], [ 0, %.thread ], [ 0, %.loopexit.loopexit ]
  %i.lg = getelementptr inbounds nuw i8, ptr @window_grouping, i64 %.0104
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !58
  %i.li = getelementptr inbounds nuw i8, ptr %i.i, i64 9228
end_hunk_0
