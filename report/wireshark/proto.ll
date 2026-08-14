inline.NumInlined: 560
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@proto_tree_add_bytes_with_length:bb.a
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = and i32 %i.bg, -2
  %switch = icmp eq i32 %i.bh, 2
  br i1 %switch, label %bb.y, label %bb.v

bb.v:                                             ; preds = %proto_item_is_hidden.exit.thread
  %i.bi = getelementptr i8, ptr %i.ae, i64 16
  %i.bj = load i32, ptr %i.bi, align 8
  %.not59 = icmp eq i32 %i.bj, 1
  br i1 %.not59, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bk = getelementptr i8, ptr %i.af, i64 9
  %i.bl = load i8, ptr %i.bk, align 1, !range !9, !noundef !10
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bn = tail call fastcc ptr @proto_tree_add_fake_node(ptr noundef nonnull %0, ptr noundef %i.ae)
  br label %bb.ae

bb.y:                                             ; preds = %proto_item_is_hidden.exit.thread, %proto_item_is_hidden.exit, %bb.w, %bb.t
  %i.bo = getelementptr i8, ptr %i.ae, i64 16
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = icmp eq i32 %i.bp, 30
  br i1 %i.bq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr i8, ptr %i.ae, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 5014, ptr noundef %i.bs) #35
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call fastcc void @get_hfi_length(ptr noundef nonnull %i.ae, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 0)
  %i.bt = load i32, ptr %i.a, align 4
  %i.bu = tail call fastcc ptr @new_field_info(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, ptr noundef %2, i32 noundef %3, i32 noundef %i.bt)
  %i.bv = tail call fastcc noundef ptr @proto_tree_add_node(ptr noundef nonnull %0, ptr noundef %i.bu) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.bw = getelementptr i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = icmp sgt i32 %6, -1
  br i1 %i.by, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 5064, ptr noundef nonnull @.str.63) #35
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bz = icmp ne ptr %5, null
  %i.ca = icmp eq i32 %6, 0
  %or.cond.i = or i1 %i.bz, %i.ca
  br i1 %or.cond.i, label %proto_tree_set_bytes.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 5065, ptr noundef nonnull @.str.273) #35
  unreachable

proto_tree_set_bytes.exit:                        ; preds = %bb.ac
  %i.cb = getelementptr i8, ptr %i.bx, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = zext nneg i32 %6 to i64
  tail call void @fvalue_set_bytes_data(ptr noundef %i.cc, ptr noundef %5, i64 noundef %i.cd)
  br label %bb.ae

bb.ae:                                            ; preds = %test_length.exit, %proto_tree_set_bytes.exit, %bb.x
  %.0 = phi ptr [ %i.bv, %proto_tree_set_bytes.exit ], [ %i.bn, %bb.x ], [ null, %test_length.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef ptr @proto_tree_add_bytes_format_value(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ...) local_unnamed_addr #0 {
bb.a:
  %7 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.a = tail call ptr @proto_tree_add_bytes(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.a, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !9, !noundef !10
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %proto_item_is_hidden.exit

proto_item_is_hidden.exit:                        ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.d, i64 28
  %i.l = load i32, ptr %i.k, align 4
  %i.m = trunc i32 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %proto_item_is_hidden.exit, %bb.c
  call void @llvm.va_start.p0(ptr nonnull %7)
  call fastcc void @proto_tree_set_representation_value(ptr noundef nonnull %i.a, ptr noundef %6, ptr noundef nonnull %7)
  call void @llvm.va_end.p0(ptr nonnull %7)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %proto_item_is_hidden.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @proto_tree_set_representation_value(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 8, !range !9, !noundef !10
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %proto_item_is_hidden.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not7.i = icmp eq ptr %i.g, null
  br i1 %.not7.i, label %proto_item_is_hidden.exit.thread, label %proto_item_is_hidden.exit

proto_item_is_hidden.exit:                        ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.g, i64 28
  %i.i = load i32, ptr %i.h, align 4
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %proto_item_is_hidden.exit.thread, label %.thread

bb.d:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.not = icmp eq ptr %.pre, null
  br i1 %.not, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 7240, ptr noundef nonnull @.str.284) #35
  unreachable

.thread:                                          ; preds = %proto_item_is_hidden.exit, %bb.d
  %i.k = phi ptr [ %.pre, %bb.d ], [ %i.g, %proto_item_is_hidden.exit ] ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = getelementptr i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 416
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noalias dereferenceable_or_null(256) ptr @wmem_alloc(ptr noundef %i.p, i64 noundef 256) #40 ; 2 uses
  %i.r = getelementptr i8, ptr %i.k, i64 32       ; 10 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %i.q, i64 240
  store i64 0, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.r, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 248
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.l, i64 32       ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %.not60 = icmp eq i64 %i.w, 0
  br i1 %.not60, label %bb.u, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.x = getelementptr i8, ptr %i.l, i64 16       ; 2 uses
  %i.y = load i32, ptr %i.x, align 8
  switch i32 %i.y, label %bb.u [
    i32 3, label %bb.g
    i32 4, label %bb.g
    i32 5, label %bb.g
    i32 6, label %bb.g
    i32 7, label %bb.g
    i32 35, label %bb.g
    i32 2, label %bb.h
    i32 8, label %bb.h
    i32 9, label %bb.h
    i32 10, label %bb.h
    i32 11, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.z = getelementptr i8, ptr %i.k, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i32 @fvalue_get_uinteger(ptr noundef %i.aa)
  %i.ac = zext i32 %i.ab to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.ad = getelementptr i8, ptr %i.k, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i64 @fvalue_get_uinteger64(ptr noundef %i.ae)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.056 = phi i64 [ %i.ac, %bb.g ], [ %i.af, %bb.h ]
  %i.ag = load i64, ptr %i.v, align 8             ; 5 uses
  %neg = sub i64 0, %i.ag
  %3 = and i64 %i.ag, %neg
  %4 = mul i64 %3, %.056                          ; 2 uses
  %i.ah = load ptr, ptr %i.r, align 8             ; 3 uses
  %.not.i61 = icmp eq i64 %i.ag, 0
  br i1 %.not.i61, label %hfinfo_container_bitwidth.exit.thread68, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load i32, ptr %i.x, align 8
  switch i32 %i.ai, label %bb.r [
    i32 2, label %hfinfo_container_bitwidth.exit
    i32 3, label %hfinfo_container_bitwidth.exit.thread
    i32 4, label %hfinfo_container_bitwidth.exit.thread
    i32 12, label %hfinfo_container_bitwidth.exit.thread
    i32 5, label %bb.k
    i32 13, label %bb.k
    i32 6, label %bb.l
    i32 14, label %bb.l
    i32 7, label %bb.m
    i32 15, label %bb.m
    i32 8, label %bb.n
    i32 16, label %bb.n
    i32 9, label %bb.o
    i32 17, label %bb.o
    i32 10, label %bb.p
    i32 18, label %bb.p
    i32 11, label %bb.q
    i32 19, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  br label %hfinfo_container_bitwidth.exit.thread

bb.l:                                             ; preds = %bb.j, %bb.j
  br label %hfinfo_container_bitwidth.exit.thread

bb.m:                                             ; preds = %bb.j, %bb.j
  br label %hfinfo_container_bitwidth.exit.thread

bb.n:                                             ; preds = %bb.j, %bb.j
  br label %hfinfo_container_bitwidth.exit.thread

bb.o:                                             ; preds = %bb.j, %bb.j
  br label %hfinfo_container_bitwidth.exit.thread

bb.p:                                             ; preds = %bb.j, %bb.j
  br label %hfinfo_container_bitwidth.exit.thread

bb.q:                                             ; preds = %bb.j, %bb.j
  br label %hfinfo_container_bitwidth.exit.thread

bb.r:                                             ; preds = %bb.j
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.272, ptr noundef nonnull @.str.1, i32 noundef 11379) #35
  unreachable

hfinfo_container_bitwidth.exit:                   ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %i.l, i64 20
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %hfinfo_container_bitwidth.exit.thread, label %hfinfo_container_bitwidth.exit.thread68

hfinfo_container_bitwidth.exit.thread68:          ; preds = %bb.i, %hfinfo_container_bitwidth.exit
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 5828, ptr noundef nonnull @.str.386) #35
  unreachable

hfinfo_container_bitwidth.exit.thread:            ; preds = %bb.j, %bb.j, %bb.j, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.q, %hfinfo_container_bitwidth.exit
  %.0.i6267 = phi i32 [ %i.ak, %hfinfo_container_bitwidth.exit ], [ 8, %bb.j ], [ 8, %bb.j ], [ 8, %bb.j ], [ 56, %bb.p ], [ 48, %bb.o ], [ 40, %bb.n ], [ 32, %bb.m ], [ 24, %bb.l ], [ 16, %bb.k ], [ 64, %bb.q ]
  %i.am = add nsw i32 %.0.i6267, -1               ; 3 uses
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl nuw i64 1, %i.an                    ; 3 uses
  %i.ap = and i64 %i.ao, %i.ag
  %.not.i5.i = icmp eq i64 %i.ap, 0
  %i.aq = and i64 %i.ao, %4
  %.not21.i6.i = icmp eq i64 %i.aq, 0
  %..i7.i = select i1 %.not21.i6.i, i8 48, i8 49
  %.sink.i8.i = select i1 %.not.i5.i, i8 46, i8 %..i7.i
  store i8 %.sink.i8.i, ptr %i.ah, align 1
  %.1.i9.i = getelementptr i8, ptr %i.ah, i64 1   ; 2 uses
  %exitcond.not.i10.i = icmp eq i32 %i.am, 0
  br i1 %exitcond.not.i10.i, label %decode_bitfield_value.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %hfinfo_container_bitwidth.exit.thread, %bb.t
  %i.ar = phi i32 [ %i.ay, %bb.t ], [ 1, %hfinfo_container_bitwidth.exit.thread ] ; 3 uses
  %.in.i = phi i64 [ %i.as, %bb.t ], [ %i.ao, %hfinfo_container_bitwidth.exit.thread ]
  %.1.i12.i = phi ptr [ %.1.i.i, %bb.t ], [ %.1.i9.i, %hfinfo_container_bitwidth.exit.thread ] ; 2 uses
  %.0.i11.i = phi ptr [ %.2.i.i, %bb.t ], [ %i.ah, %hfinfo_container_bitwidth.exit.thread ]
  %i.as = lshr i64 %.in.i, 1                      ; 3 uses
  %i.at = and i32 %i.ar, 3
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i
  %i.av = getelementptr i8, ptr %.0.i11.i, i64 2
  store i8 32, ptr %.1.i12.i, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i
  %.2.i.i = phi ptr [ %i.av, %bb.s ], [ %.1.i12.i, %.lr.ph.i ] ; 3 uses
  %i.aw = and i64 %i.as, %i.ag
  %.not.i.i = icmp eq i64 %i.aw, 0
  %i.ax = and i64 %i.as, %4
  %.not21.i.i = icmp eq i64 %i.ax, 0
  %..i.i = select i1 %.not21.i.i, i8 48, i8 49
  %.sink.i.i = select i1 %.not.i.i, i8 46, i8 %..i.i
  store i8 %.sink.i.i, ptr %.2.i.i, align 1
  %.1.i.i = getelementptr i8, ptr %.2.i.i, i64 1  ; 2 uses
  %i.ay = add nuw nsw i32 %i.ar, 1
  %exitcond.not.i.i = icmp eq i32 %i.ar, %i.am
  br i1 %exitcond.not.i.i, label %decode_bitfield_value.exit, label %.lr.ph.i

decode_bitfield_value.exit:                       ; preds = %bb.t, %hfinfo_container_bitwidth.exit.thread
  %.1.i.lcssa.i = phi ptr [ %.1.i9.i, %hfinfo_container_bitwidth.exit.thread ], [ %.1.i.i, %bb.t ] ; 2 uses
  store i8 0, ptr %.1.i.lcssa.i, align 1
  %i.az = tail call ptr @g_stpcpy(ptr noundef %.1.i.lcssa.i, ptr noundef nonnull @.str.285)
  %i.ba = load ptr, ptr %i.r, align 8
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %decode_bitfield_value.exit, %.thread
  %.0 = phi i64 [ %i.bd, %decode_bitfield_value.exit ], [ 0, %bb.f ], [ 0, %.thread ]
  %i.be = load ptr, ptr %i.r, align 8
  %i.bf = load ptr, ptr %i.l, align 8
  %i.bg = tail call i64 @ws_label_strcpy(ptr noundef %i.be, i64 noundef 240, i64 noundef %.0, ptr noundef %i.bf, i32 noundef 0) ; 3 uses
  %i.bh = load ptr, ptr %i.r, align 8
  %i.bi = tail call i64 @ws_label_strcpy(ptr noundef %i.bh, i64 noundef 240, i64 noundef %i.bg, ptr noundef nonnull @.str.85, i32 noundef 0) ; 2 uses
  %i.bj = load ptr, ptr %i.a, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 416
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noalias ptr @wmem_strdup_vprintf(ptr noundef %i.bn, ptr noundef %1, ptr noundef %2)
  %i.bp = load ptr, ptr %i.r, align 8
  %i.bq = getelementptr i8, ptr %i.bp, i64 240
  store i64 %i.bi, ptr %i.bq, align 8
  %i.br = load ptr, ptr %i.r, align 8
  %i.bs = tail call i64 @ws_label_strcpy(ptr noundef %i.br, i64 noundef 240, i64 noundef %i.bi, ptr noundef %i.bo, i32 noundef 0)
  %i.bt = icmp ugt i64 %i.bs, 239
  br i1 %i.bt, label %bb.v, label %label_mark_truncated.exit

bb.v:                                             ; preds = %bb.u
  %i.bu = load ptr, ptr %i.r, align 8             ; 4 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 240    ; 4 uses
  %.not.i.i63 = icmp ult i64 %i.bg, 234
  %spec.store.select.i.i = select i1 %.not.i.i63, i64 %i.bg, i64 0 ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 %spec.store.select.i.i ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 6
  %i.by = sub nuw nsw i64 234, %spec.store.select.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.bx, ptr noundef align 1 %i.bw, i64 noundef %i.by, i1 noundef false) #37
  %i.bz = icmp eq i64 %spec.store.select.i.i, 0   ; 2 uses
  br i1 %i.bz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(6) %i.bu, ptr noundef nonnull align 1 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @mark_truncated.trunc_str, i64 1), i64 noundef 6, i1 noundef false) #37
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(6) %i.bw, ptr noundef nonnull align 1 dereferenceable(6) @mark_truncated.trunc_str, i64 noundef 6, i1 noundef false) #37
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ca = tail call ptr @g_utf8_prev_char(ptr noundef %i.bv) #39
  store i8 0, ptr %i.ca, align 1
  %i.cb = getelementptr i8, ptr %i.bu, i64 239
  store i8 0, ptr %i.cb, align 1
  %.not29.i.i = icmp eq ptr %i.bv, null
  br i1 %.not29.i.i, label %label_mark_truncated.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = load i64, ptr %i.bv, align 8            ; 2 uses
  %.not30.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not30.i.i, label %label_mark_truncated.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %..i.i64 = select i1 %i.bz, i64 6, i64 -1
  %i.cd = add i64 %i.cc, %..i.i64
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 239)
  store i64 %spec.store.select.i, ptr %i.bv, align 8
  br label %label_mark_truncated.exit

label_mark_truncated.exit:                        ; preds = %bb.aa, %bb.z, %bb.y, %bb.u
  %i.ce = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.cf = tail call i64 @strlen(ptr noundef %i.ce) #39
  %i.cg = getelementptr i8, ptr %i.ce, i64 240
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = sub i64 %i.cf, %i.ch
  %i.cj = getelementptr i8, ptr %i.ce, i64 248
  store i64 %i.ci, ptr %i.cj, align 8
  br label %proto_item_is_hidden.exit.thread

proto_item_is_hidden.exit.thread:                 ; preds = %bb.b, %bb.c, %label_mark_truncated.exit, %proto_item_is_hidden.exit
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef ptr @proto_tree_add_bytes_format(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ...) local_unnamed_addr #0 {
bb.a:
  %7 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.a = tail call ptr @proto_tree_add_bytes(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b
end_hunk_0
begin_hunk_1_@proto_free_field_strings:bb.a

._crit_edge99:                                    ; preds = %.lr.ph98, %bb.o
  tail call void @value_string_ext_free(ptr noundef nonnull %2)
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.bb = icmp eq i32 %1, 6
  br i1 %i.bb, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.p
  %i.bc = getelementptr i8, ptr %2, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not71100 = icmp eq ptr %i.bd, null
  br i1 %.not71100, label %.thread, label %.lr.ph102

.lr.ph102:                                        ; preds = %.preheader, %.lr.ph102
  %i.be = phi ptr [ %i.bh, %.lr.ph102 ], [ %i.bd, %.preheader ]
  %.0101 = phi ptr [ %i.bf, %.lr.ph102 ], [ %2, %.preheader ] ; 2 uses
  tail call void @g_free(ptr noundef nonnull %i.be)
  %i.bf = getelementptr i8, ptr %.0101, i64 16
  %i.bg = getelementptr i8, ptr %.0101, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not71 = icmp eq ptr %i.bh, null
  br i1 %.not71, label %.thread, label %.lr.ph102, !llvm.loop !56

.thread:                                          ; preds = %.lr.ph, %.lr.ph91, %.lr.ph94, %.lr.ph102, %bb.b, %._crit_edge, %._crit_edge99, %.preheader, %.preheader78, %.preheader80, %.preheader82, %bb.c, %bb.d, %bb.f, %bb.l, %bb.j, %bb.p
  %.05177 = phi ptr [ %2, %bb.b ], [ %2, %bb.l ], [ null, %bb.j ], [ null, %bb.p ], [ %2, %bb.f ], [ %2, %bb.d ], [ %2, %bb.c ], [ %2, %.lr.ph102 ], [ %2, %.lr.ph94 ], [ %2, %.preheader80 ], [ %2, %.lr.ph91 ], [ %2, %.preheader82 ], [ null, %._crit_edge ], [ null, %._crit_edge99 ], [ %2, %.preheader ], [ %2, %.preheader78 ], [ %2, %.lr.ph ]
  tail call void @g_free(ptr noundef %.05177)
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.a, %.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @val64_string_ext_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @value_string_ext_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @expert_free_deregistered_expertinfos() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @g_ptr_array_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @free_deregistered_field(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  tail call void @g_free(ptr noundef %i.c)
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @g_free(ptr noundef %i.e)
  %i.f = getelementptr i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @g_free(ptr noundef %i.g)
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @proto_free_field_strings(i32 noundef %i.i, i32 noundef %i.k, ptr noundef %i.m)
  %i.n = getelementptr i8, ptr %0, i64 52
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @g_slice_free1(i64 noundef 72, ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = load ptr, ptr @gpa_hfinfo.2, align 8
  %i.r = sext i32 %i.b to i64
  %i.s = getelementptr [8 x i8], ptr %i.q, i64 %i.r
  store ptr null, ptr %i.s, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @free_deregistered_data(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  tail call void @g_free(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @free_deregistered_slice(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_slice_free1(i64 noundef %i.a, ptr noundef %i.c)
  tail call void @g_slice_free1(i64 noundef 16, ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @proto_field_display_to_string(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @val_to_str_const(i32 noundef %0, ptr noundef nonnull @hf_display, ptr noundef nonnull @.str.80)
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @proto_register_subtree_array(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @tree_is_expanded, align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @num_tree_types, align 4
  %i.c = add i32 %i.b, %1
  %i.d = sdiv i32 %i.c, 32
  %i.e = add nsw i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call ptr @g_realloc(ptr noundef nonnull %i.a, i64 noundef %i.g) ; 2 uses
  store ptr %i.h, ptr @tree_is_expanded, align 8
  %i.i = load i32, ptr @num_tree_types, align 4   ; 3 uses
  %i.j = add i32 %i.i, %1
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.01318 = phi i32 [ %i.t, %.lr.ph ], [ %i.i, %bb.b ] ; 3 uses
  %i.l = and i32 %.01318, 31
  %i.m = shl nuw i32 1, %i.l
  %i.n = xor i32 %i.m, -1
  %i.o = ashr i32 %.01318, 5
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [4 x i8], ptr %i.h, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, %i.n
  store i32 %i.s, ptr %i.q, align 4
  %i.t = add nsw i32 %.01318, 1                   ; 2 uses
  %i.u = load i32, ptr @num_tree_types, align 4
  %i.v = add i32 %i.u, %1
  %i.w = icmp slt i32 %i.t, %i.v
  br i1 %i.w, label %.lr.ph, label %.loopexit, !llvm.loop !57

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %i.x = icmp sgt i32 %1, 0
  br i1 %i.x, label %.lr.ph21, label %._crit_edge

.lr.ph21:                                         ; preds = %.loopexit, %bb.d
  %.020 = phi ptr [ %i.ac, %bb.d ], [ %0, %.loopexit ] ; 2 uses
  %.119 = phi i32 [ %i.ab, %bb.d ], [ 0, %.loopexit ]
  %i.y = load ptr, ptr %.020, align 8             ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %.off = add i32 %i.z, -1
  %switch = icmp ult i32 %.off, -2
  br i1 %switch, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph21
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.126) #35
  unreachable

bb.d:                                             ; preds = %.lr.ph21
  %i.aa = load i32, ptr @num_tree_types, align 4  ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4
  %i.ab = add nuw nsw i32 %.119, 1                ; 2 uses
  %i.ac = getelementptr i8, ptr %.020, i64 8
  %i.ad = add i32 %i.aa, 1
  store i32 %i.ad, ptr @num_tree_types, align 4
  %exitcond.not = icmp eq i32 %i.ab, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph21, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.d, %.loopexit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @ws_log_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @fill_label_boolean(ptr nofree readonly captures(none) %.0.val, ptr %.48.val, ptr noundef nonnull %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @fvalue_get_uinteger64(ptr noundef %.48.val) ; 2 uses
  %i.b = getelementptr i8, ptr %.0.val, i64 32
  %i.c = load i64, ptr %i.b, align 8              ; 5 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 16
  %i.e = load i32, ptr %i.d, align 8
  switch i32 %i.e, label %bb.j [
    i32 2, label %hfinfo_container_bitwidth.exit
    i32 3, label %bb.l
    i32 4, label %bb.l
    i32 12, label %bb.l
    i32 5, label %bb.c
    i32 13, label %bb.c
    i32 6, label %bb.d
    i32 14, label %bb.d
    i32 7, label %bb.e
    i32 15, label %bb.e
    i32 8, label %bb.f
    i32 16, label %bb.f
    i32 9, label %bb.g
    i32 17, label %bb.g
    i32 10, label %bb.h
    i32 18, label %bb.h
    i32 11, label %bb.i
    i32 19, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  br label %bb.l

bb.d:                                             ; preds = %bb.b, %bb.b
  br label %bb.l

bb.e:                                             ; preds = %bb.b, %bb.b
  br label %bb.l

bb.f:                                             ; preds = %bb.b, %bb.b
  br label %bb.l

bb.g:                                             ; preds = %bb.b, %bb.b
  br label %bb.l

bb.h:                                             ; preds = %bb.b, %bb.b
  br label %bb.l

bb.i:                                             ; preds = %bb.b, %bb.b
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.272, ptr noundef nonnull @.str.1, i32 noundef 11379) #35
  unreachable

hfinfo_container_bitwidth.exit:                   ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.0.val, i64 20
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.l, label %bb.k

bb.k:                                             ; preds = %hfinfo_container_bitwidth.exit
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 5828, ptr noundef nonnull @.str.386) #35
  unreachable

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.i, %bb.b, %bb.b, %bb.b, %hfinfo_container_bitwidth.exit
  %.0.i2 = phi i32 [ %i.g, %hfinfo_container_bitwidth.exit ], [ 8, %bb.b ], [ 8, %bb.b ], [ 56, %bb.h ], [ 48, %bb.g ], [ 40, %bb.f ], [ 32, %bb.e ], [ 24, %bb.d ], [ 16, %bb.c ], [ 64, %bb.i ], [ 8, %bb.b ]
  %neg.pn = sub i64 0, %i.c
  %.pn = and i64 %i.c, %neg.pn
  %2 = mul i64 %.pn, %i.a                         ; 2 uses
  %i.i = add nsw i32 %.0.i2, -1                   ; 3 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j                      ; 3 uses
  %i.l = and i64 %i.k, %i.c
  %.not.i5.i = icmp eq i64 %i.l, 0
  %i.m = and i64 %i.k, %2
  %.not21.i6.i = icmp eq i64 %i.m, 0
  %..i7.i = select i1 %.not21.i6.i, i8 48, i8 49
  %.sink.i8.i = select i1 %.not.i5.i, i8 46, i8 %..i7.i
  store i8 %.sink.i8.i, ptr %0, align 1
  %.1.i9.i = getelementptr i8, ptr %0, i64 1      ; 2 uses
  %exitcond.not.i10.i = icmp eq i32 %i.i, 0
  br i1 %exitcond.not.i10.i, label %decode_bitfield_value.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.n
  %i.n = phi i32 [ %i.u, %bb.n ], [ 1, %bb.l ]    ; 3 uses
  %.in.i = phi i64 [ %i.o, %bb.n ], [ %i.k, %bb.l ]
  %.1.i12.i = phi ptr [ %.1.i.i, %bb.n ], [ %.1.i9.i, %bb.l ] ; 2 uses
  %.0.i11.i = phi ptr [ %.2.i.i, %bb.n ], [ %0, %bb.l ]
  %i.o = lshr i64 %.in.i, 1                       ; 3 uses
  %i.p = and i32 %i.n, 3
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr i8, ptr %.0.i11.i, i64 2
  store i8 32, ptr %.1.i12.i, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %.2.i.i = phi ptr [ %i.r, %bb.m ], [ %.1.i12.i, %.lr.ph.i ] ; 3 uses
  %i.s = and i64 %i.o, %i.c
  %.not.i.i = icmp eq i64 %i.s, 0
  %i.t = and i64 %i.o, %2
  %.not21.i.i = icmp eq i64 %i.t, 0
  %..i.i = select i1 %.not21.i.i, i8 48, i8 49
  %.sink.i.i = select i1 %.not.i.i, i8 46, i8 %..i.i
  store i8 %.sink.i.i, ptr %.2.i.i, align 1
  %.1.i.i = getelementptr i8, ptr %.2.i.i, i64 1  ; 2 uses
  %i.u = add nuw nsw i32 %i.n, 1
  %exitcond.not.i.i = icmp eq i32 %i.n, %i.i
  br i1 %exitcond.not.i.i, label %decode_bitfield_value.exit, label %.lr.ph.i

decode_bitfield_value.exit:                       ; preds = %bb.n, %bb.l
  %.1.i.lcssa.i = phi ptr [ %.1.i9.i, %bb.l ], [ %.1.i.i, %bb.n ] ; 2 uses
  store i8 0, ptr %.1.i.lcssa.i, align 1
  %i.v = tail call ptr @g_stpcpy(ptr noundef %.1.i.lcssa.i, ptr noundef nonnull @.str.285)
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %0 to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = and i64 %i.y, 4294967295
  br label %bb.o

bb.o:                                             ; preds = %decode_bitfield_value.exit, %bb.a
  %.0 = phi i64 [ %i.z, %decode_bitfield_value.exit ], [ 0, %bb.a ]
  %i.aa = icmp ne i64 %i.a, 0
  %i.ab = getelementptr i8, ptr %.0.val, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call ptr @tfs_get_string(i1 noundef zeroext %i.aa, ptr noundef %i.ac)
  tail call fastcc void @label_fill(ptr noundef nonnull %0, i64 noundef %.0, ptr noundef %.0.val, ptr noundef %i.ad, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @label_fill(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8
  %i.b = tail call i64 @ws_label_strcpy(ptr noundef %0, i64 noundef 240, i64 noundef %1, ptr noundef %i.a, i32 noundef 0) ; 4 uses
  %i.c = getelementptr i8, ptr %2, i64 20         ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 8192
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @ws_label_strcpy(ptr noundef %0, i64 noundef 240, i64 noundef %i.b, ptr noundef nonnull @.str.85, i32 noundef 0) ; 2 uses
  %.not19 = icmp eq ptr %4, null
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.f, ptr %4, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not20 = icmp eq ptr %3, null
  %i.g = select i1 %.not20, ptr @.str.382, ptr %3
  %.val = load i32, ptr %i.c, align 4
  %i.h = and i32 %.val, 23
  %.not.i = icmp ne i32 %i.h, 0
  %..i = zext i1 %.not.i to i32
  %i.i = tail call i64 @ws_label_strcpy(ptr noundef %0, i64 noundef 240, i64 noundef %i.f, ptr noundef nonnull %i.g, i32 noundef %..i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.d ]
  %i.j = icmp ugt i64 %.0, 239
  br i1 %i.j, label %bb.f, label %label_mark_truncated.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp ult i64 %i.b, 234
  %spec.store.select.i.i = select i1 %.not.i.i, i64 %i.b, i64 0 ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 %spec.store.select.i.i ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 6
  %i.m = sub nuw nsw i64 234, %spec.store.select.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.l, ptr noundef align 1 %i.k, i64 noundef %i.m, i1 noundef false) #37
  %i.n = icmp eq i64 %spec.store.select.i.i, 0    ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(6) %0, ptr noundef nonnull align 1 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @mark_truncated.trunc_str, i64 1), i64 noundef 6, i1 noundef false) #37
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(6) %i.k, ptr noundef nonnull align 1 dereferenceable(6) @mark_truncated.trunc_str, i64 noundef 6, i1 noundef false) #37
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = getelementptr i8, ptr %0, i64 240
  %i.p = tail call ptr @g_utf8_prev_char(ptr noundef %i.o) #39
  store i8 0, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %0, i64 239
  store i8 0, ptr %i.q, align 1
  %.not29.i.i = icmp eq ptr %4, null
  br i1 %.not29.i.i, label %label_mark_truncated.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = load i64, ptr %4, align 8                ; 2 uses
  %.not30.i.i = icmp eq i64 %i.r, 0
  br i1 %.not30.i.i, label %label_mark_truncated.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %..i.i = select i1 %i.n, i64 6, i64 -1
  %i.s = add i64 %i.r, %..i.i
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 239)
  store i64 %spec.store.select.i, ptr %4, align 8
  br label %label_mark_truncated.exit

label_mark_truncated.exit:                        ; preds = %bb.k, %bb.j, %bb.i, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @fill_label_bitfield_char(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 14 uses
  %i.b = alloca [240 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.c = load ptr, ptr %0, align 8                ; 11 uses
  %i.d = getelementptr i8, ptr %i.c, i64 32       ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.not.i = icmp eq i64 %i.e, 0
  %.sink33.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 4 uses
  %.sink33.i.i.sroa.gep61 = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 12 uses
  br i1 %.not.i, label %hfinfo_container_bitwidth.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 16
  %i.g = load i32, ptr %i.f, align 8
  switch i32 %i.g, label %bb.k [
    i32 2, label %bb.c
    i32 3, label %hfinfo_container_bitwidth.exit
    i32 4, label %hfinfo_container_bitwidth.exit
    i32 12, label %hfinfo_container_bitwidth.exit
    i32 5, label %bb.d
    i32 13, label %bb.d
    i32 6, label %bb.e
    i32 14, label %bb.e
    i32 7, label %bb.f
    i32 15, label %bb.f
    i32 8, label %bb.g
    i32 16, label %bb.g
    i32 9, label %bb.h
    i32 17, label %bb.h
    i32 10, label %bb.i
    i32 18, label %bb.i
    i32 11, label %bb.j
    i32 19, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.c, i64 20
  %i.i = load i32, ptr %i.h, align 4
  br label %hfinfo_container_bitwidth.exit

bb.d:                                             ; preds = %bb.b, %bb.b
  br label %hfinfo_container_bitwidth.exit

bb.e:                                             ; preds = %bb.b, %bb.b
  br label %hfinfo_container_bitwidth.exit

bb.f:                                             ; preds = %bb.b, %bb.b
  br label %hfinfo_container_bitwidth.exit

bb.g:                                             ; preds = %bb.b, %bb.b
  br label %hfinfo_container_bitwidth.exit

bb.h:                                             ; preds = %bb.b, %bb.b
  br label %hfinfo_container_bitwidth.exit

bb.i:                                             ; preds = %bb.b, %bb.b
  br label %hfinfo_container_bitwidth.exit

bb.j:                                             ; preds = %bb.b, %bb.b
  br label %hfinfo_container_bitwidth.exit

bb.k:                                             ; preds = %bb.b
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.272, ptr noundef nonnull @.str.1, i32 noundef 11379) #35
  unreachable

hfinfo_container_bitwidth.exit:                   ; preds = %bb.a, %bb.b, %bb.b, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 64, %bb.j ], [ 16, %bb.d ], [ 24, %bb.e ], [ 32, %bb.f ], [ 40, %bb.g ], [ 48, %bb.h ], [ 56, %bb.i ], [ 8, %bb.b ], [ 8, %bb.b ], [ 8, %bb.b ] ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @fvalue_get_uinteger(ptr noundef %i.k) ; 21 uses
  %i.m = load i64, ptr %i.d, align 8              ; 4 uses
  %.not = icmp eq i64 %i.m, 0
  %i.n = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.m, i1 true)
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = select i1 %.not, i32 0, i32 %i.o
  %.0 = shl i32 %i.l, %i.p
  %i.q = zext i32 %.0 to i64                      ; 2 uses
  %i.r = icmp sgt i32 %.0.i, 0
  br i1 %i.r, label %bb.m, label %bb.l

bb.l:                                             ; preds = %hfinfo_container_bitwidth.exit
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 5828, ptr noundef nonnull @.str.386) #35
  unreachable

bb.m:                                             ; preds = %hfinfo_container_bitwidth.exit
  %i.s = add nsw i32 %.0.i, -1                    ; 3 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t                      ; 3 uses
  %i.v = and i64 %i.u, %i.m
  %.not.i5.i = icmp eq i64 %i.v, 0
end_hunk_1
begin_hunk_2_@fill_label_number:bb.a
  call void %i.m(ptr noundef nonnull %i.b, i32 noundef %.0)
  call fastcc void @label_fill(ptr noundef %1, i64 noundef 0, ptr noundef %i.d, ptr noundef nonnull %i.b, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.s

bb.h:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.d, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr i8, ptr %i.d, i64 16
  %i.q = load i32, ptr %i.p, align 8
  %.not58 = icmp eq i32 %i.q, 35
  br i1 %.not58, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call fastcc ptr @hf_try_val_to_str(i32 noundef %.0, ptr noundef %i.d) ; 6 uses
  %i.s = load i32, ptr %i.i, align 4              ; 2 uses
  %i.t = and i32 %i.s, 255                        ; 3 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %hfinfo_number_vals_format.exit.thread, label %hfinfo_number_vals_format.exit

hfinfo_number_vals_format.exit:                   ; preds = %bb.j
  %i.v = icmp eq i32 %i.t, 4
  %spec.store.select.i = select i1 %i.v, i32 1, i32 %i.t ; 2 uses
  %i.w = icmp eq i32 %spec.store.select.i, 5
  %spec.store.select1.i = select i1 %i.w, i32 2, i32 %spec.store.select.i
  %i.x = call fastcc ptr @hfinfo_number_value_format_display(ptr noundef readonly %i.d, i32 noundef %spec.store.select1.i, ptr noundef nonnull %i.a, i32 noundef %.0) ; 3 uses
  %i.y = load i32, ptr %i.i, align 4
  %i.z = and i32 %i.y, 32768
  %.not59 = icmp eq i32 %i.z, 0
  br i1 %.not59, label %bb.n, label %bb.k

hfinfo_number_vals_format.exit.thread:            ; preds = %bb.j
  %i.aa = and i32 %i.s, 32768
  %.not5965 = icmp eq i32 %i.aa, 0
  br i1 %.not5965, label %.thread, label %bb.k

.thread:                                          ; preds = %hfinfo_number_vals_format.exit.thread
  %i.ab = icmp eq ptr %i.r, null
  %spec.store.select69 = select i1 %i.ab, ptr @.str.80, ptr %i.r
  br label %bb.o

bb.k:                                             ; preds = %hfinfo_number_vals_format.exit.thread, %hfinfo_number_vals_format.exit
  %.0.i67 = phi ptr [ null, %hfinfo_number_vals_format.exit.thread ], [ %i.x, %hfinfo_number_vals_format.exit ] ; 2 uses
  %.not60 = icmp eq ptr %i.r, null
  br i1 %.not60, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call fastcc void @label_fill_descr(ptr noundef %1, i64 noundef 0, ptr noundef %i.d, ptr noundef nonnull %i.r, ptr noundef %.0.i67, ptr noundef %2)
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  call fastcc void @label_fill(ptr noundef %1, i64 noundef 0, ptr noundef %i.d, ptr noundef %.0.i67, ptr noundef %2)
  br label %bb.s

bb.n:                                             ; preds = %hfinfo_number_vals_format.exit
  %i.ac = icmp eq ptr %i.r, null
  %spec.store.select = select i1 %i.ac, ptr @.str.80, ptr %i.r ; 2 uses
  %i.ad = icmp eq ptr %i.x, null
  br i1 %i.ad, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread, %bb.n
  %spec.store.select70 = phi ptr [ %spec.store.select69, %.thread ], [ %spec.store.select, %bb.n ]
  call fastcc void @label_fill(ptr noundef %1, i64 noundef 0, ptr noundef %i.d, ptr noundef nonnull %spec.store.select70, ptr noundef %2)
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  call fastcc void @label_fill_descr(ptr noundef %1, i64 noundef 0, ptr noundef %i.d, ptr noundef nonnull %spec.store.select, ptr noundef nonnull %i.x, ptr noundef %2)
  br label %bb.s

bb.q:                                             ; preds = %bb.i, %bb.h
  %.off = add i32 %i.j, -13
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %switch.lookup, label %bb.r

switch.lookup:                                    ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.ae = zext nneg i32 %i.j to i64
  %i.af = getelementptr i8, ptr @switch.table.fill_label_number, i64 %i.ae
  %switch.gep = getelementptr i8, ptr %i.af, i64 -13
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.ag = call i32 @port_with_resolution_to_str_buf(ptr noundef nonnull %i.c, i64 noundef 240, i32 noundef %switch.ext, i32 noundef %.0) ; 0 uses
  call fastcc void @label_fill(ptr noundef %1, i64 noundef 0, ptr noundef %i.d, ptr noundef nonnull %i.c, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ah = getelementptr i8, ptr %i.d, i64 16
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp eq i32 %i.ai, 35
  %spec.store.select.i63 = select i1 %i.aj, i32 1, i32 %i.j
  %i.ak = call fastcc ptr @hfinfo_number_value_format_display(ptr noundef readonly %i.d, i32 noundef %spec.store.select.i63, ptr noundef nonnull %i.a, i32 noundef %.0)
  call fastcc void @label_fill(ptr noundef %1, i64 noundef 0, ptr noundef %i.d, ptr noundef %i.ak, ptr noundef %2)
  br label %bb.s

bb.s:                                             ; preds = %bb.m, %bb.l, %bb.p, %bb.o, %bb.r, %switch.lookup, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @fill_label_bitfield64(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef captures(address_is_null) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 4 uses
  %i.b = alloca [240 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.c = load ptr, ptr %0, align 8                ; 17 uses
  %i.d = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 262144
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = shl i32 %i.h, 3
  br label %hfinfo_container_bitwidth.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %hfinfo_container_bitwidth.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.c, i64 16
  %i.m = load i32, ptr %i.l, align 8
  switch i32 %i.m, label %bb.m [
    i32 2, label %bb.e
    i32 3, label %hfinfo_container_bitwidth.exit
    i32 4, label %hfinfo_container_bitwidth.exit
    i32 12, label %hfinfo_container_bitwidth.exit
    i32 5, label %bb.f
    i32 13, label %bb.f
    i32 6, label %bb.g
    i32 14, label %bb.g
    i32 7, label %bb.h
    i32 15, label %bb.h
    i32 8, label %bb.i
    i32 16, label %bb.i
    i32 9, label %bb.j
    i32 17, label %bb.j
    i32 10, label %bb.k
    i32 18, label %bb.k
    i32 11, label %bb.l
    i32 19, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.c, i64 20
  %i.o = load i32, ptr %i.n, align 4
  br label %hfinfo_container_bitwidth.exit

bb.f:                                             ; preds = %bb.d, %bb.d
  br label %hfinfo_container_bitwidth.exit

bb.g:                                             ; preds = %bb.d, %bb.d
  br label %hfinfo_container_bitwidth.exit

bb.h:                                             ; preds = %bb.d, %bb.d
  br label %hfinfo_container_bitwidth.exit

bb.i:                                             ; preds = %bb.d, %bb.d
  br label %hfinfo_container_bitwidth.exit

bb.j:                                             ; preds = %bb.d, %bb.d
  br label %hfinfo_container_bitwidth.exit

bb.k:                                             ; preds = %bb.d, %bb.d
  br label %hfinfo_container_bitwidth.exit

bb.l:                                             ; preds = %bb.d, %bb.d
  br label %hfinfo_container_bitwidth.exit

bb.m:                                             ; preds = %bb.d
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.272, ptr noundef nonnull @.str.1, i32 noundef 11379) #35
  unreachable

hfinfo_container_bitwidth.exit:                   ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.d, %bb.d, %bb.c, %bb.b
  %.068 = phi i32 [ %i.i, %bb.b ], [ %i.o, %bb.e ], [ 0, %bb.c ], [ 64, %bb.l ], [ 16, %bb.f ], [ 24, %bb.g ], [ 32, %bb.h ], [ 40, %bb.i ], [ 48, %bb.j ], [ 56, %bb.k ], [ 8, %bb.d ], [ 8, %bb.d ], [ 8, %bb.d ] ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  br i1 %3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %hfinfo_container_bitwidth.exit
  %i.r = tail call i64 @fvalue_get_sinteger64(ptr noundef %i.q)
  br label %bb.p

bb.o:                                             ; preds = %hfinfo_container_bitwidth.exit
  %i.s = tail call i64 @fvalue_get_uinteger64(ptr noundef %i.q)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.070 = phi i64 [ %i.r, %bb.n ], [ %i.s, %bb.o ] ; 8 uses
  %i.t = getelementptr i8, ptr %i.c, i64 32
  %i.u = load i64, ptr %i.t, align 8              ; 6 uses
  %.not74 = icmp eq i64 %i.u, 0
  %neg = sub i64 0, %i.u
  %4 = and i64 %i.u, %neg
  %i.v = select i1 %.not74, i64 1, i64 %4
  %.069 = mul i64 %.070, %i.v                     ; 3 uses
  %i.w = load i32, ptr %i.d, align 4
  %i.x = and i32 %i.w, 262144
  %.not75 = icmp eq i32 %i.x, 0
  %i.y = icmp sgt i32 %.068, 0                    ; 2 uses
  br i1 %.not75, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.y, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 5874, ptr noundef nonnull @.str.386) #35
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.z = add nsw i32 %.068, -1                    ; 3 uses
  store i8 46, ptr %1, align 1
  %.1.i8.i = getelementptr i8, ptr %1, i64 1      ; 2 uses
  %exitcond.not.i9.i = icmp eq i32 %i.z, 0
  br i1 %exitcond.not.i9.i, label %decode_bitfield_varint_value.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw i64 1, %i.aa
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %.lr.ph.preheader.i
  %i.ac = phi i32 [ %i.ak, %bb.u ], [ 1, %.lr.ph.preheader.i ] ; 4 uses
  %.in.i = phi i64 [ %i.ad, %bb.u ], [ %i.ab, %.lr.ph.preheader.i ]
  %.1.i11.i = phi ptr [ %.1.i.i, %bb.u ], [ %.1.i8.i, %.lr.ph.preheader.i ] ; 2 uses
  %.0.i10.i = phi ptr [ %.2.i.i, %bb.u ], [ %1, %.lr.ph.preheader.i ]
  %i.ad = lshr i64 %.in.i, 1                      ; 3 uses
  %i.ae = and i32 %i.ac, 3
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr i8, ptr %.0.i10.i, i64 2
  store i8 32, ptr %.1.i11.i, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %.2.i.i = phi ptr [ %i.ag, %bb.t ], [ %.1.i11.i, %.lr.ph.i ] ; 3 uses
  %i.ah = and i32 %i.ac, 7
  %.not.i.i = icmp eq i32 %i.ah, 0
  %i.ai = and i64 %i.ad, %i.u
  %.not22.i.i = icmp eq i64 %i.ai, 0
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not22.i.i
  %i.aj = and i64 %i.ad, %.069
  %.not23.i.i = icmp eq i64 %i.aj, 0
  %..i.i = select i1 %.not23.i.i, i8 48, i8 49
  %.sink.i.i = select i1 %or.cond.i.i, i8 46, i8 %..i.i
  store i8 %.sink.i.i, ptr %.2.i.i, align 1
  %.1.i.i = getelementptr i8, ptr %.2.i.i, i64 1  ; 2 uses
  %i.ak = add nuw nsw i32 %i.ac, 1
  %exitcond.not.i.i = icmp eq i32 %i.ac, %i.z
  br i1 %exitcond.not.i.i, label %decode_bitfield_varint_value.exit, label %.lr.ph.i

bb.v:                                             ; preds = %bb.p
  br i1 %i.y, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 5828, ptr noundef nonnull @.str.386) #35
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.al = add nsw i32 %.068, -1                   ; 3 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw i64 1, %i.am                    ; 3 uses
  %i.ao = and i64 %i.u, %i.an
  %.not.i5.i = icmp eq i64 %i.ao, 0
  %i.ap = and i64 %.069, %i.an
  %.not21.i6.i = icmp eq i64 %i.ap, 0
  %..i7.i = select i1 %.not21.i6.i, i8 48, i8 49
  %.sink.i8.i = select i1 %.not.i5.i, i8 46, i8 %..i7.i
  store i8 %.sink.i8.i, ptr %1, align 1
  %.1.i9.i = getelementptr i8, ptr %1, i64 1      ; 2 uses
  %exitcond.not.i10.i = icmp eq i32 %i.al, 0
  br i1 %exitcond.not.i10.i, label %decode_bitfield_varint_value.exit, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %bb.x, %bb.z
  %i.aq = phi i32 [ %i.ax, %bb.z ], [ 1, %bb.x ]  ; 3 uses
  %.in.i81 = phi i64 [ %i.ar, %bb.z ], [ %i.an, %bb.x ]
  %.1.i12.i = phi ptr [ %.1.i.i86, %bb.z ], [ %.1.i9.i, %bb.x ] ; 2 uses
  %.0.i11.i = phi ptr [ %.2.i.i82, %bb.z ], [ %1, %bb.x ]
  %i.ar = lshr i64 %.in.i81, 1                    ; 3 uses
  %i.as = and i32 %i.aq, 3
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i80
  %i.au = getelementptr i8, ptr %.0.i11.i, i64 2
  store i8 32, ptr %.1.i12.i, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i80
  %.2.i.i82 = phi ptr [ %i.au, %bb.y ], [ %.1.i12.i, %.lr.ph.i80 ] ; 3 uses
  %i.av = and i64 %i.ar, %i.u
  %.not.i.i83 = icmp eq i64 %i.av, 0
  %i.aw = and i64 %i.ar, %.069
  %.not21.i.i = icmp eq i64 %i.aw, 0
  %..i.i84 = select i1 %.not21.i.i, i8 48, i8 49
  %.sink.i.i85 = select i1 %.not.i.i83, i8 46, i8 %..i.i84
  store i8 %.sink.i.i85, ptr %.2.i.i82, align 1
  %.1.i.i86 = getelementptr i8, ptr %.2.i.i82, i64 1 ; 2 uses
  %i.ax = add nuw nsw i32 %i.aq, 1
  %exitcond.not.i.i87 = icmp eq i32 %i.aq, %i.al
  br i1 %exitcond.not.i.i87, label %decode_bitfield_varint_value.exit, label %.lr.ph.i80

decode_bitfield_varint_value.exit:                ; preds = %bb.u, %bb.z, %bb.x, %bb.s
  %.1.i.lcssa.i88.sink107 = phi ptr [ %.1.i.i86, %bb.z ], [ %.1.i8.i, %bb.s ], [ %.1.i9.i, %bb.x ], [ %.1.i.i, %bb.u ] ; 2 uses
  store i8 0, ptr %.1.i.lcssa.i88.sink107, align 1
  %i.ay = tail call ptr @g_stpcpy(ptr noundef %.1.i.lcssa.i88.sink107, ptr noundef nonnull @.str.285)
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %1 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 5 uses
  %i.bc = getelementptr i8, ptr %i.c, i64 20      ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4            ; 6 uses
  %i.be = icmp eq i32 %i.bd, 6
  br i1 %i.be, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %decode_bitfield_varint_value.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.bf = getelementptr i8, ptr %i.c, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not79 = icmp eq ptr %i.bg, null
  br i1 %.not79, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 11013, ptr noundef nonnull @.str.73) #35
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void %i.bg(ptr noundef nonnull %i.b, i64 noundef %.070)
  %i.bh = and i64 %i.bb, 4294967295
  call fastcc void @label_fill(ptr noundef nonnull %1, i64 noundef %i.bh, ptr noundef %i.c, ptr noundef nonnull %i.b, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.au

bb.ad:                                            ; preds = %decode_bitfield_varint_value.exit
  %i.bi = getelementptr i8, ptr %i.c, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8            ; 5 uses
  %.not76 = icmp eq ptr %i.bj, null
  br i1 %.not76, label %bb.at, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bk = and i32 %i.bd, 1024
  %.not.i89 = icmp eq i32 %i.bk, 0
  br i1 %.not.i89, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bl = and i32 %i.bd, 512
  %.not15.i = icmp eq i32 %i.bl, 0
  br i1 %.not15.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bm = tail call ptr @try_val64_to_str_ext(i64 noundef %.070, ptr noundef nonnull %i.bj)
  br label %hf_try_val64_to_str.exit

bb.ah:                                            ; preds = %bb.af
  %i.bn = tail call ptr @try_val64_to_str(i64 noundef %.070, ptr noundef nonnull %i.bj)
  br label %hf_try_val64_to_str.exit

bb.ai:                                            ; preds = %bb.ae
  %i.bo = and i32 %i.bd, 256
  %.not13.i = icmp eq i32 %i.bo, 0
  br i1 %.not13.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bp = tail call ptr @try_rval64_to_str(i64 noundef %.070, ptr noundef nonnull %i.bj)
  br label %hf_try_val64_to_str.exit

bb.ak:                                            ; preds = %bb.ai
  %i.bq = and i32 %i.bd, 4096
  %.not14.i = icmp eq i32 %i.bq, 0
  br i1 %.not14.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.br = tail call ptr @unit_name_string_get_value64(i64 noundef %.070, ptr noundef nonnull %i.bj)
  br label %hf_try_val64_to_str.exit

bb.am:                                            ; preds = %bb.ak
  %i.bs = getelementptr i8, ptr %i.c, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.385, ptr noundef %i.bt) #35
  unreachable

hf_try_val64_to_str.exit:                         ; preds = %bb.ag, %bb.ah, %bb.aj, %bb.al
  %.0.i90 = phi ptr [ %i.bm, %bb.ag ], [ %i.bn, %bb.ah ], [ %i.bp, %bb.aj ], [ %i.br, %bb.al ] ; 6 uses
  %i.bu = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.bv = and i32 %i.bu, 255                      ; 3 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %hfinfo_number_vals_format64.exit.thread, label %hfinfo_number_vals_format64.exit

hfinfo_number_vals_format64.exit:                 ; preds = %hf_try_val64_to_str.exit
  %i.bx = icmp eq i32 %i.bv, 4
  %spec.store.select.i = select i1 %i.bx, i32 1, i32 %i.bv ; 2 uses
  %i.by = icmp eq i32 %spec.store.select.i, 5
  %spec.store.select1.i = select i1 %i.by, i32 2, i32 %spec.store.select.i
  %i.bz = call fastcc ptr @hfinfo_number_value_format_display64(ptr noundef readonly %i.c, i32 noundef %spec.store.select1.i, ptr noundef nonnull %i.a, i64 noundef %.070) ; 3 uses
  %i.ca = load i32, ptr %i.bc, align 4
end_hunk_2
