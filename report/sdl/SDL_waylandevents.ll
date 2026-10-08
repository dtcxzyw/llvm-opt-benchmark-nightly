Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_waylandevents?download=true
inline.NumInlined: 237
inline.NumDeleted: 124
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@data_device_handle_motion:bb.a
  %i.ac = tail call i32 %i.z(ptr noundef %i.ab) #12
  %i.ad = sdiv i32 %3, 256
  %i.ae = sdiv i32 %4, 256
  %i.af = load ptr, ptr %i.c, align 8
  %i.ag = tail call i32 @SDL_GetWindowID_REAL(ptr noundef %i.af) #12
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i32, ptr %i.ah, align 8
  tail call void (i32, ptr, ...) @SDL_LogTrace_REAL(i32 noundef 7, ptr noundef nonnull @.str.14, i32 noundef %i.ac, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef %i.ag, i32 noundef %i.ai) #12
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.aj = sdiv i32 %3, 256
  %i.ak = sdiv i32 %4, 256
  tail call void (i32, ptr, ...) @SDL_LogTrace_REAL(i32 noundef 7, ptr noundef nonnull @.str.15, i32 noundef -1, i32 noundef %i.aj, i32 noundef %i.ak, i32 noundef -1) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @data_device_handle_drop(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not59 = icmp eq ptr %i.h, null
  br i1 %.not59, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !32, !noundef !33
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.m = load i8, ptr %i.l, align 1, !range !32, !noundef !33
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = load ptr, ptr @WAYLAND_wl_proxy_get_id, align 8
  %i.p = load ptr, ptr %i.f, align 8
  %i.q = tail call i32 %i.o(ptr noundef %i.p) #12
  %i.r = load ptr, ptr %i.g, align 8
  %i.s = tail call i32 @SDL_GetWindowID_REAL(ptr noundef %i.r) #12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i32, ptr %i.t, align 8
  tail call void (i32, ptr, ...) @SDL_LogTrace_REAL(i32 noundef 7, ptr noundef nonnull @.str.16, i32 noundef %i.q, i32 noundef %i.s, i32 noundef %i.u) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.v = load ptr, ptr %i.e, align 8
  %i.w = tail call zeroext i1 @Wayland_data_offer_has_mime(ptr noundef %i.v, ptr noundef nonnull @.str.8) #12
  br i1 %i.w, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.e, align 8
  %i.y = call ptr @Wayland_data_offer_receive(ptr noundef %i.x, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a, i1 noundef zeroext false) #12 ; 4 uses
  %.not60 = icmp eq ptr %i.y, null
  br i1 %.not60, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = call ptr @SDL_DBus_GetContext() #12      ; 2 uses
  %.not61 = icmp eq ptr %i.z, null
  br i1 %.not61, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4
  %i.aa = call ptr @SDL_DBus_DocumentsPortalRetrieveFiles(ptr noundef nonnull %i.y, ptr noundef nonnull %i.b) #12 ; 3 uses
  %i.ab = icmp ne ptr %i.aa, null
  %i.ac = load i32, ptr %i.b, align 4
  %i.ad = icmp sgt i32 %i.ac, 0
  %or.cond = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %or.cond, label %.lr.ph, label %bb.i

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.h ] ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call zeroext i1 @SDL_SendDropFile(ptr noundef %i.ae, ptr noundef null, ptr noundef %i.ag) #12 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i32, ptr %i.b, align 4
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %.lr.ph, label %.thread70, !llvm.loop !110

.thread70:                                        ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 400
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull %i.aa) #12
  %i.an = load ptr, ptr %i.g, align 8
  %i.ao = call zeroext i1 @SDL_SendDropComplete(ptr noundef %i.an) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @SDL_free_REAL(ptr noundef nonnull %i.y) #12
  br label %bb.s

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.g, %bb.i
  call void @SDL_free_REAL(ptr noundef nonnull %i.y) #12
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.f, %bb.e
  %i.ap = load ptr, ptr %i.e, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call ptr @Wayland_data_offer_receive(ptr noundef %i.ap, ptr noundef %i.ar, ptr noundef nonnull %i.a, i1 noundef zeroext false) #12 ; 6 uses
  %i.at = load i8, ptr %i.i, align 8, !range !32, !noundef !33
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.thread
  %.not64 = icmp eq ptr %i.as, null
  br i1 %.not64, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8
  %i.av = call ptr @SDL_strtok_r_REAL(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.c) #12 ; 2 uses
  %.not6579 = icmp eq ptr %i.av, null
  br i1 %.not6579, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.k, %bb.m
  %.05180 = phi ptr [ %i.ba, %bb.m ], [ %i.av, %bb.k ] ; 3 uses
  %i.aw = call i32 @SDL_URIToLocal(ptr noundef nonnull %.05180, ptr noundef nonnull %.05180) #12
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph82
  %i.ay = load ptr, ptr %i.g, align 8
  %i.az = call zeroext i1 @SDL_SendDropFile(ptr noundef %i.ay, ptr noundef null, ptr noundef nonnull %.05180) #12 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph82
  %i.ba = call ptr @SDL_strtok_r_REAL(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.c) #12 ; 2 uses
  %.not65 = icmp eq ptr %i.ba, null
  br i1 %.not65, label %._crit_edge83, label %.lr.ph82, !llvm.loop !111

._crit_edge83:                                    ; preds = %bb.m, %bb.k
  call void @SDL_free_REAL(ptr noundef nonnull %i.as) #12
  %i.bb = load ptr, ptr %i.g, align 8
  %i.bc = call zeroext i1 @SDL_SendDropComplete(ptr noundef %i.bb) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.s

bb.n:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %i.g, align 8
  %i.be = call zeroext i1 @SDL_SendDropComplete(ptr noundef %i.bd) #12 ; 0 uses
  br label %bb.s

bb.o:                                             ; preds = %.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.bg = load i8, ptr %i.bf, align 1, !range !32, !noundef !33
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %.not62 = icmp eq ptr %i.as, null
  br i1 %.not62, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store ptr null, ptr %i.d, align 8
  %i.bi = call ptr @SDL_strtok_r_REAL(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.d) #12 ; 2 uses
  %.not6376 = icmp eq ptr %i.bi, null
  br i1 %.not6376, label %._crit_edge, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.q, %.lr.ph78
  %.077 = phi ptr [ %i.bl, %.lr.ph78 ], [ %i.bi, %bb.q ]
  %i.bj = load ptr, ptr %i.g, align 8
  %i.bk = call zeroext i1 @SDL_SendDropText(ptr noundef %i.bj, ptr noundef nonnull %.077) #12 ; 0 uses
  %i.bl = call ptr @SDL_strtok_r_REAL(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.d) #12 ; 2 uses
  %.not63 = icmp eq ptr %i.bl, null
  br i1 %.not63, label %._crit_edge, label %.lr.ph78, !llvm.loop !112

._crit_edge:                                      ; preds = %.lr.ph78, %bb.q
  call void @SDL_free_REAL(ptr noundef nonnull %i.as) #12
  %i.bm = load ptr, ptr %i.g, align 8
  %i.bn = call zeroext i1 @SDL_SendDropComplete(ptr noundef %i.bm) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %i.g, align 8
  %i.bp = call zeroext i1 @SDL_SendDropComplete(ptr noundef %i.bo) #12 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r, %bb.n, %._crit_edge83, %.thread70
  %i.bq = load ptr, ptr %i.e, align 8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.bt = call i32 %i.bs(ptr noundef %i.br) #12, !inline_history !24
  %i.bu = icmp ugt i32 %i.bt, 2
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = load ptr, ptr %i.e, align 8
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.by = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.bz = call i32 %i.by(ptr noundef %i.bw) #12, !inline_history !113
  %i.ca = call ptr (ptr, i32, ptr, i32, i32, ...) %i.bx(ptr noundef %i.bw, i32 noundef 3, ptr noundef null, i32 noundef %i.bz, i32 noundef 0) #12, !inline_history !113 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.w

bb.v:                                             ; preds = %bb.d, %bb.b, %bb.a
  tail call void (i32, ptr, ...) @SDL_LogTrace_REAL(i32 noundef 7, ptr noundef nonnull @.str.18, i32 noundef -1, i32 noundef -1) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cb = load ptr, ptr %i.e, align 8
  call void @Wayland_data_offer_destroy(ptr noundef %i.cb) #12
  store ptr null, ptr %i.e, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @data_device_handle_selection(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.thread25, label %bb.b

.thread25:                                        ; preds = %bb.a
  tail call void (i32, ptr, ...) @SDL_LogTrace_REAL(i32 noundef 7, ptr noundef nonnull @.str.19, i32 noundef -1) #12
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @WAYLAND_wl_proxy_get_user_data, align 8
  %i.b = tail call ptr %i.a(ptr noundef nonnull %2) #12, !inline_history !23 ; 2 uses
  %i.c = load ptr, ptr @WAYLAND_wl_proxy_get_id, align 8
  %i.d = tail call i32 %i.c(ptr noundef nonnull %2) #12
  tail call void (i32, ptr, ...) @SDL_LogTrace_REAL(i32 noundef 7, ptr noundef nonnull @.str.19, i32 noundef %i.d) #12
  %.not16 = icmp eq ptr %i.b, null
  br i1 %.not16, label %bb.c, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %.critedge

bb.c:                                             ; preds = %.thread25, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %.not17 = icmp eq ptr %i.f, null
  br i1 %.not17, label %.critedge21, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %.not18 = icmp eq ptr %i.h, null
  br i1 %.not18, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  %.not19 = icmp eq ptr %i.j, null
  tail call void @Wayland_data_offer_destroy(ptr noundef nonnull %i.f) #12
  store ptr null, ptr %i.e, align 8
  br i1 %.not19, label %bb.f, label %bb.g

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.d
  %i.k = phi ptr [ %i.f, %bb.d ], [ %.pre, %..critedge_crit_edge ]
  %.02329 = phi ptr [ null, %bb.d ], [ %i.b, %..critedge_crit_edge ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @Wayland_data_offer_destroy(ptr noundef %i.k) #12
  store ptr %.02329, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %.024 = phi ptr [ %.02329, %.critedge ], [ null, %bb.e ]
  tail call void @Wayland_data_offer_notify_from_mimes(ptr noundef %.024, i1 noundef zeroext true) #12
  br label %bb.g

.critedge21:                                      ; preds = %bb.c
  tail call void @Wayland_data_offer_destroy(ptr noundef null) #12
  store ptr null, ptr %i.e, align 8
  br label %bb.g

bb.g:                                             ; preds = %.critedge21, %bb.f, %bb.e
  ret void
}

declare void @SDL_LogTrace_REAL(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @data_offer_handle_offer(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i1 @Wayland_data_offer_add_mime(ptr noundef %0, ptr noundef %2) #12 ; 0 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @WAYLAND_wl_proxy_get_id, align 8
  %i.c = tail call i32 %i.b(ptr noundef nonnull %1) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  tail call void (i32, ptr, ...) @SDL_LogTrace_REAL(i32 noundef 7, ptr noundef nonnull @.str.5, i32 noundef %i.d, ptr noundef %2) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @data_offer_handle_source_actions(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @WAYLAND_wl_proxy_get_id, align 8
  %i.b = tail call i32 %i.a(ptr noundef nonnull %1) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ -1, %bb.a ]
  tail call void (i32, ptr, ...) @SDL_LogTrace_REAL(i32 noundef 7, ptr noundef nonnull @.str.6, i32 noundef %i.c, i32 noundef %2) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @data_offer_handle_actions(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @WAYLAND_wl_proxy_get_id, align 8
  %i.b = tail call i32 %i.a(ptr noundef nonnull %1) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ -1, %bb.a ]
  tail call void (i32, ptr, ...) @SDL_LogTrace_REAL(i32 noundef 7, ptr noundef nonnull @.str.7, i32 noundef %i.c, i32 noundef %2) #12
  ret void
}

declare zeroext i1 @Wayland_data_offer_add_mime(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Wayland_data_offer_has_mime(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Wayland_GetTextMimeTypes(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SDL_GetVideoDevice() local_unnamed_addr #2

declare zeroext i1 @SDL_SendDropPosition(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare i32 @SDL_GetWindowID_REAL(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SendDropComplete(ptr noundef) local_unnamed_addr #2

declare ptr @Wayland_data_offer_receive(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @SDL_DBus_DocumentsPortalRetrieveFiles(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SendDropFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SDL_strtok_r_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SDL_URIToLocal(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SendDropText(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Wayland_data_offer_notify_from_mimes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @primary_selection_device_handle_offer(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 32) #14 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  store ptr %i.c, ptr %i.e, align 8
  store ptr %2, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.f, align 8
  %i.g = load ptr, ptr @WAYLAND_wl_list_init, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void %i.g(ptr noundef nonnull %i.h) #12
  %i.i = load ptr, ptr @WAYLAND_wl_proxy_set_user_data, align 8
  tail call void %i.i(ptr noundef %2, ptr noundef nonnull %i.a) #12, !inline_history !114
end_hunk_0
