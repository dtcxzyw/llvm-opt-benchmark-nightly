inline.NumInlined: 122
inline.NumDeleted: 51
begin_hunk_0_@ssl_tls13_parse_supported_groups_ext:bb.a
mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i: ; preds = %mbedtls_ssl_named_group_is_offered.exit, %mbedtls_ssl_named_group_is_offered.exit, %mbedtls_ssl_named_group_is_offered.exit, %mbedtls_ssl_named_group_is_offered.exit, %mbedtls_ssl_named_group_is_offered.exit
  %i.al = tail call i32 @mbedtls_ssl_get_ecp_group_id_from_tls_id(i16 noundef zeroext %i.v) #9
  %.not4.i = icmp eq i32 %i.al, 0
  br i1 %.not4.i, label %mbedtls_ssl_named_group_is_offered.exit.thread, label %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i.mbedtls_ssl_named_group_is_supported.exit.thread_crit_edge

mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i.mbedtls_ssl_named_group_is_supported.exit.thread_crit_edge: ; preds = %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !18
  br label %mbedtls_ssl_named_group_is_supported.exit.thread

mbedtls_ssl_named_group_is_supported.exit:        ; preds = %mbedtls_ssl_named_group_is_offered.exit
  %i.am = add i16 %i.v, -261
  %i.an = icmp ult i16 %i.am, -5
  br i1 %i.an, label %mbedtls_ssl_named_group_is_offered.exit.thread, label %mbedtls_ssl_named_group_is_supported.exit.thread, !llvm.loop !122

mbedtls_ssl_named_group_is_supported.exit.thread: ; preds = %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i.mbedtls_ssl_named_group_is_supported.exit.thread_crit_edge, %mbedtls_ssl_named_group_is_supported.exit
  %i.ao = phi ptr [ %.pre, %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i.mbedtls_ssl_named_group_is_supported.exit.thread_crit_edge ], [ %i.z, %mbedtls_ssl_named_group_is_supported.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 60
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !118
  %.not48 = icmp eq i16 %i.aq, 0
  br i1 %.not48, label %bb.g, label %mbedtls_ssl_named_group_is_offered.exit.thread, !llvm.loop !122

bb.g:                                             ; preds = %mbedtls_ssl_named_group_is_supported.exit.thread
  %i.ar = tail call ptr @mbedtls_ssl_named_group_to_str(i16 noundef zeroext %i.v) #9
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 875, ptr noundef nonnull @.str.56, ptr noundef %i.ar, i32 noundef %i.w) #9
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 60
  store i16 %i.v, ptr %i.at, align 4, !tbaa !118
  br label %mbedtls_ssl_named_group_is_offered.exit.thread

mbedtls_ssl_named_group_is_offered.exit.thread:   ; preds = %bb.f, %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i, %.preheader.i, %mbedtls_ssl_get_groups.exit.i, %mbedtls_ssl_named_group_is_supported.exit, %mbedtls_ssl_named_group_is_supported.exit.thread, %bb.g
  %i.au = icmp ult ptr %i.x, %i.m
  br i1 %i.au, label %bb.d, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.d, %.lr.ph, %bb.b, %bb.a
  %.sink = phi i32 [ 851, %bb.b ], [ 848, %bb.a ], [ 857, %.lr.ph ], [ 857, %bb.d ]
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %.sink, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.31) #9
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 50, i32 noundef -29440) #9
  br label %.loopexit

.loopexit:                                        ; preds = %mbedtls_ssl_named_group_is_offered.exit.thread, %.loopexit.sink.split, %bb.c
  %.2 = phi i32 [ -29440, %.loopexit.sink.split ], [ 0, %bb.c ], [ 0, %mbedtls_ssl_named_group_is_offered.exit.thread ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ssl_tls13_parse_key_shares_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ule ptr %1, %2
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = icmp ugt i64 %i.d, 1
  %narrow.i.not = and i1 %i.a, %i.e
  br i1 %narrow.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 918, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.34) #9
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 50, i32 noundef -29440) #9
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.0.copyload.i68 = load i16, ptr %1, align 1    ; 2 uses
  %i.f = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i68)
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 4 uses
  %i.i = icmp ule ptr %i.h, %2
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.b, %i.j
  %i.l = icmp uge i64 %i.k, %i.g
  %narrow.i69.not = and i1 %i.i, %i.l
  br i1 %narrow.i69.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 921, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.34) #9
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 50, i32 noundef -29440) #9
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2032
  store i16 0, ptr %i.o, align 8, !tbaa !123
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g ; 3 uses
  %.not89 = icmp eq i16 %.0.copyload.i68, 0
  br i1 %.not89, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %mbedtls_ssl_named_group_is_offered.exit.thread
  %.05388 = phi ptr [ %i.h, %.lr.ph ], [ %i.ae, %mbedtls_ssl_named_group_is_offered.exit.thread ] ; 4 uses
  %i.r = ptrtoint ptr %.05388 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ugt i64 %i.s, 3
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 943, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.34) #9
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 50, i32 noundef -29440) #9
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %.0.copyload.i67 = load i16, ptr %.05388, align 1 ; 2 uses
  %i.u = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i67) ; 9 uses
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05388, i64 2 ; 2 uses
  %.0.copyload.i = load i16, ptr %i.w, align 1
  %i.x = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i)
  %i.y = zext i16 %i.x to i64                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05388, i64 4 ; 3 uses
  %i.aa = icmp ule ptr %i.z, %i.p
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.q, %i.ab
  %i.ad = icmp uge i64 %i.ac, %i.y
  %narrow.i71.not = and i1 %i.aa, %i.ad
  br i1 %narrow.i71.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 948, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.34) #9
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 50, i32 noundef -29440) #9
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y ; 2 uses
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !18  ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %mbedtls_ssl_get_groups.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !119 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ah, null
  br i1 %.not7.i.i, label %mbedtls_ssl_get_groups.exit.i, label %.preheader.i

mbedtls_ssl_get_groups.exit.i:                    ; preds = %bb.k, %bb.j
  %i.ai = load ptr, ptr %0, align 8, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 256
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !120 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %mbedtls_ssl_named_group_is_offered.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %mbedtls_ssl_get_groups.exit.i, %bb.k
  %.0.i17.i = phi ptr [ %i.ak, %mbedtls_ssl_get_groups.exit.i ], [ %i.ah, %bb.k ] ; 2 uses
  %i.am = load i16, ptr %.0.i17.i, align 2, !tbaa !89 ; 2 uses
  %.not9.i = icmp eq i16 %i.am, 0
  br i1 %.not9.i, label %mbedtls_ssl_named_group_is_offered.exit.thread, label %.lr.ph.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i, i64 2 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !89 ; 2 uses
  %.not.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i, label %mbedtls_ssl_named_group_is_offered.exit.thread, label %.lr.ph.i, !llvm.loop !121

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.l
  %i.ap = phi i16 [ %i.ao, %bb.l ], [ %i.am, %.preheader.i ]
  %.010.i = phi ptr [ %i.an, %bb.l ], [ %.0.i17.i, %.preheader.i ]
  %i.aq = icmp eq i16 %i.ap, %i.u
  br i1 %i.aq, label %mbedtls_ssl_named_group_is_offered.exit, label %bb.l

mbedtls_ssl_named_group_is_offered.exit:          ; preds = %.lr.ph.i
  switch i16 %i.u, label %mbedtls_ssl_named_group_is_supported.exit [
    i16 29, label %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i
    i16 25, label %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i
    i16 24, label %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i
    i16 23, label %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i
    i16 30, label %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i
  ]

mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i: ; preds = %mbedtls_ssl_named_group_is_offered.exit, %mbedtls_ssl_named_group_is_offered.exit, %mbedtls_ssl_named_group_is_offered.exit, %mbedtls_ssl_named_group_is_offered.exit, %mbedtls_ssl_named_group_is_offered.exit
  %i.ar = tail call i32 @mbedtls_ssl_get_ecp_group_id_from_tls_id(i16 noundef zeroext %i.u) #9
  %.not4.i = icmp eq i32 %i.ar, 0
  br i1 %.not4.i, label %mbedtls_ssl_named_group_is_offered.exit.thread, label %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i.mbedtls_ssl_named_group_is_supported.exit.thread_crit_edge

mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i.mbedtls_ssl_named_group_is_supported.exit.thread_crit_edge: ; preds = %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !18
  br label %mbedtls_ssl_named_group_is_supported.exit.thread

mbedtls_ssl_named_group_is_supported.exit:        ; preds = %mbedtls_ssl_named_group_is_offered.exit
  %i.as = add i16 %i.u, -261
  %i.at = icmp ult i16 %i.as, -5
  br i1 %i.at, label %mbedtls_ssl_named_group_is_offered.exit.thread, label %mbedtls_ssl_named_group_is_supported.exit.thread, !llvm.loop !124

mbedtls_ssl_named_group_is_supported.exit.thread: ; preds = %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i.mbedtls_ssl_named_group_is_supported.exit.thread_crit_edge, %mbedtls_ssl_named_group_is_supported.exit
  %i.au = phi ptr [ %.pre, %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i.mbedtls_ssl_named_group_is_supported.exit.thread_crit_edge ], [ %i.af, %mbedtls_ssl_named_group_is_supported.exit ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2032
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !123
  %.not63 = icmp eq i16 %i.aw, 0
  br i1 %.not63, label %bb.m, label %mbedtls_ssl_named_group_is_offered.exit.thread, !llvm.loop !124

bb.m:                                             ; preds = %mbedtls_ssl_named_group_is_supported.exit.thread
  switch i16 %i.u, label %mbedtls_ssl_tls13_named_group_is_ecdhe.exit [
    i16 29, label %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread
    i16 25, label %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread
    i16 24, label %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread
    i16 23, label %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread
  ]

mbedtls_ssl_tls13_named_group_is_ecdhe.exit:      ; preds = %bb.m
  %.not = icmp ne i16 %.0.copyload.i67, 7680
  %i.ax = icmp ult i16 %i.u, 256
  %or.cond = and i1 %.not, %i.ax
  br i1 %or.cond, label %bb.n, label %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread

mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread: ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %mbedtls_ssl_tls13_named_group_is_ecdhe.exit
  %i.ay = tail call ptr @mbedtls_ssl_named_group_to_str(i16 noundef zeroext %i.u) #9
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 967, ptr noundef nonnull @.str.57, ptr noundef %i.ay, i32 noundef %i.v) #9
  %i.az = add nuw nsw i64 %i.y, 2
  %i.ba = tail call i32 @mbedtls_ssl_tls13_read_public_xxdhe_share(ptr noundef nonnull %0, ptr noundef nonnull %i.w, i64 noundef %i.az) #9 ; 2 uses
  %.not66 = icmp eq i32 %i.ba, 0
  br i1 %.not66, label %bb.o, label %.thread

bb.n:                                             ; preds = %mbedtls_ssl_tls13_named_group_is_ecdhe.exit
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 976, ptr noundef nonnull @.str.58, i32 noundef %i.v) #9
  br label %mbedtls_ssl_named_group_is_offered.exit.thread, !llvm.loop !124

bb.o:                                             ; preds = %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread
  %i.bb = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2032
  store i16 %i.u, ptr %i.bc, align 8, !tbaa !123
  br label %mbedtls_ssl_named_group_is_offered.exit.thread

mbedtls_ssl_named_group_is_offered.exit.thread:   ; preds = %bb.l, %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread.i, %.preheader.i, %mbedtls_ssl_get_groups.exit.i, %mbedtls_ssl_named_group_is_supported.exit, %mbedtls_ssl_named_group_is_supported.exit.thread, %bb.o, %bb.n
  %i.bd = icmp ult ptr %i.ae, %i.p
  br i1 %i.bd, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %mbedtls_ssl_named_group_is_offered.exit.thread
  %.pre90 = load ptr, ptr %i.m, align 8, !tbaa !18
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre90, i64 2032
  %.pre91 = load i16, ptr %.phi.trans.insert, align 8, !tbaa !123
  %i.be = icmp eq i16 %.pre91, 0
  br i1 %i.be, label %._crit_edge.thread, label %.thread

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 985, ptr noundef nonnull @.str.59) #9
  br label %.thread

.thread:                                          ; preds = %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread, %bb.i, %bb.g, %._crit_edge, %._crit_edge.thread, %bb.d, %bb.b
  %.2 = phi i32 [ -29440, %bb.b ], [ -29440, %bb.d ], [ 0, %._crit_edge ], [ 1, %._crit_edge.thread ], [ -29440, %bb.g ], [ -29440, %bb.i ], [ %i.ba, %mbedtls_ssl_tls13_named_group_is_ecdhe.exit.thread ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -29440, 1) i32 @ssl_tls13_parse_key_exchange_modes_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %narrow.i.not = icmp ugt ptr %2, %1
  br i1 %narrow.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 118, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.36) #9
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 50, i32 noundef -29440) #9
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !49      ; 3 uses
  %i.c = icmp ugt i8 %i.b, 2
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 47, i32 noundef -26112) #9
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.d = zext nneg i8 %i.b to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.a, %i.f
  %.not = icmp ult i64 %i.g, %i.d
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not2731 = icmp eq i8 %i.b, 0
  br i1 %.not2731, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.36) #9
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 50, i32 noundef -29440) #9
  br label %bb.k

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %.in = phi i64 [ %i.h, %bb.j ], [ %i.d, %.preheader ]
  %.033 = phi i8 [ %.1, %bb.j ], [ 0, %.preheader ] ; 2 uses
  %.02332 = phi ptr [ %i.i, %bb.j ], [ %i.e, %.preheader ] ; 2 uses
  %i.h = add nsw i64 %.in, -1                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.02332, i64 1
  %i.j = load i8, ptr %.02332, align 1, !tbaa !49
  switch i8 %i.j, label %bb.i [
    i8 0, label %bb.g
    i8 1, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph
  %i.k = or i8 %.033, 1
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 134, ptr noundef nonnull @.str.60) #9
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph
  %i.l = or i8 %.033, 4
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.61) #9
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 47, i32 noundef -26112) #9
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %.1 = phi i8 [ %i.k, %bb.g ], [ %i.l, %bb.h ]   ; 2 uses
  %.not27 = icmp eq i64 %i.h, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph, !llvm.loop !125

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %.0.lcssa = phi i8 [ 0, %.preheader ], [ %.1, %bb.j ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 59
  store i8 %.0.lcssa, ptr %i.o, align 1, !tbaa !101
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.i, %bb.f, %bb.d, %bb.b
  %.024 = phi i32 [ -29440, %bb.b ], [ -28160, %bb.d ], [ -29440, %bb.f ], [ -26112, %bb.i ], [ 0, %._crit_edge ]
  ret i32 %.024
}

declare i32 @mbedtls_ssl_parse_alpn_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_ssl_parse_sig_alg_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mbedtls_ssl_print_extension(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mbedtls_ssl_print_extensions(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_ssl_add_hs_hdr_to_checksum(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ssl_tls13_parse_pre_shared_key_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull captures(none) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.mbedtls_ssl_session, align 8 ; 14 uses
  %i.a = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  tail call void @mbedtls_debug_print_buf(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 540, ptr noundef nonnull @.str.62, ptr noundef %1, i64 noundef %i.c) #9
  %i.d = icmp ule ptr %1, %2
  %i.e = icmp ugt i64 %i.c, 8
  %narrow.i.not = and i1 %i.d, %i.e
  br i1 %narrow.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 545, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.45) #9
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 50, i32 noundef -29440) #9
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  %.0.copyload.i179 = load i16, ptr %1, align 1   ; 2 uses
  %i.f = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i179)
  %i.g = zext i16 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 5 uses
  %i.i = icmp ule ptr %i.h, %2
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.a, %i.j
  %i.l = icmp uge i64 %i.k, %i.g
  %narrow.i181.not = and i1 %i.i, %i.l
  br i1 %narrow.i181.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 549, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.45) #9
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 50, i32 noundef -29440) #9
  br label %bb.am

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g ; 8 uses
  %i.n = icmp ule ptr %i.m, %2
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.a, %i.o
  %i.q = icmp ugt i64 %i.p, 34
  %narrow.i182.not = and i1 %i.n, %i.q
  br i1 %narrow.i182.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 556, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.45) #9
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 50, i32 noundef -29440) #9
  br label %bb.am

bb.g:                                             ; preds = %bb.e
  %.0.copyload.i178 = load i16, ptr %i.m, align 1 ; 2 uses
  %i.r = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i178)
  %i.s = zext i16 %i.r to i64                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 5 uses
  %i.u = icmp ule ptr %i.t, %2
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.a, %i.v
  %i.x = icmp uge i64 %i.w, %i.s
  %narrow.i183.not = and i1 %i.u, %i.x
  br i1 %narrow.i183.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 559, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.45) #9
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 50, i32 noundef -29440) #9
  br label %bb.am

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s ; 3 uses
end_hunk_0
