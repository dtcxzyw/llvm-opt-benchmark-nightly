Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetMorph?download=true
inline.NumInlined: 30422
inline.NumDeleted: 8287
loop-unroll.NumCompletelyUnrolled: 293
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 900
begin_hunk_0_@_ZN7openvdb5v13_04math20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE:bb.a
  %i.cq = add nsw i32 %i.cp, -3
  %i.cr = load i32, ptr %i.f, align 4, !tbaa !244
  %.sroa.2.0.insert.ext.i147 = zext i32 %i.cq to i64
  %.sroa.2.0.insert.shift.i148 = shl nuw i64 %.sroa.2.0.insert.ext.i147, 32
  %.sroa.0.0.insert.ext.i149 = zext i32 %i.co to i64
  %.sroa.0.0.insert.insert.i150 = or disjoint i64 %.sroa.2.0.insert.shift.i148, %.sroa.0.0.insert.ext.i149
  store i64 %.sroa.0.0.insert.insert.i150, ptr %13, align 8
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %i.cr, ptr %.sroa.224.0..sroa_idx, align 8
  %i.cs = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %13)
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !205
  %i.cu = load ptr, ptr %i.j, align 8, !tbaa !529
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 68
  store float %i.ct, ptr %i.cv, align 4, !tbaa !205
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.cw = load i64, ptr %1, align 4
  %i.cx = load i32, ptr %i.f, align 4, !tbaa !244
  %i.cy = add nsw i32 %i.cx, 3
  store i64 %i.cw, ptr %14, align 8
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %i.cy, ptr %.sroa.220.0..sroa_idx, align 8
  %i.cz = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %14)
  %i.da = load float, ptr %i.cz, align 4, !tbaa !205
  %i.db = load ptr, ptr %i.j, align 8, !tbaa !529
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 60
  store float %i.da, ptr %i.dc, align 4, !tbaa !205
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.dd = load i64, ptr %1, align 4
  %i.de = load i32, ptr %i.f, align 4, !tbaa !244
  %i.df = add nsw i32 %i.de, 2
  store i64 %i.dd, ptr %15, align 8
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %i.df, ptr %.sroa.216.0..sroa_idx, align 8
  %i.dg = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %15)
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !205
  %i.di = load ptr, ptr %i.j, align 8, !tbaa !529
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 36
  store float %i.dh, ptr %i.dj, align 4, !tbaa !205
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.dk = load i64, ptr %1, align 4
  %i.dl = load i32, ptr %i.f, align 4, !tbaa !244
  %i.dm = add nsw i32 %i.dl, 1
  store i64 %i.dk, ptr %16, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.dm, ptr %.sroa.212.0..sroa_idx, align 8
  %i.dn = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %16)
  %i.do = load float, ptr %i.dn, align 4, !tbaa !205
  %i.dp = load ptr, ptr %i.j, align 8, !tbaa !529
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store float %i.do, ptr %i.dq, align 4, !tbaa !205
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.dr = load i64, ptr %1, align 4
  %i.ds = load i32, ptr %i.f, align 4, !tbaa !244
  %i.dt = add nsw i32 %i.ds, -1
  store i64 %i.dr, ptr %17, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %i.dt, ptr %.sroa.28.0..sroa_idx, align 8
  %i.du = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %17)
  %i.dv = load float, ptr %i.du, align 4, !tbaa !205
  %i.dw = load ptr, ptr %i.j, align 8, !tbaa !529
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store float %i.dv, ptr %i.dx, align 4, !tbaa !205
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.dy = load i64, ptr %1, align 4
  %i.dz = load i32, ptr %i.f, align 4, !tbaa !244
  %i.ea = add nsw i32 %i.dz, -2
  store i64 %i.dy, ptr %18, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %i.ea, ptr %.sroa.24.0..sroa_idx, align 8
  %i.eb = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %18)
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !205
  %i.ed = load ptr, ptr %i.j, align 8, !tbaa !529
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  store float %i.ec, ptr %i.ee, align 4, !tbaa !205
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.ef = load i64, ptr %1, align 4
  %i.eg = load i32, ptr %i.f, align 4, !tbaa !244
  %i.eh = add nsw i32 %i.eg, -3
  store i64 %i.ef, ptr %19, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %i.eh, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ei = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %19)
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !205
  %i.ek = load ptr, ptr %i.j, align 8, !tbaa !529
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  store float %i.ej, ptr %i.el, align 4, !tbaa !205
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, float } @_ZN7openvdb5v13_04math10ISGradientILNS1_7DSchemeE12EE6resultINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEEEENS1_4Vec3INT_9ValueTypeEEERKSL_(ptr noundef nonnull align 8 dereferenceable(140) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !529  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = load float, ptr %i.b, align 4, !tbaa !205 ; 2 uses
  %i.i = load <2 x float>, ptr %i.f, align 4, !tbaa !205 ; 2 uses
  %i.j = insertelement <2 x float> poison, float %i.h, i64 0 ; 2 uses
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.l = fsub <2 x float> %i.k, %i.i              ; 5 uses
  %i.m = load <2 x float>, ptr %i.c, align 4, !tbaa !205
  %i.n = load <2 x float>, ptr %i.d, align 4, !tbaa !205 ; 2 uses
  %i.o = fsub <2 x float> %i.m, %i.n              ; 3 uses
  %i.p = load <2 x float>, ptr %i.e, align 4, !tbaa !205 ; 2 uses
  %i.q = fsub <2 x float> %i.n, %i.p              ; 5 uses
  %i.r = fsub <2 x float> %i.p, %i.k              ; 4 uses
  %i.s = load <2 x float>, ptr %i.g, align 4, !tbaa !205
  %i.t = fsub <2 x float> %i.i, %i.s              ; 2 uses
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> splat (float -2.000000e+00), <2 x float> %i.o)
  %i.v = fadd <2 x float> %i.u, %i.r              ; 2 uses
  %i.w = fmul <2 x float> %i.v, %i.v
  %i.x = fpext <2 x float> %i.w to <2 x double>
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> splat (float -4.000000e+00), <2 x float> %i.o)
  %i.z = fpext <2 x float> %i.y to <2 x double>
  %i.aa = fpext <2 x float> %i.r to <2 x double>  ; 5 uses
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> splat (double 3.000000e+00), <2 x double> %i.z) ; 2 uses
  %i.ac = fmul <2 x double> %i.ab, %i.ab
  %i.ad = fmul <2 x double> %i.ac, splat (double 2.500000e-01)
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.ad)
  %i.af = fadd <2 x double> %i.ae, splat (double f0x3E45798EDA22F6A5) ; 2 uses
  %i.ag = fmul <2 x double> %i.af, %i.af
  %i.ah = fdiv <2 x double> splat (double 1.000000e-01), %i.ag ; 2 uses
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> splat (float -2.000000e+00), <2 x float> %i.q)
  %i.aj = fadd <2 x float> %i.ai, %i.l            ; 2 uses
  %i.ak = fmul <2 x float> %i.aj, %i.aj
  %i.al = fpext <2 x float> %i.ak to <2 x double>
  %i.am = fsub <2 x float> %i.q, %i.l             ; 2 uses
  %i.an = fmul <2 x float> %i.am, %i.am
  %i.ao = fpext <2 x float> %i.an to <2 x double>
  %i.ap = fmul <2 x double> %i.ao, splat (double 2.500000e-01)
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.ap)
  %i.ar = fadd <2 x double> %i.aq, splat (double f0x3E45798EDA22F6A5) ; 2 uses
  %i.as = fmul <2 x double> %i.ar, %i.ar
  %i.at = fdiv <2 x double> splat (double 6.000000e-01), %i.as ; 2 uses
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> splat (float -2.000000e+00), <2 x float> %i.r)
  %i.av = fadd <2 x float> %i.au, %i.t            ; 2 uses
  %i.aw = fmul <2 x float> %i.av, %i.av
  %i.ax = fpext <2 x float> %i.aw to <2 x double>
  %i.ay = fmul <2 x float> %i.l, splat (float 4.000000e+00)
  %i.az = fpext <2 x float> %i.ay to <2 x double>
  %i.ba = fneg <2 x double> %i.az
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> splat (double 3.000000e+00), <2 x double> %i.ba)
  %i.bc = fpext <2 x float> %i.t to <2 x double>  ; 2 uses
  %i.bd = fadd <2 x double> %i.bb, %i.bc          ; 2 uses
  %i.be = fmul <2 x double> %i.bd, %i.bd
  %i.bf = fmul <2 x double> %i.be, splat (double 2.500000e-01)
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.bf)
  %i.bh = fadd <2 x double> %i.bg, splat (double f0x3E45798EDA22F6A5) ; 2 uses
  %i.bi = fmul <2 x double> %i.bh, %i.bh
  %i.bj = fdiv <2 x double> splat (double 3.000000e-01), %i.bi ; 2 uses
  %i.bk = fpext <2 x float> %i.o to <2 x double>
  %i.bl = fpext <2 x float> %i.q to <2 x double>  ; 2 uses
  %i.bm = fmul <2 x double> %i.bl, splat (double -7.000000e+00)
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> splat (double 2.000000e+00), <2 x double> %i.bm)
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> splat (double 1.100000e+01), <2 x double> %i.bn)
  %i.bp = fneg <2 x double> %i.bl
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> splat (double 5.000000e+00), <2 x double> %i.bp)
  %i.br = fpext <2 x float> %i.l to <2 x double>  ; 2 uses
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> splat (double 2.000000e+00), <2 x double> %i.bq)
  %i.bt = fmul <2 x double> %i.bs, %i.at
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.bo, <2 x double> %i.bt)
  %i.bv = fmul <2 x double> %i.br, splat (double 5.000000e+00)
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> splat (double 2.000000e+00), <2 x double> %i.bv)
  %i.bx = fsub <2 x double> %i.bw, %i.bc
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bx, <2 x double> %i.bu)
  %i.bz = fptrunc <2 x double> %i.by to <2 x float>
  %i.ca = fpext <2 x float> %i.bz to <2 x double>
  %i.cb = fadd <2 x double> %i.ah, %i.at
  %i.cc = fadd <2 x double> %i.cb, %i.bj
  %i.cd = fmul <2 x double> %i.cc, splat (double 6.000000e+00)
  %i.ce = fdiv <2 x double> %i.ca, %i.cd
  %i.cf = fptrunc <2 x double> %i.ce to <2 x float>
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.cl = load float, ptr %i.cg, align 4, !tbaa !205
  %i.cm = load float, ptr %i.ch, align 4, !tbaa !205
  %i.cn = load float, ptr %i.ci, align 4, !tbaa !205 ; 2 uses
  %i.co = load float, ptr %i.cj, align 4, !tbaa !205
  %i.cp = load float, ptr %i.ck, align 4, !tbaa !205
  %i.cq = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cn, i64 1
  %i.cs = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.h, i64 1 ; 2 uses
  %i.cu = fsub <2 x float> %i.cr, %i.ct           ; 3 uses
  %i.cv = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.co, i64 1 ; 2 uses
  %i.cx = fsub <2 x float> %i.ct, %i.cw           ; 4 uses
  %i.cy = insertelement <2 x float> %i.j, float %i.cp, i64 1
  %i.cz = fsub <2 x float> %i.cw, %i.cy           ; 4 uses
  %i.da = extractelement <2 x float> %i.cu, i64 0
  %i.db = extractelement <2 x float> %i.cz, i64 0
  %i.dc = extractelement <2 x float> %i.cx, i64 1 ; 3 uses
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> splat (float -2.000000e+00), <2 x float> %i.cu)
  %i.de = fadd <2 x float> %i.cz, %i.dd           ; 2 uses
  %i.df = fmul <2 x float> %i.de, %i.de
  %i.dg = fpext <2 x float> %i.df to <2 x double>
  %i.dh = extractelement <2 x float> %i.cz, i64 1
  %i.di = fpext float %i.dh to double             ; 2 uses
  %i.dj = shufflevector <2 x float> %i.cz, <2 x float> %i.cu, <4 x i32> <i32 0, i32 poison, i32 0, i32 2>
  %i.dk = extractelement <2 x float> %i.cx, i64 0 ; 3 uses
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dk, float -4.000000e+00, float %i.da)
  %i.dm = fpext float %i.dl to double
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.db, float -2.000000e+00, float %i.dk)
  %i.do = fadd float %i.dn, %i.dc                 ; 2 uses
  %i.dp = fsub float %i.dk, %i.dc                 ; 2 uses
  %i.dq = fmul float %i.dp, %i.dp
  %i.dr = fpext float %i.dq to double
  %i.ds = fmul double %i.dr, 2.500000e-01
  %i.dt = fmul <2 x float> %i.cx, <float 1.000000e+00, float 4.000000e+00>
  %i.du = fpext <2 x float> %i.dt to <2 x double> ; 2 uses
  %i.dv = extractelement <2 x double> %i.du, i64 0
  %i.dw = fmul double %i.dv, -7.000000e+00
  %i.dx = fmul float %i.do, %i.do
  %i.dy = insertelement <4 x float> %i.dj, float %i.dx, i64 1
  %i.dz = fpext <4 x float> %i.dy to <4 x double> ; 2 uses
  %i.ea = insertelement <4 x double> poison, double %i.dm, i64 0
  %i.eb = insertelement <4 x double> %i.ea, double %i.ds, i64 1
  %i.ec = fneg <2 x double> %i.du                 ; 2 uses
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ee = shufflevector <4 x double> %i.eb, <4 x double> %i.ed, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ef = insertelement <4 x double> %i.ee, double %i.dw, i64 3
  %i.eg = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dz, <4 x double> <double 3.000000e+00, double f0x3FF1555555555555, double 3.000000e+00, double 2.000000e+00>, <4 x double> %i.ef) ; 4 uses
  %i.eh = extractelement <4 x double> %i.eg, i64 1
  %i.ei = fadd double %i.eh, f0x3E45798EDA22F6A5  ; 2 uses
  %i.ej = fmul double %i.ei, %i.ei
  %i.ek = fdiv double 6.000000e-01, %i.ej         ; 2 uses
  %i.el = extractelement <4 x double> %i.eg, i64 2
  %i.em = fadd double %i.el, %i.di
  %i.en = shufflevector <4 x double> %i.eg, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.eo = insertelement <2 x double> %i.en, double %i.em, i64 1 ; 2 uses
  %i.ep = fmul <2 x double> %i.eo, %i.eo
  %i.eq = fmul <2 x double> %i.ep, splat (double 2.500000e-01)
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.eq)
  %i.es = fadd <2 x double> %i.er, splat (double f0x3E45798EDA22F6A5) ; 2 uses
  %i.et = fmul <2 x double> %i.es, %i.es
  %i.eu = fdiv <2 x double> <double 1.000000e-01, double 3.000000e-01>, %i.et ; 2 uses
  %i.ev = extractelement <4 x double> %i.eg, i64 3
  %i.ew = extractelement <4 x double> %i.dz, i64 0 ; 3 uses
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.ew, double 1.100000e+01, double %i.ev)
  %i.ey = extractelement <2 x double> %i.ec, i64 0
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.ew, double 5.000000e+00, double %i.ey)
  %i.fa = fpext float %i.dc to double             ; 2 uses
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.fa, double 2.000000e+00, double %i.ez)
  %i.fc = fmul double %i.fb, %i.ek
  %i.fd = extractelement <2 x double> %i.eu, i64 0 ; 2 uses
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.fd, double %i.ex, double %i.fc)
  %i.ff = fmul double %i.fa, 5.000000e+00
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.ew, double 2.000000e+00, double %i.ff)
  %i.fh = fsub double %i.fg, %i.di
  %i.fi = extractelement <2 x double> %i.eu, i64 1 ; 2 uses
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.fi, double %i.fh, double %i.fe)
  %i.fk = fptrunc double %i.fj to float
  %i.fl = fpext float %i.fk to double
  %i.fm = fadd double %i.fd, %i.ek
  %i.fn = fadd double %i.fm, %i.fi
  %i.fo = fmul double %i.fn, 6.000000e+00
  %i.fp = fdiv double %i.fl, %i.fo
  %i.fq = fptrunc double %i.fp to float
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.cf, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.fq, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, float } @_ZN7openvdb5v13_04math10ISGradientILNS1_7DSchemeE13EE6resultINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEEEENS1_4Vec3INT_9ValueTypeEEERKSL_(ptr noundef nonnull align 8 dereferenceable(140) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !529  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load float, ptr %i.b, align 4, !tbaa !205 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.i = load <2 x float>, ptr %i.c, align 4, !tbaa !205
  %i.j = load <2 x float>, ptr %i.d, align 4, !tbaa !205 ; 2 uses
  %i.k = load <2 x float>, ptr %i.e, align 4, !tbaa !205 ; 2 uses
  %i.l = fsub <2 x float> %i.i, %i.j              ; 3 uses
  %i.m = fsub <2 x float> %i.j, %i.k              ; 5 uses
  %i.n = insertelement <2 x float> poison, float %i.f, i64 0 ; 2 uses
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.p = fsub <2 x float> %i.k, %i.o              ; 4 uses
  %i.q = load <2 x float>, ptr %i.g, align 4, !tbaa !205 ; 2 uses
  %i.r = fsub <2 x float> %i.o, %i.q              ; 5 uses
  %i.s = load <2 x float>, ptr %i.h, align 4, !tbaa !205
  %i.t = fsub <2 x float> %i.q, %i.s              ; 2 uses
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> splat (float -2.000000e+00), <2 x float> %i.l)
  %i.v = fadd <2 x float> %i.u, %i.p              ; 2 uses
  %i.w = fmul <2 x float> %i.v, %i.v
  %i.x = fpext <2 x float> %i.w to <2 x double>
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> splat (float -4.000000e+00), <2 x float> %i.l)
  %i.z = fpext <2 x float> %i.y to <2 x double>
  %i.aa = fpext <2 x float> %i.p to <2 x double>  ; 5 uses
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> splat (double 3.000000e+00), <2 x double> %i.z) ; 2 uses
  %i.ac = fmul <2 x double> %i.ab, %i.ab
  %i.ad = fmul <2 x double> %i.ac, splat (double 2.500000e-01)
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.ad)
  %i.af = fadd <2 x double> %i.ae, splat (double f0x3E45798EDA22F6A5) ; 2 uses
  %i.ag = fmul <2 x double> %i.af, %i.af
  %i.ah = fdiv <2 x double> splat (double 1.000000e-01), %i.ag ; 2 uses
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> splat (float -2.000000e+00), <2 x float> %i.m)
  %i.aj = fadd <2 x float> %i.ai, %i.r            ; 2 uses
  %i.ak = fmul <2 x float> %i.aj, %i.aj
  %i.al = fpext <2 x float> %i.ak to <2 x double>
  %i.am = fsub <2 x float> %i.m, %i.r             ; 2 uses
  %i.an = fmul <2 x float> %i.am, %i.am
  %i.ao = fpext <2 x float> %i.an to <2 x double>
  %i.ap = fmul <2 x double> %i.ao, splat (double 2.500000e-01)
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.ap)
  %i.ar = fadd <2 x double> %i.aq, splat (double f0x3E45798EDA22F6A5) ; 2 uses
  %i.as = fmul <2 x double> %i.ar, %i.ar
  %i.at = fdiv <2 x double> splat (double 6.000000e-01), %i.as ; 2 uses
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> splat (float -2.000000e+00), <2 x float> %i.p)
  %i.av = fadd <2 x float> %i.au, %i.t            ; 2 uses
  %i.aw = fmul <2 x float> %i.av, %i.av
  %i.ax = fpext <2 x float> %i.aw to <2 x double>
  %i.ay = fmul <2 x float> %i.r, splat (float 4.000000e+00)
  %i.az = fpext <2 x float> %i.ay to <2 x double>
  %i.ba = fneg <2 x double> %i.az
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> splat (double 3.000000e+00), <2 x double> %i.ba)
  %i.bc = fpext <2 x float> %i.t to <2 x double>  ; 2 uses
  %i.bd = fadd <2 x double> %i.bb, %i.bc          ; 2 uses
  %i.be = fmul <2 x double> %i.bd, %i.bd
  %i.bf = fmul <2 x double> %i.be, splat (double 2.500000e-01)
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.bf)
  %i.bh = fadd <2 x double> %i.bg, splat (double f0x3E45798EDA22F6A5) ; 2 uses
  %i.bi = fmul <2 x double> %i.bh, %i.bh
  %i.bj = fdiv <2 x double> splat (double 3.000000e-01), %i.bi ; 2 uses
  %i.bk = fpext <2 x float> %i.l to <2 x double>
  %i.bl = fpext <2 x float> %i.m to <2 x double>  ; 2 uses
  %i.bm = fmul <2 x double> %i.bl, splat (double -7.000000e+00)
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> splat (double 2.000000e+00), <2 x double> %i.bm)
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> splat (double 1.100000e+01), <2 x double> %i.bn)
  %i.bp = fneg <2 x double> %i.bl
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> splat (double 5.000000e+00), <2 x double> %i.bp)
  %i.br = fpext <2 x float> %i.r to <2 x double>  ; 2 uses
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> splat (double 2.000000e+00), <2 x double> %i.bq)
  %i.bt = fmul <2 x double> %i.bs, %i.at
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.bo, <2 x double> %i.bt)
  %i.bv = fmul <2 x double> %i.br, splat (double 5.000000e+00)
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> splat (double 2.000000e+00), <2 x double> %i.bv)
  %i.bx = fsub <2 x double> %i.bw, %i.bc
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bx, <2 x double> %i.bu)
  %i.bz = fptrunc <2 x double> %i.by to <2 x float>
  %i.ca = fpext <2 x float> %i.bz to <2 x double>
  %i.cb = fadd <2 x double> %i.ah, %i.at
  %i.cc = fadd <2 x double> %i.cb, %i.bj
  %i.cd = fmul <2 x double> %i.cc, splat (double 6.000000e+00)
  %i.ce = fdiv <2 x double> %i.ca, %i.cd
  %i.cf = fptrunc <2 x double> %i.ce to <2 x float>
  %i.cg = fneg <2 x float> %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !205
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !205
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !205 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.co = load float, ptr %i.cn, align 4, !tbaa !205
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !205
  %i.cr = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.cm, i64 1
  %i.ct = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cu = insertelement <2 x float> %i.ct, float %i.f, i64 1 ; 2 uses
  %i.cv = fsub <2 x float> %i.cs, %i.cu           ; 3 uses
  %i.cw = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cx = insertelement <2 x float> %i.cw, float %i.co, i64 1 ; 2 uses
  %i.cy = fsub <2 x float> %i.cu, %i.cx           ; 4 uses
  %i.cz = insertelement <2 x float> %i.n, float %i.cq, i64 1
  %i.da = fsub <2 x float> %i.cx, %i.cz           ; 4 uses
  %i.db = extractelement <2 x float> %i.cv, i64 0
  %i.dc = extractelement <2 x float> %i.da, i64 0
  %i.dd = extractelement <2 x float> %i.cy, i64 1 ; 3 uses
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> splat (float -2.000000e+00), <2 x float> %i.cv)
  %i.df = fadd <2 x float> %i.da, %i.de           ; 2 uses
  %i.dg = fmul <2 x float> %i.df, %i.df
  %i.dh = fpext <2 x float> %i.dg to <2 x double>
  %i.di = extractelement <2 x float> %i.da, i64 1
  %i.dj = fpext float %i.di to double             ; 2 uses
  %i.dk = shufflevector <2 x float> %i.da, <2 x float> %i.cv, <4 x i32> <i32 0, i32 poison, i32 0, i32 2>
  %i.dl = extractelement <2 x float> %i.cy, i64 0 ; 3 uses
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dl, float -4.000000e+00, float %i.db)
  %i.dn = fpext float %i.dm to double
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dc, float -2.000000e+00, float %i.dl)
  %i.dp = fadd float %i.do, %i.dd                 ; 2 uses
  %i.dq = fsub float %i.dl, %i.dd                 ; 2 uses
  %i.dr = fmul float %i.dq, %i.dq
  %i.ds = fpext float %i.dr to double
  %i.dt = fmul double %i.ds, 2.500000e-01
  %i.du = fmul <2 x float> %i.cy, <float 1.000000e+00, float 4.000000e+00>
  %i.dv = fpext <2 x float> %i.du to <2 x double> ; 2 uses
  %i.dw = extractelement <2 x double> %i.dv, i64 0
  %i.dx = fmul double %i.dw, -7.000000e+00
  %i.dy = fmul float %i.dp, %i.dp
  %i.dz = insertelement <4 x float> %i.dk, float %i.dy, i64 1
  %i.ea = fpext <4 x float> %i.dz to <4 x double> ; 2 uses
  %i.eb = insertelement <4 x double> poison, double %i.dn, i64 0
  %i.ec = insertelement <4 x double> %i.eb, double %i.dt, i64 1
  %i.ed = fneg <2 x double> %i.dv                 ; 2 uses
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ef = shufflevector <4 x double> %i.ec, <4 x double> %i.ee, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.eg = insertelement <4 x double> %i.ef, double %i.dx, i64 3
  %i.eh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ea, <4 x double> <double 3.000000e+00, double f0x3FF1555555555555, double 3.000000e+00, double 2.000000e+00>, <4 x double> %i.eg) ; 4 uses
  %i.ei = extractelement <4 x double> %i.eh, i64 1
  %i.ej = fadd double %i.ei, f0x3E45798EDA22F6A5  ; 2 uses
  %i.ek = fmul double %i.ej, %i.ej
  %i.el = fdiv double 6.000000e-01, %i.ek         ; 2 uses
  %i.em = extractelement <4 x double> %i.eh, i64 2
  %i.en = fadd double %i.em, %i.dj
  %i.eo = shufflevector <4 x double> %i.eh, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.ep = insertelement <2 x double> %i.eo, double %i.en, i64 1 ; 2 uses
  %i.eq = fmul <2 x double> %i.ep, %i.ep
  %i.er = fmul <2 x double> %i.eq, splat (double 2.500000e-01)
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.er)
  %i.et = fadd <2 x double> %i.es, splat (double f0x3E45798EDA22F6A5) ; 2 uses
  %i.eu = fmul <2 x double> %i.et, %i.et
  %i.ev = fdiv <2 x double> <double 1.000000e-01, double 3.000000e-01>, %i.eu ; 2 uses
  %i.ew = extractelement <4 x double> %i.eh, i64 3
  %i.ex = extractelement <4 x double> %i.ea, i64 0 ; 3 uses
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.ex, double 1.100000e+01, double %i.ew)
  %i.ez = extractelement <2 x double> %i.ed, i64 0
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.ex, double 5.000000e+00, double %i.ez)
  %i.fb = fpext float %i.dd to double             ; 2 uses
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.fb, double 2.000000e+00, double %i.fa)
  %i.fd = fmul double %i.fc, %i.el
  %i.fe = extractelement <2 x double> %i.ev, i64 0 ; 2 uses
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.fe, double %i.ey, double %i.fd)
  %i.fg = fmul double %i.fb, 5.000000e+00
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.ex, double 2.000000e+00, double %i.fg)
  %i.fi = fsub double %i.fh, %i.dj
  %i.fj = extractelement <2 x double> %i.ev, i64 1 ; 2 uses
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fj, double %i.fi, double %i.ff)
  %i.fl = fptrunc double %i.fk to float
  %i.fm = fpext float %i.fl to double
  %i.fn = fadd double %i.fe, %i.el
  %i.fo = fadd double %i.fn, %i.fj
  %i.fp = fmul double %i.fo, 6.000000e+00
  %i.fq = fdiv double %i.fm, %i.fp
  %i.fr = fptrunc double %i.fq to float
  %i.fs = fneg float %i.fr
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.cg, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.fs, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvPN7openvdb5v13_05tools16LevelSetMorphingINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEE5MorphINS1_4math15UniformScaleMapELNSK_20BiasedGradientSchemeE4ELNSK_25TemporalIntegrationSchemeE0EEERKNS5_11LeafManagerISE_E9LeafRangeEESt5_BindIFMSO_FvSU_fjESt12_PlaceholderILi1EESZ_ILi2EEfiEEE9_M_invokeERKSt9_Any_dataOSP_SU_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !849    ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !854
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !219 ; 3 uses
  %.elt5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.unpack6.i.i.i.i.i.i = load i64, ptr %.elt5.i.i.i.i.i.i, align 8, !tbaa !219
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %.unpack6.i.i.i.i.i.i ; 2 uses
  %i.d = and i64 %.unpack.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !188
  %i.f = getelementptr i8, ptr %i.e, i64 %.unpack.i.i.i.i.i.i
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load ptr, ptr %i.g, align 8, !nosanitize !223
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS2_4GridINS2_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS2_4util15NullInterrupterEE5MorphINS2_4math15UniformScaleMapELNSL_20BiasedGradientSchemeE4ELNSL_25TemporalIntegrationSchemeE0EEEFvRKNS6_11LeafManagerISF_E9LeafRangeEfjESt12_PlaceholderILi1EESX_ILi2EEfiEEJPSP_SU_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES15_E4typeEOS16_DpOS17_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %.unpack.i.i.i.i.i.i to ptr
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS2_4GridINS2_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS2_4util15NullInterrupterEE5MorphINS2_4math15UniformScaleMapELNSL_20BiasedGradientSchemeE4ELNSL_25TemporalIntegrationSchemeE0EEEFvRKNS6_11LeafManagerISF_E9LeafRangeEfjESt12_PlaceholderILi1EESX_ILi2EEfiEEJPSP_SU_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES15_E4typeEOS16_DpOS17_.exit

_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS2_4GridINS2_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS2_4util15NullInterrupterEE5MorphINS2_4math15UniformScaleMapELNSL_20BiasedGradientSchemeE4ELNSL_25TemporalIntegrationSchemeE0EEEFvRKNS6_11LeafManagerISF_E9LeafRangeEfjESt12_PlaceholderILi1EESX_ILi2EEfiEEJPSP_SU_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES15_E4typeEOS16_DpOS17_.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.m = load float, ptr %i.l, align 4, !tbaa !205
  %i.n = load i32, ptr %i.k, align 8, !tbaa !244
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.m, i32 noundef %i.n), !inline_history !3419
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvPN7openvdb5v13_05tools16LevelSetMorphingINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEE5MorphINS1_4math15UniformScaleMapELNSK_20BiasedGradientSchemeE4ELNSK_25TemporalIntegrationSchemeE0EEERKNS5_11LeafManagerISE_E9LeafRangeEESt5_BindIFMSO_FvSU_fjESt12_PlaceholderILi1EESZ_ILi2EEfiEEE10_M_managerERSt9_Any_dataRKS15_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_4util15NullInterrupterEE5MorphINS3_4math15UniformScaleMapELNSM_20BiasedGradientSchemeE4ELNSM_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfjESt12_PlaceholderILi1EESY_ILi2EEfiEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEE5MorphINS1_4math15UniformScaleMapELNSK_20BiasedGradientSchemeE4ELNSK_25TemporalIntegrationSchemeE0EEEFvRKNS5_11LeafManagerISE_E9LeafRangeEfjESt12_PlaceholderILi1EESW_ILi2EEfiEE, ptr %0, align 8, !tbaa !386
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_4util15NullInterrupterEE5MorphINS3_4math15UniformScaleMapELNSM_20BiasedGradientSchemeE4ELNSM_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfjESt12_PlaceholderILi1EESY_ILi2EEfiEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !849
  store ptr %i.a, ptr %0, align 8, !tbaa !849
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_4util15NullInterrupterEE5MorphINS3_4math15UniformScaleMapELNSM_20BiasedGradientSchemeE4ELNSM_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfjESt12_PlaceholderILi1EESY_ILi2EEfiEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !849
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store ptr %i.c, ptr %0, align 8, !tbaa !849
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_4util15NullInterrupterEE5MorphINS3_4math15UniformScaleMapELNSM_20BiasedGradientSchemeE4ELNSM_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfjESt12_PlaceholderILi1EESY_ILi2EEfiEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !849    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_4util15NullInterrupterEE5MorphINS3_4math15UniformScaleMapELNSM_20BiasedGradientSchemeE4ELNSM_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfjESt12_PlaceholderILi1EESY_ILi2EEfiEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #26
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_4util15NullInterrupterEE5MorphINS3_4math15UniformScaleMapELNSM_20BiasedGradientSchemeE4ELNSM_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfjESt12_PlaceholderILi1EESY_ILi2EEfiEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_4util15NullInterrupterEE5MorphINS3_4math15UniformScaleMapELNSM_20BiasedGradientSchemeE4ELNSM_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfjESt12_PlaceholderILi1EESY_ILi2EEfiEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools16LevelSetMorphingINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE5MorphINS0_4math15UniformScaleMapELNSJ_20BiasedGradientSchemeE4ELNSJ_25TemporalIntegrationSchemeE0EEclERKNS4_11LeafManagerISD_E9LeafRangeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !246
  %.not.i.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not, label %bb.b, label %_ZNKSt8functionIFvPN7openvdb5v13_05tools16LevelSetMorphingINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEE5MorphINS1_4math15UniformScaleMapELNSK_20BiasedGradientSchemeE4ELNSK_25TemporalIntegrationSchemeE0EEERKNS5_11LeafManagerISE_E9LeafRangeEEEclESP_SU_.exit

_ZNKSt8functionIFvPN7openvdb5v13_05tools16LevelSetMorphingINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEE5MorphINS1_4math15UniformScaleMapELNSK_20BiasedGradientSchemeE4ELNSK_25TemporalIntegrationSchemeE0EEERKNS5_11LeafManagerISE_E9LeafRangeEEEclESP_SU_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !854
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !855
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1), !inline_history !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !215
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !218
  store i8 0, ptr %i.g, align 8, !tbaa !219
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.51, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #20 ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !220    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !219
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = landingpad { ptr, i32 }
end_hunk_0
