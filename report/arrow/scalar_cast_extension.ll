inline.NumInlined: 493
inline.NumDeleted: 293
begin_hunk_0_@_ZNK5arrow18TypedChunkLocationIaEeqES1_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIhEC2Ehh(ptr noundef nonnull align 1 dereferenceable(2) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIhEC5Ehh) align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIhEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !17
  %i.b = trunc i16 %1 to i8
  %i.c = icmp eq i8 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i16 %1, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i16
  %i.g = icmp eq i16 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationItEC2Ett(ptr noundef nonnull align 2 dereferenceable(4) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationItEC5Ett) align 2 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.a, align 2, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationItEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !20
  %i.b = trunc i32 %1 to i16
  %i.c = icmp eq i16 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i32 %1, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = zext i16 %i.e to i32
  %i.g = icmp eq i32 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIjEC2Ejj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIjEC5Ejj) align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIjEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, %.sroa.0.0.extract.trunc
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIlEC2Ell(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIlEC5Ell) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIlEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !26
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationImEC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationImEC5Emm) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationImEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal17GetExtensionCastsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::shared_ptr.34", align 8 ; 5 uses
  %2 = alloca %"class.std::allocator.37", align 1 ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::vector.10", align 8    ; 10 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.std::vector.25", align 8    ; 10 uses
  %6 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 9 uses
  %7 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %8 = alloca %"class.std::shared_ptr", align 16  ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca [1 x %"class.std::shared_ptr"], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.b, ptr %9, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.b, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 14, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 30
  store i8 0, ptr %i.d, align 2, !tbaa !39
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !40
  store i32 31, ptr %i.a, align 4, !tbaa !43, !noalias !40
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !48
  store ptr null, ptr %8, align 16, !tbaa !49, !alias.scope !48
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow7compute8internal12CastFunctionESaIvEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_4Type4typeEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc8 unwind label %bb.bj

.noexc8:                                          ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !40
  invoke void @_ZN5arrow10AllTypeIdsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.10") align 8 %3)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %.noexc8
  %i.f = load ptr, ptr %3, align 8, !tbaa !54, !noalias !40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54, !noalias !40 ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.d

._crit_edge.loopexit.i:                           ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !55, !noalias !40
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %i.t = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.f, %bb.a ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %bb.as, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57, !noalias !40
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #21
  br label %bb.as

bb.c:                                             ; preds = %.noexc8
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.d:                                             ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit.i, %.lr.ph.i
  %.sroa.026.034.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.ds, %_ZN5arrow7compute9InputTypeD2Ev.exit.i ] ; 2 uses
  %i.aa = load i32, ptr %.sroa.026.034.i, align 4, !tbaa !43 ; 2 uses
  %i.ab = load ptr, ptr %8, align 16, !tbaa !49, !alias.scope !40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !40
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !40
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.34") align 8 %1, i32 noundef %i.aa)
          to label %bb.e unwind label %bb.am

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %6, align 8, !tbaa !58, !noalias !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !noalias !40
  %i.ac = load ptr, ptr %1, align 8, !tbaa !67, !noalias !40 ; 2 uses
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !67, !noalias !40
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !68, !noalias !40 ; 4 uses
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !68, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !40
  %i.ae = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22
          to label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit.i.i unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i ; 7 uses

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit.i.i: ; preds = %bb.e
  store ptr %i.ae, ptr %5, align 8, !tbaa !69, !noalias !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  store ptr %i.af, ptr %i.n, align 8, !tbaa !72, !noalias !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  store i32 2, ptr %i.ae, align 8, !tbaa !58
  store ptr null, ptr %i.ag, align 8, !tbaa !73
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.ac, ptr %i.ai, align 8, !tbaa !67
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %.not.i.i.i4.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i4.i.i, label %_ZN5arrow7compute9InputType8CopyIntoERKS1_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !40
  %.not.i.i.i.i6.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i6.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7.i.thread.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7.i.thread.i: ; preds = %bb.f
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i12.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7.i.i: ; preds = %bb.f
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i13.i.i = load ptr, ptr %i.aj, align 8, !tbaa !68 ; 8 uses
  %.not8.i.i.i8.i.i = icmp eq ptr %.pr.pre.i.i.i13.i.i, null
  br i1 %.not8.i.i.i8.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i12.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i13.i.i, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ap, align 8, !tbaa !74
  %i.at = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i13.i.i, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !76
  %i.au = load ptr, ptr %.pr.pre.i.i.i13.i.i, align 8, !tbaa !77
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i13.i.i) #20, !inline_history !79
  %i.ax = load ptr, ptr %.pr.pre.i.i.i13.i.i, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i13.i.i) #20, !inline_history !79
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i12.i.i

bb.i:                                             ; preds = %bb.g
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !40
  %.not.i9.i.i.i9.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i9.i.i.i9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i.i

bb.k:                                             ; preds = %bb.i
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i11.i.i = phi i32 [ %i.as, %bb.j ], [ %i.bc, %bb.k ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i11.i.i, 1
  br i1 %i.bd, label %bb.l, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i12.i.i, !prof !80

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i13.i.i) #20
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i12.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i12.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10.i.i, %bb.h, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7.i.thread.i
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !68
  br label %_ZN5arrow7compute9InputType8CopyIntoERKS1_.exit.i

_ZN5arrow7compute9InputType8CopyIntoERKS1_.exit.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i12.i.i, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit.i.i
  store ptr %i.af, ptr %i.o, align 8, !tbaa !81, !noalias !40
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal17kOutputTargetTypeE)
          to label %bb.m unwind label %bb.an

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.m:                                             ; preds = %_ZN5arrow7compute9InputType8CopyIntoERKS1_.exit.i
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeESt6vectorINS0_9InputTypeESaIS6_EENS0_10OutputTypeEPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENS0_12NullHandling4typeENS0_13MemAllocation4typeE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(252) %i.ab, i32 noundef %i.aa, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull @_ZN5arrow7compute8internal12_GLOBAL__N_115CastToExtensionEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, i32 noundef 2, i32 noundef 1)
          to label %bb.n unwind label %bb.ao

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %4, align 8, !tbaa !82, !noalias !40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.o, !prof !85

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !86, !range !93, !noundef !94
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.p, %bb.o, %bb.n
  %i.bj = load ptr, ptr %i.p, align 8, !tbaa !95, !noalias !40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.bk = invoke noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.q, %_ZN5arrow6StatusD2Ev.exit.i
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !68, !noalias !40 ; 8 uses
  %.not.i.i.i15.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i15.i, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bo, align 8, !tbaa !74
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !76
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !77
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #20, !inline_history !97
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !77
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #20, !inline_history !97
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i

bb.u:                                             ; preds = %bb.s
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !40
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i = phi i32 [ %i.br, %bb.v ], [ %i.cb, %bb.w ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cc, label %bb.x, label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i, !prof !80

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit.i

_ZN5arrow7compute10OutputTypeD2Ev.exit.i:         ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t, %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.cd = load ptr, ptr %5, align 8, !tbaa !69, !noalias !40
  %i.ce = load ptr, ptr %i.o, align 8, !tbaa !81, !noalias !40
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.cd, ptr noundef %i.ce)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i.i unwind label %bb.z

end_hunk_0
begin_hunk_1_@_ZN5arrow7compute10OutputTypeC2ERKS1_:bb.a
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !68 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !76
  %i.s = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #20, !inline_history !114
  %i.v = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #20, !inline_history !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i9.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.h, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !80

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #20
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.h, ptr %i.f, align 8, !tbaa !68
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 2)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !54
  br label %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %i.ac, align 16, !tbaa !95 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i5, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %.body unwind label %bb.m      ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #23
  unreachable

_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i: ; preds = %bb.j, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.an = phi <2 x ptr> [ splat (ptr null), %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit ], [ %i.ah, %bb.j ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !115
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.b, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !54
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !54 ; 2 uses
  store <2 x ptr> %i.ap, ptr %i.ac, align 16, !tbaa !54
  store <2 x ptr> %i.an, ptr %i.ao, align 8, !tbaa !54
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.p unwind label %bb.o       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #23
  unreachable

bb.p:                                             ; preds = %bb.n, %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

.body:                                            ; preds = %bb.k, %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !95 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.aw = invoke noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %.body, %bb.q
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #20
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_115CastToExtensionEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.30", align 16 ; 8 uses
  %5 = alloca %"class.std::shared_ptr.60", align 8 ; 10 uses
  %6 = alloca %"class.std::shared_ptr.60", align 16 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %14 = alloca %"struct.arrow::TypeHolder", align 8 ; 8 uses
  %15 = alloca %"class.std::shared_ptr.30", align 8 ; 5 uses
  %16 = alloca %"class.arrow::ExtensionArray", align 8 ; 9 uses
  %17 = alloca %"class.std::shared_ptr.30", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68   ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.f, align 8, !tbaa !54
  store <2 x ptr> %i.j, ptr %4, align 16, !tbaa !54
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.k, align 4, !tbaa !3
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !126
  invoke void @_ZNK5arrow9ArraySpan7ToArrayEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.60") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %i.q)
          to label %bb.e unwind label %bb.z

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.r = load ptr, ptr %5, align 8, !tbaa !129    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !132
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !135
  %i.x = icmp eq i32 %i.w, 31
  br i1 %i.x, label %bb.f, label %bb.at

bb.f:                                             ; preds = %bb.e
  %i.y = invoke noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKSt10shared_ptrIS0_Eb(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.aa

bb.g:                                             ; preds = %bb.f
  br i1 %i.y, label %bb.ai, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.z = load ptr, ptr %5, align 8, !tbaa !129
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !132
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !73 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.ab

bb.i:                                             ; preds = %bb.h
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.2, i64 noundef 14)
          to label %.noexc unwind label %bb.ac    ; 6 uses

.noexc:                                           ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 14 uses
  store ptr %i.ah, ptr %10, align 8, !tbaa !33, !alias.scope !150
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !100 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %.noexc
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !37 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.ai, ptr %10, align 8, !tbaa !100, !alias.scope !150
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !39
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !39, !alias.scope !150
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %i.aq = phi i64 [ %i.am, %bb.j ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !37, !alias.scope !150
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !100
  store i64 0, ptr %i.ar, align 8, !tbaa !37
  store i8 0, ptr %i.aj, align 8, !tbaa !39
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.at = load i64, ptr %i.as, align 8, !tbaa !37, !noalias !153 ; 5 uses
  %i.au = icmp sgt i64 %i.at, 9223372036854775776
  br i1 %i.au, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #24
          to label %.noexc42 unwind label %bb.ad

.noexc42:                                         ; preds = %bb.l
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.k
  %i.av = add nsw i64 %i.at, 31                   ; 3 uses
  %i.aw = load ptr, ptr %10, align 8, !tbaa !100, !noalias !153 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ah                ; 2 uses
  br i1 %i.ax, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ay = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.ay)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.az = load i64, ptr %i.ah, align 8, !noalias !153
  %i.ba = select i1 %i.ax, i64 15, i64 %i.az
  %.not.i.i.i39 = icmp ugt i64 %i.av, %i.ba
  br i1 %.not.i.i.i39, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.bb, ptr noundef nonnull align 1 dereferenceable(31) @.str.3, i64 31, i1 false), !noalias !153
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.at, i64 noundef 0, ptr noundef nonnull @.str.3, i64 noundef 31)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.o, %bb.n
  store i64 %i.av, ptr %i.as, align 8, !tbaa !37, !noalias !153
  %i.bc = load ptr, ptr %10, align 8, !tbaa !100, !noalias !153
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.av
  store i8 0, ptr %i.bd, align 1, !tbaa !39, !noalias !153
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !33, !alias.scope !153
  %i.bf = load ptr, ptr %10, align 8, !tbaa !100, !noalias !153 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ah
  br i1 %i.bg, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bh = load i64, ptr %i.as, align 8, !tbaa !37, !noalias !153 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.bj, i1 false)
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bf, ptr %9, align 8, !tbaa !100, !alias.scope !153
  %i.bk = load i64, ptr %i.ah, align 8, !tbaa !39, !noalias !153
  store i64 %i.bk, ptr %i.be, align 8, !tbaa !39, !alias.scope !153
  %.pre.i41 = load i64, ptr %i.as, align 8, !tbaa !37, !noalias !153
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.p
  %i.bl = phi i64 [ %i.bh, %bb.p ], [ %.pre.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !37, !alias.scope !153
  store ptr %i.ah, ptr %10, align 8, !tbaa !100, !noalias !153
  store i64 0, ptr %i.as, align 8, !tbaa !37, !noalias !153
  store i8 0, ptr %i.ah, align 8, !tbaa !39, !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !77
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i1 noundef zeroext false)
          to label %bb.r unwind label %bb.ae

bb.r:                                             ; preds = %bb.q
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.s unwind label %bb.af

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !37, !noalias !156 ; 5 uses
  %i.bs = icmp sgt i64 %i.br, 9223372036854775723
  br i1 %i.bs, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i44

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #24
          to label %.noexc52 unwind label %bb.ag

.noexc52:                                         ; preds = %bb.t
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i44: ; preds = %bb.s
  %i.bt = add nsw i64 %i.br, 84                   ; 3 uses
  %i.bu = load ptr, ptr %8, align 8, !tbaa !100, !noalias !156 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv                ; 2 uses
  br i1 %i.bw, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i45

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i44
  %i.bx = icmp ult i64 %i.br, 16
  call void @llvm.assume(i1 %i.bx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i45: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i44
  %i.by = load i64, ptr %i.bv, align 8, !noalias !156
  %i.bz = select i1 %i.bw, i64 15, i64 %i.by
  %.not.i.i.i46 = icmp ugt i64 %i.bt, %i.bz
  br i1 %.not.i.i.i46, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i45
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(84) %i.ca, ptr noundef nonnull align 1 dereferenceable(84) @.str.4, i64 84, i1 false), !noalias !156
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i45
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.br, i64 noundef 0, ptr noundef nonnull @.str.4, i64 noundef 84)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49_crit_edge unwind label %bb.ag

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49_crit_edge: ; preds = %bb.w
  %.pre139 = load ptr, ptr %8, align 8, !tbaa !100, !noalias !156
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49_crit_edge, %bb.v
  %i.cb = phi ptr [ %.pre139, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49_crit_edge ], [ %i.bu, %bb.v ]
  store i64 %i.bt, ptr %i.bq, align 8, !tbaa !37, !noalias !156
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  store i8 0, ptr %i.cc, align 1, !tbaa !39, !noalias !156
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.cd, ptr %7, align 8, !tbaa !33, !alias.scope !156
  %i.ce = load ptr, ptr %8, align 8, !tbaa !100, !noalias !156 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bv
  br i1 %i.cf, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49
  %i.cg = load i64, ptr %i.bq, align 8, !tbaa !37, !noalias !156 ; 3 uses
  %i.ch = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.ch)
  %i.ci = add nuw nsw i64 %i.cg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.bv, i64 %i.ci, i1 false)
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49
  store ptr %i.ce, ptr %7, align 8, !tbaa !100, !alias.scope !156
  %i.cj = load i64, ptr %i.bv, align 8, !tbaa !39, !noalias !156
  store i64 %i.cj, ptr %i.cd, align 8, !tbaa !39, !alias.scope !156
  %.pre.i51 = load i64, ptr %i.bq, align 8, !tbaa !37, !noalias !156
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.x
  %i.ck = phi i64 [ %i.cg, %bb.x ], [ %.pre.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal12_GLOBAL__N_115CastToExtensionEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.ac:                                            ; preds = %bb.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.ad:                                            ; preds = %bb.o, %bb.l
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

bb.ae:                                            ; preds = %bb.q
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.af:                                            ; preds = %bb.r
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.ag:                                            ; preds = %bb.w, %bb.t
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

bb.ah:                                            ; preds = %bb.y
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %7, align 8, !tbaa !100   ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.cd
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ah
  %i.dx = load i64, ptr %i.cd, align 8, !tbaa !39
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.ag
  %.pn28 = phi { ptr, i32 } [ %i.dt, %bb.ag ], [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.du, %bb.ah ] ; 2 uses
  %i.dz = load ptr, ptr %8, align 8, !tbaa !100   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !39
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.af
  %.pn28.pn = phi { ptr, i32 } [ %i.ds, %bb.af ], [ %.pn28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ] ; 2 uses
  %i.ee = load ptr, ptr %12, align 8, !tbaa !100  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !39
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %bb.ae
  %.pn28.pn.pn = phi { ptr, i32 } [ %i.dr, %bb.ae ], [ %.pn28.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %.pn28.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.ej = load ptr, ptr %9, align 8, !tbaa !100   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.be
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.el = load i64, ptr %i.be, align 8, !tbaa !39
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %bb.ad
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.ad ], [ %.pn28.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %.pn28.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ] ; 2 uses
  %i.en = load ptr, ptr %10, align 8, !tbaa !100  ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.ah
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.ep = load i64, ptr %i.ah, align 8, !tbaa !39
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.ac
  %.pn28.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.ac ], [ %.pn28.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %.pn28.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ] ; 2 uses
  %i.er = load ptr, ptr %11, align 8, !tbaa !100  ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !39
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.ab
  %.pn28.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.do, %bb.ab ], [ %.pn28.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %.pn28.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.dx

bb.ai:                                            ; preds = %bb.g
  %i.ew = load ptr, ptr %5, align 8, !tbaa !129
  store ptr %i.ew, ptr %6, align 16, !tbaa !129
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !68 ; 4 uses
  %i.fa = load ptr, ptr %i.ex, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i90 = icmp eq ptr %i.ez, %i.fa
  br i1 %.not.i.i.i90, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSERKS2_.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not7.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 3 uses
  %i.fc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i91 = icmp eq i8 %i.fc, 0
  br i1 %.not.i.i.i.i91, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !3
  %i.fe = add nsw i32 %i.fd, 1
  store i32 %i.fe, ptr %i.fb, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ff = atomicrmw volatile add ptr %i.fb, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.ex, align 8, !tbaa !68
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.am, %bb.al, %bb.aj
  %i.fg = phi ptr [ %i.fa, %bb.aj ], [ %i.fa, %bb.al ], [ %.pr.pre.i.i.i, %bb.am ] ; 8 uses
  %.not8.i.i.i92 = icmp eq ptr %i.fg, null
  br i1 %.not8.i.i.i92, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 4 uses
  %i.fi = load atomic i64, ptr %i.fh acquire, align 8 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 4294967297
  %i.fk = trunc i64 %i.fi to i32                  ; 2 uses
  br i1 %i.fj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.fh, align 8, !tbaa !74
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i32 0, ptr %i.fl, align 4, !tbaa !76
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !77
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #20, !inline_history !159
  %i.fp = load ptr, ptr %i.fg, align 8, !tbaa !77
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #20, !inline_history !159
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.fs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i9.i.i.i = icmp eq i8 %i.fs, 0
  br i1 %.not.i9.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ft = add nsw i32 %i.fk, -1
  store i32 %i.ft, ptr %i.fh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.fu = atomicrmw volatile add ptr %i.fh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i = phi i32 [ %i.fk, %bb.aq ], [ %i.fu, %bb.ar ]
  %i.fv = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fv, label %bb.as, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !80

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #20
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ao, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ez, ptr %i.ex, align 8, !tbaa !68
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSERKS2_.exit

bb.at:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.fw = load ptr, ptr %4, align 16, !tbaa !73   ; 3 uses
  store ptr %i.fw, ptr %15, align 8, !tbaa !73
  %i.fx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.fy = load ptr, ptr %i.g, align 8, !tbaa !68  ; 4 uses
  store ptr %i.fy, ptr %i.fx, align 8, !tbaa !68
  %.not.i.i.i93 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i93, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit95, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 3 uses
  %i.ga = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i94 = icmp eq i8 %i.ga, 0
  br i1 %.not.i.i.i.i94, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !3
  %i.gc = add nsw i32 %i.gb, 1
  store i32 %i.gc, ptr %i.fz, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit95

bb.aw:                                            ; preds = %bb.au
  %i.gd = atomicrmw volatile add ptr %i.fz, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %15, align 8, !tbaa !73
  %.pre138 = load ptr, ptr %i.fx, align 8, !tbaa !68
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit95

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit95: ; preds = %bb.at, %bb.av, %bb.aw
  %i.ge = phi ptr [ null, %bb.at ], [ %i.fy, %bb.av ], [ %.pre138, %bb.aw ]
  %i.gf = phi ptr [ %i.fw, %bb.at ], [ %i.fw, %bb.av ], [ %.pre, %bb.aw ] ; 2 uses
  store ptr %i.gf, ptr %14, align 8, !tbaa !160
  %i.gg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !73
  %i.gh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr null, ptr %i.fx, align 8, !tbaa !68
  store ptr %i.ge, ptr %i.gh, align 8, !tbaa !68
  store ptr null, ptr %15, align 8, !tbaa !73
  %i.gi = load ptr, ptr %1, align 8, !tbaa !161
  invoke void @_ZN5arrow7compute4CastERKNS_5ArrayERKNS_10TypeHolderERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(46) %i.c, ptr noundef %i.gi)
          to label %bb.ax unwind label %bb.bm

bb.ax:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit95
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !68 ; 8 uses
  %.not.i.i.i96 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i96, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 4 uses
  %i.gl = load atomic i64, ptr %i.gk acquire, align 8 ; 2 uses
  %i.gm = icmp eq i64 %i.gl, 4294967297
  %i.gn = trunc i64 %i.gl to i32                  ; 2 uses
  br i1 %i.gm, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.gk, align 8, !tbaa !74
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  store i32 0, ptr %i.go, align 4, !tbaa !76
  %i.gp = load ptr, ptr %i.gj, align 8, !tbaa !77
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(16) %i.gj) #20, !inline_history !162
  %i.gs = load ptr, ptr %i.gj, align 8, !tbaa !77
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(16) %i.gj) #20, !inline_history !162
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.gv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i97 = icmp eq i8 %i.gv, 0
  br i1 %.not.i.i.i.i97, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gw = add nsw i32 %i.gn, -1
  store i32 %i.gw, ptr %i.gk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i98

bb.bc:                                            ; preds = %bb.ba
  %i.gx = atomicrmw volatile add ptr %i.gk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i98

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i98: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i99 = phi i32 [ %i.gn, %bb.bb ], [ %i.gx, %bb.bc ]
  %i.gy = icmp eq i32 %.0.i.i.i.i.i99, 1
  br i1 %i.gy, label %bb.bd, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !80

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i98
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gj) #20
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %bb.ax, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i98, %bb.bd
  %i.gz = load ptr, ptr %i.fx, align 8, !tbaa !68 ; 8 uses
  %.not.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i, label %bb.bk, label %bb.be

bb.be:                                            ; preds = %_ZN5arrow10TypeHolderD2Ev.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 4 uses
  %i.hb = load atomic i64, ptr %i.ha acquire, align 8 ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 4294967297
  %i.hd = trunc i64 %i.hb to i32                  ; 2 uses
  br i1 %i.hc, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.ha, align 8, !tbaa !74
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  store i32 0, ptr %i.he, align 4, !tbaa !76
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !77
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #20, !inline_history !109
  %i.hi = load ptr, ptr %i.gz, align 8, !tbaa !77
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #20, !inline_history !109
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.hl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i100 = icmp eq i8 %i.hl, 0
  br i1 %.not.i.i.i100, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hm = add nsw i32 %i.hd, -1
  store i32 %i.hm, ptr %i.ha, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.hn = atomicrmw volatile add ptr %i.ha, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i = phi i32 [ %i.hd, %bb.bh ], [ %i.hn, %bb.bi ]
  %i.ho = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ho, label %bb.bj, label %bb.bk, !prof !80

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #20
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bf, %_ZN5arrow10TypeHolderD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.hp = load ptr, ptr %13, align 8, !tbaa !82
  %i.hq = icmp eq ptr %i.hp, null                 ; 2 uses
  br i1 %i.hq, label %bb.bo, label %bb.bl, !prof !85

bb.bl:                                            ; preds = %bb.bk
  store ptr null, ptr %0, align 8, !tbaa !82
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.bn

bb.bm:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit95
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #20
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.dx

bb.bn:                                            ; preds = %bb.bl
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.dx

bb.bo:                                            ; preds = %bb.bk
  %i.ht = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hv = load <2 x ptr>, ptr %i.ht, align 8, !tbaa !54, !noalias !163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, i8 0, i64 16, i1 false)
  %i.hw = load ptr, ptr %i.hu, align 8, !tbaa !68 ; 8 uses
  store <2 x ptr> %i.hv, ptr %6, align 16, !tbaa !54
  %.not.i.i.i.i102 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i102, label %_ZN5arrow6StatusC2ERKS0_.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 4 uses
  %i.hy = load atomic i64, ptr %i.hx acquire, align 8 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, 4294967297
  %i.ia = trunc i64 %i.hy to i32                  ; 2 uses
  br i1 %i.hz, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.hx, align 8, !tbaa !74
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 12
  store i32 0, ptr %i.ib, align 4, !tbaa !76
  %i.ic = load ptr, ptr %i.hw, align 8, !tbaa !77
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #20, !inline_history !168
  %i.if = load ptr, ptr %i.hw, align 8, !tbaa !77
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #20, !inline_history !168
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.br:                                            ; preds = %bb.bp
  %i.ii = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i.i = icmp eq i8 %i.ii, 0
  br i1 %.not.i.i.i.i.i, label %bb.bt, label %bb.bs
end_hunk_2
