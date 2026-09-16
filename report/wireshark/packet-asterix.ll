Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-asterix?download=true
inline.NumInlined: 2750
inline.NumDeleted: 230
loop-unroll.NumCompletelyUnrolled: 221
loop-unroll.NumUnrolled: 244
begin_hunk_0_@get_category_uap_table:bb.a
  %i.nq = icmp eq i32 %1, 0
  %i.nr = icmp eq i32 %2, 64
  %or.cond129 = and i1 %i.nq, %i.nr
  br i1 %or.cond129, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.ns = getelementptr i8, ptr %3, i64 16
  store i32 14, ptr %i.ns, align 8
  %i.nt = getelementptr i8, ptr %3, i64 20
  %i.nu = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.nt, i64 noundef 255, i32 noundef 2, i64 noundef 255, ptr noundef nonnull @.str.6266, ptr noundef nonnull @.str.6269) ; 0 uses
  store ptr @cat_65_ed_major_1_ed_minor_4_uap_table, ptr %3, align 8
  %i.nv = getelementptr i8, ptr %3, i64 8
  store ptr @cat_65_ed_major_1_ed_minor_4_uap_table_expand, ptr %i.nv, align 8
  br label %bb.eq

bb.eb:                                            ; preds = %bb.dz
  %i.nw = icmp eq i32 %1, 1
  %i.nx = icmp eq i32 %2, 65
  %or.cond131 = and i1 %i.nw, %i.nx
  br i1 %or.cond131, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.ny = getelementptr i8, ptr %3, i64 16
  store i32 14, ptr %i.ny, align 8
  %i.nz = getelementptr i8, ptr %3, i64 20
  %i.oa = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.nz, i64 noundef 255, i32 noundef 2, i64 noundef 255, ptr noundef nonnull @.str.6266, ptr noundef nonnull @.str.6269) ; 0 uses
  store ptr @cat_65_ed_major_1_ed_minor_5_uap_table, ptr %3, align 8
  %i.ob = getelementptr i8, ptr %3, i64 8
  store ptr @cat_65_ed_major_1_ed_minor_5_uap_table_expand, ptr %i.ob, align 8
  br label %bb.eq

bb.ed:                                            ; preds = %bb.eb
  %i.oc = icmp eq i32 %1, 2
  %i.od = icmp eq i32 %2, 66
  %or.cond133 = and i1 %i.oc, %i.od
  br i1 %or.cond133, label %bb.ee, label %bb.eq

bb.ee:                                            ; preds = %bb.ed
  %i.oe = getelementptr i8, ptr %3, i64 16
  store i32 14, ptr %i.oe, align 8
  %i.of = getelementptr i8, ptr %3, i64 20
  %i.og = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.of, i64 noundef 255, i32 noundef 2, i64 noundef 255, ptr noundef nonnull @.str.6266, ptr noundef nonnull @.str.6269) ; 0 uses
  store ptr @cat_65_ed_major_1_ed_minor_6_uap_table, ptr %3, align 8
  %i.oh = getelementptr i8, ptr %3, i64 8
  store ptr @cat_65_ed_major_1_ed_minor_6_uap_table_expand, ptr %i.oh, align 8
  br label %bb.eq

bb.ef:                                            ; preds = %bb.a
  %i.oi = icmp eq i32 %1, 0
  %i.oj = icmp eq i32 %2, 67
  %or.cond135 = and i1 %i.oi, %i.oj
  br i1 %or.cond135, label %bb.eg, label %bb.eq

bb.eg:                                            ; preds = %bb.ef
  %i.ok = getelementptr i8, ptr %3, i64 16
  store i32 28, ptr %i.ok, align 8
  %i.ol = getelementptr i8, ptr %3, i64 20
  %i.om = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.ol, i64 noundef 255, i32 noundef 2, i64 noundef 255, ptr noundef nonnull @.str.6266, ptr noundef nonnull @.str.6269) ; 0 uses
  store ptr @cat_150_ed_major_3_ed_minor_0_uap_table, ptr %3, align 8
  %i.on = getelementptr i8, ptr %3, i64 8
  store ptr @cat_150_ed_major_3_ed_minor_0_uap_table_expand, ptr %i.on, align 8
  br label %bb.eq

bb.eh:                                            ; preds = %bb.a
  %i.oo = icmp eq i32 %1, 0
  %i.op = icmp eq i32 %2, 68
  %or.cond137 = and i1 %i.oo, %i.op
  br i1 %or.cond137, label %bb.ei, label %bb.eq

bb.ei:                                            ; preds = %bb.eh
  %i.oq = getelementptr i8, ptr %3, i64 16
  store i32 22, ptr %i.oq, align 8
  %i.or = getelementptr i8, ptr %3, i64 20
  %i.os = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.or, i64 noundef 255, i32 noundef 2, i64 noundef 255, ptr noundef nonnull @.str.6266, ptr noundef nonnull @.str.6269) ; 0 uses
  store ptr @cat_205_ed_major_1_ed_minor_0_uap_table, ptr %3, align 8
  %i.ot = getelementptr i8, ptr %3, i64 8
  store ptr @cat_205_ed_major_1_ed_minor_0_uap_table_expand, ptr %i.ot, align 8
  br label %bb.eq

bb.ej:                                            ; preds = %bb.a
  %i.ou = icmp eq i32 %1, 0
  %i.ov = icmp eq i32 %2, 69
  %or.cond139 = and i1 %i.ou, %i.ov
  br i1 %or.cond139, label %bb.ek, label %bb.eq

bb.ek:                                            ; preds = %bb.ej
  %i.ow = getelementptr i8, ptr %3, i64 16
  store i32 14, ptr %i.ow, align 8
  %i.ox = getelementptr i8, ptr %3, i64 20
  %i.oy = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.ox, i64 noundef 255, i32 noundef 2, i64 noundef 255, ptr noundef nonnull @.str.6266, ptr noundef nonnull @.str.6269) ; 0 uses
  store ptr @cat_240_ed_major_1_ed_minor_3_uap_table, ptr %3, align 8
  %i.oz = getelementptr i8, ptr %3, i64 8
  store ptr @cat_240_ed_major_1_ed_minor_3_uap_table_expand, ptr %i.oz, align 8
  br label %bb.eq

bb.el:                                            ; preds = %bb.a
  %i.pa = icmp eq i32 %1, 0
  %i.pb = icmp eq i32 %2, 70
  %or.cond141 = and i1 %i.pa, %i.pb
  br i1 %or.cond141, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.pc = getelementptr i8, ptr %3, i64 16
  store i32 7, ptr %i.pc, align 8
  %i.pd = getelementptr i8, ptr %3, i64 20
  %i.pe = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.pd, i64 noundef 255, i32 noundef 2, i64 noundef 255, ptr noundef nonnull @.str.6266, ptr noundef nonnull @.str.6269) ; 0 uses
  store ptr @cat_247_ed_major_1_ed_minor_2_uap_table, ptr %3, align 8
  %i.pf = getelementptr i8, ptr %3, i64 8
  store ptr @cat_247_ed_major_1_ed_minor_2_uap_table_expand, ptr %i.pf, align 8
  br label %bb.eq

bb.en:                                            ; preds = %bb.el
  %i.pg = icmp eq i32 %1, 1
  %i.ph = icmp eq i32 %2, 71
  %or.cond143 = and i1 %i.pg, %i.ph
  br i1 %or.cond143, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %bb.en
  %i.pi = getelementptr i8, ptr %3, i64 16
  store i32 7, ptr %i.pi, align 8
  %i.pj = getelementptr i8, ptr %3, i64 20
  %i.pk = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.pj, i64 noundef 255, i32 noundef 2, i64 noundef 255, ptr noundef nonnull @.str.6266, ptr noundef nonnull @.str.6269) ; 0 uses
  store ptr @cat_247_ed_major_1_ed_minor_3_uap_table, ptr %3, align 8
  %i.pl = getelementptr i8, ptr %3, i64 8
  store ptr @cat_247_ed_major_1_ed_minor_3_uap_table_expand, ptr %i.pl, align 8
  br label %bb.eq

bb.ep:                                            ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  br label %bb.eq

bb.eq:                                            ; preds = %bb.en, %bb.ej, %bb.eh, %bb.ef, %bb.ed, %bb.dx, %bb.dt, %bb.dh, %bb.cv, %bb.cp, %bb.cl, %bb.ch, %bb.cd, %bb.bh, %bb.bb, %bb.az, %bb.av, %bb.at, %bb.ar, %bb.al, %bb.ah, %bb.af, %bb.ad, %bb.z, %bb.v, %bb.r, %bb.l, %bb.ep, %bb.eo, %bb.em, %bb.ek, %bb.ei, %bb.eg, %bb.ee, %bb.ec, %bb.ea, %bb.dy, %bb.dw, %bb.du, %bb.ds, %bb.dq, %bb.do, %bb.dm, %bb.dk, %bb.di, %bb.dg, %bb.de, %bb.dc, %bb.da, %bb.cy, %bb.cw, %bb.cu, %bb.cs, %bb.cq, %bb.co, %bb.cm, %bb.ck, %bb.ci, %bb.cg, %bb.ce, %bb.cc, %bb.ca, %bb.by, %bb.bw, %bb.bu, %bb.bs, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @asterix_dissect_fspec(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.b = sub i32 %i.a, %1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.b ], [ 8, %bb.a ] ; 2 uses
  %.0.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %i.c = add i32 %.0.i, %1
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.c)
  %i.e = trunc i8 %i.d to i1
  %i.f = icmp ult i32 %.0.i, %i.b
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  %i.h = add i32 %.0.i, 1                         ; 9 uses
  %indvars.iv.next = add i32 %indvars.iv, 8
  br i1 %i.g, label %bb.b, label %asterix_fspec_len.exit, !llvm.loop !1

asterix_fspec_len.exit:                           ; preds = %bb.b
  %i.i = icmp ugt i32 %i.h, 4
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %asterix_fspec_len.exit
  %i.j = load i32, ptr @hf_asterix_fspec, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef %1, i32 noundef %i.h, i32 noundef 0) ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %asterix_fspec_len.exit
  switch i32 %i.h, label %asterix_get_unsigned_value.exit [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1)
  %i.m = zext i8 %i.l to i32
  br label %asterix_get_unsigned_value.exit

bb.f:                                             ; preds = %bb.d
  %i.n = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  %i.o = zext i16 %i.n to i32
  br label %asterix_get_unsigned_value.exit

bb.g:                                             ; preds = %bb.d
  %i.p = tail call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  br label %asterix_get_unsigned_value.exit

bb.h:                                             ; preds = %bb.d
  %i.q = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  br label %asterix_get_unsigned_value.exit

asterix_get_unsigned_value.exit:                  ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i34 = phi i32 [ %i.q, %bb.h ], [ %i.m, %bb.e ], [ %i.o, %bb.f ], [ %i.p, %bb.g ], [ -1, %bb.d ]
  %i.r = mul nuw nsw i32 %i.h, 9
  %i.s = add nuw nsw i32 %i.r, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = tail call ptr @__memset_chk(ptr noundef nonnull @fspec_bit_string, i32 noundef 0, i64 noundef range(i64 1, 12401) %i.t, i64 noundef 1024) #11 ; 0 uses
  %i.v = shl nuw nsw i32 %i.h, 3
  %.not37 = icmp eq i32 %i.h, 0
  br i1 %.not37, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %asterix_get_unsigned_value.exit
  %umax = tail call i32 @llvm.umax.i32(i32 %indvars.iv, i32 1)
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %asterix_get_unsigned_value.exit
  %i.w = load i32, ptr @hf_asterix_fspec_bitstring, align 4
  %i.x = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format_value(ptr noundef %2, i32 noundef %i.w, ptr noundef %0, i32 noundef %1, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull @.str.6266, ptr noundef nonnull @fspec_bit_string) ; 0 uses
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.036 = phi i32 [ %i.al, %bb.j ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.02835 = phi i32 [ %i.ak, %bb.j ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.y = xor i32 %.036, -1
  %i.z = add nsw i32 %i.v, %i.y
  %i.aa = shl nuw i32 1, %i.z
  %i.ab = and i32 %i.aa, %.0.i34
  %.not = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not, i8 48, i8 49
  %i.ad = zext i32 %.02835 to i64
  %i.ae = getelementptr i8, ptr @fspec_bit_string, i64 %i.ad
  store i8 %i.ac, ptr %i.ae, align 1
  %i.af = and i32 %.036, 7
  %i.ag = icmp eq i32 %i.af, 7
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.ah = add i32 %.02835, 1                      ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr @fspec_bit_string, i64 %i.ai
  store i8 32, ptr %i.aj, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %.1 = phi i32 [ %i.ah, %bb.i ], [ %.02835, %.lr.ph ]
  %i.ak = add i32 %.1, 1
  %i.al = add nuw nsw i32 %.036, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.al, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

bb.k:                                             ; preds = %._crit_edge, %bb.c
  ret i32 %i.h
}

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_cat_1_ed_major_1_ed_minor_2_datafield_010_plot(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef 2, i32 noundef 0)
  %i.b = load i32, ptr @ett_asterix_subtree, align 4
  %i.c = tail call ptr @proto_item_add_subtree(ptr noundef %i.a, i32 noundef %i.b) ; 2 uses
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1)
  %i.e = zext i8 %i.d to i32
  %i.f = load i32, ptr @expand_var_1, align 4
  %i.g = tail call ptr @proto_tree_add_uint(ptr noundef %i.c, i32 noundef %i.f, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef %i.e) ; 0 uses
  %i.h = add i32 %1, 1                            ; 2 uses
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.h)
  %i.j = zext i8 %i.i to i32
  %i.k = load i32, ptr @expand_var_2, align 4
  %i.l = tail call ptr @proto_tree_add_uint(ptr noundef %i.c, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef %i.j) ; 0 uses
  ret i32 2
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_cat_1_ed_major_1_ed_minor_2_datafield_020_plot(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0) ; 3 uses
  %i.b = load i32, ptr @ett_asterix_subtree, align 4
  %i.c = tail call ptr @proto_item_add_subtree(ptr noundef %i.a, i32 noundef %i.b) ; 13 uses
  %i.d = load i32, ptr @expand_var_4, align 4
  %i.e = shl i32 %1, 3                            ; 7 uses
  %i.f = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.d, ptr noundef %0, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @expand_var_5, align 4
  %i.h = or disjoint i32 %i.e, 1
  %i.i = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @expand_var_6, align 4
  %i.k = or disjoint i32 %i.e, 2
  %i.l = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.k, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @expand_var_7, align 4
  %i.n = or disjoint i32 %i.e, 4
  %i.o = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.n, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @expand_var_8, align 4
  %i.q = or disjoint i32 %i.e, 5
  %i.r = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @expand_var_9, align 4
  %i.t = or disjoint i32 %i.e, 6
  %i.u = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.t, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @expand_var_10, align 4
  %i.w = or disjoint i32 %i.e, 7
  %i.x = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.w, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1)
  %i.z = and i8 %i.y, 1
  %i.aa = icmp eq i8 %i.z, 0
  %i.ab = add i32 %1, 1                           ; 3 uses
  br i1 %i.aa, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = load i32, ptr @expand_var_11, align 4
  %i.ad = shl i32 %i.ab, 3                        ; 6 uses
  %i.ae = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.ad, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.af = load i32, ptr @expand_var_12, align 4
  %i.ag = or disjoint i32 %i.ad, 1
  %i.ah = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.ag, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ai = load i32, ptr @expand_var_13, align 4
  %i.aj = or disjoint i32 %i.ad, 3
  %i.ak = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.aj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.al = load i32, ptr @expand_var_14, align 4
  %i.am = or disjoint i32 %i.ad, 4
  %i.an = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ao = load i32, ptr @hf_asterix_spare, align 4
  %i.ap = or disjoint i32 %i.ad, 5                ; 2 uses
  %i.aq = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.ap, i32 noundef 2, i32 noundef 0)
  %i.ar = tail call i64 @tvb_get_bits64(ptr noundef %0, i32 noundef %i.ap, i32 noundef 2, i32 noundef 0)
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %check_spare_bits.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = tail call ptr @expert_add_info(ptr noundef null, ptr noundef %i.aq, ptr noundef nonnull @hf_asterix_spare_error) ; 0 uses
  br label %check_spare_bits.exit

check_spare_bits.exit:                            ; preds = %bb.b, %bb.c
  %i.at = load i32, ptr @expand_var_15, align 4
  %i.au = or disjoint i32 %i.ad, 7
  %i.av = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.c, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.au, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aw = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ab)
  %i.ax = and i8 %i.aw, 1
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.e, label %bb.d

bb.d:                                             ; preds = %check_spare_bits.exit
  %i.az = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef null, ptr noundef %i.a, ptr noundef nonnull @hf_asterix_fx_error, ptr noundef nonnull @.str.6272) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %check_spare_bits.exit
  %i.ba = add i32 %1, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.061 = phi i32 [ %i.ba, %bb.e ], [ %i.ab, %bb.a ]
  %i.bb = sub i32 %.061, %1                       ; 2 uses
  tail call void @proto_item_set_len(ptr noundef %i.a, i32 noundef %i.bb)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0 = phi i32 [ %i.bb, %bb.f ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_cat_1_ed_major_1_ed_minor_2_datafield_040_plot(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef 4, i32 noundef 0)
  %i.b = load i32, ptr @ett_asterix_subtree, align 4
  %i.c = tail call ptr @proto_item_add_subtree(ptr noundef %i.a, i32 noundef %i.b) ; 2 uses
  %i.d = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  %i.e = uitofp i16 %i.d to double
  %i.f = fmul nnan double %i.e, 7.812500e-03
  %i.g = load i32, ptr @expand_var_17, align 4
  %i.h = tail call ptr @proto_tree_add_double(ptr noundef %i.c, i32 noundef %i.g, ptr noundef %0, i32 noundef %1, i32 noundef 2, double noundef %i.f) ; 0 uses
  %i.i = add i32 %1, 2                            ; 2 uses
  %i.j = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.i, i32 noundef 0)
  %i.k = uitofp i16 %i.j to double
  %i.l = fmul nnan double %i.k, f0x3F76800000000000
  %i.m = load i32, ptr @expand_var_18, align 4
  %i.n = tail call ptr @proto_tree_add_double(ptr noundef %i.c, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.i, i32 noundef 2, double noundef %i.l) ; 0 uses
  ret i32 4
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_cat_1_ed_major_1_ed_minor_2_datafield_070_plot(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 8 uses
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef 2, i32 noundef 0)
  %i.c = load i32, ptr @ett_asterix_subtree, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 5 uses
  %i.e = load i32, ptr @expand_var_20, align 4
  %i.f = shl i32 %1, 3                            ; 8 uses
  %i.g = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr @expand_var_21, align 4
  %i.i = or disjoint i32 %i.f, 1
  %i.j = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.d, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @expand_var_22, align 4
  %i.l = or disjoint i32 %i.f, 2
  %i.m = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.d, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.l, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_asterix_spare, align 4
  %i.o = or disjoint i32 %i.f, 3                  ; 2 uses
  %i.p = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.d, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.o, i32 noundef 1, i32 noundef 0)
  %i.q = tail call i64 @tvb_get_bits64(ptr noundef %0, i32 noundef %i.o, i32 noundef 1, i32 noundef 0)
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %check_spare_bits.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call ptr @expert_add_info(ptr noundef null, ptr noundef %i.p, ptr noundef nonnull @hf_asterix_spare_error) ; 0 uses
  br label %check_spare_bits.exit

check_spare_bits.exit:                            ; preds = %bb.a, %bb.b
  %i.s = load i32, ptr @expand_var_23, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.t = or disjoint i32 %i.f, 4
  %i.u = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.t, i32 noundef 3)
  %i.v = add i8 %i.u, 48
end_hunk_0
begin_hunk_1_@dissect_cat_240_ed_major_1_ed_minor_3_datafield_049_uap
define internal noundef i32 @dissect_cat_240_ed_major_1_ed_minor_3_datafield_049_uap(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef 5, i32 noundef 0)
  %i.b = load i32, ptr @ett_asterix_subtree, align 4
  %i.c = tail call ptr @proto_item_add_subtree(ptr noundef %i.a, i32 noundef %i.b) ; 2 uses
  %i.d = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  %i.e = zext i16 %i.d to i32
  %i.f = load i32, ptr @expand_var_4357, align 4
  %i.g = tail call ptr @proto_tree_add_uint(ptr noundef %i.c, i32 noundef %i.f, ptr noundef %0, i32 noundef %1, i32 noundef 2, i32 noundef %i.e) ; 0 uses
  %i.h = add i32 %1, 2                            ; 2 uses
  %i.i = tail call i32 @tvb_get_uint24(ptr noundef %0, i32 noundef %i.h, i32 noundef 0)
  %i.j = load i32, ptr @expand_var_4358, align 4
  %i.k = tail call ptr @proto_tree_add_uint(ptr noundef %i.c, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.h, i32 noundef 3, i32 noundef %i.i) ; 0 uses
  ret i32 5
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_cat_240_ed_major_1_ed_minor_3_datafield_050_uap(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.b = load i32, ptr @ett_asterix_subtree, align 4
  %i.c = tail call ptr @proto_item_add_subtree(ptr noundef %i.a, i32 noundef %i.b) ; 2 uses
  %i.d = load i32, ptr @hf_asterix_counter, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.d, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = add i32 %1, 1                            ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02732 = phi i32 [ %i.m, %.lr.ph ], [ 0, %bb.a ]
  %.02931 = phi i32 [ %i.l, %.lr.ph ], [ %i.h, %bb.a ] ; 3 uses
  %i.i = load i32, ptr @expand_var_4360, align 4
  %i.j = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %.02931, i32 noundef 0)
  %i.k = tail call ptr @proto_tree_add_uint(ptr noundef %i.c, i32 noundef %i.i, ptr noundef %0, i32 noundef %.02931, i32 noundef 4, i32 noundef %i.j) ; 0 uses
  %i.l = add i32 %.02931, 4                       ; 2 uses
  %i.m = add nuw nsw i32 %.02732, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.m, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.029.lcssa = phi i32 [ %i.h, %bb.a ], [ %i.l, %.lr.ph ]
  %i.n = sub i32 %.029.lcssa, %1                  ; 2 uses
  tail call void @proto_item_set_len(ptr noundef %i.a, i32 noundef %i.n)
  ret i32 %i.n
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_cat_240_ed_major_1_ed_minor_3_datafield_051_uap(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.b = load i32, ptr @ett_asterix_subtree, align 4
  %i.c = tail call ptr @proto_item_add_subtree(ptr noundef %i.a, i32 noundef %i.b) ; 2 uses
  %i.d = load i32, ptr @hf_asterix_counter, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.d, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = add i32 %1, 1                            ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02732 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.a ]
  %.02931 = phi i32 [ %i.k, %.lr.ph ], [ %i.h, %bb.a ] ; 2 uses
  %i.i = load i32, ptr @expand_var_4362, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.i, ptr noundef %0, i32 noundef %.02931, i32 noundef 64, i32 noundef 0) ; 0 uses
  %i.k = add i32 %.02931, 64                      ; 2 uses
  %i.l = add nuw nsw i32 %.02732, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !90

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.029.lcssa = phi i32 [ %i.h, %bb.a ], [ %i.k, %.lr.ph ]
  %i.m = sub i32 %.029.lcssa, %1                  ; 2 uses
  tail call void @proto_item_set_len(ptr noundef %i.a, i32 noundef %i.m)
  ret i32 %i.m
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_cat_240_ed_major_1_ed_minor_3_datafield_052_uap(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.b = load i32, ptr @ett_asterix_subtree, align 4
  %i.c = tail call ptr @proto_item_add_subtree(ptr noundef %i.a, i32 noundef %i.b) ; 2 uses
  %i.d = load i32, ptr @hf_asterix_counter, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.d, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = add i32 %1, 1                            ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02732 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.a ]
  %.02931 = phi i32 [ %i.k, %.lr.ph ], [ %i.h, %bb.a ] ; 2 uses
  %i.i = load i32, ptr @expand_var_4364, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.i, ptr noundef %0, i32 noundef %.02931, i32 noundef 256, i32 noundef 0) ; 0 uses
  %i.k = add i32 %.02931, 256                     ; 2 uses
  %i.l = add nuw nsw i32 %.02732, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !91

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.029.lcssa = phi i32 [ %i.h, %bb.a ], [ %i.k, %.lr.ph ]
  %i.m = sub i32 %.029.lcssa, %1                  ; 2 uses
  tail call void @proto_item_set_len(ptr noundef %i.a, i32 noundef %i.m)
  ret i32 %i.m
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 256) i32 @dissect_cat_240_ed_major_1_ed_minor_3_datafield_12_uap(ptr noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2, i32 %3) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1)
  %i.b = zext i8 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_cat_247_ed_major_1_ed_minor_2_datafield_550_uap(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.b = load i32, ptr @ett_asterix_subtree, align 4
  %i.c = tail call ptr @proto_item_add_subtree(ptr noundef %i.a, i32 noundef %i.b) ; 2 uses
  %i.d = load i32, ptr @hf_asterix_counter, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.d, ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = add i32 %1, 1                            ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02732 = phi i32 [ %i.ab, %.lr.ph ], [ 0, %bb.a ]
  %.02931 = phi i32 [ %i.aa, %.lr.ph ], [ %i.h, %bb.a ] ; 6 uses
  %i.i = load i32, ptr @expand_var_4372, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.i, ptr noundef %0, i32 noundef %.02931, i32 noundef 3, i32 noundef 0)
  %i.k = load i32, ptr @ett_asterix_subtree, align 4
  %i.l = tail call ptr @proto_item_add_subtree(ptr noundef %i.j, i32 noundef %i.k) ; 3 uses
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.02931)
  %i.n = zext i8 %i.m to i32
  %i.o = load i32, ptr @expand_var_4373, align 4
  %i.p = tail call ptr @proto_tree_add_uint(ptr noundef %i.l, i32 noundef %i.o, ptr noundef %0, i32 noundef %.02931, i32 noundef 1, i32 noundef %i.n) ; 0 uses
  %i.q = add i32 %.02931, 1                       ; 2 uses
  %i.r = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.q)
  %i.s = zext i8 %i.r to i32
  %i.t = load i32, ptr @expand_var_4374, align 4
  %i.u = tail call ptr @proto_tree_add_uint(ptr noundef %i.l, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef %i.s) ; 0 uses
  %i.v = add i32 %.02931, 2                       ; 2 uses
  %i.w = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.v)
  %i.x = zext i8 %i.w to i32
  %i.y = load i32, ptr @expand_var_4375, align 4
  %i.z = tail call ptr @proto_tree_add_uint(ptr noundef %i.l, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.v, i32 noundef 1, i32 noundef %i.x) ; 0 uses
  %i.aa = add i32 %.02931, 3                      ; 2 uses
  %i.ab = add nuw nsw i32 %.02732, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.029.lcssa = phi i32 [ %i.h, %bb.a ], [ %i.aa, %.lr.ph ]
  %i.ac = sub i32 %.029.lcssa, %1                 ; 2 uses
  tail call void @proto_item_set_len(ptr noundef %i.a, i32 noundef %i.ac)
  ret i32 %i.ac
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 256) i32 @dissect_cat_247_ed_major_1_ed_minor_2_datafield_6_uap(ptr noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2, i32 %3) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1)
  %i.b = zext i8 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 256) i32 @dissect_cat_247_ed_major_1_ed_minor_3_datafield_6_uap(ptr noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2, i32 %3) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1)
  %i.b = zext i8 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tcp_dissect_pdus(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 65536) i32 @get_asterix_pdu_len(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = add i32 %2, 1
  %i.b = tail call zeroext i16 @tvb_get_uint16(ptr noundef %1, i32 noundef %i.a, i32 noundef 0)
  %i.c = zext i16 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind null_pointer_is_valid returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind returns_twice }
attributes #13 = { noreturn }

!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = distinct !{!2, !11}
!3 = distinct !{null}
!4 = distinct !{!4, !11}
!5 = !{i32 8, !"cf-protection-return", i32 1}
!6 = !{i32 8, !"cf-protection-branch", i32 1}
!7 = !{i32 4, !"probe-stack", !"inline-asm"}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = distinct !{!14, !11, !15}
!15 = !{!"llvm.loop.peeled.count", i32 4}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{null}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11, !26, !27}
!24 = distinct !{!24, !11, !27, !26}
!25 = distinct !{!25, !11}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
!71 = distinct !{!71, !11}
!72 = distinct !{!72, !11}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !11}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, !11}
end_hunk_1
