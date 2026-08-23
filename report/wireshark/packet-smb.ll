Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-smb?download=true
inline.NumInlined: 279
inline.NumDeleted: 72
begin_hunk_0_@dissect_negprot_request:bb.a
  %i.bl = sext i32 %i.bj to i64
  %i.bm = getelementptr [8 x i8], ptr %i.ae, i64 %i.bl
  store ptr %i.bi, ptr %i.bm, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %.not90 = icmp eq i16 %i.az, 0
  br i1 %.not90, label %bb.o, label %bb.h

bb.o:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %i.a, align 8
  call void @proto_item_set_len(ptr noundef %i.bn, i32 noundef 0)
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.c, %bb.o
  %.2 = phi i32 [ %i.l, %bb.c ], [ %i.af, %.thread ], [ %i.ax, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.2
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_negprot_response(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, ptr nofree noundef captures(address_is_null) %5) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %i.c = alloca i16, align 2                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 2934, ptr noundef nonnull @.str.6) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3) ; 5 uses
  %i.e = zext i8 %i.d to i32                      ; 4 uses
  switch i8 %i.d, label %bb.f [
    i8 1, label %.thread
    i8 13, label %bb.d
    i8 17, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %.thread

bb.e:                                             ; preds = %bb.c
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %bb.c
  %.0179 = phi ptr [ @.str.2812, %bb.e ], [ @.str.2811, %bb.d ], [ @.str.2810, %bb.c ]
  %i.f = load i32, ptr @hf_smb_word_count, align 4
  %i.g = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.e, ptr noundef nonnull @.str.2813, i32 noundef %i.e, ptr noundef nonnull %.0179) ; 0 uses
  %i.h = add i32 %3, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.i = load i32, ptr @hf_smb_word_count, align 4
  %i.j = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.e) ; 0 uses
  %i.k = add i32 %3, 1                            ; 2 uses
  %i.l = icmp eq i8 %i.d, 0
  br i1 %i.l, label %bb.r, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.m = phi i32 [ %i.h, %.thread ], [ %i.k, %bb.f ] ; 22 uses
  %i.n = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.m) ; 5 uses
  %i.o = getelementptr i8, ptr %5, i64 40
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not197 = icmp eq ptr %i.p, null
  br i1 %.not197, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %i.p, i64 40
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, 12
  br i1 %i.s, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr i8, ptr %i.p, i64 32
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = zext i16 %i.n to i32                     ; 2 uses
  %i.w = load i32, ptr %i.u, align 8
  %i.x = icmp sgt i32 %i.w, %i.v
  br i1 %i.x, label %bb.j, label %.thread215

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr i8, ptr %i.u, i64 8
  %i.z = zext i16 %i.n to i64
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.g
  %.0178 = phi ptr [ %i.ab, %bb.j ], [ null, %bb.g ], [ null, %bb.h ] ; 2 uses
  %i.ac = zext i16 %i.n to i32                    ; 2 uses
  %i.ad = icmp eq i16 %i.n, -1
  br i1 %i.ad, label %bb.l, label %bb.m

.thread215:                                       ; preds = %bb.i
  %i.ae = icmp eq i16 %i.n, -1
  br i1 %i.ae, label %bb.l, label %.thread218

bb.l:                                             ; preds = %.thread215, %bb.k
  %i.af = load i32, ptr @hf_smb_dialect_index, align 4
  %i.ag = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef 65535, ptr noundef nonnull @.str.2815) ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %.not198 = icmp eq ptr %.0178, null
  br i1 %.not198, label %bb.n, label %.thread218

.thread218:                                       ; preds = %.thread215, %bb.m
  %.0178217221 = phi ptr [ %.0178, %bb.m ], [ @.str.2814, %.thread215 ]
  %i.ah = phi i32 [ %i.ac, %bb.m ], [ %i.v, %.thread215 ] ; 2 uses
  %i.ai = load i32, ptr @hf_smb_dialect_index, align 4
  %i.aj = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef %i.ah, ptr noundef nonnull @.str.2813, i32 noundef %i.ah, ptr noundef nonnull %.0178217221) ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = load i32, ptr @hf_smb_dialect_index, align 4
  %i.al = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ak, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef %i.ac) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.thread218, %bb.n, %bb.l
  %i.am = add i32 %i.m, 2                         ; 4 uses
  switch i8 %i.d, label %bb.p [
    i8 13, label %dissect_negprot_security_mode.exit
    i8 17, label %dissect_negprot_security_mode.exit214
  ]

dissect_negprot_security_mode.exit:               ; preds = %bb.o
  %i.an = load i32, ptr @hf_smb_sm16, align 4
  %i.ao = load i32, ptr @ett_smb_mode, align 4
  %i.ap = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.am, i32 noundef %i.an, i32 noundef %i.ao, ptr noundef nonnull @dissect_negprot_security_mode.flags13, i32 noundef -2147483648) ; 0 uses
  %i.aq = add i32 %i.m, 4
  %i.ar = load i32, ptr @hf_smb_max_trans_buf_size, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.aq, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.at = add i32 %i.m, 6
  %i.au = load i32, ptr @hf_smb_max_mpx_count, align 4
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.au, ptr noundef %0, i32 noundef %i.at, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aw = add i32 %i.m, 8
  %i.ax = load i32, ptr @hf_smb_max_vcs_num, align 4
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ax, ptr noundef %0, i32 noundef %i.aw, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.az = add i32 %i.m, 10
  %i.ba = load i32, ptr @hf_smb_rm, align 4
  %i.bb = load i32, ptr @ett_smb_rawmode, align 4
  %i.bc = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.az, i32 noundef %i.ba, i32 noundef %i.bb, ptr noundef nonnull @dissect_negprot_rawmode.flags, i32 noundef -2147483648) ; 0 uses
  %i.bd = add i32 %i.m, 12
  %i.be = load i32, ptr @hf_smb_session_key, align 4
  %i.bf = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.be, ptr noundef %0, i32 noundef %i.bd, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bg = add i32 %i.m, 16
  %i.bh = load i32, ptr @hf_smb_server_date_time, align 4
  %i.bi = load i32, ptr @hf_smb_server_smb_date, align 4
  %i.bj = load i32, ptr @hf_smb_server_smb_time, align 4
  %i.bk = tail call i32 @dissect_smb_datetime(ptr noundef %0, ptr noundef %2, i32 noundef %i.bg, i32 noundef %i.bh, i32 noundef %i.bi, i32 noundef %i.bj, i1 noundef zeroext true) ; 5 uses
  %i.bl = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.bk)
  %i.bm = load i32, ptr @hf_smb_server_timezone, align 4
  %i.bn = sext i16 %i.bl to i32                   ; 2 uses
  %i.bo = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format_value(ptr noundef %2, i32 noundef %i.bm, ptr noundef %0, i32 noundef %i.bk, i32 noundef 2, i32 noundef %i.bn, ptr noundef nonnull @.str.2816, i32 noundef %i.bn) ; 0 uses
  %i.bp = add i32 %i.bk, 2                        ; 3 uses
  store i32 %i.bp, ptr %i.a, align 4
  %i.bq = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.bp) ; 2 uses
  %i.br = load i32, ptr @hf_smb_challenge_length, align 4
  %i.bs = zext i16 %i.bq to i32
  %i.bt = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.br, ptr noundef %0, i32 noundef %i.bp, i32 noundef 2, i32 noundef %i.bs) ; 0 uses
  %i.bu = add i32 %i.bk, 4
  %i.bv = load i32, ptr @hf_smb_reserved, align 4
  %i.bw = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bv, ptr noundef %0, i32 noundef %i.bu, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bx = add i32 %i.bk, 6
  br label %bb.r

dissect_negprot_security_mode.exit214:            ; preds = %bb.o
  %i.by = load i32, ptr @hf_smb_sm, align 4
  %i.bz = load i32, ptr @ett_smb_mode, align 4
  %i.ca = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.am, i32 noundef %i.by, i32 noundef %i.bz, ptr noundef nonnull @dissect_negprot_security_mode.flags17, i32 noundef -2147483648) ; 0 uses
  %i.cb = add i32 %i.m, 3
  %i.cc = load i32, ptr @hf_smb_max_mpx_count, align 4
  %i.cd = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cc, ptr noundef %0, i32 noundef %i.cb, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ce = add i32 %i.m, 5
  %i.cf = load i32, ptr @hf_smb_max_vcs_num, align 4
  %i.cg = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cf, ptr noundef %0, i32 noundef %i.ce, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ch = add i32 %i.m, 7
  %i.ci = load i32, ptr @hf_smb_max_trans_buf_size, align 4
  %i.cj = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ci, ptr noundef %0, i32 noundef %i.ch, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ck = add i32 %i.m, 11
  %i.cl = load i32, ptr @hf_smb_max_raw_buf_size, align 4
  %i.cm = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cl, ptr noundef %0, i32 noundef %i.ck, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.cn = add i32 %i.m, 15
  %i.co = load i32, ptr @hf_smb_session_key, align 4
  %i.cp = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.co, ptr noundef %0, i32 noundef %i.cn, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.cq = add i32 %i.m, 19                        ; 2 uses
  %i.cr = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.cq)
  %i.cs = load i32, ptr @hf_smb_server_cap, align 4
  %i.ct = load i32, ptr @ett_smb_capabilities, align 4
  %i.cu = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.cq, i32 noundef %i.cs, i32 noundef %i.ct, ptr noundef nonnull @dissect_negprot_capabilities.flags, i32 noundef -2147483648) ; 0 uses
  %i.cv = add i32 %i.m, 23
  %i.cw = load i32, ptr @hf_smb_system_time, align 4
  %i.cx = tail call ptr @dissect_nttime(ptr noundef %0, ptr noundef %2, i32 noundef %i.cv, i32 noundef %i.cw, i32 noundef -2147483648) ; 0 uses
  %i.cy = add i32 %i.m, 31                        ; 2 uses
  %i.cz = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.cy)
  %i.da = load i32, ptr @hf_smb_server_timezone, align 4
  %i.db = sext i16 %i.cz to i32                   ; 2 uses
  %i.dc = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format_value(ptr noundef %2, i32 noundef %i.da, ptr noundef %0, i32 noundef %i.cy, i32 noundef 2, i32 noundef %i.db, ptr noundef nonnull @.str.2816, i32 noundef %i.db) ; 0 uses
  %i.dd = add i32 %i.m, 33                        ; 3 uses
  store i32 %i.dd, ptr %i.a, align 4
  %i.de = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dd) ; 2 uses
  %i.df = zext i8 %i.de to i16
  %i.dg = load i32, ptr @hf_smb_challenge_length, align 4
  %i.dh = zext i8 %i.de to i32
  %i.di = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.dg, ptr noundef %0, i32 noundef %i.dd, i32 noundef 1, i32 noundef %i.dh) ; 0 uses
  %i.dj = add i32 %i.m, 34
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dk = shl nuw nsw i32 %i.e, 1                 ; 2 uses
  %i.dl = add nsw i32 %i.dk, -2                   ; 2 uses
  %.not199 = icmp eq i32 %i.dl, 0
  br i1 %.not199, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = load i32, ptr @hf_smb_word_unk_response_format, align 4
  %i.dn = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dm, ptr noundef %0, i32 noundef %i.am, i32 noundef %i.dl, i32 noundef 0) ; 0 uses
  %i.do = add i32 %i.m, %i.dk
  br label %bb.r

bb.r:                                             ; preds = %dissect_negprot_security_mode.exit, %dissect_negprot_security_mode.exit214, %bb.q, %bb.p, %bb.f
  %i.dp = phi i32 [ %i.k, %bb.f ], [ %i.do, %bb.q ], [ %i.am, %bb.p ], [ %i.bx, %dissect_negprot_security_mode.exit ], [ %i.dj, %dissect_negprot_security_mode.exit214 ] ; 4 uses
  %.0177 = phi i32 [ 0, %bb.f ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %dissect_negprot_security_mode.exit ], [ %i.cr, %dissect_negprot_security_mode.exit214 ] ; 2 uses
  %.0176 = phi i16 [ 0, %bb.f ], [ 0, %bb.q ], [ 0, %bb.p ], [ %i.bq, %dissect_negprot_security_mode.exit ], [ %i.df, %dissect_negprot_security_mode.exit214 ] ; 6 uses
  %i.dq = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.dp) ; 13 uses
  store i16 %i.dq, ptr %i.c, align 2
  %i.dr = load i32, ptr @hf_smb_byte_count, align 4
  %i.ds = zext i16 %i.dq to i32
  %i.dt = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.dr, ptr noundef %0, i32 noundef %i.dp, i32 noundef 2, i32 noundef %i.ds) ; 0 uses
  %i.du = add i32 %i.dp, 2                        ; 12 uses
  store i32 %i.du, ptr %i.a, align 4
  %i.dv = icmp eq i16 %i.dq, 0
  br i1 %i.dv, label %smb_get_unicode_or_ascii_string.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  switch i8 %i.d, label %thread-pre-split.thread [
    i8 13, label %bb.t
    i8 17, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  %i.dw = icmp eq i16 %.0176, 0
  %spec.select = select i1 %i.dw, i16 %i.dq, i16 %.0176 ; 4 uses
  %i.dx = icmp ult i16 %i.dq, %spec.select
  br i1 %i.dx, label %smb_get_unicode_or_ascii_string.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dy = zext i16 %spec.select to i32            ; 2 uses
  %i.dz = load i32, ptr @hf_smb_challenge, align 4
  %i.ea = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dz, ptr noundef %0, i32 noundef %i.du, i32 noundef %i.dy, i32 noundef 0) ; 0 uses
  %i.eb = add i32 %i.du, %i.dy                    ; 5 uses
  %i.ec = sub nuw i16 %i.dq, %spec.select
  %i.ed = icmp eq i16 %i.dq, %spec.select
  br i1 %i.ed, label %smb_get_unicode_or_ascii_string.exit.thread, label %smb_get_unicode_or_ascii_string.exit

smb_get_unicode_or_ascii_string.exit:             ; preds = %bb.u
  %i.ee = getelementptr i8, ptr %1, i64 416
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = call ptr @tvb_get_stringz_enc(ptr noundef %i.ef, ptr noundef %0, i32 noundef %i.eb, ptr noundef nonnull %i.b, i32 noundef 0) ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %smb_get_unicode_or_ascii_string.exit.thread, label %bb.v

bb.v:                                             ; preds = %smb_get_unicode_or_ascii_string.exit
  %i.ei = load i32, ptr @hf_smb_primary_domain, align 4
  %i.ej = load i32, ptr %i.b, align 4
  %i.ek = call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.ei, ptr noundef %0, i32 noundef %i.eb, i32 noundef %i.ej, ptr noundef nonnull %i.eg) ; 0 uses
  %i.el = load i32, ptr %i.b, align 4             ; 2 uses
  %i.em = add i32 %i.eb, %i.el
  br label %thread-pre-split

bb.w:                                             ; preds = %bb.s
  %.not200 = icmp sgt i32 %.0177, -1
  br i1 %.not200, label %bb.x, label %bb.ah

bb.x:                                             ; preds = %bb.w
  %.not201 = icmp eq i16 %.0176, 0
  br i1 %.not201, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.en = icmp ult i16 %i.dq, %.0176
  br i1 %i.en, label %smb_get_unicode_or_ascii_string.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eo = zext i16 %.0176 to i32                  ; 2 uses
  %i.ep = load i32, ptr @hf_smb_challenge, align 4
  %i.eq = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ep, ptr noundef %0, i32 noundef %i.du, i32 noundef %i.eo, i32 noundef 0) ; 0 uses
  %i.er = add i32 %i.du, %i.eo                    ; 2 uses
  store i32 %i.er, ptr %i.a, align 4
  %i.es = sub nuw i16 %i.dq, %.0176               ; 2 uses
  store i16 %i.es, ptr %i.c, align 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.et = phi i32 [ %i.er, %bb.z ], [ %i.du, %bb.x ]
  %i.eu = phi i16 [ %i.es, %bb.z ], [ %i.dq, %bb.x ] ; 2 uses
  %i.ev = and i32 %.0177, 4
  %.not202 = icmp eq i32 %i.ev, 0
  %i.ew = getelementptr i8, ptr %5, i64 24        ; 3 uses
  br i1 %.not202, label %bb.ab, label %.thread223

.thread223:                                       ; preds = %bb.aa
  store i8 1, ptr %i.ew, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ex = load i8, ptr %i.ew, align 8, !range !10, !noundef !11
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.thread223, %bb.ab
  %i.ez = and i16 %i.eu, 1
  %.not203 = icmp eq i16 %i.ez, 0
  br i1 %.not203, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fa = add i32 %i.et, 1
  store i32 %i.fa, ptr %i.a, align 4
  %i.fb = add nsw i16 %i.eu, -1
  store i16 %i.fb, ptr %i.c, align 2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.fc = phi i1 [ true, %bb.ad ], [ true, %bb.ac ], [ false, %bb.ab ]
  %i.fd = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = call ptr @smb_get_unicode_or_ascii_string(ptr noundef %i.fe, ptr noundef %0, ptr noundef nonnull %i.a, i1 noundef zeroext %i.fc, ptr noundef nonnull %i.b, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull %i.c) ; 2 uses
  %i.fg = icmp eq ptr %i.ff, null
  %.pre228 = load i32, ptr %i.a, align 4          ; 3 uses
  br i1 %i.fg, label %smb_get_unicode_or_ascii_string.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = load i32, ptr @hf_smb_primary_domain, align 4
  %i.fi = load i32, ptr %i.b, align 4
  %i.fj = call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.fh, ptr noundef %0, i32 noundef %.pre228, i32 noundef %i.fi, ptr noundef nonnull %i.ff) ; 0 uses
  %i.fk = load i32, ptr %i.b, align 4             ; 2 uses
  %i.fl = add i32 %i.fk, %.pre228
  store i32 %i.fl, ptr %i.a, align 4
  %i.fm = load i16, ptr %i.c, align 2
  %i.fn = trunc i32 %i.fk to i16
  %i.fo = sub i16 %i.fm, %i.fn
  store i16 %i.fo, ptr %i.c, align 2
  %i.fp = load ptr, ptr %i.fd, align 8
  %i.fq = load i8, ptr %i.ew, align 8, !range !10, !noundef !11
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = call ptr @smb_get_unicode_or_ascii_string(ptr noundef %i.fp, ptr noundef %0, ptr noundef nonnull %i.a, i1 noundef zeroext %i.fr, ptr noundef nonnull %i.b, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull %i.c) ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  %.pre = load i32, ptr %i.a, align 4             ; 3 uses
  br i1 %i.ft, label %smb_get_unicode_or_ascii_string.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fu = load i32, ptr @hf_smb_server, align 4
  %i.fv = load i32, ptr %i.b, align 4
  %i.fw = call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.fu, ptr noundef %0, i32 noundef %.pre, i32 noundef %i.fv, ptr noundef nonnull %i.fs) ; 0 uses
  %i.fx = load i32, ptr %i.b, align 4             ; 2 uses
  %i.fy = add i32 %i.fx, %.pre
  %i.fz = load i16, ptr %i.c, align 2
  br label %thread-pre-split

bb.ah:                                            ; preds = %bb.w
  %i.ga = icmp ult i16 %i.dq, 16
  br i1 %i.ga, label %smb_get_unicode_or_ascii_string.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gb = load i32, ptr @hf_smb_server_guid, align 4
  %i.gc = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.gb, ptr noundef %0, i32 noundef %i.du, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.gd = add i32 %i.dp, 18                       ; 7 uses
  %i.ge = add i16 %i.dq, -16                      ; 2 uses
  %i.gf = zext i16 %i.ge to i32                   ; 4 uses
  %i.gg = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.gd)
  %i.gh = icmp ult i32 %i.gg, %i.gf
  br i1 %i.gh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gi = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.gd)
  %.pre229 = and i32 %i.gi, 65535
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pre-phi = phi i32 [ %.pre229, %bb.aj ], [ %i.gf, %bb.ai ] ; 2 uses
  %i.gj = load i32, ptr @hf_smb_security_blob, align 4
  %i.gk = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.gj, ptr noundef %0, i32 noundef %i.gd, i32 noundef %.pre-phi, i32 noundef 0)
  %.not204 = icmp eq i16 %i.ge, 0
  br i1 %.not204, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gl = load i32, ptr @ett_smb_secblob, align 4
  %i.gm = tail call ptr @proto_item_add_subtree(ptr noundef %i.gk, i32 noundef %i.gl)
  %i.gn = tail call ptr @tvb_new_subset_length_caplen(ptr noundef %0, i32 noundef %i.gd, i32 noundef %.pre-phi, i32 noundef %i.gf)
  %i.go = load ptr, ptr @gssapi_handle, align 8
  %i.gp = tail call i32 @call_dissector(ptr noundef %i.go, ptr noundef %i.gn, ptr noundef %1, ptr noundef %i.gm) ; 0 uses
  %i.gq = getelementptr i8, ptr %5, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8            ; 2 uses
  %.not206 = icmp eq ptr %i.gr, null
  br i1 %.not206, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gs = getelementptr i8, ptr %i.gr, i64 32
  store i8 0, ptr %i.gs, align 8
  br label %bb.an

end_hunk_0
