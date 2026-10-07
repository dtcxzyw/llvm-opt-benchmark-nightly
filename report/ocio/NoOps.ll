Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/NoOps?download=true
inline.NumInlined: 680
inline.NumDeleted: 374
begin_hunk_0_@_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_114AllocationNoOpEJRKNS0_14AllocationDataEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_:bb.a
  br label %bb.f

bb.d:                                             ; preds = %.noexc7.i.i.i.i.i.i
  %i.y = icmp eq i64 %i.w, 4
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load float, ptr %i.r, align 4, !tbaa !40
  store float %i.z, ptr %i.s, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.aa = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !35
  %i.ab = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #24
          to label %bb.g unwind label %bb.j, !inline_history !78 ; 4 uses

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(168) %i.ab)
          to label %bb.h unwind label %bb.k, !inline_history !78

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_58NoOpDataE, i64 16), ptr %i.ab, align 8, !tbaa !23
  invoke void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EE5resetINS0_8NoOpDataEEENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS8_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull %i.ab)
          to label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114AllocationNoOpEEC2ISaIvEJRKNS0_14AllocationDataEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit unwind label %bb.j, !inline_history !78

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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 168) #26, !inline_history !78
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !36  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN16OpenColorIO_v2_514AllocationDataD2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !37
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #26, !inline_history !78
  br label %_ZN16OpenColorIO_v2_514AllocationDataD2Ev.exit.i.i.i.i.i.i

_ZN16OpenColorIO_v2_514AllocationDataD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.i
  %.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %.pn.i.i.i.i.i.i, %bb.l ], [ %.pn.i.i.i.i.i.i, %bb.m ]
  tail call void @_ZN16OpenColorIO_v2_52OpD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(56) %i.d) #23, !inline_history !78
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #26, !inline_history !77
  resume { ptr, i32 } %.pn.pn.i.i.i.i.i.i

_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114AllocationNoOpEEC2ISaIvEJRKNS0_14AllocationDataEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit: ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.ak, align 8, !tbaa !18
  store ptr %i.d, ptr %0, align 8, !tbaa !83
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !21
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !1
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !1
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

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
  store i32 0, ptr %i.a, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !21
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !1
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !1
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %1, align 8, !tbaa !44
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.e = mul i32 %2, %2
  %i.f = mul i32 %i.e, %2                         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.g = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #24, !noalias !92 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.h, align 8, !tbaa !20, !noalias !92
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 1, ptr %i.i, align 4, !tbaa !21, !noalias !92
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.g, align 8, !tbaa !23, !noalias !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.k = zext i32 %2 to i64
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232) %i.j, i64 noundef %i.k)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRKjEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !92

common.resume:                                    ; preds = %bb.s, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %.pn27.pn, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 248) #26, !noalias !92
  br label %common.resume

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRKjEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.m, align 8, !tbaa !18, !alias.scope !92
  store ptr %i.j, ptr %3, align 8, !tbaa !94, !alias.scope !92
  %i.n = shl i32 %i.f, 2                          ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.not.i.i.i.i = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 4 uses
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24
          to label %.noexc unwind label %bb.e     ; 18 uses

.noexc:                                           ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRKjEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !40
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.p, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !40
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE(ptr noundef nonnull %i.q, i32 noundef %2, i32 noundef 4, i32 noundef 1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %1, align 8, !tbaa !95     ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %.not48 = icmp eq ptr %i.s, %i.t
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.u = zext i32 %i.f to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.h, %bb.d
  %.not54 = icmp eq i32 %i.f, 0
  br i1 %.not54, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %._crit_edge
  %i.v = load ptr, ptr %3, align 8, !tbaa !97
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
  %i.ae = getelementptr i8, ptr %i.x, i64 %i.ad
  %i.af = shl nuw nsw i64 %wide.trip.count, 4
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -4
  %bound0 = icmp ult ptr %i.x, %i.ah
  %bound1 = icmp ult ptr %i.q, %i.ae
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %4 = trunc i32 %i.f to i1
  %.neg = select i1 %4, i64 -1, i64 -2
  %n.vec = add nsw i64 %.neg, %wide.trip.count    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = trunc i64 %index to i32                 ; 2 uses
  %i.aj = shl i32 %i.ai, 2                        ; 3 uses
  %i.ak = shl i32 %i.ai, 2                        ; 3 uses
  %i.al = or disjoint i32 %i.ak, 4
  %i.am = zext i32 %i.aj to i64
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.am
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.an
  %i.aq = load float, ptr %i.ao, align 4, !tbaa !40, !alias.scope !98
  %i.ar = load float, ptr %i.ap, align 4, !tbaa !40, !alias.scope !98
  %i.as = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.ar, i64 1
  %i.au = mul i64 %index, 3
  %i.av = and i64 %i.au, 4294967294
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.av
  %i.ax = or disjoint i32 %i.aj, 1
  %i.ay = or disjoint i32 %i.ak, 5
  %i.az = zext i32 %i.ax to i64
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.az
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ba
  %i.bd = load float, ptr %i.bb, align 4, !tbaa !40, !alias.scope !98
  %i.be = load float, ptr %i.bc, align 4, !tbaa !40, !alias.scope !98
  %i.bf = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.be, i64 1
  %i.bh = or disjoint i32 %i.aj, 2
  %i.bi = or disjoint i32 %i.ak, 6
  %i.bj = zext i32 %i.bh to i64
  %i.bk = zext i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bj
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bk
  %i.bn = load float, ptr %i.bl, align 4, !tbaa !40, !alias.scope !98
  %i.bo = load float, ptr %i.bm, align 4, !tbaa !40, !alias.scope !98
  %i.bp = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bo, i64 1
  %i.br = shufflevector <2 x float> %i.at, <2 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x float> %i.br, <4 x float> %i.bq, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x float> %interleaved.vec, ptr %i.aw, align 4, !tbaa !40, !alias.scope !99, !noalias !98
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %scalar.ph.preheader, label %vector.body, !llvm.loop !89

bb.e:                                             ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRKjEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.f:                                             ; preds = %.noexc
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit32

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.033.049 = phi ptr [ %i.s, %.lr.ph ], [ %i.bz, %bb.h ] ; 2 uses
  %i.bv = load ptr, ptr %.sroa.033.049, align 8, !tbaa !48 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !23
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void %i.by(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull %i.q, ptr noundef nonnull %i.q, i64 noundef %i.u)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.033.049, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bz, %i.t
  br i1 %.not, label %._crit_edge, label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit32

._crit_edge53:                                    ; preds = %scalar.ph, %._crit_edge
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144) %0)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %._crit_edge53
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit32

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cc = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.cd = shl i32 %i.cc, 2                        ; 3 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !40
  %i.ch = mul i32 %i.cc, 3                        ; 3 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ci
  store float %i.cg, ptr %i.cj, align 4, !tbaa !40
  %i.ck = or disjoint i32 %i.cd, 1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cl
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !40
  %i.co = add i32 %i.ch, 1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cp
  store float %i.cn, ptr %i.cq, align 4, !tbaa !40
  %i.cr = or disjoint i32 %i.cd, 2
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !40
  %i.cv = add i32 %i.ch, 2
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cw
  store float %i.cu, ptr %i.cx, align 4, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge53, label %scalar.ph, !llvm.loop !90

bb.k:                                             ; preds = %._crit_edge53
  invoke void @_ZN16OpenColorIO_v2_513CreateLut3DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut3DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit32

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #26
  %i.cz = load ptr, ptr %i.m, align 8, !tbaa !18  ; 8 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 4 uses
  %i.db = load atomic i64, ptr %i.da acquire, align 8 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 4294967297
  %i.dd = trunc i64 %i.db to i32                  ; 2 uses
  br i1 %i.dc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.da, align 8, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store i32 0, ptr %i.de, align 4, !tbaa !21
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !23
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #23, !inline_history !91
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !23
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #23, !inline_history !91
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.dl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i30 = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i.i30, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dm = add nsw i32 %i.dd, -1
  store i32 %i.dm, ptr %i.da, align 8, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.dn = atomicrmw volatile add ptr %i.da, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.dd, %bb.p ], [ %i.dn, %bb.q ]
  %i.do = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.do, label %bb.r, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.t

_ZNSt6vectorIfSaIfEED2Ev.exit32:                  ; preds = %bb.j, %bb.l, %bb.i, %bb.f
  %.pn27 = phi { ptr, i32 } [ %i.ca, %bb.i ], [ %i.bu, %bb.f ], [ %i.cy, %bb.l ], [ %i.cb, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #26
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit32, %bb.e
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %_ZNSt6vectorIfSaIfEED2Ev.exit32 ], [ %i.bt, %bb.e ]
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
