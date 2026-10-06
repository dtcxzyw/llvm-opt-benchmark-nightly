Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-scsi-osd?download=true
inline.NumInlined: 165
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_osd_list:bb.a
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr @hf_scsi_osd2_isolation, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.n, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = add i32 %3, 1                            ; 4 uses
  %.not.i = icmp eq ptr %7, null                  ; 3 uses
  br i1 %.not.i, label %dissect_osd_getsetattrib.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.q, null
  br i1 %.not11.i, label %dissect_osd_getsetattrib.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not12.i = icmp eq ptr %i.s, null
  br i1 %.not12.i, label %dissect_osd_getsetattrib.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.p)
  %i.u = lshr i8 %i.t, 4
  %i.v = and i8 %i.u, 3
  %i.w = getelementptr i8, ptr %i.s, i64 2
  store i8 %i.v, ptr %i.w, align 2
  br label %dissect_osd_getsetattrib.exit

dissect_osd_getsetattrib.exit:                    ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.x = load i32, ptr @hf_scsi_osd_getsetattrib, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.p, i32 noundef 1, i32 noundef 0) ; 0 uses
  br i1 %i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %dissect_osd_getsetattrib.exit
  %i.z = load i32, ptr @hf_scsi_osd_sortorder, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.p, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %dissect_osd_getsetattrib.exit
  br i1 %i.k, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr @hf_scsi_osd2_list_attr, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.p, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = add i32 %3, 2
  %i.ae = load i32, ptr @hf_scsi_osd_timestamps_control, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.ad, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ag = add i32 %3, 6
  %i.ah = load i32, ptr @hf_scsi_osd_partition_id, align 4
  %i.ai = tail call fastcc ptr @dissect_osd_partition_id(ptr noundef %1, ptr noundef %0, i32 noundef %i.ag, ptr noundef %2, i32 noundef %i.ah, ptr noundef %9, i1 noundef zeroext false, i1 noundef zeroext false) ; 0 uses
  br i1 %i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = add i32 %3, 14
  %i.ak = load i32, ptr @hf_scsi_osd_collection_object_id, align 4
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ak, ptr noundef %0, i32 noundef %i.aj, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.am = add i32 %3, 22                          ; 3 uses
  br i1 %i.k, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr @hf_scsi_osd_allocation_length, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.am, i32 noundef 8, i32 noundef 0) ; 0 uses
  br i1 %.not.i, label %dissect_osd_allocation_length.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = tail call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %i.am)
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 4294967295)
  %i.aq = trunc nuw i64 %spec.store.select.i to i32
  %i.ar = load ptr, ptr %i.c, align 8
  %i.as = getelementptr i8, ptr %i.ar, i64 24
  store i32 %i.aq, ptr %i.as, align 8
  br label %dissect_osd_allocation_length.exit

dissect_osd_allocation_length.exit:               ; preds = %bb.n, %bb.o
  %i.at = add i32 %3, 30
  %i.au = load i32, ptr @hf_scsi_osd_initial_object_id, align 4
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.au, ptr noundef %0, i32 noundef %i.at, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %dissect_osd_allocation_length.exit234

bb.p:                                             ; preds = %bb.m
  %i.aw = load i32, ptr @hf_scsi_osd_list_identifier, align 4
  %i.ax = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.am, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ay = add i32 %3, 26                          ; 2 uses
  %i.az = load i32, ptr @hf_scsi_osd_allocation_length, align 4
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.az, ptr noundef %0, i32 noundef %i.ay, i32 noundef 8, i32 noundef 0) ; 0 uses
  br i1 %.not.i, label %dissect_osd_allocation_length.exit234, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = tail call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %i.ay)
  %spec.store.select.i233 = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 4294967295)
  %i.bc = trunc nuw i64 %spec.store.select.i233 to i32
  %i.bd = load ptr, ptr %i.c, align 8
  %i.be = getelementptr i8, ptr %i.bd, i64 24
  store i32 %i.bc, ptr %i.be, align 8
  br label %dissect_osd_allocation_length.exit234

dissect_osd_allocation_length.exit234:            ; preds = %bb.q, %bb.p, %dissect_osd_allocation_length.exit
  %.sink = phi i32 [ 38, %dissect_osd_allocation_length.exit ], [ 34, %bb.p ], [ 34, %bb.q ]
  %hf_scsi_osd_initial_object_id.sink = phi ptr [ @hf_scsi_osd_list_identifier, %dissect_osd_allocation_length.exit ], [ @hf_scsi_osd_initial_object_id, %bb.p ], [ @hf_scsi_osd_initial_object_id, %bb.q ]
  %.sink274 = phi i32 [ 4, %dissect_osd_allocation_length.exit ], [ 8, %bb.p ], [ 8, %bb.q ]
  %i.bf = phi i32 [ 52, %dissect_osd_allocation_length.exit ], [ 40, %bb.p ], [ 40, %bb.q ]
  %i.bg = phi i32 [ 104, %dissect_osd_allocation_length.exit ], [ 80, %bb.p ], [ 80, %bb.q ]
  %i.bh = add i32 %3, %.sink
  %i.bi = load i32, ptr %hf_scsi_osd_initial_object_id.sink, align 4
  %i.bj = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bi, ptr noundef %0, i32 noundef %i.bh, i32 noundef %.sink274, i32 noundef 0) ; 0 uses
  %.0 = add i32 %3, 42
  tail call fastcc void @dissect_osd_attribute_parameters(ptr noundef %1, ptr noundef %0, i32 noundef %.0, ptr noundef %2, ptr noundef %7)
  %i.bk = add i32 %3, 70                          ; 2 uses
  tail call fastcc void @dissect_osd_capability(ptr noundef %0, i32 noundef %i.bk, ptr noundef %2)
  %i.bl = add i32 %i.bg, %i.bk                    ; 6 uses
  %i.bm = load i32, ptr @ett_osd_security_parameters, align 4
  %i.bn = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %i.bl, i32 noundef 40, i32 noundef %i.bm, ptr noundef null, ptr noundef nonnull @.str.294) ; 4 uses
  %i.bo = load i32, ptr @hf_scsi_osd_ricv, align 4
  %i.bp = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.bo, ptr noundef %0, i32 noundef %i.bl, i32 noundef 20, i32 noundef 0) ; 0 uses
  %i.bq = add i32 %i.bl, 20
  %i.br = load i32, ptr @hf_scsi_osd_request_nonce, align 4
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.br, ptr noundef %0, i32 noundef %i.bq, i32 noundef 12, i32 noundef 0) ; 0 uses
  %i.bt = add i32 %i.bl, 32
  %i.bu = load i32, ptr @hf_scsi_osd_diicvo, align 4
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.bu, ptr noundef %0, i32 noundef %i.bt, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bw = add i32 %i.bl, 36
  %i.bx = load i32, ptr @hf_scsi_osd_doicvo, align 4
  %i.by = tail call ptr @proto_tree_add_item(ptr noundef %i.bn, i32 noundef %i.bx, ptr noundef %0, i32 noundef %i.bw, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bz = add i32 %i.bl, %i.bf
  br label %bb.r

bb.r:                                             ; preds = %dissect_osd_allocation_length.exit234, %bb.a
  %.1 = phi i32 [ %i.bz, %dissect_osd_allocation_length.exit234 ], [ %3, %bb.a ] ; 8 uses
  %.not = xor i1 %4, true
  %or.cond5 = or i1 %5, %.not
  br i1 %or.cond5, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @dissect_osd_attribute_data_out(ptr noundef %1, ptr noundef %0, ptr noundef %2, ptr noundef %7, ptr noundef %9)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %or.cond7 = or i1 %4, %5
  br i1 %or.cond7, label %bb.an, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i8 0, ptr %i.a, align 1
  %.not.i235 = icmp eq ptr %7, null
  %.pre260 = load ptr, ptr %i.c, align 8          ; 6 uses
  br i1 %.not.i235, label %dissect_osd_attribute_data_in.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not14.i = icmp eq ptr %.pre260, null
  br i1 %.not14.i, label %dissect_osd_attribute_data_in.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr i8, ptr %.pre260, i64 64
  %i.cb = load ptr, ptr %i.ca, align 8            ; 5 uses
  %.not15.i = icmp eq ptr %i.cb, null
  br i1 %.not15.i, label %dissect_osd_attribute_data_in.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr i8, ptr %i.cb, i64 2
  %i.cd = load i8, ptr %i.cc, align 2
  %cond.i = icmp eq i8 %i.cd, 3
  br i1 %cond.i, label %bb.y, label %dissect_osd_attribute_data_in.exit

bb.y:                                             ; preds = %bb.x
  %i.ce = getelementptr i8, ptr %i.cb, i64 12
  %i.cf = load i32, ptr %i.ce, align 4
  %.not16.i = icmp eq i32 %i.cf, 0
  br i1 %.not16.i, label %dissect_osd_attribute_data_in.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = getelementptr i8, ptr %i.cb, i64 16
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr i8, ptr %i.cb, i64 32
  %i.cj = load i8, ptr %i.ci, align 4, !range !8, !noundef !9
  %i.ck = trunc nuw i8 %i.cj to i1
  tail call fastcc void @dissect_osd_attributes_list(ptr noundef %1, ptr noundef %0, i32 noundef %i.ch, ptr noundef %2, ptr noundef %9, i1 noundef zeroext %i.ck)
  %.pre = load ptr, ptr %i.c, align 8
  br label %dissect_osd_attribute_data_in.exit

dissect_osd_attribute_data_in.exit:               ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %i.cl = phi ptr [ %.pre260, %bb.u ], [ null, %bb.v ], [ %.pre260, %bb.w ], [ %.pre260, %bb.x ], [ %.pre260, %bb.y ], [ %.pre, %bb.z ]
  %i.cm = getelementptr i8, ptr %i.cl, i64 24
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.1)
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.co, i32 %i.cn) ; 2 uses
  %i.cp = icmp ult i32 %spec.select, 24
  br i1 %i.cp, label %.sink.split, label %bb.aa

bb.aa:                                            ; preds = %dissect_osd_attribute_data_in.exit
  %.0218 = zext i32 %spec.select to i64
  %i.cq = tail call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %.1)
  %spec.select227 = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 %.0218) ; 5 uses
  %i.cr = load i32, ptr @hf_scsi_osd_additional_length, align 4
  %i.cs = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cr, ptr noundef %0, i32 noundef %.1, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.ct = add i32 %.1, 8
  %i.cu = load i32, ptr @hf_scsi_osd_continuation_object_id, align 4
  %i.cv = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cu, ptr noundef %0, i32 noundef %i.ct, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.cw = add i32 %.1, 16                         ; 3 uses
  %i.cx = load i32, ptr @hf_scsi_osd_list_identifier, align 4
  %i.cy = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cx, ptr noundef %0, i32 noundef %i.cw, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.cz = add i32 %.1, 23                         ; 4 uses
  %i.da = load i32, ptr @hf_scsi_osd_list_flags_lstchg, align 4
  %i.db = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.da, ptr noundef %0, i32 noundef %i.cz, i32 noundef 1, i32 noundef 0) ; 0 uses
  br i1 %i.k, label %bb.ab, label %.critedge.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load i32, ptr @hf_scsi_osd2_object_descriptor_format, align 4
  %i.dd = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %2, i32 noundef %i.dc, ptr noundef %0, i32 noundef %i.cz, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.de = load i8, ptr %i.a, align 1              ; 3 uses
  %i.df = add i8 %i.de, -1
  %or.cond10 = icmp ult i8 %i.df, 2
  br i1 %or.cond10, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.i, label %.thread, label %.critedge

bb.ad:                                            ; preds = %bb.ab
  %i.dg = add i8 %i.de, -17
  %or.cond13 = icmp ult i8 %i.dg, 2
  br i1 %or.cond13, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.i, label %.critedge, label %.thread

bb.af:                                            ; preds = %bb.ad
  %i.dh = add i8 %i.de, -33
  %or.cond16 = icmp ult i8 %i.dh, 2
  br i1 %or.cond16, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.af, %bb.ae, %bb.ac
  store i8 0, ptr %i.a, align 1
  %i.di = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.dd, ptr noundef nonnull @ei_osd2_invalid_object_descriptor_format) ; 0 uses
  br label %.sink.split

.critedge.thread:                                 ; preds = %bb.aa
  %hf_scsi_osd_list_collection_flags_coltn.val = load i32, ptr @hf_scsi_osd_list_collection_flags_coltn, align 4
  %hf_scsi_osd_list_flags_root.val = load i32, ptr @hf_scsi_osd_list_flags_root, align 4
  %i.dj = select i1 %i.i, i32 %hf_scsi_osd_list_collection_flags_coltn.val, i32 %hf_scsi_osd_list_flags_root.val
  %i.dk = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dj, ptr noundef %0, i32 noundef %i.cz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dl = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cz)
  %i.dm = zext i32 %i.cw to i64
  %i.dn = icmp samesign ugt i64 %spec.select227, %i.dm
  br i1 %i.dn, label %.lr.ph253.thread, label %.sink.split

.critedge:                                        ; preds = %bb.ae, %bb.af, %bb.ac
  %.1217 = phi i1 [ true, %bb.ac ], [ true, %bb.ae ], [ false, %bb.af ]
  %i.do = zext i32 %i.cw to i64
  %i.dp = icmp samesign ugt i64 %spec.select227, %i.do
  br i1 %i.dp, label %.lr.ph253, label %.sink.split

.lr.ph253.thread:                                 ; preds = %.critedge.thread
  %i.dq = add i32 %.1, 24                         ; 3 uses
  %i.dr = trunc i8 %i.dl to i1
  %10 = trunc nuw i64 %spec.select227 to i32      ; 3 uses
  br i1 %i.dr, label %.lr.ph253.split.split.us, label %.lr.ph253.split.split

.lr.ph253:                                        ; preds = %.critedge
  %i.ds = add i32 %.1, 24
  %i.dt = add nuw nsw i64 %spec.select227, 8
  %11 = trunc nuw i64 %spec.select227 to i32      ; 2 uses
  br label %.lr.ph253.split.us

.lr.ph253.split.us:                               ; preds = %.lr.ph253, %.loopexit.us
  %.2252.us = phi i32 [ %.6.us, %.loopexit.us ], [ %i.ds, %.lr.ph253 ] ; 7 uses
  br i1 %.1217, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph253.split.us
  %i.du = load i32, ptr @hf_scsi_osd_user_object_id, align 4
  %i.dv = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.du, ptr noundef %0, i32 noundef %.2252.us, i32 noundef 8, i32 noundef 0)
  br label %bb.ak

bb.ah:                                            ; preds = %.lr.ph253.split.us
  br i1 %i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dw = load i32, ptr @hf_scsi_osd_partition_id, align 4
  %i.dx = call fastcc ptr @dissect_osd_partition_id(ptr noundef %1, ptr noundef %0, i32 noundef %.2252.us, ptr noundef %2, i32 noundef %i.dw, ptr noundef %9, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.dy = load i32, ptr @hf_scsi_osd_collection_object_id, align 4
  %i.dz = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dy, ptr noundef %0, i32 noundef %.2252.us, i32 noundef 8, i32 noundef 0)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag
  %.0211.us = phi ptr [ %i.dz, %bb.aj ], [ %i.dx, %bb.ai ], [ %i.dv, %bb.ag ]
  %i.ea = add i32 %.2252.us, 8                    ; 2 uses
  %i.eb = load i8, ptr %i.a, align 1
  %i.ec = and i8 %i.eb, 2
  %.not226.us = icmp eq i8 %i.ec, 0
  br i1 %.not226.us, label %.loopexit.us, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ed = add i32 %.2252.us, 16                   ; 3 uses
  %12 = icmp ugt i32 %i.ed, %11
  br i1 %12, label %.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ee = load i32, ptr @ett_osd_multi_object, align 4
  %i.ef = call ptr @proto_item_add_subtree(ptr noundef %.0211.us, i32 noundef %i.ee) ; 2 uses
  %i.eg = load i32, ptr @hf_scsi_osd_object_type, align 4
  %i.eh = call ptr @proto_tree_add_item(ptr noundef %i.ef, i32 noundef %i.eg, ptr noundef %0, i32 noundef %i.ea, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ei = add i32 %.2252.us, 14
  %i.ej = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ei)
  %i.ek = zext i16 %i.ej to i32
  %i.el = add i32 %i.ed, %i.ek                    ; 5 uses
  %i.em = zext i32 %i.el to i64
  %i.en = icmp samesign ult i64 %i.dt, %i.em
  br i1 %i.en, label %.sink.split, label %.preheader.us

.lr.ph.us:                                        ; preds = %.preheader.us, %.lr.ph.us
  %.3251.us = phi i32 [ %i.ev, %.lr.ph.us ], [ %i.ed, %.preheader.us ] ; 3 uses
  %i.eo = add i32 %.3251.us, 14
  %i.ep = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.eo)
  %i.eq = zext i16 %i.ep to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.er = add nuw nsw i32 %i.eq, 16
  %i.es = load i32, ptr @ett_osd_attribute, align 4
  %i.et = call ptr @proto_tree_add_subtree(ptr noundef %i.ef, ptr noundef %0, i32 noundef %.3251.us, i32 noundef %i.er, i32 noundef %i.es, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.297)
  %i.eu = load ptr, ptr %i.b, align 8
  %i.ev = call fastcc i32 @dissect_osd_attribute_list_entry(ptr noundef %1, ptr noundef %0, ptr noundef %i.et, ptr noundef %i.eu, i32 noundef %.3251.us, ptr noundef %9, i1 noundef zeroext true) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.ew = add i32 %i.ev, 16
  %i.ex = icmp ult i32 %i.ew, %i.el
  br i1 %i.ex, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !10

.loopexit.us:                                     ; preds = %.lr.ph.us, %.preheader.us, %bb.ak
  %.6.us = phi i32 [ %i.ea, %bb.ak ], [ %i.el, %.preheader.us ], [ %i.el, %.lr.ph.us ] ; 2 uses
  %i.ey = add i32 %.6.us, -8
  %13 = icmp ult i32 %i.ey, %11
  br i1 %13, label %.lr.ph253.split.us, label %.sink.split

.preheader.us:                                    ; preds = %bb.am
  %i.ez = add i32 %.2252.us, 32
  %i.fa = icmp ult i32 %i.ez, %i.el
  br i1 %i.fa, label %.lr.ph.us, label %.loopexit.us

.lr.ph253.split.split.us:                         ; preds = %.lr.ph253.thread
  br i1 %i.i, label %.lr.ph253.split.split.us.split.us, label %.lr.ph253.split.split.us.split

.lr.ph253.split.split.us.split.us:                ; preds = %.lr.ph253.split.split.us, %.lr.ph253.split.split.us.split.us
  %.2252.us256.us = phi i32 [ %i.fd, %.lr.ph253.split.split.us.split.us ], [ %i.dq, %.lr.ph253.split.split.us ] ; 3 uses
  %i.fb = load i32, ptr @hf_scsi_osd_collection_object_id, align 4
  %i.fc = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fb, ptr noundef %0, i32 noundef %.2252.us256.us, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.fd = add i32 %.2252.us256.us, 8
  %14 = icmp ult i32 %.2252.us256.us, %10
  br i1 %14, label %.lr.ph253.split.split.us.split.us, label %.sink.split

.lr.ph253.split.split.us.split:                   ; preds = %.lr.ph253.split.split.us, %.lr.ph253.split.split.us.split
  %.2252.us256 = phi i32 [ %i.fg, %.lr.ph253.split.split.us.split ], [ %i.dq, %.lr.ph253.split.split.us ] ; 3 uses
  %i.fe = load i32, ptr @hf_scsi_osd_partition_id, align 4
  %i.ff = tail call fastcc ptr @dissect_osd_partition_id(ptr noundef %1, ptr noundef %0, i32 noundef %.2252.us256, ptr noundef %2, i32 noundef %i.fe, ptr noundef %9, i1 noundef zeroext false, i1 noundef zeroext false) ; 0 uses
  %i.fg = add i32 %.2252.us256, 8
  %15 = icmp ult i32 %.2252.us256, %10
  br i1 %15, label %.lr.ph253.split.split.us.split, label %.sink.split

.lr.ph253.split.split:                            ; preds = %.lr.ph253.thread, %.lr.ph253.split.split
  %.2252 = phi i32 [ %i.fj, %.lr.ph253.split.split ], [ %i.dq, %.lr.ph253.thread ] ; 3 uses
  %i.fh = load i32, ptr @hf_scsi_osd_user_object_id, align 4
  %i.fi = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fh, ptr noundef %0, i32 noundef %.2252, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.fj = add i32 %.2252, 8
  %16 = icmp ult i32 %.2252, %10
  br i1 %16, label %.lr.ph253.split.split, label %.sink.split

.sink.split:                                      ; preds = %.lr.ph253.split.split, %.lr.ph253.split.split.us.split, %.lr.ph253.split.split.us.split.us, %bb.am, %bb.al, %.loopexit.us, %dissect_osd_attribute_data_in.exit, %.thread, %.critedge, %.critedge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.t
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_osd_read(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree readnone captures(none) %8, ptr noundef %9) #3 {
bb.a:
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @dissect_osd_option(ptr noundef %0, i32 noundef %3, ptr noundef %2)
  %i.a = add i32 %3, 1                            ; 2 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %dissect_osd_getsetattrib.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %7, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.c, null
  br i1 %.not11.i, label %dissect_osd_getsetattrib.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not12.i = icmp eq ptr %i.e, null
  br i1 %.not12.i, label %dissect_osd_getsetattrib.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.a)
  %i.g = lshr i8 %i.f, 4
  %i.h = and i8 %i.g, 3
  %i.i = getelementptr i8, ptr %i.e, i64 2
  store i8 %i.h, ptr %i.i, align 2
  br label %dissect_osd_getsetattrib.exit

dissect_osd_getsetattrib.exit:                    ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.j = load i32, ptr @hf_scsi_osd_getsetattrib, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.a, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.l = add i32 %3, 2
  %i.m = load i32, ptr @hf_scsi_osd_timestamps_control, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.l, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.o = add i32 %3, 6
  %i.p = load i32, ptr @hf_scsi_osd_partition_id, align 4
  %i.q = tail call fastcc ptr @dissect_osd_partition_id(ptr noundef %1, ptr noundef %0, i32 noundef %i.o, ptr noundef %2, i32 noundef %i.p, ptr noundef %9, i1 noundef zeroext false, i1 noundef zeroext false) ; 0 uses
  %i.r = add i32 %3, 14
  %i.s = load i32, ptr @hf_scsi_osd_user_object_id, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.r, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.u = add i32 %3, 26
  %i.v = load i32, ptr @hf_scsi_osd_length, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.u, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.x = add i32 %3, 34
  %i.y = load i32, ptr @hf_scsi_osd_starting_byte_address, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.aa = add i32 %3, 42
  tail call fastcc void @dissect_osd_attribute_parameters(ptr noundef %1, ptr noundef %0, i32 noundef %i.aa, ptr noundef %2, ptr noundef %7)
  %i.ab = add i32 %3, 70
  tail call fastcc void @dissect_osd_capability(ptr noundef %0, i32 noundef %i.ab, ptr noundef %2)
  %i.ac = add i32 %3, 150                         ; 2 uses
  %i.ad = load i32, ptr @ett_osd_security_parameters, align 4
  %i.ae = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %i.ac, i32 noundef 40, i32 noundef %i.ad, ptr noundef null, ptr noundef nonnull @.str.294) ; 4 uses
  %i.af = load i32, ptr @hf_scsi_osd_ricv, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.ac, i32 noundef 20, i32 noundef 0) ; 0 uses
  %i.ah = add i32 %3, 170
  %i.ai = load i32, ptr @hf_scsi_osd_request_nonce, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.ah, i32 noundef 12, i32 noundef 0) ; 0 uses
  %i.ak = add i32 %3, 182
  %i.al = load i32, ptr @hf_scsi_osd_diicvo, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.ak, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.an = add i32 %3, 186
  %i.ao = load i32, ptr @hf_scsi_osd_doicvo, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.an, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %dissect_osd_getsetattrib.exit, %bb.a
  %.not = xor i1 %4, true
  %or.cond3 = or i1 %5, %.not
  br i1 %or.cond3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @dissect_osd_attribute_data_out(ptr noundef %1, ptr noundef %0, ptr noundef %2, ptr noundef %7, ptr noundef %9)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not.i69 = icmp eq ptr %7, null
  %i.aq = or i1 %5, %.not.i69
  %or.cond70 = or i1 %4, %i.aq
  br i1 %or.cond70, label %dissect_osd_attribute_data_in.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr i8, ptr %7, i64 8
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not14.i = icmp eq ptr %i.as, null
  br i1 %.not14.i, label %dissect_osd_attribute_data_in.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr i8, ptr %i.as, i64 64
  %i.au = load ptr, ptr %i.at, align 8            ; 5 uses
  %.not15.i = icmp eq ptr %i.au, null
  br i1 %.not15.i, label %dissect_osd_attribute_data_in.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr i8, ptr %i.au, i64 2
  %i.aw = load i8, ptr %i.av, align 2
  %cond.i = icmp eq i8 %i.aw, 3
  br i1 %cond.i, label %bb.l, label %dissect_osd_attribute_data_in.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr i8, ptr %i.au, i64 12
  %i.ay = load i32, ptr %i.ax, align 4
  %.not16.i = icmp eq i32 %i.ay, 0
  br i1 %.not16.i, label %dissect_osd_attribute_data_in.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr i8, ptr %i.au, i64 16
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = getelementptr i8, ptr %i.au, i64 32
  %i.bc = load i8, ptr %i.bb, align 4, !range !8, !noundef !9
  %i.bd = trunc nuw i8 %i.bc to i1
  tail call fastcc void @dissect_osd_attributes_list(ptr noundef %1, ptr noundef %0, i32 noundef %i.ba, ptr noundef %2, ptr noundef %9, i1 noundef zeroext %i.bd)
  br label %dissect_osd_attribute_data_in.exit

dissect_osd_attribute_data_in.exit:               ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_osd_write(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree readnone captures(none) %8, ptr noundef %9) #3 {
bb.a:
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @dissect_osd_option(ptr noundef %0, i32 noundef %3, ptr noundef %2)
  %i.a = add i32 %3, 1                            ; 2 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %dissect_osd_getsetattrib.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %7, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.c, null
  br i1 %.not11.i, label %dissect_osd_getsetattrib.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not12.i = icmp eq ptr %i.e, null
  br i1 %.not12.i, label %dissect_osd_getsetattrib.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.a)
  %i.g = lshr i8 %i.f, 4
  %i.h = and i8 %i.g, 3
  %i.i = getelementptr i8, ptr %i.e, i64 2
  store i8 %i.h, ptr %i.i, align 2
  br label %dissect_osd_getsetattrib.exit

dissect_osd_getsetattrib.exit:                    ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.j = load i32, ptr @hf_scsi_osd_getsetattrib, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.a, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.l = add i32 %3, 2
  %i.m = load i32, ptr @hf_scsi_osd_timestamps_control, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.l, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.o = add i32 %3, 6
  %i.p = load i32, ptr @hf_scsi_osd_partition_id, align 4
  %i.q = tail call fastcc ptr @dissect_osd_partition_id(ptr noundef %1, ptr noundef %0, i32 noundef %i.o, ptr noundef %2, i32 noundef %i.p, ptr noundef %9, i1 noundef zeroext false, i1 noundef zeroext false) ; 0 uses
  %i.r = add i32 %3, 14
  %i.s = load i32, ptr @hf_scsi_osd_user_object_id, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.r, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.u = add i32 %3, 26
  %i.v = load i32, ptr @hf_scsi_osd_length, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.u, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.x = add i32 %3, 34
  %i.y = load i32, ptr @hf_scsi_osd_starting_byte_address, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.aa = add i32 %3, 42
  tail call fastcc void @dissect_osd_attribute_parameters(ptr noundef %1, ptr noundef %0, i32 noundef %i.aa, ptr noundef %2, ptr noundef %7)
  %i.ab = add i32 %3, 70
  tail call fastcc void @dissect_osd_capability(ptr noundef %0, i32 noundef %i.ab, ptr noundef %2)
  %i.ac = add i32 %3, 150                         ; 2 uses
  %i.ad = load i32, ptr @ett_osd_security_parameters, align 4
  %i.ae = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %i.ac, i32 noundef 40, i32 noundef %i.ad, ptr noundef null, ptr noundef nonnull @.str.294) ; 4 uses
  %i.af = load i32, ptr @hf_scsi_osd_ricv, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.ac, i32 noundef 20, i32 noundef 0) ; 0 uses
  %i.ah = add i32 %3, 170
  %i.ai = load i32, ptr @hf_scsi_osd_request_nonce, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.ah, i32 noundef 12, i32 noundef 0) ; 0 uses
  %i.ak = add i32 %3, 182
  %i.al = load i32, ptr @hf_scsi_osd_diicvo, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.ak, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.an = add i32 %3, 186
  %i.ao = load i32, ptr @hf_scsi_osd_doicvo, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.an, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.f
end_hunk_0
begin_hunk_1_@dissect_osd2_query:bb.a
  br i1 %or.cond, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr @hf_scsi_osd2_isolation, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = add i32 %3, 1                            ; 3 uses
  %i.k = load i32, ptr @hf_scsi_osd2_immed_tr, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.j, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not.i = icmp eq ptr %7, null                  ; 3 uses
  br i1 %.not.i, label %dissect_osd_getsetattrib.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.m, null
  br i1 %.not11.i, label %dissect_osd_getsetattrib.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not12.i = icmp eq ptr %i.o, null
  br i1 %.not12.i, label %dissect_osd_getsetattrib.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.j)
  %i.q = lshr i8 %i.p, 4
  %i.r = and i8 %i.q, 3
  %i.s = getelementptr i8, ptr %i.o, i64 2
  store i8 %i.r, ptr %i.s, align 2
  br label %dissect_osd_getsetattrib.exit

dissect_osd_getsetattrib.exit:                    ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.t = load i32, ptr @hf_scsi_osd_getsetattrib, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.j, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = add i32 %3, 2
  %i.w = load i32, ptr @hf_scsi_osd_timestamps_control, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.v, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = add i32 %3, 6
  %i.z = load i32, ptr @hf_scsi_osd_partition_id, align 4
  %i.aa = tail call fastcc ptr @dissect_osd_partition_id(ptr noundef %1, ptr noundef %0, i32 noundef %i.y, ptr noundef %2, i32 noundef %i.z, ptr noundef %9, i1 noundef zeroext false, i1 noundef zeroext false) ; 0 uses
  %i.ab = add i32 %3, 14
  %i.ac = load i32, ptr @hf_scsi_osd_collection_object_id, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.ab, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.ae = add i32 %3, 22                          ; 2 uses
  %i.af = load i32, ptr @hf_scsi_osd_allocation_length, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.ae, i32 noundef 8, i32 noundef 0) ; 0 uses
  br i1 %.not.i, label %dissect_osd_allocation_length.exit, label %bb.f

bb.f:                                             ; preds = %dissect_osd_getsetattrib.exit
  %i.ah = tail call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %i.ae)
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 4294967295)
  %i.ai = trunc nuw i64 %spec.store.select.i to i32
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 24
  store i32 %i.ai, ptr %i.ak, align 8
  br label %dissect_osd_allocation_length.exit

dissect_osd_allocation_length.exit:               ; preds = %dissect_osd_getsetattrib.exit, %bb.f
  %i.al = add i32 %3, 30
  %i.am = load i32, ptr @hf_scsi_osd2_matches_collection_object_id, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.al, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.ao = add i32 %3, 38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ap = load i32, ptr @hf_scsi_osd2_cdb_continuation_length, align 4
  %i.aq = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.ao, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a)
  br i1 %.not.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %dissect_osd_allocation_length.exit
  %i.ar = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not12.i123 = icmp eq ptr %i.ar, null
  br i1 %.not12.i123, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr i8, ptr %i.ar, i64 64
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not13.i = icmp eq ptr %i.at, null
  br i1 %.not13.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load i32, ptr %i.a, align 4
  %i.av = getelementptr i8, ptr %i.at, i64 28
  store i32 %i.au, ptr %i.av, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %dissect_osd_allocation_length.exit
  %i.aw = load i32, ptr %i.a, align 4
  %i.ax = add i32 %i.aw, -1
  %or.cond.i = icmp ult i32 %i.ax, 39
  br i1 %or.cond.i, label %bb.k, label %dissect_osd2_cdb_continuation_length.exit

bb.k:                                             ; preds = %bb.j
  %i.ay = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.aq, ptr noundef nonnull @ei_osd2_cdb_continuation_length_invalid) ; 0 uses
  br label %dissect_osd2_cdb_continuation_length.exit

dissect_osd2_cdb_continuation_length.exit:        ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.az = add i32 %3, 42
  call fastcc void @dissect_osd_attribute_parameters(ptr noundef %1, ptr noundef %0, i32 noundef %i.az, ptr noundef %2, ptr noundef %7)
  %i.ba = add i32 %3, 70
  call fastcc void @dissect_osd_capability(ptr noundef %0, i32 noundef %i.ba, ptr noundef %2)
  %i.bb = add i32 %3, 174                         ; 2 uses
  %i.bc = load i32, ptr @ett_osd_security_parameters, align 4
  %i.bd = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %i.bb, i32 noundef 40, i32 noundef %i.bc, ptr noundef null, ptr noundef nonnull @.str.294) ; 4 uses
  %i.be = load i32, ptr @hf_scsi_osd_ricv, align 4
  %i.bf = call ptr @proto_tree_add_item(ptr noundef %i.bd, i32 noundef %i.be, ptr noundef %0, i32 noundef %i.bb, i32 noundef 20, i32 noundef 0) ; 0 uses
  %i.bg = add i32 %3, 194
  %i.bh = load i32, ptr @hf_scsi_osd_request_nonce, align 4
  %i.bi = call ptr @proto_tree_add_item(ptr noundef %i.bd, i32 noundef %i.bh, ptr noundef %0, i32 noundef %i.bg, i32 noundef 12, i32 noundef 0) ; 0 uses
  %i.bj = add i32 %3, 206
  %i.bk = load i32, ptr @hf_scsi_osd_diicvo, align 4
  %i.bl = call ptr @proto_tree_add_item(ptr noundef %i.bd, i32 noundef %i.bk, ptr noundef %0, i32 noundef %i.bj, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bm = add i32 %3, 210
  %i.bn = load i32, ptr @hf_scsi_osd_doicvo, align 4
  %i.bo = call ptr @proto_tree_add_item(ptr noundef %i.bd, i32 noundef %i.bn, ptr noundef %0, i32 noundef %i.bm, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bp = add i32 %3, 226
  br label %bb.l

bb.l:                                             ; preds = %dissect_osd2_cdb_continuation_length.exit, %bb.a
  %.0114 = phi i32 [ %i.bp, %dissect_osd2_cdb_continuation_length.exit ], [ %3, %bb.a ] ; 7 uses
  %.not = xor i1 %4, true
  %or.cond3 = or i1 %5, %.not
  br i1 %or.cond3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call fastcc void @dissect_osd2_cdb_continuation(ptr noundef %1, ptr noundef %0, i32 noundef %.0114, ptr noundef %2, ptr noundef %7)
  call fastcc void @dissect_osd_attribute_data_out(ptr noundef %1, ptr noundef %0, ptr noundef %2, ptr noundef %7, ptr noundef %9)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %or.cond5 = or i1 %4, %5
  br i1 %or.cond5, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %.not.i124 = icmp eq ptr %7, null
  %.pre126 = load ptr, ptr %i.c, align 8          ; 6 uses
  br i1 %.not.i124, label %dissect_osd_attribute_data_in.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not14.i = icmp eq ptr %.pre126, null
  br i1 %.not14.i, label %dissect_osd_attribute_data_in.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr i8, ptr %.pre126, i64 64
  %i.br = load ptr, ptr %i.bq, align 8            ; 5 uses
  %.not15.i = icmp eq ptr %i.br, null
  br i1 %.not15.i, label %dissect_osd_attribute_data_in.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr i8, ptr %i.br, i64 2
  %i.bt = load i8, ptr %i.bs, align 2
  %cond.i = icmp eq i8 %i.bt, 3
  br i1 %cond.i, label %bb.s, label %dissect_osd_attribute_data_in.exit

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr i8, ptr %i.br, i64 12
  %i.bv = load i32, ptr %i.bu, align 4
  %.not16.i = icmp eq i32 %i.bv, 0
  br i1 %.not16.i, label %dissect_osd_attribute_data_in.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr i8, ptr %i.br, i64 16
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = getelementptr i8, ptr %i.br, i64 32
  %i.bz = load i8, ptr %i.by, align 4, !range !8, !noundef !9
  %i.ca = trunc nuw i8 %i.bz to i1
  call fastcc void @dissect_osd_attributes_list(ptr noundef %1, ptr noundef %0, i32 noundef %i.bx, ptr noundef %2, ptr noundef %9, i1 noundef zeroext %i.ca)
  %.pre = load ptr, ptr %i.c, align 8
  br label %dissect_osd_attribute_data_in.exit

dissect_osd_attribute_data_in.exit:               ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %i.cb = phi ptr [ %.pre126, %bb.o ], [ null, %bb.p ], [ %.pre126, %bb.q ], [ %.pre126, %bb.r ], [ %.pre126, %bb.s ], [ %.pre, %bb.t ]
  %i.cc = getelementptr i8, ptr %i.cb, i64 24
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.0114)
  %spec.select = call i32 @llvm.umin.i32(i32 %i.ce, i32 %i.cd) ; 2 uses
  %i.cf = icmp ult i32 %spec.select, 12
  br i1 %i.cf, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %dissect_osd_attribute_data_in.exit
  %i.cg = call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %.0114)
  %i.ch = add i32 %spec.select, -8
  %i.ci = zext i32 %i.ch to i64
  %spec.select120 = call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.ci) ; 2 uses
  %i.cj = load i32, ptr @hf_scsi_osd_additional_length, align 4
  %i.ck = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cj, ptr noundef %0, i32 noundef %.0114, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.cl = add i32 %.0114, 11
  %i.cm = load i32, ptr @hf_scsi_osd2_object_descriptor_format, align 4
  %i.cn = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %2, i32 noundef %i.cm, ptr noundef %0, i32 noundef %i.cl, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b)
  %i.co = load i8, ptr %i.b, align 1
  %.not119 = icmp eq i8 %i.co, 33
  br i1 %.not119, label %.preheader, label %bb.v

.preheader:                                       ; preds = %bb.u
  %i.cp = add i32 %.0114, 8
  %i.cq = zext i32 %i.cp to i64
  %i.cr = icmp samesign ugt i64 %spec.select120, %i.cq
  br i1 %i.cr, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cs = add i32 %.0114, 12
  %10 = trunc nuw i64 %spec.select120 to i32
  br label %.lr.ph

bb.v:                                             ; preds = %bb.u
  %i.ct = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.cn, ptr noundef nonnull @ei_osd2_invalid_object_descriptor_format) ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1125 = phi i32 [ %i.cw, %.lr.ph ], [ %i.cs, %.lr.ph.preheader ] ; 3 uses
  %i.cu = load i32, ptr @hf_scsi_osd_user_object_id, align 4
  %i.cv = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cu, ptr noundef %0, i32 noundef %.1125, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.cw = add i32 %.1125, 8
  %i.cx = add i32 %.1125, 4
  %11 = icmp ult i32 %i.cx, %10
  br i1 %11, label %.lr.ph, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %dissect_osd_attribute_data_in.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %bb.n
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_osd_option(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load i32, ptr @hf_scsi_osd_option, align 4
  %i.c = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.d = load i32, ptr @ett_osd_option, align 4
  %i.e = call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 4 uses
  %i.f = load i32, ptr @hf_scsi_osd_option_dpo, align 4
  %i.g = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = load i8, ptr %i.a, align 1
  %i.i = and i8 %i.h, 16
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.e, ptr noundef nonnull @.str.279)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load i32, ptr @hf_scsi_osd_option_fua, align 4
  %i.k = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.j, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.l = load i8, ptr %i.a, align 1
  %i.m = and i8 %i.l, 8
  %.not11 = icmp eq i8 %i.m, 0
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.e, ptr noundef nonnull @.str.280)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_osd_attribute_parameters(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @ett_osd_attribute_parameters, align 4
  %i.b = tail call ptr @proto_tree_add_subtree(ptr noundef %3, ptr noundef %1, i32 noundef %2, i32 noundef 28, i32 noundef %i.a, ptr noundef null, ptr noundef nonnull @.str.281) ; 26 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %4, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not119 = icmp eq ptr %i.d, null
  br i1 %.not119, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8              ; 9 uses
  %.not120 = icmp eq ptr %i.f, null
  br i1 %.not120, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.f, i64 2
  %i.h = load i8, ptr %i.g, align 2
  %i.i = getelementptr i8, ptr %i.f, i64 32
  %i.j = load i8, ptr %i.i, align 4, !range !8, !noundef !9
  %i.k = trunc nuw i8 %i.j to i1                  ; 4 uses
  switch i8 %i.h, label %bb.w [
    i8 1, label %bb.e
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %i.k, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr @hf_scsi_osd_set_attributes_page, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.l, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.n = add i32 %2, 4
  %i.o = load i32, ptr @hf_scsi_osd_set_attribute_number, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.o, ptr noundef %1, i32 noundef %i.n, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.q = add i32 %2, 8
  %i.r = load i32, ptr @hf_scsi_osd_set_attribute_length, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.r, ptr noundef %1, i32 noundef %i.q, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.t = add i32 %2, 12
  %i.u = load i32, ptr @hf_scsi_osd2_set_attribute_value, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.u, ptr noundef %1, i32 noundef %i.t, i32 noundef 18, i32 noundef 0) ; 0 uses
  br label %bb.w

bb.g:                                             ; preds = %bb.d
  %i.w = load i32, ptr @hf_scsi_osd_get_attributes_page, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.w, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.y = add i32 %2, 4
  %i.z = load i32, ptr @hf_scsi_osd_get_attributes_allocation_length, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.z, ptr noundef %1, i32 noundef %i.y, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ab = add i32 %2, 8
  %i.ac = load i32, ptr @hf_scsi_osd_retrieved_attributes_offset, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.ac, ptr noundef %1, i32 noundef %i.ab, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ae = add i32 %2, 12
  %i.af = load i32, ptr @hf_scsi_osd_set_attributes_page, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.af, ptr noundef %1, i32 noundef %i.ae, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ah = add i32 %2, 16
  %i.ai = load i32, ptr @hf_scsi_osd_set_attribute_number, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.ai, ptr noundef %1, i32 noundef %i.ah, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ak = add i32 %2, 20
  %i.al = load i32, ptr @hf_scsi_osd_set_attribute_length, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.al, ptr noundef %1, i32 noundef %i.ak, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.an = add i32 %2, 24
  %i.ao = load i32, ptr @hf_scsi_osd_set_attributes_offset, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.ao, ptr noundef %1, i32 noundef %i.an, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.w

bb.h:                                             ; preds = %bb.d
  %i.aq = load i32, ptr @hf_scsi_osd_get_attributes_list_length, align 4
  %i.ar = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.aq, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.as = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %2)
  %i.at = getelementptr i8, ptr %i.f, i64 4       ; 2 uses
  store i32 %i.as, ptr %i.at, align 4
  %i.au = add i32 %2, 4                           ; 5 uses
  %i.av = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.au) ; 7 uses
  %i.aw = getelementptr i8, ptr %i.f, i64 8       ; 4 uses
  store i32 %i.av, ptr %i.aw, align 4
  %i.ax = load i32, ptr @hf_scsi_osd_get_attributes_list_offset, align 4 ; 4 uses
  %.not.i = icmp eq i32 %i.av, -1
  br i1 %.not.i, label %dissect_osd_offset.exit.thread140, label %bb.i

dissect_osd_offset.exit.thread140:                ; preds = %bb.h
  %i.ay = tail call ptr @proto_tree_add_uint(ptr noundef %i.b, i32 noundef %i.ax, ptr noundef %1, i32 noundef %i.au, i32 noundef 4, i32 noundef -1) ; 0 uses
  br label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.az = lshr i32 %i.av, 28                      ; 3 uses
  br i1 %i.k, label %bb.j, label %dissect_osd_offset.exit.thread142

dissect_osd_offset.exit.thread142:                ; preds = %bb.i
  %i.ba = shl i32 %i.av, %i.az
  %i.bb = shl i32 %i.ba, 8                        ; 2 uses
  %i.bc = tail call ptr @proto_tree_add_uint(ptr noundef %i.b, i32 noundef %i.ax, ptr noundef %1, i32 noundef %i.au, i32 noundef 4, i32 noundef %i.bb) ; 0 uses
  store i32 %i.bb, ptr %i.aw, align 4
  br label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bd = and i32 %i.av, 268435455                ; 2 uses
  %.not34.i = icmp sgt i32 %i.av, -1
  br i1 %.not34.i, label %dissect_osd_offset.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.neg.i = or i32 %i.az, -8                      ; 2 uses
  %i.be = icmp samesign ult i32 %.neg.i, -5
  %i.bf = icmp ne i32 %i.bd, 268435455
  %or.cond.i = and i1 %i.bf, %i.be
  br i1 %or.cond.i, label %dissect_osd_offset.exit.thread, label %dissect_osd_offset.exit

dissect_osd_offset.exit.thread:                   ; preds = %bb.k
  %i.bg = tail call ptr @proto_tree_add_uint(ptr noundef %i.b, i32 noundef %i.ax, ptr noundef %1, i32 noundef %i.au, i32 noundef 4, i32 noundef %i.av)
  %i.bh = tail call ptr @expert_add_info(ptr noundef %0, ptr noundef %i.bg, ptr noundef nonnull @ei_osd2_invalid_offset) ; 0 uses
  br label %.sink.split

dissect_osd_offset.exit:                          ; preds = %bb.j, %bb.k
  %.031.i = phi i32 [ %.neg.i, %bb.k ], [ %i.az, %bb.j ]
  %i.bi = add nsw i32 %.031.i, 8
  %i.bj = shl i32 %i.bd, %i.bi                    ; 3 uses
  %i.bk = tail call ptr @proto_tree_add_uint(ptr noundef %i.b, i32 noundef %i.ax, ptr noundef %1, i32 noundef %i.au, i32 noundef 4, i32 noundef %i.bj) ; 0 uses
  store i32 %i.bj, ptr %i.aw, align 4
  %i.bl = icmp eq i32 %i.bj, -1
  br i1 %i.bl, label %bb.l, label %bb.m

.sink.split:                                      ; preds = %dissect_osd_offset.exit.thread, %dissect_osd_offset.exit.thread140
  store i32 -1, ptr %i.aw, align 4
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %dissect_osd_offset.exit
  store i32 0, ptr %i.at, align 4
  br label %bb.m

bb.m:                                             ; preds = %dissect_osd_offset.exit.thread142, %bb.l, %dissect_osd_offset.exit
  %i.bm = add i32 %2, 8                           ; 2 uses
  %i.bn = load i32, ptr @hf_scsi_osd_get_attributes_allocation_length, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.bn, ptr noundef %1, i32 noundef %i.bm, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bp = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.bm)
  %i.bq = getelementptr i8, ptr %i.f, i64 12      ; 2 uses
  store i32 %i.bp, ptr %i.bq, align 4
  %i.br = add i32 %2, 12                          ; 5 uses
  %i.bs = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.br) ; 7 uses
  %i.bt = getelementptr i8, ptr %i.f, i64 16      ; 4 uses
  store i32 %i.bs, ptr %i.bt, align 4
  %i.bu = load i32, ptr @hf_scsi_osd_retrieved_attributes_offset, align 4 ; 4 uses
  %.not.i121 = icmp eq i32 %i.bs, -1
  br i1 %.not.i121, label %dissect_osd_offset.exit129.thread145, label %bb.n

dissect_osd_offset.exit129.thread145:             ; preds = %bb.m
  %i.bv = tail call ptr @proto_tree_add_uint(ptr noundef %i.b, i32 noundef %i.bu, ptr noundef %1, i32 noundef %i.br, i32 noundef 4, i32 noundef -1) ; 0 uses
  br label %.sink.split160
end_hunk_1
