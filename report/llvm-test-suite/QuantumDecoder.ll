inline.NumInlined: 60
inline.NumDeleted: 37
begin_hunk_0_@_ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !116
  br label %_ZN9NCompress8NQuantum11NRangeCoder8CDecoder13ReleaseStreamEv.exit

end_hunk_0
begin_hunk_1_@_ZThn8_N9NCompress8NQuantum8CDecoder15ReleaseInStreamEv:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !116
  br label %_ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv.exit

end_hunk_1
begin_hunk_2_@_ZN9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv:bb.a
_ZeqRK4GUIDS1_.exit44.thread.sink.split:          ; preds = %_ZeqRK4GUIDS1_.exit44, %_ZeqRK4GUIDS1_.exit26, %_ZeqRK4GUIDS1_.exit
  %.sink49 = phi i64 [ 8, %_ZeqRK4GUIDS1_.exit26 ], [ 8, %_ZeqRK4GUIDS1_.exit ], [ 16, %_ZeqRK4GUIDS1_.exit44 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 %.sink49
  store ptr %i.ej, ptr %2, align 8, !tbaa !117
  %i.ek = load ptr, ptr %0, align 8, !tbaa !105
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
end_hunk_2
begin_hunk_3_@_ZN9NCompress8NQuantum8CDecoder6AddRefEv
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NQuantum8CDecoder6AddRefEv(ptr noundef nonnull align 8 dereferenceable(2020) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !118
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !118
  ret i32 %i.c
}

end_hunk_3
begin_hunk_4_@_ZN9NCompress8NQuantum8CDecoder7ReleaseEv
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NQuantum8CDecoder7ReleaseEv(ptr noundef nonnull align 8 dereferenceable(2020) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !118
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !118
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

end_hunk_4
begin_hunk_5_@_ZThn8_N9NCompress8NQuantum8CDecoder6AddRefEv
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NQuantum8CDecoder6AddRefEv(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !118
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !118
  ret i32 %i.c
}

end_hunk_5
begin_hunk_6_@_ZThn8_N9NCompress8NQuantum8CDecoder7ReleaseEv
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NQuantum8CDecoder7ReleaseEv(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !118
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !118
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN9NCompress8NQuantum8CDecoder7ReleaseEv.exit

end_hunk_6
begin_hunk_7_@_ZThn8_N9NCompress8NQuantum8CDecoder7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(2020) %i.d) #12
  br label %_ZN9NCompress8NQuantum8CDecoder7ReleaseEv.exit

_ZN9NCompress8NQuantum8CDecoder7ReleaseEv.exit:   ; preds = %bb.a, %bb.b
end_hunk_7
begin_hunk_8_@_ZThn8_N9NCompress8NQuantum8CDecoderD0Ev
define linkonce_odr dso_local void @_ZThn8_N9NCompress8NQuantum8CDecoderD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN9NCompress8NQuantum8CDecoderD2Ev(ptr noundef nonnull align 8 dereferenceable(2020) %i.a) #12
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(2020) %i.a, i64 noundef 2024) #14
  ret void
}

end_hunk_8
begin_hunk_9_@_ZThn16_N9NCompress8NQuantum8CDecoder6AddRefEv
define linkonce_odr dso_local noundef i32 @_ZThn16_N9NCompress8NQuantum8CDecoder6AddRefEv(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !118
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !118
  ret i32 %i.c
}

end_hunk_9
begin_hunk_10_@_ZThn16_N9NCompress8NQuantum8CDecoder7ReleaseEv
define linkonce_odr dso_local noundef i32 @_ZThn16_N9NCompress8NQuantum8CDecoder7ReleaseEv(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !118
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !118
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN9NCompress8NQuantum8CDecoder7ReleaseEv.exit

end_hunk_10
begin_hunk_11_@_ZThn16_N9NCompress8NQuantum8CDecoder7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(2020) %i.d) #12
  br label %_ZN9NCompress8NQuantum8CDecoder7ReleaseEv.exit

_ZN9NCompress8NQuantum8CDecoder7ReleaseEv.exit:   ; preds = %bb.a, %bb.b
end_hunk_11
begin_hunk_12_@_ZThn16_N9NCompress8NQuantum8CDecoderD0Ev
define linkonce_odr dso_local void @_ZThn16_N9NCompress8NQuantum8CDecoderD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN9NCompress8NQuantum8CDecoderD2Ev(ptr noundef nonnull align 8 dereferenceable(2020) %i.a) #12
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(2020) %i.a, i64 noundef 2024) #14
  ret void
}

end_hunk_12
begin_hunk_13_@_ZN9NCompress8NQuantum11NRangeCoder8CDecoder6DecodeEjjj:bb.a
  store i32 %i.as, ptr %i.n, align 8, !tbaa !66
  %i.at = or disjoint i32 %i.ar, %i.af            ; 2 uses
  store i32 %i.at, ptr %i.j, align 8, !tbaa !72
  br label %bb.b, !llvm.loop !119

bb.i:                                             ; preds = %bb.c
  %i.au = add i32 %.0, 1
end_hunk_13
begin_hunk_14_@llvm.umin.i64
!114 = !{!115, !5, i64 0}
!115 = !{!"_ZTS16CSystemException", !5, i64 0}
!116 = !{!32, !33, i64 0}
!117 = !{!24, !24, i64 0}
!118 = !{!20, !5, i64 0}
!119 = distinct !{!119, !42}
end_hunk_14
