begin_hunk_0

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 7765, ptr noundef nonnull @.str.196) #26
  %1 = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 10) #26 ; 0 uses
  br label %ssl_parse_certificate_chain.exit.thread

bb.t:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !270 ; 5 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !80
  %.not71.i = icmp eq i8 %i.be, 11
  br i1 %.not71.i, label %bb.u, label %2

2:                                                ; preds = %bb.t
  %3 = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 10) #26 ; 0 uses
  br label %ssl_parse_certificate_chain.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
end_hunk_0
begin_hunk_1

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 7778, ptr noundef nonnull @.str.196) #26
  %4 = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 50) #26 ; 0 uses
  br label %ssl_parse_certificate_chain.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 %..i.i52 ; 2 uses
end_hunk_1
begin_hunk_2

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 7793, ptr noundef nonnull @.str.196) #26
  %5 = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 50) #26 ; 0 uses
  br label %ssl_parse_certificate_chain.exit.thread

bb.z:                                             ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 12
end_hunk_2
begin_hunk_3
  %i.cp = phi ptr [ %i.bd, %bb.ac ], [ %.pre.i, %bb.ag ], [ %i.bd, %bb.ad ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.bj
  %i.cr = tail call i32 @mbedtls_x509_crt_parse_der(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.cq, i64 noundef %i.by) #26 ; 2 uses
  switch i32 %i.cr, label %bb.ap [
    i32 0, label %bb.ai
    i32 -9774, label %bb.ai
    i32 -10368, label %.loopexit.i
end_hunk_3
begin_hunk_4
bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.cs = load i64, ptr %i.bf, align 8, !tbaa !269 ; 2 uses
  %i.ct = icmp ult i64 %i.ca, %i.cs
  br i1 %i.ct, label %.peel.next.i, label %ssl_parse_certificate_chain.exit

.peel.next.i:                                     ; preds = %bb.ai, %bb.an
  %i.cu = phi i64 [ %i.di, %bb.an ], [ %i.cs, %bb.ai ] ; 2 uses
end_hunk_4
begin_hunk_5

.loopexit93.i:                                    ; preds = %.peel.next.i
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 7806, ptr noundef nonnull @.str.196) #26
  %6 = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 50) #26 ; 0 uses
  br label %ssl_parse_certificate_chain.exit.thread

bb.aj:                                            ; preds = %.peel.next.i
  %i.cx = load ptr, ptr %i.bc, align 8, !tbaa !270 ; 2 uses
end_hunk_5
begin_hunk_6

.loopexit94.i:                                    ; preds = %bb.aj, %bb.z
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 7815, ptr noundef nonnull @.str.196) #26
  %7 = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 43) #26 ; 0 uses
  br label %ssl_parse_certificate_chain.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.da = getelementptr i8, ptr %i.cy, i64 1
end_hunk_6
begin_hunk_7

.loopexit95.i:                                    ; preds = %bb.al, %bb.ak, %bb.ab, %bb.aa
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 7827, ptr noundef nonnull @.str.196) #26
  %8 = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 50) #26 ; 0 uses
  br label %ssl_parse_certificate_chain.exit.thread

ssl_check_peer_crt_unchanged.exit.thread.i:       ; preds = %ssl_check_peer_crt_unchanged.exit.peel.i, %bb.af, %bb.ae
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 7847, ptr noundef nonnull @.str.198) #26
  %9 = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 49) #26 ; 0 uses
  br label %ssl_parse_certificate_chain.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv
  %i.dh = tail call i32 @mbedtls_x509_crt_parse_der(ptr noundef nonnull %i.ax, ptr noundef %i.dg, i64 noundef %i.dc) #26 ; 2 uses
  switch i32 %i.dh, label %bb.ap [
    i32 0, label %bb.an
    i32 -9774, label %bb.an
    i32 -10368, label %.loopexit.i
end_hunk_7
begin_hunk_8
  ]

.loopexit.i:                                      ; preds = %bb.am, %bb.ah
  br label %bb.ap

.loopexit88.i:                                    ; preds = %bb.am, %bb.ah
  br label %bb.ap

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.di = load i64, ptr %i.bf, align 8, !tbaa !269 ; 2 uses
  %i.dj = icmp ult i64 %i.de, %i.di
  br i1 %i.dj, label %.peel.next.i, label %ssl_parse_certificate_chain.exit, !llvm.loop !271

ssl_parse_certificate_chain.exit:                 ; preds = %bb.an, %bb.ai
  tail call void @mbedtls_debug_print_crt(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 7893, ptr noundef nonnull @.str.200, ptr noundef nonnull %i.ax) #26
  %10 = load ptr, ptr %i.a, align 8, !tbaa !70
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %12 = load ptr, ptr %11, align 8, !tbaa !252
  %13 = tail call i32 @mbedtls_ssl_verify_certificate(ptr noundef nonnull %0, i32 noundef %i.h, ptr noundef nonnull %i.ax, ptr noundef %12, ptr noundef null) ; 2 uses
  %.not46 = icmp eq i32 %13, 0
  br i1 %.not46, label %bb.ao, label %ssl_parse_certificate_chain.exit.thread

bb.ao:                                            ; preds = %ssl_parse_certificate_chain.exit
  %i.dk = load ptr, ptr %i.as, align 8, !tbaa !88
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 112
  store ptr %i.ax, ptr %i.dl, align 8, !tbaa !45
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 8135, ptr noundef nonnull @.str.69) #26
  br label %.thread66

bb.ap:                                            ; preds = %bb.am, %bb.ah, %.loopexit.i, %.loopexit88.i
  %14 = phi i32 [ -9600, %.loopexit88.i ], [ -10368, %.loopexit.i ], [ %i.cr, %bb.ah ], [ %i.dh, %bb.am ] ; 2 uses
  %.0.i53 = phi i8 [ 43, %.loopexit88.i ], [ 80, %.loopexit.i ], [ 42, %bb.ah ], [ 42, %bb.am ]
  %15 = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext %.0.i53) #26 ; 0 uses
  tail call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 7886, ptr noundef nonnull @.str.199, i32 noundef %14) #26
  br label %ssl_parse_certificate_chain.exit.thread

.thread66:                                        ; preds = %bb.ao, %bb.g, %bb.n
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !35 ; 3 uses
  %i.do = add nsw i32 %i.dn, 1                    ; 3 uses
end_hunk_8
begin_hunk_9
  store i32 %i.do, ptr %i.dm, align 8, !tbaa !35
  br label %.thread72

ssl_parse_certificate_chain.exit.thread:          ; preds = %ssl_check_peer_crt_unchanged.exit.thread.i, %.loopexit95.i, %.loopexit94.i, %.loopexit93.i, %bb.y, %bb.v, %2, %bb.s, %ssl_parse_certificate_chain.exit, %bb.ap
  %.0366482 = phi i32 [ %14, %bb.ap ], [ %13, %ssl_parse_certificate_chain.exit ], [ -31232, %ssl_check_peer_crt_unchanged.exit.thread.i ], [ -29440, %.loopexit95.i ], [ -31232, %.loopexit94.i ], [ -29440, %.loopexit93.i ], [ -29440, %bb.y ], [ -29440, %bb.v ], [ -30464, %2 ], [ -30464, %bb.s ]
  tail call void @mbedtls_x509_crt_free(ptr noundef nonnull %i.ax) #26
  tail call void @free(ptr noundef nonnull %i.ax) #26
  br label %.thread72

.thread72:                                        ; preds = %bb.h, %bb.n, %bb.q, %.thread66, %ssl_parse_certificate_chain.exit.thread
  %.0366470 = phi i32 [ 0, %.thread66 ], [ %.0366482, %ssl_parse_certificate_chain.exit.thread ], [ %i.v, %bb.h ], [ -29824, %bb.n ], [ -32512, %bb.q ]
  ret i32 %.0366470
}

end_hunk_9
