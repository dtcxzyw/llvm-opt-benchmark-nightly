inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_syslog:bb.a
  br i1 %.not.27.i, label %bb.ax, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ms = add i32 %i.fy, 29                       ; 2 uses
  %i.mt = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ms)
  %i.mu = zext i8 %i.mt to i64
  %i.mv = getelementptr [2 x i8], ptr %i.gc, i64 %i.mu
  %i.mw = load i16, ptr %i.mv, align 2
  %i.mx = and i16 %i.mw, 1
  %.not.28.i = icmp eq i16 %i.mx, 0
  br i1 %.not.28.i, label %bb.ax, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.my = add i32 %i.fy, 30                       ; 2 uses
  %i.mz = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.my)
  %i.na = zext i8 %i.mz to i64
  %i.nb = getelementptr [2 x i8], ptr %i.gc, i64 %i.na
  %i.nc = load i16, ptr %i.nb, align 2
  %i.nd = and i16 %i.nc, 1
  %.not.29.i = icmp eq i16 %i.nd, 0
  br i1 %.not.29.i, label %bb.ax, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ne = add i32 %i.fy, 31                       ; 2 uses
  %i.nf = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ne)
  %i.ng = zext i8 %i.nf to i64
  %i.nh = getelementptr [2 x i8], ptr %i.gc, i64 %i.ng
  %i.ni = load i16, ptr %i.nh, align 2
  %i.nj = and i16 %i.ni, 1
  %.not.30.i = icmp eq i16 %i.nj, 0
  br i1 %.not.30.i, label %bb.ax, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.nk = add i32 %i.fy, 32                       ; 2 uses
  %i.nl = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.nk)
  %i.nm = zext i8 %i.nl to i64
  %i.nn = getelementptr [2 x i8], ptr %i.gc, i64 %i.nm
  %i.no = load i16, ptr %i.nn, align 2
  %i.np = and i16 %i.no, 1
  %.not.31.i = icmp eq i16 %i.np, 0
  br i1 %.not.31.i, label %bb.ax, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.cc, %bb.ax, %bb.aw
  %.2.i = phi i32 [ %i.gl, %bb.ax ], [ %i.fz, %bb.aw ], [ %i.fz, %bb.cc ] ; 2 uses
  %i.nq = load i32, ptr @hf_syslog_msg, align 4
  %i.nr = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.2.i)
  %i.ns = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.nq, ptr noundef %0, i32 noundef %.2.i, i32 noundef %i.nr, i32 noundef 0) ; 0 uses
  %i.nt = call i32 @tvb_reported_length(ptr noundef %0)
  br label %dissect_rfc3164_syslog_message.exit

dissect_rfc3164_syslog_message.exit:              ; preds = %bb.t, %.loopexit.i, %bb.av, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %dissect_rfc5424_syslog_message.exit
  %.0110 = phi i32 [ %.0.i125, %dissect_rfc5424_syslog_message.exit ], [ %.3, %bb.ap ], [ %.3, %bb.ao ], [ %i.nt, %.loopexit.i ], [ %i.fs, %bb.av ], [ %.3, %bb.at ], [ %.3, %bb.as ], [ %.3, %bb.ar ], [ %.3, %bb.aq ], [ %.3, %bb.t ] ; 3 uses
  %i.nu = call i32 @tvb_reported_length(ptr noundef %0)
  %i.nv = icmp ult i32 %.0110, %i.nu
  br i1 %i.nv, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %dissect_rfc3164_syslog_message.exit
  %i.nw = load i32, ptr @hf_syslog_msg, align 4
  %i.nx = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0110)
  %i.ny = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.nw, ptr noundef %0, i32 noundef %.0110, i32 noundef %i.nx, i32 noundef 0)
  %i.nz = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ny, ptr noundef nonnull @ei_syslog_msg_nonconformant) ; 0 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %dissect_rfc3164_syslog_message.exit
  br i1 %i.ch, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.oa = load i32, ptr @hf_syslog_msu_present, align 4
  %i.ob = call ptr @proto_tree_add_boolean(ptr noundef %i.cj, i32 noundef %i.oa, ptr noundef %0, i32 noundef %.3, i32 noundef %i.au, i64 noundef 1) ; 2 uses
  %.not.i129 = icmp eq ptr %i.ob, null
  br i1 %.not.i129, label %proto_item_set_generated.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.oc = getelementptr i8, ptr %i.ob, i64 40
  %i.od = load ptr, ptr %i.oc, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.od, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.oe = getelementptr i8, ptr %i.od, i64 28     ; 2 uses
  %i.of = load i32, ptr %i.oe, align 4
  %i.og = or i32 %i.of, 2
  store i32 %i.og, ptr %i.oe, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.cf, %bb.cg, %bb.ch
  %i.oh = load ptr, ptr @mtp_handle, align 8
  %i.oi = call i32 @call_dissector(ptr noundef %i.oh, ptr noundef nonnull %.0.i131137, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %proto_item_set_generated.exit, %bb.ce
  %i.oj = call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.oj
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_syslog_tcp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @get_framed_syslog_pdu_len(ptr noundef %1, ptr noundef %0, i32 noundef 0, ptr poison)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @tcp_dissect_pdus(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, i32 noundef 6, ptr noundef nonnull @get_framed_syslog_pdu_len, ptr noundef nonnull @dissect_syslog, ptr noundef %3)
  %i.b = tail call i32 @tvb_reported_length(ptr noundef %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @dissect_syslog(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_syslog() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @syslog_handle, align 8
  tail call void @dissector_add_uint_with_preference(ptr noundef nonnull @.str.58, i32 noundef 514, ptr noundef %i.a)
  %i.b = load ptr, ptr @syslog_handle_tcp, align 8
  tail call void @dissector_add_for_decode_as_with_preference(ptr noundef nonnull @.str.59, ptr noundef %i.b)
  %i.c = load ptr, ptr @syslog_handle_tcp, align 8
  tail call void @dissector_add_uint_with_preference(ptr noundef nonnull @.str.60, i32 noundef 6514, ptr noundef %i.c)
  %i.d = load ptr, ptr @syslog_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.61, i32 noundef 5, ptr noundef %i.d)
  %i.e = load i32, ptr @proto_syslog, align 4
  %i.f = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.62, i32 noundef %i.e)
  store ptr %i.f, ptr @mtp_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_with_preference(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as_with_preference(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @get_framed_syslog_pdu_len(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load ptr, ptr @g_ascii_table, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 6 uses
  %.040 = phi i32 [ %i.m, %bb.d ], [ 0, %bb.a ]   ; 8 uses
  %i.b = add i32 %.040, %2                        ; 2 uses
  %i.c = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %1, i32 noundef %i.b, i32 noundef 1)
  %i.d = icmp samesign ult i32 %.040, 5
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.b) ; 2 uses
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr [2 x i8], ptr %i.a, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2
  %i.j = and i16 %i.i, 8
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %.040, 0
  %i.l = icmp eq i8 %i.f, 48
  %or.cond = and i1 %i.k, %i.l
  %i.m = add nuw nsw i32 %.040, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %or.cond, label %.thread47, label %bb.b

.thread:                                          ; preds = %bb.c, %bb.b
  %.not50 = icmp eq i32 %.040, 0
  br i1 %.not50, label %.thread47, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.n = getelementptr i8, ptr %0, i64 416
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr @tvb_get_string_enc(ptr noundef %i.o, ptr noundef %1, i32 noundef %2, i32 noundef %.040, i32 noundef 0) ; 5 uses
  %i.q = getelementptr i8, ptr %i.p, i64 %indvars.iv
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = add nsw i32 %i.t, -48                    ; 2 uses
  %indvars.iv.next55 = add nsw i64 %indvars.iv, -1 ; 2 uses
  %i.v = icmp eq i64 %indvars.iv.next55, 0
  br i1 %i.v, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.p, i64 %indvars.iv.next55
  %i.x = getelementptr i8, ptr %i.w, i64 -1
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = mul nuw nsw i32 %i.z, 10
  %i.ab = add nsw i32 %i.aa, -480
  %i.ac = add nsw i32 %i.ab, %i.u                 ; 2 uses
  %indvars.iv.next55.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ad = icmp eq i64 %indvars.iv.next55.1, 0
  br i1 %i.ad, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %i.p, i64 %indvars.iv.next55.1
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = mul nuw nsw i32 %i.ah, 100
  %i.aj = add nsw i32 %i.ai, -4800
  %i.ak = add nsw i32 %i.aj, %i.ac                ; 2 uses
  %indvars.iv.next55.2 = add nsw i64 %indvars.iv, -3 ; 2 uses
  %i.al = icmp eq i64 %indvars.iv.next55.2, 0
  br i1 %i.al, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr i8, ptr %i.p, i64 %indvars.iv.next55.2
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul nuw nsw i32 %i.ap, 1000
  %i.ar = add nsw i32 %i.aq, -48000
  %i.as = add nsw i32 %i.ar, %i.ak                ; 2 uses
  %indvars.iv.next55.3 = add nsw i64 %indvars.iv, -4 ; 2 uses
  %i.at = icmp eq i64 %indvars.iv.next55.3, 0
  br i1 %i.at, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr i8, ptr %i.p, i64 %indvars.iv.next55.3
  %i.av = getelementptr i8, ptr %i.au, i64 -1
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i32
  %i.ay = mul nuw nsw i32 %i.ax, 10000
  %i.az = add nsw i32 %i.ay, -480000
  %i.ba = add nsw i32 %i.az, %i.as
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.lcssa = phi i32 [ %i.u, %bb.e ], [ %i.ac, %bb.f ], [ %i.ak, %bb.g ], [ %i.as, %bb.h ], [ %i.ba, %bb.i ] ; 2 uses
  %.not43 = icmp eq i32 %.lcssa, 0
  br i1 %.not43, label %.thread47, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = add nuw nsw i32 %.040, 1                ; 2 uses
  %i.bc = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %1, i32 noundef %2, i32 noundef %i.bb)
  br i1 %i.bc, label %bb.l, label %.thread47

bb.l:                                             ; preds = %bb.k
  %i.bd = add i32 %.040, %2
  %i.be = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.bd)
  %i.bf = icmp eq i8 %i.be, 32
  %i.bg = add i32 %i.bb, %.lcssa
  %spec.select = select i1 %i.bf, i32 %i.bg, i32 0
  br label %.thread47

.thread47:                                        ; preds = %bb.d, %bb.l, %.thread, %bb.j, %bb.k
  %.036 = phi i32 [ 0, %.thread ], [ %spec.select, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.d ]
  ret i32 %.036
}

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_ensure_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_format_text(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_string_enc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @g_strsplit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @convert_string_to_hex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tvb_set_free_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_strfreev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_find_uint8_remaining(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_time_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @dissect_syslog_sd(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 13 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = load i32, ptr %3, align 4
  %i.h = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.g)
  %i.i = icmp ugt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %3, align 4
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.j)
  %i.l = icmp eq i8 %i.k, 45
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %3, align 4
  %i.n = add i32 %i.m, 1
  %i.o = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.n)
  %i.p = icmp eq i8 %i.o, 32
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr @hf_syslog_sd, align 4
  %i.r = load i32, ptr %3, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.q, ptr noundef %1, i32 noundef %i.r, i32 noundef 1, i32 noundef 0)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.s, ptr noundef nonnull @.str.137)
  %i.t = load i32, ptr %3, align 4
  %i.u = add i32 %i.t, 2
  store i32 %i.u, ptr %3, align 4
  br label %bb.s

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.v = load i32, ptr %3, align 4
  %i.w = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.v)
  %.not = icmp eq i8 %i.w, 91
  br i1 %.not, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.x = load i32, ptr %3, align 4
  %i.y = call zeroext i1 @tvb_find_uint16_remaining(ptr noundef %1, i32 noundef %i.x, i16 noundef zeroext 23840, ptr noundef nonnull %i.a)
  br i1 %i.y, label %._crit_edge135, label %bb.g

._crit_edge135:                                   ; preds = %bb.f
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = call i32 @tvb_reported_length(ptr noundef %1) ; 4 uses
  %.not105 = icmp eq i32 %i.z, 0
  br i1 %.not105, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add i32 %i.z, -1
  %i.ab = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.aa)
  %i.ac = icmp eq i8 %i.ab, 93
  br i1 %i.ac, label %.critedge, label %bb.r

.critedge:                                        ; preds = %bb.h
  store i32 %i.z, ptr %i.a, align 4
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge135, %.critedge
  %i.ad = phi i32 [ %.pre, %._crit_edge135 ], [ %i.z, %.critedge ]
  %i.ae = load i32, ptr @hf_syslog_sd, align 4
  %i.af = load i32, ptr %3, align 4               ; 2 uses
end_hunk_0
