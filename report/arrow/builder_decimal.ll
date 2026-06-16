inline.NumInlined: 540
inline.NumDeleted: 267
begin_hunk_0_@_ZNK5arrow18TypedChunkLocationIhEeqES1_:bb.a
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
  %4 = add nsw i64 %i.f, 1
  %i.g = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %4, i64 %i.g)
  %i.h = load ptr, ptr %1, align 8, !tbaa !33, !noalias !65
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !noalias !65
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !68
  %.pr = load ptr, ptr %3, align 8, !tbaa !69     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit10.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.l = load ptr, ptr %1, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(224) %1), !inline_history !72
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.s = load i32, ptr %i.r, align 8, !tbaa !74
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.o, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  store i32 %2, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !76
  %i.y = add nsw i64 %i.x, 4
  store i64 %i.y, ptr %i.w, align 8, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !77 ; 2 uses
  %i.ad = sdiv i64 %i.ac, 8
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !40
  %i.ag = srem i64 %i.ac, 8
  %i.ah = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !40
  %i.aj = or i8 %i.ai, %i.af
  store i8 %i.aj, ptr %i.ae, align 1, !tbaa !40
  %i.ak = load i64, ptr %i.ab, align 8, !tbaa !77
  %i.al = add nsw i64 %i.ak, 1
  store i64 %i.al, ptr %i.ab, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !78
  %i.ao = add nsw i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !78
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
  %i.z = load i64, ptr %i.q, align 8, !tbaa !77
  %i.aa = add nsw i64 %i.z, 1
  store i64 %i.aa, ptr %i.q, align 8, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.ad = add nsw i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !78
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow16Decimal32Builder12UnsafeAppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, i64 %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #4 align 2 {
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
define void @_ZN5arrow16Decimal32Builder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr nofree noundef captures(none) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !69     ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5arrow6StatusD2Ev.exit31, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.bu

_ZN5arrow6StatusD2Ev.exit31:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77, !noalias !83 ; 2 uses
  %i.h = ashr i64 %i.g, 3
  %i.i = and i64 %i.g, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i64
  %i.l = add nsw i64 %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.l, ptr %i.m, align 8, !tbaa !76, !noalias !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !83
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %5, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit33 unwind label %bb.c

end_hunk_0
begin_hunk_1_@_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb:_ZN5arrow6StatusD2Ev.exit
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
  %4 = add nsw i64 %i.f, 1
  %i.g = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %4, i64 %i.g)
  %i.h = load ptr, ptr %1, align 8, !tbaa !33, !noalias !153
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !noalias !153
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !68
  %.pr = load ptr, ptr %3, align 8, !tbaa !69     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit10.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.l = load ptr, ptr %1, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(224) %1), !inline_history !156
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.s = load i32, ptr %i.r, align 8, !tbaa !74
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.o, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  store i64 %2, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !76
  %i.y = add nsw i64 %i.x, 8
  store i64 %i.y, ptr %i.w, align 8, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !77 ; 2 uses
  %i.ad = sdiv i64 %i.ac, 8
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !40
  %i.ag = srem i64 %i.ac, 8
  %i.ah = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !40
  %i.aj = or i8 %i.ai, %i.af
  store i8 %i.aj, ptr %i.ae, align 1, !tbaa !40
  %i.ak = load i64, ptr %i.ab, align 8, !tbaa !77
  %i.al = add nsw i64 %i.ak, 1
  store i64 %i.al, ptr %i.ab, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !78
  %i.ao = add nsw i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !78
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !69     ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5arrow6StatusD2Ev.exit31, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.bu

_ZN5arrow6StatusD2Ev.exit31:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77, !noalias !160 ; 2 uses
  %i.h = ashr i64 %i.g, 3
  %i.i = and i64 %i.g, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i64
  %i.l = add nsw i64 %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.l, ptr %i.m, align 8, !tbaa !76, !noalias !160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !160
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %5, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit33 unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit33:                      ; preds = %_ZN5arrow6StatusD2Ev.exit31
  %i.n = load ptr, ptr %6, align 8, !tbaa !69     ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit37, label %.critedge27

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit31
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
end_hunk_1
begin_hunk_2_@_ZN5arrow16Decimal64Builder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE:bb.a
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
  %5 = add nsw i64 %i.f, 1
  %i.g = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %5, i64 %i.g)
  %i.h = load ptr, ptr %1, align 8, !tbaa !33, !noalias !171
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !noalias !171
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !68
  %.pr = load ptr, ptr %4, align 8, !tbaa !69     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit11.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.l = load ptr, ptr %1, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(224) %1), !inline_history !174
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.s = load i32, ptr %i.r, align 8, !tbaa !74
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.o, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u ; 2 uses
  store i64 %2, ptr %i.v, align 1
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !76
  %i.y = add nsw i64 %i.x, 16
  store i64 %i.y, ptr %i.w, align 8, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !77 ; 2 uses
  %i.ad = sdiv i64 %i.ac, 8
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !40
  %i.ag = srem i64 %i.ac, 8
  %i.ah = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !40
  %i.aj = or i8 %i.ai, %i.af
  store i8 %i.aj, ptr %i.ae, align 1, !tbaa !40
  %i.ak = load i64, ptr %i.ab, align 8, !tbaa !77
  %i.al = add nsw i64 %i.ak, 1
  store i64 %i.al, ptr %i.ab, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !78
  %i.ao = add nsw i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !78
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
  %8 = alloca %"class.std::shared_ptr.10", align 8 ; 4 uses
  %9 = alloca %"class.std::vector.19", align 8    ; 8 uses
  %10 = alloca [2 x %"class.std::shared_ptr.13"], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !69     ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5arrow6StatusD2Ev.exit31, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.bu

_ZN5arrow6StatusD2Ev.exit31:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77, !noalias !178 ; 2 uses
  %i.h = ashr i64 %i.g, 3
  %i.i = and i64 %i.g, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i64
  %i.l = add nsw i64 %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.l, ptr %i.m, align 8, !tbaa !76, !noalias !178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !178
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %5, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit33 unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit33:                      ; preds = %_ZN5arrow6StatusD2Ev.exit31
  %i.n = load ptr, ptr %6, align 8, !tbaa !69     ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit37, label %.critedge27

end_hunk_2
begin_hunk_3_@_ZN5arrow17Decimal128Builder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE:bb.a
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
  %4 = add nsw i64 %i.f, 1
  %i.g = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %4, i64 %i.g)
  %i.h = load ptr, ptr %1, align 8, !tbaa !33, !noalias !189
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !noalias !189
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !68
  %.pr = load ptr, ptr %3, align 8, !tbaa !69     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit10.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.l = load ptr, ptr %1, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(224) %1), !inline_history !192
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.s = load i32, ptr %i.r, align 8, !tbaa !74
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.o, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !76
  %i.y = add nsw i64 %i.x, 32
  store i64 %i.y, ptr %i.w, align 8, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !77 ; 2 uses
  %i.ad = sdiv i64 %i.ac, 8
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !40
  %i.ag = srem i64 %i.ac, 8
  %i.ah = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !40
  %i.aj = or i8 %i.ai, %i.af
  store i8 %i.aj, ptr %i.ae, align 1, !tbaa !40
  %i.ak = load i64, ptr %i.ab, align 8, !tbaa !77
  %i.al = add nsw i64 %i.ak, 1
  store i64 %i.al, ptr %i.ab, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !78
  %i.ao = add nsw i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !78
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !69     ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5arrow6StatusD2Ev.exit31, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.bu

_ZN5arrow6StatusD2Ev.exit31:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77, !noalias !196 ; 2 uses
  %i.h = ashr i64 %i.g, 3
  %i.i = and i64 %i.g, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i64
  %i.l = add nsw i64 %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.l, ptr %i.m, align 8, !tbaa !76, !noalias !196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !196
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %5, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit33 unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit33:                      ; preds = %_ZN5arrow6StatusD2Ev.exit31
  %i.n = load ptr, ptr %6, align 8, !tbaa !69     ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit37, label %.critedge27

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit31
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
end_hunk_3
