inline.NumInlined: 54
inline.NumDeleted: 32
begin_hunk_0_@_ZN9NCompress8NImplode8NDecoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo:bb.a
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = invoke noundef i32 %i.ky(ptr noundef nonnull align 8 dereferenceable(8) %i.kv)
          to label %.noexc.i unwind label %bb.ax  ; 0 uses

.noexc.i:                                         ; preds = %bb.av
  store ptr null, ptr %i.ku, align 8, !tbaa !21
end_hunk_0
begin_hunk_1_@_ZN9NCompress8NImplode8NDecoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo:bb.a
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = invoke noundef i32 %i.le(ptr noundef nonnull align 8 dereferenceable(8) %i.lb)
          to label %.noexc1.i unwind label %bb.ax ; 0 uses

.noexc1.i:                                        ; preds = %bb.aw
  store ptr null, ptr %i.la, align 8, !tbaa !23
end_hunk_1
begin_hunk_2_@_ZN9NCompress8NImplode8NDecoder14CCoderReleaserD2Ev:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc unwind label %bb.d     ; 0 uses

.noexc:                                           ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !21
end_hunk_2
begin_hunk_3_@_ZN9NCompress8NImplode8NDecoder14CCoderReleaserD2Ev:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc1 unwind label %bb.d    ; 0 uses

.noexc1:                                          ; preds = %bb.c
  store ptr null, ptr %i.h, align 8, !tbaa !23
end_hunk_3
begin_hunk_4_@_ZN9NCompress8NImplode8NDecoder6CCoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo:bb.a
  br i1 %i.f, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 4, !tbaa !76
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
end_hunk_4
begin_hunk_5_@_ZN9NCompress8NImplode8NDecoder6CCoder21SetDecoderProperties2EPKhj:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.lobit = lshr exact i32 %i.d, 1
  %i.f = trunc nuw nsw i32 %.lobit to i8
  store i8 %i.f, ptr %i.e, align 8, !tbaa !78
  %i.g = select i1 %.not, i32 6, i32 7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 628
  store i32 %i.g, ptr %i.h, align 4, !tbaa !60
end_hunk_5
begin_hunk_6_@_ZThn8_N9NCompress8NImplode8NDecoder6CCoder21SetDecoderProperties2EPKhj:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 616
  %.lobit.i = lshr exact i32 %i.d, 1
  %i.f = trunc nuw nsw i32 %.lobit.i to i8
  store i8 %i.f, ptr %i.e, align 8, !tbaa !78
  %i.g = select i1 %.not.i, i32 6, i32 7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 620
  store i32 %i.g, ptr %i.h, align 4, !tbaa !60
end_hunk_6
begin_hunk_7_@_ZN9NCompress8NImplode8NDecoder6CCoder14QueryInterfaceERK4GUIDPPv:bb.a

_ZeqRK4GUIDS1_.exit23.thread.sink.split:          ; preds = %_ZeqRK4GUIDS1_.exit23, %_ZeqRK4GUIDS1_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cp, ptr %2, align 8, !tbaa !79
  %i.cq = load ptr, ptr %0, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
end_hunk_7
begin_hunk_8_@_ZThn8_N9NCompress8NImplode8NDecoder6CCoder7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(636) %i.d) #15, !inline_history !80
  br label %_ZN9NCompress8NImplode8NDecoder6CCoder7ReleaseEv.exit

_ZN9NCompress8NImplode8NDecoder6CCoder7ReleaseEv.exit: ; preds = %bb.a, %bb.b
end_hunk_8
begin_hunk_9_@_ZThn8_N9NCompress8NImplode8NDecoder6CCoderD0Ev
define linkonce_odr dso_local void @_ZThn8_N9NCompress8NImplode8NDecoder6CCoderD0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN9NCompress8NImplode8NDecoder6CCoderD2Ev(ptr noundef nonnull align 8 dereferenceable(636) %i.a) #15, !inline_history !81
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(636) %i.a, i64 noundef 640) #18, !inline_history !81
  ret void
}

end_hunk_9
begin_hunk_10_@llvm.memset.p0.i64
!73 = distinct !{!73, !39, !67}
!74 = distinct !{!74, !39}
!75 = distinct !{!75, !39}
!76 = !{!77, !5, i64 0}
!77 = !{!"_ZTS16CSystemException", !5, i64 0}
!78 = !{!45, !19, i64 624}
!79 = !{!15, !15, i64 0}
!80 = !{ptr @_ZN9NCompress8NImplode8NDecoder6CCoder7ReleaseEv}
!81 = !{ptr @_ZN9NCompress8NImplode8NDecoder6CCoderD0Ev}
end_hunk_10
