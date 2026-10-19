Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-amqp?download=true
inline.NumInlined: 111
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dissect_amqp_0_10_struct32:bb.a
  %i.nn = add nuw nsw i32 %.5.i129, 1
  %i.no = add nuw nsw i32 %i.nn, %i.nm
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.6.i130 = phi i32 [ %i.no, %bb.di ], [ %.5.i129, %bb.dh ] ; 4 uses
  %.not95.i = icmp sgt i8 %i.lh, -1
  br i1 %.not95.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.np = call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %.6.i130)
  store i64 %i.np, ptr %4, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.nq, align 8
  %i.nr = load i32, ptr @hf_amqp_0_10_struct_file_properties_timestamp, align 4
  %i.ns = call ptr @proto_tree_add_time(ptr noundef %i.lg, i32 noundef %i.nr, ptr noundef %0, i32 noundef %.6.i130, i32 noundef 8, ptr noundef nonnull %4) ; 0 uses
  %i.nt = add nuw nsw i32 %.6.i130, 8
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.7.i131 = phi i32 [ %i.nt, %bb.dk ], [ %.6.i130, %bb.dj ]
  %i.nu = and i8 %i.li, 1
  %.not96.i = icmp eq i8 %i.nu, 0
  br i1 %.not96.i, label %dissect_amqp_0_10_struct_file_properties.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.nv = load i32, ptr @hf_amqp_0_10_struct_file_properties_cluster_id, align 4
  %i.nw = call ptr @proto_tree_add_item(ptr noundef %i.lg, i32 noundef %i.nv, ptr noundef %0, i32 noundef %.7.i131, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_amqp_0_10_struct_file_properties.exit

dissect_amqp_0_10_struct_file_properties.exit:    ; preds = %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %dissect_amqp_0_10_struct_fragment_properties.exit

bb.dn:                                            ; preds = %bb.a
  %i.nx = load i32, ptr %i.h, align 4
  %cond = icmp eq i32 %i.nx, 1
  br i1 %cond, label %bb.do, label %dissect_amqp_0_10_struct_fragment_properties.exit

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ny = load i32, ptr @ett_args, align 4
  %i.nz = call ptr @proto_item_add_subtree(ptr noundef %i.j, i32 noundef %i.ny) ; 7 uses
  %i.oa = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.ob = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.oc = load i32, ptr @hf_amqp_0_10_argument_packing_flags, align 4
  %i.od = call ptr @proto_tree_add_item(ptr noundef %i.nz, i32 noundef %i.oc, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0)
  %i.oe = zext i8 %i.oa to i32                    ; 5 uses
  %i.of = icmp ugt i8 %i.oa, 31
  %i.og = icmp ne i8 %i.ob, 0
  %or.cond.i132 = select i1 %i.of, i1 true, i1 %i.og
  br i1 %or.cond.i132, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.oh = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.od, ptr noundef nonnull @ei_amqp_bad_flag_value) ; 0 uses
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.oi = and i32 %i.oe, 1
  %.not.i133 = icmp eq i32 %i.oi, 0
  br i1 %.not.i133, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.oj = load i32, ptr @hf_amqp_0_10_struct_stream_properties_content_type, align 4
  %i.ok = call ptr @proto_tree_add_item(ptr noundef %i.nz, i32 noundef %i.oj, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ol = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.om = zext i8 %i.ol to i32
  %i.on = add nuw nsw i32 %i.om, 5
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.064.i = phi i32 [ %i.on, %bb.dr ], [ 4, %bb.dq ] ; 4 uses
  %i.oo = and i32 %i.oe, 2
  %.not66.i = icmp eq i32 %i.oo, 0
  br i1 %.not66.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.op = load i32, ptr @hf_amqp_0_10_struct_stream_properties_content_encoding, align 4
  %i.oq = call ptr @proto_tree_add_item(ptr noundef %i.nz, i32 noundef %i.op, ptr noundef %0, i32 noundef %.064.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.or = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.064.i)
  %i.os = zext i8 %i.or to i32
  %i.ot = add nuw nsw i32 %.064.i, 1
  %i.ou = add nuw nsw i32 %i.ot, %i.os
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.1.i134 = phi i32 [ %i.ou, %bb.dt ], [ %.064.i, %bb.ds ] ; 3 uses
  %i.ov = and i32 %i.oe, 4
  %.not67.i = icmp eq i32 %i.ov, 0
  br i1 %.not67.i, label %bb.ea, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ow = load i32, ptr @hf_amqp_0_10_struct_stream_properties_headers_size, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ox = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.nz, i32 noundef %i.ow, ptr noundef %0, i32 noundef %.1.i134, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.oy = load i32, ptr %i.a, align 4             ; 2 uses
  %i.oz = icmp ugt i32 %i.oy, 65535
  br i1 %i.oz, label %bb.dw, label %amqp_0_10_get_32bit_size_new.exit.i135

bb.dw:                                            ; preds = %bb.dv
  %i.pa = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ox, ptr noundef nonnull @ei_amqp_size_exceeds_65K) ; 0 uses
  br label %amqp_0_10_get_32bit_size_new.exit.i135

amqp_0_10_get_32bit_size_new.exit.i135:           ; preds = %bb.dw, %bb.dv
  %i.pb = phi i32 [ 65535, %bb.dw ], [ %i.oy, %bb.dv ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.pc = add nuw nsw i32 %.1.i134, 4             ; 5 uses
  %i.pd = load i32, ptr @hf_amqp_0_10_struct_stream_properties_headers, align 4
  %i.pe = call ptr @proto_tree_add_item(ptr noundef %i.nz, i32 noundef %i.pd, ptr noundef %0, i32 noundef %i.pc, i32 noundef %i.pb, i32 noundef 0)
  %i.pf = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.pc)
  %i.pg = icmp ugt i32 %i.pb, %i.pf
  br i1 %i.pg, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %amqp_0_10_get_32bit_size_new.exit.i135
  %i.ph = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.pc)
  br label %bb.dz

bb.dy:                                            ; preds = %amqp_0_10_get_32bit_size_new.exit.i135
  %i.pi = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.pc, i32 noundef %i.pb)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.0.i136 = phi ptr [ %i.ph, %bb.dx ], [ %i.pi, %bb.dy ]
  call fastcc void @dissect_amqp_0_10_map(ptr noundef %.0.i136, ptr noundef %1, ptr noundef %i.pe)
  %i.pj = add nuw nsw i32 %i.pb, %i.pc
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.du
  %.2.i137 = phi i32 [ %i.pj, %bb.dz ], [ %.1.i134, %bb.du ] ; 3 uses
  %i.pk = and i32 %i.oe, 8
  %.not68.i = icmp eq i32 %i.pk, 0
  br i1 %.not68.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.pl = load i32, ptr @hf_amqp_0_10_struct_stream_properties_priority, align 4
  %i.pm = call ptr @proto_tree_add_item(ptr noundef %i.nz, i32 noundef %i.pl, ptr noundef %0, i32 noundef %.2.i137, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.pn = add nuw nsw i32 %.2.i137, 1
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.3.i138 = phi i32 [ %i.pn, %bb.eb ], [ %.2.i137, %bb.ea ] ; 2 uses
  %i.po = and i32 %i.oe, 16
  %.not69.i = icmp eq i32 %i.po, 0
  br i1 %.not69.i, label %dissect_amqp_0_10_struct_stream_properties.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.pp = call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %.3.i138)
  store i64 %i.pp, ptr %3, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.pq, align 8
  %i.pr = load i32, ptr @hf_amqp_0_10_struct_stream_properties_timestamp, align 4
  %i.ps = call ptr @proto_tree_add_time(ptr noundef %i.nz, i32 noundef %i.pr, ptr noundef %0, i32 noundef %.3.i138, i32 noundef 8, ptr noundef nonnull %3) ; 0 uses
  br label %dissect_amqp_0_10_struct_stream_properties.exit

dissect_amqp_0_10_struct_stream_properties.exit:  ; preds = %bb.ec, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %dissect_amqp_0_10_struct_fragment_properties.exit

dissect_amqp_0_10_struct_fragment_properties.exit: ; preds = %bb.cn, %bb.cm, %bb.bv, %bb.bq, %bb.bc, %bb.ax, %bb.z, %bb.y, %dissect_amqp_0_10_struct_stream_properties.exit, %bb.dn, %dissect_amqp_0_10_struct_file_properties.exit, %bb.co, %bb.bx, %bb.bl, %bb.bw, %bb.bh, %bb.bi, %amqp_0_10_get_32bit_size_new.exit, %bb.b, %dissect_amqp_0_10_struct_delivery_properties.exit, %bb.be, %bb.bd, %bb.bg, %bb.bf, %bb.a
  call void @decrement_dissection_depth(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_amqp_0_10_map(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load i32, ptr @ett_amqp_0_10_map, align 4
  %i.c = tail call ptr @proto_item_add_subtree(ptr noundef %2, i32 noundef %i.b) ; 3 uses
  %i.d = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 0) ; 4 uses
  %i.e = icmp eq i32 %i.d, 1
  %i.f = select i1 %i.e, ptr @.str.1489, ptr @.str.1490
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef nonnull @.str.1488, i32 noundef %i.d, ptr noundef nonnull %i.f)
  %.not106 = icmp eq i32 %i.d, 0
  br i1 %.not106, label %.critedge, label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 416        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph104, %bb.m
  %.077103 = phi i32 [ 4, %.lr.ph104 ], [ %.178, %bb.m ] ; 6 uses
  %.079102 = phi i32 [ 0, %.lr.ph104 ], [ %i.bi, %bb.m ]
  %i.h = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.077103)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.077103)
  %i.j = zext i8 %i.i to i32                      ; 5 uses
  %i.k = add i32 %.077103, 1                      ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = call ptr @tvb_get_string_enc(ptr noundef %i.l, ptr noundef %0, i32 noundef %i.k, i32 noundef %i.j, i32 noundef 2) ; 3 uses
  %i.n = add i32 %i.k, %i.j                       ; 2 uses
  %i.o = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.n) ; 5 uses
  %i.p = add i32 %i.n, 1                          ; 6 uses
  %.not.i = icmp sgt i8 %i.o, -1                  ; 2 uses
  %amqp_0_10_fixed_types.amqp_0_10_var_types.i = select i1 %.not.i, ptr @amqp_0_10_fixed_types, ptr @amqp_0_10_var_types ; 3 uses
  %3 = load i8, ptr %amqp_0_10_fixed_types.amqp_0_10_var_types.i, align 16 ; 2 uses
  %.not2024.not.i = icmp eq i8 %3, -1
  br i1 %.not2024.not.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %4 = icmp eq i8 %3, %i.o
  br i1 %4, label %.lr.ph.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01725.i101 = phi i32 [ %i.q, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.q = add i32 %.01725.i101, 1                  ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [32 x i8], ptr %amqp_0_10_fixed_types.amqp_0_10_var_types.i, i64 %i.r ; 2 uses
  %i.t = load i8, ptr %i.s, align 16              ; 2 uses
  %.not20.not.i = icmp eq i8 %i.t, -1
  br i1 %.not20.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !16

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.u = icmp eq i8 %i.t, %i.o
  br i1 %i.u, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !16

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa = phi ptr [ %amqp_0_10_fixed_types.amqp_0_10_var_types.i, %.lr.ph.i.preheader ], [ %i.s, %.lr.ph.i ] ; 3 uses
  %i.v = load ptr, ptr %i.g, align 8
  %i.w = getelementptr i8, ptr %.lcssa, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call noalias ptr @wmem_strdup(ptr noundef %i.v, ptr noundef %i.x)
  %i.z = getelementptr i8, ptr %.lcssa, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %.lcssa, i64 24
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = call i32 %i.aa(ptr noundef %0, ptr noundef %1, i32 noundef %i.p, i32 noundef %i.ac, ptr noundef nonnull %i.a)
  %i.ae = call i32 @llvm.umin.i32(i32 %i.ad, i32 65536) ; 2 uses
  %i.af = load i32, ptr @hf_amqp_field, align 4
  %i.ag = add nuw nsw i32 %i.j, 2
  %i.ah = add nuw nsw i32 %i.ag, %i.ae
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.c, i32 noundef %i.af, ptr noundef %0, i32 noundef %.077103, i32 noundef %i.ah, ptr noundef nonnull @.str.1491, ptr noundef %i.m, ptr noundef %i.y, ptr noundef %i.ai) ; 0 uses
  br label %bb.m

.loopexit:                                        ; preds = %.lr.ph, %bb.c
  %i.ak = zext i8 %i.o to i32                     ; 2 uses
  %.off = add i8 %i.o, 88
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.al = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.p)
  %i.am = call range(i32 0, 65537) i32 @llvm.umin.i32(i32 %i.al, i32 65536) ; 3 uses
  %i.an = load i32, ptr @hf_amqp_field, align 4
  %i.ao = add nuw nsw i32 %i.j, 6
  %i.ap = add nuw nsw i32 %i.ao, %i.am
  %i.aq = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.c, i32 noundef %i.an, ptr noundef %0, i32 noundef %.077103, i32 noundef %i.ap, ptr noundef nonnull @.str.1492, ptr noundef %i.m, i32 noundef %i.am) ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %.loopexit
  %i.ar = lshr i32 %i.ak, 4
  %i.as = and i32 %i.ar, 7
  %i.at = shl nuw nsw i32 1, %i.as                ; 3 uses
  br i1 %.not.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = and i32 %i.ak, 192
  %i.av = icmp eq i32 %i.au, 192
  br i1 %i.av, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %trunc = trunc nuw i32 %i.at to i8
  switch i8 %trunc, label %bb.k [
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 4, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.aw = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.p)
  %i.ax = zext i8 %i.aw to i32
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ay = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.p)
  %i.az = zext i16 %i.ay to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ba = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.p)
  %i.bb = call range(i32 0, 65537) i32 @llvm.umin.i32(i32 %i.ba, i32 65536)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.h, %bb.i, %bb.j
  %.188 = phi ptr [ @.str.1493, %bb.e ], [ @.str.1493, %bb.f ], [ @.str.1494, %bb.g ], [ @.str.1493, %bb.i ], [ @.str.1493, %bb.j ], [ @.str.1493, %bb.h ]
  %.075 = phi i32 [ %i.at, %bb.e ], [ 5, %bb.f ], [ 1, %bb.g ], [ %i.az, %bb.i ], [ %i.bb, %bb.j ], [ %i.ax, %bb.h ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ %i.at, %bb.g ], [ 2, %bb.i ], [ 4, %bb.j ], [ 1, %bb.h ] ; 2 uses
  %i.bc = load i32, ptr @hf_amqp_field, align 4
  %i.bd = add nuw nsw i32 %i.j, 2
  %i.be = add nuw nsw i32 %i.bd, %.075
  %i.bf = add nuw nsw i32 %i.be, %.0
  %i.bg = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.c, i32 noundef %i.bc, ptr noundef %0, i32 noundef %.077103, i32 noundef %i.bf, ptr noundef nonnull @.str.1497, ptr noundef %i.m, ptr noundef nonnull %.188, i32 noundef %.075) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.176 = phi i32 [ %.075, %bb.k ], [ %i.am, %bb.d ]
  %.1 = phi i32 [ %.0, %bb.k ], [ 4, %bb.d ]
  %i.bh = add nuw nsw i32 %.1, %.176
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i._crit_edge
  %.pn = phi i32 [ %i.ae, %.lr.ph.i._crit_edge ], [ %i.bh, %bb.l ]
  %.178 = add i32 %.pn, %i.p
  %i.bi = add nuw i32 %.079102, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bi, %i.d
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !17

.critedge:                                        ; preds = %bb.b, %bb.m, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_amqp_0_10_array(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.d = add i32 %2, 1                            ; 2 uses
  %i.e = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.d) ; 3 uses
  store i32 %i.e, ptr %i.c, align 4
  %i.f = load i32, ptr @ett_amqp_0_10_array, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %3, i32 noundef %i.f) ; 5 uses
  %i.h = icmp eq i32 %i.e, 1
  %i.i = select i1 %i.h, ptr @.str.1426, ptr @.str.1520
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %3, ptr noundef nonnull @.str.1519, i32 noundef %i.e, ptr noundef nonnull %i.i)
  %i.j = load i32, ptr @hf_amqp_0_10_array_type, align 4
  %i.k = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.g, i32 noundef %i.j, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b)
  %i.l = load i32, ptr @hf_amqp_0_10_array_element_count, align 4
  %i.m = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.g, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.d, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.n = load i32, ptr %i.c, align 4
  %.not53 = icmp eq i32 %i.n, 0
  br i1 %.not53, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.o = add i32 %2, 5
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.04751 = phi i32 [ %i.am, %bb.j ], [ 0, %.lr.ph.preheader ]
  %.04850 = phi i32 [ %.1, %bb.j ], [ %i.o, %.lr.ph.preheader ] ; 6 uses
  %i.p = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.04850)
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = load i32, ptr %i.b, align 4
  switch i32 %i.q, label %bb.i [
    i32 149, label %bb.c
    i32 171, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.04850)
  %i.s = load i32, ptr @hf_amqp_0_10_array_string, align 4
  %i.t = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.s, ptr noundef %0, i32 noundef %.04850, i32 noundef 2, i32 noundef 2) ; 0 uses
  %i.u = zext i16 %i.r to i32
  %i.v = add i32 %.04850, 2
  %i.w = add i32 %i.v, %i.u
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.x = load i32, ptr @hf_amqp_0_10_struct32_size, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.y = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.g, i32 noundef %i.x, ptr noundef %0, i32 noundef %.04850, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.z = load i32, ptr %i.a, align 4              ; 2 uses
  %i.aa = icmp ugt i32 %i.z, 65535
  br i1 %i.aa, label %bb.e, label %amqp_0_10_get_32bit_size_new.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.y, ptr noundef nonnull @ei_amqp_size_exceeds_65K) ; 0 uses
  br label %amqp_0_10_get_32bit_size_new.exit

amqp_0_10_get_32bit_size_new.exit:                ; preds = %bb.d, %bb.e
  %i.ac = phi i32 [ 65535, %bb.e ], [ %i.z, %bb.d ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ad = add i32 %.04850, 4                      ; 5 uses
  %i.ae = load i32, ptr @hf_amqp_0_10_struct32, align 4
  %i.af = call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.ad, i32 noundef 2, i32 noundef 0) ; 2 uses
  call void @proto_item_set_len(ptr noundef %i.af, i32 noundef %i.ac)
  %i.ag = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ad)
  %i.ah = icmp ugt i32 %i.ac, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %amqp_0_10_get_32bit_size_new.exit
  %i.ai = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.ad)
  br label %bb.h

bb.g:                                             ; preds = %amqp_0_10_get_32bit_size_new.exit
  %i.aj = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.ad, i32 noundef %i.ac)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.ai, %bb.f ], [ %i.aj, %bb.g ]
  call fastcc void @dissect_amqp_0_10_struct32(ptr noundef %.0, ptr noundef %1, ptr noundef %i.af)
  %i.ak = add i32 %i.ac, %i.ad
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.al = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.k, ptr noundef nonnull @ei_amqp_array_type_unknown) ; 0 uses
  br label %.critedge

bb.j:                                             ; preds = %bb.c, %bb.h
  %.1 = phi i32 [ %i.w, %bb.c ], [ %i.ak, %bb.h ]
  %i.am = add nuw i32 %.04751, 1                  ; 2 uses
  %i.an = load i32, ptr %i.c, align 4
  %i.ao = icmp ult i32 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph, label %.critedge, !llvm.loop !18

.critedge:                                        ; preds = %bb.j, %.lr.ph, %bb.a, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @format_amqp_0_10_vbin(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #0 {
bb.a:
  switch i32 %3, label %bb.e [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %2)
  %i.b = zext i8 %i.a to i32
  br label %bb.f

bb.c:                                             ; preds = %bb.a
end_hunk_0
