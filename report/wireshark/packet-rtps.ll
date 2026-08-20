inline.NumInlined: 384
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@rtps_util_dissect_optional_annotation_parameter_value:bb.a
  %i.x = load i32, ptr @hf_rtps_dissection_int16, align 4
  %i.y = sext i16 %i.w to i32                     ; 2 uses
  %i.z = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format(ptr noundef %0, i32 noundef %i.x, ptr noundef %1, i32 noundef %i.v, i32 noundef 2, i32 noundef %i.y, ptr noundef nonnull @.str.1617, ptr noundef %3, i32 noundef %i.y) ; 0 uses
  %i.aa = add i32 %i.u, 4
  br label %rtps_util_dissect_annotation_parameter_value.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = and i32 %i.b, -2                        ; 2 uses
  %i.ac = add i32 %i.ab, 2                        ; 2 uses
  %i.ad = tail call zeroext i16 @tvb_get_uint16(ptr noundef %1, i32 noundef %i.ac, i32 noundef -2147483648)
  %i.ae = load i32, ptr @hf_rtps_dissection_uint16, align 4
  %i.af = zext i16 %i.ad to i32                   ; 2 uses
  %i.ag = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %0, i32 noundef %i.ae, ptr noundef %1, i32 noundef %i.ac, i32 noundef 2, i32 noundef %i.af, ptr noundef nonnull @.str.1618, ptr noundef %3, i32 noundef %i.af) ; 0 uses
  %i.ah = add i32 %i.ab, 4
  br label %rtps_util_dissect_annotation_parameter_value.exit

bb.h:                                             ; preds = %bb.b
  %i.ai = and i32 %i.b, -4                        ; 2 uses
  %i.aj = add i32 %i.ai, 4                        ; 2 uses
  %i.ak = tail call i32 @tvb_get_int32(ptr noundef %1, i32 noundef %i.aj, i32 noundef -2147483648) ; 2 uses
  %i.al = load i32, ptr @hf_rtps_dissection_int32, align 4
  %i.am = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format(ptr noundef %0, i32 noundef %i.al, ptr noundef %1, i32 noundef %i.aj, i32 noundef 4, i32 noundef %i.ak, ptr noundef nonnull @.str.1617, ptr noundef %3, i32 noundef %i.ak) ; 0 uses
  %i.an = add i32 %i.ai, 8
  br label %rtps_util_dissect_annotation_parameter_value.exit

bb.i:                                             ; preds = %bb.b
  %i.ao = and i32 %i.b, -4                        ; 2 uses
  %i.ap = add i32 %i.ao, 4                        ; 2 uses
  %i.aq = tail call i32 @tvb_get_uint32(ptr noundef %1, i32 noundef %i.ap, i32 noundef -2147483648) ; 2 uses
  %i.ar = load i32, ptr @hf_rtps_dissection_uint32, align 4
  %i.as = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %0, i32 noundef %i.ar, ptr noundef %1, i32 noundef %i.ap, i32 noundef 4, i32 noundef %i.aq, ptr noundef nonnull @.str.1618, ptr noundef %3, i32 noundef %i.aq) ; 0 uses
  %i.at = add i32 %i.ao, 8
  br label %rtps_util_dissect_annotation_parameter_value.exit

bb.j:                                             ; preds = %bb.b
  %i.au = and i32 %i.b, -4                        ; 2 uses
  %i.av = add i32 %i.au, 4                        ; 2 uses
  %i.aw = tail call i64 @tvb_get_int64(ptr noundef %1, i32 noundef %i.av, i32 noundef -2147483648) ; 2 uses
  %i.ax = load i32, ptr @hf_rtps_dissection_int64, align 4
  %i.ay = tail call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_int64_format(ptr noundef %0, i32 noundef %i.ax, ptr noundef %1, i32 noundef %i.av, i32 noundef 8, i64 noundef %i.aw, ptr noundef nonnull @.str.1619, ptr noundef %3, i64 noundef %i.aw) ; 0 uses
  %i.az = add i32 %i.au, 12
  br label %rtps_util_dissect_annotation_parameter_value.exit

bb.k:                                             ; preds = %bb.b
  %i.ba = and i32 %i.b, -4                        ; 2 uses
  %i.bb = add i32 %i.ba, 4                        ; 2 uses
  %i.bc = tail call i64 @tvb_get_uint64(ptr noundef %1, i32 noundef %i.bb, i32 noundef -2147483648) ; 2 uses
  %i.bd = load i32, ptr @hf_rtps_dissection_uint64, align 4
  %i.be = tail call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_uint64_format(ptr noundef %0, i32 noundef %i.bd, ptr noundef %1, i32 noundef %i.bb, i32 noundef 8, i64 noundef %i.bc, ptr noundef nonnull @.str.1430, ptr noundef %3, i64 noundef %i.bc) ; 0 uses
  %i.bf = add i32 %i.ba, 12
  br label %rtps_util_dissect_annotation_parameter_value.exit

bb.l:                                             ; preds = %bb.b
  %i.bg = and i32 %i.b, -4                        ; 2 uses
  %i.bh = add i32 %i.bg, 4                        ; 2 uses
  %i.bi = tail call float @tvb_get_ieee_float(ptr noundef %1, i32 noundef %i.bh, i32 noundef -2147483648) ; 2 uses
  %i.bj = load i32, ptr @hf_rtps_dissection_float, align 4
  %i.bk = fpext float %i.bi to double
  %i.bl = tail call ptr (ptr, i32, ptr, i32, i32, float, ptr, ...) @proto_tree_add_float_format(ptr noundef %0, i32 noundef %i.bj, ptr noundef %1, i32 noundef %i.bh, i32 noundef 4, float noundef %i.bi, ptr noundef nonnull @.str.1668, ptr noundef %3, double noundef %i.bk) ; 0 uses
  %i.bm = add i32 %i.bg, 8
  br label %rtps_util_dissect_annotation_parameter_value.exit

bb.m:                                             ; preds = %bb.b
  %i.bn = and i32 %i.b, -4                        ; 2 uses
  %i.bo = add i32 %i.bn, 4                        ; 2 uses
  %i.bp = tail call double @tvb_get_ieee_double(ptr noundef %1, i32 noundef %i.bo, i32 noundef -2147483648) ; 2 uses
  %i.bq = load i32, ptr @hf_rtps_dissection_double, align 4
  %i.br = tail call ptr (ptr, i32, ptr, i32, i32, double, ptr, ...) @proto_tree_add_double_format(ptr noundef %0, i32 noundef %i.bq, ptr noundef %1, i32 noundef %i.bo, i32 noundef 8, double noundef %i.bp, ptr noundef nonnull @.str.1668, ptr noundef %3, double noundef %i.bp) ; 0 uses
  %i.bs = add i32 %i.bn, 12
  br label %rtps_util_dissect_annotation_parameter_value.exit

bb.n:                                             ; preds = %bb.b
  %i.bt = load i32, ptr @hf_rtps_type_extended, align 4
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bt, ptr noundef %1, i32 noundef %i.d, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %rtps_util_dissect_annotation_parameter_value.exit

rtps_util_dissect_annotation_parameter_value.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.d, %bb.n ], [ %i.j, %bb.c ], [ %i.o, %bb.d ], [ %i.t, %bb.e ], [ %i.aa, %bb.f ], [ %i.ah, %bb.g ], [ %i.an, %bb.h ], [ %i.at, %bb.i ], [ %i.az, %bb.j ], [ %i.bf, %bb.k ], [ %i.bm, %bb.l ], [ %i.bs, %bb.m ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @rtps_util_add_bitmap(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef range(i32 12, 21) %3, i32 noundef range(i32 0, -2147483647) %4, ptr noundef %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = getelementptr i8, ptr %1, i64 416        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @wmem_strbuf_new(ptr noundef %i.d, ptr noundef nonnull @.str.1488) ; 7 uses
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = tail call ptr @wmem_strbuf_new(ptr noundef %i.f, ptr noundef nonnull @.str.1488)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8
  %i.h = load i32, ptr @ett_rtps_bitmap, align 4
  %i.i = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef %i.h, ptr noundef nonnull %i.b, ptr noundef %5) ; 6 uses
  %i.j = load i32, ptr @hf_rtps_sm_seq_number, align 4
  %i.k = call i32 @tvb_get_uint32(ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, -2147483647) %4)
  %i.l = zext i32 %i.k to i64
  %i.m = add nuw nsw i32 %3, 4
  %i.n = call i32 @tvb_get_uint32(ptr noundef %2, i32 noundef %i.m, i32 noundef range(i32 0, -2147483647) %4)
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw i64 %i.l, 32
  %i.q = or disjoint i64 %i.p, %i.o               ; 8 uses
  %i.r = call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_int64_format(ptr noundef %i.i, i32 noundef %i.j, ptr noundef %2, i32 noundef %3, i32 noundef 8, i64 noundef %i.q, ptr noundef nonnull @.str.1430, ptr noundef nonnull @.str.420, i64 noundef %i.q) ; 0 uses
  %i.s = add nuw nsw i32 %3, 8
  %i.t = load i32, ptr @hf_rtps_bitmap_num_bits, align 4
  %i.u = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.i, i32 noundef %i.t, ptr noundef %2, i32 noundef %i.s, i32 noundef 4, i32 noundef %4, ptr noundef nonnull %i.a) ; 0 uses
  %i.v = add nuw nsw i32 %3, 12                   ; 3 uses
  %i.w = icmp eq i64 %i.q, 0
  %or.cond = and i1 %6, %i.w
  br i1 %or.cond, label %bb.b, label %proto_item_set_generated.exit

bb.b:                                             ; preds = %bb.a
  %i.x = load i32, ptr @hf_rtps_acknack_analysis, align 4
  %i.y = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.i, i32 noundef %i.x, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.1703) ; 4 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %proto_item_set_generated.exit103, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not5.i = icmp eq ptr %i.aa, null
  br i1 %.not5.i, label %proto_item_set_generated.exit103, label %proto_item_set_generated.exit103.sink.split

proto_item_set_generated.exit:                    ; preds = %bb.a
  %i.ab = icmp ne i64 %i.q, 0
  %i.ac = load i32, ptr %i.a, align 4
  %i.ad = icmp eq i32 %i.ac, 0
  %or.cond3 = select i1 %i.ab, i1 %i.ad, i1 false
  %or.cond5 = and i1 %6, %or.cond3
  br i1 %or.cond5, label %bb.d, label %proto_item_set_generated.exit103

bb.d:                                             ; preds = %proto_item_set_generated.exit
  %i.ae = load i32, ptr @hf_rtps_acknack_analysis, align 4
  %i.af = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.i, i32 noundef %i.ae, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 2, ptr noundef nonnull @.str.1704, i64 noundef %i.q) ; 4 uses
  %.not.i101 = icmp eq ptr %i.af, null
  br i1 %.not.i101, label %proto_item_set_generated.exit103, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not5.i102 = icmp eq ptr %i.ah, null
  br i1 %.not5.i102, label %proto_item_set_generated.exit103, label %proto_item_set_generated.exit103.sink.split

proto_item_set_generated.exit103.sink.split:      ; preds = %bb.e, %bb.c
  %.sink142 = phi ptr [ %i.aa, %bb.c ], [ %i.ah, %bb.e ]
  %.186.ph = phi ptr [ %i.y, %bb.c ], [ %i.af, %bb.e ]
  %i.ai = getelementptr i8, ptr %.sink142, i64 28 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = or i32 %i.aj, 2
  store i32 %i.ak, ptr %i.ai, align 4
  br label %proto_item_set_generated.exit103

proto_item_set_generated.exit103:                 ; preds = %proto_item_set_generated.exit103.sink.split, %bb.b, %bb.c, %bb.e, %bb.d, %proto_item_set_generated.exit
  %.186 = phi ptr [ %i.y, %bb.c ], [ null, %proto_item_set_generated.exit ], [ null, %bb.d ], [ %i.af, %bb.e ], [ null, %bb.b ], [ %.186.ph, %proto_item_set_generated.exit103.sink.split ]
  %i.al = load i32, ptr %i.a, align 4             ; 2 uses
  %i.am = icmp ne i32 %i.al, 0
  %or.cond7 = and i1 %6, %i.am
  br i1 %or.cond7, label %bb.f, label %proto_item_set_generated.exit106

bb.f:                                             ; preds = %proto_item_set_generated.exit103
  %i.an = load i32, ptr @hf_rtps_acknack_analysis, align 4
  %i.ao = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.i, i32 noundef %i.an, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 3, ptr noundef nonnull @.str.1705) ; 3 uses
  %.not.i104 = icmp eq ptr %i.ao, null
  br i1 %.not.i104, label %proto_item_set_generated.exit106thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not5.i105 = icmp eq ptr %i.aq, null
  br i1 %.not5.i105, label %proto_item_set_generated.exit106thread-pre-split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr i8, ptr %i.aq, i64 28     ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = or i32 %i.as, 2
  store i32 %i.at, ptr %i.ar, align 4
  br label %proto_item_set_generated.exit106thread-pre-split

proto_item_set_generated.exit106thread-pre-split: ; preds = %bb.f, %bb.g, %bb.h
  %.pr = load i32, ptr %i.a, align 4
  br label %proto_item_set_generated.exit106

proto_item_set_generated.exit106:                 ; preds = %proto_item_set_generated.exit106thread-pre-split, %proto_item_set_generated.exit103
  %i.au = phi i32 [ %.pr, %proto_item_set_generated.exit106thread-pre-split ], [ %i.al, %proto_item_set_generated.exit103 ]
  %.287 = phi ptr [ %i.ao, %proto_item_set_generated.exit106thread-pre-split ], [ %.186, %proto_item_set_generated.exit103 ] ; 2 uses
  %.not119 = icmp eq i32 %i.au, 0
  br i1 %.not119, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %proto_item_set_generated.exit106, %split
  %.0117 = phi i1 [ %.2, %split ], [ true, %proto_item_set_generated.exit106 ]
  %.088116 = phi i32 [ %i.bc, %split ], [ 0, %proto_item_set_generated.exit106 ]
  %.092115 = phi i32 [ %i.bj, %split ], [ 0, %proto_item_set_generated.exit106 ]
  %.093114 = phi i32 [ %i.aw, %split ], [ %i.v, %proto_item_set_generated.exit106 ] ; 2 uses
  %i.av = call i32 @tvb_get_uint32(ptr noundef %2, i32 noundef %.093114, i32 noundef %4)
  %i.aw = add i32 %.093114, 4                     ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph
  %.1113 = phi i1 [ %.0117, %.lr.ph ], [ %.2, %bb.l ] ; 2 uses
  %.189112 = phi i32 [ %.088116, %.lr.ph ], [ %i.bc, %bb.l ] ; 2 uses
  %.091111 = phi i32 [ 0, %.lr.ph ], [ %i.bg, %bb.l ] ; 3 uses
  %i.ax = lshr exact i32 -2147483648, %.091111
  %i.ay = and i32 %i.ax, %i.av
  %.not99 = icmp eq i32 %i.ay, 0                  ; 2 uses
  %i.az = select i1 %.not99, i8 48, i8 49
  call void @wmem_strbuf_append_c(ptr noundef %i.e, i8 noundef signext %i.az)
  br i1 %.not99, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = select i1 %.1113, ptr @.str.1706, ptr @.str.1707
  %7 = zext i32 %.189112 to i64
  %i.bb = add i64 %i.q, %7
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.287, ptr noundef nonnull %i.ba, i64 noundef %i.bb)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2 = phi i1 [ false, %bb.j ], [ %.1113, %bb.i ] ; 2 uses
  %i.bc = add i32 %.189112, 1                     ; 3 uses
  %i.bd = load i32, ptr %i.a, align 4             ; 2 uses
  %.not100 = icmp ult i32 %i.bc, %i.bd
  br i1 %.not100, label %bb.l, label %split

bb.l:                                             ; preds = %bb.k
  %i.be = call i64 @wmem_strbuf_get_len(ptr noundef %i.e)
  %i.bf = icmp ult i64 %i.be, 239
  %i.bg = add nuw nsw i32 %.091111, 1
  %i.bh = icmp samesign ult i32 %.091111, 31
  %or.cond118 = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %or.cond118, label %bb.i, label %._crit_edge121, !llvm.loop !82

._crit_edge121:                                   ; preds = %bb.l
  %.pre = load i32, ptr %i.a, align 4
  br label %split, !llvm.loop !82

split:                                            ; preds = %bb.k, %._crit_edge121
  %i.bi = phi i32 [ %.pre, %._crit_edge121 ], [ %i.bd, %bb.k ]
  %i.bj = add i32 %.092115, 32                    ; 2 uses
  %i.bk = icmp ult i32 %i.bj, %i.bi
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %split, %proto_item_set_generated.exit106
  %.093.lcssa = phi i32 [ %i.v, %proto_item_set_generated.exit106 ], [ %i.aw, %split ] ; 3 uses
  %i.bl = call ptr @wmem_strbuf_get_str(ptr noundef %i.e)
  %i.bm = call ptr @strrchr(ptr noundef %i.bl, i32 noundef 49) #17 ; 2 uses
  %.not = icmp eq ptr %i.bm, null
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.bn = call ptr @wmem_strbuf_get_str(ptr noundef %i.e)
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = add i64 %i.bo, 1
  %i.br = sub i64 %i.bq, %i.bp
  call void @wmem_strbuf_truncate(ptr noundef %i.e, i64 noundef %i.br)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %i.bs = call i64 @wmem_strbuf_get_len(ptr noundef %i.e)
  %.not98 = icmp eq i64 %i.bs, 0
  br i1 %.not98, label %._crit_edge122, label %bb.o

._crit_edge122:                                   ; preds = %bb.n
  %.pre123 = sub i32 %.093.lcssa, %3
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bt = load i32, ptr @hf_rtps_bitmap, align 4
  %reass.sub = sub i32 %.093.lcssa, %3            ; 2 uses
  %i.bu = add i32 %reass.sub, -12
  %i.bv = call ptr @wmem_strbuf_get_str(ptr noundef %i.e)
  %i.bw = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %i.i, i32 noundef %i.bt, ptr noundef %2, i32 noundef %i.v, i32 noundef %i.bu, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef %i.bv) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge122, %bb.o
  %.pre-phi = phi i32 [ %.pre123, %._crit_edge122 ], [ %reass.sub, %bb.o ]
  %i.bx = load ptr, ptr %i.b, align 8
  call void @proto_item_set_len(ptr noundef %i.bx, i32 noundef %.pre-phi)
  %i.by = load i32, ptr %i.a, align 4
  %i.bz = icmp ne i32 %i.by, 0
  %or.cond9 = and i1 %6, %i.bz
  br i1 %or.cond9, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ca = call ptr @wmem_strbuf_get_str(ptr noundef %i.g)
  %i.cb = load i32, ptr %i.a, align 4
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add i64 %i.q, -1
  %i.ce = add i64 %i.cd, %i.cc
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.287, ptr noundef nonnull @.str.1708, ptr noundef %i.ca, i64 noundef %i.q, i64 noundef %i.ce)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.093.lcssa
}

; Function Attrs: null_pointer_is_valid
declare i64 @wmem_strbuf_get_len(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_truncate(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @rtps_util_add_locator_udp_v4(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 4, 13) %3, ptr noundef %4, i32 noundef range(i32 0, -2147483647) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load i32, ptr @ett_rtps_locator_udp_v4, align 4
  %i.c = tail call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %2, i32 noundef %3, i32 noundef 8, i32 noundef %i.b, ptr noundef null, ptr noundef %4) ; 2 uses
  %i.d = load i32, ptr @hf_rtps_locator_udp_v4, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.d, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef range(i32 0, -2147483647) %5)
  %i.f = tail call i32 @tvb_get_ntohl(ptr noundef %2, i32 noundef %3)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %rtps_util_add_ipv4_address_t.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull @ei_rtps_ip_invalid) ; 0 uses
  br label %rtps_util_add_ipv4_address_t.exit

rtps_util_add_ipv4_address_t.exit:                ; preds = %bb.a, %bb.b
  %i.i = load i32, ptr @hf_rtps_locator_udp_v4_port, align 4
  %i.j = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.c, i32 noundef %i.i, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef %5, ptr noundef nonnull %i.a)
  %i.k = load i32, ptr %i.a, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rtps_util_add_ipv4_address_t.exit
  %i.m = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.j, ptr noundef nonnull @ei_rtps_port_invalid) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %rtps_util_add_ipv4_address_t.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_RTPS_DATA(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef range(i32 0, -2147483647) %3, i32 noundef %4, ptr noundef %5, i16 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct._coherent_set_key, align 8  ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %10 = alloca %struct._coherent_set_entity_info, align 8 ; 9 uses
  %i.l = alloca i32, align 4                      ; 3 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 3 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 7 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 3 uses
  %i.s = alloca ptr, align 8                      ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca i32, align 4                      ; 3 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca i32, align 4                      ; 3 uses
  %i.x = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  store i32 0, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i32 -1, ptr %i.k, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i64 48, i1 false)
  %i.y = load i32, ptr @hf_rtps_sm_flags, align 4
  %i.z = load i32, ptr @ett_rtps_flags, align 4
  %i.aa = zext i8 %2 to i64
  %i.ab = tail call ptr @proto_tree_add_bitmask_value(ptr noundef %5, ptr noundef %0, i32 noundef 1, i32 noundef %i.y, i32 noundef %i.z, ptr noundef nonnull @RTPS_DATA_FLAGS, i64 noundef %i.aa) ; 0 uses
  %i.ac = load i32, ptr @hf_rtps_sm_octets_to_next_header, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %5, i32 noundef %i.ac, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef %3)
  br i1 %7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noalias dereferenceable_or_null(1) ptr @wmem_alloc(ptr noundef %i.af, i64 noundef 1) #18 ; 2 uses
  store i8 0, ptr %i.ag, align 1
  %i.ah = load ptr, ptr %i.ae, align 8
  %i.ai = load i32, ptr @proto_rtps, align 4
  tail call void @p_add_proto_data(ptr noundef %i.ah, ptr noundef %1, i32 noundef %i.ai, i32 noundef 2, ptr noundef %i.ag)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0260 = phi i32 [ 28, %bb.b ], [ 20, %bb.a ]
  %i.aj = zext i8 %2 to i32                       ; 4 uses
  %i.ak = and i32 %i.aj, 2                        ; 2 uses
  %.not = icmp eq i32 %i.ak, 0
  %i.al = shl nuw nsw i32 %i.ak, 1
  %i.am = and i32 %i.aj, 4
  %i.an = lshr i32 %i.aj, 1
  %i.ao = and i32 %i.an, 4
  %spec.select = add nuw nsw i32 %i.al, %i.am
  %.2 = add nuw nsw i32 %spec.select, %i.ao
  %.3 = add nuw nsw i32 %.2, %.0260               ; 2 uses
  %i.ap = icmp slt i32 %4, %.3
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ad, ptr noundef nonnull @ei_rtps_sm_octets_to_next_header_error, ptr noundef nonnull @.str.1413, i32 noundef %.3) ; 0 uses
  br label %bb.ay

bb.e:                                             ; preds = %bb.c
  %i.ar = load i32, ptr @hf_rtps_extra_flags, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %5, i32 noundef %i.ar, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.at = load i32, ptr @hf_rtps_octets_to_inline_qos, align 4
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef %5, i32 noundef %i.at, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef %3) ; 0 uses
  %i.av = load i32, ptr @hf_rtps_sm_rdentity_id, align 4
  %i.aw = load i32, ptr @hf_rtps_sm_rdentity_id_key, align 4
  %i.ax = load i32, ptr @hf_rtps_sm_rdentity_id_kind, align 4
  %i.ay = load i32, ptr @ett_rtps_rdentity, align 4
  %i.az = call fastcc zeroext i1 @rtps_util_add_entity_id(ptr noundef %5, ptr noundef %1, ptr noundef %0, i32 noundef 8, i32 noundef %i.av, i32 noundef %i.aw, i32 noundef %i.ax, i32 noundef %i.ay, ptr noundef nonnull @.str.135, ptr noundef nonnull %i.j) ; 0 uses
  %i.ba = load i32, ptr @hf_rtps_sm_wrentity_id, align 4
  %i.bb = load i32, ptr @hf_rtps_sm_wrentity_id_key, align 4
  %i.bc = load i32, ptr @hf_rtps_sm_wrentity_id_kind, align 4
  %i.bd = load i32, ptr @ett_rtps_wrentity, align 4
  %i.be = call fastcc zeroext i1 @rtps_util_add_entity_id(ptr noundef %5, ptr noundef %1, ptr noundef %0, i32 noundef 12, i32 noundef %i.ba, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef %i.bd, ptr noundef nonnull @.str.144, ptr noundef nonnull %i.i) ; 0 uses
  %i.bf = load i32, ptr %i.i, align 4             ; 4 uses
end_hunk_0
