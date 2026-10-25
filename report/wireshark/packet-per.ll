Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-per?download=true
inline.NumInlined: 74
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dissect_per_VisibleString:bb.a
bb.a:
  %i.a = tail call fastcc i32 @dissect_per_restricted_character_string_sorted(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i16 noundef zeroext 32, i16 noundef zeroext 126, ptr noundef @.str.13, i32 noundef 95, ptr noundef %8)
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
  %i.f = load i8, ptr @display_internal_per_fields, align 1, !range !7, !noundef !8
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
  %i.s = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %i.r, ptr noundef @ei_per_undecoded, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef @.str, ptr noundef @.str.14) ; 0 uses
  %i.t = getelementptr i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.u, i32 noundef 25, ptr noundef @.str.1, ptr noundef @.str.14)
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
  %9 = alloca %struct.nstime_t, align 8           ; 7 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  br i1 %8, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = load i32, ptr @hf_per_extension_present_bit, align 4
  %i.c = call i32 @dissect_per_boolean(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %i.d = load i8, ptr @display_internal_per_fields, align 1, !range !7, !noundef !8
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
  %i.m = load i8, ptr %i.a, align 1, !range !7, !noundef !8
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
  %i.t = load i8, ptr %i.s, align 8, !range !7, !noundef !8
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
  store i64 0, ptr %9, align 8
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
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.24, ptr noundef @.str.25, i32 noundef 1391, ptr noundef @.str.26) #12
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
  %i.af = load i8, ptr %i.ae, align 8, !range !7, !noundef !8
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
  %i.aw = load i8, ptr @display_internal_per_fields, align 1, !range !7, !noundef !8
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
  %i.bu = call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_int64_format_value(ptr noundef %3, i32 noundef %i.bt, ptr noundef %0, i32 noundef %i.at, i32 noundef %i.ar, i64 noundef %i.bs, ptr noundef @.str.27, ptr noundef %i.be, i32 noundef %i.br) ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bv = load i32, ptr @hf_per_internal_value, align 4
  %i.bw = call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_uint64_format_value(ptr noundef %3, i32 noundef %i.bv, ptr noundef %0, i32 noundef %i.at, i32 noundef %i.ar, i64 noundef %i.bs, ptr noundef @.str.28, ptr noundef %i.be, i32 noundef %i.br) ; 0 uses
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
  %i.dl = load i8, ptr @display_internal_per_fields, align 1, !range !7, !noundef !8
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
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ae
  %.0265 = phi i32 [ 0, %bb.ad ], [ %i.dx, %bb.ae ] ; 2 uses
  %.0224264 = phi i32 [ 0, %bb.ad ], [ %i.dv, %bb.ae ]
  %.5263 = phi i32 [ %.4, %bb.ad ], [ %i.dw, %bb.ae ] ; 2 uses
  %i.dr = shl i32 %.0224264, 8
  %i.ds = lshr exact i32 %.5263, 3
  %i.dt = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ds)
  %i.du = zext i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.dr, %i.du            ; 2 uses
  %i.dw = add i32 %.5263, 8                       ; 3 uses
  %i.dx = add nuw nsw i32 %.0265, 1
  %exitcond.not = icmp eq i32 %.0265, %i.dq
  br i1 %exitcond.not, label %bb.af, label %bb.ae, !llvm.loop !20

bb.af:                                            ; preds = %bb.ae
  %i.dy = lshr exact i32 %i.dw, 3
  %i.dz = add nuw nsw i32 %i.dk, 2                ; 2 uses
  %i.ea = sub nsw i32 %i.dy, %i.dz
  %i.eb = add i32 %i.dv, %5
  br label %bb.ag

bb.ag:                                            ; preds = %bb.w, %bb.aa, %bb.af, %bb.y, %bb.m
  %.6 = phi i32 [ %.1231, %bb.m ], [ %i.bx, %bb.w ], [ %i.cc, %bb.y ], [ %i.cp, %bb.aa ], [ %i.dw, %bb.af ] ; 2 uses
  %.1225 = phi i32 [ %5, %bb.m ], [ %.pre-phi, %bb.w ], [ %i.cf, %bb.y ], [ %i.ct, %bb.aa ], [ %i.eb, %bb.af ] ; 8 uses
  %.0223 = phi i32 [ %i.ac, %bb.m ], [ %i.at, %bb.w ], [ %i.ce, %bb.y ], [ %i.cr, %bb.aa ], [ %i.ea, %bb.af ] ; 3 uses
  %.0222 = phi i32 [ 0, %bb.m ], [ %i.ar, %bb.w ], [ 1, %bb.y ], [ 2, %bb.aa ], [ %i.dz, %bb.af ] ; 3 uses
  %i.ec = zext i32 %.1225 to i64
  store i64 %i.ec, ptr %9, align 8
  %i.ed = getelementptr i8, ptr %i.p, i64 16
  %i.ee = load i32, ptr %i.ed, align 8
  switch i32 %i.ee, label %bb.ak [
    i32 3, label %bb.ah
    i32 4, label %bb.ah
    i32 5, label %bb.ah
    i32 6, label %bb.ah
    i32 7, label %bb.ah
    i32 35, label %bb.ah
    i32 8, label %bb.ah
    i32 9, label %bb.ah
end_hunk_0
begin_hunk_1_@dissect_per_any_oid:bb.a
  %i.w = call ptr @proto_registrar_get_nth(i32 noundef %4)
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  br i1 %6, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  switch i32 %i.y, label %bb.i [
    i32 37, label %bb.g
    i32 41, label %bb.g
    i32 26, label %bb.h
    i32 27, label %bb.h
    i32 43, label %bb.h
    i32 45, label %bb.h
    i32 28, label %bb.h
    i32 39, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.z = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %4, ptr noundef %i.r, i32 noundef 0, i32 noundef %i.d, i32 noundef 0)
  br label %bb.j

.critedge:                                        ; preds = %bb.e
  switch i32 %i.y, label %bb.i [
    i32 26, label %bb.h
    i32 27, label %bb.h
    i32 43, label %bb.h
    i32 45, label %bb.h
    i32 28, label %bb.h
    i32 39, label %bb.h
  ]

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge
  %i.aa = getelementptr i8, ptr %2, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 416
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call ptr @tvb_get_ptr(ptr noundef %i.r, i32 noundef 0, i32 noundef %i.d)
  %i.af = call ptr @oid_encoded2string(ptr noundef %i.ad, ptr noundef %i.ae, i32 noundef %i.d)
  %i.ag = call ptr @proto_tree_add_string(ptr noundef %3, i32 noundef %4, ptr noundef %i.r, i32 noundef 0, i32 noundef %i.d, ptr noundef %i.af)
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %.critedge
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.176, ptr noundef @.str.25, i32 noundef 1101) #12
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sink = phi ptr [ %i.ag, %bb.h ], [ %i.z, %bb.g ]
  %i.ah = getelementptr i8, ptr %2, i64 24
  store ptr %.sink, ptr %i.ah, align 8
  %.not44 = icmp eq ptr %5, null
  br i1 %.not44, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.r, ptr %5, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = add i32 %.0, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.ai
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef i32 @dissect_per_relative_oid(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_per_any_oid(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i1 noundef zeroext false)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef i32 @dissect_per_object_identifier_str(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  %.not.i = icmp eq ptr %5, null                  ; 2 uses
  %..i = select i1 %.not.i, ptr null, ptr %i.a
  %i.b = call fastcc i32 @dissect_per_any_oid(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %..i, i1 noundef zeroext true)
  br i1 %.not.i, label %dissect_per_any_oid_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not15.i = icmp eq ptr %i.c, null
  br i1 %.not15.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @tvb_captured_length(ptr noundef nonnull %i.c) ; 3 uses
  %.not16.i = icmp eq i32 %i.d, 0
  br i1 %.not16.i, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 416
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call ptr @tvb_get_ptr(ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef %i.d)
  %i.j = call ptr @oid_encoded2string(ptr noundef %i.h, ptr noundef %i.i, i32 noundef %i.d)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.j, %bb.d ], [ @.str.177, %bb.c ], [ @.str.177, %bb.b ]
  store ptr %.sink.i, ptr %5, align 8
  br label %dissect_per_any_oid_str.exit

dissect_per_any_oid_str.exit:                     ; preds = %bb.a, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef i32 @dissect_per_relative_oid_str(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  %.not.i = icmp eq ptr %5, null                  ; 2 uses
  %..i = select i1 %.not.i, ptr null, ptr %i.a
  %i.b = call fastcc i32 @dissect_per_any_oid(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %..i, i1 noundef zeroext false)
  br i1 %.not.i, label %dissect_per_any_oid_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not15.i = icmp eq ptr %i.c, null
  br i1 %.not15.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @tvb_captured_length(ptr noundef nonnull %i.c) ; 3 uses
  %.not16.i = icmp eq i32 %i.d, 0
  br i1 %.not16.i, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 416
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call ptr @tvb_get_ptr(ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef %i.d)
  %i.j = call ptr @oid_encoded2string(ptr noundef %i.h, ptr noundef %i.i, i32 noundef %i.d)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.j, %bb.d ], [ @.str.177, %bb.c ], [ @.str.177, %bb.b ]
  store ptr %.sink.i, ptr %5, align 8
  br label %dissect_per_any_oid_str.exit

dissect_per_any_oid_str.exit:                     ; preds = %bb.a, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef i32 @dissect_per_integer(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = load i32, ptr @hf_per_integer_length, align 4
  %i.c = call i32 @dissect_per_length_determinant(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.b, ptr noundef nonnull %i.a, ptr noundef null) ; 3 uses
  %i.d = load i32, ptr %i.a, align 4              ; 8 uses
  %i.e = icmp ugt i32 %i.d, 4
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %i.g, ptr noundef @ei_per_undecoded, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef @.str, ptr noundef @.str.19) ; 0 uses
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.j, i32 noundef 25, ptr noundef @.str.1, ptr noundef @.str.19)
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %i.d, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %i.m, ptr noundef @ei_per_undecoded, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef @.str, ptr noundef @.str.20) ; 0 uses
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.p, i32 noundef 25, ptr noundef @.str.1, ptr noundef @.str.20)
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %2, i64 8
  %i.r = load i8, ptr %i.q, align 8, !range !7, !noundef !8
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = and i32 %i.c, 7
  %.not = icmp ne i32 %i.t, 0
  %or.cond.not = select i1 %i.s, i1 %.not, i1 false
  %i.u = and i32 %i.c, -8
  %i.v = add i32 %i.u, 8
  %.066 = select i1 %or.cond.not, i32 %i.v, i32 %i.c ; 2 uses
  %i.w = shl nuw nsw i32 %i.d, 3                  ; 2 uses
  %i.x = call ptr @tvb_new_octet_aligned(ptr noundef %0, i32 noundef %.066, i32 noundef %i.w) ; 3 uses
  %i.y = call zeroext i8 @tvb_get_uint8(ptr noundef %i.x, i32 noundef 0)
  %.lobit.peel = ashr i8 %i.y, 7
  %..peel = sext i8 %.lobit.peel to i32
  %6 = shl nsw i32 %..peel, 8
  %i.z = call zeroext i8 @tvb_get_uint8(ptr noundef %i.x, i32 noundef 0)
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %6, %i.aa               ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.d, 1
  br i1 %exitcond.peel.not, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.e, %.peel.next
  %.06477 = phi i32 [ %i.af, %.peel.next ], [ %i.ab, %bb.e ]
  %.06576 = phi i32 [ %i.ag, %.peel.next ], [ 1, %bb.e ] ; 2 uses
  %i.ac = shl i32 %.06477, 8
  %i.ad = call zeroext i8 @tvb_get_uint8(ptr noundef %i.x, i32 noundef %.06576)
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae            ; 2 uses
  %i.ag = add nuw nsw i32 %.06576, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ag, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.peel.next, !llvm.loop !21

.loopexit:                                        ; preds = %.peel.next, %bb.e
  %.lcssa = phi i32 [ %i.ab, %bb.e ], [ %i.af, %.peel.next ] ; 3 uses
  %i.ah = add i32 %.066, %i.w                     ; 4 uses
  %i.ai = call ptr @proto_registrar_get_nth(i32 noundef %4) ; 3 uses
  %.not71 = icmp eq ptr %i.ai, null
  br i1 %.not71, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable

bb.g:                                             ; preds = %.loopexit
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %i.ak = load i32, ptr %i.aj, align 8
  switch i32 %i.ak, label %bb.j [
    i32 12, label %bb.h
    i32 13, label %bb.h
    i32 14, label %bb.h
    i32 15, label %bb.h
    i32 16, label %bb.h
    i32 17, label %bb.h
    i32 18, label %bb.h
    i32 19, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.i
    i32 5, label %bb.i
    i32 6, label %bb.i
    i32 7, label %bb.i
    i32 35, label %bb.i
    i32 8, label %bb.i
    i32 9, label %bb.i
    i32 10, label %bb.i
    i32 11, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.al = lshr i32 %i.ah, 3
  %i.am = add nuw nsw i32 %i.d, 1                 ; 2 uses
  %i.an = sub nsw i32 %i.al, %i.am
  %i.ao = call ptr @proto_tree_add_int(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %i.an, i32 noundef %i.am, i32 noundef %.lcssa)
  br label %bb.k

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.ap = lshr i32 %i.ah, 3
  %i.aq = add nuw nsw i32 %i.d, 1                 ; 2 uses
  %i.ar = sub nsw i32 %i.ap, %i.aq
  %i.as = call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %i.ar, i32 noundef %i.aq, i32 noundef %.lcssa)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.at = getelementptr i8, ptr %2, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = lshr i32 %i.ah, 3
  %i.aw = add nuw nsw i32 %i.d, 1                 ; 2 uses
  %i.ax = sub nsw i32 %i.av, %i.aw
  %i.ay = getelementptr i8, ptr %i.ai, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %i.au, ptr noundef @ei_per_field_not_integer, ptr noundef %0, i32 noundef %i.ax, i32 noundef %i.aw, ptr noundef @.str.21, ptr noundef %i.az) ; 0 uses
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.22) #12
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h
  %.0 = phi ptr [ %i.ao, %bb.h ], [ %i.as, %bb.i ]
  %i.bb = getelementptr i8, ptr %2, i64 24
  store ptr %.0, ptr %i.bb, align 8
  %.not72 = icmp eq ptr %5, null
  br i1 %.not72, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %.lcssa, ptr %5, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.ah
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_int(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_integer64b(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call i32 @dissect_per_length_determinant(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) ; 3 uses
  %i.c = load i32, ptr %i.a, align 4              ; 7 uses
  %i.d = icmp ugt i32 %i.c, 8
  br i1 %i.d, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not68 = icmp eq i32 %i.c, 0
  br i1 %.not68, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.e = lshr i32 %i.b, 3                         ; 2 uses
  %i.f = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.e)
  %.lobit.peel = ashr i8 %i.f, 7
  %..peel = sext i8 %.lobit.peel to i64
  %6 = shl nsw i64 %..peel, 8
  %i.g = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.e)
  %i.h = zext i8 %i.g to i64
  %i.i = or disjoint i64 %6, %i.h                 ; 2 uses
  %i.j = add i32 %i.b, 8                          ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.c, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.peel.next

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %i.l, ptr noundef @ei_per_undecoded, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef @.str, ptr noundef @.str.23) ; 0 uses
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.o, i32 noundef 25, ptr noundef @.str.1, ptr noundef @.str.23)
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable

.lr.ph.peel.next:                                 ; preds = %bb.b, %.lr.ph.peel.next
  %.05666 = phi i64 [ %i.s, %.lr.ph.peel.next ], [ %i.i, %bb.b ]
  %.05765 = phi i32 [ %i.u, %.lr.ph.peel.next ], [ 1, %bb.b ]
  %.05864 = phi i32 [ %i.t, %.lr.ph.peel.next ], [ %i.j, %bb.b ] ; 2 uses
  %.pre71 = lshr i32 %.05864, 3
  %i.p = shl i64 %.05666, 8
  %i.q = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.pre71)
  %i.r = zext i8 %i.q to i64
  %i.s = or disjoint i64 %i.p, %i.r               ; 2 uses
  %i.t = add i32 %.05864, 8                       ; 2 uses
  %i.u = add nuw nsw i32 %.05765, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.peel.next, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph.peel.next, %bb.b, %.preheader
  %.058.lcssa = phi i32 [ %i.b, %.preheader ], [ %i.j, %bb.b ], [ %i.t, %.lr.ph.peel.next ] ; 4 uses
  %.056.lcssa = phi i64 [ 0, %.preheader ], [ %i.i, %bb.b ], [ %i.s, %.lr.ph.peel.next ] ; 3 uses
  %i.v = call ptr @proto_registrar_get_nth(i32 noundef %4) ; 3 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable

bb.e:                                             ; preds = %._crit_edge
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 8
  switch i32 %i.x, label %bb.h [
    i32 12, label %bb.f
    i32 13, label %bb.f
    i32 14, label %bb.f
    i32 15, label %bb.f
    i32 16, label %bb.f
    i32 17, label %bb.f
    i32 18, label %bb.f
    i32 19, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.g
    i32 5, label %bb.g
    i32 6, label %bb.g
    i32 7, label %bb.g
    i32 35, label %bb.g
    i32 8, label %bb.g
    i32 9, label %bb.g
    i32 10, label %bb.g
    i32 11, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.y = lshr i32 %.058.lcssa, 3
  %i.z = add nuw nsw i32 %i.c, 1                  ; 2 uses
  %i.aa = sub nsw i32 %i.y, %i.z
  %i.ab = call ptr @proto_tree_add_int64(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %i.aa, i32 noundef %i.z, i64 noundef %.056.lcssa)
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.ac = lshr i32 %.058.lcssa, 3
  %i.ad = add nuw nsw i32 %i.c, 1                 ; 2 uses
  %i.ae = sub nsw i32 %i.ac, %i.ad
  %i.af = call ptr @proto_tree_add_uint64(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %i.ae, i32 noundef %i.ad, i64 noundef %.056.lcssa)
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %2, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = lshr i32 %.058.lcssa, 3
  %i.aj = add nuw nsw i32 %i.c, 1                 ; 2 uses
  %i.ak = sub nsw i32 %i.ai, %i.aj
  %i.al = getelementptr i8, ptr %i.v, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %i.ah, ptr noundef @ei_per_field_not_integer, ptr noundef %0, i32 noundef %i.ak, i32 noundef %i.aj, ptr noundef @.str.21, ptr noundef %i.am) ; 0 uses
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.22) #12
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.ab, %bb.f ], [ %i.af, %bb.g ]
  %i.ao = getelementptr i8, ptr %2, i64 24
  store ptr %.0, ptr %i.ao, align 8
  %.not62 = icmp eq ptr %5, null
  br i1 %.not62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %.056.lcssa, ptr %5, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.058.lcssa
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_int64(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint64(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_bits64(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @decode_bits_in_field(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_int64_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint64_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_time(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_constrained_integer_64b(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr nofree noundef writeonly captures(address_is_null) %7, i1 noundef zeroext %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.nstime_t, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  br i1 %8, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = load i32, ptr @hf_per_extension_present_bit, align 4
  %i.c = call i32 @dissect_per_boolean(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %i.d = load i8, ptr @display_internal_per_fields, align 1, !range !7, !noundef !8
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
  %i.m = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.thread, label %bb.f

.thread:                                          ; preds = %proto_item_set_hidden.exit
  %i.o = call i32 @dissect_per_integer64b(ptr noundef %0, i32 noundef %i.c, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.bw

bb.f:                                             ; preds = %proto_item_set_hidden.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.1259 = phi i32 [ %i.c, %bb.f ], [ %1, %bb.a ] ; 11 uses
  %i.p = call ptr @proto_registrar_get_nth(i32 noundef %4)
  %i.q = sub i64 %6, %5                           ; 3 uses
  %i.r = icmp ugt i64 %i.q, 65536
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %2, i64 8
  %i.t = load i8, ptr %i.s, align 8, !range !7, !noundef !8
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = icmp eq i64 %6, 9223372036854775807
  %i.w = icmp eq i64 %5, -9223372036854775808
  %or.cond = and i1 %i.w, %i.v
  br i1 %or.cond, label %.thread303, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp eq i64 %6, -1
  %i.y = icmp eq i64 %5, 0
  %or.cond3 = and i1 %i.y, %i.x
  %i.z = add i64 %i.q, 1
  br i1 %or.cond3, label %.thread303, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.0254 = phi i64 [ %i.z, %bb.j ], [ %i.q, %bb.h ] ; 12 uses
  store i64 0, ptr %9, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.aa, align 8
  switch i64 %.0254, label %bb.n [
    i64 0, label %bb.l
    i64 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.24, ptr noundef @.str.25, i32 noundef 1569, ptr noundef @.str.26) #12
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ab = lshr i32 %.1259, 3
  br label %bb.bp

bb.n:                                             ; preds = %bb.k
  %i.ac = icmp ult i64 %.0254, 256
  br i1 %i.ac, label %.lr.ph.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr i8, ptr %2, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !range !7, !noundef !8
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.bh, label %bb.p

.thread303:                                       ; preds = %bb.i, %bb.j
  store i64 0, ptr %9, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %2, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !range !7, !noundef !8
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.thread312, label %._crit_edge.thread

bb.p:                                             ; preds = %bb.o
  %i.ak = icmp sgt i64 %.0254, -1
  br i1 %i.ak, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.n, %bb.p
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0235324 = phi i64 [ %i.an, %.lr.ph ], [ 9223372036854775807, %.lr.ph.preheader ]
  %.0236323 = phi i64 [ %i.am, %.lr.ph ], [ -9223372036854775808, %.lr.ph.preheader ]
  %.0243322 = phi i32 [ %i.al, %.lr.ph ], [ 64, %.lr.ph.preheader ]
  %i.al = add i32 %.0243322, -1                   ; 2 uses
  %i.am = lshr i64 %.0236323, 1                   ; 2 uses
  %i.an = lshr i64 %.0235324, 1                   ; 2 uses
  %i.ao = and i64 %i.am, %.0254
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge.thread:                               ; preds = %bb.p, %.thread303
  %.0254298302370.ph = phi i64 [ %.0254, %bb.p ], [ -1, %.thread303 ] ; 2 uses
  %i.aq = and i64 %.0254298302370.ph, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  %spec.select377 = select i1 %i.ar, i32 63, i32 64
  br label %bb.q

._crit_edge:                                      ; preds = %.lr.ph
  %i.as = and i64 %i.an, %.0254
  %i.at = icmp eq i64 %i.as, 0
  %i.au = sext i1 %i.at to i32
  %spec.select = add i32 %i.al, %i.au
  %i.av = icmp samesign ult i64 %.0254, 3         ; 2 uses
  %spec.select382 = select i1 %i.av, i64 2, i64 %.0254
  %spec.select383 = select i1 %i.av, i32 1, i32 %spec.select
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %.0254298302370378 = phi i64 [ %.0254298302370.ph, %._crit_edge.thread ], [ %spec.select382, %._crit_edge ]
  %i.aw = phi i32 [ %spec.select377, %._crit_edge.thread ], [ %spec.select383, %._crit_edge ] ; 5 uses
  %i.ax = getelementptr i8, ptr %2, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %i.ay, i64 416
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noalias dereferenceable_or_null(641) ptr @wmem_alloc(ptr noundef %i.ba, i64 noundef 641) #14 ; 29 uses
  %i.bc = and i32 %.1259, 7                       ; 14 uses
  %.not350 = icmp eq i32 %i.bc, 0
  br i1 %.not350, label %.preheader318, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 46, ptr %i.bb, align 1
  %exitcond356.peel.not = icmp eq i32 %i.bc, 1
  br i1 %exitcond356.peel.not, label %.preheader318, label %.lr.ph329

.preheader318:                                    ; preds = %.lr.ph329, %.lr.ph329.1, %.lr.ph329.2, %.lr.ph329.3, %.lr.ph329.4, %.lr.ph329.5, %bb.r, %bb.q
  %.0240.lcssa = phi i32 [ 0, %bb.q ], [ 1, %bb.r ], [ %i.bc, %.lr.ph329.5 ], [ %i.bc, %.lr.ph329.4 ], [ %i.bc, %.lr.ph329.3 ], [ %i.bc, %.lr.ph329.2 ], [ %i.bc, %.lr.ph329.1 ], [ %i.bc, %.lr.ph329 ] ; 2 uses
  %.0237.lcssa = phi i32 [ 0, %bb.q ], [ 1, %bb.r ], [ 2, %.lr.ph329 ], [ 3, %.lr.ph329.1 ], [ 4, %.lr.ph329.2 ], [ 6, %.lr.ph329.3 ], [ 7, %.lr.ph329.4 ], [ 8, %.lr.ph329.5 ] ; 2 uses
  %i.bd = icmp sgt i32 %i.aw, 0
  br i1 %i.bd, label %.lr.ph338, label %.preheader

.lr.ph338:                                        ; preds = %.preheader318
  %i.be = getelementptr i8, ptr %2, i64 24
  br label %bb.s

.lr.ph329:                                        ; preds = %bb.r
  %i.bf = getelementptr i8, ptr %i.bb, i64 1
  store i8 46, ptr %i.bf, align 1
  %exitcond356.not = icmp eq i32 %i.bc, 2
  br i1 %exitcond356.not, label %.preheader318, label %.lr.ph329.1

.lr.ph329.1:                                      ; preds = %.lr.ph329
  %i.bg = getelementptr i8, ptr %i.bb, i64 2
  store i8 46, ptr %i.bg, align 1
  %exitcond356.not.1 = icmp eq i32 %i.bc, 3
  br i1 %exitcond356.not.1, label %.preheader318, label %.lr.ph329.2

.lr.ph329.2:                                      ; preds = %.lr.ph329.1
  %i.bh = getelementptr i8, ptr %i.bb, i64 3
  store i8 46, ptr %i.bh, align 1
  %exitcond356.not.2 = icmp eq i32 %i.bc, 4
  br i1 %exitcond356.not.2, label %.preheader318, label %.lr.ph329.3

.lr.ph329.3:                                      ; preds = %.lr.ph329.2
  %i.bi = getelementptr i8, ptr %i.bb, i64 4
  store i8 32, ptr %i.bi, align 1
  %i.bj = getelementptr i8, ptr %i.bb, i64 5
  store i8 46, ptr %i.bj, align 1
  %exitcond356.not.3 = icmp eq i32 %i.bc, 5
  br i1 %exitcond356.not.3, label %.preheader318, label %.lr.ph329.4

.lr.ph329.4:                                      ; preds = %.lr.ph329.3
  %i.bk = getelementptr i8, ptr %i.bb, i64 6
  store i8 46, ptr %i.bk, align 1
  %exitcond356.not.4 = icmp eq i32 %i.bc, 6
  br i1 %exitcond356.not.4, label %.preheader318, label %.lr.ph329.5

.lr.ph329.5:                                      ; preds = %.lr.ph329.4
  %i.bl = getelementptr i8, ptr %i.bb, i64 7
  store i8 46, ptr %i.bl, align 1
  br label %.preheader318

.preheader.loopexit:                              ; preds = %bb.aa
  %i.bm = add nuw i32 %i.aw, %i.bc
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader318
  %.2260.lcssa = phi i32 [ %.1259, %.preheader318 ], [ %.0.i, %.preheader.loopexit ] ; 3 uses
  %.0250.lcssa = phi i64 [ 0, %.preheader318 ], [ %.1251, %.preheader.loopexit ]
  %.1241.lcssa = phi i32 [ %.0240.lcssa, %.preheader318 ], [ %i.bm, %.preheader.loopexit ] ; 10 uses
  %.0238.lcssa = phi i32 [ 1, %.preheader318 ], [ %.1239, %.preheader.loopexit ] ; 5 uses
  %.3.lcssa = phi i32 [ %.0237.lcssa, %.preheader318 ], [ %.6, %.preheader.loopexit ] ; 5 uses
  %i.bn = and i32 %.1241.lcssa, 7
  %.not274344 = icmp eq i32 %i.bn, 0
  br i1 %.not274344, label %._crit_edge348, label %.lr.ph347

bb.s:                                             ; preds = %.lr.ph338, %bb.aa
  %.3337 = phi i32 [ %.0237.lcssa, %.lr.ph338 ], [ %.6, %bb.aa ] ; 4 uses
  %.0238336 = phi i32 [ 1, %.lr.ph338 ], [ %.1239, %bb.aa ] ; 2 uses
  %.1241335 = phi i32 [ %.0240.lcssa, %.lr.ph338 ], [ %i.bz, %bb.aa ] ; 4 uses
  %.2245334 = phi i32 [ 0, %.lr.ph338 ], [ %i.co, %bb.aa ]
  %.0250333 = phi i64 [ 0, %.lr.ph338 ], [ %.1251, %bb.aa ]
  %.2260332 = phi i32 [ %.1259, %.lr.ph338 ], [ %.0.i, %bb.aa ] ; 3 uses
  %.not277 = icmp ne i32 %.1241335, 0             ; 2 uses
  %i.bo = and i32 %.1241335, 3
  %.not278 = icmp eq i32 %i.bo, 0
  %or.cond285 = and i1 %.not277, %.not278
  %i.bp = icmp slt i32 %.3337, 640
  %or.cond286 = select i1 %or.cond285, i1 %i.bp, i1 false
  br i1 %or.cond286, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bq = add nsw i32 %.3337, 1
  %i.br = sext i32 %.3337 to i64
  %i.bs = getelementptr i8, ptr %i.bb, i64 %i.br
  store i8 32, ptr %i.bs, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.4 = phi i32 [ %.3337, %bb.s ], [ %i.bq, %bb.t ] ; 5 uses
  %i.bt = and i32 %.1241335, 7
  %.not279 = icmp eq i32 %i.bt, 0
  %or.cond288 = and i1 %.not277, %.not279
  br i1 %or.cond288, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bu = add i32 %.0238336, 1                    ; 2 uses
  %i.bv = icmp slt i32 %.4, 640
  br i1 %i.bv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bw = add nsw i32 %.4, 1
  %i.bx = sext i32 %.4 to i64
  %i.by = getelementptr i8, ptr %i.bb, i64 %i.bx
  store i8 32, ptr %i.by, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  %.1239 = phi i32 [ %.0238336, %bb.u ], [ %i.bu, %bb.w ], [ %i.bu, %bb.v ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.u ], [ %i.bw, %bb.w ], [ %.4, %bb.v ] ; 6 uses
  %i.bz = add nuw i32 %.1241335, 1
  %i.ca = lshr i32 %.2260332, 3
  %i.cb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ca)
  %i.cc = zext i8 %i.cb to i32
  %i.cd = and i32 %.2260332, 7
  %i.ce = xor i32 %i.cd, 7
  %i.cf = lshr i32 %i.cc, %i.ce
  %i.cg = trunc i32 %i.cf to i1
  store ptr null, ptr %i.be, align 8
  %.0.i = add i32 %.2260332, 1                    ; 2 uses
  %i.ch = shl i64 %.0250333, 1                    ; 3 uses
  br i1 %i.cg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ci = or disjoint i64 %i.ch, 1                ; 2 uses
  %i.cj = icmp slt i32 %.5, 640
  br i1 %i.cj, label %.sink.split, label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ck = icmp slt i32 %.5, 640
  br i1 %i.ck, label %.sink.split, label %bb.aa

.sink.split:                                      ; preds = %bb.z, %bb.y
  %.sink = phi i8 [ 49, %bb.y ], [ 48, %bb.z ]
  %.1251.ph = phi i64 [ %i.ci, %bb.y ], [ %i.ch, %bb.z ]
  %i.cl = add nsw i32 %.5, 1
  %i.cm = sext i32 %.5 to i64
  %i.cn = getelementptr i8, ptr %i.bb, i64 %i.cm
  store i8 %.sink, ptr %i.cn, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.y, %bb.z
  %.1251 = phi i64 [ %i.ch, %bb.z ], [ %i.ci, %bb.y ], [ %.1251.ph, %.sink.split ] ; 2 uses
  %.6 = phi i32 [ %.5, %bb.z ], [ %.5, %bb.y ], [ %i.cl, %.sink.split ] ; 2 uses
  %i.co = add nuw nsw i32 %.2245334, 1            ; 2 uses
  %exitcond358.not = icmp eq i32 %i.co, %i.aw
  br i1 %exitcond358.not, label %.preheader.loopexit, label %bb.s, !llvm.loop !24

.lr.ph347:                                        ; preds = %.preheader
  %i.cp = and i32 %.1241.lcssa, 3
  %.not276 = icmp eq i32 %i.cp, 0
  %i.cq = icmp slt i32 %.3.lcssa, 640
  %or.cond290 = select i1 %.not276, i1 %i.cq, i1 false
  br i1 %or.cond290, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph347
  %i.cr = add nsw i32 %.3.lcssa, 1
  %i.cs = sext i32 %.3.lcssa to i64
  %i.ct = getelementptr i8, ptr %i.bb, i64 %i.cs
  store i8 32, ptr %i.ct, align 1
  br label %bb.ac

end_hunk_1
