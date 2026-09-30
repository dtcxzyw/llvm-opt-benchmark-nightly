Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3ConvexHullContact?download=true
inline.NumInlined: 2655
inline.NumDeleted: 497
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_Z33b3FindConcaveSeparatingAxisKernelP6b3Int4PK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataPK9b3Vector3SC_PK9b3GpuFacePKiPK15b3GpuChildShapeP6b3AabbPSA_S0_SN_SN_SN_Piiii:bb.a
  %i.ok = insertelement <2 x float> poison, float %i.od, i64 0
  %i.ol = shufflevector <2 x float> %i.ok, <2 x float> poison, <2 x i32> zeroinitializer
  %i.om = fmul <2 x float> %i.nk, %i.ol           ; 4 uses
  %i.on = fmul float %i.nl, %i.od                 ; 2 uses
  %i.oo = extractelement <2 x float> %i.oj, i64 1
  %i.op = extractelement <2 x float> %i.oj, i64 0
  %i.oq = fmul float %i.nc, %i.od                 ; 2 uses
  %i.or = fadd float %i.oi, %i.oq
  %i.os = fadd float %i.op, %i.on
  %i.ot = insertelement <2 x float> %foldExtExtBinop395, float 1.000000e+00, i64 1
  %i.ou = insertelement <2 x float> poison, float %i.oq, i64 0
  %i.ov = insertelement <2 x float> %i.ou, float %i.os, i64 1
  %i.ow = fsub <2 x float> %i.ot, %i.ov
  %i.ox = fadd <2 x float> %i.om, %i.oh
  %i.oy = fsub <2 x float> %i.om, %i.oh
  %i.oz = shufflevector <2 x float> %i.ox, <2 x float> %i.oy, <2 x i32> <i32 0, i32 3>
  %i.pa = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.oj)
  %i.pb = fsub float 1.000000e+00, %i.pa
  %i.pc = shufflevector <3 x float> %i.mz, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.pd = fmul <2 x float> %i.pc, %i.ow
  %i.pe = shufflevector <3 x float> %i.mz, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pf = shufflevector <3 x float> %i.mz, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.pg = extractelement <3 x float> %i.mz, i64 2
  %.sroa.5265.0.copyload = load float, ptr %.sroa.5265.0..sroa_idx, align 8 ; 3 uses
  %i.ph = extractelement <2 x float> %i.nz, i64 1
  %i.pi = shufflevector <2 x float> %i.nz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pj = fmul <2 x float> %i.nm, %i.pi           ; 3 uses
  %i.pk = extractelement <2 x float> %i.pj, i64 0
  %i.pl = extractelement <2 x float> %i.pj, i64 1 ; 2 uses
  %i.pm = fmul float %i.ni, %i.pl                 ; 2 uses
  %i.pn = fmul float %i.ng, %i.pl                 ; 2 uses
  %i.po = fmul <2 x float> %i.nm, %i.pj           ; 3 uses
  %i.pp = extractelement <2 x float> %i.po, i64 1
  %i.pq = extractelement <2 x float> %i.po, i64 0
  %i.pr = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.po)
  %i.ps = fsub float 1.000000e+00, %i.pr
  %foldExtExtBinop397 = fsub <2 x float> %i.om, %i.oh
  %foldExtExtBinop399 = fadd <2 x float> %i.om, %i.oh
  %i.pt = load <2 x float>, ptr %i.ne, align 16   ; 2 uses
  %i.pu = fadd float %i.oo, %i.on
  %i.pv = fmul float %i.nh, %i.ph                 ; 4 uses
  %i.pw = fmul float %i.ni, %i.pv                 ; 2 uses
  %i.px = fmul float %i.ni, %i.pk                 ; 2 uses
  %i.py = fmul float %i.nf, %i.pv                 ; 2 uses
  %i.pz = fmul float %i.nh, %i.pv                 ; 2 uses
  %i.qa = fadd float %i.pp, %i.pz
  %i.qb = insertelement <4 x float> <float 1.000000e+00, float poison, float 1.000000e+00, float poison>, float %i.py, i64 1
  %i.qc = insertelement <4 x float> %i.qb, float %i.pn, i64 3
  %i.qd = insertelement <4 x float> poison, float %i.pu, i64 0
  %i.qe = insertelement <4 x float> %i.qd, float %i.px, i64 1
  %i.qf = insertelement <4 x float> %i.qe, float %i.qa, i64 2
  %i.qg = insertelement <4 x float> %i.qf, float %i.pw, i64 3
  %i.qh = fsub <4 x float> %i.qc, %i.qg           ; 4 uses
  %i.qi = shufflevector <4 x float> %i.qh, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.qj = insertelement <2 x float> %i.qi, float %i.or, i64 1
  %i.qk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pe, <2 x float> %i.qj, <2 x float> %i.pd)
  %i.ql = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pf, <2 x float> %i.oz, <2 x float> %i.qk)
  %i.qm = fadd <2 x float> %i.nj, %i.ql
  %i.qn = fmul float %i.ng, %i.pv                 ; 2 uses
  %i.qo = fadd float %i.qn, %i.pm
  %i.qp = fadd float %i.pq, %i.pz
  %i.qq = fadd float %i.pn, %i.pw
  %i.qr = fsub float 1.000000e+00, %i.qp
  %i.qs = fsub float %i.qn, %i.pm
  %i.qt = fadd float %i.py, %i.px
  %i.qu = shufflevector <2 x float> %i.pc, <2 x float> %i.pt, <4 x i32> <i32 0, i32 3, i32 3, i32 3>
  %i.qv = shufflevector <2 x float> %foldExtExtBinop399, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.qw = shufflevector <4 x float> %i.qv, <4 x float> %i.qh, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.qx = insertelement <4 x float> %i.qw, float %i.qr, i64 2
  %i.qy = insertelement <4 x float> %i.qx, float %i.qt, i64 3
  %i.qz = fmul <4 x float> %i.qu, %i.qy
  %i.ra = shufflevector <2 x float> %i.pe, <2 x float> %i.pt, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.rb = shufflevector <2 x float> %foldExtExtBinop397, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.rc = shufflevector <4 x float> %i.rb, <4 x float> %i.qh, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %i.rd = insertelement <4 x float> %i.rc, float %i.qq, i64 2
  %i.re = insertelement <4 x float> %i.rd, float %i.qs, i64 3
  %i.rf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ra, <4 x float> %i.re, <4 x float> %i.qz) ; 4 uses
  %i.rg = extractelement <4 x float> %i.rf, i64 0
  %i.rh = tail call noundef float @llvm.fmuladd.f32(float %i.pg, float %i.pb, float %i.rg)
  %i.ri = fadd float %.sroa.26.48.copyload.i242, %i.rh
  %i.rj = extractelement <4 x float> %i.rf, i64 1
  %i.rk = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5265.0.copyload, float %i.qo, float %i.rj)
  %i.rl = extractelement <4 x float> %i.rf, i64 2
  %i.rm = extractelement <4 x float> %i.qh, i64 1
  %i.rn = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5265.0.copyload, float %i.rm, float %i.rl)
  %i.ro = extractelement <4 x float> %i.rf, i64 3
  %i.rp = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5265.0.copyload, float %i.ps, float %i.ro)
  %i.rq = fadd float %.sroa.23.48.copyload.i248, %i.rk
  %i.rr = fadd float %.sroa.25.48.copyload.i250, %i.rn
  %i.rs = fadd float %.sroa.26.48.copyload.i252, %i.rp
  %i.rt = insertelement <2 x float> poison, float %i.rq, i64 0
  %i.ru = insertelement <2 x float> %i.rt, float %i.rr, i64 1
  %i.rv = fsub <2 x float> %i.qm, %i.ru
  %i.rw = fsub float %i.ri, %i.rs
  %.sroa.3.12.vec.insert.i.i260 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.rw, i64 0
  store <2 x float> %i.rv, ptr %28, align 16
  %i.rx = getelementptr inbounds nuw i8, ptr %28, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i260, ptr %i.rx, align 8
  %i.ry = call noundef zeroext i1 @_Z20b3FindSeparatingAxisPK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_PS3_S8_PK9b3GpuFacePKiS8_S8_SB_SD_PS2_Pf(ptr noundef nonnull %19, ptr noundef nonnull %i.ne, ptr noundef nonnull align 16 dereferenceable(16) %24, ptr noundef nonnull align 16 dereferenceable(16) %26, ptr noundef nonnull align 16 dereferenceable(16) %25, ptr noundef nonnull align 16 dereferenceable(16) %27, ptr noundef nonnull align 16 dereferenceable(16) %28, ptr noundef nonnull %20, ptr nonnull poison, ptr noundef nonnull %23, ptr nonnull poison, ptr noundef nonnull %4, ptr poison, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull %21, ptr noundef nonnull %i.a)
  br i1 %i.ry, label %bb.l, label %.critedge191

bb.l:                                             ; preds = %bb.k
  %i.rz = call noundef zeroext i1 @_Z20b3FindSeparatingAxisPK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_PS3_S8_PK9b3GpuFacePKiS8_S8_SB_SD_PS2_Pf(ptr noundef nonnull %i.ne, ptr noundef nonnull %19, ptr noundef nonnull align 16 dereferenceable(16) %25, ptr noundef nonnull align 16 dereferenceable(16) %27, ptr noundef nonnull align 16 dereferenceable(16) %24, ptr noundef nonnull align 16 dereferenceable(16) %26, ptr noundef nonnull align 16 dereferenceable(16) %28, ptr noundef nonnull %4, ptr poison, ptr noundef nonnull %6, ptr nonnull poison, ptr noundef nonnull %20, ptr nonnull poison, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull %21, ptr noundef nonnull %i.a)
  br i1 %i.rz, label %bb.m, label %.critedge191

bb.m:                                             ; preds = %bb.l
  %i.sa = call noundef zeroext i1 @_Z28b3FindSeparatingAxisEdgeEdgePK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_PS3_S8_PK9b3GpuFacePKiS8_S8_SB_SD_PS2_Pfb(ptr noundef nonnull %19, ptr noundef nonnull %i.ne, ptr noundef nonnull align 16 dereferenceable(16) %24, ptr noundef nonnull align 16 dereferenceable(16) %26, ptr noundef nonnull align 16 dereferenceable(16) %25, ptr noundef nonnull align 16 dereferenceable(16) %27, ptr noundef nonnull align 16 dereferenceable(16) %28, ptr noundef nonnull %20, ptr noundef nonnull %22, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull %4, ptr noundef %5, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull %21, ptr noundef nonnull %i.a, i1 noundef zeroext true)
  br i1 %i.sa, label %bb.n, label %.critedge191

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.aa, align 4, !tbaa !38
  %i.sb = load float, ptr %i.a, align 4, !tbaa !44
  %i.sc = getelementptr inbounds nuw i8, ptr %21, i64 12
  store float %i.sb, ptr %i.sc, align 4, !tbaa !37
  %i.sd = getelementptr inbounds [16 x i8], ptr %10, i64 %i.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.sd, ptr noundef nonnull align 16 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !40
  %i.se = call noundef i32 @_Z19b3FindClippingFacesRK9b3Vector3PK22b3ConvexPolyhedronDataS4_S1_RK12b3QuaternionS1_S7_PS_S8_S8_iffPS0_PK9b3GpuFacePKiS9_SC_SE_P6b3Int4i(ptr noundef nonnull align 16 dereferenceable(16) %21, ptr noundef nonnull %19, ptr noundef nonnull %i.ne, ptr noundef nonnull align 16 dereferenceable(16) %24, ptr noundef nonnull align 16 dereferenceable(16) %26, ptr noundef nonnull align 16 dereferenceable(16) %25, ptr noundef nonnull align 16 dereferenceable(16) %27, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %16, float noundef -1.000000e+30, float noundef 2.000000e-02, ptr noundef nonnull %20, ptr noundef nonnull %23, ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %11, i32 noundef %18) ; 0 uses
  br label %bb.o

.critedge191:                                     ; preds = %bb.k, %bb.l, %bb.m
  %i.sf = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 -1, ptr %i.sf, align 4, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %.critedge191, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.p

.critedge:                                        ; preds = %bb.g, %bb.h
  %i.sg = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 -1, ptr %i.sg, align 4, !tbaa !37
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z19b3FindClippingFacesRK9b3Vector3PK22b3ConvexPolyhedronDataS4_S1_RK12b3QuaternionS1_S7_PS_S8_S8_iffPS0_PK9b3GpuFacePKiS9_SC_SE_P6b3Int4i(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, float noundef %11, float noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, i32 noundef %20) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43   ; 2 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !44 ; 4 uses
  %i.h = load float, ptr %6, align 16, !tbaa !44  ; 2 uses
  %i.i = load <3 x float>, ptr %6, align 16, !tbaa !44 ; 3 uses
  %i.j = shufflevector <3 x float> %i.i, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.k = extractelement <3 x float> %i.i, i64 2   ; 2 uses
  %i.l = fneg float %i.k                          ; 4 uses
  %i.m = fneg float %i.h                          ; 4 uses
  %i.n = extractelement <3 x float> %i.i, i64 1   ; 2 uses
  %i.o = fneg float %i.n                          ; 3 uses
  %i.p = load float, ptr %0, align 16, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load float, ptr %i.s, align 8, !tbaa !37
  %i.u = sext i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  %invariant.gep = getelementptr [32 x i8], ptr %17, i64 %i.u
  %i.v = insertelement <4 x float> poison, float %i.g, i64 0
  %i.w = insertelement <4 x float> %i.v, float %i.m, i64 1
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.094.lcssa = phi i32 [ -1, %bb.a ], [ %.195, %bb.b ] ; 2 uses
  %i.y = add nsw i32 %i.e, %.094.lcssa
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [32 x i8], ptr %17, i64 %i.z ; 2 uses
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %.sroa.424.0.copyload = load i32, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !38 ; 3 uses
  %i.ab = icmp sgt i32 %.sroa.424.0.copyload, 0
  br i1 %i.ab, label %.lr.ph143, label %.preheader

.lr.ph143:                                        ; preds = %._crit_edge
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 16, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.26.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ae = mul nsw i32 %20, %10
  %i.af = sext i32 %i.ae to i64
  %i.ag = sext i32 %.sroa.3.0.copyload to i64
  %wide.trip.count161 = zext nneg i32 %.sroa.424.0.copyload to i64
  %invariant.gep174 = getelementptr [4 x i8], ptr %18, i64 %i.ag
  %invariant.gep176 = getelementptr [16 x i8], ptr %9, i64 %i.af
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.094139 = phi i32 [ -1, %.lr.ph ], [ %.195, %bb.b ]
  %.096138 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.197, %bb.b ] ; 2 uses
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.ah = load <3 x float>, ptr %gep, align 16, !tbaa !37 ; 4 uses
  %i.ai = shufflevector <3 x float> %i.ah, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0> ; 2 uses
  %i.aj = load float, ptr %gep, align 16, !tbaa !37
  %i.ak = extractelement <3 x float> %i.ah, i64 1
  %i.al = shufflevector <3 x float> %i.ah, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.am = fneg <4 x float> %i.ai
  %i.an = shufflevector <4 x float> %i.al, <4 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ao = fmul <4 x float> %i.j, %i.an
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.ai, <4 x float> %i.ao) ; 4 uses
  %i.aq = extractelement <4 x float> %i.ap, i64 2
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.l, float %i.ak, float %i.aq) ; 3 uses
  %i.as = extractelement <4 x float> %i.ap, i64 0
  %i.at = extractelement <3 x float> %i.ah, i64 2 ; 2 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.m, float %i.at, float %i.as) ; 3 uses
  %i.av = extractelement <4 x float> %i.ap, i64 1
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.o, float %i.aj, float %i.av) ; 3 uses
  %i.ax = extractelement <4 x float> %i.ap, i64 3
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.l, float %i.at, float %i.ax) ; 3 uses
  %i.az = fmul float %i.g, %i.ar
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.m, float %i.az)
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.au, float %i.l, float %i.ba)
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.n, float %i.bb)
  %i.bd = fmul float %i.g, %i.au
  %i.be = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.o, float %i.bd)
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.m, float %i.be)
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.k, float %i.bf)
  %i.bh = fmul float %i.g, %i.aw
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.l, float %i.bh)
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.o, float %i.bi)
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.au, float %i.h, float %i.bj)
  %i.bl = fmul float %i.r, %i.bg
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.p, float %i.bl)
  %i.bn = tail call noundef float @llvm.fmuladd.f32(float %i.bk, float %i.t, float %i.bm) ; 2 uses
  %i.bo = fcmp ogt float %i.bn, %.096138          ; 2 uses
  %.197 = select i1 %i.bo, float %i.bn, float %.096138
  %i.bp = trunc nuw nsw i64 %indvars.iv to i32
  %.195 = select i1 %i.bo, i32 %i.bp, i32 %.094139 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !273

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.0.lcssa = phi i32 [ 0, %._crit_edge ], [ %.sroa.424.0.copyload, %bb.c ]
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !42 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %.preheader
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = sext i32 %20 to i64
  %i.bz = getelementptr inbounds [16 x i8], ptr %8, i64 %i.by ; 2 uses
  %.sroa.6126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph143, %bb.c
  %indvars.iv156 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next157, %bb.c ] ; 3 uses
  %i.ca = load i32, ptr %i.ac, align 16, !tbaa !46
  %gep175 = getelementptr [4 x i8], ptr %invariant.gep174, i64 %indvars.iv156
  %i.cb = load i32, ptr %gep175, align 4, !tbaa !38
  %i.cc = add nsw i32 %i.cb, %i.ca
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [16 x i8], ptr %16, i64 %i.cd ; 3 uses
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.26.48.copyload.i = load float, ptr %.sroa.26.48..sroa_idx.i, align 8
  %.sroa.0129.0.copyload.a = load float, ptr %21, align 4, !tbaa !37 ; 5 uses
  %.sroa.4130.0.copyload.a = load float, ptr %i.ce, align 16 ; 2 uses
  %.sroa.5131.0.copyload.a = load float, ptr %.sroa.4130.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5131.0.copyload = load float, ptr %.sroa.5131.0..sroa_idx, align 8 ; 2 uses
  %i.cf = load <2 x float>, ptr %5, align 16
  %22 = load float, ptr %i.ad, align 8, !tbaa !37 ; 4 uses
  %23 = load <2 x float>, ptr %6, align 16, !tbaa !37 ; 4 uses
  %24 = extractelement <2 x float> %23, i64 1     ; 3 uses
  %25 = fmul float %24, %24
  %i.cg = extractelement <2 x float> %23, i64 0   ; 4 uses
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %25)
  %26 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %i.ch)
  %27 = tail call noundef float @llvm.fmuladd.f32(float %.sroa.0129.0.copyload.a, float %.sroa.0129.0.copyload.a, float %26)
  %28 = fdiv float 2.000000e+00, %27              ; 2 uses
  %29 = insertelement <2 x float> poison, float %28, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %31 = fmul <2 x float> %23, %30                 ; 3 uses
  %32 = fmul float %22, %28                       ; 4 uses
  %33 = extractelement <2 x float> %31, i64 0
  %34 = fmul float %.sroa.0129.0.copyload.a, %33  ; 2 uses
  %35 = extractelement <2 x float> %31, i64 1     ; 2 uses
  %36 = fmul float %.sroa.0129.0.copyload.a, %35  ; 2 uses
  %i.ci = fmul float %.sroa.0129.0.copyload.a, %32 ; 2 uses
  %37 = fmul float %i.cg, %35                     ; 2 uses
  %38 = fmul float %i.cg, %32                     ; 2 uses
  %39 = fmul <2 x float> %23, %31                 ; 3 uses
  %40 = fmul float %24, %32                       ; 2 uses
  %41 = fmul float %22, %32                       ; 2 uses
  %42 = extractelement <2 x float> %39, i64 1
  %43 = fadd float %42, %41
  %44 = fsub float 1.000000e+00, %43
  %i.cj = fsub float %37, %i.ci
  %45 = fadd float %38, %36
  %46 = fadd float %37, %i.ci
  %i.ck = extractelement <2 x float> %39, i64 0
  %47 = fadd float %i.ck, %41
  %i.cl = fsub float 1.000000e+00, %47
  %48 = fsub float %40, %34
  %49 = fsub float %38, %36
  %i.cm = fadd float %40, %34
  %50 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %39)
  %i.cn = fsub float 1.000000e+00, %50
  %i.co = insertelement <2 x float> poison, float %.sroa.5131.0.copyload.a, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cl, i64 1
  %i.cs = fmul <2 x float> %i.cp, %i.cr
  %i.ct = insertelement <2 x float> poison, float %.sroa.4130.0.copyload.a, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %51 = insertelement <2 x float> poison, float %44, i64 0
  %i.cv = insertelement <2 x float> %51, float %46, i64 1
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.cv, <2 x float> %i.cs)
  %i.cx = insertelement <2 x float> poison, float %.sroa.5131.0.copyload, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %52 = insertelement <2 x float> poison, float %45, i64 0
  %i.cz = insertelement <2 x float> %52, float %48, i64 1
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.cz, <2 x float> %i.cw)
  %i.db = fmul float %.sroa.5131.0.copyload.a, %i.cm
  %i.dc = tail call float @llvm.fmuladd.f32(float %.sroa.4130.0.copyload.a, float %49, float %i.db)
  %i.dd = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5131.0.copyload, float %i.cn, float %i.dc)
  %i.de = fadd <2 x float> %i.cf, %i.da
  %i.df = fadd float %.sroa.26.48.copyload.i, %i.dd
  %.sroa.3.12.vec.insert.i.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.df, i64 0
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %gep177 = getelementptr [16 x i8], ptr %invariant.gep176, i64 %indvars.iv156 ; 2 uses
  store <2 x float> %i.de, ptr %gep177, align 16
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep177, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i4.i.i, ptr %.sroa.418.0..sroa_idx, align 8, !tbaa !37
  %exitcond162.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count161
  br i1 %exitcond162.not, label %.preheader, label %bb.c, !llvm.loop !274

._crit_edge149:                                   ; preds = %bb.f, %.preheader
  %.092.lcssa = phi i32 [ -1, %.preheader ], [ %.193, %bb.f ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !43
  %i.di = add nsw i32 %i.dh, %.092.lcssa
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [32 x i8], ptr %14, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !51 ; 3 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph153, label %._crit_edge154

.lr.ph153:                                        ; preds = %._crit_edge149
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.26.48..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %53 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.dq = mul nsw i32 %20, %10
  %i.dr = sext i32 %i.dq to i64
  %wide.trip.count166 = zext nneg i32 %i.dm to i64
  %invariant.gep178 = getelementptr [16 x i8], ptr %7, i64 %i.dr
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph148, %bb.f
  %i.ds = phi i32 [ %i.br, %.lr.ph148 ], [ %i.gb, %bb.f ]
  %.090147 = phi i32 [ 0, %.lr.ph148 ], [ %i.gc, %bb.f ] ; 3 uses
  %.091146 = phi float [ f0x7F7FFFFF, %.lr.ph148 ], [ %.1, %bb.f ] ; 2 uses
  %.092145 = phi i32 [ -1, %.lr.ph148 ], [ %.193, %bb.f ]
  %i.dt = load i32, ptr %i.bt, align 4, !tbaa !43
  %i.du = add nsw i32 %i.dt, %.090147
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [32 x i8], ptr %14, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = load float, ptr %i.bu, align 4, !tbaa !44 ; 3 uses
  %i.dz = load <2 x float>, ptr %i.dw, align 16, !tbaa !37 ; 5 uses
  %i.ea = load <2 x float>, ptr %i.dx, align 4, !tbaa !37 ; 3 uses
  %i.eb = load <2 x float>, ptr %i.bv, align 4, !tbaa !44 ; 4 uses
  %i.ec = extractelement <2 x float> %i.dz, i64 0
  %shift190 = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop191 = fmul <2 x float> %i.dz, %shift190
  %i.ed = extractelement <2 x float> %foldExtExtBinop191, i64 0
  %i.ee = extractelement <2 x float> %i.dz, i64 1 ; 2 uses
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.ee, float %i.ed)
  %i.eg = load <2 x float>, ptr %4, align 16, !tbaa !44 ; 2 uses
  %i.eh = extractelement <2 x float> %i.eg, i64 0 ; 2 uses
  %i.ei = fneg float %i.eh                        ; 4 uses
  %i.ej = extractelement <2 x float> %i.ea, i64 1 ; 2 uses
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.ej, float %i.ef) ; 3 uses
  %i.el = fmul <2 x float> %i.ea, %i.eg
  %i.em = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eo = shufflevector <2 x float> %i.ea, <2 x float> %i.dz, <2 x i32> <i32 1, i32 2>
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.eo, <2 x float> %i.el)
  %i.eq = fneg <2 x float> %i.eb                  ; 4 uses
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.dz, <2 x float> %i.ep) ; 5 uses
  %i.es = fneg float %i.ee
  %i.et = extractelement <2 x float> %i.eb, i64 0
  %i.eu = fmul float %i.et, %i.es
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.ec, float %i.eu)
  %i.ew = extractelement <2 x float> %i.eq, i64 1 ; 2 uses
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.ej, float %i.ev) ; 2 uses
  %i.ey = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ez = insertelement <2 x float> %i.ey, float %i.ek, i64 1
  %i.fa = fmul <2 x float> %i.en, %i.ez
  %i.fb = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fe = insertelement <2 x float> %i.fd, float %i.ei, i64 0
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fe, <2 x float> %i.fa)
  %i.fg = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> %i.er, <2 x i32> <i32 0, i32 2>
  %i.fi = insertelement <2 x float> %i.fd, float %i.ei, i64 1
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %i.fi, <2 x float> %i.ff)
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.eb, <2 x float> %i.fj) ; 3 uses
  %i.fl = extractelement <2 x float> %i.er, i64 0
  %i.fm = fmul float %i.dy, %i.fl
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.ew, float %i.fm)
  %i.fo = extractelement <2 x float> %i.er, i64 1
  %i.fp = extractelement <2 x float> %i.eq, i64 0
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.fp, float %i.fn)
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.eh, float %i.fq) ; 2 uses
  %i.fs = load float, ptr %0, align 16, !tbaa !37
  %i.ft = load float, ptr %i.bw, align 4, !tbaa !37
  %i.fu = extractelement <2 x float> %i.fk, i64 1
  %i.fv = fmul float %i.ft, %i.fu
  %i.fw = extractelement <2 x float> %i.fk, i64 0
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.fs, float %i.fv)
  %i.fy = load float, ptr %i.bx, align 8, !tbaa !37
  %i.fz = tail call noundef float @llvm.fmuladd.f32(float %i.fr, float %i.fy, float %i.fx) ; 2 uses
  %i.ga = fcmp olt float %i.fz, %.091146
  br i1 %i.ga, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.3.12.vec.insert.i11.i111 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fr, i64 0
  store <2 x float> %i.fk, ptr %i.bz, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i11.i111, ptr %.sroa.6126.0..sroa_idx, align 8, !tbaa !37
  %.pre168 = load i32, ptr %i.bq, align 8, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.gb = phi i32 [ %.pre168, %bb.e ], [ %i.ds, %bb.d ] ; 2 uses
  %.193 = phi i32 [ %.090147, %bb.e ], [ %.092145, %bb.d ] ; 2 uses
  %.1 = phi float [ %i.fz, %bb.e ], [ %.091146, %bb.d ]
  %i.gc = add nuw nsw i32 %.090147, 1             ; 2 uses
  %i.gd = icmp slt i32 %i.gc, %i.gb
  br i1 %i.gd, label %bb.d, label %._crit_edge149, !llvm.loop !275

._crit_edge154:                                   ; preds = %bb.g, %._crit_edge149
  %i.ge = sext i32 %20 to i64
  %i.gf = getelementptr inbounds [16 x i8], ptr %19, i64 %i.ge ; 4 uses
  store i32 %.092.lcssa, ptr %i.gf, align 16, !tbaa !37
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store i32 %.094.lcssa, ptr %i.gg, align 4, !tbaa !37
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i32 %i.dm, ptr %i.gh, align 8, !tbaa !37
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  store i32 %.0.lcssa, ptr %i.gi, align 4, !tbaa !37
  ret i32 0

bb.g:                                             ; preds = %.lr.ph153, %bb.g
  %indvars.iv163 = phi i64 [ 0, %.lr.ph153 ], [ %indvars.iv.next164, %bb.g ] ; 3 uses
  %i.gj = load i32, ptr %i.do, align 16, !tbaa !46
  %i.gk = load i32, ptr %i.dg, align 4, !tbaa !43
  %i.gl = add nsw i32 %i.gk, %.092.lcssa
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [32 x i8], ptr %14, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load i32, ptr %i.go, align 16, !tbaa !50
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr [4 x i8], ptr %15, i64 %indvars.iv163
  %i.gs = getelementptr [4 x i8], ptr %i.gr, i64 %i.gq
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !38
  %i.gu = add nsw i32 %i.gt, %i.gj
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [16 x i8], ptr %13, i64 %i.gv ; 3 uses
  %.sroa.4.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %.sroa.26.48.copyload.i118 = load float, ptr %.sroa.26.48..sroa_idx.i117, align 8
  %.sroa.0.0.copyload.a = load float, ptr %53, align 4, !tbaa !37 ; 5 uses
  %.sroa.4.0.copyload.a = load float, ptr %i.gw, align 16 ; 2 uses
  %.sroa.5.0.copyload.a = load float, ptr %.sroa.4.0..sroa_idx124, align 4 ; 2 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.gx = load <2 x float>, ptr %3, align 16
  %54 = load float, ptr %i.dp, align 8, !tbaa !37 ; 4 uses
  %55 = load <2 x float>, ptr %4, align 16, !tbaa !37 ; 4 uses
  %56 = extractelement <2 x float> %55, i64 1     ; 3 uses
  %57 = fmul float %56, %56
  %i.gy = extractelement <2 x float> %55, i64 0   ; 4 uses
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.gy, float %i.gy, float %57)
  %58 = tail call float @llvm.fmuladd.f32(float %54, float %54, float %i.gz)
  %59 = tail call noundef float @llvm.fmuladd.f32(float %.sroa.0.0.copyload.a, float %.sroa.0.0.copyload.a, float %58)
  %60 = fdiv float 2.000000e+00, %59              ; 2 uses
  %61 = insertelement <2 x float> poison, float %60, i64 0
  %62 = shufflevector <2 x float> %61, <2 x float> poison, <2 x i32> zeroinitializer
  %63 = fmul <2 x float> %55, %62                 ; 3 uses
  %64 = fmul float %54, %60                       ; 4 uses
  %65 = extractelement <2 x float> %63, i64 0
  %66 = fmul float %.sroa.0.0.copyload.a, %65     ; 2 uses
  %67 = extractelement <2 x float> %63, i64 1     ; 2 uses
  %68 = fmul float %.sroa.0.0.copyload.a, %67     ; 2 uses
  %i.ha = fmul float %.sroa.0.0.copyload.a, %64   ; 2 uses
  %69 = fmul float %i.gy, %67                     ; 2 uses
  %70 = fmul float %i.gy, %64                     ; 2 uses
  %71 = fmul <2 x float> %55, %63                 ; 3 uses
  %72 = fmul float %56, %64                       ; 2 uses
  %73 = fmul float %54, %64                       ; 2 uses
  %74 = extractelement <2 x float> %71, i64 1
  %75 = fadd float %74, %73
  %76 = fsub float 1.000000e+00, %75
  %i.hb = fsub float %69, %i.ha
  %77 = fadd float %70, %68
  %78 = fadd float %69, %i.ha
  %i.hc = extractelement <2 x float> %71, i64 0
  %79 = fadd float %i.hc, %73
  %i.hd = fsub float 1.000000e+00, %79
  %80 = fsub float %72, %66
  %81 = fsub float %70, %68
  %i.he = fadd float %72, %66
  %82 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %71)
  %i.hf = fsub float 1.000000e+00, %82
  %i.hg = insertelement <2 x float> poison, float %.sroa.5.0.copyload.a, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %i.hd, i64 1
  %i.hk = fmul <2 x float> %i.hh, %i.hj
  %i.hl = insertelement <2 x float> poison, float %.sroa.4.0.copyload.a, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %83 = insertelement <2 x float> poison, float %76, i64 0
  %i.hn = insertelement <2 x float> %83, float %78, i64 1
  %i.ho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.hn, <2 x float> %i.hk)
  %i.hp = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  %84 = insertelement <2 x float> poison, float %77, i64 0
  %i.hr = insertelement <2 x float> %84, float %80, i64 1
  %i.hs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hq, <2 x float> %i.hr, <2 x float> %i.ho)
  %i.ht = fmul float %.sroa.5.0.copyload.a, %i.he
  %i.hu = tail call float @llvm.fmuladd.f32(float %.sroa.4.0.copyload.a, float %81, float %i.ht)
  %i.hv = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5.0.copyload, float %i.hf, float %i.hu)
  %i.hw = fadd <2 x float> %i.gx, %i.hs
  %i.hx = fadd float %.sroa.26.48.copyload.i118, %i.hv
  %.sroa.3.12.vec.insert.i.i4.i.i121 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hx, i64 0
  %gep179 = getelementptr [16 x i8], ptr %invariant.gep178, i64 %indvars.iv163 ; 2 uses
  store <2 x float> %i.hw, ptr %gep179, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep179, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i4.i.i121, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !37
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %exitcond167.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count166
  br i1 %exitcond167.not, label %._crit_edge154, label %bb.g, !llvm.loop !276
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z14clipFaceGlobalPK9b3Vector3iRS0_fPS_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, float noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = load float, ptr %i.b, align 8, !tbaa !37
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr [16 x i8], ptr %0, i64 %i.e ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr i8, ptr %i.f, i64 -8
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %i.g = load float, ptr %2, align 16, !tbaa !37
  %i.h = getelementptr i8, ptr %i.f, i64 -16
  %i.i = load <2 x float>, ptr %i.h, align 16     ; 3 uses
  %i.j = load float, ptr %i.a, align 4, !tbaa !37
  %i.k = extractelement <2 x float> %i.i, i64 1
  %i.l = fmul float %i.k, %i.j
  %i.m = extractelement <2 x float> %i.i, i64 0
  %i.n = tail call float @llvm.fmuladd.f32(float %i.g, float %i.m, float %i.l)
  %i.o = tail call noundef float @llvm.fmuladd.f32(float %i.d, float %.sroa.11.0.copyload, float %i.n)
  %i.p = fadd float %3, %i.o
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.03286 = phi float [ %i.p, %.lr.ph.preheader ], [ %i.ac, %bb.g ] ; 5 uses
  %.03385 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.g ] ; 7 uses
  %.sroa.11.082 = phi float [ %.sroa.11.0.copyload, %.lr.ph.preheader ], [ %i.aa, %bb.g ] ; 4 uses
  %i.q = phi <2 x float> [ %i.i, %.lr.ph.preheader ], [ %i.bh, %bb.g ] ; 4 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv
  %i.s = load <4 x float>, ptr %i.r, align 16     ; 8 uses
  %i.t = load float, ptr %2, align 16, !tbaa !37
  %i.u = load float, ptr %i.a, align 4, !tbaa !37
  %i.v = extractelement <4 x float> %i.s, i64 1
  %i.w = fmul float %i.v, %i.u
  %i.x = extractelement <4 x float> %i.s, i64 0
  %i.y = tail call float @llvm.fmuladd.f32(float %i.t, float %i.x, float %i.w)
  %i.z = load float, ptr %i.b, align 8, !tbaa !37
  %i.aa = extractelement <4 x float> %i.s, i64 2  ; 4 uses
  %i.ab = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.aa, float %i.y)
  %i.ac = fadd float %3, %i.ab                    ; 4 uses
  %i.ad = fcmp olt float %.03286, 0.000000e+00
  %i.ae = fcmp olt float %i.ac, 0.000000e+00      ; 2 uses
  br i1 %i.ad, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = add nsw i32 %.03385, 1
  %i.ag = sext i32 %.03385 to i64
  %i.ah = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ag
  store <4 x float> %i.s, ptr %i.ah, align 16
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.ai = fsub float %.03286, %i.ac
  %i.aj = fdiv float %.03286, %i.ai               ; 2 uses
  %i.ak = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.al = fsub <2 x float> %i.ak, %i.q
  %i.am = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.an, <2 x float> %i.q)
  %i.ap = fsub float %i.aa, %.sroa.11.082
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.aj, float %.sroa.11.082)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aq, i64 0
  %i.ar = add nsw i32 %.03385, 1
  %i.as = sext i32 %.03385 to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %4, i64 %i.as ; 2 uses
  store <2 x float> %i.ao, ptr %i.at, align 16
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !37
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = fsub float %.03286, %i.ac
  %i.av = fdiv float %.03286, %i.au               ; 2 uses
  %i.aw = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ax = fsub <2 x float> %i.aw, %i.q
  %i.ay = insertelement <2 x float> poison, float %i.av, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.az, <2 x float> %i.q)
  %i.bb = fsub float %i.aa, %.sroa.11.082
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.av, float %.sroa.11.082)
  %.sroa.3.12.vec.insert.i.i38 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bc, i64 0
  %i.bd = sext i32 %.03385 to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %4, i64 %i.bd ; 3 uses
  store <2 x float> %i.ba, ptr %i.be, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i38, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !37
  %i.bf = add nsw i32 %.03385, 2
  %i.bg = getelementptr i8, ptr %i.be, i64 16
  store <4 x float> %i.s, ptr %i.bg, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  %.1 = phi i32 [ %i.af, %bb.c ], [ %i.ar, %bb.d ], [ %i.bf, %bb.f ], [ %.03385, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %i.bh = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !277

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.033.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.g ]
  ret i32 %.033.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z30clipFacesAndFindContactsKernelPK9b3Vector3PKiP6b3Int4PS_S6_S6_S6_ii(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #7 {
bb.a:
  %9 = alloca %class.b3Vector3, align 16          ; 5 uses
  %i.a = sext i32 %8 to i64                       ; 4 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %1, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !38
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nsw i32 %8, %7                       ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 4 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %5, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %6, i64 %i.e ; 2 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %2, i64 %i.a ; 3 uses
  %i.i = load i32, ptr %i.h, align 16, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 3 uses
  %i.m = icmp sgt i32 %i.i, -1
  br i1 %i.m, label %bb.c, label %.loopexit115.thread

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !37   ; 2 uses
  %i.o = icmp sgt i32 %i.k, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds [16 x i8], ptr %4, i64 %i.a ; 2 uses
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.q = zext nneg i32 %i.k to i64
  %invariant.gep = getelementptr [16 x i8], ptr %3, i64 %i.e
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.081.lcssa = phi i32 [ %i.n, %bb.c ], [ %i.bf, %bb.d ] ; 2 uses
  %.078.lcssa = phi ptr [ %i.g, %bb.c ], [ %.074119, %bb.d ] ; 4 uses
  %.074.lcssa = phi ptr [ %i.f, %bb.c ], [ %.078118, %bb.d ] ; 4 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %4, i64 %i.a ; 3 uses
  %.sroa.0.0.copyload = load float, ptr %i.r, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.5.0.copyload91 = load float, ptr %.sroa.5.0..sroa_idx90, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %3, i64 %i.e ; 3 uses
  %i.t = load float, ptr %i.s, align 16, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !37
  %i.w = fmul float %.sroa.5.0.copyload91, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload, float %i.t, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.z = load float, ptr %i.y, align 8, !tbaa !37
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.z, float %i.x)
  %i.ab = icmp sgt i32 %.081.lcssa, 0
  br i1 %i.ab, label %.lr.ph125.preheader, label %.loopexit115.thread

.lr.ph125.preheader:                              ; preds = %._crit_edge
  %wide.trip.count134 = zext nneg i32 %.081.lcssa to i64
  br label %.lr.ph125

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.074119 = phi ptr [ %i.f, %.lr.ph ], [ %.078118, %bb.d ] ; 3 uses
  %.078118 = phi ptr [ %i.g, %.lr.ph ], [ %.074119, %bb.d ] ; 3 uses
  %.081116 = phi i32 [ %i.n, %.lr.ph ], [ %i.bf, %bb.d ]
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %.sroa.0111.0.copyload = load float, ptr %gep, align 16 ; 2 uses
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.not142 = icmp eq i64 %indvars.iv.next, %i.q   ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv.next to i32
  %iv.rem = select i1 %.not142, i32 0, i32 %i.ac
  %i.ad = add nsw i32 %iv.rem, %i.d
end_hunk_0
begin_hunk_1_@_Z8clipFacePK9b3Vector3iRS_fPS_:bb.a
  %i.c = getelementptr [16 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -16
  %i.e = load <2 x float>, ptr %i.d, align 16     ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr i8, ptr %i.c, i64 -8
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %i.f = load float, ptr %2, align 16, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !37
  %i.i = extractelement <2 x float> %i.e, i64 1
  %i.j = fmul float %i.i, %i.h
  %i.k = extractelement <2 x float> %i.e, i64 0
  %i.l = tail call float @llvm.fmuladd.f32(float %i.f, float %i.k, float %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load float, ptr %i.m, align 8, !tbaa !37
  %i.o = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %.sroa.11.0.copyload, float %i.l)
  %i.p = fadd float %3, %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.03590 = phi float [ %i.p, %bb.b ], [ %i.ac, %bb.i ] ; 5 uses
  %.03689 = phi i32 [ 0, %bb.b ], [ %.1, %bb.i ]  ; 7 uses
  %.sroa.11.086 = phi float [ %.sroa.11.0.copyload, %bb.b ], [ %i.aa, %bb.i ] ; 4 uses
  %i.q = phi <2 x float> [ %i.e, %bb.b ], [ %i.bh, %bb.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv
  %i.s = load <4 x float>, ptr %i.r, align 16     ; 8 uses
  %i.t = load float, ptr %2, align 16, !tbaa !37
  %i.u = load float, ptr %i.g, align 4, !tbaa !37
  %i.v = extractelement <4 x float> %i.s, i64 1
  %i.w = fmul float %i.v, %i.u
  %i.x = extractelement <4 x float> %i.s, i64 0
  %i.y = tail call float @llvm.fmuladd.f32(float %i.t, float %i.x, float %i.w)
  %i.z = load float, ptr %i.m, align 8, !tbaa !37
  %i.aa = extractelement <4 x float> %i.s, i64 2  ; 4 uses
  %i.ab = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.aa, float %i.y)
  %i.ac = fadd float %3, %i.ab                    ; 4 uses
  %i.ad = fcmp olt float %.03590, 0.000000e+00
  %i.ae = fcmp olt float %i.ac, 0.000000e+00      ; 2 uses
  br i1 %i.ad, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = add nsw i32 %.03689, 1
  %i.ag = sext i32 %.03689 to i64
  %i.ah = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ag
  store <4 x float> %i.s, ptr %i.ah, align 16
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ai = fsub float %.03590, %i.ac
  %i.aj = fdiv float %.03590, %i.ai               ; 2 uses
  %i.ak = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.al = fsub <2 x float> %i.ak, %i.q
  %i.am = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.an, <2 x float> %i.q)
  %i.ap = fsub float %i.aa, %.sroa.11.086
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.aj, float %.sroa.11.086)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aq, i64 0
  %i.ar = add nsw i32 %.03689, 1
  %i.as = sext i32 %.03689 to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %4, i64 %i.as ; 2 uses
  store <2 x float> %i.ao, ptr %i.at, align 16
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !37
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = fsub float %.03590, %i.ac
  %i.av = fdiv float %.03590, %i.au               ; 2 uses
  %i.aw = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ax = fsub <2 x float> %i.aw, %i.q
  %i.ay = insertelement <2 x float> poison, float %i.av, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.az, <2 x float> %i.q)
  %i.bb = fsub float %i.aa, %.sroa.11.086
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.av, float %.sroa.11.086)
  %.sroa.3.12.vec.insert.i.i42 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bc, i64 0
  %i.bd = sext i32 %.03689 to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %4, i64 %i.bd ; 3 uses
  store <2 x float> %i.ba, ptr %i.be, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i42, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !37
  %i.bf = add nsw i32 %.03689, 2
  %i.bg = getelementptr i8, ptr %i.be, i64 16
  store <4 x float> %i.s, ptr %i.bg, align 16
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.f
  %.1 = phi i32 [ %i.af, %bb.e ], [ %i.ar, %bb.f ], [ %i.bf, %bb.h ], [ %.03689, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  %i.bh = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !300

.loopexit:                                        ; preds = %bb.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.1, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z19clipFaceAgainstHullRK9b3Vector3PK22b3ConvexPolyhedronDataS1_RK12b3QuaternionPS_iS8_iffRK20b3AlignedObjectArrayIS_ERKS9_I9b3GpuFaceERKS9_IiES8_i(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, ptr nofree noundef captures(none) %4, i32 noundef %5, ptr nofree noundef captures(none) %6, i32 %7, float noundef %8, float noundef %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %12, ptr nofree noundef writeonly captures(none) %13, i32 noundef %14) local_unnamed_addr #2 {
bb.a:
  %15 = alloca %class.b3Vector3, align 16         ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !44 ; 4 uses
  %i.j = load float, ptr %3, align 16, !tbaa !44  ; 2 uses
  %i.k = load <3 x float>, ptr %3, align 16, !tbaa !44 ; 3 uses
  %i.l = shufflevector <3 x float> %i.k, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.m = extractelement <3 x float> %i.k, i64 2   ; 2 uses
  %i.n = fneg float %i.m                          ; 4 uses
  %i.o = fneg float %i.j                          ; 4 uses
  %i.p = extractelement <3 x float> %i.k, i64 1   ; 2 uses
  %i.q = fneg float %i.p                          ; 3 uses
  %i.r = load float, ptr %0, align 16, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load float, ptr %i.u, align 8, !tbaa !37
  %i.w = sext i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  %invariant.gep = getelementptr [32 x i8], ptr %i.g, i64 %i.w
  %i.x = insertelement <4 x float> poison, float %i.i, i64 0
  %i.y = insertelement <4 x float> %i.x, float %i.o, i64 1
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %i.aa = icmp slt i32 %.190, 0
  br i1 %i.aa, label %.loopexit, label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.089180 = phi i32 [ -1, %.lr.ph ], [ %.190, %bb.b ]
  %.091179 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.192, %bb.b ] ; 2 uses
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.ab = load <3 x float>, ptr %gep, align 16, !tbaa !37 ; 4 uses
  %i.ac = shufflevector <3 x float> %i.ab, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0> ; 2 uses
  %i.ad = load float, ptr %gep, align 16, !tbaa !37
  %i.ae = extractelement <3 x float> %i.ab, i64 1
  %i.af = shufflevector <3 x float> %i.ab, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ag = fneg <4 x float> %i.ac
  %i.ah = shufflevector <4 x float> %i.af, <4 x float> %i.ag, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ai = fmul <4 x float> %i.l, %i.ah
  %i.aj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> %i.ac, <4 x float> %i.ai) ; 4 uses
  %i.ak = extractelement <4 x float> %i.aj, i64 2
  %i.al = tail call float @llvm.fmuladd.f32(float %i.n, float %i.ae, float %i.ak) ; 3 uses
  %i.am = extractelement <4 x float> %i.aj, i64 0
  %i.an = extractelement <3 x float> %i.ab, i64 2 ; 2 uses
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.o, float %i.an, float %i.am) ; 3 uses
  %i.ap = extractelement <4 x float> %i.aj, i64 1
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.q, float %i.ad, float %i.ap) ; 3 uses
  %i.ar = extractelement <4 x float> %i.aj, i64 3
  %i.as = tail call float @llvm.fmuladd.f32(float %i.n, float %i.an, float %i.ar) ; 3 uses
  %i.at = fmul float %i.i, %i.al
  %i.au = tail call float @llvm.fmuladd.f32(float %i.as, float %i.o, float %i.at)
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.n, float %i.au)
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.p, float %i.av)
  %i.ax = fmul float %i.i, %i.ao
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.as, float %i.q, float %i.ax)
  %i.az = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.o, float %i.ay)
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.al, float %i.m, float %i.az)
  %i.bb = fmul float %i.i, %i.aq
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.as, float %i.n, float %i.bb)
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.al, float %i.q, float %i.bc)
  %i.be = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.j, float %i.bd)
  %i.bf = fmul float %i.t, %i.ba
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.r, float %i.bf)
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.v, float %i.bg) ; 2 uses
  %i.bi = fcmp olt float %i.bh, %.091179          ; 2 uses
  %.192 = select i1 %i.bi, float %i.bh, float %.091179
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %.190 = select i1 %i.bi, i32 %i.bj, i32 %.089180 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !301

bb.c:                                             ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !43
  %i.bm = add nsw i32 %i.bl, %.190
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !132
  %i.bp = sext i32 %i.bm to i64
  %i.bq = getelementptr inbounds [32 x i8], ptr %i.bo, i64 %i.bp ; 5 uses
  %i.br = load <3 x float>, ptr %i.bq, align 16   ; 8 uses
  %i.bs = shufflevector <3 x float> %i.br, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0> ; 3 uses
  %.sroa.019.0.copyload = load float, ptr %i.bq, align 16 ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !37
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !38 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 20
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !38 ; 2 uses
  %i.bt = icmp sgt i32 %.sroa.12.0.copyload, 0
  br i1 %i.bt, label %.lr.ph186, label %.._crit_edge187_crit_edge

.._crit_edge187_crit_edge:                        ; preds = %bb.c
  %i.bu = extractelement <3 x float> %i.br, i64 1
  %.pre = fneg float %i.bu
  br label %._crit_edge187

.lr.ph186:                                        ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ca = extractelement <3 x float> %i.br, i64 1
  %i.cb = fneg float %i.ca                        ; 2 uses
  %.sroa.31.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.32.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cc = sext i32 %.sroa.10.0.copyload to i64
  %i.cd = zext nneg i32 %.sroa.12.0.copyload to i64
  %16 = extractelement <3 x float> %i.br, i64 2
  %i.ce = shufflevector <4 x float> %i.bs, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.cf = shufflevector <3 x float> %i.br, <3 x float> poison, <2 x i32> <i32 2, i32 1> ; 2 uses
  %i.cg = insertelement <2 x float> %i.cf, float %.sroa.019.0.copyload, i64 1
  %i.ch = insertelement <2 x float> %i.cf, float %.sroa.019.0.copyload, i64 0
  %i.ci = insertelement <2 x float> poison, float %i.cb, i64 1
  br label %bb.d

._crit_edge187:                                   ; preds = %bb.d, %.._crit_edge187_crit_edge
  %.pre-phi = phi float [ %.pre, %.._crit_edge187_crit_edge ], [ %i.cb, %bb.d ]
  %.086.lcssa = phi i32 [ %5, %.._crit_edge187_crit_edge ], [ %i.io, %bb.d ] ; 2 uses
  %.084.lcssa = phi ptr [ %4, %.._crit_edge187_crit_edge ], [ %.085183, %bb.d ]
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !44 ; 4 uses
  %i.cl = load float, ptr %3, align 16, !tbaa !44 ; 2 uses
  %i.cm = load <3 x float>, ptr %3, align 16, !tbaa !44 ; 3 uses
  %i.cn = shufflevector <3 x float> %i.cm, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.co = extractelement <3 x float> %i.cm, i64 2 ; 2 uses
  %i.cp = fneg float %i.co                        ; 4 uses
  %i.cq = fneg float %i.cl                        ; 4 uses
  %i.cr = shufflevector <3 x float> %i.br, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.cs = insertelement <4 x float> %i.cr, float %.pre-phi, i64 3
  %i.ct = fmul <4 x float> %i.cn, %i.cs
  %i.cu = insertelement <4 x float> poison, float %i.ck, i64 0
  %i.cv = insertelement <4 x float> %i.cu, float %i.cq, i64 1
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.bs, <4 x float> %i.ct) ; 4 uses
  %i.cy = extractelement <4 x float> %i.cx, i64 2
  %i.cz = extractelement <3 x float> %i.br, i64 1
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cz, float %i.cy) ; 3 uses
  %i.db = extractelement <4 x float> %i.cx, i64 0
  %i.dc = extractelement <3 x float> %i.br, i64 2 ; 2 uses
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.dc, float %i.db) ; 3 uses
  %i.de = extractelement <3 x float> %i.cm, i64 1 ; 2 uses
  %i.df = fneg float %i.de                        ; 3 uses
  %i.dg = extractelement <4 x float> %i.cx, i64 1
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.df, float %.sroa.019.0.copyload, float %i.dg) ; 3 uses
  %i.di = extractelement <4 x float> %i.cx, i64 3
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.dc, float %i.di) ; 3 uses
  %i.dk = fmul float %i.ck, %i.da
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.cq, float %i.dk)
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.cp, float %i.dl)
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.de, float %i.dm) ; 2 uses
  %i.do = fmul float %i.ck, %i.dd
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.df, float %i.do)
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.cq, float %i.dp)
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.da, float %i.co, float %i.dq) ; 2 uses
  %i.ds = fmul float %i.ck, %i.dh
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.cp, float %i.ds)
  %i.du = tail call float @llvm.fmuladd.f32(float %i.da, float %i.df, float %i.dt)
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.cl, float %i.du) ; 2 uses
  %i.dw = load float, ptr %2, align 16, !tbaa !37
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !37
  %i.dz = fmul float %i.dy, %i.dr
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.dw, float %i.dz)
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ec = load float, ptr %i.eb, align 8, !tbaa !37
  %i.ed = tail call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.ec, float %i.ea)
  %i.ee = fsub float %.sroa.9.0.copyload, %i.ed
  %i.ef = icmp sgt i32 %.086.lcssa, 0
  br i1 %i.ef, label %.lr.ph193.preheader, label %.loopexit

.lr.ph193.preheader:                              ; preds = %._crit_edge187
  %wide.trip.count204 = zext nneg i32 %.086.lcssa to i64
  br label %.lr.ph193

bb.d:                                             ; preds = %.lr.ph186, %bb.d
  %indvars.iv196 = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next197, %bb.d ] ; 2 uses
  %.084184 = phi ptr [ %4, %.lr.ph186 ], [ %.085183, %bb.d ] ; 2 uses
  %.085183 = phi ptr [ %6, %.lr.ph186 ], [ %.084184, %bb.d ] ; 3 uses
  %.086182 = phi i32 [ %5, %.lr.ph186 ], [ %i.io, %bb.d ]
  %i.eg = load i32, ptr %i.bv, align 16, !tbaa !46 ; 2 uses
  %i.eh = load ptr, ptr %i.bw, align 8, !tbaa !136 ; 2 uses
  %i.ei = getelementptr [4 x i8], ptr %i.eh, i64 %indvars.iv196
  %i.ej = getelementptr [4 x i8], ptr %i.ei, i64 %i.cc
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !38
  %i.el = add nsw i32 %i.ek, %i.eg
  %i.em = load ptr, ptr %i.bx, align 8, !tbaa !128 ; 2 uses
  %i.en = sext i32 %i.el to i64
  %i.eo = getelementptr inbounds [16 x i8], ptr %i.em, i64 %i.en ; 2 uses
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 3 uses
  %.not = icmp eq i64 %indvars.iv.next197, %i.cd  ; 2 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv.next197 to i32
  %iv.rem = select i1 %.not, i32 0, i32 %i.ep
  %i.eq = add nsw i32 %iv.rem, %.sroa.10.0.copyload
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !38
  %i.eu = add nsw i32 %i.et, %i.eg
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [16 x i8], ptr %i.em, i64 %i.ev ; 2 uses
  %.sroa.4.0..sroa_idx163 = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.ex = load float, ptr %i.by, align 4, !tbaa !44 ; 8 uses
  %17 = load float, ptr %i.bz, align 8, !tbaa !44 ; 6 uses
  %.sroa.29.48.copyload.i = load float, ptr %2, align 16
  %.sroa.31.48.copyload.i = load float, ptr %.sroa.31.48..sroa_idx.i, align 4
  %.sroa.32.48.copyload.i = load float, ptr %.sroa.32.48..sroa_idx.i, align 8
  %i.ey = load <2 x float>, ptr %3, align 16, !tbaa !44 ; 9 uses
  %18 = extractelement <2 x float> %i.ey, i64 1   ; 5 uses
  %19 = extractelement <2 x float> %i.ey, i64 0   ; 4 uses
  %i.ez = load <2 x float>, ptr %i.eo, align 16   ; 2 uses
  %20 = load <2 x float>, ptr %.sroa.5168.0..sroa_idx, align 4 ; 3 uses
  %21 = load <2 x float>, ptr %i.ew, align 16
  %22 = load <2 x float>, ptr %.sroa.4.0..sroa_idx163, align 4
  %23 = fsub <2 x float> %i.ez, %21               ; 4 uses
  %24 = fsub <2 x float> %20, %22                 ; 5 uses
  %25 = extractelement <2 x float> %24, i64 0
  %26 = fneg float %25
  %27 = shufflevector <2 x float> %24, <2 x float> %23, <2 x i32> <i32 1, i32 2> ; 2 uses
  %28 = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %29 = insertelement <2 x float> %28, float %17, i64 1
  %30 = fmul <2 x float> %27, %29
  %31 = fmul <2 x float> %24, %i.ey
  %32 = insertelement <2 x float> poison, float %i.ex, i64 0
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %34 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %33, <2 x float> %23, <2 x float> %30)
  %35 = insertelement <2 x float> %28, float %17, i64 0 ; 4 uses
  %36 = fneg <2 x float> %35                      ; 8 uses
  %37 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %33, <2 x float> %27, <2 x float> %31)
  %38 = fneg <2 x float> %i.ey                    ; 4 uses
  %39 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> %24, <2 x float> %34) ; 4 uses
  %40 = shufflevector <2 x float> %38, <2 x float> %36, <2 x i32> <i32 1, i32 2> ; 4 uses
  %41 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> %23, <2 x float> %37) ; 3 uses
  %i.fa = extractelement <2 x float> %39, i64 0
  %i.fb = fmul float %i.ex, %i.fa
  %42 = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fc = insertelement <2 x float> %i.ci, float %26, i64 0
  %i.fd = fmul <2 x float> %42, %i.fc
  %i.fe = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ff = insertelement <2 x float> %23, float %.sroa.019.0.copyload, i64 1
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.ff, <2 x float> %i.fd)
  %i.fh = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = shufflevector <2 x float> %24, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fj = shufflevector <4 x float> %i.bs, <4 x float> %i.fi, <2 x i32> <i32 5, i32 1>
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %i.fj, <2 x float> %i.fg) ; 3 uses
  %i.fl = extractelement <2 x float> %36, i64 1
  %i.fm = extractelement <2 x float> %i.fk, i64 0
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.fl, float %i.fb)
  %i.fo = extractelement <2 x float> %39, i64 1
  %i.fp = extractelement <2 x float> %36, i64 0
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.fp, float %i.fn)
  %i.fr = extractelement <2 x float> %41, i64 0
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fr, float %18, float %i.fq) ; 2 uses
  %i.ft = shufflevector <2 x float> %39, <2 x float> %41, <2 x i32> <i32 1, i32 2>
  %i.fu = fmul <2 x float> %33, %i.ft
  %i.fv = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %40, <2 x float> %i.fu)
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %41, <2 x float> %38, <2 x float> %i.fw)
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> %35, <2 x float> %i.fx) ; 3 uses
  %43 = fmul float %16, %18
  %44 = tail call float @llvm.fmuladd.f32(float %i.ex, float %.sroa.019.0.copyload, float %43)
  %i.fz = fmul <2 x float> %i.ch, %35
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %33, <2 x float> %i.ce, <2 x float> %i.fz) ; 2 uses
  %45 = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %46 = insertelement <2 x float> %45, float %44, i64 0
  %47 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> %i.ce, <2 x float> %46) ; 3 uses
  %i.gb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> %i.cg, <2 x float> %i.ga) ; 3 uses
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> %47, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.gd = fmul <2 x float> %33, %i.gc
  %i.ge = fmul <2 x float> %33, %i.gb
  %i.gf = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %36, <2 x float> %i.gd)
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %40, <2 x float> %i.ge)
  %i.gi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %47, <2 x float> %40, <2 x float> %i.gg)
  %i.gj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %38, <2 x float> %i.gh)
  %i.gk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.ey, <2 x float> %i.gi) ; 2 uses
  %i.gl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %47, <2 x float> %35, <2 x float> %i.gj) ; 2 uses
  %i.gm = fneg <2 x float> %i.gl
  %i.gn = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.go = insertelement <2 x float> %i.gn, float %i.fs, i64 1
  %i.gp = fmul <2 x float> %i.go, %i.gm
  %i.gq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.gk, <2 x float> %i.gp)
  %i.gr = extractelement <2 x float> %i.gk, i64 1
  %i.gs = fneg float %i.gr
  %i.gt = extractelement <2 x float> %i.fy, i64 0
  %i.gu = fmul float %i.gt, %i.gs
  %i.gv = extractelement <2 x float> %i.gl, i64 0
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.gv, float %i.gu)
  %i.gx = fneg <2 x float> %i.gq                  ; 3 uses
  %i.gy = fneg float %i.gw                        ; 2 uses
  %.sroa.3.12.vec.insert.i.i133 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gy, i64 0
  %48 = fmul float %18, %18
  %49 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %48)
  %50 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %49)
  %i.gz = tail call noundef float @llvm.fmuladd.f32(float %i.ex, float %i.ex, float %50)
  %51 = fdiv float 2.000000e+00, %i.gz            ; 2 uses
  %52 = insertelement <2 x float> poison, float %51, i64 0
  %53 = shufflevector <2 x float> %52, <2 x float> poison, <2 x i32> zeroinitializer
  %54 = fmul <2 x float> %i.ey, %53               ; 3 uses
  %i.ha = fmul float %17, %51                     ; 4 uses
  %55 = extractelement <2 x float> %54, i64 0
  %i.hb = fmul float %i.ex, %55                   ; 2 uses
  %56 = extractelement <2 x float> %54, i64 1     ; 2 uses
  %i.hc = fmul float %i.ex, %56                   ; 2 uses
  %i.hd = fmul float %i.ex, %i.ha                 ; 2 uses
  %i.he = fmul float %19, %56                     ; 2 uses
  %i.hf = fmul float %19, %i.ha                   ; 2 uses
  %57 = fmul <2 x float> %i.ey, %54               ; 3 uses
  %i.hg = fmul float %18, %i.ha                   ; 2 uses
  %i.hh = fmul float %17, %i.ha                   ; 2 uses
  %58 = extractelement <2 x float> %57, i64 1
  %i.hi = fadd float %58, %i.hh
  %i.hj = fsub float 1.000000e+00, %i.hi
  %i.hk = fsub float %i.he, %i.hd
  %i.hl = fadd float %i.hf, %i.hc
  %i.hm = fadd float %i.he, %i.hd
  %59 = extractelement <2 x float> %57, i64 0
  %i.hn = fadd float %59, %i.hh
  %i.ho = fsub float 1.000000e+00, %i.hn
  %i.hp = fsub float %i.hg, %i.hb
  %i.hq = fsub float %i.hf, %i.hc
  %i.hr = fadd float %i.hg, %i.hb
  %60 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %57)
  %i.hs = fsub float 1.000000e+00, %60
  %i.ht = extractelement <2 x float> %20, i64 0   ; 3 uses
  %i.hu = fmul float %i.ht, %i.hk
  %i.hv = extractelement <2 x float> %i.ez, i64 0 ; 3 uses
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.hv, float %i.hj, float %i.hu)
  %i.hx = extractelement <2 x float> %20, i64 1   ; 3 uses
  %i.hy = tail call noundef float @llvm.fmuladd.f32(float %i.hx, float %i.hl, float %i.hw)
  %i.hz = fmul float %i.ht, %i.ho
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.hv, float %i.hm, float %i.hz)
  %i.ib = tail call noundef float @llvm.fmuladd.f32(float %i.hx, float %i.hp, float %i.ia)
  %i.ic = fmul float %i.ht, %i.hr
  %i.id = tail call float @llvm.fmuladd.f32(float %i.hv, float %i.hq, float %i.ic)
  %i.ie = tail call noundef float @llvm.fmuladd.f32(float %i.hx, float %i.hs, float %i.id)
  %i.if = fadd float %.sroa.29.48.copyload.i, %i.hy
  %i.ig = fadd float %.sroa.31.48.copyload.i, %i.ib
  %i.ih = fadd float %.sroa.32.48.copyload.i, %i.ie
  %i.ii = extractelement <2 x float> %i.gx, i64 1
  %i.ij = fmul float %i.ig, %i.ii
  %i.ik = extractelement <2 x float> %i.gx, i64 0
  %i.il = tail call float @llvm.fmuladd.f32(float %i.if, float %i.ik, float %i.ij)
  %i.im = tail call noundef float @llvm.fmuladd.f32(float %i.ih, float %i.gy, float %i.il)
  %i.in = fneg float %i.im
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store <2 x float> %i.gx, ptr %15, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i133, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !37
  %i.io = call noundef i32 @_Z8clipFacePK9b3Vector3iRS_fPS_(ptr noundef %.084184, i32 noundef %.086182, ptr noundef nonnull align 16 dereferenceable(16) %15, float noundef %i.in, ptr noundef %.085183) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br i1 %.not, label %._crit_edge187, label %bb.d, !llvm.loop !302

.lr.ph193:                                        ; preds = %.lr.ph193.preheader, %bb.h
  %indvars.iv201 = phi i64 [ 0, %.lr.ph193.preheader ], [ %indvars.iv.next202, %bb.h ] ; 2 uses
  %.083191 = phi i32 [ 0, %.lr.ph193.preheader ], [ %.1, %bb.h ] ; 6 uses
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %.084.lcssa, i64 %indvars.iv201 ; 2 uses
  %i.iq = load <2 x float>, ptr %i.ip, align 16, !tbaa !37 ; 3 uses
  %i.ir = extractelement <2 x float> %i.iq, i64 1
  %i.is = fmul float %i.dr, %i.ir
  %i.it = extractelement <2 x float> %i.iq, i64 0
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.it, float %i.is)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.iw = load float, ptr %i.iv, align 8, !tbaa !37 ; 2 uses
  %i.ix = tail call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.iw, float %i.iu)
  %i.iy = fadd float %i.ee, %i.ix                 ; 2 uses
  %.inv = fcmp ole float %i.iy, %8
  %.087 = select i1 %.inv, float %8, float %i.iy  ; 2 uses
  %i.iz = icmp slt i32 %.083191, %14
  br i1 %i.iz, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph193
  %i.ja = fcmp ugt float %.087, %9
  br i1 %i.ja, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.3.12.vec.insert6.i138 = insertelement <2 x float> poison, float %i.iw, i64 0
  %.sroa.3.12.vec.insert.i139 = insertelement <2 x float> %.sroa.3.12.vec.insert6.i138, float %.087, i64 1
  %i.jb = add nsw i32 %.083191, 1
  %i.jc = sext i32 %.083191 to i64
  %i.jd = getelementptr inbounds [16 x i8], ptr %13, i64 %i.jc ; 2 uses
  store <2 x float> %i.iq, ptr %i.jd, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i139, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !37
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph193
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 931)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.32, i32 noundef %.083191, i32 noundef %14)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i32 [ %i.jb, %bb.f ], [ %.083191, %bb.e ], [ %.083191, %bb.g ] ; 2 uses
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv.next202, %wide.trip.count204
  br i1 %exitcond205.not, label %.loopexit, label %.lr.ph193, !llvm.loop !303

.loopexit:                                        ; preds = %bb.h, %bb.a, %._crit_edge187, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ 0, %._crit_edge187 ], [ 0, %bb.a ], [ %.1, %bb.h ]
  ret i32 %.0
}

declare void @b3OutputErrorMessageVarArgsInternal(ptr noundef, ...) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147483648, 5) i32 @_Z15extractManifoldPK9b3Vector3iRS0_P6b3Int4(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 5
  br i1 %i.b, label %bb.s, label %.new

.new:                                             ; preds = %bb.b
  %i.c = tail call i32 @llvm.umin.i32(i32 %1, i32 64) ; 3 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 126
  br label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod210 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod210)
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.next.1 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.15.8.vec.extract175.epil = extractelement <2 x float> %.sroa.15.8.vec.insert177.1, i64 0
  %i.f = load <2 x float>, ptr %i.d, align 16, !tbaa !37
  %i.g = fadd <2 x float> %i.ck, %i.f
  %i.h = load float, ptr %i.e, align 8, !tbaa !37
  %i.i = fadd float %.sroa.15.8.vec.extract175.epil, %i.h
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa207 = phi <2 x float> [ %i.ck, %.unr-lcssa ], [ %i.g, %.epil.preheader ] ; 2 uses
  %.lcssa = phi float [ %i.cm, %.unr-lcssa ], [ %i.i, %.epil.preheader ]
  %i.j = uitofp nneg i32 %i.c to float
  %i.k = fdiv float 1.000000e+00, %i.j            ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load float, ptr %2, align 16, !tbaa !37  ; 3 uses
  %i.o = extractelement <2 x float> %.lcssa207, i64 0
  %i.p = fmul float %i.k, %i.o                    ; 2 uses
  %i.q = extractelement <2 x float> %.lcssa207, i64 1
  %i.r = fmul float %i.k, %i.q                    ; 2 uses
  %i.s = fmul float %i.k, %.lcssa                 ; 2 uses
  %i.t = load float, ptr %0, align 16, !tbaa !37
  %i.u = fsub float %i.t, %i.p                    ; 2 uses
  %i.v = load <2 x float>, ptr %i.l, align 4, !tbaa !37
  %i.w = insertelement <2 x float> poison, float %i.r, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.s, i64 1
  %i.y = fsub <2 x float> %i.v, %i.x              ; 3 uses
  %i.z = load <2 x float>, ptr %i.m, align 4, !tbaa !37 ; 5 uses
  %i.aa = fneg <2 x float> %i.y
  %i.ab = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ac = insertelement <2 x float> %i.ab, float %i.n, i64 1 ; 2 uses
  %i.ad = fmul <2 x float> %i.ac, %i.aa
  %i.ae = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.af = insertelement <2 x float> %i.ae, float %i.u, i64 1
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.af, <2 x float> %i.ad) ; 6 uses
  %i.ah = fneg float %i.u
  %i.ai = extractelement <2 x float> %i.z, i64 0  ; 2 uses
  %i.aj = fmul float %i.ai, %i.ah
  %i.ak = extractelement <2 x float> %i.y, i64 0
  %i.al = tail call float @llvm.fmuladd.f32(float %i.n, float %i.ak, float %i.aj) ; 4 uses
  %i.am = extractelement <2 x float> %i.ag, i64 1 ; 2 uses
  %i.an = fneg float %i.am
  %i.ao = extractelement <2 x float> %i.z, i64 1
  %i.ap = fmul float %i.ao, %i.an
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.al, float %i.ap) ; 2 uses
  %i.ar = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.as = insertelement <2 x float> %i.ar, float %i.al, i64 0
  %i.at = fneg <2 x float> %i.as
  %i.au = insertelement <2 x float> poison, float %i.n, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> %i.z, <2 x i32> <i32 0, i32 2>
  %i.aw = fmul <2 x float> %i.av, %i.at
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ag, <2 x float> %i.aw) ; 3 uses
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> %i.ag, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.az = fmul <2 x float> %i.ay, %i.ay
  %i.ba = insertelement <2 x float> %i.ag, float %i.aq, i64 1 ; 2 uses
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.ba, <2 x float> %i.az)
  %i.bc = insertelement <2 x float> %i.ax, float %i.al, i64 0 ; 2 uses
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bc, <2 x float> %i.bb)
  %i.be = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bd)
  %i.bf = fdiv <2 x float> splat (float 1.000000e+00), %i.be ; 4 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.ag, %i.bf
  %i.bh = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bi = fmul float %i.am, %i.bg                 ; 2 uses
  %i.bj = fmul float %i.al, %i.bg                 ; 2 uses
  %i.bk = extractelement <2 x float> %i.bf, i64 1
  %i.bl = fmul float %i.aq, %i.bk                 ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bn = fmul <2 x float> %i.ax, %i.bm           ; 3 uses
  %i.bo = fneg float %i.bh
  %i.bp = fneg float %i.bi
  %i.bq = fneg float %i.bj
  %i.br = fneg float %i.bl
  %i.bs = fneg <2 x float> %i.bn                  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.bw = extractelement <2 x float> %i.bs, i64 0
  %i.bx = extractelement <2 x float> %i.bs, i64 1
  %i.by = extractelement <2 x float> %i.bn, i64 0
  %i.bz = extractelement <2 x float> %i.bn, i64 1
  br label %bb.f

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.sroa.15.0181 = phi <2 x float> [ zeroinitializer, %.new ], [ %.sroa.15.8.vec.insert177.1, %bb.d ] ; 2 uses
  %.sroa.0152.0180 = phi <2 x float> [ zeroinitializer, %.new ], [ %i.ck, %bb.d ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.d ]
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.15.8.vec.extract175 = extractelement <2 x float> %.sroa.15.0181, i64 0
  %i.cc = load <2 x float>, ptr %i.ca, align 16, !tbaa !37
  %i.cd = fadd <2 x float> %.sroa.0152.0180, %i.cc
  %i.ce = load float, ptr %i.cb, align 8, !tbaa !37
  %i.cf = fadd float %.sroa.15.8.vec.extract175, %i.ce
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cj = load <2 x float>, ptr %i.ch, align 16, !tbaa !37
  %i.ck = fadd <2 x float> %i.cd, %i.cj           ; 3 uses
  %i.cl = load float, ptr %i.ci, align 8, !tbaa !37
end_hunk_1
begin_hunk_2_@_Z23findCompoundPairsKerneliiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3Vector3ERKS8_I6b3AabbESG_PK15b3GpuChildShapeP6b3Int4PiiRS8_I18b3QuantizedBvhNodeERS8_I16b3BvhSubtreeInfoERS8_I9b3BvhInfoE:bb.a
  store float %i.cq, ptr %i.as, align 4, !tbaa !37
  store float %i.cr, ptr %i.ay, align 8, !tbaa !37
  store float %i.cs, ptr %i.ba, align 16, !tbaa !37
  store float %i.cu, ptr %i.at, align 4, !tbaa !37
  store float %i.cv, ptr %i.au, align 8, !tbaa !37
  store float %i.cw, ptr %i.bc, align 16, !tbaa !37
  store float %i.cx, ptr %i.bd, align 4, !tbaa !37
  store float %i.cz, ptr %i.av, align 8, !tbaa !37
  %i.da = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.db = fmul <2 x float> %i.bn, %i.da           ; 4 uses
  %shift = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop899 = fmul <2 x float> %i.bq, %shift ; 3 uses
  %i.dc = extractelement <2 x float> %foldExtExtBinop899, i64 0
  %i.dd = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.de = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.df = fmul <2 x float> %i.dd, %i.de           ; 2 uses
  %i.dg = fmul float %.sroa.7825.0.copyload, %i.dc ; 2 uses
  %foldExtExtBinop901 = fmul <2 x float> %i.bn, %i.db ; 2 uses
  %i.dh = extractelement <2 x float> %foldExtExtBinop901, i64 0
  %shift945 = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop946 = fmul <2 x float> %i.bn, %shift945
  %i.di = extractelement <2 x float> %foldExtExtBinop946, i64 0 ; 2 uses
  %foldExtExtBinop903 = fmul <2 x float> %i.bn, %i.db
  %i.dj = extractelement <2 x float> %foldExtExtBinop903, i64 1 ; 2 uses
  %i.dk = shufflevector <2 x float> %foldExtExtBinop899, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %i.bn, %i.dk           ; 2 uses
  %foldExtExtBinop905 = fmul <2 x float> %i.bq, %foldExtExtBinop899 ; 2 uses
  %i.dm = extractelement <2 x float> %foldExtExtBinop905, i64 0
  %i.dn = fadd float %i.dj, %i.dm
  %i.do = fsub float 1.000000e+00, %i.dn          ; 4 uses
  %i.dp = fsub float %i.di, %i.dg                 ; 2 uses
  %i.dq = fadd float %i.di, %i.dg                 ; 2 uses
  %foldExtExtBinop907 = fadd <2 x float> %foldExtExtBinop901, %foldExtExtBinop905
  %i.dr = extractelement <2 x float> %foldExtExtBinop907, i64 0
  %i.ds = fsub float 1.000000e+00, %i.dr          ; 4 uses
  %i.dt = fsub <2 x float> %i.dl, %i.df           ; 2 uses
  %i.du = fadd <2 x float> %i.dl, %i.df           ; 3 uses
  %i.dv = fadd float %i.dh, %i.dj
  %i.dw = fsub float 1.000000e+00, %i.dv          ; 4 uses
  store float %i.do, ptr %22, align 16, !tbaa !37
  store float %i.dp, ptr %i.bh, align 4, !tbaa !37
  %i.dx = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.dy = extractelement <2 x float> %i.du, i64 0
  store float %i.dy, ptr %i.dx, align 8, !tbaa !37
  %i.dz = getelementptr inbounds nuw i8, ptr %22, i64 12
  store float 0.000000e+00, ptr %i.dz, align 4, !tbaa !37
  %i.ea = getelementptr inbounds nuw i8, ptr %22, i64 16
  store float %i.dq, ptr %i.ea, align 16, !tbaa !37
  store float %i.ds, ptr %i.bi, align 4, !tbaa !37
  %i.eb = shufflevector <2 x float> %i.dt, <2 x float> %i.du, <4 x i32> <i32 1, i32 poison, i32 0, i32 3>
  %i.ec = insertelement <4 x float> %i.eb, float 0.000000e+00, i64 1
  store <4 x float> %i.ec, ptr %i.bj, align 8, !tbaa !37
  store float %i.dw, ptr %i.bk, align 8, !tbaa !37
  store float 0.000000e+00, ptr %i.bl, align 4, !tbaa !37
  %i.ed = icmp sgt i32 %i.ai, 0
  br i1 %i.ed, label %.lr.ph858, label %._crit_edge859

.lr.ph858:                                        ; preds = %bb.e
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.sroa.25.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %21, i64 52 ; 2 uses
  %i.ef = icmp sgt i32 %i.aq, 0
  %i.eg = fadd float %i.do, %i.ds
  %i.eh = fadd float %i.dw, %i.eg                 ; 2 uses
  %i.ei = fcmp ogt float %i.eh, 0.000000e+00      ; 2 uses
  %i.ej = fcmp olt float %i.do, %i.ds
  %i.ek = fcmp olt float %i.ds, %i.dw
  %i.el = select i1 %i.ek, i32 2, i32 1
  %i.em = fcmp olt float %i.do, %i.dw
  %i.en = select i1 %i.em, i32 2, i32 0
  %i.eo = select i1 %i.ej, i32 %i.el, i32 %i.en
  %.fr.i = freeze i32 %i.eo                       ; 3 uses
  %i.ep = add nuw nsw i32 %.fr.i, 1               ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 3
  %i.er = select i1 %i.eq, i32 0, i32 %i.ep
  %i.es = add nuw nsw i32 %.fr.i, 2
  %i.et = urem i32 %i.es, 3
  %i.eu = zext nneg i32 %.fr.i to i64             ; 6 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %22, i64 %i.eu ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.eu ; 2 uses
  %i.ex = sext i32 %i.er to i64                   ; 6 uses
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %22, i64 %i.ex ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ex ; 2 uses
  %i.fa = zext nneg i32 %i.et to i64              ; 6 uses
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %22, i64 %i.fa ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fa ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.eu
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ex ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fa ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.eu ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ex ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ex
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.eu ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fa ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fa
  %.phi.trans.insert37.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fn = fadd float %i.eh, 1.000000e+00          ; 2 uses
  %i.fo = fsub <2 x float> %i.du, %i.dt           ; 2 uses
  %i.fp = fsub float %i.dq, %i.dp                 ; 2 uses
  %.sroa.25.48..sroa_idx.i.i370 = getelementptr inbounds nuw i8, ptr %22, i64 52
  %i.fq = load <2 x float>, ptr %i.bm, align 16   ; 2 uses
  %.sroa.25.48.copyload.i.i371 = load float, ptr %.sroa.25.48..sroa_idx.i.i370, align 4
  %.sroa.26.48..sroa_idx.i.i372 = getelementptr inbounds nuw i8, ptr %22, i64 56
  %.sroa.26.48.copyload.i.i373 = load float, ptr %.sroa.26.48..sroa_idx.i.i372, align 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %23, i64 4 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %.phi.trans.insert.i606 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eu
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ex
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fa
  %.sroa.2.0.insert.ext.i468 = zext i32 %2 to i64
  %.sroa.2.0.insert.shift.i469 = shl nuw i64 %.sroa.2.0.insert.ext.i468, 32
  %.sroa.0.0.insert.ext.i470 = zext i32 %1 to i64
  %.sroa.0.0.insert.insert.i471 = or disjoint i64 %.sroa.2.0.insert.shift.i469, %.sroa.0.0.insert.ext.i470
  %i.gb = sext i32 %i.ao to i64
  %i.gc = sext i32 %i.ak to i64
  %wide.trip.count868 = zext nneg i32 %i.ai to i64
  %wide.trip.count = zext nneg i32 %i.aq to i64
  %i.gd = insertelement <2 x float> %i.fq, float %.sroa.26.48.copyload.i.i373, i64 1
  %i.ge = insertelement <4 x float> poison, float %i.fp, i64 0
  %i.gf = shufflevector <2 x float> %i.fq, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.gg = insertelement <4 x float> %i.gf, float -0.000000e+00, i64 3
  %i.gh = insertelement <4 x float> %i.gg, float %.sroa.26.48.copyload.i.i373, i64 1
  %i.gi = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gj = shufflevector <4 x float> %i.ge, <4 x float> %i.gi, <4 x i32> <i32 0, i32 poison, i32 4, i32 5>
  br label %bb.f

._crit_edge859:                                   ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %.loopexit847

bb.f:                                             ; preds = %.lr.ph858, %._crit_edge
  %indvars.iv865 = phi i64 [ 0, %.lr.ph858 ], [ %indvars.iv.next866, %._crit_edge ] ; 2 uses
  %i.gk = load ptr, ptr %i.ee, align 8, !tbaa !163
  %i.gl = getelementptr [32 x i8], ptr %i.gk, i64 %indvars.iv865
  %i.gm = getelementptr [32 x i8], ptr %i.gl, i64 %i.gc ; 3 uses
  %.sroa.7816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 6
  %.sroa.10819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  %.sroa.10819.0.copyload = load i32, ptr %.sroa.10819.0..sroa_idx, align 4
  %i.gn = load ptr, ptr %i.ad, align 8, !tbaa !159
  %i.go = getelementptr inbounds [64 x i8], ptr %i.gn, i64 %i.af ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load <3 x i16>, ptr %i.gm, align 16
  %i.gr = load <3 x i16>, ptr %.sroa.7816.0..sroa_idx, align 2
  %i.gs = uitofp <3 x i16> %i.gq to <3 x float>
  %i.gt = load <3 x float>, ptr %i.gp, align 16, !tbaa !37 ; 2 uses
  %i.gu = fdiv <3 x float> %i.gs, %i.gt
  %i.gv = load <3 x float>, ptr %i.go, align 16, !tbaa !37 ; 2 uses
  %i.gw = fadd <3 x float> %i.gu, %i.gv           ; 2 uses
  %i.gx = uitofp <3 x i16> %i.gr to <3 x float>
  %i.gy = fdiv <3 x float> %i.gx, %i.gt
  %i.gz = fadd <3 x float> %i.gy, %i.gv           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @_ZNK11b3Matrix3x311getRotationER12b3Quaternion(ptr noundef nonnull align 16 dereferenceable(64) %21, ptr noundef nonnull align 16 dereferenceable(16) %20)
  %.fca.0.load.i = load <2 x float>, ptr %20, align 16 ; 8 uses
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %i.ha = fsub <3 x float> %i.gz, %i.gw
  %i.hb = fmul <3 x float> %i.ha, splat (float 5.000000e-01)
  %i.hc = fadd <3 x float> %i.hb, zeroinitializer ; 6 uses
  %i.hd = fadd <3 x float> %i.gz, %i.gw
  %i.he = fmul <3 x float> %i.hd, splat (float 5.000000e-01) ; 6 uses
  %.sroa.0803.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0 ; 3 uses
  %foldExtExtBinop943 = fmul <2 x float> %.fca.0.load.i, %.fca.0.load.i
  %i.hf = extractelement <2 x float> %foldExtExtBinop943, i64 1
  %i.hg = call float @llvm.fmuladd.f32(float %.sroa.0803.0.vec.extract, float %.sroa.0803.0.vec.extract, float %i.hf)
  %.sroa.5804.8.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 0 ; 3 uses
  %i.hh = call float @llvm.fmuladd.f32(float %.sroa.5804.8.vec.extract, float %.sroa.5804.8.vec.extract, float %i.hg)
  %.sroa.5804.12.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 1 ; 2 uses
  %i.hi = call noundef float @llvm.fmuladd.f32(float %.sroa.5804.12.vec.extract, float %.sroa.5804.12.vec.extract, float %i.hh)
  %i.hj = fdiv float 2.000000e+00, %i.hi          ; 2 uses
  %i.hk = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2>
  %i.hl = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hn = fmul <2 x float> %i.hk, %i.hm           ; 2 uses
  %i.ho = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.hp = fmul <2 x float> %i.ho, %i.hm           ; 2 uses
  %i.hq = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hr = fmul <2 x float> %i.hq, %i.hp           ; 4 uses
  %i.hs = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ht = insertelement <2 x float> %i.hs, float %i.hj, i64 1
  %i.hu = fmul <2 x float> %.fca.0.load.i, %i.ht  ; 4 uses
  %i.hv = extractelement <2 x float> %i.hn, i64 1 ; 2 uses
  %i.hw = fmul float %.sroa.0803.0.vec.extract, %i.hv
  %foldExtExtBinop909 = fmul <2 x float> %.fca.0.load.i, %i.hu ; 2 uses
  %i.hx = extractelement <2 x float> %foldExtExtBinop909, i64 1
  %i.hy = fmul <2 x float> %.fca.0.load.i, %i.hn  ; 4 uses
  %i.hz = fmul float %.sroa.5804.8.vec.extract, %i.hv ; 2 uses
  %i.ia = fadd float %i.hx, %i.hz
  %foldExtExtBinop911 = fadd <2 x float> %i.hy, %i.hr
  %i.ib = extractelement <2 x float> %foldExtExtBinop911, i64 0 ; 2 uses
  %i.ic = extractelement <2 x float> %i.hu, i64 0
  %i.id = fadd float %i.ic, %i.hz
  %i.ie = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %foldExtExtBinop909, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.if = fadd <2 x float> %i.ie, %i.hu
  %i.ig = fmul <2 x float> %i.ie, %i.hu
  %i.ih = shufflevector <2 x float> %i.if, <2 x float> %i.ig, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.ii = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.hw, i64 1 ; 3 uses
  %i.ij = insertelement <2 x float> %i.ih, float %i.ia, i64 0
  %i.ik = fsub <2 x float> %i.ii, %i.ij           ; 2 uses
  %i.il = fadd <2 x float> %i.hy, %i.hr
  %i.im = fsub <2 x float> %i.hy, %i.hr
  %i.in = shufflevector <2 x float> %i.im, <2 x float> %i.il, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.io = fsub <2 x float> %i.ii, %i.ih
  %i.ip = fadd <2 x float> %i.ii, %i.ih
  %i.iq = shufflevector <2 x float> %i.io, <2 x float> %i.ip, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.ir = call noundef float @llvm.fabs.f32(float %i.ib)
  %26 = insertelement <2 x float> %i.hy, float 1.000000e+00, i64 0
  %27 = insertelement <2 x float> %i.hr, float %i.id, i64 0
  %28 = fsub <2 x float> %26, %27                 ; 3 uses
  %29 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %28) ; 2 uses
  %i.is = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ik)
  %i.it = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.in)
  %i.iu = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.iq)
  %.sroa.25.48.copyload.i.i = load float, ptr %.sroa.25.48..sroa_idx.i.i, align 4
  %i.iv = load <3 x float>, ptr %i.ax, align 16
  %i.iw = shufflevector <3 x float> %i.iv, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %30 = extractelement <3 x float> %i.he, i64 1
  %i.ix = extractelement <2 x float> %28, i64 0
  %i.iy = fmul float %30, %i.ix
  %i.iz = extractelement <3 x float> %i.he, i64 0
  %i.ja = call float @llvm.fmuladd.f32(float %i.iz, float %i.ib, float %i.iy)
  %31 = extractelement <3 x float> %i.he, i64 2
  %i.jb = extractelement <2 x float> %28, i64 1
  %i.jc = call noundef float @llvm.fmuladd.f32(float %31, float %i.jb, float %i.ja)
  %i.jd = shufflevector <3 x float> %i.he, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.je = fmul <2 x float> %i.jd, %i.in
  %i.jf = shufflevector <3 x float> %i.he, <3 x float> poison, <2 x i32> zeroinitializer
  %i.jg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jf, <2 x float> %i.ik, <2 x float> %i.je)
  %i.jh = shufflevector <3 x float> %i.he, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ji = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> %i.iq, <2 x float> %i.jg)
  %i.jj = fadd float %.sroa.25.48.copyload.i.i, %i.jc ; 2 uses
  %i.jk = fadd <2 x float> %i.iw, %i.ji           ; 2 uses
  %32 = extractelement <3 x float> %i.hc, i64 1
  %i.jl = extractelement <2 x float> %29, i64 0
  %i.jm = fmul float %32, %i.jl
  %i.jn = extractelement <3 x float> %i.hc, i64 0
  %i.jo = call float @llvm.fmuladd.f32(float %i.jn, float %i.ir, float %i.jm)
  %33 = extractelement <3 x float> %i.hc, i64 2
  %i.jp = extractelement <2 x float> %29, i64 1
  %i.jq = call noundef float @llvm.fmuladd.f32(float %33, float %i.jp, float %i.jo) ; 2 uses
  %i.jr = shufflevector <3 x float> %i.hc, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.js = fmul <2 x float> %i.jr, %i.it
  %i.jt = shufflevector <3 x float> %i.hc, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ju = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jt, <2 x float> %i.is, <2 x float> %i.js)
  %i.jv = shufflevector <3 x float> %i.hc, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jv, <2 x float> %i.iu, <2 x float> %i.ju) ; 2 uses
  %i.jx = fsub float %i.jj, %i.jq
  %i.jy = fsub <2 x float> %i.jk, %i.jw
  %i.jz = fadd float %i.jj, %i.jq
  %i.ka = fadd <2 x float> %i.jk, %i.jw
  br i1 %i.ef, label %.lr.ph855, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ak, %bb.f
  %indvars.iv.next866 = add nuw nsw i64 %indvars.iv865, 1 ; 2 uses
  %exitcond869.not = icmp eq i64 %indvars.iv.next866, %wide.trip.count868
  br i1 %exitcond869.not, label %._crit_edge859, label %bb.f, !llvm.loop !310

.lr.ph855:                                        ; preds = %bb.f, %bb.ak
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ak ], [ 0, %bb.f ] ; 2 uses
  %i.kb = load ptr, ptr %i.ee, align 8, !tbaa !163
  %i.kc = getelementptr [32 x i8], ptr %i.kb, i64 %indvars.iv
  %i.kd = getelementptr [32 x i8], ptr %i.kc, i64 %i.gb ; 3 uses
  %.sroa.7800.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 6
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  %i.ke = load ptr, ptr %i.ad, align 8, !tbaa !159 ; 2 uses
  %i.kf = getelementptr inbounds [64 x i8], ptr %i.ke, i64 %i.al ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.kh = load <3 x i16>, ptr %i.kd, align 16
  %i.ki = load <3 x i16>, ptr %.sroa.7800.0..sroa_idx, align 2
  %i.kj = uitofp <3 x i16> %i.kh to <3 x float>
  %i.kk = load <3 x float>, ptr %i.kg, align 16, !tbaa !37 ; 2 uses
  %i.kl = fdiv <3 x float> %i.kj, %i.kk
  %i.km = load <3 x float>, ptr %i.kf, align 16, !tbaa !37 ; 2 uses
  %i.kn = fadd <3 x float> %i.kl, %i.km           ; 2 uses
  %i.ko = uitofp <3 x i16> %i.ki to <3 x float>
  %i.kp = fdiv <3 x float> %i.ko, %i.kk
  %i.kq = fadd <3 x float> %i.kp, %i.km           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  br i1 %i.ei, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph855
  %i.kr = call noundef float @sqrtf(float noundef %i.fn) #26 ; 2 uses
  %i.ks = fmul float %i.kr, 5.000000e-01
  %i.kt = fdiv float 5.000000e-01, %i.kr          ; 2 uses
  %i.ku = insertelement <2 x float> poison, float %i.kt, i64 0
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kw = fmul <2 x float> %i.kv, %i.fo
  %i.kx = fmul float %i.kt, %i.fp
  br label %_ZNK11b3Matrix3x311getRotationER12b3Quaternion.exit

bb.h:                                             ; preds = %.lr.ph855
  %i.ky = load float, ptr %i.ew, align 4, !tbaa !44
  %i.kz = load float, ptr %i.ez, align 4, !tbaa !44
  %i.la = fsub float %i.ky, %i.kz
  %i.lb = load float, ptr %i.fc, align 4, !tbaa !44
  %i.lc = fsub float %i.la, %i.lb
  %i.ld = fadd float %i.lc, 1.000000e+00
  %i.le = call noundef float @sqrtf(float noundef %i.ld) #26 ; 2 uses
  %i.lf = fmul float %i.le, 5.000000e-01
  store float %i.lf, ptr %i.fd, align 4, !tbaa !44
  %i.lg = fdiv float 5.000000e-01, %i.le          ; 3 uses
  %i.lh = load float, ptr %i.fe, align 4, !tbaa !44
  %i.li = load float, ptr %i.ff, align 4, !tbaa !44
  %i.lj = fsub float %i.lh, %i.li
  %i.lk = fmul float %i.lg, %i.lj
  store float %i.lk, ptr %i.fg, align 4, !tbaa !44
  %i.ll = load float, ptr %i.fh, align 4, !tbaa !44
  %i.lm = load float, ptr %i.fi, align 4, !tbaa !44
  %i.ln = fadd float %i.ll, %i.lm
  %i.lo = fmul float %i.lg, %i.ln
  store float %i.lo, ptr %i.fj, align 4, !tbaa !44
  %i.lp = load float, ptr %i.fk, align 4, !tbaa !44
  %i.lq = load float, ptr %i.fl, align 4, !tbaa !44
  %i.lr = fadd float %i.lp, %i.lq
  %i.ls = fmul float %i.lg, %i.lr
  store float %i.ls, ptr %i.fm, align 4, !tbaa !44
  %i.lt = load <2 x float>, ptr %i.c, align 16, !tbaa !44
  %i.lu = shufflevector <2 x float> %i.lt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.pre38.i = load float, ptr %.phi.trans.insert37.i, align 8, !tbaa !44
  %.pre40.i = load float, ptr %i.fg, align 4, !tbaa !44
  br label %_ZNK11b3Matrix3x311getRotationER12b3Quaternion.exit

_ZNK11b3Matrix3x311getRotationER12b3Quaternion.exit: ; preds = %bb.g, %bb.h
  %i.lv = phi float [ %.pre40.i, %bb.h ], [ %i.ks, %bb.g ] ; 3 uses
  %i.lw = phi float [ %.pre38.i, %bb.h ], [ %i.kx, %bb.g ] ; 4 uses
  %i.lx = phi <2 x float> [ %i.lu, %bb.h ], [ %i.kw, %bb.g ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.ly = fsub <3 x float> %i.kq, %i.kn
  %i.lz = fadd <3 x float> %i.kq, %i.kn
  %foldExtExtBinop915.a = fmul <2 x float> %i.lx, %i.lx
  %i.ma = extractelement <2 x float> %foldExtExtBinop915.a, i64 0
  %i.mb = extractelement <2 x float> %i.lx, i64 1 ; 3 uses
  %i.mc = call float @llvm.fmuladd.f32(float %i.mb, float %i.mb, float %i.ma)
  %i.md = call float @llvm.fmuladd.f32(float %i.lw, float %i.lw, float %i.mc)
  %i.me = call noundef float @llvm.fmuladd.f32(float %i.lv, float %i.lv, float %i.md)
  %i.mf = fdiv float 2.000000e+00, %i.me          ; 2 uses
  %i.mg = insertelement <2 x float> poison, float %i.mf, i64 0
  %i.mh = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mi = fmul <2 x float> %i.lx, %i.mh           ; 4 uses
  %i.mj = fmul <2 x float> %i.lx, %i.mi           ; 3 uses
  %i.mk = extractelement <2 x float> %i.mj, i64 1
  %i.ml = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.mj)
  store i32 0, ptr @numAabbChecks, align 4, !tbaa !38
  %i.mm = fmul <3 x float> %i.ly, splat (float 5.000000e-01)
  %i.mn = fadd <3 x float> %i.mm, zeroinitializer ; 6 uses
  %i.mo = fmul <3 x float> %i.lz, splat (float 5.000000e-01) ; 6 uses
  %i.mp = fmul float %i.lw, %i.mf                 ; 4 uses
  %i.mq = fmul float %i.mb, %i.mp                 ; 2 uses
  %i.mr = insertelement <2 x float> poison, float %i.lv, i64 0
  %i.ms = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mt = insertelement <2 x float> %i.mi, float %i.mp, i64 0
  %i.mu = fmul <2 x float> %i.ms, %i.mt           ; 4 uses
  %i.mv = shufflevector <2 x float> %i.mi, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mw = insertelement <2 x float> %i.mv, float %i.mp, i64 0
  %i.mx = fmul <2 x float> %i.lx, %i.mw
  %i.my = shufflevector <2 x float> %i.mx, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.mz = fmul float %i.lw, %i.mp                 ; 2 uses
  %i.na = insertelement <2 x float> %i.ms, float %i.mz, i64 0 ; 2 uses
  %i.nb = shufflevector <2 x float> %i.mj, <2 x float> %i.mi, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.nc = fmul <2 x float> %i.na, %i.nb           ; 2 uses
  %i.nd = fadd <2 x float> %i.na, %i.nb
  %i.ne = shufflevector <2 x float> %i.nd, <2 x float> %i.nc, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop917.a = fadd <2 x float> %i.my, %i.mu
  %i.nf = extractelement <2 x float> %foldExtExtBinop917.a, i64 0 ; 2 uses
  %i.ng = fadd float %i.mk, %i.mz
  %i.nh = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.mq, i64 1
  %i.ni = fsub <2 x float> %i.nh, %i.ne           ; 2 uses
  %i.nj = fadd <2 x float> %i.my, %i.mu
  %i.nk = fsub <2 x float> %i.my, %i.mu
  %i.nl = shufflevector <2 x float> %i.nk, <2 x float> %i.nj, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.nm = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.mq, i64 0 ; 2 uses
  %i.nn = shufflevector <2 x float> %i.nc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.no = insertelement <2 x float> %i.nn, float %i.ml, i64 1 ; 2 uses
  %i.np = fsub <2 x float> %i.nm, %i.no
  %i.nq = fadd <2 x float> %i.nm, %i.no
  %i.nr = shufflevector <2 x float> %i.nq, <2 x float> %i.np, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ns = call noundef float @llvm.fabs.f32(float %i.nf)
  %i.nt = insertelement <2 x float> %i.my, float 1.000000e+00, i64 0
  %i.nu = insertelement <2 x float> %i.mu, float %i.ng, i64 0
  %i.nv = fsub <2 x float> %i.nt, %i.nu           ; 3 uses
  %i.nw = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.nv) ; 2 uses
  %i.nx = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ni)
  %i.ny = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.nl)
  %i.nz = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.nr)
  %i.oa = extractelement <3 x float> %i.mo, i64 1
  %i.ob = extractelement <2 x float> %i.nv, i64 0
  %i.oc = fmul float %i.oa, %i.ob
  %i.od = extractelement <3 x float> %i.mo, i64 0
  %i.oe = call float @llvm.fmuladd.f32(float %i.od, float %i.nf, float %i.oc)
  %i.of = extractelement <3 x float> %i.mo, i64 2
  %i.og = extractelement <2 x float> %i.nv, i64 1
  %i.oh = call noundef float @llvm.fmuladd.f32(float %i.of, float %i.og, float %i.oe)
  %i.oi = shufflevector <3 x float> %i.mo, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.oj = fmul <2 x float> %i.oi, %i.nl
  %i.ok = shufflevector <3 x float> %i.mo, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ol = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ok, <2 x float> %i.ni, <2 x float> %i.oj)
  %i.om = shufflevector <3 x float> %i.mo, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.on = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.om, <2 x float> %i.nr, <2 x float> %i.ol)
  %i.oo = fadd float %.sroa.25.48.copyload.i.i371, %i.oh ; 2 uses
  %i.op = fadd <2 x float> %i.gd, %i.on           ; 2 uses
  %i.oq = extractelement <3 x float> %i.mn, i64 1
  %i.or = extractelement <2 x float> %i.nw, i64 0
  %i.os = fmul float %i.oq, %i.or
  %i.ot = extractelement <3 x float> %i.mn, i64 0
  %i.ou = call float @llvm.fmuladd.f32(float %i.ot, float %i.ns, float %i.os)
  %i.ov = extractelement <3 x float> %i.mn, i64 2
  %i.ow = extractelement <2 x float> %i.nw, i64 1
  %i.ox = call noundef float @llvm.fmuladd.f32(float %i.ov, float %i.ow, float %i.ou) ; 2 uses
  %i.oy = shufflevector <3 x float> %i.mn, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.oz = fmul <2 x float> %i.oy, %i.ny
  %i.pa = shufflevector <3 x float> %i.mn, <3 x float> poison, <2 x i32> zeroinitializer
  %i.pb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pa, <2 x float> %i.nx, <2 x float> %i.oz)
  %i.pc = shufflevector <3 x float> %i.mn, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.pd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pc, <2 x float> %i.nz, <2 x float> %i.pb) ; 2 uses
  %i.pe = fsub float %i.oo, %i.ox
  %i.pf = fadd float %i.oo, %i.ox
  %i.pg = fadd <2 x float> %i.op, %i.pd
  %i.ph = fcmp ule <2 x float> %i.jy, %i.pg
  %i.pi = fcmp ule float %i.jx, %i.pf
  %i.pj = fcmp uge float %i.jz, %i.pe
  %i.pk = and i1 %i.pi, %i.pj
  %i.pl = fsub <2 x float> %i.op, %i.pd
  %i.pm = fcmp uge <2 x float> %i.ka, %i.pl
  %i.pn = and <2 x i1> %i.ph, %i.pm               ; 2 uses
  %i.po = extractelement <2 x i1> %i.pn, i64 1
  %i.pp = select i1 %i.pk, i1 %i.po, i1 false
  %i.pq = extractelement <2 x i1> %i.pn, i64 0
  %i.pr = select i1 %i.pp, i1 %i.pq, i1 false
  br i1 %i.pr, label %bb.i, label %bb.ak

bb.i:                                             ; preds = %_ZNK11b3Matrix3x311getRotationER12b3Quaternion.exit
  %i.ps = getelementptr inbounds [64 x i8], ptr %i.ke, i64 %i.af
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 56
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !320
  %i.pv = getelementptr inbounds nuw i8, ptr %i.kf, i64 56
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !320
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  store i8 1, ptr %i.fr, align 8, !tbaa !321
  store ptr null, ptr %i.fs, align 8, !tbaa !167
end_hunk_2
