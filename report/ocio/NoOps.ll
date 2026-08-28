Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/NoOps?download=true
inline.NumInlined: 680
inline.NumDeleted: 374
begin_hunk_0_@_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_114AllocationNoOpEJRKNS0_14AllocationDataEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_:bb.a
  br label %bb.f

bb.d:                                             ; preds = %.noexc7.i.i.i.i.i.i
  %i.y = icmp eq i64 %i.w, 4
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load float, ptr %i.r, align 4, !tbaa !41
  store float %i.z, ptr %i.s, align 4, !tbaa !41
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.aa = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !35
  %i.ab = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #24
          to label %bb.g unwind label %bb.j, !inline_history !37 ; 4 uses

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(168) %i.ab)
          to label %bb.h unwind label %bb.k, !inline_history !37

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_58NoOpDataE, i64 16), ptr %i.ab, align 8, !tbaa !16
  invoke void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EE5resetINS0_8NoOpDataEEENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS8_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull %i.ab)
          to label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114AllocationNoOpEEC2ISaIvEJRKNS0_14AllocationDataEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit unwind label %bb.j, !inline_history !37

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZN16OpenColorIO_v2_514AllocationDataD2Ev.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h, %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 168) #26, !inline_history !37
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !36  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN16OpenColorIO_v2_514AllocationDataD2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #26, !inline_history !37
  br label %_ZN16OpenColorIO_v2_514AllocationDataD2Ev.exit.i.i.i.i.i.i

_ZN16OpenColorIO_v2_514AllocationDataD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.i
  %.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %.pn.i.i.i.i.i.i, %bb.l ], [ %.pn.i.i.i.i.i.i, %bb.m ]
  tail call void @_ZN16OpenColorIO_v2_52OpD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(56) %i.d) #23, !inline_history !37
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #26, !inline_history !26
  resume { ptr, i32 } %.pn.pn.i.i.i.i.i.i

_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114AllocationNoOpEEC2ISaIvEJRKNS0_14AllocationDataEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit: ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.ak, align 8, !tbaa !10
  store ptr %i.d, ptr %0, align 8, !tbaa !43
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !15
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !44
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !44
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114AllocationNoOpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
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
  store i32 0, ptr %i.a, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !15
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !44
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !44
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511Create3DLutERKNS_10OpRcPtrVecEj(ptr dead_on_unwind noalias writable sret(%"class.OpenColorIO_v2_5::OpRcPtrVec") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.21", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = load ptr, ptr %1, align 8, !tbaa !48
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.e = mul i32 %2, %2
  %i.f = mul i32 %i.e, %2                         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.g = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #24, !noalias !49 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.h, align 8, !tbaa !13, !noalias !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 1, ptr %i.i, align 4, !tbaa !15, !noalias !49
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.g, align 8, !tbaa !16, !noalias !49
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.k = zext i32 %2 to i64
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232) %i.j, i64 noundef %i.k)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRKjEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !49

common.resume:                                    ; preds = %bb.s, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %.pn27.pn, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 248) #26, !noalias !49
  br label %common.resume

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRKjEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.m, align 8, !tbaa !10, !alias.scope !49
  store ptr %i.j, ptr %3, align 8, !tbaa !52, !alias.scope !49
  %i.n = shl i32 %i.f, 2                          ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.not.i.i.i.i = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 4 uses
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24
          to label %.noexc unwind label %bb.e     ; 18 uses

.noexc:                                           ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRKjEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !41
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.p, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !41
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE(ptr noundef nonnull %i.q, i32 noundef %2, i32 noundef 4, i32 noundef 1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %.not48 = icmp eq ptr %i.s, %i.t
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.u = zext i32 %i.f to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.h, %bb.d
  %.not54 = icmp eq i32 %i.f, 0
  br i1 %.not54, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %._crit_edge
  %i.v = load ptr, ptr %3, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36   ; 6 uses
  %wide.trip.count = zext i32 %i.f to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %i.f, 57
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph52
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph52 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.lr.ph52
  %i.y = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = icmp ugt i32 %i.z, 1431655764
  %i.ab = icmp ugt i64 %i.y, 1073741823
  %i.ac = or i1 %i.aa, %i.ab
  br i1 %i.ac, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ad = mul nuw nsw i64 %wide.trip.count, 12
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.ad
  %i.ae = shl nuw nsw i64 %wide.trip.count, 4
  %i.af = getelementptr i8, ptr %i.q, i64 %i.ae
  %scevgep63 = getelementptr i8, ptr %i.af, i64 -4
  %bound0 = icmp ult ptr %i.x, %scevgep63
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %4 = trunc i32 %i.f to i1
  %.neg = select i1 %4, i64 -1, i64 -2
  %n.vec = add nsw i64 %.neg, %wide.trip.count    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = trunc i64 %index to i32                 ; 2 uses
  %i.ah = shl i32 %i.ag, 2                        ; 3 uses
  %i.ai = shl i32 %i.ag, 2                        ; 3 uses
  %i.aj = or disjoint i32 %i.ai, 4
  %i.ak = zext i32 %i.ah to i64
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ak
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.al
  %i.ao = load float, ptr %i.am, align 4, !tbaa !41, !alias.scope !57
  %i.ap = load float, ptr %i.an, align 4, !tbaa !41, !alias.scope !57
  %i.aq = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.ap, i64 1
  %i.as = mul i64 %index, 3
  %i.at = and i64 %i.as, 4294967294
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.at
  %i.av = or disjoint i32 %i.ah, 1
  %i.aw = or disjoint i32 %i.ai, 5
  %i.ax = zext i32 %i.av to i64
  %i.ay = zext i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ax
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ay
  %i.bb = load float, ptr %i.az, align 4, !tbaa !41, !alias.scope !57
  %i.bc = load float, ptr %i.ba, align 4, !tbaa !41, !alias.scope !57
  %i.bd = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.bc, i64 1
  %i.bf = or disjoint i32 %i.ah, 2
  %i.bg = or disjoint i32 %i.ai, 6
  %i.bh = zext i32 %i.bf to i64
  %i.bi = zext i32 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bh
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bi
  %i.bl = load float, ptr %i.bj, align 4, !tbaa !41, !alias.scope !57
  %i.bm = load float, ptr %i.bk, align 4, !tbaa !41, !alias.scope !57
  %i.bn = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bo = insertelement <4 x float> %i.bn, float %i.bm, i64 1
  %i.bp = shufflevector <2 x float> %i.ar, <2 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x float> %i.bp, <4 x float> %i.bo, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x float> %interleaved.vec, ptr %i.au, align 4, !tbaa !41, !alias.scope !60, !noalias !57
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %scalar.ph.preheader, label %vector.body, !llvm.loop !62

bb.e:                                             ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRKjEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.f:                                             ; preds = %.noexc
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit32

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.033.049 = phi ptr [ %i.s, %.lr.ph ], [ %i.bx, %bb.h ] ; 2 uses
  %i.bt = load ptr, ptr %.sroa.033.049, align 8, !tbaa !66 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 128
  %i.bw = load ptr, ptr %i.bv, align 8
  invoke void %i.bw(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull %i.q, ptr noundef nonnull %i.q, i64 noundef %i.u)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.033.049, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bx, %i.t
  br i1 %.not, label %._crit_edge, label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit32

._crit_edge53:                                    ; preds = %scalar.ph, %._crit_edge
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144) %0)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %._crit_edge53
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit32

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ca = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.cb = shl i32 %i.ca, 2                        ; 3 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !41
  %i.cf = mul i32 %i.ca, 3                        ; 3 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cg
  store float %i.ce, ptr %i.ch, align 4, !tbaa !41
  %i.ci = or disjoint i32 %i.cb, 1
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !41
  %i.cm = add i32 %i.cf, 1
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cn
  store float %i.cl, ptr %i.co, align 4, !tbaa !41
  %i.cp = or disjoint i32 %i.cb, 2
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !41
  %i.ct = add i32 %i.cf, 2
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cu
  store float %i.cs, ptr %i.cv, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge53, label %scalar.ph, !llvm.loop !69

bb.k:                                             ; preds = %._crit_edge53
  invoke void @_ZN16OpenColorIO_v2_513CreateLut3DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut3DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit32

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #26
  %i.cx = load ptr, ptr %i.m, align 8, !tbaa !10  ; 8 uses
  %.not.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 4 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 4294967297
  %i.db = trunc i64 %i.cz to i32                  ; 2 uses
  br i1 %i.da, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.cy, align 8, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 0, ptr %i.dc, align 4, !tbaa !15
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !16
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #23, !inline_history !70
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #23, !inline_history !70
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.dj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i30 = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i.i30, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = add nsw i32 %i.db, -1
  store i32 %i.dk, ptr %i.cy, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.dl = atomicrmw volatile add ptr %i.cy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.db, %bb.p ], [ %i.dl, %bb.q ]
  %i.dm = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dm, label %bb.r, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.t

_ZNSt6vectorIfSaIfEED2Ev.exit32:                  ; preds = %bb.j, %bb.l, %bb.i, %bb.f
  %.pn27 = phi { ptr, i32 } [ %i.by, %bb.i ], [ %i.bs, %bb.f ], [ %i.cw, %bb.l ], [ %i.bz, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #26
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit32, %bb.e
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %_ZNSt6vectorIfSaIfEED2Ev.exit32 ], [ %i.br, %bb.e ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b
  ret void
}

declare void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #1

declare void @_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN16OpenColorIO_v2_513CreateLut3DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut3DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1
end_hunk_0
