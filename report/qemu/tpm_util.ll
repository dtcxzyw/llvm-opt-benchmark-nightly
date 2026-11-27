Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tpm_util?download=true
inline.NumInlined: 65
inline.NumDeleted: 27
begin_hunk_0_@tpm_util_get_buffer_size:bb.a
  %or.cond = select i1 %.not23, i1 %.not24, i1 false
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %trace_tpm_util_get_buffer_size_len.exit, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.k = load i16, ptr @_TRACE_TPM_UTIL_GET_BUFFER_SIZE_HDR_LEN_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.k, 0
  br i1 %.not2.i, label %trace_tpm_util_get_buffer_size_hdr_len.exit.thread37, label %bb.f

trace_tpm_util_get_buffer_size_hdr_len.exit.thread37: ; preds = %bb.e
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.i)
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr @qemu_loglevel, align 4
  %i.n = and i32 %i.m, 32768
  %.not3.i = icmp eq i32 %i.n, 0
  br i1 %.not3.i, label %trace_tpm_util_get_buffer_size_hdr_len.exit.thread, label %trace_tpm_util_get_buffer_size_hdr_len.exit

trace_tpm_util_get_buffer_size_hdr_len.exit.thread: ; preds = %bb.f
  %i.o = tail call noundef i32 @llvm.bswap.i32(i32 %i.i)
  br label %bb.g

trace_tpm_util_get_buffer_size_hdr_len.exit:      ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, i32 noundef %i.g, i64 noundef 18) #10
  %.pr.pre = load i32, ptr @trace_events_enabled_count, align 4
  %i.p = icmp eq i32 %.pr.pre, 0
  %i.q = tail call noundef i32 @llvm.bswap.i32(i32 %i.i)
  br i1 %i.p, label %trace_tpm_util_get_buffer_size_len.exit, label %bb.g, !prof !10

bb.g:                                             ; preds = %trace_tpm_util_get_buffer_size_hdr_len.exit.thread, %trace_tpm_util_get_buffer_size_hdr_len.exit.thread37, %trace_tpm_util_get_buffer_size_hdr_len.exit
  %i.r = phi i32 [ %i.l, %trace_tpm_util_get_buffer_size_hdr_len.exit.thread37 ], [ %i.q, %trace_tpm_util_get_buffer_size_hdr_len.exit ], [ %i.o, %trace_tpm_util_get_buffer_size_hdr_len.exit.thread ]
  %i.s = load i16, ptr @_TRACE_TPM_UTIL_GET_BUFFER_SIZE_LEN_DSTATE, align 2
  %.not2.i26 = icmp eq i16 %i.s, 0
  br i1 %.not2.i26, label %trace_tpm_util_get_buffer_size_len.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr @qemu_loglevel, align 4
  %i.u = and i32 %i.t, 32768
  %.not3.i27 = icmp eq i32 %i.u, 0
  br i1 %.not3.i27, label %trace_tpm_util_get_buffer_size_len.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, i32 noundef %i.r, i64 noundef 4) #10
  br label %trace_tpm_util_get_buffer_size_len.exit

trace_tpm_util_get_buffer_size_len.exit:          ; preds = %bb.d, %trace_tpm_util_get_buffer_size_hdr_len.exit, %bb.g, %bb.h, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.w = load i32, ptr %i.v, align 1
  %i.x = tail call noundef i32 @llvm.bswap.i32(i32 %i.w)
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.2, i32 noundef %i.x) #10
  br label %.thread

.thread:                                          ; preds = %trace_tpm_util_get_buffer_size_len.exit, %bb.b
  %.0.ph = phi i32 [ %i.c, %bb.b ], [ -14, %trace_tpm_util_get_buffer_size_len.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %trace_tpm_util_get_buffer_size.exit

bb.j:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.z = load i32, ptr %i.y, align 1
  %i.aa = tail call noundef i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  store i64 %i.ab, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.t

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i16 384, ptr %5, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 2
  store <4 x i32> <i32 369098752, i32 2046885888, i32 100663296, i32 503382016>, ptr %i.ac, align 2
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i32 33554432, ptr %i.ad, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %6, i8 0, i64 35, i1 false), !annotation !7
  %i.ae = call fastcc i32 @tpm_util_request(i32 noundef %0, ptr noundef %5, i64 noundef 22, ptr noundef %6, i64 noundef 35) ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %.thread46, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.ah = load i32, ptr %i.ag, align 1            ; 2 uses
  %i.ai = tail call noundef i32 @llvm.bswap.i32(i32 %i.ah)
  %.not = icmp eq i32 %i.ah, 587202560
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 15
  %i.ak = load i32, ptr %i.aj, align 1            ; 4 uses
  %.not22 = icmp eq i32 %i.ak, 33554432
  %or.cond51 = select i1 %.not, i1 %.not22, i1 false
  br i1 %or.cond51, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i28 = icmp eq i32 %i.al, 0
  br i1 %.not.i28, label %trace_tpm_util_get_buffer_size_len2.exit, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  %i.am = load i16, ptr @_TRACE_TPM_UTIL_GET_BUFFER_SIZE_HDR_LEN2_DSTATE, align 2
  %.not2.i29 = icmp eq i16 %i.am, 0
  br i1 %.not2.i29, label %trace_tpm_util_get_buffer_size_hdr_len2.exit.thread43, label %bb.o

trace_tpm_util_get_buffer_size_hdr_len2.exit.thread43: ; preds = %bb.n
  %i.an = tail call noundef i32 @llvm.bswap.i32(i32 %i.ak)
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = load i32, ptr @qemu_loglevel, align 4
  %i.ap = and i32 %i.ao, 32768
  %.not3.i30 = icmp eq i32 %i.ap, 0
  br i1 %.not3.i30, label %trace_tpm_util_get_buffer_size_hdr_len2.exit.thread, label %trace_tpm_util_get_buffer_size_hdr_len2.exit

trace_tpm_util_get_buffer_size_hdr_len2.exit.thread: ; preds = %bb.o
  %i.aq = tail call noundef i32 @llvm.bswap.i32(i32 %i.ak)
  br label %bb.p

trace_tpm_util_get_buffer_size_hdr_len2.exit:     ; preds = %bb.o
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, i32 noundef %i.ai, i64 noundef 35) #10
  %.pr41.pre = load i32, ptr @trace_events_enabled_count, align 4
  %i.ar = icmp eq i32 %.pr41.pre, 0
  %i.as = tail call noundef i32 @llvm.bswap.i32(i32 %i.ak)
  br i1 %i.ar, label %trace_tpm_util_get_buffer_size_len2.exit, label %bb.p, !prof !10

bb.p:                                             ; preds = %trace_tpm_util_get_buffer_size_hdr_len2.exit.thread, %trace_tpm_util_get_buffer_size_hdr_len2.exit.thread43, %trace_tpm_util_get_buffer_size_hdr_len2.exit
  %i.at = phi i32 [ %i.an, %trace_tpm_util_get_buffer_size_hdr_len2.exit.thread43 ], [ %i.as, %trace_tpm_util_get_buffer_size_hdr_len2.exit ], [ %i.aq, %trace_tpm_util_get_buffer_size_hdr_len2.exit.thread ]
  %i.au = load i16, ptr @_TRACE_TPM_UTIL_GET_BUFFER_SIZE_LEN2_DSTATE, align 2
  %.not2.i32 = icmp eq i16 %i.au, 0
  br i1 %.not2.i32, label %trace_tpm_util_get_buffer_size_len2.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = load i32, ptr @qemu_loglevel, align 4
  %i.aw = and i32 %i.av, 32768
  %.not3.i33 = icmp eq i32 %i.aw, 0
  br i1 %.not3.i33, label %trace_tpm_util_get_buffer_size_len2.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11, i32 noundef %i.at, i64 noundef 2) #10
  br label %trace_tpm_util_get_buffer_size_len2.exit

trace_tpm_util_get_buffer_size_len2.exit:         ; preds = %bb.m, %trace_tpm_util_get_buffer_size_hdr_len2.exit, %bb.p, %bb.q, %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 6
  %i.ay = load i32, ptr %i.ax, align 1
  %i.az = tail call noundef i32 @llvm.bswap.i32(i32 %i.ay)
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.3, i32 noundef %i.az) #10
  br label %.thread46

.thread46:                                        ; preds = %trace_tpm_util_get_buffer_size_len2.exit, %bb.k
  %.1.ph = phi i32 [ %i.ae, %bb.k ], [ -14, %trace_tpm_util_get_buffer_size_len2.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %trace_tpm_util_get_buffer_size.exit

bb.s:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 23
  %i.bb = load i32, ptr %i.ba, align 1
  %i.bc = tail call noundef i32 @llvm.bswap.i32(i32 %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 31
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = tail call noundef i32 @llvm.bswap.i32(i32 %i.be)
  %i.bg = tail call i32 @llvm.umax.i32(i32 %i.bc, i32 %i.bf)
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  store i64 %i.bh, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.s, %bb.j
  %i.bi = phi i64 [ %.pre, %._crit_edge ], [ %i.bh, %bb.s ], [ %i.ab, %bb.j ]
  %i.bj = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i34 = icmp eq i32 %i.bj, 0
  br i1 %.not.i34, label %trace_tpm_util_get_buffer_size.exit, label %bb.u, !prof !8

bb.u:                                             ; preds = %bb.t
  %i.bk = load i16, ptr @_TRACE_TPM_UTIL_GET_BUFFER_SIZE_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.bk, 0
  br i1 %.not1.i, label %trace_tpm_util_get_buffer_size.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = load i32, ptr @qemu_loglevel, align 4
  %i.bm = and i32 %i.bl, 32768
  %.not2.i35 = icmp eq i32 %i.bm, 0
  br i1 %.not2.i35, label %trace_tpm_util_get_buffer_size.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, i64 noundef %i.bi) #10
  br label %trace_tpm_util_get_buffer_size.exit

trace_tpm_util_get_buffer_size.exit:              ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %.thread46, %.thread, %bb.a
  %.2 = phi i32 [ -14, %bb.a ], [ %.0.ph, %.thread ], [ %.1.ph, %.thread46 ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %bb.w ]
  ret i32 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @tpm_util_request(i32 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 10, 23) %2, ptr nofree noundef nonnull captures(none) %3, i64 noundef range(i64 18, 1025) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca [1 x %struct._GPollFD], align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i64 4294967296, ptr %5, align 8, !annotation !7
  store i32 %0, ptr %5, align 8
  %i.a = tail call i64 @write(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #10 ; 2 uses
  %i.b = and i64 %i.a, 2147483648
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #11
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub i32 0, %i.d
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = and i64 %i.a, 2147483647
  %.not18 = icmp eq i64 %i.f, %2
  br i1 %.not18, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.c, %bb.d
  %i.g = call i32 @g_poll(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1000) #10
  switch i32 %i.g, label %.preheader..critedge_crit_edge [
    i32 -1, label %bb.d
    i32 1, label %bb.e
  ]

.preheader..critedge_crit_edge:                   ; preds = %.preheader
  %.pre = tail call ptr @__errno_location() #11
  br label %.critedge

bb.d:                                             ; preds = %.preheader
  %i.h = tail call ptr @__errno_location() #11    ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %.preheader, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %bb.d, %.preheader..critedge_crit_edge
  %.pre-phi = phi ptr [ %.pre, %.preheader..critedge_crit_edge ], [ %i.h, %bb.d ]
  %i.k = load i32, ptr %.pre-phi, align 4
  %i.l = sub i32 0, %i.k
  br label %bb.g

bb.e:                                             ; preds = %.preheader
  %i.m = call i64 @read(i32 noundef %0, ptr noundef nonnull %3, i64 noundef %4) #10
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = icmp ult i32 %i.n, 10
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %3, i64 2
  %.val = load i32, ptr %i.p, align 1
  %i.q = call i32 @llvm.bswap.i32(i32 %.val)
  %.not20 = icmp eq i32 %i.q, %i.n
  %. = select i1 %.not20, i32 0, i32 -90
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c, %.critedge, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -14, %bb.e ], [ %i.l, %.critedge ], [ -14, %bb.c ], [ %., %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i32 %.0
}

declare void @error_report(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tpm_sized_buffer_reset(ptr nofree noundef captures(none) initializes((0, 4)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @g_free(ptr noundef %i.b) #10
  store ptr null, ptr %i.a, align 8
  store i32 0, ptr %0, align 8
  ret void
}

declare void @g_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tpm_util_show_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %glib_autoptr_cleanup_GString.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_TPM_UTIL_SHOW_BUFFER_CONTENT_DSTATE, align 2
  %.not22 = icmp eq i16 %i.b, 0
  br i1 %.not22, label %glib_autoptr_cleanup_GString.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 2
  %.val = load i32, ptr %i.c, align 1
  %i.d = tail call i32 @llvm.bswap.i32(i32 %.val)
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.e) ; 4 uses
  tail call fastcc void @trace_tpm_util_show_buffer_header(ptr noundef %2, i64 noundef %i.f)
  %.not33 = icmp eq i64 %i.f, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.f, i64 16) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %g_string_append_c_inline.exit
  %.032 = phi i64 [ 0, %.lr.ph ], [ %i.t, %g_string_append_c_inline.exit ]
  %.02831 = phi ptr [ null, %.lr.ph ], [ %i.s, %g_string_append_c_inline.exit ] ; 7 uses
  %.not23 = icmp eq ptr %.02831, null
  br i1 %.not23, label %g_string_append_c_inline.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.02831, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = add i64 %i.i, 1                          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02831, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %.not.i = icmp ult i64 %i.j, %i.l
  br i1 %.not.i, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %.02831, align 8
  store i64 %i.j, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  store i8 10, ptr %i.n, align 1
  %i.o = load ptr, ptr %.02831, align 8
  %i.p = load i64, ptr %i.h, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  store i8 0, ptr %i.q, align 1
  br label %g_string_append_c_inline.exit

bb.g:                                             ; preds = %bb.e
  %i.r = tail call ptr @g_string_insert_c(ptr noundef nonnull %.02831, i64 noundef -1, i8 noundef signext 10) #10 ; 0 uses
  br label %g_string_append_c_inline.exit

g_string_append_c_inline.exit:                    ; preds = %bb.g, %bb.f, %bb.d
  %i.s = tail call ptr @qemu_hexdump_line(ptr noundef %.02831, ptr noundef %0, i64 noundef %i.g, i64 noundef 1, i64 noundef 0) #10 ; 2 uses
  %i.t = add i64 %.032, %i.g                      ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.f
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %g_string_append_c_inline.exit, %bb.c
  %.028.lcssa = phi ptr [ null, %bb.c ], [ %i.s, %g_string_append_c_inline.exit ] ; 3 uses
  %i.v = tail call ptr @g_string_ascii_up(ptr noundef %.028.lcssa) #10 ; 0 uses
  %i.w = load ptr, ptr %.028.lcssa, align 8
  tail call fastcc void @trace_tpm_util_show_buffer_content(ptr noundef %i.w)
  %i.x = tail call ptr @g_string_free(ptr noundef nonnull %.028.lcssa, i32 noundef 1) #10 ; 0 uses
  br label %glib_autoptr_cleanup_GString.exit

glib_autoptr_cleanup_GString.exit:                ; preds = %bb.b, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_tpm_util_show_buffer_header(ptr noundef %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_TPM_UTIL_SHOW_BUFFER_HEADER_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.13, ptr noundef %0, i64 noundef %1) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

declare ptr @qemu_hexdump_line(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @g_string_ascii_up(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_tpm_util_show_buffer_content(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_TPM_UTIL_SHOW_BUFFER_CONTENT_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.14, ptr noundef %0) #10
  br label %bb.e

end_hunk_0
