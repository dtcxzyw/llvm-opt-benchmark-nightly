Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-wbxml?download=true
inline.NumInlined: 51
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_wbxml_common:bb.a

.critedge.fold.split44.i:                         ; preds = %.preheader.preheader.i
  br label %get_wbxml_decoding_from_public_id.exit.thread

.critedge.fold.split45.i:                         ; preds = %.preheader.preheader.i
  br label %get_wbxml_decoding_from_public_id.exit.thread

.critedge.fold.split46.i:                         ; preds = %.preheader.preheader.i
  br label %get_wbxml_decoding_from_public_id.exit.thread

.critedge.fold.split47.i:                         ; preds = %.preheader.preheader.i
  br label %get_wbxml_decoding_from_public_id.exit.thread

.critedge.fold.split48.i:                         ; preds = %.preheader.preheader.i
  br label %get_wbxml_decoding_from_public_id.exit.thread

.critedge.fold.split49.i:                         ; preds = %.preheader.preheader.i
  br label %get_wbxml_decoding_from_public_id.exit.thread

.critedge.fold.split50.i:                         ; preds = %.preheader.preheader.i
  br label %get_wbxml_decoding_from_public_id.exit.thread

.critedge.fold.split53.i:                         ; preds = %.preheader.preheader.i
  br label %get_wbxml_decoding_from_public_id.exit.thread

get_wbxml_decoding_from_public_id.exit:           ; preds = %.preheader.preheader.i, %bb.u
  %i.df = getelementptr i8, ptr %1, i64 304       ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8            ; 7 uses
  %.not.i = icmp eq ptr %i.dg, null
  br i1 %.not.i, label %.sink.split, label %bb.v

bb.v:                                             ; preds = %get_wbxml_decoding_from_public_id.exit
  %i.dh = load i8, ptr %i.dg, align 1
  %.not17.i = icmp eq i8 %i.dh, 0
  br i1 %.not17.i, label %.sink.split, label %.preheader.preheader.i121

.preheader.preheader.i121:                        ; preds = %bb.v
  %i.di = call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.105)
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.w, label %.preheader.1.i

bb.w:                                             ; preds = %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i121
  %.023.lcssa24.i = phi ptr [ @content_type_list, %.preheader.preheader.i121 ], [ getelementptr inbounds nuw (i8, ptr @content_type_list, i64 24), %.preheader.1.i ], [ getelementptr inbounds nuw (i8, ptr @content_type_list, i64 48), %.preheader.2.i ], [ getelementptr inbounds nuw (i8, ptr @content_type_list, i64 72), %.preheader.3.i ], [ getelementptr inbounds nuw (i8, ptr @content_type_list, i64 96), %.preheader.4.i ] ; 2 uses
  %i.dk = getelementptr i8, ptr %.023.lcssa24.i, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %.not20.i = icmp eq ptr %i.dl, null
  br i1 %.not20.i, label %get_wbxml_decoding_from_content_type.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = call ptr %i.dl(ptr noundef %0, i32 noundef %i.cv), !inline_history !9 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %get_wbxml_decoding_from_content_type.exit, label %get_wbxml_decoding_from_content_type.exit.thread132

.preheader.1.i:                                   ; preds = %.preheader.preheader.i121
  %i.do = call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.104)
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.w, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.dq = call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.93)
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.w, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.ds = call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.94)
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.w, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.du = call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.95)
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.w, label %.sink.split

get_wbxml_decoding_from_content_type.exit:        ; preds = %bb.w, %bb.x
  %i.dw = getelementptr i8, ptr %.023.lcssa24.i, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %.not120 = icmp eq ptr %i.dx, null
  br i1 %.not120, label %.sink.split, label %get_wbxml_decoding_from_content_type.exit.thread132

get_wbxml_decoding_from_content_type.exit.thread132: ; preds = %bb.x, %get_wbxml_decoding_from_content_type.exit
  %.2.i135 = phi ptr [ %i.dx, %get_wbxml_decoding_from_content_type.exit ], [ %i.dm, %bb.x ] ; 2 uses
  %i.dy = load ptr, ptr %i.d, align 8
  %i.dz = load ptr, ptr %i.df, align 8
  %i.ea = load ptr, ptr %.2.i135, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.dy, ptr noundef nonnull @.str.168, ptr noundef %i.dz, ptr noundef %i.ea)
  br label %get_wbxml_decoding_from_public_id.exit.thread

get_wbxml_decoding_from_public_id.exit.thread:    ; preds = %.critedge.fold.split37.i, %.critedge.fold.split53.i, %.critedge.fold.split42.i, %.critedge.fold.split40.i, %.critedge.fold.split36.i, %.critedge.fold.split44.i, %.critedge.fold.split47.i, %.critedge.fold.split.i, %.critedge.fold.split41.i, %.critedge.fold.split50.i, %.critedge.fold.split49.i, %.critedge.fold.split46.i, %.critedge.fold.split45.i, %.critedge.fold.split38.i, %.preheader.preheader.i, %.critedge.fold.split43.i, %.critedge.fold.split39.i, %.critedge.fold.split48.i, %get_wbxml_decoding_from_content_type.exit.thread132, %bb.t
  %.0103 = phi ptr [ %3, %bb.t ], [ %.2.i135, %get_wbxml_decoding_from_content_type.exit.thread132 ], [ @decode_slc_10, %.critedge.fold.split37.i ], [ @decode_syncmlc_12, %.critedge.fold.split53.i ], [ @decode_provc_10, %.critedge.fold.split42.i ], [ @decode_wmlc_12, %.critedge.fold.split40.i ], [ @decode_sic_10, %.critedge.fold.split36.i ], [ @decode_wv_cspc_10, %.critedge.fold.split44.i ], [ @decode_wv_cspc_13, %.critedge.fold.split47.i ], [ @decode_wmlc_11, %.critedge.fold.split.i ], [ @decode_wmlc_13, %.critedge.fold.split41.i ], [ @decode_syncmlc_11, %.critedge.fold.split50.i ], [ @decode_syncmlc_10, %.critedge.fold.split49.i ], [ @decode_wv_cspc_12, %.critedge.fold.split46.i ], [ @decode_wv_cspc_11, %.critedge.fold.split45.i ], [ @decode_coc_10, %.critedge.fold.split38.i ], [ @decode_wmlc_10, %.preheader.preheader.i ], [ @decode_emnc_10, %.critedge.fold.split43.i ], [ @decode_channelc_10, %.critedge.fold.split39.i ], [ @decode_nokiaprovc_70, %.critedge.fold.split48.i ]
  %i.eb = load i8, ptr @skip_wbxml_token_mapping, align 1, !range !10
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %.sink.split, label %bb.y

.sink.split:                                      ; preds = %get_wbxml_decoding_from_public_id.exit.thread, %.preheader.4.i, %bb.v, %get_wbxml_decoding_from_public_id.exit, %get_wbxml_decoding_from_content_type.exit
  %ei_wbxml_content_type_not_supported.sink = phi ptr [ @ei_wbxml_content_type_not_supported, %.preheader.4.i ], [ @ei_wbxml_content_type_not_supported, %get_wbxml_decoding_from_content_type.exit ], [ @ei_wbxml_content_type_not_supported, %get_wbxml_decoding_from_public_id.exit ], [ @ei_wbxml_content_type_not_supported, %bb.v ], [ @ei_wbxml_content_type_disabled, %get_wbxml_decoding_from_public_id.exit.thread ]
  %i.ed = load ptr, ptr %i.d, align 8
  %i.ee = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ed, ptr noundef nonnull %ei_wbxml_content_type_not_supported.sink) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %get_wbxml_decoding_from_public_id.exit.thread
  %.1 = phi ptr [ %.0103, %get_wbxml_decoding_from_public_id.exit.thread ], [ null, %.sink.split ]
  %i.ef = load i32, ptr @ett_wbxml_tags, align 4
  %i.eg = call ptr @proto_tree_add_subtree(ptr noundef %i.cx, ptr noundef %0, i32 noundef %i.cv, i32 noundef -1, i32 noundef %i.ef, ptr noundef null, ptr noundef nonnull @.str.169)
  %i.eh = call fastcc i32 @parse_wbxml_tag_defined(ptr noundef %i.eg, ptr noundef %0, ptr noundef %1, i32 noundef %i.cv, i32 noundef %i.bu, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef %.1) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.r, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_uintvar(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @mibenum_charset_to_encoding(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @p_add_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_stringz_enc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @parse_wbxml_tag_defined(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 29 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = tail call i32 @tvb_reported_length(ptr noundef %1) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.e = load i32, ptr @proto_wbxml, align 4
  %i.f = tail call i32 @p_get_proto_depth(ptr noundef %2, i32 noundef %i.e) ; 23 uses
  %i.g = getelementptr i8, ptr %2, i64 416        ; 10 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i32, ptr @proto_wbxml, align 4
  %i.j = tail call ptr @p_get_proto_data(ptr noundef %i.h, ptr noundef %2, i32 noundef %i.i, i32 noundef 0)
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = trunc i64 %i.k to i32                    ; 4 uses
  %i.m = icmp ugt i32 %i.f, 254
  br i1 %i.m, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.n = icmp ult i32 %3, %i.d
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.not = icmp eq ptr %7, null                    ; 5 uses
  %i.o = getelementptr i8, ptr %7, i64 80
  %i.p = add nuw nsw i32 %i.f, 1                  ; 9 uses
  %i.q = shl nuw nsw i32 %i.f, 1
  %narrow = sub nuw nsw i32 512, %i.q
  %i.r = zext nneg i32 %narrow to i64
  %i.s = getelementptr i8, ptr @indent_buffer, i64 %i.r ; 17 uses
  %i.t = shl nuw nsw i32 %i.p, 1
  %8 = zext nneg i32 %i.t to i64
  %9 = sub nuw nsw i64 512, %8
  %i.u = getelementptr i8, ptr @indent_buffer, i64 %9 ; 6 uses
  %i.v = getelementptr i8, ptr %7, i64 40
  %i.w = getelementptr i8, ptr %7, i64 48
  %i.x = getelementptr i8, ptr %7, i64 72         ; 3 uses
  %i.y = getelementptr i8, ptr %7, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = tail call i32 @tvb_captured_length_remaining(ptr noundef %1, i32 noundef %3)
  %i.aa = tail call ptr @proto_tree_add_expert(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ei_wbxml_too_much_recursion, ptr noundef %1, i32 noundef %3, i32 noundef %i.z) ; 0 uses
  br label %bb.bm

bb.c:                                             ; preds = %.lr.ph, %bb.bl
  %.0410527 = phi i8 [ 0, %.lr.ph ], [ %.1411, %bb.bl ] ; 13 uses
  %.0413526 = phi ptr [ null, %.lr.ph ], [ %.2, %bb.bl ] ; 18 uses
  %.0416525 = phi i8 [ 0, %.lr.ph ], [ %.2418, %bb.bl ] ; 17 uses
  %.0419524 = phi i32 [ %3, %.lr.ph ], [ %.4, %bb.bl ] ; 42 uses
  %i.ab = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.0419524) ; 4 uses
  %i.ac = zext i8 %i.ab to i32                    ; 9 uses
  %i.ad = and i32 %i.ac, 63                       ; 5 uses
  %i.ae = icmp samesign ult i32 %i.ad, 4
  br i1 %i.ae, label %bb.d, label %bb.an

bb.d:                                             ; preds = %bb.c
  switch i8 %i.ab, label %bb.bl [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 64, label %bb.l
    i8 65, label %bb.l
    i8 66, label %bb.l
    i8 67, label %bb.o
    i8 -128, label %bb.p
    i8 -127, label %bb.p
    i8 -126, label %bb.p
    i8 -125, label %bb.w
    i8 -64, label %bb.x
    i8 -63, label %bb.x
    i8 -62, label %bb.x
    i8 -61, label %bb.aa
  ]

bb.e:                                             ; preds = %bb.d
  %i.af = add nuw i32 %.0419524, 1
  %i.ag = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.af) ; 2 uses
  store i8 %i.ag, ptr %5, align 1
  %i.ah = load i32, ptr @hf_wbxml_switch_page, align 4
  %i.ai = zext i8 %i.ag to i32                    ; 2 uses
  %i.aj = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %0, i32 noundef %i.ah, ptr noundef %1, i32 noundef %.0419524, i32 noundef 2, i32 noundef %i.ai, ptr noundef nonnull @.str.2037, i32 noundef %i.ai) ; 0 uses
  %i.ak = add i32 %.0419524, 2
  br label %bb.bl

bb.f:                                             ; preds = %bb.d
  %.not454 = icmp eq i8 %.0416525, 0
  br i1 %.not454, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load i32, ptr @hf_wbxml_end_known_tag, align 4
  %i.am = load i8, ptr %5, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = zext nneg i8 %.0416525 to i32
  %i.ap = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %0, i32 noundef %i.al, ptr noundef %1, i32 noundef %.0419524, i32 noundef 1, ptr noundef %.0413526, ptr noundef nonnull @.str.2038, i32 noundef %i.f, i32 noundef %i.an, i32 noundef %i.ao, ptr noundef %i.s, ptr noundef %.0413526) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aq = load i32, ptr @hf_wbxml_end_literal_tag, align 4
  %.not455 = icmp eq ptr %.0413526, null
  %i.ar = select i1 %.not455, ptr @.str.2039, ptr %.0413526 ; 2 uses
  %i.as = load i8, ptr %5, align 1
  %i.at = zext i8 %i.as to i32
  %i.au = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %0, i32 noundef %i.aq, ptr noundef %1, i32 noundef %.0419524, i32 noundef 1, ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.2040, i32 noundef %i.f, i32 noundef %i.at, ptr noundef %i.s, ptr noundef nonnull %i.ar) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.av = add nsw i32 %i.f, -1
  %i.aw = load i32, ptr @proto_wbxml, align 4
  call void @p_set_proto_depth(ptr noundef %2, i32 noundef %i.aw, i32 noundef %i.av)
  %reass.sub = sub i32 %.0419524, %3
  %i.ax = add i32 %reass.sub, 1
  br label %bb.bm

bb.j:                                             ; preds = %bb.d
  %i.ay = add nuw i32 %.0419524, 1                ; 2 uses
  %i.az = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.ay, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull @ei_wbxml_oversized_uintvar) ; 2 uses
  %i.ba = load i32, ptr @hf_wbxml_entity, align 4
  %i.bb = load i32, ptr %i.a, align 4
  %i.bc = add i32 %i.bb, 1
  %i.bd = load i8, ptr %5, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %0, i32 noundef %i.ba, ptr noundef %1, i32 noundef %.0419524, i32 noundef %i.bc, i32 noundef %i.az, ptr noundef nonnull @.str.2041, i32 noundef %i.f, i32 noundef %i.be, ptr noundef %i.s, i32 noundef %i.az) ; 0 uses
  %i.bg = load i32, ptr %i.a, align 4
  %i.bh = add i32 %i.ay, %i.bg
  br label %bb.bl

bb.k:                                             ; preds = %bb.d
  %i.bi = load ptr, ptr %i.g, align 8
  %i.bj = add nuw i32 %.0419524, 1                ; 2 uses
  %i.bk = call ptr @tvb_get_stringz_enc(ptr noundef %i.bi, ptr noundef %1, i32 noundef %i.bj, ptr noundef nonnull %i.b, i32 noundef %i.l) ; 2 uses
  %i.bl = load i32, ptr @hf_wbxml_str_i, align 4
  %i.bm = load i32, ptr %i.b, align 4
  %i.bn = add i32 %i.bm, 1
  %i.bo = load i8, ptr %5, align 1
  %i.bp = zext i8 %i.bo to i32
  %i.bq = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %0, i32 noundef %i.bl, ptr noundef %1, i32 noundef %.0419524, i32 noundef %i.bn, ptr noundef %i.bk, ptr noundef nonnull @.str.2042, i32 noundef %i.f, i32 noundef %i.bp, ptr noundef %i.s, ptr noundef %i.bk) ; 0 uses
  %i.br = load i32, ptr %i.b, align 4
  %i.bs = add i32 %i.bj, %i.br
  br label %bb.bl

bb.l:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.bt = load ptr, ptr %i.g, align 8
  %i.bu = add nuw i32 %.0419524, 1                ; 2 uses
  %i.bv = call ptr @tvb_get_stringz_enc(ptr noundef %i.bt, ptr noundef %1, i32 noundef %i.bu, ptr noundef nonnull %i.b, i32 noundef %i.l) ; 2 uses
  %i.bw = load i32, ptr @hf_wbxml_ext_i, align 4
  %i.bx = load i32, ptr %i.b, align 4
  %i.by = add i32 %i.bx, 1
  %i.bz = load i8, ptr %5, align 1
  %i.ca = zext i8 %i.bz to i32
  %i.cb = and i32 %i.ac, 15
  br i1 %.not, label %map_token.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = load ptr, ptr %i.x, align 8             ; 4 uses
  %.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i, label %map_token.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not10.i.i = icmp eq ptr %i.ce, null
  br i1 %.not10.i.i, label %map_token.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.n
  %i.cf = load i32, ptr %i.cc, align 8
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %val_to_valstr.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i
  %.011.i15.i = phi i32 [ %i.ch, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ]
  %i.ch = add i32 %.011.i15.i, 1                  ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr [16 x i8], ptr %i.cc, i64 %i.ci ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i, label %map_token.exit, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %.lr.ph.i
  %i.cm = load i32, ptr %i.cj, align 8
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %val_to_valstr.exit.i, label %.lr.ph.i, !llvm.loop !0

val_to_valstr.exit.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.lcssa.i = phi ptr [ %i.ce, %.lr.ph.i.preheader.i ], [ %i.cl, %.lr.ph.i.i ]
  %i.co = call ptr @try_val_to_str(i32 noundef %i.ac, ptr noundef nonnull %.lcssa.i) ; 2 uses
  %.not11.i = icmp eq ptr %i.co, null
  %.str.2068..i = select i1 %.not11.i, ptr @.str.2068, ptr %i.co
  br label %map_token.exit

map_token.exit:                                   ; preds = %.lr.ph.i, %val_to_valstr.exit.i, %bb.n, %bb.m, %bb.l
  %i.cp = phi ptr [ @.str.2044, %bb.l ], [ %.str.2068..i, %val_to_valstr.exit.i ], [ @.str.2070, %bb.m ], [ @.str.2069, %bb.n ], [ @.str.2069, %.lr.ph.i ]
  %i.cq = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %0, i32 noundef %i.bw, ptr noundef %1, i32 noundef %.0419524, i32 noundef %i.by, ptr noundef %i.bv, ptr noundef nonnull @.str.2043, i32 noundef %i.f, i32 noundef %i.ca, i32 noundef %i.cb, ptr noundef %i.s, ptr noundef nonnull %i.cp, ptr noundef %i.bv) ; 0 uses
  %i.cr = load i32, ptr %i.b, align 4
  %i.cs = add i32 %i.bu, %i.cr
  br label %bb.bl

bb.o:                                             ; preds = %bb.d
  %i.ct = load i32, ptr @hf_wbxml_pi_xml, align 4
  %i.cu = load i8, ptr %5, align 1
  %i.cv = zext i8 %i.cu to i32
  %i.cw = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %0, i32 noundef %i.ct, ptr noundef %1, i32 noundef %.0419524, i32 noundef 1, ptr noundef nonnull @.str.2045, i32 noundef %i.f, i32 noundef %i.cv, ptr noundef %i.s) ; 0 uses
  %i.cx = call fastcc i32 @parse_wbxml_attribute_list_defined(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0419524, i32 noundef %4, ptr noundef %6, ptr noundef %7) ; 2 uses
  store i32 %i.cx, ptr %i.a, align 4
  %i.cy = add i32 %i.cx, %.0419524                ; 2 uses
  %i.cz = load i32, ptr @hf_wbxml_end_pi, align 4
  %i.da = add i32 %i.cy, -1
  %i.db = load i8, ptr %5, align 1
  %i.dc = zext i8 %i.db to i32
  %i.dd = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %0, i32 noundef %i.cz, ptr noundef %1, i32 noundef %i.da, i32 noundef 1, ptr noundef nonnull @.str.2046, i32 noundef %i.f, i32 noundef %i.dc, ptr noundef %i.s) ; 0 uses
  br label %bb.bl

bb.p:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.de = add nuw i32 %.0419524, 1                ; 2 uses
  %i.df = call i32 @tvb_get_uintvar(ptr noundef %1, i32 noundef %i.de, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull @ei_wbxml_oversized_uintvar) ; 2 uses
  br i1 %.not, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dg = and i32 %i.ac, 3                        ; 2 uses
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr [8 x i8], ptr %i.y, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %.not452 = icmp eq ptr %i.dj, null
  %i.dk = load ptr, ptr %i.g, align 8             ; 2 uses
  br i1 %.not452, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dl = call ptr %i.dj(ptr noundef %i.dk, ptr noundef %1, i32 noundef %i.df, i32 noundef %4)
  br label %bb.v

bb.s:                                             ; preds = %bb.q
end_hunk_0
