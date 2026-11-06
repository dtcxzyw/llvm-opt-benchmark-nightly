Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vnc?download=true
inline.NumInlined: 533
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@qmp_query_server_entry:bb.a
  %i.b = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8
  %i.c = tail call ptr @qio_channel_socket_get_local_address(ptr noundef %0, ptr noundef null) #25 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(40) ptr @g_malloc0(i64 noundef 40) #24 ; 7 uses
  call fastcc void @vnc_init_basic_info(ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.a)
  call void @qapi_free_SocketAddress(ptr noundef nonnull %i.c) #25
  %i.e = load ptr, ptr %i.a, align 8
  %.not35 = icmp eq ptr %i.e, null
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @qapi_free_VncServerInfo2(ptr noundef %i.d) #25
  %i.f = load ptr, ptr %i.a, align 8
  call void @error_free(ptr noundef %i.f) #25
  br label %bb.x

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i8 %i.b, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 2 uses
  switch i32 %2, label %bb.w [
    i32 2, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 16, label %bb.h
    i32 17, label %bb.i
    i32 18, label %bb.j
    i32 19, label %bb.k
    i32 20, label %bb.v
  ]

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.h, align 4
  br label %qmp_query_auth.exit

bb.f:                                             ; preds = %bb.d
  store i32 2, ptr %i.h, align 4
  br label %qmp_query_auth.exit

bb.g:                                             ; preds = %bb.d
  store i32 3, ptr %i.h, align 4
  br label %qmp_query_auth.exit

bb.h:                                             ; preds = %bb.d
  store i32 4, ptr %i.h, align 4
  br label %qmp_query_auth.exit

bb.i:                                             ; preds = %bb.d
  store i32 5, ptr %i.h, align 4
  br label %qmp_query_auth.exit

bb.j:                                             ; preds = %bb.d
  store i32 6, ptr %i.h, align 4
  br label %qmp_query_auth.exit

bb.k:                                             ; preds = %bb.d
  store i32 7, ptr %i.h, align 4
  store i8 1, ptr %i.j, align 4
  switch i32 %3, label %bb.u [
    i32 256, label %bb.l
    i32 257, label %bb.m
    i32 258, label %bb.n
    i32 259, label %bb.o
    i32 260, label %bb.p
    i32 261, label %bb.q
    i32 262, label %bb.r
    i32 264, label %bb.s
    i32 263, label %bb.t
  ]

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.i, align 4
  br label %qmp_query_auth.exit

bb.m:                                             ; preds = %bb.k
  store i32 1, ptr %i.i, align 4
  br label %qmp_query_auth.exit

bb.n:                                             ; preds = %bb.k
  store i32 3, ptr %i.i, align 4
  br label %qmp_query_auth.exit

bb.o:                                             ; preds = %bb.k
  store i32 5, ptr %i.i, align 4
  br label %qmp_query_auth.exit

bb.p:                                             ; preds = %bb.k
  store i32 2, ptr %i.i, align 4
  br label %qmp_query_auth.exit

bb.q:                                             ; preds = %bb.k
  store i32 4, ptr %i.i, align 4
  br label %qmp_query_auth.exit

bb.r:                                             ; preds = %bb.k
  store i32 6, ptr %i.i, align 4
  br label %qmp_query_auth.exit

bb.s:                                             ; preds = %bb.k
  store i32 7, ptr %i.i, align 4
  br label %qmp_query_auth.exit

bb.t:                                             ; preds = %bb.k
  store i32 8, ptr %i.i, align 4
  br label %qmp_query_auth.exit

bb.u:                                             ; preds = %bb.k
  store i8 0, ptr %i.j, align 4
  br label %qmp_query_auth.exit

bb.v:                                             ; preds = %bb.d
  store i32 8, ptr %i.h, align 4
  br label %qmp_query_auth.exit

bb.w:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 4
  br label %qmp_query_auth.exit

qmp_query_auth.exit:                              ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %i.k = call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.d, ptr %i.l, align 8
  store ptr %4, ptr %i.k, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %qmp_query_auth.exit, %bb.c
  %.0 = phi ptr [ %4, %bb.c ], [ %i.k, %qmp_query_auth.exit ], [ %4, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.0
}

declare ptr @qio_net_listener_sioc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @vnc_display_reload_certs(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = load ptr, ptr @vnc_displays, align 8     ; 3 uses
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  br i1 %i.a, label %vnc_display_find.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  br i1 %.not, label %vnc_display_find.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %.011.i = phi ptr [ %.0.i, %bb.b ], [ %i.b, %.preheader.i ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.011.i, i64 587168
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.d) #27
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %vnc_display_find.exit.thread13, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.011.i, i64 587176
  %.0.i = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %vnc_display_find.exit.thread, label %.lr.ph.i, !llvm.loop !0

vnc_display_find.exit:                            ; preds = %bb.a
  br i1 %.not, label %vnc_display_find.exit.thread, label %vnc_display_find.exit.thread13

vnc_display_find.exit.thread:                     ; preds = %bb.b, %.preheader.i, %vnc_display_find.exit
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 588, ptr noundef nonnull @__func__.vnc_display_reload_certs, ptr noundef nonnull @.str.4) #25
  br label %bb.e

vnc_display_find.exit.thread13:                   ; preds = %.lr.ph.i, %vnc_display_find.exit
  %.07.i16 = phi ptr [ %i.b, %vnc_display_find.exit ], [ %.011.i, %.lr.ph.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.07.i16, i64 587232
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.i, null
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %vnc_display_find.exit.thread13
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 593, ptr noundef nonnull @__func__.vnc_display_reload_certs, ptr noundef nonnull @.str.5) #25
  br label %bb.e

bb.d:                                             ; preds = %vnc_display_find.exit.thread13
  %i.j = tail call zeroext i1 @qcrypto_tls_creds_reload(ptr noundef nonnull %i.i, ptr noundef %1) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %vnc_display_find.exit.thread
  %.0 = phi i1 [ false, %vnc_display_find.exit.thread ], [ %i.j, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

declare zeroext i1 @qcrypto_tls_creds_reload(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vnc_framebuffer_update(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca [2 x i8], align 1                 ; 5 uses
  %i.d = alloca [2 x i8], align 1                 ; 5 uses
  %i.e = alloca [2 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.f = lshr i32 %1, 8
  %i.g = trunc i32 %i.f to i8
  store i8 %i.g, ptr %i.e, align 1
  %i.h = trunc i32 %1 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.h, ptr %i.i, align 1
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.e, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.j = lshr i32 %2, 8
  %i.k = trunc i32 %i.j to i8
  store i8 %i.k, ptr %i.d, align 1
  %i.l = trunc i32 %2 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.l, ptr %i.m, align 1
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.n = lshr i32 %3, 8
  %i.o = trunc i32 %i.n to i8
  store i8 %i.o, ptr %i.c, align 1
  %i.p = trunc i32 %3 to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.p, ptr %i.q, align 1
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.r = lshr i32 %4, 8
  %i.s = trunc i32 %i.r to i8
  store i8 %i.s, ptr %i.b, align 1
  %i.t = trunc i32 %4 to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.t, ptr %i.u, align 1
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  store i32 %6, ptr %i.a, align 4
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vnc_write_u16(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = lshr i16 %1, 8
  %i.c = trunc nuw i16 %i.b to i8
  store i8 %i.c, ptr %i.a, align 1
  %i.d = trunc i16 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.d, ptr %i.e, align 1
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vnc_write_s32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %2, ptr %i.a, align 4
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @vnc_server_fb_stride(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 587152
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @pixman_image_get_stride(ptr noundef %i.b) #25
  ret i32 %i.c
}

declare i32 @pixman_image_get_stride(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @vnc_server_fb_ptr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 587152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @pixman_image_get_data(ptr noundef %i.b) #25
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call i32 @pixman_image_get_stride(ptr noundef %i.d) #25
  %i.f = mul i32 %i.e, %2
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 %i.g
  %i.i = shl i32 %1, 2
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  ret ptr %i.k
}

declare ptr @pixman_image_get_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @vnc_convert_pixel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = lshr i32 %2, 16
  %i.b = and i32 %i.a, 255
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 86684
  %i.d = load i8, ptr %i.c, align 4
  %i.e = zext nneg i8 %i.d to i32
  %i.f = shl i32 %i.b, %i.e
  %i.g = lshr i32 %i.f, 8
  %i.h = lshr i32 %2, 8
  %i.i = and i32 %i.h, 255
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 86685
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext nneg i8 %i.k to i32
  %i.m = shl i32 %i.i, %i.l
  %i.n = lshr i32 %i.m, 8
  %i.o = and i32 %2, 255
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 86686
  %i.q = load i8, ptr %i.p, align 2
  %i.r = zext nneg i8 %i.q to i32
  %i.s = shl i32 %i.o, %i.r
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.g, 255
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 86676
  %i.w = load i8, ptr %i.v, align 4
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl i32 %i.u, %i.x
  %i.z = and i32 %i.n, 255
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 86677
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl i32 %i.z, %i.ac
  %i.ae = or i32 %i.ad, %i.y
  %i.af = and i32 %i.t, 255
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 86678
  %i.ah = load i8, ptr %i.ag, align 2
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = shl i32 %i.af, %i.ai
  %i.ak = or i32 %i.ae, %i.aj                     ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 86657
  %i.am = load i8, ptr %i.al, align 1
  switch i8 %i.am, label %bb.f [
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.an = trunc i32 %i.ak to i8
  store i8 %i.an, ptr %1, align 1
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 86692
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp eq i32 %i.ap, 4321
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = lshr i32 %i.ak, 8
  %i.as = trunc i32 %i.ar to i8
  store i8 %i.as, ptr %1, align 1
  %i.at = trunc i32 %i.ak to i8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.at, ptr %i.au, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.av = trunc i32 %i.ak to i16
  store i16 %i.av, ptr %1, align 1
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 86692
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp eq i32 %i.ax, 4321
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  store i32 %3, ptr %1, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 %i.ak, ptr %1, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @vnc_raw_send_framebuffer_update(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 86432
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 587152 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @pixman_image_get_data(ptr noundef %i.d) #25
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = tail call i32 @pixman_image_get_stride(ptr noundef %i.f) #25
  %i.h = icmp sgt i32 %4, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = mul i32 %i.g, %2
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.j
  %i.l = shl i32 %1, 2
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 86648
  %i.p = shl i32 %3, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.014 = phi ptr [ %i.n, %.lr.ph ], [ %i.u, %bb.b ] ; 2 uses
  %.01213 = phi i32 [ 0, %.lr.ph ], [ %i.v, %bb.b ]
  %i.q = load ptr, ptr %i.o, align 8
  tail call void %i.q(ptr noundef nonnull %0, ptr noundef %.014, i32 noundef %i.p) #25
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = tail call i32 @pixman_image_get_stride(ptr noundef %i.r) #25
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %.014, i64 %i.t
  %i.v = add nuw nsw i32 %.01213, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @vnc_send_framebuffer_update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca [2 x i8], align 1                 ; 5 uses
  %i.d = alloca [2 x i8], align 1                 ; 5 uses
  %i.e = alloca [2 x i8], align 1                 ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [2 x i8], align 1                 ; 5 uses
  %i.h = alloca [2 x i8], align 1                 ; 5 uses
  %i.i = alloca [2 x i8], align 1                 ; 5 uses
  %i.j = alloca [2 x i8], align 1                 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 86492
  %i.l = load i32, ptr %i.k, align 4
  switch i32 %i.l, label %bb.h [
    i32 6, label %bb.b
    i32 5, label %bb.c
    i32 7, label %bb.d
    i32 -260, label %bb.e
    i32 16, label %bb.f
    i32 17, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @vnc_zlib_send_framebuffer_update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #25
  br label %vnc_raw_send_framebuffer_update.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  %i.n = lshr i32 %2, 8
  %i.o = trunc i32 %i.n to i8
  store i8 %i.o, ptr %i.j, align 1
  %i.p = trunc i32 %2 to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.p, ptr %i.q, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.r = lshr i32 %3, 8
  %i.s = trunc i32 %i.r to i8
  store i8 %i.s, ptr %i.i, align 1
  %i.t = trunc i32 %3 to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.u, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.v = lshr i32 %4, 8
  %i.w = trunc i32 %i.v to i8
  store i8 %i.w, ptr %i.h, align 1
  %i.x = trunc i32 %4 to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 %i.x, ptr %i.y, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.z = lshr i32 %5, 8
  %i.aa = trunc i32 %i.z to i8
  store i8 %i.aa, ptr %i.g, align 1
  %i.ab = trunc i32 %5 to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %i.ab, ptr %i.ac, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store <4 x i8> <i8 0, i8 0, i8 0, i8 5>, ptr %i.f, align 4
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.ad = call i32 @vnc_hextile_send_framebuffer_update(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #25
  br label %vnc_raw_send_framebuffer_update.exit

bb.d:                                             ; preds = %bb.a
  %i.ae = tail call i32 @vnc_tight_send_framebuffer_update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #25
  br label %vnc_raw_send_framebuffer_update.exit

bb.e:                                             ; preds = %bb.a
  %i.af = tail call i32 @vnc_tight_png_send_framebuffer_update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #25
  br label %vnc_raw_send_framebuffer_update.exit

bb.f:                                             ; preds = %bb.a
  %i.ag = tail call i32 @vnc_zrle_send_framebuffer_update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #25
  br label %vnc_raw_send_framebuffer_update.exit

bb.g:                                             ; preds = %bb.a
  %i.ah = tail call i32 @vnc_zywrle_send_framebuffer_update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #25
  br label %vnc_raw_send_framebuffer_update.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.ai = lshr i32 %2, 8
  %i.aj = trunc i32 %i.ai to i8
  store i8 %i.aj, ptr %i.e, align 1
  %i.ak = trunc i32 %2 to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.ak, ptr %i.al, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.am = lshr i32 %3, 8
  %i.an = trunc i32 %i.am to i8
  store i8 %i.an, ptr %i.d, align 1
  %i.ao = trunc i32 %3 to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.ao, ptr %i.ap, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.aq = lshr i32 %4, 8
  %i.ar = trunc i32 %i.aq to i8
  store i8 %i.ar, ptr %i.c, align 1
  %i.as = trunc i32 %4 to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.as, ptr %i.at, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.au = lshr i32 %5, 8
  %i.av = trunc i32 %i.au to i8
  store i8 %i.av, ptr %i.b, align 1
  %i.aw = trunc i32 %5 to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.aw, ptr %i.ax, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 86432
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 587152 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call ptr @pixman_image_get_data(ptr noundef %i.bb) #25
  %i.bd = load ptr, ptr %i.ba, align 8
  %i.be = call i32 @pixman_image_get_stride(ptr noundef %i.bd) #25
  %i.bf = icmp sgt i32 %5, 0
  br i1 %i.bf, label %.lr.ph.i, label %vnc_raw_send_framebuffer_update.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.bg = mul i32 %i.be, %3
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bc, i64 %i.bh
  %i.bj = shl i32 %2, 2
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 86648
  %i.bn = shl i32 %4, 2
  br label %bb.i
end_hunk_0
begin_hunk_1_@vnc_client_io:bb.a
bb.r:                                             ; preds = %bb.p
  %i.ao = sext i32 %i.am to i64
  store i64 %i.ao, ptr %i.ae, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ap = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not25.i = icmp eq ptr %i.ap, null
  br i1 %.not25.i, label %vnc_client_read.exit.thread, label %bb.n, !llvm.loop !27

vnc_client_read.exit:                             ; preds = %bb.o, %bb.m
  call fastcc void @vnc_disconnect_finish(ptr noundef nonnull %2)
  br label %bb.ae

vnc_client_read.exit.thread:                      ; preds = %bb.s, %bb.n, %vnc_client_read_plain.exit.i, %bb.m, %bb.e
  %i.aq = and i32 %1, 4
  %.not15 = icmp eq i32 %i.aq, 0
  br i1 %.not15, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %vnc_client_read.exit.thread
  %i.ar = load i64, ptr %2, align 8
  %i.as = icmp eq i64 %i.ar, 410936327799964859
  br i1 %i.as, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1479, ptr noundef nonnull @__PRETTY_FUNCTION__.vnc_client_write) #26, !inline_history !28
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.at = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 86744 ; 2 uses
  call void %i.at(ptr noundef nonnull %i.au, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !29
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 86584
  %i.aw = load i64, ptr %i.av, align 8
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call fastcc void @vnc_client_write_locked(ptr noundef nonnull %2), !inline_history !28
  br label %vnc_client_write.exit

bb.x:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not13.i = icmp eq ptr %i.ay, null
  br i1 %.not13.i, label %vnc_client_write.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8            ; 2 uses
  %.not14.i = icmp eq i32 %i.ba, 0
  br i1 %.not14.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.az, align 8
  %i.bb = call i32 @g_source_remove(i32 noundef %i.ba) #25, !inline_history !28 ; 0 uses
  %.pre.i = load ptr, ptr %i.ax, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bc = phi ptr [ %.pre.i, %bb.z ], [ %i.ay, %bb.y ]
  %i.bd = call i32 @qio_channel_add_watch(ptr noundef %i.bc, i32 noundef 25, ptr noundef nonnull @vnc_client_io, ptr noundef nonnull %2, ptr noundef null) #25, !inline_history !28
  store i32 %i.bd, ptr %i.az, align 8
  br label %vnc_client_write.exit

vnc_client_write.exit:                            ; preds = %bb.w, %bb.x, %bb.aa
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.au, ptr noundef nonnull @.str.51, i32 noundef 66) #25, !inline_history !28
  br label %bb.ab

bb.ab:                                            ; preds = %vnc_client_write.exit, %vnc_client_read.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bf = load i32, ptr %i.be, align 4
  %.not16 = icmp eq i32 %i.bf, 0
  br i1 %.not16, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8            ; 2 uses
  %.not17 = icmp eq i32 %i.bh, 0
  br i1 %.not17, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bg, align 8
  %i.bi = call i32 @g_source_remove(i32 noundef %i.bh) #25 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %vnc_client_read.exit, %bb.ab, %bb.ad, %bb.ac, %bb.d
  ret i32 1
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare i32 @g_source_remove(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vnc_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, 410936327799964859
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1637, ptr noundef nonnull @__PRETTY_FUNCTION__.vnc_write) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 86560
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %.not25 = icmp eq i64 %i.f, 0
  br i1 %.not25, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 86584
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = udiv i64 %i.h, 5
  %i.j = icmp ugt i64 %i.i, %i.f
  br i1 %i.j, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %trace_vnc_client_output_limit.exit, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.n = load i16, ptr @_TRACE_VNC_CLIENT_OUTPUT_LIMIT_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.n, 0
  br i1 %.not3.i, label %trace_vnc_client_output_limit.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load i32, ptr @qemu_loglevel, align 4
  %i.p = and i32 %i.o, 32768
  %.not4.i = icmp eq i32 %i.p, 0
  br i1 %.not4.i, label %trace_vnc_client_output_limit.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.50, ptr noundef nonnull %0, ptr noundef %i.l, i64 noundef %i.h, i64 noundef range(i64 1, 3689348814741910323) %i.f) #25
  br label %trace_vnc_client_output_limit.exit

trace_vnc_client_output_limit.exit:               ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  tail call fastcc void @vnc_disconnect_start(ptr noundef nonnull %0)
  br label %bb.p

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 86568 ; 3 uses
  tail call void @buffer_reserve(ptr noundef nonnull %i.q, i64 noundef %2) #25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %.not26 = icmp eq ptr %i.s, null
  br i1 %.not26, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call i32 @buffer_empty(ptr noundef nonnull %i.q) #25
  %.not27 = icmp eq i32 %i.t, 0
  br i1 %.not27, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %.not28 = icmp eq i32 %i.v, 0
  br i1 %.not28, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.u, align 8
  %i.w = tail call i32 @g_source_remove(i32 noundef %i.v) #25 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.x = load ptr, ptr %i.r, align 8
  %i.y = tail call i32 @qio_channel_add_watch(ptr noundef %i.x, i32 noundef 29, ptr noundef nonnull @vnc_client_io, ptr noundef nonnull %0, ptr noundef null) #25
  store i32 %i.y, ptr %i.u, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k, %bb.j
  tail call void @buffer_append(ptr noundef nonnull %i.q, ptr noundef %1, i64 noundef %2) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %bb.o, %trace_vnc_client_output_limit.exit
  ret void
}

declare void @buffer_reserve(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @buffer_empty(ptr noundef) local_unnamed_addr #3

declare i32 @qio_channel_add_watch(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @buffer_append(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vnc_write_u32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %2, ptr %i.a, align 4
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  store i8 %1, ptr %i.a, align 1
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 1)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vnc_flush(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 2 uses
  tail call void %i.a(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 86568
  %i.f = tail call i32 @buffer_empty(ptr noundef nonnull %i.e) #25
  %.not10 = icmp eq i32 %i.f, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @vnc_client_write_locked(ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not12 = icmp eq i32 %i.j, 0
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.i, align 8
  %i.k = tail call i32 @g_source_remove(i32 noundef %i.j) #25 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vnc_client_write_locked(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 86568
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 86600
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 86584 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call i64 @qio_channel_write(ptr noundef %i.h, ptr noundef %i.d, i64 noundef %i.f, ptr noundef nonnull %i.a) #25, !inline_history !30 ; 2 uses
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %vnc_client_write_buf.exit.i, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.k = load i16, ptr @_TRACE_VNC_CLIENT_WRITE_WIRE_DSTATE, align 2
  %.not3.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not3.i.i.i, label %vnc_client_write_buf.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not4.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i.i.i, label %vnc_client_write_buf.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.45, ptr noundef nonnull %0, ptr noundef %i.d, i64 noundef %i.f, i64 noundef %i.i) #25, !inline_history !30
  br label %vnc_client_write_buf.exit.i

vnc_client_write_buf.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = call range(i64 0, -9223372036854775808) i64 @vnc_client_io_error(ptr noundef nonnull %0, i64 noundef %i.i, ptr noundef %i.n), !inline_history !30 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %vnc_client_write_plain.exit, label %bb.e

bb.e:                                             ; preds = %vnc_client_write_buf.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 86552 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %.not37.i = icmp ult i64 %i.o, %i.q
  br i1 %.not37.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not38.i = icmp eq i64 %i.q, 0
  br i1 %.not38.i, label %trace_vnc_client_unthrottle_forced.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.g, align 8
  %i.s = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %trace_vnc_client_unthrottle_forced.exit.i, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.t = load i16, ptr @_TRACE_VNC_CLIENT_UNTHROTTLE_FORCED_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.t, 0
  br i1 %.not2.i.i, label %trace_vnc_client_unthrottle_forced.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr @qemu_loglevel, align 4
  %i.v = and i32 %i.u, 32768
  %.not3.i.i = icmp eq i32 %i.v, 0
  br i1 %.not3.i.i, label %trace_vnc_client_unthrottle_forced.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.52, ptr noundef nonnull %0, ptr noundef %i.r) #25, !inline_history !30
  br label %trace_vnc_client_unthrottle_forced.exit.i

bb.k:                                             ; preds = %bb.e
  %i.w = sub nuw i64 %i.q, %i.o
  br label %trace_vnc_client_unthrottle_forced.exit.i

trace_vnc_client_unthrottle_forced.exit.i:        ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %storemerge.i = phi i64 [ %i.w, %bb.k ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ]
  store i64 %storemerge.i, ptr %i.p, align 8
  %i.x = load i64, ptr %i.e, align 8
  call void @buffer_advance(ptr noundef nonnull %i.b, i64 noundef %i.o) #25, !inline_history !30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 86560
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.not39.i = icmp uge i64 %i.x, %i.z
  %.pr.pre44.i = load i64, ptr %i.e, align 8      ; 6 uses
  %i.aa = icmp ult i64 %.pr.pre44.i, %i.z
  %or.cond.i = select i1 %.not39.i, i1 %i.aa, i1 false
  br i1 %or.cond.i, label %bb.l, label %trace_vnc_client_unthrottle_incremental.exit.i

bb.l:                                             ; preds = %trace_vnc_client_unthrottle_forced.exit.i
  %i.ab = load ptr, ptr %i.g, align 8
  %i.ac = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i41.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i41.i, label %trace_vnc_client_unthrottle_incremental.exit.i, label %bb.m, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.ad = load i16, ptr @_TRACE_VNC_CLIENT_UNTHROTTLE_INCREMENTAL_DSTATE, align 2
  %.not2.i42.i = icmp eq i16 %i.ad, 0
  br i1 %.not2.i42.i, label %trace_vnc_client_unthrottle_incremental.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load i32, ptr @qemu_loglevel, align 4
  %i.af = and i32 %i.ae, 32768
  %.not3.i43.i = icmp eq i32 %i.af, 0
  br i1 %.not3.i43.i, label %trace_vnc_client_unthrottle_incremental.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.53, ptr noundef nonnull %0, ptr noundef %i.ab, i64 noundef %.pr.pre44.i) #25, !inline_history !30
  %.pr.pre.i = load i64, ptr %i.e, align 8
  br label %trace_vnc_client_unthrottle_incremental.exit.i

trace_vnc_client_unthrottle_incremental.exit.i:   ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %trace_vnc_client_unthrottle_forced.exit.i
  %i.ag = phi i64 [ %.pr.pre.i, %bb.o ], [ %.pr.pre44.i, %trace_vnc_client_unthrottle_forced.exit.i ], [ %.pr.pre44.i, %bb.l ], [ %.pr.pre44.i, %bb.m ], [ %.pr.pre44.i, %bb.n ]
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.p, label %vnc_client_write_plain.exit

bb.p:                                             ; preds = %trace_vnc_client_unthrottle_incremental.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8            ; 2 uses
  %.not40.i = icmp eq i32 %i.aj, 0
  br i1 %.not40.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ai, align 8
  %i.ak = call i32 @g_source_remove(i32 noundef %i.aj) #25, !inline_history !30 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.al = load ptr, ptr %i.g, align 8
  %i.am = call i32 @qio_channel_add_watch(ptr noundef %i.al, i32 noundef 25, ptr noundef nonnull @vnc_client_io, ptr noundef nonnull %0, ptr noundef null) #25, !inline_history !30
  store i32 %i.am, ptr %i.ai, align 8
  br label %vnc_client_write_plain.exit

vnc_client_write_plain.exit:                      ; preds = %vnc_client_write_buf.exit.i, %trace_vnc_client_unthrottle_incremental.exit.i, %bb.r
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @read_u32(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = load i32, ptr %i.a, align 1
  %i.c = tail call i32 @llvm.bswap.i32(i32 %i.b)
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local void @start_client_init(ptr nofree noundef writeonly captures(none) initializes((86720, 86736)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 86720
  store ptr @protocol_client_init, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 86728
  store i64 1, ptr %i.b, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @protocol_client_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca [2 x i8], align 1                 ; 5 uses
  %i.d = alloca [1024 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.d, i8 0, i64 1024, i1 false), !annotation !18
  %i.e = load i8, ptr %1, align 1
  %.not = icmp eq i8 %i.e, 0                      ; 3 uses
  %i.f = select i1 %.not, i32 3, i32 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 86432 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8
  switch i32 %i.j, label %.loopexit [
    i32 3, label %bb.g
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b
  %.052 = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not4753 = icmp eq ptr %.052, null
  br i1 %.not4753, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.054 = phi ptr [ %.0, %bb.e ], [ %.052, %.preheader ] ; 4 uses
  %i.k = icmp eq ptr %0, %.054
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.054, i64 86488
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, -2
  %switch = icmp eq i32 %i.n, 2
  br i1 %switch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @vnc_disconnect_start(ptr noundef nonnull %.054)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.lr.ph, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.054, i64 103312
  %.0 = load ptr, ptr %i.o, align 8               ; 2 uses
  %.not47 = icmp eq ptr %.0, null
  br i1 %.not47, label %.loopexit, label %.lr.ph, !llvm.loop !31

.critedge:                                        ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.critedge
  tail call fastcc void @vnc_disconnect_start(ptr noundef nonnull %0)
  br label %bb.aa

bb.g:                                             ; preds = %bb.a
  br i1 %.not, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @vnc_disconnect_start(ptr noundef nonnull %0)
  br label %bb.aa

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.g, %.critedge, %bb.a
  tail call fastcc void @vnc_set_share_mode(ptr noundef %0, i32 noundef %i.f)
  %i.s = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp sgt i32 %i.u, %i.w
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  tail call fastcc void @vnc_disconnect_start(ptr noundef nonnull %0)
  br label %bb.aa

bb.j:                                             ; preds = %.loopexit
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 587152
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call i32 @pixman_image_get_width(ptr noundef %i.z) #25
  %i.ab = icmp slt i32 %i.aa, 65536
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.g, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 587152
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i32 @pixman_image_get_width(ptr noundef %i.ae) #25
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 2731, ptr noundef nonnull @__PRETTY_FUNCTION__.protocol_client_init) #26
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.g, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 587152
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i32 @pixman_image_get_height(ptr noundef %i.aj) #25
  %i.al = icmp slt i32 %i.ak, 65536
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %i.g, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 587152
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call i32 @pixman_image_get_height(ptr noundef %i.ao) #25
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @__assert_fail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 2733, ptr noundef nonnull @__PRETTY_FUNCTION__.protocol_client_init) #26
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.g, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 587152
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call i32 @pixman_image_get_width(ptr noundef %i.at) #25
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 86472 ; 2 uses
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = load ptr, ptr %i.g, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 587152
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call i32 @pixman_image_get_height(ptr noundef %i.az) #25
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 86480 ; 2 uses
  store i64 %i.bb, ptr %i.bc, align 8
  %i.bd = load i64, ptr %i.aw, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.be = lshr i64 %i.bd, 8
  %i.bf = trunc i64 %i.be to i8
  store i8 %i.bf, ptr %i.c, align 1
  %i.bg = trunc i64 %i.bd to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.bg, ptr %i.bh, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.bi = load i64, ptr %i.bc, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.bj = lshr i64 %i.bi, 8
  %i.bk = trunc i64 %i.bj to i8
  store i8 %i.bk, ptr %i.b, align 1
  %i.bl = trunc i64 %i.bi to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.bl, ptr %i.bm, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call fastcc void @pixel_format_message(ptr noundef nonnull %0)
  %i.bn = load ptr, ptr @qemu_name, align 8       ; 2 uses
  %.not50 = icmp eq ptr %i.bn, null
  br i1 %.not50, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.d, i64 noundef 1024, i32 noundef 1, i64 noundef 1024, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.bn) #25
  %spec.store.select = call i32 @llvm.umin.i32(i32 %i.bo, i32 1024)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bp = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.d, i64 noundef 1024, i32 noundef 1, i64 noundef 1024, ptr noundef nonnull @.str.57) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.043 = phi i32 [ %spec.store.select, %bb.q ], [ %i.bp, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %3 = call i32 @llvm.bswap.i32(i32 %.043)
  store i32 %3, ptr %i.a, align 4
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bq = sext i32 %.043 to i64
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i64 noundef %i.bq)
  %i.br = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 2 uses
  call void %i.br(ptr noundef nonnull %i.bs, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !3
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  %.not.i = icmp eq ptr %i.bu, null
  br i1 %.not.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 86568
  %i.bw = call i32 @buffer_empty(ptr noundef nonnull %i.bv) #25
  %.not10.i = icmp eq i32 %i.bw, 0
  br i1 %.not10.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call fastcc void @vnc_client_write_locked(ptr noundef nonnull %0)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.by = load i32, ptr %i.bx, align 4
  %.not11.i = icmp eq i32 %i.by, 0
  br i1 %.not11.i, label %vnc_flush.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8            ; 2 uses
  %.not12.i = icmp eq i32 %i.ca, 0
  br i1 %.not12.i, label %vnc_flush.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bz, align 8
  %i.cb = call i32 @g_source_remove(i32 noundef %i.ca) #25 ; 0 uses
  br label %vnc_flush.exit

vnc_flush.exit:                                   ; preds = %bb.v, %bb.w, %bb.x
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.bs, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 86544 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  %.not.i51 = icmp eq ptr %i.cd, null
  br i1 %.not.i51, label %vnc_client_cache_auth.exit, label %bb.y

bb.y:                                             ; preds = %vnc_flush.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 86528
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %.not4.i = icmp eq ptr %i.cf, null
  br i1 %.not4.i, label %vnc_client_cache_auth.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = call ptr @qcrypto_tls_session_get_peer_name(ptr noundef nonnull %i.cf) #25
  %i.ch = load ptr, ptr %i.cc, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr %i.cg, ptr %i.ci, align 8
  br label %vnc_client_cache_auth.exit

vnc_client_cache_auth.exit:                       ; preds = %vnc_flush.exit, %bb.y, %bb.z
  call fastcc void @vnc_qmp_event(ptr noundef nonnull %0, i32 noundef 40)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 86720
  store ptr @protocol_client_msg, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 86728
  store i64 1, ptr %i.ck, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %vnc_client_cache_auth.exit, %bb.i, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @start_auth_vnc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 86512 ; 2 uses
  %i.c = call i32 @qcrypto_random_bytes(ptr noundef nonnull %i.b, i64 noundef 16, ptr noundef nonnull %i.a) #25
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 86504
  %i.e = load i32, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = call ptr @error_get_pretty(ptr noundef %i.f) #25
  %i.h = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %trace_vnc_auth_fail.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.i = load i16, ptr @_TRACE_VNC_AUTH_FAIL_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.i, 0
  br i1 %.not3.i, label %trace_vnc_auth_fail.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 32768
  %.not4.i = icmp eq i32 %i.k, 0
  br i1 %.not4.i, label %trace_vnc_auth_fail.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.105, ptr noundef nonnull %0, i32 noundef %i.e, ptr noundef nonnull @.str.8, ptr noundef %i.g) #25
  br label %trace_vnc_auth_fail.exit

trace_vnc_auth_fail.exit:                         ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.l = load ptr, ptr %i.a, align 8
  call void @error_free(ptr noundef %i.l) #25
  call fastcc void @authentication_failed(ptr noundef nonnull %0)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 16)
  %i.m = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 2 uses
  call void %i.m(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %.not.i8 = icmp eq ptr %i.p, null
  br i1 %.not.i8, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 86568
  %i.r = call i32 @buffer_empty(ptr noundef nonnull %i.q) #25
  %.not10.i = icmp eq i32 %i.r, 0
  br i1 %.not10.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call fastcc void @vnc_client_write_locked(ptr noundef nonnull %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.t = load i32, ptr %i.s, align 4
  %.not11.i = icmp eq i32 %i.t, 0
  br i1 %.not11.i, label %vnc_flush.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %.not12.i = icmp eq i32 %i.v, 0
  br i1 %.not12.i, label %vnc_flush.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.u, align 8
  %i.w = call i32 @g_source_remove(i32 noundef %i.v) #25 ; 0 uses
  br label %vnc_flush.exit

vnc_flush.exit:                                   ; preds = %bb.i, %bb.j, %bb.k
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 86720
  store ptr @protocol_client_auth_vnc, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 86728
  store i64 16, ptr %i.y, align 8
  br label %bb.l

bb.l:                                             ; preds = %vnc_flush.exit, %trace_vnc_auth_fail.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

declare i32 @qcrypto_random_bytes(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @authentication_failed(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.b, align 4
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 86500
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sgt i32 %i.d, 7
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store <4 x i8> <i8 0, i8 0, i8 0, i8 22>, ptr %i.a, align 4
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull @authentication_failed.err, i64 noundef 22)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 2 uses
  call void %i.f(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 86568
  %i.k = call i32 @buffer_empty(ptr noundef nonnull %i.j) #25
  %.not10.i = icmp eq i32 %i.k, 0
end_hunk_1
begin_hunk_2_@vnc_sent_lossy_rect:bb.a
  %i.p = xor i32 %i.i, -1
  %i.q = add nsw i32 %i.c, %i.p
  %i.r = zext i32 %i.q to i64
  %i.s = add nuw nsw i64 %i.r, 1                  ; 9 uses
  %i.t = sub nsw i32 %i.f, %i.j                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.t to i64    ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %i.n
  %i.v = getelementptr i8, ptr %i.u, i64 %i.o     ; 9 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.w = add nsw i32 %i.t, -1
  %i.x = icmp ult i32 %i.w, 7
  br i1 %i.x, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvar = phi i64 [ 0, %.preheader.preheader.new ], [ %indvar.next.7, %.preheader ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.y = mul nuw nsw i64 %indvar, 80
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 1, i64 %i.s, i1 false)
  %i.z = mul nuw i64 %indvar, 80
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %scevgep.1 = getelementptr i8, ptr %i.aa, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.1, i8 1, i64 %i.s, i1 false)
  %i.ab = mul nuw i64 %indvar, 80
  %i.ac = getelementptr i8, ptr %i.v, i64 %i.ab
  %scevgep.2 = getelementptr i8, ptr %i.ac, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.2, i8 1, i64 %i.s, i1 false)
  %i.ad = mul nuw i64 %indvar, 80
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ad
  %scevgep.3 = getelementptr i8, ptr %i.ae, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.3, i8 1, i64 %i.s, i1 false)
  %i.af = mul nuw i64 %indvar, 80
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.af
  %scevgep.4 = getelementptr i8, ptr %i.ag, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.4, i8 1, i64 %i.s, i1 false)
  %i.ah = mul nuw i64 %indvar, 80
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ah
  %scevgep.5 = getelementptr i8, ptr %i.ai, i64 400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.5, i8 1, i64 %i.s, i1 false)
  %i.aj = mul nuw i64 %indvar, 80
  %i.ak = getelementptr i8, ptr %i.v, i64 %i.aj
  %scevgep.6 = getelementptr i8, ptr %i.ak, i64 480
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.6, i8 1, i64 %i.s, i1 false)
  %i.al = mul nuw i64 %indvar, 80
  %i.am = getelementptr i8, ptr %i.v, i64 %i.al
  %scevgep.7 = getelementptr i8, ptr %i.am, i64 560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.7, i8 1, i64 %i.s, i1 false)
  %indvar.next.7 = add nuw nsw i64 %indvar, 8     ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge23.split.loopexit.unr-lcssa, label %.preheader, !llvm.loop !32

._crit_edge23.split.loopexit.unr-lcssa:           ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge23.split, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge23.split.loopexit.unr-lcssa, %.preheader.preheader
  %indvar.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next.7, %._crit_edge23.split.loopexit.unr-lcssa ]
  %lcmp.mod28 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod28)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.preheader.epil.preheader ], [ %indvar.next.epil, %.preheader.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %i.an = mul nuw nsw i64 %indvar.epil, 80
  %scevgep.epil = getelementptr i8, ptr %i.v, i64 %i.an
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.epil, i8 1, i64 %i.s, i1 false)
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge23.split, label %.preheader.epil, !llvm.loop !33

._crit_edge23.split:                              ; preds = %._crit_edge23.split.loopexit.unr-lcssa, %.preheader.epil, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @vnc_update_freq(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 {
bb.a:
  %i.a = add i32 %3, %1                           ; 2 uses
  %i.b = add i32 %4, %2                           ; 2 uses
  %i.c = sdiv i32 %1, 64
  %i.d = shl nsw i32 %i.c, 6                      ; 2 uses
  %i.e = sdiv i32 %2, 64
  %i.f = shl nsw i32 %i.e, 6                      ; 2 uses
  %i.g = icmp slt i32 %i.f, %i.b
  %i.h = icmp slt i32 %i.d, %i.a
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.us, label %._crit_edge34.thread

.preheader.lr.ph.split.us:                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 86432
  %i.j = load ptr, ptr %i.i, align 8
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.033.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.t, %._crit_edge.us ]
  %.02232.us = phi double [ 0.000000e+00, %.preheader.lr.ph.split.us ], [ %i.s, %._crit_edge.us ]
  %.02431.us = phi i32 [ %i.f, %.preheader.lr.ph.split.us ], [ %i.w, %._crit_edge.us ] ; 2 uses
  %i.k = ashr exact i32 %.02431.us, 6
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [14720 x i8], ptr %i.j, i64 %i.l
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %.129.us = phi i32 [ %.033.us, %.preheader.us ], [ %i.t, %bb.b ]
  %.12328.us = phi double [ %.02232.us, %.preheader.us ], [ %i.s, %bb.b ]
  %.02527.us = phi i32 [ %i.d, %.preheader.us ], [ %i.u, %bb.b ] ; 2 uses
  %i.n = ashr exact i32 %.02527.us, 6
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [184 x i8], ptr %i.m, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 86824
  %i.r = load double, ptr %i.q, align 8
  %i.s = fadd double %.12328.us, %i.r             ; 3 uses
  %i.t = add i32 %.129.us, 1                      ; 4 uses
  %i.u = add i32 %.02527.us, 64                   ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.a
  br i1 %i.v, label %bb.b, label %._crit_edge.us, !llvm.loop !34

._crit_edge.us:                                   ; preds = %bb.b
  %i.w = add i32 %.02431.us, 64                   ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.b
  br i1 %i.x, label %.preheader.us, label %._crit_edge34, !llvm.loop !35

._crit_edge34:                                    ; preds = %._crit_edge.us
  %.not = icmp eq i32 %i.t, 0
  %i.y = sitofp i32 %i.t to double
  %i.z = fdiv double %i.s, %i.y
  br i1 %.not, label %._crit_edge34.thread, label %bb.c

._crit_edge34.thread:                             ; preds = %bb.a, %._crit_edge34
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge34, %._crit_edge34.thread
  %i.aa = phi double [ 0.000000e+00, %._crit_edge34.thread ], [ %i.z, %._crit_edge34 ]
  ret double %i.aa
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vnc_start_protocol(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @vnc_write(ptr noundef %0, ptr noundef nonnull @.str.11, i64 noundef 12)
  %i.a = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 2 uses
  tail call void %i.a(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 86568
  %i.f = tail call i32 @buffer_empty(ptr noundef nonnull %i.e) #25
  %.not10.i = icmp eq i32 %i.f, 0
  br i1 %.not10.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @vnc_client_write_locked(ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %.not11.i = icmp eq i32 %i.h, 0
  br i1 %.not11.i, label %vnc_flush.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not12.i = icmp eq i32 %i.j, 0
  br i1 %.not12.i, label %vnc_flush.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.i, align 8
  %i.k = tail call i32 @g_source_remove(i32 noundef %i.j) #25 ; 0 uses
  br label %vnc_flush.exit

vnc_flush.exit:                                   ; preds = %bb.d, %bb.e, %bb.f
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 86720
  store ptr @protocol_version, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 86728
  store i64 12, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 103232 ; 2 uses
  store ptr @check_pointer_type_change, ptr %i.n, align 8
  tail call void @qemu_add_mouse_mode_change_notifier(ptr noundef nonnull %i.n) #25
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @protocol_version(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [13 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.g, ptr noundef nonnull align 1 dereferenceable(12) %1, i64 noundef 12, i1 noundef false) #25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 86496 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 86500 ; 4 uses
  %i.k = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.112, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #25
  %.not = icmp eq i32 %i.k, 2
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %vnc_client_error.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.m = load i16, ptr @_TRACE_VNC_CLIENT_PROTOCOL_VERSION_MALFORMED_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.m, 0
  br i1 %.not2.i, label %trace_vnc_client_protocol_version_malformed.exit.thread102, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr @qemu_loglevel, align 4
  %i.o = and i32 %i.n, 32768
  %.not3.i = icmp eq i32 %i.o, 0
  br i1 %.not3.i, label %trace_vnc_client_protocol_version_malformed.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.114, ptr noundef nonnull %0, ptr noundef nonnull %i.g) #25
  %.pr.pre = load i32, ptr @trace_events_enabled_count, align 4
  %i.p = icmp eq i32 %.pr.pre, 0
  br label %trace_vnc_client_protocol_version_malformed.exit

trace_vnc_client_protocol_version_malformed.exit: ; preds = %bb.d, %bb.e
  %.pr = phi i1 [ false, %bb.d ], [ %i.p, %bb.e ]
  %i.q = load i16, ptr @_TRACE_VNC_CLIENT_PROTOCOL_ERROR_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.q, 0
  %or.cond = select i1 %.pr, i1 true, i1 %.not1.i.i, !prof !20
  br i1 %or.cond, label %vnc_client_error.exit, label %bb.f, !prof !20

trace_vnc_client_protocol_version_malformed.exit.thread102: ; preds = %bb.c
  %.old = load i16, ptr @_TRACE_VNC_CLIENT_PROTOCOL_ERROR_DSTATE, align 2
  %.not1.i.i.old = icmp eq i16 %.old, 0
  br i1 %.not1.i.i.old, label %vnc_client_error.exit, label %bb.f

bb.f:                                             ; preds = %trace_vnc_client_protocol_version_malformed.exit, %trace_vnc_client_protocol_version_malformed.exit.thread102
  %i.r = load i32, ptr @qemu_loglevel, align 4
  %i.s = and i32 %i.r, 32768
  %.not2.i.i = icmp eq i32 %i.s, 0
  br i1 %.not2.i.i, label %vnc_client_error.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, ptr noundef nonnull %0) #25
  br label %vnc_client_error.exit

vnc_client_error.exit:                            ; preds = %bb.b, %trace_vnc_client_protocol_version_malformed.exit, %trace_vnc_client_protocol_version_malformed.exit.thread102, %bb.f, %bb.g
  call fastcc void @vnc_disconnect_start(ptr noundef nonnull %0)
  br label %bb.bo

bb.h:                                             ; preds = %bb.a
  %i.t = load i32, ptr %i.i, align 8              ; 4 uses
  %i.u = load i32, ptr %i.j, align 4
  %i.v = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i56 = icmp eq i32 %i.v, 0
  br i1 %.not.i56, label %trace_vnc_client_protocol_version.exit, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.w = load i16, ptr @_TRACE_VNC_CLIENT_PROTOCOL_VERSION_DSTATE, align 2
  %.not2.i57 = icmp eq i16 %i.w, 0
  br i1 %.not2.i57, label %trace_vnc_client_protocol_version.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr @qemu_loglevel, align 4
  %i.y = and i32 %i.x, 32768
  %.not3.i58 = icmp eq i32 %i.y, 0
  br i1 %.not3.i58, label %trace_vnc_client_protocol_version.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.115, ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef %i.u) #25
  %.pr104.pre = load i32, ptr %i.i, align 8
  br label %trace_vnc_client_protocol_version.exit

trace_vnc_client_protocol_version.exit:           ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  %i.z = phi i32 [ %i.t, %bb.h ], [ %.pr104.pre, %bb.k ], [ %i.t, %bb.j ], [ %i.t, %bb.i ]
  %.not50 = icmp eq i32 %i.z, 3
  br i1 %.not50, label %bb.l, label %bb.m

bb.l:                                             ; preds = %trace_vnc_client_protocol_version.exit
  %i.aa = load i32, ptr %i.j, align 4             ; 3 uses
  switch i32 %i.aa, label %bb.m [
    i32 3, label %bb.y
    i32 4, label %bb.y
    i32 5, label %bb.y
    i32 7, label %bb.y
    i32 8, label %bb.y
  ]

bb.m:                                             ; preds = %bb.l, %trace_vnc_client_protocol_version.exit
  %i.ab = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i59 = icmp eq i32 %i.ab, 0
  br i1 %.not.i59, label %trace_vnc_client_protocol_version_unsupported.exit, label %bb.n, !prof !16

bb.n:                                             ; preds = %bb.m
  %i.ac = load i16, ptr @_TRACE_VNC_CLIENT_PROTOCOL_VERSION_UNSUPPORTED_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.ac, 0
  br i1 %.not1.i, label %trace_vnc_client_protocol_version_unsupported.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = load i32, ptr @qemu_loglevel, align 4
  %i.ae = and i32 %i.ad, 32768
  %.not2.i60 = icmp eq i32 %i.ae, 0
  br i1 %.not2.i60, label %trace_vnc_client_protocol_version_unsupported.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.116, ptr noundef nonnull %0) #25
  br label %trace_vnc_client_protocol_version_unsupported.exit

trace_vnc_client_protocol_version_unsupported.exit: ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i32 0, ptr %i.f, align 4
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.af = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 2 uses
  call void %i.af(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !3
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i61 = icmp eq ptr %i.ai, null
  br i1 %.not.i61, label %bb.s, label %bb.q

bb.q:                                             ; preds = %trace_vnc_client_protocol_version_unsupported.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 86568
  %i.ak = call i32 @buffer_empty(ptr noundef nonnull %i.aj) #25
  %.not10.i = icmp eq i32 %i.ak, 0
  br i1 %.not10.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call fastcc void @vnc_client_write_locked(ptr noundef nonnull %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %trace_vnc_client_protocol_version_unsupported.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.am = load i32, ptr %i.al, align 4
  %.not11.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i, label %vnc_flush.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8            ; 2 uses
  %.not12.i = icmp eq i32 %i.ao, 0
  br i1 %.not12.i, label %vnc_flush.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.an, align 8
  %i.ap = call i32 @g_source_remove(i32 noundef %i.ao) #25 ; 0 uses
  br label %vnc_flush.exit

vnc_flush.exit:                                   ; preds = %bb.s, %bb.t, %bb.u
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  %i.aq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i62 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i62, label %vnc_client_error.exit65, label %bb.v, !prof !16

bb.v:                                             ; preds = %vnc_flush.exit
  %i.ar = load i16, ptr @_TRACE_VNC_CLIENT_PROTOCOL_ERROR_DSTATE, align 2
  %.not1.i.i63 = icmp eq i16 %i.ar, 0
  br i1 %.not1.i.i63, label %vnc_client_error.exit65, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = load i32, ptr @qemu_loglevel, align 4
  %i.at = and i32 %i.as, 32768
  %.not2.i.i64 = icmp eq i32 %i.at, 0
  br i1 %.not2.i.i64, label %vnc_client_error.exit65, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, ptr noundef nonnull %0) #25
  br label %vnc_client_error.exit65

vnc_client_error.exit65:                          ; preds = %vnc_flush.exit, %bb.v, %bb.w, %bb.x
  call fastcc void @vnc_disconnect_start(ptr noundef nonnull %0)
  br label %bb.bo

bb.y:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.au = and i32 %i.aa, -2
  %switch = icmp eq i32 %i.au, 4
  br i1 %switch, label %.thread, label %bb.z

.thread:                                          ; preds = %bb.y
  store i32 3, ptr %i.j, align 4
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.av = icmp eq i32 %i.aa, 3
  br i1 %i.av, label %bb.aa, label %bb.bi

bb.aa:                                            ; preds = %.thread, %bb.z
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 86504 ; 4 uses
  %i.ax = load i32, ptr %i.aw, align 8            ; 4 uses
  %i.ay = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i66 = icmp eq i32 %i.ay, 0
  br i1 %.not.i66, label %trace_vnc_auth_start.exit, label %bb.ab, !prof !16

bb.ab:                                            ; preds = %bb.aa
  %i.az = load i16, ptr @_TRACE_VNC_AUTH_START_DSTATE, align 2
  %.not1.i67 = icmp eq i16 %i.az, 0
  br i1 %.not1.i67, label %trace_vnc_auth_start.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ba = load i32, ptr @qemu_loglevel, align 4
  %i.bb = and i32 %i.ba, 32768
  %.not2.i68 = icmp eq i32 %i.bb, 0
  br i1 %.not2.i68, label %trace_vnc_auth_start.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.117, ptr noundef nonnull %0, i32 noundef %i.ax) #25
  %.pr106.pre = load i32, ptr %i.aw, align 8
  br label %trace_vnc_auth_start.exit

trace_vnc_auth_start.exit:                        ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.aa
  %i.bc = phi i32 [ %i.ax, %bb.aa ], [ %.pr106.pre, %bb.ad ], [ %i.ax, %bb.ac ], [ %i.ax, %bb.ab ] ; 2 uses
  switch i32 %i.bc, label %bb.aw [
    i32 1, label %bb.ae
    i32 2, label %bb.an
  ]

bb.ae:                                            ; preds = %trace_vnc_auth_start.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.e, align 4
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %i.bd = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 2 uses
  call void %i.bd(ptr noundef nonnull %i.be, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !3
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %.not.i69 = icmp eq ptr %i.bg, null
  br i1 %.not.i69, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 86568
  %i.bi = call i32 @buffer_empty(ptr noundef nonnull %i.bh) #25
  %.not10.i70 = icmp eq i32 %i.bi, 0
  br i1 %.not10.i70, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call fastcc void @vnc_client_write_locked(ptr noundef nonnull %0)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bk = load i32, ptr %i.bj, align 4
  %.not11.i71 = icmp eq i32 %i.bk, 0
  br i1 %.not11.i71, label %vnc_flush.exit73, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8            ; 2 uses
  %.not12.i72 = icmp eq i32 %i.bm, 0
  br i1 %.not12.i72, label %vnc_flush.exit73, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.bl, align 8
  %i.bn = call i32 @g_source_remove(i32 noundef %i.bm) #25 ; 0 uses
  br label %vnc_flush.exit73

vnc_flush.exit73:                                 ; preds = %bb.ah, %bb.ai, %bb.aj
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.be, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  %i.bo = load i32, ptr %i.aw, align 8
  %i.bp = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i74 = icmp eq i32 %i.bp, 0
  br i1 %.not.i74, label %trace_vnc_auth_pass.exit, label %bb.ak, !prof !16

bb.ak:                                            ; preds = %vnc_flush.exit73
  %i.bq = load i16, ptr @_TRACE_VNC_AUTH_PASS_DSTATE, align 2
  %.not1.i75 = icmp eq i16 %i.bq, 0
  br i1 %.not1.i75, label %trace_vnc_auth_pass.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.br = load i32, ptr @qemu_loglevel, align 4
  %i.bs = and i32 %i.br, 32768
  %.not2.i76 = icmp eq i32 %i.bs, 0
  br i1 %.not2.i76, label %trace_vnc_auth_pass.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.111, ptr noundef nonnull %0, i32 noundef %i.bo) #25
  br label %trace_vnc_auth_pass.exit

trace_vnc_auth_pass.exit:                         ; preds = %vnc_flush.exit73, %bb.ak, %bb.al, %bb.am
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 86720
  store ptr @protocol_client_init, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 86728
  store i64 1, ptr %i.bu, align 8
  br label %bb.bo

bb.an:                                            ; preds = %trace_vnc_auth_start.exit
  %i.bv = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i77 = icmp eq i32 %i.bv, 0
  br i1 %.not.i77, label %trace_vnc_client_auth_method.exit, label %bb.ao, !prof !16

bb.ao:                                            ; preds = %bb.an
  %i.bw = load i16, ptr @_TRACE_VNC_CLIENT_AUTH_METHOD_DSTATE, align 2
  %.not1.i78 = icmp eq i16 %i.bw, 0
  br i1 %.not1.i78, label %trace_vnc_client_auth_method.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bx = load i32, ptr @qemu_loglevel, align 4
  %i.by = and i32 %i.bx, 32768
  %.not2.i79 = icmp eq i32 %i.by, 0
  br i1 %.not2.i79, label %trace_vnc_client_auth_method.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.118, ptr noundef nonnull %0, i32 noundef 2) #25
  %.pre = load i32, ptr %i.aw, align 8
  %3 = call i32 @llvm.bswap.i32(i32 %.pre)
  %4 = bitcast i32 %3 to <4 x i8>
  br label %trace_vnc_client_auth_method.exit

trace_vnc_client_auth_method.exit:                ; preds = %bb.an, %bb.ao, %bb.ap, %bb.aq
  %5 = phi <4 x i8> [ <i8 0, i8 0, i8 0, i8 2>, %bb.an ], [ <i8 0, i8 0, i8 0, i8 2>, %bb.ao ], [ <i8 0, i8 0, i8 0, i8 2>, %bb.ap ], [ %4, %bb.aq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store <4 x i8> %5, ptr %i.d, align 4
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.bz = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 2 uses
  call void %i.bz(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !3
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %.not.i80 = icmp eq ptr %i.cc, null
  br i1 %.not.i80, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %trace_vnc_client_auth_method.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 86568
  %i.ce = call i32 @buffer_empty(ptr noundef nonnull %i.cd) #25
  %.not10.i81 = icmp eq i32 %i.ce, 0
  br i1 %.not10.i81, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call fastcc void @vnc_client_write_locked(ptr noundef nonnull %0)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %trace_vnc_client_auth_method.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cg = load i32, ptr %i.cf, align 4
  %.not11.i82 = icmp eq i32 %i.cg, 0
  br i1 %.not11.i82, label %vnc_flush.exit84, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8            ; 2 uses
  %.not12.i83 = icmp eq i32 %i.ci, 0
  br i1 %.not12.i83, label %vnc_flush.exit84, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.ch, align 8
  %i.cj = call i32 @g_source_remove(i32 noundef %i.ci) #25 ; 0 uses
  br label %vnc_flush.exit84

vnc_flush.exit84:                                 ; preds = %bb.at, %bb.au, %bb.av
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  call void @start_auth_vnc(ptr noundef nonnull %0)
  br label %bb.bo

bb.aw:                                            ; preds = %trace_vnc_auth_start.exit
  %i.ck = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i85 = icmp eq i32 %i.ck, 0
  br i1 %.not.i85, label %trace_vnc_auth_fail.exit, label %bb.ax, !prof !16

bb.ax:                                            ; preds = %bb.aw
  %i.cl = load i16, ptr @_TRACE_VNC_AUTH_FAIL_DSTATE, align 2
  %.not3.i86 = icmp eq i16 %i.cl, 0
  br i1 %.not3.i86, label %trace_vnc_auth_fail.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cm = load i32, ptr @qemu_loglevel, align 4
  %i.cn = and i32 %i.cm, 32768
  %.not4.i = icmp eq i32 %i.cn, 0
  br i1 %.not4.i, label %trace_vnc_auth_fail.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.105, ptr noundef nonnull %0, i32 noundef %i.bc, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str) #25
  br label %trace_vnc_auth_fail.exit

trace_vnc_auth_fail.exit:                         ; preds = %bb.aw, %bb.ax, %bb.ay, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 0, ptr %i.c, align 4
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.co = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 2 uses
  call void %i.co(ptr noundef nonnull %i.cp, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !3
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %.not.i87 = icmp eq ptr %i.cr, null
  br i1 %.not.i87, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %trace_vnc_auth_fail.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 86568
  %i.ct = call i32 @buffer_empty(ptr noundef nonnull %i.cs) #25
  %.not10.i88 = icmp eq i32 %i.ct, 0
  br i1 %.not10.i88, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @vnc_client_write_locked(ptr noundef nonnull %0)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %trace_vnc_auth_fail.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cv = load i32, ptr %i.cu, align 4
  %.not11.i89 = icmp eq i32 %i.cv, 0
  br i1 %.not11.i89, label %vnc_flush.exit91, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8            ; 2 uses
  %.not12.i90 = icmp eq i32 %i.cx, 0
  br i1 %.not12.i90, label %vnc_flush.exit91, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.cw, align 8
  %i.cy = call i32 @g_source_remove(i32 noundef %i.cx) #25 ; 0 uses
  br label %vnc_flush.exit91

vnc_flush.exit91:                                 ; preds = %bb.bc, %bb.bd, %bb.be
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.cp, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  %i.cz = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i92 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i92, label %vnc_client_error.exit95, label %bb.bf, !prof !16

bb.bf:                                            ; preds = %vnc_flush.exit91
  %i.da = load i16, ptr @_TRACE_VNC_CLIENT_PROTOCOL_ERROR_DSTATE, align 2
  %.not1.i.i93 = icmp eq i16 %i.da, 0
  br i1 %.not1.i.i93, label %vnc_client_error.exit95, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.db = load i32, ptr @qemu_loglevel, align 4
  %i.dc = and i32 %i.db, 32768
  %.not2.i.i94 = icmp eq i32 %i.dc, 0
  br i1 %.not2.i.i94, label %vnc_client_error.exit95, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, ptr noundef nonnull %0) #25
  br label %vnc_client_error.exit95

vnc_client_error.exit95:                          ; preds = %vnc_flush.exit91, %bb.bf, %bb.bg, %bb.bh
  call fastcc void @vnc_disconnect_start(ptr noundef nonnull %0)
  br label %bb.bo

bb.bi:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.b, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 86504
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = trunc i32 %i.de to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.df, ptr %i.a, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 86720
  store ptr @protocol_client_auth, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 86728
  store i64 1, ptr %i.dh, align 8
  %i.di = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 2 uses
  call void %i.di(ptr noundef nonnull %i.dj, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !3
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  %.not.i96 = icmp eq ptr %i.dl, null
  br i1 %.not.i96, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 86568
  %i.dn = call i32 @buffer_empty(ptr noundef nonnull %i.dm) #25
  %.not10.i97 = icmp eq i32 %i.dn, 0
  br i1 %.not10.i97, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call fastcc void @vnc_client_write_locked(ptr noundef nonnull %0)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dp = load i32, ptr %i.do, align 4
  %.not11.i98 = icmp eq i32 %i.dp, 0
  br i1 %.not11.i98, label %vnc_flush.exit100, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8            ; 2 uses
  %.not12.i99 = icmp eq i32 %i.dr, 0
  br i1 %.not12.i99, label %vnc_flush.exit100, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.dq, align 8
  %i.ds = call i32 @g_source_remove(i32 noundef %i.dr) #25 ; 0 uses
  br label %vnc_flush.exit100

vnc_flush.exit100:                                ; preds = %bb.bl, %bb.bm, %bb.bn
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.dj, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  br label %bb.bo

bb.bo:                                            ; preds = %vnc_flush.exit100, %vnc_flush.exit84, %vnc_client_error.exit95, %trace_vnc_auth_pass.exit, %vnc_client_error.exit65, %vnc_client_error.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @check_pointer_type_change(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca [2 x i8], align 1                 ; 5 uses
  %i.d = alloca [2 x i8], align 1                 ; 5 uses
  %i.e = alloca [2 x i8], align 1                 ; 5 uses
  %i.f = alloca [2 x i8], align 1                 ; 5 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %0, i64 -103232 ; 9 uses
  %i.j = getelementptr inbounds i8, ptr %0, i64 -16800 ; 3 uses
end_hunk_2
begin_hunk_3_@vnc_desktop_resize_ext:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i32 0, ptr %i.f, align 4
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i8 0, ptr %i.e, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 0, ptr %i.av, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i8 0, ptr %i.d, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 0, ptr %i.aw, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ax = load i64, ptr %i.u, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.ay = lshr i64 %i.ax, 8
  %i.az = trunc i64 %i.ay to i8
  store i8 %i.az, ptr %i.c, align 1
  %i.ba = trunc i64 %i.ax to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.ba, ptr %i.bb, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.bc = load i64, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.bd = lshr i64 %i.bc, 8
  %i.be = trunc i64 %i.bd to i8
  store i8 %i.be, ptr %i.b, align 1
  %i.bf = trunc i64 %i.bc to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.bf, ptr %i.bg, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  %i.bh = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.bh(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !3
  %i.bi = load ptr, ptr %i.s, align 8
  %.not.i27 = icmp eq ptr %i.bi, null
  br i1 %.not.i27, label %bb.g, label %bb.e

bb.e:                                             ; preds = %trace_vnc_msg_server_ext_desktop_resize.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 86568
  %i.bk = call i32 @buffer_empty(ptr noundef nonnull %i.bj) #25
  %.not10.i = icmp eq i32 %i.bk, 0
  br i1 %.not10.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @vnc_client_write_locked(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %trace_vnc_msg_server_ext_desktop_resize.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bm = load i32, ptr %i.bl, align 4
  %.not11.i = icmp eq i32 %i.bm, 0
  br i1 %.not11.i, label %vnc_flush.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8            ; 2 uses
  %.not12.i = icmp eq i32 %i.bo, 0
  br i1 %.not12.i, label %vnc_flush.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.bn, align 8
  %i.bp = call i32 @g_source_remove(i32 noundef %i.bo) #25 ; 0 uses
  br label %vnc_flush.exit

vnc_flush.exit:                                   ; preds = %bb.g, %bb.h, %bb.i
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @send_color_map(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca [2 x i8], align 1                 ; 5 uses
  %i.d = alloca [2 x i8], align 1                 ; 5 uses
  %i.e = alloca [2 x i8], align 1                 ; 5 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 2 uses
  tail call void %i.h(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 1, ptr %i.g, align 1
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.g, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 0, ptr %i.f, align 1
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.f, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i8 0, ptr %i.e, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 0, ptr %i.j, align 1
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.e, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i8 1, ptr %i.d, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 0, ptr %i.k, align 1
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 86676
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 86680
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 86684
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 86677
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 86681
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 86685
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 86678
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 86682
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 86686
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.023 = phi i32 [ 0, %bb.a ], [ %i.bk, %bb.b ]  ; 4 uses
  %i.x = load i8, ptr %i.l, align 4
  %i.y = zext nneg i8 %i.x to i32
  %i.z = lshr i32 %.023, %i.y
  %i.aa = load i8, ptr %i.m, align 4
  %i.ab = zext i8 %i.aa to i32
  %i.ac = and i32 %i.z, %i.ab
  %i.ad = load i8, ptr %i.n, align 4
  %i.ae = zext i8 %i.ad to i32
  %i.af = sub nsw i32 16, %i.ae
  %i.ag = shl nuw nsw i32 %i.ac, %i.af            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = trunc i32 %i.ah to i8
  store i8 %i.ai, ptr %i.c, align 1
  %i.aj = trunc i32 %i.ag to i8
  store i8 %i.aj, ptr %i.o, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.ak = load i8, ptr %i.p, align 1
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = lshr i32 %.023, %i.al
  %i.an = load i8, ptr %i.q, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = and i32 %i.am, %i.ao
  %i.aq = load i8, ptr %i.r, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = sub nsw i32 16, %i.ar
  %i.at = shl nuw nsw i32 %i.ap, %i.as            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.au = lshr i32 %i.at, 8
  %i.av = trunc i32 %i.au to i8
  store i8 %i.av, ptr %i.b, align 1
  %i.aw = trunc i32 %i.at to i8
  store i8 %i.aw, ptr %i.s, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.ax = load i8, ptr %i.t, align 2
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = lshr i32 %.023, %i.ay
  %i.ba = load i8, ptr %i.u, align 2
  %i.bb = zext i8 %i.ba to i32
  %i.bc = and i32 %i.az, %i.bb
  %i.bd = load i8, ptr %i.v, align 2
  %i.be = zext i8 %i.bd to i32
  %i.bf = sub nsw i32 16, %i.be
  %i.bg = shl nuw nsw i32 %i.bc, %i.bf            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bh = lshr i32 %i.bg, 8
  %i.bi = trunc i32 %i.bh to i8
  store i8 %i.bi, ptr %i.a, align 1
  %i.bj = trunc i32 %i.bg to i8
  store i8 %i.bj, ptr %i.w, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bk = add nuw nsw i32 %.023, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bk, 256
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !56

bb.c:                                             ; preds = %bb.b
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  ret void
}

declare void @qemu_console_hw_invalidate(ptr noundef) local_unnamed_addr #3

declare void @qemu_console_hw_update(ptr noundef) local_unnamed_addr #3

declare i32 @qemu_pixman_get_format(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @vnc_write_pixels_generic(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = ashr i32 %2, 2                           ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  store i32 0, ptr %i.a, align 4, !annotation !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 86684
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 86685
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 86686
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 86676
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 86677
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 86678
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 86657
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 86692 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %vnc_convert_pixel.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %vnc_convert_pixel.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %i.o = lshr i32 %i.n, 16
  %i.p = and i32 %i.o, 255
  %i.q = load i8, ptr %i.d, align 4
  %i.r = zext nneg i8 %i.q to i32
  %i.s = shl i32 %i.p, %i.r
  %i.t = lshr i32 %i.s, 8
  %i.u = lshr i32 %i.n, 8
  %i.v = and i32 %i.u, 255
  %i.w = load i8, ptr %i.e, align 1
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl i32 %i.v, %i.x
  %i.z = lshr i32 %i.y, 8
  %i.aa = and i32 %i.n, 255
  %i.ab = load i8, ptr %i.f, align 2
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl i32 %i.aa, %i.ac
  %i.ae = lshr i32 %i.ad, 8
  %i.af = and i32 %i.t, 255
  %i.ag = load i8, ptr %i.g, align 4
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl i32 %i.af, %i.ah
  %i.aj = and i32 %i.z, 255
  %i.ak = load i8, ptr %i.h, align 1
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = shl i32 %i.aj, %i.al
  %i.an = or i32 %i.am, %i.ai
  %i.ao = and i32 %i.ae, 255
  %i.ap = load i8, ptr %i.i, align 2
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = shl i32 %i.ao, %i.aq
  %i.as = or i32 %i.an, %i.ar                     ; 6 uses
  %i.at = load i8, ptr %i.j, align 1              ; 2 uses
  switch i8 %i.at, label %bb.g [
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.au = trunc i32 %i.as to i8
  store i8 %i.au, ptr %i.a, align 4
  br label %vnc_convert_pixel.exit

bb.d:                                             ; preds = %bb.b
  %i.av = load i32, ptr %i.k, align 4
  %i.aw = icmp eq i32 %i.av, 4321
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ax = lshr i32 %i.as, 8
  %i.ay = trunc i32 %i.ax to i8
  store i8 %i.ay, ptr %i.a, align 4
  %i.az = trunc i32 %i.as to i8
  store i8 %i.az, ptr %i.l, align 1
  br label %vnc_convert_pixel.exit

bb.f:                                             ; preds = %bb.d
  %i.ba = trunc i32 %i.as to i16
  store i16 %i.ba, ptr %i.a, align 4
  br label %vnc_convert_pixel.exit

bb.g:                                             ; preds = %bb.b
  %i.bb = load i32, ptr %i.k, align 4
  %i.bc = icmp eq i32 %i.bb, 4321
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %3 = call i32 @llvm.bswap.i32(i32 %i.as)
  store i32 %3, ptr %i.a, align 4
  br label %vnc_convert_pixel.exit

bb.i:                                             ; preds = %bb.g
  store i32 %i.as, ptr %i.a, align 4
  br label %vnc_convert_pixel.exit

vnc_convert_pixel.exit:                           ; preds = %bb.c, %bb.e, %bb.f, %bb.h, %bb.i
  %i.bd = zext i8 %i.at to i64
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.bd)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !57

._crit_edge:                                      ; preds = %vnc_convert_pixel.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

declare void @vnc_server_cut_text_caps(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vnc_desktop_resize(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca [2 x i8], align 1                 ; 5 uses
  %i.d = alloca [2 x i8], align 1                 ; 5 uses
  %i.e = alloca [2 x i8], align 1                 ; 5 uses
  %i.f = alloca [2 x i8], align 1                 ; 5 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 86452      ; 2 uses
  %.val33 = load i32, ptr %i.l, align 4
  %i.m = and i32 %.val33, 3
  %or.cond35 = icmp eq i32 %i.m, 0
  br i1 %or.cond35, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 86472 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 86432 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 587160
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i64 %i.o, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 86480
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 587152
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call i32 @pixman_image_get_height(ptr noundef %i.y) #25
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp eq i64 %i.w, %i.aa
  br i1 %i.ab, label %bb.u, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.p, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 587160
  %.pre36 = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.ac = phi i32 [ %.pre36, %._crit_edge ], [ %i.s, %bb.c ]
  %i.ad = phi ptr [ %.pre, %._crit_edge ], [ %i.q, %bb.c ]
  %or.cond = icmp ult i32 %i.ac, 65536
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 713, ptr noundef nonnull @__PRETTY_FUNCTION__.vnc_desktop_resize) #26
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 587152
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call i32 @pixman_image_get_height(ptr noundef %i.af) #25
  %i.ah = icmp slt i32 %i.ag, 65536
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.p, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 587152
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call i32 @pixman_image_get_height(ptr noundef %i.ak) #25
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 715, ptr noundef nonnull @__PRETTY_FUNCTION__.vnc_desktop_resize) #26
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 587160
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = sext i32 %i.ap to i64
  store i64 %i.aq, ptr %i.n, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 587152
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call i32 @pixman_image_get_height(ptr noundef %i.as) #25 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 86480 ; 2 uses
  store i64 %i.au, ptr %i.av, align 8
  %.val = load i32, ptr %i.l, align 4
  %i.aw = and i32 %.val, 2
  %.not31 = icmp eq i32 %i.aw, 0
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @vnc_desktop_resize_ext(ptr noundef nonnull %0, i32 noundef 0)
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.i, align 8
  %i.ay = load i64, ptr %i.n, align 8
  %i.az = trunc i64 %i.ay to i32
  %i.ba = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i, label %trace_vnc_msg_server_desktop_resize.exit, label %bb.m, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.bb = load i16, ptr @_TRACE_VNC_MSG_SERVER_DESKTOP_RESIZE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.bb, 0
  br i1 %.not3.i, label %trace_vnc_msg_server_desktop_resize.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load i32, ptr @qemu_loglevel, align 4
  %i.bd = and i32 %i.bc, 32768
  %.not4.i = icmp eq i32 %i.bd, 0
  br i1 %.not4.i, label %trace_vnc_msg_server_desktop_resize.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.73, ptr noundef nonnull %0, ptr noundef %i.ax, i32 noundef %i.az, i32 noundef %i.at) #25
  br label %trace_vnc_msg_server_desktop_resize.exit

trace_vnc_msg_server_desktop_resize.exit:         ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %i.be = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 4 uses
  tail call void %i.be(ptr noundef nonnull %i.bf, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 0, ptr %i.h, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 0, ptr %i.g, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i8 0, ptr %i.f, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 1, ptr %i.bg, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.bh = load i64, ptr %i.n, align 8             ; 2 uses
  %i.bi = load i64, ptr %i.av, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i8 0, ptr %i.e, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 0, ptr %i.bj, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i8 0, ptr %i.d, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 0, ptr %i.bk, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.bl = lshr i64 %i.bh, 8
  %i.bm = trunc i64 %i.bl to i8
  store i8 %i.bm, ptr %i.c, align 1
  %i.bn = trunc i64 %i.bh to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.bn, ptr %i.bo, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.bp = lshr i64 %i.bi, 8
  %i.bq = trunc i64 %i.bp to i8
  store i8 %i.bq, ptr %i.b, align 1
  %i.br = trunc i64 %i.bi to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.br, ptr %i.bs, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store <4 x i8> <i8 -1, i8 -1, i8 -1, i8 33>, ptr %i.a, align 4
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.bf, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  %i.bt = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.bt(ptr noundef nonnull %i.bf, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !3
end_hunk_3
begin_hunk_4_@qemu_input_update_buttons

declare void @qemu_input_queue_abs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @qemu_input_queue_rel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @qemu_input_event_sync() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @audio_capture_notify(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca [2 x i8], align 1                 ; 5 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = load i64, ptr %0, align 8
  %i.h = icmp eq i64 %i.g, 410936327799964859
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1208, ptr noundef nonnull @__PRETTY_FUNCTION__.audio_capture_notify) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  switch i32 %1, label %bb.v [
    i32 1, label %bb.d
    i32 0, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %trace_vnc_msg_server_audio_end.exit, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.l = load i16, ptr @_TRACE_VNC_MSG_SERVER_AUDIO_END_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.l, 0
  br i1 %.not2.i, label %trace_vnc_msg_server_audio_end.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr @qemu_loglevel, align 4
  %i.n = and i32 %i.m, 32768
  %.not3.i = icmp eq i32 %i.n, 0
  br i1 %.not3.i, label %trace_vnc_msg_server_audio_end.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.90, ptr noundef nonnull %0, ptr noundef %i.j) #25
  br label %trace_vnc_msg_server_audio_end.exit

trace_vnc_msg_server_audio_end.exit:              ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.o = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 6 uses
  tail call void %i.o(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 -1, ptr %i.f, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 1, ptr %i.e, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i8 0, ptr %i.d, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 0, ptr %i.q, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  %i.r = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.r(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !3
  %i.s = load ptr, ptr %i.i, align 8
  %.not.i18 = icmp eq ptr %i.s, null
  br i1 %.not.i18, label %bb.j, label %bb.h

bb.h:                                             ; preds = %trace_vnc_msg_server_audio_end.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 86568
  %i.u = call i32 @buffer_empty(ptr noundef nonnull %i.t) #25
  %.not10.i = icmp eq i32 %i.u, 0
  br i1 %.not10.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call fastcc void @vnc_client_write_locked(ptr noundef nonnull %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %trace_vnc_msg_server_audio_end.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4
  %.not11.i = icmp eq i32 %i.w, 0
  br i1 %.not11.i, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %.not12.i = icmp eq i32 %i.y, 0
  br i1 %.not12.i, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.x, align 8
  br label %.sink.split.sink.split

bb.m:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i19 = icmp eq i32 %i.ab, 0
  br i1 %.not.i19, label %trace_vnc_msg_server_audio_begin.exit, label %bb.n, !prof !16

bb.n:                                             ; preds = %bb.m
  %i.ac = load i16, ptr @_TRACE_VNC_MSG_SERVER_AUDIO_BEGIN_DSTATE, align 2
  %.not2.i20 = icmp eq i16 %i.ac, 0
  br i1 %.not2.i20, label %trace_vnc_msg_server_audio_begin.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = load i32, ptr @qemu_loglevel, align 4
  %i.ae = and i32 %i.ad, 32768
  %.not3.i21 = icmp eq i32 %i.ae, 0
  br i1 %.not3.i21, label %trace_vnc_msg_server_audio_begin.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.91, ptr noundef nonnull %0, ptr noundef %i.aa) #25
  br label %trace_vnc_msg_server_audio_begin.exit

trace_vnc_msg_server_audio_begin.exit:            ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %i.af = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 6 uses
  tail call void %i.af(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 -1, ptr %i.c, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.b, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %i.a, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 1, ptr %i.ah, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  %i.ai = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.ai(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !3
  %i.aj = load ptr, ptr %i.z, align 8
  %.not.i22 = icmp eq ptr %i.aj, null
  br i1 %.not.i22, label %bb.s, label %bb.q

bb.q:                                             ; preds = %trace_vnc_msg_server_audio_begin.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 86568
  %i.al = call i32 @buffer_empty(ptr noundef nonnull %i.ak) #25
  %.not10.i23 = icmp eq i32 %i.al, 0
  br i1 %.not10.i23, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call fastcc void @vnc_client_write_locked(ptr noundef nonnull %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %trace_vnc_msg_server_audio_begin.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.an = load i32, ptr %i.am, align 4
  %.not11.i24 = icmp eq i32 %i.an, 0
  br i1 %.not11.i24, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8            ; 2 uses
  %.not12.i25 = icmp eq i32 %i.ap, 0
  br i1 %.not12.i25, label %.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.ao, align 8
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.l, %bb.u
  %.sink28 = phi i32 [ %i.ap, %bb.u ], [ %i.y, %bb.l ]
  %.sink.ph = phi ptr [ %i.ag, %bb.u ], [ %i.p, %bb.l ]
  %i.aq = call i32 @g_source_remove(i32 noundef %.sink28) #25 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.t, %bb.s, %bb.k, %bb.j
  %.sink = phi ptr [ %i.ag, %bb.t ], [ %i.p, %bb.j ], [ %i.p, %bb.k ], [ %i.ag, %bb.s ], [ %.sink.ph, %.sink.split.sink.split ]
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %.sink, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal void @audio_capture_destroy(ptr nofree readnone captures(none) %0) #5 {
bb.a:
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @audio_capture(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = load i64, ptr %0, align 8
  %i.f = icmp eq i64 %i.e, 410936327799964859
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1240, ptr noundef nonnull @__PRETTY_FUNCTION__.audio_capture) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = sext i32 %2 to i64                       ; 2 uses
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %trace_vnc_msg_server_audio_data.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.k = load i16, ptr @_TRACE_VNC_MSG_SERVER_AUDIO_DATA_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.k, 0
  br i1 %.not3.i, label %trace_vnc_msg_server_audio_data.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not4.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i, label %trace_vnc_msg_server_audio_data.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.92, ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %i.i) #25
  br label %trace_vnc_msg_server_audio_data.exit

trace_vnc_msg_server_audio_data.exit:             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.n = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 4 uses
  tail call void %i.n(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 86584
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 86560
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %trace_vnc_msg_server_audio_data.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 -1, ptr %i.d, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 1, ptr %i.c, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i8 0, ptr %i.b, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 2, ptr %i.u, align 1
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  store i32 %3, ptr %i.a, align 4
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.i)
  br label %trace_vnc_client_throttle_audio.exit

bb.h:                                             ; preds = %trace_vnc_msg_server_audio_data.exit
  %i.v = load ptr, ptr %i.g, align 8
  %i.w = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i21 = icmp eq i32 %i.w, 0
  br i1 %.not.i21, label %trace_vnc_client_throttle_audio.exit, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.x = load i16, ptr @_TRACE_VNC_CLIENT_THROTTLE_AUDIO_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.x, 0
  br i1 %.not2.i, label %trace_vnc_client_throttle_audio.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load i32, ptr @qemu_loglevel, align 4
  %i.z = and i32 %i.y, 32768
  %.not3.i22 = icmp eq i32 %i.z, 0
  br i1 %.not3.i22, label %trace_vnc_client_throttle_audio.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.93, ptr noundef nonnull %0, ptr noundef %i.v, i64 noundef %i.q) #25
  br label %trace_vnc_client_throttle_audio.exit

trace_vnc_client_throttle_audio.exit:             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  %i.aa = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.aa(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !3
  %i.ab = load ptr, ptr %i.g, align 8
  %.not.i23 = icmp eq ptr %i.ab, null
  br i1 %.not.i23, label %bb.n, label %bb.l

bb.l:                                             ; preds = %trace_vnc_client_throttle_audio.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 86568
  %i.ad = call i32 @buffer_empty(ptr noundef nonnull %i.ac) #25
  %.not10.i = icmp eq i32 %i.ad, 0
  br i1 %.not10.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call fastcc void @vnc_client_write_locked(ptr noundef nonnull %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %trace_vnc_client_throttle_audio.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.af = load i32, ptr %i.ae, align 4
  %.not11.i = icmp eq i32 %i.af, 0
  br i1 %.not11.i, label %vnc_flush.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8            ; 2 uses
  %.not12.i = icmp eq i32 %i.ah, 0
  br i1 %.not12.i, label %vnc_flush.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ag, align 8
  %i.ai = call i32 @g_source_remove(i32 noundef %i.ah) #25 ; 0 uses
  br label %vnc_flush.exit

vnc_flush.exit:                                   ; preds = %bb.n, %bb.o, %bb.p
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  ret void
}

declare ptr @audio_be_add_capture(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #18

declare ptr @qcrypto_cipher_new(i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @qcrypto_cipher_encrypt(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @qcrypto_cipher_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @protocol_client_auth(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i8, ptr %1, align 1
  %i.c = zext i8 %i.b to i32                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 86504 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq i32 %i.e, %i.c
  %i.f = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i21 = icmp eq i32 %i.f, 0                 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i21, label %trace_vnc_auth_reject.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.g = load i16, ptr @_TRACE_VNC_AUTH_REJECT_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.g, 0
  br i1 %.not2.i, label %trace_vnc_auth_reject.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr @qemu_loglevel, align 4
  %i.i = and i32 %i.h, 32768
  %.not3.i = icmp eq i32 %i.i, 0
  br i1 %.not3.i, label %trace_vnc_auth_reject.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.120, ptr noundef nonnull %0, i32 noundef %i.e, i32 noundef range(i32 0, 256) %i.c) #25
  br label %trace_vnc_auth_reject.exit

trace_vnc_auth_reject.exit:                       ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  tail call fastcc void @authentication_failed(ptr noundef nonnull %0)
  br label %bb.aa

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i21, label %trace_vnc_auth_start.exit, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.j = load i16, ptr @_TRACE_VNC_AUTH_START_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.j, 0
  br i1 %.not1.i, label %trace_vnc_auth_start.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load i32, ptr @qemu_loglevel, align 4
  %i.l = and i32 %i.k, 32768
  %.not2.i22 = icmp eq i32 %i.l, 0
  br i1 %.not2.i22, label %trace_vnc_auth_start.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.117, ptr noundef nonnull %0, i32 noundef %i.c) #25
  %.pr.pre = load i32, ptr %i.d, align 8
  br label %trace_vnc_auth_start.exit

trace_vnc_auth_start.exit:                        ; preds = %bb.g, %bb.h, %bb.i, %bb.f
  %i.m = phi i32 [ %i.c, %bb.f ], [ %.pr.pre, %bb.i ], [ %i.c, %bb.h ], [ %i.c, %bb.g ] ; 2 uses
  switch i32 %i.m, label %bb.w [
    i32 1, label %bb.j
    i32 2, label %bb.u
    i32 19, label %bb.v
  ]

bb.j:                                             ; preds = %trace_vnc_auth_start.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 86500
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp sgt i32 %i.o, 7
  br i1 %i.p, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4
  call void @vnc_write(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.q = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 2 uses
  call void %i.q(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.51, i32 noundef 61) #25, !inline_history !3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %.not.i23 = icmp eq ptr %i.t, null
  br i1 %.not.i23, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 86568
  %i.v = call i32 @buffer_empty(ptr noundef nonnull %i.u) #25
  %.not10.i = icmp eq i32 %i.v, 0
  br i1 %.not10.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call fastcc void @vnc_client_write_locked(ptr noundef nonnull %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4
  %.not11.i = icmp eq i32 %i.x, 0
  br i1 %.not11.i, label %vnc_flush.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8              ; 2 uses
  %.not12.i = icmp eq i32 %i.z, 0
  br i1 %.not12.i, label %vnc_flush.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.y, align 8
  %i.aa = call i32 @g_source_remove(i32 noundef %i.z) #25 ; 0 uses
  br label %vnc_flush.exit

vnc_flush.exit:                                   ; preds = %bb.n, %bb.o, %bb.p
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.51, i32 noundef 66) #25
  %.pre = load i32, ptr %i.d, align 8
  br label %bb.q

bb.q:                                             ; preds = %vnc_flush.exit, %bb.j
  %i.ab = phi i32 [ %.pre, %vnc_flush.exit ], [ 1, %bb.j ]
  %i.ac = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i24 = icmp eq i32 %i.ac, 0
  br i1 %.not.i24, label %trace_vnc_auth_pass.exit, label %bb.r, !prof !16

bb.r:                                             ; preds = %bb.q
end_hunk_4
