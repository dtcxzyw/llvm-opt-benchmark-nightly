Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/s3_pkt?download=true
inline.NumInlined: 147
inline.NumDeleted: 91
begin_hunk_0_@_ZN4bssl27tls_open_change_cipher_specEP6ssl_stPmPhNS_4SpanIhEE:bb.a
  %.not10 = icmp eq i64 %i.e, 1
  br i1 %.not10, label %_ZNK4bssl4SpanIhEixEm.exit, label %bb.e

_ZNK4bssl4SpanIhEixEm.exit:                       ; preds = %bb.d
  %i.f = load ptr, ptr %5, align 8, !tbaa !162    ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !161
  %.not11 = icmp eq i8 %i.g, 1
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4bssl4SpanIhEixEm.exit, %bb.d
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str, i32 noundef 279) #6
  store i8 47, ptr %2, align 1, !tbaa !161
  br label %bb.g

bb.f:                                             ; preds = %_ZNK4bssl4SpanIhEixEm.exit
  call void @_ZN4bssl19ssl_do_msg_callbackEPK6ssl_stiiNS_4SpanIKhEE(ptr noundef %0, i32 noundef 0, i32 noundef 20, ptr nonnull %i.f, i64 1) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.f ], [ 4, %bb.c ], [ 4, %bb.e ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare void @_ZN4bssl19ssl_do_msg_callbackEPK6ssl_stiiNS_4SpanIKhEE(ptr noundef, i32 noundef, i32 noundef, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ERR_save_state() #6       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !102
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 194, ptr noundef nonnull @.str, i32 noundef 308) #6
  br label %_ZN4bssl19ssl_send_alert_implEP6ssl_stii.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %1, 1
  %i.g = icmp eq i32 %2, 0
  %or.cond.i = and i1 %i.f, %i.g
  %..i = select i1 %or.cond.i, i32 1, i32 2
  store i32 %..i, ptr %i.d, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 300 ; 2 uses
  %i.i = load i16, ptr %i.h, align 4
  %i.j = or i16 %i.i, 2048
  store i16 %i.j, ptr %i.h, align 4
  %i.k = trunc i32 %1 to i8
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 669
  store i8 %i.k, ptr %i.m, align 1, !tbaa !161
  %i.n = trunc i32 %2 to i8
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 670
  store i8 %i.n, ptr %i.p, align 1, !tbaa !161
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 188
  %i.s = load i32, ptr %i.r, align 4, !tbaa !160
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.d, label %_ZN4bssl19ssl_send_alert_implEP6ssl_stii.exit

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %0, align 8, !tbaa !164
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !166
  %i.x = tail call noundef i32 %i.w(ptr noundef nonnull %0) #6, !inline_history !200 ; 0 uses
  br label %_ZN4bssl19ssl_send_alert_implEP6ssl_stii.exit

_ZN4bssl19ssl_send_alert_implEP6ssl_stii.exit:    ; preds = %bb.b, %bb.c, %bb.d
  tail call void @ERR_restore_state(ptr noundef %i.a) #6
  %.not.i2 = icmp eq ptr %i.a, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrI17err_save_state_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4bssl19ssl_send_alert_implEP6ssl_stii.exit
  tail call void @ERR_SAVE_STATE_free(ptr noundef nonnull %i.a) #6
  br label %_ZNSt10unique_ptrI17err_save_state_stN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI17err_save_state_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZN4bssl19ssl_send_alert_implEP6ssl_stii.exit, %bb.e
  ret void
}

declare ptr @ERR_save_state() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4bssl19ssl_send_alert_implEP6ssl_stii(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !102
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 194, ptr noundef nonnull @.str, i32 noundef 308) #6
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %1, 1
  %i.f = icmp eq i32 %2, 0
  %or.cond = and i1 %i.e, %i.f
  %. = select i1 %or.cond, i32 1, i32 2
  store i32 %., ptr %i.c, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 300 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4
  %i.i = or i16 %i.h, 2048
  store i16 %i.i, ptr %i.g, align 4
  %i.j = trunc i32 %1 to i8
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 669
  store i8 %i.j, ptr %i.l, align 1, !tbaa !161
  %i.m = trunc i32 %2 to i8
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 670
  store i8 %i.m, ptr %i.o, align 1, !tbaa !161
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 188
  %i.r = load i32, ptr %i.q, align 4, !tbaa !160
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8, !tbaa !164
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull %0) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.w, %bb.d ], [ -1, %bb.c ]
  ret i32 %.0
}

declare void @ERR_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -2147483648, 2) i32 @_ZN4bssl18tls_dispatch_alertEP6ssl_st(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !203
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.i = load i32, ptr %i.h, align 8, !tbaa !204
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 670
  %i.k = load i8, ptr %i.j, align 2, !tbaa !161
  %i.l = tail call noundef i32 %i.e(ptr noundef nonnull %0, i32 noundef %i.i, i8 noundef zeroext %i.k) #6
  %.not20 = icmp eq i32 %i.l, 0
  br i1 %.not20, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 298, ptr noundef nonnull @.str, i32 noundef 337) #6
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 669
  %i.p = call fastcc noundef i32 @_ZN4bsslL12do_tls_writeEP6ssl_stPmhNS_4SpanIKhEE(ptr noundef nonnull %0, ptr noundef %i.a, i8 noundef zeroext 21, ptr nonnull %i.o, i64 2) ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 300 ; 2 uses
  %i.u = load i16, ptr %i.t, align 4
  %i.v = and i16 %i.u, -2049
  store i16 %i.v, ptr %i.t, align 4
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !62   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 669
  %i.y = load i8, ptr %i.x, align 1, !tbaa !161
  %i.z = icmp eq i8 %i.y, 2
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !205
  %i.ac = tail call i32 @BIO_flush(ptr noundef %i.ab) #6 ; 0 uses
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !62
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = phi ptr [ %.pre, %bb.f ], [ %i.w, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 669
  tail call void @_ZN4bssl19ssl_do_msg_callbackEPK6ssl_stiiNS_4SpanIKhEE(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 21, ptr nonnull %i.ae, i64 2) #6
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 669
  %1 = load i16, ptr %i.ag, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %i.ah = zext i16 %2 to i32
  tail call void @_ZN4bssl20ssl_do_info_callbackEPK6ssl_stii(ptr noundef nonnull %0, i32 noundef 16392, i32 noundef %i.ah) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.c
  %.1 = phi i32 [ 1, %bb.g ], [ 0, %bb.c ], [ %i.p, %bb.d ]
  ret i32 %.1
}

declare i32 @BIO_flush(ptr noundef) local_unnamed_addr #1

declare void @_ZN4bssl20ssl_do_info_callbackEPK6ssl_stii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4bssl22ssl_write_buffer_flushEP6ssl_st(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4bssl25tls_flush_pending_hs_dataEP6ssl_st(ptr noundef) local_unnamed_addr #1

declare i64 @SSL_max_seal_overhead(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4bssl9SSLBuffer9EnsureCapEmm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef, i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZN4bssl25ssl_seal_align_prefix_lenEPK6ssl_st(ptr noundef) local_unnamed_addr #1

declare void @_ZN4bssl9SSLBuffer8DidWriteEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4bssl15tls_seal_recordEP6ssl_stPhPmmhPKhm(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @BUF_MEM_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare void @ERR_SAVE_STATE_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"bool", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTSN4bssl19SSL_PROTOCOL_METHODE", !9, i64 0}
!11 = !{!"p1 _ZTSN4bssl10SSL_CONFIGE", !9, i64 0}
!12 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl10SSL_CONFIGELb0EE", !11, i64 0}
!13 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !12, i64 0}
!14 = !{!"_ZTSSt5tupleIJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !13, i64 0}
!15 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !14, i64 0}
!16 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl10SSL_CONFIGENS0_8internal7DeleterELb1ELb1EE", !15, i64 0}
!17 = !{!"_ZTSSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !16, i64 0}
!18 = !{!"short", !4, i64 0}
!19 = !{!"long", !4, i64 0}
!20 = !{!"p1 _ZTS6bio_st", !9, i64 0}
!21 = !{!"_ZTSSt10_Head_baseILm0EP6bio_stLb0EE", !20, i64 0}
!22 = !{!"_ZTSSt11_Tuple_implILm0EJP6bio_stN4bssl8internal7DeleterEEE", !21, i64 0}
!23 = !{!"_ZTSSt5tupleIJP6bio_stN4bssl8internal7DeleterEEE", !22, i64 0}
!24 = !{!"_ZTSSt15__uniq_ptr_implI6bio_stN4bssl8internal7DeleterEE", !23, i64 0}
!25 = !{!"_ZTSSt15__uniq_ptr_dataI6bio_stN4bssl8internal7DeleterELb1ELb1EE", !24, i64 0}
!26 = !{!"_ZTSSt10unique_ptrI6bio_stN4bssl8internal7DeleterEE", !25, i64 0}
!27 = !{!"p1 _ZTSN4bssl10SSL3_STATEE", !9, i64 0}
!28 = !{!"p1 _ZTSN4bssl11DTLS1_STATEE", !9, i64 0}
!29 = !{!"p1 _ZTS14ssl_session_st", !9, i64 0}
!30 = !{!"_ZTSSt10_Head_baseILm0EP14ssl_session_stLb0EE", !29, i64 0}
!31 = !{!"_ZTSSt11_Tuple_implILm0EJP14ssl_session_stN4bssl8internal7DeleterEEE", !30, i64 0}
!32 = !{!"_ZTSSt5tupleIJP14ssl_session_stN4bssl8internal7DeleterEEE", !31, i64 0}
!33 = !{!"_ZTSSt15__uniq_ptr_implI14ssl_session_stN4bssl8internal7DeleterEE", !32, i64 0}
!34 = !{!"_ZTSSt15__uniq_ptr_dataI14ssl_session_stN4bssl8internal7DeleterELb1ELb1EE", !33, i64 0}
!35 = !{!"_ZTSSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE", !34, i64 0}
!36 = !{!"p1 _ZTS19stack_st_SSL_CIPHER", !9, i64 0}
!37 = !{!"_ZTSSt10_Head_baseILm0EP19stack_st_SSL_CIPHERLb0EE", !36, i64 0}
!38 = !{!"_ZTSSt11_Tuple_implILm0EJP19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEE", !37, i64 0}
!39 = !{!"_ZTSSt5tupleIJP19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEE", !38, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_implI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE", !39, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_dataI19stack_st_SSL_CIPHERN4bssl8internal7DeleterELb1ELb1EE", !40, i64 0}
!42 = !{!"_ZTSSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE", !41, i64 0}
!43 = !{!"p1 omnipotent char", !9, i64 0}
!44 = !{!"_ZTSSt10_Head_baseILm0EPcLb0EE", !43, i64 0}
!45 = !{!"_ZTSSt11_Tuple_implILm0EJPcN4bssl8internal7DeleterEEE", !44, i64 0}
!46 = !{!"_ZTSSt5tupleIJPcN4bssl8internal7DeleterEEE", !45, i64 0}
!47 = !{!"_ZTSSt15__uniq_ptr_implIcN4bssl8internal7DeleterEE", !46, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_dataIcN4bssl8internal7DeleterELb1ELb1EE", !47, i64 0}
!49 = !{!"_ZTSSt10unique_ptrIcN4bssl8internal7DeleterEE", !48, i64 0}
!50 = !{!"p1 _ZTS10ssl_ctx_st", !9, i64 0}
!51 = !{!"_ZTSSt10_Head_baseILm0EP10ssl_ctx_stLb0EE", !50, i64 0}
!52 = !{!"_ZTSSt11_Tuple_implILm0EJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !51, i64 0}
!53 = !{!"_ZTSSt5tupleIJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !52, i64 0}
!54 = !{!"_ZTSSt15__uniq_ptr_implI10ssl_ctx_stN4bssl8internal7DeleterEE", !53, i64 0}
!55 = !{!"_ZTSSt15__uniq_ptr_dataI10ssl_ctx_stN4bssl8internal7DeleterELb1ELb1EE", !54, i64 0}
!56 = !{!"_ZTSSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEE", !55, i64 0}
!57 = !{!"p1 _ZTS13stack_st_void", !9, i64 0}
!58 = !{!"_ZTS17crypto_ex_data_st", !57, i64 0}
!59 = !{!"p1 _ZTS18ssl_quic_method_st", !9, i64 0}
!60 = !{!"_ZTS22ssl_renegotiate_mode_t", !4, i64 0}
!61 = !{!"_ZTS6ssl_st", !10, i64 0, !17, i64 8, !18, i64 16, !18, i64 18, !19, i64 24, !26, i64 32, !26, i64 40, !9, i64 48, !27, i64 56, !28, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !5, i64 104, !35, i64 112, !42, i64 120, !49, i64 128, !18, i64 136, !9, i64 144, !56, i64 152, !56, i64 160, !58, i64 168, !19, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !49, i64 200, !59, i64 208, !60, i64 216, !8, i64 220, !8, i64 220, !8, i64 220, !8, i64 220, !8, i64 220}
!62 = !{!61, !27, i64 56}
!63 = !{!"_ZTSN4bssl9SSLBufferE", !43, i64 0, !8, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !4, i64 52, !5, i64 60}
!64 = !{!"_ZTSN4bssl4SpanIhEE", !43, i64 0, !19, i64 8}
!65 = !{!"_ZTSN4bssl4SpanIKhEE", !43, i64 0, !19, i64 8}
!66 = !{!"_ZTSN4bssl14ssl_shutdown_tE", !4, i64 0}
!67 = !{!"p1 _ZTS17err_save_state_st", !9, i64 0}
!68 = !{!"_ZTSSt10_Head_baseILm0EP17err_save_state_stLb0EE", !67, i64 0}
!69 = !{!"_ZTSSt11_Tuple_implILm0EJP17err_save_state_stN4bssl8internal7DeleterEEE", !68, i64 0}
!70 = !{!"_ZTSSt5tupleIJP17err_save_state_stN4bssl8internal7DeleterEEE", !69, i64 0}
!71 = !{!"_ZTSSt15__uniq_ptr_implI17err_save_state_stN4bssl8internal7DeleterEE", !70, i64 0}
!72 = !{!"_ZTSSt15__uniq_ptr_dataI17err_save_state_stN4bssl8internal7DeleterELb1ELb1EE", !71, i64 0}
!73 = !{!"_ZTSSt10unique_ptrI17err_save_state_stN4bssl8internal7DeleterEE", !72, i64 0}
!74 = !{!"_ZTS22ssl_encryption_level_t", !4, i64 0}
!75 = !{!"_ZTSN4bssl16ssl_ech_status_tE", !4, i64 0}
!76 = !{!"p1 _ZTS10buf_mem_st", !9, i64 0}
!77 = !{!"_ZTSSt10_Head_baseILm0EP10buf_mem_stLb0EE", !76, i64 0}
!78 = !{!"_ZTSSt11_Tuple_implILm0EJP10buf_mem_stN4bssl8internal7DeleterEEE", !77, i64 0}
!79 = !{!"_ZTSSt5tupleIJP10buf_mem_stN4bssl8internal7DeleterEEE", !78, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_implI10buf_mem_stN4bssl8internal7DeleterEE", !79, i64 0}
!81 = !{!"_ZTSSt15__uniq_ptr_dataI10buf_mem_stN4bssl8internal7DeleterELb1ELb1EE", !80, i64 0}
!82 = !{!"_ZTSSt10unique_ptrI10buf_mem_stN4bssl8internal7DeleterEE", !81, i64 0}
!83 = !{!"_ZTS23ssl_early_data_reason_t", !4, i64 0}
!84 = !{!"p1 _ZTSN4bssl14SSLAEADContextE", !9, i64 0}
!85 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl14SSLAEADContextELb0EE", !84, i64 0}
!86 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl14SSLAEADContextENS0_8internal7DeleterEEE", !85, i64 0}
!87 = !{!"_ZTSSt5tupleIJPN4bssl14SSLAEADContextENS0_8internal7DeleterEEE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl14SSLAEADContextENS0_8internal7DeleterEE", !87, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl14SSLAEADContextENS0_8internal7DeleterELb1ELb1EE", !88, i64 0}
!90 = !{!"_ZTSSt10unique_ptrIN4bssl14SSLAEADContextENS0_8internal7DeleterEE", !89, i64 0}
!91 = !{!"p1 _ZTSN4bssl13SSL_HANDSHAKEE", !9, i64 0}
!92 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl13SSL_HANDSHAKEELb0EE", !91, i64 0}
!93 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterEEE", !92, i64 0}
!94 = !{!"_ZTSSt5tupleIJPN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterEEE", !93, i64 0}
!95 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterEE", !94, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterELb1ELb1EE", !95, i64 0}
!97 = !{!"_ZTSSt10unique_ptrIN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterEE", !96, i64 0}
!98 = !{!"p1 _ZTS18stack_st_X509_NAME", !9, i64 0}
!99 = !{!"_ZTSN4bssl5ArrayIhEE", !43, i64 0, !19, i64 8}
!100 = !{!"p1 _ZTS26srtp_protection_profile_st", !9, i64 0}
!101 = !{!"_ZTSN4bssl10SSL3_STATEE", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 48, !63, i64 80, !63, i64 144, !64, i64 208, !19, i64 224, !65, i64 232, !4, i64 248, !66, i64 252, !66, i64 256, !73, i64 264, !5, i64 272, !5, i64 276, !5, i64 280, !74, i64 284, !74, i64 288, !18, i64 292, !4, i64 294, !4, i64 295, !75, i64 296, !8, i64 300, !8, i64 300, !8, i64 300, !8, i64 300, !8, i64 300, !8, i64 300, !8, i64 300, !8, i64 300, !8, i64 301, !8, i64 301, !8, i64 301, !8, i64 301, !8, i64 301, !8, i64 301, !8, i64 301, !82, i64 304, !82, i64 312, !82, i64 320, !5, i64 328, !5, i64 332, !83, i64 336, !90, i64 344, !90, i64 352, !97, i64 360, !98, i64 368, !99, i64 376, !4, i64 392, !4, i64 440, !4, i64 488, !4, i64 536, !4, i64 537, !4, i64 538, !4, i64 539, !4, i64 603, !4, i64 604, !4, i64 605, !4, i64 669, !35, i64 672, !99, i64 680, !99, i64 696, !49, i64 712, !4, i64 720, !99, i64 784, !100, i64 800}
!102 = !{!101, !66, i64 256}
!103 = !{!91, !91, i64 0}
!104 = !{!"p1 _ZTS6ssl_st", !9, i64 0}
!105 = !{!"_ZTSN4bssl13ssl_hs_wait_tE", !4, i64 0}
!106 = !{!"p1 _ZTS9env_md_st", !9, i64 0}
!107 = !{!"p1 _ZTS15evp_pkey_ctx_st", !9, i64 0}
!108 = !{!"p1 _ZTS15evp_md_pctx_ops", !9, i64 0}
!109 = !{!"_ZTS13env_md_ctx_st", !106, i64 0, !9, i64 8, !9, i64 16, !107, i64 24, !108, i64 32, !19, i64 40}
!110 = !{!"_ZTSN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEEE", !109, i64 0}
!111 = !{!"_ZTSN4bssl13SSLTranscriptE", !82, i64 0, !110, i64 8}
!112 = !{!"p1 short", !9, i64 0}
!113 = !{!"_ZTSN4bssl5ArrayItEE", !112, i64 0, !19, i64 8}
!114 = !{!"p1 _ZTS15evp_hpke_kem_st", !9, i64 0}
!115 = !{!"p1 _ZTS16evp_hpke_aead_st", !9, i64 0}
!116 = !{!"p1 _ZTS15evp_hpke_kdf_st", !9, i64 0}
!117 = !{!"p1 _ZTS11evp_aead_st", !9, i64 0}
!118 = !{!"_ZTS15evp_aead_ctx_st", !117, i64 0, !4, i64 8, !4, i64 576, !4, i64 577}
!119 = !{!"_ZTS15evp_hpke_ctx_st", !114, i64 0, !115, i64 8, !116, i64 16, !118, i64 24, !4, i64 608, !4, i64 632, !19, i64 696, !5, i64 704}
!120 = !{!"_ZTSN4bssl8internal14StackAllocatedI15evp_hpke_ctx_stvXadL_Z17EVP_HPKE_CTX_zeroEEXadL_Z20EVP_HPKE_CTX_cleanupEEEE", !119, i64 0}
!121 = !{!"p1 _ZTS22stack_st_CRYPTO_BUFFER", !9, i64 0}
!122 = !{!"_ZTSSt10_Head_baseILm0EP22stack_st_CRYPTO_BUFFERLb0EE", !121, i64 0}
!123 = !{!"_ZTSSt11_Tuple_implILm0EJP22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEEE", !122, i64 0}
!124 = !{!"_ZTSSt5tupleIJP22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEEE", !123, i64 0}
!125 = !{!"_ZTSSt15__uniq_ptr_implI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE", !124, i64 0}
!126 = !{!"_ZTSSt15__uniq_ptr_dataI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterELb1ELb1EE", !125, i64 0}
!127 = !{!"_ZTSSt10unique_ptrI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE", !126, i64 0}
!128 = !{!"p1 _ZTS11evp_pkey_st", !9, i64 0}
!129 = !{!"_ZTSSt10_Head_baseILm0EP11evp_pkey_stLb0EE", !128, i64 0}
!130 = !{!"_ZTSSt11_Tuple_implILm0EJP11evp_pkey_stN4bssl8internal7DeleterEEE", !129, i64 0}
!131 = !{!"_ZTSSt5tupleIJP11evp_pkey_stN4bssl8internal7DeleterEEE", !130, i64 0}
!132 = !{!"_ZTSSt15__uniq_ptr_implI11evp_pkey_stN4bssl8internal7DeleterEE", !131, i64 0}
!133 = !{!"_ZTSSt15__uniq_ptr_dataI11evp_pkey_stN4bssl8internal7DeleterELb1ELb1EE", !132, i64 0}
!134 = !{!"_ZTSSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEE", !133, i64 0}
!135 = !{!"p1 _ZTS15ssl_ech_keys_st", !9, i64 0}
!136 = !{!"_ZTSSt10_Head_baseILm0EP15ssl_ech_keys_stLb0EE", !135, i64 0}
!137 = !{!"_ZTSSt11_Tuple_implILm0EJP15ssl_ech_keys_stN4bssl8internal7DeleterEEE", !136, i64 0}
!138 = !{!"_ZTSSt5tupleIJP15ssl_ech_keys_stN4bssl8internal7DeleterEEE", !137, i64 0}
!139 = !{!"_ZTSSt15__uniq_ptr_implI15ssl_ech_keys_stN4bssl8internal7DeleterEE", !138, i64 0}
!140 = !{!"_ZTSSt15__uniq_ptr_dataI15ssl_ech_keys_stN4bssl8internal7DeleterELb1ELb1EE", !139, i64 0}
!141 = !{!"_ZTSSt10unique_ptrI15ssl_ech_keys_stN4bssl8internal7DeleterEE", !140, i64 0}
!142 = !{!"p1 _ZTSN4bssl9ECHConfigE", !9, i64 0}
!143 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl9ECHConfigELb0EE", !142, i64 0}
!144 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl9ECHConfigENS0_8internal7DeleterEEE", !143, i64 0}
!145 = !{!"_ZTSSt5tupleIJPN4bssl9ECHConfigENS0_8internal7DeleterEEE", !144, i64 0}
!146 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl9ECHConfigENS0_8internal7DeleterEE", !145, i64 0}
!147 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl9ECHConfigENS0_8internal7DeleterELb1ELb1EE", !146, i64 0}
!148 = !{!"_ZTSSt10unique_ptrIN4bssl9ECHConfigENS0_8internal7DeleterEE", !147, i64 0}
!149 = !{!"p1 _ZTS13ssl_cipher_st", !9, i64 0}
!150 = !{!"p1 _ZTSN4bssl19SSL_HANDSHAKE_HINTSE", !9, i64 0}
!151 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl19SSL_HANDSHAKE_HINTSELb0EE", !150, i64 0}
!152 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEEE", !151, i64 0}
!153 = !{!"_ZTSSt5tupleIJPN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEEE", !152, i64 0}
!154 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEE", !153, i64 0}
!155 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterELb1ELb1EE", !154, i64 0}
!156 = !{!"_ZTSSt10unique_ptrIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEE", !155, i64 0}
!157 = !{!"_ZTSN4bssl13SSL_HANDSHAKEE", !104, i64 0, !11, i64 8, !105, i64 16, !5, i64 20, !5, i64 24, !18, i64 28, !18, i64 30, !18, i64 32, !19, i64 40, !4, i64 48, !4, i64 96, !4, i64 144, !4, i64 192, !4, i64 240, !4, i64 288, !4, i64 336, !4, i64 384, !5, i64 388, !4, i64 392, !73, i64 400, !4, i64 408, !111, i64 424, !111, i64 480, !4, i64 536, !99, i64 568, !99, i64 584, !99, i64 600, !99, i64 616, !99, i64 632, !99, i64 648, !99, i64 664, !113, i64 680, !113, i64 696, !113, i64 712, !99, i64 728, !18, i64 744, !120, i64 752, !99, i64 1464, !49, i64 1480, !127, i64 1488, !99, i64 1496, !134, i64 1512, !134, i64 1520, !35, i64 1528, !35, i64 1536, !141, i64 1544, !148, i64 1552, !149, i64 1560, !99, i64 1568, !156, i64 1584, !8, i64 1592, !8, i64 1592, !8, i64 1592, !8, i64 1592, !8, i64 1592, !8, i64 1592, !8, i64 1592, !8, i64 1592, !8, i64 1593, !8, i64 1593, !8, i64 1593, !8, i64 1593, !8, i64 1593, !8, i64 1593, !8, i64 1593, !8, i64 1593, !8, i64 1594, !8, i64 1594, !8, i64 1594, !8, i64 1594, !8, i64 1594, !8, i64 1594, !8, i64 1594, !8, i64 1594, !8, i64 1595, !18, i64 1596, !18, i64 1598, !18, i64 1600, !4, i64 1602, !4, i64 1603, !4, i64 1635, !4, i64 1636}
!158 = !{!19, !19, i64 0}
!159 = !{!61, !5, i64 188}
!160 = !{!63, !5, i64 44}
!161 = !{!4, !4, i64 0}
!162 = !{!64, !43, i64 0}
!163 = !{!64, !19, i64 8}
!164 = !{!61, !10, i64 0}
!165 = !{!"_ZTSN4bssl19SSL_PROTOCOL_METHODE", !8, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144}
!166 = !{!165, !9, i64 80}
!167 = distinct !{!167, !186}
!168 = !{!8, !8, i64 0}
!169 = !{!101, !19, i64 224}
!170 = !{!157, !18, i64 1600}
!171 = !{!29, !29, i64 0}
!172 = !{!"_ZTSN4bssl10RefCountedI14ssl_session_stEE", !5, i64 0}
!173 = !{!"p1 _ZTSN4bssl15SSL_X509_METHODE", !9, i64 0}
!174 = !{!"p1 _ZTS7x509_st", !9, i64 0}
!175 = !{!"p1 _ZTS13stack_st_X509", !9, i64 0}
!176 = !{!"p1 _ZTS16crypto_buffer_st", !9, i64 0}
!177 = !{!"_ZTSSt10_Head_baseILm0EP16crypto_buffer_stLb0EE", !176, i64 0}
!178 = !{!"_ZTSSt11_Tuple_implILm0EJP16crypto_buffer_stN4bssl8internal7DeleterEEE", !177, i64 0}
!179 = !{!"_ZTSSt5tupleIJP16crypto_buffer_stN4bssl8internal7DeleterEEE", !178, i64 0}
!180 = !{!"_ZTSSt15__uniq_ptr_implI16crypto_buffer_stN4bssl8internal7DeleterEE", !179, i64 0}
!181 = !{!"_ZTSSt15__uniq_ptr_dataI16crypto_buffer_stN4bssl8internal7DeleterELb1ELb1EE", !180, i64 0}
!182 = !{!"_ZTSSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEE", !181, i64 0}
!183 = !{!"_ZTS14ssl_session_st", !172, i64 0, !18, i64 4, !18, i64 6, !18, i64 8, !4, i64 10, !4, i64 11, !4, i64 59, !4, i64 60, !4, i64 92, !4, i64 93, !49, i64 128, !127, i64 136, !173, i64 144, !174, i64 152, !175, i64 160, !175, i64 168, !175, i64 176, !19, i64 184, !5, i64 192, !5, i64 196, !19, i64 200, !149, i64 208, !58, i64 216, !29, i64 224, !29, i64 232, !99, i64 240, !182, i64 256, !182, i64 264, !4, i64 272, !4, i64 304, !4, i64 368, !5, i64 372, !5, i64 376, !5, i64 380, !99, i64 384, !99, i64 400, !99, i64 416, !8, i64 432, !8, i64 432, !8, i64 432, !8, i64 432, !8, i64 432, !8, i64 432, !8, i64 432, !99, i64 440}
!184 = !{!183, !5, i64 380}
!185 = !{!61, !18, i64 18}
!186 = !{!"llvm.loop.mustprogress"}
end_hunk_0
