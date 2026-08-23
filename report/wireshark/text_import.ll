Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/text_import?download=true
inline.NumInlined: 22
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@process_rollback:bb.a
  %i.ak = trunc i64 %i.aj to i8                   ; 2 uses
  br i1 %.not.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.l, align 8             ; 2 uses
  %i.am = add i64 %i.al, 1                        ; 2 uses
  %i.an = load i64, ptr %i.m, align 8
  %i.ao = icmp ult i64 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %i.ap = tail call ptr @g_string_insert_c(ptr noundef %i.h, i64 noundef -1, i8 noundef signext %i.ak) ; 0 uses
  br label %g_string_append_c_inline.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.h, align 8
  store i64 %i.am, ptr %i.l, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.al
  store i8 %i.ak, ptr %i.ar, align 1
  %i.as = load ptr, ptr %i.h, align 8
  %i.at = load i64, ptr %i.l, align 8
  %i.au = getelementptr i8, ptr %i.as, i64 %i.at
  store i8 0, ptr %i.au, align 1
  br label %g_string_append_c_inline.exit

g_string_append_c_inline.exit:                    ; preds = %.critedge.i, %bb.h
  %i.av = add i32 %.069, 2                        ; 4 uses
  br i1 %0, label %bb.i, label %bb.j

bb.i:                                             ; preds = %g_string_append_c_inline.exit
  %i.aw = add i32 %.032.ph71, 1
  br label %.outer

bb.j:                                             ; preds = %g_string_append_c_inline.exit
  %i.ax = add i32 %.030.ph72, 1                   ; 3 uses
  %i.ay = add i32 %i.av, %.032.ph71
  %i.az = icmp slt i32 %i.ay, %i.g
  br i1 %i.az, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr @pkt_lnstart, align 8
  %i.bb = sext i32 %i.av to i64
  %i.bc = getelementptr i8, ptr %i.ba, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = icmp eq i8 %i.bd, 32
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = add i32 %i.ax, %.032.ph71
  %i.bg = add i32 %.069, 3
  br label %.outer

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp sgt i32 %i.ax, 3
  br i1 %i.bh, label %.loopexit, label %.outer

.outer:                                           ; preds = %bb.l, %bb.m, %bb.i
  %.133 = phi i32 [ %i.aw, %bb.i ], [ %i.bf, %bb.l ], [ %.032.ph71, %bb.m ] ; 3 uses
  %.131 = phi i32 [ %.030.ph72, %bb.i ], [ 0, %bb.l ], [ %i.ax, %bb.m ]
  %.1 = phi i32 [ %i.av, %bb.i ], [ %i.bg, %bb.l ], [ %i.av, %bb.m ] ; 2 uses
  %i.bi = add i32 %.1, 1                          ; 2 uses
  %i.bj = add i32 %i.bi, %.133
  %i.bk = icmp slt i32 %i.bj, %i.g
  br i1 %i.bk, label %.lr.ph, label %.loopexit, !llvm.loop !36

.loopexit:                                        ; preds = %bb.m, %bb.j, %bb.d, %bb.e, %.outer, %bb.b, %bb.a
  %.032.ph68 = phi i32 [ 0, %bb.a ], [ %.032.ph71, %bb.b ], [ %.032.ph71, %bb.j ], [ %.032.ph71, %bb.d ], [ %.032.ph71, %bb.e ], [ %.133, %.outer ], [ %.032.ph71, %bb.m ] ; 5 uses
  %i.bl = icmp sgt i32 %.032.ph68, 0
  br i1 %i.bl, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.loopexit
  %i.bm = load ptr, ptr @pkt_lnstart, align 8
  %i.bn = sext i32 %i.g to i64
  %i.bo = getelementptr i8, ptr %i.bm, i64 %i.bn
  %i.bp = zext nneg i32 %.032.ph68 to i64         ; 2 uses
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = getelementptr i8, ptr %i.bo, i64 %i.bq
  %i.bs = load ptr, ptr %i.h, align 8
  %i.bt = tail call i32 @strncmp(ptr noundef %i.br, ptr noundef %i.bs, i64 noundef %i.bp) #15
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @report_warning(ptr noundef nonnull @.str.43)
  %i.bv = icmp eq i32 %.032.ph68, 1
  %i.bw = select i1 %i.bv, ptr @.str.23, ptr @.str.45
  %i.bx = load i32, ptr @curr_offset, align 4
  %i.by = sub i32 %i.bx, %i.g
  %i.bz = load ptr, ptr @info_p, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 180
  %i.cb = load i32, ptr %i.ca, align 4
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 4, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef %.032.ph68, ptr noundef nonnull %i.bw, i32 noundef %i.by, i32 noundef %i.cb)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.o
  %.032.ph61.sink = phi i32 [ %i.g, %bb.o ], [ %.032.ph68, %bb.n ]
  %i.cc = load i32, ptr @curr_offset, align 4
  %i.cd = sub i32 %i.cc, %.032.ph61.sink
  store i32 %i.cd, ptr @curr_offset, align 4
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %.loopexit
  %i.ce = tail call ptr @g_string_free(ptr noundef %i.h, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @report_failure(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden range(i32 0, 9) i32 @text_import(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr @state, align 4
  store i32 0, ptr @curr_offset, align 4
  store i32 0, ptr @packet_start, align 4
  store i32 0, ptr @packet_preamble_len, align 4
  store i32 0, ptr @direction, align 4
  %i.a = tail call i64 @time(ptr noundef null) #16
  store i64 %i.a, ptr @ts_sec, align 8
  %i.b = tail call ptr @localtime(ptr noundef nonnull @ts_sec) #16 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.12)
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @timecode_default, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @timecode_default, i64 32), align 8
  store i32 0, ptr @ts_nsec, align 4
  store ptr %0, ptr @info_p, align 8
  %i.d = getelementptr i8, ptr %0, i64 176
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ugt i32 %i.e, 262144
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.13, i32 noundef %i.e, i32 noundef 262144)
  br label %bb.al

bb.e:                                             ; preds = %bb.c
  store i1 false, ptr @hdr_ethernet, align 1
  store i1 false, ptr @hdr_ip, align 1
  store i1 false, ptr @hdr_udp, align 1
  store i1 false, ptr @hdr_tcp, align 1
  store i1 false, ptr @hdr_sctp, align 1
  store i1 false, ptr @hdr_data_chunk, align 1
  store i1 false, ptr @hdr_export_pdu, align 1
  %i.g = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  switch i32 %i.h, label %bb.i [
    i32 0, label %bb.f
    i32 1, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp ult i32 %i.j, 4
  br i1 %i.k, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %bb.f
  %i.l = zext nneg i32 %i.j to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.text_import, i64 %i.l
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr @offset_base, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %switch.lookup
  %i.m = getelementptr i8, ptr %0, i64 36
  %i.n = load i8, ptr %i.m, align 4, !range !9, !noundef !10
  store i8 %i.n, ptr @has_direction, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i32 @g_regex_get_string_number(ptr noundef %i.p, ptr noundef nonnull @.str.14)
  %i.r = icmp sgt i32 %i.q, -1
  %i.s = zext i1 %i.r to i8
  store i8 %i.s, ptr @has_direction, align 1
  %i.t = load ptr, ptr %i.o, align 8
  %i.u = tail call i32 @g_regex_get_string_number(ptr noundef %i.t, ptr noundef nonnull @.str.15)
  %i.v = icmp sgt i32 %i.u, -1
  %i.w = zext i1 %i.v to i8
  store i8 %i.w, ptr @has_seqno, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g
  %i.x = getelementptr i8, ptr %0, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.16)
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %1, label %bb.k

1:                                                ; preds = %bb.j
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %1
  %storemerge = phi i1 [ true, %1 ], [ false, %bb.j ], [ false, %bb.i ]
  store i1 %storemerge, ptr @ts_fmt_iso, align 1
  store i1 false, ptr @offset_warned, align 1
  store i1 false, ptr @timecode_warned, align 1
  %i.ab = getelementptr i8, ptr %0, i64 104
  %i.ac = load i32, ptr %i.ab, align 8
  switch i32 %i.ac, label %bb.s [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
    i32 5, label %bb.p
    i32 6, label %bb.q
    i32 7, label %bb.r
  ]

bb.l:                                             ; preds = %bb.k
  store i1 true, ptr @hdr_ethernet, align 1
  %i.ad = getelementptr i8, ptr %0, i64 108
  %i.ae = load i32, ptr %i.ad, align 4
  store i32 %i.ae, ptr @hdr_ethernet_proto, align 4
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  store i1 true, ptr @hdr_ip, align 1
  %i.af = getelementptr i8, ptr %0, i64 148
  %i.ag = load i32, ptr %i.af, align 4
  br label %.thread.sink.split

bb.n:                                             ; preds = %bb.k
  store i1 true, ptr @hdr_udp, align 1
  store i1 false, ptr @hdr_tcp, align 1
  store i1 true, ptr @hdr_ip, align 1
  br label %.thread.sink.split

bb.o:                                             ; preds = %bb.k
  store i1 true, ptr @hdr_tcp, align 1
  store i1 false, ptr @hdr_udp, align 1
  store i1 true, ptr @hdr_ip, align 1
  br label %.thread.sink.split

bb.p:                                             ; preds = %bb.k
  store i1 true, ptr @hdr_sctp, align 1
  store i1 true, ptr @hdr_ip, align 1
  br label %.thread.sink.split

bb.q:                                             ; preds = %bb.k
  store i1 true, ptr @hdr_sctp, align 1
  store i1 true, ptr @hdr_data_chunk, align 1
  store i1 true, ptr @hdr_ip, align 1
  br label %.thread.sink.split

bb.r:                                             ; preds = %bb.k
  store i1 true, ptr @hdr_export_pdu, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %bb.r, %bb.l
  %.b.pr = load i1, ptr @hdr_ip, align 1
  br i1 %.b.pr, label %.thread, label %bb.ab

.thread.sink.split:                               ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.sink51 = phi i32 [ %i.ag, %bb.m ], [ 17, %bb.n ], [ 6, %bb.o ], [ 132, %bb.p ], [ 132, %bb.q ]
  store i32 %.sink51, ptr @hdr_ip_proto, align 4
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.s
  %i.ah = getelementptr i8, ptr %0, i64 112
  %i.ai = load i8, ptr %i.ah, align 8, !range !9, !noundef !10
  %i.aj = trunc nuw i8 %i.ai to i1                ; 3 uses
  br i1 %i.aj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread
  store i1 true, ptr @hdr_ipv6, align 1
  store i1 false, ptr @hdr_ip, align 1
  br label %bb.u

bb.u:                                             ; preds = %.thread, %bb.t
  %storemerge43 = phi i32 [ 34525, %bb.t ], [ 2048, %.thread ]
  store i32 %storemerge43, ptr @hdr_ethernet_proto, align 4
  %i.ak = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8            ; 2 uses
  switch i32 %i.al, label %bb.aa [
    i32 1, label %bb.v
    i32 7, label %bb.ab
    i32 129, label %bb.w
    i32 130, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  store i1 true, ptr @hdr_ethernet, align 1
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  br i1 %i.aj, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.am = tail call ptr @wtap_encap_name(i32 noundef 129)
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.17, ptr noundef %i.am)
  br label %bb.al

bb.y:                                             ; preds = %bb.u
  br i1 %i.aj, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.an = tail call ptr @wtap_encap_name(i32 noundef 130)
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.18, ptr noundef %i.an)
  br label %bb.al

bb.aa:                                            ; preds = %bb.u
  %i.ao = tail call ptr @wtap_encap_name(i32 noundef %i.al)
  %i.ap = load i32, ptr %i.ak, align 8
  %i.aq = tail call ptr @wtap_encap_description(i32 noundef %i.ap)
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.19, ptr noundef %i.ao, ptr noundef %i.aq)
  br label %bb.al

bb.ab:                                            ; preds = %bb.u, %bb.v, %bb.w, %bb.y, %bb.s
  %i.ar = getelementptr i8, ptr %0, i64 180       ; 2 uses
  store i32 0, ptr %i.ar, align 4
  %i.as = getelementptr i8, ptr %0, i64 184
  store i32 0, ptr %i.as, align 8
  %i.at = tail call noalias dereferenceable_or_null(262144) ptr @g_malloc(i64 noundef 262144) #19
  store ptr %i.at, ptr @packet_buf, align 8
  tail call void @ws_buffer_init(ptr noundef nonnull @prefix_buf, i64 noundef 2048)
  %i.au = load ptr, ptr @packet_buf, align 8
  %.not44 = icmp eq ptr %i.au, null
  br i1 %.not44, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.20)
  br label %bb.al

bb.ad:                                            ; preds = %bb.ab
  %i.av = load i32, ptr %i.g, align 8
  switch i32 %i.av, label %bb.ak [
    i32 0, label %bb.ae
    i32 1, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.aw = getelementptr i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call i32 @text_import_scan(ptr noundef %i.ax)
  switch i32 %i.ay, label %bb.ag [
    i32 2, label %bb.af
    i32 1, label %bb.ak
  ]

bb.af:                                            ; preds = %bb.ae
  %i.az = tail call ptr @__errno_location() #18
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = tail call ptr @g_strerror(i32 noundef %i.ba) #18
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.21, ptr noundef %i.bb)
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ad
  %i.bc = tail call i32 @text_import_regex(ptr noundef %0) ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.bc, ptr %i.ar, align 4
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %.not45 = icmp eq i32 %i.bc, 0
  %spec.store.select = select i1 %.not45, i32 0, i32 3
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ad, %bb.ae, %bb.aj, %bb.ai, %bb.af, %bb.ag
  %.0 = phi i32 [ 0, %bb.ag ], [ 3, %bb.ae ], [ %spec.store.select, %bb.aj ], [ 8, %bb.af ], [ 0, %bb.ai ], [ 1, %bb.ad ]
  %i.be = load ptr, ptr @packet_buf, align 8
  tail call void @g_free(ptr noundef %i.be)
  tail call void @ws_buffer_free(ptr noundef nonnull @prefix_buf)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ac, %bb.aa, %bb.z, %bb.x, %bb.d, %bb.b
  %.034 = phi i32 [ 8, %bb.b ], [ 8, %bb.d ], [ 1, %bb.aa ], [ %.0, %bb.ak ], [ 8, %bb.ac ], [ 1, %bb.x ], [ 1, %bb.z ]
  ret i32 %.034
}

; Function Attrs: nounwind null_pointer_is_valid
declare i64 @time(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid
declare ptr @localtime(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_regex_get_string_number(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_encap_name(i32 noundef) local_unnamed_addr #2

end_hunk_0
