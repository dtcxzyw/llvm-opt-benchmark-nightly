Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/octree?download=true
inline.NumInlined: 1810
inline.NumDeleted: 715
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv6Octree4Impl11insertPointERKNS_7Point3_IfEES5_:bb.a
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #29, !inline_history !3
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #29, !inline_history !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i9.i.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i9.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ak, %bb.m ], [ %i.au, %bb.n ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.av, label %bb.o, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !44

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #29
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.s, ptr %i.ac, align 8, !tbaa !36
  br label %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit

_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit:        ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv10OctreeNodeEEET_.exit
  %i.aw = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit
  store i32 0, ptr %i.z, align 8, !tbaa !38
  store i32 0, ptr %i.aa, align 4, !tbaa !39
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #29, !inline_history !0
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #29, !inline_history !0
  br label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = add nsw i32 %i.ay, -1
  store i32 %i.bg, ptr %i.z, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bh = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i = phi i32 [ %i.ay, %bb.r ], [ %i.bh, %bb.s ]
  %i.bi = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bi, label %bb.t, label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #29
  br label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p, %bb.a
  %i.bj = load ptr, ptr %0, align 8, !tbaa !51    ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  %i.bl = load <2 x float>, ptr %1, align 4, !tbaa !46 ; 5 uses
  %i.bm = extractelement <2 x float> %i.bl, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 156
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !53 ; 4 uses
  %i.bq = tail call noundef float @llvm.fabs.f32(float %i.bp) ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 160
  %i.bs = load float, ptr %i.br, align 8, !tbaa !54 ; 3 uses
  %i.bt = tail call noundef float @llvm.fabs.f32(float %i.bs) ; 2 uses
  %i.bu = fcmp olt float %i.bq, %i.bt
  %.sroa.speculated.i = select i1 %i.bu, float %i.bt, float %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 144
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !45
  %i.bx = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bl) ; 2 uses
  %i.by = load float, ptr %i.bn, align 4, !tbaa !214
  %i.bz = load <2 x float>, ptr %i.bk, align 8, !tbaa !46 ; 3 uses
  %i.ca = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bz) ; 2 uses
  %i.cb = fcmp olt <2 x float> %i.bx, %i.ca
  %i.cc = select <2 x i1> %i.cb, <2 x float> %i.ca, <2 x float> %i.bx ; 2 uses
  %i.cd = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.sroa.speculated.i, i64 2
  %i.ce = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cg = fmul <4 x float> %i.cf, <float f0x34000000, float f0x34000000, float f0x34000000, float -0.000000e+00> ; 3 uses
  %i.ch = extractelement <4 x float> %i.cg, i64 1
  %i.ci = fadd float %i.bm, %i.ch
  %i.cj = extractelement <4 x float> %i.cg, i64 2
  %i.ck = fadd float %i.bp, %i.cj
  %i.cl = fptrunc double %i.bw to float
  %i.cm = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cn = insertelement <2 x float> %i.cm, float %i.cl, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cp = fmul <4 x float> %i.co, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float f0x34000000>
  %i.cq = shufflevector <2 x float> %i.bl, <2 x float> %i.bz, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.cr = insertelement <4 x float> %i.cq, float %i.bs, i64 2
  %i.cs = fadd <4 x float> %i.cr, %i.cg
  %i.ct = fadd <4 x float> %i.cs, %i.cp
  %i.cu = fcmp oge float %i.ci, %i.by
  %i.cv = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cw = insertelement <4 x float> %i.cv, float %i.bp, i64 2
  %i.cx = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cy = shufflevector <4 x float> %i.cw, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cz = fcmp ole <4 x float> %i.cy, %i.ct
  %i.da = fcmp oge float %i.ck, %i.bs
  %i.db = freeze <4 x i1> %i.cz
  %i.dc = bitcast <4 x i1> %i.db to i4
  %i.dd = icmp eq i4 %i.dc, -1
  %.fr = freeze i1 %i.cu
  %op.rdx = and i1 %i.dd, %.fr
  %op.rdx152 = select i1 %op.rdx, i1 %i.da, i1 false
  %i.de = getelementptr inbounds nuw i8, ptr %i.bj, i64 136
  %i.df = load i32, ptr %i.de, align 8, !tbaa !31
  %i.dg = icmp ne i32 %i.df, 0
  %or.cond = or i1 %i.dg, %op.rdx152              ; 2 uses
  br i1 %or.cond, label %bb.u, label %bb.bs

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dj = load double, ptr %i.di, align 8, !tbaa !58 ; 2 uses
  %i.dk = load <2 x float>, ptr %i.dh, align 8, !tbaa !46
  %i.dl = fsub <2 x float> %i.bl, %i.dk
  %i.dm = fpext <2 x float> %i.dl to <2 x double>
  %i.dn = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = fdiv <2 x double> %i.dm, %i.do          ; 2 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 0
  %i.dr = tail call double @llvm.floor.f64(double %i.dq)
  %i.ds = fptoui double %i.dr to i64
  %i.dt = extractelement <2 x double> %i.dp, i64 1
  %i.du = tail call double @llvm.floor.f64(double %i.dt)
  %i.dv = fptoui double %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !87
  %i.dy = fsub float %i.bp, %i.dx
  %i.dz = fpext float %i.dy to double
  %i.ea = fdiv double %i.dz, %i.dj
  %i.eb = tail call double @llvm.floor.f64(double %i.ea)
  %i.ec = fptoui double %i.eb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.bj, ptr %3, align 8, !tbaa !51
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !36 ; 3 uses
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !36
  %.not.i.i.i.i44 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i44, label %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i45 = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i.i45, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !43
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !43
  br label %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit

bb.x:                                             ; preds = %bb.v
  %i.ek = atomicrmw volatile add ptr %i.eg, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !51
  br label %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit

_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit:        ; preds = %bb.u, %bb.w, %bb.x
  %i.el = phi ptr [ %i.bj, %bb.u ], [ %i.bj, %bb.w ], [ %.pre, %bb.x ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 136
  %i.en = load i32, ptr %i.em, align 8, !tbaa !31
  %i.eo = load i32, ptr %i.a, align 8, !tbaa !71
  %.not121 = icmp eq i32 %i.en, %i.eo
  br i1 %.not121, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit, %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit76
  %i.ep = phi ptr [ %i.iz, %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit76 ], [ %i.el, %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit ] ; 5 uses
  %.031122 = phi i64 [ %i.ja, %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit76 ], [ %i.e, %_ZN2cv3PtrINS_10OctreeNodeEEC2ERKS2_.exit ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 144
  %i.er = load double, ptr %i.eq, align 8, !tbaa !45
  %i.es = fmul double %i.er, 5.000000e-01         ; 2 uses
  %i.et = and i64 %.031122, %i.ec
  %.not.i = icmp eq i64 %i.et, 0
  %i.eu = select i1 %.not.i, i8 0, i8 4           ; 2 uses
  %i.ev = and i64 %.031122, %i.dv
  %.not3.i = icmp eq i64 %i.ev, 0
  %i.ew = select i1 %.not3.i, i8 0, i8 2          ; 2 uses
  %i.ex = and i64 %.031122, %i.ds
  %i.ey = icmp ne i64 %i.ex, 0                    ; 2 uses
  %i.ez = zext i1 %i.ey to i8
  %i.fa = or disjoint i8 %i.eu, %i.ez
  %4 = or disjoint i8 %i.fa, %i.ew                ; 2 uses
  %5 = zext nneg i8 %4 to i64
  %6 = lshr exact i8 %i.ew, 1
  %7 = lshr exact i8 %i.eu, 2
  %i.fb = uitofp i1 %i.ey to float
  %i.fc = uitofp nneg i8 %6 to float
  %i.fd = uitofp nneg i8 %7 to float
  %i.fe = fptrunc double %i.es to float           ; 2 uses
  %i.ff = fmul float %i.fd, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ep, i64 152
  %i.fh = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %i.fc, i64 1
  %i.fj = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x float> %i.fi, %i.fk
  %i.fm = load <2 x float>, ptr %i.fg, align 8, !tbaa !46
  %i.fn = fadd <2 x float> %i.fm, %i.fl
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ep, i64 160
  %i.fp = load float, ptr %i.fo, align 8, !tbaa !53
  %i.fq = fadd float %i.fp, %i.ff
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %5 ; 5 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !51 ; 2 uses
  %.not115 = icmp eq ptr %i.fs, null
  br i1 %.not115, label %bb.y, label %bb.au

bb.y:                                             ; preds = %.lr.ph
  %i.ft = invoke noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #30
          to label %bb.z unwind label %bb.at      ; 13 uses

bb.z:                                             ; preds = %bb.y
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ep, i64 136
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !31
  %i.fw = add nsw i32 %i.fv, 1
  %i.fx = zext nneg i8 %4 to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ft, i8 0, i64 128, i1 false)
  store i32 %i.fw, ptr %i.fy, align 8, !tbaa !31
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 144
  store double %i.es, ptr %i.fz, align 8, !tbaa !45
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ft, i64 152
  store <2 x float> %i.fn, ptr %i.ga, align 8
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 160
  store float %i.fq, ptr %.sroa.5108.0..sroa_idx, align 8, !tbaa !46
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 164
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ft, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %i.gb, i8 0, i64 140, i1 false)
  store i32 %i.fx, ptr %i.gc, align 8, !tbaa !32
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ft, i64 308
  store i8 0, ptr %i.gd, align 4, !tbaa !33
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ft, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ge, i8 0, i64 48, i1 false)
  %i.gf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %bb.ae unwind label %bb.aa     ; 11 uses

bb.aa:                                            ; preds = %bb.z
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  %i.gi = tail call ptr @__cxa_begin_catch(ptr %i.gh) #29 ; 0 uses
  tail call void @_ZN2cv10OctreeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %i.ft) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef 360) #32
  invoke void @__cxa_rethrow() #31
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  tail call void @__clang_call_terminate(ptr %i.gl) #33
  unreachable

bb.ad:                                            ; preds = %bb.aa
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 7 uses
  store i32 1, ptr %i.gm, align 8, !tbaa !38
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 12 ; 2 uses
  store i32 1, ptr %i.gn, align 4, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gf, align 8, !tbaa !41
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store ptr %i.ft, ptr %i.go, align 8, !tbaa !86
  store ptr %i.ft, ptr %i.fr, align 8, !tbaa !51
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 3 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i50 = icmp eq ptr %i.gf, %i.gq
  br i1 %.not.i.i.i.i50, label %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit60, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i52 = icmp eq i8 %i.gr, 0
  br i1 %.not.i.i.i.i.i52, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 2, ptr %i.gm, align 8, !tbaa !43
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i53

bb.ah:                                            ; preds = %bb.af
  %i.gs = atomicrmw volatile add ptr %i.gm, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i59 = load ptr, ptr %i.gp, align 8, !tbaa !36
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i53

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i53: ; preds = %bb.ah, %bb.ag
  %i.gt = phi ptr [ %.pr.pre.i.i.i.i59, %bb.ah ], [ %i.gq, %bb.ag ] ; 8 uses
  %.not8.i.i.i.i54 = icmp eq ptr %i.gt, null
  br i1 %.not8.i.i.i.i54, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i58, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i53
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 4 uses
  %i.gv = load atomic i64, ptr %i.gu acquire, align 8 ; 2 uses
  %i.gw = icmp eq i64 %i.gv, 4294967297
  %i.gx = trunc i64 %i.gv to i32                  ; 2 uses
  br i1 %i.gw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.gu, align 8, !tbaa !38
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  store i32 0, ptr %i.gy, align 4, !tbaa !39
  %i.gz = load ptr, ptr %i.gt, align 8, !tbaa !41
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8
  tail call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gt) #29, !inline_history !3
  %i.hc = load ptr, ptr %i.gt, align 8, !tbaa !41
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.he = load ptr, ptr %i.hd, align 8
  tail call void %i.he(ptr noundef nonnull align 8 dereferenceable(16) %i.gt) #29, !inline_history !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i58

bb.ak:                                            ; preds = %bb.ai
  %i.hf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i9.i.i.i.i55 = icmp eq i8 %i.hf, 0
  br i1 %.not.i9.i.i.i.i55, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hg = add nsw i32 %i.gx, -1
  store i32 %i.hg, ptr %i.gu, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i56

bb.am:                                            ; preds = %bb.ak
  %i.hh = atomicrmw volatile add ptr %i.gu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i56

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i56: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i57 = phi i32 [ %i.gx, %bb.al ], [ %i.hh, %bb.am ]
  %i.hi = icmp eq i32 %.0.i.i.i.i.i.i57, 1
  br i1 %i.hi, label %bb.an, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i58, !prof !44

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i56
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gt) #29
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i58

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i58: ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i56, %bb.aj, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i53
  store ptr %i.gf, ptr %i.gp, align 8, !tbaa !36
  br label %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit60

_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit60:      ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i58, %bb.ae
  %i.hj = load atomic i64, ptr %i.gm acquire, align 8 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 4294967297
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  br i1 %i.hk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit60
  store i32 0, ptr %i.gm, align 8, !tbaa !38
  store i32 0, ptr %i.gn, align 4, !tbaa !39
  %i.hm = load ptr, ptr %i.gf, align 8, !tbaa !41
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8
  tail call void %i.ho(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #29, !inline_history !0
  %i.hp = load ptr, ptr %i.gf, align 8, !tbaa !41
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8
  tail call void %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #29, !inline_history !0
  br label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit65

bb.ap:                                            ; preds = %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit60
  %i.hs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i62 = icmp eq i8 %i.hs, 0
  br i1 %.not.i.i.i62, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ht = add nsw i32 %i.hl, -1
  store i32 %i.ht, ptr %i.gm, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i63

bb.ar:                                            ; preds = %bb.ap
  %i.hu = atomicrmw volatile add ptr %i.gm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i63

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i63: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i64 = phi i32 [ %i.hl, %bb.aq ], [ %i.hu, %bb.ar ]
  %i.hv = icmp eq i32 %.0.i.i.i.i64, 1
  br i1 %i.hv, label %bb.as, label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit65, !prof !44

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i63
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #29
  br label %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit65

_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit65: ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i63, %bb.as
  %i.hw = load ptr, ptr %3, align 8, !tbaa !51
  %i.hx = load ptr, ptr %i.fr, align 8, !tbaa !51 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 128
  store ptr %i.hw, ptr %i.hy, align 8, !tbaa !88
  br label %bb.au

bb.at:                                            ; preds = %bb.y
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit65, %.lr.ph
  %i.ia = phi ptr [ %i.hx, %_ZNSt12__shared_ptrIN2cv10OctreeNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit65 ], [ %i.fs, %.lr.ph ] ; 2 uses
  store ptr %i.ia, ptr %3, align 8, !tbaa !51
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !36 ; 4 uses
  %i.id = load ptr, ptr %i.ed, align 8, !tbaa !36 ; 3 uses
  %.not.i.i.i.i66 = icmp eq ptr %i.ic, %i.id
  br i1 %.not.i.i.i.i66, label %_ZN2cv3PtrINS_10OctreeNodeEEaSERKS2_.exit76, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not7.i.i.i.i67 = icmp eq ptr %i.ic, null
  br i1 %.not7.i.i.i.i67, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i69, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 3 uses
  %i.if = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i68 = icmp eq i8 %i.if, 0
  br i1 %.not.i.i.i.i.i68, label %bb.ay, label %bb.ax

end_hunk_0
