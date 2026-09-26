Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ccsds?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@expert_register_field_array

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ccsds(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.nstime_t, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.e = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @col_set_str(ptr noundef %i.f, i32 noundef 35, ptr noundef nonnull @.str.63)
  %i.g = load ptr, ptr %i.e, align 8
  tail call void @col_set_str(ptr noundef %i.g, i32 noundef 25, ptr noundef nonnull @.str.125)
  %i.h = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 0)
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = zext i16 %i.h to i32                     ; 3 uses
  %i.k = and i32 %i.j, 2047                       ; 3 uses
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.i, i32 noundef 25, ptr noundef nonnull @.str.126, i32 noundef %i.k, i32 noundef %i.k)
  %i.l = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.m = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 4) ; 2 uses
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %i.o = add nuw nsw i32 %i.n, 7                  ; 2 uses
  %i.p = icmp sgt i32 %i.o, %i.l                  ; 3 uses
  %i.q = icmp ult i16 %i.m, 9                     ; 2 uses
  %. = select i1 %i.q, i32 16, i32 %i.o
  %.0187 = select i1 %i.p, i32 %i.l, i32 %.       ; 7 uses
  %i.r = load i32, ptr @proto_ccsds, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.r, ptr noundef %0, i32 noundef 0, i32 noundef %.0187, i32 noundef 0)
  %i.t = load i32, ptr @ett_ccsds, align 4
  %i.u = tail call ptr @proto_item_add_subtree(ptr noundef %i.s, i32 noundef %i.t) ; 6 uses
  %i.v = load i32, ptr @ett_ccsds_primary_header, align 4
  %i.w = call ptr @proto_tree_add_subtree(ptr noundef %i.u, ptr noundef %0, i32 noundef 0, i32 noundef 6, i32 noundef %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.127) ; 4 uses
  %i.x = load i32, ptr @hf_ccsds_header_flags, align 4
  %i.y = load i32, ptr @ett_ccsds_primary_header_flags, align 4
  %i.z = call ptr @proto_tree_add_bitmask(ptr noundef %i.w, ptr noundef %0, i32 noundef 0, i32 noundef %i.x, i32 noundef %i.y, ptr noundef nonnull @dissect_ccsds.header_flags, i32 noundef 0) ; 0 uses
  %i.aa = load i32, ptr @hf_ccsds_seqflag, align 4
  %i.ab = call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.aa, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ac = load i32, ptr @hf_ccsds_seqnum, align 4
  %i.ad = call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.ac, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ae = load i32, ptr @hf_ccsds_length, align 4
  %i.af = call ptr @proto_tree_add_item(ptr noundef %i.w, i32 noundef %i.ae, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0)
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ag = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.af, ptr noundef nonnull @ei_ccsds_length_error) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ah = load ptr, ptr %i.a, align 8
  call void @proto_item_set_end(ptr noundef %i.ah, ptr noundef %0, i32 noundef 6)
  %i.ai = and i32 %i.j, 2048
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i32, ptr @ett_ccsds_secondary_header, align 4
  %i.ak = call ptr @proto_tree_add_subtree(ptr noundef %i.u, ptr noundef %0, i32 noundef 6, i32 noundef 10, i32 noundef %i.aj, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.128) ; 15 uses
  %i.al = load i32, ptr @hf_ccsds_coarse_time, align 4
  %i.am = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ak, i32 noundef %i.al, ptr noundef %0, i32 noundef 6, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.an = load i32, ptr @hf_ccsds_fine_time, align 4
  %i.ao = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.ak, i32 noundef %i.an, ptr noundef %0, i32 noundef 10, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.ap = getelementptr i8, ptr %1, i64 416
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = load i32, ptr %i.b, align 4
  %i.as = load i8, ptr %i.c, align 1
  %i.at = zext i8 %i.as to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  %.b = load i1, ptr @embedded_time_to_string.utcdiff, align 4 ; 2 uses
  %i.au = select i1 %.b, i32 315964800, i32 0
  br i1 %.b, label %embedded_time_to_string.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  store i1 true, ptr @embedded_time_to_string.utcdiff, align 4
  br label %embedded_time_to_string.exit

embedded_time_to_string.exit:                     ; preds = %bb.d, %.preheader.i
  %i.av = phi i32 [ 315964800, %.preheader.i ], [ %i.au, %bb.d ]
  %i.aw = add i32 %i.av, %i.ar
  %i.ax = sext i32 %i.aw to i64
  store i64 %i.ax, ptr %4, align 8
  %i.ay = mul nuw nsw i32 %i.at, 125
  %i.az = lshr i32 %i.ay, 5
  %i.ba = mul nuw nsw i32 %i.az, 1000000
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ba, ptr %i.bb, align 8
  %i.bc = call ptr @abs_time_to_str_ex(ptr noundef %i.aq, ptr noundef nonnull %4, i32 noundef 20, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  %i.bd = load i32, ptr @hf_ccsds_embedded_time, align 4
  %i.be = call ptr @proto_tree_add_string(ptr noundef %i.ak, i32 noundef %i.bd, ptr noundef %0, i32 noundef 6, i32 noundef 5, ptr noundef %i.bc) ; 0 uses
  %i.bf = load i32, ptr @hf_ccsds_timeid, align 4
  %i.bg = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.bf, ptr noundef %0, i32 noundef 11, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bh = load i32, ptr @hf_ccsds_checkword_flag, align 4
  %i.bi = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.bh, ptr noundef %0, i32 noundef 11, i32 noundef 1, i32 noundef 0)
  %i.bj = load i32, ptr @global_dissect_checkword, align 4 ; 2 uses
  %switch = icmp ult i32 %i.bj, 2
  br i1 %switch, label %bb.f, label %bb.e

bb.e:                                             ; preds = %embedded_time_to_string.exit
  %i.bk = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 11)
  %i.bl = lshr i8 %i.bk, 5
  %i.bm = and i8 %i.bl, 1
  %i.bn = zext nneg i8 %i.bm to i32
  br label %bb.f

bb.f:                                             ; preds = %embedded_time_to_string.exit, %bb.e
  %.0186 = phi i32 [ %i.bn, %bb.e ], [ %i.bj, %embedded_time_to_string.exit ]
  %i.bo = and i32 %i.j, 4096
  %.not196 = icmp eq i32 %i.bo, 0
  br i1 %.not196, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = load i32, ptr @hf_ccsds_zoe, align 4
  %i.bq = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.bp, ptr noundef %0, i32 noundef 11, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.br = load i32, ptr @hf_ccsds_packet_type_unused, align 4
  %i.bs = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.br, ptr noundef %0, i32 noundef 11, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bt = load i32, ptr @hf_ccsds_vid, align 4
  %i.bu = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.bt, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bv = load i32, ptr @hf_ccsds_dcc, align 4
  %i.bw = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.bv, ptr noundef %0, i32 noundef 14, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bx = load i32, ptr @hf_ccsds_packet_type, align 4
  %i.by = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.bx, ptr noundef %0, i32 noundef 11, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bz = load i32, ptr @hf_ccsds_element_id, align 4
  %i.ca = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.bz, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cb = load i32, ptr @hf_ccsds_cmd_data_packet, align 4
  %i.cc = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.cb, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cd = load i32, ptr @hf_ccsds_format_version_id, align 4
  %i.ce = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.cd, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cf = load i32, ptr @hf_ccsds_extended_format_id, align 4
  %i.cg = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.cf, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ch = load i32, ptr @hf_ccsds_frame_id, align 4
  %i.ci = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.ch, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cj = load ptr, ptr %i.d, align 8
  call void @proto_item_set_end(ptr noundef %i.cj, ptr noundef %0, i32 noundef 16)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.1189 = phi i32 [ 16, %bb.i ], [ 6, %bb.c ]    ; 6 uses
  %.1 = phi i32 [ %.0186, %bb.i ], [ 0, %bb.c ]   ; 4 uses
  %.0184 = phi ptr [ %i.bi, %bb.i ], [ null, %bb.c ]
  %or.cond = or i1 %i.q, %i.p
  br i1 %or.cond, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ck = icmp sgt i32 %.0187, %.1189
  br i1 %i.ck, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cl = load i32, ptr @hf_ccsds_user_data, align 4
  %i.cm = sub nuw nsw i32 %.0187, %.1189
  %i.cn = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.cl, ptr noundef %0, i32 noundef %.1189, i32 noundef %i.cm, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.co = icmp eq i32 %.1, 1
  br i1 %i.co, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
  %i.cp = call ptr @expert_add_info(ptr noundef %1, ptr noundef %.0184, ptr noundef nonnull @ei_ccsds_checkword) ; 0 uses
  br label %bb.ab

bb.o:                                             ; preds = %bb.j
  %i.cq = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.1189)
  %i.cr = load ptr, ptr @ccsds_dissector_table, align 8
  %i.cs = call i32 @dissector_try_uint(ptr noundef %i.cr, i32 noundef %i.k, ptr noundef %i.cq, ptr noundef %1, ptr noundef %2)
  %.not197 = icmp eq i32 %i.cs, 0
  br i1 %.not197, label %bb.p, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o
  %.pre = shl nuw nsw i32 %.1, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ct = load i32, ptr @hf_ccsds_user_data, align 4
  %i.cu = shl nuw nsw i32 %.1, 1                  ; 2 uses
  %i.cv = add nuw nsw i32 %.1189, %i.cu
  %i.cw = sub i32 %.0187, %i.cv
  %i.cx = call ptr @proto_tree_add_item(ptr noundef %i.u, i32 noundef %i.ct, ptr noundef %0, i32 noundef %.1189, i32 noundef %i.cw, i32 noundef 0) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.p
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.cu, %bb.p ]
  %i.cy = sub i32 %.0187, %.pre-phi               ; 9 uses
  %i.cz = icmp eq i32 %.1, 1
  br i1 %i.cz, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.q
  %i.da = add nuw nsw i32 %i.n, 5
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.r
  %.0211 = phi i16 [ 0, %.preheader ], [ %i.dc, %bb.r ]
  %.0185210 = phi i32 [ 0, %.preheader ], [ %i.dd, %bb.r ] ; 2 uses
  %i.db = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.0185210)
  %i.dc = add i16 %i.db, %.0211                   ; 3 uses
  %i.dd = add nuw nsw i32 %.0185210, 2            ; 2 uses
  %i.de = icmp samesign ult i32 %i.dd, %i.da
  br i1 %i.de, label %bb.r, label %bb.s, !llvm.loop !6

bb.s:                                             ; preds = %bb.r
  %i.df = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.cy) ; 2 uses
  %i.dg = zext i16 %i.df to i32                   ; 4 uses
  %i.dh = icmp eq i16 %i.dc, %i.df
  br i1 %i.dh, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.di = load i32, ptr @hf_ccsds_checkword, align 4
  %i.dj = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.u, i32 noundef %i.di, ptr noundef %0, i32 noundef %i.cy, i32 noundef 2, i32 noundef %i.dg, ptr noundef nonnull @.str.129, i32 noundef %i.dg)
  %i.dk = load i32, ptr @ett_ccsds_checkword, align 4
  %i.dl = call ptr @proto_item_add_subtree(ptr noundef %i.dj, i32 noundef %i.dk) ; 2 uses
  %i.dm = load i32, ptr @hf_ccsds_checkword_good, align 4
  %i.dn = call ptr @proto_tree_add_boolean(ptr noundef %i.dl, i32 noundef %i.dm, ptr noundef %0, i32 noundef %i.cy, i32 noundef 2, i64 noundef 1) ; 2 uses
  %.not.i = icmp eq ptr %i.dn, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = getelementptr i8, ptr %i.dn, i64 40
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.dp, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dq = getelementptr i8, ptr %i.dp, i64 28     ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = or i32 %i.dr, 2
  store i32 %i.ds, ptr %i.dq, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.t, %bb.u, %bb.v
  %i.dt = load i32, ptr @hf_ccsds_checkword_bad, align 4
  %i.du = call ptr @proto_tree_add_boolean(ptr noundef %i.dl, i32 noundef %i.dt, ptr noundef %0, i32 noundef %i.cy, i32 noundef 2, i64 noundef 0) ; 2 uses
  %.not.i198 = icmp eq ptr %i.du, null
  br i1 %.not.i198, label %proto_item_set_generated.exit200, label %bb.w

bb.w:                                             ; preds = %proto_item_set_generated.exit
  %i.dv = getelementptr i8, ptr %i.du, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %.not5.i199 = icmp eq ptr %i.dw, null
  br i1 %.not5.i199, label %proto_item_set_generated.exit200, label %proto_item_set_generated.exit200.sink.split

bb.x:                                             ; preds = %bb.s
  %i.dx = zext i16 %i.dc to i32
  %i.dy = load i32, ptr @hf_ccsds_checkword, align 4
  %i.dz = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.u, i32 noundef %i.dy, ptr noundef %0, i32 noundef %i.cy, i32 noundef 2, i32 noundef %i.dg, ptr noundef nonnull @.str.130, i32 noundef %i.dg, i32 noundef %i.dx)
  %i.ea = load i32, ptr @ett_ccsds_checkword, align 4
  %i.eb = call ptr @proto_item_add_subtree(ptr noundef %i.dz, i32 noundef %i.ea) ; 2 uses
  %i.ec = load i32, ptr @hf_ccsds_checkword_good, align 4
  %i.ed = call ptr @proto_tree_add_boolean(ptr noundef %i.eb, i32 noundef %i.ec, ptr noundef %0, i32 noundef %i.cy, i32 noundef 2, i64 noundef 0) ; 2 uses
  %.not.i201 = icmp eq ptr %i.ed, null
  br i1 %.not.i201, label %proto_item_set_generated.exit203, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ee = getelementptr i8, ptr %i.ed, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %.not5.i202 = icmp eq ptr %i.ef, null
  br i1 %.not5.i202, label %proto_item_set_generated.exit203, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eg = getelementptr i8, ptr %i.ef, i64 28     ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = or i32 %i.eh, 2
  store i32 %i.ei, ptr %i.eg, align 4
  br label %proto_item_set_generated.exit203

proto_item_set_generated.exit203:                 ; preds = %bb.x, %bb.y, %bb.z
  %i.ej = load i32, ptr @hf_ccsds_checkword_bad, align 4
  %i.ek = call ptr @proto_tree_add_boolean(ptr noundef %i.eb, i32 noundef %i.ej, ptr noundef %0, i32 noundef %i.cy, i32 noundef 2, i64 noundef 1) ; 2 uses
  %.not.i204 = icmp eq ptr %i.ek, null
  br i1 %.not.i204, label %proto_item_set_generated.exit200, label %bb.aa

bb.aa:                                            ; preds = %proto_item_set_generated.exit203
  %i.el = getelementptr i8, ptr %i.ek, i64 40
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %.not5.i205 = icmp eq ptr %i.em, null
  br i1 %.not5.i205, label %proto_item_set_generated.exit200, label %proto_item_set_generated.exit200.sink.split

proto_item_set_generated.exit200.sink.split:      ; preds = %bb.aa, %bb.w
  %.sink223 = phi ptr [ %i.dw, %bb.w ], [ %i.em, %bb.aa ]
  %i.en = getelementptr i8, ptr %.sink223, i64 28 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = or i32 %i.eo, 2
  store i32 %i.ep, ptr %i.en, align 4
  br label %proto_item_set_generated.exit200

proto_item_set_generated.exit200:                 ; preds = %proto_item_set_generated.exit200.sink.split, %bb.aa, %proto_item_set_generated.exit203, %bb.w, %proto_item_set_generated.exit
  %i.eq = add i32 %i.cy, 2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.q, %proto_item_set_generated.exit200, %bb.m, %bb.n
  %.2 = phi i32 [ %.0187, %bb.n ], [ %.0187, %bb.m ], [ %i.eq, %proto_item_set_generated.exit200 ], [ %i.cy, %bb.q ]
  %i.er = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.2)
  %i.es = call i32 @call_data_dissector(ptr noundef %i.er, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.et = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %i.et
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_enum_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_ccsds() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @ccsds_handle, align 8
  tail call void @dissector_add_for_decode_as_with_preference(ptr noundef nonnull @.str.69, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as_with_preference(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_end(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissector_try_uint(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @abs_time_to_str_ex(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

end_hunk_0
