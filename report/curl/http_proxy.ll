Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/http_proxy?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
begin_hunk_0_@http_proxy_cf_connect:bb.a
  br i1 %.not127, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bv = load ptr, ptr %i.y, align 8, !tbaa !85  ; 2 uses
  %.not128 = icmp eq ptr %i.bv, null
  br i1 %.not128, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !87
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.bz = load ptr, ptr %0, align 8, !tbaa !88
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !90
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cd = add nsw i32 %i.bs, -10
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.56, i32 noundef %i.cd) #5
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ah
  %i.ce = load ptr, ptr %i.aa, align 8, !tbaa !97
  %i.cf = tail call i32 @Curl_cf_h1_proxy_insert_after(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.ce, i32 noundef %i.bs, i1 noundef zeroext %spec.select) #5 ; 2 uses
  %.not129 = icmp eq i32 %i.cf, 0
  br i1 %.not129, label %.critedge, label %.thread145

bb.ao:                                            ; preds = %bb.ag
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.57, ptr noundef nonnull %i.f, ptr noundef nonnull %.1136) #5
  br label %.thread145

.critedge:                                        ; preds = %bb.an, %.thread137
  %i.cg = load i8, ptr %i.w, align 2
  %i.ch = or i8 %i.cg, 1
  store i8 %i.ch, ptr %i.w, align 2
  br label %bb.j

.thread141:                                       ; preds = %bb.m
  %i.ci = load i8, ptr %i.g, align 4
  %i.cj = or i8 %i.ci, 1
  store i8 %i.cj, ptr %i.g, align 4
  store i8 1, ptr %2, align 1, !tbaa !124
  br label %.thread145

.thread145:                                       ; preds = %.thread137, %bb.k, %bb.l, %bb.an, %bb.ao, %.thread141, %bb.b
  %.096 = phi i32 [ 0, %bb.b ], [ 7, %bb.ao ], [ 0, %.thread141 ], [ %i.bo, %.thread137 ], [ 0, %bb.l ], [ %i.af, %bb.k ], [ %i.cf, %bb.an ]
  ret i32 %.096
}

declare i32 @Curl_cf_def_shutdown(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @Curl_cf_def_adjust_pollset(ptr noundef, ptr noundef, ptr noundef) #2

declare zeroext i1 @Curl_cf_def_data_pending(ptr noundef, ptr noundef) #2

declare i32 @Curl_cf_def_send(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef) #2

declare i32 @Curl_cf_def_recv(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @Curl_cf_def_cntrl(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare zeroext i1 @Curl_cf_def_conn_is_alive(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @Curl_cf_def_conn_keep_alive(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @cf_http_proxy_query(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 11, label %bb.b
    i32 15, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i16, ptr %i.e, align 8, !tbaa !32
  %i.g = zext i16 %i.f to i32
  store i32 %i.g, ptr %3, align 4, !tbaa !91
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  store ptr %i.i, ptr %4, align 8, !tbaa !84
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %4, align 8, !tbaa !84
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95   ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128
  %i.o = tail call i32 %i.n(ptr noundef nonnull %i.k, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ %i.o, %bb.e ], [ 48, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @Curl_cf_http_proxy_insert_after(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp ne ptr %2, null
  %i.c = icmp ne ptr %3, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %cf_https_proxy_ctx_free.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !33
  %i.e = tail call ptr %i.d(i64 noundef 1, i64 noundef 24) #5 ; 8 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %cf_https_proxy_ctx_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @Curl_peer_link(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  tail call void @Curl_peer_link(ptr noundef nonnull %i.f, ptr noundef nonnull %3) #5
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 %5, ptr %i.g, align 8, !tbaa !96
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  store i8 %4, ptr %i.h, align 1, !tbaa !94
  %i.i = call i32 @Curl_cf_create(ptr noundef nonnull %i.a, ptr noundef nonnull @Curl_cft_http_proxy, ptr noundef nonnull %i.e) #5 ; 2 uses
  %.not24 = icmp eq i32 %i.i, 0
  br i1 %.not24, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !129
  call void @Curl_conn_cf_insert_after(ptr noundef %0, ptr noundef %i.j) #5
  br label %cf_https_proxy_ctx_free.exit

bb.e:                                             ; preds = %bb.c
  call void @Curl_peer_unlink(ptr noundef nonnull %i.e) #5
  call void @Curl_peer_unlink(ptr noundef nonnull %i.f) #5
  %i.k = load ptr, ptr @Curl_cfree, align 8, !tbaa !33
  call void %i.k(ptr noundef nonnull %i.e) #5, !inline_history !0
  br label %cf_https_proxy_ctx_free.exit

cf_https_proxy_ctx_free.exit:                     ; preds = %bb.b, %bb.d, %bb.e, %bb.a
  %.018 = phi i32 [ 2, %bb.a ], [ %i.i, %bb.e ], [ 27, %bb.b ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.018
}

declare void @Curl_peer_link(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_cf_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_conn_cf_insert_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext range(i8 3, 6) i8 @Curl_http_proxy_transport(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %cond = icmp eq i8 %0, 8
  %. = select i1 %cond, i8 5, i8 3
  ret i8 %.
}

declare ptr @curl_maprintf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @Curl_http_req_make(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Curl_http_output_auth(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @Curl_checkProxyheaders(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Curl_dynhds_cadd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_dynhds_h1_cadd_line(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dynhds_add_custom(ptr noundef %0, i32 noundef range(i32 0, 31) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.Curl_str, align 8           ; 13 uses
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.c = load i64, ptr %i.b, align 1
  %i.d = and i64 %i.c, 64
  %.not = icmp eq i64 %i.d, 0
  %.78 = select i1 %.not, i64 744, i64 1200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.78
  %.sroa.0.0 = load ptr, ptr %i.e, align 8, !tbaa !131 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4627 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 417
  %i.i = icmp samesign ugt i32 %1, 19
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not5374 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not5374, label %.loopexit72, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %select.unfold
  %.04775 = phi ptr [ %.047, %select.unfold ], [ %.sroa.0.0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.k = load ptr, ptr %.04775, align 8, !tbaa !133
  store ptr %i.k, ptr %i.a, align 8, !tbaa !84
  %i.l = call i32 @curlx_str_cspn(ptr noundef nonnull %i.a, ptr noundef nonnull %3, ptr noundef nonnull @.str.39) #5
  %.not54 = icmp eq i32 %i.l, 0
  br i1 %.not54, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %.lr.ph
  %i.m = call i32 @curlx_str_single(ptr noundef nonnull %i.a, i8 noundef signext 58) #5
  %.not55 = icmp eq i32 %i.m, 0
  br i1 %.not55, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @curlx_str_passblanks(ptr noundef nonnull %i.a) #5
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !34
  %.not56 = icmp eq i8 %i.o, 0
  br i1 %.not56, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #6
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.q = call i32 @curlx_str_single(ptr noundef nonnull %i.a, i8 noundef signext 59) #5
  %.not57 = icmp eq i32 %i.q, 0
  br i1 %.not57, label %bb.f, label %select.unfold

bb.f:                                             ; preds = %bb.e
  call void @curlx_str_passblanks(ptr noundef nonnull %i.a) #5
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.s = load i8, ptr %i.r, align 1, !tbaa !34
  %.not58 = icmp eq i8 %i.s, 0
  br i1 %.not58, label %bb.g, label %select.unfold

bb.g:                                             ; preds = %bb.f, %bb.d
  %.043 = phi ptr [ %i.n, %bb.d ], [ @.str.13, %bb.f ]
  %.042 = phi i64 [ %i.p, %bb.d ], [ 0, %bb.f ]
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !134
  %.not59 = icmp eq ptr %i.t, null
  br i1 %.not59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = call i32 @curlx_str_casecompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.30) #5
  %.not60 = icmp eq i32 %i.u, 0
  br i1 %.not60, label %bb.i, label %select.unfold

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = load i8, ptr %i.g, align 1, !tbaa !135   ; 2 uses
  %i.w = icmp eq i8 %i.v, 2
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = call i32 @curlx_str_casecompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.40) #5
  %.not61 = icmp eq i32 %i.x, 0
  br i1 %.not61, label %thread-pre-split, label %select.unfold

thread-pre-split:                                 ; preds = %bb.j
  %.pr = load i8, ptr %i.g, align 1, !tbaa !135
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split, %bb.i
  %i.y = phi i8 [ %.pr, %thread-pre-split ], [ %i.v, %bb.i ]
  %i.z = icmp eq i8 %i.y, 3
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = call i32 @curlx_str_casecompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.40) #5
  %.not62 = icmp eq i32 %i.aa, 0
  br i1 %.not62, label %bb.m, label %select.unfold

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = load i32, ptr %i.h, align 1
  %i.ac = and i32 %i.ab, 131072
  %.not63 = icmp eq i32 %i.ac, 0
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = call i32 @curlx_str_casecompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.41) #5
  %.not64 = icmp eq i32 %i.ad, 0
  br i1 %.not64, label %bb.o, label %select.unfold

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ae = call i32 @curlx_str_casecompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.42) #5
  %.not65 = icmp eq i32 %i.ae, 0
  br i1 %.not65, label %bb.q, label %select.unfold

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.af = call i32 @curlx_str_casecompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.43) #5
  %.not66 = icmp eq i32 %i.af, 0
  br i1 %.not66, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ag = call i32 @curlx_str_casecompare(ptr noundef nonnull %3, ptr noundef nonnull @.str.44) #5
  %.not67 = icmp eq i32 %i.ag, 0
  br i1 %.not67, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ah = call zeroext i1 @Curl_auth_allowed_to_host(ptr noundef nonnull %0) #5
  br i1 %i.ah, label %bb.t, label %select.unfold

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ai = load ptr, ptr %3, align 8, !tbaa !137
  %i.aj = load i64, ptr %i.j, align 8, !tbaa !138
  %i.ak = call i32 @Curl_dynhds_add(ptr noundef %2, ptr noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull %.043, i64 noundef %.042) #5 ; 2 uses
  %.not68 = icmp eq i32 %i.ak, 0
  br i1 %.not68, label %select.unfold, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %.loopexit72

select.unfold:                                    ; preds = %bb.t, %bb.e, %bb.f, %bb.c, %.lr.ph, %bb.j, %bb.n, %bb.s, %bb.p, %bb.l, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.al = getelementptr inbounds nuw i8, ptr %.04775, i64 8
  %.047 = load ptr, ptr %i.al, align 8, !tbaa !131 ; 2 uses
  %.not53 = icmp eq ptr %.047, null
  br i1 %.not53, label %.loopexit72, label %.lr.ph, !llvm.loop !130

.loopexit72:                                      ; preds = %select.unfold, %bb.a, %bb.u
  %.5 = phi i32 [ %i.ak, %bb.u ], [ 0, %bb.a ], [ 0, %select.unfold ]
  ret i32 %.5
}

declare void @Curl_http_req_free(ptr noundef) local_unnamed_addr #2

declare i32 @curlx_str_cspn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @curlx_str_single(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare void @curlx_str_passblanks(ptr noundef) local_unnamed_addr #2

declare i32 @curlx_str_casecompare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Curl_auth_allowed_to_host(ptr noundef) local_unnamed_addr #2

declare i32 @Curl_dynhds_add(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Curl_conn_cf_get_alpn_negotiated(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @Curl_cf_h1_proxy_insert_after(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @Curl_peer_unlink(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS11Curl_cftype", !9, i64 0}
!11 = !{!"p1 _ZTS12Curl_cfilter", !9, i64 0}
!12 = !{!"p1 _ZTS11connectdata", !9, i64 0}
!13 = !{!"Curl_cfilter", !10, i64 0, !11, i64 8, !9, i64 16, !12, i64 24, !6, i64 32, !6, i64 36, !6, i64 36}
!14 = !{!"p1 _ZTS10Curl_llist", !9, i64 0}
!15 = !{!"p1 _ZTS15Curl_llist_node", !9, i64 0}
!16 = !{!"Curl_llist_node", !14, i64 0, !9, i64 8, !15, i64 16, !15, i64 24}
!17 = !{!"long", !5, i64 0}
!18 = !{!"p1 omnipotent char", !9, i64 0}
!19 = !{!"any p2 pointer", !9, i64 0}
!20 = !{!"p2 _ZTS17Curl_hash_element", !19, i64 0}
!21 = !{!"Curl_hash", !20, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !17, i64 32, !17, i64 40}
!22 = !{!"p1 _ZTS9Curl_peer", !9, i64 0}
!23 = !{!"p1 _ZTS10Curl_creds", !9, i64 0}
!24 = !{!"curltime", !17, i64 0, !6, i64 8}
!25 = !{!"p1 _ZTS9curl_blob", !9, i64 0}
!26 = !{!"ssl_primary_config", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !25, i64 104, !25, i64 112, !25, i64 120, !25, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !6, i64 160, !5, i64 164, !5, i64 165, !6, i64 166, !6, i64 166, !6, i64 166, !6, i64 166, !6, i64 166}
!27 = !{!"p1 _ZTS11Curl_scheme", !9, i64 0}
!28 = !{!"p1 _ZTS10Curl_multi", !9, i64 0}
!29 = !{!"short", !5, i64 0}
!30 = !{!"Curl_peer", !27, i64 0, !18, i64 8, !18, i64 16, !6, i64 24, !6, i64 28, !29, i64 32, !6, i64 34, !6, i64 34, !6, i64 34, !5, i64 35}
!31 = !{!30, !18, i64 8}
!32 = !{!30, !29, i64 32}
!33 = !{!9, !9, i64 0}
!34 = !{!5, !5, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"p2 _ZTS12dynhds_entry", !19, i64 0}
!37 = !{!"dynhds", !36, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !6, i64 48}
!38 = !{!"CURLMsg", !6, i64 0, !9, i64 8, !5, i64 16}
!39 = !{!"Curl_message", !16, i64 0, !38, i64 32}
!40 = !{!"p1 _ZTS10Curl_share", !9, i64 0}
!41 = !{!"p1 _ZTS8PslCache", !9, i64 0}
!42 = !{!"p1 _ZTS12Curl_cwriter", !9, i64 0}
!43 = !{!"p1 _ZTS12Curl_creader", !9, i64 0}
!44 = !{!"p1 _ZTS9buf_chunk", !9, i64 0}
!45 = !{!"p1 _ZTS9bufc_pool", !9, i64 0}
!46 = !{!"bufq", !44, i64 0, !44, i64 8, !44, i64 16, !45, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !6, i64 56}
!47 = !{!"SingleRequest", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !24, i64 40, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !5, i64 76, !5, i64 77, !6, i64 80, !42, i64 88, !43, i64 96, !46, i64 104, !17, i64 168, !17, i64 176, !18, i64 184, !18, i64 192, !5, i64 200, !18, i64 208, !18, i64 216, !18, i64 224, !5, i64 232, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 235, !6, i64 235, !6, i64 235, !6, i64 235, !6, i64 235, !6, i64 235}
!48 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!49 = !{!"p1 _ZTS10curl_slist", !9, i64 0}
!50 = !{!"p1 _ZTS13curl_httppost", !9, i64 0}
!51 = !{!"p1 _ZTS13curl_mimepart", !9, i64 0}
!52 = !{!"ssl_config_data", !26, i64 0, !17, i64 168, !9, i64 176, !9, i64 184, !6, i64 192, !6, i64 192, !6, i64 192, !6, i64 192, !6, i64 192, !6, i64 192, !6, i64 192, !6, i64 192, !6, i64 193, !6, i64 193, !6, i64 193}
!53 = !{!"ssl_general_config", !6, i64 0}
!54 = !{!"p1 _ZTS8Curl_URL", !9, i64 0}
!55 = !{!"UserDefined", !48, i64 0, !9, i64 8, !18, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !6, i64 48, !6, i64 52, !9, i64 56, !9, i64 64, !17, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !17, i64 264, !17, i64 272, !17, i64 280, !17, i64 288, !17, i64 296, !17, i64 304, !17, i64 312, !49, i64 320, !50, i64 328, !51, i64 336, !49, i64 344, !49, i64 352, !49, i64 360, !17, i64 368, !52, i64 376, !52, i64 576, !49, i64 776, !29, i64 784, !5, i64 786, !5, i64 787, !53, i64 788, !17, i64 792, !6, i64 800, !6, i64 804, !9, i64 808, !49, i64 816, !17, i64 824, !17, i64 832, !5, i64 840, !5, i64 841, !5, i64 842, !49, i64 848, !49, i64 856, !49, i64 864, !6, i64 872, !5, i64 880, !5, i64 1480, !6, i64 1544, !17, i64 1552, !17, i64 1560, !9, i64 1568, !6, i64 1576, !9, i64 1584, !9, i64 1592, !9, i64 1600, !9, i64 1608, !9, i64 1616, !17, i64 1624, !17, i64 1632, !17, i64 1640, !17, i64 1648, !17, i64 1656, !6, i64 1664, !6, i64 1668, !6, i64 1672, !9, i64 1680, !9, i64 1688, !17, i64 1696, !54, i64 1704, !9, i64 1712, !9, i64 1720, !49, i64 1728, !6, i64 1736, !29, i64 1740, !29, i64 1742, !29, i64 1744, !29, i64 1746, !29, i64 1748, !29, i64 1750, !29, i64 1752, !5, i64 1754, !5, i64 1755, !5, i64 1756, !5, i64 1757, !5, i64 1758, !5, i64 1759, !5, i64 1760, !5, i64 1761, !5, i64 1762, !6, i64 1763, !6, i64 1763, !6, i64 1763, !6, i64 1763, !6, i64 1763, !6, i64 1763, !6, i64 1763, !6, i64 1763, !6, i64 1764, !6, i64 1764, !6, i64 1764, !6, i64 1764, !6, i64 1764, !6, i64 1764, !6, i64 1764, !6, i64 1764, !6, i64 1765, !6, i64 1765, !6, i64 1765, !6, i64 1765, !6, i64 1765, !6, i64 1765, !6, i64 1765, !6, i64 1765, !6, i64 1766, !6, i64 1766, !6, i64 1766, !6, i64 1766, !6, i64 1766, !6, i64 1766, !6, i64 1766, !6, i64 1766, !6, i64 1767, !6, i64 1767, !6, i64 1767, !6, i64 1767, !6, i64 1767, !6, i64 1767, !6, i64 1767, !6, i64 1767, !6, i64 1768, !6, i64 1768, !6, i64 1768, !6, i64 1768, !6, i64 1768, !6, i64 1768, !6, i64 1768, !6, i64 1768, !6, i64 1769, !6, i64 1769, !6, i64 1769, !6, i64 1769, !6, i64 1769, !6, i64 1769, !6, i64 1769, !6, i64 1769, !6, i64 1770, !6, i64 1770, !6, i64 1770}
!56 = !{!"p1 _ZTS10CookieInfo", !9, i64 0}
!57 = !{!"p1 _ZTS4hsts", !9, i64 0}
!58 = !{!"p1 _ZTS10altsvcinfo", !9, i64 0}
!59 = !{!"Curl_rlimit", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !24, i64 56, !6, i64 72}
!60 = !{!"pgrs_dir", !17, i64 0, !17, i64 8, !17, i64 16, !59, i64 24}
!61 = !{!"Progress", !24, i64 0, !17, i64 16, !60, i64 24, !60, i64 128, !17, i64 232, !17, i64 240, !17, i64 248, !17, i64 256, !17, i64 264, !17, i64 272, !17, i64 280, !17, i64 288, !17, i64 296, !17, i64 304, !17, i64 312, !17, i64 320, !24, i64 328, !24, i64 344, !24, i64 360, !24, i64 376, !24, i64 392, !5, i64 408, !5, i64 456, !6, i64 552, !6, i64 556, !6, i64 556, !6, i64 556, !6, i64 556, !6, i64 556, !6, i64 556}
!62 = !{!"dynbuf", !18, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!63 = !{!"digestdata", !23, i64 0, !22, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !6, i64 64, !5, i64 68, !6, i64 69, !6, i64 69}
!64 = !{!"auth", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 12}
!65 = !{!"p1 _ZTS17Curl_resolv_async", !9, i64 0}
!66 = !{!"p1 _ZTS9Curl_tree", !9, i64 0}
!67 = !{!"Curl_tree", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !24, i64 32, !9, i64 48}
!68 = !{!"Curl_llist", !15, i64 0, !15, i64 8, !9, i64 16, !17, i64 24}
!69 = !{!"urlpieces", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56}
!70 = !{!"bufref", !9, i64 0, !18, i64 8, !17, i64 16}
!71 = !{!"p1 _ZTS17Curl_header_store", !9, i64 0}
!72 = !{!"p1 _ZTS13curl_trc_feat", !9, i64 0}
!73 = !{!"store_netrc", !62, i64 0, !18, i64 32, !6, i64 40}
!74 = !{!"dynamically_allocated_data", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40}
!75 = !{!"http_negotiation", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !6, i64 4, !6, i64 4, !6, i64 4, !6, i64 4}
!76 = !{!"UrlState", !24, i64 0, !17, i64 16, !17, i64 24, !62, i64 32, !49, i64 64, !17, i64 72, !22, i64 80, !22, i64 88, !6, i64 96, !6, i64 100, !9, i64 104, !18, i64 112, !63, i64 120, !63, i64 192, !64, i64 264, !64, i64 280, !65, i64 296, !9, i64 304, !9, i64 312, !9, i64 320, !9, i64 328, !18, i64 336, !6, i64 344, !24, i64 352, !67, i64 368, !68, i64 424, !5, i64 456, !18, i64 1296, !18, i64 1304, !17, i64 1312, !6, i64 1320, !6, i64 1324, !6, i64 1328, !5, i64 1332, !17, i64 1368, !9, i64 1376, !9, i64 1384, !54, i64 1392, !69, i64 1400, !70, i64 1464, !70, i64 1488, !49, i64 1512, !51, i64 1520, !51, i64 1528, !17, i64 1536, !62, i64 1544, !68, i64 1576, !5, i64 1608, !71, i64 1704, !49, i64 1712, !72, i64 1720, !73, i64 1728, !23, i64 1776, !74, i64 1784, !75, i64 1832, !29, i64 1840, !5, i64 1842, !5, i64 1843, !6, i64 1844, !6, i64 1844, !6, i64 1844, !6, i64 1844, !6, i64 1844, !6, i64 1844, !6, i64 1844, !6, i64 1844, !6, i64 1845, !6, i64 1845, !6, i64 1845, !6, i64 1845, !6, i64 1845, !6, i64 1845, !6, i64 1845, !6, i64 1845, !6, i64 1846, !6, i64 1846, !6, i64 1846, !6, i64 1846, !6, i64 1846, !6, i64 1846, !6, i64 1846}
!77 = !{!"p1 _ZTS12WildcardData", !9, i64 0}
!78 = !{!"ip_quadruple", !5, i64 0, !5, i64 46, !29, i64 92, !29, i64 94, !5, i64 96}
!79 = !{!"p2 _ZTS10curl_slist", !19, i64 0}
!80 = !{!"curl_certinfo", !6, i64 0, !79, i64 8}
!81 = !{!"PureInfo", !6, i64 0, !6, i64 4, !6, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !18, i64 56, !18, i64 64, !17, i64 72, !6, i64 80, !78, i64 84, !18, i64 184, !6, i64 192, !80, i64 200, !6, i64 216, !6, i64 220, !6, i64 220}
!82 = !{!"curl_tlssessioninfo", !6, i64 0, !9, i64 8}
!83 = !{!"Curl_easy", !6, i64 0, !17, i64 8, !6, i64 16, !6, i64 20, !9, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !39, i64 48, !28, i64 104, !28, i64 112, !40, i64 120, !21, i64 128, !41, i64 176, !47, i64 184, !55, i64 424, !56, i64 2200, !57, i64 2208, !58, i64 2216, !61, i64 2224, !76, i64 2784, !77, i64 4632, !81, i64 4640, !82, i64 4864}
!84 = !{!18, !18, i64 0}
!85 = !{!83, !72, i64 4504}
!86 = !{!"curl_trc_feat", !18, i64 0, !6, i64 8}
!87 = !{!86, !6, i64 8}
!88 = !{!13, !10, i64 0}
!89 = !{!"Curl_cftype", !18, i64 0, !6, i64 8, !6, i64 12, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96}
!90 = !{!89, !6, i64 12}
!91 = !{!6, !6, i64 0}
!92 = !{!13, !9, i64 16}
!93 = !{!"cf_proxy_ctx", !22, i64 0, !22, i64 8, !5, i64 16, !5, i64 17, !6, i64 18}
!94 = !{!93, !5, i64 17}
!95 = !{!13, !11, i64 8}
!96 = !{!93, !5, i64 16}
!97 = !{!93, !22, i64 8}
!98 = distinct !{null}
!99 = distinct !{!99, !35}
!100 = distinct !{null}
!101 = !{!13, !12, i64 24}
!102 = !{!"proxy_info", !22, i64 0, !23, i64 8, !5, i64 16}
!103 = !{!"", !5, i64 0, !17, i64 32}
!104 = !{!"ConnectBits", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 3}
!105 = !{!"connectdata", !16, i64 0, !16, i64 32, !9, i64 64, !9, i64 72, !17, i64 80, !18, i64 88, !21, i64 96, !22, i64 144, !22, i64 152, !22, i64 160, !22, i64 168, !102, i64 176, !102, i64 200, !23, i64 224, !22, i64 232, !18, i64 240, !24, i64 248, !24, i64 264, !5, i64 280, !5, i64 288, !5, i64 304, !5, i64 320, !6, i64 336, !6, i64 340, !103, i64 344, !26, i64 384, !26, i64 552, !104, i64 720, !27, i64 728, !27, i64 736, !24, i64 744, !28, i64 760, !18, i64 768, !6, i64 776, !6, i64 780, !29, i64 784, !29, i64 786, !5, i64 788, !5, i64 789, !5, i64 790, !5, i64 791}
!106 = !{!105, !22, i64 200}
!107 = !{!"p1 _ZTS7httpreq", !9, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!105, !5, i64 216}
!110 = !{!"httpreq", !37, i64 0, !37, i64 56, !18, i64 112, !18, i64 120, !18, i64 128, !5, i64 136}
!111 = !{!110, !18, i64 120}
!112 = !{!83, !18, i64 400}
!113 = !{!83, !18, i64 4192}
!114 = !{!83, !18, i64 4200}
!115 = distinct !{!115, !35}
!116 = !{!"p1 _ZTS9http_resp", !9, i64 0}
!117 = !{!"http_resp", !6, i64 0, !18, i64 8, !37, i64 16, !37, i64 72, !116, i64 128}
!118 = !{!117, !6, i64 0}
!119 = !{!"dynhds_entry", !18, i64 0, !18, i64 8, !17, i64 16, !17, i64 24}
!120 = !{!119, !18, i64 0}
!121 = !{!119, !18, i64 8}
!122 = !{!83, !18, i64 376}
!123 = !{!"_Bool", !5, i64 0}
!124 = !{!123, !123, i64 0}
!125 = !{!89, !9, i64 24}
!126 = !{i8 0, i8 2}
!127 = !{}
!128 = !{!89, !9, i64 96}
!129 = !{!11, !11, i64 0}
!130 = distinct !{!130, !35}
!131 = !{!49, !49, i64 0}
!132 = !{!"curl_slist", !18, i64 0, !49, i64 8}
!133 = !{!132, !18, i64 0}
!134 = !{!83, !18, i64 4600}
!135 = !{!83, !5, i64 4627}
!136 = !{!"Curl_str", !18, i64 0, !17, i64 8}
!137 = !{!136, !18, i64 0}
!138 = !{!136, !17, i64 8}
end_hunk_0
