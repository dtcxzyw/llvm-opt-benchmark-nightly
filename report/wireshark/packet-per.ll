Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-per?download=true
inline.NumInlined: 74
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dissect_per_restricted_character_string_sorted:bb.a
  br i1 %or.cond130.us, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @wmem_strbuf_append_c(ptr noundef %i.bq, i8 noundef signext %i.cd)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  call void @wmem_strbuf_append_unichar(ptr noundef %i.bq, i32 noundef 65533)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ci = add nuw i32 %.0104148.us, 1             ; 2 uses
  %exitcond154.not = icmp eq i32 %i.ci, %i.br
  br i1 %exitcond154.not, label %._crit_edge, label %.preheader.us, !llvm.loop !18

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.aj
  %.0104148 = phi i32 [ %i.cz, %bb.aj ], [ 0, %.preheader.lr.ph ]
  %.4147 = phi i32 [ %.0.i, %bb.aj ], [ %.3, %.preheader.lr.ph ]
  br label %bb.af

bb.af:                                            ; preds = %.preheader, %bb.af
  %.0146 = phi i32 [ 0, %.preheader ], [ %i.ct, %bb.af ]
  %.0102145 = phi i8 [ 0, %.preheader ], [ %i.cs, %bb.af ]
  %.5144 = phi i32 [ %.4147, %.preheader ], [ %.0.i, %bb.af ] ; 3 uses
  %i.cj = lshr i32 %.5144, 3
  %i.ck = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cj)
  %i.cl = zext i8 %i.ck to i32
  %i.cm = and i32 %.5144, 7
  %i.cn = xor i32 %i.cm, 7
  %i.co = lshr i32 %i.cl, %i.cn
  %i.cp = trunc nuw i32 %i.co to i8
  %i.cq = and i8 %i.cp, 1
  store ptr null, ptr %i.bt, align 8
  %.0.i = add i32 %.5144, 1                       ; 3 uses
  %i.cr = shl i8 %.0102145, 1
  %i.cs = or disjoint i8 %i.cq, %i.cr             ; 3 uses
  %i.ct = add nuw nsw i32 %.0146, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ct, %.0103
  br i1 %exitcond.not, label %bb.ag, label %bb.af, !llvm.loop !17

bb.ag:                                            ; preds = %bb.af
  %i.cu = zext i8 %i.cs to i32
  %i.cv = icmp sgt i32 %11, %i.cu
  br i1 %i.cv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cw = zext i8 %i.cs to i64
  %i.cx = getelementptr i8, ptr %10, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1
  call void @wmem_strbuf_append_c(ptr noundef %i.bq, i8 noundef signext %i.cy)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @wmem_strbuf_append_unichar(ptr noundef %i.bq, i32 noundef 65533)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.cz = add nuw i32 %.0104148, 1                ; 2 uses
  %exitcond152.not = icmp eq i32 %i.cz, %i.br
  br i1 %exitcond152.not, label %._crit_edge, label %.preheader, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.aj, %bb.ae, %bb.z
  %.4.lcssa = phi i32 [ %.3, %bb.z ], [ %.0.i.us, %bb.ae ], [ %.0.i, %bb.aj ] ; 4 uses
  %i.da = call i64 @wmem_strbuf_get_len(ptr noundef %i.bq)
  %i.db = call ptr @wmem_strbuf_finalize(ptr noundef %i.bq) ; 2 uses
  %i.dc = lshr i32 %.3, 3                         ; 2 uses
  %i.dd = icmp eq i32 %.4.lcssa, %.3
  %i.de = add i32 %.4.lcssa, 7
  %i.df = lshr i32 %i.de, 3
  %i.dg = sub nsw i32 %i.df, %i.dc
  %i.dh = select i1 %i.dd, i32 0, i32 %i.dg
  %i.di = call ptr @proto_tree_add_string(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %i.dc, i32 noundef %i.dh, ptr noundef %i.db) ; 0 uses
  %.not123 = icmp eq ptr %12, null
  br i1 %.not123, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge
  %i.dj = trunc i64 %i.da to i32                  ; 2 uses
  %i.dk = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.db, i32 noundef %i.dj, i32 noundef %i.dj)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.ak
  %.sink = phi ptr [ %i.dk, %bb.ak ], [ %i.d, %bb.c ]
  %.0106.ph = phi i32 [ %.4.lcssa, %bb.ak ], [ %1, %bb.c ]
  store ptr %.sink, ptr %12, align 8
  br label %bb.al

bb.al:                                            ; preds = %.sink.split, %._crit_edge, %bb.b
  %.0106 = phi i32 [ %1, %bb.b ], [ %.4.lcssa, %._crit_edge ], [ %.0106.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0106
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_IA5String(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, ptr nofree noundef writeonly captures(address_is_null) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_per_restricted_character_string_sorted(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i16 noundef zeroext 0, i16 noundef zeroext 127, ptr noundef null, i32 noundef 128, ptr noundef %8)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_NumericString(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, ptr nofree noundef writeonly captures(address_is_null) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_per_restricted_character_string_sorted(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i16 noundef zeroext 32, i16 noundef zeroext 57, ptr noundef nonnull @.str.11, i32 noundef 11, ptr noundef %8)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_PrintableString(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, ptr nofree noundef writeonly captures(address_is_null) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_per_restricted_character_string_sorted(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i16 noundef zeroext 32, i16 noundef zeroext 122, ptr noundef nonnull @.str.12, i32 noundef 74, ptr noundef %8)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_VisibleString(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, ptr nofree noundef writeonly captures(address_is_null) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_per_restricted_character_string_sorted(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i16 noundef zeroext 32, i16 noundef zeroext 126, ptr noundef nonnull @.str.13, i32 noundef 95, ptr noundef %8)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_BMPString(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = icmp eq i32 %6, 0
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %5, -1
  %spec.store.select = select i1 %i.c, i32 0, i32 %5 ; 2 uses
  store i32 %6, ptr %i.a, align 4
  %.not = icmp eq i32 %spec.store.select, %6
  br i1 %.not, label %proto_item_set_hidden.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @hf_per_octet_string_length, align 4
  %i.e = call i32 @dissect_per_constrained_integer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.d, i32 noundef %spec.store.select, i32 noundef %6, ptr noundef nonnull %i.a, i1 noundef zeroext false)
  %i.f = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %proto_item_set_hidden.exitthread-pre-split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %proto_item_set_hidden.exitthread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.k, null
  br i1 %.not5.i, label %proto_item_set_hidden.exitthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.k, i64 28       ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = or i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4
  br label %proto_item_set_hidden.exitthread-pre-split

proto_item_set_hidden.exitthread-pre-split:       ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.pr = load i32, ptr %i.a, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %proto_item_set_hidden.exitthread-pre-split, %bb.b
  %i.o = phi i32 [ %.pr, %proto_item_set_hidden.exitthread-pre-split ], [ %6, %bb.b ] ; 3 uses
  %.024 = phi i32 [ %i.e, %proto_item_set_hidden.exitthread-pre-split ], [ %1, %bb.b ]
  %i.p = icmp ugt i32 %i.o, 1023
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %proto_item_set_hidden.exit
  %i.q = getelementptr i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %i.r, ptr noundef nonnull @ei_per_undecoded, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) ; 0 uses
  %i.t = getelementptr i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.u, i32 noundef 25, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14)
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable

bb.h:                                             ; preds = %proto_item_set_hidden.exit
  %.024.biased = add i32 %.024, 7                 ; 2 uses
  %.1 = and i32 %.024.biased, -8
  %i.v = lshr i32 %.024.biased, 3
  %i.w = shl nuw nsw i32 %i.o, 1
  %i.x = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %i.v, i32 noundef %i.w, i32 noundef 6) ; 0 uses
  %i.y = shl nuw nsw i32 %i.o, 4
  %i.z = add i32 %.1, %i.y
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.0 = phi i32 [ %i.z, %bb.h ], [ %1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_constrained_integer(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(address_is_null) %7, i1 noundef zeroext %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.nstime_t, align 8           ; 6 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  br i1 %8, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = load i32, ptr @hf_per_extension_present_bit, align 4
  %i.c = call i32 @dissect_per_boolean(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %i.d = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %proto_item_set_hidden.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.i, i64 28       ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = or i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.m = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.thread, label %bb.f

.thread:                                          ; preds = %proto_item_set_hidden.exit
  %i.o = call i32 @dissect_per_integer(ptr noundef %0, i32 noundef %i.c, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.am

bb.f:                                             ; preds = %proto_item_set_hidden.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.1231 = phi i32 [ %i.c, %bb.f ], [ %1, %bb.a ] ; 14 uses
  %i.p = call ptr @proto_registrar_get_nth(i32 noundef %4) ; 2 uses
  %i.q = sub i32 %6, %5                           ; 2 uses
  %i.r = icmp ugt i32 %i.q, 65536
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %2, i64 8
  %i.t = load i8, ptr %i.s, align 8, !range !6, !noundef !7
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.thread253, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = icmp eq i32 %6, 2147483647
  %i.w = icmp eq i32 %5, -2147483648
  %or.cond = and i1 %i.w, %i.v
  br i1 %or.cond, label %.thread253, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp eq i32 %6, -1
  %i.y = icmp eq i32 %5, 0
  %or.cond3 = and i1 %i.y, %i.x
  %i.z = add i32 %i.q, 1                          ; 4 uses
  br i1 %or.cond3, label %.thread253, label %bb.k

.thread253:                                       ; preds = %bb.j, %bb.h, %bb.i
  %.0226.ph = phi i32 [ -1, %bb.i ], [ 1000000, %bb.h ], [ -1, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.aa, align 8
  br label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.ab, align 8
  switch i32 %i.z, label %bb.n [
    i32 0, label %bb.l
    i32 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 1391, ptr noundef nonnull @.str.26) #12
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ac = lshr i32 %.1231, 3
  br label %bb.ag

bb.n:                                             ; preds = %bb.k
  %i.ad = icmp ult i32 %i.z, 256
  br i1 %i.ad, label %.lr.ph.preheader, label %bb.o

bb.o:                                             ; preds = %.thread253, %bb.n
  %.0226252255 = phi i32 [ %.0226.ph, %.thread253 ], [ %i.z, %bb.n ] ; 5 uses
  %i.ae = getelementptr i8, ptr %2, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !6, !noundef !7
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = icmp sgt i32 %.0226252255, -1
  br i1 %i.ah, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n, %bb.p
  %.0226252256277 = phi i32 [ %.0226252255, %bb.p ], [ %i.z, %bb.n ] ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0217261 = phi i32 [ %i.ak, %.lr.ph ], [ 2147483647, %.lr.ph.preheader ]
  %.0218260 = phi i32 [ %i.aj, %.lr.ph ], [ -2147483648, %.lr.ph.preheader ]
  %.0219259 = phi i32 [ %i.ai, %.lr.ph ], [ 32, %.lr.ph.preheader ]
  %i.ai = add i32 %.0219259, -1                   ; 2 uses
  %i.aj = lshr i32 %.0218260, 1                   ; 2 uses
  %i.ak = lshr i32 %.0217261, 1                   ; 2 uses
  %i.al = and i32 %i.aj, %.0226252256277
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %bb.p
  %.0226252256276 = phi i32 [ %.0226252255, %bb.p ], [ %.0226252256277, %.lr.ph ] ; 3 uses
  %.0219.lcssa = phi i32 [ 32, %bb.p ], [ %i.ai, %.lr.ph ]
  %.0217.lcssa = phi i32 [ 2147483647, %bb.p ], [ %i.ak, %.lr.ph ]
  %i.an = and i32 %.0217.lcssa, %.0226252256276
  %i.ao = icmp eq i32 %i.an, 0
  %i.ap = sext i1 %i.ao to i32
  %spec.select = add i32 %.0219.lcssa, %i.ap      ; 2 uses
  %i.aq = add i32 %spec.select, 7
  %i.ar = ashr i32 %i.aq, 3                       ; 7 uses
  %i.as = icmp ult i32 %.0226252256276, 3
  %.0221 = select i1 %i.as, i32 1, i32 %spec.select ; 4 uses
  %i.at = lshr i32 %.1231, 3                      ; 7 uses
  %i.au = call i64 @tvb_get_bits64(ptr noundef %0, i32 noundef %.1231, i32 noundef %.0221, i32 noundef 0) ; 2 uses
  %i.av = trunc i64 %i.au to i32                  ; 2 uses
  %i.aw = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.q, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = add i32 %5, %i.av
  br label %bb.w

bb.q:                                             ; preds = %._crit_edge
  %i.ay = getelementptr i8, ptr %2, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 416
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = and i32 %.1231, 7
  %i.bd = and i64 %i.au, 4294967295
  %i.be = call ptr @decode_bits_in_field(ptr noundef %i.bb, i32 noundef %i.bc, i32 noundef %.0221, i64 noundef %i.bd, i32 noundef 0) ; 2 uses
  %i.bf = getelementptr i8, ptr %i.p, i64 16      ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8
  %.off = add i32 %i.bg, -12
  %switch = icmp ult i32 %.off, 8
  br i1 %switch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bh = load i32, ptr @hf_per_internal_min_int, align 4
  %i.bi = call ptr @proto_tree_add_int(ptr noundef %3, i32 noundef %i.bh, ptr noundef %0, i32 noundef %i.at, i32 noundef %i.ar, i32 noundef %5) ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bj = load i32, ptr @hf_per_internal_min, align 4
  %i.bk = call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %i.bj, ptr noundef %0, i32 noundef %i.at, i32 noundef %i.ar, i32 noundef %5) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bl = load i32, ptr @hf_per_internal_range, align 4
  %i.bm = zext i32 %.0226252256276 to i64
  %i.bn = call ptr @proto_tree_add_uint64(ptr noundef %3, i32 noundef %i.bl, ptr noundef %0, i32 noundef %i.at, i32 noundef %i.ar, i64 noundef %i.bm) ; 0 uses
  %i.bo = load i32, ptr @hf_per_internal_num_bits, align 4
  %i.bp = call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %i.bo, ptr noundef %0, i32 noundef %i.at, i32 noundef %i.ar, i32 noundef %.0221) ; 0 uses
  %i.bq = load i32, ptr %i.bf, align 8
  %.off242 = add i32 %i.bq, -12
  %switch243 = icmp ult i32 %.off242, 8
  %i.br = add i32 %5, %i.av                       ; 5 uses
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  br i1 %switch243, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bt = load i32, ptr @hf_per_internal_value_int, align 4
  %i.bu = call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_int64_format_value(ptr noundef %3, i32 noundef %i.bt, ptr noundef %0, i32 noundef %i.at, i32 noundef %i.ar, i64 noundef %i.bs, ptr noundef nonnull @.str.27, ptr noundef %i.be, i32 noundef %i.br) ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bv = load i32, ptr @hf_per_internal_value, align 4
  %i.bw = call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_uint64_format_value(ptr noundef %3, i32 noundef %i.bv, ptr noundef %0, i32 noundef %i.at, i32 noundef %i.ar, i64 noundef %i.bs, ptr noundef nonnull @.str.28, ptr noundef %i.be, i32 noundef %i.br) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge._crit_edge, %bb.u, %bb.v
  %.pre-phi = phi i32 [ %.pre, %._crit_edge._crit_edge ], [ %i.br, %bb.u ], [ %i.br, %bb.v ]
  %i.bx = add i32 %.0221, %.1231
  br label %bb.ag

bb.x:                                             ; preds = %bb.o
  %i.by = icmp eq i32 %.0226252255, 256
  br i1 %i.by, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.1231.biased257 = add i32 %.1231, 7            ; 2 uses
  %.2 = and i32 %.1231.biased257, -8
  %i.bz = lshr i32 %.1231.biased257, 3
  %i.ca = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bz)
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add i32 %.2, 8                          ; 2 uses
  %i.cd = lshr exact i32 %i.cc, 3
  %i.ce = add nsw i32 %i.cd, -1
  %i.cf = add i32 %5, %i.cb
  br label %bb.ag

bb.z:                                             ; preds = %bb.x
  %i.cg = icmp ult i32 %.0226252255, 65537
  br i1 %i.cg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.1231.biased = add i32 %.1231, 7               ; 2 uses
  %.3 = and i32 %.1231.biased, -8
  %i.ch = lshr i32 %.1231.biased, 3
  %i.ci = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ch)
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 8
  %i.cl = add i32 %.1231, 15
  %i.cm = lshr i32 %i.cl, 3
  %i.cn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cm)
  %i.co = zext i8 %i.cn to i32
  %i.cp = add i32 %.3, 16                         ; 2 uses
  %i.cq = lshr exact i32 %i.cp, 3
  %i.cr = add nsw i32 %i.cq, -2
  %i.cs = add i32 %5, %i.co
  %i.ct = add i32 %i.cs, %i.ck
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %i.cu = lshr i32 %.1231, 3
  %i.cv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cu)
  %i.cw = zext i8 %i.cv to i32
  %i.cx = and i32 %.1231, 7
  %i.cy = xor i32 %i.cx, 7
  %i.cz = lshr i32 %i.cw, %i.cy
  %i.da = getelementptr i8, ptr %2, i64 24        ; 2 uses
  store ptr null, ptr %i.da, align 8
  %.0.i = add i32 %.1231, 1                       ; 2 uses
  %i.db = lshr i32 %.0.i, 3
  %i.dc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.db)
  %i.dd = zext i8 %i.dc to i32
  %i.de = and i32 %.0.i, 7
  %i.df = xor i32 %i.de, 7
  %i.dg = lshr i32 %i.dd, %i.df
  %i.dh = and i32 %i.dg, 1                        ; 2 uses
  store ptr null, ptr %i.da, align 8
  %i.di = shl nuw nsw i32 %i.cz, 1
  %i.dj = and i32 %i.di, 2                        ; 2 uses
  %i.dk = or disjoint i32 %i.dh, %i.dj            ; 2 uses
  %i.dl = load i8, ptr @display_internal_per_fields, align 1, !range !6, !noundef !7
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %narrow = add nuw nsw i32 %i.dk, 1
  %.0.i244 = add i32 %.1231, 2
  %i.dn = load i32, ptr @hf_per_const_int_len, align 4
  %i.do = lshr i32 %.0.i244, 3
  %i.dp = call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %i.dn, ptr noundef %0, i32 noundef %i.do, i32 noundef 1, i32 noundef %narrow) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0.i244.biased = add i32 %.1231, 9
  %.4 = and i32 %.0.i244.biased, -8
  %i.dq = or disjoint i32 %i.dj, %i.dh
end_hunk_0
