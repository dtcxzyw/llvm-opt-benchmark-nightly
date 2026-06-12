inline.NumInlined: 345
inline.NumDeleted: 170
begin_hunk_0_@_ZN16OpenColorIO_v2_519GradingRGBCurveImplC2ENS_12GradingStyleE:.invoke
  store i32 0, ptr %i.cz, align 4, !tbaa !24
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !12
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #20, !inline_history !28
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !12
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #20, !inline_history !28
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit32

bb.aj:                                            ; preds = %bb.ah
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i29 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i29, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30

bb.al:                                            ; preds = %bb.aj
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i31 = phi i32 [ %i.cy, %bb.ak ], [ %i.di, %bb.al ]
  %i.dj = icmp eq i32 %.0.i.i.i.i31, 1
  br i1 %i.dj, label %bb.am, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit32, !prof !27

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #20
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit32

_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit32: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit27, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.dk = load ptr, ptr %.ptr6, align 8, !tbaa !29 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !12
  %i.dm = load ptr, ptr %i.dl, align 8
  invoke void %i.dm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %bb.an unwind label %bb.bd

bb.an:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit32
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dq = load <2 x ptr>, ptr %5, align 16, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !19 ; 8 uses
  store <2 x ptr> %i.dq, ptr %i.dn, align 8, !tbaa !18
  %.not.i.i.i.i33 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i33, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit37, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  %i.dt = load atomic i64, ptr %i.ds acquire, align 8 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 4294967297
  %i.dv = trunc i64 %i.dt to i32                  ; 2 uses
  br i1 %i.du, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.ds, align 8, !tbaa !22
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 0, ptr %i.dw, align 4, !tbaa !24
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #20, !inline_history !25
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !12
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #20, !inline_history !25
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit37

bb.aq:                                            ; preds = %bb.ao
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i34 = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i.i.i.i34, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ee = add nsw i32 %i.dv, -1
  store i32 %i.ee, ptr %i.ds, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35

bb.as:                                            ; preds = %bb.aq
  %i.ef = atomicrmw volatile add ptr %i.ds, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i.i.i36 = phi i32 [ %i.dv, %bb.ar ], [ %i.ef, %bb.as ]
  %i.eg = icmp eq i32 %.0.i.i.i.i.i.i36, 1
  br i1 %i.eg, label %bb.at, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit37, !prof !27

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #20
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit37

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit37: ; preds = %bb.an, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35, %bb.at
  %i.eh = load ptr, ptr %i.do, align 8, !tbaa !19 ; 8 uses
  %.not.i.i38 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i38, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42, label %bb.au

bb.au:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit37
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 4 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 4294967297
  %i.el = trunc i64 %i.ej to i32                  ; 2 uses
  br i1 %i.ek, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.ei, align 8, !tbaa !22
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i32 0, ptr %i.em, align 4, !tbaa !24
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !12
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #20, !inline_history !28
  %i.eq = load ptr, ptr %i.eh, align 8, !tbaa !12
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #20, !inline_history !28
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42

bb.aw:                                            ; preds = %bb.au
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i39 = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i39, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eu = add nsw i32 %i.el, -1
  store i32 %i.eu, ptr %i.ei, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40

bb.ay:                                            ; preds = %bb.aw
  %i.ev = atomicrmw volatile add ptr %i.ei, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i41 = phi i32 [ %i.el, %bb.ax ], [ %i.ev, %bb.ay ]
  %i.ew = icmp eq i32 %.0.i.i.i.i41, 1
  br i1 %i.ew, label %bb.az, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42, !prof !27

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #20
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42

_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit37, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.ba:                                            ; preds = %.invoke
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.be

bb.bb:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.be

bb.bc:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.be

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit32
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.fa, %bb.bd ], [ %i.ez, %bb.bc ], [ %i.ey, %bb.bb ], [ %i.ex, %bb.ba ]
  %.ptr11 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %.ptr11) #20
  %.ptr11.1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %.ptr11.1) #20
  %.ptr11.2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %.ptr11.2) #20
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %.ptr6) #20
  resume { ptr, i32 } %.pn
}

declare void @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl18createEditableCopyEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_519GradingRGBCurveImplC2ERKSt10shared_ptrIKNS_19GradingBSplineCurveEES6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %6 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_519GradingRGBCurveImplE, i64 16), ptr %0, align 8, !tbaa !12
  %.ptr13 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.ptr13, i8 0, i64 64, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !32     ; 3 uses
  %9 = load ptr, ptr %2, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = insertelement <4 x ptr> poison, ptr %i.a, i64 0
  %13 = insertelement <4 x ptr> %12, ptr %9, i64 1
  %14 = insertelement <4 x ptr> %13, ptr %10, i64 2
  %15 = insertelement <4 x ptr> %14, ptr %11, i64 3
  %.fr = freeze <4 x ptr> %15
  %16 = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %17 = bitcast <4 x i1> %16 to i4
  %i.b = icmp eq i4 %17, 0
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #21
          to label %bb.bl unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #20
  br label %bb.bk

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.bg

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load <2 x ptr>, ptr %5, align 16, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !19   ; 8 uses
  store <2 x ptr> %i.j, ptr %.ptr13, align 8, !tbaa !18
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.l, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !24
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #20, !inline_history !25
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #20, !inline_history !25
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %bb.k ], [ %i.y, %bb.l ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.m, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit, !prof !27

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #20
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !19  ; 8 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ab, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !24
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #20, !inline_history !28
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #20, !inline_history !28
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.q ], [ %i.ao, %bb.r ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.s, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !27

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #20
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.aq = load ptr, ptr %2, align 8, !tbaa !32    ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !12
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %bb.t unwind label %bb.bh

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load <2 x ptr>, ptr %6, align 16, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !19 ; 8 uses
  store <2 x ptr> %i.aw, ptr %i.at, align 8, !tbaa !18
  %.not.i.i.i.i20 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i20, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit24, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.ay, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !24
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #20, !inline_history !25
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #20, !inline_history !25
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit24

bb.w:                                             ; preds = %bb.u
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i21 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i21, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22

bb.y:                                             ; preds = %bb.w
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i23 = phi i32 [ %i.bb, %bb.x ], [ %i.bl, %bb.y ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i23, 1
  br i1 %i.bm, label %bb.z, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit24, !prof !27

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #20
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit24

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit24: ; preds = %bb.t, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22, %bb.z
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !19 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit29, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.bo, align 8, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !24
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #20, !inline_history !28
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #20, !inline_history !28
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit29

bb.ac:                                            ; preds = %bb.aa
end_hunk_0
