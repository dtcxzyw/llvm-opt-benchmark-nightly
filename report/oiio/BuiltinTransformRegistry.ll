inline.NumInlined: 346
inline.NumDeleted: 196
begin_hunk_0_@_ZNK16OpenColorIO_v2_528BuiltinTransformRegistryImpl15getBuiltinStyleEm:bb.a

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZNK16OpenColorIO_v2_528BuiltinTransformRegistryImpl21getBuiltinDescriptionEm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 96
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #23
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %1
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  ret ptr %i.m
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_528BuiltinTransformRegistryImpl9createOpsEmRNS_10OpRcPtrVecE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 96
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #23
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %1 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.f, label %_ZNKSt8functionIFvRN16OpenColorIO_v2_510OpRcPtrVecEEEclES2_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt25__throw_bad_function_callv() #24
  unreachable

_ZNKSt8functionIFvRN16OpenColorIO_v2_510OpRcPtrVecEEEclES2_.exit: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(144) %2), !inline_history !55
  ret void
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_54ACES11RegisterAllERNS_28BuiltinTransformRegistryImplE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_56CAMERA5APPLE11RegisterAllERNS_28BuiltinTransformRegistryImplE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_56CAMERA4ARRI11RegisterAllERNS_28BuiltinTransformRegistryImplE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_56CAMERA5CANON11RegisterAllERNS_28BuiltinTransformRegistryImplE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_56CAMERA9PANASONIC11RegisterAllERNS_28BuiltinTransformRegistryImplE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_56CAMERA3RED11RegisterAllERNS_28BuiltinTransformRegistryImplE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS_28BuiltinTransformRegistryImplE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS_28BuiltinTransformRegistryImplE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_525CreateBuiltinTransformOpsERNS_10OpRcPtrVecEmNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.0", align 8 ; 5 uses
  %4 = alloca %"class.std::shared_ptr.0", align 8 ; 5 uses
  %5 = alloca %"class.OpenColorIO_v2_5::OpRcPtrVec", align 8 ; 8 uses
  %6 = alloca %"class.OpenColorIO_v2_5::OpRcPtrVec", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN16OpenColorIO_v2_524BuiltinTransformRegistry3GetEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %3) #23
  %i.a = load ptr, ptr %3, align 8, !tbaa !56     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #23
  %i.e = icmp ugt i64 %1, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 8 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_524BuiltinTransformRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !18
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #23, !inline_history !58
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #23, !inline_history !58
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_524BuiltinTransformRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_524BuiltinTransformRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_524BuiltinTransformRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_524BuiltinTransformRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %i.e, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_524BuiltinTransformRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.w = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull @.str.3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.w) #23
  br label %common.resume

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_524BuiltinTransformRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN16OpenColorIO_v2_524BuiltinTransformRegistry3GetEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %4) #23
  %i.y = load ptr, ptr %4, align 8, !tbaa !56     ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call ptr @__dynamic_cast(ptr nonnull %i.y, ptr nonnull @_ZTIN16OpenColorIO_v2_524BuiltinTransformRegistryE, ptr nonnull @_ZTIN16OpenColorIO_v2_528BuiltinTransformRegistryImplE, i64 0) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ab = phi ptr [ %i.aa, %bb.l ], [ null, %bb.k ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22 ; 8 uses
  %.not.i.i19 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i19, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_524BuiltinTransformRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit23, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ae, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !18
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #23, !inline_history !58
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #23, !inline_history !58
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_524BuiltinTransformRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit23

bb.p:                                             ; preds = %bb.n
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i20 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i20, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i21

bb.r:                                             ; preds = %bb.p
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i21

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i21: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i22 = phi i32 [ %i.ah, %bb.q ], [ %i.ar, %bb.r ]
  %i.as = icmp eq i32 %.0.i.i.i.i22, 1
  br i1 %i.as, label %bb.s, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_524BuiltinTransformRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit23, !prof !30

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i21
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_524BuiltinTransformRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit23

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_524BuiltinTransformRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit23: ; preds = %bb.m, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i21, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  switch i32 %2, label %bb.al [
    i32 0, label %bb.t
    i32 1, label %bb.z
  ]

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_524BuiltinTransformRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit23
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !37
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !34 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 96
  %.not.i = icmp ult i64 %1, %i.ba
  br i1 %.not.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull @.str.1)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
  unreachable

common.resume:                                    ; preds = %bb.j, %.body, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.bc, %bb.w ], [ %i.x, %bb.j ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %bb.u
  %i.bc = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bb) #23
  br label %common.resume

bb.x:                                             ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw [96 x i8], ptr %i.aw, i64 %1 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !38
  %.not.i.i.i24 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i24, label %bb.y, label %_ZNK16OpenColorIO_v2_528BuiltinTransformRegistryImpl9createOpsEmRNS_10OpRcPtrVecE.exit

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt25__throw_bad_function_callv() #24
  unreachable

_ZNK16OpenColorIO_v2_528BuiltinTransformRegistryImpl9createOpsEmRNS_10OpRcPtrVecE.exit: ; preds = %bb.x
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !47
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(144) %0), !inline_history !59
  br label %bb.al

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_524BuiltinTransformRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144) %5)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !37
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !34 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 96
  %.not.i25 = icmp ult i64 %1, %i.bq
  br i1 %.not.i25, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull @.str.1)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.br) #23
  br label %.body

bb.ad:                                            ; preds = %bb.z
  %i.bt = getelementptr inbounds nuw [96 x i8], ptr %i.bm, i64 %1 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !38
  %.not.i.i.i26 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i26, label %bb.ae, label %_ZNKSt8functionIFvRN16OpenColorIO_v2_510OpRcPtrVecEEEclES2_.exit.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt25__throw_bad_function_callv() #24
          to label %.noexc27 unwind label %bb.ah

.noexc27:                                         ; preds = %bb.ae
  unreachable

_ZNKSt8functionIFvRN16OpenColorIO_v2_510OpRcPtrVecEEEclES2_.exit.i: ; preds = %bb.ad
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !47
  invoke void %i.by(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(144) %5)
          to label %_ZNK16OpenColorIO_v2_528BuiltinTransformRegistryImpl9createOpsEmRNS_10OpRcPtrVecE.exit29 unwind label %bb.ah, !inline_history !60

_ZNK16OpenColorIO_v2_528BuiltinTransformRegistryImpl9createOpsEmRNS_10OpRcPtrVecE.exit29: ; preds = %_ZNKSt8functionIFvRN16OpenColorIO_v2_510OpRcPtrVecEEEclES2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNK16OpenColorIO_v2_510OpRcPtrVec6invertEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::OpRcPtrVec") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %5)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %_ZNK16OpenColorIO_v2_528BuiltinTransformRegistryImpl9createOpsEmRNS_10OpRcPtrVecE.exit29
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !61
  %i.cb = load ptr, ptr %6, align 8, !tbaa !61
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !61
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVec6insertEN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_2OpEESt6vectorIS5_SaIS5_EEEESB_SB_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %i.ca, ptr %i.cb, ptr %i.cd)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.al

bb.ah:                                            ; preds = %_ZNKSt8functionIFvRN16OpenColorIO_v2_510OpRcPtrVecEEEclES2_.exit.i, %bb.ae, %bb.ab
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %_ZNK16OpenColorIO_v2_528BuiltinTransformRegistryImpl9createOpsEmRNS_10OpRcPtrVecE.exit29
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.aj ], [ %i.cf, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body

.body:                                            ; preds = %bb.ah, %bb.ac, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ak ], [ %i.ce, %bb.ah ], [ %i.bs, %bb.ac ]
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume

bb.al:                                            ; preds = %bb.ag, %_ZNK16OpenColorIO_v2_528BuiltinTransformRegistryImpl9createOpsEmRNS_10OpRcPtrVecE.exit, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_524BuiltinTransformRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit23
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #11

declare void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #6

declare void @_ZNK16OpenColorIO_v2_510OpRcPtrVec6invertEv(ptr dead_on_unwind writable sret(%"class.OpenColorIO_v2_5::OpRcPtrVec") align 8, ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #6

declare void @_ZN16OpenColorIO_v2_510OpRcPtrVec6insertEN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_2OpEESt6vectorIS5_SaIS5_EEEESB_SB_(ptr noundef nonnull align 8 dereferenceable(144), ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.a) #23
  %i.b = load ptr, ptr %0, align 8, !tbaa !63     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !18
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #23, !inline_history !66
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #23, !inline_history !66
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i, !prof !30

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #23
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !67

end_hunk_0
