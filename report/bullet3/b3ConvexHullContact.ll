Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3ConvexHullContact?download=true
inline.NumInlined: 2655
inline.NumDeleted: 497
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_Z33b3FindConcaveSeparatingAxisKernelP6b3Int4PK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataPK9b3Vector3SC_PK9b3GpuFacePKiPK15b3GpuChildShapeP6b3AabbPSA_S0_SN_SN_SN_Piiii:bb.a
  %i.bx = fcmp ogt float %i.bk, -1.000000e+30
  %i.by = insertelement <2 x float> %i.bo, float -1.000000e+30, i64 1
  %.sroa.0.0.i197 = select i1 %i.bx, <2 x float> %i.by, <2 x float> splat (float -1.000000e+30) ; 3 uses
  %.sroa.0.4.vec.extract.i198 = extractelement <2 x float> %.sroa.0.0.i197, i64 1
  %i.bz = fcmp olt float %.sroa.0.4.vec.extract.i198, %.sroa.7326.0.copyload
  %i.ca = shufflevector <2 x float> %.sroa.0.0.i197, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.cb = shufflevector <3 x float> %i.ca, <3 x float> %i.bj, <2 x i32> <i32 0, i32 4>
  %.sroa.0.1.i200 = select i1 %i.bz, <2 x float> %i.cb, <2 x float> %.sroa.0.0.i197 ; 4 uses
  %i.cc = fcmp ogt float %i.bl, -1.000000e+30
  %.sroa.6.0.i203 = select i1 %i.cc, <2 x float> %i.bv, <2 x float> <float -1.000000e+30, float 0.000000e+00> ; 3 uses
  %.sroa.6.12.vec.extract.i204 = extractelement <2 x float> %.sroa.6.0.i203, i64 1
  %i.cd = fcmp olt float %.sroa.6.12.vec.extract.i204, %.sroa.13.0.copyload
  %.sroa.6.12.vec.insert.i205 = insertelement <2 x float> %.sroa.6.0.i203, float %.sroa.13.0.copyload, i64 1
  %.sroa.6.1.i206 = select i1 %i.cd, <2 x float> %.sroa.6.12.vec.insert.i205, <2 x float> %.sroa.6.0.i203 ; 2 uses
  %.sroa.7326.0.copyload.1 = load float, ptr %.sroa.7326.0..sroa_idx.1, align 4 ; 3 uses
  %i.ce = load <3 x float>, ptr %i.bb, align 16   ; 7 uses
  %i.cf = extractelement <3 x float> %i.ce, i64 0 ; 3 uses
  store float %i.cf, ptr %i.bc, align 16
  store float %.sroa.7326.0.copyload.1, ptr %.sroa.7326.0..sroa_idx327.1, align 4
  %i.cg = extractelement <3 x float> %i.ce, i64 2 ; 3 uses
  store float %i.cg, ptr %.sroa.10.0..sroa_idx331.1, align 8
  %i.ch = fadd <3 x float> %i.bm, %i.ce
  %.sroa.0.0.vec.extract.i.1 = extractelement <2 x float> %.sroa.0.1.i, i64 0
  %i.ci = fcmp olt float %i.cf, %.sroa.0.0.vec.extract.i.1
  %i.cj = shufflevector <3 x float> %i.ce, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %sel = select i1 %i.ci, <2 x float> %i.cj, <2 x float> %.sroa.0.1.i ; 2 uses
  %.sroa.0.0.i.1 = shufflevector <2 x float> %sel, <2 x float> %.sroa.0.1.i, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.extract.i.1 = extractelement <2 x float> %.sroa.0.1.i, i64 1
  %i.ck = fcmp olt float %.sroa.7326.0.copyload.1, %.sroa.0.4.vec.extract.i.1
  %i.cl = shufflevector <2 x float> %sel, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.cm = shufflevector <3 x float> %i.cl, <3 x float> %i.ce, <2 x i32> <i32 0, i32 4>
  %.sroa.0.1.i.1 = select i1 %i.ck, <2 x float> %i.cm, <2 x float> %.sroa.0.0.i.1 ; 4 uses
  %.sroa.6.8.vec.extract.i.1 = extractelement <2 x float> %.sroa.6.1.i, i64 0
  %i.cn = fcmp olt float %i.cg, %.sroa.6.8.vec.extract.i.1
  %i.co = shufflevector <3 x float> %i.ce, <3 x float> poison, <2 x i32> <i32 2, i32 poison> ; 2 uses
  %.sroa.6.0.i.1 = select i1 %i.cn, <2 x float> %i.co, <2 x float> %.sroa.6.1.i
  %.sroa.0.0.vec.extract.i195.1 = extractelement <2 x float> %.sroa.0.1.i200, i64 0
  %i.cp = fcmp olt float %.sroa.0.0.vec.extract.i195.1, %i.cf
  %sel408 = select i1 %i.cp, <2 x float> %i.cj, <2 x float> %.sroa.0.1.i200 ; 2 uses
  %.sroa.0.0.i197.1 = shufflevector <2 x float> %sel408, <2 x float> %.sroa.0.1.i200, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.extract.i198.1 = extractelement <2 x float> %.sroa.0.1.i200, i64 1
  %i.cq = fcmp olt float %.sroa.0.4.vec.extract.i198.1, %.sroa.7326.0.copyload.1
  %i.cr = shufflevector <2 x float> %sel408, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.cs = shufflevector <3 x float> %i.cr, <3 x float> %i.ce, <2 x i32> <i32 0, i32 4>
  %.sroa.0.1.i200.1 = select i1 %i.cq, <2 x float> %i.cs, <2 x float> %.sroa.0.0.i197.1 ; 4 uses
  %.sroa.6.8.vec.extract.i201.1 = extractelement <2 x float> %.sroa.6.1.i206, i64 0
  %i.ct = fcmp olt float %.sroa.6.8.vec.extract.i201.1, %i.cg
  %.sroa.6.0.i203.1 = select i1 %i.ct, <2 x float> %i.co, <2 x float> %.sroa.6.1.i206
  %.sroa.7326.0.copyload.2 = load float, ptr %.sroa.7326.0..sroa_idx.2, align 4 ; 6 uses
  %i.cu = load <3 x float>, ptr %i.bi, align 16   ; 8 uses
  %.sroa.13.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %.sroa.13.0.copyload.2 = load float, ptr %.sroa.13.0..sroa_idx.2, align 4, !tbaa !37
  %i.cv = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  %i.cw = extractelement <3 x float> %i.cu, i64 0 ; 4 uses
  store float %i.cw, ptr %i.cv, align 16
  %.sroa.7326.0..sroa_idx327.2 = getelementptr inbounds nuw i8, ptr %20, i64 36 ; 2 uses
  store float %.sroa.7326.0.copyload.2, ptr %.sroa.7326.0..sroa_idx327.2, align 4
  %.sroa.10.0..sroa_idx331.2 = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.cx = extractelement <3 x float> %i.cu, i64 2 ; 7 uses
  store float %i.cx, ptr %.sroa.10.0..sroa_idx331.2, align 8
  %.sroa.13.0..sroa_idx335.2 = getelementptr inbounds nuw i8, ptr %20, i64 44
  store float %.sroa.13.0.copyload.2, ptr %.sroa.13.0..sroa_idx335.2, align 4, !tbaa !37
  %i.cy = fadd <3 x float> %i.ch, %i.cu
  %.sroa.0.0.vec.extract.i.2 = extractelement <2 x float> %.sroa.0.1.i.1, i64 0
  %i.cz = fcmp olt float %i.cw, %.sroa.0.0.vec.extract.i.2
  %i.da = shufflevector <3 x float> %i.cu, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %sel409 = select i1 %i.cz, <2 x float> %i.da, <2 x float> %.sroa.0.1.i.1 ; 2 uses
  %.sroa.0.0.i.2 = shufflevector <2 x float> %sel409, <2 x float> %.sroa.0.1.i.1, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.extract.i.2 = extractelement <2 x float> %.sroa.0.1.i.1, i64 1
  %i.db = fcmp olt float %.sroa.7326.0.copyload.2, %.sroa.0.4.vec.extract.i.2
  %i.dc = shufflevector <2 x float> %sel409, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.dd = shufflevector <3 x float> %i.dc, <3 x float> %i.cu, <2 x i32> <i32 0, i32 4>
  %.sroa.0.1.i.2 = select i1 %i.db, <2 x float> %i.dd, <2 x float> %.sroa.0.0.i.2 ; 2 uses
  %.sroa.6.8.vec.extract.i.2 = extractelement <2 x float> %.sroa.6.0.i.1, i64 0 ; 2 uses
  %i.de = fcmp olt float %i.cx, %.sroa.6.8.vec.extract.i.2
  %.sroa.0.0.vec.extract.i195.2 = extractelement <2 x float> %.sroa.0.1.i200.1, i64 0
  %i.df = fcmp olt float %.sroa.0.0.vec.extract.i195.2, %i.cw
  %sel410 = select i1 %i.df, <2 x float> %i.da, <2 x float> %.sroa.0.1.i200.1 ; 2 uses
  %.sroa.0.0.i197.2 = shufflevector <2 x float> %sel410, <2 x float> %.sroa.0.1.i200.1, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.extract.i198.2 = extractelement <2 x float> %.sroa.0.1.i200.1, i64 1
  %i.dg = fcmp olt float %.sroa.0.4.vec.extract.i198.2, %.sroa.7326.0.copyload.2
  %i.dh = shufflevector <2 x float> %sel410, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.di = shufflevector <3 x float> %i.dh, <3 x float> %i.cu, <2 x i32> <i32 0, i32 4>
  %.sroa.0.1.i200.2 = select i1 %i.dg, <2 x float> %i.di, <2 x float> %.sroa.0.0.i197.2 ; 2 uses
  %.sroa.6.8.vec.extract.i201.2 = extractelement <2 x float> %.sroa.6.0.i203.1, i64 0 ; 2 uses
  %i.dj = fcmp olt float %.sroa.6.8.vec.extract.i201.2, %i.cx
  %.sroa.0338.0.vec.extract = extractelement <2 x float> %.sroa.0.1.i.2, i64 0
  %i.dk = getelementptr inbounds [32 x i8], ptr %9, i64 %i.j ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load float, ptr %i.dl, align 16, !tbaa !37
  %i.dn = fcmp ogt float %.sroa.0338.0.vec.extract, %i.dm
  br i1 %i.dn, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.11342.16.vec.extract = extractelement <2 x float> %.sroa.0.1.i200.2, i64 0
  %i.do = load float, ptr %i.dk, align 16, !tbaa !37
  %i.dp = fcmp uge float %.sroa.11342.16.vec.extract, %i.do
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.dq = phi i1 [ false, %bb.c ], [ %i.dp, %bb.d ]
  %.sroa.7340.8.vec.extract = select i1 %i.de, float %i.cx, float %.sroa.6.8.vec.extract.i.2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !37
  %i.dt = fcmp ogt float %.sroa.7340.8.vec.extract, %i.ds
  br i1 %i.dt, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.16.24.vec.extract = select i1 %i.dj, float %i.cx, float %.sroa.6.8.vec.extract.i201.2
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dv = load float, ptr %i.du, align 8, !tbaa !37
  %i.dw = fcmp uge float %.sroa.16.24.vec.extract, %i.dv
  %spec.select188 = select i1 %i.dw, i1 %i.dq, i1 false
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dx = phi i1 [ false, %bb.e ], [ %spec.select188, %bb.f ]
  %.sroa.0338.4.vec.extract = extractelement <2 x float> %.sroa.0.1.i.2, i64 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !37
  %i.ea = fcmp ogt float %.sroa.0338.4.vec.extract, %i.dz
  br i1 %i.ea, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.11342.20.vec.extract = extractelement <2 x float> %.sroa.0.1.i200.2, i64 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !37
  %i.ed = fcmp uge float %.sroa.11342.20.vec.extract, %i.ec
  %spec.select189 = select i1 %i.ed, i1 %i.dx, i1 false
  br i1 %spec.select189, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float f0x7F7FFFFF, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  store <2 x float> <float 1.000000e+00, float 2.000000e+00>, ptr %21, align 16
  %i.ee = getelementptr inbounds nuw i8, ptr %21, i64 8
  store <2 x float> <float 3.000000e+00, float 4.000000e+00>, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %19, i64 88
  store i32 3, ptr %i.ef, align 8, !tbaa !47
  %i.eg = getelementptr inbounds nuw i8, ptr %19, i64 84
  store i32 0, ptr %i.eg, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.eh = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.ei = load float, ptr %i.eh, align 8, !tbaa !37 ; 2 uses
  %i.ej = load float, ptr %.sroa.10.0..sroa_idx331, align 8, !tbaa !37 ; 5 uses
  %i.ek = fsub float %i.ei, %i.ej
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ek, i64 0
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.459.0..sroa_idx, align 8, !tbaa !37
  %i.el = load <2 x float>, ptr %i.bc, align 16, !tbaa !37 ; 2 uses
  %i.em = shufflevector <3 x float> %i.cu, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.en = insertelement <2 x float> %i.em, float %.sroa.7326.0.copyload.2, i64 1
  %i.eo = fsub <2 x float> %i.en, %i.el
  %i.ep = fsub float %i.cx, %i.ei
  %.sroa.3.12.vec.insert.i.i211 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ep, i64 0
  %i.eq = getelementptr inbounds nuw i8, ptr %22, i64 16
  store <2 x float> %i.eo, ptr %i.eq, align 16
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i.i211, ptr %.sroa.457.0..sroa_idx, align 8, !tbaa !37
  %i.er = fsub float %i.ej, %i.cx
  %.sroa.3.12.vec.insert.i.i216 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.er, i64 0
  %i.es = getelementptr inbounds nuw i8, ptr %22, i64 32
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i.i216, ptr %.sroa.455.0..sroa_idx, align 8, !tbaa !37
  %i.et = getelementptr inbounds nuw i8, ptr %19, i64 68
  store i32 0, ptr %i.et, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.eu = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 0, ptr %i.eu, align 16, !tbaa !50
  %i.ev = extractelement <3 x float> %i.am, i64 0 ; 2 uses
  store float %i.ev, ptr %23, align 16, !tbaa !37
  %i.ew = getelementptr inbounds nuw i8, ptr %23, i64 4
  store float %.sroa.475.0.copyload, ptr %i.ew, align 4, !tbaa !37
  %i.ex = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ey = extractelement <3 x float> %i.am, i64 2 ; 3 uses
  store float %i.ey, ptr %i.ex, align 8, !tbaa !37
  %i.ez = getelementptr inbounds nuw i8, ptr %23, i64 12
  store float %.sroa.6.0.copyload, ptr %i.ez, align 4, !tbaa !37
  %i.fa = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 3, ptr %i.fa, align 4, !tbaa !51
  %i.fb = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %23, i64 48
  store i32 3, ptr %i.fc, align 16, !tbaa !50
  store <4 x i32> <i32 0, i32 1, i32 2, i32 2>, ptr %i.b, align 16, !tbaa !38
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fe = fneg float %i.ev
  store float %i.fe, ptr %i.fb, align 16, !tbaa !37
  %i.ff = fneg float %.sroa.475.0.copyload
  %i.fg = getelementptr inbounds nuw i8, ptr %23, i64 36
  store float %i.ff, ptr %i.fg, align 4, !tbaa !37
  %i.fh = fneg float %i.ey
  %i.fi = getelementptr inbounds nuw i8, ptr %23, i64 40
  store float %i.fh, ptr %i.fi, align 8, !tbaa !37
  %i.fj = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.fk = getelementptr inbounds nuw i8, ptr %23, i64 52
  store i32 3, ptr %i.fk, align 4, !tbaa !51
  %i.fl = load <2 x float>, ptr %20, align 16, !tbaa !37 ; 4 uses
  %i.fm = load float, ptr %.sroa.7326.0..sroa_idx327, align 4, !tbaa !37 ; 3 uses
  %i.fn = extractelement <2 x float> %i.fl, i64 0
  %i.fo = insertelement <2 x float> %i.fl, float %i.fm, i64 1
  %i.fp = fsub <2 x float> %i.el, %i.fo
  store <2 x float> %i.fp, ptr %22, align 16
  %i.fq = fsub float %i.fn, %i.cw
  %i.fr = fsub float %i.fm, %.sroa.7326.0.copyload.2
  %.sroa.0.0.vec.insert.i.i214 = insertelement <2 x float> poison, float %i.fq, i64 0
  %.sroa.0.4.vec.insert.i.i215 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i214, float %i.fr, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i215, ptr %i.es, align 16
  %i.fs = shufflevector <3 x float> %i.cu, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %i.ft = insertelement <4 x float> %i.fs, float %.sroa.7326.0.copyload.2, i64 3
  %i.fu = shufflevector <2 x float> %i.fl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> %i.ft, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fw = shufflevector <4 x float> %i.fu, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 poison, i32 0, i32 1>
  %i.fx = insertelement <4 x float> %i.fw, float %i.ej, i64 1
  %i.fy = fsub <4 x float> %i.fv, %i.fx           ; 4 uses
  %i.fz = fneg <4 x float> %i.fy
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.gb = shufflevector <3 x float> %i.am, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.gc = shufflevector <2 x float> %i.fl, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gd = fneg <4 x float> %i.fy
  %i.ge = shufflevector <4 x float> %i.gc, <4 x float> %i.gd, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.gf = shufflevector <2 x float> %i.ga, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x float> %i.ge, <4 x float> %i.gf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gh = fmul <4 x float> %i.gb, %i.gg
  %i.gi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.fy, <4 x float> %i.gh) ; 4 uses
  %i.gj = extractelement <4 x float> %i.gi, i64 0
  %i.gk = tail call noundef float @llvm.fmuladd.f32(float %i.ey, float %i.ej, float %i.gj)
  store float %i.gk, ptr %i.fj, align 4, !tbaa !37
  %i.gl = extractelement <4 x float> %i.gi, i64 2 ; 3 uses
  %i.gm = fmul float %i.gl, %i.gl
  %i.gn = extractelement <4 x float> %i.gi, i64 1 ; 3 uses
  %i.go = tail call float @llvm.fmuladd.f32(float %i.gn, float %i.gn, float %i.gm)
  %i.gp = extractelement <4 x float> %i.gi, i64 3 ; 3 uses
  %i.gq = tail call noundef float @llvm.fmuladd.f32(float %i.gp, float %i.gp, float %i.go)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.gq)
  %i.gr = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.gs = fmul float %i.gn, %i.gr                 ; 2 uses
  %i.gt = fmul float %i.gl, %i.gr                 ; 2 uses
  %i.gu = fmul float %i.gp, %i.gr                 ; 2 uses
  %i.gv = fmul float %i.fm, %i.gt
  %29 = extractelement <4 x float> %i.fy, i64 0
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.gs, float %29, float %i.gv)
  %i.gx = tail call noundef float @llvm.fmuladd.f32(float %i.gu, float %i.ej, float %i.gw)
  %i.gy = fneg float %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ha = getelementptr inbounds nuw i8, ptr %23, i64 84
  store i32 2, ptr %i.ha, align 4, !tbaa !51
  %i.hb = getelementptr inbounds nuw i8, ptr %23, i64 80
  store i32 6, ptr %i.hb, align 16, !tbaa !50
  store <4 x i32> <i32 1, i32 0, i32 0, i32 2>, ptr %i.fd, align 16, !tbaa !38
  store float %i.gs, ptr %i.gz, align 16, !tbaa !37
  %i.hc = getelementptr inbounds nuw i8, ptr %23, i64 68
  store float %i.gt, ptr %i.hc, align 4, !tbaa !37
  %i.hd = getelementptr inbounds nuw i8, ptr %23, i64 72
  store float %i.gu, ptr %i.hd, align 8, !tbaa !37
  %i.he = getelementptr inbounds nuw i8, ptr %23, i64 76
  store float %i.gy, ptr %i.he, align 4, !tbaa !37
  %.sroa.0297.0.copyload.1 = load float, ptr %i.bc, align 16 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %23, i64 96
  %i.hg = getelementptr inbounds nuw i8, ptr %23, i64 116
  store i32 2, ptr %i.hg, align 4, !tbaa !51
  %i.hh = getelementptr inbounds nuw i8, ptr %23, i64 112
  store i32 8, ptr %i.hh, align 16, !tbaa !50
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hj = load <2 x float>, ptr %.sroa.7326.0..sroa_idx327.1, align 4 ; 5 uses
  %i.hk = load <2 x float>, ptr %.sroa.7326.0..sroa_idx327, align 4
  %i.hl = load <3 x float>, ptr %20, align 16
  %i.hm = shufflevector <3 x float> %i.hl, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.hn = insertelement <2 x float> %i.hj, float %.sroa.0297.0.copyload.1, i64 0
  %i.ho = fsub <2 x float> %i.hm, %i.hn           ; 2 uses
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hq = fsub <2 x float> %i.hk, %i.hj           ; 2 uses
  %i.hr = fneg <2 x float> %i.hq
  %i.hs = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.ht = fmul <2 x float> %i.hs, %i.hr
  %i.hu = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.hv = insertelement <2 x float> %i.hu, float %.sroa.475.0.copyload, i64 0 ; 2 uses
  %i.hw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hv, <2 x float> %i.hp, <2 x float> %i.ht) ; 3 uses
  %i.hx = extractelement <2 x float> %i.hj, i64 1
  %i.hy = getelementptr inbounds nuw i8, ptr %23, i64 104
  %i.hz = getelementptr inbounds nuw i8, ptr %23, i64 108
  %.sroa.0297.0.copyload.2 = load float, ptr %i.cv, align 16 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.ib = getelementptr inbounds nuw i8, ptr %23, i64 148
  store i32 2, ptr %i.ib, align 4, !tbaa !51
  %i.ic = getelementptr inbounds nuw i8, ptr %23, i64 144
  store i32 10, ptr %i.ic, align 16, !tbaa !50
  store <4 x i32> <i32 1, i32 0, i32 2, i32 1>, ptr %i.hi, align 16, !tbaa !38
  %i.id = load <2 x float>, ptr %.sroa.7326.0..sroa_idx327.2, align 4 ; 3 uses
  %i.ie = fsub float %.sroa.0297.0.copyload.1, %.sroa.0297.0.copyload.2 ; 2 uses
  %i.if = fsub <2 x float> %i.hj, %i.id           ; 3 uses
  %i.ig = fneg <2 x float> %i.if
  %i.ih = fmul <2 x float> %i.hs, %i.ig
  %i.ii = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ij = insertelement <2 x float> %i.ii, float %i.ie, i64 1
  %i.ik = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hv, <2 x float> %i.ij, <2 x float> %i.ih) ; 3 uses
  %i.il = insertelement <2 x float> %i.ho, float %i.ie, i64 1
  %i.im = fneg <2 x float> %i.il
  %i.in = insertelement <2 x float> poison, float %.sroa.475.0.copyload, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = fmul <2 x float> %i.io, %i.im
  %i.iq = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ir = shufflevector <2 x float> %i.hq, <2 x float> %i.if, <2 x i32> <i32 0, i32 2>
  %i.is = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iq, <2 x float> %i.ir, <2 x float> %i.ip) ; 4 uses
  %i.it = shufflevector <2 x float> %i.hw, <2 x float> %i.ik, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.iu = fmul <2 x float> %i.it, %i.it
  %i.iv = shufflevector <2 x float> %i.hw, <2 x float> %i.ik, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.iw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iv, <2 x float> %i.iv, <2 x float> %i.iu)
  %i.ix = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.is, <2 x float> %i.is, <2 x float> %i.iw)
  %i.iy = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ix)
  %i.iz = fdiv <2 x float> splat (float 1.000000e+00), %i.iy ; 4 uses
  %i.ja = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jb = fmul <2 x float> %i.hw, %i.ja           ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.is, %i.iz
  %i.jc = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %shift = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop395 = fmul <2 x float> %i.hj, %shift
  %i.jd = extractelement <2 x float> %foldExtExtBinop395, i64 0
  %i.je = extractelement <2 x float> %i.jb, i64 0
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.je, float %.sroa.0297.0.copyload.1, float %i.jd)
  %i.jg = tail call noundef float @llvm.fmuladd.f32(float %i.jc, float %i.hx, float %i.jf)
  %i.jh = fneg float %i.jg
  store <2 x float> %i.jb, ptr %i.hf, align 16, !tbaa !37
  store float %i.jc, ptr %i.hy, align 8, !tbaa !37
  store float %i.jh, ptr %i.hz, align 4, !tbaa !37
  %i.ji = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jj = fmul <2 x float> %i.ik, %i.ji           ; 3 uses
  %foldExtExtBinop397 = fmul <2 x float> %i.is, %i.iz
  %i.jk = extractelement <2 x float> %foldExtExtBinop397, i64 1 ; 2 uses
  %shift399 = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop400 = fmul <2 x float> %i.id, %shift399
  %i.jl = extractelement <2 x float> %foldExtExtBinop400, i64 0
  %i.jm = extractelement <2 x float> %i.jj, i64 0
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.jm, float %.sroa.0297.0.copyload.2, float %i.jl)
  %i.jo = extractelement <2 x float> %i.id, i64 1
  %i.jp = tail call noundef float @llvm.fmuladd.f32(float %i.jk, float %i.jo, float %i.jn)
  %i.jq = fneg float %i.jp
  store <2 x float> %i.jj, ptr %i.ia, align 16, !tbaa !37
  %i.jr = getelementptr inbounds nuw i8, ptr %23, i64 136
  store float %i.jk, ptr %i.jr, align 8, !tbaa !37
  %i.js = getelementptr inbounds nuw i8, ptr %23, i64 140
  store float %i.jq, ptr %i.js, align 4, !tbaa !37
  %i.jt = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i32 5, ptr %i.jt, align 8, !tbaa !42
  %i.ju = fmul <3 x float> %i.cy, splat (float f0x3EAAAAAB) ; 3 uses
  %i.jv = shufflevector <3 x float> %i.ju, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.jw = shufflevector <3 x float> %i.ju, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.jx = insertelement <2 x float> %i.jw, float 0.000000e+00, i64 1
  store <2 x float> %i.jv, ptr %19, align 16
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store <2 x float> %i.jx, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %24, ptr noundef nonnull align 16 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !40
  %i.jy = getelementptr inbounds nuw i8, ptr %24, i64 12
  store float 0.000000e+00, ptr %i.jy, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %25, ptr noundef nonnull align 16 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !40
  %i.jz = getelementptr inbounds nuw i8, ptr %25, i64 12
  store float 0.000000e+00, ptr %i.jz, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  %i.ka = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %26, ptr noundef nonnull align 16 dereferenceable(16) %i.ka, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  %i.kb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %27, ptr noundef nonnull align 16 dereferenceable(16) %i.kb, i64 16, i1 false)
  %i.kc = load i32, ptr %i.r, align 4, !tbaa !36
  %i.kd = icmp eq i32 %i.kc, 6
  br i1 %i.kd, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %i.ke = load <2 x float>, ptr %25, align 16
  %.sroa.26.48..sroa_idx.i251.phi.trans.insert = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.sroa.26.48.copyload.i252.pre = load float, ptr %.sroa.26.48..sroa_idx.i251.phi.trans.insert, align 8
  %i.kf = load <4 x float>, ptr %27, align 16, !tbaa !37
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.kg = load <2 x float>, ptr %25, align 16
  %i.kh = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !37
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [48 x i8], ptr %8, i64 %i.kj ; 5 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.km = load i32, ptr %i.kl, align 16, !tbaa !37
  %.sroa.4279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %.sroa.5280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 16 ; 3 uses
  %.sroa.25.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %25, i64 4
  %.sroa.25.48.copyload.i = load float, ptr %.sroa.25.48..sroa_idx.i, align 4
  %.sroa.26.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %.sroa.26.48.copyload.i = load float, ptr %.sroa.26.48..sroa_idx.i, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.kp = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !37 ; 6 uses
  %.sroa.0274.0.copyload = load float, ptr %i.kn, align 16
  %i.kr = load <3 x float>, ptr %i.kn, align 16   ; 2 uses
  %i.ks = shufflevector <3 x float> %i.kr, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.kt = load <4 x float>, ptr %i.kn, align 16   ; 2 uses
  %i.ku = load float, ptr %27, align 16, !tbaa !37 ; 6 uses
  %i.kv = load <3 x float>, ptr %27, align 16, !tbaa !37 ; 4 uses
  %i.kw = extractelement <3 x float> %i.kv, i64 1 ; 5 uses
  %i.kx = fmul float %i.kw, %i.kw
  %i.ky = tail call float @llvm.fmuladd.f32(float %i.ku, float %i.ku, float %i.kx)
  %i.kz = extractelement <3 x float> %i.kv, i64 2 ; 4 uses
  %i.la = tail call float @llvm.fmuladd.f32(float %i.kz, float %i.kz, float %i.ky)
  %i.lb = tail call noundef float @llvm.fmuladd.f32(float %i.kq, float %i.kq, float %i.la)
  %i.lc = fdiv float 2.000000e+00, %i.lb          ; 3 uses
  %i.ld = fneg <3 x float> %i.kv
  %i.le = shufflevector <3 x float> %i.ld, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2> ; 2 uses
  %i.lf = fneg float %.sroa.0274.0.copyload
  %i.lg = shufflevector <3 x float> %i.kv, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.lh = shufflevector <4 x float> %i.kt, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.li = insertelement <2 x float> %i.lh, float %i.lf, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.lk = fmul <4 x float> %i.lg, %i.lj
  %i.ll = insertelement <4 x float> poison, float %i.kq, i64 0
  %i.lm = shufflevector <4 x float> %i.ll, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ln = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lm, <4 x float> %i.kt, <4 x float> %i.lk)
  %i.lo = shufflevector <4 x float> %i.lg, <4 x float> %i.le, <4 x i32> <i32 1, i32 2, i32 0, i32 6>
  %i.lp = shufflevector <3 x float> %i.kr, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.lq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lo, <4 x float> %i.lp, <4 x float> %i.ln)
  %i.lr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.le, <4 x float> %i.ks, <4 x float> %i.lq) ; 3 uses
  %i.ls = shufflevector <4 x float> %i.lr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.lt = shufflevector <4 x float> %i.lr, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %i.ls, ptr %27, align 16
  store <2 x float> %i.lt, ptr %i.ko, align 8
  %i.lu = sext i32 %i.km to i64
  %i.lv = getelementptr inbounds [16 x i8], ptr %2, i64 %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 12
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !37
  %.sroa.0278.0.copyload = load float, ptr %i.kk, align 16 ; 3 uses
  %.sroa.4279.0.copyload = load float, ptr %.sroa.4279.0..sroa_idx, align 4 ; 3 uses
  %.sroa.5280.0.copyload = load float, ptr %.sroa.5280.0..sroa_idx, align 8 ; 3 uses
  %i.ly = fmul float %i.ku, %i.lc                 ; 2 uses
  %i.lz = fmul float %i.kw, %i.lc                 ; 3 uses
  %i.ma = fmul float %i.kz, %i.lc                 ; 4 uses
  %i.mb = fmul float %i.kq, %i.ly                 ; 2 uses
  %i.mc = fmul float %i.kq, %i.lz                 ; 2 uses
  %i.md = fmul float %i.kq, %i.ma                 ; 2 uses
  %i.me = fmul float %i.ku, %i.ly                 ; 2 uses
  %i.mf = fmul float %i.ku, %i.lz                 ; 2 uses
  %i.mg = fmul float %i.ku, %i.ma                 ; 2 uses
end_hunk_0
