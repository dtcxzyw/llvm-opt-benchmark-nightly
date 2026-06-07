inline.NumInlined: 540
inline.NumDeleted: 267
begin_hunk_0_@_ZN5arrow18TypedChunkLocationIiEC2Eii:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIiEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !7
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

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow16Decimal32BuilderC2ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEl(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5arrow22FixedSizeBinaryBuilderC2ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEl(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow16Decimal32BuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x ptr> %i.c, ptr %i.i, align 8, !tbaa !39, !alias.scope !41
  ret void
}

declare void @_ZN5arrow22FixedSizeBinaryBuilderC2ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEl(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !48
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !49
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !49
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow16Decimal32Builder6AppendENS_9Decimal32E(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i32 %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !65 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !33, !noalias !65
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !65
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !65, !inline_history !68 ; 2 uses
  %.not.i.not = icmp slt i64 %i.f, %i.b
  br i1 %.not.i.not, label %_ZN5arrow6StatusD2Ev.exit10.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit10.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.g = add nsw i64 %i.f, 1
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !33, !noalias !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !65
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !68
  %.pr = load ptr, ptr %3, align 8, !tbaa !69     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit10.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(224) %1), !inline_history !72
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.t = load i32, ptr %i.s, align 8, !tbaa !74
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %i.p, %i.u
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store i32 %2, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !76
  %i.z = add nsw i64 %i.y, 4
  store i64 %i.z, ptr %i.x, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !77 ; 2 uses
  %i.ae = sdiv i64 %i.ad, 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !40
  %i.ah = srem i64 %i.ad, 8
  %i.ai = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !40
  %i.ak = or i8 %i.aj, %i.ag
  store i8 %i.ak, ptr %i.af, align 1, !tbaa !40
  %i.al = load i64, ptr %i.ac, align 8, !tbaa !77
  %i.am = add nsw i64 %i.al, 1
  store i64 %i.am, ptr %i.ac, align 8, !tbaa !77
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !78
  %i.ap = add nsw i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !78
  store ptr null, ptr %0, align 8, !tbaa !69, !alias.scope !79
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow16Decimal32Builder12UnsafeAppendENS_9Decimal32E(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !74
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.d, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j
  store i32 %1, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !76
  %i.n = add nsw i64 %i.m, 4
  store i64 %i.n, ptr %i.l, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77   ; 2 uses
  %i.s = sdiv i64 %i.r, 8
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !40
  %i.v = srem i64 %i.r, 8
  %i.w = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !40
  %i.y = or i8 %i.x, %i.u
  store i8 %i.y, ptr %i.t, align 1, !tbaa !40
end_hunk_0
begin_hunk_1_@_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb:_ZN5arrow6StatusD2Ev.exit
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.cs, align 8, !tbaa !46
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !48
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !33
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #13, !inline_history !143
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !33
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #13, !inline_history !143
  br label %_ZN5arrow13BufferBuilder5ResetEv.exit

bb.af:                                            ; preds = %bb.ad
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cv, %bb.ag ], [ %i.df, %bb.ah ]
  %i.dg = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dg, label %bb.ai, label %_ZN5arrow13BufferBuilder5ResetEv.exit, !prof !50

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #13
  br label %_ZN5arrow13BufferBuilder5ResetEv.exit

_ZN5arrow13BufferBuilder5ResetEv.exit:            ; preds = %bb.ac, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i8 0, i64 16, i1 false)
  store ptr null, ptr %0, align 8, !tbaa !69, !alias.scope !144
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow13BufferBuilder5ResetEv.exit
  ret void
}

declare void @_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_6BufferEESaIS6_EEll(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.16") align 8, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !87     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !48
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #13, !inline_history !147
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #13, !inline_history !147
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #13
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !96

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !87
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !90
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #15
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !48
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !49
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !49
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow16Decimal64BuilderC2ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEl(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5arrow22FixedSizeBinaryBuilderC2ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEl(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow16Decimal64BuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x ptr> %i.c, ptr %i.i, align 8, !tbaa !39, !alias.scope !148
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow16Decimal64Builder6AppendENS_9Decimal64E(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !153 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !33, !noalias !153
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !153
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !153, !inline_history !68 ; 2 uses
  %.not.i.not = icmp slt i64 %i.f, %i.b
  br i1 %.not.i.not, label %_ZN5arrow6StatusD2Ev.exit10.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit10.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.g = add nsw i64 %i.f, 1
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !33, !noalias !153
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !153
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !68
  %.pr = load ptr, ptr %3, align 8, !tbaa !69     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit10.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(224) %1), !inline_history !156
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.t = load i32, ptr %i.s, align 8, !tbaa !74
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %i.p, %i.u
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store i64 %2, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !76
  %i.z = add nsw i64 %i.y, 8
  store i64 %i.z, ptr %i.x, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !77 ; 2 uses
  %i.ae = sdiv i64 %i.ad, 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !40
  %i.ah = srem i64 %i.ad, 8
  %i.ai = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !40
  %i.ak = or i8 %i.aj, %i.ag
  store i8 %i.ak, ptr %i.af, align 1, !tbaa !40
  %i.al = load i64, ptr %i.ac, align 8, !tbaa !77
  %i.am = add nsw i64 %i.al, 1
  store i64 %i.am, ptr %i.ac, align 8, !tbaa !77
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !78
  %i.ap = add nsw i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !78
  store ptr null, ptr %0, align 8, !tbaa !69, !alias.scope !157
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow16Decimal64Builder12UnsafeAppendENS_9Decimal64E(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !74
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.d, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j
  store i64 %1, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !76
  %i.n = add nsw i64 %i.m, 8
  store i64 %i.n, ptr %i.l, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77   ; 2 uses
  %i.s = sdiv i64 %i.r, 8
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !40
  %i.v = srem i64 %i.r, 8
  %i.w = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !40
  %i.y = or i8 %i.x, %i.u
  store i8 %i.y, ptr %i.t, align 1, !tbaa !40
  %i.z = load i64, ptr %i.q, align 8, !tbaa !77
  %i.aa = add nsw i64 %i.z, 1
  store i64 %i.aa, ptr %i.q, align 8, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.ad = add nsw i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow16Decimal64Builder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, i64 %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !77   ; 2 uses
  %i.e = sdiv i64 %i.d, 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !40
  %i.h = srem i64 %i.d, 8
  %i.i = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !40
  %i.k = or i8 %i.j, %i.g
  store i8 %i.k, ptr %i.f, align 1, !tbaa !40
  %i.l = load i64, ptr %i.c, align 8, !tbaa !77
  %i.m = add nsw i64 %i.l, 1
  store i64 %i.m, ptr %i.c, align 8, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !78
  %i.p = add nsw i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i32, ptr %i.q, align 8, !tbaa !74   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %_ZN5arrow22FixedSizeBinaryBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, !prof !82

bb.b:                                             ; preds = %bb.a
  %i.t = zext nneg i32 %i.r to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !76
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %2, i64 %i.t, i1 false)
  %i.z = load i64, ptr %i.w, align 8, !tbaa !76
  %i.aa = add nsw i64 %i.z, %i.t
  store i64 %i.aa, ptr %i.w, align 8, !tbaa !76
  br label %_ZN5arrow22FixedSizeBinaryBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5arrow22FixedSizeBinaryBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow16Decimal64Builder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr nofree noundef captures(none) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.13", align 16 ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.std::shared_ptr.13", align 16 ; 9 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.std::shared_ptr.16", align 16 ; 7 uses
  %8 = alloca %"class.std::shared_ptr.10", align 8 ; 4 uses
  %9 = alloca %"class.std::vector.19", align 8    ; 8 uses
  %10 = alloca [2 x %"class.std::shared_ptr.13"], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
end_hunk_1
begin_hunk_2_@_ZN5arrow16Decimal64Builder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE:bb.a
  br i1 %i.fe, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.fc, align 8, !tbaa !46
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !48
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !33
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #13, !inline_history !99
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !33
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #13, !inline_history !99
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ay:                                            ; preds = %bb.aw
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i49 = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i49, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fo = add nsw i32 %i.ff, -1
  store i32 %i.fo, ptr %i.fc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50

bb.ba:                                            ; preds = %bb.ay
  %i.fp = atomicrmw volatile add ptr %i.fc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i51 = phi i32 [ %i.ff, %bb.az ], [ %i.fp, %bb.ba ]
  %i.fq = icmp eq i32 %.0.i.i.i.i51, 1
  br i1 %i.fq, label %bb.bb, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #13
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  store ptr null, ptr %0, align 8, !tbaa !69, !alias.scope !163
  br label %.critedge27

bb.bc:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit37
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bd:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit40
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #13
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn21 = phi { ptr, i32 } [ %i.ft, %bb.be ], [ %i.fs, %bb.bd ]
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #13
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bc
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %bb.bf ], [ %i.fr, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.bn

.critedge27:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit33, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !35 ; 8 uses
  %.not.i.i52 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i52, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56, label %bb.bh

bb.bh:                                            ; preds = %.critedge27
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 4 uses
  %i.fy = load atomic i64, ptr %i.fx acquire, align 8 ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 4294967297
  %i.ga = trunc i64 %i.fy to i32                  ; 2 uses
  br i1 %i.fz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.fx, align 8, !tbaa !46
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 0, ptr %i.gb, align 4, !tbaa !48
  %i.gc = load ptr, ptr %i.fw, align 8, !tbaa !33
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #13, !inline_history !98
  %i.gf = load ptr, ptr %i.fw, align 8, !tbaa !33
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #13, !inline_history !98
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56

bb.bj:                                            ; preds = %bb.bh
  %i.gi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i53 = icmp eq i8 %i.gi, 0
  br i1 %.not.i.i.i53, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gj = add nsw i32 %i.ga, -1
  store i32 %i.gj, ptr %i.fx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

bb.bl:                                            ; preds = %bb.bj
  %i.gk = atomicrmw volatile add ptr %i.fx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i55 = phi i32 [ %i.ga, %bb.bk ], [ %i.gk, %bb.bl ]
  %i.gl = icmp eq i32 %.0.i.i.i.i55, 1
  br i1 %i.gl, label %bb.bm, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56, !prof !50

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #13
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56: ; preds = %.critedge27, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.critedge

bb.bn:                                            ; preds = %bb.bg, %bb.c
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %bb.bg ], [ %i.p, %bb.c ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.bu

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !35 ; 8 uses
  %.not.i.i57 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i57, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61, label %bb.bo

bb.bo:                                            ; preds = %.critedge
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 4 uses
  %i.gp = load atomic i64, ptr %i.go acquire, align 8 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 4294967297
  %i.gr = trunc i64 %i.gp to i32                  ; 2 uses
  br i1 %i.gq, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.go, align 8, !tbaa !46
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  store i32 0, ptr %i.gs, align 4, !tbaa !48
  %i.gt = load ptr, ptr %i.gn, align 8, !tbaa !33
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #13, !inline_history !98
  %i.gw = load ptr, ptr %i.gn, align 8, !tbaa !33
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #13, !inline_history !98
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61

bb.bq:                                            ; preds = %bb.bo
  %i.gz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i58 = icmp eq i8 %i.gz, 0
  br i1 %.not.i.i.i58, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ha = add nsw i32 %i.gr, -1
  store i32 %i.ha, ptr %i.go, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

bb.bs:                                            ; preds = %bb.bq
  %i.hb = atomicrmw volatile add ptr %i.go, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i60 = phi i32 [ %i.gr, %bb.br ], [ %i.hb, %bb.bs ]
  %i.hc = icmp eq i32 %.0.i.i.i.i60, 1
  br i1 %i.hc, label %bb.bt, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61, !prof !50

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #13
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61: ; preds = %.critedge, %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.bu:                                            ; preds = %bb.bn, %bb.b
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn, %bb.bn ], [ %i.d, %bb.b ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn21.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17Decimal128BuilderC2ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEl(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5arrow22FixedSizeBinaryBuilderC2ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEl(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17Decimal128BuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x ptr> %i.c, ptr %i.i, align 8, !tbaa !39, !alias.scope !166
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17Decimal128Builder6AppendENS_10Decimal128E(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 %2, i64 %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !171 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !33, !noalias !171
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !171
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !171, !inline_history !68 ; 2 uses
  %.not.i.not = icmp slt i64 %i.f, %i.b
  br i1 %.not.i.not, label %_ZN5arrow6StatusD2Ev.exit11.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit11.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.g = add nsw i64 %i.f, 1
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !33, !noalias !171
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !171
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !68
  %.pr = load ptr, ptr %4, align 8, !tbaa !69     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit11.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(224) %1), !inline_history !174
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.t = load i32, ptr %i.s, align 8, !tbaa !74
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %i.p, %i.u
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v ; 2 uses
  store i64 %2, ptr %i.w, align 1
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !76
  %i.z = add nsw i64 %i.y, 16
  store i64 %i.z, ptr %i.x, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !77 ; 2 uses
  %i.ae = sdiv i64 %i.ad, 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !40
  %i.ah = srem i64 %i.ad, 8
  %i.ai = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !40
  %i.ak = or i8 %i.aj, %i.ag
  store i8 %i.ak, ptr %i.af, align 1, !tbaa !40
  %i.al = load i64, ptr %i.ac, align 8, !tbaa !77
  %i.am = add nsw i64 %i.al, 1
  store i64 %i.am, ptr %i.ac, align 8, !tbaa !77
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !78
  %i.ap = add nsw i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !78
  store ptr null, ptr %0, align 8, !tbaa !69, !alias.scope !175
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17Decimal128Builder12UnsafeAppendENS_10Decimal128E(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 %1, i64 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !74
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.d, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j ; 2 uses
  store i64 %1, ptr %i.k, align 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !76
  %i.n = add nsw i64 %i.m, 16
  store i64 %i.n, ptr %i.l, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77   ; 2 uses
  %i.s = sdiv i64 %i.r, 8
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !40
  %i.v = srem i64 %i.r, 8
  %i.w = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !40
  %i.y = or i8 %i.x, %i.u
  store i8 %i.y, ptr %i.t, align 1, !tbaa !40
  %i.z = load i64, ptr %i.q, align 8, !tbaa !77
  %i.aa = add nsw i64 %i.z, 1
  store i64 %i.aa, ptr %i.q, align 8, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.ad = add nsw i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow17Decimal128Builder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, i64 %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !77   ; 2 uses
  %i.e = sdiv i64 %i.d, 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !40
  %i.h = srem i64 %i.d, 8
  %i.i = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !40
  %i.k = or i8 %i.j, %i.g
  store i8 %i.k, ptr %i.f, align 1, !tbaa !40
  %i.l = load i64, ptr %i.c, align 8, !tbaa !77
  %i.m = add nsw i64 %i.l, 1
  store i64 %i.m, ptr %i.c, align 8, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !78
  %i.p = add nsw i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i32, ptr %i.q, align 8, !tbaa !74   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %_ZN5arrow22FixedSizeBinaryBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, !prof !82

bb.b:                                             ; preds = %bb.a
  %i.t = zext nneg i32 %i.r to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !76
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %2, i64 %i.t, i1 false)
  %i.z = load i64, ptr %i.w, align 8, !tbaa !76
  %i.aa = add nsw i64 %i.z, %i.t
  store i64 %i.aa, ptr %i.w, align 8, !tbaa !76
  br label %_ZN5arrow22FixedSizeBinaryBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5arrow22FixedSizeBinaryBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17Decimal128Builder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr nofree noundef captures(none) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.13", align 16 ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.std::shared_ptr.13", align 16 ; 9 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.std::shared_ptr.16", align 16 ; 7 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow17Decimal128Builder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE:bb.a
  br i1 %i.fe, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.fc, align 8, !tbaa !46
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !48
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !33
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #13, !inline_history !99
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !33
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #13, !inline_history !99
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ay:                                            ; preds = %bb.aw
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i49 = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i49, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fo = add nsw i32 %i.ff, -1
  store i32 %i.fo, ptr %i.fc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50

bb.ba:                                            ; preds = %bb.ay
  %i.fp = atomicrmw volatile add ptr %i.fc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i51 = phi i32 [ %i.ff, %bb.az ], [ %i.fp, %bb.ba ]
  %i.fq = icmp eq i32 %.0.i.i.i.i51, 1
  br i1 %i.fq, label %bb.bb, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #13
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  store ptr null, ptr %0, align 8, !tbaa !69, !alias.scope !181
  br label %.critedge27

bb.bc:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit37
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bd:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit40
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #13
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn21 = phi { ptr, i32 } [ %i.ft, %bb.be ], [ %i.fs, %bb.bd ]
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #13
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bc
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %bb.bf ], [ %i.fr, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.bn

.critedge27:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit33, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !35 ; 8 uses
  %.not.i.i52 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i52, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56, label %bb.bh

bb.bh:                                            ; preds = %.critedge27
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 4 uses
  %i.fy = load atomic i64, ptr %i.fx acquire, align 8 ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 4294967297
  %i.ga = trunc i64 %i.fy to i32                  ; 2 uses
  br i1 %i.fz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.fx, align 8, !tbaa !46
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 0, ptr %i.gb, align 4, !tbaa !48
  %i.gc = load ptr, ptr %i.fw, align 8, !tbaa !33
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #13, !inline_history !98
  %i.gf = load ptr, ptr %i.fw, align 8, !tbaa !33
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #13, !inline_history !98
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56

bb.bj:                                            ; preds = %bb.bh
  %i.gi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i53 = icmp eq i8 %i.gi, 0
  br i1 %.not.i.i.i53, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gj = add nsw i32 %i.ga, -1
  store i32 %i.gj, ptr %i.fx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

bb.bl:                                            ; preds = %bb.bj
  %i.gk = atomicrmw volatile add ptr %i.fx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i55 = phi i32 [ %i.ga, %bb.bk ], [ %i.gk, %bb.bl ]
  %i.gl = icmp eq i32 %.0.i.i.i.i55, 1
  br i1 %i.gl, label %bb.bm, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56, !prof !50

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #13
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56: ; preds = %.critedge27, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.critedge

bb.bn:                                            ; preds = %bb.bg, %bb.c
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %bb.bg ], [ %i.p, %bb.c ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.bu

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !35 ; 8 uses
  %.not.i.i57 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i57, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61, label %bb.bo

bb.bo:                                            ; preds = %.critedge
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 4 uses
  %i.gp = load atomic i64, ptr %i.go acquire, align 8 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 4294967297
  %i.gr = trunc i64 %i.gp to i32                  ; 2 uses
  br i1 %i.gq, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.go, align 8, !tbaa !46
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  store i32 0, ptr %i.gs, align 4, !tbaa !48
  %i.gt = load ptr, ptr %i.gn, align 8, !tbaa !33
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #13, !inline_history !98
  %i.gw = load ptr, ptr %i.gn, align 8, !tbaa !33
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #13, !inline_history !98
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61

bb.bq:                                            ; preds = %bb.bo
  %i.gz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i58 = icmp eq i8 %i.gz, 0
  br i1 %.not.i.i.i58, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ha = add nsw i32 %i.gr, -1
  store i32 %i.ha, ptr %i.go, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

bb.bs:                                            ; preds = %bb.bq
  %i.hb = atomicrmw volatile add ptr %i.go, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i60 = phi i32 [ %i.gr, %bb.br ], [ %i.hb, %bb.bs ]
  %i.hc = icmp eq i32 %.0.i.i.i.i60, 1
  br i1 %i.hc, label %bb.bt, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61, !prof !50

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #13
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61: ; preds = %.critedge, %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.bu:                                            ; preds = %bb.bn, %bb.b
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn, %bb.bn ], [ %i.d, %bb.b ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn21.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17Decimal256BuilderC2ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEl(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5arrow22FixedSizeBinaryBuilderC2ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEl(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17Decimal256BuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x ptr> %i.c, ptr %i.i, align 8, !tbaa !39, !alias.scope !184
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17Decimal256Builder6AppendERKNS_10Decimal256E(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !189 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !33, !noalias !189
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !189
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !189, !inline_history !68 ; 2 uses
  %.not.i.not = icmp slt i64 %i.f, %i.b
  br i1 %.not.i.not, label %_ZN5arrow6StatusD2Ev.exit10.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit10.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.g = add nsw i64 %i.f, 1
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !33, !noalias !189
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !189
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !68
  %.pr = load ptr, ptr %3, align 8, !tbaa !69     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit10.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(224) %1), !inline_history !192
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.t = load i32, ptr %i.s, align 8, !tbaa !74
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %i.p, %i.u
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !76
  %i.z = add nsw i64 %i.y, 32
  store i64 %i.z, ptr %i.x, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !77 ; 2 uses
  %i.ae = sdiv i64 %i.ad, 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !40
  %i.ah = srem i64 %i.ad, 8
  %i.ai = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !40
  %i.ak = or i8 %i.aj, %i.ag
  store i8 %i.ak, ptr %i.af, align 1, !tbaa !40
  %i.al = load i64, ptr %i.ac, align 8, !tbaa !77
  %i.am = add nsw i64 %i.al, 1
  store i64 %i.am, ptr %i.ac, align 8, !tbaa !77
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !78
  %i.ap = add nsw i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !78
  store ptr null, ptr %0, align 8, !tbaa !69, !alias.scope !193
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17Decimal256Builder12UnsafeAppendERKNS_10Decimal256E(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !74
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.d, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !76
  %i.n = add nsw i64 %i.m, 32
  store i64 %i.n, ptr %i.l, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77   ; 2 uses
  %i.s = sdiv i64 %i.r, 8
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !40
  %i.v = srem i64 %i.r, 8
  %i.w = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !40
  %i.y = or i8 %i.x, %i.u
  store i8 %i.y, ptr %i.t, align 1, !tbaa !40
  %i.z = load i64, ptr %i.q, align 8, !tbaa !77
  %i.aa = add nsw i64 %i.z, 1
  store i64 %i.aa, ptr %i.q, align 8, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.ad = add nsw i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow17Decimal256Builder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, i64 %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !77   ; 2 uses
  %i.e = sdiv i64 %i.d, 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !40
  %i.h = srem i64 %i.d, 8
  %i.i = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !40
  %i.k = or i8 %i.j, %i.g
  store i8 %i.k, ptr %i.f, align 1, !tbaa !40
  %i.l = load i64, ptr %i.c, align 8, !tbaa !77
  %i.m = add nsw i64 %i.l, 1
  store i64 %i.m, ptr %i.c, align 8, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !78
  %i.p = add nsw i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i32, ptr %i.q, align 8, !tbaa !74   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %_ZN5arrow22FixedSizeBinaryBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, !prof !82

bb.b:                                             ; preds = %bb.a
  %i.t = zext nneg i32 %i.r to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !76
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %2, i64 %i.t, i1 false)
  %i.z = load i64, ptr %i.w, align 8, !tbaa !76
  %i.aa = add nsw i64 %i.z, %i.t
  store i64 %i.aa, ptr %i.w, align 8, !tbaa !76
  br label %_ZN5arrow22FixedSizeBinaryBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5arrow22FixedSizeBinaryBuilder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17Decimal256Builder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr nofree noundef captures(none) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.13", align 16 ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.std::shared_ptr.13", align 16 ; 9 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.std::shared_ptr.16", align 16 ; 7 uses
  %8 = alloca %"class.std::shared_ptr.10", align 8 ; 4 uses
  %9 = alloca %"class.std::vector.19", align 8    ; 8 uses
  %10 = alloca [2 x %"class.std::shared_ptr.13"], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
end_hunk_3
begin_hunk_4_@_ZN5arrow17Decimal256Builder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE:bb.a
  %i.ff = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.fe, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.fc, align 8, !tbaa !46
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !48
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !33
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #13, !inline_history !99
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !33
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #13, !inline_history !99
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ay:                                            ; preds = %bb.aw
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i49 = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i49, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fo = add nsw i32 %i.ff, -1
  store i32 %i.fo, ptr %i.fc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50

bb.ba:                                            ; preds = %bb.ay
  %i.fp = atomicrmw volatile add ptr %i.fc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i51 = phi i32 [ %i.ff, %bb.az ], [ %i.fp, %bb.ba ]
  %i.fq = icmp eq i32 %.0.i.i.i.i51, 1
  br i1 %i.fq, label %bb.bb, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #13
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  store ptr null, ptr %0, align 8, !tbaa !69, !alias.scope !199
  br label %.critedge27

bb.bc:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit37
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bd:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit40
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #13
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn21 = phi { ptr, i32 } [ %i.ft, %bb.be ], [ %i.fs, %bb.bd ]
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #13
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bc
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %bb.bf ], [ %i.fr, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.bn

.critedge27:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit33, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !35 ; 8 uses
  %.not.i.i52 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i52, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56, label %bb.bh

bb.bh:                                            ; preds = %.critedge27
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 4 uses
  %i.fy = load atomic i64, ptr %i.fx acquire, align 8 ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 4294967297
  %i.ga = trunc i64 %i.fy to i32                  ; 2 uses
  br i1 %i.fz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.fx, align 8, !tbaa !46
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 0, ptr %i.gb, align 4, !tbaa !48
  %i.gc = load ptr, ptr %i.fw, align 8, !tbaa !33
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #13, !inline_history !98
  %i.gf = load ptr, ptr %i.fw, align 8, !tbaa !33
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #13, !inline_history !98
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56

bb.bj:                                            ; preds = %bb.bh
  %i.gi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i53 = icmp eq i8 %i.gi, 0
  br i1 %.not.i.i.i53, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gj = add nsw i32 %i.ga, -1
  store i32 %i.gj, ptr %i.fx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

bb.bl:                                            ; preds = %bb.bj
  %i.gk = atomicrmw volatile add ptr %i.fx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i55 = phi i32 [ %i.ga, %bb.bk ], [ %i.gk, %bb.bl ]
  %i.gl = icmp eq i32 %.0.i.i.i.i55, 1
  br i1 %i.gl, label %bb.bm, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56, !prof !50

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #13
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56: ; preds = %.critedge27, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.critedge

bb.bn:                                            ; preds = %bb.bg, %bb.c
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %bb.bg ], [ %i.p, %bb.c ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.bu

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !35 ; 8 uses
  %.not.i.i57 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i57, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61, label %bb.bo

bb.bo:                                            ; preds = %.critedge
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 4 uses
  %i.gp = load atomic i64, ptr %i.go acquire, align 8 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 4294967297
  %i.gr = trunc i64 %i.gp to i32                  ; 2 uses
  br i1 %i.gq, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.go, align 8, !tbaa !46
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  store i32 0, ptr %i.gs, align 4, !tbaa !48
  %i.gt = load ptr, ptr %i.gn, align 8, !tbaa !33
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #13, !inline_history !98
  %i.gw = load ptr, ptr %i.gn, align 8, !tbaa !33
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #13, !inline_history !98
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61

bb.bq:                                            ; preds = %bb.bo
  %i.gz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i58 = icmp eq i8 %i.gz, 0
  br i1 %.not.i.i.i58, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ha = add nsw i32 %i.gr, -1
  store i32 %i.ha, ptr %i.go, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

bb.bs:                                            ; preds = %bb.bq
  %i.hb = atomicrmw volatile add ptr %i.go, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i60 = phi i32 [ %i.gr, %bb.br ], [ %i.hb, %bb.bs ]
  %i.hc = icmp eq i32 %.0.i.i.i.i60, 1
  br i1 %i.hc, label %bb.bt, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61, !prof !50

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #13
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61: ; preds = %.critedge, %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.bu:                                            ; preds = %bb.bn, %bb.b
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn, %bb.bn ], [ %i.d, %bb.b ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn21.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow16Decimal32BuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow16Decimal32BuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13Decimal32TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !48
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !202
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !202
  br label %_ZNSt12__shared_ptrIN5arrow13Decimal32TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow13Decimal32TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13
  br label %_ZNSt12__shared_ptrIN5arrow13Decimal32TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13Decimal32TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow22FixedSizeBinaryBuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow13Decimal32TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !48
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !203
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !203
  br label %_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit, !prof !50

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13
  br label %_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit

_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit:       ; preds = %_ZNSt12__shared_ptrIN5arrow13Decimal32TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(208) %0) #13
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow16Decimal32BuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow16Decimal32BuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow13Decimal32TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !48
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !204
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !204
  br label %_ZNSt12__shared_ptrIN5arrow13Decimal32TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow13Decimal32TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !205
  br label %_ZNSt12__shared_ptrIN5arrow13Decimal32TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow13Decimal32TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow22FixedSizeBinaryBuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow16Decimal32BuilderD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow13Decimal32TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !48
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !206
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !206
  br label %_ZN5arrow16Decimal32BuilderD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow16Decimal32BuilderD2Ev.exit, !prof !50

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !205
  br label %_ZN5arrow16Decimal32BuilderD2Ev.exit

_ZN5arrow16Decimal32BuilderD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN5arrow13Decimal32TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(224) %0) #13, !inline_history !205
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK5arrow12ArrayBuilder6lengthEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !86
  ret i64 %i.b
}

declare void @_ZN5arrow22FixedSizeBinaryBuilder6ResizeEl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(208), i64 noundef) unnamed_addr #2

declare void @_ZN5arrow22FixedSizeBinaryBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZN5arrow22FixedSizeBinaryBuilder10AppendNullEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZN5arrow22FixedSizeBinaryBuilder11AppendNullsEl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(208), i64 noundef) unnamed_addr #2

declare void @_ZN5arrow22FixedSizeBinaryBuilder16AppendEmptyValueEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZN5arrow22FixedSizeBinaryBuilder17AppendEmptyValuesEl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(208), i64 noundef) unnamed_addr #2

declare void @_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarEl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 1, i64 noundef) unnamed_addr #2

declare void @_ZN5arrow12ArrayBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow22FixedSizeBinaryBuilder16AppendArraySliceERKNS_9ArraySpanEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !209
  %i.f = add nsw i64 %i.e, %3                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !74
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.f, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 %i.j
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !207
  tail call void @_ZN5arrow22FixedSizeBinaryBuilder12AppendValuesEPKhlS2_l(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %i.k, i64 noundef %4, ptr noundef %i.l, i64 noundef %i.f)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5arrow16Decimal32Builder4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !39
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_13Decimal32TypeEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_13Decimal32TypeEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_13Decimal32TypeEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_13Decimal32TypeEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow16Decimal64BuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow16Decimal64BuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13Decimal64TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !48
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !217
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !217
  br label %_ZNSt12__shared_ptrIN5arrow13Decimal64TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow13Decimal64TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13
  br label %_ZNSt12__shared_ptrIN5arrow13Decimal64TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13Decimal64TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow22FixedSizeBinaryBuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow13Decimal64TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !48
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !203
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !203
  br label %_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit, !prof !50

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13
  br label %_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit

_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit:       ; preds = %_ZNSt12__shared_ptrIN5arrow13Decimal64TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(208) %0) #13
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow16Decimal64BuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow16Decimal64BuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow13Decimal64TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !48
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !218
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !218
  br label %_ZNSt12__shared_ptrIN5arrow13Decimal64TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow13Decimal64TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !219
  br label %_ZNSt12__shared_ptrIN5arrow13Decimal64TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow13Decimal64TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow22FixedSizeBinaryBuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow16Decimal64BuilderD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow13Decimal64TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !48
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !220
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !220
  br label %_ZN5arrow16Decimal64BuilderD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow16Decimal64BuilderD2Ev.exit, !prof !50

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !219
  br label %_ZN5arrow16Decimal64BuilderD2Ev.exit

_ZN5arrow16Decimal64BuilderD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN5arrow13Decimal64TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(224) %0) #13, !inline_history !219
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5arrow16Decimal64Builder4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !39
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_13Decimal64TypeEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_13Decimal64TypeEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_13Decimal64TypeEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_13Decimal64TypeEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow17Decimal128BuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17Decimal128BuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !48
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !221
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !221
  br label %_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13
  br label %_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow22FixedSizeBinaryBuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !48
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !203
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !203
  br label %_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit, !prof !50

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13
  br label %_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit

_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit:       ; preds = %_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(208) %0) #13
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow17Decimal128BuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17Decimal128BuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !48
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !222
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !222
  br label %_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !223
  br label %_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow22FixedSizeBinaryBuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow17Decimal128BuilderD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !48
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !224
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !224
  br label %_ZN5arrow17Decimal128BuilderD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow17Decimal128BuilderD2Ev.exit, !prof !50

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !223
  br label %_ZN5arrow17Decimal128BuilderD2Ev.exit

_ZN5arrow17Decimal128BuilderD2Ev.exit:            ; preds = %_ZNSt12__shared_ptrIN5arrow14Decimal128TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(224) %0) #13, !inline_history !223
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5arrow17Decimal128Builder4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !39
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_14Decimal128TypeEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_14Decimal128TypeEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_14Decimal128TypeEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_14Decimal128TypeEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow17Decimal256BuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17Decimal256BuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !48
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !225
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !225
  br label %_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13
  br label %_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow22FixedSizeBinaryBuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !48
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !203
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !203
  br label %_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit, !prof !50

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13
  br label %_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit

_ZN5arrow22FixedSizeBinaryBuilderD2Ev.exit:       ; preds = %_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(208) %0) #13
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow17Decimal256BuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17Decimal256BuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !48
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !226
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !226
  br label %_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #13, !inline_history !227
  br label %_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow22FixedSizeBinaryBuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow17Decimal256BuilderD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !48
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !228
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !228
  br label %_ZN5arrow17Decimal256BuilderD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow17Decimal256BuilderD2Ev.exit, !prof !50

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #13, !inline_history !227
  br label %_ZN5arrow17Decimal256BuilderD2Ev.exit

_ZN5arrow17Decimal256BuilderD2Ev.exit:            ; preds = %_ZNSt12__shared_ptrIN5arrow14Decimal256TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(224) %0) #13, !inline_history !227
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5arrow17Decimal256Builder4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !39
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_14Decimal256TypeEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_14Decimal256TypeEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_14Decimal256TypeEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2INS0_14Decimal256TypeEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !48
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #13, !inline_history !229
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #13, !inline_history !229
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #13
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #13, !inline_history !230
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #13, !inline_history !230
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_4
begin_hunk_5_@_ZN5arrow13BufferBuilder6ResizeElb:bb.a
  br label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.l, %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.c, %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit
  %i.ah = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.m, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !82

bb.m:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !142 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i23, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.m
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(80) %i.ak) #13, !inline_history !242
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !69 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !133

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ao = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.ah, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !134, !range !115, !noundef !116
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  br label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.m, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br i1 %i.g, label %bb.q, label %bb.r

bb.o:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %6, align 8, !tbaa !142   ; 3 uses
  %.not.i24 = icmp eq ptr %i.at, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25: ; preds = %bb.o
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(80) %i.at) #13, !inline_history !241
  br label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26

_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26: ; preds = %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26, %bb.d
  %.pn18 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.as, %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  resume { ptr, i32 } %.pn18

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef %2, i1 noundef zeroext %3)
  %i.ba = load ptr, ptr %7, align 8, !tbaa !69    ; 2 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit
  %i.bc = load ptr, ptr %1, align 8, !tbaa !103   ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !104
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !243
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !114, !range !115, !noundef !116
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bk = load i8, ptr %i.bj, align 8, !range !115
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = select i1 %i.bi, i1 %i.bl, i1 false, !prof !82
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = select i1 %i.bm, ptr %i.bo, ptr null, !prof !82
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !73
  store ptr null, ptr %0, align 8, !tbaa !69, !alias.scope !244
  br label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, %bb.q
  ret void
}

declare void @_ZN5arrow14AllocateBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !82

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #13, !inline_history !247
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !69 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !133

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !134, !range !115, !noundef !116
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

declare void @_ZN5arrow23AllocateResizableBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.49") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !82

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !142  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d) #13, !inline_history !248
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !69 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !133

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !134, !range !115, !noundef !116
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !142    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !103
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !35
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !142
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !249
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !35 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !48
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #13, !inline_history !251
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #13, !inline_history !251
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !50

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #13
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !35
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !46
  store i32 0, ptr %i.f, align 4, !tbaa !48
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #13, !inline_history !49
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #13, !inline_history !49
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #13
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #13
  resume { ptr, i32 } %i.al
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !252  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #13, !inline_history !254
  br label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow15ResizableBufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(46) @_ZTSSt14default_deleteIN5arrow15ResizableBufferEE) #13
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !128    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !118
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !35
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !257
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !35 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !48
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #13, !inline_history !251
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #13, !inline_history !251
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !50

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #13
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !35
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !46
  store i32 0, ptr %i.f, align 4, !tbaa !48
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #13, !inline_history !49
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #13, !inline_history !49
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #13
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #13
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !259  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #13, !inline_history !261
  br label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow6BufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(36) @_ZTSSt14default_deleteIN5arrow6BufferEE) #13
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow12ArrayBuilderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !262  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !263  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !48
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #13, !inline_history !264
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #13, !inline_history !264
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
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
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #13
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !265

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !262
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !266
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #15
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ae, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !48
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #13, !inline_history !267
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #13, !inline_history !267
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
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
  br i1 %i.as, label %bb.n, label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit, !prof !50

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #13
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit:       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  ret void
}

declare void @_ZN5arrow22FixedSizeBinaryBuilder12AppendValuesEPKhlS2_l(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN5arrow18TypedChunkLocationIiEE", !4, i64 0, !4, i64 4}
!9 = !{!8, !4, i64 4}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN5arrow18TypedChunkLocationIsEE", !12, i64 0, !12, i64 2}
!12 = !{!"short", !5, i64 0}
!13 = !{!11, !12, i64 2}
!14 = !{!15, !5, i64 0}
!15 = !{!"_ZTSN5arrow18TypedChunkLocationIaEE", !5, i64 0, !5, i64 1}
!16 = !{!15, !5, i64 1}
!17 = !{!18, !5, i64 0}
!18 = !{!"_ZTSN5arrow18TypedChunkLocationIhEE", !5, i64 0, !5, i64 1}
!19 = !{!18, !5, i64 1}
!20 = !{!21, !12, i64 0}
!21 = !{!"_ZTSN5arrow18TypedChunkLocationItEE", !12, i64 0, !12, i64 2}
!22 = !{!21, !12, i64 2}
!23 = !{!24, !4, i64 0}
!24 = !{!"_ZTSN5arrow18TypedChunkLocationIjEE", !4, i64 0, !4, i64 4}
!25 = !{!24, !4, i64 4}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN5arrow18TypedChunkLocationIlEE", !28, i64 0, !28, i64 8}
!28 = !{!"long", !5, i64 0}
!29 = !{!27, !28, i64 8}
!30 = !{!31, !28, i64 0}
!31 = !{!"_ZTSN5arrow18TypedChunkLocationImEE", !28, i64 0, !28, i64 8}
!32 = !{!31, !28, i64 8}
!33 = !{!34, !34, i64 0}
!34 = !{!"vtable pointer", !6, i64 0}
!35 = !{!36, !37, i64 0}
end_hunk_5
