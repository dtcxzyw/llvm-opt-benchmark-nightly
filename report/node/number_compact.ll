inline.NumInlined: 101
inline.NumDeleted: 55
begin_hunk_0_@_ZN6icu_786number4impl14CompactHandler22precomputeAllModifiersERNS1_22MutablePatternModifierER10UErrorCode:bb.a
bb.a:
  %3 = alloca %"class.icu_78::UVector", align 8   ; 8 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %5 = alloca %"struct.icu_78::number::impl::ParsedPatternInfo", align 8 ; 34 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
end_hunk_0
begin_hunk_1_@_ZN6icu_786number4impl14CompactHandler22precomputeAllModifiersERNS1_22MutablePatternModifierER10UErrorCode:bb.a

.lr.ph:                                           ; preds = %_ZN6icu_7815MaybeStackArrayINS_6number4impl14CompactModInfoELi12EE6resizeEii.exit, %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 80
end_hunk_1
begin_hunk_2_@_ZN6icu_786number4impl14CompactHandler22precomputeAllModifiersERNS1_22MutablePatternModifierER10UErrorCode:bb.a
  %i.bw = load ptr, ptr %i.t, align 8
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_786number4impl17ParsedPatternInfoE, i64 16), ptr %5, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ap, align 8
  store i16 2, ptr %i.aq, align 8
  store i64 281474976645120, ptr %i.ar, align 8
  store i32 0, ptr %i.at, align 4
  store i8 0, ptr %i.au, align 8
  store i32 0, ptr %i.av, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.as, i8 0, i64 33, i1 false)
  call void @_ZN6icu_786number4impl15DecimalQuantityC1Ev(ptr noundef nonnull align 8 dereferenceable(66) %i.aw) #13
  store i8 0, ptr %i.ax, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.ay, i8 0, i64 10, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  store i64 281474976645120, ptr %i.ba, align 8
  store i32 0, ptr %i.bc, align 4
  store i8 0, ptr %i.bd, align 8
  store i32 0, ptr %i.be, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.bb, i8 0, i64 33, i1 false)
  call void @_ZN6icu_786number4impl15DecimalQuantityC1Ev(ptr noundef nonnull align 8 dereferenceable(66) %i.bf) #13
  store i8 0, ptr %i.bg, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.bh, i8 0, i64 10, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  store ptr %i.ap, ptr %i.bj, align 8
  store i32 0, ptr %i.bk, align 8
  store ptr null, ptr %i.bl, align 8
  store i8 0, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %6, align 8
  store i16 2, ptr %i.bn, align 8
end_hunk_2
begin_hunk_3_@_ZN6icu_786number4impl14CompactHandler22precomputeAllModifiersERNS1_22MutablePatternModifierER10UErrorCode:bb.a
.critedge:                                        ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.bp, ptr %i.ci, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_786number4impl17ParsedPatternInfoE, i64 16), ptr %5, align 8
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dereferenceable(66) %i.bf) #13
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dereferenceable(66) %i.aw) #13
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ap) #13
end_hunk_3
begin_hunk_4_@_ZN6icu_786number4impl14CompactHandler22precomputeAllModifiersERNS1_22MutablePatternModifierER10UErrorCode:bb.a
  br i1 %i.cl, label %bb.o, label %.loopexit, !llvm.loop !13

bb.q:                                             ; preds = %bb.p, %_ZN6icu_7813UnicodeStringC2IPKDsvEERKT_.exit33
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_786number4impl17ParsedPatternInfoE, i64 16), ptr %5, align 8
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dereferenceable(66) %i.bf) #13
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dereferenceable(66) %i.aw) #13
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ap) #13
end_hunk_4
