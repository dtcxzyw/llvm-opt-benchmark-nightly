inline.NumInlined: 211
inline.NumDeleted: 79
begin_hunk_0_@_ZNK6icu_7814TimeUnitFormat11parseObjectERKNS_13UnicodeStringERNS_11FormattableERNS_13ParsePositionE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN6icu_7811FormattableC1Ed(ptr noundef nonnull align 8 dereferenceable(112) %4, double noundef 0.000000e+00) #10
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 13 uses
  %i.e = load i32, ptr %i.d, align 8              ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
end_hunk_0
begin_hunk_1_@_ZNK6icu_7814TimeUnitFormat11parseObjectERKNS_13UnicodeStringERNS_11FormattableERNS_13ParsePositionE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.s, align 8 ; 2 uses
  %i.t = load ptr, ptr %.sroa.0.0.copyload, align 8 ; 4 uses
  store i32 -1, ptr %i.g, align 4
  store i32 %i.e, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @_ZN6icu_7811FormattableC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #10
  %i.u = load ptr, ptr %i.t, align 8
end_hunk_1
begin_hunk_2_@_ZNK6icu_7814TimeUnitFormat11parseObjectERKNS_13UnicodeStringERNS_11FormattableERNS_13ParsePositionE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.aw = load ptr, ptr %i.av, align 8            ; 4 uses
  store i32 -1, ptr %i.g, align 4
  store i32 %i.e, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @_ZN6icu_7811FormattableC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #10
  %i.ax = load ptr, ptr %i.aw, align 8
end_hunk_2
