inline.NumInlined: 1159
inline.NumDeleted: 369
begin_hunk_0_@_ZN16OpenColorIO_v2_511ConfigUtils30getReferenceSpaceFromSRGBSpaceERKSt10shared_ptrIKNS_6ConfigEEPKcRKS1_IKNS_10ColorSpaceEES6_:bb.a

bb.dr:                                            ; preds = %bb.dp
  %i.jv = atomicrmw volatile add ptr %i.ji, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90: ; preds = %bb.dr, %bb.dq
  %.0.i.i.i.i91 = phi i32 [ %i.jl, %bb.dq ], [ %i.jv, %bb.dr ]
  %i.jw = icmp eq i32 %.0.i.i.i.i91, 1
  br i1 %i.jw, label %bb.ds, label %_ZNSt6vectorIfSaIfEED2Ev.exit, !prof !32

bb.ds:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jh) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.dm, %bb.do, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef 72) #23
  %i.jx = ptrtoint ptr %i.je to i64
  %i.jy = ptrtoint ptr %i.jf to i64
  %i.jz = sub i64 %i.jx, %i.jy
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jz) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.dx

bb.dt:                                            ; preds = %bb.dl, %bb.ax
  %i.ka = phi ptr [ %i.jd, %bb.dl ], [ %i.di, %bb.ax ]
  %.pre.pre.pre.pre = phi ptr [ %.pre.pre.pre.pre.pre, %bb.dl ], [ %i.dh, %bb.ax ]
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.dl ], [ %i.dt, %bb.ax ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #21
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.aw
  %i.kb = phi ptr [ %i.ka, %bb.dt ], [ %i.di, %bb.aw ]
  %.pre.pre.pre = phi ptr [ %.pre.pre.pre.pre, %bb.dt ], [ %i.dh, %bb.aw ]
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.dt ], [ %i.ds, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #21
  br label %bb.dv

bb.dv:                                            ; preds = %bb.av, %bb.du
  %i.kc = phi ptr [ %i.kb, %bb.du ], [ %i.di, %bb.av ]
  %.pre.pre = phi ptr [ %.pre.pre.pre, %bb.du ], [ %i.dh, %bb.av ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.du ], [ %i.dr, %bb.av ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef 72) #23
  %.not.i.i.i98 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i.i.i98, label %_ZNSt6vectorIfSaIfEED2Ev.exit99, label %bb.dw

bb.dw:                                            ; preds = %.thread164, %.thread, %bb.dv
  %i.kd = phi ptr [ %i.di, %.thread ], [ %i.kc, %bb.dv ], [ %i.di, %.thread164 ]
  %.pn.pn.pn.pn.pn.pn.pn.pn163 = phi { ptr, i32 } [ %i.dp, %.thread ], [ %.pn.pn.pn.pn.pn.pn, %bb.dv ], [ %i.dq, %.thread164 ]
  %i.ke = phi ptr [ %i.dh, %.thread ], [ %.pre.pre, %bb.dv ], [ %i.dh, %.thread164 ] ; 2 uses
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = sub i64 %i.kf, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.kh) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit99

_ZNSt6vectorIfSaIfEED2Ev.exit99:                  ; preds = %bb.dw, %bb.dv, %bb.au
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.do, %bb.au ], [ %.pn.pn.pn.pn.pn.pn, %bb.dv ], [ %.pn.pn.pn.pn.pn.pn.pn.pn163, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ek

bb.dx:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.6 = phi i32 [ %.5, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ -1, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.ki = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !25 ; 8 uses
  %.not.i.i100 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i100, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 4 uses
  %i.kl = load atomic i64, ptr %i.kk acquire, align 8 ; 2 uses
  %i.km = icmp eq i64 %i.kl, 4294967297
  %i.kn = trunc i64 %i.kl to i32                  ; 2 uses
  br i1 %i.km, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  store i32 0, ptr %i.kk, align 8, !tbaa !26
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 12
  store i32 0, ptr %i.ko, align 4, !tbaa !28
  %i.kp = load ptr, ptr %i.kj, align 8, !tbaa !29
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8
  call void %i.kr(ptr noundef nonnull align 8 dereferenceable(16) %i.kj) #21, !inline_history !53
  %i.ks = load ptr, ptr %i.kj, align 8, !tbaa !29
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8
  call void %i.ku(ptr noundef nonnull align 8 dereferenceable(16) %i.kj) #21, !inline_history !53
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104

bb.ea:                                            ; preds = %bb.dy
  %i.kv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i101 = icmp eq i8 %i.kv, 0
  br i1 %.not.i.i.i101, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.kw = add nsw i32 %i.kn, -1
  store i32 %i.kw, ptr %i.kk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102

bb.ec:                                            ; preds = %bb.ea
  %i.kx = atomicrmw volatile add ptr %i.kk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102: ; preds = %bb.ec, %bb.eb
  %.0.i.i.i.i103 = phi i32 [ %i.kn, %bb.eb ], [ %i.kx, %bb.ec ]
  %i.ky = icmp eq i32 %.0.i.i.i.i103, 1
  br i1 %i.ky, label %bb.ed, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104, !prof !32

bb.ed:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kj) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104: ; preds = %bb.dx, %bb.dz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.kz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !25 ; 8 uses
  %.not.i.i105 = icmp eq ptr %i.la, null
  br i1 %.not.i.i105, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit109, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8 ; 4 uses
  %i.lc = load atomic i64, ptr %i.lb acquire, align 8 ; 2 uses
  %i.ld = icmp eq i64 %i.lc, 4294967297
  %i.le = trunc i64 %i.lc to i32                  ; 2 uses
  br i1 %i.ld, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i32 0, ptr %i.lb, align 8, !tbaa !26
  %i.lf = getelementptr inbounds nuw i8, ptr %i.la, i64 12
  store i32 0, ptr %i.lf, align 4, !tbaa !28
  %i.lg = load ptr, ptr %i.la, align 8, !tbaa !29
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load ptr, ptr %i.lh, align 8
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(16) %i.la) #21, !inline_history !53
  %i.lj = load ptr, ptr %i.la, align 8, !tbaa !29
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ll = load ptr, ptr %i.lk, align 8
  call void %i.ll(ptr noundef nonnull align 8 dereferenceable(16) %i.la) #21, !inline_history !53
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit109

bb.eg:                                            ; preds = %bb.ee
  %i.lm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i106 = icmp eq i8 %i.lm, 0
  br i1 %.not.i.i.i106, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ln = add nsw i32 %i.le, -1
  store i32 %i.ln, ptr %i.lb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107

bb.ei:                                            ; preds = %bb.eg
  %i.lo = atomicrmw volatile add ptr %i.lb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107: ; preds = %bb.ei, %bb.eh
  %.0.i.i.i.i108 = phi i32 [ %i.le, %bb.eh ], [ %i.lo, %bb.ei ]
  %i.lp = icmp eq i32 %.0.i.i.i.i108, 1
  br i1 %i.lp, label %bb.ej, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit109, !prof !32

bb.ej:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.la) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit109

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit109: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104, %bb.ef, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i32 %.6

bb.ek:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit99, %bb.ao
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit99 ], [ %i.dg, %bb.ao ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZNK16OpenColorIO_v2_56Config12getProcessorERKSt10shared_ptrIKNS_9TransformEENS_18TransformDirectionE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.13") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511ConfigUtils24IdentifyInterchangeSpaceEPPKcS3_RKSt10shared_ptrIKNS_6ConfigEES2_S9_S2_(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.OpenColorIO_v2_5::ConfigUtils::SuspendCacheGuard", align 8 ; 9 uses
  %12 = alloca %"class.OpenColorIO_v2_5::ConfigUtils::SuspendCacheGuard", align 8 ; 9 uses
  %13 = alloca %"class.std::shared_ptr", align 8  ; 10 uses
  %14 = alloca %"class.std::shared_ptr", align 8  ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils42GetInterchangeRolesForColorSpaceConversionEPPKcS3_RNS_18ReferenceSpaceTypeERKSt10shared_ptrIKNS_6ConfigEES2_SB_S2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %5)
  br i1 %i.b, label %bb.cm, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.c = load ptr, ptr %4, align 8, !tbaa !10
  call void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %5)
  %i.d = load ptr, ptr %6, align 8, !tbaa !15
  %i.e = call noundef i32 @_ZNK16OpenColorIO_v2_510ColorSpace21getReferenceSpaceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #21
  %i.f = icmp eq i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25   ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.i, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !28
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #21, !inline_history !31
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #21, !inline_history !31
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ %i.v, %bb.g ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.h, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !32

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %i.f, label %bb.i, label %bb.p

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.19, i64 noundef 67)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.20, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
  %i.aa = load ptr, ptr %8, align 8, !tbaa !18
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.aa)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.cp unwind label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.j
  %.052 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ae = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br i1 %.052, label %bb.n, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br i1 %.052, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn92130 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.z) #21
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n, %bb.l
  %.pn92.pn = phi { ptr, i32 } [ %.pn92130, %bb.n ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %bb.l ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.co

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aj = call noundef ptr @_ZN16OpenColorIO_v2_511ConfigUtils15getRefSpaceNameERKSt10shared_ptrIKNS_6ConfigEE(ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !22
  %.not = icmp eq i8 %i.ak, 0
  br i1 %.not, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9)
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.21, i64 noundef 66)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98: ; preds = %bb.q
  %i.am = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
  %i.an = load ptr, ptr %10, align 8, !tbaa !18
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef %i.an)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.cp unwind label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.r
  %.050 = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ar = load ptr, ptr %10, align 8, !tbaa !18   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.u
  %i.au = load i64, ptr %i.as, align 8, !tbaa !22
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br i1 %.050, label %bb.v, label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br i1 %.050, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %.pn133 = phi { ptr, i32 } [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ]
  call void @__cxa_free_exception(ptr %i.am) #21
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %bb.v, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn133, %bb.v ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.ao, %bb.t ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.co

bb.x:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.aw = load ptr, ptr %2, align 8, !tbaa !10    ; 5 uses
  store ptr %i.aw, ptr %11, align 8, !tbaa !10
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !25 ; 3 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !25
  %.not.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i, label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !3
  br label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit

bb.aa:                                            ; preds = %bb.y
  %i.be = atomicrmw volatile add ptr %i.ba, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !10
  %.pre = load ptr, ptr %11, align 8, !tbaa !10
  br label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit

_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit: ; preds = %bb.x, %bb.z, %bb.aa
  %i.bf = phi ptr [ %i.aw, %bb.x ], [ %i.aw, %bb.z ], [ %.pre, %bb.aa ]
  %i.bg = phi ptr [ %i.aw, %bb.x ], [ %i.aw, %bb.z ], [ %.pre.i, %bb.aa ]
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bi = call noundef i32 @_ZNK16OpenColorIO_v2_56Config22getProcessorCacheFlagsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg) #21
  store i32 %i.bi, ptr %i.bh, align 8, !tbaa !125
  call void @_ZNK16OpenColorIO_v2_56Config22setProcessorCacheFlagsENS_19ProcessorCacheFlagsE(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i32 noundef 0) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.bj = load ptr, ptr %4, align 8, !tbaa !10    ; 5 uses
  store ptr %i.bj, ptr %12, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !25 ; 3 uses
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !25
  %.not.i.i.i.i102 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i102, label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit105, label %bb.ab

bb.ab:                                            ; preds = %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i103 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i.i103, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !3
  br label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit105

bb.ad:                                            ; preds = %bb.ab
  %i.br = atomicrmw volatile add ptr %i.bn, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i104 = load ptr, ptr %4, align 8, !tbaa !10
  %.pre151 = load ptr, ptr %12, align 8, !tbaa !10
  br label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit105

_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit105: ; preds = %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit, %bb.ac, %bb.ad
  %i.bs = phi ptr [ %i.bj, %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit ], [ %i.bj, %bb.ac ], [ %.pre151, %bb.ad ]
  %i.bt = phi ptr [ %i.bj, %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit ], [ %i.bj, %bb.ac ], [ %.pre.i104, %bb.ad ]
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bv = call noundef i32 @_ZNK16OpenColorIO_v2_56Config22getProcessorCacheFlagsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #21
  store i32 %i.bv, ptr %i.bu, align 8, !tbaa !125
  call void @_ZNK16OpenColorIO_v2_56Config22setProcessorCacheFlagsENS_19ProcessorCacheFlagsE(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i32 noundef 0) #21
  %i.bw = load ptr, ptr %2, align 8, !tbaa !10
  %i.bx = invoke noundef i32 @_ZNK16OpenColorIO_v2_56Config17getNumColorSpacesEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
          to label %.preheader140 unwind label %bb.ae ; 2 uses

.preheader140:                                    ; preds = %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit105
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader140
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.thread, %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit105
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.af:                                            ; preds = %.lr.ph, %bb.aw
  %.048141 = phi i32 [ 0, %.lr.ph ], [ %i.cy, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.cb = load ptr, ptr %2, align 8, !tbaa !10    ; 2 uses
  %i.cc = invoke noundef ptr @_ZNK16OpenColorIO_v2_56Config24getColorSpaceNameByIndexEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i32 noundef %.048141)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef %i.cc)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.cd = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils12containsSRGBERKSt10shared_ptrIKNS_10ColorSpaceEE(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.cd, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.ce = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils31excludeColorSpaceFromHeuristicsERKSt10shared_ptrIKNS_10ColorSpaceEENS_18ReferenceSpaceTypeEb(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 0, i1 noundef zeroext true)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ce, label %bb.ao, label %bb.an

bb.al:                                            ; preds = %bb.ag, %bb.af
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.am:                                            ; preds = %bb.an, %bb.aj, %bb.ah
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #21
  br label %bb.ax

bb.an:                                            ; preds = %bb.ak
  %i.ch = load ptr, ptr %0, align 8, !tbaa !7
  %i.ci = invoke noundef i32 @_ZN16OpenColorIO_v2_511ConfigUtils30getReferenceSpaceFromSRGBSpaceERKSt10shared_ptrIKNS_6ConfigEEPKcRKS1_IKNS_10ColorSpaceEES6_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %17 unwind label %bb.am        ; 2 uses

17:                                               ; preds = %bb.an
  %.inv = icmp slt i32 %i.ci, 0
  br i1 %.inv, label %bb.ao, label %spec.select.si.unfold.false.jt2

spec.select.si.unfold.false.jt2:                  ; preds = %17
  %18 = load ptr, ptr %i.bz, align 8, !tbaa !25   ; 8 uses
  %.not.i.i106.jt2 = icmp eq ptr %18, null
  br i1 %.not.i.i106.jt2, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110, label %bb.ap

bb.ao:                                            ; preds = %bb.ai, %bb.ak, %17
  %19 = load ptr, ptr %i.bz, align 8, !tbaa !25   ; 8 uses
  %.not.i.i106.jt0 = icmp eq ptr %19, null
  br i1 %.not.i.i106.jt0, label %bb.aw, label %bb.aq

bb.ap:                                            ; preds = %spec.select.si.unfold.false.jt2
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %21 = load atomic i64, ptr %20 acquire, align 8 ; 2 uses
  %22 = icmp eq i64 %21, 4294967297
  %23 = trunc i64 %21 to i32                      ; 2 uses
  br i1 %22, label %24, label %32

bb.aq:                                            ; preds = %bb.ao
  %i.cj = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.ar, label %bb.as

24:                                               ; preds = %bb.ap
  store i32 0, ptr %20, align 8, !tbaa !26
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 0, ptr %25, align 4, !tbaa !28
  %26 = load ptr, ptr %18, align 8, !tbaa !29
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %28 = load ptr, ptr %27, align 8
  call void %28(ptr noundef nonnull align 8 dereferenceable(16) %18) #21, !inline_history !31
  %29 = load ptr, ptr %18, align 8, !tbaa !29
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %31 = load ptr, ptr %30, align 8
  call void %31(ptr noundef nonnull align 8 dereferenceable(16) %18) #21, !inline_history !31
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.cj, align 8, !tbaa !26
  %i.cn = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !28
  %i.co = load ptr, ptr %19, align 8, !tbaa !29
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %19) #21, !inline_history !31
  %i.cr = load ptr, ptr %19, align 8, !tbaa !29
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %19) #21, !inline_history !31
  br label %bb.aw

32:                                               ; preds = %bb.ap
  %33 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i107.jt2 = icmp eq i8 %33, 0
  br i1 %.not.i.i.i107.jt2, label %36, label %34

bb.as:                                            ; preds = %bb.aq
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i107 = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i107, label %bb.au, label %bb.at

34:                                               ; preds = %32
  %35 = add nsw i32 %23, -1
  store i32 %35, ptr %20, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108.jt2

bb.at:                                            ; preds = %bb.as
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108

36:                                               ; preds = %32
  %37 = atomicrmw volatile add ptr %20, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108.jt2

bb.au:                                            ; preds = %bb.as
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108.jt2: ; preds = %34, %36
  %.0.i.i.i.i109.jt2 = phi i32 [ %37, %36 ], [ %23, %34 ]
  %38 = icmp eq i32 %.0.i.i.i.i109.jt2, 1
  br i1 %38, label %39, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110, !prof !32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108: ; preds = %bb.at, %bb.au
  %.0.i.i.i.i109 = phi i32 [ %i.cw, %bb.au ], [ %i.cm, %bb.at ]
  %i.cx = icmp eq i32 %.0.i.i.i.i109, 1
  br i1 %i.cx, label %bb.av, label %bb.aw, !prof !32

39:                                               ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108.jt2
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %18) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %19) #21
  br label %bb.aw

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108.jt2, %39, %24, %spec.select.si.unfold.false.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %.thread

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108, %bb.av, %bb.ar, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.cy = add nuw nsw i32 %.048141, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cy, %i.bx
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.af, !llvm.loop !129

bb.ax:                                            ; preds = %bb.am, %bb.al
  %.pn82 = phi { ptr, i32 } [ %i.cg, %bb.am ], [ %i.cf, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.cn

._crit_edge.thread:                               ; preds = %bb.aw, %.preheader140
  %i.cz = load ptr, ptr %2, align 8, !tbaa !10
  %i.da = invoke noundef i32 @_ZNK16OpenColorIO_v2_56Config17getNumColorSpacesEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %.preheader unwind label %bb.ae ; 2 uses

.preheader:                                       ; preds = %._crit_edge.thread
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph146, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115._crit_edge.thread

.lr.ph146:                                        ; preds = %.preheader
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph146, %bb.bp
  %.046145 = phi i32 [ 0, %.lr.ph146 ], [ %i.ee, %bb.bp ] ; 2 uses
  %.4144 = phi i32 [ -1, %.lr.ph146 ], [ %.6, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.dd = load ptr, ptr %2, align 8, !tbaa !10    ; 2 uses
  %i.de = invoke noundef ptr @_ZNK16OpenColorIO_v2_56Config24getColorSpaceNameByIndexEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, i32 noundef %.046145)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef %i.de)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.df = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils31excludeColorSpaceFromHeuristicsERKSt10shared_ptrIKNS_10ColorSpaceEENS_18ReferenceSpaceTypeEb(ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef 0, i1 noundef zeroext true)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.df, label %bb.bi, label %bb.be

bb.bc:                                            ; preds = %bb.az, %bb.ay
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bd:                                            ; preds = %bb.bg, %bb.be, %bb.ba
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #21
  br label %bb.bq

bb.be:                                            ; preds = %bb.bb
  %i.di = load ptr, ptr %2, align 8, !tbaa !10
  %i.dj = load ptr, ptr %14, align 8, !tbaa !15
  %i.dk = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dj) #21
  %i.dl = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config18isColorSpaceLinearEPKcNS_18ReferenceSpaceTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef %i.dk, i32 noundef 0)
          to label %bb.bf unwind label %bb.bd

bb.bf:                                            ; preds = %bb.be
  br i1 %i.dl, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.dm = load ptr, ptr %0, align 8, !tbaa !7
  %i.dn = invoke noundef i32 @_ZN16OpenColorIO_v2_511ConfigUtils32getReferenceSpaceFromLinearSpaceERKSt10shared_ptrIKNS_6ConfigEEPKcRKS1_IKNS_10ColorSpaceEES6_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.bh unwind label %bb.bd     ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  %.inv139 = icmp slt i32 %i.dn, 0
  %spec.select96 = select i1 %.inv139, i32 0, i32 5
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf, %bb.bb
  %.175 = phi i32 [ %spec.select96, %bb.bh ], [ 7, %bb.bb ], [ 0, %bb.bf ]
  %.6 = phi i32 [ %i.dn, %bb.bh ], [ %.4144, %bb.bb ], [ %.4144, %bb.bf ] ; 3 uses
  %i.do = load ptr, ptr %i.dc, align 8, !tbaa !25 ; 8 uses
  %.not.i.i111 = icmp eq ptr %i.do, null
  br i1 %.not.i.i111, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 4 uses
  %i.dq = load atomic i64, ptr %i.dp acquire, align 8 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 4294967297
  %i.ds = trunc i64 %i.dq to i32                  ; 2 uses
  br i1 %i.dr, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.dp, align 8, !tbaa !26
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 0, ptr %i.dt, align 4, !tbaa !28
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !29
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #21, !inline_history !31
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !29
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #21, !inline_history !31
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115

bb.bl:                                            ; preds = %bb.bj
  %i.ea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i112 = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i.i112, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.eb = add nsw i32 %i.ds, -1
  store i32 %i.eb, ptr %i.dp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i113

bb.bn:                                            ; preds = %bb.bl
  %i.ec = atomicrmw volatile add ptr %i.dp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i113

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i113: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i114 = phi i32 [ %i.ds, %bb.bm ], [ %i.ec, %bb.bn ]
  %i.ed = icmp eq i32 %.0.i.i.i.i114, 1
  br i1 %i.ed, label %bb.bo, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115, !prof !32

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i113
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115: ; preds = %bb.bi, %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i113, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  switch i32 %.175, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115._crit_edge [
    i32 0, label %bb.bp
    i32 7, label %bb.bp
  ]

bb.bp:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115
  %i.ee = add nuw nsw i32 %.046145, 1             ; 2 uses
  %exitcond150.not = icmp eq i32 %i.ee, %i.da
  br i1 %exitcond150.not, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115._crit_edge, label %bb.ay, !llvm.loop !130

bb.bq:                                            ; preds = %bb.bd, %bb.bc
  %.pn84 = phi { ptr, i32 } [ %i.dh, %bb.bd ], [ %i.dg, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.cn

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115._crit_edge: ; preds = %bb.bp, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115
  %i.ef = icmp sgt i32 %.6, -1
  br i1 %i.ef, label %.thread, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115._crit_edge.thread

.thread:                                          ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115._crit_edge
  %.8135 = phi i32 [ %.6, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115._crit_edge ], [ %i.ci, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110 ]
  %i.eg = call i32 @llvm.umin.i32(i32 %.8135, i32 4)
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN16OpenColorIO_v2_511ConfigUtils25getBuiltinLinearSpaceNameEi.builtinLinearSpaces, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !7
  store ptr %i.ej, ptr %1, align 8, !tbaa !7
  %i.ek = load ptr, ptr %12, align 8, !tbaa !10
  %i.el = load i32, ptr %i.bu, align 8, !tbaa !125
  call void @_ZNK16OpenColorIO_v2_56Config22setProcessorCacheFlagsENS_19ProcessorCacheFlagsE(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, i32 noundef %i.el) #21
  %i.em = load ptr, ptr %i.bk, align 8, !tbaa !25 ; 8 uses
  %.not.i.i.i116 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i116, label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit, label %bb.br

bb.br:                                            ; preds = %.thread
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 4 uses
  %i.eo = load atomic i64, ptr %i.en acquire, align 8 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 4294967297
  %i.eq = trunc i64 %i.eo to i32                  ; 2 uses
  br i1 %i.ep, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.en, align 8, !tbaa !26
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 0, ptr %i.er, align 4, !tbaa !28
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !29
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #21, !inline_history !131
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !29
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #21, !inline_history !131
  br label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit

bb.bt:                                            ; preds = %bb.br
  %i.ey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i117 = icmp eq i8 %i.ey, 0
  br i1 %.not.i.i.i.i117, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ez = add nsw i32 %i.eq, -1
  store i32 %i.ez, ptr %i.en, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.fa = atomicrmw volatile add ptr %i.en, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i.i = phi i32 [ %i.eq, %bb.bu ], [ %i.fa, %bb.bv ]
  %i.fb = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fb, label %bb.bw, label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit, !prof !32

bb.bw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #21
  br label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit

_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit: ; preds = %.thread, %bb.bs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.fc = load ptr, ptr %11, align 8, !tbaa !10
  %i.fd = load i32, ptr %i.bh, align 8, !tbaa !125
  call void @_ZNK16OpenColorIO_v2_56Config22setProcessorCacheFlagsENS_19ProcessorCacheFlagsE(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, i32 noundef %i.fd) #21
  %i.fe = load ptr, ptr %i.ax, align 8, !tbaa !25 ; 8 uses
  %.not.i.i.i118 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i118, label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit122, label %bb.bx

bb.bx:                                            ; preds = %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 4 uses
  %i.fg = load atomic i64, ptr %i.ff acquire, align 8 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 4294967297
  %i.fi = trunc i64 %i.fg to i32                  ; 2 uses
  br i1 %i.fh, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %i.ff, align 8, !tbaa !26
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  store i32 0, ptr %i.fj, align 4, !tbaa !28
  %i.fk = load ptr, ptr %i.fe, align 8, !tbaa !29
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #21, !inline_history !131
  %i.fn = load ptr, ptr %i.fe, align 8, !tbaa !29
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #21, !inline_history !131
  br label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit122

bb.bz:                                            ; preds = %bb.bx
  %i.fq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i119 = icmp eq i8 %i.fq, 0
  br i1 %.not.i.i.i.i119, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fr = add nsw i32 %i.fi, -1
  store i32 %i.fr, ptr %i.ff, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i120

bb.cb:                                            ; preds = %bb.bz
  %i.fs = atomicrmw volatile add ptr %i.ff, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i120

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i120: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i.i121 = phi i32 [ %i.fi, %bb.ca ], [ %i.fs, %bb.cb ]
  %i.ft = icmp eq i32 %.0.i.i.i.i.i121, 1
  br i1 %i.ft, label %bb.cc, label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit122, !prof !32

bb.cc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i120
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #21
  br label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit122

_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit122: ; preds = %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit, %bb.by, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i120, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.cm

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115._crit_edge.thread: ; preds = %.preheader, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15)
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115._crit_edge.thread
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.22, i64 noundef 77)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123 unwind label %bb.ch ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123: ; preds = %bb.cd
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.20, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124 unwind label %bb.ch ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123
  %i.fw = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(112) %15)
          to label %bb.ce unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.thread

bb.ce:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  %i.fx = load ptr, ptr %16, align 8, !tbaa !18
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef %i.fx)
          to label %bb.cf unwind label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  invoke void @__cxa_throw(ptr nonnull %i.fw, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.cp unwind label %bb.ci

bb.cg:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115._crit_edge.thread
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ch:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123, %bb.cd
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cf, %bb.ce
  %.0 = phi i1 [ false, %bb.cf ], [ true, %bb.ce ] ; 2 uses
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gc = load ptr, ptr %16, align 8, !tbaa !18   ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %bb.ci
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !22
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br i1 %.0, label %bb.cj, label %bb.ck

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br i1 %.0, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %.pn86138 = phi { ptr, i32 } [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.thread ], [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %i.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ]
  call void @__cxa_free_exception(ptr %i.fw) #21
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %bb.cj, %bb.ch
  %.pn86.pn = phi { ptr, i32 } [ %.pn86138, %bb.cj ], [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %i.fz, %bb.ch ], [ %i.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15) #21
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cg
  %.pn86.pn.pn = phi { ptr, i32 } [ %.pn86.pn, %bb.ck ], [ %i.fy, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.cn

bb.cm:                                            ; preds = %bb.a, %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.cn:                                            ; preds = %bb.cl, %bb.bq, %bb.ax, %bb.ae
  %.pn90 = phi { ptr, i32 } [ %i.ca, %bb.ae ], [ %.pn86.pn.pn, %bb.cl ], [ %.pn84, %bb.bq ], [ %.pn82, %bb.ax ]
  call void @_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
end_hunk_0
