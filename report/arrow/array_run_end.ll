inline.NumInlined: 1433
inline.NumDeleted: 531
begin_hunk_0_@_ZN5arrow18TypedChunkLocationIiEC2Eii:bb.a
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
define void @_ZN5arrow18RunEndEncodedArrayC2ERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 64)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow18RunEndEncodedArrayE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  invoke void @_ZN5arrow18RunEndEncodedArray7SetDataERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #19
  tail call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  tail call void @_ZN5arrow5ArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #19
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow18RunEndEncodedArray7SetDataERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %3 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %4 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %5 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.7", align 16 ; 6 uses
  %7 = alloca %"class.std::shared_ptr.7", align 16 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44
  %.not = icmp eq i32 %i.d, 38
  br i1 %.not, label %.critedge41, label %bb.b, !prof !60

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull @.str.2, i32 noundef 71, i32 noundef 3)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA62_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(62) @.str.3)
          to label %.critedge unwind label %bb.ad ; 0 uses

.critedge:                                        ; preds = %bb.b
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %.pre = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  %.pre64 = load ptr, ptr %.pre, align 8, !tbaa !41
  br label %.critedge41

.critedge41:                                      ; preds = %bb.a, %.critedge
  %i.f = phi ptr [ %i.b, %bb.a ], [ %.pre64, %.critedge ]
  %i.g = phi ptr [ %i.a, %bb.a ], [ %.pre, %.critedge ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !64   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %.not36 = icmp eq i64 %i.n, 32
  br i1 %.not36, label %.critedge44, label %bb.c, !prof !60

bb.c:                                             ; preds = %.critedge41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull @.str.2, i32 noundef 74, i32 noundef 3)
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA49_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(49) @.str.4)
          to label %.critedge43 unwind label %bb.ae ; 0 uses

.critedge43:                                      ; preds = %bb.c
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.pre65 = load ptr, ptr %1, align 8, !tbaa !35
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre65, i64 64
  %.pre66 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !64
  br label %.critedge44

.critedge44:                                      ; preds = %.critedge41, %.critedge43
  %i.p = phi ptr [ %i.k, %.critedge41 ], [ %.pre66, %.critedge43 ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !44
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !44
  %.not37 = icmp eq i32 %i.w, %i.aa
  br i1 %.not37, label %.critedge47, label %bb.d, !prof !60

bb.d:                                             ; preds = %.critedge44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull @.str.2, i32 noundef 75, i32 noundef 3)
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA86_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(86) @.str.5)
          to label %.critedge46 unwind label %bb.af ; 0 uses

.critedge46:                                      ; preds = %bb.d
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.pre67 = load ptr, ptr %i.q, align 8, !tbaa !65
  %.pre68 = load ptr, ptr %1, align 8, !tbaa !35
  %.phi.trans.insert69 = getelementptr inbounds nuw i8, ptr %.pre68, i64 64
  %.pre70 = load ptr, ptr %.phi.trans.insert69, align 8, !tbaa !64
  br label %.critedge47

.critedge47:                                      ; preds = %.critedge44, %.critedge46
  %i.ac = phi ptr [ %i.p, %.critedge44 ], [ %.pre70, %.critedge46 ]
  %i.ad = phi ptr [ %i.r, %.critedge44 ], [ %.pre67, %.critedge46 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !44
  %.not40 = icmp eq i32 %i.aj, %i.ao
  br i1 %.not40, label %.critedge50, label %bb.e, !prof !60

bb.e:                                             ; preds = %.critedge47
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull @.str.2, i32 noundef 76, i32 noundef 3)
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA84_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(84) @.str.6)
          to label %.critedge49 unwind label %bb.ag ; 0 uses

.critedge49:                                      ; preds = %bb.e
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.critedge50

.critedge50:                                      ; preds = %.critedge47, %.critedge49
  call void @_ZN5arrow5Array7SetDataERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !64
  call void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load <2 x ptr>, ptr %6, align 16, !tbaa !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !70 ; 8 uses
  store <2 x ptr> %i.ax, ptr %i.au, align 8, !tbaa !69
  %.not.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, label %bb.f

bb.f:                                             ; preds = %.critedge50
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.az, align 8, !tbaa !71
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !73
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #19, !inline_history !74
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #19, !inline_history !74
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.bc, %bb.i ], [ %i.bm, %bb.j ]
  %i.bn = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bn, label %bb.k, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, !prof !76

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #19
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit:    ; preds = %.critedge50, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  %i.bo = load ptr, ptr %i.av, align 8, !tbaa !70 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

end_hunk_0
begin_hunk_1_@_ZN5arrow18RunEndEncodedArray7SetDataERKSt10shared_ptrINS_9ArrayDataEE:bb.a
  br i1 %i.br, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bp, align 8, !tbaa !71
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !73
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !33
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #19, !inline_history !77
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #19, !inline_history !77
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.bs, %bb.o ], [ %i.cc, %bb.p ]
  %i.cd = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cd, label %bb.q, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !76

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ce = load ptr, ptr %i.aq, align 8, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  call void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cl = load <2 x ptr>, ptr %7, align 16, !tbaa !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !70 ; 8 uses
  store <2 x ptr> %i.cl, ptr %i.ci, align 8, !tbaa !69
  %.not.i.i.i.i51 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i51, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit55, label %bb.r

bb.r:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 4 uses
  %i.co = load atomic i64, ptr %i.cn acquire, align 8 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 4294967297
  %i.cq = trunc i64 %i.co to i32                  ; 2 uses
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.cn, align 8, !tbaa !71
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  store i32 0, ptr %i.cr, align 4, !tbaa !73
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !33
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #19, !inline_history !74
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !33
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #19, !inline_history !74
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit55

bb.t:                                             ; preds = %bb.r
  %i.cy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i.i52 = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i.i.i52, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = add nsw i32 %i.cq, -1
  store i32 %i.cz, ptr %i.cn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53

bb.v:                                             ; preds = %bb.t
  %i.da = atomicrmw volatile add ptr %i.cn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i54 = phi i32 [ %i.cq, %bb.u ], [ %i.da, %bb.v ]
  %i.db = icmp eq i32 %.0.i.i.i.i.i.i54, 1
  br i1 %i.db, label %bb.w, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit55, !prof !76

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #19
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit55

_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit55:  ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53, %bb.w
  %i.dc = load ptr, ptr %i.cj, align 8, !tbaa !70 ; 8 uses
  %.not.i.i56 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i56, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60, label %bb.x

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit55
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.dd, align 8, !tbaa !71
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !73
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #19, !inline_history !77
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !33
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #19, !inline_history !77
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60

bb.z:                                             ; preds = %bb.x
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i57 = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i57, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58

bb.ab:                                            ; preds = %bb.z
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i59 = phi i32 [ %i.dg, %bb.aa ], [ %i.dq, %bb.ab ]
  %i.dr = icmp eq i32 %.0.i.i.i.i59, 1
  br i1 %i.dr, label %bb.ac, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60, !prof !76

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60: ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_.exit55, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void

bb.ad:                                            ; preds = %bb.b
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.ah

bb.ae:                                            ; preds = %bb.c
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ah

bb.af:                                            ; preds = %bb.d
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ah

bb.ag:                                            ; preds = %bb.e
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.ad ], [ %i.dv, %bb.ag ], [ %i.du, %bb.af ], [ %i.dt, %bb.ae ]
  resume { ptr, i32 } %.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow18RunEndEncodedArrayC2ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_5ArrayEES9_l(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, i64 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %7 = alloca %"class.std::shared_ptr.10", align 16 ; 4 uses
  %8 = alloca %"class.std::vector", align 8       ; 8 uses
  %9 = alloca [1 x %"class.std::shared_ptr.18"], align 8 ; 6 uses
  %10 = alloca %"class.std::vector.13", align 8   ; 8 uses
  %11 = alloca [2 x %"class.std::shared_ptr"], align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow18RunEndEncodedArrayE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !69
  store <2 x ptr> %i.f, ptr %7, align 16, !tbaa !69
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.l = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20
          to label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i unwind label %bb.bk ; 3 uses

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  store ptr %i.l, ptr %8, align 8, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store ptr %i.m, ptr %i.o, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.p = load ptr, ptr %3, align 8, !tbaa !83     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !70   ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.q, align 8, !tbaa !69
  store <2 x ptr> %i.u, ptr %11, align 16, !tbaa !69
  %.not.i.i.i15 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i15, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i16 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.v, align 4, !tbaa !3
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %bb.f, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !70 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !69
  store <2 x ptr> %i.af, ptr %i.aa, align 16, !tbaa !69
  %.not.i.i.i17 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i17, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit19, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i18 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit19

bb.j:                                             ; preds = %bb.h
  %i.ak = atomicrmw volatile add ptr %i.ag, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit19

_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit19: ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit, %bb.i, %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.al = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20
          to label %.noexc26 unwind label %bb.bl  ; 5 uses

.noexc26:                                         ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit19
  store ptr %i.al, ptr %10, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !86
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !70  ; 2 uses
  %i.ap = load <2 x ptr>, ptr %11, align 16, !tbaa !69
  store <2 x ptr> %i.ap, ptr %i.al, align 8, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i.i23 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i23, label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i.i.i.i.i.i.i.i24 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i24, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.au = atomicrmw volatile add ptr %i.aq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %.noexc26
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !70 ; 2 uses
  %i.ay = load <2 x ptr>, ptr %i.aa, align 16, !tbaa !69
  store <2 x ptr> %i.ay, ptr %i.av, align 8, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i.i23.1 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i23.1, label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1, label %bb.n

bb.n:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i.i.i.i.i.i.i.i24.1 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i24.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

bb.p:                                             ; preds = %bb.n
  %i.bd = atomicrmw volatile add ptr %i.az, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1: ; preds = %bb.p, %bb.o, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !61
  invoke void @_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_6BufferEESaIS6_EES4_IS1_IS0_ESaIS9_EEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %6, ptr noundef nonnull %7, i64 noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %10, i64 noundef 0, i64 noundef %5)
          to label %bb.q unwind label %bb.bm

bb.q:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  invoke void @_ZN5arrow18RunEndEncodedArray7SetDataERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.r unwind label %bb.bn

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !70 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bi, align 8, !tbaa !71
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !73
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !33
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #19, !inline_history !87
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #19, !inline_history !87
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i27 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i27, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = add nsw i32 %i.bl, -1
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev:bb.a
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !73
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #19, !inline_history !96
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #19, !inline_history !96
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #19
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !92

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !78
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #21
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !97
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !97
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow18RunEndEncodedArray4MakeERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_5ArrayEES9_l(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !44
  %.not = icmp eq i32 %i.c, 38
  br i1 %.not, label %_ZN5arrow6StatusD2Ev.exit11, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(29) @.str)
  call void @_ZN5arrow6ResultISt10shared_ptrINS_18RunEndEncodedArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %i.d = load ptr, ptr %6, align 8, !tbaa !98     ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !60

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !101, !range !111, !noundef !112
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.h

_ZN5arrow6StatusD2Ev.exit11:                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.h = load ptr, ptr %3, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @_ZN5arrow8ree_util29ValidateRunEndEncodedChildrenERKNS_17RunEndEncodedTypeElRKSt10shared_ptrINS_9ArrayDataEES8_ll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 noundef 0, i64 noundef %5)
  %i.l = load ptr, ptr %8, align 8, !tbaa !98     ; 2 uses
  store ptr %i.l, ptr %7, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit17, label %bb.e, !prof !60

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit11
  call void @_ZN5arrow6ResultISt10shared_ptrINS_18RunEndEncodedArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  %i.n = load ptr, ptr %7, align 8, !tbaa !98     ; 2 uses
  %.not.i12 = icmp eq ptr %i.n, null
  br i1 %.not.i12, label %_ZN5arrow6StatusD2Ev.exit13, label %bb.f, !prof !60

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !101, !range !111, !noundef !112
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN5arrow6StatusD2Ev.exit13, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  br label %_ZN5arrow6StatusD2Ev.exit13

_ZN5arrow6StatusD2Ev.exit13:                      ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.h

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.r = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #20, !noalias !113 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !71, !noalias !118
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 1, ptr %i.t, align 4, !tbaa !73, !noalias !118
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow18RunEndEncodedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.r, align 8, !tbaa !33, !noalias !118
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  invoke void @_ZN5arrow18RunEndEncodedArrayC1ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_5ArrayEES9_l(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %5)
          to label %_ZNSt12__shared_ptrIN5arrow18RunEndEncodedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow18RunEndEncodedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !118

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow18RunEndEncodedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit17
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 80) #21, !noalias !118
  resume { ptr, i32 } %i.v

_ZNSt12__shared_ptrIN5arrow18RunEndEncodedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit17
  store ptr null, ptr %0, align 8, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.w, align 8, !tbaa !119
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.x, align 8, !tbaa !70
  br label %bb.h

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit13, %_ZNSt12__shared_ptrIN5arrow18RunEndEncodedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_18RunEndEncodedArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.51", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !98
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !98
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !76

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !122    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !75
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !122    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !75
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.m = load ptr, ptr %3, align 8, !tbaa !122    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !75
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #22
  unreachable
}

declare void @_ZN5arrow8ree_util29ValidateRunEndEncodedChildrenERKNS_17RunEndEncodedTypeElRKSt10shared_ptrINS_9ArrayDataEES8_ll(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow18RunEndEncodedArray4MakeElRKSt10shared_ptrINS_5ArrayEES5_l(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.10", align 16 ; 8 uses
  %6 = alloca %"class.std::shared_ptr.10", align 16 ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %8 = alloca %"class.std::shared_ptr.10", align 8 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.10", align 8 ; 4 uses
  %10 = alloca %"class.std::shared_ptr.10", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = load ptr, ptr %2, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.c, align 8, !tbaa !69
  store <2 x ptr> %i.g, ptr %5, align 16, !tbaa !69
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.m = load ptr, ptr %3, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70   ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.o, align 8, !tbaa !69
  store <2 x ptr> %i.s, ptr %6, align 16, !tbaa !69
  %.not.i.i.i11 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i11, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit13, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i12 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit13

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit13

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit13: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, %bb.f, %bb.g
  %i.y = load ptr, ptr %5, align 16, !tbaa !41    ; 2 uses
  %i.z = invoke noundef zeroext i1 @_ZN5arrow17RunEndEncodedType15RunEndTypeValidERKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit13
  br i1 %i.z, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZN5arrow6Status8FromArgsIJRA43_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(43) @.str.1)
          to label %_ZN5arrow6Status7InvalidIJRA43_KcEEES0_DpOT_.exit unwind label %bb.m

_ZN5arrow6Status7InvalidIJRA43_KcEEES0_DpOT_.exit: ; preds = %bb.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_18RunEndEncodedArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  %i.aa = load ptr, ptr %7, align 8, !tbaa !98    ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.j, !prof !60

bb.j:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA43_KcEEES0_DpOT_.exit
end_hunk_2
begin_hunk_3_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  %i.dw = phi ptr [ %.pr.pre.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i ], [ %i.dp, %bb.af ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !101, !range !111, !noundef !112
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %39) #19
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i: ; preds = %bb.ah, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19, !noalias !137
  br i1 %i.bu, label %_ZN5arrow9ArrayData16GetMutableValuesIsEEPT_i.exit.i, label %bb.aj

_ZN5arrow9ArrayData16GetMutableValuesIsEEPT_i.exit.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i
  %i.ea = load ptr, ptr %37, align 8, !tbaa !35, !noalias !137 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !78
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !123, !nonnull !112, !noundef !112 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !140
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 9
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !126, !range !111, !noundef !112
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.el = load i8, ptr %i.ek, align 8, !range !111
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = select i1 %i.ej, i1 %i.em, i1 false, !prof !60
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = select i1 %i.en, ptr %i.ep, ptr null, !prof !60
  %i.er = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %i.eg ; 2 uses
  %i.es = shl i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.er, ptr nonnull align 2 %i.ai, i64 %i.es, i1 false)
  %i.et = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !137
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !154
  %i.ew = trunc i64 %i.ev to i16
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.er, i64 %i.aj
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19, !noalias !137
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %42, ptr noundef nonnull align 8 dereferenceable(16) %37)
          to label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i unwind label %bb.ai

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i: ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIsEEPT_i.exit.i
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !137
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ez = load <2 x ptr>, ptr %42, align 16, !tbaa !69, !noalias !137
  store <2 x ptr> %i.ez, ptr %i.ey, align 8, !tbaa !69, !alias.scope !137
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19, !noalias !137
  br label %bb.aj

.loopexit.loopexit165.i:                          ; preds = %bb.s
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #19, !noalias !137
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit.loopexit165.i
  %.pn77.i = phi { ptr, i32 } [ %i.fb, %.loopexit.loopexit.i ], [ %i.fa, %.loopexit.loopexit165.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %41) #19, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19, !noalias !137
  %i.fc = load ptr, ptr %40, align 8, !tbaa !163, !noalias !137 ; 3 uses
  %.not.i116.i = icmp eq ptr %i.fc, null
  br i1 %.not.i116.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i: ; preds = %.loopexit.i
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !33, !noalias !137
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !137
  call void %i.ff(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.fc) #19, !noalias !137, !inline_history !167
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19, !noalias !137
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %39) #19, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19, !noalias !137
  br label %bb.aq

bb.ai:                                            ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIsEEPT_i.exit.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19, !noalias !137
  br label %bb.aq

bb.aj:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i
  %i.fh = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !70, !noalias !137 ; 8 uses
  %.not.i.i119.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i119.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 4 uses
  %i.fk = load atomic i64, ptr %i.fj acquire, align 8 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 4294967297
  %i.fm = trunc i64 %i.fk to i32                  ; 2 uses
  br i1 %i.fl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.fj, align 8, !tbaa !71
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 0, ptr %i.fn, align 4, !tbaa !73
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !33
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #19, !inline_history !170
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !33
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #19, !inline_history !170
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.fu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !137
  %.not.i.i.i120.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i.i.i120.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fv = add nsw i32 %i.fm, -1
  store i32 %i.fv, ptr %i.fj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i

bb.ao:                                            ; preds = %bb.am
  %i.fw = atomicrmw volatile add ptr %i.fj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i122.i = phi i32 [ %i.fm, %bb.an ], [ %i.fw, %bb.ao ]
  %i.fx = icmp eq i32 %.0.i.i.i.i122.i, 1
  br i1 %i.fx, label %bb.ap, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !76

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i, %bb.al, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19, !noalias !137
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int16TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

bb.aq:                                            ; preds = %bb.ai, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i, %bb.r
  %.pn81.pn.i = phi { ptr, i32 } [ %i.bw, %bb.r ], [ %.pn77.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i ], [ %i.fg, %bb.ai ]
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %37) #19
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.q
  %.pn81.pn.pn.i = phi { ptr, i32 } [ %.pn81.pn.i, %bb.aq ], [ %i.bv, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19, !noalias !137
  br label %common.resume

bb.as:                                            ; preds = %bb.b
  %i.fy = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalOffsetEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !137
  %i.fz = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalLengthEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !137 ; 4 uses
  %i.ga = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !137
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !64, !noalias !137
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !35, !noalias !137 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !78, !noalias !137
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !123, !noalias !137 ; 3 uses
  %.not.i.i123.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i123.i, label %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit125.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !140, !noalias !137
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 9
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !126, !range !111, !noalias !137, !noundef !112
  %i.gm = trunc nuw i8 %i.gl to i1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !137
  %i.gp = select i1 %i.gm, ptr %i.go, ptr null, !prof !60
  %i.gq = getelementptr inbounds [2 x i8], ptr %i.gp, i64 %i.gj
  br label %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit125.i

_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit125.i: ; preds = %bb.at, %bb.as
  %.0.i.i124.i = phi ptr [ %i.gq, %bb.at ], [ null, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19, !noalias !137
  %i.gr = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %2, ptr %i.gr, align 8, !tbaa !171, !noalias !137
  %i.gs = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i64 64, ptr %i.gs, align 8, !tbaa !184, !noalias !137
  %i.gt = getelementptr inbounds nuw i8, ptr %43, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gt, i8 0, i64 16, i1 false), !noalias !137
  %i.gu = getelementptr inbounds nuw i8, ptr %43, i64 40
  store ptr %2, ptr %i.gu, align 8, !tbaa !185, !noalias !137
  %i.gv = getelementptr inbounds nuw i8, ptr %43, i64 48 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.gv, align 8, !tbaa !186, !noalias !137
  %i.gw = getelementptr inbounds nuw i8, ptr %43, i64 56
  %i.gx = getelementptr inbounds nuw i8, ptr %43, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i8 0, i64 16, i1 false), !noalias !137
  store i64 64, ptr %i.gx, align 8, !tbaa !187, !noalias !137
  %i.gy = getelementptr inbounds nuw i8, ptr %43, i64 80 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gy, i8 0, i64 64, i1 false), !noalias !137
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow14NumericBuilderINS_9Int16TypeEEE, i32 0, i32 0, i32 2), ptr %43, align 8, !tbaa !33, !noalias !137
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.gz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %.noexc.i.i unwind label %bb.ax, !noalias !137 ; 2 uses

.noexc.i.i:                                       ; preds = %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit125.i
  %i.ha = getelementptr inbounds nuw i8, ptr %43, i64 144
  %i.hb = getelementptr inbounds nuw i8, ptr %43, i64 152
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !70, !noalias !191 ; 2 uses
  %i.he = load <2 x ptr>, ptr %i.gz, align 8, !tbaa !69, !noalias !191
  store <2 x ptr> %i.he, ptr %i.ha, align 8, !tbaa !69, !alias.scope !188, !noalias !137
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow14NumericBuilderINS_9Int16TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i, label %bb.au

bb.au:                                            ; preds = %.noexc.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 3 uses
  %i.hg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !191
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hh = load i32, ptr %i.hf, align 4, !tbaa !3, !noalias !191
  %i.hi = add nsw i32 %i.hh, 1
  store i32 %i.hi, ptr %i.hf, align 4, !tbaa !3, !noalias !191
  br label %_ZN5arrow14NumericBuilderINS_9Int16TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.hj = atomicrmw volatile add ptr %i.hf, i32 1 acq_rel, align 4, !noalias !191 ; 0 uses
  br label %_ZN5arrow14NumericBuilderINS_9Int16TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

common.resume:                                    ; preds = %bb.gr, %bb.gx, %bb.ia, %bb.dr, %bb.dx, %bb.fa, %bb.ar, %bb.ax, %bb.ca
  %common.resume.op = phi { ptr, i32 } [ %.pn75.i11, %bb.fa ], [ %.pn75.i, %bb.ca ], [ %i.hk, %bb.ax ], [ %.pn81.pn.pn.i, %bb.ar ], [ %i.us, %bb.dx ], [ %.pn81.pn.pn.i53, %bb.dr ], [ %i.ahy, %bb.gx ], [ %.pn81.pn.pn.i145, %bb.gr ], [ %.pn75.i103, %bb.ia ]
  resume { ptr, i32 } %common.resume.op

bb.ax:                                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit125.i
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %43) #19, !noalias !137
  br label %common.resume

_ZN5arrow14NumericBuilderINS_9Int16TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i: ; preds = %bb.aw, %bb.av, %.noexc.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %43, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hl, i8 0, i64 16, i1 false), !noalias !137
  %i.hm = getelementptr inbounds nuw i8, ptr %43, i64 176
  store ptr %2, ptr %i.hm, align 8, !tbaa !185, !noalias !137
  %i.hn = getelementptr inbounds nuw i8, ptr %43, i64 184 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.hn, align 8, !tbaa !186, !noalias !137
  %i.ho = getelementptr inbounds nuw i8, ptr %43, i64 192
  %i.hp = getelementptr inbounds nuw i8, ptr %43, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, i8 0, i64 16, i1 false), !noalias !137
  store i64 64, ptr %i.hp, align 8, !tbaa !187, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19, !noalias !137
  invoke void @_ZN5arrow14NumericBuilderINS_9Int16TypeEE6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %45, ptr noundef nonnull align 8 dereferenceable(216) %43, i64 noundef %i.fz)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.bb, !noalias !137

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow14NumericBuilderINS_9Int16TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.hq = load ptr, ptr %45, align 8, !tbaa !98, !noalias !137 ; 2 uses
  store ptr %i.hq, ptr %44, align 8, !tbaa !98, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19, !noalias !137
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %_ZN5arrow6StatusD2Ev.exit132.i, label %bb.ay, !prof !60

bb.ay:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %44) #19
  %i.hs = load ptr, ptr %44, align 8, !tbaa !98, !noalias !137 ; 2 uses
  %.not.i127.i = icmp eq ptr %i.hs, null
  br i1 %.not.i127.i, label %_ZN5arrow6StatusD2Ev.exit128.i, label %bb.az, !prof !60

bb.az:                                            ; preds = %bb.ay
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !101, !range !111, !noundef !112
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %_ZN5arrow6StatusD2Ev.exit128.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %44) #19
  br label %_ZN5arrow6StatusD2Ev.exit128.i

_ZN5arrow6StatusD2Ev.exit128.i:                   ; preds = %bb.ba, %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19, !noalias !137
  br label %bb.bn

bb.bb:                                            ; preds = %_ZN5arrow14NumericBuilderINS_9Int16TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19, !noalias !137
  br label %bb.ca

_ZN5arrow6StatusD2Ev.exit132.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19, !noalias !137
  %i.hx = icmp sgt i64 %i.fz, 0
  br i1 %i.hx, label %.preheader.i, label %bb.bm

.preheader.i:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit132.i
  %.not163.not.i = icmp eq i64 %i.fz, 1
  br i1 %.not163.not.i, label %.critedge89.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.hy = getelementptr [2 x i8], ptr %.0.i.i124.i, i64 %i.fy
  %i.hz = getelementptr inbounds nuw i8, ptr %43, i64 112
  %i.ia = getelementptr inbounds nuw i8, ptr %43, i64 104 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %43, i64 200 ; 3 uses
  %i.ic = add nsw i64 %i.fz, -2
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit141.i, %.lr.ph.i
  %.052164.i = phi i64 [ 0, %.lr.ph.i ], [ %i.js, %_ZN5arrow6StatusD2Ev.exit141.i ] ; 3 uses
  %i.id = getelementptr [2 x i8], ptr %i.hy, i64 %.052164.i
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !155, !noalias !137
  %i.if = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !137
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !140, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19, !noalias !137
  %i.ii = trunc i64 %i.ih to i16
  %i.ij = sub i16 %i.ie, %i.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19, !noalias !192
  %i.ik = load i64, ptr %i.hz, align 8, !tbaa !195, !noalias !196 ; 2 uses
  %i.il = load ptr, ptr %43, align 8, !tbaa !33, !noalias !196
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !noalias !196
  %i.io = invoke noundef i64 %i.in(ptr noundef nonnull align 8 dereferenceable(216) %43)
          to label %.noexc.i unwind label %bb.bg, !noalias !137, !inline_history !199 ; 2 uses

.noexc.i:                                         ; preds = %bb.bc
  %.not.i.not.i.i = icmp slt i64 %i.io, %i.ik
  br i1 %.not.i.not.i.i, label %_ZN5arrow6StatusD2Ev.exit10.thread.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i

_ZN5arrow6StatusD2Ev.exit10.thread.i.i:           ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19, !noalias !192
  br label %_ZN5arrow6StatusD2Ev.exit141.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %.noexc.i
  %i.ip = add nsw i64 %i.io, 1
  %i.iq = shl nsw i64 %i.ik, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.ip, i64 %i.iq)
  %i.ir = load ptr, ptr %43, align 8, !tbaa !33, !noalias !196
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !noalias !196
  invoke void %i.it(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %34, ptr noundef nonnull align 8 dereferenceable(216) %43, i64 noundef %.sroa.speculated.i.i.i.i)
          to label %.noexc133.i unwind label %bb.bg, !noalias !137, !inline_history !199

.noexc133.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %.pr.i.i = load ptr, ptr %34, align 8, !tbaa !98, !noalias !192 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19, !noalias !192
  %i.iu = icmp eq ptr %.pr.i.i, null
  br i1 %i.iu, label %_ZN5arrow6StatusD2Ev.exit141.i, label %bb.bd

bb.bd:                                            ; preds = %.noexc133.i
  store ptr %.pr.i.i, ptr %46, align 8, !tbaa !98, !noalias !137
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %46) #19
  %i.iv = load ptr, ptr %46, align 8, !tbaa !98, !noalias !137 ; 2 uses
  %.not.i136.i = icmp eq ptr %i.iv, null
  br i1 %.not.i136.i, label %_ZN5arrow6StatusD2Ev.exit137.i, label %bb.be, !prof !60

bb.be:                                            ; preds = %bb.bd
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 1
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !101, !range !111, !noundef !112
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %_ZN5arrow6StatusD2Ev.exit137.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %46) #19
  br label %_ZN5arrow6StatusD2Ev.exit137.i

_ZN5arrow6StatusD2Ev.exit137.i:                   ; preds = %bb.bf, %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19, !noalias !137
  br label %bb.bn

bb.bg:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %bb.bc
  %i.iz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19, !noalias !137
  br label %bb.ca

_ZN5arrow6StatusD2Ev.exit141.i:                   ; preds = %.noexc133.i, %_ZN5arrow6StatusD2Ev.exit10.thread.i.i
  %i.ja = load ptr, ptr %i.gv, align 8, !tbaa !186, !noalias !192
  %i.jb = load i64, ptr %i.gy, align 8, !tbaa !200, !noalias !192 ; 2 uses
  %i.jc = sdiv i64 %i.jb, 8
  %i.jd = getelementptr inbounds i8, ptr %i.ja, i64 %i.jc ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !75, !noalias !192
  %i.jf = srem i64 %i.jb, 8
  %i.jg = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !75, !noalias !192
  %i.ji = or i8 %i.jh, %i.je
  store i8 %i.ji, ptr %i.jd, align 1, !tbaa !75, !noalias !192
  %i.jj = load i64, ptr %i.gy, align 8, !tbaa !200, !noalias !192
  %i.jk = add nsw i64 %i.jj, 1
  store i64 %i.jk, ptr %i.gy, align 8, !tbaa !200, !noalias !192
  %i.jl = load i64, ptr %i.ia, align 8, !tbaa !201, !noalias !192
  %i.jm = add nsw i64 %i.jl, 1
  store i64 %i.jm, ptr %i.ia, align 8, !tbaa !201, !noalias !192
  %i.jn = load ptr, ptr %i.hn, align 8, !tbaa !186, !noalias !192
  %i.jo = load i64, ptr %i.ib, align 8, !tbaa !202, !noalias !192
  %i.jp = getelementptr inbounds i8, ptr %i.jn, i64 %i.jo
  store i16 %i.ij, ptr %i.jp, align 1, !noalias !192
  %i.jq = load i64, ptr %i.ib, align 8, !tbaa !202, !noalias !192
  %i.jr = add nsw i64 %i.jq, 2
  store i64 %i.jr, ptr %i.ib, align 8, !tbaa !202, !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19, !noalias !137
  %i.js = add nuw nsw i64 %.052164.i, 1
  %exitcond.not.i = icmp eq i64 %.052164.i, %i.ic
  br i1 %exitcond.not.i, label %.critedge89.i, label %bb.bc, !llvm.loop !203

bb.bh:                                            ; preds = %bb.bm
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.critedge89.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit141.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19, !noalias !137
  %i.ju = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !137
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !154, !noalias !137
  %i.jx = trunc i64 %i.jw to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19, !noalias !204
  %i.jy = getelementptr inbounds nuw i8, ptr %43, i64 112
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !195, !noalias !207 ; 2 uses
  %i.ka = load ptr, ptr %43, align 8, !tbaa !33, !noalias !207
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8, !noalias !207
  %i.kd = invoke noundef i64 %i.kc(ptr noundef nonnull align 8 dereferenceable(216) %43)
          to label %.noexc147.i unwind label %bb.bl, !noalias !137, !inline_history !199 ; 2 uses

.noexc147.i:                                      ; preds = %.critedge89.i
  %.not.i.not.i142.i = icmp slt i64 %i.kd, %i.jz
  br i1 %.not.i.not.i142.i, label %_ZN5arrow6StatusD2Ev.exit10.thread.i146.i, label %_ZN5arrow6StatusD2Ev.exit.i143.i

_ZN5arrow6StatusD2Ev.exit10.thread.i146.i:        ; preds = %.noexc147.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19, !noalias !204
  br label %_ZN5arrow6StatusD2Ev.exit157.i

_ZN5arrow6StatusD2Ev.exit.i143.i:                 ; preds = %.noexc147.i
  %i.ke = add nsw i64 %i.kd, 1
  %i.kf = shl nsw i64 %i.jz, 1
  %.sroa.speculated.i.i.i144.i = call noundef i64 @llvm.smax.i64(i64 %i.ke, i64 %i.kf)
  %i.kg = load ptr, ptr %43, align 8, !tbaa !33, !noalias !207
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.ki = load ptr, ptr %i.kh, align 8, !noalias !207
  invoke void %i.ki(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %33, ptr noundef nonnull align 8 dereferenceable(216) %43, i64 noundef %.sroa.speculated.i.i.i144.i)
          to label %.noexc148.i unwind label %bb.bl, !noalias !137, !inline_history !199

.noexc148.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i143.i
  %.pr.i145.i = load ptr, ptr %33, align 8, !tbaa !98, !noalias !204 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19, !noalias !204
  %i.kj = icmp eq ptr %.pr.i145.i, null
  br i1 %i.kj, label %_ZN5arrow6StatusD2Ev.exit157.i, label %bb.bi

bb.bi:                                            ; preds = %.noexc148.i
  store ptr %.pr.i145.i, ptr %47, align 8, !tbaa !98, !noalias !137
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %47) #19
  %i.kk = load ptr, ptr %47, align 8, !tbaa !98, !noalias !137 ; 2 uses
  %.not.i152.i = icmp eq ptr %i.kk, null
  br i1 %.not.i152.i, label %_ZN5arrow6StatusD2Ev.exit153.i, label %bb.bj, !prof !60

bb.bj:                                            ; preds = %bb.bi
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !101, !range !111, !noundef !112
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %_ZN5arrow6StatusD2Ev.exit153.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %47) #19
  br label %_ZN5arrow6StatusD2Ev.exit153.i

_ZN5arrow6StatusD2Ev.exit153.i:                   ; preds = %bb.bk, %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19, !noalias !137
  br label %bb.bn

bb.bl:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i143.i, %.critedge89.i
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19, !noalias !137
  br label %bb.ca

_ZN5arrow6StatusD2Ev.exit157.i:                   ; preds = %.noexc148.i, %_ZN5arrow6StatusD2Ev.exit10.thread.i146.i
  %i.kp = load ptr, ptr %i.gv, align 8, !tbaa !186, !noalias !204
  %i.kq = load i64, ptr %i.gy, align 8, !tbaa !200, !noalias !204 ; 2 uses
  %i.kr = sdiv i64 %i.kq, 8
  %i.ks = getelementptr inbounds i8, ptr %i.kp, i64 %i.kr ; 2 uses
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !75, !noalias !204
  %i.ku = srem i64 %i.kq, 8
  %i.kv = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !75, !noalias !204
  %i.kx = or i8 %i.kw, %i.kt
  store i8 %i.kx, ptr %i.ks, align 1, !tbaa !75, !noalias !204
  %i.ky = load i64, ptr %i.gy, align 8, !tbaa !200, !noalias !204
  %i.kz = add nsw i64 %i.ky, 1
  store i64 %i.kz, ptr %i.gy, align 8, !tbaa !200, !noalias !204
  %i.la = getelementptr inbounds nuw i8, ptr %43, i64 104 ; 2 uses
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !201, !noalias !204
  %i.lc = add nsw i64 %i.lb, 1
  store i64 %i.lc, ptr %i.la, align 8, !tbaa !201, !noalias !204
  %i.ld = load ptr, ptr %i.hn, align 8, !tbaa !186, !noalias !204
  %i.le = getelementptr inbounds nuw i8, ptr %43, i64 200 ; 3 uses
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !202, !noalias !204
  %i.lg = getelementptr inbounds i8, ptr %i.ld, i64 %i.lf
  store i16 %i.jx, ptr %i.lg, align 1, !noalias !204
  %i.lh = load i64, ptr %i.le, align 8, !tbaa !202, !noalias !204
  %i.li = add nsw i64 %i.lh, 2
  store i64 %i.li, ptr %i.le, align 8, !tbaa !202, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19, !noalias !137
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit157.i, %_ZN5arrow6StatusD2Ev.exit132.i
  invoke void @_ZN5arrow12ArrayBuilder6FinishEv(ptr dead_on_unwind writable sret(%"class.arrow::Result.39") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %43)
          to label %bb.bn unwind label %bb.bh

bb.bn:                                            ; preds = %bb.bm, %_ZN5arrow6StatusD2Ev.exit153.i, %_ZN5arrow6StatusD2Ev.exit137.i, %_ZN5arrow6StatusD2Ev.exit128.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow14NumericBuilderINS_9Int16TypeEEE, i32 0, i32 0, i32 2), ptr %43, align 8, !tbaa !33, !noalias !137
  %i.lj = getelementptr inbounds nuw i8, ptr %43, i64 168
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !70, !noalias !137 ; 8 uses
  %.not.i.i.i.i.i158.i = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i.i.i158.i, label %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 4 uses
  %i.lm = load atomic i64, ptr %i.ll acquire, align 8 ; 2 uses
  %i.ln = icmp eq i64 %i.lm, 4294967297
  %i.lo = trunc i64 %i.lm to i32                  ; 2 uses
  br i1 %i.ln, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.ll, align 8, !tbaa !71
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  store i32 0, ptr %i.lp, align 4, !tbaa !73
  %i.lq = load ptr, ptr %i.lk, align 8, !tbaa !33
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(16) %i.lk) #19, !inline_history !210
  %i.lt = load ptr, ptr %i.lk, align 8, !tbaa !33
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.lv = load ptr, ptr %i.lu, align 8
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(16) %i.lk) #19, !inline_history !210
  br label %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.lw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !137
  %.not.i.i.i.i.i.i159.i = icmp eq i8 %i.lw, 0
  br i1 %.not.i.i.i.i.i.i159.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lx = add nsw i32 %i.lo, -1
  store i32 %i.lx, ptr %i.ll, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.ly = atomicrmw volatile add ptr %i.ll, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.lo, %bb.br ], [ %i.ly, %bb.bs ]
  %i.lz = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.lz, label %bb.bt, label %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i.i, !prof !76

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lk) #19, !inline_history !211
  br label %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i.i

_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i.i:   ; preds = %bb.bt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bp, %bb.bn
  %i.ma = load ptr, ptr %i.hb, align 8, !tbaa !70, !noalias !137 ; 8 uses
  %.not.i.i.i160.i = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i160.i, label %_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8 ; 4 uses
  %i.mc = load atomic i64, ptr %i.mb acquire, align 8 ; 2 uses
  %i.md = icmp eq i64 %i.mc, 4294967297
  %i.me = trunc i64 %i.mc to i32                  ; 2 uses
  br i1 %i.md, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %i.mb, align 8, !tbaa !71
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 12
  store i32 0, ptr %i.mf, align 4, !tbaa !73
  %i.mg = load ptr, ptr %i.ma, align 8, !tbaa !33
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8
  call void %i.mi(ptr noundef nonnull align 8 dereferenceable(16) %i.ma) #19, !inline_history !212
  %i.mj = load ptr, ptr %i.ma, align 8, !tbaa !33
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  %i.ml = load ptr, ptr %i.mk, align 8
  call void %i.ml(ptr noundef nonnull align 8 dereferenceable(16) %i.ma) #19, !inline_history !212
  br label %_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.mm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !137
  %.not.i.i.i.i161.i = icmp eq i8 %i.mm, 0
  br i1 %.not.i.i.i.i161.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mn = add nsw i32 %i.me, -1
  store i32 %i.mn, ptr %i.mb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.by:                                            ; preds = %bb.bw
  %i.mo = atomicrmw volatile add ptr %i.mb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i.i.i = phi i32 [ %i.me, %bb.bx ], [ %i.mo, %bb.by ]
  %i.mp = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.mp, label %bb.bz, label %_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev.exit.i, !prof !76

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ma) #19, !inline_history !211
  br label %_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev.exit.i

_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev.exit.i: ; preds = %bb.bz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bv, %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i.i
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %43) #19, !inline_history !211
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19, !noalias !137
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int16TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

bb.ca:                                            ; preds = %bb.bl, %bb.bh, %bb.bg, %bb.bb
  %.pn75.i = phi { ptr, i32 } [ %i.jt, %bb.bh ], [ %i.ko, %bb.bl ], [ %i.iz, %bb.bg ], [ %i.hw, %bb.bb ]
  call void @_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(216) %43) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19, !noalias !137
  br label %common.resume

_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int16TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  br label %bb.ib

bb.cb:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  %i.mq = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !213 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 32
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !140, !noalias !213
  %i.mt = icmp eq i64 %i.ms, 0
  br i1 %i.mt, label %bb.cc, label %bb.ds

bb.cc:                                            ; preds = %bb.cb
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !154, !noalias !213
  %i.mw = icmp eq i64 %i.mv, 0
  br i1 %i.mw, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i95, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i95: ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19, !noalias !213
  call void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef 0), !noalias !213
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !213
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.my = load <2 x ptr>, ptr %20, align 16, !tbaa !69, !noalias !213
  store <2 x ptr> %i.my, ptr %i.mx, align 8, !tbaa !69, !alias.scope !213
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19, !noalias !213
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int32TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i:   ; preds = %bb.cc
  %i.mz = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalLengthEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !213 ; 4 uses
  %i.na = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !213 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 64
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !64, !noalias !213
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !35, !noalias !213 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 40
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !78, !noalias !213
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !123, !noalias !213, !nonnull !112, !noundef !112 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !140, !noalias !213
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 9
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !126, !range !111, !noalias !213, !noundef !112
  %i.nm = trunc nuw i8 %i.nl to i1
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.no = load ptr, ptr %i.nn, align 8, !noalias !213
  %i.np = select i1 %i.nm, ptr %i.no, ptr null, !prof !60
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.nj ; 2 uses
  %i.nr = add nsw i64 %i.mz, -1                   ; 3 uses
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !3, !noalias !213
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !154, !noalias !213
  %i.nx = icmp eq i64 %i.nw, %i.nu
  br i1 %i.nx, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i94, label %bb.cd

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i94: ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19, !noalias !213
  call void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.mz), !noalias !213
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !213
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nz = load <2 x ptr>, ptr %21, align 16, !tbaa !69, !noalias !213
  store <2 x ptr> %i.nz, ptr %i.ny, align 8, !tbaa !69, !alias.scope !213
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19, !noalias !213
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int32TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

bb.cd:                                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19, !noalias !213
  %i.oa = load ptr, ptr %i.c, align 8, !tbaa !35, !noalias !213 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !70, !noalias !213 ; 2 uses
  %i.oe = load <2 x ptr>, ptr %i.oa, align 8, !tbaa !69, !noalias !213
  store <2 x ptr> %i.oe, ptr %23, align 16, !tbaa !69, !noalias !213
  %.not.i.i.i98.i50 = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i98.i50, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i52, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 8 ; 3 uses
  %i.og = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !213
  %.not.i.i.i.i.i51 = icmp eq i8 %i.og, 0
  br i1 %.not.i.i.i.i.i51, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.oh = load i32, ptr %i.of, align 4, !tbaa !3, !noalias !213
  %i.oi = add nsw i32 %i.oh, 1
  store i32 %i.oi, ptr %i.of, align 4, !tbaa !3, !noalias !213
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i52

bb.cg:                                            ; preds = %bb.ce
end_hunk_3
begin_hunk_4_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  %i.re = phi ptr [ %.pr.pre.i.i70, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i69 ], [ %i.qx, %bb.df ]
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 1
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !101, !range !111, !noundef !112
  %i.rh = trunc nuw i8 %i.rg to i1
  br i1 %i.rh, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i61, label %bb.dh

bb.dh:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i60
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %24) #19
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i61

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i61: ; preds = %bb.dh, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i60, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i69, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19, !noalias !213
  br i1 %i.pc, label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i, label %bb.dj

_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i61
  %i.ri = load ptr, ptr %22, align 8, !tbaa !35, !noalias !213 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 40
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !78
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !123, !nonnull !112, !noundef !112 ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ri, i64 32
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !140
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 9
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !126, !range !111, !noundef !112
  %i.rr = trunc nuw i8 %i.rq to i1
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.rt = load i8, ptr %i.rs, align 8, !range !111
  %i.ru = trunc nuw i8 %i.rt to i1
  %i.rv = select i1 %i.rr, i1 %i.ru, i1 false, !prof !60
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = select i1 %i.rv, ptr %i.rx, ptr null, !prof !60
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.ry, i64 %i.ro ; 2 uses
  %i.sa = shl i64 %i.nr, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.rz, ptr nonnull align 4 %i.nq, i64 %i.sa, i1 false)
  %i.sb = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !213
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !154
  %i.se = trunc i64 %i.sd to i32
  %i.sf = getelementptr inbounds [4 x i8], ptr %i.rz, i64 %i.nr
  store i32 %i.se, ptr %i.sf, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19, !noalias !213
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %27, ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i67 unwind label %bb.di

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i67: ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !213
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sh = load <2 x ptr>, ptr %27, align 16, !tbaa !69, !noalias !213
  store <2 x ptr> %i.sh, ptr %i.sg, align 8, !tbaa !69, !alias.scope !213
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19, !noalias !213
  br label %bb.dj

.loopexit.loopexit165.i72:                        ; preds = %bb.cs
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i73

.loopexit.loopexit.i79:                           ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit.i78
  %i.sj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ph) #19, !noalias !213
  br label %.loopexit.i73

.loopexit.i73:                                    ; preds = %.loopexit.loopexit.i79, %.loopexit.loopexit165.i72
  %.pn77.i74 = phi { ptr, i32 } [ %i.sj, %.loopexit.loopexit.i79 ], [ %i.si, %.loopexit.loopexit165.i72 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #19, !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19, !noalias !213
  %i.sk = load ptr, ptr %25, align 8, !tbaa !163, !noalias !213 ; 3 uses
  %.not.i116.i75 = icmp eq ptr %i.sk, null
  br i1 %.not.i116.i75, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i77, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i76

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i76: ; preds = %.loopexit.i73
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !33, !noalias !213
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !noalias !213
  call void %i.sn(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.sk) #19, !noalias !213, !inline_history !226
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i77

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i77: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i76, %.loopexit.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19, !noalias !213
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %24) #19, !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19, !noalias !213
  br label %bb.dq

bb.di:                                            ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  %i.so = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19, !noalias !213
  br label %bb.dq

bb.dj:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i67, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i61
  %i.sp = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !70, !noalias !213 ; 8 uses
  %.not.i.i119.i62 = icmp eq ptr %i.sq, null
  br i1 %.not.i.i119.i62, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i66, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8 ; 4 uses
  %i.ss = load atomic i64, ptr %i.sr acquire, align 8 ; 2 uses
  %i.st = icmp eq i64 %i.ss, 4294967297
  %i.su = trunc i64 %i.ss to i32                  ; 2 uses
  br i1 %i.st, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i32 0, ptr %i.sr, align 8, !tbaa !71
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sq, i64 12
  store i32 0, ptr %i.sv, align 4, !tbaa !73
  %i.sw = load ptr, ptr %i.sq, align 8, !tbaa !33
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %i.sy = load ptr, ptr %i.sx, align 8
  call void %i.sy(ptr noundef nonnull align 8 dereferenceable(16) %i.sq) #19, !inline_history !228
  %i.sz = load ptr, ptr %i.sq, align 8, !tbaa !33
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 24
  %i.tb = load ptr, ptr %i.ta, align 8
  call void %i.tb(ptr noundef nonnull align 8 dereferenceable(16) %i.sq) #19, !inline_history !228
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i66

bb.dm:                                            ; preds = %bb.dk
  %i.tc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !213
  %.not.i.i.i120.i63 = icmp eq i8 %i.tc, 0
  br i1 %.not.i.i.i120.i63, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.td = add nsw i32 %i.su, -1
  store i32 %i.td, ptr %i.sr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i64

bb.do:                                            ; preds = %bb.dm
  %i.te = atomicrmw volatile add ptr %i.sr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i64

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i64: ; preds = %bb.do, %bb.dn
  %.0.i.i.i.i122.i65 = phi i32 [ %i.su, %bb.dn ], [ %i.te, %bb.do ]
  %i.tf = icmp eq i32 %.0.i.i.i.i122.i65, 1
  br i1 %i.tf, label %bb.dp, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i66, !prof !76

bb.dp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i64
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sq) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i66

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i66: ; preds = %bb.dp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i64, %bb.dl, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19, !noalias !213
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int32TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

bb.dq:                                            ; preds = %bb.di, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i77, %bb.cr
  %.pn81.pn.i59 = phi { ptr, i32 } [ %i.pe, %bb.cr ], [ %.pn77.i74, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i77 ], [ %i.so, %bb.di ]
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #19
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.cq
  %.pn81.pn.pn.i53 = phi { ptr, i32 } [ %.pn81.pn.i59, %bb.dq ], [ %i.pd, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19, !noalias !213
  br label %common.resume

bb.ds:                                            ; preds = %bb.cb
  %i.tg = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalOffsetEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !213
  %i.th = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalLengthEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !213 ; 4 uses
  %i.ti = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !213
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 64
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !64, !noalias !213
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !35, !noalias !213 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 40
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !78, !noalias !213
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !123, !noalias !213 ; 3 uses
  %.not.i.i123.i4 = icmp eq ptr %i.tp, null
  br i1 %.not.i.i123.i4, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit125.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 32
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !140, !noalias !213
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tp, i64 9
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !126, !range !111, !noalias !213, !noundef !112
  %i.tu = trunc nuw i8 %i.tt to i1
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.tw = load ptr, ptr %i.tv, align 8, !noalias !213
  %i.tx = select i1 %i.tu, ptr %i.tw, ptr null, !prof !60
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.tr
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit125.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit125.i: ; preds = %bb.dt, %bb.ds
  %.0.i.i124.i5 = phi ptr [ %i.ty, %bb.dt ], [ null, %bb.ds ]
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19, !noalias !213
  %i.tz = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %2, ptr %i.tz, align 8, !tbaa !171, !noalias !213
  %i.ua = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i64 64, ptr %i.ua, align 8, !tbaa !184, !noalias !213
  %i.ub = getelementptr inbounds nuw i8, ptr %28, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ub, i8 0, i64 16, i1 false), !noalias !213
  %i.uc = getelementptr inbounds nuw i8, ptr %28, i64 40
  store ptr %2, ptr %i.uc, align 8, !tbaa !185, !noalias !213
  %i.ud = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ud, align 8, !tbaa !186, !noalias !213
  %i.ue = getelementptr inbounds nuw i8, ptr %28, i64 56
  %i.uf = getelementptr inbounds nuw i8, ptr %28, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ue, i8 0, i64 16, i1 false), !noalias !213
  store i64 64, ptr %i.uf, align 8, !tbaa !187, !noalias !213
  %i.ug = getelementptr inbounds nuw i8, ptr %28, i64 80 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ug, i8 0, i64 64, i1 false), !noalias !213
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow14NumericBuilderINS_9Int32TypeEEE, i32 0, i32 0, i32 2), ptr %28, align 8, !tbaa !33, !noalias !213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.uh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev()
          to label %.noexc.i.i8 unwind label %bb.dx, !noalias !213 ; 2 uses

.noexc.i.i8:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit125.i
  %i.ui = getelementptr inbounds nuw i8, ptr %28, i64 144
  %i.uj = getelementptr inbounds nuw i8, ptr %28, i64 152
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !70, !noalias !232 ; 2 uses
  %i.um = load <2 x ptr>, ptr %i.uh, align 8, !tbaa !69, !noalias !232
  store <2 x ptr> %i.um, ptr %i.ui, align 8, !tbaa !69, !alias.scope !229, !noalias !213
  %.not.i.i.i.i.i.i9 = icmp eq ptr %i.ul, null
  br i1 %.not.i.i.i.i.i.i9, label %_ZN5arrow14NumericBuilderINS_9Int32TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i, label %bb.du

bb.du:                                            ; preds = %.noexc.i.i8
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 8 ; 3 uses
  %i.uo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !232
  %.not.i.i.i.i.i.i.i10 = icmp eq i8 %i.uo, 0
  br i1 %.not.i.i.i.i.i.i.i10, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.up = load i32, ptr %i.un, align 4, !tbaa !3, !noalias !232
  %i.uq = add nsw i32 %i.up, 1
  store i32 %i.uq, ptr %i.un, align 4, !tbaa !3, !noalias !232
  br label %_ZN5arrow14NumericBuilderINS_9Int32TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.dw:                                            ; preds = %bb.du
  %i.ur = atomicrmw volatile add ptr %i.un, i32 1 acq_rel, align 4, !noalias !232 ; 0 uses
  br label %_ZN5arrow14NumericBuilderINS_9Int32TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.dx:                                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit125.i
  %i.us = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %28) #19, !noalias !213
  br label %common.resume

_ZN5arrow14NumericBuilderINS_9Int32TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i: ; preds = %bb.dw, %bb.dv, %.noexc.i.i8
  %i.ut = getelementptr inbounds nuw i8, ptr %28, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ut, i8 0, i64 16, i1 false), !noalias !213
  %i.uu = getelementptr inbounds nuw i8, ptr %28, i64 176
  store ptr %2, ptr %i.uu, align 8, !tbaa !185, !noalias !213
  %i.uv = getelementptr inbounds nuw i8, ptr %28, i64 184 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.uv, align 8, !tbaa !186, !noalias !213
  %i.uw = getelementptr inbounds nuw i8, ptr %28, i64 192
  %i.ux = getelementptr inbounds nuw i8, ptr %28, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uw, i8 0, i64 16, i1 false), !noalias !213
  store i64 64, ptr %i.ux, align 8, !tbaa !187, !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19, !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19, !noalias !213
  invoke void @_ZN5arrow14NumericBuilderINS_9Int32TypeEE6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %30, ptr noundef nonnull align 8 dereferenceable(216) %28, i64 noundef %i.th)
          to label %_ZN5arrow6StatusD2Ev.exit.i12 unwind label %bb.eb, !noalias !213

_ZN5arrow6StatusD2Ev.exit.i12:                    ; preds = %_ZN5arrow14NumericBuilderINS_9Int32TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.uy = load ptr, ptr %30, align 8, !tbaa !98, !noalias !213 ; 2 uses
  store ptr %i.uy, ptr %29, align 8, !tbaa !98, !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19, !noalias !213
  %i.uz = icmp eq ptr %i.uy, null
  br i1 %i.uz, label %_ZN5arrow6StatusD2Ev.exit132.i23, label %bb.dy, !prof !60

bb.dy:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i12
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %29) #19
  %i.va = load ptr, ptr %29, align 8, !tbaa !98, !noalias !213 ; 2 uses
  %.not.i127.i13 = icmp eq ptr %i.va, null
  br i1 %.not.i127.i13, label %_ZN5arrow6StatusD2Ev.exit128.i14, label %bb.dz, !prof !60

bb.dz:                                            ; preds = %bb.dy
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 1
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !101, !range !111, !noundef !112
  %i.vd = trunc nuw i8 %i.vc to i1
  br i1 %i.vd, label %_ZN5arrow6StatusD2Ev.exit128.i14, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %29) #19
  br label %_ZN5arrow6StatusD2Ev.exit128.i14

_ZN5arrow6StatusD2Ev.exit128.i14:                 ; preds = %bb.ea, %bb.dz, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19, !noalias !213
  br label %bb.en

bb.eb:                                            ; preds = %_ZN5arrow14NumericBuilderINS_9Int32TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.ve = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19, !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19, !noalias !213
  br label %bb.fa

_ZN5arrow6StatusD2Ev.exit132.i23:                 ; preds = %_ZN5arrow6StatusD2Ev.exit.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19, !noalias !213
  %i.vf = icmp sgt i64 %i.th, 0
  br i1 %i.vf, label %.preheader.i24, label %bb.el

.preheader.i24:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit132.i23
  %.not163.not.i25 = icmp eq i64 %i.th, 1
  br i1 %.not163.not.i25, label %.critedge89.i38, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.preheader.i24
  %i.vg = getelementptr [4 x i8], ptr %.0.i.i124.i5, i64 %i.tg
  %i.vh = getelementptr inbounds nuw i8, ptr %28, i64 112
  %i.vi = getelementptr inbounds nuw i8, ptr %28, i64 104 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %28, i64 200 ; 3 uses
  %i.vk = add nsw i64 %i.th, -2
  br label %bb.ec

bb.ec:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit141.i36, %.lr.ph.i26
  %.052164.i27 = phi i64 [ 0, %.lr.ph.i26 ], [ %i.xa, %_ZN5arrow6StatusD2Ev.exit141.i36 ] ; 3 uses
  %i.vl = getelementptr [4 x i8], ptr %i.vg, i64 %.052164.i27
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !3, !noalias !213
  %i.vn = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !213
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 32
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !140, !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19, !noalias !213
  %i.vq = trunc i64 %i.vp to i32
  %i.vr = sub i32 %i.vm, %i.vq
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19, !noalias !233
  %i.vs = load i64, ptr %i.vh, align 8, !tbaa !195, !noalias !236 ; 2 uses
  %i.vt = load ptr, ptr %28, align 8, !tbaa !33, !noalias !236
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %i.vv = load ptr, ptr %i.vu, align 8, !noalias !236
  %i.vw = invoke noundef i64 %i.vv(ptr noundef nonnull align 8 dereferenceable(216) %28)
          to label %.noexc.i28 unwind label %bb.eg, !noalias !213, !inline_history !239 ; 2 uses

.noexc.i28:                                       ; preds = %bb.ec
  %.not.i.not.i.i29 = icmp slt i64 %i.vw, %i.vs
  br i1 %.not.i.not.i.i29, label %_ZN5arrow6StatusD2Ev.exit10.thread.i.i49, label %_ZN5arrow6StatusD2Ev.exit.i.i30

_ZN5arrow6StatusD2Ev.exit10.thread.i.i49:         ; preds = %.noexc.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19, !noalias !233
  br label %_ZN5arrow6StatusD2Ev.exit141.i36

_ZN5arrow6StatusD2Ev.exit.i.i30:                  ; preds = %.noexc.i28
  %i.vx = add nsw i64 %i.vw, 1
  %i.vy = shl nsw i64 %i.vs, 1
  %.sroa.speculated.i.i.i.i31 = call noundef i64 @llvm.smax.i64(i64 %i.vx, i64 %i.vy)
  %i.vz = load ptr, ptr %28, align 8, !tbaa !33, !noalias !236
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 24
  %i.wb = load ptr, ptr %i.wa, align 8, !noalias !236
  invoke void %i.wb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %19, ptr noundef nonnull align 8 dereferenceable(216) %28, i64 noundef %.sroa.speculated.i.i.i.i31)
          to label %.noexc133.i32 unwind label %bb.eg, !noalias !213, !inline_history !239

.noexc133.i32:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i30
  %.pr.i.i33 = load ptr, ptr %19, align 8, !tbaa !98, !noalias !233 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19, !noalias !233
  %i.wc = icmp eq ptr %.pr.i.i33, null
  br i1 %i.wc, label %_ZN5arrow6StatusD2Ev.exit141.i36, label %bb.ed

bb.ed:                                            ; preds = %.noexc133.i32
  store ptr %.pr.i.i33, ptr %31, align 8, !tbaa !98, !noalias !213
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %31) #19
  %i.wd = load ptr, ptr %31, align 8, !tbaa !98, !noalias !213 ; 2 uses
  %.not.i136.i34 = icmp eq ptr %i.wd, null
  br i1 %.not.i136.i34, label %_ZN5arrow6StatusD2Ev.exit137.i35, label %bb.ee, !prof !60

bb.ee:                                            ; preds = %bb.ed
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 1
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !101, !range !111, !noundef !112
  %i.wg = trunc nuw i8 %i.wf to i1
  br i1 %i.wg, label %_ZN5arrow6StatusD2Ev.exit137.i35, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %31) #19
  br label %_ZN5arrow6StatusD2Ev.exit137.i35

_ZN5arrow6StatusD2Ev.exit137.i35:                 ; preds = %bb.ef, %bb.ee, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19, !noalias !213
  br label %bb.en

bb.eg:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i30, %bb.ec
  %i.wh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19, !noalias !213
  br label %bb.fa

_ZN5arrow6StatusD2Ev.exit141.i36:                 ; preds = %.noexc133.i32, %_ZN5arrow6StatusD2Ev.exit10.thread.i.i49
  %i.wi = load ptr, ptr %i.ud, align 8, !tbaa !186, !noalias !233
  %i.wj = load i64, ptr %i.ug, align 8, !tbaa !200, !noalias !233 ; 2 uses
  %i.wk = sdiv i64 %i.wj, 8
  %i.wl = getelementptr inbounds i8, ptr %i.wi, i64 %i.wk ; 2 uses
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !75, !noalias !233
  %i.wn = srem i64 %i.wj, 8
  %i.wo = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.wn
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !75, !noalias !233
  %i.wq = or i8 %i.wp, %i.wm
  store i8 %i.wq, ptr %i.wl, align 1, !tbaa !75, !noalias !233
  %i.wr = load i64, ptr %i.ug, align 8, !tbaa !200, !noalias !233
  %i.ws = add nsw i64 %i.wr, 1
  store i64 %i.ws, ptr %i.ug, align 8, !tbaa !200, !noalias !233
  %i.wt = load i64, ptr %i.vi, align 8, !tbaa !201, !noalias !233
  %i.wu = add nsw i64 %i.wt, 1
  store i64 %i.wu, ptr %i.vi, align 8, !tbaa !201, !noalias !233
  %i.wv = load ptr, ptr %i.uv, align 8, !tbaa !186, !noalias !233
  %i.ww = load i64, ptr %i.vj, align 8, !tbaa !202, !noalias !233
  %i.wx = getelementptr inbounds i8, ptr %i.wv, i64 %i.ww
  store i32 %i.vr, ptr %i.wx, align 1, !noalias !233
  %i.wy = load i64, ptr %i.vj, align 8, !tbaa !202, !noalias !233
  %i.wz = add nsw i64 %i.wy, 4
  store i64 %i.wz, ptr %i.vj, align 8, !tbaa !202, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19, !noalias !213
  %i.xa = add nuw nsw i64 %.052164.i27, 1
  %exitcond.not.i37 = icmp eq i64 %.052164.i27, %i.vk
  br i1 %exitcond.not.i37, label %.critedge89.i38, label %bb.ec, !llvm.loop !240

.critedge89.i38:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit141.i36, %.preheader.i24
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19, !noalias !213
  %i.xb = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !213
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !154, !noalias !213
  %i.xe = trunc i64 %i.xd to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19, !noalias !241
  %i.xf = getelementptr inbounds nuw i8, ptr %28, i64 112
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !195, !noalias !244 ; 2 uses
  %i.xh = load ptr, ptr %28, align 8, !tbaa !33, !noalias !244
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  %i.xj = load ptr, ptr %i.xi, align 8, !noalias !244
  %i.xk = invoke noundef i64 %i.xj(ptr noundef nonnull align 8 dereferenceable(216) %28)
          to label %.noexc147.i39 unwind label %bb.ek, !noalias !213, !inline_history !239 ; 2 uses

.noexc147.i39:                                    ; preds = %.critedge89.i38
  %.not.i.not.i142.i40 = icmp slt i64 %i.xk, %i.xg
  br i1 %.not.i.not.i142.i40, label %_ZN5arrow6StatusD2Ev.exit10.thread.i146.i48, label %_ZN5arrow6StatusD2Ev.exit.i143.i41

_ZN5arrow6StatusD2Ev.exit10.thread.i146.i48:      ; preds = %.noexc147.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19, !noalias !241
  br label %_ZN5arrow6StatusD2Ev.exit157.i47

_ZN5arrow6StatusD2Ev.exit.i143.i41:               ; preds = %.noexc147.i39
  %i.xl = add nsw i64 %i.xk, 1
  %i.xm = shl nsw i64 %i.xg, 1
  %.sroa.speculated.i.i.i144.i42 = call noundef i64 @llvm.smax.i64(i64 %i.xl, i64 %i.xm)
  %i.xn = load ptr, ptr %28, align 8, !tbaa !33, !noalias !244
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  %i.xp = load ptr, ptr %i.xo, align 8, !noalias !244
  invoke void %i.xp(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %18, ptr noundef nonnull align 8 dereferenceable(216) %28, i64 noundef %.sroa.speculated.i.i.i144.i42)
          to label %.noexc148.i43 unwind label %bb.ek, !noalias !213, !inline_history !239

.noexc148.i43:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i143.i41
  %.pr.i145.i44 = load ptr, ptr %18, align 8, !tbaa !98, !noalias !241 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19, !noalias !241
  %i.xq = icmp eq ptr %.pr.i145.i44, null
  br i1 %i.xq, label %_ZN5arrow6StatusD2Ev.exit157.i47, label %bb.eh

bb.eh:                                            ; preds = %.noexc148.i43
  store ptr %.pr.i145.i44, ptr %32, align 8, !tbaa !98, !noalias !213
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %32) #19
  %i.xr = load ptr, ptr %32, align 8, !tbaa !98, !noalias !213 ; 2 uses
  %.not.i152.i45 = icmp eq ptr %i.xr, null
  br i1 %.not.i152.i45, label %_ZN5arrow6StatusD2Ev.exit153.i46, label %bb.ei, !prof !60

bb.ei:                                            ; preds = %bb.eh
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 1
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !101, !range !111, !noundef !112
  %i.xu = trunc nuw i8 %i.xt to i1
  br i1 %i.xu, label %_ZN5arrow6StatusD2Ev.exit153.i46, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %32) #19
  br label %_ZN5arrow6StatusD2Ev.exit153.i46

_ZN5arrow6StatusD2Ev.exit153.i46:                 ; preds = %bb.ej, %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19, !noalias !213
  br label %bb.en

bb.ek:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i143.i41, %.critedge89.i38
  %i.xv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19, !noalias !213
  br label %bb.fa

_ZN5arrow6StatusD2Ev.exit157.i47:                 ; preds = %.noexc148.i43, %_ZN5arrow6StatusD2Ev.exit10.thread.i146.i48
  %i.xw = load ptr, ptr %i.ud, align 8, !tbaa !186, !noalias !241
  %i.xx = load i64, ptr %i.ug, align 8, !tbaa !200, !noalias !241 ; 2 uses
  %i.xy = sdiv i64 %i.xx, 8
  %i.xz = getelementptr inbounds i8, ptr %i.xw, i64 %i.xy ; 2 uses
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !75, !noalias !241
  %i.yb = srem i64 %i.xx, 8
  %i.yc = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.yb
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !75, !noalias !241
  %i.ye = or i8 %i.yd, %i.ya
  store i8 %i.ye, ptr %i.xz, align 1, !tbaa !75, !noalias !241
  %i.yf = load i64, ptr %i.ug, align 8, !tbaa !200, !noalias !241
  %i.yg = add nsw i64 %i.yf, 1
  store i64 %i.yg, ptr %i.ug, align 8, !tbaa !200, !noalias !241
  %i.yh = getelementptr inbounds nuw i8, ptr %28, i64 104 ; 2 uses
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !201, !noalias !241
  %i.yj = add nsw i64 %i.yi, 1
  store i64 %i.yj, ptr %i.yh, align 8, !tbaa !201, !noalias !241
  %i.yk = load ptr, ptr %i.uv, align 8, !tbaa !186, !noalias !241
  %i.yl = getelementptr inbounds nuw i8, ptr %28, i64 200 ; 3 uses
  %i.ym = load i64, ptr %i.yl, align 8, !tbaa !202, !noalias !241
  %i.yn = getelementptr inbounds i8, ptr %i.yk, i64 %i.ym
  store i32 %i.xe, ptr %i.yn, align 1, !noalias !241
  %i.yo = load i64, ptr %i.yl, align 8, !tbaa !202, !noalias !241
  %i.yp = add nsw i64 %i.yo, 4
  store i64 %i.yp, ptr %i.yl, align 8, !tbaa !202, !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19, !noalias !213
  br label %bb.el

bb.el:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit157.i47, %_ZN5arrow6StatusD2Ev.exit132.i23
  invoke void @_ZN5arrow12ArrayBuilder6FinishEv(ptr dead_on_unwind writable sret(%"class.arrow::Result.39") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %28)
          to label %bb.en unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.yq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.en:                                            ; preds = %bb.el, %_ZN5arrow6StatusD2Ev.exit153.i46, %_ZN5arrow6StatusD2Ev.exit137.i35, %_ZN5arrow6StatusD2Ev.exit128.i14
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow14NumericBuilderINS_9Int32TypeEEE, i32 0, i32 0, i32 2), ptr %28, align 8, !tbaa !33, !noalias !213
  %i.yr = getelementptr inbounds nuw i8, ptr %28, i64 168
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !70, !noalias !213 ; 8 uses
  %.not.i.i.i.i.i158.i15 = icmp eq ptr %i.ys, null
  br i1 %.not.i.i.i.i.i158.i15, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 8 ; 4 uses
  %i.yu = load atomic i64, ptr %i.yt acquire, align 8 ; 2 uses
  %i.yv = icmp eq i64 %i.yu, 4294967297
  %i.yw = trunc i64 %i.yu to i32                  ; 2 uses
  br i1 %i.yv, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  store i32 0, ptr %i.yt, align 8, !tbaa !71
  %i.yx = getelementptr inbounds nuw i8, ptr %i.ys, i64 12
  store i32 0, ptr %i.yx, align 4, !tbaa !73
  %i.yy = load ptr, ptr %i.ys, align 8, !tbaa !33
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  %i.za = load ptr, ptr %i.yz, align 8
  call void %i.za(ptr noundef nonnull align 8 dereferenceable(16) %i.ys) #19, !inline_history !247
  %i.zb = load ptr, ptr %i.ys, align 8, !tbaa !33
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 24
  %i.zd = load ptr, ptr %i.zc, align 8
  call void %i.zd(ptr noundef nonnull align 8 dereferenceable(16) %i.ys) #19, !inline_history !247
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i.i

bb.eq:                                            ; preds = %bb.eo
  %i.ze = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !213
  %.not.i.i.i.i.i.i159.i16 = icmp eq i8 %i.ze, 0
  br i1 %.not.i.i.i.i.i.i159.i16, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.zf = add nsw i32 %i.yw, -1
  store i32 %i.zf, ptr %i.yt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i17

bb.es:                                            ; preds = %bb.eq
  %i.zg = atomicrmw volatile add ptr %i.yt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i17: ; preds = %bb.es, %bb.er
  %.0.i.i.i.i.i.i.i.i18 = phi i32 [ %i.yw, %bb.er ], [ %i.zg, %bb.es ]
  %i.zh = icmp eq i32 %.0.i.i.i.i.i.i.i.i18, 1
  br i1 %i.zh, label %bb.et, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i.i, !prof !76

bb.et:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ys) #19, !inline_history !248
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i.i

_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i.i:   ; preds = %bb.et, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i17, %bb.ep, %bb.en
  %i.zi = load ptr, ptr %i.uj, align 8, !tbaa !70, !noalias !213 ; 8 uses
  %.not.i.i.i160.i19 = icmp eq ptr %i.zi, null
  br i1 %.not.i.i.i160.i19, label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit.i, label %bb.eu

bb.eu:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i.i
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 8 ; 4 uses
  %i.zk = load atomic i64, ptr %i.zj acquire, align 8 ; 2 uses
  %i.zl = icmp eq i64 %i.zk, 4294967297
  %i.zm = trunc i64 %i.zk to i32                  ; 2 uses
  br i1 %i.zl, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  store i32 0, ptr %i.zj, align 8, !tbaa !71
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zi, i64 12
  store i32 0, ptr %i.zn, align 4, !tbaa !73
  %i.zo = load ptr, ptr %i.zi, align 8, !tbaa !33
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zq = load ptr, ptr %i.zp, align 8
  call void %i.zq(ptr noundef nonnull align 8 dereferenceable(16) %i.zi) #19, !inline_history !249
  %i.zr = load ptr, ptr %i.zi, align 8, !tbaa !33
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 24
  %i.zt = load ptr, ptr %i.zs, align 8
  call void %i.zt(ptr noundef nonnull align 8 dereferenceable(16) %i.zi) #19, !inline_history !249
  br label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit.i

bb.ew:                                            ; preds = %bb.eu
  %i.zu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !213
  %.not.i.i.i.i161.i20 = icmp eq i8 %i.zu, 0
  br i1 %.not.i.i.i.i161.i20, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.zv = add nsw i32 %i.zm, -1
  store i32 %i.zv, ptr %i.zj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21

bb.ey:                                            ; preds = %bb.ew
  %i.zw = atomicrmw volatile add ptr %i.zj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21: ; preds = %bb.ey, %bb.ex
  %.0.i.i.i.i.i.i22 = phi i32 [ %i.zm, %bb.ex ], [ %i.zw, %bb.ey ]
  %i.zx = icmp eq i32 %.0.i.i.i.i.i.i22, 1
  br i1 %i.zx, label %bb.ez, label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit.i, !prof !76

bb.ez:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zi) #19, !inline_history !248
  br label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit.i

_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit.i: ; preds = %bb.ez, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i21, %bb.ev, %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i.i
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %28) #19, !inline_history !248
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19, !noalias !213
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int32TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

bb.fa:                                            ; preds = %bb.em, %bb.ek, %bb.eg, %bb.eb
  %.pn75.i11 = phi { ptr, i32 } [ %i.yq, %bb.em ], [ %i.xv, %bb.ek ], [ %i.wh, %bb.eg ], [ %i.ve, %bb.eb ]
  call void @_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(216) %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19, !noalias !213
  br label %common.resume

_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int32TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i95, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i94, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i66, %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %bb.ib

bb.fb:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.zy = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !250 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 32
  %i.aaa = load i64, ptr %i.zz, align 8, !tbaa !140, !noalias !250
  %i.aab = icmp eq i64 %i.aaa, 0
  br i1 %i.aab, label %bb.fc, label %bb.gs

bb.fc:                                            ; preds = %bb.fb
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zy, i64 16
  %i.aad = load i64, ptr %i.aac, align 8, !tbaa !154, !noalias !250
  %i.aae = icmp eq i64 %i.aad, 0
  br i1 %i.aae, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i187, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i187: ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !250
  call void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef 0), !noalias !250
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !250
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aag = load <2 x ptr>, ptr %5, align 16, !tbaa !69, !noalias !250
  store <2 x ptr> %i.aag, ptr %i.aaf, align 8, !tbaa !69, !alias.scope !250
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !250
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int64TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i:   ; preds = %bb.fc
  %i.aah = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalLengthEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !250 ; 4 uses
  %i.aai = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !250 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 64
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !64, !noalias !250
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !35, !noalias !250 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 40
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !78, !noalias !250
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !123, !noalias !250, !nonnull !112, !noundef !112 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aal, i64 32
  %i.aar = load i64, ptr %i.aaq, align 8, !tbaa !140, !noalias !250
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aap, i64 9
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !126, !range !111, !noalias !250, !noundef !112
  %i.aau = trunc nuw i8 %i.aat to i1
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aap, i64 16
  %i.aaw = load ptr, ptr %i.aav, align 8, !noalias !250
  %i.aax = select i1 %i.aau, ptr %i.aaw, ptr null, !prof !60
  %i.aay = getelementptr inbounds [8 x i8], ptr %i.aax, i64 %i.aar ; 2 uses
  %i.aaz = add nsw i64 %i.aah, -1                 ; 3 uses
  %i.aba = getelementptr inbounds [8 x i8], ptr %i.aay, i64 %i.aaz
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !201, !noalias !250
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aai, i64 16
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !154, !noalias !250
  %i.abe = icmp eq i64 %i.abb, %i.abd
  br i1 %i.abe, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i186, label %bb.fd

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i186: ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !250
  call void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.aah), !noalias !250
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !250
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.abg = load <2 x ptr>, ptr %6, align 16, !tbaa !69, !noalias !250
  store <2 x ptr> %i.abg, ptr %i.abf, align 8, !tbaa !69, !alias.scope !250
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !250
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int64TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

bb.fd:                                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !250
  %i.abh = load ptr, ptr %i.c, align 8, !tbaa !35, !noalias !250 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !70, !noalias !250 ; 2 uses
  %i.abl = load <2 x ptr>, ptr %i.abh, align 8, !tbaa !69, !noalias !250
  store <2 x ptr> %i.abl, ptr %8, align 16, !tbaa !69, !noalias !250
  %.not.i.i.i98.i142 = icmp eq ptr %i.abk, null
  br i1 %.not.i.i.i98.i142, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i144, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abk, i64 8 ; 3 uses
  %i.abn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !250
  %.not.i.i.i.i.i143 = icmp eq i8 %i.abn, 0
  br i1 %.not.i.i.i.i.i143, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.abo = load i32, ptr %i.abm, align 4, !tbaa !3, !noalias !250
  %i.abp = add nsw i32 %i.abo, 1
  store i32 %i.abp, ptr %i.abm, align 4, !tbaa !3, !noalias !250
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i144

bb.fg:                                            ; preds = %bb.fe
  %i.abq = atomicrmw volatile add ptr %i.abm, i32 1 acq_rel, align 4, !noalias !250 ; 0 uses
end_hunk_4
begin_hunk_5_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i152: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i161, %bb.gf
  %i.ael = phi ptr [ %.pr.pre.i.i162, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i161 ], [ %i.aee, %bb.gf ]
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 1
  %i.aen = load i8, ptr %i.aem, align 1, !tbaa !101, !range !111, !noundef !112
  %i.aeo = trunc nuw i8 %i.aen to i1
  br i1 %i.aeo, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i153, label %bb.gh

bb.gh:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i152
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #19
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i153

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i153: ; preds = %bb.gh, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i152, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i161, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !250
  br i1 %i.acj, label %_ZN5arrow9ArrayData16GetMutableValuesIlEEPT_i.exit.i, label %bb.gj

_ZN5arrow9ArrayData16GetMutableValuesIlEEPT_i.exit.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i153
  %i.aep = load ptr, ptr %7, align 8, !tbaa !35, !noalias !250 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 40
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !78
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 16
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !123, !nonnull !112, !noundef !112 ; 3 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aep, i64 32
  %i.aev = load i64, ptr %i.aeu, align 8, !tbaa !140
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aet, i64 9
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !126, !range !111, !noundef !112
  %i.aey = trunc nuw i8 %i.aex to i1
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aet, i64 8
  %i.afa = load i8, ptr %i.aez, align 8, !range !111
  %i.afb = trunc nuw i8 %i.afa to i1
  %i.afc = select i1 %i.aey, i1 %i.afb, i1 false, !prof !60
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aet, i64 16
  %i.afe = load ptr, ptr %i.afd, align 8
  %i.aff = select i1 %i.afc, ptr %i.afe, ptr null, !prof !60
  %i.afg = getelementptr inbounds [8 x i8], ptr %i.aff, i64 %i.aev ; 2 uses
  %i.afh = shl i64 %i.aaz, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.afg, ptr nonnull align 8 %i.aay, i64 %i.afh, i1 false)
  %i.afi = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !250
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 16
  %i.afk = load i64, ptr %i.afj, align 8, !tbaa !154
  %i.afl = getelementptr inbounds [8 x i8], ptr %i.afg, i64 %i.aaz
  store i64 %i.afk, ptr %i.afl, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19, !noalias !250
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i159 unwind label %bb.gi

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i159: ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIlEEPT_i.exit.i
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !250
  %i.afm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.afn = load <2 x ptr>, ptr %12, align 16, !tbaa !69, !noalias !250
  store <2 x ptr> %i.afn, ptr %i.afm, align 8, !tbaa !69, !alias.scope !250
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19, !noalias !250
  br label %bb.gj

.loopexit.loopexit165.i164:                       ; preds = %bb.fs
  %i.afo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i165

.loopexit.loopexit.i171:                          ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit.i170
  %i.afp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.aco) #19, !noalias !250
  br label %.loopexit.i165

.loopexit.i165:                                   ; preds = %.loopexit.loopexit.i171, %.loopexit.loopexit165.i164
  %.pn77.i166 = phi { ptr, i32 } [ %i.afp, %.loopexit.loopexit.i171 ], [ %i.afo, %.loopexit.loopexit165.i164 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #19, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19, !noalias !250
  %i.afq = load ptr, ptr %10, align 8, !tbaa !163, !noalias !250 ; 3 uses
  %.not.i116.i167 = icmp eq ptr %i.afq, null
  br i1 %.not.i116.i167, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i169, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i168

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i168: ; preds = %.loopexit.i165
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !33, !noalias !250
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  %i.aft = load ptr, ptr %i.afs, align 8, !noalias !250
  call void %i.aft(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.afq) #19, !noalias !250, !inline_history !263
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i169

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i169: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i117.i168, %.loopexit.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !250
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #19, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !250
  br label %bb.gq

bb.gi:                                            ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIlEEPT_i.exit.i
  %i.afu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19, !noalias !250
  br label %bb.gq

bb.gj:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115.i159, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i153
  %i.afv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !70, !noalias !250 ; 8 uses
  %.not.i.i119.i154 = icmp eq ptr %i.afw, null
  br i1 %.not.i.i119.i154, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i158, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 8 ; 4 uses
  %i.afy = load atomic i64, ptr %i.afx acquire, align 8 ; 2 uses
  %i.afz = icmp eq i64 %i.afy, 4294967297
  %i.aga = trunc i64 %i.afy to i32                ; 2 uses
  br i1 %i.afz, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  store i32 0, ptr %i.afx, align 8, !tbaa !71
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afw, i64 12
  store i32 0, ptr %i.agb, align 4, !tbaa !73
  %i.agc = load ptr, ptr %i.afw, align 8, !tbaa !33
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 16
  %i.age = load ptr, ptr %i.agd, align 8
  call void %i.age(ptr noundef nonnull align 8 dereferenceable(16) %i.afw) #19, !inline_history !265
  %i.agf = load ptr, ptr %i.afw, align 8, !tbaa !33
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 24
  %i.agh = load ptr, ptr %i.agg, align 8
  call void %i.agh(ptr noundef nonnull align 8 dereferenceable(16) %i.afw) #19, !inline_history !265
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i158

bb.gm:                                            ; preds = %bb.gk
  %i.agi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !250
  %.not.i.i.i120.i155 = icmp eq i8 %i.agi, 0
  br i1 %.not.i.i.i120.i155, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.agj = add nsw i32 %i.aga, -1
  store i32 %i.agj, ptr %i.afx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i156

bb.go:                                            ; preds = %bb.gm
  %i.agk = atomicrmw volatile add ptr %i.afx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i156

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i156: ; preds = %bb.go, %bb.gn
  %.0.i.i.i.i122.i157 = phi i32 [ %i.aga, %bb.gn ], [ %i.agk, %bb.go ]
  %i.agl = icmp eq i32 %.0.i.i.i.i122.i157, 1
  br i1 %i.agl, label %bb.gp, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i158, !prof !76

bb.gp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i156
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.afw) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i158

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i158: ; preds = %bb.gp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i121.i156, %bb.gl, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !250
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int64TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

bb.gq:                                            ; preds = %bb.gi, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i169, %bb.fr
  %.pn81.pn.i151 = phi { ptr, i32 } [ %i.acl, %bb.fr ], [ %.pn77.i166, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit118.i169 ], [ %i.afu, %bb.gi ]
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #19
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.fq
  %.pn81.pn.pn.i145 = phi { ptr, i32 } [ %.pn81.pn.i151, %bb.gq ], [ %i.ack, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !250
  br label %common.resume

bb.gs:                                            ; preds = %bb.fb
  %i.agm = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalOffsetEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !250
  %i.agn = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalLengthEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !250 ; 4 uses
  %i.ago = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !250
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 64
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !64, !noalias !250
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !35, !noalias !250 ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 40
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !78, !noalias !250
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 16
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !123, !noalias !250 ; 3 uses
  %.not.i.i123.i96 = icmp eq ptr %i.agv, null
  br i1 %.not.i.i123.i96, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit125.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agr, i64 32
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !140, !noalias !250
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agv, i64 9
  %i.agz = load i8, ptr %i.agy, align 1, !tbaa !126, !range !111, !noalias !250, !noundef !112
  %i.aha = trunc nuw i8 %i.agz to i1
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agv, i64 16
  %i.ahc = load ptr, ptr %i.ahb, align 8, !noalias !250
  %i.ahd = select i1 %i.aha, ptr %i.ahc, ptr null, !prof !60
  %i.ahe = getelementptr inbounds [8 x i8], ptr %i.ahd, i64 %i.agx
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit125.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit125.i: ; preds = %bb.gt, %bb.gs
  %.0.i.i124.i97 = phi ptr [ %i.ahe, %bb.gt ], [ null, %bb.gs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19, !noalias !250
  %i.ahf = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %2, ptr %i.ahf, align 8, !tbaa !171, !noalias !250
  %i.ahg = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 64, ptr %i.ahg, align 8, !tbaa !184, !noalias !250
  %i.ahh = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ahh, i8 0, i64 16, i1 false), !noalias !250
  %i.ahi = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %2, ptr %i.ahi, align 8, !tbaa !185, !noalias !250
  %i.ahj = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ahj, align 8, !tbaa !186, !noalias !250
  %i.ahk = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.ahl = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahk, i8 0, i64 16, i1 false), !noalias !250
  store i64 64, ptr %i.ahl, align 8, !tbaa !187, !noalias !250
  %i.ahm = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ahm, i8 0, i64 64, i1 false), !noalias !250
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow14NumericBuilderINS_9Int64TypeEEE, i32 0, i32 0, i32 2), ptr %13, align 8, !tbaa !33, !noalias !250
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.ahn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev()
          to label %.noexc.i.i100 unwind label %bb.gx, !noalias !250 ; 2 uses

.noexc.i.i100:                                    ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit125.i
  %i.aho = getelementptr inbounds nuw i8, ptr %13, i64 144
  %i.ahp = getelementptr inbounds nuw i8, ptr %13, i64 152
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !70, !noalias !269 ; 2 uses
  %i.ahs = load <2 x ptr>, ptr %i.ahn, align 8, !tbaa !69, !noalias !269
  store <2 x ptr> %i.ahs, ptr %i.aho, align 8, !tbaa !69, !alias.scope !266, !noalias !250
  %.not.i.i.i.i.i.i101 = icmp eq ptr %i.ahr, null
  br i1 %.not.i.i.i.i.i.i101, label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i, label %bb.gu

bb.gu:                                            ; preds = %.noexc.i.i100
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8 ; 3 uses
  %i.ahu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !269
  %.not.i.i.i.i.i.i.i102 = icmp eq i8 %i.ahu, 0
  br i1 %.not.i.i.i.i.i.i.i102, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.ahv = load i32, ptr %i.aht, align 4, !tbaa !3, !noalias !269
  %i.ahw = add nsw i32 %i.ahv, 1
  store i32 %i.ahw, ptr %i.aht, align 4, !tbaa !3, !noalias !269
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.gw:                                            ; preds = %bb.gu
  %i.ahx = atomicrmw volatile add ptr %i.aht, i32 1 acq_rel, align 4, !noalias !269 ; 0 uses
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i

bb.gx:                                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit125.i
  %i.ahy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %13) #19, !noalias !250
  br label %common.resume

_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i: ; preds = %bb.gw, %bb.gv, %.noexc.i.i100
  %i.ahz = getelementptr inbounds nuw i8, ptr %13, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ahz, i8 0, i64 16, i1 false), !noalias !250
  %i.aia = getelementptr inbounds nuw i8, ptr %13, i64 176
  store ptr %2, ptr %i.aia, align 8, !tbaa !185, !noalias !250
  %i.aib = getelementptr inbounds nuw i8, ptr %13, i64 184 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.aib, align 8, !tbaa !186, !noalias !250
  %i.aic = getelementptr inbounds nuw i8, ptr %13, i64 192
  %i.aid = getelementptr inbounds nuw i8, ptr %13, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aic, i8 0, i64 16, i1 false), !noalias !250
  store i64 64, ptr %i.aid, align 8, !tbaa !187, !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19, !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19, !noalias !250
  invoke void @_ZN5arrow14NumericBuilderINS_9Int64TypeEE6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %15, ptr noundef nonnull align 8 dereferenceable(216) %13, i64 noundef %i.agn)
          to label %_ZN5arrow6StatusD2Ev.exit.i104 unwind label %bb.hb, !noalias !250

_ZN5arrow6StatusD2Ev.exit.i104:                   ; preds = %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.aie = load ptr, ptr %15, align 8, !tbaa !98, !noalias !250 ; 2 uses
  store ptr %i.aie, ptr %14, align 8, !tbaa !98, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19, !noalias !250
  %i.aif = icmp eq ptr %i.aie, null
  br i1 %i.aif, label %_ZN5arrow6StatusD2Ev.exit132.i115, label %bb.gy, !prof !60

bb.gy:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i104
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %14) #19
  %i.aig = load ptr, ptr %14, align 8, !tbaa !98, !noalias !250 ; 2 uses
  %.not.i127.i105 = icmp eq ptr %i.aig, null
  br i1 %.not.i127.i105, label %_ZN5arrow6StatusD2Ev.exit128.i106, label %bb.gz, !prof !60

bb.gz:                                            ; preds = %bb.gy
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 1
  %i.aii = load i8, ptr %i.aih, align 1, !tbaa !101, !range !111, !noundef !112
  %i.aij = trunc nuw i8 %i.aii to i1
  br i1 %i.aij, label %_ZN5arrow6StatusD2Ev.exit128.i106, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #19
  br label %_ZN5arrow6StatusD2Ev.exit128.i106

_ZN5arrow6StatusD2Ev.exit128.i106:                ; preds = %bb.ha, %bb.gz, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19, !noalias !250
  br label %bb.hn

bb.hb:                                            ; preds = %_ZN5arrow14NumericBuilderINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i
  %i.aik = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19, !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19, !noalias !250
  br label %bb.ia

_ZN5arrow6StatusD2Ev.exit132.i115:                ; preds = %_ZN5arrow6StatusD2Ev.exit.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19, !noalias !250
  %i.ail = icmp sgt i64 %i.agn, 0
  br i1 %i.ail, label %.preheader.i116, label %bb.hl

.preheader.i116:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit132.i115
  %.not163.not.i117 = icmp eq i64 %i.agn, 1
  br i1 %.not163.not.i117, label %.critedge89.i130, label %.lr.ph.i118

.lr.ph.i118:                                      ; preds = %.preheader.i116
  %i.aim = getelementptr [8 x i8], ptr %.0.i.i124.i97, i64 %i.agm
  %i.ain = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.aio = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %13, i64 200 ; 3 uses
  %i.aiq = add nsw i64 %i.agn, -2
  br label %bb.hc

bb.hc:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit141.i128, %.lr.ph.i118
  %.052164.i119 = phi i64 [ 0, %.lr.ph.i118 ], [ %i.akf, %_ZN5arrow6StatusD2Ev.exit141.i128 ] ; 3 uses
  %i.air = getelementptr [8 x i8], ptr %i.aim, i64 %.052164.i119
  %i.ais = load i64, ptr %i.air, align 8, !tbaa !201, !noalias !250
  %i.ait = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !250
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 32
  %i.aiv = load i64, ptr %i.aiu, align 8, !tbaa !140, !noalias !250
  %i.aiw = sub nsw i64 %i.ais, %i.aiv
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19, !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !270
  %i.aix = load i64, ptr %i.ain, align 8, !tbaa !195, !noalias !273 ; 2 uses
  %i.aiy = load ptr, ptr %13, align 8, !tbaa !33, !noalias !273
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 16
  %i.aja = load ptr, ptr %i.aiz, align 8, !noalias !273
  %i.ajb = invoke noundef i64 %i.aja(ptr noundef nonnull align 8 dereferenceable(216) %13)
          to label %.noexc.i120 unwind label %bb.hg, !noalias !250, !inline_history !276 ; 2 uses

.noexc.i120:                                      ; preds = %bb.hc
  %.not.i.not.i.i121 = icmp slt i64 %i.ajb, %i.aix
  br i1 %.not.i.not.i.i121, label %_ZN5arrow6StatusD2Ev.exit10.thread.i.i141, label %_ZN5arrow6StatusD2Ev.exit.i.i122

_ZN5arrow6StatusD2Ev.exit10.thread.i.i141:        ; preds = %.noexc.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !270
  br label %_ZN5arrow6StatusD2Ev.exit141.i128

_ZN5arrow6StatusD2Ev.exit.i.i122:                 ; preds = %.noexc.i120
  %i.ajc = add nsw i64 %i.ajb, 1
  %i.ajd = shl nsw i64 %i.aix, 1
  %.sroa.speculated.i.i.i.i123 = call noundef i64 @llvm.smax.i64(i64 %i.ajc, i64 %i.ajd)
  %i.aje = load ptr, ptr %13, align 8, !tbaa !33, !noalias !273
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 24
  %i.ajg = load ptr, ptr %i.ajf, align 8, !noalias !273
  invoke void %i.ajg(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(216) %13, i64 noundef %.sroa.speculated.i.i.i.i123)
          to label %.noexc133.i124 unwind label %bb.hg, !noalias !250, !inline_history !276

.noexc133.i124:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i122
  %.pr.i.i125 = load ptr, ptr %4, align 8, !tbaa !98, !noalias !270 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !270
  %i.ajh = icmp eq ptr %.pr.i.i125, null
  br i1 %i.ajh, label %_ZN5arrow6StatusD2Ev.exit141.i128, label %bb.hd

bb.hd:                                            ; preds = %.noexc133.i124
  store ptr %.pr.i.i125, ptr %16, align 8, !tbaa !98, !noalias !250
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %16) #19
  %i.aji = load ptr, ptr %16, align 8, !tbaa !98, !noalias !250 ; 2 uses
  %.not.i136.i126 = icmp eq ptr %i.aji, null
  br i1 %.not.i136.i126, label %_ZN5arrow6StatusD2Ev.exit137.i127, label %bb.he, !prof !60

bb.he:                                            ; preds = %bb.hd
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 1
  %i.ajk = load i8, ptr %i.ajj, align 1, !tbaa !101, !range !111, !noundef !112
  %i.ajl = trunc nuw i8 %i.ajk to i1
  br i1 %i.ajl, label %_ZN5arrow6StatusD2Ev.exit137.i127, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #19
  br label %_ZN5arrow6StatusD2Ev.exit137.i127

_ZN5arrow6StatusD2Ev.exit137.i127:                ; preds = %bb.hf, %bb.he, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19, !noalias !250
  br label %bb.hn

bb.hg:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i122, %bb.hc
  %i.ajm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19, !noalias !250
  br label %bb.ia

_ZN5arrow6StatusD2Ev.exit141.i128:                ; preds = %.noexc133.i124, %_ZN5arrow6StatusD2Ev.exit10.thread.i.i141
  %i.ajn = load ptr, ptr %i.ahj, align 8, !tbaa !186, !noalias !270
  %i.ajo = load i64, ptr %i.ahm, align 8, !tbaa !200, !noalias !270 ; 2 uses
  %i.ajp = sdiv i64 %i.ajo, 8
  %i.ajq = getelementptr inbounds i8, ptr %i.ajn, i64 %i.ajp ; 2 uses
  %i.ajr = load i8, ptr %i.ajq, align 1, !tbaa !75, !noalias !270
  %i.ajs = srem i64 %i.ajo, 8
  %i.ajt = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ajs
  %i.aju = load i8, ptr %i.ajt, align 1, !tbaa !75, !noalias !270
  %i.ajv = or i8 %i.aju, %i.ajr
  store i8 %i.ajv, ptr %i.ajq, align 1, !tbaa !75, !noalias !270
  %i.ajw = load i64, ptr %i.ahm, align 8, !tbaa !200, !noalias !270
  %i.ajx = add nsw i64 %i.ajw, 1
  store i64 %i.ajx, ptr %i.ahm, align 8, !tbaa !200, !noalias !270
  %i.ajy = load i64, ptr %i.aio, align 8, !tbaa !201, !noalias !270
  %i.ajz = add nsw i64 %i.ajy, 1
  store i64 %i.ajz, ptr %i.aio, align 8, !tbaa !201, !noalias !270
  %i.aka = load ptr, ptr %i.aib, align 8, !tbaa !186, !noalias !270
  %i.akb = load i64, ptr %i.aip, align 8, !tbaa !202, !noalias !270
  %i.akc = getelementptr inbounds i8, ptr %i.aka, i64 %i.akb
  store i64 %i.aiw, ptr %i.akc, align 1, !noalias !270
  %i.akd = load i64, ptr %i.aip, align 8, !tbaa !202, !noalias !270
  %i.ake = add nsw i64 %i.akd, 8
  store i64 %i.ake, ptr %i.aip, align 8, !tbaa !202, !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19, !noalias !250
  %i.akf = add nuw nsw i64 %.052164.i119, 1
  %exitcond.not.i129 = icmp eq i64 %.052164.i119, %i.aiq
  br i1 %exitcond.not.i129, label %.critedge89.i130, label %bb.hc, !llvm.loop !277

.critedge89.i130:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit141.i128, %.preheader.i116
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19, !noalias !250
  %i.akg = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !250
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 16
  %i.aki = load i64, ptr %i.akh, align 8, !tbaa !154, !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !278
  %i.akj = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.akk = load i64, ptr %i.akj, align 8, !tbaa !195, !noalias !281 ; 2 uses
  %i.akl = load ptr, ptr %13, align 8, !tbaa !33, !noalias !281
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 16
  %i.akn = load ptr, ptr %i.akm, align 8, !noalias !281
  %i.ako = invoke noundef i64 %i.akn(ptr noundef nonnull align 8 dereferenceable(216) %13)
          to label %.noexc147.i131 unwind label %bb.hk, !noalias !250, !inline_history !276 ; 2 uses

.noexc147.i131:                                   ; preds = %.critedge89.i130
  %.not.i.not.i142.i132 = icmp slt i64 %i.ako, %i.akk
  br i1 %.not.i.not.i142.i132, label %_ZN5arrow6StatusD2Ev.exit10.thread.i146.i140, label %_ZN5arrow6StatusD2Ev.exit.i143.i133

_ZN5arrow6StatusD2Ev.exit10.thread.i146.i140:     ; preds = %.noexc147.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !278
  br label %_ZN5arrow6StatusD2Ev.exit157.i139

_ZN5arrow6StatusD2Ev.exit.i143.i133:              ; preds = %.noexc147.i131
  %i.akp = add nsw i64 %i.ako, 1
  %i.akq = shl nsw i64 %i.akk, 1
  %.sroa.speculated.i.i.i144.i134 = call noundef i64 @llvm.smax.i64(i64 %i.akp, i64 %i.akq)
  %i.akr = load ptr, ptr %13, align 8, !tbaa !33, !noalias !281
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 24
  %i.akt = load ptr, ptr %i.aks, align 8, !noalias !281
  invoke void %i.akt(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(216) %13, i64 noundef %.sroa.speculated.i.i.i144.i134)
          to label %.noexc148.i135 unwind label %bb.hk, !noalias !250, !inline_history !276

.noexc148.i135:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit.i143.i133
  %.pr.i145.i136 = load ptr, ptr %3, align 8, !tbaa !98, !noalias !278 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !278
  %i.aku = icmp eq ptr %.pr.i145.i136, null
  br i1 %i.aku, label %_ZN5arrow6StatusD2Ev.exit157.i139, label %bb.hh

bb.hh:                                            ; preds = %.noexc148.i135
  store ptr %.pr.i145.i136, ptr %17, align 8, !tbaa !98, !noalias !250
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %17) #19
  %i.akv = load ptr, ptr %17, align 8, !tbaa !98, !noalias !250 ; 2 uses
  %.not.i152.i137 = icmp eq ptr %i.akv, null
  br i1 %.not.i152.i137, label %_ZN5arrow6StatusD2Ev.exit153.i138, label %bb.hi, !prof !60

bb.hi:                                            ; preds = %bb.hh
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 1
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !101, !range !111, !noundef !112
  %i.aky = trunc nuw i8 %i.akx to i1
  br i1 %i.aky, label %_ZN5arrow6StatusD2Ev.exit153.i138, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #19
  br label %_ZN5arrow6StatusD2Ev.exit153.i138

_ZN5arrow6StatusD2Ev.exit153.i138:                ; preds = %bb.hj, %bb.hi, %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19, !noalias !250
  br label %bb.hn

bb.hk:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i143.i133, %.critedge89.i130
  %i.akz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19, !noalias !250
  br label %bb.ia

_ZN5arrow6StatusD2Ev.exit157.i139:                ; preds = %.noexc148.i135, %_ZN5arrow6StatusD2Ev.exit10.thread.i146.i140
  %i.ala = load ptr, ptr %i.ahj, align 8, !tbaa !186, !noalias !278
  %i.alb = load i64, ptr %i.ahm, align 8, !tbaa !200, !noalias !278 ; 2 uses
  %i.alc = sdiv i64 %i.alb, 8
  %i.ald = getelementptr inbounds i8, ptr %i.ala, i64 %i.alc ; 2 uses
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !75, !noalias !278
  %i.alf = srem i64 %i.alb, 8
  %i.alg = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.alf
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !75, !noalias !278
  %i.ali = or i8 %i.alh, %i.ale
  store i8 %i.ali, ptr %i.ald, align 1, !tbaa !75, !noalias !278
  %i.alj = load i64, ptr %i.ahm, align 8, !tbaa !200, !noalias !278
  %i.alk = add nsw i64 %i.alj, 1
  store i64 %i.alk, ptr %i.ahm, align 8, !tbaa !200, !noalias !278
  %i.all = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 2 uses
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !201, !noalias !278
  %i.aln = add nsw i64 %i.alm, 1
  store i64 %i.aln, ptr %i.all, align 8, !tbaa !201, !noalias !278
  %i.alo = load ptr, ptr %i.aib, align 8, !tbaa !186, !noalias !278
  %i.alp = getelementptr inbounds nuw i8, ptr %13, i64 200 ; 3 uses
  %i.alq = load i64, ptr %i.alp, align 8, !tbaa !202, !noalias !278
  %i.alr = getelementptr inbounds i8, ptr %i.alo, i64 %i.alq
  store i64 %i.aki, ptr %i.alr, align 1, !noalias !278
  %i.als = load i64, ptr %i.alp, align 8, !tbaa !202, !noalias !278
  %i.alt = add nsw i64 %i.als, 8
  store i64 %i.alt, ptr %i.alp, align 8, !tbaa !202, !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19, !noalias !250
  br label %bb.hl

bb.hl:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit157.i139, %_ZN5arrow6StatusD2Ev.exit132.i115
  invoke void @_ZN5arrow12ArrayBuilder6FinishEv(ptr dead_on_unwind writable sret(%"class.arrow::Result.39") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %13)
          to label %bb.hn unwind label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.alu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ia

bb.hn:                                            ; preds = %bb.hl, %_ZN5arrow6StatusD2Ev.exit153.i138, %_ZN5arrow6StatusD2Ev.exit137.i127, %_ZN5arrow6StatusD2Ev.exit128.i106
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow14NumericBuilderINS_9Int64TypeEEE, i32 0, i32 0, i32 2), ptr %13, align 8, !tbaa !33, !noalias !250
  %i.alv = getelementptr inbounds nuw i8, ptr %13, i64 168
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !70, !noalias !250 ; 8 uses
  %.not.i.i.i.i.i158.i107 = icmp eq ptr %i.alw, null
  br i1 %.not.i.i.i.i.i158.i107, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 8 ; 4 uses
  %i.aly = load atomic i64, ptr %i.alx acquire, align 8 ; 2 uses
  %i.alz = icmp eq i64 %i.aly, 4294967297
  %i.ama = trunc i64 %i.aly to i32                ; 2 uses
  br i1 %i.alz, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  store i32 0, ptr %i.alx, align 8, !tbaa !71
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alw, i64 12
  store i32 0, ptr %i.amb, align 4, !tbaa !73
  %i.amc = load ptr, ptr %i.alw, align 8, !tbaa !33
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 16
  %i.ame = load ptr, ptr %i.amd, align 8
  call void %i.ame(ptr noundef nonnull align 8 dereferenceable(16) %i.alw) #19, !inline_history !284
  %i.amf = load ptr, ptr %i.alw, align 8, !tbaa !33
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 24
  %i.amh = load ptr, ptr %i.amg, align 8
  call void %i.amh(ptr noundef nonnull align 8 dereferenceable(16) %i.alw) #19, !inline_history !284
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i.i

bb.hq:                                            ; preds = %bb.ho
  %i.ami = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !250
  %.not.i.i.i.i.i.i159.i108 = icmp eq i8 %i.ami, 0
  br i1 %.not.i.i.i.i.i.i159.i108, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.amj = add nsw i32 %i.ama, -1
  store i32 %i.amj, ptr %i.alx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i109

bb.hs:                                            ; preds = %bb.hq
  %i.amk = atomicrmw volatile add ptr %i.alx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i109

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i109: ; preds = %bb.hs, %bb.hr
  %.0.i.i.i.i.i.i.i.i110 = phi i32 [ %i.ama, %bb.hr ], [ %i.amk, %bb.hs ]
  %i.aml = icmp eq i32 %.0.i.i.i.i.i.i.i.i110, 1
  br i1 %i.aml, label %bb.ht, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i.i, !prof !76

bb.ht:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i109
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.alw) #19, !inline_history !285
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i.i

_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i.i:   ; preds = %bb.ht, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i109, %bb.hp, %bb.hn
  %i.amm = load ptr, ptr %i.ahp, align 8, !tbaa !70, !noalias !250 ; 8 uses
  %.not.i.i.i160.i111 = icmp eq ptr %i.amm, null
  br i1 %.not.i.i.i160.i111, label %_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev.exit.i, label %bb.hu

bb.hu:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i.i
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 8 ; 4 uses
  %i.amo = load atomic i64, ptr %i.amn acquire, align 8 ; 2 uses
  %i.amp = icmp eq i64 %i.amo, 4294967297
  %i.amq = trunc i64 %i.amo to i32                ; 2 uses
  br i1 %i.amp, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  store i32 0, ptr %i.amn, align 8, !tbaa !71
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amm, i64 12
  store i32 0, ptr %i.amr, align 4, !tbaa !73
  %i.ams = load ptr, ptr %i.amm, align 8, !tbaa !33
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 16
  %i.amu = load ptr, ptr %i.amt, align 8
  call void %i.amu(ptr noundef nonnull align 8 dereferenceable(16) %i.amm) #19, !inline_history !286
  %i.amv = load ptr, ptr %i.amm, align 8, !tbaa !33
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 24
  %i.amx = load ptr, ptr %i.amw, align 8
  call void %i.amx(ptr noundef nonnull align 8 dereferenceable(16) %i.amm) #19, !inline_history !286
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev.exit.i

bb.hw:                                            ; preds = %bb.hu
  %i.amy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75, !noalias !250
  %.not.i.i.i.i161.i112 = icmp eq i8 %i.amy, 0
  br i1 %.not.i.i.i.i161.i112, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.amz = add nsw i32 %i.amq, -1
  store i32 %i.amz, ptr %i.amn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i113

bb.hy:                                            ; preds = %bb.hw
  %i.ana = atomicrmw volatile add ptr %i.amn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i113

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i113: ; preds = %bb.hy, %bb.hx
  %.0.i.i.i.i.i.i114 = phi i32 [ %i.amq, %bb.hx ], [ %i.ana, %bb.hy ]
  %i.anb = icmp eq i32 %.0.i.i.i.i.i.i114, 1
  br i1 %i.anb, label %bb.hz, label %_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev.exit.i, !prof !76

bb.hz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i113
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.amm) #19, !inline_history !285
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev.exit.i

_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev.exit.i: ; preds = %bb.hz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i113, %bb.hv, %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i.i
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %13) #19, !inline_history !285
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19, !noalias !250
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int64TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

bb.ia:                                            ; preds = %bb.hm, %bb.hk, %bb.hg, %bb.hb
  %.pn75.i103 = phi { ptr, i32 } [ %i.alu, %bb.hm ], [ %i.akz, %bb.hk ], [ %i.ajm, %bb.hg ], [ %i.aik, %bb.hb ]
  call void @_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(216) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19, !noalias !250
  br label %common.resume

_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int64TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i187, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i186, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i158, %_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.ib

bb.ib:                                            ; preds = %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int64TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit, %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int32TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit, %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int16TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow18RunEndEncodedArray13LogicalValuesEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.7") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %i.a = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalOffsetEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.b = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalLengthEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  call void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.h, i64 noundef %i.a, i64 noundef %i.b)
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70   ; 8 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.k, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !73
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #19, !inline_history !87
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #19, !inline_history !87
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.n, %bb.f ], [ %i.x, %bb.g ]
  %i.y = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.y, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !76

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.i:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalOffsetEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.arrow::ArraySpan", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !287
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.t, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #19
  br label %common.resume

_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit:      ; preds = %bb.a
  %i.g = load i64, ptr %i.d, align 8, !tbaa !294
  %i.h = invoke noundef i64 @_ZN5arrow8ree_util17FindPhysicalIndexERKNS_9ArraySpanEll(ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef 0, i64 noundef %i.g)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !295  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !296  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !297
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !298

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !295
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.n = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !299
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #21, !inline_history !300
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret i64 %i.h

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalLengthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.arrow::ArraySpan", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !287
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.s, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #19
  br label %common.resume

_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit:      ; preds = %bb.a
  %i.g = invoke noundef i64 @_ZN5arrow8ree_util18FindPhysicalLengthERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !295  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !296  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.i, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !297
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !298

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !295
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.m = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !299
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #21, !inline_history !300
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret i64 %i.g

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %common.resume
}

declare void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(120), i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef i64 @_ZN5arrow8ree_util17FindPhysicalIndexERKNS_9ArraySpanEll(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !295  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !296  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i), !inline_history !301
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !298

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i: ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !295
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i, %bb.a
  %i.f = phi ptr [ %.pre.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !299
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #21, !inline_history !302
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  ret void
}

declare noundef i64 @_ZN5arrow8ree_util18FindPhysicalLengthERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow18RunEndEncodedArrayD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow18RunEndEncodedArrayE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !77
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !77
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !73
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !77
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !77
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, !prof !76

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow5ArrayE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i6 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i6, label %_ZN5arrow5ArrayD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !71
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !73
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #19, !inline_history !303
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #19, !inline_history !303
  br label %_ZN5arrow5ArrayD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.s, label %_ZN5arrow5ArrayD2Ev.exit, !prof !76

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #19, !inline_history !304
  br label %_ZN5arrow5ArrayD2Ev.exit

_ZN5arrow5ArrayD2Ev.exit:                         ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.s
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow18RunEndEncodedArrayD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow18RunEndEncodedArrayD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5ArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow5ArrayE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !87
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !87
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5ArrayD0Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow5ArrayE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow5ArrayD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !303
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !303
  br label %_ZN5arrow5ArrayD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.q, label %bb.g, label %_ZN5arrow5ArrayD2Ev.exit, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !304
  br label %_ZN5arrow5ArrayD2Ev.exit

_ZN5arrow5ArrayD2Ev.exit:                         ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !73
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #19, !inline_history !305
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #19, !inline_history !305
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.p, label %bb.g, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #19
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !306
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !306
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !98     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !73
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #19, !inline_history !307
end_hunk_5
begin_hunk_6_@_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  ret void
}

declare void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.7") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElll(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.72") align 8, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.51", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !98
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !98
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !76

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !122    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !75
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !122    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !75
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.m = load ptr, ptr %3, align 8, !tbaa !122    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !75
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !98     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #19, !inline_history !333
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !98 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !169

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !101, !range !111, !noundef !112
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int16TypeEE6ResizeEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !201, !noalias !334
  %i.b = icmp slt i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !76

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status7InvalidIJRA46_KcRlRA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(46) @.str.15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.16)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !337, !noalias !334
  %i.e = icmp slt i64 %2, %i.d
  br i1 %i.e, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit15.thread, !prof !76

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status7InvalidIJRA36_KcRlRA19_S2_S5_RA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(36) @.str.17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(19) @.str.18, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.16)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit15.thread:               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.d
  %.pr = load ptr, ptr %3, align 8, !tbaa !98     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.pr, ptr %0, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.f = icmp eq ptr %.pr, null
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit17, label %bb.f

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit15.thread, %_ZN5arrow6StatusD2Ev.exit
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %2, i64 32) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = shl nuw i64 %.sroa.speculated, 1
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 noundef %i.h, i1 noundef zeroext true)
  %i.i = load ptr, ptr %4, align 8, !tbaa !98     ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17
  call void @_ZN5arrow12ArrayBuilder6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17, %_ZN5arrow6StatusD2Ev.exit, %bb.e
  ret void
}

declare void @_ZN5arrow12ArrayBuilder6FinishEv(ptr dead_on_unwind writable sret(%"class.arrow::Result.39") align 8, ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow14NumericBuilderINS_9Int16TypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !338
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !338
  br label %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.q, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit

_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit:       ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 8 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !73
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !94
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !94
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !76

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !339  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #19, !inline_history !342
  br label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !328  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow6BufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !75
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(36) @_ZTSSt14default_deleteIN5arrow6BufferEE) #19
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.g = load ptr, ptr %0, align 8, !tbaa !78     ; 5 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.d, 576460752303423487
  br i1 %i.l, label %bb.c, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #20 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.v, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !70   ; 2 uses
  %i.p = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !69
  store <2 x ptr> %i.p, ptr %.011.i.i.i.i.i, align 8, !tbaa !69
end_hunk_6
begin_hunk_7_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag:bb.a

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ck, align 8, !tbaa !71
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !73
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #19, !inline_history !346
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !33
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #19, !inline_history !346
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i.i.i.i.i21 = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i.i.i.i.i.i21, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cn, %bb.ac ], [ %i.cx, %bb.ad ]
  %i.cy = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cy, label %bb.ae, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i, !prof !76

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #19
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.aa, %.lr.ph.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cz, %i.ch
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !92

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i
  store ptr %.08.lcssa.i.i.i.i.i, ptr %i.ay, align 8, !tbaa !82
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZSt9__advanceIPKSt10shared_ptrIN5arrow6BufferEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.n
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.bb ; 2 uses
  %i.da = ashr exact i64 %i.bb, 4                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 0
  br i1 %i.db, label %.lr.ph.i.i.i.i.i23, label %_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit38

.lr.ph.i.i.i.i.i23:                               ; preds = %_ZSt9__advanceIPKSt10shared_ptrIN5arrow6BufferEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i36
  %.012.i.i.i.i.i24 = phi i64 [ %i.ee, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i36 ], [ %i.da, %_ZSt9__advanceIPKSt10shared_ptrIN5arrow6BufferEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.0811.i.i.i.i.i25 = phi ptr [ %i.ed, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i36 ], [ %i.g, %_ZSt9__advanceIPKSt10shared_ptrIN5arrow6BufferEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %.0910.i.i.i.i.i26 = phi ptr [ %i.ec, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i36 ], [ %1, %_ZSt9__advanceIPKSt10shared_ptrIN5arrow6BufferEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %i.dc = load ptr, ptr %.0910.i.i.i.i.i26, align 8, !tbaa !123
  store ptr %i.dc, ptr %.0811.i.i.i.i.i25, align 8, !tbaa !123
  %i.dd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !70 ; 4 uses
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i.i.i.i.i27 = icmp eq ptr %i.df, %i.dg
  br i1 %.not.i.i.i.i.i.i.i.i27, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i36, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i23
  %.not7.i.i.i.i.i.i.i.i28 = icmp eq ptr %i.df, null
  br i1 %.not7.i.i.i.i.i.i.i.i28, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i30, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 3 uses
  %i.di = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i.i.i.i.i.i29 = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i29, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i30

bb.ai:                                            ; preds = %bb.ag
  %i.dl = atomicrmw volatile add ptr %i.dh, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i37 = load ptr, ptr %i.dd, align 8, !tbaa !70
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i30

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i30: ; preds = %bb.ai, %bb.ah, %bb.af
  %i.dm = phi ptr [ %i.dg, %bb.af ], [ %i.dg, %bb.ah ], [ %.pr.pre.i.i.i.i.i.i.i.i37, %bb.ai ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i31 = icmp eq ptr %i.dm, null
  br i1 %.not8.i.i.i.i.i.i.i.i31, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i35, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i30
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 4 uses
  %i.do = load atomic i64, ptr %i.dn acquire, align 8 ; 2 uses
  %i.dp = icmp eq i64 %i.do, 4294967297
  %i.dq = trunc i64 %i.do to i32                  ; 2 uses
  br i1 %i.dp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.dn, align 8, !tbaa !71
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 0, ptr %i.dr, align 4, !tbaa !73
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !33
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  tail call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #19, !inline_history !344
  %i.dv = load ptr, ptr %i.dm, align 8, !tbaa !33
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  tail call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #19, !inline_history !344
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i35

bb.al:                                            ; preds = %bb.aj
  %i.dy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i9.i.i.i.i.i.i.i.i32 = icmp eq i8 %i.dy, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i32, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dz = add nsw i32 %i.dq, -1
  store i32 %i.dz, ptr %i.dn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i33

bb.an:                                            ; preds = %bb.al
  %i.ea = atomicrmw volatile add ptr %i.dn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i33

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i33: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i.i.i.i.i34 = phi i32 [ %i.dq, %bb.am ], [ %i.ea, %bb.an ]
  %i.eb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i34, 1
  br i1 %i.eb, label %bb.ao, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i35, !prof !76

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i33
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #19
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i35

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i35: ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i33, %bb.ak, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i30
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !70
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i36

_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i36: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i35, %.lr.ph.i.i.i.i.i23
  %i.ec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 16
  %i.ee = add nsw i64 %.012.i.i.i.i.i24, -1
  %i.ef = icmp sgt i64 %.012.i.i.i.i.i24, 1
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i23, label %_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit38.loopexit, !llvm.loop !345

_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit38.loopexit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i36
  %.pre46 = load ptr, ptr %i.ay, align 8, !tbaa !82
  br label %_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit38

_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit38: ; preds = %_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit38.loopexit, %_ZSt9__advanceIPKSt10shared_ptrIN5arrow6BufferEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.eg = phi ptr [ %.pre46, %_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit38.loopexit ], [ %i.az, %_ZSt9__advanceIPKSt10shared_ptrIN5arrow6BufferEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKSt10shared_ptrIN5arrow6BufferEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit38, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.eq, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.eg, %_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit38 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ep, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %.sink.i, %_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit38 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !70 ; 2 uses
  %i.ej = load <2 x ptr>, ptr %.0810.i.i.i.i, align 8, !tbaa !69
  store <2 x ptr> %i.ej, ptr %.011.i.i.i.i, align 8, !tbaa !69
  %.not.i.i.i.i.i.i.i.i39 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i.i.i39, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 3 uses
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i.i.i.i.i.i40 = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i40, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.ek, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.eo = atomicrmw volatile add ptr %i.ek, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.ar, %bb.aq, %.lr.ph.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ep, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKSt10shared_ptrIN5arrow6BufferEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !343

_ZSt22__uninitialized_copy_aIPKSt10shared_ptrIN5arrow6BufferEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit38
  %.0.lcssa.i.i.i.i = phi ptr [ %i.eg, %_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit38 ], [ %i.eq, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.ay, align 8, !tbaa !82
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE15_M_erase_at_endEPS3_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, %_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit, %_ZSt22__uninitialized_copy_aIPKSt10shared_ptrIN5arrow6BufferEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow12ArrayBuilderE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !348  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !73
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #19, !inline_history !349
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #19, !inline_history !349
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #19
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !350

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !347
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !351
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #21
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ae, align 8, !tbaa !71
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !73
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #19, !inline_history !352
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #19, !inline_history !352
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.as, label %bb.n, label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit, !prof !76

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #19
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit:       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int16TypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow14NumericBuilderINS_9Int16TypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !353
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !353
  br label %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.q, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !211
  br label %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i:     ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !73
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !354
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !354
  br label %_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev.exit, !prof !76

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !211
  br label %_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev.exit

_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %0) #19, !inline_history !211
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK5arrow12ArrayBuilder6lengthEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !337
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int16TypeEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.a, align 8, !tbaa !355
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !70
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIsvE5ResetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !73
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #19, !inline_history !356
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #19, !inline_history !356
  br label %_ZN5arrow18TypedBufferBuilderIsvE5ResetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIsvE5ResetEv.exit, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #19
  br label %_ZN5arrow18TypedBufferBuilderIsvE5ResetEv.exit

_ZN5arrow18TypedBufferBuilderIsvE5ResetEv.exit:   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  tail call void @_ZN5arrow12ArrayBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int16TypeEE10AppendNullEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !195, !noalias !357 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !33, !noalias !357
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !357
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !357, !inline_history !360 ; 2 uses
  %.not.i.not = icmp slt i64 %i.f, %i.b
  br i1 %.not.i.not, label %_ZN5arrow6StatusD2Ev.exit9.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit9.thread:                ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.g = add nsw i64 %i.f, 1
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !33, !noalias !357
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !357
end_hunk_7
begin_hunk_8_@_ZN5arrow13BufferBuilder6ResizeElb:bb.a
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #19, !inline_history !448
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !76

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ad = load ptr, ptr %6, align 8, !tbaa !355   ; 3 uses
  %.not.i22 = icmp eq ptr %i.ad, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i: ; preds = %bb.l
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(80) %i.ad) #19, !inline_history !449
  br label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.l, %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.c, %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit
  %i.ah = load ptr, ptr %5, align 8, !tbaa !98    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.m, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !60

bb.m:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !355 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i23, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.m
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(80) %i.ak) #19, !inline_history !450
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !98 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !169

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ao = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.ah, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !101, !range !111, !noundef !112
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #19
  br label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.m, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br i1 %i.g, label %bb.q, label %bb.r

bb.o:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %6, align 8, !tbaa !355   ; 3 uses
  %.not.i24 = icmp eq ptr %i.at, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25: ; preds = %bb.o
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(80) %i.at) #19, !inline_history !449
  br label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26

_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26: ; preds = %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26, %bb.d
  %.pn18 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.as, %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn18

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef %2, i1 noundef zeroext %3)
  %i.ba = load ptr, ptr %7, align 8, !tbaa !98    ; 2 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit
  %i.bc = load ptr, ptr %1, align 8, !tbaa !423   ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !424
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !451
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !126, !range !111, !noundef !112
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bk = load i8, ptr %i.bj, align 8, !range !111
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = select i1 %i.bi, i1 %i.bl, i1 false, !prof !60
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = select i1 %i.bm, ptr %i.bo, ptr null, !prof !60
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !186
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !452
  br label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, %bb.q
  ret void
}

declare void @_ZN5arrow14AllocateBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.72") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN5arrow23AllocateResizableBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.106") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !98     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !355  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d) #19, !inline_history !455
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !98 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !169

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !101, !range !111, !noundef !112
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !355    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !423
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !70
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !355
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !73
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.d, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !456
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !70 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !73
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #19, !inline_history !458
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #19, !inline_history !458
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.x, label %bb.i, label %bb.j, !prof !76

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #19
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !70
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !71
  store i32 0, ptr %i.f, align 4, !tbaa !73
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #19, !inline_history !97
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #19, !inline_history !97
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !76

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #19
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !459  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #19, !inline_history !461
  br label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !328  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow15ResizableBufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !75
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(46) @_ZTSSt14default_deleteIN5arrow15ResizableBufferEE) #19
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !163    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !123
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !70
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !163
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !73
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.d, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !462
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !70 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !73
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #19, !inline_history !458
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #19, !inline_history !458
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.x, label %bb.i, label %bb.j, !prof !76

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #19
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !70
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !71
  store i32 0, ptr %i.f, align 4, !tbaa !73
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #19, !inline_history !97
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #19, !inline_history !97
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !76

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #19
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !97
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !97
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !97
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !97
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
end_hunk_8
begin_hunk_9_@_ZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !314, !nonnull !112, !align !324
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(46) %1) #19
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(46) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !314, !nonnull !112, !align !324
  %i.f = load i64, ptr %2, align 8, !tbaa !201
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !314, !nonnull !112, !align !324
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #19
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.k, %bb.c ], [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn9
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(19) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(2) %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !314, !nonnull !112, !align !324
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(36) %1) #19
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(36) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS4_EEDaSK_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS4_EEDaSK_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !314, !nonnull !112, !align !324
  %i.f = load i64, ptr %2, align 8, !tbaa !201
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS5_EEDaSK_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS5_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS4_EEDaSK_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !314, !nonnull !112, !align !324
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(19) %3) #19
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(19) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS7_EEDaSK_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS7_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS5_EEDaSK_.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !314, !nonnull !112, !align !324
  %i.l = load i64, ptr %4, align 8, !tbaa !201
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef %i.l)
          to label %_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSK_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS7_EEDaSK_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !314, !nonnull !112, !align !324
  %i.o = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %5) #19
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 1 dereferenceable(2) %5, i64 noundef %i.o)
          to label %_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS9_EEDaSK_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS9_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSK_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS9_EEDaSK_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E3_clIS4_EEDaSK_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS5_EEDaSK_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS7_EEDaSK_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSK_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS9_EEDaSK_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.f, %bb.d, %bb.h
  %.pn15 = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.q, %bb.c ], [ %i.r, %bb.d ], [ %i.s, %bb.e ], [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int32TypeEE6ResizeEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !201, !noalias !469
  %i.b = icmp slt i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !76

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status7InvalidIJRA46_KcRlRA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(46) @.str.15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.16)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !337, !noalias !469
  %i.e = icmp slt i64 %2, %i.d
  br i1 %i.e, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit15.thread, !prof !76

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status7InvalidIJRA36_KcRlRA19_S2_S5_RA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(36) @.str.17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(19) @.str.18, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.16)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit15.thread:               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.d
  %.pr = load ptr, ptr %3, align 8, !tbaa !98     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.pr, ptr %0, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.f = icmp eq ptr %.pr, null
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit17, label %bb.f

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit15.thread, %_ZN5arrow6StatusD2Ev.exit
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %2, i64 32) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = shl i64 %.sroa.speculated, 2
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 noundef %i.h, i1 noundef zeroext true)
  %i.i = load ptr, ptr %4, align 8, !tbaa !98     ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17
  call void @_ZN5arrow12ArrayBuilder6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17, %_ZN5arrow6StatusD2Ev.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow14NumericBuilderINS_9Int32TypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !472
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !472
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.q, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit

_ZN5arrow18TypedBufferBuilderIivED2Ev.exit:       ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 8 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !73
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !94
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !94
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !76

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int32TypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow14NumericBuilderINS_9Int32TypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !473
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !473
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.q, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !248
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i:     ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !73
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !474
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !474
  br label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit, !prof !76

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !248
  br label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit

_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %0) #19, !inline_history !248
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int32TypeEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.a, align 8, !tbaa !355
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !70
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIivE5ResetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !73
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #19, !inline_history !475
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #19, !inline_history !475
  br label %_ZN5arrow18TypedBufferBuilderIivE5ResetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIivE5ResetEv.exit, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #19
  br label %_ZN5arrow18TypedBufferBuilderIivE5ResetEv.exit

_ZN5arrow18TypedBufferBuilderIivE5ResetEv.exit:   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  tail call void @_ZN5arrow12ArrayBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int32TypeEE10AppendNullEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !195, !noalias !476 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !33, !noalias !476
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !476
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !476, !inline_history !360 ; 2 uses
  %.not.i.not = icmp slt i64 %i.f, %i.b
  br i1 %.not.i.not, label %_ZN5arrow6StatusD2Ev.exit9.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit9.thread:                ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.g = add nsw i64 %i.f, 1
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !33, !noalias !476
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !476
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !360
  %.pr = load ptr, ptr %2, align 8, !tbaa !98     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit9.thread, %_ZN5arrow6StatusD2Ev.exit
end_hunk_9
begin_hunk_10_@_ZN5arrow14NumericBuilderINS_9Int32TypeEE14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE:bb.a
_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit62: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i59, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i54, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.cq:                                            ; preds = %bb.ch, %bb.c
  %.pn23 = phi { ptr, i32 } [ %i.m, %bb.c ], [ %.pn19.pn, %bb.ch ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn23
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5arrow14NumericBuilderINS_9Int32TypeEE4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !69
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !69
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int32TypeEE12AppendValuesEPKilPKhl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !195, !noalias !528 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !33, !noalias !528
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !528
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !528, !inline_history !360
  %i.g = add nsw i64 %i.f, %3                     ; 2 uses
  %.not.i = icmp sgt i64 %i.g, %i.b
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit15.thread

_ZN5arrow6StatusD2Ev.exit15.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !33, !noalias !528
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !528
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !360
  %.pr = load ptr, ptr %6, align 8, !tbaa !98     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit15.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = shl i64 %3, 2                            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !186
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !202
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %2, i64 %i.m, i1 false)
  %i.s = load i64, ptr %i.p, align 8, !tbaa !202
  %i.t = add nsw i64 %i.s, %i.m
  store i64 %i.t, ptr %i.p, align 8, !tbaa !202
  %i.u = icmp eq ptr %4, null
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %3)
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit

bb.d:                                             ; preds = %bb.b
  %i.v = icmp eq i64 %3, 0
  br i1 %i.v, label %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i, label %bb.e

._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i: ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !418
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !186
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !200
  call void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef nonnull %4, i64 noundef %5, i64 noundef %3, ptr noundef %i.x, i64 noundef %i.z)
  %i.aa = call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef nonnull %4, i64 noundef %5, i64 noundef %3)
  %i.ab = sub i64 %3, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !418
  %i.ae = add nsw i64 %i.ab, %i.ad                ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !418
  %i.af = load i64, ptr %i.y, align 8, !tbaa !200
  %i.ag = add nsw i64 %i.af, %3
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !200
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i: ; preds = %bb.e, %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i
  %i.ah = phi i64 [ %.pre.i, %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i ], [ %i.ae, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !337
  %i.ak = add nsw i64 %i.aj, %3
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !337
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ah, ptr %i.al, align 8, !tbaa !409
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit

_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit: ; preds = %bb.c, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !531
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int64TypeEE6ResizeEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !201, !noalias !534
  %i.b = icmp slt i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !76

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status7InvalidIJRA46_KcRlRA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(46) @.str.15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.16)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !337, !noalias !534
  %i.e = icmp slt i64 %2, %i.d
  br i1 %i.e, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit15.thread, !prof !76

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status7InvalidIJRA36_KcRlRA19_S2_S5_RA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(36) @.str.17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(19) @.str.18, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.16)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit15.thread:               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.d
  %.pr = load ptr, ptr %3, align 8, !tbaa !98     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.pr, ptr %0, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.f = icmp eq ptr %.pr, null
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit17, label %bb.f

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit15.thread, %_ZN5arrow6StatusD2Ev.exit
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %2, i64 32) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = shl i64 %.sroa.speculated, 3
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 noundef %i.h, i1 noundef zeroext true)
  %i.i = load ptr, ptr %4, align 8, !tbaa !98     ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17
  call void @_ZN5arrow12ArrayBuilder6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17, %_ZN5arrow6StatusD2Ev.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow14NumericBuilderINS_9Int64TypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !537
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !537
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.q, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit

_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit:       ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 8 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !73
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !94
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !94
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !76

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int64TypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVN5arrow14NumericBuilderINS_9Int64TypeEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !538
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !538
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
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
  br i1 %i.q, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !285
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i:     ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !73
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !539
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !539
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev.exit, !prof !76

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !285
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev.exit

_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %0) #19, !inline_history !285
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int64TypeEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.a, align 8, !tbaa !355
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !70
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIlvE5ResetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !73
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #19, !inline_history !540
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #19, !inline_history !540
  br label %_ZN5arrow18TypedBufferBuilderIlvE5ResetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIlvE5ResetEv.exit, !prof !76

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #19
  br label %_ZN5arrow18TypedBufferBuilderIlvE5ResetEv.exit

_ZN5arrow18TypedBufferBuilderIlvE5ResetEv.exit:   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  tail call void @_ZN5arrow12ArrayBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_9Int64TypeEE10AppendNullEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !195, !noalias !541 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !33, !noalias !541
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !541
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !541, !inline_history !360 ; 2 uses
  %.not.i.not = icmp slt i64 %i.f, %i.b
  br i1 %.not.i.not, label %_ZN5arrow6StatusD2Ev.exit9.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit9.thread:                ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.g = add nsw i64 %i.f, 1
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !33, !noalias !541
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !541
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !360
  %.pr = load ptr, ptr %2, align 8, !tbaa !98     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit9.thread, %_ZN5arrow6StatusD2Ev.exit
end_hunk_10
