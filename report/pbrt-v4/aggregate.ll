Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/aggregate?download=true
inline.NumInlined: 2847
inline.NumDeleted: 905
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@"_ZNSt17_Function_handlerIFvlEZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E9_M_invokeERKSt9_Any_dataOl":bb.a
  %i.h = shl i64 %.val2, 32
  %i.i = ashr exact i64 %i.h, 32                  ; 15 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.i
  %i.k = load float, ptr %i.j, align 4, !tbaa !53, !noalias !764
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <2 x float> poison, float %i.k, i64 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54, !noalias !764
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.i
  %i.o = load float, ptr %i.n, align 4, !tbaa !53, !noalias !764
  %.sroa.0.4.vec.insert.i.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i.i.i, float %i.o, i64 1 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !55, !noalias !764
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.i
  %i.s = load float, ptr %i.r, align 4, !tbaa !53, !noalias !764 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57, !noalias !764
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.i
  %i.w = load float, ptr %i.v, align 4, !tbaa !53, !noalias !764 ; 2 uses
  %.sroa.0.0.vec.insert.i12.i.i.i.i.i = insertelement <2 x float> poison, float %i.w, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58, !noalias !764
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.i
  %i.aa = load float, ptr %i.z, align 4, !tbaa !53, !noalias !764 ; 2 uses
  %.sroa.0.4.vec.insert.i13.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i12.i.i.i.i.i, float %i.aa, i64 1 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !59, !noalias !764
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.i
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !53, !noalias !764 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !62, !noalias !764
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.i
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !53, !noalias !764
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !63, !noalias !764
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !65, !noalias !764
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !207, !noalias !765
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.i
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !53, !noalias !765 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !97, !noalias !766
  %i.at = getelementptr inbounds [16 x i8], ptr %i.as, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load <2 x float>, ptr %i.at, align 16, !noalias !766
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !98, !noalias !766
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !99, !noalias !766
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.av, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i16.i.i.i.i.i.i.i = load <2 x float>, ptr %i.aw, align 16, !noalias !766
  %.sroa.2.0..0..sroa_idx.i17.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.2.0.copyload.i18.i.i.i.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i17.i.i.i.i.i.i.i, align 8, !tbaa !98, !noalias !766
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !100, !noalias !765
  %i.az = getelementptr inbounds [16 x i8], ptr %i.ay, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i9.i.i.i.i = load <2 x float>, ptr %i.az, align 16, !noalias !765
  %.sroa.2.0..0..sroa_idx.i.i.i.i10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.2.0.copyload.i.i.i.i11.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i10.i.i.i.i, align 8, !tbaa !98, !noalias !765
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !100, !noalias !765
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i14.i.i.i.i = load <2 x float>, ptr %i.bc, align 16, !noalias !765 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i.i15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.2.0.copyload.i.i.i.i16.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i15.i.i.i.i, align 8, !tbaa !98, !noalias !765
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !100, !noalias !765
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.i
  %i.bg = load <4 x float>, ptr %i.bf, align 16, !noalias !765 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !208, !noalias !765
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !76, !noalias !765
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 256 ; 3 uses
  store i8 0, ptr %i.bl, align 8, !tbaa !114
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !767
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store <2 x float> %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %5, align 8
  %.sroa.11.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.11.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !98
  %.sroa.11.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x float> %.sroa.0.0.copyload.i16.i.i.i.i.i.i.i, ptr %.sroa.11.sroa.3.0..sroa_idx.i.i.i, align 8
  %.sroa.11.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store <2 x float> %.sroa.2.0.copyload.i18.i.i.i.i.i.i.i, ptr %.sroa.11.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !98
  %i.bo = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %.sroa.0.4.vec.insert.i13.i.i.i.i.i, %i.bp
  %i.br = fmul float %i.ae, %i.aq
  %i.bs = fadd <2 x float> %.sroa.0.4.vec.insert.i.i.i.i.i.i, %i.bq
  %i.bt = fadd float %i.s, %i.br
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bu = bitcast float %i.s to i32
  %i.bv = bitcast <2 x float> %.sroa.0.4.vec.insert.i.i.i.i.i.i to i64
  %i.bw = mul i64 %i.bv, -4132994306676758123     ; 2 uses
  %i.bx = lshr i64 %i.bw, 47
  %i.by = xor i64 %i.bx, %i.bw
  %i.bz = mul i64 %i.by, -4132994306676758123
  %i.ca = xor i64 %i.bz, 5744300541007557372
  %i.cb = mul i64 %i.ca, -4132994306676758123
  %i.cc = zext i32 %i.bu to i64
  %i.cd = xor i64 %i.cb, %i.cc
  %i.ce = mul i64 %i.cd, -4132994306676758123     ; 2 uses
  %i.cf = lshr i64 %i.ce, 47
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = mul i64 %i.cg, -4132994306676758123     ; 2 uses
  %i.ci = lshr i64 %i.ch, 47
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = bitcast float %i.ae to i32
  %i.cl = bitcast <2 x float> %.sroa.0.4.vec.insert.i13.i.i.i.i.i to i64
  %i.cm = mul i64 %i.cl, -4132994306676758123     ; 2 uses
  %i.cn = lshr i64 %i.cm, 47
  %i.co = xor i64 %i.cn, %i.cm
  %i.cp = mul i64 %i.co, -4132994306676758123
  %i.cq = xor i64 %i.cp, 5744300541007557372
  %i.cr = mul i64 %i.cq, -4132994306676758123
  %i.cs = zext i32 %i.ck to i64
  %i.ct = xor i64 %i.cr, %i.cs
  %i.cu = mul i64 %i.ct, -4132994306676758123     ; 2 uses
  %i.cv = lshr i64 %i.cu, 47
  %i.cw = xor i64 %i.cv, %i.cu
  %i.cx = mul i64 %i.cw, -4132994306676758123     ; 2 uses
  %i.cy = lshr i64 %i.cx, 47
  %i.cz = xor i64 %i.cy, %i.cx
  %i.da = shl i64 %i.cj, 1
  %i.db = or disjoint i64 %i.da, 1                ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !210
  %i.dd = add i64 %i.cz, %i.db
  %i.de = mul i64 %i.dd, 6364136223846793005
  %i.df = add i64 %i.de, %i.db
  store i64 %i.df, ptr %6, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <4 x float> splat (float 1.000000e+00), ptr %7, align 16, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <4 x float> splat (float 1.000000e+00), ptr %8, align 16, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store <4 x float> splat (float 1.000000e+00), ptr %9, align 16, !tbaa !53
  %i.dj = fcmp une float %i.w, 0.000000e+00
  %i.dk = fcmp une float %i.aa, 0.000000e+00
  %or.cond.i261.i.i.i.i = select i1 %i.dj, i1 true, i1 %i.dk
  %i.dl = fcmp une float %i.ae, 0.000000e+00
  %or.cond262.i.i.i.i = select i1 %or.cond.i261.i.i.i.i, i1 true, i1 %i.dl
  br i1 %or.cond262.i.i.i.i, label %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i, label %.thread249.thread.i.i.i.i

_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i: ; preds = %bb.a
  %.sroa.10192.0..sroa_idx193.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.14.0..sroa_idx197.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 12
  %.sroa.21.0..sroa_idx207.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 20
  %.sroa.26.0..sroa_idx213.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 192
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 208
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 248
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 248
  %.sroa.0.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %.sroa.10192.0..sroa_idx195.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.14.0..sroa_idx199.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 12
  %.sroa.21.0..sroa_idx209.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 20
  %.sroa.26.0..sroa_idx215.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 32
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.4164.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ef = getelementptr inbounds nuw i8, ptr %12, i64 40
  %.sroa.210.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.i.i.i.i

_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.i.i.i.i: ; preds = %bb.f, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i
  %.sroa.0.0.copyload.i.i25.i.i.i = phi float [ undef, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.f ]
  %i.ei = phi i1 [ false, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i ], [ true, %bb.f ]
  %.sroa.27217.0268.i.i.i.i = phi i64 [ %i.am, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i ], [ %storemerge.i.i.i.i.i.i.i, %bb.f ] ; 5 uses
  %.sroa.26.0267.i.i.i.i = phi float [ %i.ai, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i ], [ %i.gx, %bb.f ] ; 2 uses
  %.sroa.21.0266.i.i.i.i = phi float [ %i.ae, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i ], [ %i.hg, %bb.f ] ; 4 uses
  %.sroa.10192.0264.i.i.i.i = phi float [ %i.s, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i ], [ %.fca.1.extract.i.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %.sroa.0187.0263.i.i.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i.i.i.i.i, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i ], [ %.fca.0.extract.i.i.i.i.i.i.i.i, %bb.f ] ; 4 uses
  %i.ej = phi <2 x float> [ %.sroa.0.4.vec.insert.i13.i.i.i.i.i, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i ], [ %.fr4, %bb.f ] ; 4 uses
  store <2 x float> %.sroa.0187.0263.i.i.i.i, ptr %10, align 8
  store float %.sroa.10192.0264.i.i.i.i, ptr %.sroa.10192.0..sroa_idx193.i.i.i.i, align 8
  store <2 x float> %i.ej, ptr %.sroa.14.0..sroa_idx197.i.i.i.i, align 4
  store float %.sroa.21.0266.i.i.i.i, ptr %.sroa.21.0..sroa_idx207.i.i.i.i, align 4
  store float %.sroa.26.0267.i.i.i.i, ptr %.sroa.26.0..sroa_idx213.i.i.i.i, align 8
  store i64 %.sroa.27217.0268.i.i.i.i, ptr %i.dm, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !768
  call void @_ZNK4pbrt9Primitive9IntersectERKNS_3RayEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull align 8 dereferenceable(40) %10, float noundef %i.aq)
  br i1 %i.ei, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEE5valueEv.exit.i.i.i.i.i.i.i, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEE5resetEv.exit.i.i.i.i.i.i

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEE5valueEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.i.i.i.i
  store i8 0, ptr %i.bl, align 8, !tbaa !114, !noalias !768
  br label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEE5resetEv.exit.i.i.i.i.i.i

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEE5resetEv.exit.i.i.i.i.i.i: ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEE5valueEv.exit.i.i.i.i.i.i.i, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.i.i.i.i
  %i.ek = load i8, ptr %i.do, align 8, !tbaa !114, !range !115, !noalias !768, !noundef !44
  %i.el = trunc nuw i8 %i.ek to i1                ; 2 uses
  br i1 %i.el, label %bb.b, label %.thread.i.i.i.i

bb.b:                                             ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEE5resetEv.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(257) %12, ptr noundef nonnull align 8 dereferenceable(257) %4, i64 72, i1 false), !noalias !768
  %i.em = load i64, ptr %i.dq, align 8, !tbaa !65, !noalias !768
  store i64 %i.em, ptr %i.dp, align 8, !tbaa !65, !noalias !768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dr, ptr noundef nonnull align 8 dereferenceable(112) %i.ds, i64 112, i1 false), !noalias !768
  %i.en = load <2 x i64>, ptr %i.du, align 8, !tbaa !43, !noalias !768
  %i.eo = load i64, ptr %i.du, align 8, !tbaa !147, !noalias !768
  store <2 x i64> %i.en, ptr %i.dt, align 8, !tbaa !43, !noalias !768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dv, ptr noundef nonnull align 8 dereferenceable(40) %i.dw, i64 40, i1 false), !noalias !768
  %i.ep = load float, ptr %i.dy, align 8, !tbaa !127, !noalias !768
  store float %i.ep, ptr %i.dx, align 8, !tbaa !127, !noalias !768
  store i8 1, ptr %i.bl, align 8, !tbaa !114, !noalias !768
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !768
  %.sroa.0.sroa.0.0.copyload.i.i.i.i.i.i = load float, ptr %12, align 8, !noalias !768 ; 3 uses
  %.sroa.0.sroa.3.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !768
  %.sroa.0.sroa.4.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !768
  %.sroa.0.sroa.6.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !768
  %i.eq = fadd float %.sroa.0.sroa.3.0.copyload.i.i.i.i.i.i, %.sroa.0.sroa.4.0.copyload.i.i.i.i.i.i
  %i.er = fmul float %i.eq, 5.000000e-01
  %i.es = load <4 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !768
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.eu = insertelement <2 x float> poison, float %.sroa.0.sroa.0.0.copyload.i.i.i.i.i.i, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %.sroa.0.sroa.6.0.copyload.i.i.i.i.i.i, i64 1
  %i.ew = fadd <2 x float> %i.et, %i.ev
  %i.ex = fmul <2 x float> %i.ew, splat (float 5.000000e-01)
  %i.ey = and i64 %i.eo, 144115188075855871
  %.not257.i.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not257.i.i.i.i, label %bb.c, label %"_ZSt10__invoke_rIvRZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS0_9WorkQueueINS0_17ShadowRayWorkItemEEEPNS0_3SOAINS0_16PixelSampleStateEEEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

bb.c:                                             ; preds = %bb.b
  %i.ez = and i64 %.sroa.27217.0268.i.i.i.i, 144115188075855871
  %.not258.i.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not258.i.i.i.i, label %..thread247_crit_edge.i.i.i.i, label %bb.d

..thread247_crit_edge.i.i.i.i:                    ; preds = %bb.c
  %i.fa = load <4 x float>, ptr %7, align 16
  br label %.thread247.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEE5resetEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !768
  %i.fb = and i64 %.sroa.27217.0268.i.i.i.i, 144115188075855871
  %.not.i.i.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not.i.i.i.i, label %.thread249.i.i.i.i, label %.thread244.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %.sroa.0.4.vec.extract.i.i.i.i.i = extractelement <2 x float> %.sroa.0187.0263.i.i.i.i, i64 1
  %i.fc = fsub float %.sroa.0.4.vec.extract.i.i.i.i.i, %i.er ; 2 uses
  %i.fd = fmul float %i.fc, %i.fc
  %i.fe = insertelement <2 x float> %.sroa.0187.0263.i.i.i.i, float %.sroa.10192.0264.i.i.i.i, i64 1
  %i.ff = fsub <2 x float> %i.fe, %i.ex           ; 2 uses
  %i.fg = fmul <2 x float> %i.ff, %i.ff           ; 2 uses
  %i.fh = extractelement <2 x float> %i.fg, i64 0
  %i.fi = fadd float %i.fh, %i.fd
  %i.fj = extractelement <2 x float> %i.fg, i64 1
  %i.fk = fadd float %i.fi, %i.fj
  %sqrt.i.i.i.i.i.i = call noundef float @llvm.sqrt.f32(float %i.fk)
  %i.fl = fmul <2 x float> %i.ej, %i.ej           ; 2 uses
  %shift = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %i.fl
  %i.fm = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fn = fmul float %.sroa.21.0266.i.i.i.i, %.sroa.21.0266.i.i.i.i
  %i.fo = fadd float %i.fm, %i.fn
  %sqrt.i.i.i.i.i = call noundef float @llvm.sqrt.f32(float %i.fo)
  %i.fp = fdiv float %sqrt.i.i.i.i.i.i, %sqrt.i.i.i.i.i
  br label %.thread244.i.i.i.i

.thread244.i.i.i.i:                               ; preds = %bb.d, %.thread.i.i.i.i
  %.sroa.0.0.copyload.i.i24.i.i.i = phi float [ %.sroa.0.sroa.0.0.copyload.i.i.i.i.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i25.i.i.i, %.thread.i.i.i.i ]
  %i.fq = phi float [ %i.fp, %bb.d ], [ %i.aq, %.thread.i.i.i.i ]
  store <2 x float> %.sroa.0187.0263.i.i.i.i, ptr %11, align 8
  store float %.sroa.10192.0264.i.i.i.i, ptr %.sroa.10192.0..sroa_idx195.i.i.i.i, align 8
  store <2 x float> %i.ej, ptr %.sroa.14.0..sroa_idx199.i.i.i.i, align 4
  store float %.sroa.21.0266.i.i.i.i, ptr %.sroa.21.0..sroa_idx209.i.i.i.i, align 4
  store float %.sroa.26.0267.i.i.i.i, ptr %.sroa.26.0..sroa_idx215.i.i.i.i, align 8
  store i64 %.sroa.27217.0268.i.i.i.i, ptr %i.dz, align 8, !tbaa !65
  %i.fr = load i64, ptr %6, align 8, !tbaa !211   ; 4 uses
  %i.fs = mul i64 %i.fr, 6364136223846793005
  %i.ft = load i64, ptr %i.dc, align 8, !tbaa !210
  %i.fu = add i64 %i.fs, %i.ft
  store i64 %i.fu, ptr %6, align 8, !tbaa !211
  %i.fv = lshr i64 %i.fr, 45
  %i.fw = lshr i64 %i.fr, 27
  %i.fx = xor i64 %i.fv, %i.fw
  %i.fy = trunc i64 %i.fx to i32                  ; 2 uses
  %i.fz = lshr i64 %i.fr, 59
  %i.ga = trunc nuw nsw i64 %i.fz to i32
  %i.gb = call noundef i32 @llvm.fshr.i32(i32 %i.fy, i32 %i.fy, i32 %i.ga)
  %i.gc = uitofp i32 %i.gb to float
  %i.gd = fmul nnan float %i.gc, f0x2F800000      ; 2 uses
  %i.ge = fcmp olt float %i.gd, f0x3F7FFFFF
  %.sroa.speculated.i.i.i.i.i = select i1 %i.ge, float %i.gd, float f0x3F7FFFFF
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %7, ptr %3, align 8
  store ptr %9, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  store ptr %8, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8
  store ptr %6, ptr %.sroa.4164.0..sroa_idx.i.i.i.i, align 8
  store float %i.fq, ptr %i.a, align 4, !tbaa !53
  store float %.sroa.speculated.i.i.i.i.i, ptr %i.b, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %11, ptr %2, align 8, !tbaa !769
  store ptr %i.a, ptr %i.ea, align 8, !tbaa !770
  store ptr %i.b, ptr %i.eb, align 8, !tbaa !770
  store ptr %6, ptr %i.ec, align 8, !tbaa !214
  store ptr %5, ptr %i.ed, align 8, !tbaa !771
  store ptr %3, ptr %i.ee, align 8, !tbaa !28
  %i.gf = lshr i64 %.sroa.27217.0268.i.i.i.i, 57
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = add nsw i32 %i.gg, -1
  %i.gi = call fastcc { <2 x float>, <2 x float> } @"_ZN4pbrt6detail8DispatchIRZNS_11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS4_17IntersectShadowTrEiS8_SC_ENKSD_clEiEUlNS_6Point3IfEEE_EEvS6_SC_T_T0_EUlSH_NS_16MediumPropertiesENS_15SampledSpectrumESM_E_EESM_SE_ffRNS_3RNGERKNS_18SampledWavelengthsESJ_EUlSJ_E_SM_NS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEESK_OSJ_Pvi"(ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i32 noundef %i.gh) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.gj = extractvalue { <2 x float>, <2 x float> } %i.gi, 0 ; 2 uses
  %i.gk = extractvalue { <2 x float>, <2 x float> } %i.gi, 1
  %i.gl = shufflevector <2 x float> %i.gj, <2 x float> %i.gk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gm = shufflevector <2 x float> %i.gj, <2 x float> poison, <4 x i32> zeroinitializer
  %i.gn = fdiv <4 x float> %i.gl, %i.gm           ; 3 uses
  %i.go = load <4 x float>, ptr %7, align 16, !tbaa !53
  %i.gp = fmul <4 x float> %i.gn, %i.go           ; 2 uses
  store <4 x float> %i.gp, ptr %7, align 16, !tbaa !53
  %i.gq = load <4 x float>, ptr %9, align 16, !tbaa !53
  %i.gr = fmul <4 x float> %i.gn, %i.gq
  store <4 x float> %i.gr, ptr %9, align 16, !tbaa !53
  %i.gs = load <4 x float>, ptr %8, align 16, !tbaa !53
  %i.gt = fmul <4 x float> %i.gn, %i.gs
  store <4 x float> %i.gt, ptr %8, align 16, !tbaa !53
  br i1 %i.el, label %.thread247.i.i.i.i, label %.thread249.i.i.i.i

.thread247.i.i.i.i:                               ; preds = %.thread244.i.i.i.i, %..thread247_crit_edge.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i = phi float [ %.sroa.0.sroa.0.0.copyload.i.i.i.i.i.i, %..thread247_crit_edge.i.i.i.i ], [ %.sroa.0.0.copyload.i.i24.i.i.i, %.thread244.i.i.i.i ] ; 2 uses
  %i.gu = phi <4 x float> [ %i.fa, %..thread247_crit_edge.i.i.i.i ], [ %i.gp, %.thread244.i.i.i.i ]
  %.fr = freeze <4 x float> %i.gu
  %i.gv = fcmp une <4 x float> %.fr, zeroinitializer
  %i.gw = bitcast <4 x i1> %i.gv to i4
  %.not = icmp eq i4 %i.gw, 0
  br i1 %.not, label %.thread249.i.i.i.i, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.i.i.i.i.i

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.i.i.i.i.i: ; preds = %.thread247.i.i.i.i
  %.sroa.6.0.copyload.i.i.i.i.i = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !772
  %.sroa.7.0.copyload.i.i.i.i.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !772
  %.sroa.8.0.copyload.i64.i.i.i.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !772
  %.sroa.09.0.copyload.i.i.i.i.i.i = load <2 x float>, ptr %i.ef, align 8, !noalias !772 ; 3 uses
  %.sroa.210.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !772 ; 3 uses
  %i.gx = load float, ptr %i.eg, align 8, !tbaa !151, !noalias !772
  %i.gy = fadd float %.sroa.7.0.copyload.i.i.i.i.i, %.sroa.8.0.copyload.i64.i.i.i.i
  %i.gz = fmul float %i.gy, 5.000000e-01
  %i.ha = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !772
  %i.hb = insertelement <2 x float> poison, float %.sroa.0.0.copyload.i.i.i.i.i, i64 0
  %i.hc = insertelement <2 x float> %i.hb, float %.sroa.6.0.copyload.i.i.i.i.i, i64 1
  %i.hd = fadd <2 x float> %i.hc, %i.ha
  %i.he = fmul <2 x float> %i.hd, splat (float 5.000000e-01)
  %i.hf = fsub <2 x float> %i.bs, %i.he
  %.fr4 = freeze <2 x float> %i.hf                ; 5 uses
  %i.hg = fsub float %i.bt, %i.gz                 ; 5 uses
  %i.hh = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %12, <2 x float> %.sroa.09.0.copyload.i.i.i.i.i.i, float %.sroa.210.0.copyload.i.i.i.i.i.i, <2 x float> %.fr4, float %i.hg) ; 2 uses
  %.fca.0.extract.i.i.i.i.i.i.i.i = extractvalue { <2 x float>, float } %i.hh, 0
  %.fca.1.extract.i.i.i.i.i.i.i.i = extractvalue { <2 x float>, float } %i.hh, 1
  %i.hi = load ptr, ptr %i.eh, align 8, !tbaa !138, !noalias !773 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.i.i.i.i.i
  %.sroa.01.0.vec.extract.i.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.09.0.copyload.i.i.i.i.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.09.0.copyload.i.i.i.i.i.i, i64 1
  %i.hj = fmul float %.sroa.210.0.copyload.i.i.i.i.i.i, %i.hg ; 2 uses
  %i.hk = extractelement <2 x float> %.fr4, i64 1
  %i.hl = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i.i.i.i.i.i, float %i.hk, float %i.hj)
  %i.hm = fneg float %i.hj
  %i.hn = call noundef float @llvm.fma.f32(float %.sroa.210.0.copyload.i.i.i.i.i.i, float %i.hg, float %i.hm)
  %i.ho = fadd float %i.hl, %i.hn
  %i.hp = extractelement <2 x float> %.fr4, i64 0
  %i.hq = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i.i.i.i.i.i, float %i.hp, float %i.ho)
  %i.hr = fcmp ogt float %i.hq, 0.000000e+00
  %spec.select.idx.i.i.i.i.i.i.i = select i1 %i.hr, i64 8, i64 0
  %spec.select.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 %spec.select.idx.i.i.i.i.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.i.i.i.i.i
  %storemerge.in.i.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i.i, %bb.e ], [ %i.dp, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.i.i.i.i.i ]
  %storemerge.i.i.i.i.i.i.i = load i64, ptr %storemerge.in.i.i.i.i.i.i.i, align 8, !tbaa !65, !noalias !773
  %i.hs = fcmp une <2 x float> %.fr4, zeroinitializer
  %13 = bitcast <2 x i1> %i.hs to i2
  %or.cond.i.i.i.i.i = icmp ne i2 %13, 0
  %i.ht = fcmp une float %i.hg, 0.000000e+00
  %or.cond.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i1 true, i1 %i.ht
  br i1 %or.cond.i.i.i.i, label %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.i.i.i.i, label %.thread249.i.i.i.i

.thread249.i.i.i.i:                               ; preds = %bb.f, %.thread247.i.i.i.i, %.thread244.i.i.i.i, %.thread.i.i.i.i
  %i.hu = load <4 x float>, ptr %7, align 16
  %.fr4.a = freeze <4 x float> %i.hu
  %i.hv = fcmp une <4 x float> %.fr4.a, zeroinitializer
  %i.hw = bitcast <4 x i1> %i.hv to i4
  %.not5 = icmp eq i4 %i.hw, 0
  br i1 %.not5, label %"_ZSt10__invoke_rIvRZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS0_9WorkQueueINS0_17ShadowRayWorkItemEEEPNS0_3SOAINS0_16PixelSampleStateEEEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit", label %.thread249.i..thread249.thread.i_crit_edge.i.i.i

.thread249.i..thread249.thread.i_crit_edge.i.i.i: ; preds = %.thread249.i.i.i.i
  %.pre.i.i.i = load float, ptr %8, align 16, !tbaa !53
  %.pre26.i.i.i = load float, ptr %i.dh, align 4, !tbaa !53
  %i.hx = load <2 x float>, ptr %i.di, align 8, !tbaa !53
  %i.hy = load <4 x float>, ptr %9, align 16, !tbaa !53
  %i.hz = shufflevector <2 x float> %i.hx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ia = fmul <4 x float> %i.bg, %i.hy
  br label %.thread249.thread.i.i.i.i

.thread249.thread.i.i.i.i:                        ; preds = %.thread249.i..thread249.thread.i_crit_edge.i.i.i, %bb.a
  %i.ib = phi float [ %.pre26.i.i.i, %.thread249.i..thread249.thread.i_crit_edge.i.i.i ], [ 1.000000e+00, %bb.a ]
  %i.ic = phi float [ %.pre.i.i.i, %.thread249.i..thread249.thread.i_crit_edge.i.i.i ], [ 1.000000e+00, %bb.a ]
  %i.id = phi <4 x float> [ %i.ia, %.thread249.i..thread249.thread.i_crit_edge.i.i.i ], [ %i.bg, %bb.a ]
  %i.ie = phi <4 x float> [ %i.hz, %.thread249.i..thread249.thread.i_crit_edge.i.i.i ], [ <float 1.000000e+00, float 1.000000e+00, float poison, float poison>, %bb.a ]
  %.sroa.0.0.vec.extract.i71.i.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i.i.i14.i.i.i.i, i64 0
  %i.if = fmul float %.sroa.0.0.vec.extract.i71.i.i.i.i, %i.ic
  %i.ig = shufflevector <2 x float> %.sroa.0.0.copyload.i.i.i.i14.i.i.i.i, <2 x float> %.sroa.2.0.copyload.i.i.i.i16.i.i.i.i, <4 x i32> <i32 poison, i32 1, i32 2, i32 3>
  %i.ih = insertelement <4 x float> %i.ig, float -0.000000e+00, i64 0
  %i.ii = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.ib, i64 1
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> %i.ie, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ik = fmul <4 x float> %i.ih, %i.ij
  %i.il = fadd <4 x float> %i.id, %i.ik
  %i.im = call float @llvm.vector.reduce.fadd.v4f32(float %i.if, <4 x float> %i.il)
  %i.in = fmul float %i.im, 2.500000e-01
  %.sroa.0.0.copyload4.i107.i.i.i.i = load <2 x float>, ptr %7, align 16
  %.sroa.8.0.copyload.i109.i.i.i.i = load <2 x float>, ptr %i.dg, align 8, !tbaa !98
  %i.io = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !100
  %i.iq = sext i32 %i.bk to i64
  %i.ir = getelementptr inbounds [16 x i8], ptr %i.ip, i64 %i.iq ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i4.i.i.i = load <2 x float>, ptr %i.ir, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i5.i.i.i = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i6.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i5.i.i.i, align 8, !tbaa !98
  %i.is = insertelement <2 x float> poison, float %i.in, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iu = fdiv <2 x float> %.sroa.0.0.copyload4.i107.i.i.i.i, %i.it
  %i.iv = fmul <2 x float> %.sroa.0.0.copyload.i.i.i.i9.i.i.i.i, %i.iu
  %i.iw = fadd <2 x float> %.sroa.0.0.copyload.i.i.i.i.i4.i.i.i, %i.iv
  %i.ix = fdiv <2 x float> %.sroa.8.0.copyload.i109.i.i.i.i, %i.it
  %i.iy = fmul <2 x float> %.sroa.2.0.copyload.i.i.i.i11.i.i.i.i, %i.ix
  %i.iz = fadd <2 x float> %.sroa.2.0.copyload.i.i.i.i.i6.i.i.i, %i.iy
  store <2 x float> %i.iw, ptr %i.ir, align 16
  store <2 x float> %i.iz, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i5.i.i.i, align 8, !tbaa !98
  br label %"_ZSt10__invoke_rIvRZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS0_9WorkQueueINS0_17ShadowRayWorkItemEEEPNS0_3SOAINS0_16PixelSampleStateEEEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

"_ZSt10__invoke_rIvRZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS0_9WorkQueueINS0_17ShadowRayWorkItemEEEPNS0_3SOAINS0_16PixelSampleStateEEEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit": ; preds = %bb.b, %.thread249.i.i.i.i, %.thread249.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvlEZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEE3$_0", ptr %0, align 8, !tbaa !48
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !28
  store ptr %.val, ptr %0, align 8, !tbaa !28
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !774
  store ptr %i.a, ptr %0, align 8, !tbaa !28
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !28 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal fastcc { <2 x float>, <2 x float> } @"_ZN4pbrt6detail8DispatchIRZNS_11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS4_17IntersectShadowTrEiS8_SC_ENKSD_clEiEUlNS_6Point3IfEEE_EEvS6_SC_T_T0_EUlSH_NS_16MediumPropertiesENS_15SampledSpectrumESM_E_EESM_SE_ffRNS_3RNGERKNS_18SampledWavelengthsESJ_EUlSJ_E_SM_NS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEESK_OSJ_Pvi"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.nanovdb::Coord", align 8    ; 14 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.pbrt::DDAMajorantIterator", align 8 ; 5 uses
  %4 = alloca %"class.pbrt::Ray", align 8         ; 9 uses
  %5 = alloca %"class.pstd::optional.221", align 4 ; 12 uses
  %6 = alloca %"class.pbrt::SampledSpectrum", align 8 ; 5 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.pbrt::HomogeneousMajorantIterator", align 4 ; 8 uses
  %8 = alloca %"class.pbrt::Ray", align 8         ; 9 uses
  %9 = alloca %"class.pbrt::SampledSpectrum", align 8 ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %.sroa.017.i.i.i = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %10 = alloca %class.anon.237, align 8           ; 4 uses
  %11 = alloca %class.anon.242, align 8           ; 4 uses
  %12 = alloca %"class.pbrt::DDAMajorantIterator", align 8 ; 5 uses
  %13 = alloca %"class.pbrt::Ray", align 8        ; 9 uses
  %14 = alloca %"class.pstd::optional.221", align 4 ; 12 uses
  %15 = alloca %"class.pbrt::SampledSpectrum", align 8 ; 5 uses
  %16 = alloca %"class.pbrt::DDAMajorantIterator", align 8 ; 5 uses
  %17 = alloca %"class.pbrt::Ray", align 8        ; 9 uses
  %18 = alloca %"class.pstd::optional.221", align 4 ; 12 uses
  %19 = alloca %"class.pbrt::SampledSpectrum", align 8 ; 5 uses
  %20 = alloca %"struct.pbrt::MediumProperties", align 16 ; 5 uses
  %21 = alloca %"class.pbrt::SampledSpectrum", align 8 ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !786, !nonnull !44, !align !45 ; 27 uses
  switch i32 %1, label %bb.ds [
    i32 0, label %bb.b
    i32 1, label %bb.al
    i32 2, label %bb.bm
    i32 3, label %bb.cs
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.1.0.copyload.i = load <2 x float>, ptr %.sroa.1.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.3.0.copyload.i = load float, ptr %.sroa.3.0..sroa_idx.i, align 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !787, !nonnull !44, !align !182
  %i.l = load float, ptr %i.k, align 4, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !788, !nonnull !44, !align !182
  %i.o = load float, ptr %i.n, align 4, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !789, !nonnull !44, !align !45 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !790, !nonnull !44, !align !182 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !791, !nonnull !44, !align !45 ; 4 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %i.u, align 8, !tbaa !793 ; 6 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !793 ; 4 uses
  %.sroa.36.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.36.0.copyload.i = load ptr, ptr %.sroa.36.0..sroa_idx.i, align 8, !tbaa !793 ; 2 uses
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.47.0.copyload.i = load ptr, ptr %.sroa.47.0..sroa_idx.i, align 8, !tbaa !214 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.1.0.copyload.i, %.sroa.1.0.copyload.i
  %foldExtExtBinop346 = fmul <2 x float> %.sroa.1.0.copyload.i, %.sroa.1.0.copyload.i
  %shift = shufflevector <2 x float> %foldExtExtBinop346, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop348 = fadd <2 x float> %foldExtExtBinop, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop348, i64 0
  %i.w = fmul float %.sroa.3.0.copyload.i, %.sroa.3.0.copyload.i
  %i.x = fadd float %i.w, %i.v
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.x)
  %i.y = fmul float %i.l, %sqrt.i.i.i             ; 4 uses
  %i.z = and i64 %i.i, 144115188075855871
  %i.aa = inttoptr i64 %i.z to ptr                ; 9 uses
  %i.ab = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(124) %i.aa, ptr noundef nonnull align 4 dereferenceable(32) %i.s), !noalias !794 ; 2 uses
  %i.ac = extractvalue { <2 x float>, <2 x float> } %i.ab, 0
  %i.ad = extractvalue { <2 x float>, <2 x float> } %i.ab, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.af = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 4 dereferenceable(32) %i.s), !noalias !794 ; 2 uses
  %i.ag = extractvalue { <2 x float>, <2 x float> } %i.af, 0
  %i.ah = extractvalue { <2 x float>, <2 x float> } %i.af, 1
  %i.ai = fadd <2 x float> %i.ac, %i.ag           ; 5 uses
  %i.aj = fadd <2 x float> %i.ad, %i.ah           ; 6 uses
  %i.ak = extractelement <2 x float> %i.ai, i64 0 ; 4 uses
  %i.al = fcmp oeq float %i.ak, 0.000000e+00
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 12
end_hunk_0
begin_hunk_1_@_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_:bb.a
  %i.bq = shl i32 %i.l, 6
  %i.br = and i32 %i.bq, 448
  %i.bs = shl i32 %i.g, 3
  %i.bt = and i32 %i.bs, 56
  %i.bu = and i32 %i.c, 7
  %i.bv = or disjoint i32 %i.bt, %i.bu
  %i.bw = or disjoint i32 %i.bv, %i.br
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.by
  br label %.thread

bb.f:                                             ; preds = %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  br label %.thread

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %bb.c, %bb.f, %.loopexit
  %.1.in = phi ptr [ %i.cb, %.loopexit ], [ %i.ca, %bb.f ], [ %i.bn, %bb.d ], [ %i.bz, %bb.e ], [ %i.ar, %bb.c ]
  %.1 = load float, ptr %.1.in, align 4, !tbaa !98
  ret float %.1
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvlEZNK4pbrt12CPUAggregate18IntersectOneRandomEiPNS1_22SubsurfaceScatterQueueEE3$_0E9_M_invokeERKSt9_Any_dataOl"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i.i.i.i = alloca [2 x i64], align 8    ; 7 uses
  %2 = alloca %"struct.pbrt::SubsurfaceScatterWorkItem", align 8 ; 8 uses
  %3 = alloca %"struct.pbrt::SOA<pbrt::SubsurfaceScatterWorkItem>::GetSetIndirector", align 8 ; 5 uses
  %4 = alloca %"class.pbrt::Interaction", align 16 ; 15 uses
  %5 = alloca %"class.pbrt::Ray", align 8         ; 10 uses
  %6 = alloca %"class.pstd::optional", align 8    ; 32 uses
  %.val = load i64, ptr %1, align 8, !tbaa !43    ; 3 uses
  %i.a = trunc i64 %.val to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !971
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.d = load ptr, ptr %0, align 8, !tbaa !972
  store ptr %i.d, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.a, ptr %i.e, align 8
  call void @_ZNK4pbrt3SOAINS_25SubsurfaceScatterWorkItemEE16GetSetIndirectorcvS1_Ev(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::SubsurfaceScatterWorkItem") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.sroa.016.0.copyload.i.i.i = load <2 x float>, ptr %2, align 8 ; 5 uses
  %.sroa.217.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.217.0.copyload.i.i.i = load float, ptr %.sroa.217.0..sroa_idx.i.i.i, align 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.sroa.014.0.copyload.i.i.i = load <2 x float>, ptr %i.f, align 4
  %.sroa.215.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.215.0.copyload.i.i.i = load float, ptr %.sroa.215.0..sroa_idx.i.i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  store float %.sroa.217.0.copyload.i.i.i, ptr %.sroa.4.i.i.i.i, align 8
  %.sroa.4.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 4
  store <2 x float> %.sroa.014.0.copyload.i.i.i, ptr %.sroa.4.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx, align 4
  %.sroa.4.i.i.i.i.12.i.i.i.i.12.i.i.i.i.12.i.i.i.12.i.i.i.12.i.i.12.i.i.12.i.12.i.12..0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 12
  store float %.sroa.215.0.copyload.i.i.i, ptr %.sroa.4.i.i.i.i.12.i.i.i.i.12.i.i.i.i.12.i.i.i.12.i.i.i.12.i.i.12.i.i.12.i.12.i.12..0..sroa_idx, align 4
  %i.g = bitcast <2 x float> %.sroa.016.0.copyload.i.i.i to i64
  %i.h = mul i64 %i.g, -4132994306676758123       ; 2 uses
  %i.i = lshr i64 %i.h, 47
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.j, -4132994306676758123
  %i.l = xor i64 %i.k, -6958142991694436872
  %i.m = mul i64 %i.l, -4132994306676758123
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.8..0.copyload.i.1.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i, align 8
  %i.n = mul i64 %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.8..0.copyload.i.1.i.i.i.i, -4132994306676758123 ; 2 uses
  %i.o = lshr i64 %i.n, 47
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, -4132994306676758123
  %i.r = xor i64 %i.q, %i.m
  %i.s = mul i64 %i.r, -4132994306676758123
  %.sroa.4.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..039.i.ptr.2.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 8
  %.sroa.4.i.i.i.i.8..sroa.4.i.i.i.i.8..sroa.4.i.i.i.i.8..sroa.4.i.i.i.8..sroa.4.i.i.i.8..sroa.4.i.i.8..sroa.4.i.i.8..sroa.4.i.8..sroa.4.i.8..sroa.4.8..sroa.4.16..0.copyload.i.2.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..039.i.ptr.2.sroa_idx, align 8
  %i.t = mul i64 %.sroa.4.i.i.i.i.8..sroa.4.i.i.i.i.8..sroa.4.i.i.i.i.8..sroa.4.i.i.i.8..sroa.4.i.i.i.8..sroa.4.i.i.8..sroa.4.i.i.8..sroa.4.i.8..sroa.4.i.8..sroa.4.8..sroa.4.16..0.copyload.i.2.i.i.i.i, -4132994306676758123 ; 2 uses
  %i.u = lshr i64 %i.t, 47
  %i.v = xor i64 %i.u, %i.t
  %i.w = mul i64 %i.v, -4132994306676758123
  %i.x = xor i64 %i.s, %i.w
  %i.y = mul i64 %i.x, -4132994306676758123       ; 2 uses
  %i.z = lshr i64 %i.y, 47
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = mul i64 %i.aa, -4132994306676758123     ; 3 uses
  %i.ac = lshr i64 %i.ab, 47
  %i.ad = xor i64 %i.ac, %i.ab                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.ae = lshr i64 %i.ab, 31
  %i.af = xor i64 %i.ad, %i.ae
  %i.ag = mul i64 %i.af, 9202493588570546565      ; 2 uses
  %i.ah = lshr i64 %i.ag, 27
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = mul i64 %i.ai, -9089707755183418291     ; 2 uses
  %i.ak = lshr i64 %i.aj, 33
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = shl i64 %i.ad, 1
  %i.an = or disjoint i64 %i.am, 1                ; 3 uses
  %i.ao = add i64 %i.al, %i.an
  %i.ap = mul i64 %i.ao, 6364136223846793005
  %i.aq = add i64 %i.ap, %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %.sroa.07.4.vec.insert.i.i.i.i.i = shufflevector <2 x float> %.sroa.016.0.copyload.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.05.4.vec.insert.i.i.i.i.i = shufflevector <2 x float> %.sroa.016.0.copyload.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.0.vec.insert.i.i.i.i.i = insertelement <2 x float> poison, float %.sroa.217.0.copyload.i.i.i, i64 0
  %.sroa.0.4.vec.insert.i.i.i.i.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i.i.i.i, ptr %4, align 16, !tbaa !53
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i.i.i.i, ptr %i.ar, align 8, !tbaa !53
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i.i.i, ptr %i.as, align 16, !tbaa !53
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 72
  %.sroa.463.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.867.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.210.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.27.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 256
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.3361.84..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 152
  %.sroa.3260.84..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 156
  %.sroa.2958.72..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 148
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 140
  %.sroa.2857.72..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 144
  %.sroa.2555.60..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 100
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 92
  %.sroa.2454.60..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 96
  %.sroa.2152.48..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 80
  %.sroa.2051.48..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 84
  %.sroa.1749.36..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 128
  %.sroa.16.36..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 132
  %.sroa.1348.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.12.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 44
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.sroa.847.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.646.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.at, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %storemerge.i.i267.i.i.i = phi i64 [ 0, %bb.a ], [ %i.ci, %bb.f ]
  %i.bl = phi ptr [ null, %bb.a ], [ %.pre265.i.i.i, %bb.f ] ; 2 uses
  %i.bm = phi float [ 0.000000e+00, %bb.a ], [ %.pre.i.i.i, %bb.f ]
  %.sroa.210.0.copyload.i.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.210.0.copyload.i.pre.i.i.i, %bb.f ] ; 3 uses
  %.sroa.09.0.copyload.i.i.i.i = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.09.0.copyload.i.pre.i.i.i, %bb.f ] ; 3 uses
  %.sroa.867.0.copyload.i.i.i = phi float [ %.sroa.217.0.copyload.i.i.i, %bb.a ], [ %.sroa.867.0.copyload.pre.i.i.i, %bb.f ]
  %.sroa.766.0.copyload.i.i.i = phi float [ %.sroa.217.0.copyload.i.i.i, %bb.a ], [ %.sroa.766.0.copyload.pre.i.i.i, %bb.f ]
  %.sroa.15.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.15.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.17.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.17.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.18.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.18.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.19.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.19.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.20.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.20.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.21.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.21.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.22.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.22.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.23.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.23.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.24.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.24.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.25.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.25.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.26.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.26.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.27.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.27.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.28.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.28.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.29.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.29.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.30.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.30.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.31.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.31.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.32.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.32.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.33.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.33.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.34.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.34.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.35.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.35.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.36.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.36.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.37.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.37.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.38.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.38.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.39.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.39.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.041.0.i.i.i = phi i64 [ %i.aq, %bb.a ], [ %.sroa.041.1.i.i.i, %bb.f ] ; 5 uses
  %.sroa.13.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.13.1.i.i.i, %bb.f ] ; 3 uses
  %.sroa.8.0.i.i.i = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.8.1.i.i.i, %bb.f ] ; 4 uses
  %i.bn = phi <2 x float> [ %.sroa.016.0.copyload.i.i.i, %bb.a ], [ %i.db, %bb.f ]
  %i.bo = phi <2 x float> [ %.sroa.016.0.copyload.i.i.i, %bb.a ], [ %i.dd, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %.sroa.04.0.copyload.i.i.i = load <2 x float>, ptr %i.f, align 4
  %.sroa.25.0.copyload.i.i.i = load float, ptr %.sroa.215.0..sroa_idx.i.i.i, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %i.bp = fadd <2 x float> %i.bn, %i.bo
  %i.bq = fadd float %.sroa.867.0.copyload.i.i.i, %.sroa.766.0.copyload.i.i.i
  %i.br = fmul float %i.bq, 5.000000e-01
  %i.bs = fmul <2 x float> %i.bp, splat (float 5.000000e-01)
  %i.bt = fsub <2 x float> %.sroa.04.0.copyload.i.i.i, %i.bs
  %.fr = freeze <2 x float> %i.bt                 ; 5 uses
  %i.bu = fsub float %.sroa.25.0.copyload.i.i.i, %i.br ; 5 uses
  %i.bv = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %4, <2 x float> %.sroa.09.0.copyload.i.i.i.i, float %.sroa.210.0.copyload.i.i.i.i, <2 x float> %.fr, float %i.bu), !noalias !973 ; 2 uses
  %.fca.0.extract.i.i.i.i.i.i = extractvalue { <2 x float>, float } %i.bv, 0
  %.fca.1.extract.i.i.i.i.i.i = extractvalue { <2 x float>, float } %i.bv, 1
  store <2 x float> %.fca.0.extract.i.i.i.i.i.i, ptr %5, align 8, !alias.scope !974
  store float %.fca.1.extract.i.i.i.i.i.i, ptr %.sroa.27.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !974
  store <2 x float> %.fr, ptr %i.ax, align 4, !alias.scope !974
  store float %i.bu, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i, align 4, !alias.scope !974
  store float %i.bm, ptr %i.ay, align 8, !tbaa !166, !alias.scope !974
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4pbrt11Interaction10SpawnRayToENS_6Point3IfEE.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.01.0.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %.sroa.09.0.copyload.i.i.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %.sroa.09.0.copyload.i.i.i.i, i64 1
  %i.bw = fmul float %.sroa.210.0.copyload.i.i.i.i, %i.bu ; 2 uses
  %i.bx = extractelement <2 x float> %.fr, i64 1
  %i.by = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i.i.i.i, float %i.bx, float %i.bw)
  %i.bz = fneg float %i.bw
  %i.ca = call noundef float @llvm.fma.f32(float %.sroa.210.0.copyload.i.i.i.i, float %i.bu, float %i.bz)
  %i.cb = fadd float %i.by, %i.ca
  %i.cc = extractelement <2 x float> %.fr, i64 0
  %i.cd = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i.i.i.i, float %i.cc, float %i.cb)
  %i.ce = fcmp ogt float %i.cd, 0.000000e+00
  %spec.select.idx.i.i.i.i.i = select i1 %i.ce, i64 8, i64 0
  %spec.select.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 %spec.select.idx.i.i.i.i.i
  %storemerge.i.i.pre.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !65, !noalias !975
  br label %_ZNK4pbrt11Interaction10SpawnRayToENS_6Point3IfEE.exit.i.i.i

_ZNK4pbrt11Interaction10SpawnRayToENS_6Point3IfEE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %storemerge.i.i.i.i.i = phi i64 [ %storemerge.i.i.pre.i.i.i, %bb.c ], [ %storemerge.i.i267.i.i.i, %bb.b ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.az, align 8, !tbaa !65, !alias.scope !973
  %7 = fcmp une <2 x float> %.fr, zeroinitializer
  %8 = bitcast <2 x i1> %7 to i2
  %or.cond.i.i.i.i = icmp eq i2 %8, 0
  %i.cf = fcmp oeq float %i.bu, 0.000000e+00
  %or.cond.i.i.i = select i1 %or.cond.i.i.i.i, i1 %i.cf, i1 false
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %_ZNK4pbrt6Tuple3INS_7Vector3EfEeqENS1_IfEE.exit.thread.i.i.i

_ZNK4pbrt6Tuple3INS_7Vector3EfEeqENS1_IfEE.exit.thread.i.i.i: ; preds = %_ZNK4pbrt11Interaction10SpawnRayToENS_6Point3IfEE.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNK4pbrt9Primitive9IntersectERKNS_3RayEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %5, float noundef 1.000000e+00)
  %i.cg = load i8, ptr %i.bb, align 8, !tbaa !114, !range !115, !noundef !44
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.d, label %.thread122.i.i.i

.thread122.i.i.i:                                 ; preds = %_ZNK4pbrt6Tuple3INS_7Vector3EfEeqENS1_IfEE.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.thread.i.i.i

bb.d:                                             ; preds = %_ZNK4pbrt6Tuple3INS_7Vector3EfEeqENS1_IfEE.exit.thread.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(80) %6, i64 72, i1 false)
  %i.ci = load i64, ptr %i.bc, align 8, !tbaa !65 ; 2 uses
  store i64 %i.ci, ptr %i.av, align 8, !tbaa !65
  %i.cj = load i64, ptr %i.bd, align 8, !tbaa !147
  %i.ck = load i64, ptr %i.be, align 8, !tbaa !147
  %i.cl = icmp eq i64 %i.cj, %i.ck
  br i1 %i.cl, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i, label %bb.f

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i: ; preds = %bb.d
  %i.cm = fadd float %.sroa.8.0.i.i.i, 1.000000e+00 ; 3 uses
  %i.cn = fdiv float 1.000000e+00, %i.cm
  %i.co = mul i64 %.sroa.041.0.i.i.i, 6364136223846793005
  %i.cp = add i64 %i.co, %i.an                    ; 2 uses
  %i.cq = lshr i64 %.sroa.041.0.i.i.i, 45
  %i.cr = lshr i64 %.sroa.041.0.i.i.i, 27
  %i.cs = xor i64 %i.cq, %i.cr
  %i.ct = trunc i64 %i.cs to i32                  ; 2 uses
  %i.cu = lshr i64 %.sroa.041.0.i.i.i, 59
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = call noundef i32 @llvm.fshr.i32(i32 %i.ct, i32 %i.ct, i32 %i.cv)
  %i.cx = uitofp i32 %i.cw to float
  %i.cy = fmul nnan float %i.cx, f0x2F800000      ; 2 uses
  %i.cz = fcmp olt float %i.cy, f0x3F7FFFFF
  %.sroa.speculated.i.i.i.i.i = select i1 %i.cz, float %i.cy, float f0x3F7FFFFF
  %i.da = fcmp olt float %.sroa.speculated.i.i.i.i.i, %i.cn
  br i1 %i.da, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i
  %.sroa.3361.84.copyload.i.i.i = load float, ptr %.sroa.3361.84..sroa_idx.i.i.i, align 8
  %.sroa.3260.84.copyload.i.i.i = load float, ptr %.sroa.3260.84..sroa_idx.i.i.i, align 4
  %.sroa.3059.84.copyload.i.i.i = load float, ptr %i.bf, align 8
  %.sroa.2958.72.copyload.i.i.i = load float, ptr %.sroa.2958.72..sroa_idx.i.i.i, align 4
  %.sroa.2857.72.copyload.i.i.i = load float, ptr %.sroa.2857.72..sroa_idx.i.i.i, align 8
  %.sroa.2656.72.copyload.i.i.i = load float, ptr %i.bg, align 4
  %.sroa.2555.60.copyload.i.i.i = load float, ptr %.sroa.2555.60..sroa_idx.i.i.i, align 4
  %.sroa.2454.60.copyload.i.i.i = load float, ptr %.sroa.2454.60..sroa_idx.i.i.i, align 8
  %.sroa.2253.60.copyload.i.i.i = load float, ptr %i.bh, align 4
  %.sroa.2152.48.copyload.i.i.i = load float, ptr %.sroa.2152.48..sroa_idx.i.i.i, align 8
  %.sroa.2051.48.copyload.i.i.i = load float, ptr %.sroa.2051.48..sroa_idx.i.i.i, align 4
  %.sroa.1850.48.copyload.i.i.i = load float, ptr %i.bi, align 8
  %.sroa.1749.36.copyload.i.i.i = load float, ptr %.sroa.1749.36..sroa_idx.i.i.i, align 8
  %.sroa.16.36.copyload.i.i.i = load float, ptr %.sroa.16.36..sroa_idx.i.i.i, align 4
  %.sroa.14.36.copyload.i.i.i = load float, ptr %i.bj, align 8
  %.sroa.1348.24.copyload.i.i.i = load float, ptr %.sroa.1348.24..sroa_idx.i.i.i, align 8
  %.sroa.12.24.copyload.i.i.i = load float, ptr %.sroa.12.24..sroa_idx.i.i.i, align 4
  %.sroa.10.24.copyload.i.i.i = load float, ptr %i.bk, align 8
  %.sroa.9.0.copyload.i.i.i = load float, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4
  %.sroa.847.0.copyload.i.i.i = load float, ptr %.sroa.847.0..sroa_idx.i.i.i, align 8
  %.sroa.7.0.copyload.i.i.i = load float, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4
  %.sroa.646.0.copyload.i.i.i = load float, ptr %.sroa.646.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0.copyload.i.i.i = load float, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4
  %.sroa.045.0.copyload.i.i.i = load float, ptr %6, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i, %bb.d
  %.sroa.15.1.i.i.i = phi float [ %.sroa.15.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.d ], [ %.sroa.045.0.copyload.i.i.i, %bb.e ]
  %.sroa.17.1.i.i.i = phi float [ %.sroa.17.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.17.0.i.i.i, %bb.d ], [ %.sroa.5.0.copyload.i.i.i, %bb.e ]
  %.sroa.18.1.i.i.i = phi float [ %.sroa.18.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.18.0.i.i.i, %bb.d ], [ %.sroa.646.0.copyload.i.i.i, %bb.e ]
  %.sroa.19.1.i.i.i = phi float [ %.sroa.19.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.19.0.i.i.i, %bb.d ], [ %.sroa.7.0.copyload.i.i.i, %bb.e ]
  %.sroa.20.1.i.i.i = phi float [ %.sroa.20.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.20.0.i.i.i, %bb.d ], [ %.sroa.847.0.copyload.i.i.i, %bb.e ]
  %.sroa.21.1.i.i.i = phi float [ %.sroa.21.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.21.0.i.i.i, %bb.d ], [ %.sroa.9.0.copyload.i.i.i, %bb.e ]
  %.sroa.22.1.i.i.i = phi float [ %.sroa.22.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.22.0.i.i.i, %bb.d ], [ %.sroa.10.24.copyload.i.i.i, %bb.e ]
  %.sroa.23.1.i.i.i = phi float [ %.sroa.23.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.23.0.i.i.i, %bb.d ], [ %.sroa.12.24.copyload.i.i.i, %bb.e ]
  %.sroa.24.1.i.i.i = phi float [ %.sroa.24.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.24.0.i.i.i, %bb.d ], [ %.sroa.1348.24.copyload.i.i.i, %bb.e ]
  %.sroa.25.1.i.i.i = phi float [ %.sroa.25.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.25.0.i.i.i, %bb.d ], [ %.sroa.14.36.copyload.i.i.i, %bb.e ]
  %.sroa.26.1.i.i.i = phi float [ %.sroa.26.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.26.0.i.i.i, %bb.d ], [ %.sroa.16.36.copyload.i.i.i, %bb.e ]
  %.sroa.27.1.i.i.i = phi float [ %.sroa.27.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.27.0.i.i.i, %bb.d ], [ %.sroa.1749.36.copyload.i.i.i, %bb.e ]
  %.sroa.28.1.i.i.i = phi float [ %.sroa.28.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.28.0.i.i.i, %bb.d ], [ %.sroa.1850.48.copyload.i.i.i, %bb.e ]
  %.sroa.29.1.i.i.i = phi float [ %.sroa.29.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.29.0.i.i.i, %bb.d ], [ %.sroa.2051.48.copyload.i.i.i, %bb.e ]
  %.sroa.30.1.i.i.i = phi float [ %.sroa.30.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.30.0.i.i.i, %bb.d ], [ %.sroa.2152.48.copyload.i.i.i, %bb.e ]
  %.sroa.31.1.i.i.i = phi float [ %.sroa.31.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.31.0.i.i.i, %bb.d ], [ %.sroa.2253.60.copyload.i.i.i, %bb.e ]
  %.sroa.32.1.i.i.i = phi float [ %.sroa.32.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.32.0.i.i.i, %bb.d ], [ %.sroa.2454.60.copyload.i.i.i, %bb.e ]
  %.sroa.33.1.i.i.i = phi float [ %.sroa.33.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.33.0.i.i.i, %bb.d ], [ %.sroa.2555.60.copyload.i.i.i, %bb.e ]
  %.sroa.34.1.i.i.i = phi float [ %.sroa.34.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.34.0.i.i.i, %bb.d ], [ %.sroa.2656.72.copyload.i.i.i, %bb.e ]
  %.sroa.35.1.i.i.i = phi float [ %.sroa.35.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.35.0.i.i.i, %bb.d ], [ %.sroa.2857.72.copyload.i.i.i, %bb.e ]
  %.sroa.36.1.i.i.i = phi float [ %.sroa.36.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.36.0.i.i.i, %bb.d ], [ %.sroa.2958.72.copyload.i.i.i, %bb.e ]
  %.sroa.37.1.i.i.i = phi float [ %.sroa.37.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.37.0.i.i.i, %bb.d ], [ %.sroa.3059.84.copyload.i.i.i, %bb.e ]
  %.sroa.38.1.i.i.i = phi float [ %.sroa.38.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.38.0.i.i.i, %bb.d ], [ %.sroa.3260.84.copyload.i.i.i, %bb.e ]
  %.sroa.39.1.i.i.i = phi float [ %.sroa.39.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.39.0.i.i.i, %bb.d ], [ %.sroa.3361.84.copyload.i.i.i, %bb.e ]
  %.sroa.041.1.i.i.i = phi i64 [ %i.cp, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.041.0.i.i.i, %bb.d ], [ %i.cp, %bb.e ]
  %.sroa.13.1.i.i.i = phi float [ %.sroa.13.0.i.i.i, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.13.0.i.i.i, %bb.d ], [ 1.000000e+00, %bb.e ]
  %.sroa.8.1.i.i.i = phi float [ %i.cm, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit35.i.i.i ], [ %.sroa.8.0.i.i.i, %bb.d ], [ %i.cm, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.db = load <2 x float>, ptr %.sroa.463.0..sroa_idx.i.i.i, align 4, !noalias !973
  %i.dc = load <4 x float>, ptr %4, align 16, !noalias !973
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %.sroa.766.0.copyload.pre.i.i.i = load float, ptr %i.as, align 16, !noalias !973
  %.sroa.867.0.copyload.pre.i.i.i = load float, ptr %.sroa.867.0..sroa_idx.i.i.i, align 4, !noalias !973
  %.sroa.09.0.copyload.i.pre.i.i.i = load <2 x float>, ptr %i.aw, align 8, !noalias !973
  %.sroa.210.0.copyload.i.pre.i.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i.i, align 16, !noalias !973
  %.pre.i.i.i = load float, ptr %i.at, align 8, !tbaa !151, !noalias !973
  %.pre265.i.i.i = load ptr, ptr %i.au, align 16, !tbaa !138, !noalias !975
  br label %bb.b

.thread.i.i.i:                                    ; preds = %_ZNK4pbrt11Interaction10SpawnRayToENS_6Point3IfEE.exit.i.i.i, %.thread122.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.de = fcmp ule float %.sroa.8.0.i.i.i, 0.000000e+00
  br i1 %i.de, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread.i.i.i
  %i.df = fdiv float %.sroa.13.0.i.i.i, %.sroa.8.0.i.i.i
  %i.dg = load ptr, ptr %0, align 8, !tbaa !972   ; 25 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 384
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !267
  %sext.i.i = shl i64 %.val, 32
  %i.dj = ashr exact i64 %sext.i.i, 32            ; 25 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dj
  store float %i.df, ptr %i.dk, align 4, !tbaa !53
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 424
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !101
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dj
  store float %.sroa.15.0.i.i.i, ptr %i.dn, align 4, !tbaa !53
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 432
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !102
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.dj
  store float %.sroa.17.0.i.i.i, ptr %i.dq, align 4, !tbaa !53
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 448
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !101
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dj
  store float %.sroa.18.0.i.i.i, ptr %i.dt, align 4, !tbaa !53
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 456
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !102
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dj
  store float %.sroa.19.0.i.i.i, ptr %i.dw, align 4, !tbaa !53
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 472
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !101
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.dj
  store float %.sroa.20.0.i.i.i, ptr %i.dz, align 4, !tbaa !53
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dg, i64 480
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !102
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.dj
  store float %.sroa.21.0.i.i.i, ptr %i.ec, align 4, !tbaa !53
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dg, i64 496
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !103
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.dj
  store float %.sroa.22.0.i.i.i, ptr %i.ef, align 4, !tbaa !53
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dg, i64 504
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !104
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.dj
  store float %.sroa.23.0.i.i.i, ptr %i.ei, align 4, !tbaa !53
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dg, i64 512
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !105
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.dj
  store float %.sroa.24.0.i.i.i, ptr %i.el, align 4, !tbaa !53
  %i.em = getelementptr inbounds nuw i8, ptr %i.dg, i64 528
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !57
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.dj
  store float %.sroa.28.0.i.i.i, ptr %i.eo, align 4, !tbaa !53
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dg, i64 536
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !58
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.dj
  store float %.sroa.29.0.i.i.i, ptr %i.er, align 4, !tbaa !53
  %i.es = getelementptr inbounds nuw i8, ptr %i.dg, i64 544
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !59
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.dj
  store float %.sroa.30.0.i.i.i, ptr %i.eu, align 4, !tbaa !53
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dg, i64 560
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !57
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.dj
  store float %.sroa.31.0.i.i.i, ptr %i.ex, align 4, !tbaa !53
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dg, i64 568
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.dj
  store float %.sroa.32.0.i.i.i, ptr %i.fa, align 4, !tbaa !53
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dg, i64 576
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !59
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.dj
  store float %.sroa.33.0.i.i.i, ptr %i.fd, align 4, !tbaa !53
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dg, i64 592
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !103
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.dj
  store float %.sroa.25.0.i.i.i, ptr %i.fg, align 4, !tbaa !53
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dg, i64 600
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !104
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.dj
  store float %.sroa.26.0.i.i.i, ptr %i.fj, align 4, !tbaa !53
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dg, i64 608
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !105
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.dj
  store float %.sroa.27.0.i.i.i, ptr %i.fm, align 4, !tbaa !53
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dg, i64 624
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !57
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.dj
end_hunk_1
