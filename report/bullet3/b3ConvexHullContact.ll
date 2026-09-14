Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3ConvexHullContact?download=true
inline.NumInlined: 2655
inline.NumDeleted: 497
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_Z33b3FindConcaveSeparatingAxisKernelP6b3Int4PK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataPK9b3Vector3SC_PK9b3GpuFacePKiPK15b3GpuChildShapeP6b3AabbPSA_S0_SN_SN_SN_Piiii:bb.a
  %i.rb = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5265.0.copyload, float %i.px, float %i.ra)
  %i.rc = extractelement <4 x float> %i.qw, i64 2
  %i.rd = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5265.0.copyload, float %i.py, float %i.rc)
  %i.re = extractelement <4 x float> %i.qw, i64 3
  %i.rf = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5265.0.copyload, float %i.qa, float %i.re)
  %i.rg = fadd float %.sroa.25.48.copyload.i250, %i.rb
  %i.rh = fadd float %.sroa.23.48.copyload.i248, %i.rd
  %i.ri = fadd float %.sroa.26.48.copyload.i252, %i.rf
  %i.rj = insertelement <2 x float> poison, float %i.rh, i64 0
  %i.rk = insertelement <2 x float> %i.rj, float %i.rg, i64 1
  %i.rl = fsub <2 x float> %i.pk, %i.rk
  %i.rm = fsub float %i.qz, %i.ri
  %.sroa.3.12.vec.insert.i.i260 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.rm, i64 0
  store <2 x float> %i.rl, ptr %28, align 16
  %i.rn = getelementptr inbounds nuw i8, ptr %28, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i260, ptr %i.rn, align 8
  %i.ro = call noundef zeroext i1 @_Z20b3FindSeparatingAxisPK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_PS3_S8_PK9b3GpuFacePKiS8_S8_SB_SD_PS2_Pf(ptr noundef nonnull %19, ptr noundef nonnull %i.nc, ptr noundef nonnull align 16 dereferenceable(16) %24, ptr noundef nonnull align 16 dereferenceable(16) %26, ptr noundef nonnull align 16 dereferenceable(16) %25, ptr noundef nonnull align 16 dereferenceable(16) %27, ptr noundef nonnull align 16 dereferenceable(16) %28, ptr noundef nonnull %20, ptr nonnull poison, ptr noundef nonnull %23, ptr nonnull poison, ptr noundef nonnull %4, ptr poison, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull %21, ptr noundef nonnull %i.a)
  br i1 %i.ro, label %bb.l, label %.critedge191

bb.l:                                             ; preds = %bb.k
  %i.rp = call noundef zeroext i1 @_Z20b3FindSeparatingAxisPK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_PS3_S8_PK9b3GpuFacePKiS8_S8_SB_SD_PS2_Pf(ptr noundef nonnull %i.nc, ptr noundef nonnull %19, ptr noundef nonnull align 16 dereferenceable(16) %25, ptr noundef nonnull align 16 dereferenceable(16) %27, ptr noundef nonnull align 16 dereferenceable(16) %24, ptr noundef nonnull align 16 dereferenceable(16) %26, ptr noundef nonnull align 16 dereferenceable(16) %28, ptr noundef nonnull %4, ptr poison, ptr noundef nonnull %6, ptr nonnull poison, ptr noundef nonnull %20, ptr nonnull poison, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull %21, ptr noundef nonnull %i.a)
  br i1 %i.rp, label %bb.m, label %.critedge191

bb.m:                                             ; preds = %bb.l
  %i.rq = call noundef zeroext i1 @_Z28b3FindSeparatingAxisEdgeEdgePK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_PS3_S8_PK9b3GpuFacePKiS8_S8_SB_SD_PS2_Pfb(ptr noundef nonnull %19, ptr noundef nonnull %i.nc, ptr noundef nonnull align 16 dereferenceable(16) %24, ptr noundef nonnull align 16 dereferenceable(16) %26, ptr noundef nonnull align 16 dereferenceable(16) %25, ptr noundef nonnull align 16 dereferenceable(16) %27, ptr noundef nonnull align 16 dereferenceable(16) %28, ptr noundef nonnull %20, ptr noundef nonnull %22, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull %4, ptr noundef %5, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull %21, ptr noundef nonnull %i.a, i1 noundef zeroext true)
  br i1 %i.rq, label %bb.n, label %.critedge191

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.aa, align 4, !tbaa !38
  %i.rr = load float, ptr %i.a, align 4, !tbaa !44
  %i.rs = getelementptr inbounds nuw i8, ptr %21, i64 12
  store float %i.rr, ptr %i.rs, align 4, !tbaa !37
  %i.rt = getelementptr inbounds [16 x i8], ptr %10, i64 %i.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.rt, ptr noundef nonnull align 16 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !40
  %i.ru = call noundef i32 @_Z19b3FindClippingFacesRK9b3Vector3PK22b3ConvexPolyhedronDataS4_S1_RK12b3QuaternionS1_S7_PS_S8_S8_iffPS0_PK9b3GpuFacePKiS9_SC_SE_P6b3Int4i(ptr noundef nonnull align 16 dereferenceable(16) %21, ptr noundef nonnull %19, ptr noundef nonnull %i.nc, ptr noundef nonnull align 16 dereferenceable(16) %24, ptr noundef nonnull align 16 dereferenceable(16) %26, ptr noundef nonnull align 16 dereferenceable(16) %25, ptr noundef nonnull align 16 dereferenceable(16) %27, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %16, float noundef -1.000000e+30, float noundef 2.000000e-02, ptr noundef nonnull %20, ptr noundef nonnull %23, ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %11, i32 noundef %18) ; 0 uses
  br label %bb.o

.critedge191:                                     ; preds = %bb.k, %bb.l, %bb.m
  %i.rv = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 -1, ptr %i.rv, align 4, !tbaa !37
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
  %i.rw = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 -1, ptr %i.rw, align 4, !tbaa !37
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
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ag = mul nsw i32 %20, %10
  %i.ah = sext i32 %i.ag to i64
  %i.ai = sext i32 %.sroa.3.0.copyload to i64
  %wide.trip.count161 = zext nneg i32 %.sroa.424.0.copyload to i64
  %invariant.gep174 = getelementptr [4 x i8], ptr %18, i64 %i.ai
  %invariant.gep176 = getelementptr [16 x i8], ptr %9, i64 %i.ah
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.094139 = phi i32 [ -1, %.lr.ph ], [ %.195, %bb.b ]
  %.096138 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.197, %bb.b ] ; 2 uses
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.aj = load <3 x float>, ptr %gep, align 16, !tbaa !37 ; 4 uses
  %i.ak = shufflevector <3 x float> %i.aj, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0> ; 2 uses
  %i.al = load float, ptr %gep, align 16, !tbaa !37
  %i.am = extractelement <3 x float> %i.aj, i64 1
  %i.an = shufflevector <3 x float> %i.aj, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ao = fneg <4 x float> %i.ak
  %i.ap = shufflevector <4 x float> %i.an, <4 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aq = fmul <4 x float> %i.j, %i.ap
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.ak, <4 x float> %i.aq) ; 4 uses
  %i.as = extractelement <4 x float> %i.ar, i64 2
  %i.at = tail call float @llvm.fmuladd.f32(float %i.l, float %i.am, float %i.as) ; 3 uses
  %i.au = extractelement <4 x float> %i.ar, i64 0
  %i.av = extractelement <3 x float> %i.aj, i64 2 ; 2 uses
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.m, float %i.av, float %i.au) ; 3 uses
  %i.ax = extractelement <4 x float> %i.ar, i64 1
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.o, float %i.al, float %i.ax) ; 3 uses
  %i.az = extractelement <4 x float> %i.ar, i64 3
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.l, float %i.av, float %i.az) ; 3 uses
  %i.bb = fmul float %i.g, %i.at
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.m, float %i.bb)
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.l, float %i.bc)
  %i.be = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.n, float %i.bd)
  %i.bf = fmul float %i.g, %i.aw
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.o, float %i.bf)
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.m, float %i.bg)
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.at, float %i.k, float %i.bh)
  %i.bj = fmul float %i.g, %i.ay
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.l, float %i.bj)
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.at, float %i.o, float %i.bk)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.h, float %i.bl)
  %i.bn = fmul float %i.r, %i.bi
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.be, float %i.p, float %i.bn)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.bm, float %i.t, float %i.bo) ; 2 uses
  %i.bq = fcmp ogt float %i.bp, %.096138          ; 2 uses
  %.197 = select i1 %i.bq, float %i.bp, float %.096138
  %i.br = trunc nuw nsw i64 %indvars.iv to i32
  %.195 = select i1 %i.bq, i32 %i.br, i32 %.094139 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !273

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.0.lcssa = phi i32 [ 0, %._crit_edge ], [ %.sroa.424.0.copyload, %bb.c ]
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !42 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = sext i32 %20 to i64
  %i.cb = getelementptr inbounds [16 x i8], ptr %8, i64 %i.ca ; 2 uses
  %.sroa.6126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph143, %bb.c
  %indvars.iv156 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next157, %bb.c ] ; 3 uses
  %i.cc = load i32, ptr %i.ac, align 16, !tbaa !46
  %gep175 = getelementptr [4 x i8], ptr %invariant.gep174, i64 %indvars.iv156
  %i.cd = load i32, ptr %gep175, align 4, !tbaa !38
  %i.ce = add nsw i32 %i.cd, %i.cc
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [16 x i8], ptr %16, i64 %i.cf ; 2 uses
  %.sroa.26.48.copyload.i = load float, ptr %.sroa.26.48..sroa_idx.i, align 8
  %i.ch = load float, ptr %i.af, align 4, !tbaa !37 ; 5 uses
  %21 = load <3 x float>, ptr %i.cg, align 16     ; 5 uses
  %.sroa.0129.0.copyload.a = load float, ptr %i.cg, align 16
  %i.ci = load <2 x float>, ptr %5, align 16
  %i.cj = load float, ptr %6, align 16, !tbaa !37 ; 6 uses
  %i.ck = load float, ptr %i.ae, align 8, !tbaa !37 ; 4 uses
  %i.cl = load float, ptr %i.ad, align 4, !tbaa !37 ; 5 uses
  %i.cm = fmul float %i.cl, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.cm)
  %i.co = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cn)
  %i.cp = tail call noundef float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.co)
  %i.cq = fdiv float 2.000000e+00, %i.cp          ; 3 uses
  %i.cr = fmul float %i.cj, %i.cq                 ; 2 uses
  %i.cs = fmul float %i.cl, %i.cq                 ; 3 uses
  %i.ct = fmul float %i.ch, %i.cr                 ; 2 uses
  %i.cu = fmul float %i.ch, %i.cs                 ; 2 uses
  %i.cv = fmul float %i.cj, %i.cr                 ; 2 uses
  %i.cw = fmul float %i.cj, %i.cs                 ; 2 uses
  %i.cx = fmul float %i.ck, %i.cq                 ; 4 uses
  %i.cy = fmul float %i.cl, %i.cs                 ; 2 uses
  %i.cz = fmul float %i.cl, %i.cx                 ; 2 uses
  %i.da = fmul float %i.cj, %i.cx                 ; 2 uses
  %i.db = fmul float %i.ck, %i.cx                 ; 2 uses
  %i.dc = fmul float %i.ch, %i.cx                 ; 2 uses
  %i.dd = fadd float %i.cy, %i.db
  %i.de = fadd float %i.cw, %i.dc
  %i.df = fsub float 1.000000e+00, %i.dd
  %i.dg = fadd float %i.cv, %i.db
  %i.dh = fsub float 1.000000e+00, %i.dg
  %i.di = fsub float %i.cw, %i.dc
  %i.dj = fsub float %i.cz, %i.ct
  %i.dk = fadd float %i.da, %i.cu
  %i.dl = fsub float %i.da, %i.cu
  %i.dm = fadd float %i.cz, %i.ct
  %i.dn = fadd float %i.cv, %i.cy
  %i.do = fsub float 1.000000e+00, %i.dn
  %22 = shufflevector <3 x float> %21, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dp = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dq = insertelement <2 x float> %i.dp, float %i.dh, i64 1
  %i.dr = fmul <2 x float> %22, %i.dq
  %i.ds = shufflevector <3 x float> %21, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dt = insertelement <2 x float> poison, float %i.df, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.de, i64 1
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.du, <2 x float> %i.dr)
  %23 = shufflevector <3 x float> %21, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %24 = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dw = insertelement <2 x float> %24, float %i.dj, i64 1
  %25 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %i.dw, <2 x float> %i.dv)
  %26 = extractelement <3 x float> %21, i64 1
  %i.dx = fmul float %26, %i.dm
  %i.dy = tail call float @llvm.fmuladd.f32(float %.sroa.0129.0.copyload.a, float %i.dl, float %i.dx)
  %27 = extractelement <3 x float> %21, i64 2
  %i.dz = tail call noundef float @llvm.fmuladd.f32(float %27, float %i.do, float %i.dy)
  %i.ea = fadd <2 x float> %i.ci, %25
  %i.eb = fadd float %.sroa.26.48.copyload.i, %i.dz
  %.sroa.3.12.vec.insert.i.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eb, i64 0
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %gep177 = getelementptr [16 x i8], ptr %invariant.gep176, i64 %indvars.iv156 ; 2 uses
  store <2 x float> %i.ea, ptr %gep177, align 16
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep177, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i4.i.i, ptr %.sroa.418.0..sroa_idx, align 8, !tbaa !37
  %exitcond162.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count161
  br i1 %exitcond162.not, label %.preheader, label %bb.c, !llvm.loop !274

._crit_edge149:                                   ; preds = %bb.f, %.preheader
  %.092.lcssa = phi i32 [ -1, %.preheader ], [ %.193, %bb.f ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !43
  %i.ee = add nsw i32 %i.ed, %.092.lcssa
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [32 x i8], ptr %14, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !51 ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph153, label %._crit_edge154

.lr.ph153:                                        ; preds = %._crit_edge149
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.26.48..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.eo = mul nsw i32 %20, %10
  %i.ep = sext i32 %i.eo to i64
  %wide.trip.count166 = zext nneg i32 %i.ei to i64
  %invariant.gep178 = getelementptr [16 x i8], ptr %7, i64 %i.ep
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph148, %bb.f
  %i.eq = phi i32 [ %i.bt, %.lr.ph148 ], [ %i.gz, %bb.f ]
  %.090147 = phi i32 [ 0, %.lr.ph148 ], [ %i.ha, %bb.f ] ; 3 uses
  %.091146 = phi float [ f0x7F7FFFFF, %.lr.ph148 ], [ %.1, %bb.f ] ; 2 uses
  %.092145 = phi i32 [ -1, %.lr.ph148 ], [ %.193, %bb.f ]
  %i.er = load i32, ptr %i.bv, align 4, !tbaa !43
  %i.es = add nsw i32 %i.er, %.090147
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [32 x i8], ptr %14, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ew = load float, ptr %i.bw, align 4, !tbaa !44 ; 3 uses
  %i.ex = load <2 x float>, ptr %i.eu, align 16, !tbaa !37 ; 5 uses
  %i.ey = load <2 x float>, ptr %i.ev, align 4, !tbaa !37 ; 3 uses
  %i.ez = load <2 x float>, ptr %i.bx, align 4, !tbaa !44 ; 4 uses
  %i.fa = load <2 x float>, ptr %4, align 16, !tbaa !44 ; 2 uses
  %i.fb = fmul <2 x float> %i.ey, %i.fa
  %i.fc = extractelement <2 x float> %i.ex, i64 0
  %shift = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.ex, %shift
  %i.fd = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fe = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fg = shufflevector <2 x float> %i.ey, <2 x float> %i.ex, <2 x i32> <i32 1, i32 2>
  %i.fh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %i.fg, <2 x float> %i.fb)
  %i.fi = extractelement <2 x float> %i.ex, i64 1 ; 2 uses
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.fi, float %i.fd)
  %i.fk = fneg <2 x float> %i.ez                  ; 4 uses
  %i.fl = extractelement <2 x float> %i.fa, i64 0 ; 2 uses
  %i.fm = fneg float %i.fl                        ; 4 uses
  %i.fn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fk, <2 x float> %i.ex, <2 x float> %i.fh) ; 5 uses
  %i.fo = extractelement <2 x float> %i.ey, i64 1 ; 2 uses
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.fo, float %i.fj) ; 3 uses
  %i.fq = fneg float %i.fi
  %i.fr = extractelement <2 x float> %i.ez, i64 0
  %i.fs = fmul float %i.fr, %i.fq
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.fc, float %i.fs)
  %i.fu = extractelement <2 x float> %i.fk, i64 1 ; 2 uses
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.fo, float %i.ft) ; 2 uses
  %i.fw = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fx = insertelement <2 x float> %i.fw, float %i.fp, i64 1
  %i.fy = fmul <2 x float> %i.ff, %i.fx
  %i.fz = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gb = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gc = insertelement <2 x float> %i.gb, float %i.fm, i64 0
  %i.gd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.gc, <2 x float> %i.fy)
  %i.ge = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> %i.fn, <2 x i32> <i32 0, i32 2>
  %i.gg = insertelement <2 x float> %i.gb, float %i.fm, i64 1
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.gg, <2 x float> %i.gd)
  %i.gi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.ez, <2 x float> %i.gh) ; 3 uses
  %i.gj = extractelement <2 x float> %i.fn, i64 0
  %i.gk = fmul float %i.ew, %i.gj
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fu, float %i.gk)
  %i.gm = extractelement <2 x float> %i.fn, i64 1
  %i.gn = extractelement <2 x float> %i.fk, i64 0
  %i.go = tail call float @llvm.fmuladd.f32(float %i.gm, float %i.gn, float %i.gl)
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.fp, float %i.fl, float %i.go) ; 2 uses
  %i.gq = load float, ptr %0, align 16, !tbaa !37
  %i.gr = load float, ptr %i.by, align 4, !tbaa !37
  %i.gs = extractelement <2 x float> %i.gi, i64 1
  %i.gt = fmul float %i.gr, %i.gs
  %i.gu = extractelement <2 x float> %i.gi, i64 0
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.gu, float %i.gq, float %i.gt)
  %i.gw = load float, ptr %i.bz, align 8, !tbaa !37
  %i.gx = tail call noundef float @llvm.fmuladd.f32(float %i.gp, float %i.gw, float %i.gv) ; 2 uses
  %i.gy = fcmp olt float %i.gx, %.091146
  br i1 %i.gy, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.3.12.vec.insert.i11.i111 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gp, i64 0
  store <2 x float> %i.gi, ptr %i.cb, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i11.i111, ptr %.sroa.6126.0..sroa_idx, align 8, !tbaa !37
  %.pre168 = load i32, ptr %i.bs, align 8, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.gz = phi i32 [ %.pre168, %bb.e ], [ %i.eq, %bb.d ] ; 2 uses
  %.193 = phi i32 [ %.090147, %bb.e ], [ %.092145, %bb.d ] ; 2 uses
  %.1 = phi float [ %i.gx, %bb.e ], [ %.091146, %bb.d ]
  %i.ha = add nuw nsw i32 %.090147, 1             ; 2 uses
  %i.hb = icmp slt i32 %i.ha, %i.gz
  br i1 %i.hb, label %bb.d, label %._crit_edge149, !llvm.loop !275

._crit_edge154:                                   ; preds = %bb.g, %._crit_edge149
  %i.hc = sext i32 %20 to i64
  %i.hd = getelementptr inbounds [16 x i8], ptr %19, i64 %i.hc ; 4 uses
  store i32 %.092.lcssa, ptr %i.hd, align 16, !tbaa !37
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  store i32 %.094.lcssa, ptr %i.he, align 4, !tbaa !37
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store i32 %i.ei, ptr %i.hf, align 8, !tbaa !37
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  store i32 %.0.lcssa, ptr %i.hg, align 4, !tbaa !37
  ret i32 0

bb.g:                                             ; preds = %.lr.ph153, %bb.g
  %indvars.iv163 = phi i64 [ 0, %.lr.ph153 ], [ %indvars.iv.next164, %bb.g ] ; 3 uses
  %i.hh = load i32, ptr %i.ek, align 16, !tbaa !46
  %i.hi = load i32, ptr %i.ec, align 4, !tbaa !43
  %i.hj = add nsw i32 %i.hi, %.092.lcssa
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [32 x i8], ptr %14, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load i32, ptr %i.hm, align 16, !tbaa !50
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr [4 x i8], ptr %15, i64 %indvars.iv163
  %i.hq = getelementptr [4 x i8], ptr %i.hp, i64 %i.ho
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !38
  %i.hs = add nsw i32 %i.hr, %i.hh
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [16 x i8], ptr %13, i64 %i.ht ; 2 uses
  %.sroa.26.48.copyload.i118 = load float, ptr %.sroa.26.48..sroa_idx.i117, align 8
  %i.hv = load float, ptr %i.en, align 4, !tbaa !37 ; 5 uses
  %28 = load <3 x float>, ptr %i.hu, align 16     ; 5 uses
  %.sroa.0.0.copyload.a = load float, ptr %i.hu, align 16
  %i.hw = load <2 x float>, ptr %3, align 16
  %i.hx = load float, ptr %4, align 16, !tbaa !37 ; 6 uses
  %i.hy = load float, ptr %i.em, align 8, !tbaa !37 ; 4 uses
  %i.hz = load float, ptr %i.el, align 4, !tbaa !37 ; 5 uses
  %i.ia = fmul float %i.hz, %i.hz
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.hx, float %i.ia)
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.hy, float %i.hy, float %i.ib)
  %i.id = tail call noundef float @llvm.fmuladd.f32(float %i.hv, float %i.hv, float %i.ic)
  %i.ie = fdiv float 2.000000e+00, %i.id          ; 3 uses
  %i.if = fmul float %i.hx, %i.ie                 ; 2 uses
  %i.ig = fmul float %i.hz, %i.ie                 ; 3 uses
  %i.ih = fmul float %i.hv, %i.if                 ; 2 uses
  %i.ii = fmul float %i.hv, %i.ig                 ; 2 uses
  %i.ij = fmul float %i.hx, %i.if                 ; 2 uses
  %i.ik = fmul float %i.hx, %i.ig                 ; 2 uses
  %i.il = fmul float %i.hy, %i.ie                 ; 4 uses
  %i.im = fmul float %i.hz, %i.ig                 ; 2 uses
  %i.in = fmul float %i.hz, %i.il                 ; 2 uses
  %i.io = fmul float %i.hx, %i.il                 ; 2 uses
  %i.ip = fmul float %i.hy, %i.il                 ; 2 uses
  %i.iq = fmul float %i.hv, %i.il                 ; 2 uses
  %i.ir = fadd float %i.im, %i.ip
  %i.is = fadd float %i.ik, %i.iq
  %i.it = fsub float 1.000000e+00, %i.ir
  %i.iu = fadd float %i.ij, %i.ip
  %i.iv = fsub float 1.000000e+00, %i.iu
  %i.iw = fsub float %i.ik, %i.iq
  %i.ix = fsub float %i.in, %i.ih
  %i.iy = fadd float %i.io, %i.ii
  %i.iz = fsub float %i.io, %i.ii
  %i.ja = fadd float %i.in, %i.ih
  %i.jb = fadd float %i.ij, %i.im
  %i.jc = fsub float 1.000000e+00, %i.jb
  %29 = shufflevector <3 x float> %28, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jd = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.je = insertelement <2 x float> %i.jd, float %i.iv, i64 1
  %i.jf = fmul <2 x float> %29, %i.je
  %i.jg = shufflevector <3 x float> %28, <3 x float> poison, <2 x i32> zeroinitializer
  %i.jh = insertelement <2 x float> poison, float %i.it, i64 0
  %i.ji = insertelement <2 x float> %i.jh, float %i.is, i64 1
  %i.jj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jg, <2 x float> %i.ji, <2 x float> %i.jf)
  %30 = shufflevector <3 x float> %28, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %31 = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.jk = insertelement <2 x float> %31, float %i.ix, i64 1
  %32 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %i.jk, <2 x float> %i.jj)
  %33 = extractelement <3 x float> %28, i64 1
  %i.jl = fmul float %33, %i.ja
  %i.jm = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload.a, float %i.iz, float %i.jl)
  %34 = extractelement <3 x float> %28, i64 2
  %i.jn = tail call noundef float @llvm.fmuladd.f32(float %34, float %i.jc, float %i.jm)
  %i.jo = fadd <2 x float> %i.hw, %32
  %i.jp = fadd float %.sroa.26.48.copyload.i118, %i.jn
  %.sroa.3.12.vec.insert.i.i4.i.i121 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jp, i64 0
  %gep179 = getelementptr [16 x i8], ptr %invariant.gep178, i64 %indvars.iv163 ; 2 uses
  store <2 x float> %i.jo, ptr %gep179, align 16
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
  %9 = alloca %class.b3Vector3, align 16          ; 9 uses
  %i.a = sext i32 %8 to i64                       ; 4 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %1, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !38
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nsw i32 %8, %7                       ; 3 uses
  %i.e = sext i32 %i.d to i64                     ; 4 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %5, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %6, i64 %i.e ; 3 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %2, i64 %i.a ; 3 uses
  %i.i = load i32, ptr %i.h, align 16, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 3 uses
  %i.m = icmp sgt i32 %i.i, -1
  br i1 %i.m, label %bb.c, label %.loopexit115.thread

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !37   ; 3 uses
  %i.o = icmp sgt i32 %i.k, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds [16 x i8], ptr %4, i64 %i.a ; 3 uses
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.q = zext nneg i32 %i.k to i64                ; 2 uses
  %invariant.gep = getelementptr [16 x i8], ptr %3, i64 %i.e ; 2 uses
  %.not149 = icmp eq i32 %i.k, 1
  br i1 %.not149, label %._crit_edge.loopexit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.r = add nsw i64 %i.q, -2
  br label %bb.d

._crit_edge.loopexit.peel.begin:                  ; preds = %.lr.ph, %bb.d
  %i.s = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.t = phi ptr [ %i.f, %.lr.ph ], [ %.078118, %bb.d ] ; 2 uses
  %i.u = phi ptr [ %i.g, %.lr.ph ], [ %.074119, %bb.d ] ; 2 uses
  %i.v = phi i32 [ %i.n, %.lr.ph ], [ %i.cp, %bb.d ]
  %gep.peel = getelementptr [16 x i8], ptr %invariant.gep, i64 %i.s ; 2 uses
  %.sroa.0111.0.copyload.peel = load float, ptr %gep.peel, align 16 ; 2 uses
  %.sroa.5112.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %gep.peel, i64 4
  %indvars.iv.next.peel = add nuw nsw i64 %i.s, 1 ; 2 uses
  %i.w = icmp eq i64 %indvars.iv.next.peel, %i.q
  %i.x = trunc nuw nsw i64 %indvars.iv.next.peel to i32
  %iv.rem.peel = select i1 %i.w, i32 0, i32 %i.x
  %i.y = add nsw i32 %iv.rem.peel, %i.d
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [16 x i8], ptr %3, i64 %i.z ; 2 uses
  %.sroa.0107.0.copyload.peel = load float, ptr %i.aa, align 16
  %.sroa.4108.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.sroa.0101.0.copyload.peel = load float, ptr %i.p, align 16 ; 2 uses
  %i.ab = fneg float %.sroa.0101.0.copyload.peel
  %i.ac = load <2 x float>, ptr %.sroa.5112.0..sroa_idx.peel, align 4 ; 3 uses
  %i.ad = load <2 x float>, ptr %.sroa.4108.0..sroa_idx.peel, align 4
  %i.ae = fsub <2 x float> %i.ac, %i.ad           ; 3 uses
  %i.af = fsub float %.sroa.0111.0.copyload.peel, %.sroa.0107.0.copyload.peel ; 2 uses
  %i.ag = load <2 x float>, ptr %.sroa.4102.0..sroa_idx, align 4 ; 3 uses
  %i.ah = fneg <2 x float> %i.ag
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aj = insertelement <2 x float> %i.ai, float %i.af, i64 1
  %i.ak = fmul <2 x float> %i.aj, %i.ah
  %i.al = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.am = insertelement <2 x float> %i.al, float %.sroa.0101.0.copyload.peel, i64 1
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.am, <2 x float> %i.ak)
  %i.ao = extractelement <2 x float> %i.ae, i64 0
  %i.ap = fmul float %i.ao, %i.ab
  %i.aq = extractelement <2 x float> %i.ag, i64 0
end_hunk_0
begin_hunk_1_@_Z18clipHullHullSingleiiRK9b3Vector3RK12b3QuaternionS1_S4_iiPK20b3AlignedObjectArrayI15b3RigidBodyDataEPS5_I10b3Contact4ERiRKS5_I22b3ConvexPolyhedronDataESH_RKS5_IS_ESK_RKS5_I9b3GpuFaceERKS5_IiESK_SK_SO_SR_RKS5_I12b3CollidableESV_S1_i:bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !37
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [16 x i8], ptr %27, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fx, ptr noundef nonnull align 16 dereferenceable(16) %i.fw, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fe, ptr noundef nonnull align 16 dereferenceable(16) %30, i64 16, i1 false)
  %exitcond.not.2 = icmp eq i32 %i.dz, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fy = getelementptr inbounds nuw i8, ptr %35, i64 12
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !37
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [16 x i8], ptr %27, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gc, ptr noundef nonnull align 16 dereferenceable(16) %i.gb, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fe, ptr noundef nonnull align 16 dereferenceable(16) %30, i64 16, i1 false)
  br label %._crit_edge

bb.j:                                             ; preds = %bb.b
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1265)
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  %i.gd = load i32, ptr %10, align 4, !tbaa !38
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.34, i32 noundef %i.gd, i32 noundef %24)
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.080 = phi i32 [ %i.ea, %._crit_edge ], [ -1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  call void @__clang_call_terminate(ptr %i.gf) #27
  unreachable

bb.n:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.fn, %bb.f ], [ %i.fm, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit103 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  call void @__clang_call_terminate(ptr %i.gh) #27
  unreachable

_ZN13b3ProfileZoneD2Ev.exit103:                   ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  resume { ptr, i32 } %.pn

_ZN13b3ProfileZoneD2Ev.exit:                      ; preds = %bb.l, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %.080, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL19clipHullAgainstHullRK9b3Vector3RK22b3ConvexPolyhedronDataS4_S1_RK12b3QuaternionS1_S7_PS_S8_iffRK20b3AlignedObjectArrayIS_ERKS9_I9b3GpuFaceERKS9_IiESC_SG_SJ_S8_i(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(96) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(96) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull captures(none) %7, ptr nofree noundef nonnull captures(none) %8, i32 noundef range(i32 64, 1025) %9, float noundef nofpclass(nan inf zero sub pnorm) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %16, ptr nofree noundef nonnull writeonly captures(none) %17, i32 noundef range(i32 64, 1025) %18) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @b3EnterProfileZone(ptr noundef nonnull @.str.72)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132  ; 2 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !44 ; 4 uses
  %i.j = load float, ptr %6, align 16, !tbaa !44  ; 2 uses
  %i.k = load <3 x float>, ptr %6, align 16, !tbaa !44 ; 3 uses
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

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.060.lcssa = phi i32 [ -1, %bb.a ], [ %.161, %bb.b ] ; 2 uses
  %i.aa = add nsw i32 %i.e, %.060.lcssa
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [32 x i8], ptr %i.g, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !51 ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph77, label %._crit_edge78

.lr.ph77:                                         ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.32.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 12
  %wide.trip.count86 = zext nneg i32 %i.ae to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.05872 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.159, %bb.b ] ; 2 uses
  %.06071 = phi i32 [ -1, %.lr.ph ], [ %.161, %bb.b ]
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.an = load <3 x float>, ptr %gep, align 16, !tbaa !37 ; 4 uses
  %i.ao = shufflevector <3 x float> %i.an, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0> ; 2 uses
  %i.ap = load float, ptr %gep, align 16, !tbaa !37
  %i.aq = extractelement <3 x float> %i.an, i64 1
  %i.ar = shufflevector <3 x float> %i.an, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.as = fneg <4 x float> %i.ao
  %i.at = shufflevector <4 x float> %i.ar, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.au = fmul <4 x float> %i.l, %i.at
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> %i.ao, <4 x float> %i.au) ; 4 uses
  %i.aw = extractelement <4 x float> %i.av, i64 2
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.n, float %i.aq, float %i.aw) ; 3 uses
  %i.ay = extractelement <4 x float> %i.av, i64 0
  %i.az = extractelement <3 x float> %i.an, i64 2 ; 2 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.o, float %i.az, float %i.ay) ; 3 uses
  %i.bb = extractelement <4 x float> %i.av, i64 1
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.q, float %i.ap, float %i.bb) ; 3 uses
  %i.bd = extractelement <4 x float> %i.av, i64 3
  %i.be = tail call float @llvm.fmuladd.f32(float %i.n, float %i.az, float %i.bd) ; 3 uses
  %i.bf = fmul float %i.i, %i.ax
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.be, float %i.o, float %i.bf)
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.n, float %i.bg)
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.p, float %i.bh)
  %i.bj = fmul float %i.i, %i.ba
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.be, float %i.q, float %i.bj)
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.o, float %i.bk)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.m, float %i.bl)
  %i.bn = fmul float %i.i, %i.bc
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.be, float %i.n, float %i.bn)
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.q, float %i.bo)
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.j, float %i.bp)
  %i.br = fmul float %i.t, %i.bm
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.r, float %i.br)
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.v, float %i.bs) ; 2 uses
  %i.bu = fcmp ogt float %i.bt, %.05872           ; 2 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  %.161 = select i1 %i.bu, i32 %i.bv, i32 %.06071 ; 2 uses
  %.159 = select i1 %i.bu, float %i.bt, float %.05872
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !307

._crit_edge78:                                    ; preds = %bb.c, %._crit_edge
  %.062.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.ae, %bb.c ]
  %i.bw = icmp sgt i32 %.060.lcssa, -1
  br i1 %i.bw, label %bb.d, label %bb.f

bb.c:                                             ; preds = %.lr.ph77, %bb.c
  %indvars.iv81 = phi i64 [ 0, %.lr.ph77 ], [ %indvars.iv.next82, %bb.c ] ; 3 uses
  %indvars83 = trunc i64 %indvars.iv81 to i32
  %i.bx = load i32, ptr %i.ag, align 16, !tbaa !46
  %i.by = load i32, ptr %i.ah, align 16, !tbaa !50
  %i.bz = add nsw i32 %i.by, %indvars83
  %i.ca = load ptr, ptr %i.ai, align 8, !tbaa !136
  %i.cb = sext i32 %i.bz to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !38
  %i.ce = add nsw i32 %i.cd, %i.bx
  %i.cf = load ptr, ptr %i.aj, align 8, !tbaa !128
  %i.cg = sext i32 %i.ce to i64
  %i.ch = getelementptr inbounds [16 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  %.sroa.32.48.copyload.i = load float, ptr %.sroa.32.48..sroa_idx.i, align 8
  %i.ci = load float, ptr %i.am, align 4, !tbaa !37 ; 5 uses
  %i.cj = load <2 x float>, ptr %5, align 16
  %i.ck = load float, ptr %6, align 16, !tbaa !37 ; 6 uses
  %i.cl = load float, ptr %i.al, align 8, !tbaa !37 ; 4 uses
  %i.cm = load float, ptr %i.ak, align 4, !tbaa !37 ; 5 uses
  %i.cn = fmul float %i.cm, %i.cm
  %i.co = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cn)
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.co)
  %i.cq = tail call noundef float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.cp)
  %i.cr = fdiv float 2.000000e+00, %i.cq          ; 3 uses
  %i.cs = fmul float %i.ck, %i.cr                 ; 2 uses
  %i.ct = fmul float %i.cm, %i.cr                 ; 3 uses
  %i.cu = fmul float %i.ci, %i.cs                 ; 2 uses
  %i.cv = fmul float %i.ci, %i.ct                 ; 2 uses
  %i.cw = fmul float %i.ck, %i.cs                 ; 2 uses
  %i.cx = fmul float %i.ck, %i.ct                 ; 2 uses
  %i.cy = fmul float %i.cl, %i.cr                 ; 4 uses
  %i.cz = fmul float %i.cm, %i.ct                 ; 2 uses
  %i.da = fmul float %i.cm, %i.cy                 ; 2 uses
  %i.db = fmul float %i.ck, %i.cy                 ; 2 uses
  %i.dc = fmul float %i.cl, %i.cy                 ; 2 uses
  %i.dd = fmul float %i.ci, %i.cy                 ; 2 uses
  %i.de = fadd float %i.cz, %i.dc
  %i.df = fadd float %i.cx, %i.dd
  %i.dg = fsub float 1.000000e+00, %i.de
  %i.dh = fadd float %i.cw, %i.dc
  %i.di = fsub float 1.000000e+00, %i.dh
  %i.dj = fsub float %i.cx, %i.dd
  %i.dk = fsub float %i.da, %i.cu
  %i.dl = fadd float %i.db, %i.cv
  %i.dm = fsub float %i.db, %i.cv
  %i.dn = fadd float %i.da, %i.cu
  %i.do = fadd float %i.cw, %i.cz
  %i.dp = fsub float 1.000000e+00, %i.do
  %19 = load <3 x float>, ptr %i.ch, align 16, !tbaa !37 ; 5 uses
  %i.dq = load float, ptr %i.ch, align 16, !tbaa !37
  %20 = shufflevector <3 x float> %19, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dr = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.di, i64 1
  %i.dt = fmul <2 x float> %20, %i.ds
  %i.du = shufflevector <3 x float> %19, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dv = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.df, i64 1
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.dw, <2 x float> %i.dt)
  %21 = shufflevector <3 x float> %19, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %22 = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dy = insertelement <2 x float> %22, float %i.dk, i64 1
  %23 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %i.dy, <2 x float> %i.dx)
  %24 = extractelement <3 x float> %19, i64 1
  %i.dz = fmul float %24, %i.dn
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dm, float %i.dz)
  %25 = extractelement <3 x float> %19, i64 2
  %i.eb = tail call noundef float @llvm.fmuladd.f32(float %25, float %i.dp, float %i.ea)
  %i.ec = fadd <2 x float> %i.cj, %23
  %i.ed = fadd float %.sroa.32.48.copyload.i, %i.eb
  %.sroa.3.12.vec.insert.i.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ed, i64 0
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %indvars.iv81 ; 2 uses
  store <2 x float> %i.ec, ptr %i.ee, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i4.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !37
  %exitcond87.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count86
  br i1 %exitcond87.not, label %._crit_edge78, label %bb.c, !llvm.loop !308

bb.d:                                             ; preds = %._crit_edge78
  %i.ef = invoke noundef i32 @_Z19clipFaceAgainstHullRK9b3Vector3PK22b3ConvexPolyhedronDataS1_RK12b3QuaternionPS_iS8_iffRK20b3AlignedObjectArrayIS_ERKS9_I9b3GpuFaceERKS9_IiES8_i(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull %7, i32 noundef %.062.lcssa, ptr noundef nonnull %8, i32 poison, float noundef %10, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(25) %11, ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull %17, i32 noundef %18)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit67 unwind label %bb.h

bb.f:                                             ; preds = %bb.d, %._crit_edge78
  %.063 = phi i32 [ 0, %._crit_edge78 ], [ %i.ef, %bb.d ]
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  tail call void @__clang_call_terminate(ptr %i.ei) #27
  unreachable

_ZN13b3ProfileZoneD2Ev.exit:                      ; preds = %bb.f
  ret i32 %.063

bb.h:                                             ; preds = %bb.e
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  tail call void @__clang_call_terminate(ptr %i.ek) #27
  unreachable

_ZN13b3ProfileZoneD2Ev.exit67:                    ; preds = %bb.e
  resume { ptr, i32 } %i.eg
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 16 dereferenceable(112) ptr @_ZN20b3AlignedObjectArrayI10b3Contact4E6expandERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 16 dereferenceable(112) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !153  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !154
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20b3AlignedObjectArrayI10b3Contact4E7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i, i32 1, i32 %i.f       ; 6 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20b3AlignedObjectArrayI10b3Contact4E7reserveEi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %.split7.i, label %_ZN20b3AlignedObjectArrayI10b3Contact4E8allocateEi.exit.i

_ZN20b3AlignedObjectArrayI10b3Contact4E8allocateEi.exit.i: ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = mul nsw i64 %i.i, 112
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i, label %.split.i

.split.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI10b3Contact4E8allocateEi.exit.i
  %i.m = load i32, ptr %i.a, align 4, !tbaa !153  ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i

.lr.ph.i.i:                                       ; preds = %.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [112 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !148
  %i.s = getelementptr inbounds nuw [112 x i8], ptr %i.r, i64 %indvars.iv.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.q, ptr noundef nonnull align 16 dereferenceable(112) %i.s, i64 112, i1 false)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !148
  %i.v = getelementptr inbounds nuw [112 x i8], ptr %i.u, i64 %indvars.iv.next.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.t, ptr noundef nonnull align 16 dereferenceable(112) %i.v, i64 112, i1 false)
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !11

.split7.i:                                        ; preds = %_ZN20b3AlignedObjectArrayI10b3Contact4E8allocateEi.exit.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.78, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.79)
  store i32 0, ptr %i.a, align 4, !tbaa !153
  br label %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i

_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.w = getelementptr inbounds nuw [112 x i8], ptr %i.k, i64 %indvars.iv.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !148
  %i.y = getelementptr inbounds nuw [112 x i8], ptr %i.x, i64 %indvars.iv.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.w, ptr noundef nonnull align 16 dereferenceable(112) %i.y, i64 112, i1 false)
  br label %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i

_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.split7.i, %.split.i
  %.0.i12.i = phi ptr [ null, %.split7.i ], [ %i.k, %.split.i ], [ %i.k, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.loopexit.unr-lcssa ], [ %i.k, %.epil.preheader ]
  %.0.i = phi i32 [ 0, %.split7.i ], [ %i.g, %.split.i ], [ %i.g, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.loopexit.unr-lcssa ], [ %i.g, %.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !148 ; 2 uses
  %.not.i10.i = icmp eq ptr %i.aa, null
  br i1 %.not.i10.i, label %_ZN20b3AlignedObjectArrayI10b3Contact4E10deallocateEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !155, !range !91, !noundef !92
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20b3AlignedObjectArrayI10b3Contact4E10deallocateEv.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20b3AlignedObjectArrayI10b3Contact4E10deallocateEv.exit.i

_ZN20b3AlignedObjectArrayI10b3Contact4E10deallocateEv.exit.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !155
  store ptr %.0.i12.i, ptr %i.z, align 8, !tbaa !148
  store i32 %.0.i, ptr %i.c, align 8, !tbaa !154
  %.pre = load i32, ptr %i.a, align 4, !tbaa !153
  br label %_ZN20b3AlignedObjectArrayI10b3Contact4E7reserveEi.exit

_ZN20b3AlignedObjectArrayI10b3Contact4E7reserveEi.exit: ; preds = %_ZN20b3AlignedObjectArrayI10b3Contact4E10deallocateEv.exit.i, %bb.b, %bb.a
  %i.af = phi i32 [ %.pre, %_ZN20b3AlignedObjectArrayI10b3Contact4E10deallocateEv.exit.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !153
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !148
  %i.aj = sext i32 %i.b to i64                    ; 2 uses
  %i.ak = getelementptr inbounds [112 x i8], ptr %i.ai, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ak, ptr noundef nonnull align 16 dereferenceable(112) %1, i64 112, i1 false)
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !148
  %i.am = getelementptr inbounds [112 x i8], ptr %i.al, i64 %i.aj
  ret ptr %i.am
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z25computeContactPlaneConvexiiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataPK9b3Vector3PKiPK9b3GpuFaceP10b3Contact4Rii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readnone captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %12, i32 noundef %13) local_unnamed_addr #6 {
bb.a:
  %14 = alloca %class.b3Vector3, align 16         ; 5 uses
  %15 = alloca [64 x %class.b3Vector3], align 16  ; 7 uses
  %16 = alloca %struct.b3Int4, align 16           ; 7 uses
  %i.a = sext i32 %4 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr %6, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [96 x i8], ptr %7, i64 %i.e ; 2 uses
  %i.g = sext i32 %2 to i64
  %i.h = getelementptr inbounds [80 x i8], ptr %5, i64 %i.g ; 7 uses
  %.sroa.5328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5328.0.copyload = load float, ptr %.sroa.5328.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.5324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.6325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.j = sext i32 %1 to i64
  %i.k = getelementptr inbounds [80 x i8], ptr %5, i64 %i.j ; 6 uses
  %.sroa.5320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5320.0.copyload = load float, ptr %.sroa.5320.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.9316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %.sroa.9316.0.copyload = load float, ptr %.sroa.9316.0..sroa_idx, align 4 ; 4 uses
  %i.m = sext i32 %3 to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %6, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !37
  %i.q = sext i32 %i.p to i64
end_hunk_1
begin_hunk_2_@_Z25computeContactPlaneConvexiiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataPK9b3Vector3PKiPK9b3GpuFaceP10b3Contact4Rii:bb.a
  %foldExtExtBinop349 = fmul <4 x float> %i.ax, %foldExtExtBinop
  %i.bw = extractelement <4 x float> %foldExtExtBinop349, i64 0 ; 2 uses
  %i.bx = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %i.by = insertelement <4 x float> %i.bx, float 1.000000e+00, i64 2
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> %i.ax, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.ca = fmul <4 x float> %i.bz, %i.bt           ; 7 uses
  %i.cb = extractelement <4 x float> %i.ca, i64 0 ; 2 uses
  %foldExtExtBinop351 = fmul <4 x float> %i.ax, %i.ca
  %i.cc = extractelement <4 x float> %foldExtExtBinop351, i64 0 ; 2 uses
  %i.cd = shufflevector <2 x float> %i.s, <2 x float> %i.t, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.ce = insertelement <4 x float> %i.cd, float 1.000000e+00, i64 2
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> %i.ax, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.cg = fmul <4 x float> %i.cf, %i.ca           ; 5 uses
  %i.ch = extractelement <4 x float> %i.ca, i64 3
  %i.ci = shufflevector <4 x float> %i.ca, <4 x float> %i.bt, <2 x i32> <i32 3, i32 5>
  %i.cj = fmul <2 x float> %i.x, %i.ci            ; 3 uses
  %shift = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop353 = fmul <2 x float> %i.s, %shift ; 2 uses
  %i.ck = shufflevector <2 x float> %foldExtExtBinop353, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cl = extractelement <2 x float> %foldExtExtBinop353, i64 0
  %i.cm = shufflevector <4 x float> %i.bq, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.cn = shufflevector <4 x float> %foldExtExtBinop, <4 x float> %i.ca, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.co = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cp = shufflevector <4 x float> %i.cn, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.cq = fmul <4 x float> %i.cm, %i.cp           ; 3 uses
  %i.cr = fadd <4 x float> %i.cm, %i.cp
  %i.cs = shufflevector <4 x float> %i.cq, <4 x float> %i.cr, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 3 uses
  %foldExtExtBinop355 = fsub <4 x float> %i.cg, %i.cs ; 4 uses
  %i.ct = extractelement <4 x float> %i.ca, i64 1 ; 2 uses
  %i.cu = fmul float %.sroa.9316.0.copyload, %i.ct ; 2 uses
  %i.cv = fmul float %i.aj, %i.ct                 ; 2 uses
  %i.cw = extractelement <2 x float> %i.cj, i64 0
  %i.cx = fadd float %i.cv, %i.cw
  %i.cy = fadd <4 x float> %i.cg, %i.cs           ; 3 uses
  %i.cz = fsub <4 x float> %i.cg, %i.cs           ; 4 uses
  %i.da = shufflevector <4 x float> %i.cy, <4 x float> %i.cz, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 3 uses
  %i.db = fadd float %i.cl, %i.cv
  %shift357 = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop358 = fmul <4 x float> %foldExtExtBinop355, %shift357
  %i.dc = extractelement <4 x float> %foldExtExtBinop358, i64 0
  %shift360 = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop361 = fmul <4 x float> %foldExtExtBinop355, %shift360
  %i.dd = extractelement <4 x float> %foldExtExtBinop361, i64 0
  %i.de = fneg float %.sroa.5320.0.copyload       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.df = fneg float %i.ai                        ; 3 uses
  %i.dg = fneg float %i.ak                        ; 2 uses
  %i.dh = fneg float %i.an                        ; 2 uses
  %i.di = fmul float %i.aj, %i.df
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.al, float %i.ak, float %i.di)
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.am, float %i.an, float %i.dj) ; 2 uses
  %i.dl = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.af, <2 x float> %i.ap)
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.aq, <2 x float> %i.dn)
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.t, <2 x float> %i.do)
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.am, float %i.as)
  %.sroa.5324.0.copyload = load float, ptr %.sroa.5324.0..sroa_idx, align 8
  %.sroa.4323.0.copyload = load float, ptr %.sroa.4323.0..sroa_idx, align 4 ; 2 uses
  %i.dr = fmul float %.sroa.5324.0.copyload, %i.cb ; 2 uses
  %i.ds = fmul float %.sroa.4323.0.copyload, %i.bu ; 3 uses
  %i.dt = fmul float %.sroa.6325.0.copyload, %i.ds ; 2 uses
  %i.du = fmul float %.sroa.4323.0.copyload, %i.ds ; 2 uses
  %i.dv = fmul float %.sroa.6325.0.copyload, %i.cb ; 2 uses
  %i.dw = fadd float %i.du, %i.dr
  %i.dx = fadd float %i.bw, %i.dr
  %i.dy = fmul float %i.bv, %i.ds                 ; 2 uses
  %i.dz = fsub float 1.000000e+00, %i.dx          ; 3 uses
  %i.ea = fadd float %i.dy, %i.dv                 ; 3 uses
  %i.eb = fsub float %i.dy, %i.dv                 ; 3 uses
  %i.ec = fsub float 1.000000e+00, %i.dw          ; 2 uses
  %i.ed = fadd float %i.cc, %i.dt                 ; 4 uses
  %i.ee = fsub float %i.cc, %i.dt                 ; 2 uses
  %i.ef = fadd float %i.bw, %i.du
  %i.eg = fmul float %i.av, %i.ch                 ; 2 uses
  %i.eh = shufflevector <4 x float> %i.cg, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.ei = insertelement <2 x float> %i.eh, float %i.eg, i64 0
  %i.ej = shufflevector <4 x float> %i.cq, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.ek = insertelement <2 x float> %i.ej, float %i.cu, i64 0
  %i.el = fadd <2 x float> %i.ei, %i.ek           ; 5 uses
  %i.em = fsub float %i.eg, %i.cu                 ; 4 uses
  %i.en = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.dz, i64 1 ; 2 uses
  %i.ep = shufflevector <4 x float> %i.cy, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eq = fmul <2 x float> %i.eo, %i.ep
  %i.er = insertelement <2 x float> poison, float %i.ec, i64 0 ; 2 uses
  %i.es = insertelement <2 x float> %i.er, float %i.eb, i64 1 ; 2 uses
  %i.et = insertelement <2 x float> poison, float %i.em, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = shufflevector <4 x float> %i.cy, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ew = insertelement <2 x float> %i.ev, float %i.ee, i64 0 ; 3 uses
  %i.ex = shufflevector <4 x float> %i.cz, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ey = fmul <2 x float> %i.eo, %i.ex
  %i.ez = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.at, float %i.au, float %i.dq)
  %i.fb = insertelement <4 x float> poison, float %i.fa, i64 0
  %i.fc = insertelement <4 x float> %i.fb, float %i.dz, i64 1
  %i.fd = insertelement <4 x float> %i.fc, float %i.ea, i64 2
  %i.fe = shufflevector <4 x float> %i.fd, <4 x float> %foldExtExtBinop355, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ff = shufflevector <4 x float> %i.da, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 3, i32 3, i32 1>
  %i.fg = fmul <4 x float> %i.fe, %i.ff
  %i.fh = shufflevector <2 x float> %i.ah, <2 x float> %i.el, <4 x i32> <i32 0, i32 2, i32 2, i32 poison>
  %i.fi = insertelement <4 x float> %i.bc, float %i.eb, i64 1
  %i.fj = insertelement <4 x float> %i.fi, float %i.ec, i64 2
  %i.fk = insertelement <4 x float> %i.fj, float %i.ed, i64 3
  %i.fl = extractelement <2 x float> %i.el, i64 1
  %i.fm = load <2 x float>, ptr %i.k, align 16
  %i.fn = fneg <2 x float> %i.fm                  ; 2 uses
  %i.fo = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ef, i64 0
  %i.fp = shufflevector <2 x float> <float 1.000000e+00, float poison>, <2 x float> %i.fn, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.fq = fsub <4 x float> %i.fp, %i.fo           ; 2 uses
  %i.fr = extractelement <2 x float> %i.el, i64 0
  %i.fs = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.ft = shufflevector <4 x float> %i.cg, <4 x float> %i.fs, <4 x i32> <i32 poison, i32 poison, i32 1, i32 4>
  %i.fu = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float poison>, <4 x float> %i.ft, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fv = shufflevector <4 x float> %i.cq, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 poison, i32 poison, i32 1, i32 7>
  %i.fw = insertelement <4 x float> %i.fv, float %i.db, i64 0
  %i.fx = insertelement <4 x float> %i.fw, float %i.cx, i64 1
  %i.fy = fsub <4 x float> %i.fu, %i.fx           ; 8 uses
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fz, <2 x float> %i.es, <2 x float> %i.ey)
  %i.gb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.ew, <2 x float> %i.ga)
  %i.gc = shufflevector <4 x float> %i.fy, <4 x float> poison, <2 x i32> zeroinitializer
  %i.gd = shufflevector <4 x float> %i.fy, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ge = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.es, <2 x float> %i.eq)
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.ew, <2 x float> %i.ge)
  %i.gg = shufflevector <4 x float> %i.fh, <4 x float> %i.fy, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> %i.fk, <4 x float> %i.fg) ; 3 uses
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.gj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.ew, <2 x float> %i.gi)
  %i.gk = extractelement <4 x float> %i.gh, i64 3
  %i.gl = extractelement <4 x float> %i.fq, i64 0 ; 3 uses
  %i.gm = tail call noundef float @llvm.fmuladd.f32(float %i.em, float %i.gl, float %i.gk)
  %i.gn = extractelement <4 x float> %i.fy, i64 2
  %i.go = tail call float @llvm.fmuladd.f32(float %i.gn, float %i.ed, float %i.dc)
  %i.gp = tail call noundef float @llvm.fmuladd.f32(float %i.fl, float %i.gl, float %i.go)
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.ed, float %i.dd)
  %i.gr = insertelement <4 x float> %i.da, float %i.gq, i64 0
  %i.gs = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gt = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x float> %i.gs, <4 x i32> <i32 0, i32 5, i32 5, i32 5>
  %i.gu = fmul <4 x float> %i.gr, %i.gt
  %i.gv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> %i.fq, <4 x float> %i.gu) ; 3 uses
  %i.gw = extractelement <4 x float> %i.gv, i64 1
  %i.gx = tail call noundef float @llvm.fmuladd.f32(float %i.em, float %i.de, float %i.gw)
  %i.gy = shufflevector <4 x float> %i.fs, <4 x float> %i.fy, <2 x i32> <i32 1, i32 4> ; 2 uses
  %i.gz = insertelement <2 x float> poison, float %i.de, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = shufflevector <4 x float> %i.gv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.hc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.ha, <2 x float> %i.hb)
  %i.hd = insertelement <2 x float> poison, float %i.df, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = fmul <2 x float> %i.gb, %i.he
  %i.hg = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.hh, <2 x float> %i.hf)
  %i.hj = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.hk, <2 x float> %i.hi) ; 3 uses
  %i.hm = fmul float %i.gp, %i.df
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.gm, float %i.dg, float %i.hm)
  %i.ho = extractelement <4 x float> %i.gv, i64 0
  %i.hp = tail call noundef float @llvm.fmuladd.f32(float %i.ho, float %i.dh, float %i.hn) ; 2 uses
  %.sroa.3.12.vec.insert.i.i106 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hp, i64 0
  store <2 x float> %i.hl, ptr %14, align 16
  %i.hq = getelementptr inbounds nuw i8, ptr %14, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i106, ptr %i.hq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %16, align 16, !tbaa !37
  %i.hr = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !45 ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.hu = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.hv = load i32, ptr %i.hu, align 16, !tbaa !46
  %i.hw = sext i32 %i.hv to i64
  %wide.trip.count = zext nneg i32 %i.hs to i64
  %invariant.gep = getelementptr [16 x i8], ptr %8, i64 %i.hw
  %i.hx = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.hy = shufflevector <4 x float> %foldExtExtBinop355, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.hz = shufflevector <2 x float> %i.hx, <2 x float> %i.hy, <2 x i32> <i32 0, i32 2>
  %i.ia = insertelement <2 x float> %i.er, float %i.ea, i64 1
  %i.ib = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ic = insertelement <2 x float> %i.ib, float %i.dz, i64 1
  %i.id = extractelement <2 x float> %i.hl, i64 0
  %i.ie = extractelement <2 x float> %i.hl, i64 1
  %i.if = insertelement <4 x float> %i.fy, float %i.ee, i64 0
  %i.ig = shufflevector <4 x float> %i.if, <4 x float> %i.fs, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e
  %i.ih = icmp sgt i32 %.3, 4
  br i1 %i.ih, label %bb.f, label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.071331 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.e ] ; 3 uses
  %.072330 = phi float [ -1.000000e+30, %.lr.ph ], [ %.173, %bb.e ] ; 2 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %17 = load <3 x float>, ptr %gep, align 16      ; 6 uses
  %.sroa.0139.0.copyload = load float, ptr %gep, align 16 ; 2 uses
  %18 = extractelement <3 x float> %17, i64 1
  %i.ii = fmul float %18, %i.ie
  %19 = tail call float @llvm.fmuladd.f32(float %.sroa.0139.0.copyload, float %i.id, float %i.ii)
  %20 = extractelement <3 x float> %17, i64 2     ; 2 uses
  %i.ij = tail call noundef float @llvm.fmuladd.f32(float %20, float %i.hp, float %19) ; 2 uses
  %i.ik = fcmp ogt float %i.ij, %.072330          ; 2 uses
  %i.il = icmp eq i32 %.071331, 64
  %.173 = select i1 %i.ik, float %i.ij, float %.072330
  %i.im = select i1 %i.ik, i1 %i.il, i1 false
  %.1 = select i1 %i.im, i32 63, i32 %.071331     ; 4 uses
  %i.in = icmp slt i32 %.1, 64
  br i1 %i.in, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.io = shufflevector <3 x float> %17, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ip = fmul <2 x float> %i.ic, %i.io
  %i.iq = shufflevector <3 x float> %17, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ir = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iq, <2 x float> %i.ia, <2 x float> %i.ip)
  %21 = shufflevector <3 x float> %17, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %22 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %i.hz, <2 x float> %i.ir)
  %23 = fadd <2 x float> %i.aw, %22               ; 3 uses
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %25 = shufflevector <3 x float> %17, <3 x float> %24, <4 x i32> <i32 1, i32 4, i32 4, i32 4>
  %i.is = fmul <4 x float> %i.da, %25
  %26 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %27 = insertelement <2 x float> %26, float %.sroa.0139.0.copyload, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.it = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %28, <4 x float> %i.ig, <4 x float> %i.is) ; 3 uses
  %i.iu = extractelement <4 x float> %i.it, i64 0
  %i.iv = tail call noundef float @llvm.fmuladd.f32(float %20, float %i.gl, float %i.iu)
  %i.iw = fadd float %.sroa.5328.0.copyload, %i.iv ; 3 uses
  %i.ix = extractelement <4 x float> %i.it, i64 1
  %i.iy = tail call noundef float @llvm.fmuladd.f32(float %i.iw, float %i.em, float %i.ix)
  %i.iz = fadd float %i.gx, %i.iy
  %i.ja = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = shufflevector <4 x float> %i.it, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.jd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jb, <2 x float> %i.gy, <2 x float> %i.jc)
  %i.je = fadd <2 x float> %i.hc, %i.jd           ; 2 uses
  %i.jf = extractelement <2 x float> %i.je, i64 0
  %i.jg = fmul float %i.ai, %i.jf
  %i.jh = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.iz, float %i.jg)
  %i.ji = extractelement <2 x float> %i.je, i64 1
  %i.jj = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.ji, float %i.jh)
  %i.jk = fsub float %i.jj, %.sroa.6.0.copyload   ; 2 uses
  %i.jl = fcmp olt float %i.jk, 0.000000e+00
  br i1 %i.jl, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.3.12.vec.insert.i.i4.i.i111 = insertelement <2 x float> poison, float %i.iw, i64 0
  %.sroa.6138.12.vec.insert = insertelement <2 x float> %.sroa.3.12.vec.insert.i.i4.i.i111, float %i.jk, i64 1
  %i.jm = sext i32 %.1 to i64
  %i.jn = getelementptr inbounds [16 x i8], ptr %15, i64 %i.jm ; 2 uses
  store <2 x float> %23, ptr %i.jn, align 16
  %.sroa.6138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store <2 x float> %.sroa.6138.12.vec.insert, ptr %.sroa.6138.0..sroa_idx, align 8, !tbaa !37
  %i.jo = add nsw i32 %.1, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.3 = phi i32 [ %.071331, %bb.b ], [ %i.jo, %bb.d ], [ %.1, %bb.c ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !309

bb.f:                                             ; preds = %._crit_edge
  %i.jp = call noundef i32 @_Z31extractManifoldSequentialGlobalPK9b3Vector3iRS0_P6b3Int4(ptr noundef nonnull %15, i32 noundef %.3, ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull %16)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.069 = phi i32 [ %i.jp, %bb.f ], [ %.3, %._crit_edge ] ; 5 uses
  %i.jq = icmp sgt i32 %.069, 0
  br i1 %i.jq, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.jr = load i32, ptr %12, align 4, !tbaa !38   ; 3 uses
  %i.js = icmp slt i32 %i.jr, %13
  br i1 %i.js, label %.lr.ph335.preheader, label %.thread

.lr.ph335.preheader:                              ; preds = %bb.h
  %i.jt = add nsw i32 %i.jr, 1
  store i32 %i.jt, ptr %12, align 4, !tbaa !38
  %i.ju = sext i32 %i.jr to i64
  %i.jv = getelementptr inbounds [112 x i8], ptr %11, i64 %i.ju ; 11 uses
  %i.jw = fneg <2 x float> %i.dp
  %i.jx = extractelement <4 x float> %i.gh, i64 0
  %i.jy = fneg float %i.jx
  %.sroa.3.12.vec.insert.i.i132 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jy, i64 0
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 64
  store <2 x float> %i.jw, ptr %i.jz, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i.i132, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !37
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 82
  store i16 -19662, ptr %i.ka, align 2, !tbaa !55
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 80
  store i16 0, ptr %i.kb, align 16, !tbaa !54
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 84
  store i32 %0, ptr %i.kc, align 4, !tbaa !56
  %i.kd = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !34
  %i.kf = fcmp oeq float %i.ke, 0.000000e+00
  %i.kg = sub nsw i32 0, %1
  %i.kh = select i1 %i.kf, i32 %i.kg, i32 %1
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jv, i64 88
  store i32 %i.kh, ptr %i.ki, align 8, !tbaa !57
  %i.kj = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !34
  %i.kl = fcmp oeq float %i.kk, 0.000000e+00
  %i.km = sub nsw i32 0, %2
  %i.kn = select i1 %i.kl, i32 %i.km, i32 %2
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jv, i64 92
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !58
  %wide.trip.count341 = zext nneg i32 %.069 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count341, 1
  %i.kp = icmp eq i32 %.069, 1
  br i1 %i.kp, label %.lr.ph335.epil.preheader, label %.lr.ph335.preheader.new

.lr.ph335.preheader.new:                          ; preds = %.lr.ph335.preheader
  %unroll_iter = and i64 %wide.trip.count341, 2147483646
  br label %.lr.ph335

._crit_edge336.unr-lcssa:                         ; preds = %.lr.ph335
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge336, label %.lr.ph335.epil.preheader

.lr.ph335.epil.preheader:                         ; preds = %._crit_edge336.unr-lcssa, %.lr.ph335.preheader
  %indvars.iv338.epil.init = phi i64 [ 0, %.lr.ph335.preheader ], [ %indvars.iv.next339.1, %._crit_edge336.unr-lcssa ] ; 2 uses
  %lcmp.mod363 = trunc i32 %.069 to i1
  tail call void @llvm.assume(i1 %lcmp.mod363)
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %indvars.iv338.epil.init
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !37
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds [16 x i8], ptr %15, i64 %i.ks
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %indvars.iv338.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ku, ptr noundef nonnull align 16 dereferenceable(16) %i.kt, i64 16, i1 false)
  br label %._crit_edge336

._crit_edge336:                                   ; preds = %._crit_edge336.unr-lcssa, %.lr.ph335.epil.preheader
  %i.kv = uitofp nneg i32 %.069 to float
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jv, i64 76
  store float %i.kv, ptr %i.kw, align 4, !tbaa !37
  br label %.thread

.lr.ph335:                                        ; preds = %.lr.ph335, %.lr.ph335.preheader.new
  %indvars.iv338 = phi i64 [ 0, %.lr.ph335.preheader.new ], [ %indvars.iv.next339.1, %.lr.ph335 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph335.preheader.new ], [ %niter.next.1, %.lr.ph335 ]
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %indvars.iv338
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !37
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [16 x i8], ptr %15, i64 %i.kz
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %indvars.iv338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.lb, ptr noundef nonnull align 16 dereferenceable(16) %i.la, i64 16, i1 false)
  %indvars.iv.next339 = or disjoint i64 %indvars.iv338, 1 ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %indvars.iv.next339
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !37
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [16 x i8], ptr %15, i64 %i.le
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %indvars.iv.next339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.lg, ptr noundef nonnull align 16 dereferenceable(16) %i.lf, i64 16, i1 false)
  %indvars.iv.next339.1 = add nuw nsw i64 %indvars.iv338, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge336.unr-lcssa, label %.lr.ph335, !llvm.loop !310

.thread:                                          ; preds = %bb.a, %bb.h, %._crit_edge336, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_Z16traverseTreeTreev() local_unnamed_addr #19 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z23findCompoundPairsKerneliiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3Vector3ERKS8_I6b3AabbESG_PK15b3GpuChildShapeP6b3Int4PiiRS8_I18b3QuantizedBvhNodeERS8_I16b3BvhSubtreeInfoERS8_I9b3BvhInfoE(i32 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree readonly captures(none) %7, ptr nofree nonnull readnone align 8 captures(none) %8, ptr nofree nonnull readnone align 8 captures(none) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef writeonly captures(none) %12, ptr nofree noundef captures(none) %13, i32 noundef %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %16, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %17) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = alloca [4 x float], align 16             ; 8 uses
  %i.c = alloca [4 x float], align 16             ; 8 uses
  %18 = alloca %class.b3Quaternion, align 16      ; 5 uses
  %19 = alloca %class.b3Quaternion, align 16      ; 5 uses
  %20 = alloca %class.b3Quaternion, align 16      ; 5 uses
  %21 = alloca %class.b3Transform, align 16       ; 22 uses
  %22 = alloca %class.b3Transform, align 16       ; 18 uses
  %23 = alloca %class.b3AlignedObjectArray.35, align 8 ; 8 uses
  %24 = alloca %class.b3Transform, align 16       ; 17 uses
  %25 = alloca %class.b3Transform, align 16       ; 17 uses
  store i32 0, ptr @numAabbChecks, align 4, !tbaa !38
  store i32 0, ptr @maxNumAabbChecks, align 4, !tbaa !38
  %i.d = sext i32 %3 to i64
  %i.e = getelementptr inbounds [16 x i8], ptr %6, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = sext i32 %4 to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %6, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.j = sext i32 %1 to i64
  %i.k = getelementptr inbounds [80 x i8], ptr %5, i64 %i.j ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %i.m = load float, ptr %i.l, align 4, !tbaa !34
  %i.n = fcmp oeq float %i.m, 0.000000e+00
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = sext i32 %2 to i64
  %i.p = getelementptr inbounds [80 x i8], ptr %5, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 68
  %i.r = load float, ptr %i.q, align 4, !tbaa !34
  %i.s = fcmp oeq float %i.r, 0.000000e+00
  br i1 %i.s, label %.loopexit847, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36   ; 2 uses
  %i.v = icmp eq i32 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !36   ; 2 uses
  br i1 %i.v, label %bb.d, label %bb.al

bb.d:                                             ; preds = %bb.c
  %i.y = icmp eq i32 %i.x, 6
  br i1 %i.y, label %bb.e, label %.thread843

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 4
end_hunk_2
begin_hunk_3_@_Z23findCompoundPairsKerneliiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3Vector3ERKS8_I6b3AabbESG_PK15b3GpuChildShapeP6b3Int4PiiRS8_I18b3QuantizedBvhNodeERS8_I16b3BvhSubtreeInfoERS8_I9b3BvhInfoE:bb.a
  %i.ajw = insertelement <2 x float> poison, float %i.ajs, i64 0
  %i.ajx = shufflevector <2 x float> %i.ajw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajx, <2 x float> %i.ait, <2 x float> %i.ajv)
  %i.ajz = insertelement <2 x float> poison, float %i.ajp, i64 0
  %i.aka = shufflevector <2 x float> %i.ajz, <2 x float> %i.ajn, <2 x i32> <i32 0, i32 2>
  %i.akb = insertelement <2 x float> %i.ajl, float %i.ajc, i64 0
  %i.akc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aka, <2 x float> %i.akb, <2 x float> %i.ajy)
  %i.akd = shufflevector <2 x float> %i.ain, <2 x float> %i.aio, <2 x i32> <i32 1, i32 3>
  %i.ake = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajn, <2 x float> %i.akd, <2 x float> %i.akc)
  %i.akf = extractelement <2 x float> %i.ajn, i64 0
  %i.akg = fmul float %.sroa.9760.0.copyload, %i.akf
  %i.akh = call float @llvm.fmuladd.f32(float %i.ajs, float %i.ajc, float %i.akg)
  %i.aki = extractelement <2 x float> %i.ajn, i64 1
  %i.akj = call float @llvm.fmuladd.f32(float %i.aki, float %i.aiw, float %i.akh)
  %i.akk = call float @llvm.fmuladd.f32(float %i.ajp, float %i.aiv, float %i.akj)
  %i.akl = fadd <2 x float> %i.aix, %i.ake
  %i.akm = fadd float %.sroa.5764.0.copyload, %i.akk
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.akm, i64 0
  %i.akn = fmul float %i.aiv, %.sroa.6749.0.copyload
  %i.ako = extractelement <2 x float> %i.aip, i64 0 ; 2 uses
  %i.akp = call float @llvm.fmuladd.f32(float %.sroa.9760.0.copyload, float %i.ako, float %i.akn)
  %i.akq = extractelement <2 x float> %i.aiq, i64 1 ; 2 uses
  %i.akr = call float @llvm.fmuladd.f32(float %i.air, float %i.akq, float %i.akp)
  %i.aks = extractelement <2 x float> %i.aip, i64 1 ; 2 uses
  %i.akt = call float @llvm.fmuladd.f32(float %i.ajc, float %i.aks, float %i.akr) ; 6 uses
  %i.aku = insertelement <2 x float> poison, float %.sroa.6749.0.copyload, i64 0
  %i.akv = shufflevector <2 x float> %i.aku, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akw = fmul <2 x float> %i.aio, %i.akv
  %i.akx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajh, <2 x float> %i.aiq, <2 x float> %i.akw)
  %i.aky = shufflevector <2 x float> %i.aio, <2 x float> %i.ain, <2 x i32> <i32 1, i32 2>
  %i.akz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aky, <2 x float> %i.aip, <2 x float> %i.akx)
  %i.ala = shufflevector <2 x float> %i.aiq, <2 x float> %i.aip, <2 x i32> <i32 1, i32 2>
  %i.alb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ait, <2 x float> %i.ala, <2 x float> %i.akz) ; 5 uses
  %i.alc = fneg float %i.ako
  %i.ald = fmul float %i.aiv, %i.alc
  %i.ale = call float @llvm.fmuladd.f32(float %.sroa.9760.0.copyload, float %.sroa.6749.0.copyload, float %i.ald)
  %i.alf = call float @llvm.fmuladd.f32(float %i.aiw, float %i.aks, float %i.ale)
  %i.alg = call float @llvm.fmuladd.f32(float %i.ajc, float %i.akq, float %i.alf) ; 5 uses
  %i.alh = extractelement <2 x float> %i.alb, i64 0 ; 2 uses
  %foldExtExtBinop940 = fmul <2 x float> %i.alb, %i.alb
  %i.ali = extractelement <2 x float> %foldExtExtBinop940, i64 0
  %i.alj = call float @llvm.fmuladd.f32(float %i.akt, float %i.akt, float %i.ali)
  %i.alk = extractelement <2 x float> %i.alb, i64 1 ; 3 uses
  %i.all = call float @llvm.fmuladd.f32(float %i.alk, float %i.alk, float %i.alj)
  %i.alm = call noundef float @llvm.fmuladd.f32(float %i.alg, float %i.alg, float %i.all)
  %i.aln = fdiv float 2.000000e+00, %i.alm        ; 3 uses
  %i.alo = fmul float %i.akt, %i.aln              ; 2 uses
  %i.alp = fmul float %i.alh, %i.aln              ; 3 uses
  %i.alq = fmul float %i.alg, %i.alo              ; 2 uses
  %i.alr = fmul float %i.alg, %i.alp              ; 2 uses
  %i.als = fmul float %i.akt, %i.alo              ; 2 uses
  %i.alt = fmul float %i.akt, %i.alp              ; 2 uses
  %i.alu = insertelement <2 x float> poison, float %i.alp, i64 0
  %i.alv = insertelement <2 x float> %i.alu, float %i.aln, i64 1
  %i.alw = fmul <2 x float> %i.alb, %i.alv        ; 4 uses
  %i.alx = extractelement <2 x float> %i.alw, i64 1 ; 3 uses
  %i.aly = fmul float %i.akt, %i.alx              ; 2 uses
  %i.alz = fmul float %i.alh, %i.alx              ; 2 uses
  %i.ama = fmul float %i.alk, %i.alx              ; 2 uses
  %i.amb = insertelement <2 x float> poison, float %i.ama, i64 0
  %i.amc = insertelement <2 x float> %i.amb, float %i.alg, i64 1 ; 2 uses
  %i.amd = fadd <2 x float> %i.amc, %i.alw
  %i.ame = fmul <2 x float> %i.amc, %i.alw        ; 2 uses
  %i.amf = shufflevector <2 x float> %i.amd, <2 x float> %i.ame, <2 x i32> <i32 0, i32 3>
  %i.amg = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.alt, i64 1
  %i.amh = fsub <2 x float> %i.amg, %i.amf
  %i.ami = fadd float %i.aly, %i.alr
  %i.amj = extractelement <2 x float> %i.ame, i64 1
  %i.amk = fadd float %i.alt, %i.amj
  %i.aml = fadd float %i.als, %i.ama
  %i.amm = fsub float 1.000000e+00, %i.aml
  %i.amn = fsub float %i.alz, %i.alq
  %i.amo = fsub float %i.aly, %i.alr
  %i.amp = fadd float %i.alz, %i.alq
  %i.amq = extractelement <2 x float> %i.alw, i64 0
  %i.amr = fadd float %i.als, %i.amq
  %i.ams = fsub float 1.000000e+00, %i.amr
  store <2 x float> %i.akl, ptr %i.ahg, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.6745.0..sroa_idx, align 8, !tbaa !37
  store <2 x float> %i.amh, ptr %24, align 16, !tbaa !37
  store float %i.ami, ptr %i.ahh, align 8, !tbaa !37
  store float 0.000000e+00, ptr %i.ahi, align 4, !tbaa !37
  store float %i.amk, ptr %i.ahj, align 16, !tbaa !37
  store float %i.amm, ptr %i.ahc, align 4, !tbaa !37
  store float %i.amn, ptr %i.ahd, align 8, !tbaa !37
  store float 0.000000e+00, ptr %i.ahk, align 4, !tbaa !37
  store float %i.amo, ptr %i.ahl, align 16, !tbaa !37
  store float %i.amp, ptr %i.ahm, align 4, !tbaa !37
  store float %i.ams, ptr %i.ahe, align 8, !tbaa !37
  store float 0.000000e+00, ptr %i.ahf, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @_ZNK11b3Matrix3x311getRotationER12b3Quaternion(ptr noundef nonnull align 16 dereferenceable(64) %24, ptr noundef nonnull align 16 dereferenceable(16) %19)
  %.fca.0.load.i479 = load <2 x float>, ptr %19, align 16 ; 4 uses
  %.fca.1.load.i482 = load <2 x float>, ptr %.fca.1.gep.i481, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.amt = fsub <3 x float> %i.aim, %i.ail
  %i.amu = fmul <3 x float> %i.amt, splat (float 5.000000e-01)
  %i.amv = fadd <3 x float> %i.amu, zeroinitializer ; 6 uses
  %i.amw = fadd <3 x float> %i.ail, %i.aim
  %i.amx = fmul <3 x float> %i.amw, splat (float 5.000000e-01) ; 6 uses
  %.sroa.0718.0.vec.extract = extractelement <2 x float> %.fca.0.load.i479, i64 0 ; 4 uses
  %.sroa.0718.4.vec.extract = extractelement <2 x float> %.fca.0.load.i479, i64 1 ; 3 uses
  %i.amy = fmul float %.sroa.0718.4.vec.extract, %.sroa.0718.4.vec.extract
  %i.amz = call float @llvm.fmuladd.f32(float %.sroa.0718.0.vec.extract, float %.sroa.0718.0.vec.extract, float %i.amy)
  %.sroa.5719.8.vec.extract = extractelement <2 x float> %.fca.1.load.i482, i64 0 ; 4 uses
  %i.ana = call float @llvm.fmuladd.f32(float %.sroa.5719.8.vec.extract, float %.sroa.5719.8.vec.extract, float %i.amz)
  %.sroa.5719.12.vec.extract = extractelement <2 x float> %.fca.1.load.i482, i64 1 ; 5 uses
  %i.anb = call noundef float @llvm.fmuladd.f32(float %.sroa.5719.12.vec.extract, float %.sroa.5719.12.vec.extract, float %i.ana)
  %i.anc = fdiv float 2.000000e+00, %i.anb        ; 2 uses
  %i.and = fmul float %.sroa.5719.8.vec.extract, %i.anc ; 4 uses
  %i.ane = fmul float %.sroa.5719.12.vec.extract, %i.and ; 2 uses
  %i.anf = fmul float %.sroa.0718.0.vec.extract, %i.and ; 2 uses
  %i.ang = insertelement <2 x float> poison, float %i.anc, i64 0
  %i.anh = shufflevector <2 x float> %i.ang, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ani = fmul <2 x float> %.fca.0.load.i479, %i.anh ; 3 uses
  %i.anj = extractelement <2 x float> %i.ani, i64 0
  %i.ank = fmul float %.sroa.5719.12.vec.extract, %i.anj ; 2 uses
  %i.anl = fmul <2 x float> %.fca.0.load.i479, %i.ani ; 3 uses
  %i.anm = extractelement <2 x float> %i.ani, i64 1 ; 2 uses
  %i.ann = fmul float %.sroa.0718.0.vec.extract, %i.anm ; 2 uses
  %i.ano = fmul float %.sroa.0718.4.vec.extract, %i.and ; 2 uses
  %i.anp = fmul float %.sroa.5719.8.vec.extract, %i.and ; 2 uses
  %i.anq = extractelement <2 x float> %i.anl, i64 1
  %i.anr = fadd float %i.anq, %i.anp
  %i.ans = fadd float %i.ann, %i.ane              ; 2 uses
  %i.ant = extractelement <2 x float> %i.anl, i64 0
  %i.anu = fadd float %i.ant, %i.anp
  %i.anv = fsub float 1.000000e+00, %i.anu        ; 2 uses
  %i.anw = fsub float %i.ano, %i.ank              ; 2 uses
  %i.anx = fmul float %.sroa.5719.12.vec.extract, %i.anm ; 2 uses
  %i.any = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.anl)
  %i.anz = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.anf, i64 1
  %i.aoa = insertelement <2 x float> poison, float %i.anr, i64 0
  %i.aob = insertelement <2 x float> %i.aoa, float %i.anx, i64 1
  %i.aoc = fsub <2 x float> %i.anz, %i.aob        ; 2 uses
  %i.aod = fsub float %i.ann, %i.ane
  %i.aoe = fadd float %i.ano, %i.ank
  %i.aof = fadd float %i.anf, %i.anx
  %i.aog = fsub float 1.000000e+00, %i.any
  %i.aoh = call noundef float @llvm.fabs.f32(float %i.ans)
  %i.aoi = call noundef float @llvm.fabs.f32(float %i.anv)
  %i.aoj = call noundef float @llvm.fabs.f32(float %i.anw)
  %i.aok = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aoc)
  %i.aol = insertelement <2 x float> poison, float %i.aod, i64 0
  %i.aom = insertelement <2 x float> %i.aol, float %i.aoe, i64 1 ; 2 uses
  %i.aon = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aom)
  %i.aoo = insertelement <2 x float> poison, float %i.aof, i64 0
  %i.aop = insertelement <2 x float> %i.aoo, float %i.aog, i64 1 ; 2 uses
  %i.aoq = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aop)
  %.sroa.25.48.copyload.i.i486 = load float, ptr %.sroa.25.48..sroa_idx.i.i485, align 4
  %i.aor = load <3 x float>, ptr %i.ahg, align 16
  %i.aos = shufflevector <3 x float> %i.aor, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.aot = extractelement <3 x float> %i.amx, i64 1
  %i.aou = fmul float %i.aot, %i.anv
  %i.aov = extractelement <3 x float> %i.amx, i64 0
  %i.aow = call float @llvm.fmuladd.f32(float %i.aov, float %i.ans, float %i.aou)
  %i.aox = extractelement <3 x float> %i.amx, i64 2
  %i.aoy = call noundef float @llvm.fmuladd.f32(float %i.aox, float %i.anw, float %i.aow)
  %i.aoz = shufflevector <3 x float> %i.amx, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.apa = fmul <2 x float> %i.aoz, %i.aom
  %i.apb = shufflevector <3 x float> %i.amx, <3 x float> poison, <2 x i32> zeroinitializer
  %i.apc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apb, <2 x float> %i.aoc, <2 x float> %i.apa)
  %i.apd = shufflevector <3 x float> %i.amx, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ape = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apd, <2 x float> %i.aop, <2 x float> %i.apc)
  %i.apf = fadd float %.sroa.25.48.copyload.i.i486, %i.aoy ; 2 uses
  %i.apg = fadd <2 x float> %i.aos, %i.ape        ; 2 uses
  %i.aph = extractelement <3 x float> %i.amv, i64 1
  %i.api = fmul float %i.aph, %i.aoi
  %i.apj = extractelement <3 x float> %i.amv, i64 0
  %i.apk = call float @llvm.fmuladd.f32(float %i.apj, float %i.aoh, float %i.api)
  %i.apl = extractelement <3 x float> %i.amv, i64 2
  %i.apm = call noundef float @llvm.fmuladd.f32(float %i.apl, float %i.aoj, float %i.apk) ; 2 uses
  %i.apn = shufflevector <3 x float> %i.amv, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.apo = fmul <2 x float> %i.apn, %i.aon
  %i.app = shufflevector <3 x float> %i.amv, <3 x float> poison, <2 x i32> zeroinitializer
  %i.apq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.app, <2 x float> %i.aok, <2 x float> %i.apo)
  %i.apr = shufflevector <3 x float> %i.amv, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.aps = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apr, <2 x float> %i.aoq, <2 x float> %i.apq) ; 2 uses
  %i.apt = fsub float %i.apf, %i.apm
  %i.apu = fsub <2 x float> %i.apg, %i.aps
  %i.apv = fadd float %i.apf, %i.apm
  %i.apw = fadd <2 x float> %i.apg, %i.aps
  %i.apx = load i32, ptr %i.w, align 4, !tbaa !36
  %i.apy = icmp eq i32 %i.apx, 6
  br i1 %i.apy, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.apz = load i32, ptr %i.h, align 4, !tbaa !37 ; 2 uses
  %i.aqa = icmp sgt i32 %i.apz, 0
  br i1 %i.aqa, label %.lr.ph851, label %.loopexit

.lr.ph851:                                        ; preds = %bb.an
  %.sroa.3.8.insert.ext.i528 = zext i32 %i.aic to i64
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph851, %bb.ar
  %.0331850 = phi i32 [ 0, %.lr.ph851 ], [ %i.ayy, %bb.ar ] ; 2 uses
  %i.aqb = load i32, ptr %i.i, align 4, !tbaa !37
  %i.aqc = add nsw i32 %i.aqb, %.0331850          ; 2 uses
  %i.aqd = sext i32 %i.aqc to i64
  %i.aqe = getelementptr inbounds [48 x i8], ptr %11, i64 %i.aqd ; 6 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 32
  %i.aqg = load i32, ptr %i.aqf, align 16, !tbaa !37
  %.sroa.9716.0.copyload = load float, ptr %.sroa.9716.0..sroa_idx, align 4 ; 8 uses
  %.sroa.5708.0.copyload = load float, ptr %.sroa.5708.0..sroa_idx, align 8
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqe, i64 16
  %.sroa.4699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqe, i64 20
  %.sroa.6701.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqe, i64 28
  %.sroa.6701.0.copyload = load float, ptr %.sroa.6701.0..sroa_idx, align 4 ; 3 uses
  %i.aqi = load ptr, ptr %i.ahb, align 8, !tbaa !177
  %i.aqj = sext i32 %i.aqg to i64
  %i.aqk = getelementptr inbounds [32 x i8], ptr %i.aqi, i64 %i.aqj ; 4 uses
  %.sroa.4688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqk, i64 4
  %.sroa.6691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqk, i64 16
  %.sroa.7692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqk, i64 20
  %i.aql = insertelement <2 x float> poison, float %.sroa.6701.0.copyload, i64 0
  %i.aqm = shufflevector <2 x float> %i.aql, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqn = insertelement <2 x float> poison, float %.sroa.9716.0.copyload, i64 0
  %i.aqo = shufflevector <2 x float> %i.aqn, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.4688.0.copyload = load float, ptr %.sroa.4688.0..sroa_idx, align 4
  %i.aqp = load <3 x float>, ptr %i.aqk, align 16 ; 3 uses
  %.sroa.7692.0.copyload = load float, ptr %.sroa.7692.0..sroa_idx, align 4
  %i.aqq = load <3 x float>, ptr %.sroa.6691.0..sroa_idx, align 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  %i.aqr = load <2 x float>, ptr %i.ahp, align 16 ; 6 uses
  %i.aqs = extractelement <2 x float> %i.aqr, i64 1 ; 5 uses
  %i.aqt = load <2 x float>, ptr %.sroa.5712.0..sroa_idx, align 4 ; 3 uses
  %i.aqu = load <2 x float>, ptr %i.aqh, align 16 ; 4 uses
  %i.aqv = load <2 x float>, ptr %.sroa.4699.0..sroa_idx, align 4 ; 3 uses
  %i.aqw = fmul float %i.aqs, %i.aqs
  %i.aqx = extractelement <2 x float> %i.aqr, i64 0 ; 6 uses
  %i.aqy = call float @llvm.fmuladd.f32(float %i.aqx, float %i.aqx, float %i.aqw)
  %i.aqz = extractelement <2 x float> %i.aqt, i64 1 ; 5 uses
  %i.ara = call float @llvm.fmuladd.f32(float %i.aqz, float %i.aqz, float %i.aqy)
  %i.arb = call noundef float @llvm.fmuladd.f32(float %.sroa.9716.0.copyload, float %.sroa.9716.0.copyload, float %i.ara)
  %i.arc = fdiv float 2.000000e+00, %i.arb        ; 2 uses
  %i.ard = fmul float %i.aqz, %i.arc              ; 4 uses
  %i.are = fmul float %i.aqz, %i.ard              ; 2 uses
  %i.arf = load <2 x float>, ptr %i.aho, align 16
  %26 = load <3 x float>, ptr %i.aqe, align 16    ; 5 uses
  %.sroa.0702.0.copyload.a = load float, ptr %i.aqe, align 16
  %i.arg = insertelement <2 x float> poison, float %i.arc, i64 0
  %i.arh = shufflevector <2 x float> %i.arg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ari = fmul <2 x float> %i.aqr, %i.arh        ; 3 uses
  %i.arj = extractelement <2 x float> %i.ari, i64 0
  %i.ark = fmul float %.sroa.9716.0.copyload, %i.arj ; 2 uses
  %i.arl = extractelement <2 x float> %i.ari, i64 1 ; 2 uses
  %i.arm = fmul float %.sroa.9716.0.copyload, %i.arl ; 2 uses
  %i.arn = fmul float %i.aqx, %i.arl              ; 2 uses
  %i.aro = fmul <2 x float> %i.aqr, %i.ari        ; 3 uses
  %i.arp = fmul float %i.aqs, %i.ard              ; 2 uses
  %i.arq = fmul float %i.aqx, %i.ard              ; 2 uses
  %i.arr = fmul float %.sroa.9716.0.copyload, %i.ard ; 2 uses
  %i.ars = extractelement <2 x float> %i.aro, i64 1
  %i.art = fadd float %i.ars, %i.are
  %i.aru = fadd float %i.arn, %i.arr
  %i.arv = fsub float 1.000000e+00, %i.art
  %i.arw = extractelement <2 x float> %i.aro, i64 0
  %i.arx = fadd float %i.arw, %i.are
  %i.ary = fsub float 1.000000e+00, %i.arx
  %i.arz = fsub float %i.arn, %i.arr
  %i.asa = fsub float %i.arp, %i.ark
  %i.asb = fadd float %i.arq, %i.arm
  %i.asc = fsub float %i.arq, %i.arm
  %i.asd = fadd float %i.arp, %i.ark
  %i.ase = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aro)
  %i.asf = fsub float 1.000000e+00, %i.ase
  %27 = shufflevector <3 x float> %26, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.asg = insertelement <2 x float> poison, float %i.arz, i64 0
  %i.ash = insertelement <2 x float> %i.asg, float %i.ary, i64 1
  %i.asi = fmul <2 x float> %27, %i.ash
  %i.asj = shufflevector <3 x float> %26, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ask = insertelement <2 x float> poison, float %i.arv, i64 0
  %i.asl = insertelement <2 x float> %i.ask, float %i.aru, i64 1
  %i.asm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asj, <2 x float> %i.asl, <2 x float> %i.asi)
  %28 = shufflevector <3 x float> %26, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %29 = insertelement <2 x float> poison, float %i.asb, i64 0
  %i.asn = insertelement <2 x float> %29, float %i.asa, i64 1
  %30 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> %i.asn, <2 x float> %i.asm)
  %31 = extractelement <3 x float> %26, i64 1
  %i.aso = fmul float %31, %i.asd
  %i.asp = call float @llvm.fmuladd.f32(float %.sroa.0702.0.copyload.a, float %i.asc, float %i.aso)
  %32 = extractelement <3 x float> %26, i64 2
  %i.asq = call noundef float @llvm.fmuladd.f32(float %32, float %i.asf, float %i.asp)
  %i.asr = fadd <2 x float> %i.arf, %30
  %i.ass = fadd float %.sroa.5708.0.copyload, %i.asq
  %.sroa.3.12.vec.insert.i.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ass, i64 0
  %i.ast = fmul float %i.aqx, %.sroa.6701.0.copyload
  %i.asu = extractelement <2 x float> %i.aqu, i64 0 ; 2 uses
  %i.asv = call float @llvm.fmuladd.f32(float %.sroa.9716.0.copyload, float %i.asu, float %i.ast)
  %i.asw = extractelement <2 x float> %i.aqv, i64 1 ; 2 uses
  %i.asx = call float @llvm.fmuladd.f32(float %i.aqs, float %i.asw, float %i.asv)
  %i.asy = fneg float %i.aqz                      ; 2 uses
  %i.asz = extractelement <2 x float> %i.aqu, i64 1 ; 2 uses
  %i.ata = call float @llvm.fmuladd.f32(float %i.asy, float %i.asz, float %i.asx) ; 6 uses
  %i.atb = fmul <2 x float> %i.aqt, %i.aqm
  %i.atc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqo, <2 x float> %i.aqv, <2 x float> %i.atb)
  %i.atd = shufflevector <2 x float> %i.aqt, <2 x float> %i.aqr, <2 x i32> <i32 1, i32 2>
  %i.ate = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atd, <2 x float> %i.aqu, <2 x float> %i.atc)
  %i.atf = fneg float %i.aqs
  %i.atg = fneg <2 x float> %i.aqr
  %i.ath = shufflevector <2 x float> %i.aqv, <2 x float> %i.aqu, <2 x i32> <i32 1, i32 2>
  %i.ati = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atg, <2 x float> %i.ath, <2 x float> %i.ate) ; 5 uses
  %i.atj = fneg float %i.asu
  %i.atk = fmul float %i.aqx, %i.atj
  %i.atl = call float @llvm.fmuladd.f32(float %.sroa.9716.0.copyload, float %.sroa.6701.0.copyload, float %i.atk)
  %i.atm = call float @llvm.fmuladd.f32(float %i.atf, float %i.asz, float %i.atl)
  %i.atn = call float @llvm.fmuladd.f32(float %i.asy, float %i.asw, float %i.atm) ; 5 uses
  store <2 x float> %i.asr, ptr %i.ahu, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i4.i.i, ptr %.sroa.4697.0..sroa_idx, align 8, !tbaa !37
  %i.ato = extractelement <2 x float> %i.ati, i64 0 ; 2 uses
  %foldExtExtBinop942 = fmul <2 x float> %i.ati, %i.ati
  %i.atp = extractelement <2 x float> %foldExtExtBinop942, i64 0
  %i.atq = call float @llvm.fmuladd.f32(float %i.ata, float %i.ata, float %i.atp)
  %i.atr = extractelement <2 x float> %i.ati, i64 1 ; 3 uses
  %i.ats = call float @llvm.fmuladd.f32(float %i.atr, float %i.atr, float %i.atq)
  %i.att = call noundef float @llvm.fmuladd.f32(float %i.atn, float %i.atn, float %i.ats)
  %i.atu = fdiv float 2.000000e+00, %i.att        ; 3 uses
  %i.atv = fmul float %i.ata, %i.atu              ; 2 uses
  %i.atw = fmul float %i.ato, %i.atu              ; 3 uses
  %i.atx = fmul float %i.atn, %i.atv              ; 2 uses
  %i.aty = fmul float %i.atn, %i.atw              ; 2 uses
  %i.atz = fmul float %i.ata, %i.atv              ; 2 uses
  %i.aua = fmul float %i.ata, %i.atw              ; 2 uses
  %i.aub = insertelement <2 x float> poison, float %i.atw, i64 0
  %i.auc = insertelement <2 x float> %i.aub, float %i.atu, i64 1
  %i.aud = fmul <2 x float> %i.ati, %i.auc        ; 4 uses
  %i.aue = extractelement <2 x float> %i.aud, i64 1 ; 3 uses
  %i.auf = fmul float %i.ata, %i.aue              ; 2 uses
  %i.aug = fmul float %i.ato, %i.aue              ; 2 uses
  %i.auh = fmul float %i.atr, %i.aue              ; 2 uses
  %i.aui = insertelement <2 x float> poison, float %i.auh, i64 0
  %i.auj = insertelement <2 x float> %i.aui, float %i.atn, i64 1 ; 2 uses
  %i.auk = fadd <2 x float> %i.auj, %i.aud
  %i.aul = fmul <2 x float> %i.auj, %i.aud        ; 2 uses
  %i.aum = shufflevector <2 x float> %i.auk, <2 x float> %i.aul, <2 x i32> <i32 0, i32 3>
  %i.aun = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.aua, i64 1
  %i.auo = fsub <2 x float> %i.aun, %i.aum
  %i.aup = fadd float %i.auf, %i.aty
  %i.auq = extractelement <2 x float> %i.aul, i64 1
  %i.aur = fadd float %i.aua, %i.auq
  %i.aus = fadd float %i.atz, %i.auh
  %i.aut = fsub float 1.000000e+00, %i.aus
  %i.auu = fsub float %i.aug, %i.atx
  %i.auv = fsub float %i.auf, %i.aty
  %i.auw = fadd float %i.aug, %i.atx
  %i.aux = extractelement <2 x float> %i.aud, i64 0
  %i.auy = fadd float %i.atz, %i.aux
  %i.auz = fsub float 1.000000e+00, %i.auy
  store <2 x float> %i.auo, ptr %25, align 16, !tbaa !37
  store float %i.aup, ptr %i.ahv, align 8, !tbaa !37
  store float 0.000000e+00, ptr %i.ahw, align 4, !tbaa !37
  store float %i.aur, ptr %i.ahx, align 16, !tbaa !37
  store float %i.aut, ptr %i.ahq, align 4, !tbaa !37
  store float %i.auu, ptr %i.ahr, align 8, !tbaa !37
  store float 0.000000e+00, ptr %i.ahy, align 4, !tbaa !37
  store float %i.auv, ptr %i.ahz, align 16, !tbaa !37
  store float %i.auw, ptr %i.aia, align 4, !tbaa !37
  store float %i.auz, ptr %i.ahs, align 8, !tbaa !37
  store float 0.000000e+00, ptr %i.aht, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @_ZNK11b3Matrix3x311getRotationER12b3Quaternion(ptr noundef nonnull align 16 dereferenceable(64) %25, ptr noundef nonnull align 16 dereferenceable(16) %18)
  %.fca.0.load.i503 = load <2 x float>, ptr %18, align 16 ; 4 uses
  %.fca.1.load.i506 = load <2 x float>, ptr %.fca.1.gep.i505, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.ava = fsub <3 x float> %i.aqq, %i.aqp
  %i.avb = fmul <3 x float> %i.ava, splat (float 5.000000e-01)
  %i.avc = fadd <3 x float> %i.avb, zeroinitializer ; 6 uses
  %.sroa.0681.0.vec.extract = extractelement <2 x float> %.fca.0.load.i503, i64 0 ; 4 uses
  %.sroa.0681.4.vec.extract = extractelement <2 x float> %.fca.0.load.i503, i64 1 ; 3 uses
  %i.avd = fmul float %.sroa.0681.4.vec.extract, %.sroa.0681.4.vec.extract
  %i.ave = call float @llvm.fmuladd.f32(float %.sroa.0681.0.vec.extract, float %.sroa.0681.0.vec.extract, float %i.avd)
  %.sroa.5682.8.vec.extract = extractelement <2 x float> %.fca.1.load.i506, i64 0 ; 4 uses
  %i.avf = call float @llvm.fmuladd.f32(float %.sroa.5682.8.vec.extract, float %.sroa.5682.8.vec.extract, float %i.ave)
  %.sroa.5682.12.vec.extract = extractelement <2 x float> %.fca.1.load.i506, i64 1 ; 5 uses
  %i.avg = call noundef float @llvm.fmuladd.f32(float %.sroa.5682.12.vec.extract, float %.sroa.5682.12.vec.extract, float %i.avf)
  %i.avh = fdiv float 2.000000e+00, %i.avg        ; 2 uses
  %i.avi = fadd float %.sroa.4688.0.copyload, %.sroa.7692.0.copyload
  %foldExtExtBinop944 = fadd <3 x float> %i.aqp, %i.aqq
  %i.avj = extractelement <3 x float> %foldExtExtBinop944, i64 0
  %foldExtExtBinop946 = fadd <3 x float> %i.aqp, %i.aqq
  %i.avk = extractelement <3 x float> %foldExtExtBinop946, i64 2
  %i.avl = fmul float %.sroa.5682.8.vec.extract, %i.avh ; 4 uses
  %i.avm = fmul float %i.avi, 5.000000e-01        ; 3 uses
  %i.avn = fmul float %i.avj, 5.000000e-01        ; 3 uses
  %i.avo = fmul float %i.avk, 5.000000e-01        ; 3 uses
  %i.avp = fmul float %.sroa.0681.0.vec.extract, %i.avl ; 2 uses
  %i.avq = insertelement <2 x float> poison, float %i.avh, i64 0
  %i.avr = shufflevector <2 x float> %i.avq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avs = fmul <2 x float> %.fca.0.load.i503, %i.avr ; 3 uses
  %i.avt = extractelement <2 x float> %i.avs, i64 0
  %i.avu = extractelement <2 x float> %i.avs, i64 1 ; 2 uses
  %i.avv = fmul float %.sroa.0681.0.vec.extract, %i.avu ; 2 uses
  %i.avw = fmul float %.sroa.5682.12.vec.extract, %i.avt ; 2 uses
  %i.avx = fmul <2 x float> %.fca.0.load.i503, %i.avs ; 3 uses
  %i.avy = fmul float %.sroa.5682.12.vec.extract, %i.avl ; 2 uses
  %i.avz = fmul float %.sroa.0681.4.vec.extract, %i.avl ; 2 uses
  %i.awa = fmul float %.sroa.5682.8.vec.extract, %i.avl ; 2 uses
  %i.awb = extractelement <2 x float> %i.avx, i64 1
  %i.awc = fadd float %i.awb, %i.awa
  %i.awd = fmul float %.sroa.5682.12.vec.extract, %i.avu ; 2 uses
  %i.awe = fadd float %i.avv, %i.avy              ; 2 uses
  %i.awf = extractelement <2 x float> %i.avx, i64 0
  %i.awg = fadd float %i.awf, %i.awa
  %i.awh = fsub float 1.000000e+00, %i.awg        ; 2 uses
  %i.awi = fsub float %i.avz, %i.avw              ; 2 uses
  %i.awj = fsub float 1.000000e+00, %i.awc        ; 2 uses
  %i.awk = fsub float %i.avp, %i.awd              ; 2 uses
  %i.awl = fsub float %i.avv, %i.avy              ; 2 uses
  %i.awm = fadd float %i.avz, %i.avw              ; 2 uses
  %i.awn = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.avx)
  %i.awo = fadd float %i.avp, %i.awd              ; 2 uses
  %i.awp = fsub float 1.000000e+00, %i.awn        ; 2 uses
  %i.awq = call noundef float @llvm.fabs.f32(float %i.awe)
  %i.awr = call noundef float @llvm.fabs.f32(float %i.awh)
  %i.aws = call noundef float @llvm.fabs.f32(float %i.awi)
  %i.awt = insertelement <2 x float> poison, float %i.awj, i64 0
  %i.awu = insertelement <2 x float> %i.awt, float %i.awk, i64 1
  %i.awv = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.awu)
  %i.aww = insertelement <2 x float> poison, float %i.awl, i64 0
  %i.awx = insertelement <2 x float> %i.aww, float %i.awm, i64 1
  %i.awy = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.awx)
  %i.awz = insertelement <2 x float> poison, float %i.awo, i64 0
  %i.axa = insertelement <2 x float> %i.awz, float %i.awp, i64 1
  %i.axb = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.axa)
  %.sroa.25.48.copyload.i.i510 = load float, ptr %.sroa.25.48..sroa_idx.i.i509, align 4
  %i.axc = load <3 x float>, ptr %i.ahu, align 16
  %i.axd = shufflevector <3 x float> %i.axc, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.axe = fmul float %i.avm, %i.awh
  %i.axf = call float @llvm.fmuladd.f32(float %i.avn, float %i.awe, float %i.axe)
  %i.axg = call noundef float @llvm.fmuladd.f32(float %i.avo, float %i.awi, float %i.axf)
  %i.axh = fmul float %i.avm, %i.awl
  %i.axi = fmul float %i.avm, %i.awm
  %i.axj = call float @llvm.fmuladd.f32(float %i.avn, float %i.awj, float %i.axh)
  %i.axk = call float @llvm.fmuladd.f32(float %i.avn, float %i.awk, float %i.axi)
  %i.axl = call noundef float @llvm.fmuladd.f32(float %i.avo, float %i.awo, float %i.axj)
  %i.axm = call noundef float @llvm.fmuladd.f32(float %i.avo, float %i.awp, float %i.axk)
  %i.axn = fadd float %.sroa.25.48.copyload.i.i510, %i.axg ; 2 uses
  %i.axo = insertelement <2 x float> poison, float %i.axl, i64 0
  %i.axp = insertelement <2 x float> %i.axo, float %i.axm, i64 1
  %i.axq = fadd <2 x float> %i.axd, %i.axp        ; 2 uses
  %i.axr = extractelement <3 x float> %i.avc, i64 1
  %i.axs = fmul float %i.axr, %i.awr
  %i.axt = extractelement <3 x float> %i.avc, i64 0
  %i.axu = call float @llvm.fmuladd.f32(float %i.axt, float %i.awq, float %i.axs)
  %i.axv = extractelement <3 x float> %i.avc, i64 2
  %i.axw = call noundef float @llvm.fmuladd.f32(float %i.axv, float %i.aws, float %i.axu) ; 2 uses
  %i.axx = shufflevector <3 x float> %i.avc, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.axy = fmul <2 x float> %i.axx, %i.awy
  %i.axz = shufflevector <3 x float> %i.avc, <3 x float> poison, <2 x i32> zeroinitializer
  %i.aya = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.axz, <2 x float> %i.awv, <2 x float> %i.axy)
  %i.ayb = shufflevector <3 x float> %i.avc, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ayc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayb, <2 x float> %i.axb, <2 x float> %i.aya) ; 2 uses
  %i.ayd = fsub float %i.axn, %i.axw
  %i.aye = fadd float %i.axn, %i.axw
  %i.ayf = fadd <2 x float> %i.axq, %i.ayc
  %i.ayg = load i32, ptr @numAabbChecks, align 4, !tbaa !38
  %i.ayh = add nsw i32 %i.ayg, 1
  store i32 %i.ayh, ptr @numAabbChecks, align 4, !tbaa !38
  %i.ayi = fcmp ule <2 x float> %i.apu, %i.ayf
  %i.ayj = fcmp ule float %i.apt, %i.aye
  %i.ayk = fcmp uge float %i.apv, %i.ayd
  %i.ayl = and i1 %i.ayj, %i.ayk
  %i.aym = fsub <2 x float> %i.axq, %i.ayc
  %i.ayn = fcmp uge <2 x float> %i.apw, %i.aym
  %i.ayo = and <2 x i1> %i.ayi, %i.ayn            ; 2 uses
  %i.ayp = extractelement <2 x i1> %i.ayo, i64 1
  %i.ayq = select i1 %i.ayl, i1 %i.ayp, i1 false
  %i.ayr = extractelement <2 x i1> %i.ayo, i64 0
  %i.ays = select i1 %i.ayq, i1 %i.ayr, i1 false
  br i1 %i.ays, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ayt = load i32, ptr %13, align 4, !tbaa !38  ; 3 uses
  %i.ayu = add nsw i32 %i.ayt, 1
  store i32 %i.ayu, ptr %13, align 4, !tbaa !38
  %i.ayv = icmp slt i32 %i.ayt, %14
  br i1 %i.ayv, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.sroa.5.8.insert.ext.i526 = zext i32 %i.aqc to i64
  %.sroa.5.8.insert.shift.i527 = shl nuw i64 %.sroa.5.8.insert.ext.i526, 32
  %.sroa.3.8.insert.insert.i529 = or disjoint i64 %.sroa.5.8.insert.shift.i527, %.sroa.3.8.insert.ext.i528
  %i.ayw = sext i32 %i.ayt to i64
  %i.ayx = getelementptr inbounds [16 x i8], ptr %12, i64 %i.ayw ; 2 uses
end_hunk_3
begin_hunk_4_@_Z27computeContactPlaneCompoundiiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataPK15b3GpuChildShapePK9b3Vector3PKiPK9b3GpuFaceP10b3Contact4Rii:bb.a
  %i.ep = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eq = insertelement <2 x float> %i.ep, float %i.em, i64 0 ; 2 uses
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.eq, <2 x float> %i.eo)
  %i.es = shufflevector <2 x float> %i.ds, <2 x float> %i.ak, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.et = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.es, <2 x float> %i.er)
  %i.eu = insertelement <2 x float> %i.dw, float %.sroa.9348.0.copyload, i64 1 ; 2 uses
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.eu, <2 x float> %i.et)
  %i.ew = fdiv <2 x float> splat (float 2.000000e+00), %i.ev ; 4 uses
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x float> %i.ds, %i.ex           ; 6 uses
  %i.ez = extractelement <2 x float> %i.ew, i64 0
  %i.fa = fmul float %i.em, %i.ez                 ; 2 uses
  %i.fb = fmul float %i.em, %i.fa                 ; 2 uses
  %i.fc = extractelement <2 x float> %i.ey, i64 0
  %shift409 = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop410 = fmul <2 x float> %shift409, %i.ey
  %i.fd = extractelement <2 x float> %foldExtExtBinop410, i64 0 ; 2 uses
  %i.fe = fmul <2 x float> %i.dw, %i.ey           ; 4 uses
  %foldExtExtBinop412 = fmul <2 x float> %i.ds, %i.ey
  %i.ff = extractelement <2 x float> %foldExtExtBinop412, i64 1 ; 2 uses
  %i.fg = fadd float %i.fb, %i.ff
  %i.fh = fadd float %i.fb, %i.fd
  %i.fi = fsub float 1.000000e+00, %i.fh          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.fj = fneg float %i.ar                        ; 3 uses
  %i.fk = fneg float %i.ao                        ; 2 uses
  %i.fl = fneg float %i.av                        ; 2 uses
  %i.fm = fmul float %i.aw, %i.fj
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.au, float %i.ao, float %i.fm)
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.av, float %i.fn) ; 2 uses
  %i.fp = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.az, <2 x float> %i.eg)
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ba, <2 x float> %i.fr)
  %i.ft = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.ak, <2 x float> %i.fs)
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.ax, float %i.ek)
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.el, float %i.bb, float %i.fu)
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.at, float %i.fv)
  %i.fx = fadd float %i.fd, %i.ff
  %shift414 = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop415 = fmul <2 x float> %i.aj, %shift414 ; 2 uses
  %i.fy = extractelement <2 x float> %foldExtExtBinop415, i64 0
  %shift417 = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop418 = fmul <2 x float> %i.dw, %shift417
  %i.fz = extractelement <2 x float> %foldExtExtBinop418, i64 0 ; 2 uses
  %i.ga = fmul float %i.em, %i.fc                 ; 2 uses
  %i.gb = fsub float %i.ga, %i.fz                 ; 3 uses
  %i.gc = fsub float 1.000000e+00, %i.fx          ; 2 uses
  %foldExtExtBinop420 = fmul <2 x float> %i.aj, %foldExtExtBinop415 ; 2 uses
  %i.gd = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ge = fmul <2 x float> %i.ak, %i.gd           ; 4 uses
  %i.gf = extractelement <2 x float> %i.ge, i64 0
  %i.gg = extractelement <2 x float> %i.ge, i64 1 ; 3 uses
  %i.gh = fmul <2 x float> %i.ak, %i.ge           ; 3 uses
  %i.gi = fmul float %i.aw, %i.gg                 ; 2 uses
  %i.gj = fsub float 1.000000e+00, %i.fg          ; 4 uses
  %i.gk = fadd float %i.ga, %i.fz                 ; 3 uses
  %i.gl = insertelement <2 x float> poison, float %i.em, i64 0
  %i.gm = insertelement <2 x float> %i.gl, float %i.fa, i64 1
  %i.gn = shufflevector <2 x float> %i.ey, <2 x float> %i.dw, <2 x i32> <i32 1, i32 2>
  %i.go = fmul <2 x float> %i.gm, %i.gn           ; 4 uses
  %i.gp = fadd <2 x float> %i.fe, %i.go           ; 2 uses
  %i.gq = fsub <2 x float> %i.fe, %i.go           ; 2 uses
  %i.gr = shufflevector <2 x float> %i.gp, <2 x float> %i.gq, <2 x i32> <i32 0, i32 3>
  %i.gs = fsub <2 x float> %i.go, %i.fe           ; 2 uses
  %i.gt = fadd <2 x float> %i.go, %i.fe           ; 2 uses
  %i.gu = shufflevector <2 x float> %i.gs, <2 x float> %i.gt, <2 x i32> <i32 0, i32 3> ; 3 uses
  %shift422 = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop423 = fadd <2 x float> %foldExtExtBinop420, %shift422
  %i.gv = extractelement <2 x float> %foldExtExtBinop423, i64 0
  %i.gw = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gh)
  %i.gx = fsub float 1.000000e+00, %i.gw          ; 4 uses
  %i.gy = insertelement <2 x float> poison, float %i.gk, i64 0 ; 2 uses
  %i.gz = insertelement <2 x float> poison, float %i.gx, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = insertelement <2 x float> poison, float %i.gc, i64 0 ; 2 uses
  %i.hc = insertelement <2 x float> %i.hb, float %i.gb, i64 1 ; 2 uses
  %i.hd = insertelement <2 x float> %i.gy, float %i.gj, i64 1
  %i.he = extractelement <2 x float> %i.gq, i64 1 ; 3 uses
  %i.hf = extractelement <2 x float> %i.gp, i64 0 ; 3 uses
  %i.hg = load <3 x float>, ptr %i.j, align 16
  %i.hh = fneg <3 x float> %i.hg                  ; 6 uses
  %i.hi = fmul float %.sroa.9348.0.copyload, %i.gf ; 2 uses
  %i.hj = fmul float %.sroa.9348.0.copyload, %i.gg ; 2 uses
  %i.hk = fmul float %i.at, %i.gg                 ; 2 uses
  %foldExtExtBinop425 = fmul <2 x float> %i.aj, %i.ge
  %i.hl = extractelement <2 x float> %foldExtExtBinop425, i64 0 ; 2 uses
  %i.hm = fadd float %i.hl, %i.hj                 ; 5 uses
  %foldExtExtBinop427 = fadd <2 x float> %foldExtExtBinop420, %i.gh
  %i.hn = extractelement <2 x float> %foldExtExtBinop427, i64 0
  %i.ho = fmul float %.sroa.9348.0.copyload, %i.fy ; 2 uses
  %i.hp = fsub float %i.gi, %i.ho                 ; 5 uses
  %i.hq = fsub float 1.000000e+00, %i.gv          ; 3 uses
  %i.hr = fadd float %i.hk, %i.hi                 ; 5 uses
  %i.hs = fsub float %i.hl, %i.hj                 ; 3 uses
  %i.ht = fsub float %i.hk, %i.hi                 ; 4 uses
  %i.hu = fsub float 1.000000e+00, %i.hn          ; 3 uses
  %i.hv = fadd float %i.gi, %i.ho                 ; 2 uses
  %i.hw = insertelement <2 x float> %i.gy, float %i.hm, i64 1
  %i.hx = insertelement <2 x float> poison, float %i.hm, i64 0
  %i.hy = insertelement <2 x float> %i.hx, float %i.gj, i64 1
  %i.hz = fmul <2 x float> %i.hw, %i.hy
  %i.ia = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.hc, <2 x float> %i.hz)
  %i.ib = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ic, <2 x float> %i.gu, <2 x float> %i.ia)
  %i.ie = insertelement <2 x float> poison, float %i.hq, i64 0 ; 2 uses
  %i.if = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ig = fmul <2 x float> %i.hd, %i.if
  %i.ih = insertelement <2 x float> poison, float %i.hs, i64 0 ; 2 uses
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.hc, <2 x float> %i.ig)
  %i.ik = insertelement <2 x float> poison, float %i.hv, i64 0 ; 2 uses
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.gu, <2 x float> %i.ij)
  %i.in = fmul float %i.gj, %i.hp
  %i.io = fmul float %i.gk, %i.hp
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.gb, float %i.in)
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.gc, float %i.io)
  %i.ir = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.iu = insertelement <2 x float> %i.it, float %i.ip, i64 1
  %i.iv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.is, <2 x float> %i.gu, <2 x float> %i.iu)
  %i.iw = fmul float %i.he, %i.hm
  %i.ix = tail call float @llvm.fmuladd.f32(float %i.gx, float %i.hf, float %i.iw)
  %i.iy = tail call noundef float @llvm.fmuladd.f32(float %i.ht, float %i.fi, float %i.ix)
  %i.iz = fmul float %i.he, %i.hq
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.hs, float %i.hf, float %i.iz)
  %i.jb = tail call noundef float @llvm.fmuladd.f32(float %i.hv, float %i.fi, float %i.ja)
  %i.jc = fmul float %i.he, %i.hp
  %i.jd = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.hf, float %i.jc)
  %i.je = tail call noundef float @llvm.fmuladd.f32(float %i.hu, float %i.fi, float %i.jd)
  %i.jf = extractelement <3 x float> %i.hh, i64 1
  %i.jg = fmul float %i.hm, %i.jf
  %i.jh = extractelement <3 x float> %i.hh, i64 0
  %i.ji = tail call float @llvm.fmuladd.f32(float %i.gx, float %i.jh, float %i.jg)
  %i.jj = extractelement <3 x float> %i.hh, i64 2
  %i.jk = tail call noundef float @llvm.fmuladd.f32(float %i.ht, float %i.jj, float %i.ji)
  %i.jl = insertelement <2 x float> %i.ie, float %i.hp, i64 1
  %i.jm = shufflevector <3 x float> %i.hh, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jn = fmul <2 x float> %i.jl, %i.jm
  %i.jo = insertelement <2 x float> %i.ih, float %i.hr, i64 1
  %i.jp = shufflevector <3 x float> %i.hh, <3 x float> poison, <2 x i32> zeroinitializer
  %i.jq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jo, <2 x float> %i.jp, <2 x float> %i.jn)
  %i.jr = shufflevector <3 x float> %i.hh, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.js = insertelement <2 x float> %i.ik, float %i.hu, i64 1 ; 2 uses
  %i.jt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.js, <2 x float> %i.jr, <2 x float> %i.jq)
  %i.ju = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jw = fmul <2 x float> %i.im, %i.jv
  %i.jx = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.jy, <2 x float> %i.jw)
  %i.ka = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iv, <2 x float> %i.kb, <2 x float> %i.jz) ; 3 uses
  %i.kd = fmul float %i.jb, %i.fj
  %i.ke = tail call float @llvm.fmuladd.f32(float %i.iy, float %i.fk, float %i.kd)
  %i.kf = tail call noundef float @llvm.fmuladd.f32(float %i.je, float %i.fl, float %i.ke) ; 2 uses
  %.sroa.3.12.vec.insert.i.i138 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kf, i64 0
  store <2 x float> %i.kc, ptr %15, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i138, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %17, align 16, !tbaa !37
  %i.kg = getelementptr inbounds nuw i8, ptr %i.af, i64 76
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !45 ; 2 uses
  %i.ki = icmp sgt i32 %i.kh, 0
  br i1 %i.ki, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.b
  %i.kj = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.kk = load i32, ptr %i.kj, align 16, !tbaa !46
  %i.kl = sext i32 %i.kk to i64
  %wide.trip.count = zext nneg i32 %i.kh to i64
  %invariant.gep = getelementptr [16 x i8], ptr %9, i64 %i.kl
  %i.km = insertelement <2 x float> %i.hb, float %i.gk, i64 1
  %i.kn = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.ko = insertelement <2 x float> %i.kn, float %i.gj, i64 1
  %i.kp = extractelement <2 x float> %i.kc, i64 0
  %i.kq = extractelement <2 x float> %i.kc, i64 1
  %i.kr = shufflevector <2 x float> %i.gs, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ks = shufflevector <2 x float> %i.gt, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.kt = insertelement <4 x float> %i.ks, float %i.hm, i64 1
  %i.ku = insertelement <4 x float> %i.kt, float %i.hq, i64 2
  %i.kv = insertelement <4 x float> %i.ku, float %i.hp, i64 3
  %i.kw = insertelement <4 x float> %i.kr, float %i.gx, i64 1
  %i.kx = insertelement <4 x float> %i.kw, float %i.hs, i64 2
  %i.ky = insertelement <4 x float> %i.kx, float %i.hr, i64 3
  br label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %i.kz = icmp sgt i32 %.3, 4
  br i1 %i.kz, label %bb.g, label %bb.h

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.087381 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.f ] ; 3 uses
  %.088380 = phi float [ -1.000000e+30, %.lr.ph ], [ %.189, %bb.f ] ; 2 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %18 = load <3 x float>, ptr %gep, align 16      ; 6 uses
  %.sroa.0171.0.copyload = load float, ptr %gep, align 16 ; 2 uses
  %19 = extractelement <3 x float> %18, i64 1
  %i.la = fmul float %19, %i.kq
  %20 = tail call float @llvm.fmuladd.f32(float %.sroa.0171.0.copyload, float %i.kp, float %i.la)
  %21 = extractelement <3 x float> %18, i64 2     ; 2 uses
  %i.lb = tail call noundef float @llvm.fmuladd.f32(float %21, float %i.kf, float %20) ; 2 uses
  %i.lc = fcmp ogt float %i.lb, %.088380          ; 2 uses
  %i.ld = icmp eq i32 %.087381, 64
  %.189 = select i1 %i.lc, float %i.lb, float %.088380
  %i.le = select i1 %i.lc, i1 %i.ld, i1 false
  %.1 = select i1 %i.le, i32 63, i32 %.087381     ; 4 uses
  %i.lf = icmp slt i32 %.1, 64
  br i1 %i.lf, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.lg = shufflevector <3 x float> %18, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lh = fmul <2 x float> %i.ko, %i.lg
  %i.li = shufflevector <3 x float> %18, <3 x float> poison, <2 x i32> zeroinitializer
  %i.lj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.li, <2 x float> %i.km, <2 x float> %i.lh)
  %22 = shufflevector <3 x float> %18, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %23 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %i.gr, <2 x float> %i.lj)
  %24 = fadd <2 x float> %i.cz, %23               ; 3 uses
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %26 = shufflevector <3 x float> %18, <3 x float> %25, <4 x i32> <i32 1, i32 4, i32 4, i32 4>
  %i.lk = fmul <4 x float> %i.kv, %26
  %27 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %28 = insertelement <2 x float> %27, float %.sroa.0171.0.copyload, i64 0
  %29 = shufflevector <2 x float> %28, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ll = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %29, <4 x float> %i.ky, <4 x float> %i.lk) ; 3 uses
  %i.lm = extractelement <4 x float> %i.ll, i64 0
  %i.ln = tail call noundef float @llvm.fmuladd.f32(float %21, float %i.fi, float %i.lm)
  %i.lo = fadd float %i.da, %i.ln                 ; 3 uses
  %i.lp = extractelement <4 x float> %i.ll, i64 1
  %i.lq = tail call noundef float @llvm.fmuladd.f32(float %i.lo, float %i.ht, float %i.lp)
  %i.lr = fadd float %i.jk, %i.lq
  %i.ls = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.lt = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lu = shufflevector <4 x float> %i.ll, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.lv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lt, <2 x float> %i.js, <2 x float> %i.lu)
  %i.lw = fadd <2 x float> %i.jt, %i.lv           ; 2 uses
  %i.lx = extractelement <2 x float> %i.lw, i64 0
  %i.ly = fmul float %i.ar, %i.lx
  %i.lz = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.lr, float %i.ly)
  %i.ma = extractelement <2 x float> %i.lw, i64 1
  %i.mb = tail call noundef float @llvm.fmuladd.f32(float %i.av, float %i.ma, float %i.lz)
  %i.mc = fsub float %i.mb, %.sroa.6.0.copyload   ; 2 uses
  %i.md = fcmp olt float %i.mc, 0.000000e+00
  br i1 %i.md, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.3.12.vec.insert.i.i4.i.i143 = insertelement <2 x float> poison, float %i.lo, i64 0
  %.sroa.6170.12.vec.insert = insertelement <2 x float> %.sroa.3.12.vec.insert.i.i4.i.i143, float %i.mc, i64 1
  %i.me = sext i32 %.1 to i64
  %i.mf = getelementptr inbounds [16 x i8], ptr %16, i64 %i.me ; 2 uses
  store <2 x float> %24, ptr %i.mf, align 16
  %.sroa.6170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store <2 x float> %.sroa.6170.12.vec.insert, ptr %.sroa.6170.0..sroa_idx, align 8, !tbaa !37
  %i.mg = add nsw i32 %.1, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.3 = phi i32 [ %.087381, %bb.c ], [ %i.mg, %bb.e ], [ %.1, %bb.d ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !335

bb.g:                                             ; preds = %._crit_edge
  %i.mh = call noundef i32 @_Z31extractManifoldSequentialGlobalPK9b3Vector3iRS0_P6b3Int4(ptr noundef nonnull %16, i32 noundef %.3, ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull %17)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.085 = phi i32 [ %i.mh, %bb.g ], [ %.3, %._crit_edge ] ; 5 uses
  %i.mi = icmp sgt i32 %.085, 0
  br i1 %i.mi, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.mj = load i32, ptr %13, align 4, !tbaa !38   ; 3 uses
  %i.mk = icmp slt i32 %i.mj, %14
  br i1 %i.mk, label %.lr.ph385.preheader, label %.thread

.lr.ph385.preheader:                              ; preds = %bb.i
  %i.ml = add nsw i32 %i.mj, 1
  store i32 %i.ml, ptr %13, align 4, !tbaa !38
  %i.mm = sext i32 %i.mj to i64
  %i.mn = getelementptr inbounds [112 x i8], ptr %12, i64 %i.mm ; 11 uses
  %i.mo = fneg <2 x float> %i.ft
  %i.mp = fneg float %i.fw
  %.sroa.3.12.vec.insert.i.i164 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mp, i64 0
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 64
  store <2 x float> %i.mo, ptr %i.mq, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mn, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i.i164, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !37
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 82
  store i16 -19662, ptr %i.mr, align 2, !tbaa !55
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 80
  store i16 0, ptr %i.ms, align 16, !tbaa !54
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mn, i64 84
  store i32 %0, ptr %i.mt, align 4, !tbaa !56
  %i.mu = load float, ptr %i.p, align 4, !tbaa !34
  %i.mv = fcmp oeq float %i.mu, 0.000000e+00
  %i.mw = select i1 %i.mv, i32 %i.q, i32 %1
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mn, i64 88
  store i32 %i.mw, ptr %i.mx, align 8, !tbaa !57
  %i.my = load float, ptr %i.r, align 4, !tbaa !34
  %i.mz = fcmp oeq float %i.my, 0.000000e+00
  %i.na = select i1 %i.mz, i32 %i.s, i32 %2
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mn, i64 92
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !58
  %wide.trip.count395 = zext nneg i32 %.085 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count395, 1
  %i.nc = icmp eq i32 %.085, 1
  br i1 %i.nc, label %.lr.ph385.epil.preheader, label %.lr.ph385.preheader.new

.lr.ph385.preheader.new:                          ; preds = %.lr.ph385.preheader
  %unroll_iter = and i64 %wide.trip.count395, 2147483646
  br label %.lr.ph385

._crit_edge386.unr-lcssa:                         ; preds = %.lr.ph385
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge386, label %.lr.ph385.epil.preheader

.lr.ph385.epil.preheader:                         ; preds = %._crit_edge386.unr-lcssa, %.lr.ph385.preheader
  %indvars.iv392.epil.init = phi i64 [ 0, %.lr.ph385.preheader ], [ %indvars.iv.next393.1, %._crit_edge386.unr-lcssa ] ; 2 uses
  %lcmp.mod429 = trunc i32 %.085 to i1
  tail call void @llvm.assume(i1 %lcmp.mod429)
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv392.epil.init
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !37
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [16 x i8], ptr %16, i64 %i.nf
  %i.nh = getelementptr inbounds nuw [16 x i8], ptr %i.mn, i64 %indvars.iv392.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.nh, ptr noundef nonnull align 16 dereferenceable(16) %i.ng, i64 16, i1 false)
  br label %._crit_edge386

._crit_edge386:                                   ; preds = %._crit_edge386.unr-lcssa, %.lr.ph385.epil.preheader
  %i.ni = uitofp nneg i32 %.085 to float
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mn, i64 76
  store float %i.ni, ptr %i.nj, align 4, !tbaa !37
  br label %.thread

.lr.ph385:                                        ; preds = %.lr.ph385, %.lr.ph385.preheader.new
  %indvars.iv392 = phi i64 [ 0, %.lr.ph385.preheader.new ], [ %indvars.iv.next393.1, %.lr.ph385 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph385.preheader.new ], [ %niter.next.1, %.lr.ph385 ]
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv392
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !37
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [16 x i8], ptr %16, i64 %i.nm
  %i.no = getelementptr inbounds nuw [16 x i8], ptr %i.mn, i64 %indvars.iv392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.no, ptr noundef nonnull align 16 dereferenceable(16) %i.nn, i64 16, i1 false)
  %indvars.iv.next393 = or disjoint i64 %indvars.iv392, 1 ; 2 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv.next393
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !37
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [16 x i8], ptr %16, i64 %i.nr
  %i.nt = getelementptr inbounds nuw [16 x i8], ptr %i.mn, i64 %indvars.iv.next393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.nt, ptr noundef nonnull align 16 dereferenceable(16) %i.ns, i64 16, i1 false)
  %indvars.iv.next393.1 = add nuw nsw i64 %indvars.iv392, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge386.unr-lcssa, label %.lr.ph385, !llvm.loop !336

.thread:                                          ; preds = %bb.b, %bb.i, %._crit_edge386, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.nu = add nuw nsw i32 %.090387, 1             ; 2 uses
  %exitcond397.not = icmp eq i32 %i.nu, %i.c
  br i1 %exitcond397.not, label %._crit_edge390, label %bb.b, !llvm.loop !337
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z26computeContactSphereConvexiiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataPK9b3Vector3PKiPK9b3GpuFaceP10b3Contact4Rii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %12, i32 noundef %13) local_unnamed_addr #7 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr %6, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !37 ; 4 uses
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [80 x i8], ptr %5, i64 %i.e ; 4 uses
  %.sroa.0201.0.copyload = load float, ptr %i.f, align 16 ; 2 uses
  %.sroa.4202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.4202.0.copyload = load float, ptr %.sroa.4202.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5203.0.copyload = load float, ptr %.sroa.5203.0..sroa_idx, align 8 ; 2 uses
  %i.g = sext i32 %2 to i64
  %i.h = getelementptr inbounds [80 x i8], ptr %5, i64 %i.g ; 8 uses
  %.sroa.5199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5199.0.copyload = load float, ptr %.sroa.5199.0..sroa_idx, align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.6196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %.sroa.6196.0.copyload = load float, ptr %.sroa.6196.0..sroa_idx, align 4 ; 5 uses
  %i.j = load <2 x float>, ptr %i.h, align 16     ; 3 uses
  %i.k = extractelement <2 x float> %i.j, i64 0
  %i.l = extractelement <2 x float> %i.j, i64 1
  %.sroa.0193.0.copyload = load float, ptr %i.i, align 16 ; 6 uses
  %.sroa.5195.0.copyload = load float, ptr %.sroa.5195.0..sroa_idx, align 8 ; 4 uses
  %.sroa.4194.0.copyload = load float, ptr %.sroa.4194.0..sroa_idx, align 4 ; 5 uses
  %i.m = fmul float %.sroa.4194.0.copyload, %.sroa.4194.0.copyload
  %i.n = tail call float @llvm.fmuladd.f32(float %.sroa.0193.0.copyload, float %.sroa.0193.0.copyload, float %i.m)
  %i.o = tail call float @llvm.fmuladd.f32(float %.sroa.5195.0.copyload, float %.sroa.5195.0.copyload, float %i.n)
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %.sroa.6196.0.copyload, float %.sroa.6196.0.copyload, float %i.o)
  %i.q = fdiv float 2.000000e+00, %i.p            ; 3 uses
  %i.r = fmul float %.sroa.0193.0.copyload, %i.q  ; 2 uses
  %i.s = fmul float %.sroa.4194.0.copyload, %i.q  ; 3 uses
  %i.t = fmul float %.sroa.6196.0.copyload, %i.r  ; 2 uses
  %i.u = fmul float %.sroa.6196.0.copyload, %i.s  ; 2 uses
  %i.v = fmul float %.sroa.0193.0.copyload, %i.r  ; 2 uses
  %i.w = fmul float %.sroa.0193.0.copyload, %i.s  ; 2 uses
  %i.x = fmul float %.sroa.5195.0.copyload, %i.q  ; 4 uses
  %i.y = fmul float %.sroa.4194.0.copyload, %i.s  ; 2 uses
  %i.z = fmul float %.sroa.4194.0.copyload, %i.x  ; 2 uses
  %i.aa = fmul float %.sroa.0193.0.copyload, %i.x ; 2 uses
  %i.ab = fmul float %.sroa.5195.0.copyload, %i.x ; 2 uses
  %i.ac = fmul float %.sroa.6196.0.copyload, %i.x ; 2 uses
  %i.ad = fadd float %i.y, %i.ab
  %i.ae = fadd float %i.v, %i.ab
  %i.af = fsub float 1.000000e+00, %i.ae          ; 2 uses
  %i.ag = fadd float %i.w, %i.ac                  ; 2 uses
  %i.ah = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.w, i64 1
  %i.ai = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ac, i64 1
  %i.ak = fsub <2 x float> %i.ah, %i.aj           ; 4 uses
  %i.al = fsub float %i.z, %i.t                   ; 3 uses
  %i.am = fadd float %i.aa, %i.u                  ; 3 uses
  %i.an = fadd float %i.z, %i.t                   ; 3 uses
  %i.ao = fsub float %i.aa, %i.u                  ; 3 uses
  %i.ap = fadd float %i.v, %i.y
  %i.aq = fsub float 1.000000e+00, %i.ap          ; 4 uses
  %i.ar = fneg float %i.l                         ; 2 uses
  %i.as = fneg float %i.k                         ; 2 uses
end_hunk_4
