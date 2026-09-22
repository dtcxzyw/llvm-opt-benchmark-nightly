Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-tcp?download=true
inline.NumInlined: 257
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dissect_tcpopt_wscale:bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %proto_item_set_generated.exit
  %i.aw = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.0 = phi i32 [ %i.aw, %bb.i ], [ %i.o, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_tcpopt_sack_perm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @proto_tcp_option_sack_perm, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.c = load i32, ptr @ett_tcp_option_sack_perm, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 2 uses
  %i.e = getelementptr i8, ptr %3, i64 34
  %i.f = load i16, ptr %i.e, align 2
  %i.g = and i16 %i.f, 2
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull @ei_tcp_option_sack_perm_present) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i32, ptr @hf_tcp_option_kind, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_tcp_option_len, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.k, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @col_append_str(ptr noundef %i.n, i32 noundef 25, ptr noundef nonnull @.str.1282)
  %i.o = tail call i32 @tvb_reported_length(ptr noundef %0)
  %.not.i = icmp eq i32 %i.o, 2
  br i1 %.not.i, label %tcp_option_len_check.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.l, ptr noundef nonnull @ei_tcp_opt_len_invalid, ptr noundef nonnull @.str.1277, i32 noundef 2) ; 0 uses
  br label %tcp_option_len_check.exit

tcp_option_len_check.exit:                        ; preds = %bb.c, %bb.d
  %i.q = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.q
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_tcpopt_sack(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3) #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 6 uses
  %i.b = alloca [4 x i32], align 16               ; 6 uses
  %i.c = tail call i32 @tvb_reported_length(ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.d = load i8, ptr @tcp_analyze_seq, align 1, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @find_conversation_strat(ptr noundef %1, i32 noundef 2, i32 noundef 0, i1 noundef zeroext false)
  %i.g = load i32, ptr @proto_tcp, align 4
  %i.h = tail call ptr @conversation_get_proto_data(ptr noundef %i.f, i32 noundef %i.g) ; 14 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr @tcp_relative_seq, align 1, !range !7, !noundef !8
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.h, i64 184
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i32, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0193 = phi i32 [ %i.m, %bb.d ], [ 0, %bb.c ]  ; 6 uses
  %i.n = load i8, ptr @tcp_track_bytes_in_flight, align 1, !range !7, !noundef !8
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.h, i64 176
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not209 = icmp eq ptr %i.s, null
  br i1 %.not209, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.s, i64 15       ; 2 uses
  %i.u = load i8, ptr %i.t, align 1               ; 3 uses
  store i8 0, ptr %i.t, align 1
  %.not266 = icmp eq i8 %i.u, 0
  br i1 %.not266, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.v = getelementptr i8, ptr %i.h, i64 176
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 80
  %i.aa = getelementptr i8, ptr %i.y, i64 96
  %i.ab = zext i8 %i.u to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 4 %i.z, i64 %i.ac, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 4 %i.aa, i64 %i.ac, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.f, %.lr.ph, %bb.g
  %.0186302 = phi i8 [ 0, %bb.g ], [ %i.u, %.lr.ph ], [ 0, %bb.f ], [ 0, %bb.e ] ; 6 uses
  %i.ad = load i8, ptr @tcp_analyze_seq, align 1, !range !7, !noundef !8
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %.thread

bb.h:                                             ; preds = %._crit_edge
  %i.af = getelementptr i8, ptr %i.h, i64 192     ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not210 = icmp eq ptr %i.ag, null
  br i1 %.not210, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %i.ag, i64 40     ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 8            ; 2 uses
  %i.aj = and i16 %i.ai, 2048
  %.not211 = icmp eq i16 %i.aj, 0
  br i1 %.not211, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.h, i64 280
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not212 = icmp eq ptr %i.al, null
  br i1 %.not212, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr i8, ptr %i.al, i64 3
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr i8, ptr %i.h, i64 176
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 24
  %i.ar = load i8, ptr %i.aq, align 8
  %.not213 = icmp eq i8 %i.an, %i.ar
  br i1 %.not213, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = and i16 %i.ai, -2049
  store i16 %i.as, ptr %i.ah, align 8
  %i.at = load ptr, ptr %i.af, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 40     ; 2 uses
  %i.av = load i16, ptr %i.au, align 8
  %i.aw = or i16 %i.av, 16
  store i16 %i.aw, ptr %i.au, align 8
  %i.ax = getelementptr i8, ptr %i.h, i64 176     ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not214 = icmp eq ptr %i.ba, null
  br i1 %.not214, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr i8, ptr %i.ba, i64 40     ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8
  %i.be = load ptr, ptr %i.ax, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 40
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.af, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 44
  store i32 %i.bi, ptr %i.bk, align 4
  %i.bl = load ptr, ptr %i.ax, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr i8, ptr %i.bn, i64 36
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = load ptr, ptr %i.af, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 48
  store i32 %i.bp, ptr %i.br, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a, %bb.k, %bb.m, %bb.l, %bb.i, %bb.h, %._crit_edge
  %i.bs = phi i1 [ true, %._crit_edge ], [ true, %bb.k ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.i ], [ true, %bb.h ], [ false, %bb.a ], [ false, %bb.b ] ; 2 uses
  %.2188231.shrunk = phi i8 [ %.0186302, %._crit_edge ], [ %.0186302, %bb.k ], [ %.0186302, %bb.m ], [ %.0186302, %bb.l ], [ %.0186302, %bb.i ], [ %.0186302, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %.2195230 = phi i32 [ %.0193, %._crit_edge ], [ %.0193, %bb.k ], [ %.0193, %bb.m ], [ %.0193, %bb.l ], [ %.0193, %bb.i ], [ %.0193, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ] ; 4 uses
  %.0196229 = phi ptr [ %i.h, %._crit_edge ], [ %i.h, %bb.k ], [ %i.h, %bb.m ], [ %i.h, %bb.l ], [ %i.h, %bb.i ], [ %i.h, %bb.h ], [ null, %bb.a ], [ null, %bb.b ] ; 3 uses
  %i.bt = load i32, ptr @proto_tcp_option_sack, align 4
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bt, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.bv = load i32, ptr @ett_tcp_option_sack, align 4
  %i.bw = tail call ptr @proto_item_add_subtree(ptr noundef %i.bu, i32 noundef %i.bv) ; 10 uses
  %i.bx = load i32, ptr @hf_tcp_option_kind, align 4
  %i.by = tail call ptr @proto_tree_add_item(ptr noundef %i.bw, i32 noundef %i.bx, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bz = load i32, ptr @hf_tcp_option_len, align 4
  %i.ca = tail call ptr @proto_tree_add_item(ptr noundef %i.bw, i32 noundef %i.bz, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cb = add i32 %i.c, -2                        ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph259, label %.loopexit246

.lr.ph259:                                        ; preds = %.thread
  %i.cd = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.ce = getelementptr i8, ptr %.0196229, i64 176 ; 3 uses
  %.not215 = icmp eq ptr %3, null
  %i.cf = getelementptr i8, ptr %3, i64 17        ; 2 uses
  %i.cg = getelementptr i8, ptr %3, i64 88
  %i.ch = getelementptr i8, ptr %3, i64 104
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph259, %bb.w
  %.0189258 = phi i32 [ %i.cb, %.lr.ph259 ], [ %i.cy, %bb.w ] ; 6 uses
  %.0190257 = phi i32 [ 2, %.lr.ph259 ], [ %i.ei, %bb.w ] ; 5 uses
  %.0191256 = phi i32 [ 0, %.lr.ph259 ], [ %.1192, %bb.w ] ; 6 uses
  %i.ci = icmp samesign ult i32 %.0189258, 4
  br i1 %i.ci, label %.loopexit246.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.0190257)
  %i.ck = sub i32 %i.cj, %.2195230                ; 6 uses
  %i.cl = load i32, ptr @hf_tcp_option_sack_sle, align 4
  %i.cm = load i8, ptr @tcp_analyze_seq, align 1, !range !7, !noundef !8
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = load i8, ptr @tcp_relative_seq, align 1, !range !7
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = select i1 %i.cn, i1 %i.cp, i1 false
  %i.cr = select i1 %i.cq, ptr @.str.1284, ptr @.str.2
  %i.cs = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.bw, i32 noundef %i.cl, ptr noundef %0, i32 noundef %.0190257, i32 noundef 4, i32 noundef %i.ck, ptr noundef nonnull @.str.1283, i32 noundef %i.ck, ptr noundef nonnull %i.cr) ; 0 uses
  %i.ct = icmp samesign ult i32 %.0189258, 8
  br i1 %i.ct, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cu = add nsw i32 %.0189258, -4
  br label %.loopexit246.sink.split

bb.q:                                             ; preds = %bb.o
  %i.cv = add nuw nsw i32 %.0190257, 4            ; 2 uses
  %i.cw = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.cv)
  %i.cx = sub i32 %i.cw, %.2195230                ; 6 uses
  %i.cy = add nsw i32 %.0189258, -8
  %i.cz = load i32, ptr @hf_tcp_option_sack_sre, align 4
  %i.da = load i8, ptr @tcp_analyze_seq, align 1, !range !7, !noundef !8
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = load i8, ptr @tcp_relative_seq, align 1, !range !7
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = select i1 %i.db, i1 %i.dd, i1 false
  %i.df = select i1 %i.de, ptr @.str.1284, ptr @.str.2
  %i.dg = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.bw, i32 noundef %i.cz, ptr noundef %0, i32 noundef %i.cv, i32 noundef 4, i32 noundef %i.cx, ptr noundef nonnull @.str.1285, i32 noundef %i.cx, ptr noundef nonnull %i.df) ; 0 uses
  %.val218 = load ptr, ptr %i.cd, align 8
  tail call void @col_append_str_uint(ptr noundef %.val218, i32 noundef 25, ptr noundef nonnull @.str.1286, i32 noundef %i.ck, ptr noundef nonnull @.str.854)
  %.val = load ptr, ptr %i.cd, align 8
  tail call void @col_append_str_uint(ptr noundef %.val, i32 noundef 25, ptr noundef nonnull @.str.1287, i32 noundef %i.cx, ptr noundef nonnull @.str.854)
  %i.dh = load i8, ptr @tcp_analyze_seq, align 1, !range !7, !noundef !8
  %i.di = trunc nuw i8 %i.dh to i1
  %or.cond3 = and i1 %i.bs, %i.di
  br i1 %or.cond3, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dj = load ptr, ptr %i.ce, align 8
  %i.dk = getelementptr i8, ptr %i.dj, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %i.dm = icmp ne ptr %i.dl, null
  %i.dn = icmp ult i32 %.0191256, 4
  %or.cond5 = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %or.cond5, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.do = getelementptr i8, ptr %i.dl, i64 80
  %i.dp = zext nneg i32 %.0191256 to i64          ; 2 uses
  %i.dq = getelementptr [4 x i8], ptr %i.do, i64 %i.dp
  store i32 %i.ck, ptr %i.dq, align 4
  %i.dr = load ptr, ptr %i.ce, align 8
  %i.ds = getelementptr i8, ptr %i.dr, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr i8, ptr %i.dt, i64 96
  %i.dv = getelementptr [4 x i8], ptr %i.du, i64 %i.dp
  store i32 %i.cx, ptr %i.dv, align 4
  %i.dw = add nuw nsw i32 %.0191256, 1            ; 2 uses
  %i.dx = trunc nuw nsw i32 %i.dw to i8
  %i.dy = load ptr, ptr %i.ce, align 8
  %i.dz = getelementptr i8, ptr %i.dy, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = getelementptr i8, ptr %i.ea, i64 15
  store i8 %i.dx, ptr %i.eb, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.1192 = phi i32 [ %i.dw, %bb.s ], [ %.0191256, %bb.r ], [ %.0191256, %bb.q ] ; 2 uses
  br i1 %.not215, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ec = load i8, ptr %i.cf, align 1             ; 3 uses
  %i.ed = icmp ult i8 %i.ec, 4
  br i1 %i.ed, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ee = zext nneg i8 %i.ec to i64               ; 2 uses
  %i.ef = getelementptr [4 x i8], ptr %i.cg, i64 %i.ee
  store i32 %i.ck, ptr %i.ef, align 4
  %i.eg = getelementptr [4 x i8], ptr %i.ch, i64 %i.ee
  store i32 %i.cx, ptr %i.eg, align 4
  %i.eh = add nuw nsw i8 %i.ec, 1
  store i8 %i.eh, ptr %i.cf, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bw, ptr noundef nonnull @.str.1288, i32 noundef %i.ck, i32 noundef %i.cx)
  %i.ei = add nuw i32 %.0190257, 8
  %i.ej = icmp sgt i32 %.0189258, 8
  br i1 %i.ej, label %bb.n, label %.loopexit246, !llvm.loop !32

.loopexit246.sink.split:                          ; preds = %bb.n, %bb.p
  %.sink = phi i32 [ %i.cu, %bb.p ], [ %.0189258, %bb.n ]
  %i.ek = tail call ptr @proto_tree_add_expert(ptr noundef %i.bw, ptr noundef %1, ptr noundef nonnull @ei_tcp_suboption_malformed, ptr noundef %0, i32 noundef %.0190257, i32 noundef %.sink) ; 0 uses
  br label %.loopexit246

.loopexit246:                                     ; preds = %bb.w, %.loopexit246.sink.split, %.thread
  %.0191254 = phi i32 [ 0, %.thread ], [ %.0191256, %.loopexit246.sink.split ], [ %.1192, %bb.w ] ; 4 uses
  %i.el = load i32, ptr @hf_tcp_option_sack_range_count, align 4
  %i.em = tail call ptr @proto_tree_add_uint(ptr noundef %i.bw, i32 noundef %i.el, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.0191254) ; 2 uses
  %.not.i = icmp eq ptr %i.em, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.x

bb.x:                                             ; preds = %.loopexit246
  %i.en = getelementptr i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.eo, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ep = getelementptr i8, ptr %i.eo, i64 28     ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = or i32 %i.eq, 2
  store i32 %i.er, ptr %i.ep, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %.loopexit246, %bb.x, %bb.y
  %.not216 = icmp eq ptr %3, null
  br i1 %.not216, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %proto_item_set_generated.exit
  %i.es = getelementptr i8, ptr %3, i64 104
  %i.et = load i32, ptr %i.es, align 8            ; 3 uses
  %i.eu = getelementptr i8, ptr %3, i64 12
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = sub i32 %i.et, %i.ev
  %i.ex = icmp slt i32 %i.ew, 1
  br i1 %i.ex, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ey = getelementptr i8, ptr %3, i64 17
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = icmp ugt i8 %i.ez, 1
  br i1 %i.fa, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.fb = getelementptr i8, ptr %3, i64 92
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = sub i32 %i.fc, %i.et
  %i.fe = icmp slt i32 %i.fd, 0
  br i1 %i.fe, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.ff = getelementptr i8, ptr %3, i64 108
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = sub i32 %i.et, %i.fg
  %i.fi = icmp slt i32 %i.fh, 1
  br i1 %i.fi, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %i.fj = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 2)
  %i.fk = sub i32 %i.fj, %.2195230                ; 2 uses
  %i.fl = load i32, ptr @hf_tcp_option_sack_dsack_le, align 4
  %i.fm = load i8, ptr @tcp_analyze_seq, align 1, !range !7, !noundef !8
  %i.fn = trunc nuw i8 %i.fm to i1
  %i.fo = load i8, ptr @tcp_relative_seq, align 1, !range !7
  %i.fp = trunc nuw i8 %i.fo to i1
  %i.fq = select i1 %i.fn, i1 %i.fp, i1 false
  %i.fr = select i1 %i.fq, ptr @.str.1284, ptr @.str.2
  %i.fs = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.bw, i32 noundef %i.fl, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef %i.fk, ptr noundef nonnull @.str.1289, i32 noundef %i.fk, ptr noundef nonnull %i.fr) ; 2 uses
  %.not.i219 = icmp eq ptr %i.fs, null
  br i1 %.not.i219, label %proto_item_set_generated.exit221, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ft = getelementptr i8, ptr %i.fs, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8            ; 2 uses
  %.not5.i220 = icmp eq ptr %i.fu, null
  br i1 %.not5.i220, label %proto_item_set_generated.exit221, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fv = getelementptr i8, ptr %i.fu, i64 28     ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = or i32 %i.fw, 2
  store i32 %i.fx, ptr %i.fv, align 4
  br label %proto_item_set_generated.exit221

proto_item_set_generated.exit221:                 ; preds = %bb.ad, %bb.ae, %bb.af
  %i.fy = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 6)
  %i.fz = sub i32 %i.fy, %.2195230                ; 2 uses
  %i.ga = load i32, ptr @hf_tcp_option_sack_dsack_re, align 4
  %i.gb = load i8, ptr @tcp_analyze_seq, align 1, !range !7, !noundef !8
  %i.gc = trunc nuw i8 %i.gb to i1
  %i.gd = load i8, ptr @tcp_relative_seq, align 1, !range !7
  %i.ge = trunc nuw i8 %i.gd to i1
  %i.gf = select i1 %i.gc, i1 %i.ge, i1 false
  %i.gg = select i1 %i.gf, ptr @.str.1284, ptr @.str.2
  %i.gh = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.bw, i32 noundef %i.ga, ptr noundef %0, i32 noundef 6, i32 noundef 4, i32 noundef %i.fz, ptr noundef nonnull @.str.1290, i32 noundef %i.fz, ptr noundef nonnull %i.gg) ; 2 uses
  %.not.i222 = icmp eq ptr %i.gh, null
  br i1 %.not.i222, label %.thread232, label %bb.ag

bb.ag:                                            ; preds = %proto_item_set_generated.exit221
  %i.gi = getelementptr i8, ptr %i.gh, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8            ; 2 uses
  %.not5.i223 = icmp eq ptr %i.gj, null
  br i1 %.not5.i223, label %.thread232, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gk = getelementptr i8, ptr %i.gj, i64 28     ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = or i32 %i.gl, 2
  store i32 %i.gm, ptr %i.gk, align 4
  br label %.thread232

.thread232:                                       ; preds = %bb.ah, %bb.ag, %proto_item_set_generated.exit221
  %i.gn = tail call ptr @proto_tree_add_expert(ptr noundef %i.bw, ptr noundef %1, ptr noundef nonnull @ei_tcp_option_sack_dsack, ptr noundef %0, i32 noundef 2, i32 noundef 8) ; 0 uses
  br label %.thread240

bb.ai:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %proto_item_set_generated.exit
  %i.go = load i8, ptr @tcp_analyze_seq, align 1, !range !7
  %i.gp = trunc nuw i8 %i.go to i1
  %or.cond9 = and i1 %i.bs, %i.gp
  br i1 %or.cond9, label %bb.aj, label %.thread240

end_hunk_0
