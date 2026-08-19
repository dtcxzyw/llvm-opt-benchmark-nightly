inline.NumInlined: 18
inline.NumDeleted: 6
begin_hunk_0_@dissect_mbrtu_tcp
define internal i32 @dissect_mbrtu_tcp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef 0, i32 noundef 5)
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr @mbrtu_desegment, align 1, !range !6, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  tail call void @tcp_dissect_pdus(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %i.e, i32 noundef 5, ptr noundef nonnull @get_mbrtu_pdu_len, ptr noundef nonnull @dissect_mbrtu_pdu, ptr noundef %3)
  %i.f = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ %i.f, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as_with_preference(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_or_create_conversation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_list_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare void @wmem_list_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_list_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_list_frame_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_list_frame_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @p_add_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @p_get_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_modbus_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext range(i8 0, -128) %3, i32 noundef %4, i32 noundef range(i32 -2, -2147483648) %5, i32 noundef %6, i16 noundef zeroext %7, i16 noundef zeroext %8) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %4) ; 2 uses
  %i.b = icmp slt i32 %4, 0
  %i.c = sub nsw i32 0, %4
  %i.d = icmp eq i32 %5, %i.c
  %or.cond195 = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond195, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %5, %i.a
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @hf_modbus_data, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef %4, i32 noundef %i.a, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.g = zext nneg i8 %3 to i32
  switch i8 %3, label %bb.g [
    i8 16, label %bb.e
    i8 4, label %bb.e
    i8 3, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.h = and i32 %5, 3
  %.not190 = icmp ne i32 %i.h, 0
  %i.i = add i32 %6, -1
  %or.cond9 = icmp ult i32 %i.i, 3
  %or.cond = and i1 %.not190, %or.cond9
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr @hf_modbus_data, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef %4, i32 noundef %5, i32 noundef 0)
  %i.l = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.k, ptr noundef nonnull @ei_modbus_data_decode) ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.m = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %4, i32 noundef %5) ; 31 uses
  switch i8 %3, label %bb.aa [
    i8 1, label %bb.h
    i8 2, label %bb.h
    i8 15, label %bb.h
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 6, label %bb.n
    i8 16, label %bb.n
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g
  %i.n = icmp sgt i32 %5, 0
  br i1 %i.n, label %.lr.ph246, label %.loopexit

.lr.ph246:                                        ; preds = %bb.h
  %i.o = zext i16 %7 to i32
  %i.p = zext i16 %8 to i32
  %invariant.op = add nuw nsw i32 %i.o, %i.p
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph246, %bb.m
  %.0245 = phi i16 [ %7, %.lr.ph246 ], [ %i.aj, %bb.m ]
  %.0183244 = phi i32 [ 0, %.lr.ph246 ], [ %i.am, %bb.m ] ; 4 uses
  %i.q = tail call zeroext i8 @tvb_get_uint8(ptr noundef %i.m, i32 noundef %.0183244)
  %i.r = zext i8 %i.q to i32
  %i.s = shl i32 %.0183244, 3
  %i.t = or disjoint i32 %i.s, 7
  br label %bb.j

bb.j:                                             ; preds = %proto_item_set_generated.exit, %bb.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %proto_item_set_generated.exit ], [ 0, %bb.i ] ; 4 uses
  %.1243 = phi i16 [ %i.aj, %proto_item_set_generated.exit ], [ %.0245, %bb.i ] ; 2 uses
  %i.u = load i32, ptr @ett_bit, align 4
  %i.v = zext i16 %.1243 to i32                   ; 2 uses
  %i.w = lshr i32 %i.r, %indvars.iv
  %i.x = and i32 %i.w, 1
  %i.y = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %i.m, i32 noundef %.0183244, i32 noundef 1, i32 noundef %i.u, ptr noundef null, ptr noundef nonnull @.str.266, i32 noundef %i.v, i32 noundef %i.x) ; 2 uses
  %i.z = load i32, ptr @hf_modbus_bitnum, align 4
  %i.aa = tail call ptr @proto_tree_add_uint(ptr noundef %i.y, i32 noundef %i.z, ptr noundef %i.m, i32 noundef 0, i32 noundef 0, i32 noundef %i.v) ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.ac, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr i8, ptr %i.ac, i64 28     ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = or i32 %i.ae, 2
  store i32 %i.af, ptr %i.ad, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.j, %bb.k, %bb.l
  %i.ag = load i32, ptr @hf_modbus_bitval, align 4
  %i.ah = sub nuw nsw i32 %i.t, %indvars.iv
  %i.ai = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.y, i32 noundef %i.ag, ptr noundef %i.m, i32 noundef %i.ah, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aj = add i16 %.1243, 1                       ; 3 uses
  %i.ak = zext i16 %i.aj to i32
  %.not191 = icmp samesign ugt i32 %invariant.op, %i.ak
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %i.al = icmp samesign ult i32 %indvars.iv, 7
  %or.cond247 = select i1 %.not191, i1 %i.al, i1 false
  br i1 %or.cond247, label %bb.j, label %bb.m, !llvm.loop !16

bb.m:                                             ; preds = %proto_item_set_generated.exit
  %i.am = add nuw nsw i32 %.0183244, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.am, %5
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !17

bb.n:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  %i.an = icmp sgt i32 %5, 0
  br i1 %i.an, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.n
  switch i32 %6, label %.loopexit [
    i32 0, label %.lr.ph.split.us
    i32 4, label %.lr.ph.split.us217
    i32 1, label %.lr.ph.split.us222
    i32 5, label %.lr.ph.split.us227
    i32 2, label %.lr.ph.split.us232
    i32 3, label %.lr.ph.split.us237
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph, %proto_item_set_generated.exit198.us
  %.3216.us = phi i16 [ %i.bd, %proto_item_set_generated.exit198.us ], [ %7, %.lr.ph ] ; 2 uses
  %.1184215.us = phi i32 [ %i.bc, %proto_item_set_generated.exit198.us ], [ %6, %.lr.ph ] ; 4 uses
  %i.ao = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %i.m, i32 noundef %.1184215.us)
  %i.ap = load i32, ptr @ett_register, align 4
  %i.aq = zext i16 %.3216.us to i32               ; 2 uses
  %i.ar = zext i16 %i.ao to i32                   ; 2 uses
  %i.as = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %i.m, i32 noundef %.1184215.us, i32 noundef 2, i32 noundef %i.ap, ptr noundef null, ptr noundef nonnull @.str.267, i32 noundef %i.aq, i32 noundef %i.ar) ; 2 uses
  %i.at = load i32, ptr @hf_modbus_regnum16, align 4
  %i.au = tail call ptr @proto_tree_add_uint(ptr noundef %i.as, i32 noundef %i.at, ptr noundef %i.m, i32 noundef 0, i32 noundef 0, i32 noundef %i.aq) ; 2 uses
  %.not.i196.us = icmp eq ptr %i.au, null
  br i1 %.not.i196.us, label %proto_item_set_generated.exit198.us, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.us
  %i.av = getelementptr i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not5.i197.us = icmp eq ptr %i.aw, null
  br i1 %.not5.i197.us, label %proto_item_set_generated.exit198.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr i8, ptr %i.aw, i64 28     ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = or i32 %i.ay, 2
  store i32 %i.az, ptr %i.ax, align 4
  br label %proto_item_set_generated.exit198.us

proto_item_set_generated.exit198.us:              ; preds = %bb.p, %bb.o, %.lr.ph.split.us
  %i.ba = load i32, ptr @hf_modbus_regval_uint16, align 4
  %i.bb = tail call ptr @proto_tree_add_uint(ptr noundef %i.as, i32 noundef %i.ba, ptr noundef %i.m, i32 noundef %.1184215.us, i32 noundef 2, i32 noundef %i.ar) ; 0 uses
  %i.bc = add i32 %.1184215.us, 2                 ; 2 uses
  %i.bd = add i16 %.3216.us, 1
  %i.be = icmp slt i32 %i.bc, %5
  br i1 %i.be, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !18

.lr.ph.split.us217:                               ; preds = %.lr.ph, %proto_item_set_generated.exit201.us
  %.3216.us218 = phi i16 [ %i.bu, %proto_item_set_generated.exit201.us ], [ %7, %.lr.ph ] ; 2 uses
  %.1184215.us219 = phi i32 [ %i.bt, %proto_item_set_generated.exit201.us ], [ 0, %.lr.ph ] ; 4 uses
  %i.bf = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %i.m, i32 noundef %.1184215.us219)
  %i.bg = load i32, ptr @ett_register, align 4
  %i.bh = zext i16 %.3216.us218 to i32            ; 2 uses
  %i.bi = sext i16 %i.bf to i32                   ; 2 uses
  %i.bj = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %i.m, i32 noundef %.1184215.us219, i32 noundef 2, i32 noundef %i.bg, ptr noundef null, ptr noundef nonnull @.str.268, i32 noundef %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bk = load i32, ptr @hf_modbus_regnum16, align 4
  %i.bl = tail call ptr @proto_tree_add_uint(ptr noundef %i.bj, i32 noundef %i.bk, ptr noundef %i.m, i32 noundef 0, i32 noundef 0, i32 noundef %i.bh) ; 2 uses
  %.not.i199.us = icmp eq ptr %i.bl, null
  br i1 %.not.i199.us, label %proto_item_set_generated.exit201.us, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.us217
  %i.bm = getelementptr i8, ptr %i.bl, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not5.i200.us = icmp eq ptr %i.bn, null
  br i1 %.not5.i200.us, label %proto_item_set_generated.exit201.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr i8, ptr %i.bn, i64 28     ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = or i32 %i.bp, 2
  store i32 %i.bq, ptr %i.bo, align 4
  br label %proto_item_set_generated.exit201.us

proto_item_set_generated.exit201.us:              ; preds = %bb.r, %bb.q, %.lr.ph.split.us217
  %i.br = load i32, ptr @hf_modbus_regval_int16, align 4
  %i.bs = tail call ptr @proto_tree_add_int(ptr noundef %i.bj, i32 noundef %i.br, ptr noundef %i.m, i32 noundef %.1184215.us219, i32 noundef 2, i32 noundef %i.bi) ; 0 uses
  %i.bt = add i32 %.1184215.us219, 2              ; 2 uses
  %i.bu = add i16 %.3216.us218, 1
  %i.bv = icmp slt i32 %i.bt, %5
  br i1 %i.bv, label %.lr.ph.split.us217, label %.loopexit, !llvm.loop !18

.lr.ph.split.us222:                               ; preds = %.lr.ph, %proto_item_set_generated.exit204.us
  %.3216.us223 = phi i16 [ %i.ck, %proto_item_set_generated.exit204.us ], [ %7, %.lr.ph ] ; 2 uses
  %.1184215.us224 = phi i32 [ %i.cj, %proto_item_set_generated.exit204.us ], [ 0, %.lr.ph ] ; 4 uses
  %i.bw = tail call i32 @tvb_get_ntohl(ptr noundef %i.m, i32 noundef %.1184215.us224) ; 2 uses
  %i.bx = load i32, ptr @ett_register, align 4
  %i.by = zext i16 %.3216.us223 to i32            ; 2 uses
  %i.bz = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %i.m, i32 noundef %.1184215.us224, i32 noundef 4, i32 noundef %i.bx, ptr noundef null, ptr noundef nonnull @.str.269, i32 noundef %i.by, i32 noundef %i.bw) ; 2 uses
  %i.ca = load i32, ptr @hf_modbus_regnum32, align 4
  %i.cb = tail call ptr @proto_tree_add_uint(ptr noundef %i.bz, i32 noundef %i.ca, ptr noundef %i.m, i32 noundef 0, i32 noundef 0, i32 noundef %i.by) ; 2 uses
  %.not.i202.us = icmp eq ptr %i.cb, null
  br i1 %.not.i202.us, label %proto_item_set_generated.exit204.us, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.us222
  %i.cc = getelementptr i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not5.i203.us = icmp eq ptr %i.cd, null
  br i1 %.not5.i203.us, label %proto_item_set_generated.exit204.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr i8, ptr %i.cd, i64 28     ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = or i32 %i.cf, 2
  store i32 %i.cg, ptr %i.ce, align 4
  br label %proto_item_set_generated.exit204.us

proto_item_set_generated.exit204.us:              ; preds = %bb.t, %bb.s, %.lr.ph.split.us222
  %i.ch = load i32, ptr @hf_modbus_regval_uint32, align 4
  %i.ci = tail call ptr @proto_tree_add_uint(ptr noundef %i.bz, i32 noundef %i.ch, ptr noundef %i.m, i32 noundef %.1184215.us224, i32 noundef 4, i32 noundef %i.bw) ; 0 uses
  %i.cj = add i32 %.1184215.us224, 4              ; 2 uses
  %i.ck = add i16 %.3216.us223, 2
  %i.cl = icmp slt i32 %i.cj, %5
  br i1 %i.cl, label %.lr.ph.split.us222, label %.loopexit, !llvm.loop !18

.lr.ph.split.us227:                               ; preds = %.lr.ph, %proto_item_set_generated.exit207.us
  %.3216.us228 = phi i16 [ %i.da, %proto_item_set_generated.exit207.us ], [ %7, %.lr.ph ] ; 2 uses
  %.1184215.us229 = phi i32 [ %i.cz, %proto_item_set_generated.exit207.us ], [ 0, %.lr.ph ] ; 4 uses
  %i.cm = tail call i32 @tvb_get_ntohl(ptr noundef %i.m, i32 noundef %.1184215.us229) ; 2 uses
  %i.cn = load i32, ptr @ett_register, align 4
  %i.co = zext i16 %.3216.us228 to i32            ; 2 uses
  %i.cp = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %i.m, i32 noundef %.1184215.us229, i32 noundef 4, i32 noundef %i.cn, ptr noundef null, ptr noundef nonnull @.str.270, i32 noundef %i.co, i32 noundef %i.cm) ; 2 uses
  %i.cq = load i32, ptr @hf_modbus_regnum32, align 4
  %i.cr = tail call ptr @proto_tree_add_uint(ptr noundef %i.cp, i32 noundef %i.cq, ptr noundef %i.m, i32 noundef 0, i32 noundef 0, i32 noundef %i.co) ; 2 uses
  %.not.i205.us = icmp eq ptr %i.cr, null
  br i1 %.not.i205.us, label %proto_item_set_generated.exit207.us, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.us227
  %i.cs = getelementptr i8, ptr %i.cr, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not5.i206.us = icmp eq ptr %i.ct, null
  br i1 %.not5.i206.us, label %proto_item_set_generated.exit207.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr i8, ptr %i.ct, i64 28     ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = or i32 %i.cv, 2
  store i32 %i.cw, ptr %i.cu, align 4
  br label %proto_item_set_generated.exit207.us

proto_item_set_generated.exit207.us:              ; preds = %bb.v, %bb.u, %.lr.ph.split.us227
  %i.cx = load i32, ptr @hf_modbus_regval_int32, align 4
  %i.cy = tail call ptr @proto_tree_add_int(ptr noundef %i.cp, i32 noundef %i.cx, ptr noundef %i.m, i32 noundef %.1184215.us229, i32 noundef 4, i32 noundef %i.cm) ; 0 uses
  %i.cz = add i32 %.1184215.us229, 4              ; 2 uses
  %i.da = add i16 %.3216.us228, 2
  %i.db = icmp slt i32 %i.cz, %5
  br i1 %i.db, label %.lr.ph.split.us227, label %.loopexit, !llvm.loop !18

.lr.ph.split.us232:                               ; preds = %.lr.ph, %proto_item_set_generated.exit210.us
  %.3216.us233 = phi i16 [ %i.dr, %proto_item_set_generated.exit210.us ], [ %7, %.lr.ph ] ; 2 uses
  %.1184215.us234 = phi i32 [ %i.dq, %proto_item_set_generated.exit210.us ], [ 0, %.lr.ph ] ; 4 uses
  %i.dc = tail call float @tvb_get_ntohieee_float(ptr noundef %i.m, i32 noundef %.1184215.us234) ; 2 uses
  %i.dd = load i32, ptr @ett_register, align 4
  %i.de = zext i16 %.3216.us233 to i32            ; 2 uses
  %i.df = fpext float %i.dc to double
  %i.dg = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %i.m, i32 noundef %.1184215.us234, i32 noundef 4, i32 noundef %i.dd, ptr noundef null, ptr noundef nonnull @.str.271, i32 noundef %i.de, double noundef %i.df) ; 2 uses
  %i.dh = load i32, ptr @hf_modbus_regnum32, align 4
  %i.di = tail call ptr @proto_tree_add_uint(ptr noundef %i.dg, i32 noundef %i.dh, ptr noundef %i.m, i32 noundef 0, i32 noundef 0, i32 noundef %i.de) ; 2 uses
  %.not.i208.us = icmp eq ptr %i.di, null
  br i1 %.not.i208.us, label %proto_item_set_generated.exit210.us, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us232
  %i.dj = getelementptr i8, ptr %i.di, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %.not5.i209.us = icmp eq ptr %i.dk, null
  br i1 %.not5.i209.us, label %proto_item_set_generated.exit210.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr i8, ptr %i.dk, i64 28     ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = or i32 %i.dm, 2
  store i32 %i.dn, ptr %i.dl, align 4
  br label %proto_item_set_generated.exit210.us

proto_item_set_generated.exit210.us:              ; preds = %bb.x, %bb.w, %.lr.ph.split.us232
  %i.do = load i32, ptr @hf_modbus_regval_ieee_float, align 4
  %i.dp = tail call ptr @proto_tree_add_float(ptr noundef %i.dg, i32 noundef %i.do, ptr noundef %i.m, i32 noundef %.1184215.us234, i32 noundef 4, float noundef %i.dc) ; 0 uses
  %i.dq = add i32 %.1184215.us234, 4              ; 2 uses
  %i.dr = add i16 %.3216.us233, 2
  %i.ds = icmp slt i32 %i.dq, %5
  br i1 %i.ds, label %.lr.ph.split.us232, label %.loopexit, !llvm.loop !18

.lr.ph.split.us237:                               ; preds = %.lr.ph, %proto_item_set_generated.exit213.us
  %.3216.us238 = phi i16 [ %i.ep, %proto_item_set_generated.exit213.us ], [ %7, %.lr.ph ] ; 2 uses
  %.1184215.us239 = phi i32 [ %i.eo, %proto_item_set_generated.exit213.us ], [ 0, %.lr.ph ] ; 5 uses
  %i.dt = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %i.m, i32 noundef %.1184215.us239)
end_hunk_0
