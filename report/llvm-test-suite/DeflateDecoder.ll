inline.NumInlined: 114
inline.NumDeleted: 48
begin_hunk_0_@_ZN9NCompress8NDeflate8NDecoder6CCoder8CodeRealEP20ISequentialOutStreamPKyP21ICompressProgressInfo:bb.a
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = invoke noundef i32 %i.gn(ptr noundef nonnull align 8 dereferenceable(8) %i.gk)
          to label %.noexc.i unwind label %bb.an  ; 0 uses

.noexc.i:                                         ; preds = %bb.am
  store ptr null, ptr %i.gj, align 8, !tbaa !21
end_hunk_0
begin_hunk_1_@_ZN9NCompress8NDeflate8NDecoder6CCoder8CodeRealEP20ISequentialOutStreamPKyP21ICompressProgressInfo:bb.a

bb.ap:                                            ; preds = %bb.ao
  %i.gt = call ptr @__cxa_begin_catch(ptr %.540) #15
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !98
  call void @__cxa_end_catch()
  br label %bb.at

end_hunk_1
begin_hunk_2_@_ZN9NCompress8NDeflate8NDecoder6CCoder8CodeRealEP20ISequentialOutStreamPKyP21ICompressProgressInfo:bb.a
  br i1 %i.gw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !98
  call void @__cxa_end_catch()
  br label %bb.at

end_hunk_2
begin_hunk_3_@_ZN9NCompress8NDeflate8NDecoder6CCoder14CCoderReleaserD2Ev:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc unwind label %bb.d     ; 0 uses

.noexc:                                           ; preds = %bb.c
  store ptr null, ptr %i.h, align 8, !tbaa !21
end_hunk_3
begin_hunk_4_@_ZN9NCompress8NDeflate8NDecoder6CCoder15ReleaseInStreamEv
define dso_local noundef i32 @_ZN9NCompress8NDeflate8NDecoder6CCoder15ReleaseInStreamEv(ptr noundef nonnull align 8 captures(none) dereferenceable(3474) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5NBitl12CBaseDecoderI9CInBufferE13ReleaseStreamEv.exit, label %bb.b

end_hunk_4
begin_hunk_5_@_ZN9NCompress8NDeflate8NDecoder6CCoder15ReleaseInStreamEv:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !101 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !100
  br label %_ZN5NBitl12CBaseDecoderI9CInBufferE13ReleaseStreamEv.exit

_ZN5NBitl12CBaseDecoderI9CInBufferE13ReleaseStreamEv.exit: ; preds = %bb.a, %bb.b
end_hunk_5
begin_hunk_6_@_ZThn16_N9NCompress8NDeflate8NDecoder6CCoder15ReleaseInStreamEv
define dso_local noundef i32 @_ZThn16_N9NCompress8NDeflate8NDecoder6CCoder15ReleaseInStreamEv(ptr noundef captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN9NCompress8NDeflate8NDecoder6CCoder15ReleaseInStreamEv.exit, label %bb.b

end_hunk_6
begin_hunk_7_@_ZThn16_N9NCompress8NDeflate8NDecoder6CCoder15ReleaseInStreamEv:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !102 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !100
  br label %_ZN9NCompress8NDeflate8NDecoder6CCoder15ReleaseInStreamEv.exit

_ZN9NCompress8NDeflate8NDecoder6CCoder15ReleaseInStreamEv.exit: ; preds = %bb.a, %bb.b
end_hunk_7
begin_hunk_8_@_ZN9NCompress8NDeflate8NDecoder6CCoder4ReadEPvjPj:bb.a

_ZN9NCompress8NDeflate8NDecoder6CCoder5FlushEv.exit.sink.split.sink.split: ; preds = %bb.n, %bb.m
  %.sink = phi ptr [ %i.m, %bb.m ], [ %i.p, %bb.n ]
  %i.q = load i32, ptr %.sink, align 4, !tbaa !98
  br label %_ZN9NCompress8NDeflate8NDecoder6CCoder5FlushEv.exit.sink.split

_ZN9NCompress8NDeflate8NDecoder6CCoder5FlushEv.exit.sink.split: ; preds = %_ZN9NCompress8NDeflate8NDecoder6CCoder5FlushEv.exit.sink.split.sink.split, %bb.n
end_hunk_8
begin_hunk_9_@_ZN9NCompress8NDeflate8NDecoder6CCoder14QueryInterfaceERK4GUIDPPv:bb.a
.sink.split:                                      ; preds = %_ZeqRK4GUIDS1_.exit68.thread, %_ZeqRK4GUIDS1_.exit68, %_ZeqRK4GUIDS1_.exit50, %_ZeqRK4GUIDS1_.exit32, %_ZeqRK4GUIDS1_.exit
  %.sink74 = phi i64 [ 24, %_ZeqRK4GUIDS1_.exit68 ], [ 16, %_ZeqRK4GUIDS1_.exit50 ], [ 8, %_ZeqRK4GUIDS1_.exit32 ], [ 8, %_ZeqRK4GUIDS1_.exit ], [ 32, %_ZeqRK4GUIDS1_.exit68.thread ]
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 %.sink74
  store ptr %i.ge, ptr %2, align 8, !tbaa !103
  %i.gf = load ptr, ptr %0, align 8, !tbaa !10
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
end_hunk_9
begin_hunk_10_@_ZN9NCompress8NDeflate8NDecoder6CCoderD2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN5NBitl12CBaseDecoderI9CInBufferED2Ev.exit, label %bb.c

end_hunk_10
begin_hunk_11_@_ZThn8_N9NCompress8NDeflate8NDecoder6CCoder7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(3474) %i.d) #15, !inline_history !104
  br label %_ZN9NCompress8NDeflate8NDecoder6CCoder7ReleaseEv.exit

_ZN9NCompress8NDeflate8NDecoder6CCoder7ReleaseEv.exit: ; preds = %bb.a, %bb.b
end_hunk_11
begin_hunk_12_@_ZThn8_N9NCompress8NDeflate8NDecoder6CCoderD0Ev
define linkonce_odr dso_local void @_ZThn8_N9NCompress8NDeflate8NDecoder6CCoderD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN9NCompress8NDeflate8NDecoder6CCoderD2Ev(ptr noundef nonnull align 8 dereferenceable(3474) %i.a) #15, !inline_history !105
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(3474) %i.a, i64 noundef 3480) #17, !inline_history !105
  ret void
}

end_hunk_12
begin_hunk_13_@_ZThn16_N9NCompress8NDeflate8NDecoder6CCoder7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(3474) %i.d) #15, !inline_history !104
  br label %_ZN9NCompress8NDeflate8NDecoder6CCoder7ReleaseEv.exit

_ZN9NCompress8NDeflate8NDecoder6CCoder7ReleaseEv.exit: ; preds = %bb.a, %bb.b
end_hunk_13
begin_hunk_14_@_ZThn16_N9NCompress8NDeflate8NDecoder6CCoderD0Ev
define linkonce_odr dso_local void @_ZThn16_N9NCompress8NDeflate8NDecoder6CCoderD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN9NCompress8NDeflate8NDecoder6CCoderD2Ev(ptr noundef nonnull align 8 dereferenceable(3474) %i.a) #15, !inline_history !105
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(3474) %i.a, i64 noundef 3480) #17, !inline_history !105
  ret void
}

end_hunk_14
begin_hunk_15_@_ZThn24_N9NCompress8NDeflate8NDecoder6CCoder7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(3474) %i.d) #15, !inline_history !104
  br label %_ZN9NCompress8NDeflate8NDecoder6CCoder7ReleaseEv.exit

_ZN9NCompress8NDeflate8NDecoder6CCoder7ReleaseEv.exit: ; preds = %bb.a, %bb.b
end_hunk_15
begin_hunk_16_@_ZThn24_N9NCompress8NDeflate8NDecoder6CCoderD0Ev
define linkonce_odr dso_local void @_ZThn24_N9NCompress8NDeflate8NDecoder6CCoderD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24 ; 2 uses
  tail call void @_ZN9NCompress8NDeflate8NDecoder6CCoderD2Ev(ptr noundef nonnull align 8 dereferenceable(3474) %i.a) #15, !inline_history !105
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(3474) %i.a, i64 noundef 3480) #17, !inline_history !105
  ret void
}

end_hunk_16
begin_hunk_17_@_ZThn32_N9NCompress8NDeflate8NDecoder6CCoder7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(3474) %i.d) #15, !inline_history !104
  br label %_ZN9NCompress8NDeflate8NDecoder6CCoder7ReleaseEv.exit

_ZN9NCompress8NDeflate8NDecoder6CCoder7ReleaseEv.exit: ; preds = %bb.a, %bb.b
end_hunk_17
begin_hunk_18_@_ZThn32_N9NCompress8NDeflate8NDecoder6CCoderD0Ev
define linkonce_odr dso_local void @_ZThn32_N9NCompress8NDeflate8NDecoder6CCoderD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  tail call void @_ZN9NCompress8NDeflate8NDecoder6CCoderD2Ev(ptr noundef nonnull align 8 dereferenceable(3474) %i.a) #15, !inline_history !105
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(3474) %i.a, i64 noundef 3480) #17, !inline_history !105
  ret void
}

end_hunk_18
begin_hunk_19_@llvm.umin.i32
!95 = !{!34, !18, i64 32}
!96 = !{!34, !14, i64 16}
!97 = !{!18, !18, i64 0}
!98 = !{!99, !5, i64 0}
!99 = !{!"_ZTS16CSystemException", !5, i64 0}
!100 = !{!35, !36, i64 0}
!101 = distinct !{null, null, null}
!102 = distinct !{ptr @_ZN9NCompress8NDeflate8NDecoder6CCoder15ReleaseInStreamEv, null, null, null}
!103 = !{!15, !15, i64 0}
!104 = !{ptr @_ZN9NCompress8NDeflate8NDecoder6CCoder7ReleaseEv}
!105 = !{ptr @_ZN9NCompress8NDeflate8NDecoder6CCoderD0Ev}
end_hunk_19
