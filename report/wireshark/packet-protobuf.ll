Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-protobuf?download=true
inline.NumInlined: 41
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_protobuf_message:bb.a
  call void @json_dumper_set_member_name(ptr noundef nonnull %.0110214, ptr noundef %.0172.i), !inline_history !27
  br i1 %.0169.i, label %bb.ca, label %.thread224

bb.ca:                                            ; preds = %bb.bz
  call void @json_dumper_begin_array(ptr noundef nonnull %.0110214), !inline_history !27
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bw, %bb.bu
  %or.cond5.i = select i1 %.0169.i, i1 %.0170.i, i1 false
  br i1 %or.cond5.i, label %bb.cc, label %.thread224

bb.cc:                                            ; preds = %bb.cb
  %i.gm = load ptr, ptr %i.h, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.gn = add i32 %.0177.i, %.2                   ; 6 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gm, ptr noundef @.str.210, ptr noundef @.str.169), !inline_history !28
  %i.go = call ptr @proto_item_get_subtree(ptr noundef %i.gm), !inline_history !28
  %i.gp = load i32, ptr @hf_protobuf_value_repeated, align 4
  %i.gq = call ptr @proto_tree_add_item(ptr noundef %i.go, i32 noundef %i.gp, ptr noundef %0, i32 noundef %.2, i32 noundef %.0177.i, i32 noundef 0), !inline_history !28
  %i.gr = load i32, ptr @ett_protobuf_packed_repeated, align 4
  %i.gs = call ptr @proto_item_add_subtree(ptr noundef %i.gq, i32 noundef %i.gr), !inline_history !28 ; 4 uses
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
  %i.gt = load ptr, ptr %i.dk, align 8
  %i.gu = call ptr @wmem_list_new(ptr noundef %i.gt), !inline_history !28 ; 4 uses
  %i.gv = icmp ult i32 %.2, %i.gn
  br i1 %i.gv, label %.lr.ph252, label %._crit_edge

.lr.ph252:                                        ; preds = %bb.cd, %bb.cf
  %.078.i251 = phi i32 [ %i.he, %bb.cf ], [ %.2, %bb.cd ] ; 4 uses
  %i.gw = sub nuw i32 %i.gn, %.078.i251
  %i.gx = call i32 @tvb_get_varint(ptr noundef %0, i32 noundef %.078.i251, i32 noundef %i.gw, ptr noundef nonnull %i.a, i32 noundef 2), !inline_history !28 ; 3 uses
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.lr.ph252
  call void @wmem_destroy_list(ptr noundef %i.gu), !inline_history !28
  br label %dissect_packed_repeated_field_values.exit

bb.cf:                                            ; preds = %.lr.ph252
  %i.gz = load ptr, ptr %i.dk, align 8
  %i.ha = call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.gz, i64 noundef 16) #19, !inline_history !28 ; 4 uses
  store i32 %.078.i251, ptr %i.ha, align 8
  %i.hb = getelementptr i8, ptr %i.ha, i64 4
  store i32 %i.gx, ptr %i.hb, align 4
  %i.hc = load i64, ptr %i.a, align 8
  %i.hd = getelementptr i8, ptr %i.ha, i64 8
  store i64 %i.hc, ptr %i.hd, align 8
  call void @wmem_list_append(ptr noundef %i.gu, ptr noundef %i.ha), !inline_history !28
  %i.he = add i32 %i.gx, %.078.i251               ; 2 uses
  %i.hf = icmp ult i32 %i.he, %i.gn
  br i1 %i.hf, label %.lr.ph252, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.cf, %bb.cd
  %i.hg = call ptr @wmem_list_head(ptr noundef %i.gu), !inline_history !28 ; 3 uses
  %.not84.i253 = icmp eq ptr %i.hg, null
  br i1 %.not84.i253, label %._crit_edge258, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %._crit_edge
  %i.hh = call ptr @wmem_list_frame_data(ptr noundef nonnull %i.hg), !inline_history !28 ; 3 uses
  %i.hi = load i32, ptr %i.hh, align 8
  %i.hj = getelementptr i8, ptr %i.hh, i64 4
  %i.hk = load i32, ptr %i.hj, align 4
  %i.hl = getelementptr i8, ptr %i.hh, i64 8
  %i.hm = load i64, ptr %i.hl, align 8
  call fastcc void @protobuf_dissect_field_value(ptr noundef %i.gs, ptr noundef %0, i32 noundef %i.hi, i32 noundef %i.hk, ptr noundef %3, ptr noundef %i.gm, i32 noundef %.0171.i, i64 noundef %i.hm, ptr noundef @.str.169, ptr noundef nonnull %.0204, i1 noundef zeroext false, ptr noundef %.0110214), !inline_history !28
  %i.hn = call ptr @wmem_list_frame_next(ptr noundef nonnull %i.hg), !inline_history !28 ; 2 uses
  %.not84.i.peel = icmp eq ptr %i.hn, null
  br i1 %.not84.i.peel, label %._crit_edge258, label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %.lr.ph257
  %.077.i255 = phi ptr [ %i.hu, %.lr.ph257 ], [ %i.hn, %.lr.ph257.preheader ] ; 2 uses
  %i.ho = call ptr @wmem_list_frame_data(ptr noundef nonnull %.077.i255), !inline_history !28 ; 3 uses
  %i.hp = load i32, ptr %i.ho, align 8
  %i.hq = getelementptr i8, ptr %i.ho, i64 4
  %i.hr = load i32, ptr %i.hq, align 4
  %i.hs = getelementptr i8, ptr %i.ho, i64 8
  %i.ht = load i64, ptr %i.hs, align 8
  call fastcc void @protobuf_dissect_field_value(ptr noundef %i.gs, ptr noundef %0, i32 noundef %i.hp, i32 noundef %i.hr, ptr noundef %3, ptr noundef %i.gm, i32 noundef %.0171.i, i64 noundef %i.ht, ptr noundef @.str.185, ptr noundef nonnull %.0204, i1 noundef zeroext false, ptr noundef %.0110214), !inline_history !28
  %i.hu = call ptr @wmem_list_frame_next(ptr noundef nonnull %.077.i255), !inline_history !28 ; 2 uses
  %.not84.i = icmp eq ptr %i.hu, null
  br i1 %.not84.i, label %._crit_edge258, label %.lr.ph257, !llvm.loop !30

._crit_edge258:                                   ; preds = %.lr.ph257, %.lr.ph257.preheader, %._crit_edge
  call void @wmem_destroy_list(ptr noundef %i.gu), !inline_history !28
  br label %.loopexit

bb.cg:                                            ; preds = %bb.cc, %bb.cc, %bb.cc
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cc, %bb.cc, %bb.cc, %bb.cg
  %i.hv = phi i1 [ true, %bb.cg ], [ false, %bb.cc ], [ false, %bb.cc ], [ false, %bb.cc ] ; 2 uses
  %i.hw = phi i32 [ 4, %bb.cg ], [ 8, %bb.cc ], [ 8, %bb.cc ], [ 8, %bb.cc ] ; 5 uses
  %i.hx = add nsw i32 %i.hw, -1
  %i.hy = and i32 %i.hx, %.0177.i
  %.not.i169 = icmp eq i32 %i.hy, 0
  br i1 %.not.i169, label %.preheader, label %bb.cl

.preheader:                                       ; preds = %bb.ch
  %i.hz = icmp ult i32 %.2, %i.gn
  br i1 %i.hz, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  br i1 %i.hv, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.preheader
  %i.ia = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %.2, i32 noundef -2147483648), !inline_history !28
  br label %bb.ck

bb.cj:                                            ; preds = %.lr.ph.preheader
  %i.ib = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %.2, i32 noundef -2147483648), !inline_history !28
  %i.ic = zext i32 %i.ib to i64
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.id = phi i64 [ %i.ic, %bb.cj ], [ %i.ia, %bb.ci ]
  call fastcc void @protobuf_dissect_field_value(ptr noundef %i.gs, ptr noundef %0, i32 noundef %.2, i32 noundef %i.hw, ptr noundef %3, ptr noundef %i.gm, i32 noundef %.0171.i, i64 noundef %i.id, ptr noundef @.str.169, ptr noundef nonnull %.0204, i1 noundef zeroext false, ptr noundef %.0110214), !inline_history !28
  %i.ie = add i32 %.2, %i.hw                      ; 2 uses
  %i.if = icmp ult i32 %i.ie, %i.gn
  br i1 %i.if, label %.lr.ph, label %.loopexit

bb.cl:                                            ; preds = %bb.ch
  %i.ig = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.gm, ptr noundef @ei_protobuf_failed_parse_packed_repeated_field), !inline_history !28 ; 0 uses
  br label %dissect_packed_repeated_field_values.exit

.lr.ph:                                           ; preds = %bb.ck, %bb.co
  %.1.i170250 = phi i32 [ %i.il, %bb.co ], [ %i.ie, %bb.ck ] ; 4 uses
  br i1 %i.hv, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.lr.ph
  %i.ih = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %.1.i170250, i32 noundef -2147483648), !inline_history !28
  %i.ii = zext i32 %i.ih to i64
  br label %bb.co

bb.cn:                                            ; preds = %.lr.ph
  %i.ij = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %.1.i170250, i32 noundef -2147483648), !inline_history !28
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.ik = phi i64 [ %i.ii, %bb.cm ], [ %i.ij, %bb.cn ]
  call fastcc void @protobuf_dissect_field_value(ptr noundef %i.gs, ptr noundef %0, i32 noundef %.1.i170250, i32 noundef %i.hw, ptr noundef %3, ptr noundef %i.gm, i32 noundef %.0171.i, i64 noundef %i.ik, ptr noundef @.str.185, ptr noundef nonnull %.0204, i1 noundef zeroext false, ptr noundef %.0110214), !inline_history !28
  %i.il = add i32 %.1.i170250, %i.hw              ; 2 uses
  %i.im = icmp ult i32 %i.il, %i.gn
  br i1 %i.im, label %.lr.ph, label %.loopexit, !llvm.loop !31

bb.cp:                                            ; preds = %bb.cc
  %i.in = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.gm, ptr noundef @ei_protobuf_wire_type_not_support_packed_repeated), !inline_history !28 ; 0 uses
  br label %dissect_packed_repeated_field_values.exit

.loopexit:                                        ; preds = %bb.co, %bb.ck, %.preheader, %._crit_edge258
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gm, ptr noundef @.str.211), !inline_history !28
  br label %dissect_packed_repeated_field_values.exit

dissect_packed_repeated_field_values.exit:        ; preds = %bb.ce, %bb.cl, %bb.cp, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %protobuf_try_dissect_field_value_on_multi_types.exit167

.thread224:                                       ; preds = %bb.bz, %bb.cb
  %i.io = load ptr, ptr %i.h, align 8
  %i.ip = load i64, ptr %i.g, align 8
  call fastcc void @protobuf_dissect_field_value(ptr noundef %i.gh, ptr noundef %0, i32 noundef %.2, i32 noundef %.0177.i, ptr noundef %3, ptr noundef %i.io, i32 noundef %.0171.i, i64 noundef %i.ip, ptr noundef @.str.169, ptr noundef nonnull %.0204, i1 noundef zeroext %7, ptr noundef %.0110214), !inline_history !27
  br label %protobuf_try_dissect_field_value_on_multi_types.exit167

bb.cq:                                            ; preds = %bb.bt
  %i.iq = icmp ne ptr %.0104270, null
  %or.cond7.i = and i1 %i.dh, %i.iq
  br i1 %or.cond7.i, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.ir = call i32 @pbw_FieldDescriptor_is_repeated(ptr noundef nonnull %.0104270), !inline_history !27
  %.not194.i = icmp eq i32 %i.ir, 0
  br i1 %.not194.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @json_dumper_end_array(ptr noundef nonnull %.0110214), !inline_history !27
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cq
  %i.is = load i8, ptr @show_all_possible_field_types, align 1, !range !6, !noundef !7
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.iu = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.iv = load i32, ptr %i.f, align 4
  %i.iw = zext i32 %i.iv to i64
  %i.ix = getelementptr [36 x i8], ptr @protobuf_wire_to_field_type, i64 %i.iw ; 3 uses
  %i.iy = load i64, ptr %i.g, align 8             ; 2 uses
  %12 = load i32, ptr %i.ix, align 4              ; 2 uses
  %.not.i166264 = icmp eq i32 %12, 0
  br i1 %.not.i166264, label %.thread390, label %.lr.ph268.preheader

.lr.ph268.preheader:                              ; preds = %bb.cu
  call fastcc void @protobuf_dissect_field_value(ptr noundef %i.gh, ptr noundef %0, i32 noundef %.2, i32 noundef %.0177.i, ptr noundef %3, ptr noundef %i.iu, i32 noundef %12, i64 noundef %i.iy, ptr noundef @.str.169, ptr noundef null, i1 noundef zeroext false, ptr noundef %.0110214), !inline_history !32
  %13 = getelementptr i8, ptr %i.ix, i64 4
  %14 = load i32, ptr %13, align 4                ; 2 uses
  %.not.i166.peel = icmp eq i32 %14, 0
  br i1 %.not.i166.peel, label %.thread390, label %.lr.ph268

.lr.ph268:                                        ; preds = %.lr.ph268.preheader, %.lr.ph268
  %i.iz = phi i32 [ %i.jd, %.lr.ph268 ], [ %14, %.lr.ph268.preheader ]
  %.0.i165266 = phi i32 [ %i.ja, %.lr.ph268 ], [ 1, %.lr.ph268.preheader ]
  call fastcc void @protobuf_dissect_field_value(ptr noundef %i.gh, ptr noundef %0, i32 noundef %.2, i32 noundef %.0177.i, ptr noundef %3, ptr noundef %i.iu, i32 noundef %i.iz, i64 noundef %i.iy, ptr noundef @.str.185, ptr noundef null, i1 noundef zeroext false, ptr noundef %.0110214), !inline_history !32
  %i.ja = add i32 %.0.i165266, 1                  ; 2 uses
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr [4 x i8], ptr %i.ix, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4            ; 2 uses
  %.not.i166 = icmp eq i32 %i.jd, 0
  br i1 %.not.i166, label %.thread390, label %.lr.ph268, !llvm.loop !33

bb.cv:                                            ; preds = %bb.ct
  %i.je = load i32, ptr %i.f, align 4
  %i.jf = icmp eq i32 %i.je, 2
  br i1 %i.jf, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.jg = load i8, ptr @try_dissect_as_string, align 1, !range !6, !noundef !7
  %i.jh = trunc nuw i8 %i.jg to i1
  %.pre = load i64, ptr %i.g, align 8
  br i1 %i.jh, label %.lr.ph263.preheader, label %.thread390

bb.cx:                                            ; preds = %bb.cv
  %i.ji = load i64, ptr %i.g, align 8             ; 2 uses
  %i.jj = icmp ult i64 %i.ji, 4294967296
  %i.jk = select i1 %i.jj, i32 13, i32 4
  br label %.lr.ph263.preheader

.lr.ph263.preheader:                              ; preds = %bb.cw, %bb.cx
  %.ph = phi i64 [ %i.ji, %bb.cx ], [ %.pre, %bb.cw ]
  %.ph385 = phi i32 [ %i.jk, %bb.cx ], [ 9, %bb.cw ]
  %i.jl = load ptr, ptr %i.h, align 8
  call fastcc void @protobuf_dissect_field_value(ptr noundef %i.gh, ptr noundef %0, i32 noundef %.2, i32 noundef %.0177.i, ptr noundef %3, ptr noundef %i.jl, i32 noundef %.ph385, i64 noundef %.ph, ptr noundef @.str.169, ptr noundef null, i1 noundef zeroext false, ptr noundef %.0110214), !inline_history !32
  br label %.thread390

.thread390:                                       ; preds = %.lr.ph268, %.lr.ph263.preheader, %bb.cw, %bb.cu, %.lr.ph268.preheader
  call void @decrement_dissection_depth(ptr noundef %3), !inline_history !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.do

protobuf_try_dissect_field_value_on_multi_types.exit167: ; preds = %.thread224, %dissect_packed_repeated_field_values.exit
  call void @decrement_dissection_depth(ptr noundef %3), !inline_history !27
  %i.jm = load i8, ptr @show_details, align 1, !range !6
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.dm, label %bb.cy

bb.cy:                                            ; preds = %protobuf_try_dissect_field_value_on_multi_types.exit167
  %.not.i159 = icmp eq ptr %i.du, null
  br i1 %.not.i159, label %proto_item_set_hidden.exit161, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.jo = getelementptr i8, ptr %i.du, i64 40
  %i.jp = load ptr, ptr %i.jo, align 8            ; 2 uses
  %.not5.i160 = icmp eq ptr %i.jp, null
  br i1 %.not5.i160, label %proto_item_set_hidden.exit161, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jq = getelementptr i8, ptr %i.jp, i64 28     ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4
  %i.js = or i32 %i.jr, 1
  store i32 %i.js, ptr %i.jq, align 4
  br label %proto_item_set_hidden.exit161

proto_item_set_hidden.exit161:                    ; preds = %bb.cy, %bb.cz, %bb.da
  %.not.i156 = icmp eq ptr %i.dw, null
  br i1 %.not.i156, label %proto_item_set_hidden.exit158, label %bb.db

bb.db:                                            ; preds = %proto_item_set_hidden.exit161
  %i.jt = getelementptr i8, ptr %i.dw, i64 40
  %i.ju = load ptr, ptr %i.jt, align 8            ; 2 uses
  %.not5.i157 = icmp eq ptr %i.ju, null
  br i1 %.not5.i157, label %proto_item_set_hidden.exit158, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.jv = getelementptr i8, ptr %i.ju, i64 28     ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4
  %i.jx = or i32 %i.jw, 1
  store i32 %i.jx, ptr %i.jv, align 4
  br label %proto_item_set_hidden.exit158

proto_item_set_hidden.exit158:                    ; preds = %proto_item_set_hidden.exit161, %bb.db, %bb.dc
  %.not.i153 = icmp eq ptr %.0175.i, null
  br i1 %.not.i153, label %proto_item_set_hidden.exit155, label %bb.dd

bb.dd:                                            ; preds = %proto_item_set_hidden.exit158
  %i.jy = getelementptr i8, ptr %.0175.i, i64 40
  %i.jz = load ptr, ptr %i.jy, align 8            ; 2 uses
  %.not5.i154 = icmp eq ptr %i.jz, null
  br i1 %.not5.i154, label %proto_item_set_hidden.exit155, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ka = getelementptr i8, ptr %i.jz, i64 28     ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4
  %i.kc = or i32 %i.kb, 1
  store i32 %i.kc, ptr %i.ka, align 4
  br label %proto_item_set_hidden.exit155

proto_item_set_hidden.exit155:                    ; preds = %proto_item_set_hidden.exit158, %bb.dd, %bb.de
  br i1 %.not.i174, label %proto_item_set_hidden.exit152, label %bb.df

bb.df:                                            ; preds = %proto_item_set_hidden.exit155
  %i.kd = getelementptr i8, ptr %i.el, i64 40
  %i.ke = load ptr, ptr %i.kd, align 8            ; 2 uses
  %.not5.i151 = icmp eq ptr %i.ke, null
  br i1 %.not5.i151, label %proto_item_set_hidden.exit152, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.kf = getelementptr i8, ptr %i.ke, i64 28     ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4
  %i.kh = or i32 %i.kg, 1
  store i32 %i.kh, ptr %i.kf, align 4
  br label %proto_item_set_hidden.exit152

proto_item_set_hidden.exit152:                    ; preds = %proto_item_set_hidden.exit155, %bb.df, %bb.dg
  br i1 %.not192.i, label %proto_item_set_hidden.exit149, label %bb.dh

bb.dh:                                            ; preds = %proto_item_set_hidden.exit152
  %i.ki = getelementptr i8, ptr %.1174.i, i64 40
  %i.kj = load ptr, ptr %i.ki, align 8            ; 2 uses
  %.not5.i148 = icmp eq ptr %i.kj, null
  br i1 %.not5.i148, label %proto_item_set_hidden.exit149, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.kk = getelementptr i8, ptr %i.kj, i64 28     ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4
  %i.km = or i32 %i.kl, 1
  store i32 %i.km, ptr %i.kk, align 4
  br label %proto_item_set_hidden.exit149

proto_item_set_hidden.exit149:                    ; preds = %proto_item_set_hidden.exit152, %bb.dh, %bb.di
  switch i32 %.0171.i, label %bb.dj [
    i32 12, label %bb.dm
    i32 10, label %bb.dm
  ]

bb.dj:                                            ; preds = %proto_item_set_hidden.exit149
  %.not.i144 = icmp eq ptr %i.gf, null
  br i1 %.not.i144, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.kn = getelementptr i8, ptr %i.gf, i64 40
  %i.ko = load ptr, ptr %i.kn, align 8            ; 2 uses
  %.not5.i145 = icmp eq ptr %i.ko, null
  br i1 %.not5.i145, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.kp = getelementptr i8, ptr %i.ko, i64 28     ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4
  %i.kr = or i32 %i.kq, 1
  store i32 %i.kr, ptr %i.kp, align 4
  br label %bb.dm

dissect_one_protobuf_field.exit.thread:           ; preds = %bb.aw, %bb.bq, %bb.bk, %bb.bo
  %.3.ph = phi i32 [ %i.dx, %bb.bo ], [ %i.dx, %bb.bk ], [ %i.dx, %bb.bq ], [ %.0206269, %bb.aw ]
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
  br i1 %i.dl, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ks = call i32 @pbw_FieldDescriptor_number(ptr noundef nonnull %.0204)
  %i.kt = sext i32 %i.ks to i64
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = call ptr @wmem_map_insert(ptr noundef nonnull %.1219, ptr noundef %i.ku, ptr noundef nonnull inttoptr (i64 1 to ptr)) ; 0 uses
  br label %bb.do

bb.do:                                            ; preds = %.thread390, %bb.dn, %bb.dm
  %i.kw = add i32 %.0177.i, %.2                   ; 3 uses
  %i.kx = icmp ult i32 %i.kw, %i.n
  br i1 %i.kx, label %bb.av, label %.loopexit231, !llvm.loop !34

.loopexit231:                                     ; preds = %bb.do, %dissect_one_protobuf_field.exit.thread
  %.0104236 = phi ptr [ %.0104270, %dissect_one_protobuf_field.exit.thread ], [ %.0204, %bb.do ] ; 2 uses
  %.1207 = phi i32 [ %.3.ph, %dissect_one_protobuf_field.exit.thread ], [ %i.kw, %bb.do ] ; 3 uses
  call void @decrement_dissection_depth(ptr noundef %3)
  %i.ky = icmp ne ptr %.0104236, null
  %or.cond7 = and i1 %i.dh, %i.ky
  br i1 %or.cond7, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %.loopexit231
  %i.kz = call i32 @pbw_FieldDescriptor_is_repeated(ptr noundef nonnull %.0104236)
  %.not125 = icmp eq i32 %i.kz, 0
  br i1 %.not125, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @json_dumper_end_array(ptr noundef nonnull %.0110214)
  br label %bb.dr

bb.dr:                                            ; preds = %.loopexit231.thread, %bb.dq, %bb.dp, %.loopexit231
end_hunk_0
