Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/ConfigUtils?download=true
inline.NumInlined: 1159
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN16OpenColorIO_v2_511ConfigUtils20getRefSpaceConverterERKSt10shared_ptrIKNS_6ConfigEES6_NS_18ReferenceSpaceTypeE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519ColorSpaceTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #21
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.bd
  %.pn39.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn.pn, %bb.fx ], [ %i.dp, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #21
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.bc
  %.pn39.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn.pn.pn, %bb.fy ], [ %.pn, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.az
  %.pn39.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn.pn.pn.pn, %bb.fz ], [ %i.dm, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.ay
  %.pn39.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn.pn.pn.pn.pn, %bb.ga ], [ %i.dl, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn39.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN16OpenColorIO_v2_56Config23CreateFromBuiltinConfigEPKc(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.0") align 8, ptr noundef) local_unnamed_addr #3

declare void @_ZN16OpenColorIO_v2_56Config24IdentifyInterchangeSpaceEPPKcS3_RKSt10shared_ptrIKS0_ES2_S8_S2_(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef ptr @"_ZZN16OpenColorIO_v2_511ConfigUtils20getRefSpaceConverterERKSt10shared_ptrIKNS_6ConfigEES6_NS_18ReferenceSpaceTypeEENK3$_0clES6_S7_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  %i.b = tail call noundef i32 @_ZNK16OpenColorIO_v2_56Config17getNumColorSpacesENS_24SearchReferenceSpaceTypeENS_20ColorSpaceVisibilityE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %1, i32 noundef 2)
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !27
  %i.e = tail call noundef ptr @_ZNK16OpenColorIO_v2_56Config24getColorSpaceNameByIndexENS_24SearchReferenceSpaceTypeENS_20ColorSpaceVisibilityEi(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %1, i32 noundef 2, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  call void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.e)
  %i.g = load ptr, ptr %2, align 8, !tbaa !30
  %i.h = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #21
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 8 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.k, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !40
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21, !inline_history !0
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21, !inline_history !0
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.n, %bb.f ], [ %i.x, %bb.g ]
  %i.y = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.y, label %bb.h, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret ptr %i.h

.critedge:                                        ; preds = %bb.a
  %i.z = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull @.str.39)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.critedge
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
  unreachable

bb.j:                                             ; preds = %.critedge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.z) #21
  resume { ptr, i32 } %i.aa
}

declare void @_ZN16OpenColorIO_v2_519ColorSpaceTransform6CreateEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.34") align 8) local_unnamed_addr #3

declare void @_ZN16OpenColorIO_v2_519ColorSpaceTransform6setSrcEPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare void @_ZN16OpenColorIO_v2_519ColorSpaceTransform6setDstEPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare void @_ZN16OpenColorIO_v2_514GroupTransform6CreateEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.16") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519ColorSpaceTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !40
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !5
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !5
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils16transformIsEmptyERKSt10shared_ptrIKNS_9TransformEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #21
  %i.f = icmp eq i32 %i.e, 14
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !54, !noalias !165, !nonnull !74, !noundef !74
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.g, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_514GroupTransformE, i64 0) #21, !noalias !165 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37, !noalias !165 ; 9 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null        ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !165
  %.not.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.k, align 4, !tbaa !43, !noalias !165
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !43, !noalias !165
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.e:                                             ; preds = %bb.c
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4, !noalias !165 ; 0 uses
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #21
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !40
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21, !inline_history !6
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21, !inline_history !6
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l
  %.1 = phi i1 [ false, %bb.l ], [ true, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511ConfigUtils25updateReferenceColorspaceERSt10shared_ptrINS_10ColorSpaceEERKS1_IKNS_9TransformEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.19", align 16 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::shared_ptr.4", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %7 = alloca %"class.std::shared_ptr.19", align 8 ; 3 uses
  %8 = alloca %"class.std::shared_ptr.19", align 8 ; 3 uses
  %9 = alloca %"class.std::shared_ptr.4", align 16 ; 7 uses
  %10 = alloca %"class.std::shared_ptr.4", align 8 ; 9 uses
  %11 = alloca %"class.std::shared_ptr.4", align 16 ; 6 uses
  %12 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %13 = alloca %"class.std::shared_ptr.19", align 8 ; 3 uses
  %14 = alloca %"class.std::shared_ptr.19", align 8 ; 3 uses
  %15 = alloca %"class.std::shared_ptr.4", align 16 ; 7 uses
  %16 = alloca %"class.std::shared_ptr.16", align 16 ; 8 uses
  %17 = alloca %"class.std::shared_ptr.19", align 8 ; 3 uses
  %18 = alloca %"class.std::shared_ptr.4", align 16 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = icmp ne ptr %i.a, null
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp ne ptr %i.c, null
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.29, i64 noundef 74)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.f = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !34
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef %i.g)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.en unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !34     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.n = load i64, ptr %i.l, align 8, !tbaa !35
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn116 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn116, %bb.g ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %bb.e ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.em

bb.i:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils16transformIsEmptyERKSt10shared_ptrIKNS_9TransformEE(ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.p, label %bb.ej, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.q = load ptr, ptr %0, align 8, !tbaa !169
  call void @_ZNK16OpenColorIO_v2_510ColorSpace12getTransformENS_19ColorSpaceDirectionE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef 0) #21
  %i.r = load ptr, ptr %5, align 8, !tbaa !54
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.av, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN16OpenColorIO_v2_514GroupTransform6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %6)
          to label %bb.l unwind label %bb.aq

bb.l:                                             ; preds = %bb.k
  %i.s = load ptr, ptr %6, align 16, !tbaa !70    ; 2 uses
  %i.t = load ptr, ptr %5, align 8, !tbaa !54     ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.m unwind label %bb.ar

bb.m:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 %7) #21
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37  ; 8 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ab, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !40
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #21, !inline_history !8
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #21, !inline_history !8
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.q ], [ %i.ao, %bb.r ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.s, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #21
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  %i.aq = load ptr, ptr %6, align 16, !tbaa !70   ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %bb.t unwind label %bb.ar

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !42
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 %8) #21
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !37 ; 8 uses
  %.not.i.i43 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i43, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit47, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
end_hunk_0
