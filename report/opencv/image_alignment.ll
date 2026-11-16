Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/image_alignment?download=true
inline.NumInlined: 666
inline.NumDeleted: 132
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@main:._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %bb.jh

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread930: ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  %i.mf = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i32 0, ptr %i.mf, align 8, !tbaa !28
  %i.mg = getelementptr inbounds nuw i8, ptr %33, i64 20
  store i32 0, ptr %i.mg, align 4, !tbaa !29
  store i32 16842752, ptr %33, align 8, !tbaa !26
  %i.mh = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr %26, ptr %i.mh, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  %i.mi = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i64 0, ptr %i.mj, align 8
  store i32 33619968, ptr %34, align 8, !tbaa !26
  store ptr %28, ptr %i.mi, align 8, !tbaa !27
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, i64 927712936152, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 5)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread930
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %35) #22
  %i.mk = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.bi unwind label %bb.bu     ; 2 uses

bb.bi:                                            ; preds = %bb.bh
  %.not.i = icmp eq i64 %i.mk, 0
  %i.ml = select i1 %.not.i, i64 4294967295, i64 %i.mk ; 8 uses
  switch i32 %.0146, label %default.unreachable1107 [
    i32 0, label %bb.bk
    i32 1, label %bb.br
    i32 2, label %bb.bz
    i32 3, label %bb.cg
  ]

bb.bj:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread930
  %i.mm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %bb.jh

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store i32 2, ptr %i.i, align 4, !tbaa !21
  %i.mn = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 3, ptr %i.mn, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  %i.mo = and i64 %i.ml, 4294967295
  %i.mp = mul nuw i64 %i.mo, 4164903690
  %i.mq = lshr i64 %i.ml, 32
  %i.mr = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store float 1.000000e+00, ptr %i.mr, align 16, !tbaa !31
  %i.ms = add nuw i64 %i.mp, %i.mq                ; 3 uses
  %i.mt = trunc i64 %i.ms to i32
  %i.mu = uitofp i32 %i.mt to float
  %i.mv = mul i64 %i.ms, 4164903690
  %i.mw = lshr i64 %i.ms, 32
  %i.mx = add i64 %i.mv, %i.mw
  %i.my = trunc i64 %i.mx to i32
  %i.mz = uitofp i32 %i.my to float
  %i.na = insertelement <2 x float> poison, float %i.mu, i64 0
  %i.nb = insertelement <2 x float> %i.na, float %i.mz, i64 1
  %i.nc = fmul nnan <2 x float> %i.nb, splat (float f0x2F800000)
  %i.nd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nc, <2 x float> splat (float 1.000000e+01), <2 x float> splat (float 1.000000e+01)) ; 2 uses
  %i.ne = shufflevector <2 x float> %i.nd, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.nf = shufflevector <4 x float> <float 1.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  store <4 x float> %i.nf, ptr %i.j, align 16, !tbaa !31
  %i.ng = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.nh = extractelement <2 x float> %i.nd, i64 1
  store float %i.nh, ptr %i.ng, align 4, !tbaa !31
  invoke void @_ZN2cv3MatC2IfEESt16initializer_listIiES2_IT_E(ptr noundef nonnull align 8 dereferenceable(208) %36, ptr nonnull %i.i, i64 2, ptr nonnull %i.j, i64 6)
          to label %_ZN2cv4Mat_IfEC2ESt16initializer_listIiES2_IfE.exit unwind label %bb.bn

_ZN2cv4Mat_IfEC2ESt16initializer_listIiES2_IfE.exit: ; preds = %bb.bk
  %i.ni = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 8 dereferenceable(208) %36)
          to label %bb.bl unwind label %bb.bo     ; 0 uses

bb.bl:                                            ; preds = %_ZN2cv4Mat_IfEC2ESt16initializer_listIiES2_IfE.exit
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  %i.nj = getelementptr inbounds nuw i8, ptr %37, i64 16
  store i32 0, ptr %i.nj, align 8, !tbaa !28
  %i.nk = getelementptr inbounds nuw i8, ptr %37, i64 20
  store i32 0, ptr %i.nk, align 4, !tbaa !29
  store i32 16842752, ptr %37, align 8, !tbaa !26
  %i.nl = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %28, ptr %i.nl, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  %i.nm = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.nn = getelementptr inbounds nuw i8, ptr %38, i64 16
  store i64 0, ptr %i.nn, align 8
  store i32 33619968, ptr %38, align 8, !tbaa !26
  store ptr %29, ptr %i.nm, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  %i.no = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i32 0, ptr %i.no, align 8, !tbaa !28
  %i.np = getelementptr inbounds nuw i8, ptr %39, i64 20
  store i32 0, ptr %i.np, align 4, !tbaa !29
  store i32 16842752, ptr %39, align 8, !tbaa !26
  %i.nq = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr %35, ptr %i.nq, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %40, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv10warpAffineERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(24) %39, i64 858993459400, i32 noundef 17, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %40, i32 noundef 0)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  br label %bb.cn

bb.bn:                                            ; preds = %bb.bk
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %_ZN2cv4Mat_IfEC2ESt16initializer_listIiES2_IfE.exit
  %i.ns = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #22
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn183 = phi { ptr, i32 } [ %i.ns, %bb.bo ], [ %i.nr, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %bb.co

bb.bq:                                            ; preds = %bb.bl
  %i.nt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  br label %bb.co

bb.br:                                            ; preds = %bb.bi
  %i.nu = and i64 %i.ml, 4294967295
  %i.nv = mul nuw i64 %i.nu, 4164903690
  %i.nw = lshr i64 %i.ml, 32
  %i.nx = add nuw i64 %i.nv, %i.nw                ; 3 uses
  %i.ny = shl i64 %i.nx, 32
  %i.nz = and i64 %i.nx, 4294967295
  %i.oa = mul nuw i64 %i.nz, 4164903690
  %i.ob = lshr i64 %i.nx, 32
  %i.oc = add nuw i64 %i.oa, %i.ob                ; 2 uses
  %i.od = and i64 %i.oc, 4294967295               ; 2 uses
  %i.oe = or disjoint i64 %i.od, %i.ny
  %i.of = uitofp i64 %i.oe to double
  %i.og = fmul nnan double %i.of, f0x3BF0000000000000
  %i.oh = call nnan double @llvm.fmuladd.f64(double %i.og, double 4.000000e+00, double -2.000000e+00)
  %i.oi = fmul nnan double %i.oh, f0x400921FB54442D18
  %i.oj = fdiv double %i.oi, 1.800000e+02
  %i.ok = fadd double %i.oj, f0x3FBACEE9F37BEBD5  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  store i32 2, ptr %i.k, align 4, !tbaa !21
  %i.ol = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 3, ptr %i.ol, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  %i.om = call double @cos(double noundef %i.ok) #22
  %i.on = fptrunc double %i.om to float
  store float %i.on, ptr %i.l, align 4, !tbaa !31
  %i.oo = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.op = call double @sin(double noundef %i.ok) #22
  %i.oq = mul nuw i64 %i.od, 4164903690
  %i.or = lshr i64 %i.oc, 32
  %i.os = add nuw i64 %i.oq, %i.or                ; 3 uses
  %i.ot = trunc i64 %i.os to i32
  %i.ou = uitofp i32 %i.ot to float
  %i.ov = fmul nnan float %i.ou, f0x2F800000
  %i.ow = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ox = call double @cos(double noundef %i.ok) #22
  %i.oy = mul i64 %i.os, 4164903690
  %i.oz = lshr i64 %i.os, 32
  %i.pa = add i64 %i.oy, %i.oz
  %i.pb = trunc i64 %i.pa to i32
  %i.pc = uitofp i32 %i.pb to float
  %i.pd = fmul nnan float %i.pc, f0x2F800000
  %i.pe = insertelement <2 x double> poison, double %i.op, i64 0
  %i.pf = insertelement <2 x double> %i.pe, double %i.ox, i64 1
  %i.pg = fptrunc <2 x double> %i.pf to <2 x float> ; 2 uses
  %i.ph = extractelement <2 x float> %i.pg, i64 0
  %i.pi = fneg float %i.ph
  store float %i.pi, ptr %i.oo, align 4, !tbaa !31
  %i.pj = insertelement <4 x float> poison, float %i.ov, i64 0
  %i.pk = shufflevector <2 x float> %i.pg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pl = shufflevector <4 x float> %i.pj, <4 x float> %i.pk, <4 x i32> <i32 0, i32 4, i32 5, i32 poison> ; 2 uses
  %i.pm = insertelement <4 x float> %i.pl, float %i.pd, i64 3
  %i.pn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pm, <4 x float> <float 1.000000e+01, float poison, float poison, float 1.000000e+01>, <4 x float> <float 1.000000e+01, float poison, float poison, float 1.000000e+01>)
  %101 = shufflevector <4 x float> %i.pn, <4 x float> %i.pl, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %101, ptr %i.ow, align 4, !tbaa !31
  invoke void @_ZN2cv3MatC2IfEESt16initializer_listIiES2_IT_E(ptr noundef nonnull align 8 dereferenceable(208) %41, ptr nonnull %i.k, i64 2, ptr nonnull %i.l, i64 6)
          to label %_ZN2cv4Mat_IfEC2ESt16initializer_listIiES2_IfE.exit445 unwind label %bb.bv

_ZN2cv4Mat_IfEC2ESt16initializer_listIiES2_IfE.exit445: ; preds = %bb.br
  %i.po = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 8 dereferenceable(208) %41)
          to label %bb.bs unwind label %bb.bw     ; 0 uses

bb.bs:                                            ; preds = %_ZN2cv4Mat_IfEC2ESt16initializer_listIiES2_IfE.exit445
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  %i.pp = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i32 0, ptr %i.pp, align 8, !tbaa !28
  %i.pq = getelementptr inbounds nuw i8, ptr %42, i64 20
  store i32 0, ptr %i.pq, align 4, !tbaa !29
  store i32 16842752, ptr %42, align 8, !tbaa !26
  %i.pr = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %28, ptr %i.pr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  %i.ps = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.pt = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i64 0, ptr %i.pt, align 8
  store i32 33619968, ptr %43, align 8, !tbaa !26
  store ptr %29, ptr %i.ps, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  %i.pu = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i32 0, ptr %i.pu, align 8, !tbaa !28
  %i.pv = getelementptr inbounds nuw i8, ptr %44, i64 20
  store i32 0, ptr %i.pv, align 4, !tbaa !29
  store i32 16842752, ptr %44, align 8, !tbaa !26
  %i.pw = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %35, ptr %i.pw, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %45, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv10warpAffineERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %44, i64 858993459400, i32 noundef 17, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %45, i32 noundef 0)
          to label %bb.bt unwind label %bb.by

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %bb.cn

bb.bu:                                            ; preds = %bb.bh
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.bv:                                            ; preds = %bb.br
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %_ZN2cv4Mat_IfEC2ESt16initializer_listIiES2_IfE.exit445
  %i.pz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #22
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn177 = phi { ptr, i32 } [ %i.pz, %bb.bw ], [ %i.py, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  br label %bb.co

bb.by:                                            ; preds = %bb.bs
  %i.qa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %bb.co

bb.bz:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #22
  store i32 2, ptr %i.m, align 4, !tbaa !21
  %i.qb = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 3, ptr %i.qb, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #22
  %i.qc = and i64 %i.ml, 4294967295
  %i.qd = mul nuw i64 %i.qc, 4164903690
  %i.qe = lshr i64 %i.ml, 32
  %i.qf = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.qg = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.qh = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.qi = add nuw i64 %i.qd, %i.qe                ; 3 uses
  %i.qj = and i64 %i.qi, 4294967295
  %i.qk = mul nuw i64 %i.qj, 4164903690
  %i.ql = lshr i64 %i.qi, 32
  %i.qm = add nuw i64 %i.qk, %i.ql                ; 3 uses
  %i.qn = and i64 %i.qm, 4294967295
  %i.qo = mul nuw i64 %i.qn, 4164903690
  %i.qp = lshr i64 %i.qm, 32
  %i.qq = add nuw i64 %i.qo, %i.qp                ; 3 uses
  %i.qr = and i64 %i.qq, 4294967295
  %i.qs = mul nuw i64 %i.qr, 4164903690
  %i.qt = lshr i64 %i.qq, 32
  %i.qu = add nuw i64 %i.qs, %i.qt                ; 3 uses
  %i.qv = and i64 %i.qu, 4294967295
  %i.qw = mul nuw i64 %i.qv, 4164903690
  %i.qx = lshr i64 %i.qu, 32
  %i.qy = add nuw i64 %i.qw, %i.qx                ; 3 uses
  %i.qz = mul i64 %i.qy, 4164903690
  %i.ra = lshr i64 %i.qy, 32
  %i.rb = add i64 %i.qz, %i.ra
  %i.rc = trunc i64 %i.qi to i32
  %i.rd = insertelement <4 x i32> poison, i32 %i.rc, i64 0
  %i.re = trunc i64 %i.qu to i32
  %i.rf = insertelement <4 x i32> %i.rd, i32 %i.re, i64 1
  %i.rg = trunc i64 %i.qy to i32
  %i.rh = insertelement <4 x i32> %i.rf, i32 %i.rg, i64 2
  %i.ri = trunc i64 %i.rb to i32
  %i.rj = insertelement <4 x i32> %i.rh, i32 %i.ri, i64 3
  %i.rk = uitofp <4 x i32> %i.rj to <4 x float>
  %i.rl = fmul nnan <4 x float> %i.rk, splat (float f0x2F800000)
  %i.rm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rl, <4 x float> <float 1.000000e-01, float 6.000000e-02, float 1.000000e-01, float 1.000000e+01>, <4 x float> <float -5.000000e-02, float -3.000000e-02, float -5.000000e-02, float 1.000000e+01>) ; 3 uses
  %i.rn = trunc i64 %i.qm to i32
  %i.ro = uitofp i32 %i.rn to float
  %i.rp = trunc i64 %i.qq to i32
  %i.rq = uitofp i32 %i.rp to float
  %i.rr = insertelement <2 x float> poison, float %i.ro, i64 0
  %i.rs = insertelement <2 x float> %i.rr, float %i.rq, i64 1
  %i.rt = fmul nnan <2 x float> %i.rs, splat (float f0x2F800000)
  %i.ru = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rt, <2 x float> <float 6.000000e-02, float 1.000000e+01>, <2 x float> <float -3.000000e-02, float 1.000000e+01>)
  store <2 x float> %i.ru, ptr %i.qf, align 4, !tbaa !31
  %i.rv = extractelement <4 x float> %i.rm, i64 1
  store float %i.rv, ptr %i.qg, align 4, !tbaa !31
  %i.rw = shufflevector <4 x float> %i.rm, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.rx = fsub <2 x float> splat (float 1.000000e+00), %i.rw ; 2 uses
  %i.ry = extractelement <2 x float> %i.rx, i64 0
  store float %i.ry, ptr %i.n, align 4, !tbaa !31
  %i.rz = extractelement <2 x float> %i.rx, i64 1
  store float %i.rz, ptr %i.qh, align 4, !tbaa !31
  %i.sa = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.sb = extractelement <4 x float> %i.rm, i64 3
  store float %i.sb, ptr %i.sa, align 4, !tbaa !31
  invoke void @_ZN2cv3MatC2IfEESt16initializer_listIiES2_IT_E(ptr noundef nonnull align 8 dereferenceable(208) %46, ptr nonnull %i.m, i64 2, ptr nonnull %i.n, i64 6)
          to label %_ZN2cv4Mat_IfEC2ESt16initializer_listIiES2_IfE.exit447 unwind label %bb.cc

_ZN2cv4Mat_IfEC2ESt16initializer_listIiES2_IfE.exit447: ; preds = %bb.bz
  %i.sc = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 8 dereferenceable(208) %46)
          to label %bb.ca unwind label %bb.cd     ; 0 uses

bb.ca:                                            ; preds = %_ZN2cv4Mat_IfEC2ESt16initializer_listIiES2_IfE.exit447
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %46) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  %i.sd = getelementptr inbounds nuw i8, ptr %47, i64 16
  store i32 0, ptr %i.sd, align 8, !tbaa !28
  %i.se = getelementptr inbounds nuw i8, ptr %47, i64 20
  store i32 0, ptr %i.se, align 4, !tbaa !29
  store i32 16842752, ptr %47, align 8, !tbaa !26
  %i.sf = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr %28, ptr %i.sf, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  %i.sg = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.sh = getelementptr inbounds nuw i8, ptr %48, i64 16
  store i64 0, ptr %i.sh, align 8
  store i32 33619968, ptr %48, align 8, !tbaa !26
  store ptr %29, ptr %i.sg, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #22
  %i.si = getelementptr inbounds nuw i8, ptr %49, i64 16
  store i32 0, ptr %i.si, align 8, !tbaa !28
  %i.sj = getelementptr inbounds nuw i8, ptr %49, i64 20
  store i32 0, ptr %i.sj, align 4, !tbaa !29
  store i32 16842752, ptr %49, align 8, !tbaa !26
  %i.sk = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %35, ptr %i.sk, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %50, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv10warpAffineERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(24) %49, i64 858993459400, i32 noundef 17, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %50, i32 noundef 0)
          to label %bb.cb unwind label %bb.cf

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  br label %bb.cn

bb.cc:                                            ; preds = %bb.bz
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %_ZN2cv4Mat_IfEC2ESt16initializer_listIiES2_IfE.exit447
  %i.sm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %46) #22
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
end_hunk_0
