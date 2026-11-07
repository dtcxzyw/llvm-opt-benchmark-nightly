Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-gtpv2?download=true
inline.NumInlined: 47
inline.NumDeleted: 22
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_gtpv2:bb.a
bb.f:                                             ; preds = %bb.e
  %i.al = tail call ptr @wmem_file_scope()
  %i.am = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.al, i64 noundef 16) #12 ; 4 uses
  %i.an = tail call ptr @wmem_file_scope()
  %i.ao = tail call ptr @wmem_map_new(ptr noundef %i.an, ptr noundef @gtpv2_sn_hash, ptr noundef @gtpv2_sn_equal_matched)
  %i.ap = getelementptr i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = tail call ptr @wmem_file_scope()
  %i.ar = tail call ptr @wmem_map_new(ptr noundef %i.aq, ptr noundef @gtpv2_sn_hash, ptr noundef @gtpv2_sn_equal_unmatched)
  store ptr %i.ar, ptr %i.am, align 8
  %i.as = load i32, ptr @proto_gtpv2, align 4
  tail call void @conversation_add_proto_data(ptr noundef %.0126, i32 noundef %i.as, ptr noundef %i.am)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0125 = phi ptr [ %i.am, %bb.f ], [ %i.aj, %bb.e ] ; 6 uses
  %i.at = load i32, ptr @hf_gtpv2_flags, align 4
  %i.au = load i32, ptr @ett_gtpv2_flags, align 4
  %i.av = call ptr @proto_tree_add_bitmask_with_flags_ret_uint64(ptr noundef %i.u, ptr noundef %0, i32 noundef 0, i32 noundef %i.at, i32 noundef %i.au, ptr noundef @dissect_gtpv2.gtpv2_flags, i32 noundef 0, i32 noundef 6, ptr noundef nonnull %i.c) ; 0 uses
  %i.aw = load i64, ptr %i.c, align 8             ; 4 uses
  %i.ax = trunc i64 %i.aw to i8
  store i8 %i.ax, ptr %i.f, align 8
  %i.ay = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.az = getelementptr i8, ptr %i.f, i64 1       ; 2 uses
  store i8 %i.ay, ptr %i.az, align 1
  %i.ba = load i32, ptr @hf_gtpv2_message_type, align 4
  %i.bb = zext i8 %i.ay to i32
  %i.bc = call ptr @proto_tree_add_uint(ptr noundef %i.u, i32 noundef %i.ba, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.bb) ; 0 uses
  %i.bd = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.be = getelementptr i8, ptr %i.f, i64 2
  store i16 %i.bd, ptr %i.be, align 2
  %i.bf = load i32, ptr @hf_gtpv2_msg_length, align 4
  %i.bg = zext i16 %i.bd to i32
  %i.bh = call ptr @proto_tree_add_uint(ptr noundef %i.u, i32 noundef %i.bf, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef %i.bg) ; 0 uses
  %i.bi = and i64 %i.aw, 8
  %.not = icmp eq i64 %i.bi, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 4) ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  store i64 %i.bk, ptr %i.g, align 8
  %i.bl = load i32, ptr @hf_gtpv2_teid, align 4
  %i.bm = call ptr @proto_tree_add_uint(ptr noundef %i.u, i32 noundef %i.bl, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef %i.bj) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0127 = phi i32 [ 8, %bb.h ], [ 4, %bb.g ]     ; 3 uses
  %i.bn = load i32, ptr @hf_gtpv2_seq, align 4
  %i.bo = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.u, i32 noundef %i.bn, ptr noundef %0, i32 noundef %.0127, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.bp = or disjoint i32 %.0127, 3
  %i.bq = and i64 %i.aw, 4
  %.not132 = icmp eq i64 %i.bq, 0
  %hf_gtpv2_spare.val = load i32, ptr @hf_gtpv2_spare, align 4
  %hf_gtpv2_msg_prio.val = load i32, ptr @hf_gtpv2_msg_prio, align 4
  %i.br = select i1 %.not132, i32 %hf_gtpv2_spare.val, i32 %hf_gtpv2_msg_prio.val
  %i.bs = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.br, ptr noundef %0, i32 noundef %i.bp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bt = add nuw nsw i32 %.0127, 4
  %i.bu = and i64 %i.aw, 16
  %.not133 = icmp eq i64 %i.bu, 0                 ; 2 uses
  br i1 %.not133, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 0, i32 noundef %i.r)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi ptr [ %i.bv, %bb.j ], [ %0, %bb.i ]
  call void @dissect_gtpv2_ie_common(ptr noundef %.sink, ptr noundef %1, ptr noundef %i.u, i32 noundef %i.bt, i8 noundef zeroext %i.k, ptr noundef %.0, i8 noundef zeroext 0)
  %.not134 = icmp eq ptr %.0, null                ; 2 uses
  br i1 %.not134, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr i8, ptr %1, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr i8, ptr %i.bx, i64 53
  %i.bz = load i16, ptr %i.by, align 1
  %i.ca = and i16 %i.bz, 8
  %.not135 = icmp eq i16 %i.ca, 0
  br i1 %.not135, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.cb = call zeroext i1 @is_deinterlacing_supported(ptr noundef %1)
  %i.cc = load ptr, ptr %.0, align 8              ; 2 uses
  %i.cd = getelementptr i8, ptr %.0, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = getelementptr i8, ptr %1, i64 20
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr i8, ptr %.0126, i64 24
  %i.ci = load i32, ptr %i.ch, align 8
  call void @fill_map(ptr noundef %i.cc, ptr noundef %i.ce, i32 noundef %i.cg, i32 noundef %i.ci, i1 noundef zeroext false)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @fill_map(ptr noundef %i.cc, ptr noundef %i.ce, i32 noundef %i.cg, i32 noundef 0, i1 noundef zeroext true)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cj = getelementptr i8, ptr %.0, i64 48
  %i.ck = load i8, ptr %i.cj, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l, %bb.k
  %.0128 = phi i8 [ 16, %bb.l ], [ %i.ck, %bb.p ], [ 16, %bb.k ]
  %i.cl = load i32, ptr %i.b, align 4             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 3 uses
  store i32 %i.cl, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.co = getelementptr i8, ptr %1, i64 24        ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef align 8 dereferenceable(16) %i.co, i64 16, i1 false)
  switch i8 %i.k, label %bb.t [
    i8 32, label %bb.r
    i8 95, label %bb.r
    i8 97, label %bb.r
    i8 34, label %bb.r
    i8 99, label %bb.r
    i8 36, label %bb.r
    i8 64, label %bb.r
    i8 66, label %bb.r
    i8 68, label %bb.r
    i8 25, label %bb.r
    i8 27, label %bb.r
    i8 29, label %bb.r
    i8 -126, label %bb.r
    i8 -123, label %bb.r
    i8 -117, label %bb.r
    i8 -119, label %bb.r
    i8 -121, label %bb.r
    i8 -86, label %bb.r
    i8 -80, label %bb.r
    i8 33, label %bb.s
    i8 96, label %bb.s
    i8 98, label %bb.s
    i8 35, label %bb.s
    i8 100, label %bb.s
    i8 37, label %bb.s
    i8 65, label %bb.s
    i8 67, label %bb.s
    i8 69, label %bb.s
    i8 26, label %bb.s
    i8 28, label %bb.s
    i8 30, label %bb.s
    i8 -125, label %bb.s
    i8 -122, label %bb.s
    i8 -116, label %bb.s
    i8 -118, label %bb.s
    i8 -120, label %bb.s
    i8 -85, label %bb.s
    i8 -79, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  store i8 1, ptr %4, align 8
  %i.cp = getelementptr i8, ptr %1, i64 20
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.cq, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.cs, align 8
  %i.ct = call ptr @find_conversation_strat(ptr noundef %1, i32 noundef 39, i32 noundef 262144, i1 noundef zeroext false)
  %i.cu = getelementptr i8, ptr %i.ct, i64 24
  %i.cv = load i32, ptr %i.cu, align 8
  br label %bb.u

bb.s:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  store i8 0, ptr %4, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.cw, align 4
  %i.cx = getelementptr i8, ptr %1, i64 20
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.cy, ptr %i.cz, align 8
  %i.da = call ptr @find_conversation_strat(ptr noundef %1, i32 noundef 39, i32 noundef 262144, i1 noundef zeroext false)
  %i.db = getelementptr i8, ptr %i.da, i64 24
  %i.dc = load i32, ptr %i.db, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  store i8 0, ptr %4, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.de, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sink.i = phi i32 [ 0, %bb.t ], [ %i.dc, %bb.s ], [ %i.cv, %bb.r ]
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %.sink.i, ptr %i.df, align 4
  %i.dg = getelementptr i8, ptr %.0125, i64 8     ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = call ptr @wmem_map_lookup(ptr noundef %i.dh, ptr noundef nonnull %4) ; 3 uses
  %.not.i = icmp eq ptr %i.di, null
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = load i8, ptr %4, align 8, !range !6, !noundef !7
  store i8 %i.dj, ptr %i.di, align 8
  br label %bb.ad

bb.w:                                             ; preds = %bb.u
  switch i8 %i.k, label %gtpv2_match_response.exit [
    i8 32, label %bb.x
    i8 95, label %bb.x
    i8 97, label %bb.x
    i8 34, label %bb.x
    i8 99, label %bb.x
    i8 36, label %bb.x
    i8 64, label %bb.x
    i8 66, label %bb.x
    i8 68, label %bb.x
    i8 25, label %bb.x
    i8 27, label %bb.x
    i8 29, label %bb.x
    i8 -126, label %bb.x
    i8 -123, label %bb.x
    i8 -117, label %bb.x
    i8 -119, label %bb.x
    i8 -121, label %bb.x
    i8 -86, label %bb.x
    i8 -80, label %bb.x
    i8 33, label %bb.aa
    i8 96, label %bb.aa
    i8 98, label %bb.aa
    i8 35, label %bb.aa
    i8 100, label %bb.aa
    i8 37, label %bb.aa
    i8 65, label %bb.aa
    i8 67, label %bb.aa
    i8 69, label %bb.aa
    i8 26, label %bb.aa
    i8 28, label %bb.aa
    i8 30, label %bb.aa
    i8 -125, label %bb.aa
    i8 -122, label %bb.aa
    i8 -116, label %bb.aa
    i8 -118, label %bb.aa
    i8 -120, label %bb.aa
    i8 -85, label %bb.aa
    i8 -79, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  store i32 %i.cl, ptr %i.cm, align 4
  %i.dk = load ptr, ptr %.0125, align 8
  %i.dl = call ptr @wmem_map_lookup(ptr noundef %i.dk, ptr noundef nonnull %4) ; 3 uses
  %.not86.i = icmp eq ptr %i.dl, null
  br i1 %.not86.i, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = load ptr, ptr %.0125, align 8
  %i.dn = call ptr @wmem_map_remove(ptr noundef %i.dm, ptr noundef nonnull %i.dl) ; 0 uses
  br label %bb.z

.critedge.i:                                      ; preds = %bb.x
  %i.do = call ptr @wmem_file_scope()
  %i.dp = call noalias dereferenceable_or_null(40) ptr @wmem_alloc(ptr noundef %i.do, i64 noundef 40) #12
  br label %bb.z

bb.z:                                             ; preds = %.critedge.i, %bb.y
  %.0.i = phi ptr [ %i.dl, %bb.y ], [ %i.dp, %.critedge.i ] ; 9 uses
  %i.dq = getelementptr i8, ptr %.0.i, i64 28
  store i32 %i.cl, ptr %i.dq, align 4
  %i.dr = getelementptr i8, ptr %1, i64 20
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = getelementptr i8, ptr %.0.i, i64 4
  store i32 %i.ds, ptr %i.dt, align 4
  %i.du = getelementptr i8, ptr %.0.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.du, ptr noundef align 8 dereferenceable(16) %i.co, i64 16, i1 false)
  %i.dv = getelementptr i8, ptr %.0.i, i64 24
  store i32 0, ptr %i.dv, align 8
  %i.dw = getelementptr i8, ptr %.0.i, i64 32
  store i32 %i.m, ptr %i.dw, align 8
  store i8 1, ptr %.0.i, align 8
  %i.dx = call ptr @find_conversation_strat(ptr noundef %1, i32 noundef 39, i32 noundef 262144, i1 noundef zeroext false)
  %i.dy = getelementptr i8, ptr %i.dx, i64 24
  %i.dz = load i32, ptr %i.dy, align 8
  %i.ea = getelementptr i8, ptr %.0.i, i64 36
  store i32 %i.dz, ptr %i.ea, align 4
  %i.eb = load ptr, ptr %.0125, align 8
  %i.ec = call ptr @wmem_map_insert(ptr noundef %i.eb, ptr noundef %.0.i, ptr noundef %.0.i) ; 0 uses
  br label %gtpv2_match_response.exit

bb.aa:                                            ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  store i32 %i.cl, ptr %i.cm, align 4
  %i.ed = load ptr, ptr %.0125, align 8
  %i.ee = call ptr @wmem_map_lookup(ptr noundef %i.ed, ptr noundef nonnull %4) ; 9 uses
  %.not84.i = icmp eq ptr %i.ee, null
  br i1 %.not84.i, label %gtpv2_match_response.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ef = getelementptr i8, ptr %i.ee, i64 24     ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8
  %.not85.i = icmp eq i32 %i.eg, 0
  br i1 %.not85.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eh = load ptr, ptr %.0125, align 8
  %i.ei = call ptr @wmem_map_remove(ptr noundef %i.eh, ptr noundef nonnull %i.ee) ; 0 uses
  %i.ej = getelementptr i8, ptr %1, i64 20
  %i.ek = load i32, ptr %i.ej, align 4
  store i32 %i.ek, ptr %i.ef, align 8
  store i8 0, ptr %i.ee, align 8
  %i.el = call ptr @find_conversation_strat(ptr noundef %1, i32 noundef 39, i32 noundef 262144, i1 noundef zeroext false)
  %i.em = getelementptr i8, ptr %i.el, i64 24
  %i.en = load i32, ptr %i.em, align 8
  %i.eo = getelementptr i8, ptr %i.ee, i64 36
  store i32 %i.en, ptr %i.eo, align 4
  %i.ep = load ptr, ptr %i.dg, align 8
  %i.eq = call ptr @wmem_map_insert(ptr noundef %i.ep, ptr noundef nonnull %i.ee, ptr noundef nonnull %i.ee) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.v
  %.1.ph.i = phi ptr [ %i.ee, %bb.ac ], [ %i.ee, %bb.ab ], [ %i.di, %bb.v ] ; 5 uses
  %6 = load i8, ptr %.1.ph.i, align 8, !range !6, !noundef !7
  %i.er = trunc nuw i8 %6 to i1
  br i1 %i.er, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.es = load i32, ptr @hf_gtpv2_response_in, align 4
  %i.et = getelementptr i8, ptr %.1.ph.i, i64 24
  %i.eu = load i32, ptr %i.et, align 8
  %i.ev = call ptr @proto_tree_add_uint(ptr noundef %i.u, i32 noundef %i.es, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.eu) ; 2 uses
  %.not.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i, label %bb.at, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ew = getelementptr i8, ptr %i.ev, i64 40
  %i.ex = load ptr, ptr %i.ew, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.ex, null
  br i1 %.not5.i.i, label %bb.at, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ey = getelementptr i8, ptr %i.ex, i64 28     ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = or i32 %i.ez, 2
  store i32 %i.fa, ptr %i.ey, align 4
  br label %bb.at

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.fb = load i32, ptr @hf_gtpv2_response_to, align 4
  %i.fc = getelementptr i8, ptr %.1.ph.i, i64 4   ; 3 uses
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = call ptr @proto_tree_add_uint(ptr noundef %i.u, i32 noundef %i.fb, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.fd) ; 2 uses
  %.not.i91.i = icmp eq ptr %i.fe, null
  br i1 %.not.i91.i, label %proto_item_set_generated.exit93.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ff = getelementptr i8, ptr %i.fe, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %.not5.i92.i = icmp eq ptr %i.fg, null
  br i1 %.not5.i92.i, label %proto_item_set_generated.exit93.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fh = getelementptr i8, ptr %i.fg, i64 28     ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = or i32 %i.fi, 2
  store i32 %i.fj, ptr %i.fh, align 4
  br label %proto_item_set_generated.exit93.i

proto_item_set_generated.exit93.i:                ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.fk = getelementptr i8, ptr %.1.ph.i, i64 8
  call void @nstime_delta(ptr noundef nonnull %5, ptr noundef %i.co, ptr noundef %i.fk)
  %i.fl = load i32, ptr @hf_gtpv2_response_time, align 4
  %i.fm = call ptr @proto_tree_add_time(ptr noundef %i.u, i32 noundef %i.fl, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) ; 2 uses
  %.not.i94.i = icmp eq ptr %i.fm, null
  br i1 %.not.i94.i, label %proto_item_set_generated.exit96.i, label %bb.ak

bb.ak:                                            ; preds = %proto_item_set_generated.exit93.i
  %i.fn = getelementptr i8, ptr %i.fm, i64 40
  %i.fo = load ptr, ptr %i.fn, align 8            ; 2 uses
  %.not5.i95.i = icmp eq ptr %i.fo, null
  br i1 %.not5.i95.i, label %proto_item_set_generated.exit96.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fp = getelementptr i8, ptr %i.fo, i64 28     ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = or i32 %i.fq, 2
  store i32 %i.fr, ptr %i.fp, align 4
  br label %proto_item_set_generated.exit96.i

proto_item_set_generated.exit96.i:                ; preds = %bb.al, %bb.ak, %proto_item_set_generated.exit93.i
  %i.fs = load i8, ptr @g_gtp_session, align 1, !range !6, !noundef !7
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.am, label %bb.as

bb.am:                                            ; preds = %proto_item_set_generated.exit96.i
  %i.fu = getelementptr i8, ptr %1, i64 80
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = getelementptr i8, ptr %i.fv, i64 53
  %i.fx = load i16, ptr %i.fw, align 1
  %i.fy = and i16 %i.fx, 8
  %.not88.i = icmp eq i16 %i.fy, 0
  br i1 %.not88.i, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.fz = load ptr, ptr @session_table, align 8
  %i.ga = getelementptr i8, ptr %1, i64 20        ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4
  %i.gc = zext i32 %i.gb to i64
  %i.gd = inttoptr i64 %i.gc to ptr
  %i.ge = call ptr @wmem_map_lookup(ptr noundef %i.fz, ptr noundef %i.gd)
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = and i64 %i.gf, 4294967295
  %.not89.i = icmp eq i64 %i.gg, 0
  br i1 %.not89.i, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.gh = load ptr, ptr @session_table, align 8
  %i.gi = load i32, ptr %i.fc, align 4
  %i.gj = zext i32 %i.gi to i64
  %i.gk = inttoptr i64 %i.gj to ptr
  %i.gl = call ptr @wmem_map_lookup(ptr noundef %i.gh, ptr noundef %i.gk)
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = trunc i64 %i.gm to i32                  ; 2 uses
  %.not90.i = icmp eq i32 %i.gn, 0
  br i1 %.not90.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.go = load i32, ptr %i.ga, align 4
  call void @add_gtp_session(i32 noundef %i.go, i32 noundef %i.gn)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.gp = call zeroext i1 @is_cause_accepted(i8 noundef zeroext %.0128, i32 noundef 2)
  br i1 %i.gp, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gq = load i32, ptr %i.fc, align 4
  call void @remove_frame_info(i32 noundef %i.gq)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.am, %proto_item_set_generated.exit96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.at

gtpv2_match_response.exit:                        ; preds = %bb.w, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.gr = load i32, ptr @gtpv2_tap, align 4
  call void @tap_queue_packet(i32 noundef %i.gr, ptr noundef %1, ptr noundef nonnull %.1.ph.i)
  br label %bb.au

bb.au:                                            ; preds = %gtpv2_match_response.exit, %bb.at
  br i1 %.not134, label %bb.cb, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.gs = getelementptr i8, ptr %1, i64 80
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = getelementptr i8, ptr %i.gt, i64 53
  %i.gv = load i16, ptr %i.gu, align 1
  %i.gw = and i16 %i.gv, 8
  %.not.i137 = icmp eq i16 %i.gw, 0
  br i1 %.not.i137, label %bb.aw, label %bb.bv

bb.aw:                                            ; preds = %bb.av
  %i.gx = load ptr, ptr @session_table, align 8
  %i.gy = getelementptr i8, ptr %1, i64 20        ; 7 uses
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = zext i32 %i.gz to i64
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = call ptr @wmem_map_lookup(ptr noundef %i.gx, ptr noundef %i.hb)
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = and i64 %i.hd, 4294967295
  %.not78.i = icmp eq i64 %i.he, 0
  br i1 %.not78.i, label %bb.ax, label %bb.bv

bb.ax:                                            ; preds = %bb.aw
  %i.hf = load i8, ptr %i.az, align 1             ; 3 uses
  switch i8 %i.hf, label %bb.ay [
    i8 32, label %bb.bb
    i8 33, label %bb.bv
    i8 34, label %thread-pre-split.i.a
    i8 35, label %thread-pre-split.i.a
    i8 95, label %thread-pre-split.i.a
    i8 96, label %thread-pre-split.i.a
    i8 97, label %thread-pre-split.i.a
    i8 98, label %thread-pre-split.i.a
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.hg = load ptr, ptr %.0, align 8
  %i.hh = call i32 @wmem_list_count(ptr noundef %i.hg)
  %.not87.i = icmp eq i32 %i.hh, 0
  br i1 %.not87.i, label %thread-pre-split.i.a, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hi = getelementptr i8, ptr %.0, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = call i32 @wmem_list_count(ptr noundef %i.hj)
  %.not88.i141 = icmp eq i32 %i.hk, 0
  br i1 %.not88.i141, label %thread-pre-split.i.a, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hl = load i32, ptr %i.gy, align 4
  call void @remove_frame_info(i32 noundef %i.hl)
  br label %thread-pre-split.i.a

bb.bb:                                            ; preds = %bb.ax
  %i.hm = load i32, ptr %i.gy, align 4
  %i.hn = load i32, ptr @gtp_session_count, align 4
  call void @add_gtp_session(i32 noundef %i.hm, i32 noundef %i.hn)
  %i.ho = getelementptr i8, ptr %.0, i64 56       ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8
  %.not98.i = icmp eq ptr %i.hp, null
  br i1 %.not98.i, label %bb.bv, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hq = call ptr @wmem_file_scope()
  %i.hr = load ptr, ptr %i.ho, align 8
end_hunk_0
