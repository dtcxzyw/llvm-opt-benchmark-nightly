Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiScene?download=true
inline.NumInlined: 525
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZTv0_n24_N8GUISceneD0Ev:bb.a
_ZN8GUISceneD0Ev.exit:                            ; preds = %_ZN8GUIScene7setMeshEPN5scene13IAnimatedMeshE.exit.i.i.i, %bb.c
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(436) %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT8GUIScene, i64 8)) #26, !inline_history !130
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(436) %i.d, i64 noundef 456) #28, !inline_history !131
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN5scene21AnimatedMeshSceneNode13animateJointsEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUIScene10setTextureEjPN5video8ITextureE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(436) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(127) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(432) %i.b, i32 noundef %1) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i32 1, ptr %i.g, align 8, !tbaa !139
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store float 5.000000e-01, ptr %i.h, align 8, !tbaa !140
  store ptr %2, ptr %i.f, align 8, !tbaa !146
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 126 ; 2 uses
  %i.j = load i8, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  store i8 0, ptr %i.k, align 2, !tbaa !147
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  store i8 0, ptr %i.l, align 1, !tbaa !148
  %i.m = and i8 %i.j, -93
  %i.n = or disjoint i8 %i.m, 68
  store i8 %i.n, ptr %i.i, align 2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUIScene4drawEv(ptr noundef nonnull align 8 dereferenceable(436) %0) unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %"class.core::rect", align 4        ; 4 uses
  %3 = alloca %"class.core::rect", align 16       ; 4 uses
  %4 = alloca %"class.core::rect", align 16       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 688
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i16 noundef zeroext 2, i32 -16777216, float noundef 1.000000e+00, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.f = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %1) #26 ; 0 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !151
  %i.h = mul i64 %i.g, 1000
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !152
  %i.k = udiv i64 %i.j, 1000000
  %i.l = add i64 %i.k, %i.h                       ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !153  ; 4 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ult i64 %i.l, %i.n
  %i.o = sub nuw i64 %i.l, %i.n
  %i.p = sub nuw i64 %i.n, %i.l
  %.0.i = select i1 %.not.i, i64 %i.p, i64 %i.o
  %i.q = uitofp nsz i64 %.0.i to float
  %i.r = fmul nnan nsz float %i.q, -3.000000e-02
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi float [ %i.r, %bb.b ], [ -0.000000e+00, %bb.a ]
  store i64 %i.l, ptr %i.m, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 352
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef nonnull align 4 dereferenceable(16) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !65
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load <2 x i64>, ptr %i.y, align 8, !tbaa !64
  store <2 x i64> %i.z, ptr %3, align 16
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 344
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !56
  %.not38 = icmp eq i32 %i.ae, 0
  br i1 %.not38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !74 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 176
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.am = load <2 x i64>, ptr %i.al, align 8, !tbaa !64
  store <2 x i64> %i.am, ptr %4, align 16
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !74 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an) ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %i.ad, align 8, !tbaa !64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 160
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull %0, i32 %.sroa.01.0.copyload, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.copyload.i12 = load i64, ptr %i.y, align 8, !tbaa !64 ; 2 uses
  %.sroa.2.0.copyload.i14 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !64 ; 2 uses
  %i.av = sub i64 %.sroa.2.0.copyload.i14, %.sroa.0.0.copyload.i12
  %.sroa.5.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i14, 32
  %.sroa.5.12.extract.trunc = trunc nuw i64 %.sroa.5.12.extract.shift to i32
  %.sroa.035.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i12, 32
  %.sroa.035.4.extract.trunc = trunc nuw i64 %.sroa.035.4.extract.shift to i32
  %i.aw = sub nsw i32 %.sroa.5.12.extract.trunc, %.sroa.035.4.extract.trunc
  %.sroa.0.0.extract.trunc = trunc i64 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !58 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) ; 2 uses
  %i.bd = sitofp nsz i32 %.sroa.0.0.extract.trunc to float
  %i.be = sitofp nsz i32 %i.aw to float
  %i.bf = fdiv nsz float %i.bd, %i.be
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 416
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(233) %i.bc, float noundef %i.bf)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !89
  %.not5 = icmp eq ptr %i.bk, null
  br i1 %.not5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bl = load ptr, ptr %i.ax, align 8, !tbaa !58 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef ptr %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef null, i32 noundef -1) ; 3 uses
  store ptr %i.bp, ptr %i.bj, align 8, !tbaa !89
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.br, ptr noundef nonnull align 4 dereferenceable(12) %i.bq, i64 12, i1 false), !tbaa.struct !90
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 256
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(218) %i.bp), !inline_history !154
  %i.bv = load ptr, ptr %i.bj, align 8, !tbaa !89 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 232
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call { <2 x float>, float } %i.by(ptr noundef nonnull align 8 dereferenceable(218) %i.bv), !inline_history !154 ; 2 uses
  %.fca.0.extract.i.i = extractvalue { <2 x float>, float } %i.bz, 0
  %.fca.1.extract.i.i = extractvalue { <2 x float>, float } %i.bz, 1
  store <2 x float> %.fca.0.extract.i.i, ptr %i.bq, align 4, !tbaa !59
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 388
  store float %.fca.1.extract.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.br, ptr noundef nonnull align 4 dereferenceable(12) %i.bq, i64 12, i1 false), !tbaa.struct !90
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !61 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 216
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call noundef nonnull align 4 dereferenceable(12) ptr %i.ce(ptr noundef nonnull align 8 dereferenceable(218) %i.cb), !inline_history !149
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cg, ptr noundef nonnull align 4 dereferenceable(12) %i.cf, i64 12, i1 false), !tbaa.struct !90
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 429
  store i8 1, ptr %i.ch, align 1, !tbaa !91
  %i.ci = load float, ptr %i.cg, align 8, !tbaa !92
  %i.cj = load float, ptr %i.bq, align 4, !tbaa !92
  %i.ck = fsub nsz float %i.ci, %i.cj             ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cn = load <2 x float>, ptr %i.cl, align 4, !tbaa !59
  %i.co = load <2 x float>, ptr %i.cm, align 8, !tbaa !59
  %i.cp = fsub nsz <2 x float> %i.cn, %i.co       ; 3 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.cp, %i.cp
  %i.cq = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cr = call nsz float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cq)
  %i.cs = call nsz noundef float @llvm.sqrt.f32(float %i.cr)
  %i.ct = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cu = insertelement <2 x float> %i.ct, float %i.ck, i64 1
  %i.cv = fpext nsz <2 x float> %i.cu to <2 x double>
  %i.cw = fpext nsz <2 x float> %i.cp to <2 x double>
  %i.cx = call nsz <2 x double> @llvm.atan2.v2f64(<2 x double> %i.cv, <2 x double> %i.cw)
  %i.cy = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> splat (double f0x404CA5DC1A63C1F8), <2 x double> <double -9.000000e+01, double -0.000000e+00>) ; 2 uses
  %i.cz = fptrunc nsz <2 x double> %i.cy to <2 x float> ; 2 uses
  %i.da = fcmp nsz olt <2 x double> %i.cy, splat (double f0xB690000000000000)
  %i.db = fadd nsz <2 x float> %i.cz, splat (float 3.600000e+02)
  %i.dc = select <2 x i1> %i.da, <2 x float> %i.db, <2 x float> %i.cz ; 3 uses
  %i.dd = fcmp nsz ult <2 x float> %i.dc, splat (float 3.600000e+02)
  %i.de = fadd nsz <2 x float> %i.dc, splat (float -3.600000e+02)
  %i.df = select <2 x i1> %i.dd, <2 x float> %i.dc, <2 x float> %i.de
  call void @_ZN8GUIScene17setCameraRotationEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(436) %0, <2 x float> %i.df, float 0.000000e+00)
  %i.dg = load ptr, ptr %i.ca, align 8, !tbaa !61 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !15
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 464
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(233) %i.dg, i1 noundef zeroext true)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @_ZN8GUIScene10cameraLoopEv(ptr noundef nonnull align 8 dereferenceable(436) %0)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 430
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !155, !range !93, !noundef !94
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.dp = load float, ptr %i.dn, align 8, !tbaa !92
  %i.dq = load float, ptr %i.do, align 4, !tbaa !92
  %i.dr = fsub nsz float %i.dp, %i.dq             ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.du = fpext nsz float %i.dr to double
  %i.dv = load <2 x float>, ptr %i.ds, align 4, !tbaa !59
  %i.dw = load <2 x float>, ptr %i.dt, align 8, !tbaa !59
  %i.dx = fsub nsz <2 x float> %i.dv, %i.dw       ; 3 uses
  %i.dy = fpext nsz <2 x float> %i.dx to <2 x double> ; 2 uses
  %i.dz = extractelement <2 x double> %i.dy, i64 1
  %i.ea = call nsz double @llvm.atan2.f64(double %i.du, double %i.dz)
  %i.eb = fmul nsz double %i.ea, f0x404CA5DC1A63C1F8
  %foldExtExtBinop41 = fmul nsz <2 x float> %i.dx, %i.dx
  %i.ec = extractelement <2 x float> %foldExtExtBinop41, i64 1
  %i.ed = call nsz float @llvm.fmuladd.f32(float %i.dr, float %i.dr, float %i.ec)
  %i.ee = call nsz noundef float @llvm.sqrt.f32(float %i.ed)
  %i.ef = fpext nsz float %i.ee to double
  %i.eg = extractelement <2 x double> %i.dy, i64 0
  %i.eh = call nsz double @llvm.atan2.f64(double %i.ef, double %i.eg)
  %i.ei = call nsz double @llvm.fmuladd.f64(double %i.eh, double f0x404CA5DC1A63C1F8, double -9.000000e+01)
  %i.ej = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.ei, i64 1 ; 2 uses
  %i.el = fptrunc nsz <2 x double> %i.ek to <2 x float> ; 2 uses
  %i.em = fcmp nsz olt <2 x double> %i.ek, splat (double f0xB690000000000000)
  %i.en = fadd nsz <2 x float> %i.el, splat (float 3.600000e+02)
  %i.eo = select <2 x i1> %i.em, <2 x float> %i.en, <2 x float> %i.el ; 3 uses
  %i.ep = fcmp nsz ult <2 x float> %i.eo, splat (float 3.600000e+02)
  %i.eq = fadd nsz <2 x float> %i.eo, splat (float -3.600000e+02)
  %i.er = select <2 x i1> %i.ep, <2 x float> %i.eo, <2 x float> %i.eq ; 2 uses
  %i.es = extractelement <2 x float> %i.er, i64 0
  %i.et = fadd nsz float %.0, %i.es
  %i.eu = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i.i22 = insertelement <2 x float> %i.eu, float %i.et, i64 1
  call void @_ZN8GUIScene17setCameraRotationEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(436) %0, <2 x float> %.sroa.0.4.vec.insert.i.i22, float 0.000000e+00)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ev = load ptr, ptr %i.ax, align 8, !tbaa !58 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !15
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 144
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.ev)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 431 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !156, !range !93, !noundef !94
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !85
  %.not6 = icmp eq ptr %i.fd, null
  br i1 %.not6, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.fh = load float, ptr %i.ff, align 8, !tbaa !92
  %i.fi = load float, ptr %i.fg, align 4, !tbaa !92
  %i.fj = fsub nsz float %i.fh, %i.fi             ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.fm = load <2 x float>, ptr %i.fk, align 4, !tbaa !59
  %i.fn = load <2 x float>, ptr %i.fl, align 8, !tbaa !59
  %i.fo = fsub nsz <2 x float> %i.fm, %i.fn       ; 3 uses
  %foldExtExtBinop43 = fmul nsz <2 x float> %i.fo, %i.fo
  %i.fp = extractelement <2 x float> %foldExtExtBinop43, i64 1
  %i.fq = call nsz float @llvm.fmuladd.f32(float %i.fj, float %i.fj, float %i.fp)
  %i.fr = call nsz noundef float @llvm.sqrt.f32(float %i.fq)
  %i.fs = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.fj, i64 1
  %i.fu = fpext nsz <2 x float> %i.ft to <2 x double>
  %i.fv = fpext nsz <2 x float> %i.fo to <2 x double>
  %i.fw = call nsz <2 x double> @llvm.atan2.v2f64(<2 x double> %i.fu, <2 x double> %i.fv)
  %i.fx = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> splat (double f0x404CA5DC1A63C1F8), <2 x double> <double -9.000000e+01, double -0.000000e+00>) ; 2 uses
  %i.fy = load <2 x float>, ptr %i.fe, align 4, !tbaa !59
  %i.fz = fptrunc nsz <2 x double> %i.fx to <2 x float> ; 2 uses
  %i.ga = fcmp nsz olt <2 x double> %i.fx, splat (double f0xB690000000000000)
  %i.gb = fadd nsz <2 x float> %i.fz, splat (float 3.600000e+02)
  %i.gc = select <2 x i1> %i.ga, <2 x float> %i.gb, <2 x float> %i.fz ; 3 uses
  %i.gd = fcmp nsz ult <2 x float> %i.gc, splat (float 3.600000e+02)
  %i.ge = fadd nsz <2 x float> %i.gc, splat (float -3.600000e+02)
  %i.gf = select <2 x i1> %i.gd, <2 x float> %i.gc, <2 x float> %i.ge
  %i.gg = fadd nsz <2 x float> %i.fy, %i.gf
  call void @_ZN8GUIScene17setCameraRotationEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(436) %0, <2 x float> %i.gg, float 0.000000e+00)
  call void @_ZN8GUIScene19calcOptimalDistanceEv(ptr noundef nonnull align 8 dereferenceable(436) %0)
  store i8 0, ptr %i.ez, align 1, !tbaa !156
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.gh = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !15
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 344
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUIScene12updateCameraEPN5scene10ISceneNodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(436) initializes((336, 344)) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false), !tbaa.struct !90
  %i.d = load ptr, ptr %1, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(218) %1), !inline_history !95
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call { <2 x float>, float } %i.j(ptr noundef nonnull align 8 dereferenceable(218) %i.g), !inline_history !95 ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.k, 0
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.k, 1
  store <2 x float> %.fca.0.extract.i, ptr %i.b, align 4, !tbaa !59
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 388
  store float %.fca.1.extract.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false), !tbaa.struct !90
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.p(ptr noundef nonnull align 8 dereferenceable(218) %i.m), !inline_history !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) %i.q, i64 12, i1 false), !tbaa.struct !90
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 429
  store i8 1, ptr %i.s, align 1, !tbaa !91
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUIScene10cameraLoopEv(ptr noundef nonnull align 8 dereferenceable(436) initializes((368, 380)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(218) %i.b), !inline_history !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !tbaa.struct !90
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false), !tbaa.struct !90
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !89   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(218) %i.k), !inline_history !95
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !89   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 232
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call { <2 x float>, float } %i.r(ptr noundef nonnull align 8 dereferenceable(218) %i.o), !inline_history !95 ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.s, 0 ; 7 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.s, 1 ; 5 uses
  store <2 x float> %.fca.0.extract.i, ptr %i.h, align 4, !tbaa !59
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 388
  store float %.fca.1.extract.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !59
  %i.t = extractelement <2 x float> %.fca.0.extract.i, i64 0
  %i.u = load float, ptr %i.i, align 8, !tbaa !92
  %i.v = fcmp nsz oeq float %i.u, %i.t
  br i1 %i.v, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.w = extractelement <2 x float> %.fca.0.extract.i, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.y = load float, ptr %i.x, align 4, !tbaa !96
  %i.z = fcmp nsz oeq float %i.w, %i.y
  br i1 %i.z, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !60
  %i.ac = fcmp nsz une float %.fca.1.extract.i, %i.ab
  br i1 %i.ac, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit, %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 429
  store i8 1, ptr %i.ad, align 1, !tbaa !91
  br label %bb.d

bb.c:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 429
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !91, !range !93
  %i.ae = trunc nuw i8 %.pre to i1
  br i1 %i.ae, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.thread, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 429
  %i.ag = load <2 x float>, ptr %i.g, align 8, !tbaa !59
  %i.ah = fsub nsz <2 x float> %i.ag, %.fca.0.extract.i ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !60
  %i.ak = fsub nsz float %i.aj, %.fca.1.extract.i ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.ah, %i.ah
  %i.al = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.am = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.an = tail call nsz float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.al)
  %i.ao = tail call nsz float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.an) ; 2 uses
  %i.ap = fcmp nsz oeq float %i.ao, 0.000000e+00
  br i1 %i.ap, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = fpext nsz float %i.ao to double
  %i.ar = tail call nsz double @llvm.sqrt.f64(double %i.aq)
  %i.as = fdiv nsz double 1.000000e+00, %i.ar     ; 2 uses
  %i.at = fpext nsz <2 x float> %i.ah to <2 x double>
  %i.au = insertelement <2 x double> poison, double %i.as, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fmul nsz <2 x double> %i.av, %i.at
  %i.ax = fptrunc nsz <2 x double> %i.aw to <2 x float>
  %i.ay = fpext nsz float %i.ak to double
  %i.az = fmul nsz double %i.as, %i.ay
  %i.ba = fptrunc nsz double %i.az to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.d, %bb.e
  %.sroa.9.0 = phi nsz float [ %i.ak, %bb.d ], [ %i.ba, %bb.e ]
  %.sroa.028.0 = phi nsz <2 x float> [ %i.ah, %bb.d ], [ %i.ax, %bb.e ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !54 ; 2 uses
  %i.bd = fmul nsz float %.sroa.9.0, %i.bc
  %i.be = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul nsz <2 x float> %i.bf, %.sroa.028.0
  %i.bh = fadd nsz <2 x float> %.fca.0.extract.i, %i.bg ; 3 uses
  %i.bi = fadd nsz float %.fca.1.extract.i, %i.bd ; 2 uses
  store <2 x float> %i.bh, ptr %i.g, align 8, !tbaa !59
  store float %i.bi, ptr %i.ai, align 8, !tbaa !59
  %foldExtExtBinop44 = fsub nsz <2 x float> %i.bh, %.fca.0.extract.i
  %i.bj = extractelement <2 x float> %foldExtExtBinop44, i64 0 ; 3 uses
  %foldExtExtBinop46 = fsub nsz <2 x float> %i.bh, %.fca.0.extract.i
  %i.bk = extractelement <2 x float> %foldExtExtBinop46, i64 1
  %i.bl = fsub nsz float %i.bi, %.fca.1.extract.i ; 3 uses
  %i.bm = fpext nsz float %i.bj to double
  %i.bn = fpext nsz float %i.bl to double
  %i.bo = tail call nsz double @llvm.atan2.f64(double %i.bm, double %i.bn)
  %i.bp = fmul nsz double %i.bo, f0x404CA5DC1A63C1F8 ; 2 uses
  %i.bq = fptrunc nsz double %i.bp to float       ; 2 uses
  %i.br = fcmp nsz olt double %i.bp, f0xB690000000000000
  %i.bs = fadd nsz float %i.bq, 3.600000e+02
  %storemerge.i.i = select i1 %i.br, float %i.bs, float %i.bq ; 3 uses
  %i.bt = fcmp nsz ult float %storemerge.i.i, 3.600000e+02
  %i.bu = fadd nsz float %storemerge.i.i, -3.600000e+02
  %storemerge7.i.i = select i1 %i.bt, float %storemerge.i.i, float %i.bu
  %i.bv = fmul nsz float %i.bl, %i.bl
  %i.bw = tail call nsz float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %i.bv)
  %i.bx = tail call nsz noundef float @llvm.sqrt.f32(float %i.bw)
  %i.by = fpext nsz float %i.bx to double
  %i.bz = fpext nsz float %i.bk to double
  %i.ca = tail call nsz double @llvm.atan2.f64(double %i.by, double %i.bz)
  %i.cb = tail call nsz double @llvm.fmuladd.f64(double %i.ca, double f0x404CA5DC1A63C1F8, double -9.000000e+01) ; 2 uses
  %i.cc = fptrunc nsz double %i.cb to float       ; 2 uses
  %i.cd = fcmp nsz olt double %i.cb, f0xB690000000000000
  %i.ce = fadd nsz float %i.cc, 3.600000e+02
  %storemerge8.i.i = select i1 %i.cd, float %i.ce, float %i.cc ; 3 uses
  %i.cf = fcmp nsz ult float %storemerge8.i.i, 3.600000e+02
  %i.cg = fadd nsz float %storemerge8.i.i, -3.600000e+02
  %storemerge9.i.i = select i1 %i.cf, float %storemerge8.i.i, float %i.cg ; 3 uses
  %i.ch = fcmp nsz olt float %storemerge9.i.i, 9.000000e+01
  br i1 %i.ch, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.ci = fcmp nsz ogt float %storemerge9.i.i, 6.000000e+01
  br i1 %i.ci, label %bb.h, label %_ZN8GUIScene13correctBoundsERN4core8vector3dIfEE.exit.thread

bb.g:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.cj = fcmp nsz olt float %storemerge9.i.i, 3.000000e+02
  br i1 %i.cj, label %bb.h, label %_ZN8GUIScene13correctBoundsERN4core8vector3dIfEE.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi float [ 6.000000e+01, %bb.f ], [ 3.000000e+02, %bb.g ]
  %i.ck = insertelement <2 x float> poison, float %.sink.i, i64 0
  %.sroa.0.0.vec.insert = insertelement <2 x float> %i.ck, float %storemerge7.i.i, i64 1
  tail call void @_ZN8GUIScene17setCameraRotationEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(436) %0, <2 x float> %.sroa.0.0.vec.insert, float 0.000000e+00)
  br label %_ZN8GUIScene13correctBoundsERN4core8vector3dIfEE.exit.thread

_ZN8GUIScene13correctBoundsERN4core8vector3dIfEE.exit.thread: ; preds = %bb.f, %bb.g, %bb.h
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 224
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(218) %i.cl, ptr noundef nonnull align 4 dereferenceable(12) %i.g)
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 336
  %i.cs = load ptr, ptr %i.cr, align 8
  tail call void %i.cs(ptr noundef nonnull align 8 dereferenceable(233) %i.cp, ptr noundef nonnull align 4 dereferenceable(12) %i.h)
  store i8 0, ptr %i.af, align 1, !tbaa !91
  br label %bb.i

bb.i:                                             ; preds = %_ZN8GUIScene13correctBoundsERN4core8vector3dIfEE.exit.thread, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8GUIScene19calcOptimalDistanceEv(ptr noundef nonnull align 8 dereferenceable(436) %0) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %1 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %2 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %3 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %4 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 4 dereferenceable(24) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(432) %i.b) ; 6 uses
  %.sroa.033.0.copyload = load float, ptr %i.f, align 4, !tbaa !59
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !59
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !59
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !59
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !59
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !59
  %i.g = fsub nsz float %.sroa.6.0.copyload, %.sroa.033.0.copyload ; 2 uses
  %i.h = fsub nsz float %.sroa.7.0.copyload, %.sroa.4.0.copyload ; 2 uses
  %i.i = fsub nsz float %.sroa.8.0.copyload, %.sroa.5.0.copyload ; 2 uses
  %i.j = fcmp nsz ogt float %i.g, %i.i
  %i.k = select nsz i1 %i.j, float %i.g, float %i.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 432
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(233) %i.m) ; 5 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !61   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 376
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call nsz noundef float %i.u(ptr noundef nonnull align 8 dereferenceable(233) %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.w, align 8, !tbaa !60
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 92 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 44 ; 3 uses
  %i.aa = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(12) %4) ; 0 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %4, align 8 ; 2 uses
  %.sroa.2.0.copyload.i = load float, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.ab, align 8, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  %i.ad = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %3) ; 0 uses
  %.sroa.0.0.copyload.i35 = load <2 x float>, ptr %3, align 8 ; 2 uses
  %.sroa.2.0.copyload.i36 = load float, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !59
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.ae, align 8, !tbaa !60
  %i.af = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 0 uses
  %.sroa.0.0.copyload.i39 = load <2 x float>, ptr %2, align 8 ; 2 uses
  %.sroa.2.0.copyload.i40 = load float, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !59
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.ag, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 76
  %i.ai = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(12) %1) ; 0 uses
  %.sroa.0.0.copyload.i43 = load <2 x float>, ptr %1, align 8 ; 2 uses
  %.sroa.2.0.copyload.i44 = load float, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i47 = load i64, ptr %i.aj, align 8, !tbaa !64 ; 2 uses
  %.sroa.2.0.copyload.i48 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !64 ; 2 uses
  %.sroa.5.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i48 to i32
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i47 to i32
  %i.ak = sub nsw i32 %.sroa.5.8.extract.trunc, %.sroa.0.0.extract.trunc
  %.sroa.5.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i48, 32
  %.sroa.5.12.extract.trunc = trunc nuw i64 %.sroa.5.12.extract.shift to i32
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i47, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.al = sub nsw i32 %.sroa.5.12.extract.trunc, %.sroa.0.4.extract.trunc
  %i.am = insertelement <2 x i32> poison, i32 %i.ak, i64 0
  %i.an = insertelement <2 x i32> %i.am, i32 %i.al, i64 1
  %i.ao = sitofp nsz <2 x i32> %i.an to <2 x float>
  %i.ap = insertelement <2 x float> poison, float %i.k, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.h, i64 1
  %i.ar = fdiv nsz <2 x float> %i.ao, %i.aq       ; 2 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  %i.at = extractelement <2 x float> %i.ar, i64 1
  %i.au = fcmp nsz olt float %i.as, %i.at
  br i1 %i.au, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.av = fsub nsz float %.sroa.2.0.copyload.i, %.sroa.2.0.copyload.i36 ; 2 uses
  %foldExtExtBinop = fsub nsz <2 x float> %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i35
  %i.aw = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop70 = fsub nsz <2 x float> %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i35 ; 2 uses
  %foldExtExtBinop72 = fmul nsz <2 x float> %foldExtExtBinop70, %foldExtExtBinop70
  %i.ax = extractelement <2 x float> %foldExtExtBinop72, i64 1
  %i.ay = call nsz float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float %i.ax)
  %i.az = call nsz float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.ay)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ba = fsub nsz float %.sroa.2.0.copyload.i40, %.sroa.2.0.copyload.i44 ; 2 uses
  %foldExtExtBinop74 = fsub nsz <2 x float> %.sroa.0.0.copyload.i39, %.sroa.0.0.copyload.i43
  %i.bb = extractelement <2 x float> %foldExtExtBinop74, i64 0 ; 2 uses
  %foldExtExtBinop76 = fsub nsz <2 x float> %.sroa.0.0.copyload.i39, %.sroa.0.0.copyload.i43 ; 2 uses
  %foldExtExtBinop78 = fmul nsz <2 x float> %foldExtExtBinop76, %foldExtExtBinop76
  %i.bc = extractelement <2 x float> %foldExtExtBinop78, i64 1
  %i.bd = call nsz float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.bc)
  %i.be = call nsz float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.bd)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink68 = phi float [ %i.be, %bb.c ], [ %i.az, %bb.b ]
  %.sink66 = phi float [ %i.h, %bb.c ], [ %i.k, %bb.b ]
  %i.bf = call nsz noundef float @llvm.sqrt.f32(float %.sink68)
  %i.bg = fdiv nsz float %i.bf, %i.v
  %i.bh = fdiv nsz float %.sink66, %i.bg
  %i.bi = call nsz float @llvm.fmuladd.f32(float %i.k, float 5.000000e-01, float %i.bh)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 352
  store float %i.bi, ptr %i.bj, align 8, !tbaa !54
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 429
  store i8 1, ptr %i.bk, align 1, !tbaa !91
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8GUIScene7OnEventERK6SEvent(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.b = load i8, ptr %i.a, align 4, !tbaa !157, !range !93, !noundef !94
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i32, ptr %1, align 8
  %i.e = icmp eq i32 %i.d, 2
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !72
  switch i32 %i.h, label %bb.f [
    i32 0, label %bb.c
    i32 8, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.j = load <2 x i32>, ptr %i.f, align 8, !tbaa !72
  %i.k = sitofp nsz <2 x i32> %i.j to <2 x float>
  store <2 x float> %i.k, ptr %i.i, align 4, !tbaa !59
  br label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !160
  %i.n = trunc i32 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 2 uses
  %i.p = load <2 x i32>, ptr %i.f, align 8, !tbaa !72
  %i.q = sitofp nsz <2 x i32> %i.p to <2 x float> ; 3 uses
  store <2 x float> %i.q, ptr %i.o, align 4, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.u = load float, ptr %i.s, align 8, !tbaa !92
  %i.v = load float, ptr %i.t, align 4, !tbaa !92
  %i.w = fsub nsz float %i.u, %i.v                ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.z = load <2 x float>, ptr %i.x, align 4, !tbaa !59
  %i.aa = load <2 x float>, ptr %i.y, align 8, !tbaa !59
  %i.ab = fsub nsz <2 x float> %i.z, %i.aa        ; 3 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.ab, %i.ab
  %i.ac = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ad = tail call nsz float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.ac)
  %i.ae = tail call nsz noundef float @llvm.sqrt.f32(float %i.ad)
  %i.af = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.w, i64 1
  %i.ah = fpext nsz <2 x float> %i.ag to <2 x double>
  %i.ai = fpext nsz <2 x float> %i.ab to <2 x double>
  %i.aj = tail call nsz <2 x double> @llvm.atan2.v2f64(<2 x double> %i.ah, <2 x double> %i.ai)
  %i.ak = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> splat (double f0x404CA5DC1A63C1F8), <2 x double> <double -9.000000e+01, double -0.000000e+00>) ; 2 uses
  %i.al = load <2 x float>, ptr %i.r, align 4, !tbaa !59 ; 2 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> %i.q, <2 x i32> <i32 1, i32 2>
  %i.an = shufflevector <2 x float> %i.q, <2 x float> %i.al, <2 x i32> <i32 1, i32 2>
  %i.ao = fsub nsz <2 x float> %i.am, %i.an
  %i.ap = fptrunc nsz <2 x double> %i.ak to <2 x float> ; 2 uses
  %i.aq = fcmp nsz olt <2 x double> %i.ak, splat (double f0xB690000000000000)
  %i.ar = fadd nsz <2 x float> %i.ap, splat (float 3.600000e+02)
  %i.as = select <2 x i1> %i.aq, <2 x float> %i.ar, <2 x float> %i.ap ; 3 uses
  %i.at = fcmp nsz ult <2 x float> %i.as, splat (float 3.600000e+02)
  %i.au = fadd nsz <2 x float> %i.as, splat (float -3.600000e+02)
  %i.av = select <2 x i1> %i.at, <2 x float> %i.as, <2 x float> %i.au
  %i.aw = fadd nsz <2 x float> %i.ao, %i.av
  tail call void @_ZN8GUIScene17setCameraRotationEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(436) %0, <2 x float> %i.aw, float 0.000000e+00)
  %i.ax = load i64, ptr %i.o, align 4, !tbaa !59
  store i64 %i.ax, ptr %i.r, align 4, !tbaa !59
  br label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !78 ; 3 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(308) %i.az, ptr noundef nonnull align 8 dereferenceable(56) %1), !inline_history !161
  br label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit

_ZN3gui11IGUIElement7OnEventERK6SEvent.exit:      ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ true, %bb.e ], [ %i.bd, %bb.g ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3gui11IGUIElement7OnEventERK6SEvent(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(308) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUIScene9setStylesERKSt5arrayI9StyleSpecLm8EE(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef nonnull align 8 dereferenceable(6720) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.video::SColor", align 4     ; 5 uses
  %3 = alloca %class.StyleSpec, align 8           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN9StyleSpec28getStyleFromStatePropagationERKSt5arrayIS_Lm8EENS_5StateE(ptr dead_on_unwind nonnull writable sret(%class.StyleSpec) align 8 %3, ptr noundef nonnull align 8 dereferenceable(6720) %1, i8 noundef zeroext 0)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.c = load i64, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = invoke noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.c, ptr %i.f)
          to label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit unwind label %bb.e

_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit:       ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ false, %bb.a ], [ %i.g, %bb.b ]
  %i.h = zext i1 %.0.i to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 163
  store i8 %i.h, ptr %i.i, align 1, !tbaa !97
  %i.j = load ptr, ptr %0, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(308) %0)
          to label %_ZN3gui11IGUIElement13setNotClippedEb.exit unwind label %bb.e, !inline_history !162

_ZN3gui11IGUIElement13setNotClippedEb.exit:       ; preds = %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.m, align 8, !tbaa !64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 %.sroa.0.0.copyload, ptr %2, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !71
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3gui11IGUIElement13setNotClippedEb.exit
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = invoke noundef zeroext i1 @_Z16parseColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEbh(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext false, i8 noundef zeroext -1)
          to label %.noexc7 unwind label %bb.e    ; 0 uses

.noexc7:                                          ; preds = %bb.c
  %.sroa.0.0.pre.i = load i32, ptr %2, align 4, !tbaa !64
  br label %bb.d

bb.d:                                             ; preds = %.noexc7, %_ZN3gui11IGUIElement13setNotClippedEb.exit
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload, %_ZN3gui11IGUIElement13setNotClippedEb.exit ], [ %.sroa.0.0.pre.i, %.noexc7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i32 %.sroa.0.0.i, ptr %i.m, align 8, !tbaa !64
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.e:                                             ; preds = %bb.b, %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9StyleSpec28getStyleFromStatePropagationERKSt5arrayIS_Lm8EENS_5StateE(ptr dead_on_unwind noalias writable sret(%class.StyleSpec) align 8 %0, ptr noundef nonnull align 8 dereferenceable(6720) %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %class.StyleSpec, align 8           ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(833) %0, ptr noundef nonnull align 8 dereferenceable(833) %1, i64 25, i1 false), !tbaa.struct !98
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.r, %bb.e ]    ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %i.c, 5
  %.add4.i = add nuw nsw i64 %.idx.i.i, 32        ; 2 uses
  %.ptr7.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add4.i ; 6 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.ptr7.i, i64 16 ; 3 uses
  store ptr %i.e, ptr %.ptr7.i, align 8, !tbaa !70
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !82   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !71   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.h, ptr %i.a, align 8, !tbaa !99
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.ptr7.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.f ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %.ptr7.i, align 8, !tbaa !82
  %i.k = load i64, ptr %i.a, align 8, !tbaa !99
  store i64 %i.k, ptr %i.e, align 8, !tbaa !72
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !72
  store i8 %i.m, ptr %i.l, align 1, !tbaa !72
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.ptr7.i, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !71
  %i.p = load ptr, ptr %.ptr7.i, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.r = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.s = icmp eq i64 %i.r, 25
  br i1 %i.s, label %_ZN9StyleSpecC2ERKS_.exit, label %bb.b

bb.f:                                             ; preds = %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = icmp eq i64 %i.c, 0
  br i1 %i.u, label %common.resume, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.idx.i = phi i64 [ %.add.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.add4.i, %bb.f ] ; 2 uses
  %.ptr.i = getelementptr inbounds i8, ptr %0, i64 %.idx.i
  %.add.i = add nsw i64 %.idx.i, -32              ; 3 uses
  %.ptr5.i = getelementptr inbounds i8, ptr %0, i64 %.add.i
  %i.v = load ptr, ptr %.ptr5.i, align 8, !tbaa !82 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.ptr.i, i64 -16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.preheader.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !72
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.preheader.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.aa = icmp eq i64 %.add.i, 32
  br i1 %i.aa, label %common.resume, label %.preheader.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.f, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.t, %bb.f ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN9StyleSpecC2ERKS_.exit:                        ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  store i8 %2, ptr %i.ab, align 8, !tbaa !104
  %i.ac = zext i8 %2 to i32                       ; 2 uses
  %.not15 = icmp eq i8 %2, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9StyleSpecC2ERKS_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 832
  %i.ag = add nuw nsw i32 %i.ac, 1
  %wide.trip.count = zext nneg i32 %i.ag to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = and i32 %i.ah, %i.ac
  %.not12 = icmp eq i32 %i.ai, 0
  br i1 %.not12, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.aj = getelementptr inbounds nuw [840 x i8], ptr %1, i64 %indvars.iv
  invoke void @_ZNK9StyleSpecorERKS_(ptr dead_on_unwind nonnull writable sret(%class.StyleSpec) align 8 %3, ptr noundef nonnull align 8 dereferenceable(833) %0, ptr noundef nonnull align 8 dereferenceable(833) %i.aj)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(833) %0, ptr noundef nonnull align 8 dereferenceable(833) %3, i64 25, i1 false), !tbaa.struct !98
  %i.ak = call noundef nonnull align 8 dereferenceable(800) ptr @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(800) %i.ad, ptr noundef nonnull align 8 dereferenceable(800) %i.ae) #26 ; 0 uses
  %i.al = load i8, ptr %i.af, align 8, !tbaa !104
  store i8 %i.al, ptr %i.ab, align 8, !tbaa !104
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.ae) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.ad) #26
  br label %common.resume

bb.k:                                             ; preds = %bb.g, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !163

._crit_edge:                                      ; preds = %bb.k, %_ZN9StyleSpecC2ERKS_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUIScene12setFrameLoopEff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(436) %0, float noundef %1, float noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.c = tail call nsz noundef float @_ZNK5scene21AnimatedMeshSceneNode13getStartFrameEv(ptr noundef nonnull align 8 dereferenceable(432) %i.b)
  %i.d = fcmp nsz une float %i.c, %1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.f = tail call nsz noundef float @_ZNK5scene21AnimatedMeshSceneNode11getEndFrameEv(ptr noundef nonnull align 8 dereferenceable(432) %i.e)
  %i.g = fcmp nsz une float %i.f, %2
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.i = tail call noundef zeroext i1 @_ZN5scene21AnimatedMeshSceneNode12setFrameLoopEff(ptr noundef nonnull align 8 dereferenceable(432) %i.h, float noundef %1, float noundef %2) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare noundef float @_ZNK5scene21AnimatedMeshSceneNode13getStartFrameEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #9

declare noundef float @_ZNK5scene21AnimatedMeshSceneNode11getEndFrameEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN5scene21AnimatedMeshSceneNode12setFrameLoopEff(ptr noundef nonnull align 8 dereferenceable(432), float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUIScene17setAnimationSpeedEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(436) %0, float noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85
  tail call void @_ZN5scene21AnimatedMeshSceneNode17setAnimationSpeedEf(ptr noundef nonnull align 8 dereferenceable(432) %i.b, float noundef %1)
  ret void
}

declare void @_ZN5scene21AnimatedMeshSceneNode17setAnimationSpeedEf(ptr noundef nonnull align 8 dereferenceable(432), float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUIScene15updateTargetPosEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(436) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa.struct !90
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(218) %i.d)
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call { <2 x float>, float } %i.k(ptr noundef nonnull align 8 dereferenceable(218) %i.h) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.l, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.l, 1
  store <2 x float> %.fca.0.extract, ptr %i.a, align 4, !tbaa !59
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 388
  store float %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUIScene17setCameraRotationEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(436) initializes((368, 380)) %0, <2 x float> %1, float %2) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.08.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 5 uses
  %i.a = fcmp nsz olt float %.sroa.08.0.vec.extract, 9.000000e+01
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp nsz ogt float %.sroa.08.0.vec.extract, 6.000000e+01
  br i1 %i.b, label %.sink.split.i, label %_ZN8GUIScene13correctBoundsERN4core8vector3dIfEE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = fcmp nsz olt float %.sroa.08.0.vec.extract, 3.000000e+02
  br i1 %i.c, label %.sink.split.i, label %_ZN8GUIScene13correctBoundsERN4core8vector3dIfEE.exit

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi float [ 6.000000e+01, %bb.b ], [ 3.000000e+02, %bb.c ] ; 2 uses
  %.sroa.08.0.vec.insert = insertelement <2 x float> %1, float %.sink.i, i64 0
  br label %_ZN8GUIScene13correctBoundsERN4core8vector3dIfEE.exit

_ZN8GUIScene13correctBoundsERN4core8vector3dIfEE.exit: ; preds = %bb.b, %bb.c, %.sink.split.i
  %.sroa.08.0.vec.extract11.pre-phi = phi float [ %.sroa.08.0.vec.extract, %bb.b ], [ %.sroa.08.0.vec.extract, %bb.c ], [ %.sink.i, %.sink.split.i ]
  %.sroa.08.0 = phi nsz <2 x float> [ %1, %bb.b ], [ %1, %bb.c ], [ %.sroa.08.0.vec.insert, %.sink.split.i ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load float, ptr %i.d, align 8, !tbaa !54 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.h = fmul nsz float %.sroa.08.0.vec.extract11.pre-phi, f0x3C8EFA35
  %i.i = insertelement <2 x float> %.sroa.08.0, float %2, i64 0
  %i.j = fmul nsz <2 x float> %i.i, splat (float f0x3C8EFA35)
  %i.k = fpext nsz float %i.h to double
  %sincos.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.k) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0 ; 3 uses
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1 ; 3 uses
  %i.l = fpext nsz <2 x float> %i.j to <2 x double>
  %i.m = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.l) ; 2 uses
  %i.n = extractvalue { <2 x double>, <2 x double> } %i.m, 0 ; 5 uses
  %i.o = extractelement <2 x double> %i.n, i64 1  ; 3 uses
  %i.p = extractvalue { <2 x double>, <2 x double> } %i.m, 1 ; 6 uses
  %i.q = shufflevector <2 x double> %i.p, <2 x double> %i.n, <2 x i32> <i32 1, i32 2>
  %i.r = fmul nsz <2 x double> %i.q, %i.p
  %i.s = fptrunc nsz <2 x double> %i.r to <2 x float>
  %i.t = fptrunc nsz double %i.o to float
  %i.u = fneg nsz float %i.t
  %i.v = fmul nsz double %sin.i.i, %i.o
  %i.w = fmul nsz double %cos.i.i, %i.o
  %i.x = insertelement <2 x double> poison, double %cos.i.i, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = fneg nsz <2 x double> %i.n
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> %i.p, <2 x i32> <i32 0, i32 2>
  %i.ab = fmul nsz <2 x double> %i.y, %i.aa
  %i.ac = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = shufflevector <2 x double> %i.p, <2 x double> %i.n, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.af = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.ae, <2 x double> %i.ab)
  %i.ag = fptrunc nsz <2 x double> %i.af to <2 x float>
  %i.ah = extractelement <2 x double> %i.p, i64 1 ; 2 uses
  %i.ai = fmul nsz double %sin.i.i, %i.ah
  %i.aj = fptrunc nsz double %i.ai to float
  %i.ak = insertelement <2 x double> poison, double %sin.i.i, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fneg nsz <2 x double> %i.p
  %i.an = shufflevector <2 x double> %i.n, <2 x double> %i.am, <2 x i32> <i32 0, i32 2>
  %i.ao = fmul nsz <2 x double> %i.al, %i.an
  %i.ap = insertelement <2 x double> poison, double %i.w, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.ae, <2 x double> %i.ao)
  %i.as = fptrunc nsz <2 x double> %i.ar to <2 x float>
  %i.at = fmul nsz double %cos.i.i, %i.ah
  %i.au = fptrunc nsz double %i.at to float
  %i.av = fmul nsz <2 x float> %i.ag, zeroinitializer
  %i.aw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> zeroinitializer, <2 x float> %i.av)
  %i.ax = insertelement <2 x float> poison, float %i.e, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.as, <2 x float> %i.aw)
  %i.ba = fmul nsz float %i.aj, 0.000000e+00
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.u, float 0.000000e+00, float %i.ba)
  %i.bc = tail call nsz float @llvm.fmuladd.f32(float %i.e, float %i.au, float %i.bb)
  %i.bd = load <2 x float>, ptr %i.g, align 4, !tbaa !59
  %i.be = fadd nsz <2 x float> %i.bd, %i.az
  store <2 x float> %i.be, ptr %i.f, align 8, !tbaa !59
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !60
  %i.bh = fadd nsz float %i.bg, %i.bc
  store float %i.bh, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !61 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 224
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(218) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) %i.f)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 429
  store i8 0, ptr %i.bn, align 1, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN8GUIScene13correctBoundsERN4core8vector3dIfEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(436) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !92   ; 3 uses
  %i.b = fcmp nsz olt float %i.a, 9.000000e+01
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp nsz ogt float %i.a, 6.000000e+01
  br i1 %i.c, label %.sink.split, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = fcmp nsz olt float %i.a, 3.000000e+02
  br i1 %i.d, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi float [ 6.000000e+01, %bb.b ], [ 3.000000e+02, %bb.c ]
  store float %.sink, ptr %1, align 4, !tbaa !92
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ true, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElementD1Ev(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull @_ZTTN3gui11IGUIElementE) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElementD0Ev(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull @_ZTTN3gui11IGUIElementE) #26, !inline_history !105
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 328) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElement22updateAbsolutePositionEv(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN3gui11IGUIElement27recalculateAbsolutePositionEb(ptr noundef nonnull align 8 dereferenceable(308) %0, i1 noundef zeroext false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.04.07 = load ptr, ptr %i.a, align 8, !tbaa !63 ; 2 uses
  %.not8 = icmp eq ptr %.sroa.04.07, %i.a
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.09 = phi ptr [ %.sroa.04.0, %.lr.ph ], [ %.sroa.04.07, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(308) %i.c)
  %.sroa.04.0 = load ptr, ptr %.sroa.04.09, align 8, !tbaa !63 ; 2 uses
  %.not = icmp eq ptr %.sroa.04.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3gui11IGUIElement19getElementFromPointERKN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(308) %0)
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63, !noalias !167 ; 2 uses
  %.not1516 = icmp eq ptr %i.e, %i.f
  br i1 %.not1516, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.012.017 = phi ptr [ %i.o, %bb.c ], [ %i.e, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !79   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(308) %i.j, ptr noundef nonnull align 4 dereferenceable(8) %1) ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !62   ; 2 uses
  %.not15 = icmp eq ptr %i.o, %i.f
  br i1 %.not15, label %.loopexit, label %.lr.ph, !llvm.loop !166

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(308) %0)
  br i1 %i.s, label %bb.d, label %.thread

bb.d:                                             ; preds = %.loopexit
  %i.t = load ptr, ptr %0, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  %spec.select = select i1 %i.w, ptr %0, ptr null
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.d, %.loopexit
  %.19 = phi ptr [ %spec.select, %bb.d ], [ null, %.loopexit ], [ %i.n, %.lr.ph ]
  ret ptr %.19
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK3gui11IGUIElement13isPointInsideERKN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %i.c = load i32, ptr %1, align 4, !tbaa !168    ; 2 uses
  %.not.i = icmp sgt i32 %i.b, %i.c
  br i1 %.not.i, label %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.e = load i32, ptr %i.d, align 4, !tbaa !107
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !169  ; 2 uses
  %.not6.i = icmp sgt i32 %i.e, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i32, ptr %i.h, align 8
  %.not7.i = icmp slt i32 %i.i, %i.c
  %or.cond.i = select i1 %.not6.i, i1 true, i1 %.not7.i
  br i1 %or.cond.i, label %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.k = load i32, ptr %i.j, align 4, !tbaa !108
  %i.l = icmp sge i32 %i.k, %i.g
  br label %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit

_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.m = phi i1 [ %i.l, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElement8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN3gui11IGUIElement13addChildToEndEPS0_.exit, label %bb.b

_ZN3gui11IGUIElement13addChildToEndEPS0_.exit:    ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !77
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(308) %1), !inline_history !0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
end_hunk_0
begin_hunk_1_@_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.15
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !82 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.15
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !72
  %i.cx = add i64 %i.cw, 1
  tail call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.16
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !82 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.16
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !72
  %i.dd = add i64 %i.dc, 1
  tail call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.17
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !82 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.17
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !72
  %i.dj = add i64 %i.di, 1
  tail call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.18
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !82 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.18
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !72
  %i.dp = add i64 %i.do, 1
  tail call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.19
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !82 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.19
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !72
  %i.dv = add i64 %i.du, 1
  tail call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.20
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !82 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.20
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !72
  %i.eb = add i64 %i.ea, 1
  tail call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.21
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !82 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.21
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !72
  %i.eh = add i64 %i.eg, 1
  tail call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.22
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !82 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.22
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !72
  %i.en = add i64 %i.em, 1
  tail call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.23
  %i.eo = load ptr, ptr %0, align 8, !tbaa !82    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.23
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !72
  %i.es = add i64 %i.er, 1
  tail call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.24
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load <2 x float>, ptr %0, align 4, !tbaa !59 ; 6 uses
  %i.d = load <2 x float>, ptr %i.a, align 4, !tbaa !59 ; 5 uses
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !59 ; 6 uses
  %i.f = load <2 x float>, ptr %i.b, align 4, !tbaa !59 ; 5 uses
  %i.g = extractelement <2 x float> %i.e, i64 1   ; 2 uses
  %i.h = extractelement <2 x float> %i.c, i64 1   ; 2 uses
  %i.i = fmul nsz float %i.h, %i.g
  %i.j = extractelement <2 x float> %i.e, i64 0   ; 2 uses
  %i.k = extractelement <2 x float> %i.c, i64 0   ; 2 uses
  %i.l = tail call nsz float @llvm.fmuladd.f32(float %i.k, float %i.j, float %i.i)
  %i.m = extractelement <2 x float> %i.d, i64 1
  %i.n = extractelement <2 x float> %i.f, i64 1
  %i.o = tail call nsz noundef float @llvm.fmuladd.f32(float %i.m, float %i.n, float %i.l) ; 3 uses
  %i.p = shufflevector <2 x float> %i.c, <2 x float> %i.e, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.q = fmul nsz <2 x float> %i.p, %i.p
  %i.r = shufflevector <2 x float> %i.c, <2 x float> %i.e, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.s = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.r, <2 x float> %i.q)
  %i.t = shufflevector <2 x float> %i.d, <2 x float> %i.f, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.u = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.t, <2 x float> %i.s)
  %i.v = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.u) ; 3 uses
  %i.w = fneg nsz float %i.o
  %i.x = fmul nsz float %i.o, %i.w
  %i.y = extractelement <2 x float> %i.v, i64 0
  %i.z = extractelement <2 x float> %i.v, i64 1
  %i.aa = tail call nsz float @llvm.fmuladd.f32(float %i.y, float %i.z, float %i.x)
  %i.ab = fpext nsz float %i.aa to double         ; 2 uses
  %i.ac = tail call nsz double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp nsz uge double %i.ac, 1.000000e-08
  br i1 %i.ad, label %bb.b, label %_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit

bb.b:                                             ; preds = %bb.a
  %i.ae = fneg nsz <2 x float> %i.f
  %i.af = shufflevector <2 x float> %i.d, <2 x float> %i.c, <2 x i32> <i32 1, i32 2>
  %i.ag = fmul nsz <2 x float> %i.af, %i.ae
  %i.ah = shufflevector <2 x float> %i.f, <2 x float> %i.e, <2 x i32> <i32 1, i32 2>
  %i.ai = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> %i.ah, <2 x float> %i.ag) ; 3 uses
  %i.aj = fneg nsz float %i.j
  %i.ak = fmul nsz float %i.h, %i.aj
  %i.al = tail call nsz float @llvm.fmuladd.f32(float %i.k, float %i.g, float %i.ak) ; 2 uses
  %i.am = load float, ptr %2, align 4, !tbaa !92  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !96 ; 2 uses
  %i.ap = extractelement <2 x float> %i.ai, i64 1
  %i.aq = fmul nsz float %i.ap, %i.ao
  %i.ar = extractelement <2 x float> %i.ai, i64 0
  %i.as = tail call nsz float @llvm.fmuladd.f32(float %i.am, float %i.ar, float %i.aq)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load float, ptr %i.at, align 4, !tbaa !60 ; 2 uses
  %i.av = tail call nsz noundef float @llvm.fmuladd.f32(float %i.au, float %i.al, float %i.as) ; 2 uses
  %i.aw = fcmp nsz une float %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.c, label %_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit

bb.c:                                             ; preds = %bb.b
  %i.ax = fdiv nsz double 1.000000e+00, %i.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !200 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !200 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !200
  %i.be = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.az, i64 1
  %i.bg = fneg nsz <2 x float> %i.bf
  %i.bh = insertelement <2 x float> poison, float %i.o, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bb, i64 1
  %i.bl = fmul nsz <2 x float> %i.bi, %i.bk
  %i.bm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.bg, <2 x float> %i.bl)
  %i.bn = fpext nsz <2 x float> %i.bm to <2 x double>
  %i.bo = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fmul nsz <2 x double> %i.bp, %i.bn
  %i.br = fptrunc nsz <2 x double> %i.bq to <2 x float> ; 3 uses
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fmul nsz <2 x float> %i.c, %i.bs
  %i.bu = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul nsz <2 x float> %i.e, %i.bu
  %i.bw = fadd nsz <2 x float> %i.bv, %i.bt       ; 3 uses
  %i.bx = shufflevector <2 x float> %i.f, <2 x float> %i.d, <2 x i32> <i32 1, i32 3>
  %i.by = fmul nsz <2 x float> %i.bx, %i.br       ; 2 uses
  %shift = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x float> %i.by, %shift
  %i.bz = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ca = extractelement <2 x float> %i.bw, i64 1
  %i.cb = fmul nsz float %i.ao, %i.ca
  %i.cc = extractelement <2 x float> %i.bw, i64 0
  %i.cd = tail call nsz float @llvm.fmuladd.f32(float %i.am, float %i.cc, float %i.cb)
  %i.ce = tail call nsz noundef float @llvm.fmuladd.f32(float %i.au, float %i.bz, float %i.cd)
  %i.cf = fadd nsz float %i.bd, %i.ce
  %i.cg = fneg nsz float %i.cf
  %i.ch = fdiv nsz float %i.cg, %i.av             ; 2 uses
  %i.ci = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul nsz <2 x float> %i.ai, %i.cj
  %i.cl = fmul nsz float %i.al, %i.ch
  %i.cm = fadd nsz <2 x float> %i.bw, %i.ck
  %i.cn = fadd nsz float %i.bz, %i.cl
  store <2 x float> %i.cm, ptr %3, align 4, !tbaa !59
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.cn, ptr %.sroa.4.0..sroa_idx.i5, align 4, !tbaa !59
  br label %_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit

_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIwEaSIwEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !67
  store i32 0, ptr %i.b, align 8, !tbaa !69
  call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #26
  %i.d = load ptr, ptr %2, align 8, !tbaa !83     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_ZN4core6stringIwE5clearEb.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8, !tbaa !72
  %i.g = shl i64 %i.f, 2
  %i.h = add i64 %i.g, 4
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #28
  br label %_ZN4core6stringIwE5clearEb.exit

_ZN4core6stringIwE5clearEb.exit:                  ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !83
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i64 @wcslen(ptr noundef nonnull %1) #30 ; 5 uses
  %i.l = and i64 %i.k, 4294967295                 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !67
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i32 noundef signext 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = and i64 %i.k, 4294967295                 ; 2 uses
  %.not18 = icmp eq i64 %i.p, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.q = load ptr, ptr %0, align 8, !tbaa !83     ; 7 uses
  %wide.trip.count = and i64 %i.k, 4294967295     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = sub i64 %i.a, %i.r
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.k, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !69
  %wide.load24 = load <4 x i32>, ptr %i.u, align 4, !tbaa !69
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %wide.load, ptr %i.v, align 4, !tbaa !69
  store <4 x i32> %wide.load24, ptr %i.w, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !201

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.z = load i32, ptr %i.y, align 4, !tbaa !69
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.prol
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !69
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !202

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %i.p
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.f
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !67
  %i.ae = icmp ugt i64 %i.ad, %i.l
  br i1 %i.ae, label %bb.g, label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !69
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !69
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !69
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.1
  store i32 %i.am, ptr %i.an, align 4, !tbaa !69
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !69
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.2
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !69
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !203

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i32 noundef signext 0)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.c, %_ZN4core6stringIwE5clearEb.exit
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
end_hunk_1
