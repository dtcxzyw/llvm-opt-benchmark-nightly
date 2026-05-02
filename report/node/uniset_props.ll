inline.NumInlined: 175
inline.NumDeleted: 67
begin_hunk_0_@_ZN6icu_7810UnicodeSet20applyPropertyPatternERKNS_13UnicodeStringERNS_13ParsePositionER10UErrorCode:bb.a
  %i.bg = phi i16 [ 78, %_ZN6icu_7812_GLOBAL__N_110isNameOpenERKNS_13UnicodeStringEi.exit ], [ %i.az, %_ZN6icu_7812_GLOBAL__N_110isPerlOpenERKNS_13UnicodeStringEi.exit ] ; 2 uses
  %i.bh = icmp ne i16 %i.bg, 80
  %i.bi = icmp eq i16 %i.bg, 78
  %i.bj = add nuw nsw i32 %i.c, 2
  store i32 %i.bj, ptr %i.a, align 4
  %i.bk = call noundef i32 @_ZN6icu_7811ICU_Utility14skipWhitespaceERKNS_13UnicodeStringERia(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i8 noundef signext 0) #10 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN6icu_7810UnicodeSet20applyPropertyPatternERKNS_13UnicodeStringERNS_13ParsePositionER10UErrorCode:bb.a

bb.k:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit, %thread-pre-split
  %.048118 = phi i1 [ %.048.ph, %thread-pre-split ], [ %i.bh, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit ]
  %.049116 = phi i1 [ false, %thread-pre-split ], [ %i.bi, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit ] ; 2 uses
  %.not5087114 = phi i32 [ 2, %thread-pre-split ], [ 1, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit ]
  %.045 = phi i32 [ %i.cd, %thread-pre-split ], [ %i.cg, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit ] ; 5 uses
  %i.ch = icmp slt i32 %.045, 0
end_hunk_1
begin_hunk_2_@_ZN6icu_7810UnicodeSet20applyPropertyPatternERKNS_13UnicodeStringERNS_13ParsePositionER10UErrorCode:bb.a
  %i.co = icmp slt i16 %.pre.i76, 0
  %i.cp = select i1 %i.co, i32 %i.cn, i32 %.pre6.i84
  %i.cq = sub nsw i32 %i.cp, %.0.i79
  %i.cr = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 61, i32 noundef %.0.i79, i32 noundef %i.cq) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %4, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6icu_7810UnicodeSet20applyPropertyPatternERKNS_13UnicodeStringERNS_13ParsePositionER10UErrorCode:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.ct, align 8
  %i.cu = icmp uge i32 %i.cr, %.045
  %or.cond57 = or i1 %.049116, %i.cu
  %i.cv = load i32, ptr %i.a, align 4             ; 2 uses
  %i.cw = load ptr, ptr %1, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  br i1 %or.cond57, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit85
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.cv, i32 noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(64) %4) #10
end_hunk_3
begin_hunk_4_@_ZN6icu_7810UnicodeSet20applyPropertyPatternERKNS_13UnicodeStringERNS_13ParsePositionER10UErrorCode:bb.a

bb.p:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit85
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.cv, i32 noundef %.045, ptr noundef nonnull align 8 dereferenceable(64) %4) #10
  br i1 %.049116, label %_ZN6icu_7813UnicodeStringaSIA3_DsvEERS0_RKT_.exit, label %bb.q

_ZN6icu_7813UnicodeStringaSIA3_DsvEERS0_RKT_.exit: ; preds = %bb.p
  %i.dd = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %4) #10 ; 0 uses
end_hunk_4
