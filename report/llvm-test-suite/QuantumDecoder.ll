inline.NumInlined: 60
inline.NumDeleted: 37
begin_hunk_0_@_ZN9NCompress8NQuantum8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %.noexc.i unwind label %bb.o, !inline_history !114 ; 0 uses

.noexc.i:                                         ; preds = %bb.n
  store ptr null, ptr %i.aw, align 8, !tbaa !113
end_hunk_0
begin_hunk_1_@_ZN9NCompress8NQuantum8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef i32 %i.be(ptr noundef nonnull align 8 dereferenceable(2020) %0)
          to label %_ZN9NCompress8NQuantum8CDecoder15CDecoderFlusherD2Ev.exit unwind label %bb.o, !inline_history !114 ; 0 uses

bb.o:                                             ; preds = %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i, %bb.n, %.loopexit
  %i.bg = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN9NCompress8NQuantum8CDecoder15CDecoderFlusherD2Ev:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc unwind label %bb.d, !inline_history !114 ; 0 uses

.noexc:                                           ; preds = %bb.c
  store ptr null, ptr %i.h, align 8, !tbaa !113
end_hunk_2
begin_hunk_3_@_ZN9NCompress8NQuantum8CDecoder15CDecoderFlusherD2Ev:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(2020) %i.g)
          to label %_ZN9NCompress8NQuantum8CDecoder14ReleaseStreamsEv.exit unwind label %bb.d, !inline_history !114 ; 0 uses

_ZN9NCompress8NQuantum8CDecoder14ReleaseStreamsEv.exit: ; preds = %_ZN10COutBuffer13ReleaseStreamEv.exit.i
  ret void
end_hunk_3
begin_hunk_4_@_ZN9NCompress8NQuantum8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo:bb.a

.sink.split.sink.split:                           ; preds = %bb.d, %bb.c
  %.sink = phi ptr [ %i.g, %bb.c ], [ %i.j, %bb.d ]
  %i.k = load i32, ptr %.sink, align 4, !tbaa !115
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.d
end_hunk_4
begin_hunk_5_@_ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv
define dso_local noundef i32 @_ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv(ptr noundef nonnull align 8 captures(none) dereferenceable(2020) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN9NCompress8NQuantum11NRangeCoder8CDecoder13ReleaseStreamEv.exit, label %bb.b

end_hunk_5
begin_hunk_6_@_ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !118 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !117
  br label %_ZN9NCompress8NQuantum11NRangeCoder8CDecoder13ReleaseStreamEv.exit

_ZN9NCompress8NQuantum11NRangeCoder8CDecoder13ReleaseStreamEv.exit: ; preds = %bb.a, %bb.b
end_hunk_6
begin_hunk_7_@_ZThn8_N9NCompress8NQuantum8CDecoder15ReleaseInStreamEv
define dso_local noundef i32 @_ZThn8_N9NCompress8NQuantum8CDecoder15ReleaseInStreamEv(ptr noundef captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv.exit, label %bb.b

end_hunk_7
begin_hunk_8_@_ZThn8_N9NCompress8NQuantum8CDecoder15ReleaseInStreamEv:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !119 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !117
  br label %_ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv.exit

_ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv.exit: ; preds = %bb.a, %bb.b
end_hunk_8
begin_hunk_9_@_ZN9NCompress8NQuantum8CDecoder14QueryInterfaceERK4GUIDPPv:bb.a
_ZeqRK4GUIDS1_.exit44.thread.sink.split:          ; preds = %_ZeqRK4GUIDS1_.exit44, %_ZeqRK4GUIDS1_.exit26, %_ZeqRK4GUIDS1_.exit
  %.sink49 = phi i64 [ 8, %_ZeqRK4GUIDS1_.exit26 ], [ 8, %_ZeqRK4GUIDS1_.exit ], [ 16, %_ZeqRK4GUIDS1_.exit44 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 %.sink49
  store ptr %i.ej, ptr %2, align 8, !tbaa !120
  %i.ek = load ptr, ptr %0, align 8, !tbaa !105
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
end_hunk_9
begin_hunk_10_@_ZN9NCompress8NQuantum8CDecoder6AddRefEv
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NQuantum8CDecoder6AddRefEv(ptr noundef nonnull align 8 dereferenceable(2020) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !121
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !121
  ret i32 %i.c
}

end_hunk_10
begin_hunk_11_@_ZN9NCompress8NQuantum8CDecoder7ReleaseEv
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NQuantum8CDecoder7ReleaseEv(ptr noundef nonnull align 8 dereferenceable(2020) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !121
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !121
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

end_hunk_11
begin_hunk_12_@_ZN9NCompress8NQuantum8CDecoderD2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN9NCompress8NQuantum11NRangeCoder8CDecoderD2Ev.exit, label %bb.c

end_hunk_12
begin_hunk_13_@_ZThn8_N9NCompress8NQuantum8CDecoder6AddRefEv
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NQuantum8CDecoder6AddRefEv(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !121
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !121
  ret i32 %i.c
}

end_hunk_13
begin_hunk_14_@_ZThn8_N9NCompress8NQuantum8CDecoder7ReleaseEv
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress8NQuantum8CDecoder7ReleaseEv(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !121
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !121
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN9NCompress8NQuantum8CDecoder7ReleaseEv.exit

end_hunk_14
begin_hunk_15_@_ZThn8_N9NCompress8NQuantum8CDecoder7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(2020) %i.d) #12, !inline_history !122
  br label %_ZN9NCompress8NQuantum8CDecoder7ReleaseEv.exit

_ZN9NCompress8NQuantum8CDecoder7ReleaseEv.exit:   ; preds = %bb.a, %bb.b
end_hunk_15
begin_hunk_16_@_ZThn8_N9NCompress8NQuantum8CDecoderD0Ev
define linkonce_odr dso_local void @_ZThn8_N9NCompress8NQuantum8CDecoderD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN9NCompress8NQuantum8CDecoderD2Ev(ptr noundef nonnull align 8 dereferenceable(2020) %i.a) #12, !inline_history !123
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(2020) %i.a, i64 noundef 2024) #14, !inline_history !123
  ret void
}

end_hunk_16
begin_hunk_17_@_ZThn16_N9NCompress8NQuantum8CDecoder6AddRefEv
define linkonce_odr dso_local noundef i32 @_ZThn16_N9NCompress8NQuantum8CDecoder6AddRefEv(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !121
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !121
  ret i32 %i.c
}

end_hunk_17
begin_hunk_18_@_ZThn16_N9NCompress8NQuantum8CDecoder7ReleaseEv
define linkonce_odr dso_local noundef i32 @_ZThn16_N9NCompress8NQuantum8CDecoder7ReleaseEv(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !121
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !121
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN9NCompress8NQuantum8CDecoder7ReleaseEv.exit

end_hunk_18
begin_hunk_19_@_ZThn16_N9NCompress8NQuantum8CDecoder7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(2020) %i.d) #12, !inline_history !122
  br label %_ZN9NCompress8NQuantum8CDecoder7ReleaseEv.exit

_ZN9NCompress8NQuantum8CDecoder7ReleaseEv.exit:   ; preds = %bb.a, %bb.b
end_hunk_19
begin_hunk_20_@_ZThn16_N9NCompress8NQuantum8CDecoderD0Ev
define linkonce_odr dso_local void @_ZThn16_N9NCompress8NQuantum8CDecoderD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN9NCompress8NQuantum8CDecoderD2Ev(ptr noundef nonnull align 8 dereferenceable(2020) %i.a) #12, !inline_history !123
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(2020) %i.a, i64 noundef 2024) #14, !inline_history !123
  ret void
}

end_hunk_20
begin_hunk_21_@_ZN9NCompress8NQuantum11NRangeCoder8CDecoder6DecodeEjjj:bb.a
  store i32 %i.as, ptr %i.n, align 8, !tbaa !66
  %i.at = or disjoint i32 %i.ar, %i.af            ; 2 uses
  store i32 %i.at, ptr %i.j, align 8, !tbaa !72
  br label %bb.b, !llvm.loop !124

bb.i:                                             ; preds = %bb.c
  %i.au = add i32 %.0, 1
end_hunk_21
begin_hunk_22_@llvm.umin.i64
!111 = !{!31, !27, i64 32}
!112 = !{!31, !23, i64 16}
!113 = !{!25, !26, i64 0}
!114 = distinct !{null}
!115 = !{!116, !5, i64 0}
!116 = !{!"_ZTS16CSystemException", !5, i64 0}
!117 = !{!32, !33, i64 0}
!118 = distinct !{null, null, null, null}
!119 = distinct !{ptr @_ZN9NCompress8NQuantum8CDecoder15ReleaseInStreamEv, null, null, null, null}
!120 = !{!24, !24, i64 0}
!121 = !{!20, !5, i64 0}
!122 = !{ptr @_ZN9NCompress8NQuantum8CDecoder7ReleaseEv}
!123 = !{ptr @_ZN9NCompress8NQuantum8CDecoderD0Ev}
!124 = distinct !{!124, !42}
end_hunk_22
