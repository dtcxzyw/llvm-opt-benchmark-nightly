Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-protobuf?download=true
inline.NumInlined: 41
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_protobuf_message:bb.a
  call void @json_dumper_set_member_name(ptr noundef nonnull %.0110214, ptr noundef %.0172.i), !inline_history !32
  br i1 %.0169.i, label %bb.ca, label %.thread224

bb.ca:                                            ; preds = %bb.bz
  call void @json_dumper_begin_array(ptr noundef nonnull %.0110214), !inline_history !32
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bw, %bb.bu
  %or.cond5.i = select i1 %.0169.i, i1 %.0170.i, i1 false
  br i1 %or.cond5.i, label %bb.cc, label %.thread224

bb.cc:                                            ; preds = %bb.cb
  %i.gl = load ptr, ptr %i.h, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.gm = add i32 %.0177.i, %.2                   ; 6 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.169), !inline_history !33
  %i.gn = call ptr @proto_item_get_subtree(ptr noundef %i.gl), !inline_history !33
  %i.go = load i32, ptr @hf_protobuf_value_repeated, align 4
  %i.gp = call ptr @proto_tree_add_item(ptr noundef %i.gn, i32 noundef %i.go, ptr noundef %0, i32 noundef %.2, i32 noundef %.0177.i, i32 noundef 0), !inline_history !33
  %i.gq = load i32, ptr @ett_protobuf_packed_repeated, align 4
  %i.gr = call ptr @proto_item_add_subtree(ptr noundef %i.gp, i32 noundef %i.gq), !inline_history !33 ; 4 uses
  switch i32 %.0171.i, label %bb.cp [
    i32 5, label %bb.cd
    i32 3, label %bb.cd
    i32 13, label %bb.cd
    i32 4, label %bb.cd
    i32 17, label %bb.cd
    i32 18, label %bb.cd
    i32 8, label %bb.cd
    i32 14, label %bb.cd
    i32 6, label %bb.ch
    i32 16, label %bb.ch
    i32 1, label %bb.ch
    i32 7, label %bb.cg
    i32 15, label %bb.cg
    i32 2, label %bb.cg
  ]

bb.cd:                                            ; preds = %bb.cc, %bb.cc, %bb.cc, %bb.cc, %bb.cc, %bb.cc, %bb.cc, %bb.cc
  %i.gs = load ptr, ptr %i.dk, align 8
  %i.gt = call ptr @wmem_list_new(ptr noundef %i.gs), !inline_history !33 ; 4 uses
  %i.gu = icmp ult i32 %.2, %i.gm
  br i1 %i.gu, label %.lr.ph252, label %._crit_edge

.lr.ph252:                                        ; preds = %bb.cd, %bb.cf
  %.078.i251 = phi i32 [ %i.hd, %bb.cf ], [ %.2, %bb.cd ] ; 4 uses
  %i.gv = sub nuw i32 %i.gm, %.078.i251
  %i.gw = call i32 @tvb_get_varint(ptr noundef %0, i32 noundef %.078.i251, i32 noundef %i.gv, ptr noundef nonnull %i.a, i32 noundef 2), !inline_history !33 ; 3 uses
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.lr.ph252
  call void @wmem_destroy_list(ptr noundef %i.gt), !inline_history !33
  br label %dissect_packed_repeated_field_values.exit

bb.cf:                                            ; preds = %.lr.ph252
  %i.gy = load ptr, ptr %i.dk, align 8
  %i.gz = call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.gy, i64 noundef 16) #19, !inline_history !33 ; 4 uses
  store i32 %.078.i251, ptr %i.gz, align 8
  %i.ha = getelementptr i8, ptr %i.gz, i64 4
  store i32 %i.gw, ptr %i.ha, align 4
  %i.hb = load i64, ptr %i.a, align 8
  %i.hc = getelementptr i8, ptr %i.gz, i64 8
  store i64 %i.hb, ptr %i.hc, align 8
  call void @wmem_list_append(ptr noundef %i.gt, ptr noundef %i.gz), !inline_history !33
  %i.hd = add i32 %i.gw, %.078.i251               ; 2 uses
  %i.he = icmp ult i32 %i.hd, %i.gm
  br i1 %i.he, label %.lr.ph252, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.cf, %bb.cd
  %i.hf = call ptr @wmem_list_head(ptr noundef %i.gt), !inline_history !33 ; 3 uses
  %.not84.i253 = icmp eq ptr %i.hf, null
  br i1 %.not84.i253, label %._crit_edge258, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %._crit_edge
  %i.hg = call ptr @wmem_list_frame_data(ptr noundef nonnull %i.hf), !inline_history !33 ; 3 uses
  %i.hh = load i32, ptr %i.hg, align 8
  %i.hi = getelementptr i8, ptr %i.hg, i64 4
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = getelementptr i8, ptr %i.hg, i64 8
  %i.hl = load i64, ptr %i.hk, align 8
  call fastcc void @protobuf_dissect_field_value(ptr noundef %i.gr, ptr noundef %0, i32 noundef %i.hh, i32 noundef %i.hj, ptr noundef %3, ptr noundef %i.gl, i32 noundef %.0171.i, i64 noundef %i.hl, ptr noundef nonnull @.str.169, ptr noundef nonnull %.0204, i1 noundef zeroext false, ptr noundef %.0110214), !inline_history !33
  %i.hm = call ptr @wmem_list_frame_next(ptr noundef nonnull %i.hf), !inline_history !33 ; 2 uses
  %.not84.i.peel = icmp eq ptr %i.hm, null
  br i1 %.not84.i.peel, label %._crit_edge258, label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %.lr.ph257
  %.077.i255 = phi ptr [ %i.ht, %.lr.ph257 ], [ %i.hm, %.lr.ph257.preheader ] ; 2 uses
  %i.hn = call ptr @wmem_list_frame_data(ptr noundef nonnull %.077.i255), !inline_history !33 ; 3 uses
  %i.ho = load i32, ptr %i.hn, align 8
  %i.hp = getelementptr i8, ptr %i.hn, i64 4
  %i.hq = load i32, ptr %i.hp, align 4
  %i.hr = getelementptr i8, ptr %i.hn, i64 8
  %i.hs = load i64, ptr %i.hr, align 8
  call fastcc void @protobuf_dissect_field_value(ptr noundef %i.gr, ptr noundef %0, i32 noundef %i.ho, i32 noundef %i.hq, ptr noundef %3, ptr noundef %i.gl, i32 noundef %.0171.i, i64 noundef %i.hs, ptr noundef nonnull @.str.185, ptr noundef nonnull %.0204, i1 noundef zeroext false, ptr noundef %.0110214), !inline_history !33
  %i.ht = call ptr @wmem_list_frame_next(ptr noundef nonnull %.077.i255), !inline_history !33 ; 2 uses
  %.not84.i = icmp eq ptr %i.ht, null
  br i1 %.not84.i, label %._crit_edge258, label %.lr.ph257, !llvm.loop !35

._crit_edge258:                                   ; preds = %.lr.ph257, %.lr.ph257.preheader, %._crit_edge
  call void @wmem_destroy_list(ptr noundef %i.gt), !inline_history !33
  br label %.loopexit

bb.cg:                                            ; preds = %bb.cc, %bb.cc, %bb.cc
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cc, %bb.cc, %bb.cc, %bb.cg
  %i.hu = phi i1 [ true, %bb.cg ], [ false, %bb.cc ], [ false, %bb.cc ], [ false, %bb.cc ] ; 2 uses
  %i.hv = phi i32 [ 4, %bb.cg ], [ 8, %bb.cc ], [ 8, %bb.cc ], [ 8, %bb.cc ] ; 5 uses
  %i.hw = add nsw i32 %i.hv, -1
  %i.hx = and i32 %i.hw, %.0177.i
  %.not.i169 = icmp eq i32 %i.hx, 0
  br i1 %.not.i169, label %.preheader, label %bb.cl

.preheader:                                       ; preds = %bb.ch
  %i.hy = icmp ult i32 %.2, %i.gm
  br i1 %i.hy, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  br i1 %i.hu, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.preheader
  %i.hz = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %.2, i32 noundef -2147483648), !inline_history !33
  br label %bb.ck

bb.cj:                                            ; preds = %.lr.ph.preheader
  %i.ia = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %.2, i32 noundef -2147483648), !inline_history !33
  %i.ib = zext i32 %i.ia to i64
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ic = phi i64 [ %i.ib, %bb.cj ], [ %i.hz, %bb.ci ]
  call fastcc void @protobuf_dissect_field_value(ptr noundef %i.gr, ptr noundef %0, i32 noundef %.2, i32 noundef %i.hv, ptr noundef %3, ptr noundef %i.gl, i32 noundef %.0171.i, i64 noundef %i.ic, ptr noundef nonnull @.str.169, ptr noundef nonnull %.0204, i1 noundef zeroext false, ptr noundef %.0110214), !inline_history !33
  %i.id = add i32 %.2, %i.hv                      ; 2 uses
  %i.ie = icmp ult i32 %i.id, %i.gm
  br i1 %i.ie, label %.lr.ph, label %.loopexit

bb.cl:                                            ; preds = %bb.ch
  %i.if = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.gl, ptr noundef nonnull @ei_protobuf_failed_parse_packed_repeated_field), !inline_history !33 ; 0 uses
  br label %dissect_packed_repeated_field_values.exit

.lr.ph:                                           ; preds = %bb.ck, %bb.co
  %.1.i170250 = phi i32 [ %i.ik, %bb.co ], [ %i.id, %bb.ck ] ; 4 uses
  br i1 %i.hu, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.lr.ph
  %i.ig = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %.1.i170250, i32 noundef -2147483648), !inline_history !33
  %i.ih = zext i32 %i.ig to i64
  br label %bb.co

bb.cn:                                            ; preds = %.lr.ph
  %i.ii = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %.1.i170250, i32 noundef -2147483648), !inline_history !33
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.ij = phi i64 [ %i.ih, %bb.cm ], [ %i.ii, %bb.cn ]
  call fastcc void @protobuf_dissect_field_value(ptr noundef %i.gr, ptr noundef %0, i32 noundef %.1.i170250, i32 noundef %i.hv, ptr noundef %3, ptr noundef %i.gl, i32 noundef %.0171.i, i64 noundef %i.ij, ptr noundef nonnull @.str.185, ptr noundef nonnull %.0204, i1 noundef zeroext false, ptr noundef %.0110214), !inline_history !33
  %i.ik = add i32 %.1.i170250, %i.hv              ; 2 uses
  %i.il = icmp ult i32 %i.ik, %i.gm
  br i1 %i.il, label %.lr.ph, label %.loopexit, !llvm.loop !36

bb.cp:                                            ; preds = %bb.cc
  %i.im = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.gl, ptr noundef nonnull @ei_protobuf_wire_type_not_support_packed_repeated), !inline_history !33 ; 0 uses
  br label %dissect_packed_repeated_field_values.exit

.loopexit:                                        ; preds = %bb.co, %bb.ck, %.preheader, %._crit_edge258
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.211), !inline_history !33
  br label %dissect_packed_repeated_field_values.exit

dissect_packed_repeated_field_values.exit:        ; preds = %bb.ce, %bb.cl, %bb.cp, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %protobuf_try_dissect_field_value_on_multi_types.exit167

.thread224:                                       ; preds = %bb.bz, %bb.cb
  %i.in = load ptr, ptr %i.h, align 8
  %i.io = load i64, ptr %i.g, align 8
  call fastcc void @protobuf_dissect_field_value(ptr noundef %i.gg, ptr noundef %0, i32 noundef %.2, i32 noundef %.0177.i, ptr noundef %3, ptr noundef %i.in, i32 noundef %.0171.i, i64 noundef %i.io, ptr noundef nonnull @.str.169, ptr noundef nonnull %.0204, i1 noundef zeroext %7, ptr noundef %.0110214), !inline_history !32
  br label %protobuf_try_dissect_field_value_on_multi_types.exit167

bb.cq:                                            ; preds = %bb.bt
  %i.ip = icmp ne ptr %.0104270, null
  %or.cond7.i = and i1 %i.dh, %i.ip
  br i1 %or.cond7.i, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.iq = call i32 @pbw_FieldDescriptor_is_repeated(ptr noundef nonnull %.0104270), !inline_history !32
  %.not194.i = icmp eq i32 %i.iq, 0
  br i1 %.not194.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @json_dumper_end_array(ptr noundef nonnull %.0110214), !inline_history !32
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cq
  %i.ir = load i8, ptr @show_all_possible_field_types, align 1, !range !6, !noundef !7
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.it = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.iu = load i32, ptr %i.f, align 4             ; 3 uses
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr [36 x i8], ptr @protobuf_wire_to_field_type, i64 %i.iv ; 3 uses
  %i.ix = load i64, ptr %i.g, align 8             ; 2 uses
  %i.iy = add i32 %i.iu, -3
  %.not.i166264 = icmp ult i32 %i.iy, 2
  br i1 %.not.i166264, label %.thread388, label %.lr.ph268.preheader

.lr.ph268.preheader:                              ; preds = %bb.cu
  %i.iz = load i32, ptr %i.iw, align 4
  call fastcc void @protobuf_dissect_field_value(ptr noundef %i.gg, ptr noundef %0, i32 noundef %.2, i32 noundef %.0177.i, ptr noundef %3, ptr noundef %i.it, i32 noundef %i.iz, i64 noundef %i.ix, ptr noundef nonnull @.str.169, ptr noundef null, i1 noundef zeroext false, ptr noundef %.0110214), !inline_history !37
  %12 = add i32 %i.iu, -3
  %.not.i166.peel = icmp ult i32 %12, 2
  br i1 %.not.i166.peel, label %.thread388, label %.lr.ph268.preheader418

.lr.ph268.preheader418:                           ; preds = %.lr.ph268.preheader
  %13 = getelementptr i8, ptr %i.iw, i64 4
  %14 = load i32, ptr %13, align 4
  br label %.lr.ph268

.lr.ph268:                                        ; preds = %.lr.ph268.preheader418, %.lr.ph268
  %i.ja = phi i32 [ %i.je, %.lr.ph268 ], [ %14, %.lr.ph268.preheader418 ]
  %.0.i165266 = phi i32 [ %i.jb, %.lr.ph268 ], [ 1, %.lr.ph268.preheader418 ]
  call fastcc void @protobuf_dissect_field_value(ptr noundef %i.gg, ptr noundef %0, i32 noundef %.2, i32 noundef %.0177.i, ptr noundef %3, ptr noundef %i.it, i32 noundef %i.ja, i64 noundef %i.ix, ptr noundef nonnull @.str.185, ptr noundef null, i1 noundef zeroext false, ptr noundef %.0110214), !inline_history !37
  %i.jb = add i32 %.0.i165266, 1                  ; 2 uses
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr [4 x i8], ptr %i.iw, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4            ; 2 uses
  %.not.i166 = icmp eq i32 %i.je, 0
  br i1 %.not.i166, label %.thread388, label %.lr.ph268, !llvm.loop !38

bb.cv:                                            ; preds = %bb.ct
  %i.jf = load i32, ptr %i.f, align 4
  %i.jg = icmp eq i32 %i.jf, 2
  br i1 %i.jg, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.jh = load i8, ptr @try_dissect_as_string, align 1, !range !6, !noundef !7
  %i.ji = trunc nuw i8 %i.jh to i1
  %.pre = load i64, ptr %i.g, align 8
  br i1 %i.ji, label %.lr.ph263.preheader, label %.thread388

bb.cx:                                            ; preds = %bb.cv
  %i.jj = load i64, ptr %i.g, align 8             ; 2 uses
  %i.jk = icmp ult i64 %i.jj, 4294967296
  %i.jl = select i1 %i.jk, i32 13, i32 4
  br label %.lr.ph263.preheader

.lr.ph263.preheader:                              ; preds = %bb.cw, %bb.cx
  %.ph = phi i64 [ %i.jj, %bb.cx ], [ %.pre, %bb.cw ]
  %.ph383 = phi i32 [ %i.jl, %bb.cx ], [ 9, %bb.cw ]
  %i.jm = load ptr, ptr %i.h, align 8
  call fastcc void @protobuf_dissect_field_value(ptr noundef %i.gg, ptr noundef %0, i32 noundef %.2, i32 noundef %.0177.i, ptr noundef %3, ptr noundef %i.jm, i32 noundef %.ph383, i64 noundef %.ph, ptr noundef nonnull @.str.169, ptr noundef null, i1 noundef zeroext false, ptr noundef %.0110214), !inline_history !37
  br label %.thread388

.thread388:                                       ; preds = %.lr.ph268, %.lr.ph263.preheader, %bb.cw, %bb.cu, %.lr.ph268.preheader
  call void @decrement_dissection_depth(ptr noundef %3), !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.do

protobuf_try_dissect_field_value_on_multi_types.exit167: ; preds = %.thread224, %dissect_packed_repeated_field_values.exit
  call void @decrement_dissection_depth(ptr noundef %3), !inline_history !32
  %i.jn = load i8, ptr @show_details, align 1, !range !6
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.dm, label %bb.cy

bb.cy:                                            ; preds = %protobuf_try_dissect_field_value_on_multi_types.exit167
  %.not.i159 = icmp eq ptr %i.dt, null
  br i1 %.not.i159, label %proto_item_set_hidden.exit161, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.jp = getelementptr i8, ptr %i.dt, i64 40
  %i.jq = load ptr, ptr %i.jp, align 8            ; 2 uses
  %.not5.i160 = icmp eq ptr %i.jq, null
  br i1 %.not5.i160, label %proto_item_set_hidden.exit161, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jr = getelementptr i8, ptr %i.jq, i64 28     ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4
  %i.jt = or i32 %i.js, 1
  store i32 %i.jt, ptr %i.jr, align 4
  br label %proto_item_set_hidden.exit161

proto_item_set_hidden.exit161:                    ; preds = %bb.cy, %bb.cz, %bb.da
  %.not.i156 = icmp eq ptr %i.dv, null
  br i1 %.not.i156, label %proto_item_set_hidden.exit158, label %bb.db

bb.db:                                            ; preds = %proto_item_set_hidden.exit161
  %i.ju = getelementptr i8, ptr %i.dv, i64 40
  %i.jv = load ptr, ptr %i.ju, align 8            ; 2 uses
  %.not5.i157 = icmp eq ptr %i.jv, null
  br i1 %.not5.i157, label %proto_item_set_hidden.exit158, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.jw = getelementptr i8, ptr %i.jv, i64 28     ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4
  %i.jy = or i32 %i.jx, 1
  store i32 %i.jy, ptr %i.jw, align 4
  br label %proto_item_set_hidden.exit158

proto_item_set_hidden.exit158:                    ; preds = %proto_item_set_hidden.exit161, %bb.db, %bb.dc
  %.not.i153 = icmp eq ptr %.0175.i, null
  br i1 %.not.i153, label %proto_item_set_hidden.exit155, label %bb.dd

bb.dd:                                            ; preds = %proto_item_set_hidden.exit158
  %i.jz = getelementptr i8, ptr %.0175.i, i64 40
  %i.ka = load ptr, ptr %i.jz, align 8            ; 2 uses
  %.not5.i154 = icmp eq ptr %i.ka, null
  br i1 %.not5.i154, label %proto_item_set_hidden.exit155, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.kb = getelementptr i8, ptr %i.ka, i64 28     ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4
  %i.kd = or i32 %i.kc, 1
  store i32 %i.kd, ptr %i.kb, align 4
  br label %proto_item_set_hidden.exit155

proto_item_set_hidden.exit155:                    ; preds = %proto_item_set_hidden.exit158, %bb.dd, %bb.de
  br i1 %.not.i174, label %proto_item_set_hidden.exit152, label %bb.df

bb.df:                                            ; preds = %proto_item_set_hidden.exit155
  %i.ke = getelementptr i8, ptr %i.ek, i64 40
  %i.kf = load ptr, ptr %i.ke, align 8            ; 2 uses
  %.not5.i151 = icmp eq ptr %i.kf, null
  br i1 %.not5.i151, label %proto_item_set_hidden.exit152, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.kg = getelementptr i8, ptr %i.kf, i64 28     ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4
  %i.ki = or i32 %i.kh, 1
  store i32 %i.ki, ptr %i.kg, align 4
  br label %proto_item_set_hidden.exit152

proto_item_set_hidden.exit152:                    ; preds = %proto_item_set_hidden.exit155, %bb.df, %bb.dg
  br i1 %.not192.i, label %proto_item_set_hidden.exit149, label %bb.dh

bb.dh:                                            ; preds = %proto_item_set_hidden.exit152
  %i.kj = getelementptr i8, ptr %.1174.i, i64 40
  %i.kk = load ptr, ptr %i.kj, align 8            ; 2 uses
  %.not5.i148 = icmp eq ptr %i.kk, null
  br i1 %.not5.i148, label %proto_item_set_hidden.exit149, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.kl = getelementptr i8, ptr %i.kk, i64 28     ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4
  %i.kn = or i32 %i.km, 1
  store i32 %i.kn, ptr %i.kl, align 4
  br label %proto_item_set_hidden.exit149

proto_item_set_hidden.exit149:                    ; preds = %proto_item_set_hidden.exit152, %bb.dh, %bb.di
  switch i32 %.0171.i, label %bb.dj [
    i32 12, label %bb.dm
    i32 10, label %bb.dm
  ]

bb.dj:                                            ; preds = %proto_item_set_hidden.exit149
  %.not.i144 = icmp eq ptr %i.ge, null
  br i1 %.not.i144, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ko = getelementptr i8, ptr %i.ge, i64 40
  %i.kp = load ptr, ptr %i.ko, align 8            ; 2 uses
  %.not5.i145 = icmp eq ptr %i.kp, null
  br i1 %.not5.i145, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.kq = getelementptr i8, ptr %i.kp, i64 28     ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 4
  %i.ks = or i32 %i.kr, 1
  store i32 %i.ks, ptr %i.kq, align 4
  br label %bb.dm

dissect_one_protobuf_field.exit.thread:           ; preds = %bb.aw, %bb.bq, %bb.bk, %bb.bo
  %.3.ph = phi i32 [ %i.dw, %bb.bo ], [ %i.dw, %bb.bk ], [ %i.dw, %bb.bq ], [ %.0206269, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %.loopexit231

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %bb.dj, %proto_item_set_hidden.exit149, %proto_item_set_hidden.exit149, %protobuf_try_dissect_field_value_on_multi_types.exit167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br i1 %.not417, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.kt = call i32 @pbw_FieldDescriptor_number(ptr noundef nonnull %.0204)
  %i.ku = sext i32 %i.kt to i64
  %i.kv = inttoptr i64 %i.ku to ptr
  %i.kw = call ptr @wmem_map_insert(ptr noundef nonnull %.1219, ptr noundef %i.kv, ptr noundef nonnull inttoptr (i64 1 to ptr)) ; 0 uses
  br label %bb.do

bb.do:                                            ; preds = %.thread388, %bb.dn, %bb.dm
  %i.kx = add i32 %.0177.i, %.2                   ; 3 uses
  %i.ky = icmp ult i32 %i.kx, %i.n
  br i1 %i.ky, label %bb.av, label %.loopexit231, !llvm.loop !39

.loopexit231:                                     ; preds = %bb.do, %dissect_one_protobuf_field.exit.thread
  %.0104236 = phi ptr [ %.0104270, %dissect_one_protobuf_field.exit.thread ], [ %.0204, %bb.do ] ; 2 uses
  %.1207 = phi i32 [ %.3.ph, %dissect_one_protobuf_field.exit.thread ], [ %i.kx, %bb.do ] ; 3 uses
  call void @decrement_dissection_depth(ptr noundef %3)
  %i.kz = icmp ne ptr %.0104236, null
  %or.cond7 = and i1 %i.dh, %i.kz
  br i1 %or.cond7, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %.loopexit231
  %i.la = call i32 @pbw_FieldDescriptor_is_repeated(ptr noundef nonnull %.0104236)
  %.not125 = icmp eq i32 %i.la, 0
  br i1 %.not125, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @json_dumper_end_array(ptr noundef nonnull %.0110214)
  br label %bb.dr

bb.dr:                                            ; preds = %.loopexit231.thread, %bb.dq, %bb.dp, %.loopexit231
  %.1207393 = phi i32 [ %1, %.loopexit231.thread ], [ %.1207, %bb.dq ], [ %.1207, %bb.dp ], [ %.1207, %.loopexit231 ] ; 27 uses
  %i.lb = load i32, ptr @add_default_value, align 4
  %i.lc = icmp ne i32 %i.lb, 0
  %i.ld = icmp ne ptr %.1219, null
  %or.cond9 = select i1 %i.lc, i1 %i.ld, i1 false
  br i1 %or.cond9, label %bb.ds, label %bb.hf

bb.ds:                                            ; preds = %bb.dr
  %i.le = call i32 @pbw_Descriptor_field_count(ptr noundef %5) ; 2 uses
  %i.lf = call ptr @proto_tree_get_parent(ptr noundef %.1107) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.lg = icmp sgt i32 %i.le, 0
  br i1 %i.lg, label %.lr.ph.i139, label %add_missing_fields_with_default_values.exit

.lr.ph.i139:                                      ; preds = %bb.ds
  %i.lh = getelementptr i8, ptr %3, i64 416
  br label %bb.dt

bb.dt:                                            ; preds = %proto_item_set_hidden.exit339.i, %.lr.ph.i139
  %.0282349.i = phi i32 [ 0, %.lr.ph.i139 ], [ %i.sp, %proto_item_set_hidden.exit339.i ] ; 2 uses
  %i.li = call ptr @pbw_Descriptor_field(ptr noundef %5, i32 noundef %.0282349.i) ; 17 uses
  %i.lj = call i32 @pbw_FieldDescriptor_number(ptr noundef %i.li)
  %i.lk = sext i32 %i.lj to i64                   ; 4 uses
  %i.ll = call i32 @pbw_FieldDescriptor_type(ptr noundef %i.li) ; 8 uses
  %i.lm = call zeroext i1 @pbw_FieldDescriptor_is_required(ptr noundef %i.li) ; 4 uses
  %i.ln = call i32 @pbw_FieldDescriptor_is_repeated(ptr noundef %i.li)
  %i.lo = call zeroext i1 @pbw_FieldDescriptor_has_default_value(ptr noundef %i.li) ; 2 uses
  %i.lp = load i32, ptr @add_default_value, align 4 ; 2 uses
  %i.lq = icmp ne i32 %i.lp, 1
  %or.cond.not303.i = select i1 %i.lm, i1 true, i1 %i.lq
  %or.cond3.i140 = select i1 %or.cond.not303.i, i1 true, i1 %i.lo
  br i1 %or.cond3.i140, label %bb.du, label %proto_item_set_hidden.exit339.i
end_hunk_0
