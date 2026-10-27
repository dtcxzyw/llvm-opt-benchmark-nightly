Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-amqp?download=true
inline.NumInlined: 111
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@get_amqp_1_0_value_formatter:bb.a
bb.e:                                             ; preds = %bb.d
  switch i32 %i.o, label %.thread [
    i32 26, label %bb.f
    i32 27, label %bb.f
    i32 30, label %bb.h
    i32 28, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.e, %bb.e
  %i.r = getelementptr i8, ptr %.0114146.lcssa, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not131 = icmp eq ptr %i.s, null
  br i1 %.not131, label %bb.g, label %.thread.sink.split

bb.g:                                             ; preds = %bb.f
  switch i32 %i.o, label %.thread [
    i32 30, label %bb.h
    i32 36, label %bb.i
  ]

bb.h:                                             ; preds = %bb.e, %bb.c, %bb.g
  %i.t = getelementptr i8, ptr %.0114146.lcssa, i64 24
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not132 = icmp eq ptr %i.u, null
  br i1 %.not132, label %.thread, label %.thread.sink.split

bb.i:                                             ; preds = %bb.c, %bb.g
  %i.v = getelementptr i8, ptr %.0114146.lcssa, i64 32
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not133 = icmp eq ptr %i.w, null
  br i1 %.not133, label %.thread, label %.thread.sink.split

.preheader144.1:                                  ; preds = %.preheader144.preheader
  %i.x = load i32, ptr @hf_amqp_1_0_incomingLocales, align 4
  %i.y = icmp eq i32 %i.x, %4
  br i1 %i.y, label %bb.c, label %.preheader144.2

.preheader144.2:                                  ; preds = %.preheader144.1
  %i.z = load i32, ptr @hf_amqp_1_0_offeredCapabilities, align 4
  %i.aa = icmp eq i32 %i.z, %4
  br i1 %i.aa, label %bb.c, label %.preheader144.3

.preheader144.3:                                  ; preds = %.preheader144.2
  %i.ab = load i32, ptr @hf_amqp_1_0_desiredCapabilities, align 4
  %i.ac = icmp eq i32 %i.ab, %4
  br i1 %i.ac, label %bb.c, label %.preheader144.4

.preheader144.4:                                  ; preds = %.preheader144.3
  %i.ad = load i32, ptr @hf_amqp_1_0_address, align 4
  %i.ae = icmp eq i32 %i.ad, %4
  br i1 %i.ae, label %bb.c, label %.preheader144.5

.preheader144.5:                                  ; preds = %.preheader144.4
  %i.af = load i32, ptr @hf_amqp_1_0_source, align 4
  %i.ag = icmp eq i32 %i.af, %4
  br i1 %i.ag, label %bb.c, label %.preheader144.6

.preheader144.6:                                  ; preds = %.preheader144.5
  %i.ah = load i32, ptr @hf_amqp_1_0_target, align 4
  %i.ai = icmp eq i32 %i.ah, %4
  br i1 %i.ai, label %bb.c, label %.preheader144.7

.preheader144.7:                                  ; preds = %.preheader144.6
  %i.aj = load i32, ptr @hf_amqp_1_0_outcomes, align 4
  %i.ak = icmp eq i32 %i.aj, %4
  br i1 %i.ak, label %bb.c, label %.preheader144.8

.preheader144.8:                                  ; preds = %.preheader144.7
  %i.al = load i32, ptr @hf_amqp_1_0_capabilities, align 4
  %i.am = icmp eq i32 %i.al, %4
  br i1 %i.am, label %bb.c, label %.preheader144.9

.preheader144.9:                                  ; preds = %.preheader144.8
  %i.an = load i32, ptr @hf_amqp_1_0_messageId, align 4
  %i.ao = icmp eq i32 %i.an, %4
  br i1 %i.ao, label %bb.c, label %.preheader144.11

.preheader144.11:                                 ; preds = %.preheader144.9
  %i.ap = load i32, ptr @hf_amqp_1_0_correlationId, align 4
  %i.aq = icmp eq i32 %i.ap, %4
  br i1 %i.aq, label %bb.c, label %.preheader144.12

.preheader144.12:                                 ; preds = %.preheader144.11
  %i.ar = load i32, ptr @hf_amqp_1_0_to, align 4
  %i.as = icmp eq i32 %i.ar, %4
  br i1 %i.as, label %bb.c, label %.preheader144.13

.preheader144.13:                                 ; preds = %.preheader144.12
  %i.at = load i32, ptr @hf_amqp_1_0_replyTo, align 4
  %i.au = icmp eq i32 %i.at, %4
  br i1 %i.au, label %bb.c, label %.preheader144.14

.preheader144.14:                                 ; preds = %.preheader144.13
  %i.av = load i32, ptr @hf_amqp_1_0_mechanisms, align 4
  %i.aw = icmp eq i32 %i.av, %4
  br i1 %i.aw, label %bb.c, label %.thread

.thread.sink.split:                               ; preds = %bb.i, %bb.h, %bb.f, %bb.d
  %.sink = phi ptr [ %i.q, %bb.d ], [ %i.u, %bb.h ], [ %i.s, %bb.f ], [ %i.w, %bb.i ]
  %i.ax = load i32, ptr %.sink, align 4
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.preheader144.14, %bb.c, %bb.e, %bb.g, %bb.h, %bb.i, %bb.b
  %.0115 = phi i32 [ %4, %bb.b ], [ %4, %bb.h ], [ %4, %bb.g ], [ %4, %.preheader144.14 ], [ %4, %bb.i ], [ %4, %bb.c ], [ %4, %bb.e ], [ %i.ax, %.thread.sink.split ] ; 7 uses
  %i.ay = tail call i32 @proto_registrar_get_ftype(i32 noundef %.0115)
  %.not134 = icmp eq i32 %i.ay, 0
  br i1 %.not134, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.az = getelementptr i8, ptr %i.i, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr i8, ptr %i.i, i64 20
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = tail call i32 %i.ba(ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef %i.bc, ptr noundef %9, i32 noundef %.0115)
  store i32 %i.bd, ptr %8, align 4
  br label %bb.bn

bb.k:                                             ; preds = %.thread
  %i.be = icmp eq i8 %2, 64
  br i1 %i.be, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %8, align 4
  %i.bf = load i32, ptr @hf_amqp_1_0_list, align 4
  %i.bg = icmp eq i32 %.0115, %i.bf
  br i1 %i.bg, label %bb.m, label %bb.bn

bb.m:                                             ; preds = %bb.l
  %i.bh = add i32 %3, -1
  %.not136 = icmp eq ptr %5, null
  br i1 %.not136, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = tail call ptr @proto_registrar_get_name(i32 noundef %.0115)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bj = phi ptr [ %i.bi, %bb.n ], [ %5, %bb.m ]
  %i.bk = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %9, i32 noundef %.0115, ptr noundef %0, i32 noundef %i.bh, i32 noundef 1, ptr noundef @.str.1550, ptr noundef %i.bj) ; 0 uses
  br label %bb.bn

bb.p:                                             ; preds = %bb.k
  %i.bl = getelementptr i8, ptr %i.i, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr i8, ptr %i.i, i64 20      ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = call i32 %i.bm(ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef %i.bo, ptr noundef nonnull %i.h) ; 3 uses
  store i32 %i.bp, ptr %8, align 4
  %i.bq = icmp ugt i8 %2, -97
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = load i32, ptr %i.bn, align 4
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bs = icmp eq i32 %i.bp, 0
  %spec.select = sext i1 %i.bs to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi i32 [ %i.br, %bb.q ], [ %spec.select, %bb.r ] ; 2 uses
  %i.bt = add i32 %.0, %3
  %i.bu = sub i32 %i.bp, %.0
  %.not135 = icmp eq ptr %5, null
  br i1 %.not135, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = call ptr @proto_registrar_get_name(i32 noundef %.0115)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bw = phi ptr [ %i.bv, %bb.t ], [ %5, %bb.s ]
  %i.bx = getelementptr i8, ptr %i.i, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = load ptr, ptr %i.h, align 8
  %i.ca = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %9, i32 noundef %.0115, ptr noundef %0, i32 noundef %i.bt, i32 noundef %i.bu, ptr noundef @.str.1491, ptr noundef %i.bw, ptr noundef %i.by, ptr noundef %i.bz) ; 0 uses
  br label %bb.bn

bb.v:                                             ; preds = %bb.a
  %i.cb = zext i8 %2 to i32                       ; 2 uses
  switch i8 %2, label %bb.bk [
    i8 69, label %bb.w
    i8 -64, label %bb.w
    i8 -48, label %bb.w
    i8 -63, label %bb.z
    i8 -47, label %bb.z
    i8 -32, label %bb.at
    i8 -16, label %bb.at
  ]

bb.w:                                             ; preds = %bb.v, %bb.v, %bb.v
  %i.cc = add i32 %3, -1
  %i.cd = tail call fastcc i32 @dissect_amqp_1_0_list(ptr noundef %0, ptr noundef %1, i32 noundef %i.cc, ptr noundef %9, i32 noundef %4, i32 noundef %6, ptr noundef %7, ptr noundef %5) ; 3 uses
  store i32 %i.cd, ptr %8, align 4
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cf = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %3)
  br label %.sink.split

bb.y:                                             ; preds = %bb.w
  %i.cg = add i32 %i.cd, -1
  br label %.sink.split

bb.z:                                             ; preds = %bb.v, %bb.v
  %i.ch = add i32 %3, -1                          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store ptr null, ptr %i.g, align 8
  %i.ci = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ch), !inline_history !22 ; 2 uses
  switch i8 %i.ci, label %bb.ac [
    i8 -63, label %bb.aa
    i8 -47, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3), !inline_history !22
  %i.ck = zext i8 %i.cj to i32
  %i.cl = add i32 %3, 1
  %i.cm = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cl), !inline_history !22
  %i.cn = zext i8 %i.cm to i32
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.co = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %3), !inline_history !22
  %i.cp = add i32 %3, 4
  %i.cq = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.cp), !inline_history !22
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.cr = zext i8 %i.ci to i32                    ; 2 uses
  %i.cs = load i32, ptr @hf_amqp_1_0_map, align 4
  %i.ct = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef null, i32 noundef %i.cs, ptr noundef %0, i32 noundef %i.ch, i32 noundef 1, ptr noundef @.str.1543, i32 noundef %i.cr), !inline_history !22 ; 0 uses
  %i.cu = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef null, ptr noundef @ei_amqp_unknown_amqp_type, ptr noundef @.str.1586, i32 noundef %i.cr), !inline_history !22 ; 0 uses
  %i.cv = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ch), !inline_history !22
  br label %dissect_amqp_1_0_map.exit

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %.093.i = phi i32 [ 1, %bb.aa ], [ 4, %bb.ab ]  ; 2 uses
  %.092.i = phi i32 [ %i.cn, %bb.aa ], [ %i.cq, %bb.ab ] ; 8 uses
  %.0.i = phi i32 [ %i.ck, %bb.aa ], [ %i.co, %bb.ab ] ; 3 uses
  %i.cw = tail call i32 @proto_registrar_get_ftype(i32 noundef %4), !inline_history !22
  %.not.i = icmp eq i32 %i.cw, 0
  %i.cx = add nuw nsw i32 %.093.i, 1
  %i.cy = add i32 %i.cx, %.0.i                    ; 2 uses
  br i1 %.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = tail call ptr @proto_tree_add_item(ptr noundef %9, i32 noundef %4, ptr noundef %0, i32 noundef %i.ch, i32 noundef %i.cy, i32 noundef 0), !inline_history !22
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %.not101.i = icmp eq ptr %5, null
  br i1 %.not101.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.da = tail call ptr @proto_registrar_get_name(i32 noundef %4), !inline_history !22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.db = phi ptr [ %i.da, %bb.ag ], [ %5, %bb.af ]
  %i.dc = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %9, i32 noundef %4, ptr noundef %0, i32 noundef %i.ch, i32 noundef %i.cy, ptr noundef @.str.1467, ptr noundef %i.db), !inline_history !22
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.094.i = phi ptr [ %i.cz, %bb.ae ], [ %i.dc, %bb.ah ] ; 2 uses
  %i.dd = shl nuw nsw i32 %.093.i, 1
  %i.de = add i32 %i.dd, %3                       ; 2 uses
  %.not102.i = icmp eq i32 %.092.i, 0             ; 2 uses
  br i1 %.not102.i, label %.thread140, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = load i32, ptr @ett_amqp_1_0_map, align 4
  %i.dg = tail call ptr @proto_item_add_subtree(ptr noundef %.094.i, i32 noundef %i.df), !inline_history !22 ; 2 uses
  %i.dh = and i32 %.092.i, 1
  %.not103.i = icmp eq i32 %i.dh, 0
  br i1 %.not103.i, label %.thread140, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.di = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.dg, ptr noundef @ei_amqp_invalid_number_of_params, ptr noundef @.str.1587, i32 noundef %.092.i), !inline_history !22 ; 0 uses
  %i.dj = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ch), !inline_history !22
  br label %dissect_amqp_1_0_map.exit

.thread140:                                       ; preds = %bb.ai, %bb.aj
  %.195.i143 = phi ptr [ %i.dg, %bb.aj ], [ %.094.i, %bb.ai ] ; 5 uses
  %i.dk = icmp ugt i32 %.092.i, %.0.i
  br i1 %i.dk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread140
  %i.dl = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %.195.i143, ptr noundef @ei_amqp_invalid_number_of_params, ptr noundef @.str.1588, i32 noundef %.092.i, i32 noundef %.0.i), !inline_history !22 ; 0 uses
  %i.dm = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ch), !inline_history !22
  br label %dissect_amqp_1_0_map.exit

bb.am:                                            ; preds = %.thread140
  %i.dn = lshr exact i32 %.092.i, 1
  %i.do = icmp eq i32 %.092.i, 2
  %i.dp = select i1 %i.do, ptr @.str.1426, ptr @.str.1520
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.195.i143, ptr noundef @.str.1589, i32 noundef %i.dn, ptr noundef nonnull %i.dp), !inline_history !22
  br i1 %.not102.i, label %.critedge.i, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.am, %bb.as
  %.1.i158 = phi i32 [ %i.em, %bb.as ], [ %.092.i, %bb.am ] ; 2 uses
  %.097.i157 = phi i32 [ %.198.i, %bb.as ], [ %i.de, %bb.am ] ; 9 uses
  %i.dq = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.097.i157), !inline_history !22
  %.not105.i = icmp eq i32 %i.dq, 0
  br i1 %.not105.i, label %.critedge.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph159
  %i.dr = and i32 %.1.i158, 1
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.dt = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.097.i157), !inline_history !22
  %i.du = call fastcc ptr @decode_fixed_type(i8 noundef zeroext %i.dt), !inline_history !22 ; 3 uses
  %.not106.i = icmp eq ptr %i.du, null
  br i1 %.not106.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dv = getelementptr i8, ptr %i.du, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = add i32 %.097.i157, 1
  %i.dy = getelementptr i8, ptr %i.du, i64 20
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = call i32 %i.dw(ptr noundef %0, ptr noundef %1, i32 noundef %i.dx, i32 noundef %i.dz, ptr noundef nonnull %i.g), !inline_history !22 ; 2 uses
  store i32 %i.ea, ptr %i.f, align 4
  %i.eb = add i32 %i.ea, 1
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.ec = load i32, ptr @hf_amqp_1_0_map, align 4
  %i.ed = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.097.i157), !inline_history !22
  %i.ee = zext i8 %i.ed to i32
  %i.ef = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %.195.i143, i32 noundef %i.ec, ptr noundef %0, i32 noundef %.097.i157, i32 noundef 1, ptr noundef @.str.1590, i32 noundef %i.ee), !inline_history !22 ; 0 uses
  %i.eg = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.097.i157), !inline_history !22
  %i.eh = zext i8 %i.eg to i32
  %i.ei = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %.195.i143, ptr noundef @ei_amqp_unknown_amqp_type, ptr noundef @.str.1591, i32 noundef %i.eh), !inline_history !22 ; 0 uses
  br label %bb.as

bb.ar:                                            ; preds = %bb.an
  %i.ej = load i32, ptr @hf_amqp_1_0_list, align 4
  %i.ek = load ptr, ptr %i.g, align 8
  call fastcc void @get_amqp_1_0_type_value_formatter(ptr noundef %0, ptr noundef %1, i32 noundef %.097.i157, i32 noundef %i.ej, ptr noundef %i.ek, ptr noundef nonnull %i.f, ptr noundef %.195.i143), !inline_history !22
  %i.el = load i32, ptr %i.f, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.pn.i = phi i32 [ %i.eb, %bb.ap ], [ 1, %bb.aq ], [ %i.el, %bb.ar ]
  %.198.i = add i32 %.pn.i, %.097.i157            ; 2 uses
  %i.em = add i32 %.1.i158, -1                    ; 2 uses
  %.not104.i = icmp eq i32 %i.em, 0
  br i1 %.not104.i, label %.critedge.i, label %.lr.ph159, !llvm.loop !23

.critedge.i:                                      ; preds = %bb.as, %.lr.ph159, %bb.am
  %.097.i.lcssa = phi i32 [ %i.de, %bb.am ], [ %.097.i157, %.lr.ph159 ], [ %.198.i, %bb.as ]
  %i.en = sub i32 %.097.i.lcssa, %i.ch
  br label %dissect_amqp_1_0_map.exit

dissect_amqp_1_0_map.exit:                        ; preds = %bb.ac, %bb.ak, %bb.al, %.critedge.i
  %.096.i = phi i32 [ %i.cv, %bb.ac ], [ %i.dj, %bb.ak ], [ %i.dm, %bb.al ], [ %i.en, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  %i.eo = add i32 %.096.i, -1
  store i32 %i.eo, ptr %8, align 4
  br label %bb.bn

bb.at:                                            ; preds = %bb.v, %bb.v
  %i.ep = add i32 %3, -1                          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %4, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.eq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ep), !inline_history !24 ; 2 uses
  switch i8 %i.eq, label %bb.aw [
    i8 -32, label %bb.au
    i8 -16, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  %i.er = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3), !inline_history !24
  %i.es = zext i8 %i.er to i32
  %i.et = add i32 %3, 1
  %i.eu = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.et), !inline_history !24
  %i.ev = zext i8 %i.eu to i32
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.ew = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %3), !inline_history !24
  %i.ex = add i32 %3, 4
  %i.ey = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.ex), !inline_history !24
  br label %bb.ax

bb.aw:                                            ; preds = %bb.at
  %i.ez = zext i8 %i.eq to i32                    ; 2 uses
  %i.fa = load i32, ptr @hf_amqp_1_0_list, align 4
  %i.fb = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef null, i32 noundef %i.fa, ptr noundef %0, i32 noundef %i.ep, i32 noundef 1, ptr noundef @.str.1543, i32 noundef %i.ez), !inline_history !24 ; 0 uses
  %i.fc = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef null, ptr noundef @ei_amqp_unknown_amqp_type, ptr noundef @.str.1592, i32 noundef %i.ez), !inline_history !24 ; 0 uses
  %i.fd = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ep), !inline_history !24
  br label %dissect_amqp_1_0_array.exit

bb.ax:                                            ; preds = %bb.av, %bb.au
  %.082.i = phi i32 [ 1, %bb.au ], [ 4, %bb.av ]  ; 2 uses
  %.080.i = phi i32 [ %i.ev, %bb.au ], [ %i.ey, %bb.av ] ; 8 uses
  %.079.i = phi i32 [ %i.es, %bb.au ], [ %i.ew, %bb.av ] ; 3 uses
  %i.fe = shl nuw nsw i32 %.082.i, 1
  %i.ff = add i32 %i.fe, %3                       ; 2 uses
  %i.fg = call fastcc i32 @get_amqp_1_0_type_formatter(ptr noundef %0, ptr noundef %1, i32 noundef %i.ff, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b), !inline_history !24
  %i.fh = load i32, ptr %i.a, align 4             ; 3 uses
  %i.fi = add nuw nsw i32 %.082.i, 1
  %i.fj = add i32 %i.fi, %.079.i
  %i.fk = tail call ptr @proto_tree_add_item(ptr noundef %9, i32 noundef %i.fh, ptr noundef %0, i32 noundef %i.ep, i32 noundef %i.fj, i32 noundef 0), !inline_history !24 ; 3 uses
  %.not.i137 = icmp eq ptr %5, null
  br i1 %.not.i137, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fl = tail call ptr @proto_registrar_get_name(i32 noundef %i.fh), !inline_history !24
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fm = phi ptr [ %i.fl, %bb.ay ], [ %5, %bb.ax ]
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.fk, ptr noundef @.str.1467, ptr noundef %i.fm), !inline_history !24
  %i.fn = load i32, ptr %i.b, align 4
  %i.fo = add i32 %i.ff, %i.fn                    ; 2 uses
  %.not87.i = icmp eq i32 %.080.i, 0              ; 2 uses
  br i1 %.not87.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fp = load i32, ptr @ett_amqp_1_0_array, align 4
  %i.fq = tail call ptr @proto_item_add_subtree(ptr noundef %i.fk, i32 noundef %i.fp), !inline_history !24
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.083.i = phi ptr [ %i.fq, %bb.ba ], [ %i.fk, %bb.az ] ; 4 uses
  %i.fr = icmp eq i32 %6, 0
  br i1 %i.fr, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fs = icmp eq i32 %.080.i, 1
  %i.ft = select i1 %i.fs, ptr @.str.1426, ptr @.str.1520
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.083.i, ptr noundef @.str.1593, i32 noundef %.080.i, ptr noundef nonnull %i.ft), !inline_history !24
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.fu = icmp ugt i32 %.080.i, %.079.i
  br i1 %i.fu, label %bb.be, label %.preheader

.preheader:                                       ; preds = %bb.bd
  br i1 %.not87.i, label %.critedge.i138, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.fv = trunc nuw i32 %i.fg to i8
  %i.fw = load i32, ptr %i.c, align 4
  %i.fx = load ptr, ptr %i.d, align 8
  %i.fy = zext i32 %6 to i64
  %wide.trip.count = zext i32 %.080.i to i64
  br label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fz = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %.083.i, ptr noundef @ei_amqp_invalid_number_of_params, ptr noundef @.str.1594, i32 noundef %.080.i, i32 noundef %.079.i), !inline_history !24 ; 0 uses
  %i.ga = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ep), !inline_history !24
  br label %dissect_amqp_1_0_array.exit

bb.bf:                                            ; preds = %.lr.ph, %bb.bi
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bi ] ; 4 uses
  %.085.i147 = phi i32 [ %i.fo, %.lr.ph ], [ %i.gi, %bb.bi ] ; 4 uses
  %i.gb = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.085.i147), !inline_history !24
  %.not88.i = icmp eq i32 %i.gb, 0
  br i1 %.not88.i, label %.critedge.i138.loopexit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.b, align 4
  %i.gc = icmp samesign ult i64 %indvars.iv, %i.fy
  br i1 %i.gc, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gd = getelementptr [8 x i8], ptr %7, i64 %indvars.iv
  %i.ge = load ptr, ptr %i.gd, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0.in.i = phi ptr [ %i.ge, %bb.bh ], [ @hf_amqp_1_0_list, %bb.bg ]
  %.0.i139 = load i32, ptr %.0.in.i, align 4
  %i.gf = tail call ptr @proto_registrar_get_nth(i32 noundef %i.fh), !inline_history !24
  %i.gg = load ptr, ptr %i.gf, align 8
  call fastcc void @get_amqp_1_0_value_formatter(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %i.fv, i32 noundef %.085.i147, i32 noundef %.0.i139, ptr noundef %i.gg, i32 noundef %i.fw, ptr noundef %i.fx, ptr noundef nonnull %i.b, ptr noundef %.083.i), !inline_history !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gh = load i32, ptr %i.b, align 4
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.gh, i32 1) ; 2 uses
  store i32 %spec.store.select, ptr %i.b, align 4
  %i.gi = add i32 %spec.store.select, %.085.i147  ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.i138.thread, label %bb.bf, !llvm.loop !25

.critedge.i138.loopexit:                          ; preds = %bb.bf
  %indvars167.le = trunc i64 %indvars.iv to i32
  br label %.critedge.i138

.critedge.i138:                                   ; preds = %.critedge.i138.loopexit, %.preheader
  %.085.i.lcssa = phi i32 [ %i.fo, %.preheader ], [ %.085.i147, %.critedge.i138.loopexit ] ; 2 uses
  %.081.i.lcssa = phi i32 [ 0, %.preheader ], [ %indvars167.le, %.critedge.i138.loopexit ] ; 3 uses
  %.not89.i = icmp eq i32 %.081.i.lcssa, %.080.i
  br i1 %.not89.i, label %.critedge.i138.thread, label %bb.bj

bb.bj:                                            ; preds = %.critedge.i138
  %i.gj = add i32 %.081.i.lcssa, %.080.i
  %i.gk = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %.083.i, ptr noundef @ei_amqp_invalid_number_of_params, ptr noundef @.str.1595, i32 noundef %i.gj, i32 noundef %.081.i.lcssa), !inline_history !24 ; 0 uses
  br label %.critedge.i138.thread

.critedge.i138.thread:                            ; preds = %bb.bi, %bb.bj, %.critedge.i138
  %.085.i.lcssa182 = phi i32 [ %.085.i.lcssa, %.critedge.i138 ], [ %.085.i.lcssa, %bb.bj ], [ %i.gi, %bb.bi ]
  %i.gl = sub i32 %.085.i.lcssa182, %i.ep
  br label %dissect_amqp_1_0_array.exit

dissect_amqp_1_0_array.exit:                      ; preds = %bb.aw, %bb.be, %.critedge.i138.thread
  %.084.i = phi i32 [ %i.fd, %bb.aw ], [ %i.ga, %bb.be ], [ %i.gl, %.critedge.i138.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gm = add i32 %.084.i, -1
  store i32 %i.gm, ptr %8, align 4
  br label %bb.bn

bb.bk:                                            ; preds = %bb.v
  %.not128 = icmp eq ptr %5, null
  br i1 %.not128, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.gn = tail call ptr @proto_registrar_get_name(i32 noundef %4)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %i.go = phi ptr [ %i.gn, %bb.bl ], [ %5, %bb.bk ]
  %i.gp = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %9, ptr noundef @ei_amqp_unknown_amqp_type, ptr noundef @.str.1551, i32 noundef %i.cb, i32 noundef %i.cb, ptr noundef %i.go) ; 0 uses
  %i.gq = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %3)
  store i32 %i.gq, ptr %8, align 4
  br label %bb.bn

.sink.split:                                      ; preds = %bb.y, %bb.x
  %.sink185 = phi i32 [ %i.cf, %bb.x ], [ %i.cg, %bb.y ]
  store i32 %.sink185, ptr %8, align 4
  br label %bb.bn

bb.bn:                                            ; preds = %.sink.split, %bb.j, %bb.l, %bb.o, %bb.u, %dissect_amqp_1_0_map.exit, %dissect_amqp_1_0_array.exit, %bb.bm
  call void @decrement_dissection_depth(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @format_amqp_1_0_str(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #0 {
bb.a:
  switch i32 %3, label %bb.d [
    i32 1, label %bb.b
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %2)
  %i.b = zext i8 %i.a to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %2)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 416
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.e, ptr noundef @.str.1501, i32 noundef %3)
  store ptr %i.f, ptr %4, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]  ; 2 uses
  %i.g = add i32 %3, %2
  %i.h = getelementptr i8, ptr %1, i64 416
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr @tvb_get_string_enc(ptr noundef %i.i, ptr noundef %0, i32 noundef %i.g, i32 noundef %.0, i32 noundef 2)
  store ptr %i.j, ptr %4, align 8
  %i.k = add i32 %.0, %3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.019 = phi i32 [ %i.k, %bb.e ], [ %3, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal fastcc ptr @decode_fixed_type(i8 noundef zeroext %0) unnamed_addr #10 {
bb.a:
  %switch.tableidx = xor i8 %0, -128              ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, -11
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.decode_fixed_type, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.05 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.05
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_registrar_get_ftype(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal noundef i32 @dissect_amqp_1_0_skip(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5) #10 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @format_amqp_1_0_null(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, i32 %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #11 {
bb.a:
  store ptr @.str.1577, ptr %4, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_amqp_1_0_true(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = add i32 %2, -1
  %i.b = tail call ptr @proto_tree_add_boolean(ptr noundef %4, i32 noundef %5, ptr noundef %0, i32 noundef %i.a, i32 noundef 1, i64 noundef 1) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @format_amqp_1_0_boolean_true(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, i32 %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #11 {
bb.a:
  store ptr @.str.1517, ptr %4, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_amqp_1_0_false(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = add i32 %2, -1
  %i.b = tail call ptr @proto_tree_add_boolean(ptr noundef %4, i32 noundef %5, ptr noundef %0, i32 noundef %i.a, i32 noundef 1, i64 noundef 0) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @format_amqp_1_0_boolean_false(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, i32 %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #11 {
bb.a:
  store ptr @.str.1518, ptr %4, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_amqp_1_0_fixed(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef returned %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %5, ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef 0) ; 0 uses
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @format_amqp_1_0_boolean(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %2)
  %.not = icmp eq i8 %i.a, 0
  %i.b = select i1 %.not, ptr @.str.1518, ptr @.str.1517
  store ptr %i.b, ptr %4, align 8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @format_amqp_1_0_uint(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef returned %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #0 {
bb.a:
  switch i32 %3, label %bb.f [
    i32 0, label %bb.g
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 4, label %bb.d
    i32 8, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %2)
  %i.b = zext i8 %i.a to i64
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %2)
  %i.d = zext i16 %i.c to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.e = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %2)
  %i.f = zext i32 %i.e to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.g = tail call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %2)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 416
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.i, ptr noundef @.str.1515, i32 noundef %3)
  br label %bb.h

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.c
  %.0 = phi i64 [ %i.g, %bb.e ], [ %i.b, %bb.b ], [ %i.d, %bb.c ], [ %i.f, %bb.d ], [ 0, %bb.a ]
  %i.k = getelementptr i8, ptr %1, i64 416
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.l, ptr noundef @.str.1578, i64 noundef %.0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi ptr [ %i.j, %bb.f ], [ %i.m, %bb.g ]
  store ptr %storemerge, ptr %4, align 8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_amqp_1_0_zero(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @proto_registrar_get_ftype(i32 noundef %5)
  switch i32 %i.a, label %bb.f [
    i32 4, label %bb.b
    i32 5, label %bb.b
    i32 6, label %bb.b
    i32 7, label %bb.b
    i32 8, label %bb.c
    i32 9, label %bb.c
    i32 10, label %bb.c
    i32 11, label %bb.c
    i32 12, label %bb.d
    i32 13, label %bb.d
    i32 14, label %bb.d
    i32 15, label %bb.d
    i32 16, label %bb.e
    i32 17, label %bb.e
    i32 18, label %bb.e
    i32 19, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = add i32 %2, -1
  %i.c = tail call ptr @proto_tree_add_uint(ptr noundef %4, i32 noundef %5, ptr noundef %0, i32 noundef %i.b, i32 noundef 1, i32 noundef 0) ; 0 uses
end_hunk_0
