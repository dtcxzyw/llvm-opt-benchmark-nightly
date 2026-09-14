Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-mpeg-descriptor?download=true
inline.NumInlined: 13
inline.NumDeleted: 12
begin_hunk_0_@proto_mpeg_descriptor_dissect_ac3_system_a:bb.a
  %i.ab = load i32, ptr @hf_mpeg_descr_ac3_sysa_langcode2, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.y, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = add i32 %1, 5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.ad, %bb.d ], [ %i.y, %bb.c ] ; 6 uses
  %.not110 = icmp ult i32 %.0, %i.b
  br i1 %.not110, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp ult i8 %i.o, 64
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr @hf_mpeg_descr_ac3_sysa_mainid, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.af, ptr noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ah = load i32, ptr @hf_mpeg_descr_ac3_sysa_priority, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ah, ptr noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %hf_mpeg_descr_ac3_sysa_asvcflags.sink = phi ptr [ @hf_mpeg_descr_ac3_sysa_reserved, %bb.g ], [ @hf_mpeg_descr_ac3_sysa_asvcflags, %bb.f ]
  %i.aj = load i32, ptr %hf_mpeg_descr_ac3_sysa_asvcflags.sink, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.aj, ptr noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.al = add nuw i32 %.0, 1                      ; 3 uses
  %.not111 = icmp ult i32 %i.al, %i.b
  br i1 %.not111, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.am = load i32, ptr @hf_mpeg_descr_ac3_sysa_textlen, align 4
  %i.an = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %3, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.al, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.ao = load i32, ptr @hf_mpeg_descr_ac3_sysa_textcode, align 4
  %i.ap = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.al, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aq = add nuw i32 %.0, 2
  %i.ar = load i8, ptr %i.a, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = add i32 %i.aq, %i.as                    ; 6 uses
  %.not112 = icmp ult i32 %i.at, %i.b
  br i1 %.not112, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.au = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.at) ; 2 uses
  %i.av = load i32, ptr @hf_mpeg_descr_ac3_sysa_lang1, align 4
  %i.aw = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.av, ptr noundef %0, i32 noundef %i.at, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ax = load i32, ptr @hf_mpeg_descr_ac3_sysa_lang2, align 4
  %i.ay = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ax, ptr noundef %0, i32 noundef %i.at, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.az = add nuw i32 %i.at, 1                    ; 3 uses
  %.not113 = icmp ult i32 %i.az, %i.b
  br i1 %.not113, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %.not114 = icmp sgt i8 %i.au, -1
  br i1 %.not114, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load i32, ptr @hf_mpeg_descr_ac3_sysa_lang1_bytes, align 4
  %i.bb = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ba, ptr noundef %0, i32 noundef %i.az, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bc = add i32 %i.at, 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1 = phi i32 [ %i.bc, %bb.l ], [ %i.az, %bb.k ] ; 4 uses
  %.not115 = icmp ult i32 %.1, %i.b
  br i1 %.not115, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bd = and i8 %i.au, 64
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = load i32, ptr @hf_mpeg_descr_ac3_sysa_lang2_bytes, align 4
  %i.bf = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.be, ptr noundef %0, i32 noundef %.1, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bg = add i32 %.1, 3
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.2 = phi i32 [ %i.bg, %bb.o ], [ %.1, %bb.n ]  ; 3 uses
  %i.bh = icmp ult i32 %.2, %i.b
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bi = load i32, ptr @hf_mpeg_descr_ac3_additional_info, align 4
  %i.bj = sub nuw i32 %i.b, %.2
  %i.bk = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bi, ptr noundef %0, i32 noundef %.2, i32 noundef %i.bj, i32 noundef 0) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.m, %bb.j, %bb.i, %bb.h, %bb.e, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @proto_mpeg_descriptor_dissect_nordig_lcd_v1(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 1, 256) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = add i32 %2, %1                           ; 2 uses
  %i.b = and i32 %2, 3
  %.not = icmp eq i32 %i.b, 0
  %i.c = icmp ult i32 %1, %i.a
  %or.cond = and i1 %.not, %i.c
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.024 = phi i32 [ %i.q, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %i.d = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.024)
  %i.e = load i32, ptr @ett_mpeg_descriptor_nordig_lcd_v1_service_list, align 4
  %i.f = zext i16 %i.d to i32
  %i.g = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %3, ptr noundef %0, i32 noundef %.024, i32 noundef 3, i32 noundef %i.e, ptr noundef null, ptr noundef nonnull @.str.771, i32 noundef %i.f) ; 4 uses
  %i.h = load i32, ptr @hf_mpeg_descr_nordig_lcd_v1_service_list_id, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %0, i32 noundef %.024, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.j = add i32 %.024, 2                         ; 3 uses
  %i.k = load i32, ptr @hf_mpeg_descr_nordig_lcd_v1_service_list_visible_service_flag, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.j, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_mpeg_descr_nordig_lcd_v1_service_list_reserved, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.j, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_mpeg_descr_nordig_lcd_v1_service_list_logical_channel_number, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.o, ptr noundef %0, i32 noundef %i.j, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.q = add i32 %.024, 4                         ; 2 uses
  %i.r = icmp ult i32 %i.q, %i.a
  br i1 %i.r, label %.lr.ph, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @proto_mpeg_descriptor_dissect_nordig_lcd_v2(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 1, 256) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %i.b = alloca i8, align 1                       ; 10 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = add i32 %2, %1                           ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %.081113 = phi i32 [ %2, %bb.a ], [ %.182.lcssa, %._crit_edge ] ; 2 uses
  %.084112 = phi i32 [ %1, %bb.a ], [ %.185.lcssa, %._crit_edge ] ; 9 uses
  %i.e = sub i32 %i.d, %.084112                   ; 4 uses
  %i.f = icmp ult i32 %i.e, 2
  br i1 %i.f, label %proto_mpeg_descriptor_dissect_nordig_lcd_v2_measure_ch_list.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %.084112, 1
  %i.h = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.g)
  %i.i = zext i8 %i.h to i32
  %i.j = add i32 %.084112, 6
  %i.k = add i32 %i.j, %i.i                       ; 3 uses
  %i.l = icmp ugt i32 %i.k, %i.d
  br i1 %i.l, label %proto_mpeg_descriptor_dissect_nordig_lcd_v2_measure_ch_list.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add i32 %i.k, -1
  %i.n = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.m)
  %i.o = zext i8 %i.n to i32
  %i.p = add i32 %i.k, %i.o                       ; 2 uses
  %i.q = icmp ugt i32 %i.p, %i.d
  %i.r = sub i32 %i.p, %.084112
  %.0.i = select i1 %i.q, i32 %i.e, i32 %i.r
  br label %proto_mpeg_descriptor_dissect_nordig_lcd_v2_measure_ch_list.exit

proto_mpeg_descriptor_dissect_nordig_lcd_v2_measure_ch_list.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.2.i = phi i32 [ %i.e, %bb.b ], [ %.0.i, %bb.d ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.s = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.084112)
  %i.t = load i32, ptr @ett_mpeg_descriptor_nordig_lcd_v2_channel_list_list, align 4
  %i.u = zext i8 %i.s to i32
  %i.v = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %3, ptr noundef %0, i32 noundef %.084112, i32 noundef %.2.i, i32 noundef %i.t, ptr noundef null, ptr noundef nonnull @.str.772, i32 noundef %i.u) ; 7 uses
  %i.w = load i32, ptr @hf_mpeg_descr_nordig_lcd_v2_channel_list_id, align 4
  %i.x = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.w, ptr noundef %0, i32 noundef %.084112, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = icmp eq i32 %.081113, 1
  br i1 %i.y, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %proto_mpeg_descriptor_dissect_nordig_lcd_v2_measure_ch_list.exit
  %i.z = add i32 %.084112, 1
  %i.aa = load i32, ptr @hf_mpeg_descr_nordig_lcd_v2_channel_list_name_length, align 4
  %i.ab = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.v, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.ac = add i32 %.084112, 2                     ; 4 uses
  %i.ad = add i32 %.081113, -2                    ; 2 uses
  %i.ae = load i8, ptr %i.a, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = call i32 @llvm.umin.i32(i32 %i.ad, i32 %i.af) ; 2 uses
  %i.ah = trunc nuw i32 %i.ag to i8
  store i8 %i.ah, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.ai = call i32 @dvb_analyze_string_charset(ptr noundef %0, i32 noundef %i.ac, i32 noundef %i.ag, ptr noundef nonnull %i.c) ; 3 uses
  %i.aj = load i32, ptr @hf_mpeg_descr_nordig_lcd_v2_channel_list_name_encoding, align 4
  %i.ak = load i32, ptr %i.c, align 4
  call void @dvb_add_chartbl(ptr noundef %i.v, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.ac, i32 noundef %i.ai, i32 noundef %i.ak)
  %i.al = load i32, ptr @hf_mpeg_descr_nordig_lcd_v2_channel_list_name, align 4
  %i.am = add i32 %i.ai, %i.ac
  %i.an = load i8, ptr %i.a, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = sub i32 %i.ao, %i.ai
  %i.aq = load i32, ptr %i.c, align 4
  %i.ar = call i32 @dvb_enc_to_item_enc(i32 noundef %i.aq)
  %i.as = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.am, i32 noundef %i.ap, i32 noundef %i.ar) ; 0 uses
  %i.at = load i8, ptr %i.a, align 1
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = add i32 %i.ac, %i.au                    ; 4 uses
  %i.aw = sub i32 %i.ad, %i.au                    ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 3
  br i1 %i.ax, label %.critedge99, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = load i32, ptr @hf_mpeg_descr_nordig_lcd_v2_country_code, align 4
  %i.az = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.ay, ptr noundef %0, i32 noundef %i.av, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ba = icmp eq i32 %i.aw, 3
  br i1 %i.ba, label %.critedge99, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = add i32 %i.av, 3
  %i.bc = load i32, ptr @hf_mpeg_descr_nordig_lcd_v2_descriptor_length, align 4
  %i.bd = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.v, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.bb, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.be = add i32 %i.aw, -4                       ; 3 uses
  %i.bf = load i8, ptr %i.b, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = call i32 @llvm.umin.i32(i32 %i.be, i32 %i.bg) ; 2 uses
  %i.bi = trunc nuw i32 %i.bh to i8
  store i8 %i.bi, ptr %i.b, align 1
  %.185106 = add i32 %i.av, 4                     ; 2 uses
  %.not97107 = icmp eq i32 %i.bh, 0
  br i1 %.not97107, label %._crit_edge, label %.lr.ph

thread-pre-split:                                 ; preds = %bb.h
  %i.bj = add i32 %.185.in108, 6                  ; 3 uses
  %i.bk = load i32, ptr @hf_mpeg_descr_nordig_lcd_v2_visible_service_flag, align 4
  %i.bl = call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.bk, ptr noundef %0, i32 noundef %i.bj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bm = load i32, ptr @hf_mpeg_descr_nordig_lcd_v2_reserved, align 4
  %i.bn = call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.bm, ptr noundef %0, i32 noundef %i.bj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bo = load i32, ptr @hf_mpeg_descr_nordig_lcd_v2_logical_channel_number, align 4
  %i.bp = call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.bo, ptr noundef %0, i32 noundef %i.bj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bq = add i32 %.182109, -4                    ; 2 uses
  %i.br = load i8, ptr %i.b, align 1
  %i.bs = add i8 %i.br, -2                        ; 2 uses
  store i8 %i.bs, ptr %i.b, align 1
  %.185 = add i32 %.185110, 4                     ; 2 uses
  %.not97 = icmp eq i8 %i.bs, 0
  br i1 %.not97, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %thread-pre-split
  %.185110 = phi i32 [ %.185, %thread-pre-split ], [ %.185106, %bb.g ] ; 5 uses
  %.182109 = phi i32 [ %i.bq, %thread-pre-split ], [ %i.be, %bb.g ] ; 3 uses
  %.185.in108 = phi i32 [ %.185110, %thread-pre-split ], [ %i.av, %bb.g ]
  %i.bt = icmp ult i32 %.182109, 2
  br i1 %i.bt, label %.critedge99, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bu = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.185110)
  %i.bv = load i32, ptr @ett_mpeg_descriptor_nordig_lcd_v2_service_list, align 4
  %i.bw = zext i16 %i.bu to i32
  %i.bx = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.v, ptr noundef %0, i32 noundef %.185110, i32 noundef 4, i32 noundef %i.bv, ptr noundef null, ptr noundef nonnull @.str.771, i32 noundef %i.bw) ; 4 uses
  %i.by = load i32, ptr @hf_mpeg_descr_nordig_lcd_v2_service_id, align 4
  %i.bz = call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.by, ptr noundef %0, i32 noundef %.185110, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ca = load i8, ptr %i.b, align 1
  %i.cb = add i8 %i.ca, -2
  store i8 %i.cb, ptr %i.b, align 1
  %i.cc = and i32 %.182109, -2
  %i.cd = icmp eq i32 %i.cc, 2
  br i1 %i.cd, label %.critedge99, label %thread-pre-split

._crit_edge:                                      ; preds = %thread-pre-split, %bb.g
  %.182.lcssa = phi i32 [ %i.be, %bb.g ], [ %i.bq, %thread-pre-split ] ; 2 uses
  %.185.lcssa = phi i32 [ %.185106, %bb.g ], [ %.185, %thread-pre-split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %.not = icmp eq i32 %.182.lcssa, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !30

.critedge99:                                      ; preds = %bb.e, %bb.f, %bb.h, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %proto_mpeg_descriptor_dissect_nordig_lcd_v2_measure_ch_list.exit, %.critedge99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.loopexit.sink.split
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @proto_mpeg_descriptor_dissect_logon_initialize(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 1, 256) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = add i32 %2, %1
  %i.b = load i32, ptr @hf_mpeg_descr_logon_initialize_group_id, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.b, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.d = icmp samesign ugt i32 %2, 2
  br i1 %i.d, label %bb.b, label %.thread121

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %1, 1
  %i.f = load i32, ptr @hf_mpeg_descr_logon_initialize_logon_id, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.e, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.not123 = icmp eq i32 %2, 3
  br i1 %.not123, label %.thread121, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i32 %1, 3                            ; 7 uses
  %i.i = load i32, ptr @hf_mpeg_descr_logon_initialize_continuous_carrier_reserved, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_mpeg_descr_logon_initialize_continuous_carrier, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_mpeg_descr_logon_initialize_security_handshake_required, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_mpeg_descr_logon_initialize_prefix_flag, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.o, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_mpeg_descr_logon_initialize_data_unit_labelling_flag, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @hf_mpeg_descr_logon_initialize_mini_slot_flag, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_mpeg_descr_logon_initialize_contention_based_mini_slot_flag, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.w = add i32 %1, 4                            ; 11 uses
  %i.x = icmp samesign ugt i32 %2, 4
  br i1 %i.x, label %bb.d, label %.thread121

bb.d:                                             ; preds = %bb.c
  %i.y = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.w)
  %i.z = load i32, ptr @hf_mpeg_descr_logon_initialize_capacity_type_flag_reserved, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.w, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ab = load i32, ptr @hf_mpeg_descr_logon_initialize_capacity_type_flag, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.w, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = load i32, ptr @hf_mpeg_descr_logon_initialize_traffic_burst_type, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.w, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.af = zext i8 %i.y to i32                     ; 2 uses
  %i.ag = and i32 %i.af, 32
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load i32, ptr @hf_mpeg_descr_logon_initialize_connectivity, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.w, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aj = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.w)
  %i.ak = and i16 %i.aj, 4096
  %.not118 = icmp eq i16 %i.ak, 0
  %i.al = add i32 %1, 5                           ; 2 uses
  %i.am = add i32 %1, 7                           ; 3 uses
  br i1 %.not118, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr @hf_mpeg_descr_logon_initialize_return_signalling_vpi_reserved, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.w, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ap = load i32, ptr @hf_mpeg_descr_logon_initialize_return_signalling_vpi, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.w, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ar = load i32, ptr @hf_mpeg_descr_logon_initialize_return_signalling_vci, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.al, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.at = load i32, ptr @hf_mpeg_descr_logon_initialize_forward_signalling_vpi_reserved, align 4
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.av = load i32, ptr @hf_mpeg_descr_logon_initialize_forward_signalling_vpi, align 4
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.av, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ax = add i32 %1, 8
  %i.ay = load i32, ptr @hf_mpeg_descr_logon_initialize_forward_signalling_vci, align 4
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ay, ptr noundef %0, i32 noundef %i.ax, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ba = add i32 %1, 10
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.bb = load i32, ptr @hf_mpeg_descr_logon_initialize_return_vpi_reserved, align 4
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bb, ptr noundef %0, i32 noundef %i.w, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bd = load i32, ptr @hf_mpeg_descr_logon_initialize_return_vpi, align 4
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.w, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bf = load i32, ptr @hf_mpeg_descr_logon_initialize_return_vci, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bf, ptr noundef %0, i32 noundef %i.al, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.bh = load i32, ptr @hf_mpeg_descr_logon_initialize_return_trf_pid, align 4
  %i.bi = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bh, ptr noundef %0, i32 noundef %i.w, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bj = add i32 %1, 6                           ; 2 uses
  %i.bk = load i32, ptr @hf_mpeg_descr_logon_initialize_return_ctrl_mngm_pid_reserved, align 4
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bk, ptr noundef %0, i32 noundef %i.bj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bm = load i32, ptr @hf_mpeg_descr_logon_initialize_return_ctrl_mngm_pid, align 4
  %i.bn = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bm, ptr noundef %0, i32 noundef %i.bj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bo = add i32 %1, 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.3 = phi i32 [ %i.ba, %bb.f ], [ %i.am, %bb.g ], [ %i.bo, %bb.h ] ; 5 uses
  %i.bp = icmp uge i32 %.3, %i.a
  %i.bq = and i32 %i.af, 64
  %.not119 = icmp eq i32 %i.bq, 0
  %or.cond = or i1 %.not119, %i.bp
  br i1 %or.cond, label %.thread121, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = load i32, ptr @hf_mpeg_descr_logon_initialize_cra_level, align 4
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.br, ptr noundef %0, i32 noundef %.3, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bt = add i32 %.3, 3                          ; 2 uses
  %i.bu = load i32, ptr @hf_mpeg_descr_logon_initialize_vbdc_max_reserved, align 4
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bu, ptr noundef %0, i32 noundef %i.bt, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bw = load i32, ptr @hf_mpeg_descr_logon_initialize_vbdc_max, align 4
  %i.bx = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bw, ptr noundef %0, i32 noundef %i.bt, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.by = add i32 %.3, 5
  %i.bz = load i32, ptr @hf_mpeg_descr_logon_initialize_rbdc_max, align 4
  %i.ca = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.bz, ptr noundef %0, i32 noundef %i.by, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.cb = add i32 %.3, 8
  %i.cc = load i32, ptr @hf_mpeg_descr_logon_initialize_rbdc_timeout, align 4
  %i.cd = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.cc, ptr noundef %0, i32 noundef %i.cb, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.thread121

.thread121:                                       ; preds = %bb.a, %bb.b, %bb.i, %bb.j, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @proto_mpeg_descriptor_dissect_rcs_content(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 1, 256) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = add i32 %2, %1                           ; 2 uses
  %i.b = icmp ult i32 %1, %i.a
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i32 [ %i.e, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = load i32, ptr @hf_mpeg_descr_rcs_content_table_id, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.c, ptr noundef %0, i32 noundef %.07, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = add i32 %.07, 1                          ; 2 uses
  %exitcond.not = icmp eq i32 %i.e, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden i32 @proto_mpeg_descriptor_loop_dissect(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.not36 = icmp eq i32 %3, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %.02635 = phi i32 [ %.127, %bb.l ], [ 0, %bb.a ]
  %.02834 = phi i32 [ %i.cd, %bb.l ], [ %2, %bb.a ] ; 19 uses
  %i.b = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.02834) ; 2 uses
  %i.c = zext i8 %i.b to i32
  %i.d = icmp eq i8 %i.b, 95
  br i1 %i.d, label %bb.b, label %bb.c

end_hunk_0
