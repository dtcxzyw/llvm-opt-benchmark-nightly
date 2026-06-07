inline.NumInlined: 872
inline.NumDeleted: 339
begin_hunk_0_@_ZNK5arrow18TypedChunkLocationIiEeqES1_:bb.a
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIsEC2Ess(ptr noundef nonnull align 2 dereferenceable(4) %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIsEC5Ess) align 2 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.a, align 2, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIsEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !10
  %i.b = sext i16 %i.a to i32
  %sext = shl i32 %1, 16
  %i.c = ashr exact i32 %sext, 16
  %i.d = icmp eq i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 2
  %i.g = sext i16 %i.f to i32
  %i.h = ashr i32 %1, 16
  %i.i = icmp eq i32 %i.h, %i.g
  %i.j = select i1 %i.d, i1 %i.i, i1 false
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIaEC2Eaa(ptr noundef nonnull align 1 dereferenceable(2) %0, i8 noundef signext %1, i8 noundef signext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIaEC5Eaa) align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIaEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = zext i16 %1 to i32
  %i.a = load i8, ptr %0, align 1, !tbaa !14
  %i.b = sext i8 %i.a to i32
  %sext = shl i32 %.sroa.0.0.extract.trunc, 24
  %i.c = ashr exact i32 %sext, 24
  %i.d = icmp eq i32 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0.extract.shift = lshr i16 %1, 8
  %.sroa.2.0.extract.trunc = zext nneg i16 %.sroa.2.0.extract.shift to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = sext i8 %i.f to i32
  %sext1 = shl nuw i32 %.sroa.2.0.extract.trunc, 24
  %i.h = ashr exact i32 %sext1, 24
  %i.i = icmp eq i32 %i.h, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal20RunCompressorBuilderC2EPNS_10MemoryPoolESt10shared_ptrINS_12ArrayBuilderEES4_INS_8DataTypeEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(184) initializes((0, 184)) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 64, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow8internal20RunCompressorBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.j, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  store ptr null, ptr %i.k, align 8, !tbaa !56
  store <2 x ptr> %i.l, ptr %i.i, align 8, !tbaa !57
  store ptr null, ptr %2, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !63
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !64
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !64
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow12ArrayBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !63
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #18, !inline_history !69
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #18, !inline_history !69
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #18
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !70

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !67
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #19
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !56 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ae, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !63
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #18, !inline_history !73
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #18, !inline_history !73
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.l ], [ %i.ar, %bb.m ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.n, label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit, !prof !66

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #18
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit:       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow8internal20RunCompressorBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5arrow8internal20RunCompressorBuilderD1Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #19
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal20RunCompressorBuilder5ResetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) initializes((96, 120), (160, 168), (176, 184)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.b, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 8 uses
  store ptr null, ptr %i.c, align 8, !tbaa !56
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.e, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !63
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !81
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !81
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.g, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal20RunCompressorBuilder17AppendEmptyValuesEl:bb.a
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.m)
  %i.q = load ptr, ptr %5, align 8, !tbaa !86     ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit30
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !58   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.u = load i64, ptr %i.t, align 8, !tbaa !82
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.u, ptr %i.v, align 8, !tbaa !82
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(144) %i.s), !inline_history !83
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !84
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !85
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !85
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !86
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %_ZN5arrow6StatusD2Ev.exit30, %_ZN5arrow6StatusD2Ev.exit24, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal20RunCompressorBuilder12AppendScalarERKNS_6ScalarEl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(41) %2, i64 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.13", align 8 ; 6 uses
  %5 = alloca %"class.arrow::EqualOptions", align 8 ; 8 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %.sink.split, label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !74   ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.g, !prof !66

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load i8, ptr %i.e, align 8, !tbaa !97, !range !107, !noundef !108
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN5arrow6ScalarEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %4) #18 ; 0 uses
  call void @_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92   ; 2 uses
  %.not.i = icmp ne ptr %i.l, null                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !range !107
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond = select i1 %.not.i, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 16777472, ptr %i.p, align 8, !alias.scope !109
  store double 1.000000e-05, ptr %5, align 8, !tbaa !112, !alias.scope !109
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.q, align 8, !tbaa !116, !alias.scope !109
  %i.r = call noundef zeroext i1 @_ZNK5arrow6Scalar6EqualsERKS0_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(41) %i.l, ptr noundef nonnull align 8 dereferenceable(41) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.pre40 = load i64, ptr %i.b, align 8, !tbaa !74 ; 2 uses
  br i1 %i.r, label %bb.j, label %_ZN5arrow6StatusD2Ev.exit

.critedge:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i
  %i.s = phi i64 [ %i.c, %.critedge ], [ %.pre40, %bb.i ]
  %i.t = add nsw i64 %i.s, %3
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.critedge2:                                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.i, %.critedge2
  %i.u = phi i64 [ %i.c, %.critedge2 ], [ %.pre40, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.v = load ptr, ptr %1, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 noundef %i.u)
  %i.y = load ptr, ptr %6, align 8, !tbaa !86     ; 2 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.k, label %bb.z

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !92  ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !54 ; 2 uses
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !117
  call void %i.af(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(144) %i.ac, ptr noundef nonnull align 8 dereferenceable(41) %i.aa, i64 noundef 1), !inline_history !96
  br label %_ZN5arrow6StatusD2Ev.exit34

bb.m:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(144) %i.ac)
  br label %_ZN5arrow6StatusD2Ev.exit34

_ZN5arrow6StatusD2Ev.exit34:                      ; preds = %bb.m, %bb.l
  %i.ai = load ptr, ptr %7, align 8, !tbaa !86    ; 2 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.n, label %bb.z

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit34
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !58 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.an = load i64, ptr %i.am, align 8, !tbaa !82
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !82
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(144) %i.al), !inline_history !83
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.as, ptr %i.at, align 8, !tbaa !84
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !58
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !85
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !85
  %i.ay = load i8, ptr %i.m, align 8, !tbaa !97, !range !107, !noundef !108
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !120, !noalias !121 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load atomic i32, ptr %i.be monotonic, align 8, !noalias !121
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.06.i.i.i.i.i = phi i32 [ %i.bf, %bb.p ], [ %i.bj, %bb.r ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = add nsw i32 %.06.i.i.i.i.i, 1
  %i.bh = cmpxchg weak ptr %i.be, i32 %.06.i.i.i.i.i, i32 %i.bg acq_rel monotonic, align 8, !noalias !121 ; 2 uses
  %i.bi = extractvalue { i32, i1 } %i.bh, 1
  %i.bj = extractvalue { i32, i1 } %i.bh, 0
  br i1 %i.bi, label %_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv.exit, label %bb.q, !llvm.loop !124

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.q, %bb.o
  %i.bk = call ptr @__cxa_allocate_exception(i64 8) #18, !noalias !121 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.bk, align 8, !tbaa !54, !noalias !121
  call void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #20, !noalias !121
  unreachable

_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv.exit: ; preds = %bb.r
  %i.bl = load ptr, ptr %i.ba, align 8, !tbaa !125, !noalias !121
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv.exit
  %.sroa.0.0 = phi ptr [ %i.bl, %_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv.exit ], [ null, %bb.n ]
  %.sroa.6.0 = phi ptr [ %i.bc, %_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv.exit ], [ null, %bb.n ]
  store ptr %.sroa.0.0, ptr %i.k, align 8, !tbaa !80
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !56 ; 8 uses
  store ptr %.sroa.6.0, ptr %i.bm, align 8, !tbaa !56
  %.not.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bo, align 8, !tbaa !61
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !63
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !54
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #18, !inline_history !126
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !54
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #18, !inline_history !126
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i = phi i32 [ %i.br, %bb.w ], [ %i.cb, %bb.x ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cc, label %bb.y, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #18
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.s, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.y, %bb.j, %bb.f
  %.sink = phi i64 [ %i.t, %bb.j ], [ %3, %bb.f ], [ %3, %bb.y ], [ %3, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %3, %bb.u ], [ %3, %bb.s ]
  store i64 %.sink, ptr %i.b, align 8, !tbaa !74
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !86
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %_ZN5arrow6StatusD2Ev.exit34, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120  ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !56
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i = phi i32 [ %i.f, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i = icmp eq i32 %.06.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %.06.i.i.i.i, 1
  %i.h = cmpxchg weak ptr %i.e, i32 %.06.i.i.i.i, i32 %i.g acq_rel monotonic, align 8 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  %i.j = extractvalue { i32, i1 } %i.h, 0
  br i1 %i.i, label %_ZNSt10shared_ptrIKN5arrow6ScalarEEC2IS1_vEERKSt8weak_ptrIT_E.exit, label %bb.c, !llvm.loop !124

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i: ; preds = %bb.c, %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.k, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #20
  unreachable

_ZNSt10shared_ptrIKN5arrow6ScalarEEC2IS1_vEERKSt8weak_ptrIT_E.exit: ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !125
  store ptr %i.l, ptr %0, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN5arrow6ScalarEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EEaSEOS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !63
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !127
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !127
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EEaSEOS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EEaSEOS5_.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EEaSEOS5_.exit

_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EEaSEOS5_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret ptr %0
}

declare noundef zeroext i1 @_ZNK5arrow6Scalar6EqualsERKS0_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal20RunCompressorBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS5_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %.sink.split, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN5arrow12ArrayBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.e = load ptr, ptr %3, align 8, !tbaa !86     ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load i64, ptr %i.i, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.j, ptr %i.k, align 8, !tbaa !82
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(144) %i.h), !inline_history !83
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.o, ptr %i.p, align 8, !tbaa !84
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load i64, ptr %i.r, align 8, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.s, ptr %i.t, align 8, !tbaa !85
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !86
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

declare void @_ZN5arrow12ArrayBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal20RunCompressorBuilder29AppendRunCompressedArraySliceERKNS_9ArraySpanEll(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4)
  %i.f = load ptr, ptr %5, align 8, !tbaa !86     ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !58   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load i64, ptr %i.i, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.j, ptr %i.k, align 8, !tbaa !82
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(144) %i.h), !inline_history !83
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.o, ptr %i.p, align 8, !tbaa !84
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load i64, ptr %i.r, align 8, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.s, ptr %i.t, align 8, !tbaa !85
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !130
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal20RunCompressorBuilder16FinishCurrentRunEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %_ZN5arrow6StatusD2Ev.exit, label %bb.l

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %i.b)
  %i.h = load ptr, ptr %2, align 8, !tbaa !86     ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.m

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !92   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58   ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !noalias !133
  call void %i.o(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.l, ptr noundef nonnull align 8 dereferenceable(41) %i.j, i64 noundef 1), !inline_history !96
  br label %_ZN5arrow6StatusD2Ev.exit17

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.l)
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %bb.d, %bb.c
  %i.r = load ptr, ptr %3, align 8, !tbaa !86     ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !58   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.w = load i64, ptr %i.v, align 8, !tbaa !82
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.w, ptr %i.x, align 8, !tbaa !82
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(144) %i.u), !inline_history !83
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !84
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !85
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !85
  store ptr null, ptr %i.d, align 8, !tbaa !80
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !56 ; 8 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !56
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.aj, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !63
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #18, !inline_history !81
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #18, !inline_history !81
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

bb.h:                                             ; preds = %bb.f
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.am, %bb.i ], [ %i.aw, %bb.j ]
  %i.ax = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ax, label %bb.k, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, !prof !66

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #18
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  store i64 0, ptr %i.a, align 8, !tbaa !74
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !136
  br label %bb.m

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17, %_ZN5arrow6StatusD2Ev.exit, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal20RunCompressorBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(184) %1)
  %i.d = load ptr, ptr %3, align 8, !tbaa !86     ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow20RunEndEncodedBuilder15ValueRunBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS4_INS_8DataTypeEERS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(192) initializes((0, 192)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(176) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 9 uses
  %.not.i.i.i6 = icmp eq ptr %i.j, null           ; 2 uses
  br i1 %.not.i.i.i6, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i7 = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.k, align 4, !tbaa !3
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !3
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.p, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 64, ptr %i.q, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.s, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.t, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.v, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow8internal20RunCompressorBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x ptr> %i.c, ptr %i.x, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i6, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.z, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !63
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #18, !inline_history !139
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #18, !inline_history !139
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i8 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i8, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.l ], [ %i.am, %bb.m ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #18
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j, %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow20RunEndEncodedBuilder15ValueRunBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %4, ptr %i.ao, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !63
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !64
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !64
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20RunEndEncodedBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEES7_S3_INS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(176) initializes((0, 160), (168, 176)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.31", align 8 ; 8 uses
  %6 = alloca [2 x %"class.std::shared_ptr"], align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 64, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow20RunEndEncodedBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !142    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  store ptr %i.j, ptr %i.i, align 8, !tbaa !143, !alias.scope !146
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.l, ptr %i.r, align 8, !tbaa !56, !alias.scope !146
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !155
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !158
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.x = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #21
          to label %.noexc unwind label %bb.ab    ; 8 uses

.noexc:                                           ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 1, ptr %i.z, align 8, !tbaa !61, !noalias !161
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 1, ptr %i.aa, align 4, !tbaa !63, !noalias !161
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow20RunEndEncodedBuilder15ValueRunBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.x, align 8, !tbaa !54, !noalias !161
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  invoke void @_ZN5arrow20RunEndEncodedBuilder15ValueRunBuilderC1EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS4_INS_8DataTypeEERS0_(ptr noundef nonnull align 8 dereferenceable(192) %i.ab, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %bb.f unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow20RunEndEncodedBuilder15ValueRunBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, !noalias !161

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow20RunEndEncodedBuilder15ValueRunBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i: ; preds = %.noexc
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 208) #19, !noalias !161
  br label %.body

bb.f:                                             ; preds = %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !56, !alias.scope !161
  store ptr %i.ab, ptr %5, align 8, !tbaa !164, !alias.scope !161
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  store <2 x ptr> %i.ah, ptr %6, align 16, !tbaa !57
  %.not.i.i.i7 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i7, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i8 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

bb.i:                                             ; preds = %bb.g
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !166
  %.pre19 = load ptr, ptr %i.ad, align 8, !tbaa !56
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit: ; preds = %bb.f, %bb.h, %bb.i
  %i.an = phi ptr [ %i.x, %bb.f ], [ %i.x, %bb.h ], [ %.pre19, %bb.i ]
  %i.ao = phi ptr [ %i.ab, %bb.f ], [ %i.ab, %bb.h ], [ %.pre, %bb.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ao, ptr %i.ap, align 16, !tbaa !58
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.ad, align 8, !tbaa !56
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !56
  store ptr null, ptr %5, align 8, !tbaa !166
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 32
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull %6, ptr noundef nonnull %i.as)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %bb.ac

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !56 ; 8 uses
  %.not.i.i10 = icmp eq ptr %i.au, null
  br i1 %.not.i.i10, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.av, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !63
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #18, !inline_history !168
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !54
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #18, !inline_history !168
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i11 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i11, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12

bb.n:                                             ; preds = %bb.l
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i13 = phi i32 [ %i.ay, %bb.m ], [ %i.bi, %bb.n ]
  %i.bj = icmp eq i32 %.0.i.i.i.i13, 1
  br i1 %i.bj, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #18
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12, %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !56 ; 8 uses
  %.not.i.i10.1 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i10.1, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, label %bb.p

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i11.1 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i11.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = add nsw i32 %i.bp, -1
  store i32 %i.br, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.1

bb.s:                                             ; preds = %bb.q
  %i.bs = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.1

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.1: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i13.1 = phi i32 [ %i.bp, %bb.r ], [ %i.bs, %bb.s ]
  %i.bt = icmp eq i32 %.0.i.i.i.i13.1, 1
  br i1 %i.bt, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, !prof !66

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.1
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #18
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1

bb.u:                                             ; preds = %bb.p
  store i32 0, ptr %i.bm, align 8, !tbaa !61
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !63
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #18, !inline_history !168
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !54
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #18, !inline_history !168
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1: ; preds = %bb.u, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.1, %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.cb = load ptr, ptr %i.ar, align 8, !tbaa !67
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !58
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 112
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !82
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !82
  store i64 0, ptr %i.s, align 8, !tbaa !151
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  %i.ch = load ptr, ptr %i.ad, align 8, !tbaa !56 ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIN5arrow20RunEndEncodedBuilder15ValueRunBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.ci, align 8, !tbaa !61
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !63
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !54
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #18, !inline_history !169
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !54
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #18, !inline_history !169
  br label %_ZNSt12__shared_ptrIN5arrow20RunEndEncodedBuilder15ValueRunBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i15 = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i15, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !3
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal20RunCompressorBuilder6ResizeEl:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58, !noalias !360 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54, !noalias !360
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !360
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 noundef %2), !noalias !360, !inline_history !173
  %i.f = load ptr, ptr %3, align 8, !tbaa !86, !noalias !360 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !86, !alias.scope !360
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !360
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !58, !noalias !360 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load i64, ptr %i.i, align 8, !tbaa !82, !noalias !360
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.j, ptr %i.k, align 8, !tbaa !82, !noalias !360
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !54, !noalias !360
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !360
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(144) %i.h), !noalias !360, !inline_history !174
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.o, ptr %i.p, align 8, !tbaa !84, !noalias !360
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !58, !noalias !360
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load i64, ptr %i.r, align 8, !tbaa !85, !noalias !360
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.s, ptr %i.t, align 8, !tbaa !85, !noalias !360
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !363
  br label %_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl.exit

_ZN5arrow8internal20RunCompressorBuilder14ResizePhysicalEl.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20RunCompressorBuilder10AppendNullEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20RunCompressorBuilder16AppendEmptyValueEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow12ArrayBuilder16AppendArraySliceERKNS_9ArraySpanEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.7", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.d = load ptr, ptr %6, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !366
  invoke void @_ZN5arrow8internal12JoinToStringIJRA34_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(34) @.str.4, ptr noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.e = load ptr, ptr %5, align 8, !tbaa !210, !noalias !366 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !65, !noalias !366
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.c:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %5, align 8, !tbaa !210, !noalias !366 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !65, !noalias !366
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !366
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !366
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.r, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !63
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #18, !inline_history !139
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #18, !inline_history !139
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void

bb.j:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow8internal20RunCompressorBuilder4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8internal20RunCompressorBuilder12WillCloseRunERKSt10shared_ptrIKNS_6ScalarEEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !371
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8internal20RunCompressorBuilder25WillCloseRunOfEmptyValuesEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !374
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow20RunEndEncodedBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !63
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !377
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !377
  br label %_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow20RunEndEncodedBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow20RunEndEncodedBuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !63
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !378
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !378
  br label %_ZN5arrow20RunEndEncodedBuilderD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow20RunEndEncodedBuilderD2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !379
  br label %_ZN5arrow20RunEndEncodedBuilderD2Ev.exit

_ZN5arrow20RunEndEncodedBuilderD2Ev.exit:         ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(176) %0) #18, !inline_history !379
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder6ResizeEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165, !noalias !380 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !383
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58, !noalias !383 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54, !noalias !383
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !noalias !383
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i64 noundef %2), !noalias !383, !inline_history !386
  %i.h = load ptr, ptr %3, align 8, !tbaa !86, !noalias !383 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !383
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit19.i, label %.sink.split.i

_ZN5arrow6StatusD2Ev.exit19.i:                    ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !58, !noalias !383 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.l = load i64, ptr %i.k, align 8, !tbaa !82, !noalias !383
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %i.l, ptr %i.m, align 8, !tbaa !82, !noalias !383
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !54, !noalias !383
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !383
  %i.q = call noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(144) %i.j), !noalias !383, !inline_history !387
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.q, ptr %i.r, align 8, !tbaa !84, !noalias !383
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !58, !noalias !383
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load i64, ptr %i.t, align 8, !tbaa !85, !noalias !383
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %i.u, ptr %i.v, align 8, !tbaa !85, !noalias !383
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !380
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67, !noalias !380
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58, !noalias !380 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !54, !noalias !380
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !380
  call void %i.ab(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %i.y, i64 noundef %2), !noalias !380, !inline_history !388
  %i.ac = load ptr, ptr %4, align 8, !tbaa !86, !noalias !380 ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !86, !alias.scope !380
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !380
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.b, label %_ZN5arrow20RunEndEncodedBuilder14ResizePhysicalEl.exit

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit19.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !151, !noalias !380
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !67, !noalias !380
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !58, !noalias !380
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !82, !noalias !380
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !82, !noalias !380
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.af, ptr %i.al, align 8, !tbaa !84, !noalias !380
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.b, %bb.a
  store ptr %i.h, ptr %0, align 8, !tbaa !86, !alias.scope !380
  br label %_ZN5arrow20RunEndEncodedBuilder14ResizePhysicalEl.exit

_ZN5arrow20RunEndEncodedBuilder14ResizePhysicalEl.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit19.i, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder10AppendNullEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder16AppendEmptyValueEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 noundef 1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow8internal20RunCompressorBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow8internal20RunCompressorBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !63
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !389
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !389
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !63
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !168
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !168
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder15ValueRunBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow8internal20RunCompressorBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder15ValueRunBuilder12WillCloseRunERKSt10shared_ptrIKNS_6ScalarEEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !390, !nonnull !108, !align !392 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.c = icmp sgt i64 %3, 2147483647
  br i1 %i.c, label %bb.b, label %bb.c, !prof !66

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA70_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(70) @.str.1)
  br label %_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !151, !noalias !393
  %i.f = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.e, i64 %3) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 3 uses
  br i1 %i.g, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.2)
  br label %_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !393
  call void @_ZN5arrow20RunEndEncodedBuilder12AppendRunEndEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(176) %i.b, i64 noundef %i.h), !noalias !393
  %i.i = load ptr, ptr %4, align 8, !tbaa !86, !noalias !393 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !86, !alias.scope !393
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !393
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit11.i, label %_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit

_ZN5arrow6StatusD2Ev.exit11.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67, !noalias !393
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58, !noalias !393
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = load i64, ptr %i.n, align 8, !tbaa !82, !noalias !393
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %i.o, ptr %i.p, align 8, !tbaa !82, !noalias !393
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.h, ptr %i.q, align 8, !tbaa !84, !noalias !393
  store i64 %i.h, ptr %i.d, align 8, !tbaa !151, !noalias !393
  store ptr null, ptr %0, align 8, !tbaa !86, !alias.scope !396
  br label %_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit

_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit:  ; preds = %bb.b, %bb.d, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit11.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20RunEndEncodedBuilder15ValueRunBuilder25WillCloseRunOfEmptyValuesEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !390, !nonnull !108, !align !392 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.c = icmp sgt i64 %2, 2147483647
  br i1 %i.c, label %bb.b, label %bb.c, !prof !66

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA70_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(70) @.str.1)
  br label %_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !151, !noalias !399
  %i.f = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.e, i64 %2) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 3 uses
  br i1 %i.g, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(41) @.str.2)
  br label %_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !399
  call void @_ZN5arrow20RunEndEncodedBuilder12AppendRunEndEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(176) %i.b, i64 noundef %i.h), !noalias !399
  %i.i = load ptr, ptr %3, align 8, !tbaa !86, !noalias !399 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !86, !alias.scope !399
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !399
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit11.i, label %_ZN5arrow20RunEndEncodedBuilder8CloseRunEl.exit

end_hunk_2
