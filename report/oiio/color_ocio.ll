Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/color_ocio?download=true
inline.NumInlined: 6229
inline.NumDeleted: 1603
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_7ustringEbS2_S2_:bb.a
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.ah
  %.pn32.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn32.pn.pn.pn.pn, %bb.dj ], [ %i.dd, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %bb.ed

bb.dl:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.f
  %i.mn = phi ptr [ %.pre136, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ null, %bb.f ]
  %i.mo = phi ptr [ %.pre135, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.aa, %bb.f ]
  store ptr %i.mn, ptr %21, align 8, !tbaa !381
  %i.mp = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !333 ; 3 uses
  store ptr %i.mr, ptr %i.mp, align 8, !tbaa !333
  %.not.i.i.i101 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i101, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEC2ERKS3_.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8 ; 3 uses
  %i.mt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !317
  %.not.i.i.i.i102 = icmp eq i8 %i.mt, 0
  br i1 %.not.i.i.i.i102, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.mu = load i32, ptr %i.ms, align 4, !tbaa !63
  %i.mv = add nsw i32 %i.mu, 1
  store i32 %i.mv, ptr %i.ms, align 4, !tbaa !63
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEC2ERKS3_.exit

bb.do:                                            ; preds = %bb.dm
  %i.mw = atomicrmw volatile add ptr %i.ms, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEC2ERKS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEC2ERKS3_.exit: ; preds = %bb.dl, %bb.dn, %bb.do
  invoke void @_ZN11OpenImageIO4v3_111ColorConfig4Impl7addprocERKNS0_17ColorProcCacheKeyESt10shared_ptrINS0_14ColorProcessorEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.19") align 8 %0, ptr noundef nonnull align 8 dereferenceable(385) %i.mo, ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull %21)
          to label %bb.dp unwind label %bb.dw

bb.dp:                                            ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEC2ERKS3_.exit
  %i.mx = load ptr, ptr %i.mp, align 8, !tbaa !333 ; 8 uses
  %.not.i.i103 = icmp eq ptr %i.mx, null
  br i1 %.not.i.i103, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8 ; 4 uses
  %i.mz = load atomic i64, ptr %i.my acquire, align 8 ; 2 uses
  %i.na = icmp eq i64 %i.mz, 4294967297
  %i.nb = trunc i64 %i.mz to i32                  ; 2 uses
  br i1 %i.na, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  store i32 0, ptr %i.my, align 8, !tbaa !335
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mx, i64 12
  store i32 0, ptr %i.nc, align 4, !tbaa !336
  %i.nd = load ptr, ptr %i.mx, align 8, !tbaa !338
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nf = load ptr, ptr %i.ne, align 8
  call void %i.nf(ptr noundef nonnull align 8 dereferenceable(16) %i.mx) #38, !inline_history !7
  %i.ng = load ptr, ptr %i.mx, align 8, !tbaa !338
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %i.ni = load ptr, ptr %i.nh, align 8
  call void %i.ni(ptr noundef nonnull align 8 dereferenceable(16) %i.mx) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

bb.ds:                                            ; preds = %bb.dq
  %i.nj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !317
  %.not.i.i.i104 = icmp eq i8 %i.nj, 0
  br i1 %.not.i.i.i104, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.nk = add nsw i32 %i.nb, -1
  store i32 %i.nk, ptr %i.my, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105

bb.du:                                            ; preds = %bb.ds
  %i.nl = atomicrmw volatile add ptr %i.my, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105: ; preds = %bb.du, %bb.dt
  %.0.i.i.i.i106 = phi i32 [ %i.nb, %bb.dt ], [ %i.nl, %bb.du ]
  %i.nm = icmp eq i32 %.0.i.i.i.i106, 1
  br i1 %i.nm, label %bb.dv, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107, !prof !339

bb.dv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mx) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

bb.dw:                                            ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEC2ERKS3_.exit
  %i.nn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #38
  br label %bb.ed

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107: ; preds = %bb.dv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105, %bb.dr, %bb.dp, %bb.e
  %i.no = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !333 ; 8 uses
  %.not.i.i108 = icmp eq ptr %i.np, null
  br i1 %.not.i.i108, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112, label %bb.dx

bb.dx:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 4 uses
  %i.nr = load atomic i64, ptr %i.nq acquire, align 8 ; 2 uses
  %i.ns = icmp eq i64 %i.nr, 4294967297
  %i.nt = trunc i64 %i.nr to i32                  ; 2 uses
  br i1 %i.ns, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  store i32 0, ptr %i.nq, align 8, !tbaa !335
  %i.nu = getelementptr inbounds nuw i8, ptr %i.np, i64 12
  store i32 0, ptr %i.nu, align 4, !tbaa !336
  %i.nv = load ptr, ptr %i.np, align 8, !tbaa !338
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8
  call void %i.nx(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #38, !inline_history !7
  %i.ny = load ptr, ptr %i.np, align 8, !tbaa !338
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  %i.oa = load ptr, ptr %i.nz, align 8
  call void %i.oa(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112

bb.dz:                                            ; preds = %bb.dx
  %i.ob = load i8, ptr @__libc_single_threaded, align 1, !tbaa !317
  %.not.i.i.i109 = icmp eq i8 %i.ob, 0
  br i1 %.not.i.i.i109, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.oc = add nsw i32 %i.nt, -1
  store i32 %i.oc, ptr %i.nq, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110

bb.eb:                                            ; preds = %bb.dz
  %i.od = atomicrmw volatile add ptr %i.nq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110: ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i111 = phi i32 [ %i.nt, %bb.ea ], [ %i.od, %bb.eb ]
  %i.oe = icmp eq i32 %.0.i.i.i.i111, 1
  br i1 %i.oe, label %bb.ec, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112, !prof !339

bb.ec:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112: ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107, %bb.dy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  ret void

bb.ed:                                            ; preds = %bb.dw, %bb.dk
  %.pn39 = phi { ptr, i32 } [ %i.nn, %bb.dw ], [ %.pn32.pn.pn.pn.pn.pn, %bb.dk ]
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  resume { ptr, i32 } %.pn39

bb.ee:                                            ; preds = %bb.de, %bb.dd
  %i.of = landingpad { ptr, i32 }
          catch ptr null
  %i.og = extractvalue { ptr, i32 } %i.of, 0
  call void @__clang_call_terminate(ptr %i.og) #41
  unreachable
}

declare void @_ZNK16OpenColorIO_v2_56Config12getProcessorERKSt10shared_ptrIKNS_7ContextEERKS1_IKNS_14NamedTransformEENS_18TransformDirectionE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.16") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_111ColorConfig21createMatrixTransformENS0_11MatrixParamIfLi4EEEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.19") align 8 captures(none) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readonly captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 !guid !928 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #42 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_121ColorProcessor_MatrixE, i64 16), ptr %i.a, align 16, !tbaa !338
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load <4 x float>, ptr %2, align 1, !tbaa !317 ; 3 uses
  store <4 x float> %i.c, ptr %i.b, align 16, !tbaa !317
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load <4 x float>, ptr %i.e, align 1, !tbaa !317 ; 3 uses
  store <4 x float> %i.f, ptr %i.d, align 16, !tbaa !317
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load <4 x float>, ptr %i.h, align 1, !tbaa !317 ; 3 uses
  store <4 x float> %i.i, ptr %i.g, align 16, !tbaa !317
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = load <4 x float>, ptr %i.k, align 1, !tbaa !317 ; 3 uses
  store <4 x float> %i.l, ptr %i.j, align 16, !tbaa !317
  br i1 %3, label %bb.b, label %_ZN11OpenImageIO4v3_121ColorProcessor_MatrixC2ERKN9Imath_3_18Matrix44IfEEb.exit

bb.b:                                             ; preds = %bb.a
  %i.m = shufflevector <4 x float> %i.c, <4 x float> %i.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.n = shufflevector <4 x float> %i.c, <4 x float> %i.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.o = shufflevector <4 x float> %i.f, <4 x float> %i.l, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.p = shufflevector <4 x float> %i.f, <4 x float> %i.l, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.q = shufflevector <4 x float> %i.m, <4 x float> %i.o, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 10 uses
  %i.r = shufflevector <4 x float> %i.m, <4 x float> %i.o, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.s = shufflevector <4 x float> %i.n, <4 x float> %i.p, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 3 uses
  %i.t = shufflevector <4 x float> %i.n, <4 x float> %i.p, <4 x i32> <i32 3, i32 7, i32 2, i32 6> ; 9 uses
  %i.u = fmul <4 x float> %i.s, %i.t              ; 2 uses
  %i.v = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 8 uses
  %4 = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.w = fmul <4 x float> %i.v, %4
  %i.x = fmul <4 x float> %i.q, %4
  %5 = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.y = fmul <4 x float> %i.v, %5
  %i.z = fsub <4 x float> %i.y, %i.w
  %i.aa = fmul <4 x float> %i.q, %5
  %i.ab = fsub <4 x float> %i.aa, %i.x
  %i.ac = fmul <4 x float> %i.s, %i.v             ; 2 uses
  %6 = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ad = fmul <4 x float> %i.t, %6
  %i.ae = fadd <4 x float> %i.ad, %i.z
  %i.af = fmul <4 x float> %i.q, %6
  %7 = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ag = fmul <4 x float> %i.t, %7
  %i.ah = fsub <4 x float> %i.ae, %i.ag
  %i.ai = fmul <4 x float> %i.q, %7
  %i.aj = fsub <4 x float> %i.ai, %i.af
  %i.ak = fmul <4 x float> %i.r, %i.t             ; 2 uses
  %i.al = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 7 uses
  %8 = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.am = fmul <4 x float> %i.al, %8
  %i.an = fadd <4 x float> %i.am, %i.ah
  %i.ao = fmul <4 x float> %i.q, %8
  %9 = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ap = fmul <4 x float> %i.al, %9
  %i.aq = fsub <4 x float> %i.an, %i.ap           ; 2 uses
  %i.ar = fmul <4 x float> %i.q, %9
  %i.as = fsub <4 x float> %i.ar, %i.ao
  %i.at = fmul <4 x float> %i.q, %i.v             ; 2 uses
  %10 = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.au = fmul <4 x float> %i.t, %10
  %i.av = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.aw = fadd <4 x float> %i.au, %i.av
  %i.ax = fmul <4 x float> %i.al, %10
  %i.ay = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.az = fsub <4 x float> %i.ax, %i.ay
  %11 = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ba = fmul <4 x float> %i.t, %11
  %i.bb = fsub <4 x float> %i.ba, %i.aw
  %i.bc = fmul <4 x float> %i.al, %11
  %i.bd = fsub <4 x float> %i.az, %i.bc
  %i.be = fmul <4 x float> %i.q, %i.t             ; 2 uses
  %12 = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.bf = fmul <4 x float> %i.al, %12
  %i.bg = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bh = fsub <4 x float> %i.bg, %i.bf
  %i.bi = fmul <4 x float> %i.v, %12
  %i.bj = fadd <4 x float> %i.bi, %i.bb
  %13 = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.bk = fmul <4 x float> %i.al, %13
  %i.bl = fadd <4 x float> %i.bk, %i.bh
  %i.bm = fmul <4 x float> %i.v, %13
  %i.bn = fsub <4 x float> %i.bj, %i.bm
  %i.bo = fmul <4 x float> %i.q, %i.al            ; 2 uses
  %14 = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.bp = fmul <4 x float> %i.t, %14
  %i.bq = fadd <4 x float> %i.bp, %i.bl
  %i.br = fmul <4 x float> %i.v, %14
  %i.bs = fsub <4 x float> %i.bd, %i.br
  %15 = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.bt = fmul <4 x float> %i.t, %15
  %i.bu = fsub <4 x float> %i.bq, %i.bt
  %i.bv = fmul <4 x float> %i.v, %15
  %i.bw = fadd <4 x float> %i.bv, %i.bs
  %i.bx = fmul <4 x float> %i.q, %i.aq            ; 2 uses
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bz = fadd <4 x float> %i.bx, %i.by           ; 2 uses
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.cb = fadd <4 x float> %i.bz, %i.ca
  %i.cc = extractelement <4 x float> %i.cb, i64 0 ; 2 uses
  %i.cd = fdiv float 1.000000e+00, %i.cc          ; 3 uses
  %i.ce = fmul float %i.cd, 2.000000e+00
  %i.cf = fneg float %i.cd
  %i.cg = fmul float %i.cc, %i.cf
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cd, float %i.ce)
  %i.ci = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ck = fmul <4 x float> %i.aq, %i.cj
  %i.cl = fmul <4 x float> %i.bu, %i.cj
  %i.cm = fmul <4 x float> %i.bn, %i.cj
  %i.cn = fmul <4 x float> %i.bw, %i.cj
  store <4 x float> %i.ck, ptr %i.b, align 16
  store <4 x float> %i.cl, ptr %i.d, align 16
  store <4 x float> %i.cm, ptr %i.g, align 16
  store <4 x float> %i.cn, ptr %i.j, align 16
  br label %_ZN11OpenImageIO4v3_121ColorProcessor_MatrixC2ERKN9Imath_3_18Matrix44IfEEb.exit

_ZN11OpenImageIO4v3_121ColorProcessor_MatrixC2ERKN9Imath_3_18Matrix44IfEEb.exit: ; preds = %bb.b, %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !381
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.co, align 8, !tbaa !333
  %i.cp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #42
          to label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEC2INS1_21ColorProcessor_MatrixEvEEPT_.exit unwind label %bb.c ; 5 uses

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_121ColorProcessor_MatrixC2ERKN9Imath_3_18Matrix44IfEEb.exit
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  %i.cs = tail call ptr @__cxa_begin_catch(ptr %i.cr) #38 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #40
  invoke void @__cxa_rethrow() #39
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ct

bb.f:                                             ; preds = %bb.d
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  tail call void @__clang_call_terminate(ptr %i.cv) #41
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEC2INS1_21ColorProcessor_MatrixEvEEPT_.exit: ; preds = %_ZN11OpenImageIO4v3_121ColorProcessor_MatrixC2ERKN9Imath_3_18Matrix44IfEEb.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 1, ptr %i.cw, align 8, !tbaa !335
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 1, ptr %i.cx, align 4, !tbaa !336
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN11OpenImageIO4v3_121ColorProcessor_MatrixELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cp, align 8, !tbaa !338
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %i.a, ptr %i.cy, align 8, !tbaa !438
  store ptr %i.cp, ptr %i.co, align 8, !tbaa !333
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_111ColorConfig25getColorSpaceFromFilepathENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !guid !929 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !397    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !324
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.d = load ptr, ptr %2, align 8, !tbaa !307    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !308  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !328
  %i.h = icmp eq ptr %i.d, null
  %i.i = icmp ne i64 %i.f, 0
  %or.cond.i.i.i = and i1 %i.h, %i.i
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.107) #39
  unreachable

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.f, ptr %i.a, align 8, !tbaa !329
  %i.j = icmp ugt i64 %i.f, 15
  br i1 %i.j, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !315
  %i.l = load i64, ptr %i.a, align 8, !tbaa !329
  store i64 %i.l, ptr %i.g, align 8, !tbaa !317
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.m = phi ptr [ %i.k, %.noexc.i.i.i ], [ %i.g, %bb.d ] ; 2 uses
  switch i64 %i.f, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.n = load i8, ptr %i.d, align 1, !tbaa !317
  store i8 %i.n, ptr %i.m, align 1, !tbaa !317
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !329  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !316
  %i.q = load ptr, ptr %3, align 8, !tbaa !315
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.s = load ptr, ptr %1, align 8, !tbaa !397
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !324
  %i.u = load ptr, ptr %3, align 8, !tbaa !315
  %i.v = invoke noundef ptr @_ZNK16OpenColorIO_v2_56Config25getColorSpaceFromFilepathEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %i.u)
          to label %bb.h unwind label %bb.j       ; 3 uses

bb.h:                                             ; preds = %bb.g
  store ptr %i.v, ptr %0, align 8, !tbaa !307
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #38
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %bb.h, %bb.i
  %i.x = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !308
  %i.z = load ptr, ptr %3, align 8, !tbaa !315    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.g
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !317
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %3, align 8, !tbaa !315   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.g
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.j
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !317
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  resume { ptr, i32 } %i.ad

bb.k:                                             ; preds = %bb.b, %bb.a
  %i.ai = load ptr, ptr %2, align 8, !tbaa !307
  store ptr %i.ai, ptr %4, align 8, !tbaa !307
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !308
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !308
  call void @_ZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %4)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
