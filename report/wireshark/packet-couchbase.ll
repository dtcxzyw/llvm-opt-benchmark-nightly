Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-couchbase?download=true
inline.NumInlined: 63
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_couchbase:bb.a
  br label %bb.g

is_flex_encoded.exit.i:                           ; preds = %get_flex_framing_extras_length.exit.i
  %i.ah = load i32, ptr @hf_keylength, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.ah, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %is_flex_encoded.exit.i, %bb.f
  %i.aj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  switch i8 %i.aj, label %is_flex_encoded.exit.i.i [
    i8 24, label %bb.h
    i8 8, label %bb.h
    i8 -126, label %bb.h
    i8 -125, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  %i.ak = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.al = zext i8 %i.ak to i16
  br label %get_key_length.exit.i

is_flex_encoded.exit.i.i:                         ; preds = %bb.g
  %i.am = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2)
  br label %get_key_length.exit.i

get_key_length.exit.i:                            ; preds = %is_flex_encoded.exit.i.i, %bb.h
  %.0.i85.i = phi i16 [ %i.al, %bb.h ], [ %i.am, %is_flex_encoded.exit.i.i ]
  %i.an = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.ao = load i32, ptr @hf_extlength, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.ao, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aq = load i32, ptr @hf_datatype, align 4
  %i.ar = load i32, ptr @ett_datatype, align 4
  %i.as = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.g, ptr noundef %0, i32 noundef 5, i32 noundef %i.aq, i32 noundef %i.ar, ptr noundef nonnull @datatype_vals, i32 noundef 0) ; 0 uses
  %i.at = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 6) ; 3 uses
  switch i8 %i.h, label %is_request_magic.exit.i [
    i8 -126, label %bb.i
    i8 8, label %bb.i
    i8 -128, label %bb.i
  ]

bb.i:                                             ; preds = %get_key_length.exit.i, %get_key_length.exit.i, %get_key_length.exit.i
  %i.au = load i32, ptr @hf_vbucket, align 4
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.au, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  switch i8 %i.o, label %bb.j [
    i8 -110, label %opcode_use_vbucket.exit.i
    i8 -69, label %opcode_use_vbucket.exit.i
    i8 -81, label %opcode_use_vbucket.exit.i
    i8 32, label %opcode_use_vbucket.exit.i
    i8 33, label %opcode_use_vbucket.exit.i
    i8 34, label %opcode_use_vbucket.exit.i
    i8 41, label %opcode_use_vbucket.exit.i
    i8 40, label %opcode_use_vbucket.exit.i
    i8 39, label %opcode_use_vbucket.exit.i
    i8 38, label %opcode_use_vbucket.exit.i
    i8 37, label %opcode_use_vbucket.exit.i
    i8 36, label %opcode_use_vbucket.exit.i
    i8 35, label %opcode_use_vbucket.exit.i
    i8 31, label %opcode_use_vbucket.exit.i
    i8 27, label %opcode_use_vbucket.exit.i
    i8 11, label %opcode_use_vbucket.exit.i
    i8 10, label %opcode_use_vbucket.exit.i
    i8 7, label %opcode_use_vbucket.exit.i
    i8 -121, label %opcode_use_vbucket.exit.i
    i8 -123, label %opcode_use_vbucket.exit.i
    i8 -122, label %opcode_use_vbucket.exit.i
    i8 -119, label %opcode_use_vbucket.exit.i
  ]

bb.j:                                             ; preds = %bb.i
  %i.aw = zext i16 %i.at to i32                   ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.e, ptr noundef nonnull @.str.754, i32 noundef %i.aw)
  %i.ax = load ptr, ptr %i.a, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ax, i32 noundef 25, ptr noundef nonnull @.str.754, i32 noundef %i.aw)
  br label %opcode_use_vbucket.exit.i

is_request_magic.exit.i:                          ; preds = %get_key_length.exit.i
  %i.ay = load i32, ptr @hf_status, align 4
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.ay, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0)
  %.not.i = icmp eq i16 %i.at, 0
  br i1 %.not.i, label %opcode_use_vbucket.exit.i, label %bb.k

bb.k:                                             ; preds = %is_request_magic.exit.i
  %i.ba = zext i16 %i.at to i32
  %i.bb = load ptr, ptr %i.w, align 8
  %i.bc = tail call ptr @val_to_str_ext(ptr noundef %i.bb, i32 noundef %i.q, ptr noundef nonnull @client_opcode_vals_ext, ptr noundef nonnull @.str.756)
  %i.bd = load ptr, ptr %i.w, align 8
  %i.be = tail call ptr @val_to_str_ext(ptr noundef %i.bd, i32 noundef %i.ba, ptr noundef nonnull @status_vals_ext, ptr noundef nonnull @.str.757)
  %i.bf = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.az, ptr noundef nonnull @ei_warn_unknown_opcode, ptr noundef nonnull @.str.755, ptr noundef %i.bc, ptr noundef %i.be) ; 0 uses
  br label %opcode_use_vbucket.exit.i

opcode_use_vbucket.exit.i:                        ; preds = %bb.k, %is_request_magic.exit.i, %bb.j, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.bg = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 8)
  %i.bh = zext i8 %i.an to i32
  %i.bi = zext i16 %.0.i85.i to i32
  %i.bj = add nuw nsw i32 %.0.i.i, %i.bi
  %i.bk = add nuw nsw i32 %i.bj, %i.bh
  %i.bl = sub i32 %i.bg, %i.bk
  %i.bm = load i32, ptr @hf_value_length, align 4
  %i.bn = tail call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.bm, ptr noundef %0, i32 noundef 8, i32 noundef 0, i32 noundef %i.bl) ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %proto_item_set_generated.exit.i, label %bb.l

bb.l:                                             ; preds = %opcode_use_vbucket.exit.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.bp, null
  br i1 %.not5.i.i, label %proto_item_set_generated.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr i8, ptr %i.bp, i64 28     ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = or i32 %i.br, 2
  store i32 %i.bs, ptr %i.bq, align 4
  br label %proto_item_set_generated.exit.i

proto_item_set_generated.exit.i:                  ; preds = %bb.m, %bb.l, %opcode_use_vbucket.exit.i
  %i.bt = load i32, ptr @hf_total_bodylength, align 4
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.bt, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bv = load i32, ptr @hf_opaque, align 4
  %i.bw = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.bv, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bx = icmp eq i8 %i.o, -110
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %proto_item_set_generated.exit.i
  %i.by = load i32, ptr @hf_ttp, align 4
  %i.bz = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.by, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ca = load i32, ptr @hf_ttr, align 4
  %i.cb = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.ca, ptr noundef %0, i32 noundef 20, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_frame_header.exit

bb.o:                                             ; preds = %proto_item_set_generated.exit.i
  %i.cc = load i32, ptr @hf_cas, align 4
  %i.cd = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.cc, ptr noundef %0, i32 noundef 16, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %dissect_frame_header.exit

dissect_frame_header.exit:                        ; preds = %bb.n, %bb.o
  %i.ce = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 11 uses
  %i.cf = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  switch i8 %i.cf, label %get_flex_framing_extras_length.exit [
    i8 24, label %bb.p
    i8 8, label %bb.p
    i8 -126, label %bb.p
    i8 -125, label %bb.p
  ]

bb.p:                                             ; preds = %dissect_frame_header.exit, %dissect_frame_header.exit, %dissect_frame_header.exit, %dissect_frame_header.exit
  %i.cg = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  br label %get_flex_framing_extras_length.exit

get_flex_framing_extras_length.exit:              ; preds = %dissect_frame_header.exit, %bb.p
  %.0.i = phi i8 [ %i.cg, %bb.p ], [ 0, %dissect_frame_header.exit ] ; 2 uses
  %i.ch = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 18 uses
  %i.ci = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4) ; 24 uses
  %i.cj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  switch i8 %i.cj, label %is_flex_encoded.exit.i54 [
    i8 24, label %bb.q
    i8 8, label %bb.q
    i8 -126, label %bb.q
    i8 -125, label %bb.q
  ]

bb.q:                                             ; preds = %get_flex_framing_extras_length.exit, %get_flex_framing_extras_length.exit, %get_flex_framing_extras_length.exit, %get_flex_framing_extras_length.exit
  %i.ck = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.cl = zext i8 %i.ck to i16
  br label %get_key_length.exit

is_flex_encoded.exit.i54:                         ; preds = %get_flex_framing_extras_length.exit
  %i.cm = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2)
  br label %get_key_length.exit

get_key_length.exit:                              ; preds = %bb.q, %is_flex_encoded.exit.i54
  %.0.i53 = phi i16 [ %i.cl, %bb.q ], [ %i.cm, %is_flex_encoded.exit.i54 ] ; 8 uses
  %i.cn = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 8) ; 5 uses
  %i.co = zext i16 %.0.i53 to i32                 ; 9 uses
  %i.cp = zext i8 %i.ci to i32                    ; 16 uses
  %i.cq = zext i8 %.0.i to i32                    ; 102 uses
  %i.cr = add nuw nsw i32 %i.cp, %i.cq
  %i.cs = add nuw nsw i32 %i.cr, %i.co            ; 5 uses
  %i.ct = sub i32 %i.cn, %i.cs                    ; 24 uses
  %i.cu = icmp eq i8 %.0.i, 0
  br i1 %i.cu, label %dissect_frame_flex_info_section.exit, label %bb.r

bb.r:                                             ; preds = %get_key_length.exit
  switch i8 %i.ce, label %bb.aa [
    i8 -125, label %bb.s
    i8 -126, label %bb.s
    i8 8, label %bb.t
    i8 24, label %.lr.ph118.i.i
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.cv = load i32, ptr @hf_flex_extras, align 4
  %i.cw = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.cv, ptr noundef %0, i32 noundef 24, i32 noundef %i.cq, i32 noundef 0) ; 0 uses
  %i.cx = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.g, ptr noundef %1, ptr noundef nonnull @ei_warn_unknown_flex_unsupported, ptr noundef %0, i32 noundef 24, i32 noundef %i.cq, ptr noundef nonnull @.str.758) ; 0 uses
  br label %dissect_frame_flex_info_section.exit

bb.t:                                             ; preds = %bb.r
  br label %.lr.ph118.i.i

.lr.ph118.i.i:                                    ; preds = %bb.t, %bb.r
  %i.cy = phi ptr [ @flex_frame_request_dissect, %bb.t ], [ @flex_frame_response_dissect, %bb.r ] ; 3 uses
  %.0.i2631.i = phi i1 [ true, %bb.t ], [ false, %bb.r ]
  %.in.i = phi ptr [ @hf_flex_frame_id_req_esc, %bb.t ], [ @hf_flex_frame_id_res_esc, %bb.r ]
  %i.cz = load i32, ptr %.in.i, align 4
  %i.da = load i32, ptr @hf_flex_frame_len, align 4
  %hf_flex_frame_id_req.val.i.i = load i32, ptr @hf_flex_frame_id_req, align 4
  %hf_flex_frame_id_res.val.i.i = load i32, ptr @hf_flex_frame_id_res, align 4
  %i.db = load i32, ptr @hf_flex_extras, align 4
  %i.dc = tail call ptr @proto_tree_add_uint(ptr noundef %i.g, i32 noundef %i.db, ptr noundef %0, i32 noundef 24, i32 noundef %i.cq, i32 noundef %i.cq) ; 0 uses
  %spec.select = select i1 %.0.i2631.i, i32 %hf_flex_frame_id_req.val.i.i, i32 %hf_flex_frame_id_res.val.i.i
  %4 = getelementptr i8, ptr %i.cy, i64 8
  %5 = load ptr, ptr %4, align 8                  ; 2 uses
  %.not98110.i.i = icmp eq ptr %5, null
  br label %bb.u

bb.u:                                             ; preds = %bb.z, %.lr.ph118.i.i
  %.082117.i.i = phi i32 [ 0, %.lr.ph118.i.i ], [ %i.eq, %bb.z ] ; 2 uses
  %.083116.i.i = phi i32 [ %i.cq, %.lr.ph118.i.i ], [ %i.ep, %bb.z ]
  %.085115.i.i = phi i32 [ %i.da, %.lr.ph118.i.i ], [ %.186.i.i, %bb.z ]
  %.189114.i.i = phi i32 [ %spec.select, %.lr.ph118.i.i ], [ %.290.i.i, %bb.z ]
  %.092113.i.i = phi i32 [ 24, %.lr.ph118.i.i ], [ %i.em, %bb.z ] ; 8 uses
  %i.dd = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.092113.i.i) ; 3 uses
  %.not100.i.i = icmp eq i8 %i.dd, -1
  br i1 %.not100.i.i, label %.thread.i.i, label %bb.v

.thread.i.i:                                      ; preds = %bb.u
  %i.de = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.g, ptr noundef %1, ptr noundef nonnull @ei_warn_unknown_flex_unsupported, ptr noundef %0, i32 noundef %.092113.i.i, i32 noundef 1, ptr noundef nonnull @.str.760) ; 0 uses
  br label %dissect_frame_flex_info_section.exit

bb.v:                                             ; preds = %bb.u
  %i.df = lshr i8 %i.dd, 4                        ; 2 uses
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = and i8 %i.dd, 15                        ; 2 uses
  %i.di = zext nneg i8 %i.dh to i32
  %i.dj = icmp eq i8 %i.df, 15
  br i1 %i.dj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dk = add i32 %.092113.i.i, 1
  %i.dl = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dk)
  %i.dm = zext i8 %i.dl to i32
  %i.dn = add nuw nsw i32 %i.dm, 15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.290.i.i = phi i32 [ %i.cz, %bb.w ], [ %.189114.i.i, %bb.v ] ; 2 uses
  %.080.i.i = phi i32 [ %i.dn, %bb.w ], [ %i.dg, %bb.v ] ; 4 uses
  %.078.i.i = phi i32 [ 2, %bb.w ], [ 1, %bb.v ]  ; 3 uses
  %i.do = icmp eq i8 %i.dh, 15
  br i1 %i.do, label %bb.y, label %.lr.ph.preheader.i.i

bb.y:                                             ; preds = %bb.x
  %i.dp = add i32 %.092113.i.i, 1
  %i.dq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dp)
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nuw nsw i32 %i.dr, 15
  %i.dt = load i32, ptr @hf_flex_frame_len_esc, align 4
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.y, %bb.x
  %.186.i.i = phi i32 [ %i.dt, %bb.y ], [ %.085115.i.i, %bb.x ] ; 2 uses
  %.079.i.i = phi i32 [ %i.ds, %bb.y ], [ %i.di, %bb.x ] ; 6 uses
  %.077.i.i = phi i32 [ 2, %bb.y ], [ 1, %bb.x ]  ; 3 uses
  %i.du = load i32, ptr @hf_flex_extras_n, align 4
  %i.dv = add nuw nsw i32 %.079.i.i, 1
  %i.dw = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %i.g, i32 noundef %i.du, ptr noundef %0, i32 noundef %.092113.i.i, i32 noundef %i.dv, ptr noundef null, ptr noundef nonnull @.str.761, i32 noundef %.082117.i.i)
  %i.dx = load i32, ptr @ett_flex_frame_extras, align 4
  %i.dy = tail call ptr @proto_item_add_subtree(ptr noundef %i.dw, i32 noundef %i.dx) ; 4 uses
  %i.dz = tail call ptr @proto_tree_add_uint(ptr noundef %i.dy, i32 noundef %.290.i.i, ptr noundef %0, i32 noundef %.092113.i.i, i32 noundef %.078.i.i, i32 noundef %.080.i.i) ; 0 uses
  %i.ea = tail call ptr @proto_tree_add_uint(ptr noundef %i.dy, i32 noundef %.186.i.i, ptr noundef %0, i32 noundef %.092113.i.i, i32 noundef %.077.i.i, i32 noundef %.079.i.i) ; 0 uses
  %i.eb = add i32 %.092113.i.i, -1
  %i.ec = add i32 %i.eb, %.078.i.i
  %i.ed = add i32 %i.ec, %.077.i.i                ; 3 uses
  br i1 %.not98110.i.i, label %.critedge.i.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.preheader.i.i
  %6 = load i32, ptr %i.cy, align 16
  %7 = icmp eq i32 %6, %.080.i.i
  br i1 %7, label %.lr.ph.i._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i
  %.076111.i39.i = phi i32 [ %i.ee, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ]
  %i.ee = add i32 %.076111.i39.i, 1               ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr [16 x i8], ptr %i.cy, i64 %i.ef ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8            ; 2 uses
  %.not98.i.i = icmp eq ptr %i.ei, null
  br i1 %.not98.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !9

.lr.ph.i.i:                                       ; preds = %.lr.ph.i
  %i.ej = load i32, ptr %i.eg, align 16
  %i.ek = icmp eq i32 %i.ej, %.080.i.i
  br i1 %i.ek, label %.lr.ph.i._crit_edge.i, label %.lr.ph.i, !llvm.loop !9

.lr.ph.i._crit_edge.i:                            ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.lcssa.i = phi ptr [ %5, %.lr.ph.i.preheader.i ], [ %i.ei, %.lr.ph.i.i ]
  tail call void %.lcssa.i(ptr noundef %0, ptr noundef %i.dy, i32 noundef %i.ed, i32 noundef %.079.i.i), !inline_history !10
  br label %bb.z

.critedge.i.i:                                    ; preds = %.lr.ph.i, %.lr.ph.preheader.i.i
  %i.el = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.dy, ptr noundef %1, ptr noundef nonnull @ei_warn_unknown_flex_id, ptr noundef %0, i32 noundef %i.ed, i32 noundef %.079.i.i, ptr noundef nonnull @.str.762, i32 noundef %.080.i.i) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %.critedge.i.i, %.lr.ph.i._crit_edge.i
  %i.em = add i32 %i.ed, %.079.i.i
  %.neg80 = add i32 %.083116.i.i, 1
  %i.en = add nuw nsw i32 %.078.i.i, %.079.i.i
  %i.eo = add nuw nsw i32 %i.en, %.077.i.i
  %i.ep = sub i32 %.neg80, %i.eo                  ; 2 uses
  %i.eq = add i32 %.082117.i.i, 1
  %.not.i.i55 = icmp eq i32 %i.ep, 0
  br i1 %.not.i.i55, label %dissect_frame_flex_info_section.exit, label %bb.u, !llvm.loop !11

bb.aa:                                            ; preds = %bb.r
  %i.er = load i32, ptr @hf_flex_extras, align 4
  %i.es = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.er, ptr noundef %0, i32 noundef 24, i32 noundef %i.cq, i32 noundef 0) ; 0 uses
  %i.et = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.g, ptr noundef %1, ptr noundef nonnull @ei_warn_unknown_flex_unsupported, ptr noundef %0, i32 noundef 24, i32 noundef %i.cq, ptr noundef nonnull @.str.759) ; 0 uses
  br label %dissect_frame_flex_info_section.exit

dissect_frame_flex_info_section.exit:             ; preds = %bb.z, %get_key_length.exit, %bb.s, %.thread.i.i, %bb.aa
  %i.eu = add nuw nsw i32 %i.cq, 24               ; 106 uses
  switch i8 %i.ce, label %bb.gd [
    i8 -125, label %bb.ab
    i8 -126, label %bb.ad
    i8 -128, label %is_request_magic.exit.i56
    i8 8, label %is_request_magic.exit.i56
    i8 24, label %bb.am
    i8 -127, label %bb.am
  ]

bb.ab:                                            ; preds = %dissect_frame_flex_info_section.exit
  %i.ev = icmp eq i8 %i.ci, 0
  br i1 %i.ev, label %dissect_frame_extras.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ew = load i32, ptr @hf_extras, align 4
  %i.ex = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.ew, ptr noundef %0, i32 noundef range(i32 24, 280) %i.eu, i32 noundef %i.cp, i32 noundef 0)
  %i.ey = load i32, ptr @ett_extras, align 4
  %i.ez = tail call ptr @proto_item_add_subtree(ptr noundef %i.ex, i32 noundef %i.ey)
  %i.fa = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.ez, ptr noundef %1, ptr noundef nonnull @ei_warn_illegal_extras_length, ptr noundef %0, i32 noundef range(i32 24, 280) %i.eu, i32 noundef %i.cp, ptr noundef nonnull @.str.773) ; 0 uses
  br label %dissect_frame_extras.exit.thread

bb.ad:                                            ; preds = %dissect_frame_flex_info_section.exit
  %i.fb = icmp eq i8 %i.ci, 0
  br i1 %i.fb, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %cond.i.i = icmp eq i8 %i.ch, 1
  br i1 %cond.i.i, label %bb.af, label %dissect_frame_extras.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.fc = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.g, ptr noundef %1, ptr noundef nonnull @ei_warn_must_have_extras, ptr noundef %0, i32 noundef range(i32 24, 280) %i.eu, i32 noundef 0, ptr noundef nonnull @.str.774) ; 0 uses
  br label %dissect_frame_extras.exit.thread

bb.ag:                                            ; preds = %bb.ad
  %i.fd = load i32, ptr @hf_extras, align 4
  %i.fe = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.fd, ptr noundef %0, i32 noundef range(i32 24, 280) %i.eu, i32 noundef %i.cp, i32 noundef 0)
  %i.ff = load i32, ptr @ett_extras, align 4
  %i.fg = tail call ptr @proto_item_add_subtree(ptr noundef %i.fe, i32 noundef %i.ff) ; 5 uses
  %i.fh = icmp eq i8 %i.ch, 1
  br i1 %i.fh, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.fi = icmp ult i8 %i.ci, 16
  br i1 %i.fi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fj = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.fg, ptr noundef %1, ptr noundef nonnull @ei_warn_illegal_extras_length, ptr noundef %0, i32 noundef range(i32 24, 280) %i.eu, i32 noundef %i.cp, ptr noundef nonnull @.str.775) ; 0 uses
  br label %dissect_frame_extras.exit.thread

bb.aj:                                            ; preds = %bb.ah
  %i.fk = load i32, ptr @hf_server_extras_cccp_epoch, align 4
  %i.fl = tail call ptr @proto_tree_add_item(ptr noundef %i.fg, i32 noundef %i.fk, ptr noundef %0, i32 noundef range(i32 24, 280) %i.eu, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.fm = add nuw nsw i32 %i.cq, 32
  %i.fn = load i32, ptr @hf_server_extras_cccp_revno, align 4
  %i.fo = tail call ptr @proto_tree_add_item(ptr noundef %i.fg, i32 noundef %i.fn, ptr noundef %0, i32 noundef %i.fm, i32 noundef 8, i32 noundef 0) ; 0 uses
  %.not.i.i59 = icmp eq i8 %i.ci, 16
  br i1 %.not.i.i59, label %dissect_frame_extras.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fp = add nuw nsw i32 %i.cq, 48
  %i.fq = add nsw i32 %i.cp, -16
  %i.fr = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.fg, ptr noundef %1, ptr noundef nonnull @ei_warn_illegal_extras_length, ptr noundef %0, i32 noundef %i.fp, i32 noundef %i.fq, ptr noundef nonnull @.str.773) ; 0 uses
  br label %dissect_frame_extras.exit.thread

bb.al:                                            ; preds = %bb.ag
  %i.fs = load i32, ptr @hf_extras_unknown, align 4
  %i.ft = tail call ptr @proto_tree_add_item(ptr noundef %i.fg, i32 noundef %i.fs, ptr noundef %0, i32 noundef range(i32 24, 280) %i.eu, i32 noundef %i.cp, i32 noundef 0) ; 0 uses
  br label %dissect_frame_extras.exit.thread

bb.am:                                            ; preds = %dissect_frame_flex_info_section.exit, %dissect_frame_flex_info_section.exit
  br label %is_request_magic.exit.i56

is_request_magic.exit.i56:                        ; preds = %bb.am, %dissect_frame_flex_info_section.exit, %dissect_frame_flex_info_section.exit
  %.0.i.i57 = phi i1 [ false, %bb.am ], [ true, %dissect_frame_flex_info_section.exit ], [ true, %dissect_frame_flex_info_section.exit ] ; 34 uses
  %.not.i29.i = icmp eq i8 %i.ci, 0               ; 25 uses
  br i1 %.not.i29.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %is_request_magic.exit.i56
  %i.fu = load i32, ptr @hf_extras, align 4
  %i.fv = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.fu, ptr noundef %0, i32 noundef range(i32 24, 280) %i.eu, i32 noundef %i.cp, i32 noundef 0) ; 2 uses
  %i.fw = load i32, ptr @ett_extras, align 4
  %i.fx = tail call ptr @proto_item_add_subtree(ptr noundef %i.fv, i32 noundef %i.fw)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %is_request_magic.exit.i56
  %.0381.i.i = phi ptr [ %i.fx, %bb.an ], [ null, %is_request_magic.exit.i56 ] ; 99 uses
  %.0380.i.i = phi ptr [ %i.fv, %bb.an ], [ null, %is_request_magic.exit.i56 ]
  %i.fy = zext i8 %i.ch to i32                    ; 2 uses
  switch i8 %i.ch, label %bb.fz [
    i8 0, label %bb.ap
    i8 9, label %bb.ap
    i8 12, label %bb.ap
    i8 13, label %bb.ap
    i8 1, label %bb.as
    i8 17, label %bb.as
    i8 2, label %bb.as
    i8 18, label %bb.as
    i8 3, label %bb.as
    i8 19, label %bb.as
    i8 5, label %bb.aw
    i8 21, label %bb.aw
    i8 6, label %bb.aw
    i8 22, label %bb.aw
    i8 8, label %bb.ba
    i8 24, label %bb.ba
    i8 4, label %bb.bc
    i8 20, label %bb.bc
    i8 14, label %bb.bc
    i8 25, label %bb.bc
    i8 15, label %bb.bc
    i8 26, label %bb.bc
    i8 7, label %bb.bf
    i8 23, label %bb.bf
    i8 11, label %bb.bf
    i8 16, label %bb.bf
    i8 -110, label %bb.bf
    i8 -111, label %bb.bf
    i8 72, label %bb.bg
    i8 64, label %bb.bj
    i8 65, label %.thread584.i.i
    i8 66, label %.thread584.i.i
    i8 67, label %.thread584.i.i
    i8 68, label %.thread584.i.i
    i8 69, label %.thread584.i.i
    i8 70, label %.thread584.i.i
    i8 71, label %.thread584.i.i
    i8 80, label %bb.cp
    i8 81, label %bb.cs
    i8 83, label %bb.cw
    i8 86, label %bb.cz
    i8 87, label %bb.de
    i8 88, label %bb.dh
    i8 89, label %bb.dn
    i8 90, label %bb.ds
    i8 93, label %bb.dv
    i8 95, label %bb.dy
    i8 96, label %bb.ea
    i8 97, label %bb.ed
    i8 98, label %bb.eg
    i8 99, label %bb.ej
    i8 100, label %bb.em
    i8 101, label %bb.ep
    i8 -59, label %bb.es
    i8 -58, label %bb.es
    i8 -57, label %bb.ew
    i8 -56, label %bb.ew
    i8 -55, label %bb.ew
    i8 -54, label %bb.ew
    i8 -53, label %bb.ew
    i8 -52, label %bb.ew
    i8 -51, label %bb.ew
    i8 -50, label %bb.ew
    i8 -49, label %bb.ew
    i8 -48, label %bb.fb
    i8 -47, label %bb.fe
    i8 -88, label %bb.fk
    i8 -94, label %bb.fk
    i8 -96, label %bb.fo
    i8 -69, label %bb.ft
    i8 -37, label %bb.fv
    i8 -36, label %bb.fx
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao
  br i1 %.not.i29.i, label %.split.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %.0.i.i57, label %dissect_subdoc_spath_required_extras.exit405.thread579.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fz = load i32, ptr @hf_extras_flags, align 4
  %i.ga = tail call ptr @proto_tree_add_item(ptr noundef %.0381.i.i, i32 noundef %i.fz, ptr noundef %0, i32 noundef range(i32 24, 280) %i.eu, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.gb = add nuw nsw i32 %i.cq, 28
  br label %.thread584.i.i

.split.i.i:                                       ; preds = %bb.ap
  br i1 %.0.i.i57, label %.thread584.i.i, label %.thread591.i.i

bb.as:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao
end_hunk_0
