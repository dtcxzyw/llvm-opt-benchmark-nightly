inline.NumInlined: 2675
inline.NumDeleted: 797
begin_hunk_0_@_ZNK5arrow18TypedChunkLocationIiEeqES1_:bb.a
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
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4) unnamed_addr #1 comdat($_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEEC5EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds inrange(-16, 136) ({ [19 x ptr] }, ptr @_ZTVN5arrow24VarLengthListLikeBuilderINS_8ListTypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.j, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.k, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56   ; 2 uses
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.x = load ptr, ptr %3, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !62
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.11") align 8 %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ad, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !70
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18, !inline_history !71
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i10 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ag, %bb.i ], [ %i.aq, %bb.j ]
  %i.ar = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ar, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18
  call void @_ZN5arrow18TypedBufferBuilderIivED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.i) #18
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  resume { ptr, i32 } %i.as
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.11") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

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
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !73
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !73
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow18TypedBufferBuilderIivED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow13BufferBuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !74
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !74
  br label %_ZN5arrow13BufferBuilderD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.g, label %_ZN5arrow13BufferBuilderD2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZN5arrow13BufferBuilderD2Ev.exit

_ZN5arrow13BufferBuilderD2Ev.exit:                ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow12ArrayBuilderE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 2 uses
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
  store i32 0, ptr %i.g, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !70
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #18, !inline_history !77
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #18, !inline_history !77
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #18
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !78

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !75
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !80
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
  store i32 0, ptr %i.ae, align 8, !tbaa !68
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !70
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #18, !inline_history !81
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #18, !inline_history !81
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.as, label %bb.n, label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit, !prof !72

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #18
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit:       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) unnamed_addr #1 comdat($_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEEC5EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEEl) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.30", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.a = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %i.a)
  store ptr null, ptr %5, align 8, !tbaa !85
  %i.e = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20
          to label %.noexc unwind label %bb.ac    ; 9 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_8DataTypeEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i: ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 88) #19
  br label %.body

bb.b:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.e, ptr %i.g, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load atomic i32, ptr %i.l monotonic, align 8
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZSt11make_sharedIN5arrow8ListTypeEJSt10shared_ptrINS0_8DataTypeEEEES2_IT_EDpOT0_.exit

bb.c:                                             ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i, %bb.b
  store ptr %i.h, ptr %i.i, align 8, !tbaa !91
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i3.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i3.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !89
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.t = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.k, %bb.d ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNK5arrow24VarLengthListLikeBuilderINS_8ListTypeEE4typeEv:bb.a
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i5 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

bb.o:                                             ; preds = %bb.m
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i7 = phi i32 [ %i.al, %bb.n ], [ %i.av, %bb.o ]
  %i.aw = icmp eq i32 %.0.i.i.i.i7, 1
  br i1 %i.aw, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8ListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6, %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !56 ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.az, align 8, !tbaa !68
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !70
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #18, !inline_history !71
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i9 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

bb.u:                                             ; preds = %bb.s
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i11 = phi i32 [ %i.bc, %bb.t ], [ %i.bm, %bb.u ]
  %i.bn = icmp eq i32 %.0.i.i.i.i11, 1
  br i1 %i.bn, label %bb.v, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.w:                                             ; preds = %bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.b
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.x ], [ %i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.w
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bo, %bb.w ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE27UnsafeAppendEmptyDimensionsEl(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %i.b)
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = trunc i64 %i.f to i32                    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.j, align 8, !tbaa !178 ; 2 uses
  %xtraiter = and i64 %1, 1
  %i.k = icmp eq i64 %1, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod5 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.epil.init
  store i32 %i.h, ptr %i.m, align 1
  %i.n = load i64, ptr %i.j, align 8, !tbaa !178
  %i.o = add nsw i64 %i.n, 4
  store i64 %i.o, ptr %i.j, align 8, !tbaa !178
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.p = phi i64 [ %.pre, %.lr.ph.new ], [ %i.x, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.p
  store i32 %i.h, ptr %i.r, align 1
  %i.s = load i64, ptr %i.j, align 8, !tbaa !178
  %i.t = add nsw i64 %i.s, 4                      ; 2 uses
  store i64 %i.t, ptr %i.j, align 8, !tbaa !178
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.t
  store i32 %i.h, ptr %i.v, align 1
  %i.w = load i64, ptr %i.j, align 8, !tbaa !178
  %i.x = add nsw i64 %i.w, 4                      ; 3 uses
  store i64 %i.x, ptr %i.j, align 8, !tbaa !178
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !179
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE22UnsafeAppendDimensionsEll(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !178
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e
  store i32 %i.a, ptr %i.f, align 1
  %i.g = load i64, ptr %i.d, align 8, !tbaa !178
  %i.h = add nsw i64 %i.g, 4
  store i64 %i.h, ptr %i.d, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4) unnamed_addr #1 comdat($_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEC5EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds inrange(-16, 136) ({ [19 x ptr] }, ptr @_ZTVN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.j, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.k, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56   ; 2 uses
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.x = load ptr, ptr %3, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !62
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.11") align 8 %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ad, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !70
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18, !inline_history !71
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i10 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ag, %bb.i ], [ %i.aq, %bb.j ]
  %i.ar = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ar, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18
  call void @_ZN5arrow18TypedBufferBuilderIlvED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.i) #18
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  resume { ptr, i32 } %i.as
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow18TypedBufferBuilderIlvED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow13BufferBuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !74
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !74
  br label %_ZN5arrow13BufferBuilderD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.g, label %_ZN5arrow13BufferBuilderD2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZN5arrow13BufferBuilderD2Ev.exit

_ZN5arrow13BufferBuilderD2Ev.exit:                ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) unnamed_addr #1 comdat($_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEC5EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEEl) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.42", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.a = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %i.a)
  store ptr null, ptr %5, align 8, !tbaa !180
  %i.e = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20
          to label %.noexc unwind label %bb.ac    ; 9 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_8DataTypeEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i: ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 88) #19
  br label %.body

bb.b:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.e, ptr %i.g, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
end_hunk_1
begin_hunk_2_@_ZNK5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE4typeEv:bb.a

bb.m:                                             ; preds = %bb.k
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i5 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

bb.o:                                             ; preds = %bb.m
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i7 = phi i32 [ %i.al, %bb.n ], [ %i.av, %bb.o ]
  %i.aw = icmp eq i32 %.0.i.i.i.i7, 1
  br i1 %i.aw, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow13LargeListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6, %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !56 ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.az, align 8, !tbaa !68
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !70
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #18, !inline_history !71
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i9 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

bb.u:                                             ; preds = %bb.s
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i11 = phi i32 [ %i.bc, %bb.t ], [ %i.bm, %bb.u ]
  %i.bn = icmp eq i32 %.0.i.i.i.i11, 1
  br i1 %i.bn, label %bb.v, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.w:                                             ; preds = %bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.b
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.x ], [ %i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.w
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bo, %bb.w ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE27UnsafeAppendEmptyDimensionsEl(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %i.b) ; 3 uses
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.i, align 8, !tbaa !178 ; 2 uses
  %xtraiter = and i64 %1, 1
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod5 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %.epil.init
  store i64 %i.f, ptr %i.l, align 1
  %i.m = load i64, ptr %i.i, align 8, !tbaa !178
  %i.n = add nsw i64 %i.m, 8
  store i64 %i.n, ptr %i.i, align 8, !tbaa !178
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.o = phi i64 [ %.pre, %.lr.ph.new ], [ %i.w, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.o
  store i64 %i.f, ptr %i.q, align 1
  %i.r = load i64, ptr %i.i, align 8, !tbaa !178
  %i.s = add nsw i64 %i.r, 8                      ; 2 uses
  store i64 %i.s, ptr %i.i, align 8, !tbaa !178
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.s
  store i64 %i.f, ptr %i.u, align 1
  %i.v = load i64, ptr %i.i, align 8, !tbaa !178
  %i.w = add nsw i64 %i.v, 8                      ; 3 uses
  store i64 %i.w, ptr %i.i, align 8, !tbaa !178
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !236
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE22UnsafeAppendDimensionsEll(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !178
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d
  store i64 %1, ptr %i.e, align 1
  %i.f = load i64, ptr %i.c, align 8, !tbaa !178
  %i.g = add nsw i64 %i.f, 8
  store i64 %i.g, ptr %i.c, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4) unnamed_addr #1 comdat($_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEEC5EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds inrange(-16, 136) ({ [19 x ptr] }, ptr @_ZTVN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.j, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.k, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56   ; 2 uses
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.x = load ptr, ptr %3, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !62
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.11") align 8 %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ad, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !70
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18, !inline_history !71
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i10 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ag, %bb.i ], [ %i.aq, %bb.j ]
  %i.ar = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ar, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18
  call void @_ZN5arrow18TypedBufferBuilderIivED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.i) #18
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  resume { ptr, i32 } %i.as
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) unnamed_addr #1 comdat($_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEEC5EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEEl) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::allocator.126", align 1 ; 3 uses
  %5 = alloca %"class.std::shared_ptr.14", align 16 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.46", align 16 ; 8 uses
  %7 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.a = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %7, ptr noundef nonnull align 8 dereferenceable(144) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !237
  invoke void @_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS0_8DataTypeEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull %4, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !237
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.f = load <2 x ptr>, ptr %6, align 16, !tbaa !57
  store ptr null, ptr %i.e, align 8, !tbaa !56
  store <2 x ptr> %i.f, ptr %5, align 16, !tbaa !57
  store ptr null, ptr %6, align 16, !tbaa !240
  invoke void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %3)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !70
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18, !inline_history !71
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !56   ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.x, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l
end_hunk_2
begin_hunk_3_@_ZNK5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEE4typeEv:bb.a

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i5 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i7 = phi i32 [ %i.o, %bb.f ], [ %i.y, %bb.g ]
  %i.z = icmp eq i32 %.0.i.i.i.i7, 1
  br i1 %i.z, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56 ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ac, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !70
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18, !inline_history !71
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i9 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

bb.m:                                             ; preds = %bb.k
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i11 = phi i32 [ %i.af, %bb.l ], [ %i.ap, %bb.m ]
  %i.aq = icmp eq i32 %.0.i.i.i.i11, 1
  br i1 %i.aq, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.o:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.as, %bb.p ], [ %i.ar, %bb.o ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEE27UnsafeAppendEmptyDimensionsEl(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %i.b)
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = trunc i64 %i.f to i32                    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.j, align 8, !tbaa !178 ; 2 uses
  %xtraiter = and i64 %1, 1
  %i.k = icmp eq i64 %1, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod5 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.epil.init
  store i32 %i.h, ptr %i.m, align 1
  %i.n = load i64, ptr %i.j, align 8, !tbaa !178
  %i.o = add nsw i64 %i.n, 4
  store i64 %i.o, ptr %i.j, align 8, !tbaa !178
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.p = phi i64 [ %.pre, %.lr.ph.new ], [ %i.x, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.p
  store i32 %i.h, ptr %i.r, align 1
  %i.s = load i64, ptr %i.j, align 8, !tbaa !178
  %i.t = add nsw i64 %i.s, 4                      ; 2 uses
  store i64 %i.t, ptr %i.j, align 8, !tbaa !178
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.t
  store i32 %i.h, ptr %i.v, align 1
  %i.w = load i64, ptr %i.j, align 8, !tbaa !178
  %i.x = add nsw i64 %i.w, 4                      ; 3 uses
  store i64 %i.x, ptr %i.j, align 8, !tbaa !178
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !295
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEE22UnsafeAppendDimensionsEll(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !178
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e
  store i32 %i.a, ptr %i.f, align 1
  %i.g = load i64, ptr %i.d, align 8, !tbaa !178
  %i.h = add nsw i64 %i.g, 4
  store i64 %i.h, ptr %i.d, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4) unnamed_addr #1 comdat($_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEEC5EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds inrange(-16, 136) ({ [19 x ptr] }, ptr @_ZTVN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.j, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.k, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56   ; 2 uses
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.x = load ptr, ptr %3, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !62
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.11") align 8 %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ad, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !70
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18, !inline_history !71
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i10 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ag, %bb.i ], [ %i.aq, %bb.j ]
  %i.ar = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ar, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18
  call void @_ZN5arrow18TypedBufferBuilderIlvED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.i) #18
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  resume { ptr, i32 } %i.as
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) unnamed_addr #1 comdat($_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEEC5EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEEl) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::allocator.126", align 1 ; 3 uses
  %5 = alloca %"class.std::shared_ptr.14", align 16 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.50", align 16 ; 8 uses
  %7 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.a = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %7, ptr noundef nonnull align 8 dereferenceable(144) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !296
  invoke void @_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS0_8DataTypeEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull %4, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !296
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.f = load <2 x ptr>, ptr %6, align 16, !tbaa !57
  store ptr null, ptr %i.e, align 8, !tbaa !56
  store <2 x ptr> %i.f, ptr %5, align 16, !tbaa !57
  store ptr null, ptr %6, align 16, !tbaa !299
  invoke void @_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %3)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !70
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18, !inline_history !71
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !56   ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.x, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l
end_hunk_3
begin_hunk_4_@_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEE14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE:bb.a
  %i.mh = load ptr, ptr %i.ly, align 8, !tbaa !54
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #18, !inline_history !428
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142

bb.df:                                            ; preds = %bb.dd
  %i.mk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i139 = icmp eq i8 %i.mk, 0
  br i1 %.not.i.i.i139, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ml = add nsw i32 %i.mc, -1
  store i32 %i.ml, ptr %i.lz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

bb.dh:                                            ; preds = %bb.df
  %i.mm = atomicrmw volatile add ptr %i.lz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140: ; preds = %bb.dh, %bb.dg
  %.0.i.i.i.i141 = phi i32 [ %i.mc, %bb.dg ], [ %i.mm, %bb.dh ]
  %i.mn = icmp eq i32 %.0.i.i.i.i141, 1
  br i1 %i.mn, label %bb.di, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142, !prof !72

bb.di:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #18
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137, %bb.de, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.dj:                                            ; preds = %bb.cq, %bb.h, %bb.g, %bb.d, %bb.c, %bb.b
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %bb.cq ], [ %i.ai, %bb.h ], [ %i.ah, %bb.g ], [ %i.t, %bb.d ], [ %i.p, %bb.c ], [ %i.l, %bb.b ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn52.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEE27UnsafeAppendEmptyDimensionsEl(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.c, align 8, !tbaa !178 ; 2 uses
  %i.d = add nsw i64 %1, -1                       ; 2 uses
  %xtraiter = and i64 %1, 1
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %bb.b

.lr.ph10.unr-lcssa:                               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph10, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph10.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.u, %.lr.ph10.unr-lcssa ]
  %lcmp.mod13 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %.epil.init
  store i64 0, ptr %i.g, align 1
  %i.h = load i64, ptr %i.c, align 8, !tbaa !178
  %i.i = add nsw i64 %i.h, 8
  store i64 %i.i, ptr %i.c, align 8, !tbaa !178
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.unr-lcssa, %.epil.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  %.pre12 = load i64, ptr %i.k, align 8, !tbaa !178 ; 2 uses
  %xtraiter15 = and i64 %1, 1
  %i.l = icmp eq i64 %i.d, 0
  br i1 %i.l, label %.epil.preheader14, label %.lr.ph10.new

.lr.ph10.new:                                     ; preds = %.lr.ph10
  %unroll_iter20 = and i64 %1, 9223372036854775806
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.m = phi i64 [ %.pre, %.lr.ph.new ], [ %i.u, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %i.m
  store i64 0, ptr %i.o, align 1
  %i.p = load i64, ptr %i.c, align 8, !tbaa !178
  %i.q = add nsw i64 %i.p, 8                      ; 2 uses
  store i64 %i.q, ptr %i.c, align 8, !tbaa !178
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.q
  store i64 0, ptr %i.s, align 1
  %i.t = load i64, ptr %i.c, align 8, !tbaa !178
  %i.u = add nsw i64 %i.t, 8                      ; 3 uses
  store i64 %i.u, ptr %i.c, align 8, !tbaa !178
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph10.unr-lcssa, label %bb.b, !llvm.loop !529

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod18.not = icmp eq i64 %xtraiter15, 0
  br i1 %lcmp.mod18.not, label %._crit_edge, label %.epil.preheader14

.epil.preheader14:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph10
  %.epil.init17 = phi i64 [ %.pre12, %.lr.ph10 ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod19 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %.epil.init17
  store i64 0, ptr %i.w, align 1
  %i.x = load i64, ptr %i.k, align 8, !tbaa !178
  %i.y = add nsw i64 %i.x, 8
  store i64 %i.y, ptr %i.k, align 8, !tbaa !178
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader14, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.c:                                             ; preds = %bb.c, %.lr.ph10.new
  %i.z = phi i64 [ %.pre12, %.lr.ph10.new ], [ %i.ah, %bb.c ]
  %niter21 = phi i64 [ 0, %.lr.ph10.new ], [ %niter21.next.1, %bb.c ]
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.z
  store i64 0, ptr %i.ab, align 1
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !178
  %i.ad = add nsw i64 %i.ac, 8                    ; 2 uses
  store i64 %i.ad, ptr %i.k, align 8, !tbaa !178
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.ad
  store i64 0, ptr %i.af, align 1
  %i.ag = load i64, ptr %i.k, align 8, !tbaa !178
  %i.ah = add nsw i64 %i.ag, 8                    ; 3 uses
  store i64 %i.ah, ptr %i.k, align 8, !tbaa !178
  %niter21.next.1 = add i64 %niter21, 2           ; 2 uses
  %niter21.ncmp.1 = icmp eq i64 %niter21.next.1, %unroll_iter20
  br i1 %niter21.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !530
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEE22UnsafeAppendDimensionsEll(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !178
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d
  store i64 %1, ptr %i.e, align 1
  %i.f = load i64, ptr %i.c, align 8, !tbaa !178
  %i.g = add nsw i64 %i.f, 8
  store i64 %i.g, ptr %i.c, align 8, !tbaa !178
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !178
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k
  store i64 %2, ptr %i.l, align 1
  %i.m = load i64, ptr %i.j, align 8, !tbaa !178
  %i.n = add nsw i64 %i.m, 8
  store i64 %i.n, ptr %i.j, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10MapBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEES7_RKS3_INS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(296) initializes((0, 146)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %5 = alloca %"class.std::shared_ptr.11", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.11", align 8 ; 7 uses
  %7 = alloca %"class.std::vector", align 8       ; 12 uses
  %8 = alloca [2 x %"class.std::shared_ptr.8"], align 16 ; 12 uses
  %9 = alloca %"class.std::shared_ptr.76", align 8 ; 7 uses
  %10 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !531
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 64, ptr %i.c, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.f, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.h, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow10MapBuilderE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i8 0, ptr %i.j, align 8, !tbaa !532
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 3 uses
  store i8 0, ptr %i.k, align 1, !tbaa !539
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !540
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.n, align 8, !tbaa !541
  store i8 0, ptr %i.m, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !540
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.q, align 8, !tbaa !541
  store i8 0, ptr %i.p, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !540
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.t, align 8, !tbaa !541
  store i8 0, ptr %i.s, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !56   ; 2 uses
  %i.y = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  store <2 x ptr> %i.y, ptr %i.v, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %3, align 8, !tbaa !57
  store <2 x ptr> %i.ah, ptr %i.ae, align 8, !tbaa !57
  %.not.i.i.i27 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i27, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit29, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i28 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit29

bb.g:                                             ; preds = %bb.e
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit29

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit29: ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, %bb.f, %bb.g
  %i.an = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !62
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !65
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.cg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !62, !noalias !542
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65, !noalias !542
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !59, !noalias !542
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !62, !noalias !542 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !65, !noalias !542 ; 3 uses
  store ptr %i.ay, ptr %5, align 8, !tbaa !65, !alias.scope !542
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !56, !noalias !542 ; 3 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !56, !alias.scope !542
  %.not.i.i.i.i30 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i30, label %_ZNK5arrow7MapType9key_fieldEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58, !noalias !542
  %.not.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !3, !noalias !542
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !3, !noalias !542
  br label %_ZNK5arrow7MapType9key_fieldEv.exit

bb.j:                                             ; preds = %bb.h
  %i.bg = atomicrmw volatile add ptr %i.bc, i32 1 acq_rel, align 4, !noalias !542 ; 0 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !65
  br label %_ZNK5arrow7MapType9key_fieldEv.exit

_ZNK5arrow7MapType9key_fieldEv.exit:              ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bh = phi ptr [ %.pre, %bb.j ], [ %i.ay, %bb.i ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.bi)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit31 unwind label %bb.ch

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit31: ; preds = %_ZNK5arrow7MapType9key_fieldEv.exit
  %i.bj = load ptr, ptr %i.az, align 8, !tbaa !56 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit31
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bk, align 8, !tbaa !68
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !70
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !54
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #18, !inline_history !177
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i32 = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i32, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.bn, %bb.n ], [ %i.bx, %bb.o ]
  %i.by = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.by, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit31, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !62, !noalias !545
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !65, !noalias !545
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !59, !noalias !545
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !62, !noalias !545 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !65, !noalias !545 ; 3 uses
  store ptr %i.cg, ptr %6, align 8, !tbaa !65, !alias.scope !545
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !56, !noalias !545 ; 3 uses
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !56, !alias.scope !545
  %.not.i.i.i.i33 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i33, label %_ZNK5arrow7MapType10item_fieldEv.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  %i.cl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58, !noalias !545
  %.not.i.i.i.i.i34 = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i.i.i.i34, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !3, !noalias !545
end_hunk_4
begin_hunk_5_@_ZN5arrow10MapBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEES7_RKS3_INS_8DataTypeEE:bb.a
  %.not.i.i.i52 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i52, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit54, label %bb.al

bb.al:                                            ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit51
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 3 uses
  %i.fc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i53 = icmp eq i8 %i.fc, 0
  br i1 %.not.i.i.i.i53, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !3
  %i.fe = add nsw i32 %i.fd, 1
  store i32 %i.fe, ptr %i.fb, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit54

bb.an:                                            ; preds = %bb.al
  %i.ff = atomicrmw volatile add ptr %i.fb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit54

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit54: ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit51, %bb.am, %bb.an
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.fg = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20
          to label %.noexc unwind label %bb.cj    ; 6 uses

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit54
  store ptr %i.fg, ptr %7, align 8, !tbaa !75
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !80
  %i.fj = load ptr, ptr %i.eq, align 8, !tbaa !56 ; 2 uses
  %i.fk = load <2 x ptr>, ptr %8, align 16, !tbaa !57
  store <2 x ptr> %i.fk, ptr %i.fg, align 8, !tbaa !57
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %.noexc
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 3 uses
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fo = add nsw i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fl, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.fp = atomicrmw volatile add ptr %i.fl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.aq, %bb.ap, %.noexc
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !56 ; 3 uses
  %i.ft = load <2 x ptr>, ptr %i.ey, align 16, !tbaa !57
  store <2 x ptr> %i.ft, ptr %i.fq, align 8, !tbaa !57
  %.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1, label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread, label %bb.ar

_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !76
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ar:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 3 uses
  %i.fx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i8 %i.fx, 0
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fg, i64 32 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1, label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread116

_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread116: ; preds = %bb.ar
  %i.ga = load i32, ptr %i.fw, align 4, !tbaa !3
  %i.gb = add nsw i32 %i.ga, 1
  store i32 %i.gb, ptr %i.fw, align 4, !tbaa !3
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !76
  br label %bb.as

_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1: ; preds = %bb.ar
  %i.gc = atomicrmw volatile add ptr %i.fw, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.pre88 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !56 ; 2 uses
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !76
  %.not.i.i55 = icmp eq ptr %.pre88, null
  br i1 %.not.i.i55, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread116, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.gd = phi ptr [ %i.fs, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread116 ], [ %.pre88, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1 ] ; 7 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 4 uses
  %i.gf = load atomic i64, ptr %i.ge acquire, align 8 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 4294967297
  %i.gh = trunc i64 %i.gf to i32                  ; 2 uses
  br i1 %i.gg, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.ge, align 8, !tbaa !68
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  store i32 0, ptr %i.gi, align 4, !tbaa !70
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !54
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  tail call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #18, !inline_history !575
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !54
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  tail call void %i.go(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #18, !inline_history !575
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.au:                                            ; preds = %bb.as
  %i.gp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i56 = icmp eq i8 %i.gp, 0
  br i1 %.not.i.i.i56, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gq = add nsw i32 %i.gh, -1
  store i32 %i.gq, ptr %i.ge, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57

bb.aw:                                            ; preds = %bb.au
  %i.gr = atomicrmw volatile add ptr %i.ge, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i58 = phi i32 [ %i.gh, %bb.av ], [ %i.gr, %bb.aw ]
  %i.gs = icmp eq i32 %.0.i.i.i.i58, 1
  br i1 %i.gs, label %bb.ax, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gd) #18
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57, %bb.ax
  %i.gt = phi ptr [ %i.fv, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread ], [ %i.fz, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1 ], [ %i.fz, %bb.at ], [ %i.fz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57 ], [ %i.fz, %bb.ax ]
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !56 ; 8 uses
  %.not.i.i55.1 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i55.1, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 4 uses
  %i.gx = load atomic i64, ptr %i.gw acquire, align 8 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 4294967297
  %i.gz = trunc i64 %i.gx to i32                  ; 2 uses
  br i1 %i.gy, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ha = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i56.1 = icmp eq i8 %i.ha, 0
  br i1 %.not.i.i.i56.1, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hb = add nsw i32 %i.gz, -1
  store i32 %i.hb, ptr %i.gw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57.1

bb.bb:                                            ; preds = %bb.az
  %i.hc = atomicrmw volatile add ptr %i.gw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57.1

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57.1: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i58.1 = phi i32 [ %i.gz, %bb.ba ], [ %i.hc, %bb.bb ]
  %i.hd = icmp eq i32 %.0.i.i.i.i58.1, 1
  br i1 %i.hd, label %bb.bc, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, !prof !72

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57.1
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #18
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1

bb.bd:                                            ; preds = %bb.ay
  store i32 0, ptr %i.gw, align 8, !tbaa !68
  %i.he = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  store i32 0, ptr %i.he, align 4, !tbaa !70
  %i.hf = load ptr, ptr %i.gv, align 8, !tbaa !54
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  tail call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #18, !inline_history !575
  %i.hi = load ptr, ptr %i.gv, align 8, !tbaa !54
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  tail call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #18, !inline_history !575
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1: ; preds = %bb.bd, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57.1, %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.hl = load ptr, ptr %i.ao, align 8, !tbaa !62
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !65
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.hn = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #20
          to label %.noexc59 unwind label %bb.ck  ; 6 uses

.noexc59:                                         ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i32 1, ptr %i.hp, align 8, !tbaa !68, !noalias !576
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  store i32 1, ptr %i.hq, align 4, !tbaa !70, !noalias !576
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13StructBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.hn, align 8, !tbaa !54, !noalias !576
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 4 uses
  invoke void @_ZSt10_ConstructIN5arrow13StructBuilderEJRKSt10shared_ptrINS0_8DataTypeEERPNS0_10MemoryPoolERSt6vectorIS2_INS0_12ArrayBuilderEESaISC_EEEEvPT_DpOT0_(ptr noundef nonnull %i.hr, ptr noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.be unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13StructBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !576

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13StructBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %.noexc59
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef 176) #19, !noalias !576
  br label %.body

bb.be:                                            ; preds = %.noexc59
  %i.ht = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %i.hn, ptr %i.ht, align 8, !tbaa !56, !alias.scope !576
  store ptr %i.hr, ptr %9, align 8, !tbaa !579, !alias.scope !576
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.hu = load ptr, ptr %i.hr, align 8, !tbaa !54
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 104
  %i.hw = load ptr, ptr %i.hv, align 8
  invoke void %i.hw(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %10, ptr noundef nonnull align 8 dereferenceable(160) %i.hr)
          to label %bb.bf unwind label %bb.cl

bb.bf:                                            ; preds = %bb.be
  %i.hx = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #20
          to label %.noexc60 unwind label %bb.cm  ; 4 uses

.noexc60:                                         ; preds = %bb.bf
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS0_10MemoryPoolERSt10shared_ptrINS0_13StructBuilderEESA_INS0_8DataTypeEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(248) %i.hx, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.bg unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !581

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %.noexc60
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef 248) #19, !noalias !581
  br label %.body61

bb.bg:                                            ; preds = %.noexc60
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store ptr %i.hz, ptr %i.u, align 8, !tbaa !584
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !56 ; 8 uses
  store ptr %i.hx, ptr %i.ia, align 8, !tbaa !56
  %.not.i.i.i.i63 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i.i63, label %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 4 uses
  %i.id = load atomic i64, ptr %i.ic acquire, align 8 ; 2 uses
  %i.ie = icmp eq i64 %i.id, 4294967297
  %i.if = trunc i64 %i.id to i32                  ; 2 uses
  br i1 %i.ie, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.ic, align 8, !tbaa !68
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store i32 0, ptr %i.ig, align 4, !tbaa !70
  %i.ih = load ptr, ptr %i.ib, align 8, !tbaa !54
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #18, !inline_history !585
  %i.ik = load ptr, ptr %i.ib, align 8, !tbaa !54
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #18, !inline_history !585
  br label %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bj:                                            ; preds = %bb.bh
  %i.in = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i64 = icmp eq i8 %i.in, 0
  br i1 %.not.i.i.i.i.i64, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.io = add nsw i32 %i.if, -1
  store i32 %i.io, ptr %i.ic, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.ip = atomicrmw volatile add ptr %i.ic, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i.i.i = phi i32 [ %i.if, %bb.bk ], [ %i.ip, %bb.bl ]
  %i.iq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.iq, label %bb.bm, label %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #18
  br label %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bi, %bb.bg
  %i.ir = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !56 ; 8 uses
  %.not.i.i69 = icmp eq ptr %i.is, null
  br i1 %.not.i.i69, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 4 uses
  %i.iu = load atomic i64, ptr %i.it acquire, align 8 ; 2 uses
  %i.iv = icmp eq i64 %i.iu, 4294967297
  %i.iw = trunc i64 %i.iu to i32                  ; 2 uses
  br i1 %i.iv, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.it, align 8, !tbaa !68
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  store i32 0, ptr %i.ix, align 4, !tbaa !70
  %i.iy = load ptr, ptr %i.is, align 8, !tbaa !54
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #18, !inline_history !71
  %i.jb = load ptr, ptr %i.is, align 8, !tbaa !54
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bp:                                            ; preds = %bb.bn
  %i.je = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i70 = icmp eq i8 %i.je, 0
  br i1 %.not.i.i.i70, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jf = add nsw i32 %i.iw, -1
  store i32 %i.jf, ptr %i.it, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71

bb.br:                                            ; preds = %bb.bp
  %i.jg = atomicrmw volatile add ptr %i.it, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i72 = phi i32 [ %i.iw, %bb.bq ], [ %i.jg, %bb.br ]
  %i.jh = icmp eq i32 %.0.i.i.i.i72, 1
  br i1 %i.jh, label %bb.bs, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.ji = load ptr, ptr %i.ht, align 8, !tbaa !56 ; 8 uses
  %.not.i.i73 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i73, label %_ZNSt12__shared_ptrIN5arrow13StructBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 4 uses
  %i.jk = load atomic i64, ptr %i.jj acquire, align 8 ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 4294967297
  %i.jm = trunc i64 %i.jk to i32                  ; 2 uses
  br i1 %i.jl, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.jj, align 8, !tbaa !68
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  store i32 0, ptr %i.jn, align 4, !tbaa !70
  %i.jo = load ptr, ptr %i.ji, align 8, !tbaa !54
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #18, !inline_history !586
  %i.jr = load ptr, ptr %i.ji, align 8, !tbaa !54
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #18, !inline_history !586
  br label %_ZNSt12__shared_ptrIN5arrow13StructBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bv:                                            ; preds = %bb.bt
  %i.ju = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i74 = icmp eq i8 %i.ju, 0
  br i1 %.not.i.i.i74, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jv = add nsw i32 %i.jm, -1
  store i32 %i.jv, ptr %i.jj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75

bb.bx:                                            ; preds = %bb.bv
  %i.jw = atomicrmw volatile add ptr %i.jj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i76 = phi i32 [ %i.jm, %bb.bw ], [ %i.jw, %bb.bx ]
  %i.jx = icmp eq i32 %.0.i.i.i.i76, 1
  br i1 %i.jx, label %bb.by, label %_ZNSt12__shared_ptrIN5arrow13StructBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #18
  br label %_ZNSt12__shared_ptrIN5arrow13StructBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13StructBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.jy = load ptr, ptr %7, align 8, !tbaa !75    ; 3 uses
  %i.jz = load ptr, ptr %i.gt, align 8, !tbaa !76 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jy, %i.jz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow13StructBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kr, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i ], [ %i.jy, %_ZNSt12__shared_ptrIN5arrow13StructBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !56 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kb, null
end_hunk_5
begin_hunk_6_@_ZN5arrow10MapBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEES7_b:bb.a
bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !70
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #18, !inline_history !71
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.n, %bb.h ], [ %i.x, %bb.i ]
  %i.y = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.y, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56  ; 8 uses
  %.not.i.i12 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i12, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ab, align 8, !tbaa !68
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !70
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #18, !inline_history !71
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

bb.m:                                             ; preds = %bb.k
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i13 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i13, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

bb.o:                                             ; preds = %bb.m
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i15 = phi i32 [ %i.ae, %bb.n ], [ %i.ao, %bb.o ]
  %i.ap = icmp eq i32 %.0.i.i.i.i15, 1
  br i1 %i.ap, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16, !prof !72

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14, %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56 ; 8 uses
  %.not.i.i17 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i17, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.as, align 8, !tbaa !68
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !70
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !54
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #18, !inline_history !71
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21

bb.s:                                             ; preds = %bb.q
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i18 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i18, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

bb.u:                                             ; preds = %bb.s
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i20 = phi i32 [ %i.av, %bb.t ], [ %i.bf, %bb.u ]
  %i.bg = icmp eq i32 %.0.i.i.i.i20, 1
  br i1 %i.bg, label %bb.v, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21, !prof !72

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit16, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.w:                                             ; preds = %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %bb.b
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.c
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.y ], [ %i.bi, %bb.x ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.z ], [ %i.bh, %bb.w ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN5arrow3mapESt10shared_ptrINS_8DataTypeEES2_b(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.14") align 8, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10MapBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS3_INS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(296) initializes((0, 146)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.11", align 8 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.11", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
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
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow10MapBuilderE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !532
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 3 uses
  store i8 0, ptr %i.j, align 1, !tbaa !539
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !540
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.m, align 8, !tbaa !541
  store i8 0, ptr %i.l, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !540
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.p, align 8, !tbaa !541
  store i8 0, ptr %i.o, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !540
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.s, align 8, !tbaa !541
  store i8 0, ptr %i.r, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i8 0, i64 48, i1 false)
  %i.w = load ptr, ptr %3, align 8, !tbaa !59     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !65
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !62, !noalias !588
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !65, !noalias !588
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59, !noalias !588
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !62, !noalias !588 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65, !noalias !588 ; 3 uses
  store ptr %i.ah, ptr %4, align 8, !tbaa !65, !alias.scope !588
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56, !noalias !588 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !56, !alias.scope !588
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %_ZNK5arrow7MapType9key_fieldEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58, !noalias !588
  %.not.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = load i32, ptr %i.al, align 4, !tbaa !3, !noalias !588
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !3, !noalias !588
  br label %_ZNK5arrow7MapType9key_fieldEv.exit

bb.d:                                             ; preds = %bb.b
  %i.ap = atomicrmw volatile add ptr %i.al, i32 1 acq_rel, align 4, !noalias !588 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !65
  br label %_ZNK5arrow7MapType9key_fieldEv.exit

_ZNK5arrow7MapType9key_fieldEv.exit:              ; preds = %bb.d, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.aq = phi ptr [ %.pre, %bb.d ], [ %i.ah, %bb.c ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit22 unwind label %bb.bl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit22: ; preds = %_ZNK5arrow7MapType9key_fieldEv.exit
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !56 ; 8 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit22
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.at, align 8, !tbaa !68
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !70
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #18, !inline_history !177
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !54
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.aw, %bb.h ], [ %i.bg, %bb.i ]
  %i.bh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bh, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit22, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !62, !noalias !591
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !65, !noalias !591
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !59, !noalias !591
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !62, !noalias !591 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !65, !noalias !591 ; 3 uses
  store ptr %i.bp, ptr %5, align 8, !tbaa !65, !alias.scope !591
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !56, !noalias !591 ; 3 uses
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !56, !alias.scope !591
  %.not.i.i.i.i23 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i23, label %_ZNK5arrow7MapType10item_fieldEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58, !noalias !591
  %.not.i.i.i.i.i24 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i24, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !591
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3, !noalias !591
  br label %_ZNK5arrow7MapType10item_fieldEv.exit

bb.m:                                             ; preds = %bb.k
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4, !noalias !591 ; 0 uses
  %.pre71 = load ptr, ptr %5, align 8, !tbaa !65
  br label %_ZNK5arrow7MapType10item_fieldEv.exit

_ZNK5arrow7MapType10item_fieldEv.exit:            ; preds = %bb.m, %bb.l, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.by = phi ptr [ %.pre71, %bb.m ], [ %i.bp, %bb.l ], [ %i.bp, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.bz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit25 unwind label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit25: ; preds = %_ZNK5arrow7MapType10item_fieldEv.exit
  %i.ca = load ptr, ptr %i.bq, align 8, !tbaa !56 ; 8 uses
  %.not.i.i26 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i26, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit25
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.cb, align 8, !tbaa !68
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !70
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !54
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #18, !inline_history !177
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30

bb.p:                                             ; preds = %bb.n
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i27 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i27, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = add nsw i32 %i.ce, -1
end_hunk_6
begin_hunk_7_@_ZN5arrow10MapBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS3_INS_8DataTypeEE:bb.a
bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i36
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38: ; preds = %_ZNK5arrow7MapType10item_fieldEv.exit33, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i36, %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !563, !range !561, !noundef !562
  store i8 %i.dy, ptr %i.i, align 8, !tbaa !532
  %i.dz = load ptr, ptr %2, align 8, !tbaa !82
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 120
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !75 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !82
  store ptr %i.ec, ptr %i.u, align 8, !tbaa !82
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !56 ; 4 uses
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not.i.i.i39, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38
  %.not7.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i40 = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i.i40, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !3
  %i.ek = add nsw i32 %i.ej, 1
  store i32 %i.ek, ptr %i.eh, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.el = atomicrmw volatile add ptr %i.eh, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.ed, align 8, !tbaa !56
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.af, %bb.ae, %bb.ac
  %i.em = phi ptr [ %i.eg, %bb.ac ], [ %i.eg, %bb.ae ], [ %.pr.pre.i.i.i, %bb.af ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 4 uses
  %i.eo = load atomic i64, ptr %i.en acquire, align 8 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 4294967297
  %i.eq = trunc i64 %i.eo to i32                  ; 2 uses
  br i1 %i.ep, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.en, align 8, !tbaa !68
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 0, ptr %i.er, align 4, !tbaa !70
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !54
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  tail call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #18, !inline_history !597
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !54
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  tail call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #18, !inline_history !597
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i9.i.i.i = icmp eq i8 %i.ey, 0
  br i1 %.not.i9.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ez = add nsw i32 %i.eq, -1
  store i32 %i.ez, ptr %i.en, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.fa = atomicrmw volatile add ptr %i.en, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i = phi i32 [ %i.eq, %bb.aj ], [ %i.fa, %bb.ak ]
  %i.fb = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fb, label %bb.al, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !72

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #18
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ah, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !56
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.fc = load ptr, ptr %2, align 8, !tbaa !82
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 120
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !75 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !82
  store ptr %i.fg, ptr %i.v, align 8, !tbaa !82
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !56 ; 4 uses
  %i.fk = load ptr, ptr %i.fh, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i41 = icmp eq ptr %i.fj, %i.fk
  br i1 %.not.i.i.i41, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit51, label %bb.am

bb.am:                                            ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit
  %.not7.i.i.i42 = icmp eq ptr %i.fj, null
  br i1 %.not7.i.i.i42, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i44, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 3 uses
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i43 = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i.i43, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fo = add nsw i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fl, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i44

bb.ap:                                            ; preds = %bb.an
  %i.fp = atomicrmw volatile add ptr %i.fl, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i50 = load ptr, ptr %i.fh, align 8, !tbaa !56
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i44

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i44: ; preds = %bb.ap, %bb.ao, %bb.am
  %i.fq = phi ptr [ %i.fk, %bb.am ], [ %i.fk, %bb.ao ], [ %.pr.pre.i.i.i50, %bb.ap ] ; 8 uses
  %.not8.i.i.i45 = icmp eq ptr %i.fq, null
  br i1 %.not8.i.i.i45, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i49, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i44
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 4 uses
  %i.fs = load atomic i64, ptr %i.fr acquire, align 8 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 4294967297
  %i.fu = trunc i64 %i.fs to i32                  ; 2 uses
  br i1 %i.ft, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.fr, align 8, !tbaa !68
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store i32 0, ptr %i.fv, align 4, !tbaa !70
  %i.fw = load ptr, ptr %i.fq, align 8, !tbaa !54
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8
  tail call void %i.fy(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #18, !inline_history !597
  %i.fz = load ptr, ptr %i.fq, align 8, !tbaa !54
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8
  tail call void %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #18, !inline_history !597
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i49

bb.as:                                            ; preds = %bb.aq
  %i.gc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i9.i.i.i46 = icmp eq i8 %i.gc, 0
  br i1 %.not.i9.i.i.i46, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gd = add nsw i32 %i.fu, -1
  store i32 %i.gd, ptr %i.fr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47

bb.au:                                            ; preds = %bb.as
  %i.ge = atomicrmw volatile add ptr %i.fr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.i48 = phi i32 [ %i.fu, %bb.at ], [ %i.ge, %bb.au ]
  %i.gf = icmp eq i32 %.0.i.i.i.i.i48, 1
  br i1 %i.gf, label %bb.av, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i49, !prof !72

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #18
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i49

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i49: ; preds = %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47, %bb.ar, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i44
  store ptr %i.fj, ptr %i.fh, align 8, !tbaa !56
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit51

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit51: ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.gg = load ptr, ptr %2, align 8, !tbaa !82    ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !54
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 104
  %i.gj = load ptr, ptr %i.gi, align 8
  invoke void %i.gj(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %i.gg)
          to label %bb.aw unwind label %bb.bn

bb.aw:                                            ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit51
  %i.gk = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #20
          to label %.noexc unwind label %bb.bo    ; 6 uses

.noexc:                                           ; preds = %bb.aw
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i32 1, ptr %i.gl, align 8, !tbaa !68, !noalias !598
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  store i32 1, ptr %i.gm, align 4, !tbaa !70, !noalias !598
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.gk, align 8, !tbaa !54, !noalias !598
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 3 uses
  invoke void @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl(ptr noundef nonnull align 8 dereferenceable(232) %i.gn, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 64)
          to label %bb.ax unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !598

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %.noexc
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef 248) #19, !noalias !598
  br label %.body

bb.ax:                                            ; preds = %.noexc
  store ptr getelementptr inbounds inrange(-16, 136) ({ [19 x ptr] }, ptr @_ZTVN5arrow11ListBuilderE, i32 0, i32 0, i32 2), ptr %i.gn, align 8, !tbaa !54, !noalias !598
  store ptr %i.gn, ptr %i.t, align 8, !tbaa !584
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !56 ; 8 uses
  store ptr %i.gk, ptr %i.gp, align 8, !tbaa !56
  %.not.i.i.i.i52 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i52, label %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 4 uses
  %i.gs = load atomic i64, ptr %i.gr acquire, align 8 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 4294967297
  %i.gu = trunc i64 %i.gs to i32                  ; 2 uses
  br i1 %i.gt, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.gr, align 8, !tbaa !68
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 0, ptr %i.gv, align 4, !tbaa !70
  %i.gw = load ptr, ptr %i.gq, align 8, !tbaa !54
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #18, !inline_history !585
  %i.gz = load ptr, ptr %i.gq, align 8, !tbaa !54
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #18, !inline_history !585
  br label %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.hc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i53 = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i.i.i.i53, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hd = add nsw i32 %i.gu, -1
  store i32 %i.hd, ptr %i.gr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.he = atomicrmw volatile add ptr %i.gr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i.i = phi i32 [ %i.gu, %bb.bb ], [ %i.he, %bb.bc ]
  %i.hf = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.hf, label %bb.bd, label %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #18
  br label %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.az, %bb.ax
  %i.hg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !56 ; 8 uses
  %.not.i.i58 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i58, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 4 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 4294967297
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  br i1 %i.hk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.hi, align 8, !tbaa !68
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 0, ptr %i.hm, align 4, !tbaa !70
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !54
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #18, !inline_history !71
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !54
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.ht = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i59 = icmp eq i8 %i.ht, 0
  br i1 %.not.i.i.i59, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hu = add nsw i32 %i.hl, -1
  store i32 %i.hu, ptr %i.hi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60

bb.bi:                                            ; preds = %bb.bg
  %i.hv = atomicrmw volatile add ptr %i.hi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i61 = phi i32 [ %i.hl, %bb.bh ], [ %i.hv, %bb.bi ]
  %i.hw = icmp eq i32 %.0.i.i.i.i61, 1
  br i1 %i.hw, label %bb.bj, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i60, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void

bb.bk:                                            ; preds = %bb.a
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bl:                                            ; preds = %_ZNK5arrow7MapType9key_fieldEv.exit
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.bq

bb.bm:                                            ; preds = %_ZNK5arrow7MapType10item_fieldEv.exit
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.bq

bb.bn:                                            ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEaSERKS2_.exit51
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.aw
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, %bb.bo
  %eh.lpad-body = phi { ptr, i32 } [ %i.ib, %bb.bo ], [ %i.go, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  br label %bb.bp

bb.bp:                                            ; preds = %.body, %bb.bn
  %.pn19 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ia, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bm, %bb.bl, %bb.bk
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %bb.bp ], [ %i.hx, %bb.bk ], [ %i.hz, %bb.bm ], [ %i.hy, %bb.bl ]
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #18
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #18
  call void @_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #18
  %i.ic = load ptr, ptr %i.q, align 8, !tbaa !107 ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.r
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bq
  %i.ie = load i64, ptr %i.r, align 8, !tbaa !58
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ig = load ptr, ptr %i.n, align 8, !tbaa !107 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.o
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ii = load i64, ptr %i.o, align 8, !tbaa !58
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  %i.ik = load ptr, ptr %i.k, align 8, !tbaa !107 ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.l
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.im = load i64, ptr %i.l, align 8, !tbaa !58
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  resume { ptr, i32 } %.pn19.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10MapBuilder6ResizeEl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(296) %1, i64 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !601  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(232) %i.b, i64 noundef %2)
  %i.f = load ptr, ptr %3, align 8, !tbaa !101    ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
end_hunk_7
begin_hunk_8_@_ZN5arrow10MapBuilder16AppendEmptyValueEv:bb.a
  %i.as = add nsw i64 %i.ar, 1
  %i.at = shl nsw i64 %i.an, 1
  %.sroa.speculated.i.i.i.i17 = call noundef i64 @llvm.smax.i64(i64 %i.as, i64 %i.at)
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !54, !noalias !696
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !696
  call void %i.aw(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(232) %i.al, i64 noundef %.sroa.speculated.i.i.i.i17), !noalias !691, !inline_history !699
  %.pr.i.i18 = load ptr, ptr %2, align 8, !tbaa !101, !noalias !691 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !691
  %i.ax = icmp eq ptr %.pr.i.i18, null
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit11.thread.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !52, !noalias !691
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 80 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !117, !noalias !691 ; 2 uses
  %i.bc = sdiv i64 %i.bb, 8
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !58, !noalias !691
  %i.bf = srem i64 %i.bb, 8
  %i.bg = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !58, !noalias !691
  %i.bi = or i8 %i.bh, %i.be
  store i8 %i.bi, ptr %i.bd, align 1, !tbaa !58, !noalias !691
  %i.bj = load i64, ptr %i.ba, align 8, !tbaa !117, !noalias !691
  %.sink.i.i = add nsw i64 %i.bj, 1
  store i64 %.sink.i.i, ptr %i.ba, align 8, !tbaa !117, !noalias !691
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 104 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !95, !noalias !691
  %i.bm = add nsw i64 %i.bl, 1
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !95, !noalias !691
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 200
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !82, !noalias !691 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !54, !noalias !691
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !691
  %i.bs = call noundef i64 %i.br(ptr noundef nonnull align 8 dereferenceable(144) %i.bo), !noalias !691, !inline_history !700
  %i.bt = load ptr, ptr %i.al, align 8, !tbaa !54, !noalias !691
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 128
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !691
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(232) %i.al, i64 noundef %i.bs, i64 noundef 0), !noalias !691, !inline_history !700
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !601 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !54
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call noundef i64 %i.bz(ptr noundef nonnull align 8 dereferenceable(144) %i.bw)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !100
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !601
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !375
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !375
  br label %bb.e

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i16, %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.d
  %.pr.i.i18.sink = phi ptr [ %.pr.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i ], [ null, %bb.d ], [ %.pr.i.i18, %_ZN5arrow6StatusD2Ev.exit.i.i16 ]
  store ptr %.pr.i.i18.sink, ptr %0, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10MapBuilder17AppendEmptyValuesEl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(296) %1, i64 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !601, !noalias !701
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82, !noalias !701 ; 10 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54, !noalias !701
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !701
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(144) %i.d), !noalias !701, !inline_history !609
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82, !noalias !701 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54, !noalias !701
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !701
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(144) %i.j), !noalias !701, !inline_history !609
  %i.o = icmp slt i64 %i.h, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !82, !noalias !701 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54, !noalias !701
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !701
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(144) %i.p), !noalias !701, !inline_history !609
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !54, !noalias !701
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !701
  %i.x = tail call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(144) %i.d), !noalias !701, !inline_history !609
  %i.y = sub nsw i64 %i.t, %i.x                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !704
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !112, !noalias !707 ; 2 uses
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !54, !noalias !707
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !707
  %i.ae = tail call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(160) %i.d), !noalias !707, !inline_history !616
  %i.af = add nsw i64 %i.ae, %i.y                 ; 2 uses
  %.not.i.i.i = icmp sgt i64 %i.af, %i.aa
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %_ZN5arrow6StatusD2Ev.exit12.thread.i.i

_ZN5arrow6StatusD2Ev.exit12.thread.i.i:           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !704
  br label %_ZN5arrow6StatusD2Ev.exit14.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.b
  %i.ag = shl nsw i64 %i.aa, 1
  %.sroa.speculated.i.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.af, i64 %i.ag)
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !54, !noalias !707
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !707
  call void %i.aj(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(160) %i.d, i64 noundef %.sroa.speculated.i.i.i.i), !noalias !704, !inline_history !616
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !101, !noalias !704 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !704
  %i.ak = icmp eq ptr %.pr.i.i, null
  br i1 %i.ak, label %_ZN5arrow6StatusD2Ev.exit14.i, label %bb.e

_ZN5arrow6StatusD2Ev.exit14.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %_ZN5arrow6StatusD2Ev.exit12.thread.i.i
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(160) %i.d, i64 noundef %i.y), !noalias !704
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit14.i, %bb.a
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !601 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !710
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.an = load i64, ptr %i.am, align 8, !tbaa !112, !noalias !713 ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !54, !noalias !713
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !713
  %i.ar = call noundef i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(232) %i.al), !noalias !713, !inline_history !716
  %i.as = add nsw i64 %i.ar, %2                   ; 2 uses
  %.not.i.i = icmp sgt i64 %i.as, %i.an
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit12.thread.i

_ZN5arrow6StatusD2Ev.exit12.thread.i:             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !710
  br label %bb.d

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c
  %i.at = shl nsw i64 %i.an, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.as, i64 %i.at)
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !54, !noalias !713
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !713
  call void %i.aw(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(232) %i.al, i64 noundef %.sroa.speculated.i.i.i), !noalias !710, !inline_history !716
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !101, !noalias !710 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !710
  %i.ax = icmp eq ptr %.pr.i, null
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit12.thread.i, %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(232) %i.al, i64 noundef %2), !noalias !710
  %i.ay = load ptr, ptr %i.al, align 8, !tbaa !54, !noalias !710
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !710
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(232) %i.al, i64 noundef %2), !noalias !710, !inline_history !717
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !601 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !54
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(144) %i.bb)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !100
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !601
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !375
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !375
  br label %bb.e

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.d
  %.pr.i.sink = phi ptr [ %.pr.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i ], [ null, %bb.d ], [ %.pr.i, %_ZN5arrow6StatusD2Ev.exit.i ]
  store ptr %.pr.i.sink, ptr %0, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @_ZN5arrow20FixedSizeListBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS3_INS_8DataTypeEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(184) initializes((0, 164), (168, 184)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
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
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow20FixedSizeListBuilderE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load ptr, ptr %3, align 8, !tbaa !59     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56   ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.l, align 8, !tbaa !57
  store <2 x ptr> %i.o, ptr %i.i, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !59
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit:   ; preds = %bb.a, %bb.c, %bb.d
  %i.u = phi ptr [ %i.j, %bb.a ], [ %i.j, %bb.c ], [ %.pre, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !718
  store i32 %i.x, ptr %i.v, align 8, !tbaa !720
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56  ; 2 uses
  %i.ab = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  store <2 x ptr> %i.ab, ptr %i.y, align 8, !tbaa !57
  %.not.i.i.i5 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i5, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i6 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = atomicrmw volatile add ptr %i.ac, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20FixedSizeListBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(184) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.14", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.a)
  invoke void @_ZN5arrow15fixed_size_listESt10shared_ptrINS_8DataTypeEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %4, ptr noundef nonnull %5, i32 noundef %3)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 64, ptr %i.f, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.h, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.i, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.k, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow20FixedSizeListBuilderE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %4, align 8, !tbaa !59     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !62   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.p, align 8, !tbaa !57
  store <2 x ptr> %i.s, ptr %i.m, align 8, !tbaa !57
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !59
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.y = phi ptr [ %i.n, %bb.b ], [ %i.n, %bb.d ], [ %.pre.i, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !718
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !720
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !56 ; 2 uses
  %i.af = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  store <2 x ptr> %i.af, ptr %i.ac, align 8, !tbaa !57
  %.not.i.i.i5.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i5.i, label %_ZN5arrow20FixedSizeListBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS3_INS_8DataTypeEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i6.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i6.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !3
  br label %_ZN5arrow20FixedSizeListBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS3_INS_8DataTypeEE.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = atomicrmw volatile add ptr %i.ag, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow20FixedSizeListBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS3_INS_8DataTypeEE.exit

_ZN5arrow20FixedSizeListBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS3_INS_8DataTypeEE.exit: ; preds = %bb.h, %bb.g, %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56 ; 8 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow20FixedSizeListBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS3_INS_8DataTypeEE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.an, align 8, !tbaa !68
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !70
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #18, !inline_history !71
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.aq, %bb.l ], [ %i.ba, %bb.m ]
  %i.bb = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow20FixedSizeListBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS3_INS_8DataTypeEE.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !56 ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12, label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.be, align 8, !tbaa !68
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !70
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !54
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #18, !inline_history !71
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !54
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

bb.q:                                             ; preds = %bb.o
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i9 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i9, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

bb.s:                                             ; preds = %bb.q
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i11 = phi i32 [ %i.bh, %bb.r ], [ %i.br, %bb.s ]
  %i.bs = icmp eq i32 %.0.i.i.i.i11, 1
  br i1 %i.bs, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12, !prof !72

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.u:                                             ; preds = %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.bt
}

declare void @_ZN5arrow15fixed_size_listESt10shared_ptrINS_8DataTypeEEi(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.14") align 8, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20FixedSizeListBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN5arrow12ArrayBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(144) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20FixedSizeListBuilder6AppendEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !112, !noalias !723 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !54, !noalias !723
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !723
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !723, !inline_history !116 ; 2 uses
  %.not.i.not = icmp slt i64 %i.f, %i.b
  br i1 %.not.i.not, label %_ZN5arrow6StatusD2Ev.exit9.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit9.thread:                ; preds = %bb.a
end_hunk_8
begin_hunk_9_@_ZN5arrow20FixedSizeListBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE:bb.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.hd = load ptr, ptr %1, align 8, !tbaa !54
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = load ptr, ptr %i.he, align 8
  invoke void %i.hf(ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.bk unwind label %bb.bs

bb.bk:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !101, !alias.scope !766
  br label %.critedge42

bb.bl:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit58
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bm:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bn:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #18
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn32 = phi { ptr, i32 } [ %i.hj, %bb.bo ], [ %i.hi, %bb.bn ]
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #18
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bm
  %.pn32.pn = phi { ptr, i32 } [ %.pn32, %bb.bp ], [ %i.hh, %bb.bm ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #18
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bl
  %.pn32.pn.pn = phi { ptr, i32 } [ %.pn32.pn, %bb.bq ], [ %i.hg, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.bz

bb.bs:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.critedge42:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit54, %bb.bk
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !56 ; 8 uses
  %.not.i.i92 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i92, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit96, label %bb.bt

bb.bt:                                            ; preds = %.critedge42
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 4 uses
  %i.ho = load atomic i64, ptr %i.hn acquire, align 8 ; 2 uses
  %i.hp = icmp eq i64 %i.ho, 4294967297
  %i.hq = trunc i64 %i.ho to i32                  ; 2 uses
  br i1 %i.hp, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.hn, align 8, !tbaa !68
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  store i32 0, ptr %i.hr, align 4, !tbaa !70
  %i.hs = load ptr, ptr %i.hm, align 8, !tbaa !54
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #18, !inline_history !428
  %i.hv = load ptr, ptr %i.hm, align 8, !tbaa !54
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #18, !inline_history !428
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit96

bb.bv:                                            ; preds = %bb.bt
  %i.hy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i93 = icmp eq i8 %i.hy, 0
  br i1 %.not.i.i.i93, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hz = add nsw i32 %i.hq, -1
  store i32 %i.hz, ptr %i.hn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94

bb.bx:                                            ; preds = %bb.bv
  %i.ia = atomicrmw volatile add ptr %i.hn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i95 = phi i32 [ %i.hq, %bb.bw ], [ %i.ia, %bb.bx ]
  %i.ib = icmp eq i32 %.0.i.i.i.i95, 1
  br i1 %i.ib, label %bb.by, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit96, !prof !72

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #18
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit96

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit96: ; preds = %.critedge42, %bb.bu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.critedge

bb.bz:                                            ; preds = %bb.bs, %bb.br, %bb.g
  %.pn36 = phi { ptr, i32 } [ %i.hk, %bb.bs ], [ %.pn32.pn.pn, %bb.br ], [ %i.ah, %bb.g ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.cg

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit48, %_ZN5arrow6StatusD2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit96
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !56 ; 8 uses
  %.not.i.i97 = icmp eq ptr %i.id, null
  br i1 %.not.i.i97, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit101, label %bb.ca

bb.ca:                                            ; preds = %.critedge
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 4 uses
  %i.if = load atomic i64, ptr %i.ie acquire, align 8 ; 2 uses
  %i.ig = icmp eq i64 %i.if, 4294967297
  %i.ih = trunc i64 %i.if to i32                  ; 2 uses
  br i1 %i.ig, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.ie, align 8, !tbaa !68
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  store i32 0, ptr %i.ii, align 4, !tbaa !70
  %i.ij = load ptr, ptr %i.id, align 8, !tbaa !54
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #18, !inline_history !423
  %i.im = load ptr, ptr %i.id, align 8, !tbaa !54
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #18, !inline_history !423
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit101

bb.cc:                                            ; preds = %bb.ca
  %i.ip = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i98 = icmp eq i8 %i.ip, 0
  br i1 %.not.i.i.i98, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.iq = add nsw i32 %i.ih, -1
  store i32 %i.iq, ptr %i.ie, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i99

bb.ce:                                            ; preds = %bb.cc
  %i.ir = atomicrmw volatile add ptr %i.ie, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i99

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i99: ; preds = %bb.ce, %bb.cd
  %.0.i.i.i.i100 = phi i32 [ %i.ih, %bb.cd ], [ %i.ir, %bb.ce ]
  %i.is = icmp eq i32 %.0.i.i.i.i100, 1
  br i1 %i.is, label %bb.cf, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit101, !prof !72

bb.cf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i99
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #18
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit101

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit101: ; preds = %.critedge, %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i99, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.cg:                                            ; preds = %bb.bz, %bb.f, %bb.e, %bb.d
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %bb.bz ], [ %i.v, %bb.f ], [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn36.pn
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow13StructBuilderC2ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolESt6vectorIS1_INS_12ArrayBuilderEESaISA_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) initializes((0, 160)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 64, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow13StructBuilderE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 2 uses
  %i.l = load <2 x ptr>, ptr %1, align 8, !tbaa !57
  store <2 x ptr> %i.l, ptr %i.i, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !75
  %.phi.trans.insert3 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre4 = load ptr, ptr %.phi.trans.insert3, align 8, !tbaa !76
  %.phi.trans.insert5 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.pre6 = load ptr, ptr %.phi.trans.insert5, align 8, !tbaa !80
  %i.r = ptrtoint ptr %.pre6 to i64
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.s = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.r, %bb.d ]
  %i.t = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %.pre4, %bb.d ] ; 2 uses
  %i.u = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %.pre, %bb.d ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load <2 x ptr>, ptr %3, align 8, !tbaa !769
  store <2 x ptr> %i.x, ptr %i.v, align 8, !tbaa !769
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80
  store ptr %i.z, ptr %i.w, align 8, !tbaa !80
  %.not4.i.i.i.i.i = icmp eq ptr %i.u, %i.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i.i.i ], [ %i.u, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.ac, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !70
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18, !inline_history !770
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18, !inline_history !770
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.af, %bb.h ], [ %i.ap, %bb.i ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.j, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i.i.i, !prof !72

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.f, %.lr.ph.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %i.t
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !78

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i.i.i, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEaSEOS5_.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.as = ptrtoint ptr %i.u to i64
  %i.at = sub i64 %i.s, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.at) #19
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEaSEOS5_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEaSEOS5_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow13StructBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN5arrow12ArrayBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !769  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !769  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.07 = phi ptr [ %i.j, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.04.07, align 8, !tbaa !82 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(144) %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow13StructBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(160) initializes((64, 72), (88, 96)) %1, ptr nofree noundef captures(none) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.53", align 16 ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.std::vector.64", align 8    ; 14 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.std::shared_ptr.56", align 16 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.14", align 8 ; 4 uses
  %10 = alloca %"class.std::vector.59", align 8   ; 8 uses
  %11 = alloca [1 x %"class.std::shared_ptr.53"], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !117, !noalias !771 ; 2 uses
  %i.d = ashr i64 %i.c, 3
  %i.e = and i64 %i.c, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = zext i1 %i.f to i64
  %i.h = add nsw i64 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.h, ptr %i.i, align 8, !tbaa !178, !noalias !771
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !771
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.j = load ptr, ptr %4, align 8, !tbaa !101    ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit56, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.bx

_ZN5arrow6StatusD2Ev.exit56:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !75   ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp ugt i64 %i.s, 9223372036854775792
  br i1 %i.t, label %bb.c, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit56
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #21
          to label %.noexc unwind label %bb.e

end_hunk_9
begin_hunk_10_@_ZNK5arrow13StructBuilder4typeEv:bb.a
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cu, align 8, !tbaa !68
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !70
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !54
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #18, !inline_history !783
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !54
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #18, !inline_history !783
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = add nsw i32 %i.cx, -1
  store i32 %i.dg, ptr %i.cu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dh = atomicrmw volatile add ptr %i.cu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cx, %bb.ad ], [ %i.dh, %bb.ae ]
  %i.di = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.di, label %bb.af, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, !prof !72

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #18
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ab, %.lr.ph.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.dj, %i.cr
  br i1 %.not.i.i.i20, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !784

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !62
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.z
  %i.dk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.cq, %bb.z ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i
  %i.dl = load ptr, ptr %i.n, align 8, !tbaa !779
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.do) #19
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.ah:                                            ; preds = %._crit_edge
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.y ], [ %i.dp, %bb.ah ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN5arrow7struct_ERKSt6vectorISt10shared_ptrINS_5FieldEESaIS3_EE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.14") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !780  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !70
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #18, !inline_history !785
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #18, !inline_history !785
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #18
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !784

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !62
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !779
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #19
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK5arrow12ArrayBuilder6lengthEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100
  ret i64 %i.b
}

declare void @_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarEl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 1, i64 noundef) unnamed_addr #2

declare void @_ZN5arrow12ArrayBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 1) unnamed_addr #2

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 136) ({ [19 x ptr] }, ptr @_ZTVN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !177
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !70
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !575
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !575
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !70
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #18, !inline_history !786
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #18, !inline_history !786
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.s, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit, !prof !72

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #18
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit

_ZN5arrow18TypedBufferBuilderIivED2Ev.exit:       ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 136) ({ [19 x ptr] }, ptr @_ZTVN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !177
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !70
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !575
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !575
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !70
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #18, !inline_history !787
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #18, !inline_history !787
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.s, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit, !prof !72

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #18
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit

_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit:       ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow15BaseListBuilderINS_8ListTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 136) ({ [19 x ptr] }, ptr @_ZTVN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !177
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !70
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !575
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !575
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !70
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #18, !inline_history !787
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #18, !inline_history !787
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.s, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit, !prof !72

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #18
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit

_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit:       ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow15BaseListBuilderINS_13LargeListTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow19BaseListViewBuilderINS_12ListViewTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 136) ({ [19 x ptr] }, ptr @_ZTVN5arrow19BaseListViewBuilderINS_12ListViewTypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !786
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !786
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit

_ZN5arrow18TypedBufferBuilderIivED2Ev.exit:       ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow19BaseListViewBuilderINS_12ListViewTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 136) ({ [19 x ptr] }, ptr @_ZTVN5arrow19BaseListViewBuilderINS_12ListViewTypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow19BaseListViewBuilderINS_12ListViewTypeEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !788
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !788
  br label %_ZN5arrow19BaseListViewBuilderINS_12ListViewTypeEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow19BaseListViewBuilderINS_12ListViewTypeEED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !789
  br label %_ZN5arrow19BaseListViewBuilderINS_12ListViewTypeEED2Ev.exit

_ZN5arrow19BaseListViewBuilderINS_12ListViewTypeEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  tail call void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) #18, !inline_history !789
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 136) ({ [19 x ptr] }, ptr @_ZTVN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !787
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !787
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit

_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit:       ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 136) ({ [19 x ptr] }, ptr @_ZTVN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !790
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !790
  br label %_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !791
  br label %_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEED2Ev.exit

_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  tail call void @_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) #18, !inline_history !791
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow10MapBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow10MapBuilderE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !575
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !575
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !70
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !575
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !575
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, !prof !72

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5: ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56 ; 8 uses
  %.not.i.i6 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i6, label %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !70
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #18, !inline_history !792
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #18, !inline_history !792
  br label %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i7 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i7, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i9 = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i9, 1
  br i1 %i.ay, label %bb.s, label %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #18
  br label %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8, %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !107 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !58
  %i.be = add i64 %i.bd, 1
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !107 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !58
  %i.bk = add i64 %i.bj, 1
  tail call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !107 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !58
  %i.bq = add i64 %i.bp, 1
  tail call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow10MapBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow10MapBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(296) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 296) #19
  ret void
}
end_hunk_10
begin_hunk_11_@_ZNK5arrow10MapBuilder4typeEv:bb.a
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit84

bb.co:                                            ; preds = %bb.cm
  %i.jw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i81 = icmp eq i8 %i.jw, 0
  br i1 %.not.i.i.i81, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jx = add nsw i32 %i.jo, -1
  store i32 %i.jx, ptr %i.jl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82

bb.cq:                                            ; preds = %bb.co
  %i.jy = atomicrmw volatile add ptr %i.jl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82: ; preds = %bb.cq, %bb.cp
  %.0.i.i.i.i83 = phi i32 [ %i.jo, %bb.cp ], [ %i.jy, %bb.cq ]
  %i.jz = icmp eq i32 %.0.i.i.i.i83, 1
  br i1 %i.jz, label %bb.cr, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit84, !prof !72

bb.cr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit84

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit84: ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit79, %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82, %bb.cr
  %i.ka = load ptr, ptr %7, align 8, !tbaa !107   ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.p
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit84
  %i.kc = load i64, ptr %i.p, align 8, !tbaa !58
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.ke = load ptr, ptr %3, align 8, !tbaa !107   ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.b
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.kg = load i64, ptr %i.b, align 8, !tbaa !58
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.thread: ; preds = %.noexc.i33, %.noexc6.i32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.cs:                                            ; preds = %bb.j
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i38, %.noexc6.i39, %.noexc.i40, %bb.k
  %.018 = phi ptr [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i38 ], [ %6, %bb.k ], [ %i.ah, %.noexc.i40 ], [ %i.ah, %.noexc6.i39 ]
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.cu:                                            ; preds = %bb.q
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.cv:                                            ; preds = %bb.r
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit110

bb.cw:                                            ; preds = %bb.s
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit110.loopexit

bb.cx:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cy:                                            ; preds = %bb.z
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cz:                                            ; preds = %bb.aa
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i, %bb.cz
  %eh.lpad-body = phi { ptr, i32 } [ %i.kq, %bb.cz ], [ %i.cc, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  br label %bb.da

bb.da:                                            ; preds = %.body, %bb.cy
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.kp, %bb.cy ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #18
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cx
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.da ], [ %i.ko, %bb.cx ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  br label %.loopexit110.loopexit

.loopexit110.loopexit:                            ; preds = %bb.db, %bb.cw
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.db ], [ %i.kn, %bb.cw ]
  %i.kr = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.kr) #18
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  br label %.loopexit110

.loopexit110:                                     ; preds = %.loopexit110.loopexit, %bb.cv
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.km, %bb.cv ], [ %.pn.pn.pn, %.loopexit110.loopexit ]
  %i.ks = phi i1 [ false, %bb.cv ], [ true, %.loopexit110.loopexit ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #18
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #18
  br label %bb.dc

bb.dc:                                            ; preds = %.loopexit110, %bb.cu
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.loopexit110 ], [ %i.kl, %bb.cu ] ; 2 uses
  %.1 = phi i1 [ %i.ks, %.loopexit110 ], [ false, %bb.cu ] ; 2 uses
  %i.kt = load ptr, ptr %10, align 8, !tbaa !107  ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.aj
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.dc
  %i.kv = load i64, ptr %i.aj, align 8, !tbaa !58
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.ct
  %.119 = phi ptr [ %.018, %bb.ct ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.ah, %bb.dc ]
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kk, %bb.ct ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.pn.pn.pn.pn.pn, %bb.dc ]
  %.2 = phi i1 [ false, %bb.ct ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.1, %bb.dc ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #18
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #18
  br label %bb.dd

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.cs
  %.220 = phi ptr [ %.119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %6, %bb.cs ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.kj, %bb.cs ] ; 2 uses
  %.3 = phi i1 [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ false, %bb.cs ]
  %i.kx = load ptr, ptr %7, align 8, !tbaa !107   ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.p
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.dd
  %i.kz = load i64, ptr %i.p, align 8, !tbaa !58
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.la) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  %i.lb = icmp eq ptr %6, %.220
  %or.cond = select i1 %.3, i1 true, i1 %i.lb
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %.preheader
  %i.lc = phi ptr [ %i.ld, %.preheader ], [ %.220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ]
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 -16 ; 3 uses
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ld) #18
  %i.le = icmp eq ptr %i.ld, %6
  br i1 %i.le, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %.pn.pn.pn.pn.pn.pn.pn.pn109 = phi { ptr, i32 } [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.thread ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.pn.pn.pn.pn.pn.pn.pn, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.lf = load ptr, ptr %3, align 8, !tbaa !107   ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.b
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %.loopexit
  %i.lh = load i64, ptr %i.b, align 8, !tbaa !58
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn109
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow20FixedSizeListBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow20FixedSizeListBuilderE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !575
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !575
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !70
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !177
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow20FixedSizeListBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow20FixedSizeListBuilderE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !796
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !796
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !797
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i, label %_ZN5arrow20FixedSizeListBuilderD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !70
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !798
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !798
  br label %_ZN5arrow20FixedSizeListBuilderD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i2.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow20FixedSizeListBuilderD2Ev.exit, !prof !72

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !797
  br label %_ZN5arrow20FixedSizeListBuilderD2Ev.exit

_ZN5arrow20FixedSizeListBuilderD2Ev.exit:         ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(184) %0) #18, !inline_history !797
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20FixedSizeListBuilder16AppendArraySliceERKNS_9ArraySpanEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = add nsw i64 %4, %3
  %.not3465 = icmp sgt i64 %4, 0
  br i1 %.not3465, label %.lr.ph, label %.critedge39

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !164
  %.not.i.not = icmp eq i64 %i.e, 0
  %.not62 = icmp eq ptr %i.b, null
  %.not = select i1 %.not.i.not, i1 true, i1 %.not62
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit61
  %.03166 = phi i64 [ %3, %.lr.ph ], [ %i.cj, %_ZN5arrow6StatusD2Ev.exit61 ] ; 2 uses
  %.pre = load i64, ptr %i.f, align 8, !tbaa !154
  %.pre67 = add nsw i64 %.pre, %.03166            ; 3 uses
  br i1 %.not, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = lshr i64 %.pre67, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !58
  %i.r = trunc i64 %.pre67 to i8
  %i.s = and i8 %i.r, 7
  %i.t = lshr i8 %i.q, %i.s
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !82   ; 2 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !168
  %i.x = load i32, ptr %i.m, align 8, !tbaa !720
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = mul nsw i64 %.pre67, %i.y
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(144) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %i.w, i64 noundef %i.z, i64 noundef %i.y)
  %i.ad = load ptr, ptr %7, align 8, !tbaa !101   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN5arrow6StatusD2Ev.exit44, label %.critedge.loopexit

_ZN5arrow6StatusD2Ev.exit44:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !799
  %i.af = load i64, ptr %i.g, align 8, !tbaa !112, !noalias !802 ; 2 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !54, !noalias !802
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !802
  %i.aj = call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(184) %1), !noalias !802, !inline_history !805 ; 2 uses
  %.not.i.not.i = icmp slt i64 %i.aj, %i.af
  br i1 %.not.i.not.i, label %_ZN5arrow6StatusD2Ev.exit9.thread.i, label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit9.thread.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !799
  br label %_ZN5arrow6StatusD2Ev.exit50

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow6StatusD2Ev.exit44
  %i.ak = add nsw i64 %i.aj, 1
  %i.al = shl nsw i64 %i.af, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.ak, i64 %i.al)
  %i.am = load ptr, ptr %1, align 8, !tbaa !54, !noalias !802
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !802
  call void %i.ao(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 noundef %.sroa.speculated.i.i.i), !noalias !799, !inline_history !805
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !101, !noalias !799 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !799
  %i.ap = icmp eq ptr %.pr.i, null
  br i1 %i.ap, label %_ZN5arrow6StatusD2Ev.exit50, label %_ZN5arrow6StatusD2Ev.exit46

_ZN5arrow6StatusD2Ev.exit46:                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %.pr.i, ptr %0, align 8, !tbaa !101
  br label %.critedge

_ZN5arrow6StatusD2Ev.exit50:                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit9.thread.i
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !52, !noalias !799
end_hunk_11
begin_hunk_12_@_ZN5arrow20FixedSizeListBuilder16AppendArraySliceERKNS_9ArraySpanEll:bb.a
  store ptr %.pr.i54, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.critedge

_ZN5arrow6StatusD2Ev.exit57:                      ; preds = %_ZN5arrow6StatusD2Ev.exit9.thread.i55, %_ZN5arrow6StatusD2Ev.exit.i52
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !52, !noalias !806
  %i.bp = load i64, ptr %i.i, align 8, !tbaa !117, !noalias !806 ; 2 uses
  %i.bq = sdiv i64 %i.bp, 8
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !58, !noalias !806
  %i.bt = srem i64 %i.bp, 8
  %i.bu = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !58, !noalias !806
  %i.bw = xor i8 %i.bv, -1
  %i.bx = and i8 %i.bs, %i.bw
  store i8 %i.bx, ptr %i.br, align 1, !tbaa !58, !noalias !806
  %i.by = load <2 x i64>, ptr %i.i, align 8, !tbaa !95, !noalias !806
  %i.bz = add nsw <2 x i64> %i.by, splat (i64 1)
  store <2 x i64> %i.bz, ptr %i.i, align 8, !tbaa !95, !noalias !806
  %i.ca = load <2 x i64>, ptr %i.k, align 8, !tbaa !95, !noalias !806
  %i.cb = add nsw <2 x i64> %i.ca, splat (i64 1)
  store <2 x i64> %i.cb, ptr %i.k, align 8, !tbaa !95, !noalias !806
  %i.cc = load ptr, ptr %i.l, align 8, !tbaa !82, !noalias !806 ; 2 uses
  %i.cd = load i32, ptr %i.m, align 8, !tbaa !720, !noalias !806
  %i.ce = sext i32 %i.cd to i64
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !54, !noalias !806
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !806
  call void %i.ch(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(144) %i.cc, i64 noundef %i.ce), !inline_history !813
  %.pr = load ptr, ptr %8, align 8, !tbaa !101    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ci = icmp eq ptr %.pr, null
  br i1 %i.ci, label %_ZN5arrow6StatusD2Ev.exit61, label %.critedge.loopexit

_ZN5arrow6StatusD2Ev.exit61:                      ; preds = %_ZN5arrow6StatusD2Ev.exit57, %_ZN5arrow6StatusD2Ev.exit50
  %i.cj = add nsw i64 %.03166, 1                  ; 2 uses
  %.not34 = icmp slt i64 %i.cj, %i.c
  br i1 %.not34, label %bb.b, label %.critedge39, !llvm.loop !814

.critedge39:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit61, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !101, !alias.scope !815
  br label %.critedge

.critedge.loopexit:                               ; preds = %_ZN5arrow6StatusD2Ev.exit57, %_ZN5arrow6StatusD2Ev.exit
  %i.ck = phi ptr [ %.pr, %_ZN5arrow6StatusD2Ev.exit57 ], [ %i.ad, %_ZN5arrow6StatusD2Ev.exit ]
  store ptr %i.ck, ptr %0, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %_ZN5arrow6StatusD2Ev.exit46, %_ZN5arrow6StatusD2Ev.exit57.thread, %.critedge39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow20FixedSizeListBuilder4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.11", align 8 ; 4 uses
  %3 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.d)
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.11") align 8 %2, ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.i = load i32, ptr %i.h, align 8, !tbaa !720
  invoke void @_ZN5arrow15fixed_size_listESt10shared_ptrINS_5FieldEEi(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.14") align 8 %0, ptr noundef nonnull %2, i32 noundef %i.i)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.l, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !70
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #18, !inline_history !177
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.g ], [ %i.y, %bb.h ]
  %i.z = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.z, label %bb.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56 ; 8 uses
  %.not.i.i4 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ac, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !70
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18, !inline_history !71
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i5 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i5, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

bb.n:                                             ; preds = %bb.l
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i7 = phi i32 [ %i.af, %bb.m ], [ %i.ap, %bb.n ]
  %i.aq = icmp eq i32 %.0.i.i.i.i7, 1
  br i1 %i.aq, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.p:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.as, %bb.q ], [ %i.ar, %bb.p ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow13StructBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow13StructBuilderE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !71
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow13StructBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow13StructBuilderE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow13StructBuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !818
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !818
  br label %_ZN5arrow13StructBuilderD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.g, label %_ZN5arrow13StructBuilderD2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !819
  br label %_ZN5arrow13StructBuilderD2Ev.exit

_ZN5arrow13StructBuilderD2Ev.exit:                ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(160) %0) #18, !inline_history !819
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow13StructBuilder10AppendNullEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !769  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !769  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %._crit_edge, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a, %bb.b
  %.sroa.015.020 = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.h = load ptr, ptr %.sroa.015.020, align 8, !tbaa !82 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.h)
  %i.l = load ptr, ptr %3, align 8, !tbaa !101    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %.critedge.sink.split

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !820
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i64, ptr %i.n, align 8, !tbaa !112, !noalias !823 ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !54, !noalias !823
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !823
  %i.s = call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(160) %1), !noalias !823, !inline_history !826 ; 2 uses
  %.not.i.not.i = icmp slt i64 %i.s, %i.o
  br i1 %.not.i.not.i, label %_ZN5arrow6StatusD2Ev.exit10.thread.i, label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit10.thread.i:             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !820
  br label %bb.c

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %._crit_edge
  %i.t = add nsw i64 %i.s, 1
  %i.u = shl nsw i64 %i.o, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.t, i64 %i.u)
  %i.v = load ptr, ptr %1, align 8, !tbaa !54, !noalias !823
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !noalias !823
  call void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 noundef %.sroa.speculated.i.i.i), !noalias !820, !inline_history !826
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !101, !noalias !820 ; 2 uses
  store ptr %.pr.i, ptr %0, align 8, !tbaa !101, !alias.scope !820
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !820
  %i.y = icmp eq ptr %.pr.i, null
  br i1 %i.y, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit10.thread.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !52, !noalias !820
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !117, !noalias !820 ; 2 uses
  %i.ad = sdiv i64 %i.ac, 8
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !58, !noalias !820
  %i.ag = srem i64 %i.ac, 8
  %i.ah = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !58, !noalias !820
  %i.aj = xor i8 %i.ai, -1
  %i.ak = and i8 %i.af, %i.aj
  store i8 %i.ak, ptr %i.ae, align 1, !tbaa !58, !noalias !820
  %i.al = load <2 x i64>, ptr %i.ab, align 8, !tbaa !95, !noalias !820
  %i.am = add nsw <2 x i64> %i.al, splat (i64 1)
  store <2 x i64> %i.am, ptr %i.ab, align 8, !tbaa !95, !noalias !820
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.an, align 8, !tbaa !95, !noalias !820
  %i.ap = add nsw <2 x i64> %i.ao, splat (i64 1)
  store <2 x i64> %i.ap, ptr %i.an, align 8, !tbaa !95, !noalias !820
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.c
  %.sink = phi ptr [ null, %bb.c ], [ %i.l, %_ZN5arrow6StatusD2Ev.exit ]
  store ptr %.sink, ptr %0, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %_ZN5arrow6StatusD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow13StructBuilder11AppendNullsEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !769  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !769  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.031.037, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %._crit_edge, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a, %bb.b
  %.sroa.031.037 = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.h = load ptr, ptr %.sroa.031.037, align 8, !tbaa !82 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.h, i64 noundef %2)
  %i.l = load ptr, ptr %3, align 8, !tbaa !101    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %.critedge.sink.split

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i64, ptr %i.n, align 8, !tbaa !112, !noalias !827 ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !54, !noalias !827
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !827
  %i.s = call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !827, !inline_history !116
  %i.t = add nsw i64 %i.s, %2                     ; 2 uses
  %.not.i24 = icmp sgt i64 %i.t, %i.o
  br i1 %.not.i24, label %_ZN5arrow6StatusD2Ev.exit26, label %_ZN5arrow6StatusD2Ev.exit30.thread

_ZN5arrow6StatusD2Ev.exit30.thread:               ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.c

_ZN5arrow6StatusD2Ev.exit26:                      ; preds = %._crit_edge
  %i.u = shl nsw i64 %i.o, 1
  %.sroa.speculated.i.i = call noundef i64 @llvm.smax.i64(i64 %i.t, i64 %i.u)
  %i.v = load ptr, ptr %1, align 8, !tbaa !54, !noalias !827
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !noalias !827
  call void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !116
end_hunk_12
begin_hunk_13_@_ZN5arrow13BufferBuilder6ResizeElb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.c, %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit
  %i.ah = load ptr, ptr %5, align 8, !tbaa !101   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.m, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !605

bb.m:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !110 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i23, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.m
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(80) %i.ak) #18, !inline_history !910
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !890

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ao = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.ah, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !891, !range !561, !noundef !562
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  br label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.m, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br i1 %i.g, label %bb.q, label %bb.r

bb.o:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %6, align 8, !tbaa !110   ; 3 uses
  %.not.i24 = icmp eq ptr %i.at, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25: ; preds = %bb.o
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(80) %i.at) #18, !inline_history !909
  br label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26

_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26: ; preds = %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26, %bb.d
  %.pn18 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.as, %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn18

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef %2, i1 noundef zeroext %3)
  %i.ba = load ptr, ptr %7, align 8, !tbaa !101   ; 2 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit
  %i.bc = load ptr, ptr %1, align 8, !tbaa !868   ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !869
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !400
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !876, !range !561, !noundef !562
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bk = load i8, ptr %i.bj, align 8, !range !561
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = select i1 %i.bi, i1 %i.bl, i1 false, !prof !605
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = select i1 %i.bm, ptr %i.bo, ptr null, !prof !605
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !52
  store ptr null, ptr %0, align 8, !tbaa !101, !alias.scope !911
  br label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, %bb.q
  ret void
}

declare void @_ZN5arrow14AllocateBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !605

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !885  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #18, !inline_history !914
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !101 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !890

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !891, !range !561, !noundef !562
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

declare void @_ZN5arrow23AllocateResizableBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.110") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !605

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d) #18, !inline_history !915
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !101 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !890

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !891, !range !561, !noundef !562
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !110    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !868
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !56
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !70
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.d, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !916
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !56 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !70
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #18, !inline_history !918
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #18, !inline_history !918
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.x, label %bb.i, label %bb.j, !prof !72

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #18
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !56
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !68
  store i32 0, ptr %i.f, align 4, !tbaa !70
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !73
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !73
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #18
  resume { ptr, i32 } %i.al
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !919  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #18, !inline_history !921
  br label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !922  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow15ResizableBufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !58
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(46) @_ZTSSt14default_deleteIN5arrow15ResizableBufferEE) #18
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

declare void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !885    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !407
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !56
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !885
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !70
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.d, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !924
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !56 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !70
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #18, !inline_history !918
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #18, !inline_history !918
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.x, label %bb.i, label %bb.j, !prof !72

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #18
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !56
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !68
  store i32 0, ptr %i.f, align 4, !tbaa !70
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !73
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !73
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #18
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !926  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #18, !inline_history !928
  br label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !922  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow6BufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !58
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(36) @_ZTSSt14default_deleteIN5arrow6BufferEE) #18
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !541  ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !107    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !72

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #20 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #19
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8, !tbaa !107
  store i64 %.0, ptr %i.d, align 8, !tbaa !58
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !541
  store i8 0, ptr %i.c, align 1, !tbaa !58
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !107    ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !58
  store i8 %i.s, ptr %i.q, align 1, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !541
  %i.u = load ptr, ptr %0, align 8, !tbaa !107
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

declare void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.11") align 8, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !73
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !73
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_5FieldEERKbEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.11", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !70
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !57
  store ptr null, ptr %i.d, align 8, !tbaa !56
  store <2 x ptr> %i.e, ptr %3, align 16, !tbaa !57
  store ptr null, ptr %1, align 8, !tbaa !65
  %i.f = load i8, ptr %2, align 1, !tbaa !929, !range !561, !noundef !562
  %i.g = trunc nuw i8 %i.f to i1
  invoke void @_ZN5arrow7MapTypeC1ESt10shared_ptrINS_5FieldEEb(ptr noundef nonnull align 8 dereferenceable(73) %i.c, ptr noundef nonnull %3, i1 noundef zeroext %i.g)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !70
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #18, !inline_history !930
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #18, !inline_history !930
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !72

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #18
  br label %bb.i

.body:                                            ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  resume { ptr, i32 } %i.y

bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow7MapTypeEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(73) %i.a) #18, !inline_history !931
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !922  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !58
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #18
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN5arrow7MapTypeC1ESt10shared_ptrINS_5FieldEEb(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef, i1 noundef zeroext) unnamed_addr #2

declare void @_ZN5arrow15fixed_size_listESt10shared_ptrINS_5FieldEEi(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.14") align 8, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

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
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !73
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !73
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !73
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !73
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_8DataTypeEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.14", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !70
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !57
  store ptr null, ptr %i.d, align 8, !tbaa !56
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !57
  store ptr null, ptr %1, align 8, !tbaa !59
  invoke void @_ZN5arrow8ListTypeC2ESt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull %2)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !70
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18, !inline_history !932
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18, !inline_history !932
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %bb.i, !prof !72

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18
  br label %bb.i

.body:                                            ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  resume { ptr, i32 } %i.w

bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow8ListTypeEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #18, !inline_history !933
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !922  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !58
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #18
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8ListTypeC2ESt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.11", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #20, !noalias !937 ; 4 uses
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRA5_KcSt10shared_ptrINS0_8DataTypeEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.18, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZSt11make_sharedIN5arrow5FieldEJRA5_KcSt10shared_ptrINS0_8DataTypeEEEES5_IT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !934

common.resume:                                    ; preds = %bb.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.b, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.u, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #19, !noalias !934
  br label %common.resume

_ZSt11make_sharedIN5arrow5FieldEJRA5_KcSt10shared_ptrINS0_8DataTypeEEEES5_IT_EDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !56, !alias.scope !934
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %2, align 8, !tbaa !940, !alias.scope !934
  invoke void @_ZN5arrow8ListTypeC2ESt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZSt11make_sharedIN5arrow5FieldEJRA5_KcSt10shared_ptrINS0_8DataTypeEEEES5_IT_EDpOT0_.exit
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !70
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #18, !inline_history !177
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  ret void

bb.i:                                             ; preds = %_ZSt11make_sharedIN5arrow5FieldEJRA5_KcSt10shared_ptrINS0_8DataTypeEEEES5_IT_EDpOT0_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRA5_KcSt10shared_ptrINS0_8DataTypeEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !70
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !540
  %i.e = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(5) %1) #18 ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #21
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !72

.noexc11.i.i:                                     ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #20 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !107
  store i64 %i.e, ptr %i.d, align 8, !tbaa !58
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %1, align 1, !tbaa !58
  store i8 %i.l, ptr %i.k, align 1, !tbaa !58
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 dereferenceable(5) %1, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.e, ptr %i.m, align 8, !tbaa !541
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !58
  %i.o = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds inrange(-16, 32) ({ [6 x ptr] }, ptr @_ZTVN5arrow5FieldE, i32 0, i32 0, i32 2), ptr %i.c, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !540
  %i.s = load ptr, ptr %3, align 8, !tbaa !107    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.d
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.m, align 8, !tbaa !541  ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.w, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  store ptr %i.s, ptr %i.q, align 8, !tbaa !107
  %i.x = load i64, ptr %i.d, align 8, !tbaa !58
  store i64 %i.x, ptr %i.r, align 8, !tbaa !58
  %.pre.i = load i64, ptr %i.m, align 8, !tbaa !541
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.y = phi i64 [ %i.u, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.y, ptr %i.z, align 8, !tbaa !541
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x ptr> %i.o, ptr %i.aa, align 8, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.ab, align 8, !tbaa !551
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow5FieldEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(96) %i.a) #18, !inline_history !941
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !922  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !58
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #18
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare void @_ZN5arrow12BaseListTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !779
  %i.g = load ptr, ptr %0, align 8, !tbaa !62     ; 5 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.d, 576460752303423487
  br i1 %i.l, label %bb.c, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #21
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #20 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.v, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56   ; 2 uses
  %i.p = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !57
  store <2 x ptr> %i.p, ptr %.011.i.i.i.i.i, align 8, !tbaa !57
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !942

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre47 = load ptr, ptr %0, align 8, !tbaa !62
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i
  %i.x = phi ptr [ %.pre47, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit ], [ %i.g, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !780  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ac, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !70
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18, !inline_history !785
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18, !inline_history !785
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

end_hunk_13
begin_hunk_14_@_ZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !851, !nonnull !562, !align !861 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !96     ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !946
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS3_EEDaSJ_.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #18
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.c, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS3_EEDaSJ_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS3_EEDaSJ_.exit: ; preds = %bb.b, %bb.c
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !851, !nonnull !562, !align !861
  %i.n = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(43) %2) #18
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(43) %2, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS5_EEDaSJ_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS5_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS3_EEDaSJ_.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !851, !nonnull !562, !align !861
  %i.q = load i64, ptr %3, align 8, !tbaa !95
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %i.q)
          to label %_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIlEEDaSJ_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIlEEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS5_EEDaSJ_.exit
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !851, !nonnull !562, !align !861
  %i.t = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(6) %4) #18
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 1 dereferenceable(6) %4, i64 noundef %i.t)
          to label %_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS7_EEDaSJ_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS7_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIlEEDaSJ_.exit
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !851, !nonnull !562, !align !861
  %i.w = load i64, ptr %5, align 8, !tbaa !95
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef %i.w)
          to label %_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS8_EEDaSJ_.exit unwind label %bb.i ; 0 uses

_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS8_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS7_EEDaSJ_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS8_EEDaSJ_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS3_EEDaSJ_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS5_EEDaSJ_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIlEEDaSJ_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS7_EEDaSJ_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA43_S2_lRA6_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS8_EEDaSJ_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.g, %bb.i, %bb.h, %bb.f, %bb.j
  %.pn15 = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.y, %bb.e ], [ %i.z, %bb.f ], [ %i.aa, %bb.g ], [ %i.ac, %bb.i ], [ %i.ab, %bb.h ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(33) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !851, !nonnull !562, !align !861 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !96     ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !946
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS3_EEDaSJ_.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #18
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.c, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS3_EEDaSJ_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS3_EEDaSJ_.exit: ; preds = %bb.b, %bb.c
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !851, !nonnull !562, !align !861
  %i.n = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(33) %2) #18
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(33) %2, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS5_EEDaSJ_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS5_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS3_EEDaSJ_.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !851, !nonnull !562, !align !861
  %i.q = load i64, ptr %3, align 8, !tbaa !95
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %i.q)
          to label %_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIlEEDaSJ_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIlEEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS5_EEDaSJ_.exit
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !851, !nonnull !562, !align !861
  %i.t = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(17) %4) #18
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 1 dereferenceable(17) %4, i64 noundef %i.t)
          to label %_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS7_EEDaSJ_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS7_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIlEEDaSJ_.exit
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !851, !nonnull !562, !align !861
  %i.w = load i64, ptr %5, align 8, !tbaa !95
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef %i.w)
          to label %_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS8_EEDaSJ_.exit unwind label %bb.i ; 0 uses

_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS8_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS7_EEDaSJ_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS8_EEDaSJ_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS3_EEDaSJ_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS5_EEDaSJ_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIlEEDaSJ_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS7_EEDaSJ_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJPKcRA33_S2_lRA17_S2_RlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS8_EEDaSJ_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.g, %bb.i, %bb.h, %bb.f, %bb.j
  %.pn15 = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.y, %bb.e ], [ %i.z, %bb.f ], [ %i.aa, %bb.g ], [ %i.ac, %bb.i ], [ %i.ab, %bb.h ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_5FieldEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.11", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !70
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !57
  store ptr null, ptr %i.d, align 8, !tbaa !56
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !57
  store ptr null, ptr %1, align 8, !tbaa !65
  invoke void @_ZN5arrow8ListTypeC2ESt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull %2)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !70
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18, !inline_history !955
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18, !inline_history !955
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %bb.i, !prof !72

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18
  br label %bb.i

.body:                                            ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  resume { ptr, i32 } %i.w

bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8ListTypeC2ESt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::shared_ptr.11"], align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 25, ptr %i.b, align 8, !tbaa !956
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow8ListTypeE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !57
  store ptr null, ptr %i.d, align 8, !tbaa !56
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !57
  store ptr null, ptr %1, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.f)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %bb.h

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !70
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18, !inline_history !177
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.h:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @_ZN5arrow12BaseListTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #18
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_8DataTypeEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.14", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !70
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !57
  store ptr null, ptr %i.d, align 8, !tbaa !56
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !57
  store ptr null, ptr %1, align 8, !tbaa !59
  invoke void @_ZN5arrow13LargeListTypeC2ESt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull %2)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !70
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18, !inline_history !957
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18, !inline_history !957
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %bb.i, !prof !72

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18
  br label %bb.i

.body:                                            ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  resume { ptr, i32 } %i.w

bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow13LargeListTypeEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #18, !inline_history !958
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !922  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !58
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #18
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow13LargeListTypeC2ESt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.11", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959)
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #20, !noalias !962 ; 4 uses
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRA5_KcSt10shared_ptrINS0_8DataTypeEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.18, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZSt11make_sharedIN5arrow5FieldEJRA5_KcSt10shared_ptrINS0_8DataTypeEEEES5_IT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !959

common.resume:                                    ; preds = %bb.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.b, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.u, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #19, !noalias !959
  br label %common.resume

_ZSt11make_sharedIN5arrow5FieldEJRA5_KcSt10shared_ptrINS0_8DataTypeEEEES5_IT_EDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !56, !alias.scope !959
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %2, align 8, !tbaa !940, !alias.scope !959
  invoke void @_ZN5arrow13LargeListTypeC2ESt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZSt11make_sharedIN5arrow5FieldEJRA5_KcSt10shared_ptrINS0_8DataTypeEEEES5_IT_EDpOT0_.exit
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !70
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #18, !inline_history !177
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  ret void

bb.i:                                             ; preds = %_ZSt11make_sharedIN5arrow5FieldEJRA5_KcSt10shared_ptrINS0_8DataTypeEEEES5_IT_EDpOT0_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_5FieldEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.11", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !70
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !57
  store ptr null, ptr %i.d, align 8, !tbaa !56
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !57
  store ptr null, ptr %1, align 8, !tbaa !65
  invoke void @_ZN5arrow13LargeListTypeC2ESt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull %2)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !70
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18, !inline_history !965
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18, !inline_history !965
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %bb.i, !prof !72

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18
  br label %bb.i

.body:                                            ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  resume { ptr, i32 } %i.w

bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow13LargeListTypeC2ESt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::shared_ptr.11"], align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 36, ptr %i.b, align 8, !tbaa !956
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow13LargeListTypeE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !57
  store ptr null, ptr %i.d, align 8, !tbaa !56
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !57
  store ptr null, ptr %1, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.f)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %bb.h

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !70
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18, !inline_history !177
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.h:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @_ZN5arrow12BaseListTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #18
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS0_8DataTypeEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !240
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20, !noalias !966 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  store i32 1, ptr %i.c, align 4, !tbaa !70
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN5arrow12ListViewTypeC2ERKSt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #19
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !56
  store ptr %i.d, ptr %0, align 8, !tbaa !969
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic i32, ptr %i.j monotonic, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.c:                                             ; preds = %bb.b, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %i.d, ptr %i.g, align 8, !tbaa !91
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i3.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i3.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.c, align 4, !tbaa !3
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !89
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.i, %bb.d ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i7.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #18, !inline_history !970
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.h, align 8, !tbaa !89
  br label %_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12ListViewTypeEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #18, !inline_history !971
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !922  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !58
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #18
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow12ListViewTypeC2ERKSt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.11", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #20, !noalias !975 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !68, !noalias !972
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !70, !noalias !972
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !54, !noalias !972
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow5FieldEJRA5_KcRKSt10shared_ptrINS0_8DataTypeEEEEvPT_DpOT0_(ptr noundef nonnull %i.d, ptr noundef nonnull align 1 dereferenceable(5) @.str.18, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZSt11make_sharedIN5arrow5FieldEJRA5_KcRKSt10shared_ptrINS0_8DataTypeEEEES5_IT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !972

common.resume:                                    ; preds = %bb.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.e, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.w, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #19, !noalias !972
  br label %common.resume

_ZSt11make_sharedIN5arrow5FieldEJRA5_KcRKSt10shared_ptrINS0_8DataTypeEEEES5_IT_EDpOT0_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.f, align 8, !tbaa !56, !alias.scope !972
  store ptr %i.d, ptr %2, align 8, !tbaa !940, !alias.scope !972
  invoke void @_ZN5arrow12ListViewTypeC2ERKSt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZSt11make_sharedIN5arrow5FieldEJRA5_KcRKSt10shared_ptrINS0_8DataTypeEEEES5_IT_EDpOT0_.exit
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !70
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18, !inline_history !177
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.i:                                             ; preds = %_ZSt11make_sharedIN5arrow5FieldEJRA5_KcRKSt10shared_ptrINS0_8DataTypeEEEES5_IT_EDpOT0_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN5arrow5FieldEJRA5_KcRKSt10shared_ptrINS0_8DataTypeEEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !540
  %i.b = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 8 uses
  %i.c = icmp ugt i64 %i.b, 15
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.b, 0
  br i1 %i.d, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #21
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i64 %i.b, 1                      ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !72

.noexc11.i:                                       ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.g = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #20 ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !107
  store i64 %i.b, ptr %i.a, align 8, !tbaa !58
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.h = phi ptr [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.b, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !58
  store i8 %i.i, ptr %i.h, align 1, !tbaa !58
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.b, ptr %i.j, align 8, !tbaa !541
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b
  store i8 0, ptr %i.k, align 1, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56   ; 2 uses
  %i.n = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.i:                                             ; preds = %bb.g
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.f, %bb.h, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds inrange(-16, 32) ({ [6 x ptr] }, ptr @_ZTVN5arrow5FieldE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !540
  %i.w = load ptr, ptr %3, align 8, !tbaa !107    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.y = load i64, ptr %i.j, align 8, !tbaa !541  ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  store ptr %i.w, ptr %i.u, align 8, !tbaa !107
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !58
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !58
  %.pre = load i64, ptr %i.j, align 8, !tbaa !541
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ac = phi i64 [ %i.y, %bb.j ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !541
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x ptr> %i.n, ptr %i.ae, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.af, align 8, !tbaa !551
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS0_5FieldEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !240
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20, !noalias !978 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  store i32 1, ptr %i.c, align 4, !tbaa !70
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN5arrow12ListViewTypeC2ERKSt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #19
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !56
  store ptr %i.d, ptr %0, align 8, !tbaa !969
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic i32, ptr %i.j monotonic, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.c:                                             ; preds = %bb.b, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %i.d, ptr %i.g, align 8, !tbaa !91
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i3.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i3.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.c, align 4, !tbaa !3
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !89
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.i, %bb.d ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i7.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #18, !inline_history !970
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.h, align 8, !tbaa !89
  br label %_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow12ListViewTypeC2ERKSt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::shared_ptr.11"], align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 41, ptr %i.b, align 8, !tbaa !956
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow12ListViewTypeE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56   ; 2 uses
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !57
  store <2 x ptr> %i.f, ptr %2, align 16, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit:   ; preds = %bb.a, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.l)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %bb.k

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.o, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !70
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18, !inline_history !177
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i3 = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.h ], [ %i.ab, %bb.i ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @_ZN5arrow12BaseListTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #18
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS0_8DataTypeEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !299
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20, !noalias !981 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  store i32 1, ptr %i.c, align 4, !tbaa !70
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN5arrow17LargeListViewTypeC2ERKSt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #19
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !56
  store ptr %i.d, ptr %0, align 8, !tbaa !984
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic i32, ptr %i.j monotonic, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.c:                                             ; preds = %bb.b, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %i.d, ptr %i.g, align 8, !tbaa !91
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i3.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i3.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.c, align 4, !tbaa !3
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !89
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.i, %bb.d ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i7.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #18, !inline_history !985
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.h, align 8, !tbaa !89
  br label %_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow17LargeListViewTypeEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #18, !inline_history !986
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !922  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !58
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #18
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17LargeListViewTypeC2ERKSt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.11", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #20, !noalias !990 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !68, !noalias !987
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !70, !noalias !987
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !54, !noalias !987
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow5FieldEJRA5_KcRKSt10shared_ptrINS0_8DataTypeEEEEvPT_DpOT0_(ptr noundef nonnull %i.d, ptr noundef nonnull align 1 dereferenceable(5) @.str.18, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZSt11make_sharedIN5arrow5FieldEJRA5_KcRKSt10shared_ptrINS0_8DataTypeEEEES5_IT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !987

common.resume:                                    ; preds = %bb.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.e, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.w, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #19, !noalias !987
  br label %common.resume

_ZSt11make_sharedIN5arrow5FieldEJRA5_KcRKSt10shared_ptrINS0_8DataTypeEEEES5_IT_EDpOT0_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.f, align 8, !tbaa !56, !alias.scope !987
  store ptr %i.d, ptr %2, align 8, !tbaa !940, !alias.scope !987
  invoke void @_ZN5arrow17LargeListViewTypeC2ERKSt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZSt11make_sharedIN5arrow5FieldEJRA5_KcRKSt10shared_ptrINS0_8DataTypeEEEES5_IT_EDpOT0_.exit
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !70
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18, !inline_history !177
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.i:                                             ; preds = %_ZSt11make_sharedIN5arrow5FieldEJRA5_KcRKSt10shared_ptrINS0_8DataTypeEEEES5_IT_EDpOT0_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS0_5FieldEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !299
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20, !noalias !993 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  store i32 1, ptr %i.c, align 4, !tbaa !70
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN5arrow17LargeListViewTypeC2ERKSt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #19
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !56
  store ptr %i.d, ptr %0, align 8, !tbaa !984
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic i32, ptr %i.j monotonic, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.c:                                             ; preds = %bb.b, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %i.d, ptr %i.g, align 8, !tbaa !91
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i3.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i3.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.c, align 4, !tbaa !3
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !89
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.i, %bb.d ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i7.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #18, !inline_history !985
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.h, align 8, !tbaa !89
  br label %_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17LargeListViewTypeC2ERKSt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::shared_ptr.11"], align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 42, ptr %i.b, align 8, !tbaa !956
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow17LargeListViewTypeE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56   ; 2 uses
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !57
  store <2 x ptr> %i.f, ptr %2, align 16, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit:   ; preds = %bb.a, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.l)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %bb.k

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.o, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !70
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18, !inline_history !177
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i3 = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.h ], [ %i.ab, %bb.i ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @_ZN5arrow12BaseListTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #18
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13StructBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13StructBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow13StructBuilderEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(160) %i.a) #18, !inline_history !996
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13StructBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13StructBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13StructBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !922  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !58
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #18
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN5arrow13StructBuilderEJRKSt10shared_ptrINS0_8DataTypeEERPNS0_10MemoryPoolERSt6vectorIS2_INS0_12ArrayBuilderEESaISC_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !531
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 3 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !75     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr null, i64 %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %i.i, ptr %i.j, align 8, !tbaa !80
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEC2ERKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.g, 9223372036854775792
  br i1 %i.k, label %.noexc.i.i, label %bb.c, !prof !72

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #20 ; 4 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !80
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56   ; 2 uses
  %i.r = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !57
  store <2 x ptr> %i.r, ptr %.08.i.i.i.i.i, align 8, !tbaa !57
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.c
  br i1 %i.z, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !997

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEC2ERKS5_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %.thread
  %i.aa = phi ptr [ %i.j, %.thread ], [ %i.o, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.ab = phi ptr [ %i.h, %.thread ], [ %i.m, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.y, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !76
  invoke void @_ZN5arrow13StructBuilderC1ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolESt6vectorIS1_INS_12ArrayBuilderEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.a, ptr noundef nonnull %4)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEC2ERKS5_.exit
  %i.ac = load ptr, ptr %4, align 8, !tbaa !75    ; 3 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !76 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i ], [ %i.ac, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !56 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ag, align 8, !tbaa !68
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !70
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #18, !inline_history !77
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #18, !inline_history !77
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aj, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.au, label %bb.m, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, !prof !72

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #18
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.ad
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !78

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !75
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.g
  %i.aw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %bb.g ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ax = load ptr, ptr %i.aa, align 8, !tbaa !80
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #19
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, %bb.n
  ret void

bb.o:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEC2ERKS5_.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS0_10MemoryPoolERSt10shared_ptrINS0_13StructBuilderEESA_INS0_8DataTypeEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.8", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !70
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !531
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 2 uses
  %i.h = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  store <2 x ptr> %i.h, ptr %4, align 16, !tbaa !57
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2INS0_13StructBuilderEvEERKS_IT_E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2INS0_13StructBuilderEvEERKS_IT_E.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2INS0_13StructBuilderEvEERKS_IT_E.exit.i

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2INS0_13StructBuilderEvEERKS_IT_E.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  invoke void @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef 64)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2INS0_13StructBuilderEvEERKS_IT_E.exit.i
  store ptr getelementptr inbounds inrange(-16, 136) ({ [19 x ptr] }, ptr @_ZTVN5arrow11ListBuilderE, i32 0, i32 0, i32 2), ptr %i.c, align 8, !tbaa !54
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !70
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18, !inline_history !998
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18, !inline_history !998
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i5.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i5.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !72

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2INS0_13StructBuilderEvEERKS_IT_E.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.ad

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 248) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow11ListBuilderEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(232) %i.a) #18, !inline_history !999
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 248) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !922  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !58
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #18
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 136) ({ [19 x ptr] }, ptr @_ZTVN5arrow24VarLengthListLikeBuilderINS_8ListTypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !177
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !70
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !575
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !575
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !70
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #18, !inline_history !786
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #18, !inline_history !786
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.s, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit, !prof !72

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #18
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit

_ZN5arrow18TypedBufferBuilderIivED2Ev.exit:       ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow11ListBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow11ListBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !73
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !73
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
end_hunk_14
