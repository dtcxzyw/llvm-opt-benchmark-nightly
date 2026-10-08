Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/t_x509?download=true
inline.NumInlined: 2
begin_hunk_0_@X509_print_ex:bb.a

bb.at:                                            ; preds = %bb.as
  %i.dg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.4) #3
  %i.dh = icmp slt i32 %i.dg, 1
  br i1 %i.dh, label %X509_signature_print.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !50
  %i.dj = call i32 @X509_signature_dump(ptr noundef %0, ptr noundef %i.di, i32 noundef 12) #3
  %.not119 = icmp eq i32 %i.dj, 0
  br i1 %.not119, label %X509_signature_print.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.as, %bb.au, %bb.ao
  %i.dk = and i64 %3, 256
  %.not120 = icmp eq i64 %i.dk, 0
  br i1 %.not120, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !51
  %i.dn = call i32 @X509V3_extensions_print(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %i.dm, i64 noundef %3, i32 noundef 8) #3 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.do = and i64 %3, 512
  %.not121 = icmp eq i64 %i.do, 0
  br i1 %.not121, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !52
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !53
  %i.dt = call i32 @X509_signature_print(ptr noundef %0, ptr noundef %i.dq, ptr noundef %i.ds)
  %i.du = icmp slt i32 %i.dt, 1
  br i1 %i.du, label %X509_signature_print.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dv = and i64 %3, 1024
  %.not122 = icmp eq i64 %i.dv, 0
  br i1 %.not122, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !54
  %i.dy = call i32 @X509_CERT_AUX_print(ptr noundef %0, ptr noundef %i.dx, i32 noundef 0) #3
  %.not123 = icmp eq i32 %i.dy, 0
  br i1 %.not123, label %X509_signature_print.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  br label %X509_signature_print.exit.thread

.critedge127:                                     ; preds = %bb.l, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %X509_signature_print.exit.thread

X509_signature_print.exit.thread:                 ; preds = %bb.q, %bb.n, %bb.o, %bb.ba, %bb.ay, %bb.au, %bb.at, %bb.ar, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %X509_signature_print.exit, %.critedge127, %bb.g, %bb.c, %bb.b, %bb.e, %bb.bb
  %.6 = phi i32 [ 1, %bb.bb ], [ 0, %bb.ay ], [ 0, %bb.au ], [ 0, %bb.ak ], [ 0, %bb.ar ], [ 0, %bb.at ], [ 0, %bb.aq ], [ 0, %bb.af ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ab ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.x ], [ 0, %X509_signature_print.exit ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %.critedge127 ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.ba ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.q ]
  ret i32 %.6
}

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @X509_print_fp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_new_fp(ptr noundef %0, i32 noundef 0) #3 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 7, ptr noundef nonnull @.str, i32 noundef 33) #3
  br label %X509_print_ex_fp.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @X509_print_ex(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef 0, i64 noundef 0)
  %i.d = tail call i32 @BIO_free(ptr noundef nonnull %i.a) #3 ; 0 uses
  br label %X509_print_ex_fp.exit

X509_print_ex_fp.exit:                            ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @X509_print(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @X509_print_ex(ptr noundef %0, ptr noundef %1, i64 noundef 0, i64 noundef 0)
  ret i32 %i.a
}

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @X509_get_version(ptr noundef) local_unnamed_addr #2

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @X509_get0_serialNumber(ptr noundef) local_unnamed_addr #2

declare i32 @ASN1_INTEGER_get_uint64(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_clear_error() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define i32 @X509_signature_print(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.22) #3
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !17
  %i.d = tail call i32 @i2a_ASN1_OBJECT(ptr noundef %0, ptr noundef %i.c) #3
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !17
  %i.g = tail call i32 @OBJ_obj2nid(ptr noundef %i.f) #3
  %i.h = icmp eq i32 %i.g, 912
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @x509_print_rsa_pss_params(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 9, ptr noundef null) #3
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not12 = icmp eq ptr %2, null
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @X509_signature_dump(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 9) #3
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.k = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.11) #3
  %i.l = icmp sgt i32 %i.k, 0
  %. = zext i1 %i.l to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.g, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.j, %bb.f ], [ %., %bb.g ], [ 0, %bb.d ]
  ret i32 %.1
}

declare i32 @X509_NAME_print_ex(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @X509_get_issuer_name(ptr noundef) local_unnamed_addr #2

declare i32 @ASN1_TIME_print(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_get_notBefore(ptr noundef) local_unnamed_addr #2

declare ptr @X509_get_notAfter(ptr noundef) local_unnamed_addr #2

declare ptr @X509_get_subject_name(ptr noundef) local_unnamed_addr #2

declare i32 @i2a_ASN1_OBJECT(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BIO_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_get0_pubkey(ptr noundef) local_unnamed_addr #2

declare void @ERR_print_errors(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_print_public(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @X509_signature_dump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509V3_extensions_print(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_CERT_AUX_print(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #2

declare i32 @x509_print_rsa_pss_params(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @X509_NAME_print(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @X509_NAME_oneline(ptr noundef %1, ptr noundef null, i32 noundef 0) #3 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 1, !tbaa !12
  %.not33 = icmp eq i8 %i.b, 0
  br i1 %.not33, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %bb.c
  %.028 = phi ptr [ %i.c, %bb.c ], [ %i.w, %thread-pre-split ] ; 9 uses
  %.027 = phi ptr [ %i.c, %bb.c ], [ %.1, %thread-pre-split ] ; 6 uses
  %i.d = load i8, ptr %.028, align 1, !tbaa !12   ; 2 uses
  switch i8 %i.d, label %thread-pre-split [
    i8 47, label %bb.e
    i8 0, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.028, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12
  %i.g = add i8 %i.f, -65
  %or.cond = icmp ult i8 %i.g, 26
  br i1 %or.cond, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %.028, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12    ; 2 uses
  %i.j = icmp eq i8 %i.i, 61
  br i1 %i.j, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = add i8 %i.i, -65
  %or.cond37 = icmp ult i8 %i.k, 26
  br i1 %or.cond37, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %.028, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12
  %i.n = icmp eq i8 %i.m, 61
  br i1 %i.n, label %bb.i, label %thread-pre-split

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.f
  %i.o = ptrtoint ptr %.028 to i64
  %i.p = ptrtoint ptr %.027 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = tail call i32 @BIO_write(ptr noundef %0, ptr noundef %.027, i32 noundef %i.r) #3
  %.not34 = icmp eq i32 %i.s, %i.r
  br i1 %.not34, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.t = load i8, ptr %.028, align 1, !tbaa !12
  %.not35 = icmp eq i8 %i.t, 0
  br i1 %.not35, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef 2) #3
  %.not36 = icmp eq i32 %i.u, 2
  br i1 %.not36, label %.thread-pre-split_crit_edge, label %bb.l

.thread-pre-split_crit_edge:                      ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.028, i64 1
  %.pr.pre = load i8, ptr %.028, align 1, !tbaa !12
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.h, %bb.g, %bb.e, %.thread-pre-split_crit_edge, %bb.d
  %3 = phi i8 [ %i.d, %bb.d ], [ %.pr.pre, %.thread-pre-split_crit_edge ], [ 47, %bb.h ], [ 47, %bb.g ], [ 47, %bb.e ]
  %.1 = phi ptr [ %.027, %bb.d ], [ %i.v, %.thread-pre-split_crit_edge ], [ %.027, %bb.h ], [ %.027, %bb.g ], [ %.027, %bb.e ]
  %4 = icmp eq i8 %3, 0
  %i.w = getelementptr inbounds nuw i8, ptr %.028, i64 1
  br i1 %4, label %.sink.split, label %bb.d, !llvm.loop !55

bb.l:                                             ; preds = %bb.k, %bb.i
  tail call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 7, ptr noundef nonnull @.str, i32 noundef 283) #3
  br label %.sink.split

.sink.split:                                      ; preds = %thread-pre-split, %bb.j, %bb.l, %bb.b
  %.029.ph = phi i32 [ 1, %bb.b ], [ 0, %bb.l ], [ 1, %bb.j ], [ 1, %thread-pre-split ]
  tail call void @OPENSSL_free(ptr noundef nonnull %i.a) #3
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.a
  %.029 = phi i32 [ 0, %bb.a ], [ %.029.ph, %.sink.split ]
  ret i32 %.029
}

declare ptr @X509_NAME_oneline(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"p1 _ZTS14asn1_object_st", !11, i64 0}
!15 = !{!"p1 _ZTS12asn1_type_st", !11, i64 0}
!16 = !{!"_ZTS13X509_algor_st", !14, i64 0, !15, i64 8}
!17 = !{!16, !14, i64 0}
!18 = distinct !{!18, !13}
!19 = !{!"p1 _ZTS13X509_algor_st", !11, i64 0}
!20 = !{!"p1 _ZTS14asn1_string_st", !11, i64 0}
!21 = !{!"p1 _ZTS13stack_st_void", !11, i64 0}
!22 = !{!"_ZTS17crypto_ex_data_st", !21, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!"p1 _ZTS18AUTHORITY_KEYID_st", !11, i64 0}
!25 = !{!"p1 _ZTS19stack_st_DIST_POINT", !11, i64 0}
!26 = !{!"p1 _ZTS21stack_st_GENERAL_NAME", !11, i64 0}
!27 = !{!"p1 _ZTS19NAME_CONSTRAINTS_st", !11, i64 0}
!28 = !{!"p1 _ZTS16x509_cert_aux_st", !11, i64 0}
!29 = !{!"_ZTS7x509_st", !11, i64 0, !19, i64 8, !20, i64 16, !8, i64 24, !22, i64 32, !23, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !20, i64 64, !24, i64 72, !25, i64 80, !26, i64 88, !27, i64 96, !7, i64 104, !28, i64 136, !7, i64 144}
!30 = !{!29, !11, i64 0}
!31 = !{!23, !23, i64 0}
!32 = !{!"p1 omnipotent char", !11, i64 0}
!33 = !{!"_ZTS14asn1_string_st", !8, i64 0, !8, i64 4, !32, i64 8, !23, i64 16}
!34 = !{!33, !8, i64 4}
!35 = !{!33, !8, i64 0}
!36 = !{!33, !32, i64 8}
!37 = !{!"p1 _ZTS12X509_name_st", !11, i64 0}
!38 = !{!"p1 _ZTS11X509_val_st", !11, i64 0}
!39 = !{!"p1 _ZTS14X509_pubkey_st", !11, i64 0}
!40 = !{!"p1 _ZTS23stack_st_X509_EXTENSION", !11, i64 0}
!41 = !{!"p1 _ZTS16crypto_buffer_st", !11, i64 0}
!42 = !{!"_ZTS16ASN1_ENCODING_st", !32, i64 0, !23, i64 8, !41, i64 16}
!43 = !{!"_ZTS9X509_CINF", !20, i64 0, !20, i64 8, !19, i64 16, !37, i64 24, !38, i64 32, !37, i64 40, !39, i64 48, !20, i64 56, !20, i64 64, !40, i64 72, !42, i64 80}
!44 = !{!43, !19, i64 16}
!45 = !{!43, !39, i64 48}
!46 = !{!"p1 _ZTS11evp_pkey_st", !11, i64 0}
!47 = !{!"_ZTS14X509_pubkey_st", !19, i64 0, !20, i64 8, !46, i64 16}
!48 = !{!47, !19, i64 0}
!49 = !{!43, !20, i64 56}
!50 = !{!43, !20, i64 64}
!51 = !{!43, !40, i64 72}
!52 = !{!29, !19, i64 8}
!53 = !{!29, !20, i64 16}
!54 = !{!29, !28, i64 136}
!55 = distinct !{!55, !13}
end_hunk_0
