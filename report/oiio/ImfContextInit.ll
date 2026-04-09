inline.NumInlined: 17
inline.NumDeleted: 11
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_518ContextInitializer15setOutputStreamEPNS_7OStreamE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc unwind label %bb.c, !inline_history !30

.noexc:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.f, ptr %i.g, align 8, !tbaa !31
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_514ostream_holderC2EPNS_7OStreamE.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_514ostream_holderC2EPNS_7OStreamE.exit: ; preds = %.noexc, %bb.a
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_5L13ostream_writeEPK19_priv_exr_context_tPvPKvmmPFiS2_iPKczE:bb.a

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31
  %.not = icmp eq i64 %4, %i.e
  br i1 %.not, label %bb.j, label %bb.e

end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_5L13ostream_writeEPK19_priv_exr_context_tPvPKvmmPFiS2_iPKczE:bb.a
          to label %bb.g unwind label %bb.i       ; 2 uses

bb.g:                                             ; preds = %bb.f
  store i64 %i.o, ptr %i.d, align 8, !tbaa !31
  %.not38 = icmp eq i64 %4, %i.o
  br i1 %.not38, label %bb.j, label %bb.h

end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_5L13ostream_writeEPK19_priv_exr_context_tPvPKvmmPFiS2_iPKczE:bb.a
          to label %bb.l unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %bb.k
  store i64 %i.ab, ptr %i.d, align 8, !tbaa !31
  %i.ac = sub i64 %i.ab, %4
  br label %bb.q

end_hunk_3
begin_hunk_4_@pthread_mutex_unlock
!27 = !{!28, !29, i64 48}
!28 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_514ostream_holderE", !9, i64 0, !16, i64 40, !29, i64 48}
!29 = !{!"p1 _ZTSN27OpenImageIO_v3_1_Imf__3_3_57OStreamE", !12, i64 0}
!30 = distinct !{null}
!31 = !{!28, !16, i64 40}
end_hunk_4
