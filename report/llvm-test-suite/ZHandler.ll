begin_hunk_0_@_ZN8NArchive2NZ8CHandler5CloseEv:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !33
  br label %_ZN9CMyComPtrI9IInStreamE7ReleaseEv.exit

end_hunk_0
begin_hunk_1_@_ZN8NArchive2NZ8CHandler7ExtractEPKjjiP23IArchiveExtractCallback:bb.a

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr null, ptr %5, align 8, !tbaa !36
  %.not78 = icmp ne i32 %3, 0                     ; 2 uses
  %i.o = zext i1 %.not78 to i32                   ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !27
end_hunk_1
begin_hunk_2_@_ZN8NArchive2NZ8CHandler7ExtractEPKjjiP23IArchiveExtractCallback:bb.a

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 0, ptr %i.ac, align 4, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV15CDummyOutStream, i64 16), ptr %i.ab, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !36
  %i.ae = load ptr, ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTV15CDummyOutStream, i64 24), align 8
  %i.af = invoke noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit unwind label %bb.z ; 0 uses

_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit: ; preds = %bb.p
  %i.ag = load ptr, ptr %5, align 8, !tbaa !36    ; 4 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %.noexc, label %bb.q

end_hunk_2
begin_hunk_3_@_ZN8NArchive2NZ8CHandler7ExtractEPKjjiP23IArchiveExtractCallback:bb.a
          to label %.noexc unwind label %bb.aa    ; 0 uses

.noexc:                                           ; preds = %bb.q, %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 3 uses
  %.not6.i.i = icmp eq ptr %i.al, null
  br i1 %.not6.i.i, label %bb.s, label %bb.r

end_hunk_3
begin_hunk_4_@_ZN8NArchive2NZ8CHandler7ExtractEPKjjiP23IArchiveExtractCallback:bb.a
          to label %bb.s unwind label %bb.aa      ; 0 uses

bb.s:                                             ; preds = %.noexc, %bb.r
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 0, ptr %i.aq, align 8, !tbaa !40
  %i.ar = load ptr, ptr %5, align 8, !tbaa !36    ; 3 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit, label %bb.t

end_hunk_4
begin_hunk_5_@_ZN8NArchive2NZ8CHandler7ExtractEPKjjiP23IArchiveExtractCallback:bb.a
          to label %.noexc95 unwind label %bb.aa  ; 0 uses

.noexc95:                                         ; preds = %bb.t
  store ptr null, ptr %5, align 8, !tbaa !36
  br label %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit

_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit: ; preds = %.noexc95, %bb.s
end_hunk_5
begin_hunk_6_@_ZN8NArchive2NZ8CHandler7ExtractEPKjjiP23IArchiveExtractCallback:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i32 0, ptr %i.bu, align 4, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN9NCompress2NZ8CDecoderE, i64 16), ptr %i.bs, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9NCompress2NZ8CDecoderE, i64 88), ptr %i.bt, align 8, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 52
  store i32 0, ptr %i.bw, align 4, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bv, i8 0, i64 25, i1 false)
  %i.bx = load ptr, ptr getelementptr inbounds nuw inrange(-24, 48) (i8, ptr @_ZTVN9NCompress2NZ8CDecoderE, i64 24), align 8
  %i.by = invoke noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
end_hunk_6
begin_hunk_7_@_ZN8NArchive2NZ8CHandler7ExtractEPKjjiP23IArchiveExtractCallback:bb.a

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit:   ; preds = %bb.au, %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit, %bb.j
  %.6.ph = phi i32 [ %.5, %bb.au ], [ %.5, %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit ], [ %i.s, %bb.j ] ; 2 uses
  %.pr = load ptr, ptr %5, align 8, !tbaa !36     ; 3 uses
  %.not.i113 = icmp eq ptr %.pr, null
  br i1 %.not.i113, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit114, label %bb.ay

end_hunk_7
begin_hunk_8_@_ZN8NArchive2NZ8CHandler7ExtractEPKjjiP23IArchiveExtractCallback:bb.a

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit112: ; preds = %bb.z, %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit110, %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit110.thread, %bb.y, %bb.m, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.t, %bb.k ], [ %i.w, %bb.m ], [ %i.bk, %bb.y ], [ %.pn.pn.pn.pn.pn.pn140, %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit110.thread ], [ %i.bl, %bb.z ], [ %.pn.pn.pn, %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit110 ]
  %i.ek = load ptr, ptr %5, align 8, !tbaa !36    ; 3 uses
  %.not.i115 = icmp eq ptr %i.ek, null
  br i1 %.not.i115, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit116, label %bb.ba

end_hunk_8
begin_hunk_9_@_ZN8NArchive2NZ8CHandler14QueryInterfaceERK4GUIDPPv:bb.a
  br i1 %.not.15.i21.not, label %_ZeqRK4GUIDS1_.exit23.thread.sink.split, label %_ZeqRK4GUIDS1_.exit23.thread

_ZeqRK4GUIDS1_.exit23.thread.sink.split:          ; preds = %_ZeqRK4GUIDS1_.exit23, %_ZeqRK4GUIDS1_.exit
  store ptr %0, ptr %2, align 8, !tbaa !48
  %i.cp = load ptr, ptr %0, align 8, !tbaa !27
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
end_hunk_9
begin_hunk_10_@_ZN8NArchive2NZ8CHandler6AddRefEv
define linkonce_odr dso_local noundef i32 @_ZN8NArchive2NZ8CHandler6AddRefEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !39
  ret i32 %i.c
}

end_hunk_10
begin_hunk_11_@_ZN8NArchive2NZ8CHandler7ReleaseEv
define linkonce_odr dso_local noundef i32 @_ZN8NArchive2NZ8CHandler7ReleaseEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !39
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

end_hunk_11
begin_hunk_12_@_ZN8NArchive2NZ8CHandlerD0Ev:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN8NArchive2NZ8CHandlerD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #17
  unreachable

_ZN8NArchive2NZ8CHandlerD2Ev.exit:                ; preds = %bb.a, %bb.b
end_hunk_12
begin_hunk_13_@_ZN8NArchive2NZL9CreateArcEv:bb.a
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 4, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN8NArchive2NZ8CHandlerE, i64 16), ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !33
end_hunk_13
begin_hunk_14_@llvm.memset.p0.i64
!33 = !{!24, !25, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 omnipotent char", !11, i64 0}
!36 = !{!37, !38, i64 0}
!37 = !{!"_ZTS9CMyComPtrI20ISequentialOutStreamE", !38, i64 0}
!38 = !{!"p1 _ZTS20ISequentialOutStream", !11, i64 0}
!39 = !{!23, !5, i64 0}
!40 = !{!41, !26, i64 24}
!41 = !{!"_ZTS15CDummyOutStream", !42, i64 0, !23, i64 8, !37, i64 16, !26, i64 24}
!42 = !{!"_ZTS20ISequentialOutStream", !22, i64 0}
!43 = !{!44, !5, i64 52}
!44 = !{!"_ZTSN9NCompress2NZ8CDecoderE", !45, i64 0, !46, i64 8, !23, i64 16, !47, i64 24, !35, i64 32, !35, i64 40, !6, i64 48, !5, i64 52}
!45 = !{!"_ZTS14ICompressCoder", !22, i64 0}
!46 = !{!"_ZTS30ICompressSetDecoderProperties2", !22, i64 0}
!47 = !{!"p1 short", !11, i64 0}
!48 = !{!11, !11, i64 0}
end_hunk_14
