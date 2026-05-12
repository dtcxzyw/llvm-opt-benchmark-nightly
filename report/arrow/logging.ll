inline.NumInlined: 88
inline.NumDeleted: 65
begin_hunk_0_@_ZN5arrow4util8ArrowLogC2EPKciNS0_13ArrowLogLevelE:bb.a
  store i8 %i.e, ptr %i.b, align 8, !tbaa !28
  %i.f = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow4util7CerrLogE, i64 16), ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %3, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 5 uses
  store i8 0, ptr %i.h, align 4, !tbaa !31
end_hunk_0
begin_hunk_1_@_ZN5arrow4util8ArrowLogC2EPKciNS0_13ArrowLogLevelE:bb.a
  %i.n = load i32, ptr %i.m, align 8, !tbaa !32
  %i.o = or i32 %i.n, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.l, i32 noundef %i.o)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %1, i64 noundef %i.p) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 1, ptr %i.h, align 4, !tbaa !31
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  store i8 1, ptr %i.h, align 4, !tbaa !31
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %2) ; 0 uses
  store i8 1, ptr %i.h, align 4, !tbaa !31
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1, i64 noundef 2) ; 0 uses
  br label %_ZN5arrow4util7CerrLoglsIA3_cEERS1_RKT_.exit

_ZN5arrow4util7CerrLoglsIA3_cEERS1_RKT_.exit:     ; preds = %bb.e, %bb.a
  store ptr %i.f, ptr %i.a, align 8, !tbaa !24
  ret void
}
end_hunk_1
