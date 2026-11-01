Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 280
begin_hunk_0_@ma_spatializer_process_pcm_frames:bb.a
bb.j:                                             ; preds = %ma_spatializer_get_positioning.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.bk = atomicrmw volatile xchg ptr %i.bj, i32 1 acquire, align 4
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.loopexit388, label %.preheader.i.i.i262

.loopexit.i.i.i263:                               ; preds = %.lr.ph.i.i.i271, %.preheader.i.i.i262
  %i.bm = atomicrmw volatile xchg ptr %i.bj, i32 1 acquire, align 4
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.loopexit388, label %.preheader.i.i.i262

.preheader.i.i.i262:                              ; preds = %bb.j, %.loopexit.i.i.i263
  %i.bo = load atomic volatile i32, ptr %i.bj monotonic, align 4
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %.lr.ph.i.i.i271, label %.loopexit.i.i.i263

.lr.ph.i.i.i271:                                  ; preds = %.preheader.i.i.i262, %.lr.ph.i.i.i271
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.bq = load atomic volatile i32, ptr %i.bj monotonic, align 4
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %.lr.ph.i.i.i271, label %.loopexit.i.i.i263, !llvm.loop !1

.loopexit388:                                     ; preds = %.loopexit.i.i.i263, %bb.j
  %.sroa.03.0.copyload.i.i265 = load <2 x float>, ptr %i.bi, align 8, !tbaa !349 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i266 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload.i.i267 = load float, ptr %.sroa.24.0..sroa_idx.i.i266, align 8, !tbaa !349 ; 2 uses
  store atomic volatile i32 0, ptr %i.bj release, align 4
  store <2 x float> %.sroa.03.0.copyload.i.i265, ptr %5, align 8, !tbaa !349
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sroa.24.0.copyload.i.i267, ptr %.sroa.4108.0..sroa_idx, align 8, !tbaa !349
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.bu = atomicrmw volatile xchg ptr %i.bt, i32 1 acquire, align 4
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %ma_spatializer_get_direction.exit, label %.preheader.i.i.i272

.loopexit.i.i.i273:                               ; preds = %.lr.ph.i.i.i281, %.preheader.i.i.i272
  %i.bw = atomicrmw volatile xchg ptr %i.bt, i32 1 acquire, align 4
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %ma_spatializer_get_direction.exit, label %.preheader.i.i.i272

.preheader.i.i.i272:                              ; preds = %.loopexit388, %.loopexit.i.i.i273
  %i.by = load atomic volatile i32, ptr %i.bt monotonic, align 4
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %.lr.ph.i.i.i281, label %.loopexit.i.i.i273

.lr.ph.i.i.i281:                                  ; preds = %.preheader.i.i.i272, %.lr.ph.i.i.i281
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.ca = load atomic volatile i32, ptr %i.bt monotonic, align 4
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %.lr.ph.i.i.i281, label %.loopexit.i.i.i273, !llvm.loop !1

ma_spatializer_get_direction.exit:                ; preds = %.loopexit.i.i.i273, %.loopexit388
  %.sroa.03.0.copyload.i.i275 = load <2 x float>, ptr %i.bs, align 8, !tbaa !349
  %.sroa.24.0..sroa_idx.i.i276 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.24.0.copyload.i.i277 = load float, ptr %.sroa.24.0..sroa_idx.i.i276, align 8, !tbaa !349
  store atomic volatile i32 0, ptr %i.bt release, align 4
  store <2 x float> %.sroa.03.0.copyload.i.i275, ptr %6, align 8, !tbaa !349
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sroa.24.0.copyload.i.i277, ptr %.sroa.4102.0..sroa_idx, align 8, !tbaa !349
  br label %ma_spatializer_get_attenuation_model.exit

bb.k:                                             ; preds = %ma_spatializer_get_positioning.exit
  call void @ma_spatializer_get_relative_position_and_direction(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %.sroa.095.0.copyload.pre = load <2 x float>, ptr %5, align 8
  %.sroa.296.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.296.0.copyload.pre = load float, ptr %.sroa.296.0..sroa_idx.phi.trans.insert, align 8
  br label %ma_spatializer_get_attenuation_model.exit

ma_spatializer_get_attenuation_model.exit:        ; preds = %bb.k, %ma_spatializer_get_direction.exit
  %.sroa.296.0.copyload = phi float [ %.sroa.296.0.copyload.pre, %bb.k ], [ %.sroa.24.0.copyload.i.i267, %ma_spatializer_get_direction.exit ] ; 2 uses
  %.sroa.095.0.copyload = phi <2 x float> [ %.sroa.095.0.copyload.pre, %bb.k ], [ %.sroa.03.0.copyload.i.i265, %ma_spatializer_get_direction.exit ] ; 3 uses
  %.sroa.296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.04.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.095.0.copyload, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.095.0.copyload, %.sroa.095.0.copyload
  %i.cc = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cd = call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i.i.i, float %.sroa.04.0.vec.extract.i.i.i, float %i.cc)
  %i.ce = call float @llvm.fmuladd.f32(float %.sroa.296.0.copyload, float %.sroa.296.0.copyload, float %i.cd)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.ce) ; 10 uses
  %i.cf = load atomic i32, ptr %i.g seq_cst, align 8
  switch i32 %i.cf, label %ma_attenuation_inverse.exit [
    i32 1, label %bb.l
    i32 2, label %bb.n
    i32 3, label %bb.p
  ]

bb.l:                                             ; preds = %ma_spatializer_get_attenuation_model.exit
  %i.cg = fcmp ult float %i.aj, %i.am
  br i1 %i.cg, label %bb.m, label %ma_attenuation_inverse.exit

bb.m:                                             ; preds = %bb.l
  %i.ch = fcmp olt float %sqrt.i, %i.am
  %i.ci = select i1 %i.ch, float %sqrt.i, float %i.am ; 2 uses
  %i.cj = fcmp olt float %i.ci, %i.aj
  %..i = select i1 %i.cj, float %i.aj, float %i.ci
  %i.ck = fsub float %..i, %i.aj
  %i.cl = call float @llvm.fmuladd.f32(float %i.ap, float %i.ck, float %i.aj)
  %i.cm = fdiv float %i.aj, %i.cl
  br label %ma_attenuation_inverse.exit

bb.n:                                             ; preds = %ma_spatializer_get_attenuation_model.exit
  %i.cn = fcmp ult float %i.aj, %i.am
  br i1 %i.cn, label %bb.o, label %ma_attenuation_inverse.exit

bb.o:                                             ; preds = %bb.n
  %i.co = fcmp olt float %sqrt.i, %i.am
  %i.cp = select i1 %i.co, float %sqrt.i, float %i.am ; 2 uses
  %i.cq = fcmp olt float %i.cp, %i.aj
  %..i285 = select i1 %i.cq, float %i.aj, float %i.cp
  %i.cr = fsub float %..i285, %i.aj
  %i.cs = fmul float %i.cr, %i.ap
  %i.ct = fsub float %i.am, %i.aj
  %i.cu = fdiv float %i.cs, %i.ct
  %i.cv = fsub float 1.000000e+00, %i.cu
  br label %ma_attenuation_inverse.exit

bb.p:                                             ; preds = %ma_spatializer_get_attenuation_model.exit
  %i.cw = fcmp ult float %i.aj, %i.am
  br i1 %i.cw, label %bb.q, label %ma_attenuation_inverse.exit

bb.q:                                             ; preds = %bb.p
  %i.cx = fcmp olt float %sqrt.i, %i.am
  %i.cy = select i1 %i.cx, float %sqrt.i, float %i.am ; 2 uses
  %i.cz = fcmp olt float %i.cy, %i.aj
  %..i287 = select i1 %i.cz, float %i.aj, float %i.cy
  %i.da = fdiv float %..i287, %i.aj
  %i.db = fpext float %i.da to double
  %i.dc = fneg float %i.ap
  %i.dd = fpext float %i.dc to double
  %i.de = call double @pow(double noundef %i.db, double noundef %i.dd) #55
  %i.df = fptrunc double %i.de to float
  br label %ma_attenuation_inverse.exit

ma_attenuation_inverse.exit:                      ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %ma_spatializer_get_attenuation_model.exit
  %.0239 = phi float [ 1.000000e+00, %bb.n ], [ 1.000000e+00, %ma_spatializer_get_attenuation_model.exit ], [ 1.000000e+00, %bb.l ], [ %i.cm, %bb.m ], [ %i.cv, %bb.o ], [ %i.df, %bb.q ], [ 1.000000e+00, %bb.p ] ; 2 uses
  %i.dg = fcmp ogt float %sqrt.i, 1.000000e-03    ; 2 uses
  br i1 %i.dg, label %ma_spatializer_get_cone.exit, label %ma_spatializer_get_max_gain.exit

ma_spatializer_get_cone.exit:                     ; preds = %ma_attenuation_inverse.exit
  %i.dh = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %.sroa.0156.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !349 ; 2 uses
  %.sroa.10.0.copyload = load float, ptr %.sroa.296.0..sroa_idx, align 8, !tbaa !349
  %.sroa.0156.0.vec.extract = extractelement <2 x float> %.sroa.0156.0.copyload, i64 0
  %i.di = fmul float %i.dh, %.sroa.0156.0.vec.extract ; 2 uses
  %.sroa.0156.4.vec.extract = extractelement <2 x float> %.sroa.0156.0.copyload, i64 1
  %i.dj = fmul float %i.dh, %.sroa.0156.4.vec.extract ; 2 uses
  %i.dk = fmul float %i.dh, %.sroa.10.0.copyload  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dm = load atomic volatile i32, ptr %i.dl seq_cst, align 8
  %i.dn = bitcast i32 %i.dm to float              ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dp = load atomic volatile i32, ptr %i.do seq_cst, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dr = load atomic volatile i32, ptr %i.dq seq_cst, align 8
  %i.ds = bitcast i32 %i.dr to float              ; 2 uses
  %i.dt = fcmp olt float %i.dn, f0x40C90FDA
  br i1 %i.dt, label %bb.r, label %ma_calculate_angular_gain.exit

bb.r:                                             ; preds = %ma_spatializer_get_cone.exit
  %.sroa.277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.277.0.copyload = load float, ptr %.sroa.277.0..sroa_idx, align 8
  %.sroa.076.0.copyload = load <2 x float>, ptr %6, align 8 ; 2 uses
  %i.du = fneg float %i.dk
  %i.dv = fneg float %i.dj
  %i.dw = fneg float %i.di
  %i.dx = bitcast i32 %i.dp to float
  %i.dy = fmul nnan float %i.dn, 5.000000e-01
  %i.dz = fpext float %i.dy to double
  %i.ea = fsub double f0x3FF921FB54442D18, %i.dz
  %i.eb = call double @sin(double noundef %i.ea) #55
  %i.ec = fptrunc double %i.eb to float           ; 2 uses
  %i.ed = fmul float %i.dx, 5.000000e-01
  %i.ee = fpext float %i.ed to double
  %i.ef = fsub double f0x3FF921FB54442D18, %i.ee
  %i.eg = call double @sin(double noundef %i.ef) #55
  %i.eh = fptrunc double %i.eg to float           ; 3 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.076.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.076.0.copyload, i64 1
  %i.ei = fmul float %.sroa.04.4.vec.extract.i.i, %i.dv
  %i.ej = call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i.i, float %i.dw, float %i.ei)
  %i.ek = call float @llvm.fmuladd.f32(float %.sroa.277.0.copyload, float %i.du, float %i.ej) ; 3 uses
  %i.el = fcmp ogt float %i.ek, %i.ec
  br i1 %i.el, label %ma_calculate_angular_gain.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = fcmp ogt float %i.ek, %i.eh
  br i1 %i.em, label %bb.t, label %ma_calculate_angular_gain.exit

bb.t:                                             ; preds = %bb.s
  %i.en = fsub float %i.ek, %i.eh
  %i.eo = fsub float %i.ec, %i.eh
  %i.ep = fdiv float %i.en, %i.eo                 ; 2 uses
  %i.eq = fsub float 1.000000e+00, %i.ep
  %i.er = call float @llvm.fmuladd.f32(float %i.ds, float %i.eq, float %i.ep)
  br label %ma_calculate_angular_gain.exit

ma_calculate_angular_gain.exit:                   ; preds = %ma_spatializer_get_cone.exit, %bb.r, %bb.s, %bb.t
  %.0.i291 = phi float [ %i.ds, %bb.s ], [ 1.000000e+00, %bb.r ], [ %i.er, %bb.t ], [ 1.000000e+00, %ma_spatializer_get_cone.exit ]
  %i.es = fmul float %.0239, %.0.i291             ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.eu = load float, ptr %i.et, align 4, !tbaa !486 ; 2 uses
  %i.ev = fcmp olt float %i.eu, f0x40C90FDA
  br i1 %i.ev, label %bb.u, label %ma_spatializer_get_max_gain.exit

bb.u:                                             ; preds = %ma_calculate_angular_gain.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !483
  %i.ey = icmp eq i32 %i.ex, 0
  %.sroa.5.0 = select i1 %i.ey, float -1.000000e+00, float 1.000000e+00
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fa = load float, ptr %i.ez, align 8, !tbaa !487
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %8 = load float, ptr %7, align 4, !tbaa !488    ; 2 uses
  %9 = fmul nnan float %i.eu, 5.000000e-01
  %10 = fpext float %9 to double
  %11 = fsub double f0x3FF921FB54442D18, %10
  %i.fb = call double @sin(double noundef %11) #55
  %i.fc = fptrunc double %i.fb to float           ; 2 uses
  %12 = fmul float %i.fa, 5.000000e-01
  %13 = fpext float %12 to double
  %14 = fsub double f0x3FF921FB54442D18, %13
  %i.fd = call double @sin(double noundef %14) #55
  %i.fe = fptrunc double %i.fd to float           ; 3 uses
  %i.ff = fmul float %i.dj, 0.000000e+00
  %i.fg = call float @llvm.fmuladd.f32(float %i.di, float 0.000000e+00, float %i.ff)
  %i.fh = call float @llvm.fmuladd.f32(float %.sroa.5.0, float %i.dk, float %i.fg) ; 3 uses
  %i.fi = fcmp ogt float %i.fh, %i.fc
  br i1 %i.fi, label %ma_calculate_angular_gain.exit297, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fj = fcmp ogt float %i.fh, %i.fe
  br i1 %i.fj, label %bb.w, label %ma_calculate_angular_gain.exit297

bb.w:                                             ; preds = %bb.v
  %i.fk = fsub float %i.fh, %i.fe
  %i.fl = fsub float %i.fc, %i.fe
  %i.fm = fdiv float %i.fk, %i.fl                 ; 2 uses
  %i.fn = fsub float 1.000000e+00, %i.fm
  %i.fo = call float @llvm.fmuladd.f32(float %8, float %i.fn, float %i.fm)
  br label %ma_calculate_angular_gain.exit297

ma_calculate_angular_gain.exit297:                ; preds = %bb.u, %bb.v, %bb.w
  %.0.i292 = phi float [ %8, %bb.v ], [ 1.000000e+00, %bb.u ], [ %i.fo, %bb.w ]
  %i.fp = fmul float %i.es, %.0.i292
  br label %ma_spatializer_get_max_gain.exit

ma_spatializer_get_max_gain.exit:                 ; preds = %ma_attenuation_inverse.exit, %ma_calculate_angular_gain.exit, %ma_calculate_angular_gain.exit297
  %.0238375 = phi float [ %sqrt.i, %ma_calculate_angular_gain.exit ], [ %sqrt.i, %ma_calculate_angular_gain.exit297 ], [ 0.000000e+00, %ma_attenuation_inverse.exit ]
  %.2 = phi float [ %i.es, %ma_calculate_angular_gain.exit ], [ %i.fp, %ma_calculate_angular_gain.exit297 ], [ %.0239, %ma_attenuation_inverse.exit ] ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.fr = load atomic volatile i32, ptr %i.fq seq_cst, align 4
  %i.fs = bitcast i32 %i.fr to float
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.fu = load atomic volatile i32, ptr %i.ft seq_cst, align 8
  %i.fv = bitcast i32 %i.fu to float
  %i.fw = fcmp olt float %.2, %i.fv
  br i1 %i.fw, label %bb.x, label %ma_spatializer_get_max_gain.exit301

ma_spatializer_get_max_gain.exit301:              ; preds = %ma_spatializer_get_max_gain.exit
  %i.fx = load atomic volatile i32, ptr %i.ft seq_cst, align 8
  %i.fy = bitcast i32 %i.fx to float
  br label %bb.x

bb.x:                                             ; preds = %ma_spatializer_get_max_gain.exit, %ma_spatializer_get_max_gain.exit301
  %i.fz = phi float [ %i.fy, %ma_spatializer_get_max_gain.exit301 ], [ %.2, %ma_spatializer_get_max_gain.exit ]
  %i.ga = fcmp olt float %i.fz, %i.fs
  br i1 %i.ga, label %ma_spatializer_get_min_gain.exit303, label %ma_spatializer_get_max_gain.exit305

ma_spatializer_get_min_gain.exit303:              ; preds = %bb.x
  %i.gb = load atomic volatile i32, ptr %i.fq seq_cst, align 4
  %i.gc = bitcast i32 %i.gb to float
  br label %bb.y

ma_spatializer_get_max_gain.exit305:              ; preds = %bb.x
  %i.gd = load atomic volatile i32, ptr %i.ft seq_cst, align 8
  %i.ge = bitcast i32 %i.gd to float
  %i.gf = fcmp olt float %.2, %i.ge
  br i1 %i.gf, label %bb.y, label %ma_spatializer_get_max_gain.exit307

ma_spatializer_get_max_gain.exit307:              ; preds = %ma_spatializer_get_max_gain.exit305
  %i.gg = load atomic volatile i32, ptr %i.ft seq_cst, align 8
  %i.gh = bitcast i32 %i.gg to float
  br label %bb.y

bb.y:                                             ; preds = %ma_spatializer_get_max_gain.exit305, %ma_spatializer_get_max_gain.exit307, %ma_spatializer_get_min_gain.exit303
  %i.gi = phi float [ %i.gc, %ma_spatializer_get_min_gain.exit303 ], [ %i.gh, %ma_spatializer_get_max_gain.exit307 ], [ %.2, %ma_spatializer_get_max_gain.exit305 ] ; 2 uses
  %.not392 = icmp eq i32 %i.af, 0                 ; 2 uses
  br i1 %.not392, label %ma_spatializer_listener_is_enabled.exit309, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !503 ; 2 uses
  %wide.trip.count = zext i32 %i.af to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.af, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gi, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %index ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store <4 x float> %broadcast.splat, ptr %i.gl, align 4, !tbaa !349
  store <4 x float> %broadcast.splat, ptr %i.gm, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gn = icmp eq i64 %index.next, %n.vec
  br i1 %i.gn, label %middle.block, label %vector.body, !llvm.loop !1925

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %ma_spatializer_listener_is_enabled.exit309, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv
  store float %i.gi, ptr %i.go, align 4, !tbaa !349
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ma_spatializer_listener_is_enabled.exit309, label %scalar.ph, !llvm.loop !1926

ma_spatializer_listener_is_enabled.exit309:       ; preds = %scalar.ph, %middle.block, %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !482
  %.not = icmp eq i32 %i.gq, 0
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %ma_spatializer_listener_is_enabled.exit309
  call fastcc void @ma_channel_map_apply_f32(ptr noundef %2, ptr noundef %i.f, i32 noundef %i.af, ptr noundef %3, ptr noundef %i.d, i32 noundef %i.ag, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %ma_silence_pcm_frames.exit318

bb.aa:                                            ; preds = %ma_spatializer_listener_is_enabled.exit309
  %i.gr = load i32, ptr %i.ae, align 4, !tbaa !506
  %i.gs = shl i32 %i.gr, 2
  %i.gt = zext i32 %i.gs to i64
  %i.gu = mul i64 %4, %i.gt                       ; 2 uses
  %.not.i13.i310 = icmp eq i64 %i.gu, 0
  br i1 %.not.i13.i310, label %ma_silence_pcm_frames.exit318, label %.lr.ph.i311

.lr.ph.i311:                                      ; preds = %bb.aa, %ma_zero_memory_default.exit.i.i316
  %.0.i15.i312 = phi ptr [ %i.gw, %ma_zero_memory_default.exit.i.i316 ], [ %2, %bb.aa ] ; 3 uses
  %.08.i14.i313 = phi i64 [ %i.gv, %ma_zero_memory_default.exit.i.i316 ], [ %i.gu, %bb.aa ] ; 2 uses
  %spec.store.select.i.i314 = call i64 @llvm.umin.i64(i64 %.08.i14.i313, i64 4294967295) ; 3 uses
  %.not.i315 = icmp eq ptr %.0.i15.i312, null
  br i1 %.not.i315, label %ma_zero_memory_default.exit.i.i316, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i311
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i312, i8 0, i64 %spec.store.select.i.i314, i1 false)
  br label %ma_zero_memory_default.exit.i.i316

ma_zero_memory_default.exit.i.i316:               ; preds = %bb.ab, %.lr.ph.i311
  %i.gv = sub nuw i64 %.08.i14.i313, %spec.store.select.i.i314 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.i15.i312, i64 %spec.store.select.i.i314
  %.not.i.i317 = icmp eq i64 %i.gv, 0
  br i1 %.not.i.i317, label %ma_silence_pcm_frames.exit318, label %.lr.ph.i311, !llvm.loop !7

ma_silence_pcm_frames.exit318:                    ; preds = %ma_zero_memory_default.exit.i.i316, %bb.aa, %bb.z
  br i1 %i.dg, label %bb.ac, label %.loopexit387

bb.ac:                                            ; preds = %ma_silence_pcm_frames.exit318
  %.sroa.051.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !349 ; 2 uses
  %.sroa.8.0.copyload = load float, ptr %.sroa.296.0..sroa_idx, align 8, !tbaa !349
  %i.gx = fdiv float 1.000000e+00, %.0238375      ; 3 uses
  %.sroa.051.0.vec.extract = extractelement <2 x float> %.sroa.051.0.copyload, i64 0
  %i.gy = fmul float %i.gx, %.sroa.051.0.vec.extract
  %.sroa.051.4.vec.extract = extractelement <2 x float> %.sroa.051.0.copyload, i64 1
  %i.gz = fmul float %i.gx, %.sroa.051.4.vec.extract
  %i.ha = fmul float %i.gx, %.sroa.8.0.copyload
  br i1 %.not392, label %.loopexit387, label %.lr.ph391

.lr.ph391:                                        ; preds = %bb.ac
  %i.hb = icmp eq ptr %i.f, null
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 176
  %wide.trip.count399 = zext i32 %i.af to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph391, %ma_is_spatial_channel_position.exit.thread379
  %indvars.iv396 = phi i64 [ 0, %.lr.ph391 ], [ %indvars.iv.next397, %ma_is_spatial_channel_position.exit.thread379 ] ; 4 uses
  br i1 %i.hb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hf = trunc nuw i64 %indvars.iv396 to i32
  %i.hg = call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.af, i32 noundef %i.hf)
  br label %ma_channel_map_get_channel.exit

bb.af:                                            ; preds = %bb.ad
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv396
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !119
  br label %ma_channel_map_get_channel.exit

ma_channel_map_get_channel.exit:                  ; preds = %bb.ae, %bb.af
  %.0.i320 = phi i8 [ %i.hg, %bb.ae ], [ %i.hi, %bb.af ] ; 4 uses
  switch i8 %.0.i320, label %bb.ag [
    i8 5, label %ma_is_spatial_channel_position.exit.thread379
    i8 1, label %ma_is_spatial_channel_position.exit.thread379
    i8 0, label %ma_is_spatial_channel_position.exit.thread379
  ]

bb.ag:                                            ; preds = %ma_channel_map_get_channel.exit
  %i.hj = icmp ugt i8 %.0.i320, 19
  br i1 %i.hj, label %ma_is_spatial_channel_position.exit.thread379, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ag
  %i.hk = zext nneg i8 %.0.i320 to i64            ; 2 uses
  %i.hl = shl nuw nsw i64 1, %i.hk                ; 2 uses
  %i.hm = and i64 %i.hl, 777180
  %or.cond383 = icmp eq i64 %i.hm, 0
  br i1 %or.cond383, label %ma_is_spatial_channel_position.exit, label %ma_spatializer_get_directional_attenuation_factor.exit

ma_is_spatial_channel_position.exit:              ; preds = %.preheader.i
  %i.hn = and i64 %i.hl, 263168
  %.not20.i = icmp eq i64 %i.hn, 0
  %i.ho = icmp samesign ult i8 %.0.i320, 13
  %or.cond.i.not = and i1 %.not20.i, %i.ho
  br i1 %or.cond.i.not, label %ma_is_spatial_channel_position.exit.thread379, label %ma_spatializer_get_directional_attenuation_factor.exit

ma_spatializer_get_directional_attenuation_factor.exit: ; preds = %.preheader.i, %ma_is_spatial_channel_position.exit
  %i.hp = getelementptr inbounds nuw [12 x i8], ptr @g_maChannelDirections, i64 %i.hk ; 2 uses
  %.sroa.04.0.copyload.i = load <2 x float>, ptr %i.hp, align 4, !tbaa !349 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %.sroa.3.0.copyload.i = load float, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !349
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.04.0.copyload.i, i64 0
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.04.0.copyload.i, i64 1
  %i.hq = fmul float %i.gz, %.sroa.01.4.vec.extract.i
  %i.hr = call float @llvm.fmuladd.f32(float %i.gy, float %.sroa.01.0.vec.extract.i, float %i.hq)
  %i.hs = call float @llvm.fmuladd.f32(float %i.ha, float %.sroa.3.0.copyload.i, float %i.hr)
  %i.ht = load atomic volatile i32, ptr %i.hc seq_cst, align 8
  %i.hu = bitcast i32 %i.ht to float
  %i.hv = fadd float %i.hs, -1.000000e+00
  %i.hw = fmul float %i.hv, %i.hu
  %i.hx = fadd float %i.hw, 1.000000e+00
  %i.hy = fadd float %i.hx, 1.000000e+00
  %i.hz = fmul float %i.hy, 5.000000e-01
  br label %ma_is_spatial_channel_position.exit.thread379
end_hunk_0
begin_hunk_1_@ma_dr_wav_guid_equal:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !119
  %.not.9 = icmp eq i8 %i.aj, %i.al
  br i1 %.not.9, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.an = load i8, ptr %i.am, align 1, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !119
  %.not.10 = icmp eq i8 %i.an, %i.ap
  br i1 %.not.10, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !119
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.at = load i8, ptr %i.as, align 1, !tbaa !119
  %.not.11 = icmp eq i8 %i.ar, %i.at
  br i1 %.not.11, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.av = load i8, ptr %i.au, align 1, !tbaa !119
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !119
  %.not.12 = icmp eq i8 %i.av, %i.ax
  br i1 %.not.12, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !119
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !119
  %.not.13 = icmp eq i8 %i.az, %i.bb
  br i1 %.not.13, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !119
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !119
  %.not.14 = icmp eq i8 %i.bd, %i.bf
  br i1 %.not.14, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !119
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !119
  %.not.15 = icmp eq i8 %i.bh, %i.bj
  %spec.select = zext i1 %.not.15 to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %bb.b ], [ %spec.select, %bb.p ], [ 0, %bb.c ], [ 0, %bb.k ], [ 0, %bb.d ], [ 0, %bb.o ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.g ], [ 0, %bb.l ], [ 0, %bb.h ], [ 0, %bb.m ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ma_dr_wav_fourcc_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !119
  %i.b = zext i8 %i.a to i32
  %i.c = load i8, ptr %1, align 1, !tbaa !119
  %i.d = sext i8 %i.c to i32
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !119
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !119
  %i.k = sext i8 %i.j to i32
  %i.l = icmp eq i32 %i.h, %i.k
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !119
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !119
  %i.r = sext i8 %i.q to i32
  %i.s = icmp eq i32 %i.o, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !119
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !119
  %i.y = sext i8 %i.x to i32
  %i.z = icmp eq i32 %i.v, %i.y
  %i.aa = zext i1 %i.z to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.ab = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.aa, %bb.d ]
  ret i32 %i.ab
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_dr_flac_version(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !118
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq ptr %1, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 13, ptr %1, align 4, !tbaa !118
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not9 = icmp eq ptr %2, null
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 3, ptr %2, align 4, !tbaa !118
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @ma_dr_flac_version_string() local_unnamed_addr #1 {
bb.a:
  ret ptr @.str.178
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @ma_dr_flac__on_read_stdio(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #9 {
bb.a:
  %i.a = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %0)
  ret i64 %i.a
}

; Function Attrs: nofree nounwind uwtable
define internal noundef range(i32 0, 2) i32 @ma_dr_flac__on_seek_stdio(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #9 {
bb.a:
  %switch.selectcmp = icmp eq i32 %2, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  %switch.selectcmp5 = icmp eq i32 %2, 1
  %switch.select6 = select i1 %switch.selectcmp5, i32 1, i32 %switch.select
  %i.a = sext i32 %1 to i64
  %i.b = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.a, i32 noundef %switch.select6)
  %i.c = icmp eq i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @ma_dr_flac__on_tell_stdio(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #9 {
bb.a:
  %i.a = tail call i64 @ftell(ptr noundef %0)
  store i64 %i.a, ptr %1, align 8, !tbaa !164
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @ma_dr_flac_open_file_with_metadata(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_fopen.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.176) ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ma_fopen.exit.thread, label %ma_fopen.exit

ma_fopen.exit:                                    ; preds = %bb.b
  %i.d = tail call fastcc ptr @ma_dr_flac_open_with_metadata_private(ptr noundef nonnull @ma_dr_flac__on_read_stdio, ptr noundef nonnull @ma_dr_flac__on_seek_stdio, ptr noundef nonnull @ma_dr_flac__on_tell_stdio, ptr noundef %1, i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %ma_fopen.exit.thread

bb.c:                                             ; preds = %ma_fopen.exit
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %ma_fopen.exit.thread

ma_fopen.exit.thread:                             ; preds = %bb.b, %bb.a, %ma_fopen.exit, %bb.c
  %.0 = phi ptr [ %i.d, %ma_fopen.exit ], [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ma_dr_flac_open_with_metadata_private(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %8 = alloca %struct.ma_dr_flac_metadata, align 8 ; 31 uses
  %i.b = alloca [4 x i8], align 1                 ; 9 uses
  %i.c = alloca [6 x i8], align 1                 ; 6 uses
  %9 = alloca %struct.ma_dr_flac_init_info, align 8 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #55
  %.b.i = load i1, ptr @ma_dr_flac__init_cpu_caps.isCPUCapsInitialized, align 4
  br i1 %.b.i, label %ma_dr_flac__init_cpu_caps.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 -2147483647, i32 0) #55, !srcloc !2942
  %i.e = extractvalue { i32, i32, i32, i32 } %i.d, 2
  %i.f = lshr i32 %i.e, 5
  %.lobit.i = and i32 %i.f, 1
  store i32 %.lobit.i, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  store i1 true, ptr @ma_dr_flac__gIsSSE2Supported, align 4
  store i1 true, ptr @ma_dr_flac__init_cpu_caps.isCPUCapsInitialized, align 4
  br label %ma_dr_flac__init_cpu_caps.exit

ma_dr_flac__init_cpu_caps.exit:                   ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.g = icmp eq ptr %0, null
  %i.h = icmp eq ptr %1, null
  %or.cond3.i = or i1 %i.g, %i.h
  br i1 %or.cond3.i, label %ma_dr_flac__init_private.exit.thread, label %bb.c

bb.c:                                             ; preds = %ma_dr_flac__init_cpu_caps.exit
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4576) %i.i, i8 0, i64 4576, i1 false)
  store ptr %0, ptr %9, align 8, !tbaa !2943
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %1, ptr %i.j, align 8, !tbaa !2944
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %2, ptr %i.k, align 8, !tbaa !2945
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %3, ptr %i.l, align 8, !tbaa !2946
  store i32 %4, ptr %i.i, align 8, !tbaa !1094
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %5, ptr %i.m, align 8, !tbaa !2947
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store ptr %6, ptr %i.n, align 8, !tbaa !2948
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  store ptr %0, ptr %i.o, align 8, !tbaa !2949
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 104
  store ptr %1, ptr %i.p, align 8, !tbaa !2950
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 112
  store ptr %2, ptr %i.q, align 8, !tbaa !2951
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 120
  store ptr %5, ptr %i.r, align 8, !tbaa !2952
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 144
  store i32 512, ptr %i.s, align 8, !tbaa !738
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 148
  store i32 64, ptr %i.t, align 4, !tbaa !739
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = icmp ne i32 %4, 2                        ; 2 uses
  %i.w = zext i1 %i.v to i32                      ; 2 uses
  %i.x = call i64 %0(ptr noundef %5, ptr noundef nonnull %i.b, i64 noundef 4) #55, !inline_history !2932
  %.not123.i = icmp eq i64 %i.x, 4
  br i1 %.not123.i, label %.lr.ph.i, label %ma_dr_flac__init_private.exit.thread

.lr.ph.i:                                         ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !1095
  %i.ae = add i64 %i.ad, 4
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !1095
  %i.af = load i8, ptr %i.b, align 1, !tbaa !119  ; 3 uses
  %i.ag = icmp eq i8 %i.af, 73
  %i.ah = load i8, ptr %i.z, align 1              ; 3 uses
  %i.ai = icmp eq i8 %i.ah, 68
  %or.cond7.i = select i1 %i.ag, i1 %i.ai, i1 false
  %i.aj = load i8, ptr %i.aa, align 1             ; 3 uses
  %i.ak = icmp eq i8 %i.aj, 51
  %or.cond11.i = select i1 %or.cond7.i, i1 %i.ak, i1 false
  br i1 %or.cond11.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.al = call i64 %0(ptr noundef %5, ptr noundef nonnull %i.c, i64 noundef 6) #55, !inline_history !2932
  %.not115.i = icmp eq i64 %i.al, 6
  br i1 %.not115.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.am = load i64, ptr %i.y, align 8, !tbaa !1095
  %i.an = add i64 %i.am, 6
  store i64 %i.an, ptr %i.y, align 8, !tbaa !1095
  %i.ao = load i8, ptr %i.ab, align 1, !tbaa !119
  %.0.copyload.i = load i32, ptr %i.ac, align 1
  %i.ap = call i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 4 uses
  %i.aq = lshr i32 %i.ap, 3
  %i.ar = and i32 %i.aq, 266338304
  %i.as = lshr i32 %i.ap, 2
  %i.at = and i32 %i.as, 2080768
  %i.au = lshr i32 %i.ap, 1
  %i.av = and i32 %i.au, 16256
  %i.aw = and i32 %i.ap, 127
  %i.ax = or disjoint i32 %i.at, %i.aw
  %i.ay = or disjoint i32 %i.ax, %i.ar
  %i.az = or disjoint i32 %i.ay, %i.av            ; 2 uses
  %i.ba = and i8 %i.ao, 16
  %.not116.i = icmp eq i8 %i.ba, 0
  %i.bb = add nuw nsw i32 %i.az, 10
  %spec.select.i = select i1 %.not116.i, i32 %i.az, i32 %i.bb ; 2 uses
  %i.bc = call i32 %1(ptr noundef %5, i32 noundef %spec.select.i, i32 noundef 1) #55, !inline_history !2932
  %.not117.i = icmp eq i32 %i.bc, 0
  br i1 %.not117.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = zext nneg i32 %spec.select.i to i64
  %i.be = load i64, ptr %i.y, align 8, !tbaa !1095
  %i.bf = add i64 %i.be, %i.bd
  store i64 %i.bf, ptr %i.y, align 8, !tbaa !1095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  %i.bg = call i64 %0(ptr noundef %5, ptr noundef nonnull %i.b, i64 noundef 4) #55, !inline_history !2932
  %.not.i = icmp eq i64 %i.bg, 4
  br i1 %.not.i, label %bb.d, label %ma_dr_flac__init_private.exit.thread

bb.h:                                             ; preds = %bb.d
  %10 = icmp eq i8 %i.af, 102
  %11 = icmp eq i8 %i.ah, 76
  %or.cond15.i = select i1 %10, i1 %11, i1 false
  %12 = icmp eq i8 %i.aj, 97
  %or.cond19.i = select i1 %or.cond15.i, i1 %12, i1 false
  %13 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %14 = load i8, ptr %13, align 1                 ; 2 uses
  %i.bh = icmp eq i8 %14, 67
  %or.cond23.i = select i1 %or.cond19.i, i1 %i.bh, i1 false
  br i1 %or.cond23.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = call fastcc i32 @ma_dr_flac__init_private__native(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %3, ptr noundef %5, ptr noundef %6, i32 noundef %i.w)
  br label %ma_dr_flac__init_private.exit

bb.j:                                             ; preds = %bb.h
  %15 = icmp eq i8 %i.af, 79
  %16 = icmp eq i8 %i.ah, 103
  %or.cond27.i = select i1 %15, i1 %16, i1 false
  %17 = icmp eq i8 %i.aj, 103
  %or.cond31.i = select i1 %or.cond27.i, i1 %17, i1 false
  %i.bj = icmp eq i8 %14, 83
  %or.cond35.i = select i1 %or.cond31.i, i1 %i.bj, i1 false
  br i1 %or.cond35.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bk = call fastcc i32 @ma_dr_flac__init_private__ogg(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %6)
  br label %ma_dr_flac__init_private.exit

bb.l:                                             ; preds = %bb.j
  br i1 %i.v, label %bb.m, label %ma_dr_flac__init_private.exit.thread

bb.m:                                             ; preds = %bb.l
  switch i32 %4, label %ma_dr_flac__init_private.exit.thread [
    i32 0, label %bb.n
    i32 1, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.bl = call fastcc i32 @ma_dr_flac__init_private__native(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %3, ptr noundef %5, ptr noundef %6, i32 noundef %i.w)
  br label %ma_dr_flac__init_private.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = call fastcc i32 @ma_dr_flac__init_private__ogg(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %6)
  br label %ma_dr_flac__init_private.exit

.critedge.i:                                      ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %ma_dr_flac__init_private.exit.thread

ma_dr_flac__init_private.exit.thread:             ; preds = %bb.g, %bb.l, %ma_dr_flac__init_cpu_caps.exit, %.critedge.i, %bb.m, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %ma_dr_flac__free_from_callbacks.exit149

ma_dr_flac__init_private.exit:                    ; preds = %bb.i, %bb.k, %bb.n, %bb.o
  %.2.i = phi i32 [ %i.bk, %bb.k ], [ %i.bl, %bb.n ], [ %i.bm, %bb.o ], [ %i.bi, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  %.not = icmp eq i32 %.2.i, 0
  br i1 %.not, label %ma_dr_flac__free_from_callbacks.exit149, label %bb.p

bb.p:                                             ; preds = %ma_dr_flac__init_private.exit
  %.not129 = icmp eq ptr %7, null
  br i1 %.not129, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.83.0.copyload = load ptr, ptr %.sroa.83.0..sroa_idx, align 8, !tbaa !134 ; 2 uses
  %i.bn = icmp eq ptr %.sroa.83.0.copyload, null
  br i1 %i.bn, label %ma_dr_flac__free_from_callbacks.exit149, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.70.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.70.0.copyload = load ptr, ptr %.sroa.70.0..sroa_idx, align 8, !tbaa !134 ; 2 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.57.0.copyload = load ptr, ptr %.sroa.57.0..sroa_idx, align 8, !tbaa !134 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !134
  %i.bo = icmp eq ptr %.sroa.57.0.copyload, null
  %i.bp = icmp eq ptr %.sroa.70.0.copyload, null
  %or.cond = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond, label %ma_dr_flac__free_from_callbacks.exit149, label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  %.sroa.83.0 = phi ptr [ %.sroa.83.0.copyload, %bb.r ], [ @ma_dr_flac__free_default, %bb.p ] ; 30 uses
  %.sroa.70.0 = phi ptr [ %.sroa.70.0.copyload, %bb.r ], [ @ma_dr_flac__realloc_default, %bb.p ] ; 15 uses
  %.sroa.57.0 = phi ptr [ %.sroa.57.0.copyload, %bb.r ], [ @ma_dr_flac__malloc_default, %bb.p ] ; 15 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.r ], [ null, %bb.p ] ; 52 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !1096
  %i.bs = zext i16 %i.br to i64                   ; 2 uses
  %i.bt = and i64 %i.bs, 15
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = lshr i64 %i.bs, 4
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = zext i1 %i.bu to i32
  %.0121 = add nuw nsw i32 %i.bx, %i.bw
  %i.by = shl nuw nsw i32 %.0121, 6
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 60 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !1097
  %i.cb = zext i8 %i.ca to i32
  %i.cc = mul nuw nsw i32 %i.by, %i.cb            ; 4 uses
  %i.cd = add nuw nsw i32 %i.cc, 4560
  %i.ce = load i32, ptr %i.i, align 8, !tbaa !1094
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %.not.i137 = icmp eq ptr %.sroa.57.0, null
  br i1 %.not.i137, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = call ptr %.sroa.57.0(i64 noundef 65952, ptr noundef %.sroa.0.0) #55, !inline_history !93
  br label %ma_dr_flac__malloc_from_callbacks.exit

bb.v:                                             ; preds = %bb.t
  %.not12.i = icmp eq ptr %.sroa.70.0, null
  br i1 %.not12.i, label %ma_dr_flac__free_from_callbacks.exit149, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = call ptr %.sroa.70.0(ptr noundef null, i64 noundef 65952, ptr noundef %.sroa.0.0) #55, !inline_history !93
  br label %ma_dr_flac__malloc_from_callbacks.exit

ma_dr_flac__malloc_from_callbacks.exit:           ; preds = %bb.u, %bb.w
  %.0.i = phi ptr [ %i.ch, %bb.w ], [ %i.cg, %bb.u ] ; 11 uses
  %i.ci = icmp eq ptr %.0.i, null
  br i1 %i.ci, label %ma_dr_flac__free_from_callbacks.exit149, label %bb.x

bb.x:                                             ; preds = %ma_dr_flac__malloc_from_callbacks.exit
  %narrow = add nuw nsw i32 %i.cc, 70512
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65904) %i.cj, i8 0, i64 65904, i1 false)
  store ptr %0, ptr %.0.i, align 8, !tbaa !724
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %1, ptr %i.ck, align 8, !tbaa !746
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %2, ptr %i.cl, align 8, !tbaa !2953
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %5, ptr %i.cm, align 8, !tbaa !721
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 4312
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !1098 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !744
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !1099
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 4304
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !1100
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !1101
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 4320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.cu, ptr noundef nonnull align 8 dereferenceable(288) %i.cv, i64 288, i1 false), !tbaa.struct !1102
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.s
  %.0122 = phi i32 [ %narrow, %bb.x ], [ %i.cd, %bb.s ] ; 2 uses
  %.0120 = phi ptr [ %.0.i, %bb.x ], [ null, %bb.s ] ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 92
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !1103
  %.not130 = icmp eq i32 %i.cx, 0
  br i1 %.not130, label %bb.ea, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %i.i, align 8, !tbaa !1094
  %i.cz = icmp eq i32 %i.cy, 1                    ; 3 uses
  %.0116 = select i1 %i.cz, ptr @ma_dr_flac__on_read_ogg, ptr %0 ; 18 uses
  %.0115 = select i1 %i.cz, ptr @ma_dr_flac__on_seek_ogg, ptr %1 ; 5 uses
  %.0113 = select i1 %i.cz, ptr %.0120, ptr %5    ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.da = call i64 %.0116(ptr noundef %.0113, ptr noundef nonnull %i.a, i64 noundef 4) #55, !inline_history !2933
  %.not.i225.i = icmp eq i64 %i.da, 4
  br i1 %.not.i225.i, label %.lr.ph230.i, label %ma_dr_flac__read_and_decode_block_header.exit.thread.i

.lr.ph230.i:                                      ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %.not.i138 = icmp eq ptr %3, null               ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 8 uses
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 7 uses
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 60 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 68 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 164 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 168 ; 2 uses
  %.not.i470.i = icmp eq ptr %.sroa.57.0, null    ; 9 uses
  %.not12.i472.i = icmp eq ptr %.sroa.70.0, null  ; 9 uses
  br label %bb.aa

ma_dr_flac__read_and_decode_block_header.exit.thread.i: ; preds = %.critedge417.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.loopexit312

bb.aa:                                            ; preds = %.critedge417.i, %.lr.ph230.i
  %.0329228.i = phi i32 [ 0, %.lr.ph230.i ], [ %.133080.i, %.critedge417.i ] ; 18 uses
  %.0332227.i = phi i64 [ 0, %.lr.ph230.i ], [ %.133379.i, %.critedge417.i ] ; 18 uses
  %.0335226.i = phi i64 [ 42, %.lr.ph230.i ], [ %i.lw, %.critedge417.i ]
  %i.du = load i32, ptr %i.a, align 4, !tbaa !118
  %.fr121.i = freeze i32 %i.du
  %i.dv = call i32 @llvm.bswap.i32(i32 %.fr121.i) ; 3 uses
  %i.dw = lshr i32 %i.dv, 24                      ; 2 uses
  %i.dx = trunc nuw i32 %i.dw to i8
  %i.dy = and i8 %i.dx, 127
  %i.dz = and i32 %i.dv, 16777215                 ; 29 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.ea = add i64 %.0335226.i, 4                  ; 7 uses
  %i.eb = and i32 %i.dw, 127
  store i32 %i.eb, ptr %8, align 8, !tbaa !1105
  store i32 0, ptr %i.db, align 4, !tbaa !1106
  store i64 %i.ea, ptr %i.dc, align 8, !tbaa !2954
  store ptr null, ptr %i.dd, align 8, !tbaa !1107
  switch i8 %i.dy, label %bb.dp [
    i8 2, label %bb.ab
    i8 3, label %bb.ak
    i8 4, label %bb.ar
    i8 5, label %bb.bi
end_hunk_1
