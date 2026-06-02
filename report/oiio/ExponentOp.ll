inline.NumInlined: 578
inline.NumDeleted: 266
begin_hunk_0_@_ZN16OpenColorIO_v2_516CreateExponentOpERNS_10OpRcPtrVecERSt10shared_ptrINS_14ExponentOpDataEENS_18TransformDirectionE:bb.a
  call fastcc void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_110ExponentOpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr null) #23
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn = phi { ptr, i32 } [ %i.em, %bb.av ], [ %i.el, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_514ExponentOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume

bb.ax:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514ExponentOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_110ExponentOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_514ExponentOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !44
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !71
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !71
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !51

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN16OpenColorIO_v2_510OpRcPtrVec9push_backERKSt10shared_ptrINS_2OpEE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !44
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !71
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !71
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !51

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_110ExponentOpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !44
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !71
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !71
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !51

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare noundef zeroext i1 @_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_(double noundef) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_523CreateExponentTransformERSt10shared_ptrINS_14GroupTransformEERS0_IKNS_2OpEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.26", align 16 ; 9 uses
  %3 = alloca %"class.std::shared_ptr.29", align 8 ; 9 uses
  %4 = alloca %"class.std::shared_ptr.41", align 16 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !72    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.a, align 8           ; 10 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12_GLOBAL__N_110ExponentOpEKNS_2OpEEESt10shared_ptrIT_ERKS6_IT0_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %.val, ptr nonnull @_ZTIN16OpenColorIO_v2_52OpE, ptr nonnull @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_110ExponentOpE, i64 0) #23, !noalias !74
  %.not.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.not.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12_GLOBAL__N_110ExponentOpEKNS_2OpEEESt10shared_ptrIT_ERKS6_IT0_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq ptr %.val11, null     ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.val11, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34, !noalias !74
  %.not.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3, !noalias !74
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3, !noalias !74
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4, !noalias !74 ; 0 uses
  br label %bb.j

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12_GLOBAL__N_110ExponentOpEKNS_2OpEEESt10shared_ptrIT_ERKS6_IT0_E.exit: ; preds = %bb.b, %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12_GLOBAL__N_110ExponentOpEKNS_2OpEEESt10shared_ptrIT_ERKS6_IT0_E.exit
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %bb.bh unwind label %bb.i

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_12_GLOBAL__N_110ExponentOpEKNS_2OpEEESt10shared_ptrIT_ERKS6_IT0_E.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #23
  br label %bb.bg

bb.i:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.j:                                             ; preds = %bb.e, %bb.c, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZN16OpenColorIO_v2_517ExponentTransform6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.26") align 8 %2)
          to label %bb.k unwind label %bb.bd

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.l = load ptr, ptr %1, align 8, !tbaa !72     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55, !noalias !79 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !45, !noalias !79 ; 11 uses
  %.not.i.i.i.i.i15 = icmp eq ptr %i.p, null      ; 3 uses
  br i1 %.not.i.i.i.i.i15, label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34, !noalias !79
  %.not.i.i.i.i.i.i16 = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i16, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3, !noalias !79
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3, !noalias !79
  br label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit

bb.n:                                             ; preds = %bb.l
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4, !noalias !79 ; 0 uses
  br label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit

_ZNK16OpenColorIO_v2_52Op4dataEv.exit:            ; preds = %bb.k, %bb.m, %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.v = icmp eq ptr %i.n, null
  br i1 %i.v, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14ExponentOpDataEKNS_6OpDataEEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK16OpenColorIO_v2_52Op4dataEv.exit
  %i.w = call ptr @__dynamic_cast(ptr nonnull %i.n, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_514ExponentOpDataE, i64 0) #23, !noalias !90 ; 2 uses
  %.not.not.i.i17 = icmp eq ptr %i.w, null
  br i1 %.not.not.i.i17, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14ExponentOpDataEKNS_6OpDataEEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.w, ptr %3, align 8, !tbaa !91, !alias.scope !90
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.p, ptr %i.x, align 8, !tbaa !45, !alias.scope !90
  br i1 %.not.i.i.i.i.i15, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34, !noalias !90
  %.not.i.i.i.i.i.i19 = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i19, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !3, !noalias !90
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !3, !noalias !90
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14ExponentOpDataEKNS_6OpDataEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.ac = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4, !noalias !90 ; 0 uses
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14ExponentOpDataEKNS_6OpDataEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14ExponentOpDataEKNS_6OpDataEEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %_ZNK16OpenColorIO_v2_52Op4dataEv.exit, %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !90
  br i1 %.not.i.i.i.i.i15, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14ExponentOpDataEKNS_6OpDataEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14ExponentOpDataEKNS_6OpDataEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread: ; preds = %bb.s, %bb.r, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14ExponentOpDataEKNS_6OpDataEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14ExponentOpDataEKNS_6OpDataEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread
  store i32 0, ptr %i.ad, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !44
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #23, !inline_history !93
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #23, !inline_history !93
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14ExponentOpDataEKNS_6OpDataEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.ag, %bb.v ], [ %i.aq, %bb.w ]
  %i.ar = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ar, label %bb.x, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !51

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14ExponentOpDataEKNS_6OpDataEEESt10shared_ptrIT_ERKS5_IT0_E.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  %i.as = load ptr, ptr %2, align 16, !tbaa !94   ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #23
  %i.ax = call ptr @__dynamic_cast(ptr nonnull %i.aw, ptr nonnull @_ZTIN16OpenColorIO_v2_514FormatMetadataE, ptr nonnull @_ZTIN16OpenColorIO_v2_518FormatMetadataImplE, i64 0) #23 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @__cxa_bad_cast() #24
          to label %bb.z unwind label %bb.be

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.az = load ptr, ptr %3, align 8, !tbaa !91    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.ax, ptr noundef nonnull align 8 dereferenceable(120) %i.ba)
          to label %bb.ab unwind label %bb.be     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bc = load ptr, ptr %2, align 16, !tbaa !94   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 168
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.bd) #23
  %i.bh = load ptr, ptr %0, align 8, !tbaa !97    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !45 ; 2 uses
  %i.bl = load <2 x ptr>, ptr %2, align 16, !tbaa !100
  store <2 x ptr> %i.bl, ptr %4, align 16, !tbaa !100
  %.not.i.i.i20 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i20, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_17ExponentTransformEvEERKS_IT_E.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !3
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_17ExponentTransformEvEERKS_IT_E.exit

bb.ae:                                            ; preds = %bb.ac
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_17ExponentTransformEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_17ExponentTransformEvEERKS_IT_E.exit: ; preds = %bb.ab, %bb.ad, %bb.ae
  %i.br = load ptr, ptr %i.bh, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull %4) #23
  %i.bu = load ptr, ptr %i.bi, align 8, !tbaa !45 ; 8 uses
  %.not.i.i21 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i21, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_17ExponentTransformEvEERKS_IT_E.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.bv, align 8, !tbaa !42
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !44
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #23, !inline_history !101
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #23, !inline_history !101
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i22 = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i22, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

bb.aj:                                            ; preds = %bb.ah
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i24 = phi i32 [ %i.by, %bb.ai ], [ %i.ci, %bb.aj ]
  %i.cj = icmp eq i32 %.0.i.i.i.i24, 1
  br i1 %i.cj, label %bb.ak, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !51

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_17ExponentTransformEvEERKS_IT_E.exit, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23, %bb.ak
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !45 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514ExponentOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4294967297
  %i.cp = trunc i64 %i.cn to i32                  ; 2 uses
  br i1 %i.co, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.cm, align 8, !tbaa !42
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 0, ptr %i.cq, align 4, !tbaa !44
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #23, !inline_history !102
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !7
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #23, !inline_history !102
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514ExponentOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i26 = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i26, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cy = add nsw i32 %i.cp, -1
  store i32 %i.cy, ptr %i.cm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

bb.ap:                                            ; preds = %bb.an
  %i.cz = atomicrmw volatile add ptr %i.cm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i28 = phi i32 [ %i.cp, %bb.ao ], [ %i.cz, %bb.ap ]
  %i.da = icmp eq i32 %.0.i.i.i.i28, 1
  br i1 %i.da, label %bb.aq, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514ExponentOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !51

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #23
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514ExponentOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514ExponentOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.db = load ptr, ptr %i.bj, align 8, !tbaa !45 ; 8 uses
  %.not.i.i29 = icmp eq ptr %i.db, null
  br i1 %.not.i.i29, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517ExponentTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514ExponentOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.dc, align 8, !tbaa !42
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !44
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !7
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #23, !inline_history !103
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #23, !inline_history !103
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517ExponentTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.at:                                            ; preds = %bb.ar
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i30 = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i30, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

bb.av:                                            ; preds = %bb.at
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i32 = phi i32 [ %i.df, %bb.au ], [ %i.dp, %bb.av ]
  %i.dq = icmp eq i32 %.0.i.i.i.i32, 1
  br i1 %i.dq, label %bb.aw, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517ExponentTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !51

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517ExponentTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_517ExponentTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514ExponentOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512_GLOBAL__N_110ExponentOpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517ExponentTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %.val11, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.dr, align 8, !tbaa !42
  %i.dv = getelementptr inbounds nuw i8, ptr %.val11, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !44
  %i.dw = load ptr, ptr %.val11, align 8, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %.val11) #23, !inline_history !104
  %i.dz = load ptr, ptr %.val11, align 8, !tbaa !7
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
end_hunk_0
