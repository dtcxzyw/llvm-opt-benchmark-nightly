Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@write_f32_raw:bb.a
  %i.tk = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.tj
  %.neg64.i = sext i1 %i.th to i64
  %i.tl = zext i1 %i.th to i64
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.tl
  %i.tn = load i16, ptr %i.tm, align 1            ; 2 uses
  store i16 %i.tn, ptr %i.qt, align 1
  %i.to = getelementptr inbounds i8, ptr %i.qt, i64 %.neg64.i ; 4 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 2
  %i.tq = shl nsw i32 %i.tf, 1
  %i.tr = zext i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.tr
  %i.tt = load i16, ptr %i.ts, align 2
  store i16 %i.tt, ptr %i.tp, align 1
  %i.tu = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  %i.tv = shl nuw nsw i32 %i.te, 1
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.tw
  %i.ty = load i16, ptr %i.tx, align 2
  store i16 %i.ty, ptr %i.tu, align 1
  %i.tz = getelementptr inbounds nuw i8, ptr %i.to, i64 6
  %i.ua = shl i32 %i.tg, 1
  %i.ub = zext i32 %i.ua to i64
  %i.uc = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ub
  %i.ud = load i16, ptr %i.uc, align 2
  store i16 %i.ud, ptr %i.tz, align 1
  %i.ue = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  br label %write_u32_len_1_to_8.exit

write_u32_len_1_to_8.exit:                        ; preds = %bb.an, %bb.ap, %bb.ar, %bb.as
  %.in = phi i16 [ %i.rb, %bb.an ], [ %i.ro, %bb.ap ], [ %i.sk, %bb.ar ], [ %i.tn, %bb.as ]
  %.0.i = phi ptr [ %i.rd, %bb.an ], [ %i.rv, %bb.ap ], [ %i.sw, %bb.ar ], [ %i.ue, %bb.as ] ; 3 uses
  %i.uf = trunc i16 %.in to i8
  store i8 %i.uf, ptr %i.q, align 1, !tbaa !100
  store i8 46, ptr %i.qt, align 1, !tbaa !100
  %i.ug = getelementptr inbounds i8, ptr %.0.i, i64 -1
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !100
  %i.ui = icmp eq i8 %i.uh, 48
  %.neg = sext i1 %i.ui to i64
  %i.uj = getelementptr inbounds i8, ptr %.0.i, i64 %.neg ; 2 uses
  %i.uk = getelementptr inbounds i8, ptr %i.uj, i64 -1
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !100
  %i.um = icmp eq i8 %i.ul, 48
  %.neg98 = sext i1 %i.um to i64
  %i.un = getelementptr inbounds i8, ptr %i.uj, i64 %.neg98
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %write_u32_len_1_to_8.exit
  %.092 = phi ptr [ %i.un, %write_u32_len_1_to_8.exit ], [ %i.uo, %bb.at ] ; 2 uses
  %i.uo = getelementptr inbounds i8, ptr %.092, i64 -1 ; 2 uses
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !100 ; 2 uses
  %i.uq = icmp eq i8 %i.up, 48
  br i1 %i.uq, label %bb.at, label %bb.au, !llvm.loop !361

bb.au:                                            ; preds = %bb.at
  %i.ur = ptrtoint ptr %.0.i to i64
  %i.us = ptrtoint ptr %i.q to i64
  %i.ut = sub i64 %i.ur, %i.us
  %i.uu = trunc i64 %i.ut to i32                  ; 2 uses
  %i.uv = add nsw i32 %i.uu, -47
  %i.uw = icmp eq i8 %i.up, 46
  %.neg99 = sext i1 %i.uw to i64
  %i.ux = getelementptr inbounds i8, ptr %.092, i64 %.neg99 ; 2 uses
  store i16 11621, ptr %i.ux, align 1
  %i.uy = icmp sgt i32 %i.uu, 46
  %i.uz = select i1 %i.uy, i64 1, i64 2
  %i.va = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.uz ; 2 uses
  %i.vb = tail call i32 @llvm.abs.i32(i32 %i.uv, i1 true) ; 2 uses
  %i.vc = icmp samesign ult i32 %i.vb, 10         ; 2 uses
  %i.vd = shl nuw i32 %i.vb, 1
  %i.ve = zext i32 %i.vd to i64
  %i.vf = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ve
  %.neg.i139 = sext i1 %i.vc to i64
  %i.vg = zext i1 %i.vc to i64
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 %i.vg
  %i.vi = load i16, ptr %i.vh, align 1
  store i16 %i.vi, ptr %i.va, align 1
  %i.vj = getelementptr inbounds nuw i8, ptr %i.va, i64 2
  %i.vk = getelementptr inbounds i8, ptr %i.vj, i64 %.neg.i139
  br label %write_inf_or_nan.exit

write_inf_or_nan.exit:                            ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.au, %write_u32_len_7_to_9_trim.exit, %write_u32_len_7_to_9_trim.exit138, %write_u32_len_1_to_8.exit113, %bb.i
  %.0 = phi ptr [ %i.vk, %bb.au ], [ %i.s, %bb.i ], [ %i.dk, %write_u32_len_1_to_8.exit113 ], [ %i.lb, %write_u32_len_7_to_9_trim.exit138 ], [ %i.oa, %write_u32_len_7_to_9_trim.exit ], [ %i.i, %bb.c ], [ %i.n, %bb.f ], [ %i.o, %bb.g ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @yyjson_val_write_opts(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca %struct.yyjson_write_err, align 8   ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0849.0.copyload = load ptr, ptr %2, align 8, !tbaa !47
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !47
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !47
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.9.0 = phi ptr [ %.sroa.9.0.copyload, %bb.b ], [ null, %bb.a ] ; 35 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %bb.b ], [ @default_free, %bb.a ] ; 10 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload, %bb.b ], [ @default_realloc, %bb.a ] ; 16 uses
  %.sroa.0849.0 = phi ptr [ %.sroa.0849.0.copyload, %bb.b ], [ @default_malloc, %bb.a ] ; 9 uses
  %.not26 = icmp eq ptr %4, null                  ; 14 uses
  %spec.store.select = select i1 %.not26, ptr %5, ptr %4 ; 16 uses
  %.not27 = icmp eq ptr %3, null                  ; 16 uses
  %.not28 = icmp eq ptr %0, null
  br i1 %.not28, label %bb.d, label %bb.e, !prof !45

bb.d:                                             ; preds = %bb.c
  br i1 %.not27, label %.cont793, label %.else795

.else795:                                         ; preds = %bb.d
  store i64 0, ptr %3, align 8, !tbaa !106
  br label %.cont793

.cont793:                                         ; preds = %bb.d, %.else795
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.29, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !149
  store i32 1, ptr %spec.store.select, align 8, !tbaa !150
  br label %yyjson_write_single.exit

bb.e:                                             ; preds = %bb.c
  %i.a = load i64, ptr %0, align 8, !tbaa !99     ; 5 uses
  %i.b = trunc i64 %i.a to i8                     ; 2 uses
  %i.c = and i8 %i.b, 6
  %i.d = icmp ne i8 %i.c, 6
  %i.e = icmp ult i64 %i.a, 256
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.f, label %bb.fq

bb.f:                                             ; preds = %bb.e
  %i.f = and i32 %1, 2
  %.not1299 = icmp eq i32 %i.f, 0                 ; 3 uses
  %i.g = and i32 %1, 4
  %.not1300 = icmp eq i32 %i.g, 0                 ; 2 uses
  br i1 %.not1299, label %bb.h, label %bb.g, !prof !62

bb.g:                                             ; preds = %bb.f
  %enc_table_esc_slash.enc_table_esc.i65 = select i1 %.not1300, ptr @enc_table_esc, ptr @enc_table_esc_slash, !prof !62
  br label %get_enc_table_with_flag.exit66

bb.h:                                             ; preds = %bb.f
  %enc_table_cpy_slash.enc_table_cpy.i63 = select i1 %.not1300, ptr @enc_table_cpy, ptr @enc_table_cpy_slash, !prof !62
  br label %get_enc_table_with_flag.exit66

get_enc_table_with_flag.exit66:                   ; preds = %bb.g, %bb.h
  %.0.i64 = phi ptr [ %enc_table_esc_slash.enc_table_esc.i65, %bb.g ], [ %enc_table_cpy_slash.enc_table_cpy.i63, %bb.h ] ; 28 uses
  %i.h = icmp eq ptr %.0.i64, @enc_table_cpy
  %i.i = and i32 %1, 32
  %.not1302 = icmp eq i32 %i.i, 0                 ; 4 uses
  %i.j = and i32 %1, 128
  %.not1303 = icmp eq i32 %i.j, 0
  %i.k = and i8 %i.b, 7
  switch i8 %i.k, label %default.unreachable [
    i8 1, label %bb.i
    i8 5, label %bb.k
    i8 4, label %bb.ec
    i8 3, label %bb.fe
    i8 2, label %bb.ff
    i8 6, label %bb.fh
    i8 7, label %bb.fj
    i8 0, label %bb.fo
  ]

bb.i:                                             ; preds = %get_enc_table_with_flag.exit66
  %i.l = lshr i64 %i.a, 8                         ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100
  %i.o = add nuw nsw i64 %i.l, 2
  %i.p = tail call ptr %.sroa.0849.0(ptr noundef %.sroa.9.0, i64 noundef %i.o) #33, !inline_history !362 ; 4 uses
  %.not107.i = icmp eq ptr %i.p, null
  br i1 %.not107.i, label %bb.fn, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.n, i64 range(i64 0, 72057594037927936) %i.l, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l
  br label %write_str.exit605

bb.k:                                             ; preds = %get_enc_table_with_flag.exit66
  %i.r = lshr i64 %i.a, 8                         ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !100  ; 7 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 4 uses
  %i.v = mul nuw nsw i64 %i.r, 6
  %i.w = add nuw nsw i64 %i.v, 4
  %i.x = tail call ptr %.sroa.0849.0(ptr noundef %.sroa.9.0, i64 noundef %i.w) #33, !inline_history !362 ; 12 uses
  %.not104.i = icmp eq ptr %i.x, null
  br i1 %.not104.i, label %bb.fn, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.h, label %bb.bt, label %.split.i, !prof !62

.split.i:                                         ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r ; 3 uses
  store i8 34, ptr %i.x, align 1, !tbaa !100
  %i.z = ptrtoint ptr %i.y to i64                 ; 4 uses
  %i.aa = add i64 %i.r, %i.u
  br label %bb.m

bb.m:                                             ; preds = %bb.ax, %.split.i
  %.pn.i507 = phi ptr [ %i.x, %.split.i ], [ %.8253.i520, %bb.ax ]
  %.0238.i508 = phi ptr [ %i.t, %.split.i ], [ %i.hu, %bb.ax ] ; 3 uses
  %.0245.i509 = getelementptr inbounds nuw i8, ptr %.pn.i507, i64 1 ; 2 uses
  %i.ab = ptrtoint ptr %.0238.i508 to i64
  %i.ac = sub i64 %i.z, %i.ab                     ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 15
  br i1 %i.ad, label %.lr.ph2572, label %.preheader1327

.preheader1327:                                   ; preds = %bb.ac, %bb.m
  %.pre-phi3196 = phi i64 [ %i.ac, %bb.m ], [ %i.dj, %bb.ac ]
  %.1246.i510.lcssa = phi ptr [ %.0245.i509, %bb.m ], [ %i.dg, %bb.ac ] ; 2 uses
  %.1239.i511.lcssa = phi ptr [ %.0238.i508, %bb.m ], [ %i.dh, %bb.ac ] ; 2 uses
  %i.ae = icmp sgt i64 %.pre-phi3196, 3
  br i1 %i.ae, label %.lr.ph2578, label %.preheader1325

.lr.ph2572:                                       ; preds = %bb.m, %bb.ac
  %.1239.i5112570 = phi ptr [ %i.dh, %bb.ac ], [ %.0238.i508, %bb.m ] ; 46 uses
  %.1246.i5102569 = phi ptr [ %i.dg, %bb.ac ], [ %.0245.i509, %bb.m ] ; 30 uses
  %i.af = load i8, ptr %.1239.i5112570, align 1, !tbaa !100 ; 2 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !100
  %.not272.i589 = icmp eq i8 %i.ai, 0
  br i1 %.not272.i589, label %bb.n, label %.preheader1322.preheader, !prof !62

bb.n:                                             ; preds = %.lr.ph2572
  %i.aj = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !100
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !100
  %.not273.i590 = icmp eq i8 %i.an, 0
  br i1 %.not273.i590, label %bb.o, label %.loopexit1329, !prof !62

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !100
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !100
  %.not274.i591 = icmp eq i8 %i.as, 0
  br i1 %.not274.i591, label %bb.p, label %.loopexit1330, !prof !62

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !100
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !100
  %.not275.i592 = icmp eq i8 %i.ax, 0
  br i1 %.not275.i592, label %bb.q, label %.loopexit1331, !prof !62

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !100
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !100
  %.not276.i593 = icmp eq i8 %i.bc, 0
  br i1 %.not276.i593, label %bb.r, label %bb.aj, !prof !62

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !100
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !100
  %.not277.i594 = icmp eq i8 %i.bh, 0
  br i1 %.not277.i594, label %bb.s, label %bb.ak, !prof !62

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 6
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !100
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !100
  %.not278.i595 = icmp eq i8 %i.bm, 0
  br i1 %.not278.i595, label %bb.t, label %bb.al, !prof !62

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !100
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !100
  %.not279.i596 = icmp eq i8 %i.br, 0
  br i1 %.not279.i596, label %bb.u, label %bb.am, !prof !62

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 8
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !100
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !100
  %.not280.i597 = icmp eq i8 %i.bw, 0
  br i1 %.not280.i597, label %bb.v, label %bb.an, !prof !62

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 9
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !100
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !100
  %.not281.i598 = icmp eq i8 %i.cb, 0
  br i1 %.not281.i598, label %bb.w, label %bb.ao, !prof !62

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 10
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !100
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !100
  %.not282.i599 = icmp eq i8 %i.cg, 0
  br i1 %.not282.i599, label %bb.x, label %bb.ap, !prof !62

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 11
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !100
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !100
  %.not283.i600 = icmp eq i8 %i.cl, 0
  br i1 %.not283.i600, label %bb.y, label %bb.aq, !prof !62

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 12
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !100
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !100
  %.not284.i601 = icmp eq i8 %i.cq, 0
  br i1 %.not284.i601, label %bb.z, label %bb.ar, !prof !62

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 13
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !100
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !100
  %.not285.i602 = icmp eq i8 %i.cv, 0
  br i1 %.not285.i602, label %bb.aa, label %bb.as, !prof !62

bb.aa:                                            ; preds = %bb.z
  %i.cw = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 14
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !100
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !100
  %.not286.i603 = icmp eq i8 %i.da, 0
  br i1 %.not286.i603, label %bb.ab, label %bb.at, !prof !62

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 15
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !100
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !100
  %.not287.i604 = icmp eq i8 %i.df, 0
  br i1 %.not287.i604, label %bb.ac, label %bb.au, !prof !62

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i5102569, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i5112570, i64 16, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 16 ; 3 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.z, %i.di                     ; 2 uses
  %i.dk = icmp sgt i64 %i.dj, 15
  br i1 %i.dk, label %.lr.ph2572, label %.preheader1327, !llvm.loop !23

.preheader1325:                                   ; preds = %bb.ah, %.preheader1327
  %.2247.i512.lcssa = phi ptr [ %.1246.i510.lcssa, %.preheader1327 ], [ %i.es, %bb.ah ] ; 3 uses
  %.2240.i513.lcssa = phi ptr [ %.1239.i511.lcssa, %.preheader1327 ], [ %i.et, %bb.ah ] ; 5 uses
  %i.dl = icmp ugt ptr %i.y, %.2240.i513.lcssa
  br i1 %i.dl, label %.lr.ph2583.preheader, label %.preheader1325._crit_edge

.lr.ph2583.preheader:                             ; preds = %.preheader1325
  %.2240.i513.lcssa3132 = ptrtoaddr ptr %.2240.i513.lcssa to i64 ; 2 uses
  %i.dm = getelementptr i8, ptr %.2240.i513.lcssa, i64 %i.r
  %scevgep3131 = getelementptr i8, ptr %i.dm, i64 %i.u
  %i.dn = sub i64 0, %.2240.i513.lcssa3132
  %scevgep3133 = getelementptr i8, ptr %scevgep3131, i64 %i.dn
  %i.do = sub i64 %i.aa, %.2240.i513.lcssa3132
  %i.dp = freeze i64 %i.do                        ; 2 uses
  %i.dq = add i64 %i.dp, -1
  %xtraiter5997.a = and i64 %i.dp, 3              ; 2 uses
  %lcmp.mod5998.not.a = icmp eq i64 %xtraiter5997.a, 0
  br i1 %lcmp.mod5998.not.a, label %.lr.ph2583.prol.loopexit, label %.lr.ph2583.prol

.lr.ph2583.prol:                                  ; preds = %.lr.ph2583.preheader, %bb.ad
  %.3241.i5152582.prol = phi ptr [ %i.dv, %bb.ad ], [ %.2240.i513.lcssa, %.lr.ph2583.preheader ] ; 3 uses
  %.3248.i5142581.prol = phi ptr [ %i.dw, %bb.ad ], [ %.2247.i512.lcssa, %.lr.ph2583.preheader ] ; 3 uses
  %prol.iter5999.a = phi i64 [ %prol.iter5999.next.a, %bb.ad ], [ 0, %.lr.ph2583.preheader ]
  %i.dr = load i8, ptr %.3241.i5152582.prol, align 1, !tbaa !100 ; 2 uses
  %i.ds = zext i8 %i.dr to i64
end_hunk_0
begin_hunk_1_@yyjson_val_write_opts:bb.a
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !100
  %.not270.i583 = icmp eq i8 %i.el, 0
  br i1 %.not270.i583, label %bb.ag, label %.loopexit1330, !prof !62

bb.ag:                                            ; preds = %bb.af
  %i.em = getelementptr inbounds nuw i8, ptr %.2240.i5132577, i64 3
  %i.en = load i8, ptr %i.em, align 1, !tbaa !100
  %i.eo = zext i8 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !100
  %.not271.i586 = icmp eq i8 %i.eq, 0
  br i1 %.not271.i586, label %bb.ah, label %.loopexit1331, !prof !62

bb.ah:                                            ; preds = %bb.ag
  %i.er = load i32, ptr %.2240.i5132577, align 1
  store i32 %i.er, ptr %.2247.i5122576, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %.2247.i5122576, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.2240.i5132577, i64 4 ; 3 uses
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = sub i64 %i.z, %i.eu
  %i.ew = icmp sgt i64 %i.ev, 3
  br i1 %i.ew, label %.lr.ph2578, label %.preheader1325, !llvm.loop !24

.lr.ph2583:                                       ; preds = %.lr.ph2583.prol.loopexit, %bb.ai
  %.3241.i5152582 = phi ptr [ %i.ft, %bb.ai ], [ %.3241.i5152582.unr, %.lr.ph2583.prol.loopexit ] ; 9 uses
  %.3248.i5142581 = phi ptr [ %i.fu, %bb.ai ], [ %.3248.i5142581.unr, %.lr.ph2583.prol.loopexit ] ; 6 uses
  %i.ex = load i8, ptr %.3241.i5152582, align 1, !tbaa !100 ; 2 uses
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !100
  %.not.i517 = icmp eq i8 %i.fa, 0
  br i1 %.not.i517, label %.lr.ph2583.1, label %.preheader1322.preheader, !prof !62

.lr.ph2583.1:                                     ; preds = %.lr.ph2583
  %i.fb = getelementptr inbounds nuw i8, ptr %.3241.i5152582, i64 1
  %i.fc = getelementptr inbounds nuw i8, ptr %.3248.i5142581, i64 1 ; 2 uses
  store i8 %i.ex, ptr %.3248.i5142581, align 1, !tbaa !100
  %i.fd = load i8, ptr %i.fb, align 1, !tbaa !100 ; 2 uses
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !100
  %.not.i517.1 = icmp eq i8 %i.fg, 0
  br i1 %.not.i517.1, label %.lr.ph2583.2, label %.preheader1322.preheader.loopexit.loopexit.split.loop.exit6716, !prof !62

.lr.ph2583.2:                                     ; preds = %.lr.ph2583.1
  %i.fh = getelementptr inbounds nuw i8, ptr %.3241.i5152582, i64 2
  %i.fi = getelementptr inbounds nuw i8, ptr %.3248.i5142581, i64 2 ; 2 uses
  store i8 %i.fd, ptr %i.fc, align 1, !tbaa !100
  %i.fj = load i8, ptr %i.fh, align 1, !tbaa !100 ; 2 uses
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !100
  %.not.i517.2 = icmp eq i8 %i.fm, 0
  br i1 %.not.i517.2, label %.lr.ph2583.3, label %.preheader1322.preheader.loopexit.loopexit.split.loop.exit6713, !prof !62

.lr.ph2583.3:                                     ; preds = %.lr.ph2583.2
  %i.fn = getelementptr inbounds nuw i8, ptr %.3241.i5152582, i64 3
  %i.fo = getelementptr inbounds nuw i8, ptr %.3248.i5142581, i64 3 ; 2 uses
  store i8 %i.fj, ptr %i.fi, align 1, !tbaa !100
  %i.fp = load i8, ptr %i.fn, align 1, !tbaa !100 ; 2 uses
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !100
  %.not.i517.3 = icmp eq i8 %i.fs, 0
  br i1 %.not.i517.3, label %bb.ai, label %.preheader1322.preheader.loopexit.loopexit.split.loop.exit, !prof !62

bb.ai:                                            ; preds = %.lr.ph2583.3
  %i.ft = getelementptr inbounds nuw i8, ptr %.3241.i5152582, i64 4 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.3248.i5142581, i64 4 ; 2 uses
  store i8 %i.fp, ptr %i.fo, align 1, !tbaa !100
  %exitcond3134.not.3 = icmp eq ptr %i.ft, %scevgep3133
  br i1 %exitcond3134.not.3, label %.preheader1325._crit_edge, label %.lr.ph2583, !llvm.loop !25

.preheader1325._crit_edge:                        ; preds = %.preheader1325, %bb.ai, %.lr.ph2583.prol.loopexit
  %.3248.i514.lcssa = phi ptr [ %.lcssa5479.unr, %.lr.ph2583.prol.loopexit ], [ %i.fu, %bb.ai ], [ %.2247.i512.lcssa, %.preheader1325 ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.3248.i514.lcssa, i64 1
  store i8 34, ptr %.3248.i514.lcssa, align 1, !tbaa !100
  br label %write_str.exit605

.loopexit1329:                                    ; preds = %bb.n, %bb.ae
  %i.fw = phi i8 [ %i.dy, %bb.ae ], [ %i.af, %bb.n ]
  %.5250.i581 = phi ptr [ %.2247.i5122576, %bb.ae ], [ %.1246.i5102569, %bb.n ] ; 2 uses
  %.5243.i582 = phi ptr [ %.2240.i5132577, %bb.ae ], [ %.1239.i5112570, %bb.n ]
  store i8 %i.fw, ptr %.5250.i581, align 1
  %i.fx = getelementptr inbounds nuw i8, ptr %.5250.i581, i64 1
  %i.fy = getelementptr inbounds nuw i8, ptr %.5243.i582, i64 1
  br label %.preheader1322.preheader

.loopexit1330:                                    ; preds = %bb.o, %bb.af
  %.6251.i584 = phi ptr [ %.2247.i5122576, %bb.af ], [ %.1246.i5102569, %bb.o ] ; 2 uses
  %.6.i585 = phi ptr [ %.2240.i5132577, %bb.af ], [ %.1239.i5112570, %bb.o ] ; 2 uses
  %i.fz = load i16, ptr %.6.i585, align 1
  store i16 %i.fz, ptr %.6251.i584, align 1
  %i.ga = getelementptr inbounds nuw i8, ptr %.6251.i584, i64 2
  %i.gb = getelementptr inbounds nuw i8, ptr %.6.i585, i64 2
  br label %.preheader1322.preheader

.loopexit1331:                                    ; preds = %bb.p, %bb.ag
  %.7252.i587 = phi ptr [ %.2247.i5122576, %bb.ag ], [ %.1246.i5102569, %bb.p ] ; 2 uses
  %.7.i588 = phi ptr [ %.2240.i5132577, %bb.ag ], [ %.1239.i5112570, %bb.p ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i587, ptr noundef nonnull align 1 dereferenceable(3) %.7.i588, i64 3, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %.7252.i587, i64 3
  %i.gd = getelementptr inbounds nuw i8, ptr %.7.i588, i64 3
  br label %.preheader1322.preheader

bb.aj:                                            ; preds = %bb.q
  %i.ge = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 4
  %i.gf = load i32, ptr %.1239.i5112570, align 1
  store i32 %i.gf, ptr %.1246.i5102569, align 1
  %i.gg = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 4
  br label %.preheader1322.preheader

bb.ak:                                            ; preds = %bb.r
  %i.gh = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i5102569, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i5112570, i64 5, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 5
  br label %.preheader1322.preheader

bb.al:                                            ; preds = %bb.s
  %i.gj = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i5102569, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i5112570, i64 6, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 6
  br label %.preheader1322.preheader

bb.am:                                            ; preds = %bb.t
  %i.gl = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i5102569, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i5112570, i64 7, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 7
  br label %.preheader1322.preheader

bb.an:                                            ; preds = %bb.u
  %i.gn = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 8
  %i.go = load i64, ptr %.1239.i5112570, align 1
  store i64 %i.go, ptr %.1246.i5102569, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 8
  br label %.preheader1322.preheader

bb.ao:                                            ; preds = %bb.v
  %i.gq = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i5102569, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i5112570, i64 9, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 9
  br label %.preheader1322.preheader

bb.ap:                                            ; preds = %bb.w
  %i.gs = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i5102569, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i5112570, i64 10, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 10
  br label %.preheader1322.preheader

bb.aq:                                            ; preds = %bb.x
  %i.gu = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1246.i5102569, ptr noundef nonnull align 1 dereferenceable(11) %.1239.i5112570, i64 11, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 11
  br label %.preheader1322.preheader

bb.ar:                                            ; preds = %bb.y
  %i.gw = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1246.i5102569, ptr noundef nonnull align 1 dereferenceable(12) %.1239.i5112570, i64 12, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 12
  br label %.preheader1322.preheader

bb.as:                                            ; preds = %bb.z
  %i.gy = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1246.i5102569, ptr noundef nonnull align 1 dereferenceable(13) %.1239.i5112570, i64 13, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 13
  br label %.preheader1322.preheader

bb.at:                                            ; preds = %bb.aa
  %i.ha = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1246.i5102569, ptr noundef nonnull align 1 dereferenceable(14) %.1239.i5112570, i64 14, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 14
  br label %.preheader1322.preheader

bb.au:                                            ; preds = %bb.ab
  %i.hc = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1246.i5102569, ptr noundef nonnull align 1 dereferenceable(15) %.1239.i5112570, i64 15, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 15
  br label %.preheader1322.preheader

.preheader1322.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2583.3
  %i.he = getelementptr inbounds nuw i8, ptr %.3241.i5152582, i64 3
  br label %.preheader1322.preheader

.preheader1322.preheader.loopexit.loopexit.split.loop.exit6713: ; preds = %.lr.ph2583.2
  %i.hf = getelementptr inbounds nuw i8, ptr %.3241.i5152582, i64 2
  br label %.preheader1322.preheader

.preheader1322.preheader.loopexit.loopexit.split.loop.exit6716: ; preds = %.lr.ph2583.1
  %i.hg = getelementptr inbounds nuw i8, ptr %.3241.i5152582, i64 1
  br label %.preheader1322.preheader

.preheader1322.preheader:                         ; preds = %.lr.ph2572, %.lr.ph2578, %.lr.ph2583, %.preheader1322.preheader.loopexit.loopexit.split.loop.exit6716, %.preheader1322.preheader.loopexit.loopexit.split.loop.exit6713, %.preheader1322.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2583.prol, %.loopexit1329, %.loopexit1330, %.loopexit1331, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au
  %.8253.i520.ph = phi ptr [ %.2247.i5122576, %.lr.ph2578 ], [ %.3248.i5142581.prol, %.lr.ph2583.prol ], [ %i.fx, %.loopexit1329 ], [ %i.ga, %.loopexit1330 ], [ %i.gc, %.loopexit1331 ], [ %i.gg, %bb.aj ], [ %i.gi, %bb.ak ], [ %i.gk, %bb.al ], [ %i.gm, %bb.am ], [ %i.gp, %bb.an ], [ %i.gr, %bb.ao ], [ %i.gt, %bb.ap ], [ %i.gv, %bb.aq ], [ %i.gx, %bb.ar ], [ %i.gz, %bb.as ], [ %i.hb, %bb.at ], [ %i.hd, %bb.au ], [ %.3248.i5142581, %.lr.ph2583 ], [ %i.fc, %.preheader1322.preheader.loopexit.loopexit.split.loop.exit6716 ], [ %i.fi, %.preheader1322.preheader.loopexit.loopexit.split.loop.exit6713 ], [ %i.fo, %.preheader1322.preheader.loopexit.loopexit.split.loop.exit ], [ %.1246.i5102569, %.lr.ph2572 ]
  %.8.i521.ph = phi ptr [ %.2240.i5132577, %.lr.ph2578 ], [ %.3241.i5152582.prol, %.lr.ph2583.prol ], [ %i.fy, %.loopexit1329 ], [ %i.gb, %.loopexit1330 ], [ %i.gd, %.loopexit1331 ], [ %i.ge, %bb.aj ], [ %i.gh, %bb.ak ], [ %i.gj, %bb.al ], [ %i.gl, %bb.am ], [ %i.gn, %bb.an ], [ %i.gq, %bb.ao ], [ %i.gs, %bb.ap ], [ %i.gu, %bb.aq ], [ %i.gw, %bb.ar ], [ %i.gy, %bb.as ], [ %i.ha, %bb.at ], [ %i.hc, %bb.au ], [ %.3241.i5152582, %.lr.ph2583 ], [ %i.hg, %.preheader1322.preheader.loopexit.loopexit.split.loop.exit6716 ], [ %i.hf, %.preheader1322.preheader.loopexit.loopexit.split.loop.exit6713 ], [ %i.he, %.preheader1322.preheader.loopexit.loopexit.split.loop.exit ], [ %.1239.i5112570, %.lr.ph2572 ]
  br label %.preheader1322

.preheader1322:                                   ; preds = %.preheader1322.backedge, %.preheader1322.preheader
  %.8253.i520 = phi ptr [ %.8253.i520.ph, %.preheader1322.preheader ], [ %.8253.i520.be, %.preheader1322.backedge ] ; 35 uses
  %.8.i521 = phi ptr [ %.8.i521.ph, %.preheader1322.preheader ], [ %.8.i521.be, %.preheader1322.backedge ] ; 23 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.8.i521, i64 4 ; 3 uses
  %i.hi = icmp ugt ptr %i.hh, %i.y                ; 2 uses
  br i1 %i.hi, label %bb.av, label %._crit_edge3183, !prof !45

._crit_edge3183:                                  ; preds = %.preheader1322
  %.pre3184 = load i8, ptr %.8.i521, align 1, !tbaa !100 ; 2 uses
  %.phi.trans.insert3185 = zext i8 %.pre3184 to i64 ; 2 uses
  %.phi.trans.insert3186.a = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %.phi.trans.insert3185
  %.pre3187 = load i8, ptr %.phi.trans.insert3186.a, align 1, !tbaa !100
  br label %bb.aw

bb.av:                                            ; preds = %.preheader1322
  %i.hj = ptrtoint ptr %.8.i521 to i64
  %i.hk = sub i64 %i.z, %i.hj
  %i.hl = load i8, ptr %.8.i521, align 1, !tbaa !100 ; 3 uses
  %i.hm = zext i8 %i.hl to i64                    ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !100 ; 2 uses
  %i.hp = lshr i8 %i.ho, 1
  %i.hq = zext nneg i8 %i.hp to i64
  %i.hr = icmp slt i64 %i.hk, %i.hq
  br i1 %i.hr, label %bb.bq, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge3183, %bb.av
  %.pre-phi3197 = phi i64 [ %.phi.trans.insert3185, %._crit_edge3183 ], [ %i.hm, %bb.av ]
  %i.hs = phi i8 [ %.pre3187, %._crit_edge3183 ], [ %i.ho, %bb.av ]
  %i.ht = phi i8 [ %.pre3184, %._crit_edge3183 ], [ %i.hl, %bb.av ] ; 2 uses
  switch i8 %i.hs, label %bb.bp [
    i8 0, label %bb.ax
    i8 4, label %bb.ay
    i8 6, label %bb.ba
    i8 8, label %bb.bf
    i8 2, label %bb.bh
    i8 3, label %bb.bi
    i8 5, label %bb.bj
    i8 7, label %bb.bl
    i8 9, label %bb.bn
    i8 1, label %bb.bq
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.hu = getelementptr inbounds nuw i8, ptr %.8.i521, i64 1
  store i8 %i.ht, ptr %.8253.i520, align 1, !tbaa !100
  br label %bb.m

bb.ay:                                            ; preds = %bb.aw
  %i.hv = load i16, ptr %.8.i521, align 1         ; 3 uses
  %.sroa.01020.0.insert.ext = zext i16 %i.hv to i32 ; 2 uses
  %i.hw = and i32 %.sroa.01020.0.insert.ext, 49376
  %i.hx = icmp ne i32 %i.hw, 32960
  %i.hy = and i32 %.sroa.01020.0.insert.ext, 30
  %i.hz = icmp eq i32 %i.hy, 0
  %.not310.i575 = or i1 %i.hx, %i.hz
  %i.ia = trunc i16 %i.hv to i8
  br i1 %.not310.i575, label %.thread, label %bb.az, !prof !45

bb.az:                                            ; preds = %bb.ay
  store i16 %i.hv, ptr %.8253.i520, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 2
  %i.ic = getelementptr inbounds nuw i8, ptr %.8.i521, i64 2
  br label %.preheader1322.backedge

bb.ba:                                            ; preds = %bb.aw
  br i1 %i.hi, label %bb.bd, label %bb.bb, !prof !45

bb.bb:                                            ; preds = %bb.ba
  %.sroa.0.0.copyload.i335.i565 = load i32, ptr %.8.i521, align 1 ; 4 uses
  %i.id = and i32 %.sroa.0.0.copyload.i335.i565, 12632304
  %i.ie = icmp eq i32 %i.id, 8421600
  %i.if = trunc i32 %.sroa.0.0.copyload.i335.i565 to i8 ; 3 uses
  br i1 %i.ie, label %bb.bc, label %.thread, !prof !62

bb.bc:                                            ; preds = %bb.bb
  %i.ig = and i32 %.sroa.0.0.copyload.i335.i565, 8207
  switch i32 %i.ig, label %.critedge.i566 [
    i32 8205, label %.thread
    i32 0, label %.thread
  ], !prof !151

bb.bd:                                            ; preds = %bb.ba
  %.sroa.0.0.copyload.i327.i570 = load i16, ptr %.8.i521, align 1 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.8.i521, i64 2
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !100
  %.sroa.4.0.insert.ext.i328.i571 = zext i8 %i.ii to i32
  %.sroa.4.0.insert.shift.i329.i572 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i328.i571, 16
  %.sroa.0.0.insert.ext.i330.i573 = zext i16 %.sroa.0.0.copyload.i327.i570 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i331.i574 = or disjoint i32 %.sroa.4.0.insert.shift.i329.i572, %.sroa.0.0.insert.ext.i330.i573 ; 2 uses
  %i.ij = and i32 %.sroa.0.0.insert.insert.i331.i574, 12632304
  %i.ik = icmp eq i32 %i.ij, 8421600
  %i.il = trunc i16 %.sroa.0.0.copyload.i327.i570 to i8 ; 3 uses
  br i1 %i.ik, label %bb.be, label %.thread, !prof !62

bb.be:                                            ; preds = %bb.bd
  %i.im = and i32 %.sroa.0.0.insert.ext.i330.i573, 8207
  switch i32 %i.im, label %.critedge.i566 [
    i32 8205, label %.thread
    i32 0, label %.thread
  ], !prof !151

.critedge.i566:                                   ; preds = %bb.be, %bb.bc
  %storemerge1305 = phi i32 [ %.sroa.0.0.copyload.i335.i565, %bb.bc ], [ %.sroa.0.0.insert.insert.i331.i574, %bb.be ]
  store i32 %storemerge1305, ptr %.8253.i520, align 1
  %i.in = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 3
  %i.io = getelementptr inbounds nuw i8, ptr %.8.i521, i64 3
  br label %.preheader1322.backedge

bb.bf:                                            ; preds = %bb.aw
  %.sroa.0.0.copyload.i334.i556 = load i32, ptr %.8.i521, align 1 ; 6 uses
  %i.ip = and i32 %.sroa.0.0.copyload.i334.i556, -1061109512
  %i.iq = icmp ne i32 %i.ip, -2139062032
  %i.ir = and i32 %.sroa.0.0.copyload.i334.i556, 12295
  %.not301.i557 = icmp eq i32 %i.ir, 0
  %or.cond.i558 = or i1 %i.iq, %.not301.i557
  %i.is = trunc i32 %.sroa.0.0.copyload.i334.i556 to i8 ; 2 uses
  br i1 %or.cond.i558, label %.thread, label %bb.bg, !prof !139

bb.bg:                                            ; preds = %bb.bf
  %i.it = and i32 %.sroa.0.0.copyload.i334.i556, 4
  %i.iu = icmp ne i32 %i.it, 0
  %i.iv = and i32 %.sroa.0.0.copyload.i334.i556, 12291
  %i.iw = icmp ne i32 %i.iv, 0
  %.not304.i559 = and i1 %i.iu, %i.iw
  br i1 %.not304.i559, label %.thread, label %.critedge316.i560, !prof !45

.critedge316.i560:                                ; preds = %bb.bg
  store i32 %.sroa.0.0.copyload.i334.i556, ptr %.8253.i520, align 1
  %i.ix = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 4
  br label %.preheader1322.backedge

bb.bh:                                            ; preds = %bb.aw
  %i.iy = shl nuw nsw i64 %.pre-phi3197, 1
  %i.iz = getelementptr inbounds nuw i8, ptr @esc_single_char_table, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2
  store i16 %i.ja, ptr %.8253.i520, align 1
  %i.jb = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 2
  %i.jc = getelementptr inbounds nuw i8, ptr %.8.i521, i64 1
  br label %.preheader1322.backedge

.preheader1322.backedge:                          ; preds = %bb.bh, %bb.bi, %bb.br, %bb.bs, %bb.az, %.critedge.i566, %.critedge316.i560, %bb.bk, %.critedge321.i541, %.critedge325.i532
  %.8253.i520.be = phi ptr [ %i.nc, %bb.br ], [ %i.ib, %bb.az ], [ %i.in, %.critedge.i566 ], [ %i.ix, %.critedge316.i560 ], [ %i.jb, %bb.bh ], [ %i.jj, %bb.bi ], [ %i.ke, %bb.bk ], [ %i.lb, %.critedge321.i541 ], [ %i.mx, %.critedge325.i532 ], [ %i.ne, %bb.bs ]
  %.8.i521.be = phi ptr [ %i.nb, %bb.br ], [ %i.ic, %bb.az ], [ %i.io, %.critedge.i566 ], [ %i.hh, %.critedge316.i560 ], [ %i.jc, %bb.bh ], [ %i.jk, %bb.bi ], [ %i.kf, %bb.bk ], [ %i.lc, %.critedge321.i541 ], [ %i.hh, %.critedge325.i532 ], [ %i.nf, %bb.bs ]
  br label %.preheader1322

bb.bi:                                            ; preds = %bb.aw
  store i32 808482140, ptr %.8253.i520, align 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 4
  %i.je = load i8, ptr %.8.i521, align 1, !tbaa !100
  %i.jf = zext i8 %i.je to i64
  %i.jg = shl nuw nsw i64 %i.jf, 1
  %i.jh = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2
  store i16 %i.ji, ptr %i.jd, align 1
  %i.jj = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 6
  %i.jk = getelementptr inbounds nuw i8, ptr %.8.i521, i64 1
  br label %.preheader1322.backedge

bb.bj:                                            ; preds = %bb.aw
  %.sroa.0.0.copyload.i332.i549 = load i16, ptr %.8.i521, align 1 ; 3 uses
  %.sroa.01017.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i549 to i32 ; 2 uses
  %i.jl = and i32 %.sroa.01017.0.insert.ext, 49376
  %i.jm = icmp ne i32 %i.jl, 32960
  %i.jn = and i32 %.sroa.01017.0.insert.ext, 30
  %i.jo = icmp eq i32 %i.jn, 0
  %.not298.i550 = or i1 %i.jm, %i.jo
  br i1 %.not298.i550, label %.thread1054, label %bb.bk, !prof !45

bb.bk:                                            ; preds = %bb.bj
  %i.jp = lshr i16 %.sroa.0.0.copyload.i332.i549, 8
  %i.jq = trunc nuw i16 %i.jp to i8
  %i.jr = trunc i16 %.sroa.0.0.copyload.i332.i549 to i8 ; 2 uses
  %.tr299.i551 = shl i8 %i.jr, 6
  %i.js = and i8 %i.jq, 63
  store i16 30044, ptr %.8253.i520, align 1
  %i.jt = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 2
  %i.ju = lshr i8 %i.jr, 1
  %i.jv = and i8 %i.ju, 14
  %i.jw = zext nneg i8 %i.jv to i64
  %i.jx = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.jw
  %i.jy = load i16, ptr %i.jx, align 2
  store i16 %i.jy, ptr %i.jt, align 1
  %i.jz = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 4
  %.narrow300.i552 = or disjoint i8 %i.js, %.tr299.i551
  %i.ka = zext i8 %.narrow300.i552 to i64
  %i.kb = shl nuw nsw i64 %i.ka, 1
  %i.kc = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 2
  store i16 %i.kd, ptr %i.jz, align 1
  %i.ke = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 6
  %i.kf = getelementptr inbounds nuw i8, ptr %.8.i521, i64 2
  br label %.preheader1322.backedge

bb.bl:                                            ; preds = %bb.aw
  %.sroa.0.0.copyload.i.i536 = load i16, ptr %.8.i521, align 1 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.8.i521, i64 2
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !100 ; 2 uses
  %.sroa.4.0.insert.ext.i.i537 = zext i8 %i.kh to i32
  %.sroa.4.0.insert.shift.i.i538 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i537, 16
  %.sroa.0.0.insert.ext.i.i539 = zext i16 %.sroa.0.0.copyload.i.i536 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i540 = or disjoint i32 %.sroa.4.0.insert.shift.i.i538, %.sroa.0.0.insert.ext.i.i539
  %i.ki = and i32 %.sroa.0.0.insert.insert.i.i540, 12632304
  %i.kj = icmp eq i32 %i.ki, 8421600
  br i1 %i.kj, label %bb.bm, label %.thread1054, !prof !62

bb.bm:                                            ; preds = %bb.bl
  %i.kk = and i32 %.sroa.0.0.insert.ext.i.i539, 8207
  switch i32 %i.kk, label %.critedge321.i541 [
    i32 8205, label %.thread1054
    i32 0, label %.thread1054
  ], !prof !151

.critedge321.i541:                                ; preds = %bb.bm
  %i.kl = zext i16 %.sroa.0.0.copyload.i.i536 to i64
  %i.km = shl nuw nsw i64 %i.kl, 12
  %i.kn = lshr i16 %.sroa.0.0.copyload.i.i536, 2
  %i.ko = and i16 %i.kn, 4032                     ; 2 uses
  %i.kp = zext nneg i16 %i.ko to i64
  %i.kq = and i8 %i.kh, 63
  store i16 30044, ptr %.8253.i520, align 1
  %i.kr = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 2
  %.masked.i546 = or disjoint i64 %i.km, %i.kp
  %i.ks = lshr i64 %.masked.i546, 7
  %i.kt = and i64 %i.ks, 510
  %i.ku = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.kt
  %i.kv = load i16, ptr %i.ku, align 2
  store i16 %i.kv, ptr %i.kr, align 1
  %i.kw = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 4
  %.tr294.i547 = trunc i16 %i.ko to i8
  %.narrow295.i548 = or disjoint i8 %i.kq, %.tr294.i547
  %i.kx = zext i8 %.narrow295.i548 to i64
  %i.ky = shl nuw nsw i64 %i.kx, 1
  %i.kz = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.ky
  %i.la = load i16, ptr %i.kz, align 2
  store i16 %i.la, ptr %i.kw, align 1
  %i.lb = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 6
  %i.lc = getelementptr inbounds nuw i8, ptr %.8.i521, i64 3
  br label %.preheader1322.backedge

bb.bn:                                            ; preds = %bb.aw
  %.sroa.0.0.copyload.i333.i526 = load i32, ptr %.8.i521, align 1 ; 9 uses
  %i.ld = and i32 %.sroa.0.0.copyload.i333.i526, -1061109512
  %i.le = icmp ne i32 %i.ld, -2139062032
  %i.lf = and i32 %.sroa.0.0.copyload.i333.i526, 12295
  %.not288.i527 = icmp eq i32 %i.lf, 0
  %or.cond323.i528 = or i1 %i.le, %.not288.i527
  %i.lg = lshr i32 %.sroa.0.0.copyload.i333.i526, 24
  br i1 %or.cond323.i528, label %.thread1054, label %bb.bo, !prof !139

bb.bo:                                            ; preds = %bb.bn
  %i.lh = and i32 %.sroa.0.0.copyload.i333.i526, 4
  %i.li = icmp ne i32 %i.lh, 0
  %i.lj = and i32 %.sroa.0.0.copyload.i333.i526, 12291
  %i.lk = icmp ne i32 %i.lj, 0
  %.not291.i529 = and i1 %i.li, %i.lk
  br i1 %.not291.i529, label %.thread1054, label %.critedge325.i532, !prof !45

.critedge325.i532:                                ; preds = %bb.bo
  %i.ll = shl i32 %.sroa.0.0.copyload.i333.i526, 18
  %i.lm = and i32 %i.ll, 1835008
  %i.ln = shl i32 %.sroa.0.0.copyload.i333.i526, 4
  %i.lo = and i32 %i.ln, 258048
  %i.lp = lshr i32 %.sroa.0.0.copyload.i333.i526, 10 ; 2 uses
  %i.lq = and i32 %i.lp, 3072
  %i.lr = and i32 %i.lg, 63
  %i.ls = add nsw i32 %i.lm, -65536
  %i.lt = add nsw i32 %i.ls, %i.lo                ; 2 uses
  %i.lu = or disjoint i32 %i.lt, %i.lq
  %i.lv = lshr exact i32 %i.lt, 10
  %i.lw = add nuw nsw i32 %i.lv, 55296
  store i16 30044, ptr %.8253.i520, align 1
  %i.lx = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 2
  %i.ly = lshr i32 %i.lw, 7
  %i.lz = and i32 %i.ly, 65534
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.ma
  %i.mc = load i16, ptr %i.mb, align 2
  store i16 %i.mc, ptr %i.lx, align 1
  %i.md = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 4
  %i.me = lshr exact i32 %i.lu, 9
  %i.mf = and i32 %i.me, 510
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.mg
  %i.mi = load i16, ptr %i.mh, align 2
  store i16 %i.mi, ptr %i.md, align 1
  %i.mj = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 6
  store i16 30044, ptr %i.mj, align 1
  %i.mk = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 8
  %i.ml = lshr i32 %.sroa.0.0.copyload.i333.i526, 17
  %i.mm = and i32 %i.ml, 6
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 440
  %i.mq = load i16, ptr %i.mp, align 2
  store i16 %i.mq, ptr %i.mk, align 1
  %i.mr = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 10
  %.masked3300 = and i32 %i.lp, 192
  %i.ms = or disjoint i32 %i.lr, %.masked3300
  %i.mt = shl nuw nsw i32 %i.ms, 1
  %i.mu = zext nneg i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.mu
  %i.mw = load i16, ptr %i.mv, align 2
  store i16 %i.mw, ptr %i.mr, align 1
  %i.mx = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 12
  br label %.preheader1322.backedge

bb.bp:                                            ; preds = %bb.aw
  %i.my = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 1
  store i8 34, ptr %.8253.i520, align 1, !tbaa !100
  br label %write_str.exit605

bb.bq:                                            ; preds = %bb.aw, %bb.av
  %i.mz = phi i8 [ %i.ht, %bb.aw ], [ %i.hl, %bb.av ]
  br i1 %.not1299, label %.thread, label %.thread1054

.thread:                                          ; preds = %bb.bf, %bb.bg, %bb.bd, %bb.bb, %bb.be, %bb.be, %bb.bc, %bb.bc, %bb.ay, %bb.bq
  %i.na = phi i8 [ %i.is, %bb.bf ], [ %i.is, %bb.bg ], [ %i.il, %bb.bd ], [ %i.if, %bb.bb ], [ %i.il, %bb.be ], [ %i.il, %bb.be ], [ %i.if, %bb.bc ], [ %i.if, %bb.bc ], [ %i.ia, %bb.ay ], [ %i.mz, %bb.bq ]
  br i1 %.not1302, label %.loopexit, label %bb.br

bb.br:                                            ; preds = %.thread
  %i.nb = getelementptr inbounds nuw i8, ptr %.8.i521, i64 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 1
  store i8 %i.na, ptr %.8253.i520, align 1, !tbaa !100
  br label %.preheader1322.backedge

.thread1054:                                      ; preds = %bb.bn, %bb.bo, %bb.bl, %bb.bm, %bb.bm, %bb.bj, %bb.bq
  br i1 %.not1302, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %.thread1054
  store i16 30044, ptr %.8253.i520, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 2
  store i32 1145456198, ptr %i.nd, align 1
  %i.ne = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 6
  %i.nf = getelementptr inbounds nuw i8, ptr %.8.i521, i64 1
  br label %.preheader1322.backedge

bb.bt:                                            ; preds = %bb.l
  %i.ng = load i64, ptr %0, align 8, !tbaa !99
  %i.nh = and i64 %i.ng, 24
  %.not105.i = icmp eq i64 %i.nh, 0
  store i8 34, ptr %i.x, align 1, !tbaa !100
  br i1 %.not105.i, label %.split83.i, label %bb.eb

.split83.i:                                       ; preds = %bb.bt
  %i.ni = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r ; 3 uses
  %i.nj = ptrtoint ptr %i.ni to i64               ; 4 uses
  %i.nk = add i64 %i.r, %i.u
  br label %bb.bu

bb.bu:                                            ; preds = %bb.df, %.split83.i
  %.pn.i408 = phi ptr [ %i.x, %.split83.i ], [ %.8253.i421, %bb.df ]
  %.0238.i409 = phi ptr [ %i.t, %.split83.i ], [ %i.ve, %bb.df ] ; 3 uses
  %.0245.i410 = getelementptr inbounds nuw i8, ptr %.pn.i408, i64 1 ; 2 uses
  %i.nl = ptrtoint ptr %.0238.i409 to i64
  %i.nm = sub i64 %i.nj, %i.nl                    ; 2 uses
  %i.nn = icmp sgt i64 %i.nm, 15
  br i1 %i.nn, label %.lr.ph2623, label %.preheader1311

.preheader1311:                                   ; preds = %bb.ck, %bb.bu
  %.pre-phi3193 = phi i64 [ %i.nm, %bb.bu ], [ %i.qt, %bb.ck ]
  %.1246.i411.lcssa = phi ptr [ %.0245.i410, %bb.bu ], [ %i.qq, %bb.ck ] ; 2 uses
  %.1239.i412.lcssa = phi ptr [ %.0238.i409, %bb.bu ], [ %i.qr, %bb.ck ] ; 2 uses
  %i.no = icmp sgt i64 %.pre-phi3193, 3
  br i1 %i.no, label %.lr.ph2629, label %.preheader1309

.lr.ph2623:                                       ; preds = %bb.bu, %bb.ck
  %.1239.i4122621 = phi ptr [ %i.qr, %bb.ck ], [ %.0238.i409, %bb.bu ] ; 46 uses
  %.1246.i4112620 = phi ptr [ %i.qq, %bb.ck ], [ %.0245.i410, %bb.bu ] ; 30 uses
  %i.np = load i8, ptr %.1239.i4122621, align 1, !tbaa !100 ; 2 uses
  %i.nq = zext i8 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !100
  %.not272.i490 = icmp eq i8 %i.ns, 0
  br i1 %.not272.i490, label %bb.bv, label %.preheader.preheader, !prof !62

bb.bv:                                            ; preds = %.lr.ph2623
  %i.nt = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 1
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !100
  %i.nv = zext i8 %i.nu to i64
  %i.nw = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !100
  %.not273.i491 = icmp eq i8 %i.nx, 0
  br i1 %.not273.i491, label %bb.bw, label %.loopexit1313, !prof !62

bb.bw:                                            ; preds = %bb.bv
  %i.ny = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 2
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !100
  %i.oa = zext i8 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !100
  %.not274.i492 = icmp eq i8 %i.oc, 0
  br i1 %.not274.i492, label %bb.bx, label %.loopexit1314, !prof !62

bb.bx:                                            ; preds = %bb.bw
  %i.od = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 3
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !100
  %i.of = zext i8 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !100
  %.not275.i493 = icmp eq i8 %i.oh, 0
  br i1 %.not275.i493, label %bb.by, label %.loopexit1315, !prof !62

bb.by:                                            ; preds = %bb.bx
  %i.oi = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 4
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !100
  %i.ok = zext i8 %i.oj to i64
  %i.ol = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !100
  %.not276.i494 = icmp eq i8 %i.om, 0
  br i1 %.not276.i494, label %bb.bz, label %bb.cr, !prof !62

bb.bz:                                            ; preds = %bb.by
  %i.on = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 5
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !100
  %i.op = zext i8 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !100
  %.not277.i495 = icmp eq i8 %i.or, 0
  br i1 %.not277.i495, label %bb.ca, label %bb.cs, !prof !62

bb.ca:                                            ; preds = %bb.bz
  %i.os = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 6
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !100
  %i.ou = zext i8 %i.ot to i64
  %i.ov = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.ou
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !100
  %.not278.i496 = icmp eq i8 %i.ow, 0
  br i1 %.not278.i496, label %bb.cb, label %bb.ct, !prof !62

bb.cb:                                            ; preds = %bb.ca
  %i.ox = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 7
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !100
  %i.oz = zext i8 %i.oy to i64
  %i.pa = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !100
  %.not279.i497 = icmp eq i8 %i.pb, 0
  br i1 %.not279.i497, label %bb.cc, label %bb.cu, !prof !62

bb.cc:                                            ; preds = %bb.cb
  %i.pc = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 8
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !100
  %i.pe = zext i8 %i.pd to i64
  %i.pf = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !100
  %.not280.i498 = icmp eq i8 %i.pg, 0
  br i1 %.not280.i498, label %bb.cd, label %bb.cv, !prof !62

bb.cd:                                            ; preds = %bb.cc
  %i.ph = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 9
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !100
  %i.pj = zext i8 %i.pi to i64
  %i.pk = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.pj
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !100
  %.not281.i499 = icmp eq i8 %i.pl, 0
  br i1 %.not281.i499, label %bb.ce, label %bb.cw, !prof !62

bb.ce:                                            ; preds = %bb.cd
  %i.pm = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 10
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !100
  %i.po = zext i8 %i.pn to i64
  %i.pp = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.po
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !100
  %.not282.i500 = icmp eq i8 %i.pq, 0
  br i1 %.not282.i500, label %bb.cf, label %bb.cx, !prof !62

bb.cf:                                            ; preds = %bb.ce
  %i.pr = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 11
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !100
  %i.pt = zext i8 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !100
  %.not283.i501 = icmp eq i8 %i.pv, 0
  br i1 %.not283.i501, label %bb.cg, label %bb.cy, !prof !62

bb.cg:                                            ; preds = %bb.cf
  %i.pw = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 12
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !100
  %i.py = zext i8 %i.px to i64
  %i.pz = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.py
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !100
  %.not284.i502 = icmp eq i8 %i.qa, 0
  br i1 %.not284.i502, label %bb.ch, label %bb.cz, !prof !62

bb.ch:                                            ; preds = %bb.cg
  %i.qb = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 13
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !100
  %i.qd = zext i8 %i.qc to i64
  %i.qe = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !100
  %.not285.i503 = icmp eq i8 %i.qf, 0
  br i1 %.not285.i503, label %bb.ci, label %bb.da, !prof !62

bb.ci:                                            ; preds = %bb.ch
  %i.qg = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 14
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !100
  %i.qi = zext i8 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !100
  %.not286.i504 = icmp eq i8 %i.qk, 0
  br i1 %.not286.i504, label %bb.cj, label %bb.db, !prof !62

bb.cj:                                            ; preds = %bb.ci
  %i.ql = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 15
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !100
  %i.qn = zext i8 %i.qm to i64
  %i.qo = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.qn
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !100
  %.not287.i505 = icmp eq i8 %i.qp, 0
  br i1 %.not287.i505, label %bb.ck, label %bb.dc, !prof !62

bb.ck:                                            ; preds = %bb.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i4112620, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i4122621, i64 16, i1 false)
  %i.qq = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 16 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 16 ; 3 uses
  %i.qs = ptrtoint ptr %i.qr to i64
  %i.qt = sub i64 %i.nj, %i.qs                    ; 2 uses
  %i.qu = icmp sgt i64 %i.qt, 15
  br i1 %i.qu, label %.lr.ph2623, label %.preheader1311, !llvm.loop !23

.preheader1309:                                   ; preds = %bb.cp, %.preheader1311
  %.2247.i413.lcssa = phi ptr [ %.1246.i411.lcssa, %.preheader1311 ], [ %i.sc, %bb.cp ] ; 3 uses
  %.2240.i414.lcssa = phi ptr [ %.1239.i412.lcssa, %.preheader1311 ], [ %i.sd, %bb.cp ] ; 5 uses
  %i.qv = icmp ugt ptr %i.ni, %.2240.i414.lcssa
  br i1 %i.qv, label %.lr.ph2634.preheader, label %.preheader1309._crit_edge

.lr.ph2634.preheader:                             ; preds = %.preheader1309
  %.2240.i414.lcssa3136 = ptrtoaddr ptr %.2240.i414.lcssa to i64 ; 2 uses
  %i.qw = getelementptr i8, ptr %.2240.i414.lcssa, i64 %i.r
  %scevgep3135 = getelementptr i8, ptr %i.qw, i64 %i.u
  %i.qx = sub i64 0, %.2240.i414.lcssa3136
  %scevgep3137 = getelementptr i8, ptr %scevgep3135, i64 %i.qx
  %i.qy = sub i64 %i.nk, %.2240.i414.lcssa3136
  %i.qz = freeze i64 %i.qy                        ; 2 uses
  %i.ra = add i64 %i.qz, -1
  %xtraiter6007 = and i64 %i.qz, 3                ; 2 uses
  %lcmp.mod6008.not = icmp eq i64 %xtraiter6007, 0
  br i1 %lcmp.mod6008.not, label %.lr.ph2634.prol.loopexit, label %.lr.ph2634.prol

.lr.ph2634.prol:                                  ; preds = %.lr.ph2634.preheader, %bb.cl
  %.3241.i4162633.prol = phi ptr [ %i.rf, %bb.cl ], [ %.2240.i414.lcssa, %.lr.ph2634.preheader ] ; 3 uses
  %.3248.i4152632.prol = phi ptr [ %i.rg, %bb.cl ], [ %.2247.i413.lcssa, %.lr.ph2634.preheader ] ; 3 uses
  %prol.iter6009 = phi i64 [ %prol.iter6009.next, %bb.cl ], [ 0, %.lr.ph2634.preheader ]
  %i.rb = load i8, ptr %.3241.i4162633.prol, align 1, !tbaa !100 ; 2 uses
  %i.rc = zext i8 %i.rb to i64
  %i.rd = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.rc
end_hunk_1
begin_hunk_2_@yyjson_val_write_opts:bb.a
  %i.rt = zext i8 %i.rs to i64
  %i.ru = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.rt
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !100
  %.not270.i484 = icmp eq i8 %i.rv, 0
  br i1 %.not270.i484, label %bb.co, label %.loopexit1314, !prof !62

bb.co:                                            ; preds = %bb.cn
  %i.rw = getelementptr inbounds nuw i8, ptr %.2240.i4142628, i64 3
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !100
  %i.ry = zext i8 %i.rx to i64
  %i.rz = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.ry
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !100
  %.not271.i487 = icmp eq i8 %i.sa, 0
  br i1 %.not271.i487, label %bb.cp, label %.loopexit1315, !prof !62

bb.cp:                                            ; preds = %bb.co
  %i.sb = load i32, ptr %.2240.i4142628, align 1
  store i32 %i.sb, ptr %.2247.i4132627, align 1
  %i.sc = getelementptr inbounds nuw i8, ptr %.2247.i4132627, i64 4 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.2240.i4142628, i64 4 ; 3 uses
  %i.se = ptrtoint ptr %i.sd to i64
  %i.sf = sub i64 %i.nj, %i.se
  %i.sg = icmp sgt i64 %i.sf, 3
  br i1 %i.sg, label %.lr.ph2629, label %.preheader1309, !llvm.loop !24

.lr.ph2634:                                       ; preds = %.lr.ph2634.prol.loopexit, %bb.cq
  %.3241.i4162633 = phi ptr [ %i.td, %bb.cq ], [ %.3241.i4162633.unr, %.lr.ph2634.prol.loopexit ] ; 9 uses
  %.3248.i4152632 = phi ptr [ %i.te, %bb.cq ], [ %.3248.i4152632.unr, %.lr.ph2634.prol.loopexit ] ; 6 uses
  %i.sh = load i8, ptr %.3241.i4162633, align 1, !tbaa !100 ; 2 uses
  %i.si = zext i8 %i.sh to i64
  %i.sj = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.si
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !100
  %.not.i418 = icmp eq i8 %i.sk, 0
  br i1 %.not.i418, label %.lr.ph2634.1, label %.preheader.preheader, !prof !62

.lr.ph2634.1:                                     ; preds = %.lr.ph2634
  %i.sl = getelementptr inbounds nuw i8, ptr %.3241.i4162633, i64 1
  %i.sm = getelementptr inbounds nuw i8, ptr %.3248.i4152632, i64 1 ; 2 uses
  store i8 %i.sh, ptr %.3248.i4152632, align 1, !tbaa !100
  %i.sn = load i8, ptr %i.sl, align 1, !tbaa !100 ; 2 uses
  %i.so = zext i8 %i.sn to i64
  %i.sp = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.so
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !100
  %.not.i418.1 = icmp eq i8 %i.sq, 0
  br i1 %.not.i418.1, label %.lr.ph2634.2, label %.preheader.preheader.loopexit.loopexit.split.loop.exit6728, !prof !62

.lr.ph2634.2:                                     ; preds = %.lr.ph2634.1
  %i.sr = getelementptr inbounds nuw i8, ptr %.3241.i4162633, i64 2
  %i.ss = getelementptr inbounds nuw i8, ptr %.3248.i4152632, i64 2 ; 2 uses
  store i8 %i.sn, ptr %i.sm, align 1, !tbaa !100
  %i.st = load i8, ptr %i.sr, align 1, !tbaa !100 ; 2 uses
  %i.su = zext i8 %i.st to i64
  %i.sv = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.su
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !100
  %.not.i418.2 = icmp eq i8 %i.sw, 0
  br i1 %.not.i418.2, label %.lr.ph2634.3, label %.preheader.preheader.loopexit.loopexit.split.loop.exit6725, !prof !62

.lr.ph2634.3:                                     ; preds = %.lr.ph2634.2
  %i.sx = getelementptr inbounds nuw i8, ptr %.3241.i4162633, i64 3
  %i.sy = getelementptr inbounds nuw i8, ptr %.3248.i4152632, i64 3 ; 2 uses
  store i8 %i.st, ptr %i.ss, align 1, !tbaa !100
  %i.sz = load i8, ptr %i.sx, align 1, !tbaa !100 ; 2 uses
  %i.ta = zext i8 %i.sz to i64
  %i.tb = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.ta
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !100
  %.not.i418.3 = icmp eq i8 %i.tc, 0
  br i1 %.not.i418.3, label %bb.cq, label %.preheader.preheader.loopexit.loopexit.split.loop.exit, !prof !62

bb.cq:                                            ; preds = %.lr.ph2634.3
  %i.td = getelementptr inbounds nuw i8, ptr %.3241.i4162633, i64 4 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.3248.i4152632, i64 4 ; 2 uses
  store i8 %i.sz, ptr %i.sy, align 1, !tbaa !100
  %exitcond3138.not.3 = icmp eq ptr %i.td, %scevgep3137
  br i1 %exitcond3138.not.3, label %.preheader1309._crit_edge, label %.lr.ph2634, !llvm.loop !25

.preheader1309._crit_edge:                        ; preds = %.preheader1309, %bb.cq, %.lr.ph2634.prol.loopexit
  %.3248.i415.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph2634.prol.loopexit ], [ %i.te, %bb.cq ], [ %.2247.i413.lcssa, %.preheader1309 ] ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.3248.i415.lcssa, i64 1
  store i8 34, ptr %.3248.i415.lcssa, align 1, !tbaa !100
  br label %write_str.exit605

.loopexit1313:                                    ; preds = %bb.bv, %bb.cm
  %i.tg = phi i8 [ %i.ri, %bb.cm ], [ %i.np, %bb.bv ]
  %.5250.i482 = phi ptr [ %.2247.i4132627, %bb.cm ], [ %.1246.i4112620, %bb.bv ] ; 2 uses
  %.5243.i483 = phi ptr [ %.2240.i4142628, %bb.cm ], [ %.1239.i4122621, %bb.bv ]
  store i8 %i.tg, ptr %.5250.i482, align 1
  %i.th = getelementptr inbounds nuw i8, ptr %.5250.i482, i64 1
  %i.ti = getelementptr inbounds nuw i8, ptr %.5243.i483, i64 1
  br label %.preheader.preheader

.loopexit1314:                                    ; preds = %bb.bw, %bb.cn
  %.6251.i485 = phi ptr [ %.2247.i4132627, %bb.cn ], [ %.1246.i4112620, %bb.bw ] ; 2 uses
  %.6.i486 = phi ptr [ %.2240.i4142628, %bb.cn ], [ %.1239.i4122621, %bb.bw ] ; 2 uses
  %i.tj = load i16, ptr %.6.i486, align 1
  store i16 %i.tj, ptr %.6251.i485, align 1
  %i.tk = getelementptr inbounds nuw i8, ptr %.6251.i485, i64 2
  %i.tl = getelementptr inbounds nuw i8, ptr %.6.i486, i64 2
  br label %.preheader.preheader

.loopexit1315:                                    ; preds = %bb.bx, %bb.co
  %.7252.i488 = phi ptr [ %.2247.i4132627, %bb.co ], [ %.1246.i4112620, %bb.bx ] ; 2 uses
  %.7.i489 = phi ptr [ %.2240.i4142628, %bb.co ], [ %.1239.i4122621, %bb.bx ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i488, ptr noundef nonnull align 1 dereferenceable(3) %.7.i489, i64 3, i1 false)
  %i.tm = getelementptr inbounds nuw i8, ptr %.7252.i488, i64 3
  %i.tn = getelementptr inbounds nuw i8, ptr %.7.i489, i64 3
  br label %.preheader.preheader

bb.cr:                                            ; preds = %bb.by
  %i.to = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 4
  %i.tp = load i32, ptr %.1239.i4122621, align 1
  store i32 %i.tp, ptr %.1246.i4112620, align 1
  %i.tq = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 4
  br label %.preheader.preheader

bb.cs:                                            ; preds = %bb.bz
  %i.tr = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i4112620, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i4122621, i64 5, i1 false)
  %i.ts = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 5
  br label %.preheader.preheader

bb.ct:                                            ; preds = %bb.ca
  %i.tt = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i4112620, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i4122621, i64 6, i1 false)
  %i.tu = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 6
  br label %.preheader.preheader

bb.cu:                                            ; preds = %bb.cb
  %i.tv = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i4112620, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i4122621, i64 7, i1 false)
  %i.tw = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 7
  br label %.preheader.preheader

bb.cv:                                            ; preds = %bb.cc
  %i.tx = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 8
  %i.ty = load i64, ptr %.1239.i4122621, align 1
  store i64 %i.ty, ptr %.1246.i4112620, align 1
  %i.tz = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 8
  br label %.preheader.preheader

bb.cw:                                            ; preds = %bb.cd
  %i.ua = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i4112620, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i4122621, i64 9, i1 false)
  %i.ub = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 9
  br label %.preheader.preheader

bb.cx:                                            ; preds = %bb.ce
  %i.uc = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i4112620, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i4122621, i64 10, i1 false)
  %i.ud = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 10
  br label %.preheader.preheader

bb.cy:                                            ; preds = %bb.cf
  %i.ue = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1246.i4112620, ptr noundef nonnull align 1 dereferenceable(11) %.1239.i4122621, i64 11, i1 false)
  %i.uf = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 11
  br label %.preheader.preheader

bb.cz:                                            ; preds = %bb.cg
  %i.ug = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1246.i4112620, ptr noundef nonnull align 1 dereferenceable(12) %.1239.i4122621, i64 12, i1 false)
  %i.uh = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 12
  br label %.preheader.preheader

bb.da:                                            ; preds = %bb.ch
  %i.ui = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1246.i4112620, ptr noundef nonnull align 1 dereferenceable(13) %.1239.i4122621, i64 13, i1 false)
  %i.uj = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 13
  br label %.preheader.preheader

bb.db:                                            ; preds = %bb.ci
  %i.uk = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1246.i4112620, ptr noundef nonnull align 1 dereferenceable(14) %.1239.i4122621, i64 14, i1 false)
  %i.ul = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 14
  br label %.preheader.preheader

bb.dc:                                            ; preds = %bb.cj
  %i.um = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1246.i4112620, ptr noundef nonnull align 1 dereferenceable(15) %.1239.i4122621, i64 15, i1 false)
  %i.un = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 15
  br label %.preheader.preheader

.preheader.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2634.3
  %i.uo = getelementptr inbounds nuw i8, ptr %.3241.i4162633, i64 3
  br label %.preheader.preheader

.preheader.preheader.loopexit.loopexit.split.loop.exit6725: ; preds = %.lr.ph2634.2
  %i.up = getelementptr inbounds nuw i8, ptr %.3241.i4162633, i64 2
  br label %.preheader.preheader

.preheader.preheader.loopexit.loopexit.split.loop.exit6728: ; preds = %.lr.ph2634.1
  %i.uq = getelementptr inbounds nuw i8, ptr %.3241.i4162633, i64 1
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph2623, %.lr.ph2629, %.lr.ph2634, %.preheader.preheader.loopexit.loopexit.split.loop.exit6728, %.preheader.preheader.loopexit.loopexit.split.loop.exit6725, %.preheader.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2634.prol, %.loopexit1313, %.loopexit1314, %.loopexit1315, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.dc
  %.8253.i421.ph = phi ptr [ %.2247.i4132627, %.lr.ph2629 ], [ %.3248.i4152632.prol, %.lr.ph2634.prol ], [ %i.th, %.loopexit1313 ], [ %i.tk, %.loopexit1314 ], [ %i.tm, %.loopexit1315 ], [ %i.tq, %bb.cr ], [ %i.ts, %bb.cs ], [ %i.tu, %bb.ct ], [ %i.tw, %bb.cu ], [ %i.tz, %bb.cv ], [ %i.ub, %bb.cw ], [ %i.ud, %bb.cx ], [ %i.uf, %bb.cy ], [ %i.uh, %bb.cz ], [ %i.uj, %bb.da ], [ %i.ul, %bb.db ], [ %i.un, %bb.dc ], [ %.3248.i4152632, %.lr.ph2634 ], [ %i.sm, %.preheader.preheader.loopexit.loopexit.split.loop.exit6728 ], [ %i.ss, %.preheader.preheader.loopexit.loopexit.split.loop.exit6725 ], [ %i.sy, %.preheader.preheader.loopexit.loopexit.split.loop.exit ], [ %.1246.i4112620, %.lr.ph2623 ]
  %.8.i422.ph = phi ptr [ %.2240.i4142628, %.lr.ph2629 ], [ %.3241.i4162633.prol, %.lr.ph2634.prol ], [ %i.ti, %.loopexit1313 ], [ %i.tl, %.loopexit1314 ], [ %i.tn, %.loopexit1315 ], [ %i.to, %bb.cr ], [ %i.tr, %bb.cs ], [ %i.tt, %bb.ct ], [ %i.tv, %bb.cu ], [ %i.tx, %bb.cv ], [ %i.ua, %bb.cw ], [ %i.uc, %bb.cx ], [ %i.ue, %bb.cy ], [ %i.ug, %bb.cz ], [ %i.ui, %bb.da ], [ %i.uk, %bb.db ], [ %i.um, %bb.dc ], [ %.3241.i4162633, %.lr.ph2634 ], [ %i.uq, %.preheader.preheader.loopexit.loopexit.split.loop.exit6728 ], [ %i.up, %.preheader.preheader.loopexit.loopexit.split.loop.exit6725 ], [ %i.uo, %.preheader.preheader.loopexit.loopexit.split.loop.exit ], [ %.1239.i4122621, %.lr.ph2623 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader
  %.8253.i421 = phi ptr [ %.8253.i421.ph, %.preheader.preheader ], [ %.8253.i421.be, %.preheader.backedge ] ; 35 uses
  %.8.i422 = phi ptr [ %.8.i422.ph, %.preheader.preheader ], [ %.8.i422.be, %.preheader.backedge ] ; 23 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.8.i422, i64 4 ; 3 uses
  %i.us = icmp ugt ptr %i.ur, %i.ni               ; 2 uses
  br i1 %i.us, label %bb.dd, label %._crit_edge3188, !prof !45

._crit_edge3188:                                  ; preds = %.preheader
  %.pre3189.a = load i8, ptr %.8.i422, align 1, !tbaa !100 ; 2 uses
  %.phi.trans.insert3190 = zext i8 %.pre3189.a to i64 ; 2 uses
  %.phi.trans.insert3191 = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %.phi.trans.insert3190
  %.pre3192 = load i8, ptr %.phi.trans.insert3191, align 1, !tbaa !100
  br label %bb.de

bb.dd:                                            ; preds = %.preheader
  %i.ut = ptrtoint ptr %.8.i422 to i64
  %i.uu = sub i64 %i.nj, %i.ut
  %i.uv = load i8, ptr %.8.i422, align 1, !tbaa !100 ; 3 uses
  %i.uw = zext i8 %i.uv to i64                    ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.uw
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !100 ; 2 uses
  %i.uz = lshr i8 %i.uy, 1
  %i.va = zext nneg i8 %i.uz to i64
  %i.vb = icmp slt i64 %i.uu, %i.va
  br i1 %i.vb, label %bb.dy, label %bb.de

bb.de:                                            ; preds = %._crit_edge3188, %bb.dd
  %.pre-phi3194 = phi i64 [ %.phi.trans.insert3190, %._crit_edge3188 ], [ %i.uw, %bb.dd ]
  %i.vc = phi i8 [ %.pre3192, %._crit_edge3188 ], [ %i.uy, %bb.dd ]
  %i.vd = phi i8 [ %.pre3189.a, %._crit_edge3188 ], [ %i.uv, %bb.dd ] ; 2 uses
  switch i8 %i.vc, label %bb.dx [
    i8 0, label %bb.df
    i8 4, label %bb.dg
    i8 6, label %bb.di
    i8 8, label %bb.dn
    i8 2, label %bb.dp
    i8 3, label %bb.dq
    i8 5, label %bb.dr
    i8 7, label %bb.dt
    i8 9, label %bb.dv
    i8 1, label %bb.dy
  ]

bb.df:                                            ; preds = %bb.de
  %i.ve = getelementptr inbounds nuw i8, ptr %.8.i422, i64 1
  store i8 %i.vd, ptr %.8253.i421, align 1, !tbaa !100
  br label %bb.bu

bb.dg:                                            ; preds = %bb.de
  %i.vf = load i16, ptr %.8.i422, align 1         ; 3 uses
  %.sroa.01005.0.insert.ext = zext i16 %i.vf to i32 ; 2 uses
  %i.vg = and i32 %.sroa.01005.0.insert.ext, 49376
  %i.vh = icmp ne i32 %i.vg, 32960
  %i.vi = and i32 %.sroa.01005.0.insert.ext, 30
  %i.vj = icmp eq i32 %i.vi, 0
  %.not310.i476 = or i1 %i.vh, %i.vj
  %i.vk = trunc i16 %i.vf to i8
  br i1 %.not310.i476, label %.thread1064, label %bb.dh, !prof !45

bb.dh:                                            ; preds = %bb.dg
  store i16 %i.vf, ptr %.8253.i421, align 1
  %i.vl = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 2
  %i.vm = getelementptr inbounds nuw i8, ptr %.8.i422, i64 2
  br label %.preheader.backedge

bb.di:                                            ; preds = %bb.de
  br i1 %i.us, label %bb.dl, label %bb.dj, !prof !45

bb.dj:                                            ; preds = %bb.di
  %.sroa.0.0.copyload.i335.i466 = load i32, ptr %.8.i422, align 1 ; 4 uses
  %i.vn = and i32 %.sroa.0.0.copyload.i335.i466, 12632304
  %i.vo = icmp eq i32 %i.vn, 8421600
  %i.vp = trunc i32 %.sroa.0.0.copyload.i335.i466 to i8 ; 3 uses
  br i1 %i.vo, label %bb.dk, label %.thread1064, !prof !62

bb.dk:                                            ; preds = %bb.dj
  %i.vq = and i32 %.sroa.0.0.copyload.i335.i466, 8207
  switch i32 %i.vq, label %.critedge.i467 [
    i32 8205, label %.thread1064
    i32 0, label %.thread1064
  ], !prof !151

bb.dl:                                            ; preds = %bb.di
  %.sroa.0.0.copyload.i327.i471 = load i16, ptr %.8.i422, align 1 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.8.i422, i64 2
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !100
  %.sroa.4.0.insert.ext.i328.i472 = zext i8 %i.vs to i32
  %.sroa.4.0.insert.shift.i329.i473 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i328.i472, 16
  %.sroa.0.0.insert.ext.i330.i474 = zext i16 %.sroa.0.0.copyload.i327.i471 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i331.i475 = or disjoint i32 %.sroa.4.0.insert.shift.i329.i473, %.sroa.0.0.insert.ext.i330.i474 ; 2 uses
  %i.vt = and i32 %.sroa.0.0.insert.insert.i331.i475, 12632304
  %i.vu = icmp eq i32 %i.vt, 8421600
  %i.vv = trunc i16 %.sroa.0.0.copyload.i327.i471 to i8 ; 3 uses
  br i1 %i.vu, label %bb.dm, label %.thread1064, !prof !62

bb.dm:                                            ; preds = %bb.dl
  %i.vw = and i32 %.sroa.0.0.insert.ext.i330.i474, 8207
  switch i32 %i.vw, label %.critedge.i467 [
    i32 8205, label %.thread1064
    i32 0, label %.thread1064
  ], !prof !151

.critedge.i467:                                   ; preds = %bb.dm, %bb.dk
  %storemerge1306 = phi i32 [ %.sroa.0.0.copyload.i335.i466, %bb.dk ], [ %.sroa.0.0.insert.insert.i331.i475, %bb.dm ]
  store i32 %storemerge1306, ptr %.8253.i421, align 1
  %i.vx = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 3
  %i.vy = getelementptr inbounds nuw i8, ptr %.8.i422, i64 3
  br label %.preheader.backedge

bb.dn:                                            ; preds = %bb.de
  %.sroa.0.0.copyload.i334.i457 = load i32, ptr %.8.i422, align 1 ; 6 uses
  %i.vz = and i32 %.sroa.0.0.copyload.i334.i457, -1061109512
  %i.wa = icmp ne i32 %i.vz, -2139062032
  %i.wb = and i32 %.sroa.0.0.copyload.i334.i457, 12295
  %.not301.i458 = icmp eq i32 %i.wb, 0
  %or.cond.i459 = or i1 %i.wa, %.not301.i458
  %i.wc = trunc i32 %.sroa.0.0.copyload.i334.i457 to i8 ; 2 uses
  br i1 %or.cond.i459, label %.thread1064, label %bb.do, !prof !139

bb.do:                                            ; preds = %bb.dn
  %i.wd = and i32 %.sroa.0.0.copyload.i334.i457, 4
  %i.we = icmp ne i32 %i.wd, 0
  %i.wf = and i32 %.sroa.0.0.copyload.i334.i457, 12291
  %i.wg = icmp ne i32 %i.wf, 0
  %.not304.i460 = and i1 %i.we, %i.wg
  br i1 %.not304.i460, label %.thread1064, label %.critedge316.i461, !prof !45

.critedge316.i461:                                ; preds = %bb.do
  store i32 %.sroa.0.0.copyload.i334.i457, ptr %.8253.i421, align 1
  %i.wh = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 4
  br label %.preheader.backedge

bb.dp:                                            ; preds = %bb.de
  %i.wi = shl nuw nsw i64 %.pre-phi3194, 1
  %i.wj = getelementptr inbounds nuw i8, ptr @esc_single_char_table, i64 %i.wi
  %i.wk = load i16, ptr %i.wj, align 2
  store i16 %i.wk, ptr %.8253.i421, align 1
  %i.wl = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 2
  %i.wm = getelementptr inbounds nuw i8, ptr %.8.i422, i64 1
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.dp, %bb.dq, %bb.dz, %bb.ea, %bb.dh, %.critedge.i467, %.critedge316.i461, %bb.ds, %.critedge321.i442, %.critedge325.i433
  %.8253.i421.be = phi ptr [ %i.aam, %bb.dz ], [ %i.vl, %bb.dh ], [ %i.vx, %.critedge.i467 ], [ %i.wh, %.critedge316.i461 ], [ %i.wl, %bb.dp ], [ %i.wt, %bb.dq ], [ %i.xo, %bb.ds ], [ %i.yl, %.critedge321.i442 ], [ %i.aah, %.critedge325.i433 ], [ %i.aao, %bb.ea ]
  %.8.i422.be = phi ptr [ %i.aal, %bb.dz ], [ %i.vm, %bb.dh ], [ %i.vy, %.critedge.i467 ], [ %i.ur, %.critedge316.i461 ], [ %i.wm, %bb.dp ], [ %i.wu, %bb.dq ], [ %i.xp, %bb.ds ], [ %i.ym, %.critedge321.i442 ], [ %i.ur, %.critedge325.i433 ], [ %i.aap, %bb.ea ]
  br label %.preheader

bb.dq:                                            ; preds = %bb.de
  store i32 808482140, ptr %.8253.i421, align 1
  %i.wn = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 4
  %i.wo = load i8, ptr %.8.i422, align 1, !tbaa !100
  %i.wp = zext i8 %i.wo to i64
  %i.wq = shl nuw nsw i64 %i.wp, 1
  %i.wr = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.wq
  %i.ws = load i16, ptr %i.wr, align 2
  store i16 %i.ws, ptr %i.wn, align 1
  %i.wt = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 6
  %i.wu = getelementptr inbounds nuw i8, ptr %.8.i422, i64 1
  br label %.preheader.backedge

bb.dr:                                            ; preds = %bb.de
  %.sroa.0.0.copyload.i332.i450 = load i16, ptr %.8.i422, align 1 ; 3 uses
  %.sroa.01002.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i450 to i32 ; 2 uses
  %i.wv = and i32 %.sroa.01002.0.insert.ext, 49376
  %i.ww = icmp ne i32 %i.wv, 32960
  %i.wx = and i32 %.sroa.01002.0.insert.ext, 30
  %i.wy = icmp eq i32 %i.wx, 0
  %.not298.i451 = or i1 %i.ww, %i.wy
  br i1 %.not298.i451, label %.thread1074, label %bb.ds, !prof !45

bb.ds:                                            ; preds = %bb.dr
  %i.wz = lshr i16 %.sroa.0.0.copyload.i332.i450, 8
  %i.xa = trunc nuw i16 %i.wz to i8
  %i.xb = trunc i16 %.sroa.0.0.copyload.i332.i450 to i8 ; 2 uses
  %.tr299.i452 = shl i8 %i.xb, 6
  %i.xc = and i8 %i.xa, 63
  store i16 30044, ptr %.8253.i421, align 1
  %i.xd = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 2
  %i.xe = lshr i8 %i.xb, 1
  %i.xf = and i8 %i.xe, 14
  %i.xg = zext nneg i8 %i.xf to i64
  %i.xh = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.xg
  %i.xi = load i16, ptr %i.xh, align 2
  store i16 %i.xi, ptr %i.xd, align 1
  %i.xj = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 4
  %.narrow300.i453 = or disjoint i8 %i.xc, %.tr299.i452
  %i.xk = zext i8 %.narrow300.i453 to i64
  %i.xl = shl nuw nsw i64 %i.xk, 1
  %i.xm = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.xl
  %i.xn = load i16, ptr %i.xm, align 2
  store i16 %i.xn, ptr %i.xj, align 1
  %i.xo = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 6
  %i.xp = getelementptr inbounds nuw i8, ptr %.8.i422, i64 2
  br label %.preheader.backedge

bb.dt:                                            ; preds = %bb.de
  %.sroa.0.0.copyload.i.i437 = load i16, ptr %.8.i422, align 1 ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.8.i422, i64 2
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !100 ; 2 uses
  %.sroa.4.0.insert.ext.i.i438 = zext i8 %i.xr to i32
  %.sroa.4.0.insert.shift.i.i439 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i438, 16
  %.sroa.0.0.insert.ext.i.i440 = zext i16 %.sroa.0.0.copyload.i.i437 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i441 = or disjoint i32 %.sroa.4.0.insert.shift.i.i439, %.sroa.0.0.insert.ext.i.i440
  %i.xs = and i32 %.sroa.0.0.insert.insert.i.i441, 12632304
  %i.xt = icmp eq i32 %i.xs, 8421600
  br i1 %i.xt, label %bb.du, label %.thread1074, !prof !62

bb.du:                                            ; preds = %bb.dt
  %i.xu = and i32 %.sroa.0.0.insert.ext.i.i440, 8207
  switch i32 %i.xu, label %.critedge321.i442 [
    i32 8205, label %.thread1074
    i32 0, label %.thread1074
  ], !prof !151

.critedge321.i442:                                ; preds = %bb.du
  %i.xv = zext i16 %.sroa.0.0.copyload.i.i437 to i64
  %i.xw = shl nuw nsw i64 %i.xv, 12
  %i.xx = lshr i16 %.sroa.0.0.copyload.i.i437, 2
  %i.xy = and i16 %i.xx, 4032                     ; 2 uses
  %i.xz = zext nneg i16 %i.xy to i64
  %i.ya = and i8 %i.xr, 63
  store i16 30044, ptr %.8253.i421, align 1
  %i.yb = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 2
  %.masked.i447 = or disjoint i64 %i.xw, %i.xz
  %i.yc = lshr i64 %.masked.i447, 7
  %i.yd = and i64 %i.yc, 510
  %i.ye = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.yd
  %i.yf = load i16, ptr %i.ye, align 2
  store i16 %i.yf, ptr %i.yb, align 1
  %i.yg = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 4
  %.tr294.i448 = trunc i16 %i.xy to i8
  %.narrow295.i449 = or disjoint i8 %i.ya, %.tr294.i448
  %i.yh = zext i8 %.narrow295.i449 to i64
  %i.yi = shl nuw nsw i64 %i.yh, 1
  %i.yj = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.yi
  %i.yk = load i16, ptr %i.yj, align 2
  store i16 %i.yk, ptr %i.yg, align 1
  %i.yl = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 6
  %i.ym = getelementptr inbounds nuw i8, ptr %.8.i422, i64 3
  br label %.preheader.backedge

bb.dv:                                            ; preds = %bb.de
  %.sroa.0.0.copyload.i333.i427 = load i32, ptr %.8.i422, align 1 ; 9 uses
  %i.yn = and i32 %.sroa.0.0.copyload.i333.i427, -1061109512
  %i.yo = icmp ne i32 %i.yn, -2139062032
  %i.yp = and i32 %.sroa.0.0.copyload.i333.i427, 12295
  %.not288.i428 = icmp eq i32 %i.yp, 0
  %or.cond323.i429 = or i1 %i.yo, %.not288.i428
  %i.yq = lshr i32 %.sroa.0.0.copyload.i333.i427, 24
  br i1 %or.cond323.i429, label %.thread1074, label %bb.dw, !prof !139

bb.dw:                                            ; preds = %bb.dv
  %i.yr = and i32 %.sroa.0.0.copyload.i333.i427, 4
  %i.ys = icmp ne i32 %i.yr, 0
  %i.yt = and i32 %.sroa.0.0.copyload.i333.i427, 12291
  %i.yu = icmp ne i32 %i.yt, 0
  %.not291.i430 = and i1 %i.ys, %i.yu
  br i1 %.not291.i430, label %.thread1074, label %.critedge325.i433, !prof !45

.critedge325.i433:                                ; preds = %bb.dw
  %i.yv = shl i32 %.sroa.0.0.copyload.i333.i427, 18
  %i.yw = and i32 %i.yv, 1835008
  %i.yx = shl i32 %.sroa.0.0.copyload.i333.i427, 4
  %i.yy = and i32 %i.yx, 258048
  %i.yz = lshr i32 %.sroa.0.0.copyload.i333.i427, 10 ; 2 uses
  %i.za = and i32 %i.yz, 3072
  %i.zb = and i32 %i.yq, 63
  %i.zc = add nsw i32 %i.yw, -65536
  %i.zd = add nsw i32 %i.zc, %i.yy                ; 2 uses
  %i.ze = or disjoint i32 %i.zd, %i.za
  %i.zf = lshr exact i32 %i.zd, 10
  %i.zg = add nuw nsw i32 %i.zf, 55296
  store i16 30044, ptr %.8253.i421, align 1
  %i.zh = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 2
  %i.zi = lshr i32 %i.zg, 7
  %i.zj = and i32 %i.zi, 65534
  %i.zk = zext nneg i32 %i.zj to i64
  %i.zl = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.zk
  %i.zm = load i16, ptr %i.zl, align 2
  store i16 %i.zm, ptr %i.zh, align 1
  %i.zn = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 4
  %i.zo = lshr exact i32 %i.ze, 9
  %i.zp = and i32 %i.zo, 510
  %i.zq = zext nneg i32 %i.zp to i64
  %i.zr = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.zq
  %i.zs = load i16, ptr %i.zr, align 2
  store i16 %i.zs, ptr %i.zn, align 1
  %i.zt = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 6
  store i16 30044, ptr %i.zt, align 1
  %i.zu = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 8
  %i.zv = lshr i32 %.sroa.0.0.copyload.i333.i427, 17
  %i.zw = and i32 %i.zv, 6
  %i.zx = zext nneg i32 %i.zw to i64
  %i.zy = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.zx
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 440
  %i.aaa = load i16, ptr %i.zz, align 2
  store i16 %i.aaa, ptr %i.zu, align 1
  %i.aab = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 10
  %.masked3302 = and i32 %i.yz, 192
  %i.aac = or disjoint i32 %i.zb, %.masked3302
  %i.aad = shl nuw nsw i32 %i.aac, 1
  %i.aae = zext nneg i32 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.aae
  %i.aag = load i16, ptr %i.aaf, align 2
  store i16 %i.aag, ptr %i.aab, align 1
  %i.aah = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 12
  br label %.preheader.backedge

bb.dx:                                            ; preds = %bb.de
  %i.aai = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 1
  store i8 34, ptr %.8253.i421, align 1, !tbaa !100
  br label %write_str.exit605

bb.dy:                                            ; preds = %bb.de, %bb.dd
  %i.aaj = phi i8 [ %i.vd, %bb.de ], [ %i.uv, %bb.dd ]
  br i1 %.not1299, label %.thread1064, label %.thread1074

.thread1064:                                      ; preds = %bb.dn, %bb.do, %bb.dl, %bb.dj, %bb.dm, %bb.dm, %bb.dk, %bb.dk, %bb.dg, %bb.dy
  %i.aak = phi i8 [ %i.wc, %bb.dn ], [ %i.wc, %bb.do ], [ %i.vv, %bb.dl ], [ %i.vp, %bb.dj ], [ %i.vv, %bb.dm ], [ %i.vv, %bb.dm ], [ %i.vp, %bb.dk ], [ %i.vp, %bb.dk ], [ %i.vk, %bb.dg ], [ %i.aaj, %bb.dy ]
  br i1 %.not1302, label %.loopexit, label %bb.dz

bb.dz:                                            ; preds = %.thread1064
  %i.aal = getelementptr inbounds nuw i8, ptr %.8.i422, i64 1
  %i.aam = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 1
  store i8 %i.aak, ptr %.8253.i421, align 1, !tbaa !100
  br label %.preheader.backedge

.thread1074:                                      ; preds = %bb.dv, %bb.dw, %bb.dt, %bb.du, %bb.du, %bb.dr, %bb.dy
  br i1 %.not1302, label %.loopexit, label %bb.ea

bb.ea:                                            ; preds = %.thread1074
  store i16 30044, ptr %.8253.i421, align 1
  %i.aan = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 2
  store i32 1145456198, ptr %i.aan, align 1
  %i.aao = getelementptr inbounds nuw i8, ptr %.8253.i421, i64 6
  %i.aap = getelementptr inbounds nuw i8, ptr %.8.i422, i64 1
  br label %.preheader.backedge

bb.eb:                                            ; preds = %bb.bt
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %i.aar = icmp ugt i64 %i.a, 4095
  br i1 %i.aar, label %.lr.ph2591, label %.preheader1321

.preheader1321:                                   ; preds = %.lr.ph2591, %bb.eb
  %.021.i82.lcssa = phi ptr [ %i.aaq, %bb.eb ], [ %i.abg, %.lr.ph2591 ] ; 5 uses
  %.018.i83.lcssa = phi ptr [ %i.t, %bb.eb ], [ %i.abh, %.lr.ph2591 ] ; 5 uses
  %.0.i84.lcssa = phi i64 [ %i.r, %bb.eb ], [ %i.abi, %.lr.ph2591 ] ; 5 uses
  %i.aas = icmp samesign ugt i64 %.0.i84.lcssa, 3
  br i1 %i.aas, label %.lr.ph2598.preheader, label %.preheader1320

.lr.ph2598.preheader:                             ; preds = %.preheader1321
  %.018.i83.lcssa5252 = ptrtoaddr ptr %.018.i83.lcssa to i64
  %.021.i82.lcssa5251 = ptrtoaddr ptr %.021.i82.lcssa to i64
  %i.aat = add nsw i64 %.0.i84.lcssa, -4          ; 2 uses
  %i.aau = lshr i64 %i.aat, 2
  %i.aav = add nuw nsw i64 %i.aau, 1              ; 2 uses
  %min.iters.check5255 = icmp ult i64 %i.aat, 28
  %i.aaw = sub i64 %.018.i83.lcssa5252, %.021.i82.lcssa5251
  %diff.check5253 = icmp ugt i64 %i.aaw, -32
  %or.cond5310 = select i1 %min.iters.check5255, i1 true, i1 %diff.check5253
  br i1 %or.cond5310, label %.lr.ph2598.preheader5396, label %vector.ph5256

vector.ph5256:                                    ; preds = %.lr.ph2598.preheader
  %n.vec5257 = and i64 %i.aav, 9223372036854775800 ; 4 uses
  %i.aax = shl i64 %n.vec5257, 2
  %i.aay = sub i64 %.0.i84.lcssa, %i.aax          ; 2 uses
  %i.aaz = shl i64 %n.vec5257, 2                  ; 2 uses
  %i.aba = getelementptr i8, ptr %.018.i83.lcssa, i64 %i.aaz ; 2 uses
  %i.abb = getelementptr i8, ptr %.021.i82.lcssa, i64 %i.aaz ; 2 uses
  br label %vector.body5258

vector.body5258:                                  ; preds = %vector.body5258, %vector.ph5256
  %index5259 = phi i64 [ 0, %vector.ph5256 ], [ %index.next5264, %vector.body5258 ] ; 2 uses
  %i.abc = shl i64 %index5259, 2                  ; 2 uses
  %next.gep5260 = getelementptr i8, ptr %.018.i83.lcssa, i64 %i.abc ; 2 uses
  %next.gep5261 = getelementptr i8, ptr %.021.i82.lcssa, i64 %i.abc ; 2 uses
  %i.abd = getelementptr i8, ptr %next.gep5260, i64 16
  %wide.load5262 = load <4 x i32>, ptr %next.gep5260, align 1
  %wide.load5263 = load <4 x i32>, ptr %i.abd, align 1
  %i.abe = getelementptr i8, ptr %next.gep5261, i64 16
  store <4 x i32> %wide.load5262, ptr %next.gep5261, align 1
  store <4 x i32> %wide.load5263, ptr %i.abe, align 1
  %index.next5264 = add nuw i64 %index5259, 8     ; 2 uses
  %i.abf = icmp eq i64 %index.next5264, %n.vec5257
  br i1 %i.abf, label %middle.block5265, label %vector.body5258, !llvm.loop !365

middle.block5265:                                 ; preds = %vector.body5258
  %cmp.n5266 = icmp eq i64 %i.aav, %n.vec5257
  br i1 %cmp.n5266, label %.preheader1320, label %.lr.ph2598.preheader5396

.lr.ph2598.preheader5396:                         ; preds = %.lr.ph2598.preheader, %middle.block5265
  %.1.i872597.ph = phi i64 [ %.0.i84.lcssa, %.lr.ph2598.preheader ], [ %i.aay, %middle.block5265 ]
  %.119.i862596.ph = phi ptr [ %.018.i83.lcssa, %.lr.ph2598.preheader ], [ %i.aba, %middle.block5265 ]
  %.122.i852595.ph = phi ptr [ %.021.i82.lcssa, %.lr.ph2598.preheader ], [ %i.abb, %middle.block5265 ]
  br label %.lr.ph2598

.lr.ph2591:                                       ; preds = %bb.eb, %.lr.ph2591
  %.0.i842589 = phi i64 [ %i.abi, %.lr.ph2591 ], [ %i.r, %bb.eb ]
  %.018.i832588 = phi ptr [ %i.abh, %.lr.ph2591 ], [ %i.t, %bb.eb ] ; 2 uses
  %.021.i822587 = phi ptr [ %i.abg, %.lr.ph2591 ], [ %i.aaq, %bb.eb ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i822587, ptr noundef nonnull align 1 dereferenceable(16) %.018.i832588, i64 16, i1 false)
  %i.abg = getelementptr inbounds nuw i8, ptr %.021.i822587, i64 16 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.018.i832588, i64 16 ; 2 uses
  %i.abi = add nsw i64 %.0.i842589, -16           ; 3 uses
  %i.abj = icmp ugt i64 %i.abi, 15
  br i1 %i.abj, label %.lr.ph2591, label %.preheader1321, !llvm.loop !26

.preheader1320:                                   ; preds = %.lr.ph2598, %middle.block5265, %.preheader1321
  %.122.i85.lcssa = phi ptr [ %.021.i82.lcssa, %.preheader1321 ], [ %i.abb, %middle.block5265 ], [ %i.acd, %.lr.ph2598 ] ; 7 uses
  %.119.i86.lcssa = phi ptr [ %.018.i83.lcssa, %.preheader1321 ], [ %i.aba, %middle.block5265 ], [ %i.ace, %.lr.ph2598 ] ; 6 uses
  %.1.i87.lcssa = phi i64 [ %.0.i84.lcssa, %.preheader1321 ], [ %i.aay, %middle.block5265 ], [ %i.acf, %.lr.ph2598 ] ; 11 uses
  %.not.i912602 = icmp eq i64 %.1.i87.lcssa, 0
  br i1 %.not.i912602, label %write_str_noesc.exit92, label %iter.check5293

iter.check5293:                                   ; preds = %.preheader1320
  %.119.i86.lcssa5272 = ptrtoaddr ptr %.119.i86.lcssa to i64
  %.122.i85.lcssa5271 = ptrtoaddr ptr %.122.i85.lcssa to i64
  %min.iters.check5275 = icmp ult i64 %.1.i87.lcssa, 4
  %i.abk = sub i64 %.119.i86.lcssa5272, %.122.i85.lcssa5271
  %diff.check5273 = icmp ugt i64 %i.abk, -32
  %or.cond5311 = select i1 %min.iters.check5275, i1 true, i1 %diff.check5273
  br i1 %or.cond5311, label %.lr.ph2606.preheader, label %vector.main.loop.iter.check5276

vector.main.loop.iter.check5276:                  ; preds = %iter.check5293
  %min.iters.check5277 = icmp ult i64 %.1.i87.lcssa, 32
  br i1 %min.iters.check5277, label %vec.epilog.ph5297, label %vector.ph5278

vector.ph5278:                                    ; preds = %vector.main.loop.iter.check5276
  %i.abl = and i64 %.1.i87.lcssa, 28
  %n.vec5279 = and i64 %.1.i87.lcssa, -32         ; 5 uses
  %i.abm = and i64 %.1.i87.lcssa, 31
  %i.abn = getelementptr i8, ptr %.119.i86.lcssa, i64 %n.vec5279
  %i.abo = getelementptr i8, ptr %.122.i85.lcssa, i64 %n.vec5279 ; 2 uses
  br label %vector.body5280

vector.body5280:                                  ; preds = %vector.body5280, %vector.ph5278
  %index5281 = phi i64 [ 0, %vector.ph5278 ], [ %index.next5286, %vector.body5280 ] ; 3 uses
  %next.gep5282 = getelementptr i8, ptr %.119.i86.lcssa, i64 %index5281 ; 2 uses
  %next.gep5283 = getelementptr i8, ptr %.122.i85.lcssa, i64 %index5281 ; 2 uses
  %i.abp = getelementptr i8, ptr %next.gep5282, i64 16
  %wide.load5284 = load <16 x i8>, ptr %next.gep5282, align 1, !tbaa !100
  %wide.load5285 = load <16 x i8>, ptr %i.abp, align 1, !tbaa !100
  %i.abq = getelementptr i8, ptr %next.gep5283, i64 16
  store <16 x i8> %wide.load5284, ptr %next.gep5283, align 1, !tbaa !100
  store <16 x i8> %wide.load5285, ptr %i.abq, align 1, !tbaa !100
  %index.next5286 = add nuw i64 %index5281, 32    ; 2 uses
  %i.abr = icmp eq i64 %index.next5286, %n.vec5279
  br i1 %i.abr, label %middle.block5287, label %vector.body5280, !llvm.loop !366

middle.block5287:                                 ; preds = %vector.body5280
  %cmp.n5288 = icmp eq i64 %.1.i87.lcssa, %n.vec5279
  br i1 %cmp.n5288, label %write_str_noesc.exit92, label %vec.epilog.iter.check5295

vec.epilog.iter.check5295:                        ; preds = %middle.block5287
  %min.epilog.iters.check5296 = icmp eq i64 %i.abl, 0
  br i1 %min.epilog.iters.check5296, label %.lr.ph2606.preheader, label %vec.epilog.ph5297, !prof !152

vec.epilog.ph5297:                                ; preds = %vector.main.loop.iter.check5276, %vec.epilog.iter.check5295
  %vec.epilog.resume.val5289 = phi i64 [ %n.vec5279, %vec.epilog.iter.check5295 ], [ 0, %vector.main.loop.iter.check5276 ]
  %n.vec5298 = and i64 %.1.i87.lcssa, -4          ; 4 uses
  %i.abs = and i64 %.1.i87.lcssa, 3
  %i.abt = getelementptr i8, ptr %.119.i86.lcssa, i64 %n.vec5298
  %i.abu = getelementptr i8, ptr %.122.i85.lcssa, i64 %n.vec5298 ; 2 uses
  br label %vec.epilog.vector.body5299

vec.epilog.vector.body5299:                       ; preds = %vec.epilog.vector.body5299, %vec.epilog.ph5297
  %index5300 = phi i64 [ %vec.epilog.resume.val5289, %vec.epilog.ph5297 ], [ %index.next5304, %vec.epilog.vector.body5299 ] ; 3 uses
  %next.gep5301 = getelementptr i8, ptr %.119.i86.lcssa, i64 %index5300
  %next.gep5302 = getelementptr i8, ptr %.122.i85.lcssa, i64 %index5300
  %wide.load5303 = load <4 x i8>, ptr %next.gep5301, align 1, !tbaa !100
  store <4 x i8> %wide.load5303, ptr %next.gep5302, align 1, !tbaa !100
  %index.next5304 = add nuw i64 %index5300, 4     ; 2 uses
  %i.abv = icmp eq i64 %index.next5304, %n.vec5298
  br i1 %i.abv, label %vec.epilog.middle.block5305, label %vec.epilog.vector.body5299, !llvm.loop !367

vec.epilog.middle.block5305:                      ; preds = %vec.epilog.vector.body5299
  %cmp.n5306 = icmp eq i64 %.1.i87.lcssa, %n.vec5298
  br i1 %cmp.n5306, label %write_str_noesc.exit92, label %.lr.ph2606.preheader

.lr.ph2606.preheader:                             ; preds = %iter.check5293, %vec.epilog.iter.check5295, %vec.epilog.middle.block5305
  %.2.i902605.ph = phi i64 [ %.1.i87.lcssa, %iter.check5293 ], [ %i.abm, %vec.epilog.iter.check5295 ], [ %i.abs, %vec.epilog.middle.block5305 ] ; 4 uses
  %.220.i892604.ph = phi ptr [ %.119.i86.lcssa, %iter.check5293 ], [ %i.abn, %vec.epilog.iter.check5295 ], [ %i.abt, %vec.epilog.middle.block5305 ] ; 2 uses
  %.223.i882603.ph = phi ptr [ %.122.i85.lcssa, %iter.check5293 ], [ %i.abo, %vec.epilog.iter.check5295 ], [ %i.abu, %vec.epilog.middle.block5305 ] ; 2 uses
  %i.abw = add nsw i64 %.2.i902605.ph, -1
  %xtraiter6004 = and i64 %.2.i902605.ph, 7       ; 2 uses
  %lcmp.mod6005.not = icmp eq i64 %xtraiter6004, 0
  br i1 %lcmp.mod6005.not, label %.lr.ph2606.prol.loopexit, label %.lr.ph2606.prol

.lr.ph2606.prol:                                  ; preds = %.lr.ph2606.preheader, %.lr.ph2606.prol
  %.2.i902605.prol = phi i64 [ %i.aca, %.lr.ph2606.prol ], [ %.2.i902605.ph, %.lr.ph2606.preheader ]
  %.220.i892604.prol = phi ptr [ %i.abx, %.lr.ph2606.prol ], [ %.220.i892604.ph, %.lr.ph2606.preheader ] ; 2 uses
  %.223.i882603.prol = phi ptr [ %i.abz, %.lr.ph2606.prol ], [ %.223.i882603.ph, %.lr.ph2606.preheader ] ; 2 uses
  %prol.iter6006 = phi i64 [ %prol.iter6006.next, %.lr.ph2606.prol ], [ 0, %.lr.ph2606.preheader ]
  %i.abx = getelementptr inbounds nuw i8, ptr %.220.i892604.prol, i64 1 ; 2 uses
  %i.aby = load i8, ptr %.220.i892604.prol, align 1, !tbaa !100
  %i.abz = getelementptr inbounds nuw i8, ptr %.223.i882603.prol, i64 1 ; 3 uses
  store i8 %i.aby, ptr %.223.i882603.prol, align 1, !tbaa !100
  %i.aca = add nsw i64 %.2.i902605.prol, -1       ; 2 uses
  %prol.iter6006.next = add i64 %prol.iter6006, 1 ; 2 uses
  %prol.iter6006.cmp.not = icmp eq i64 %prol.iter6006.next, %xtraiter6004
  br i1 %prol.iter6006.cmp.not, label %.lr.ph2606.prol.loopexit, label %.lr.ph2606.prol, !llvm.loop !368

.lr.ph2606.prol.loopexit:                         ; preds = %.lr.ph2606.prol, %.lr.ph2606.preheader
  %.lcssa5395.unr = phi ptr [ poison, %.lr.ph2606.preheader ], [ %i.abz, %.lr.ph2606.prol ]
  %.2.i902605.unr = phi i64 [ %.2.i902605.ph, %.lr.ph2606.preheader ], [ %i.aca, %.lr.ph2606.prol ]
  %.220.i892604.unr = phi ptr [ %.220.i892604.ph, %.lr.ph2606.preheader ], [ %i.abx, %.lr.ph2606.prol ]
  %.223.i882603.unr = phi ptr [ %.223.i882603.ph, %.lr.ph2606.preheader ], [ %i.abz, %.lr.ph2606.prol ]
  %i.acb = icmp ult i64 %i.abw, 7
  br i1 %i.acb, label %write_str_noesc.exit92, label %.lr.ph2606
end_hunk_2
begin_hunk_3_@yyjson_val_write_opts:bb.a

bb.ft:                                            ; preds = %bb.fr
  %enc_table_cpy_slash.enc_table_cpy.i59 = select i1 %.not1292, ptr @enc_table_cpy, ptr @enc_table_cpy_slash, !prof !62
  br label %size_align_up.exit632.i

size_align_up.exit632.i:                          ; preds = %bb.fs, %bb.ft
  %.0.i60 = phi ptr [ %enc_table_esc_slash.enc_table_esc.i61, %bb.fs ], [ %enc_table_cpy_slash.enc_table_cpy.i59, %bb.ft ] ; 28 uses
  %i.arc = icmp eq ptr %.0.i60, @enc_table_cpy
  %i.ard = and i32 %1, 32
  %.not1286 = icmp eq i32 %i.ard, 0               ; 4 uses
  %i.are = and i32 %1, 64
  %.not1287 = icmp eq i32 %i.are, 0
  %i.arf = select i1 %.not1287, i64 4, i64 2, !prof !62 ; 72 uses
  %i.arg = and i32 %1, 128
  %.not1288 = icmp eq i32 %i.arg, 0
  %i.arh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ari = load i64, ptr %i.arh, align 8, !tbaa !100
  %i.arj = shl i64 %i.ari, 1
  %i.ark = and i64 %i.arj, -32
  %i.arl = add i64 %i.ark, 64                     ; 3 uses
  %i.arm = tail call ptr %.sroa.0849.0(ptr noundef %.sroa.9.0, i64 noundef %i.arl) #33, !inline_history !371 ; 6 uses
  %.not.i30 = icmp eq ptr %i.arm, null
  br i1 %.not.i30, label %.loopexit1398, label %bb.fu

bb.fu:                                            ; preds = %size_align_up.exit632.i
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 %i.arl ; 2 uses
  %i.aro = load i64, ptr %0, align 8, !tbaa !99   ; 2 uses
  %i.arp = and i64 %i.aro, 7
  %i.arq = icmp eq i64 %i.arp, 7                  ; 3 uses
  %i.arr = zext i1 %i.arq to i8
  %i.ars = lshr i64 %i.aro, 8
  %i.art = zext i1 %i.arq to i64
  %i.aru = shl nuw nsw i64 %i.ars, %i.art
  %i.arv = select i1 %i.arq, i8 123, i8 91
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arm, i64 1
  store i8 %i.arv, ptr %i.arm, align 1, !tbaa !100
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arm, i64 2
  store i8 10, ptr %i.arw, align 1, !tbaa !100
  %i.ary = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.arz = lshr i32 %1, 28
  br label %.outer1403

.outer1403:                                       ; preds = %.outer1403.backedge, %bb.fu
  %.01041.ph = phi i64 [ %i.aru, %bb.fu ], [ %.01041.ph.be, %.outer1403.backedge ]
  %.01040.ph = phi i8 [ %i.arr, %bb.fu ], [ %.01040.ph.be, %.outer1403.backedge ] ; 3 uses
  %.0565.i.ph = phi ptr [ %i.ary, %bb.fu ], [ %.0565.i.ph.be, %.outer1403.backedge ]
  %.0542.i.ph = phi ptr [ %i.arm, %bb.fu ], [ %.0542.i.ph.be, %.outer1403.backedge ]
  %.0523.i.ph = phi ptr [ %i.arx, %bb.fu ], [ %.0523.i.ph.be, %.outer1403.backedge ]
  %.0504.i.ph = phi ptr [ %i.arn, %bb.fu ], [ %.0504.i.ph.be, %.outer1403.backedge ]
  %.0493.i.ph = phi ptr [ %i.arn, %bb.fu ], [ %.0493.i.ph.be, %.outer1403.backedge ]
  %.0484.i.ph = phi i64 [ %i.arl, %bb.fu ], [ %.0484.i.ph.be, %.outer1403.backedge ]
  %.0482.i.ph = phi i64 [ 1, %bb.fu ], [ %.0482.i.ph.be, %.outer1403.backedge ] ; 33 uses
  %i.asa = zext nneg i8 %.01040.ph to i32         ; 7 uses
  %i.asb = shl i64 %.0482.i.ph, 2                 ; 4 uses
  %i.asc = add i64 %i.asb, 40
  %i.asd = add i64 %i.asb, 16                     ; 4 uses
  %.not.i74923513285 = icmp eq i64 %.0482.i.ph, 0
  %.not.i74123543286 = icmp eq i64 %.0482.i.ph, 0
  %.not.i73724383290 = icmp eq i64 %.0482.i.ph, 0
  %.not.i73324443291 = icmp eq i64 %.0482.i.ph, 0
  %.not.i72924503292 = icmp eq i64 %.0482.i.ph, 0
  %.not.i72224563294 = icmp eq i64 %.0482.i.ph, 0
  %i.ase = add i64 %.0482.i.ph, -1                ; 7 uses
  %xtraiter = and i64 %.0482.i.ph, 7              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.asf = icmp ult i64 %i.ase, 7
  %xtraiter5942 = and i64 %.0482.i.ph, 7          ; 2 uses
  %lcmp.mod5943.not = icmp eq i64 %xtraiter5942, 0
  %i.asg = icmp ult i64 %i.ase, 7
  %xtraiter5962 = and i64 %.0482.i.ph, 7          ; 2 uses
  %lcmp.mod5963.not = icmp eq i64 %xtraiter5962, 0
  %i.ash = icmp ult i64 %i.ase, 7
  %xtraiter5965 = and i64 %.0482.i.ph, 7          ; 2 uses
  %lcmp.mod5966.not = icmp eq i64 %xtraiter5965, 0
  %i.asi = icmp ult i64 %i.ase, 7
  %xtraiter5968.a = and i64 %.0482.i.ph, 7        ; 2 uses
  %lcmp.mod5969.not.a = icmp eq i64 %xtraiter5968.a, 0
  %i.asj = icmp ult i64 %i.ase, 7
  %xtraiter5971 = and i64 %.0482.i.ph, 7          ; 2 uses
  %lcmp.mod5972.not = icmp eq i64 %xtraiter5971, 0
  %i.ask = icmp ult i64 %i.ase, 7
  br label %bb.fv

bb.fv:                                            ; preds = %.outer1403, %bb.mb
  %.01041 = phi i64 [ %i.ctr, %bb.mb ], [ %.01041.ph, %.outer1403 ] ; 8 uses
  %.0565.i = phi ptr [ %i.ctq, %bb.mb ], [ %.0565.i.ph, %.outer1403 ] ; 9 uses
  %.0542.i = phi ptr [ %.15557.i, %bb.mb ], [ %.0542.i.ph, %.outer1403 ] ; 29 uses
  %.0523.i = phi ptr [ %.16539.i, %bb.mb ], [ %.0523.i.ph, %.outer1403 ] ; 21 uses
  %.0504.i = phi ptr [ %.15519.i, %bb.mb ], [ %.0504.i.ph, %.outer1403 ] ; 14 uses
  %.0493.i = phi ptr [ %.15.i, %bb.mb ], [ %.0493.i.ph, %.outer1403 ] ; 21 uses
  %.0484.i = phi i64 [ %.8492.i, %bb.mb ], [ %.0484.i.ph, %.outer1403 ] ; 28 uses
  %i.asl = load i64, ptr %.0565.i, align 8, !tbaa !99 ; 5 uses
  %i.asm = trunc i64 %i.asl to i8                 ; 2 uses
  %i.asn = and i8 %i.asm, 7                       ; 3 uses
  switch i8 %i.asn, label %bb.lo [
    i8 5, label %bb.fw
    i8 4, label %bb.km
  ]

bb.fw:                                            ; preds = %bb.fv
  %i.aso = trunc i64 %.01041 to i32               ; 2 uses
  %i.asp = xor i32 %i.aso, -1
  %i.asq = and i32 %i.asa, %i.asp
  %.not593.i = icmp eq i32 %i.asq, 0              ; 2 uses
  %i.asr = and i32 %i.asa, %i.aso
  %.not594.i = icmp ne i32 %i.asr, 0              ; 2 uses
  %i.ass = lshr i64 %i.asl, 8                     ; 9 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %.0565.i, i64 8
  %i.asu = load ptr, ptr %i.ast, align 8, !tbaa !100 ; 7 uses
  %i.asv = ptrtoaddr ptr %i.asu to i64            ; 4 uses
  %i.asw = mul nuw nsw i64 %i.ass, 6
  %i.asx = select i1 %.not594.i, i64 16, i64 %i.asd
  %i.asy = add i64 %i.asx, %i.asw                 ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %.0523.i, i64 %i.asy
  %.not595.i = icmp ult ptr %i.asz, %.0493.i
  br i1 %.not595.i, label %bb.fx, label %size_align_up.exit630.i, !prof !62

size_align_up.exit630.i:                          ; preds = %bb.fw
  %i.ata = lshr i64 %.0484.i, 1
  %i.atb = tail call i64 @llvm.umax.i64(i64 %i.ata, i64 %i.asy)
  %i.atc = add i64 %i.atb, 7
  %i.atd = and i64 %i.atc, -8
  %i.ate = add i64 %i.atd, %.0484.i               ; 4 uses
  %i.atf = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0542.i, i64 noundef %.0484.i, i64 noundef %i.ate) #33, !inline_history !371 ; 6 uses
  %.not596.i = icmp eq ptr %i.atf, null
  br i1 %.not596.i, label %.loopexit1398, label %.thread1088, !prof !45

.thread1088:                                      ; preds = %size_align_up.exit630.i
  %i.atg = ptrtoint ptr %.0504.i to i64
  %i.ath = ptrtoint ptr %.0493.i to i64           ; 2 uses
  %i.ati = sub i64 %i.atg, %i.ath                 ; 2 uses
  %i.atj = ptrtoint ptr %.0523.i to i64
  %i.atk = ptrtoint ptr %.0542.i to i64           ; 2 uses
  %i.atl = sub i64 %i.atj, %i.atk
  %i.atm = sub i64 %i.ath, %i.atk
  %i.atn = sub i64 %i.ate, %i.ati
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atf, i64 %i.atn ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atf, i64 %i.atm
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ato, ptr nonnull align 1 %i.atp, i64 %i.ati, i1 false)
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atf, i64 %i.atl
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atf, i64 %i.ate
  br label %bb.fx

bb.fx:                                            ; preds = %.thread1088, %bb.fw
  %.2544.i = phi ptr [ %i.atf, %.thread1088 ], [ %.0542.i, %bb.fw ] ; 2 uses
  %.2525.i = phi ptr [ %i.atq, %.thread1088 ], [ %.0523.i, %bb.fw ] ; 3 uses
  %.2506.i = phi ptr [ %i.atr, %.thread1088 ], [ %.0504.i, %bb.fw ]
  %.2495.i = phi ptr [ %i.ato, %.thread1088 ], [ %.0493.i, %bb.fw ]
  %.1485.i = phi i64 [ %i.ate, %.thread1088 ], [ %.0484.i, %bb.fw ]
  %.not.i7412354 = select i1 %.not594.i, i1 true, i1 %.not.i74123543286
  br i1 %.not.i7412354, label %write_indent.exit742, label %select.unfold.preheader

select.unfold.preheader:                          ; preds = %bb.fx
  br i1 %lcmp.mod5943.not, label %select.unfold.prol.loopexit, label %select.unfold.prol

select.unfold.prol:                               ; preds = %select.unfold.preheader, %select.unfold.prol
  %.0.i7402356.prol = phi ptr [ %i.att, %select.unfold.prol ], [ %.2525.i, %select.unfold.preheader ] ; 2 uses
  %.04.i7392355.prol = phi i64 [ %i.ats, %select.unfold.prol ], [ %.0482.i.ph, %select.unfold.preheader ]
  %prol.iter5944 = phi i64 [ %prol.iter5944.next, %select.unfold.prol ], [ 0, %select.unfold.preheader ]
  %i.ats = add i64 %.04.i7392355.prol, -1         ; 2 uses
  store i32 538976288, ptr %.0.i7402356.prol, align 1
  %i.att = getelementptr inbounds nuw i8, ptr %.0.i7402356.prol, i64 %i.arf ; 3 uses
  %prol.iter5944.next = add i64 %prol.iter5944, 1 ; 2 uses
  %prol.iter5944.cmp.not = icmp eq i64 %prol.iter5944.next, %xtraiter5942
  br i1 %prol.iter5944.cmp.not, label %select.unfold.prol.loopexit, label %select.unfold.prol, !llvm.loop !372

select.unfold.prol.loopexit:                      ; preds = %select.unfold.prol, %select.unfold.preheader
  %.lcssa5714.unr = phi ptr [ poison, %select.unfold.preheader ], [ %i.att, %select.unfold.prol ]
  %.0.i7402356.unr = phi ptr [ %.2525.i, %select.unfold.preheader ], [ %i.att, %select.unfold.prol ]
  %.04.i7392355.unr = phi i64 [ %.0482.i.ph, %select.unfold.preheader ], [ %i.ats, %select.unfold.prol ]
  br i1 %i.asg, label %write_indent.exit742, label %select.unfold

select.unfold:                                    ; preds = %select.unfold.prol.loopexit, %select.unfold
  %.0.i7402356 = phi ptr [ %i.auc, %select.unfold ], [ %.0.i7402356.unr, %select.unfold.prol.loopexit ] ; 2 uses
  %.04.i7392355 = phi i64 [ %i.aub, %select.unfold ], [ %.04.i7392355.unr, %select.unfold.prol.loopexit ]
  store i32 538976288, ptr %.0.i7402356, align 1
  %i.atu = getelementptr inbounds nuw i8, ptr %.0.i7402356, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atu, align 1
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atv, align 1
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atw, align 1
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atx, align 1
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.aty, align 1
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atz, align 1
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 %i.arf ; 2 uses
  %i.aub = add i64 %.04.i7392355, -8              ; 2 uses
  store i32 538976288, ptr %i.aua, align 1
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aua, i64 %i.arf ; 2 uses
  %.not.i741.7 = icmp eq i64 %i.aub, 0
  br i1 %.not.i741.7, label %write_indent.exit742, label %select.unfold, !llvm.loop !27

write_indent.exit742:                             ; preds = %select.unfold.prol.loopexit, %select.unfold, %bb.fx
  %.0.i740.lcssa = phi ptr [ %.2525.i, %bb.fx ], [ %.lcssa5714.unr, %select.unfold.prol.loopexit ], [ %i.auc, %select.unfold ] ; 5 uses
  br i1 %i.arc, label %bb.ie, label %.split.i33, !prof !62

.split.i33:                                       ; preds = %write_indent.exit742
  %i.aud = getelementptr inbounds nuw i8, ptr %i.asu, i64 %i.ass ; 3 uses
  store i8 34, ptr %.0.i740.lcssa, align 1, !tbaa !100
  %i.aue = ptrtoint ptr %i.aud to i64             ; 4 uses
  %i.auf = add i64 %i.ass, %i.asv
  br label %bb.fy

bb.fy:                                            ; preds = %bb.hj, %.split.i33
  %.pn.i309 = phi ptr [ %.0.i740.lcssa, %.split.i33 ], [ %.8253.i322, %bb.hj ]
  %.0238.i310 = phi ptr [ %i.asu, %.split.i33 ], [ %i.bby, %bb.hj ] ; 3 uses
  %.0245.i311 = getelementptr inbounds nuw i8, ptr %.pn.i309, i64 1 ; 2 uses
  %i.aug = ptrtoint ptr %.0238.i310 to i64
  %i.auh = sub i64 %i.aue, %i.aug                 ; 2 uses
  %i.aui = icmp sgt i64 %i.auh, 15
  br i1 %i.aui, label %.lr.ph2373, label %.preheader1388

.preheader1388:                                   ; preds = %bb.go, %bb.fy
  %.pre-phi3208 = phi i64 [ %i.auh, %bb.fy ], [ %i.axo, %bb.go ]
  %.1246.i312.lcssa = phi ptr [ %.0245.i311, %bb.fy ], [ %i.axl, %bb.go ] ; 2 uses
  %.1239.i313.lcssa = phi ptr [ %.0238.i310, %bb.fy ], [ %i.axm, %bb.go ] ; 2 uses
  %i.auj = icmp sgt i64 %.pre-phi3208, 3
  br i1 %i.auj, label %.lr.ph2379, label %.preheader1386

.lr.ph2373:                                       ; preds = %bb.fy, %bb.go
  %.1239.i3132372 = phi ptr [ %i.axm, %bb.go ], [ %.0238.i310, %bb.fy ] ; 46 uses
  %.1246.i3122371 = phi ptr [ %i.axl, %bb.go ], [ %.0245.i311, %bb.fy ] ; 30 uses
  %i.auk = load i8, ptr %.1239.i3132372, align 1, !tbaa !100 ; 2 uses
  %i.aul = zext i8 %i.auk to i64
  %i.aum = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.aul
  %i.aun = load i8, ptr %i.aum, align 1, !tbaa !100
  %.not272.i391 = icmp eq i8 %i.aun, 0
  br i1 %.not272.i391, label %bb.fz, label %.preheader1383.preheader, !prof !62

bb.fz:                                            ; preds = %.lr.ph2373
  %i.auo = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 1
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !100
  %i.auq = zext i8 %i.aup to i64
  %i.aur = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.auq
  %i.aus = load i8, ptr %i.aur, align 1, !tbaa !100
  %.not273.i392 = icmp eq i8 %i.aus, 0
  br i1 %.not273.i392, label %bb.ga, label %.loopexit1390, !prof !62

bb.ga:                                            ; preds = %bb.fz
  %i.aut = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 2
  %i.auu = load i8, ptr %i.aut, align 1, !tbaa !100
  %i.auv = zext i8 %i.auu to i64
  %i.auw = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.auv
  %i.aux = load i8, ptr %i.auw, align 1, !tbaa !100
  %.not274.i393 = icmp eq i8 %i.aux, 0
  br i1 %.not274.i393, label %bb.gb, label %.loopexit1391, !prof !62

bb.gb:                                            ; preds = %bb.ga
  %i.auy = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 3
  %i.auz = load i8, ptr %i.auy, align 1, !tbaa !100
  %i.ava = zext i8 %i.auz to i64
  %i.avb = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.ava
  %i.avc = load i8, ptr %i.avb, align 1, !tbaa !100
  %.not275.i394 = icmp eq i8 %i.avc, 0
  br i1 %.not275.i394, label %bb.gc, label %.loopexit1392, !prof !62

bb.gc:                                            ; preds = %bb.gb
  %i.avd = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 4
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !100
  %i.avf = zext i8 %i.ave to i64
  %i.avg = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.avf
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !100
  %.not276.i395 = icmp eq i8 %i.avh, 0
  br i1 %.not276.i395, label %bb.gd, label %bb.gv, !prof !62

bb.gd:                                            ; preds = %bb.gc
  %i.avi = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 5
  %i.avj = load i8, ptr %i.avi, align 1, !tbaa !100
  %i.avk = zext i8 %i.avj to i64
  %i.avl = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.avk
  %i.avm = load i8, ptr %i.avl, align 1, !tbaa !100
  %.not277.i396 = icmp eq i8 %i.avm, 0
  br i1 %.not277.i396, label %bb.ge, label %bb.gw, !prof !62

bb.ge:                                            ; preds = %bb.gd
  %i.avn = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 6
  %i.avo = load i8, ptr %i.avn, align 1, !tbaa !100
  %i.avp = zext i8 %i.avo to i64
  %i.avq = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.avp
  %i.avr = load i8, ptr %i.avq, align 1, !tbaa !100
  %.not278.i397 = icmp eq i8 %i.avr, 0
  br i1 %.not278.i397, label %bb.gf, label %bb.gx, !prof !62

bb.gf:                                            ; preds = %bb.ge
  %i.avs = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 7
  %i.avt = load i8, ptr %i.avs, align 1, !tbaa !100
  %i.avu = zext i8 %i.avt to i64
  %i.avv = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.avu
  %i.avw = load i8, ptr %i.avv, align 1, !tbaa !100
  %.not279.i398 = icmp eq i8 %i.avw, 0
  br i1 %.not279.i398, label %bb.gg, label %bb.gy, !prof !62

bb.gg:                                            ; preds = %bb.gf
  %i.avx = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 8
  %i.avy = load i8, ptr %i.avx, align 1, !tbaa !100
  %i.avz = zext i8 %i.avy to i64
  %i.awa = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.avz
  %i.awb = load i8, ptr %i.awa, align 1, !tbaa !100
  %.not280.i399 = icmp eq i8 %i.awb, 0
  br i1 %.not280.i399, label %bb.gh, label %bb.gz, !prof !62

bb.gh:                                            ; preds = %bb.gg
  %i.awc = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 9
  %i.awd = load i8, ptr %i.awc, align 1, !tbaa !100
  %i.awe = zext i8 %i.awd to i64
  %i.awf = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.awe
  %i.awg = load i8, ptr %i.awf, align 1, !tbaa !100
  %.not281.i400 = icmp eq i8 %i.awg, 0
  br i1 %.not281.i400, label %bb.gi, label %bb.ha, !prof !62

bb.gi:                                            ; preds = %bb.gh
  %i.awh = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 10
  %i.awi = load i8, ptr %i.awh, align 1, !tbaa !100
  %i.awj = zext i8 %i.awi to i64
  %i.awk = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.awj
  %i.awl = load i8, ptr %i.awk, align 1, !tbaa !100
  %.not282.i401 = icmp eq i8 %i.awl, 0
  br i1 %.not282.i401, label %bb.gj, label %bb.hb, !prof !62

bb.gj:                                            ; preds = %bb.gi
  %i.awm = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 11
  %i.awn = load i8, ptr %i.awm, align 1, !tbaa !100
  %i.awo = zext i8 %i.awn to i64
  %i.awp = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.awo
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !100
  %.not283.i402 = icmp eq i8 %i.awq, 0
  br i1 %.not283.i402, label %bb.gk, label %bb.hc, !prof !62

bb.gk:                                            ; preds = %bb.gj
  %i.awr = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 12
  %i.aws = load i8, ptr %i.awr, align 1, !tbaa !100
  %i.awt = zext i8 %i.aws to i64
  %i.awu = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.awt
  %i.awv = load i8, ptr %i.awu, align 1, !tbaa !100
  %.not284.i403 = icmp eq i8 %i.awv, 0
  br i1 %.not284.i403, label %bb.gl, label %bb.hd, !prof !62

bb.gl:                                            ; preds = %bb.gk
  %i.aww = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 13
  %i.awx = load i8, ptr %i.aww, align 1, !tbaa !100
  %i.awy = zext i8 %i.awx to i64
  %i.awz = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.awy
  %i.axa = load i8, ptr %i.awz, align 1, !tbaa !100
  %.not285.i404 = icmp eq i8 %i.axa, 0
  br i1 %.not285.i404, label %bb.gm, label %bb.he, !prof !62

bb.gm:                                            ; preds = %bb.gl
  %i.axb = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 14
  %i.axc = load i8, ptr %i.axb, align 1, !tbaa !100
  %i.axd = zext i8 %i.axc to i64
  %i.axe = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.axd
  %i.axf = load i8, ptr %i.axe, align 1, !tbaa !100
  %.not286.i405 = icmp eq i8 %i.axf, 0
  br i1 %.not286.i405, label %bb.gn, label %bb.hf, !prof !62

bb.gn:                                            ; preds = %bb.gm
  %i.axg = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 15
  %i.axh = load i8, ptr %i.axg, align 1, !tbaa !100
  %i.axi = zext i8 %i.axh to i64
  %i.axj = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.axi
  %i.axk = load i8, ptr %i.axj, align 1, !tbaa !100
  %.not287.i406 = icmp eq i8 %i.axk, 0
  br i1 %.not287.i406, label %bb.go, label %bb.hg, !prof !62

bb.go:                                            ; preds = %bb.gn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i3122371, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i3132372, i64 16, i1 false)
  %i.axl = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 16 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 16 ; 3 uses
  %i.axn = ptrtoint ptr %i.axm to i64
  %i.axo = sub i64 %i.aue, %i.axn                 ; 2 uses
  %i.axp = icmp sgt i64 %i.axo, 15
  br i1 %i.axp, label %.lr.ph2373, label %.preheader1388, !llvm.loop !23

.preheader1386:                                   ; preds = %bb.gt, %.preheader1388
  %.2247.i314.lcssa = phi ptr [ %.1246.i312.lcssa, %.preheader1388 ], [ %i.ayx, %bb.gt ] ; 3 uses
  %.2240.i315.lcssa = phi ptr [ %.1239.i313.lcssa, %.preheader1388 ], [ %i.ayy, %bb.gt ] ; 5 uses
  %i.axq = icmp ugt ptr %i.aud, %.2240.i315.lcssa
  br i1 %i.axq, label %.lr.ph2384.preheader, label %write_str.exit407

.lr.ph2384.preheader:                             ; preds = %.preheader1386
  %.2240.i315.lcssa3117 = ptrtoaddr ptr %.2240.i315.lcssa to i64 ; 2 uses
  %i.axr = getelementptr i8, ptr %.2240.i315.lcssa, i64 %i.ass
  %scevgep = getelementptr i8, ptr %i.axr, i64 %i.asv
  %i.axs = sub i64 0, %.2240.i315.lcssa3117
  %scevgep3118 = getelementptr i8, ptr %scevgep, i64 %i.axs
  %i.axt = sub i64 %i.auf, %.2240.i315.lcssa3117
  %i.axu = freeze i64 %i.axt                      ; 2 uses
  %i.axv = add i64 %i.axu, -1
  %xtraiter5945 = and i64 %i.axu, 3               ; 2 uses
  %lcmp.mod5946.not = icmp eq i64 %xtraiter5945, 0
  br i1 %lcmp.mod5946.not, label %.lr.ph2384.prol.loopexit, label %.lr.ph2384.prol

.lr.ph2384.prol:                                  ; preds = %.lr.ph2384.preheader, %bb.gp
  %.3241.i3172383.prol = phi ptr [ %i.aya, %bb.gp ], [ %.2240.i315.lcssa, %.lr.ph2384.preheader ] ; 3 uses
  %.3248.i3162382.prol = phi ptr [ %i.ayb, %bb.gp ], [ %.2247.i314.lcssa, %.lr.ph2384.preheader ] ; 3 uses
  %prol.iter5947 = phi i64 [ %prol.iter5947.next, %bb.gp ], [ 0, %.lr.ph2384.preheader ]
  %i.axw = load i8, ptr %.3241.i3172383.prol, align 1, !tbaa !100 ; 2 uses
  %i.axx = zext i8 %i.axw to i64
end_hunk_3
begin_hunk_4_@yyjson_val_write_opts:bb.a
  %i.ayl = load i8, ptr %i.ayk, align 1, !tbaa !100
  %.not269.i382 = icmp eq i8 %i.ayl, 0
  br i1 %.not269.i382, label %bb.gr, label %.loopexit1390, !prof !62

bb.gr:                                            ; preds = %bb.gq
  %i.aym = getelementptr inbounds nuw i8, ptr %.2240.i3152378, i64 2
  %i.ayn = load i8, ptr %i.aym, align 1, !tbaa !100
  %i.ayo = zext i8 %i.ayn to i64
  %i.ayp = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.ayo
  %i.ayq = load i8, ptr %i.ayp, align 1, !tbaa !100
  %.not270.i385 = icmp eq i8 %i.ayq, 0
  br i1 %.not270.i385, label %bb.gs, label %.loopexit1391, !prof !62

bb.gs:                                            ; preds = %bb.gr
  %i.ayr = getelementptr inbounds nuw i8, ptr %.2240.i3152378, i64 3
  %i.ays = load i8, ptr %i.ayr, align 1, !tbaa !100
  %i.ayt = zext i8 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.ayt
  %i.ayv = load i8, ptr %i.ayu, align 1, !tbaa !100
  %.not271.i388 = icmp eq i8 %i.ayv, 0
  br i1 %.not271.i388, label %bb.gt, label %.loopexit1392, !prof !62

bb.gt:                                            ; preds = %bb.gs
  %i.ayw = load i32, ptr %.2240.i3152378, align 1
  store i32 %i.ayw, ptr %.2247.i3142377, align 1
  %i.ayx = getelementptr inbounds nuw i8, ptr %.2247.i3142377, i64 4 ; 2 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %.2240.i3152378, i64 4 ; 3 uses
  %i.ayz = ptrtoint ptr %i.ayy to i64
  %i.aza = sub i64 %i.aue, %i.ayz
  %i.azb = icmp sgt i64 %i.aza, 3
  br i1 %i.azb, label %.lr.ph2379, label %.preheader1386, !llvm.loop !24

.lr.ph2384:                                       ; preds = %.lr.ph2384.prol.loopexit, %bb.gu
  %.3241.i3172383 = phi ptr [ %i.azy, %bb.gu ], [ %.3241.i3172383.unr, %.lr.ph2384.prol.loopexit ] ; 9 uses
  %.3248.i3162382 = phi ptr [ %i.azz, %bb.gu ], [ %.3248.i3162382.unr, %.lr.ph2384.prol.loopexit ] ; 6 uses
  %i.azc = load i8, ptr %.3241.i3172383, align 1, !tbaa !100 ; 2 uses
  %i.azd = zext i8 %i.azc to i64
  %i.aze = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.azd
  %i.azf = load i8, ptr %i.aze, align 1, !tbaa !100
  %.not.i319 = icmp eq i8 %i.azf, 0
  br i1 %.not.i319, label %.lr.ph2384.1, label %.preheader1383.preheader, !prof !62

.lr.ph2384.1:                                     ; preds = %.lr.ph2384
  %i.azg = getelementptr inbounds nuw i8, ptr %.3241.i3172383, i64 1
  %i.azh = getelementptr inbounds nuw i8, ptr %.3248.i3162382, i64 1 ; 2 uses
  store i8 %i.azc, ptr %.3248.i3162382, align 1, !tbaa !100
  %i.azi = load i8, ptr %i.azg, align 1, !tbaa !100 ; 2 uses
  %i.azj = zext i8 %i.azi to i64
  %i.azk = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.azj
  %i.azl = load i8, ptr %i.azk, align 1, !tbaa !100
  %.not.i319.1 = icmp eq i8 %i.azl, 0
  br i1 %.not.i319.1, label %.lr.ph2384.2, label %.preheader1383.preheader.loopexit.loopexit.split.loop.exit6668, !prof !62

.lr.ph2384.2:                                     ; preds = %.lr.ph2384.1
  %i.azm = getelementptr inbounds nuw i8, ptr %.3241.i3172383, i64 2
  %i.azn = getelementptr inbounds nuw i8, ptr %.3248.i3162382, i64 2 ; 2 uses
  store i8 %i.azi, ptr %i.azh, align 1, !tbaa !100
  %i.azo = load i8, ptr %i.azm, align 1, !tbaa !100 ; 2 uses
  %i.azp = zext i8 %i.azo to i64
  %i.azq = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.azp
  %i.azr = load i8, ptr %i.azq, align 1, !tbaa !100
  %.not.i319.2 = icmp eq i8 %i.azr, 0
  br i1 %.not.i319.2, label %.lr.ph2384.3, label %.preheader1383.preheader.loopexit.loopexit.split.loop.exit6665, !prof !62

.lr.ph2384.3:                                     ; preds = %.lr.ph2384.2
  %i.azs = getelementptr inbounds nuw i8, ptr %.3241.i3172383, i64 3
  %i.azt = getelementptr inbounds nuw i8, ptr %.3248.i3162382, i64 3 ; 2 uses
  store i8 %i.azo, ptr %i.azn, align 1, !tbaa !100
  %i.azu = load i8, ptr %i.azs, align 1, !tbaa !100 ; 2 uses
  %i.azv = zext i8 %i.azu to i64
  %i.azw = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.azv
  %i.azx = load i8, ptr %i.azw, align 1, !tbaa !100
  %.not.i319.3 = icmp eq i8 %i.azx, 0
  br i1 %.not.i319.3, label %bb.gu, label %.preheader1383.preheader.loopexit.loopexit.split.loop.exit, !prof !62

bb.gu:                                            ; preds = %.lr.ph2384.3
  %i.azy = getelementptr inbounds nuw i8, ptr %.3241.i3172383, i64 4 ; 2 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %.3248.i3162382, i64 4 ; 2 uses
  store i8 %i.azu, ptr %i.azt, align 1, !tbaa !100
  %exitcond.not.3 = icmp eq ptr %i.azy, %scevgep3118
  br i1 %exitcond.not.3, label %write_str.exit407, label %.lr.ph2384, !llvm.loop !25

.loopexit1390:                                    ; preds = %bb.fz, %bb.gq
  %i.baa = phi i8 [ %i.ayd, %bb.gq ], [ %i.auk, %bb.fz ]
  %.5250.i383 = phi ptr [ %.2247.i3142377, %bb.gq ], [ %.1246.i3122371, %bb.fz ] ; 2 uses
  %.5243.i384 = phi ptr [ %.2240.i3152378, %bb.gq ], [ %.1239.i3132372, %bb.fz ]
  store i8 %i.baa, ptr %.5250.i383, align 1
  %i.bab = getelementptr inbounds nuw i8, ptr %.5250.i383, i64 1
  %i.bac = getelementptr inbounds nuw i8, ptr %.5243.i384, i64 1
  br label %.preheader1383.preheader

.loopexit1391:                                    ; preds = %bb.ga, %bb.gr
  %.6251.i386 = phi ptr [ %.2247.i3142377, %bb.gr ], [ %.1246.i3122371, %bb.ga ] ; 2 uses
  %.6.i387 = phi ptr [ %.2240.i3152378, %bb.gr ], [ %.1239.i3132372, %bb.ga ] ; 2 uses
  %i.bad = load i16, ptr %.6.i387, align 1
  store i16 %i.bad, ptr %.6251.i386, align 1
  %i.bae = getelementptr inbounds nuw i8, ptr %.6251.i386, i64 2
  %i.baf = getelementptr inbounds nuw i8, ptr %.6.i387, i64 2
  br label %.preheader1383.preheader

.loopexit1392:                                    ; preds = %bb.gb, %bb.gs
  %.7252.i389 = phi ptr [ %.2247.i3142377, %bb.gs ], [ %.1246.i3122371, %bb.gb ] ; 2 uses
  %.7.i390 = phi ptr [ %.2240.i3152378, %bb.gs ], [ %.1239.i3132372, %bb.gb ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i389, ptr noundef nonnull align 1 dereferenceable(3) %.7.i390, i64 3, i1 false)
  %i.bag = getelementptr inbounds nuw i8, ptr %.7252.i389, i64 3
  %i.bah = getelementptr inbounds nuw i8, ptr %.7.i390, i64 3
  br label %.preheader1383.preheader

bb.gv:                                            ; preds = %bb.gc
  %i.bai = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 4
  %i.baj = load i32, ptr %.1239.i3132372, align 1
  store i32 %i.baj, ptr %.1246.i3122371, align 1
  %i.bak = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 4
  br label %.preheader1383.preheader

bb.gw:                                            ; preds = %bb.gd
  %i.bal = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i3122371, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i3132372, i64 5, i1 false)
  %i.bam = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 5
  br label %.preheader1383.preheader

bb.gx:                                            ; preds = %bb.ge
  %i.ban = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i3122371, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i3132372, i64 6, i1 false)
  %i.bao = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 6
  br label %.preheader1383.preheader

bb.gy:                                            ; preds = %bb.gf
  %i.bap = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i3122371, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i3132372, i64 7, i1 false)
  %i.baq = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 7
  br label %.preheader1383.preheader

bb.gz:                                            ; preds = %bb.gg
  %i.bar = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 8
  %i.bas = load i64, ptr %.1239.i3132372, align 1
  store i64 %i.bas, ptr %.1246.i3122371, align 1
  %i.bat = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 8
  br label %.preheader1383.preheader

bb.ha:                                            ; preds = %bb.gh
  %i.bau = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i3122371, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i3132372, i64 9, i1 false)
  %i.bav = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 9
  br label %.preheader1383.preheader

bb.hb:                                            ; preds = %bb.gi
  %i.baw = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i3122371, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i3132372, i64 10, i1 false)
  %i.bax = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 10
  br label %.preheader1383.preheader

bb.hc:                                            ; preds = %bb.gj
  %i.bay = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1246.i3122371, ptr noundef nonnull align 1 dereferenceable(11) %.1239.i3132372, i64 11, i1 false)
  %i.baz = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 11
  br label %.preheader1383.preheader

bb.hd:                                            ; preds = %bb.gk
  %i.bba = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1246.i3122371, ptr noundef nonnull align 1 dereferenceable(12) %.1239.i3132372, i64 12, i1 false)
  %i.bbb = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 12
  br label %.preheader1383.preheader

bb.he:                                            ; preds = %bb.gl
  %i.bbc = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1246.i3122371, ptr noundef nonnull align 1 dereferenceable(13) %.1239.i3132372, i64 13, i1 false)
  %i.bbd = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 13
  br label %.preheader1383.preheader

bb.hf:                                            ; preds = %bb.gm
  %i.bbe = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1246.i3122371, ptr noundef nonnull align 1 dereferenceable(14) %.1239.i3132372, i64 14, i1 false)
  %i.bbf = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 14
  br label %.preheader1383.preheader

bb.hg:                                            ; preds = %bb.gn
  %i.bbg = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1246.i3122371, ptr noundef nonnull align 1 dereferenceable(15) %.1239.i3132372, i64 15, i1 false)
  %i.bbh = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 15
  br label %.preheader1383.preheader

.preheader1383.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2384.3
  %i.bbi = getelementptr inbounds nuw i8, ptr %.3241.i3172383, i64 3
  br label %.preheader1383.preheader

.preheader1383.preheader.loopexit.loopexit.split.loop.exit6665: ; preds = %.lr.ph2384.2
  %i.bbj = getelementptr inbounds nuw i8, ptr %.3241.i3172383, i64 2
  br label %.preheader1383.preheader

.preheader1383.preheader.loopexit.loopexit.split.loop.exit6668: ; preds = %.lr.ph2384.1
  %i.bbk = getelementptr inbounds nuw i8, ptr %.3241.i3172383, i64 1
  br label %.preheader1383.preheader

.preheader1383.preheader:                         ; preds = %.lr.ph2373, %.lr.ph2379, %.lr.ph2384, %.preheader1383.preheader.loopexit.loopexit.split.loop.exit6668, %.preheader1383.preheader.loopexit.loopexit.split.loop.exit6665, %.preheader1383.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2384.prol, %.loopexit1390, %.loopexit1391, %.loopexit1392, %bb.gv, %bb.gw, %bb.gx, %bb.gy, %bb.gz, %bb.ha, %bb.hb, %bb.hc, %bb.hd, %bb.he, %bb.hf, %bb.hg
  %.8253.i322.ph = phi ptr [ %.2247.i3142377, %.lr.ph2379 ], [ %.3248.i3162382.prol, %.lr.ph2384.prol ], [ %i.bab, %.loopexit1390 ], [ %i.bae, %.loopexit1391 ], [ %i.bag, %.loopexit1392 ], [ %i.bak, %bb.gv ], [ %i.bam, %bb.gw ], [ %i.bao, %bb.gx ], [ %i.baq, %bb.gy ], [ %i.bat, %bb.gz ], [ %i.bav, %bb.ha ], [ %i.bax, %bb.hb ], [ %i.baz, %bb.hc ], [ %i.bbb, %bb.hd ], [ %i.bbd, %bb.he ], [ %i.bbf, %bb.hf ], [ %i.bbh, %bb.hg ], [ %.3248.i3162382, %.lr.ph2384 ], [ %i.azh, %.preheader1383.preheader.loopexit.loopexit.split.loop.exit6668 ], [ %i.azn, %.preheader1383.preheader.loopexit.loopexit.split.loop.exit6665 ], [ %i.azt, %.preheader1383.preheader.loopexit.loopexit.split.loop.exit ], [ %.1246.i3122371, %.lr.ph2373 ]
  %.8.i323.ph = phi ptr [ %.2240.i3152378, %.lr.ph2379 ], [ %.3241.i3172383.prol, %.lr.ph2384.prol ], [ %i.bac, %.loopexit1390 ], [ %i.baf, %.loopexit1391 ], [ %i.bah, %.loopexit1392 ], [ %i.bai, %bb.gv ], [ %i.bal, %bb.gw ], [ %i.ban, %bb.gx ], [ %i.bap, %bb.gy ], [ %i.bar, %bb.gz ], [ %i.bau, %bb.ha ], [ %i.baw, %bb.hb ], [ %i.bay, %bb.hc ], [ %i.bba, %bb.hd ], [ %i.bbc, %bb.he ], [ %i.bbe, %bb.hf ], [ %i.bbg, %bb.hg ], [ %.3241.i3172383, %.lr.ph2384 ], [ %i.bbk, %.preheader1383.preheader.loopexit.loopexit.split.loop.exit6668 ], [ %i.bbj, %.preheader1383.preheader.loopexit.loopexit.split.loop.exit6665 ], [ %i.bbi, %.preheader1383.preheader.loopexit.loopexit.split.loop.exit ], [ %.1239.i3132372, %.lr.ph2373 ]
  br label %.preheader1383

.preheader1383:                                   ; preds = %.preheader1383.backedge, %.preheader1383.preheader
  %.8253.i322 = phi ptr [ %.8253.i322.ph, %.preheader1383.preheader ], [ %.8253.i322.be, %.preheader1383.backedge ] ; 34 uses
  %.8.i323 = phi ptr [ %.8.i323.ph, %.preheader1383.preheader ], [ %.8.i323.be, %.preheader1383.backedge ] ; 23 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %.8.i323, i64 4 ; 3 uses
  %i.bbm = icmp ugt ptr %i.bbl, %i.aud            ; 2 uses
  br i1 %i.bbm, label %bb.hh, label %._crit_edge, !prof !45

._crit_edge:                                      ; preds = %.preheader1383
  %.pre = load i8, ptr %.8.i323, align 1, !tbaa !100 ; 2 uses
  %.phi.trans.insert = zext i8 %.pre to i64       ; 2 uses
  %.phi.trans.insert3164 = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %.phi.trans.insert
  %.pre3165 = load i8, ptr %.phi.trans.insert3164, align 1, !tbaa !100
  br label %bb.hi

bb.hh:                                            ; preds = %.preheader1383
  %i.bbn = ptrtoint ptr %.8.i323 to i64
  %i.bbo = sub i64 %i.aue, %i.bbn
  %i.bbp = load i8, ptr %.8.i323, align 1, !tbaa !100 ; 3 uses
  %i.bbq = zext i8 %i.bbp to i64                  ; 2 uses
  %i.bbr = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.bbq
  %i.bbs = load i8, ptr %i.bbr, align 1, !tbaa !100 ; 2 uses
  %i.bbt = lshr i8 %i.bbs, 1
  %i.bbu = zext nneg i8 %i.bbt to i64
  %i.bbv = icmp slt i64 %i.bbo, %i.bbu
  br i1 %i.bbv, label %bb.ib, label %bb.hi

bb.hi:                                            ; preds = %._crit_edge, %bb.hh
  %.pre-phi3209 = phi i64 [ %.phi.trans.insert, %._crit_edge ], [ %i.bbq, %bb.hh ]
  %i.bbw = phi i8 [ %.pre3165, %._crit_edge ], [ %i.bbs, %bb.hh ]
  %i.bbx = phi i8 [ %.pre, %._crit_edge ], [ %i.bbp, %bb.hh ] ; 2 uses
  switch i8 %i.bbw, label %write_str.exit407 [
    i8 0, label %bb.hj
    i8 4, label %bb.hk
    i8 6, label %bb.hm
    i8 8, label %bb.hr
    i8 2, label %bb.ht
    i8 3, label %bb.hu
    i8 5, label %bb.hv
    i8 7, label %bb.hx
    i8 9, label %bb.hz
    i8 1, label %bb.ib
  ]

bb.hj:                                            ; preds = %bb.hi
  %i.bby = getelementptr inbounds nuw i8, ptr %.8.i323, i64 1
  store i8 %i.bbx, ptr %.8253.i322, align 1, !tbaa !100
  br label %bb.fy

bb.hk:                                            ; preds = %bb.hi
  %i.bbz = load i16, ptr %.8.i323, align 1        ; 3 uses
  %.sroa.0990.0.insert.ext = zext i16 %i.bbz to i32 ; 2 uses
  %i.bca = and i32 %.sroa.0990.0.insert.ext, 49376
  %i.bcb = icmp ne i32 %i.bca, 32960
  %i.bcc = and i32 %.sroa.0990.0.insert.ext, 30
  %i.bcd = icmp eq i32 %i.bcc, 0
  %.not310.i377 = or i1 %i.bcb, %i.bcd
  %i.bce = trunc i16 %i.bbz to i8
  br i1 %.not310.i377, label %.thread1094, label %bb.hl, !prof !45

bb.hl:                                            ; preds = %bb.hk
  store i16 %i.bbz, ptr %.8253.i322, align 1
  %i.bcf = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 2
  %i.bcg = getelementptr inbounds nuw i8, ptr %.8.i323, i64 2
  br label %.preheader1383.backedge

bb.hm:                                            ; preds = %bb.hi
  br i1 %i.bbm, label %bb.hp, label %bb.hn, !prof !45

bb.hn:                                            ; preds = %bb.hm
  %.sroa.0.0.copyload.i335.i367 = load i32, ptr %.8.i323, align 1 ; 4 uses
  %i.bch = and i32 %.sroa.0.0.copyload.i335.i367, 12632304
  %i.bci = icmp eq i32 %i.bch, 8421600
  %i.bcj = trunc i32 %.sroa.0.0.copyload.i335.i367 to i8 ; 3 uses
  br i1 %i.bci, label %bb.ho, label %.thread1094, !prof !62

bb.ho:                                            ; preds = %bb.hn
  %i.bck = and i32 %.sroa.0.0.copyload.i335.i367, 8207
  switch i32 %i.bck, label %.critedge.i368 [
    i32 8205, label %.thread1094
    i32 0, label %.thread1094
  ], !prof !151

bb.hp:                                            ; preds = %bb.hm
  %.sroa.0.0.copyload.i327.i372 = load i16, ptr %.8.i323, align 1 ; 2 uses
  %i.bcl = getelementptr inbounds nuw i8, ptr %.8.i323, i64 2
  %i.bcm = load i8, ptr %i.bcl, align 1, !tbaa !100
  %.sroa.4.0.insert.ext.i328.i373 = zext i8 %i.bcm to i32
  %.sroa.4.0.insert.shift.i329.i374 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i328.i373, 16
  %.sroa.0.0.insert.ext.i330.i375 = zext i16 %.sroa.0.0.copyload.i327.i372 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i331.i376 = or disjoint i32 %.sroa.4.0.insert.shift.i329.i374, %.sroa.0.0.insert.ext.i330.i375 ; 2 uses
  %i.bcn = and i32 %.sroa.0.0.insert.insert.i331.i376, 12632304
  %i.bco = icmp eq i32 %i.bcn, 8421600
  %i.bcp = trunc i16 %.sroa.0.0.copyload.i327.i372 to i8 ; 3 uses
  br i1 %i.bco, label %bb.hq, label %.thread1094, !prof !62

bb.hq:                                            ; preds = %bb.hp
  %i.bcq = and i32 %.sroa.0.0.insert.ext.i330.i375, 8207
  switch i32 %i.bcq, label %.critedge.i368 [
    i32 8205, label %.thread1094
    i32 0, label %.thread1094
  ], !prof !151

.critedge.i368:                                   ; preds = %bb.hq, %bb.ho
  %storemerge = phi i32 [ %.sroa.0.0.copyload.i335.i367, %bb.ho ], [ %.sroa.0.0.insert.insert.i331.i376, %bb.hq ]
  store i32 %storemerge, ptr %.8253.i322, align 1
  %i.bcr = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 3
  %i.bcs = getelementptr inbounds nuw i8, ptr %.8.i323, i64 3
  br label %.preheader1383.backedge

bb.hr:                                            ; preds = %bb.hi
  %.sroa.0.0.copyload.i334.i358 = load i32, ptr %.8.i323, align 1 ; 6 uses
  %i.bct = and i32 %.sroa.0.0.copyload.i334.i358, -1061109512
  %i.bcu = icmp ne i32 %i.bct, -2139062032
  %i.bcv = and i32 %.sroa.0.0.copyload.i334.i358, 12295
  %.not301.i359 = icmp eq i32 %i.bcv, 0
  %or.cond.i360 = or i1 %i.bcu, %.not301.i359
  %i.bcw = trunc i32 %.sroa.0.0.copyload.i334.i358 to i8 ; 2 uses
  br i1 %or.cond.i360, label %.thread1094, label %bb.hs, !prof !139

bb.hs:                                            ; preds = %bb.hr
  %i.bcx = and i32 %.sroa.0.0.copyload.i334.i358, 4
  %i.bcy = icmp ne i32 %i.bcx, 0
  %i.bcz = and i32 %.sroa.0.0.copyload.i334.i358, 12291
  %i.bda = icmp ne i32 %i.bcz, 0
  %.not304.i361 = and i1 %i.bcy, %i.bda
  br i1 %.not304.i361, label %.thread1094, label %.critedge316.i362, !prof !45

.critedge316.i362:                                ; preds = %bb.hs
  store i32 %.sroa.0.0.copyload.i334.i358, ptr %.8253.i322, align 1
  %i.bdb = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 4
  br label %.preheader1383.backedge

bb.ht:                                            ; preds = %bb.hi
  %i.bdc = shl nuw nsw i64 %.pre-phi3209, 1
  %i.bdd = getelementptr inbounds nuw i8, ptr @esc_single_char_table, i64 %i.bdc
  %i.bde = load i16, ptr %i.bdd, align 2
  store i16 %i.bde, ptr %.8253.i322, align 1
  %i.bdf = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 2
  %i.bdg = getelementptr inbounds nuw i8, ptr %.8.i323, i64 1
  br label %.preheader1383.backedge

.preheader1383.backedge:                          ; preds = %bb.ht, %bb.hu, %bb.ic, %bb.id, %bb.hl, %.critedge.i368, %.critedge316.i362, %bb.hw, %.critedge321.i343, %.critedge325.i334
  %.8253.i322.be = phi ptr [ %i.bhf, %bb.ic ], [ %i.bcf, %bb.hl ], [ %i.bcr, %.critedge.i368 ], [ %i.bdb, %.critedge316.i362 ], [ %i.bdf, %bb.ht ], [ %i.bdn, %bb.hu ], [ %i.bei, %bb.hw ], [ %i.bff, %.critedge321.i343 ], [ %i.bhb, %.critedge325.i334 ], [ %i.bhh, %bb.id ]
  %.8.i323.be = phi ptr [ %i.bhe, %bb.ic ], [ %i.bcg, %bb.hl ], [ %i.bcs, %.critedge.i368 ], [ %i.bbl, %.critedge316.i362 ], [ %i.bdg, %bb.ht ], [ %i.bdo, %bb.hu ], [ %i.bej, %bb.hw ], [ %i.bfg, %.critedge321.i343 ], [ %i.bbl, %.critedge325.i334 ], [ %i.bhi, %bb.id ]
  br label %.preheader1383

bb.hu:                                            ; preds = %bb.hi
  store i32 808482140, ptr %.8253.i322, align 1
  %i.bdh = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 4
  %i.bdi = load i8, ptr %.8.i323, align 1, !tbaa !100
  %i.bdj = zext i8 %i.bdi to i64
  %i.bdk = shl nuw nsw i64 %i.bdj, 1
  %i.bdl = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bdk
  %i.bdm = load i16, ptr %i.bdl, align 2
  store i16 %i.bdm, ptr %i.bdh, align 1
  %i.bdn = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 6
  %i.bdo = getelementptr inbounds nuw i8, ptr %.8.i323, i64 1
  br label %.preheader1383.backedge

bb.hv:                                            ; preds = %bb.hi
  %.sroa.0.0.copyload.i332.i351 = load i16, ptr %.8.i323, align 1 ; 3 uses
  %.sroa.0987.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i351 to i32 ; 2 uses
  %i.bdp = and i32 %.sroa.0987.0.insert.ext, 49376
  %i.bdq = icmp ne i32 %i.bdp, 32960
  %i.bdr = and i32 %.sroa.0987.0.insert.ext, 30
  %i.bds = icmp eq i32 %i.bdr, 0
  %.not298.i352 = or i1 %i.bdq, %i.bds
  br i1 %.not298.i352, label %.thread1104, label %bb.hw, !prof !45

bb.hw:                                            ; preds = %bb.hv
  %i.bdt = lshr i16 %.sroa.0.0.copyload.i332.i351, 8
  %i.bdu = trunc nuw i16 %i.bdt to i8
  %i.bdv = trunc i16 %.sroa.0.0.copyload.i332.i351 to i8 ; 2 uses
  %.tr299.i353 = shl i8 %i.bdv, 6
  %i.bdw = and i8 %i.bdu, 63
  store i16 30044, ptr %.8253.i322, align 1
  %i.bdx = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 2
  %i.bdy = lshr i8 %i.bdv, 1
  %i.bdz = and i8 %i.bdy, 14
  %i.bea = zext nneg i8 %i.bdz to i64
  %i.beb = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bea
  %i.bec = load i16, ptr %i.beb, align 2
  store i16 %i.bec, ptr %i.bdx, align 1
  %i.bed = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 4
  %.narrow300.i354 = or disjoint i8 %i.bdw, %.tr299.i353
  %i.bee = zext i8 %.narrow300.i354 to i64
  %i.bef = shl nuw nsw i64 %i.bee, 1
  %i.beg = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bef
  %i.beh = load i16, ptr %i.beg, align 2
  store i16 %i.beh, ptr %i.bed, align 1
  %i.bei = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 6
  %i.bej = getelementptr inbounds nuw i8, ptr %.8.i323, i64 2
  br label %.preheader1383.backedge

bb.hx:                                            ; preds = %bb.hi
  %.sroa.0.0.copyload.i.i338 = load i16, ptr %.8.i323, align 1 ; 3 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %.8.i323, i64 2
  %i.bel = load i8, ptr %i.bek, align 1, !tbaa !100 ; 2 uses
  %.sroa.4.0.insert.ext.i.i339 = zext i8 %i.bel to i32
  %.sroa.4.0.insert.shift.i.i340 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i339, 16
  %.sroa.0.0.insert.ext.i.i341 = zext i16 %.sroa.0.0.copyload.i.i338 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i342 = or disjoint i32 %.sroa.4.0.insert.shift.i.i340, %.sroa.0.0.insert.ext.i.i341
  %i.bem = and i32 %.sroa.0.0.insert.insert.i.i342, 12632304
  %i.ben = icmp eq i32 %i.bem, 8421600
  br i1 %i.ben, label %bb.hy, label %.thread1104, !prof !62

bb.hy:                                            ; preds = %bb.hx
  %i.beo = and i32 %.sroa.0.0.insert.ext.i.i341, 8207
  switch i32 %i.beo, label %.critedge321.i343 [
    i32 8205, label %.thread1104
    i32 0, label %.thread1104
  ], !prof !151

.critedge321.i343:                                ; preds = %bb.hy
  %i.bep = zext i16 %.sroa.0.0.copyload.i.i338 to i64
  %i.beq = shl nuw nsw i64 %i.bep, 12
  %i.ber = lshr i16 %.sroa.0.0.copyload.i.i338, 2
  %i.bes = and i16 %i.ber, 4032                   ; 2 uses
  %i.bet = zext nneg i16 %i.bes to i64
  %i.beu = and i8 %i.bel, 63
  store i16 30044, ptr %.8253.i322, align 1
  %i.bev = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 2
  %.masked.i348 = or disjoint i64 %i.beq, %i.bet
  %i.bew = lshr i64 %.masked.i348, 7
  %i.bex = and i64 %i.bew, 510
  %i.bey = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bex
  %i.bez = load i16, ptr %i.bey, align 2
  store i16 %i.bez, ptr %i.bev, align 1
  %i.bfa = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 4
  %.tr294.i349 = trunc i16 %i.bes to i8
  %.narrow295.i350 = or disjoint i8 %i.beu, %.tr294.i349
  %i.bfb = zext i8 %.narrow295.i350 to i64
  %i.bfc = shl nuw nsw i64 %i.bfb, 1
  %i.bfd = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bfc
  %i.bfe = load i16, ptr %i.bfd, align 2
  store i16 %i.bfe, ptr %i.bfa, align 1
  %i.bff = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 6
  %i.bfg = getelementptr inbounds nuw i8, ptr %.8.i323, i64 3
  br label %.preheader1383.backedge

bb.hz:                                            ; preds = %bb.hi
  %.sroa.0.0.copyload.i333.i328 = load i32, ptr %.8.i323, align 1 ; 9 uses
  %i.bfh = and i32 %.sroa.0.0.copyload.i333.i328, -1061109512
  %i.bfi = icmp ne i32 %i.bfh, -2139062032
  %i.bfj = and i32 %.sroa.0.0.copyload.i333.i328, 12295
  %.not288.i329 = icmp eq i32 %i.bfj, 0
  %or.cond323.i330 = or i1 %i.bfi, %.not288.i329
  %i.bfk = lshr i32 %.sroa.0.0.copyload.i333.i328, 24
  br i1 %or.cond323.i330, label %.thread1104, label %bb.ia, !prof !139

bb.ia:                                            ; preds = %bb.hz
  %i.bfl = and i32 %.sroa.0.0.copyload.i333.i328, 4
  %i.bfm = icmp ne i32 %i.bfl, 0
  %i.bfn = and i32 %.sroa.0.0.copyload.i333.i328, 12291
  %i.bfo = icmp ne i32 %i.bfn, 0
  %.not291.i331 = and i1 %i.bfm, %i.bfo
  br i1 %.not291.i331, label %.thread1104, label %.critedge325.i334, !prof !45

.critedge325.i334:                                ; preds = %bb.ia
  %i.bfp = shl i32 %.sroa.0.0.copyload.i333.i328, 18
  %i.bfq = and i32 %i.bfp, 1835008
  %i.bfr = shl i32 %.sroa.0.0.copyload.i333.i328, 4
  %i.bfs = and i32 %i.bfr, 258048
  %i.bft = lshr i32 %.sroa.0.0.copyload.i333.i328, 10 ; 2 uses
  %i.bfu = and i32 %i.bft, 3072
  %i.bfv = and i32 %i.bfk, 63
  %i.bfw = add nsw i32 %i.bfq, -65536
  %i.bfx = add nsw i32 %i.bfw, %i.bfs             ; 2 uses
  %i.bfy = or disjoint i32 %i.bfx, %i.bfu
  %i.bfz = lshr exact i32 %i.bfx, 10
  %i.bga = add nuw nsw i32 %i.bfz, 55296
  store i16 30044, ptr %.8253.i322, align 1
  %i.bgb = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 2
  %i.bgc = lshr i32 %i.bga, 7
  %i.bgd = and i32 %i.bgc, 65534
  %i.bge = zext nneg i32 %i.bgd to i64
  %i.bgf = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bge
  %i.bgg = load i16, ptr %i.bgf, align 2
  store i16 %i.bgg, ptr %i.bgb, align 1
  %i.bgh = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 4
  %i.bgi = lshr exact i32 %i.bfy, 9
  %i.bgj = and i32 %i.bgi, 510
  %i.bgk = zext nneg i32 %i.bgj to i64
  %i.bgl = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bgk
  %i.bgm = load i16, ptr %i.bgl, align 2
  store i16 %i.bgm, ptr %i.bgh, align 1
  %i.bgn = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 6
  store i16 30044, ptr %i.bgn, align 1
  %i.bgo = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 8
  %i.bgp = lshr i32 %.sroa.0.0.copyload.i333.i328, 17
  %i.bgq = and i32 %i.bgp, 6
  %i.bgr = zext nneg i32 %i.bgq to i64
  %i.bgs = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bgr
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgs, i64 440
  %i.bgu = load i16, ptr %i.bgt, align 2
  store i16 %i.bgu, ptr %i.bgo, align 1
  %i.bgv = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 10
  %.masked = and i32 %i.bft, 192
  %i.bgw = or disjoint i32 %i.bfv, %.masked
  %i.bgx = shl nuw nsw i32 %i.bgw, 1
  %i.bgy = zext nneg i32 %i.bgx to i64
  %i.bgz = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bgy
  %i.bha = load i16, ptr %i.bgz, align 2
  store i16 %i.bha, ptr %i.bgv, align 1
  %i.bhb = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 12
  br label %.preheader1383.backedge

bb.ib:                                            ; preds = %bb.hi, %bb.hh
  %i.bhc = phi i8 [ %i.bbx, %bb.hi ], [ %i.bbp, %bb.hh ]
  br i1 %.not1291, label %.thread1094, label %.thread1104

.thread1094:                                      ; preds = %bb.hr, %bb.hs, %bb.hp, %bb.hn, %bb.hq, %bb.hq, %bb.ho, %bb.ho, %bb.hk, %bb.ib
  %i.bhd = phi i8 [ %i.bcw, %bb.hr ], [ %i.bcw, %bb.hs ], [ %i.bcp, %bb.hp ], [ %i.bcj, %bb.hn ], [ %i.bcp, %bb.hq ], [ %i.bcp, %bb.hq ], [ %i.bcj, %bb.ho ], [ %i.bcj, %bb.ho ], [ %i.bce, %bb.hk ], [ %i.bhc, %bb.ib ]
  br i1 %.not1286, label %.loopexit1370, label %bb.ic

bb.ic:                                            ; preds = %.thread1094
  %i.bhe = getelementptr inbounds nuw i8, ptr %.8.i323, i64 1
  %i.bhf = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 1
  store i8 %i.bhd, ptr %.8253.i322, align 1, !tbaa !100
  br label %.preheader1383.backedge

.thread1104:                                      ; preds = %bb.hz, %bb.ia, %bb.hx, %bb.hy, %bb.hy, %bb.hv, %bb.ib
  br i1 %.not1286, label %.loopexit1370, label %bb.id

bb.id:                                            ; preds = %.thread1104
  store i16 30044, ptr %.8253.i322, align 1
  %i.bhg = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 2
  store i32 1145456198, ptr %i.bhg, align 1
  %i.bhh = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 6
  %i.bhi = getelementptr inbounds nuw i8, ptr %.8.i323, i64 1
  br label %.preheader1383.backedge

bb.ie:                                            ; preds = %write_indent.exit742
  %i.bhj = load i64, ptr %.0565.i, align 8, !tbaa !99
  %i.bhk = and i64 %i.bhj, 24
  %.not597.i = icmp eq i64 %i.bhk, 0
  store i8 34, ptr %.0.i740.lcssa, align 1, !tbaa !100
  br i1 %.not597.i, label %.split567.i, label %bb.kl

.split567.i:                                      ; preds = %bb.ie
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.asu, i64 %i.ass ; 3 uses
  %i.bhm = ptrtoint ptr %i.bhl to i64             ; 4 uses
  %i.bhn = add i64 %i.ass, %i.asv
  br label %bb.if

bb.if:                                            ; preds = %bb.jq, %.split567.i
  %.pn.i210 = phi ptr [ %.0.i740.lcssa, %.split567.i ], [ %.8253.i223, %bb.jq ]
  %.0238.i211 = phi ptr [ %i.asu, %.split567.i ], [ %i.bpg, %bb.jq ] ; 3 uses
  %.0245.i212 = getelementptr inbounds nuw i8, ptr %.pn.i210, i64 1 ; 2 uses
  %i.bho = ptrtoint ptr %.0238.i211 to i64
  %i.bhp = sub i64 %i.bhm, %i.bho                 ; 2 uses
  %i.bhq = icmp sgt i64 %i.bhp, 15
  br i1 %i.bhq, label %.lr.ph2423, label %.preheader1374

.preheader1374:                                   ; preds = %bb.iv, %bb.if
  %.pre-phi3205 = phi i64 [ %i.bhp, %bb.if ], [ %i.bkw, %bb.iv ]
  %.1246.i213.lcssa = phi ptr [ %.0245.i212, %bb.if ], [ %i.bkt, %bb.iv ] ; 2 uses
  %.1239.i214.lcssa = phi ptr [ %.0238.i211, %bb.if ], [ %i.bku, %bb.iv ] ; 2 uses
  %i.bhr = icmp sgt i64 %.pre-phi3205, 3
  br i1 %i.bhr, label %.lr.ph2429, label %.preheader1372

.lr.ph2423:                                       ; preds = %bb.if, %bb.iv
  %.1239.i2142421 = phi ptr [ %i.bku, %bb.iv ], [ %.0238.i211, %bb.if ] ; 46 uses
  %.1246.i2132420 = phi ptr [ %i.bkt, %bb.iv ], [ %.0245.i212, %bb.if ] ; 30 uses
  %i.bhs = load i8, ptr %.1239.i2142421, align 1, !tbaa !100 ; 2 uses
  %i.bht = zext i8 %i.bhs to i64
  %i.bhu = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bht
  %i.bhv = load i8, ptr %i.bhu, align 1, !tbaa !100
  %.not272.i292 = icmp eq i8 %i.bhv, 0
  br i1 %.not272.i292, label %bb.ig, label %.preheader1369.preheader, !prof !62

bb.ig:                                            ; preds = %.lr.ph2423
  %i.bhw = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 1
  %i.bhx = load i8, ptr %i.bhw, align 1, !tbaa !100
  %i.bhy = zext i8 %i.bhx to i64
  %i.bhz = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bhy
  %i.bia = load i8, ptr %i.bhz, align 1, !tbaa !100
  %.not273.i293 = icmp eq i8 %i.bia, 0
  br i1 %.not273.i293, label %bb.ih, label %.loopexit1376, !prof !62

bb.ih:                                            ; preds = %bb.ig
  %i.bib = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 2
  %i.bic = load i8, ptr %i.bib, align 1, !tbaa !100
  %i.bid = zext i8 %i.bic to i64
  %i.bie = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bid
  %i.bif = load i8, ptr %i.bie, align 1, !tbaa !100
  %.not274.i294 = icmp eq i8 %i.bif, 0
  br i1 %.not274.i294, label %bb.ii, label %.loopexit1377, !prof !62

bb.ii:                                            ; preds = %bb.ih
  %i.big = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 3
  %i.bih = load i8, ptr %i.big, align 1, !tbaa !100
  %i.bii = zext i8 %i.bih to i64
  %i.bij = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bii
  %i.bik = load i8, ptr %i.bij, align 1, !tbaa !100
  %.not275.i295 = icmp eq i8 %i.bik, 0
  br i1 %.not275.i295, label %bb.ij, label %.loopexit1378, !prof !62

bb.ij:                                            ; preds = %bb.ii
  %i.bil = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 4
  %i.bim = load i8, ptr %i.bil, align 1, !tbaa !100
  %i.bin = zext i8 %i.bim to i64
  %i.bio = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bin
  %i.bip = load i8, ptr %i.bio, align 1, !tbaa !100
  %.not276.i296 = icmp eq i8 %i.bip, 0
  br i1 %.not276.i296, label %bb.ik, label %bb.jc, !prof !62

bb.ik:                                            ; preds = %bb.ij
  %i.biq = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 5
  %i.bir = load i8, ptr %i.biq, align 1, !tbaa !100
  %i.bis = zext i8 %i.bir to i64
  %i.bit = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bis
  %i.biu = load i8, ptr %i.bit, align 1, !tbaa !100
  %.not277.i297 = icmp eq i8 %i.biu, 0
  br i1 %.not277.i297, label %bb.il, label %bb.jd, !prof !62

bb.il:                                            ; preds = %bb.ik
  %i.biv = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 6
  %i.biw = load i8, ptr %i.biv, align 1, !tbaa !100
  %i.bix = zext i8 %i.biw to i64
  %i.biy = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bix
  %i.biz = load i8, ptr %i.biy, align 1, !tbaa !100
  %.not278.i298 = icmp eq i8 %i.biz, 0
  br i1 %.not278.i298, label %bb.im, label %bb.je, !prof !62

bb.im:                                            ; preds = %bb.il
  %i.bja = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 7
  %i.bjb = load i8, ptr %i.bja, align 1, !tbaa !100
  %i.bjc = zext i8 %i.bjb to i64
  %i.bjd = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjc
  %i.bje = load i8, ptr %i.bjd, align 1, !tbaa !100
  %.not279.i299 = icmp eq i8 %i.bje, 0
  br i1 %.not279.i299, label %bb.in, label %bb.jf, !prof !62

bb.in:                                            ; preds = %bb.im
  %i.bjf = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 8
  %i.bjg = load i8, ptr %i.bjf, align 1, !tbaa !100
  %i.bjh = zext i8 %i.bjg to i64
  %i.bji = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjh
  %i.bjj = load i8, ptr %i.bji, align 1, !tbaa !100
  %.not280.i300 = icmp eq i8 %i.bjj, 0
  br i1 %.not280.i300, label %bb.io, label %bb.jg, !prof !62

bb.io:                                            ; preds = %bb.in
  %i.bjk = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 9
  %i.bjl = load i8, ptr %i.bjk, align 1, !tbaa !100
  %i.bjm = zext i8 %i.bjl to i64
  %i.bjn = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjm
  %i.bjo = load i8, ptr %i.bjn, align 1, !tbaa !100
  %.not281.i301 = icmp eq i8 %i.bjo, 0
  br i1 %.not281.i301, label %bb.ip, label %bb.jh, !prof !62

bb.ip:                                            ; preds = %bb.io
  %i.bjp = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 10
  %i.bjq = load i8, ptr %i.bjp, align 1, !tbaa !100
  %i.bjr = zext i8 %i.bjq to i64
  %i.bjs = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjr
  %i.bjt = load i8, ptr %i.bjs, align 1, !tbaa !100
  %.not282.i302 = icmp eq i8 %i.bjt, 0
  br i1 %.not282.i302, label %bb.iq, label %bb.ji, !prof !62

bb.iq:                                            ; preds = %bb.ip
  %i.bju = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 11
  %i.bjv = load i8, ptr %i.bju, align 1, !tbaa !100
  %i.bjw = zext i8 %i.bjv to i64
  %i.bjx = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjw
  %i.bjy = load i8, ptr %i.bjx, align 1, !tbaa !100
  %.not283.i303 = icmp eq i8 %i.bjy, 0
  br i1 %.not283.i303, label %bb.ir, label %bb.jj, !prof !62

bb.ir:                                            ; preds = %bb.iq
  %i.bjz = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 12
  %i.bka = load i8, ptr %i.bjz, align 1, !tbaa !100
  %i.bkb = zext i8 %i.bka to i64
  %i.bkc = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bkb
  %i.bkd = load i8, ptr %i.bkc, align 1, !tbaa !100
  %.not284.i304 = icmp eq i8 %i.bkd, 0
  br i1 %.not284.i304, label %bb.is, label %bb.jk, !prof !62

bb.is:                                            ; preds = %bb.ir
  %i.bke = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 13
  %i.bkf = load i8, ptr %i.bke, align 1, !tbaa !100
  %i.bkg = zext i8 %i.bkf to i64
  %i.bkh = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bkg
  %i.bki = load i8, ptr %i.bkh, align 1, !tbaa !100
  %.not285.i305 = icmp eq i8 %i.bki, 0
  br i1 %.not285.i305, label %bb.it, label %bb.jl, !prof !62

bb.it:                                            ; preds = %bb.is
  %i.bkj = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 14
  %i.bkk = load i8, ptr %i.bkj, align 1, !tbaa !100
  %i.bkl = zext i8 %i.bkk to i64
  %i.bkm = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bkl
  %i.bkn = load i8, ptr %i.bkm, align 1, !tbaa !100
  %.not286.i306 = icmp eq i8 %i.bkn, 0
  br i1 %.not286.i306, label %bb.iu, label %bb.jm, !prof !62

bb.iu:                                            ; preds = %bb.it
  %i.bko = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 15
  %i.bkp = load i8, ptr %i.bko, align 1, !tbaa !100
  %i.bkq = zext i8 %i.bkp to i64
  %i.bkr = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bkq
  %i.bks = load i8, ptr %i.bkr, align 1, !tbaa !100
  %.not287.i307 = icmp eq i8 %i.bks, 0
  br i1 %.not287.i307, label %bb.iv, label %bb.jn, !prof !62

bb.iv:                                            ; preds = %bb.iu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i2132420, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i2142421, i64 16, i1 false)
  %i.bkt = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 16 ; 2 uses
  %i.bku = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 16 ; 3 uses
  %i.bkv = ptrtoint ptr %i.bku to i64
  %i.bkw = sub i64 %i.bhm, %i.bkv                 ; 2 uses
  %i.bkx = icmp sgt i64 %i.bkw, 15
  br i1 %i.bkx, label %.lr.ph2423, label %.preheader1374, !llvm.loop !23

.preheader1372:                                   ; preds = %bb.ja, %.preheader1374
  %.2247.i215.lcssa = phi ptr [ %.1246.i213.lcssa, %.preheader1374 ], [ %i.bmf, %bb.ja ] ; 3 uses
  %.2240.i216.lcssa = phi ptr [ %.1239.i214.lcssa, %.preheader1374 ], [ %i.bmg, %bb.ja ] ; 5 uses
  %i.bky = icmp ugt ptr %i.bhl, %.2240.i216.lcssa
  br i1 %i.bky, label %.lr.ph2434.preheader, label %write_str.exit407

.lr.ph2434.preheader:                             ; preds = %.preheader1372
  %.2240.i216.lcssa3120 = ptrtoaddr ptr %.2240.i216.lcssa to i64 ; 2 uses
  %i.bkz = getelementptr i8, ptr %.2240.i216.lcssa, i64 %i.ass
  %scevgep3119 = getelementptr i8, ptr %i.bkz, i64 %i.asv
  %i.bla = sub i64 0, %.2240.i216.lcssa3120
  %scevgep3121 = getelementptr i8, ptr %scevgep3119, i64 %i.bla
  %i.blb = sub i64 %i.bhn, %.2240.i216.lcssa3120
  %i.blc = freeze i64 %i.blb                      ; 2 uses
  %i.bld = add i64 %i.blc, -1
  %xtraiter5955 = and i64 %i.blc, 3               ; 2 uses
  %lcmp.mod5956.not = icmp eq i64 %xtraiter5955, 0
  br i1 %lcmp.mod5956.not, label %.lr.ph2434.prol.loopexit, label %.lr.ph2434.prol

.lr.ph2434.prol:                                  ; preds = %.lr.ph2434.preheader, %bb.iw
  %.3241.i2182433.prol = phi ptr [ %i.bli, %bb.iw ], [ %.2240.i216.lcssa, %.lr.ph2434.preheader ] ; 3 uses
  %.3248.i2172432.prol = phi ptr [ %i.blj, %bb.iw ], [ %.2247.i215.lcssa, %.lr.ph2434.preheader ] ; 3 uses
  %prol.iter5957 = phi i64 [ %prol.iter5957.next, %bb.iw ], [ 0, %.lr.ph2434.preheader ]
  %i.ble = load i8, ptr %.3241.i2182433.prol, align 1, !tbaa !100 ; 2 uses
  %i.blf = zext i8 %i.ble to i64
  %i.blg = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.blf
end_hunk_4
begin_hunk_5_@yyjson_val_write_opts:bb.a
  %i.blt = load i8, ptr %i.bls, align 1, !tbaa !100
  %.not269.i283 = icmp eq i8 %i.blt, 0
  br i1 %.not269.i283, label %bb.iy, label %.loopexit1376, !prof !62

bb.iy:                                            ; preds = %bb.ix
  %i.blu = getelementptr inbounds nuw i8, ptr %.2240.i2162428, i64 2
  %i.blv = load i8, ptr %i.blu, align 1, !tbaa !100
  %i.blw = zext i8 %i.blv to i64
  %i.blx = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.blw
  %i.bly = load i8, ptr %i.blx, align 1, !tbaa !100
  %.not270.i286 = icmp eq i8 %i.bly, 0
  br i1 %.not270.i286, label %bb.iz, label %.loopexit1377, !prof !62

bb.iz:                                            ; preds = %bb.iy
  %i.blz = getelementptr inbounds nuw i8, ptr %.2240.i2162428, i64 3
  %i.bma = load i8, ptr %i.blz, align 1, !tbaa !100
  %i.bmb = zext i8 %i.bma to i64
  %i.bmc = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bmb
  %i.bmd = load i8, ptr %i.bmc, align 1, !tbaa !100
  %.not271.i289 = icmp eq i8 %i.bmd, 0
  br i1 %.not271.i289, label %bb.ja, label %.loopexit1378, !prof !62

bb.ja:                                            ; preds = %bb.iz
  %i.bme = load i32, ptr %.2240.i2162428, align 1
  store i32 %i.bme, ptr %.2247.i2152427, align 1
  %i.bmf = getelementptr inbounds nuw i8, ptr %.2247.i2152427, i64 4 ; 2 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %.2240.i2162428, i64 4 ; 3 uses
  %i.bmh = ptrtoint ptr %i.bmg to i64
  %i.bmi = sub i64 %i.bhm, %i.bmh
  %i.bmj = icmp sgt i64 %i.bmi, 3
  br i1 %i.bmj, label %.lr.ph2429, label %.preheader1372, !llvm.loop !24

.lr.ph2434:                                       ; preds = %.lr.ph2434.prol.loopexit, %bb.jb
  %.3241.i2182433 = phi ptr [ %i.bng, %bb.jb ], [ %.3241.i2182433.unr, %.lr.ph2434.prol.loopexit ] ; 9 uses
  %.3248.i2172432 = phi ptr [ %i.bnh, %bb.jb ], [ %.3248.i2172432.unr, %.lr.ph2434.prol.loopexit ] ; 6 uses
  %i.bmk = load i8, ptr %.3241.i2182433, align 1, !tbaa !100 ; 2 uses
  %i.bml = zext i8 %i.bmk to i64
  %i.bmm = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bml
  %i.bmn = load i8, ptr %i.bmm, align 1, !tbaa !100
  %.not.i220 = icmp eq i8 %i.bmn, 0
  br i1 %.not.i220, label %.lr.ph2434.1, label %.preheader1369.preheader, !prof !62

.lr.ph2434.1:                                     ; preds = %.lr.ph2434
  %i.bmo = getelementptr inbounds nuw i8, ptr %.3241.i2182433, i64 1
  %i.bmp = getelementptr inbounds nuw i8, ptr %.3248.i2172432, i64 1 ; 2 uses
  store i8 %i.bmk, ptr %.3248.i2172432, align 1, !tbaa !100
  %i.bmq = load i8, ptr %i.bmo, align 1, !tbaa !100 ; 2 uses
  %i.bmr = zext i8 %i.bmq to i64
  %i.bms = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bmr
  %i.bmt = load i8, ptr %i.bms, align 1, !tbaa !100
  %.not.i220.1 = icmp eq i8 %i.bmt, 0
  br i1 %.not.i220.1, label %.lr.ph2434.2, label %.preheader1369.preheader.loopexit.loopexit.split.loop.exit6680, !prof !62

.lr.ph2434.2:                                     ; preds = %.lr.ph2434.1
  %i.bmu = getelementptr inbounds nuw i8, ptr %.3241.i2182433, i64 2
  %i.bmv = getelementptr inbounds nuw i8, ptr %.3248.i2172432, i64 2 ; 2 uses
  store i8 %i.bmq, ptr %i.bmp, align 1, !tbaa !100
  %i.bmw = load i8, ptr %i.bmu, align 1, !tbaa !100 ; 2 uses
  %i.bmx = zext i8 %i.bmw to i64
  %i.bmy = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bmx
  %i.bmz = load i8, ptr %i.bmy, align 1, !tbaa !100
  %.not.i220.2 = icmp eq i8 %i.bmz, 0
  br i1 %.not.i220.2, label %.lr.ph2434.3, label %.preheader1369.preheader.loopexit.loopexit.split.loop.exit6677, !prof !62

.lr.ph2434.3:                                     ; preds = %.lr.ph2434.2
  %i.bna = getelementptr inbounds nuw i8, ptr %.3241.i2182433, i64 3
  %i.bnb = getelementptr inbounds nuw i8, ptr %.3248.i2172432, i64 3 ; 2 uses
  store i8 %i.bmw, ptr %i.bmv, align 1, !tbaa !100
  %i.bnc = load i8, ptr %i.bna, align 1, !tbaa !100 ; 2 uses
  %i.bnd = zext i8 %i.bnc to i64
  %i.bne = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bnd
  %i.bnf = load i8, ptr %i.bne, align 1, !tbaa !100
  %.not.i220.3 = icmp eq i8 %i.bnf, 0
  br i1 %.not.i220.3, label %bb.jb, label %.preheader1369.preheader.loopexit.loopexit.split.loop.exit, !prof !62

bb.jb:                                            ; preds = %.lr.ph2434.3
  %i.bng = getelementptr inbounds nuw i8, ptr %.3241.i2182433, i64 4 ; 2 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %.3248.i2172432, i64 4 ; 2 uses
  store i8 %i.bnc, ptr %i.bnb, align 1, !tbaa !100
  %exitcond3122.not.3 = icmp eq ptr %i.bng, %scevgep3121
  br i1 %exitcond3122.not.3, label %write_str.exit407, label %.lr.ph2434, !llvm.loop !25

.loopexit1376:                                    ; preds = %bb.ig, %bb.ix
  %i.bni = phi i8 [ %i.bll, %bb.ix ], [ %i.bhs, %bb.ig ]
  %.5250.i284 = phi ptr [ %.2247.i2152427, %bb.ix ], [ %.1246.i2132420, %bb.ig ] ; 2 uses
  %.5243.i285 = phi ptr [ %.2240.i2162428, %bb.ix ], [ %.1239.i2142421, %bb.ig ]
  store i8 %i.bni, ptr %.5250.i284, align 1
  %i.bnj = getelementptr inbounds nuw i8, ptr %.5250.i284, i64 1
  %i.bnk = getelementptr inbounds nuw i8, ptr %.5243.i285, i64 1
  br label %.preheader1369.preheader

.loopexit1377:                                    ; preds = %bb.ih, %bb.iy
  %.6251.i287 = phi ptr [ %.2247.i2152427, %bb.iy ], [ %.1246.i2132420, %bb.ih ] ; 2 uses
  %.6.i288 = phi ptr [ %.2240.i2162428, %bb.iy ], [ %.1239.i2142421, %bb.ih ] ; 2 uses
  %i.bnl = load i16, ptr %.6.i288, align 1
  store i16 %i.bnl, ptr %.6251.i287, align 1
  %i.bnm = getelementptr inbounds nuw i8, ptr %.6251.i287, i64 2
  %i.bnn = getelementptr inbounds nuw i8, ptr %.6.i288, i64 2
  br label %.preheader1369.preheader

.loopexit1378:                                    ; preds = %bb.ii, %bb.iz
  %.7252.i290 = phi ptr [ %.2247.i2152427, %bb.iz ], [ %.1246.i2132420, %bb.ii ] ; 2 uses
  %.7.i291 = phi ptr [ %.2240.i2162428, %bb.iz ], [ %.1239.i2142421, %bb.ii ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i290, ptr noundef nonnull align 1 dereferenceable(3) %.7.i291, i64 3, i1 false)
  %i.bno = getelementptr inbounds nuw i8, ptr %.7252.i290, i64 3
  %i.bnp = getelementptr inbounds nuw i8, ptr %.7.i291, i64 3
  br label %.preheader1369.preheader

bb.jc:                                            ; preds = %bb.ij
  %i.bnq = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 4
  %i.bnr = load i32, ptr %.1239.i2142421, align 1
  store i32 %i.bnr, ptr %.1246.i2132420, align 1
  %i.bns = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 4
  br label %.preheader1369.preheader

bb.jd:                                            ; preds = %bb.ik
  %i.bnt = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i2132420, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i2142421, i64 5, i1 false)
  %i.bnu = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 5
  br label %.preheader1369.preheader

bb.je:                                            ; preds = %bb.il
  %i.bnv = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i2132420, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i2142421, i64 6, i1 false)
  %i.bnw = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 6
  br label %.preheader1369.preheader

bb.jf:                                            ; preds = %bb.im
  %i.bnx = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i2132420, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i2142421, i64 7, i1 false)
  %i.bny = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 7
  br label %.preheader1369.preheader

bb.jg:                                            ; preds = %bb.in
  %i.bnz = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 8
  %i.boa = load i64, ptr %.1239.i2142421, align 1
  store i64 %i.boa, ptr %.1246.i2132420, align 1
  %i.bob = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 8
  br label %.preheader1369.preheader

bb.jh:                                            ; preds = %bb.io
  %i.boc = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i2132420, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i2142421, i64 9, i1 false)
  %i.bod = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 9
  br label %.preheader1369.preheader

bb.ji:                                            ; preds = %bb.ip
  %i.boe = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i2132420, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i2142421, i64 10, i1 false)
  %i.bof = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 10
  br label %.preheader1369.preheader

bb.jj:                                            ; preds = %bb.iq
  %i.bog = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1246.i2132420, ptr noundef nonnull align 1 dereferenceable(11) %.1239.i2142421, i64 11, i1 false)
  %i.boh = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 11
  br label %.preheader1369.preheader

bb.jk:                                            ; preds = %bb.ir
  %i.boi = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1246.i2132420, ptr noundef nonnull align 1 dereferenceable(12) %.1239.i2142421, i64 12, i1 false)
  %i.boj = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 12
  br label %.preheader1369.preheader

bb.jl:                                            ; preds = %bb.is
  %i.bok = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1246.i2132420, ptr noundef nonnull align 1 dereferenceable(13) %.1239.i2142421, i64 13, i1 false)
  %i.bol = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 13
  br label %.preheader1369.preheader

bb.jm:                                            ; preds = %bb.it
  %i.bom = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1246.i2132420, ptr noundef nonnull align 1 dereferenceable(14) %.1239.i2142421, i64 14, i1 false)
  %i.bon = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 14
  br label %.preheader1369.preheader

bb.jn:                                            ; preds = %bb.iu
  %i.boo = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1246.i2132420, ptr noundef nonnull align 1 dereferenceable(15) %.1239.i2142421, i64 15, i1 false)
  %i.bop = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 15
  br label %.preheader1369.preheader

.preheader1369.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2434.3
  %i.boq = getelementptr inbounds nuw i8, ptr %.3241.i2182433, i64 3
  br label %.preheader1369.preheader

.preheader1369.preheader.loopexit.loopexit.split.loop.exit6677: ; preds = %.lr.ph2434.2
  %i.bor = getelementptr inbounds nuw i8, ptr %.3241.i2182433, i64 2
  br label %.preheader1369.preheader

.preheader1369.preheader.loopexit.loopexit.split.loop.exit6680: ; preds = %.lr.ph2434.1
  %i.bos = getelementptr inbounds nuw i8, ptr %.3241.i2182433, i64 1
  br label %.preheader1369.preheader

.preheader1369.preheader:                         ; preds = %.lr.ph2423, %.lr.ph2429, %.lr.ph2434, %.preheader1369.preheader.loopexit.loopexit.split.loop.exit6680, %.preheader1369.preheader.loopexit.loopexit.split.loop.exit6677, %.preheader1369.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2434.prol, %.loopexit1376, %.loopexit1377, %.loopexit1378, %bb.jc, %bb.jd, %bb.je, %bb.jf, %bb.jg, %bb.jh, %bb.ji, %bb.jj, %bb.jk, %bb.jl, %bb.jm, %bb.jn
  %.8253.i223.ph = phi ptr [ %.2247.i2152427, %.lr.ph2429 ], [ %.3248.i2172432.prol, %.lr.ph2434.prol ], [ %i.bnj, %.loopexit1376 ], [ %i.bnm, %.loopexit1377 ], [ %i.bno, %.loopexit1378 ], [ %i.bns, %bb.jc ], [ %i.bnu, %bb.jd ], [ %i.bnw, %bb.je ], [ %i.bny, %bb.jf ], [ %i.bob, %bb.jg ], [ %i.bod, %bb.jh ], [ %i.bof, %bb.ji ], [ %i.boh, %bb.jj ], [ %i.boj, %bb.jk ], [ %i.bol, %bb.jl ], [ %i.bon, %bb.jm ], [ %i.bop, %bb.jn ], [ %.3248.i2172432, %.lr.ph2434 ], [ %i.bmp, %.preheader1369.preheader.loopexit.loopexit.split.loop.exit6680 ], [ %i.bmv, %.preheader1369.preheader.loopexit.loopexit.split.loop.exit6677 ], [ %i.bnb, %.preheader1369.preheader.loopexit.loopexit.split.loop.exit ], [ %.1246.i2132420, %.lr.ph2423 ]
  %.8.i224.ph = phi ptr [ %.2240.i2162428, %.lr.ph2429 ], [ %.3241.i2182433.prol, %.lr.ph2434.prol ], [ %i.bnk, %.loopexit1376 ], [ %i.bnn, %.loopexit1377 ], [ %i.bnp, %.loopexit1378 ], [ %i.bnq, %bb.jc ], [ %i.bnt, %bb.jd ], [ %i.bnv, %bb.je ], [ %i.bnx, %bb.jf ], [ %i.bnz, %bb.jg ], [ %i.boc, %bb.jh ], [ %i.boe, %bb.ji ], [ %i.bog, %bb.jj ], [ %i.boi, %bb.jk ], [ %i.bok, %bb.jl ], [ %i.bom, %bb.jm ], [ %i.boo, %bb.jn ], [ %.3241.i2182433, %.lr.ph2434 ], [ %i.bos, %.preheader1369.preheader.loopexit.loopexit.split.loop.exit6680 ], [ %i.bor, %.preheader1369.preheader.loopexit.loopexit.split.loop.exit6677 ], [ %i.boq, %.preheader1369.preheader.loopexit.loopexit.split.loop.exit ], [ %.1239.i2142421, %.lr.ph2423 ]
  br label %.preheader1369

.preheader1369:                                   ; preds = %.preheader1369.backedge, %.preheader1369.preheader
  %.8253.i223 = phi ptr [ %.8253.i223.ph, %.preheader1369.preheader ], [ %.8253.i223.be, %.preheader1369.backedge ] ; 34 uses
  %.8.i224 = phi ptr [ %.8.i224.ph, %.preheader1369.preheader ], [ %.8.i224.be, %.preheader1369.backedge ] ; 23 uses
  %i.bot = getelementptr inbounds nuw i8, ptr %.8.i224, i64 4 ; 3 uses
  %i.bou = icmp ugt ptr %i.bot, %i.bhl            ; 2 uses
  br i1 %i.bou, label %bb.jo, label %._crit_edge3166, !prof !45

._crit_edge3166:                                  ; preds = %.preheader1369
  %.pre3167 = load i8, ptr %.8.i224, align 1, !tbaa !100 ; 2 uses
  %.phi.trans.insert3168 = zext i8 %.pre3167 to i64 ; 2 uses
  %.phi.trans.insert3169 = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %.phi.trans.insert3168
  %.pre3170 = load i8, ptr %.phi.trans.insert3169, align 1, !tbaa !100
  br label %bb.jp

bb.jo:                                            ; preds = %.preheader1369
  %i.bov = ptrtoint ptr %.8.i224 to i64
  %i.bow = sub i64 %i.bhm, %i.bov
  %i.box = load i8, ptr %.8.i224, align 1, !tbaa !100 ; 3 uses
  %i.boy = zext i8 %i.box to i64                  ; 2 uses
  %i.boz = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.boy
  %i.bpa = load i8, ptr %i.boz, align 1, !tbaa !100 ; 2 uses
  %i.bpb = lshr i8 %i.bpa, 1
  %i.bpc = zext nneg i8 %i.bpb to i64
  %i.bpd = icmp slt i64 %i.bow, %i.bpc
  br i1 %i.bpd, label %bb.ki, label %bb.jp

bb.jp:                                            ; preds = %._crit_edge3166, %bb.jo
  %.pre-phi3206 = phi i64 [ %.phi.trans.insert3168, %._crit_edge3166 ], [ %i.boy, %bb.jo ]
  %i.bpe = phi i8 [ %.pre3170, %._crit_edge3166 ], [ %i.bpa, %bb.jo ]
  %i.bpf = phi i8 [ %.pre3167, %._crit_edge3166 ], [ %i.box, %bb.jo ] ; 2 uses
  switch i8 %i.bpe, label %write_str.exit407 [
    i8 0, label %bb.jq
    i8 4, label %bb.jr
    i8 6, label %bb.jt
    i8 8, label %bb.jy
    i8 2, label %bb.ka
    i8 3, label %bb.kb
    i8 5, label %bb.kc
    i8 7, label %bb.ke
    i8 9, label %bb.kg
    i8 1, label %bb.ki
  ]

bb.jq:                                            ; preds = %bb.jp
  %i.bpg = getelementptr inbounds nuw i8, ptr %.8.i224, i64 1
  store i8 %i.bpf, ptr %.8253.i223, align 1, !tbaa !100
  br label %bb.if

bb.jr:                                            ; preds = %bb.jp
  %i.bph = load i16, ptr %.8.i224, align 1        ; 3 uses
  %.sroa.0975.0.insert.ext = zext i16 %i.bph to i32 ; 2 uses
  %i.bpi = and i32 %.sroa.0975.0.insert.ext, 49376
  %i.bpj = icmp ne i32 %i.bpi, 32960
  %i.bpk = and i32 %.sroa.0975.0.insert.ext, 30
  %i.bpl = icmp eq i32 %i.bpk, 0
  %.not310.i278 = or i1 %i.bpj, %i.bpl
  %i.bpm = trunc i16 %i.bph to i8
  br i1 %.not310.i278, label %.thread1114, label %bb.js, !prof !45

bb.js:                                            ; preds = %bb.jr
  store i16 %i.bph, ptr %.8253.i223, align 1
  %i.bpn = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 2
  %i.bpo = getelementptr inbounds nuw i8, ptr %.8.i224, i64 2
  br label %.preheader1369.backedge

bb.jt:                                            ; preds = %bb.jp
  br i1 %i.bou, label %bb.jw, label %bb.ju, !prof !45

bb.ju:                                            ; preds = %bb.jt
  %.sroa.0.0.copyload.i335.i268 = load i32, ptr %.8.i224, align 1 ; 4 uses
  %i.bpp = and i32 %.sroa.0.0.copyload.i335.i268, 12632304
  %i.bpq = icmp eq i32 %i.bpp, 8421600
  %i.bpr = trunc i32 %.sroa.0.0.copyload.i335.i268 to i8 ; 3 uses
  br i1 %i.bpq, label %bb.jv, label %.thread1114, !prof !62

bb.jv:                                            ; preds = %bb.ju
  %i.bps = and i32 %.sroa.0.0.copyload.i335.i268, 8207
  switch i32 %i.bps, label %.critedge.i269 [
    i32 8205, label %.thread1114
    i32 0, label %.thread1114
  ], !prof !151

bb.jw:                                            ; preds = %bb.jt
  %.sroa.0.0.copyload.i327.i273 = load i16, ptr %.8.i224, align 1 ; 2 uses
  %i.bpt = getelementptr inbounds nuw i8, ptr %.8.i224, i64 2
  %i.bpu = load i8, ptr %i.bpt, align 1, !tbaa !100
  %.sroa.4.0.insert.ext.i328.i274 = zext i8 %i.bpu to i32
  %.sroa.4.0.insert.shift.i329.i275 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i328.i274, 16
  %.sroa.0.0.insert.ext.i330.i276 = zext i16 %.sroa.0.0.copyload.i327.i273 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i331.i277 = or disjoint i32 %.sroa.4.0.insert.shift.i329.i275, %.sroa.0.0.insert.ext.i330.i276 ; 2 uses
  %i.bpv = and i32 %.sroa.0.0.insert.insert.i331.i277, 12632304
  %i.bpw = icmp eq i32 %i.bpv, 8421600
  %i.bpx = trunc i16 %.sroa.0.0.copyload.i327.i273 to i8 ; 3 uses
  br i1 %i.bpw, label %bb.jx, label %.thread1114, !prof !62

bb.jx:                                            ; preds = %bb.jw
  %i.bpy = and i32 %.sroa.0.0.insert.ext.i330.i276, 8207
  switch i32 %i.bpy, label %.critedge.i269 [
    i32 8205, label %.thread1114
    i32 0, label %.thread1114
  ], !prof !151

.critedge.i269:                                   ; preds = %bb.jx, %bb.jv
  %storemerge1289 = phi i32 [ %.sroa.0.0.copyload.i335.i268, %bb.jv ], [ %.sroa.0.0.insert.insert.i331.i277, %bb.jx ]
  store i32 %storemerge1289, ptr %.8253.i223, align 1
  %i.bpz = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 3
  %i.bqa = getelementptr inbounds nuw i8, ptr %.8.i224, i64 3
  br label %.preheader1369.backedge

bb.jy:                                            ; preds = %bb.jp
  %.sroa.0.0.copyload.i334.i259 = load i32, ptr %.8.i224, align 1 ; 6 uses
  %i.bqb = and i32 %.sroa.0.0.copyload.i334.i259, -1061109512
  %i.bqc = icmp ne i32 %i.bqb, -2139062032
  %i.bqd = and i32 %.sroa.0.0.copyload.i334.i259, 12295
  %.not301.i260 = icmp eq i32 %i.bqd, 0
  %or.cond.i261 = or i1 %i.bqc, %.not301.i260
  %i.bqe = trunc i32 %.sroa.0.0.copyload.i334.i259 to i8 ; 2 uses
  br i1 %or.cond.i261, label %.thread1114, label %bb.jz, !prof !139

bb.jz:                                            ; preds = %bb.jy
  %i.bqf = and i32 %.sroa.0.0.copyload.i334.i259, 4
  %i.bqg = icmp ne i32 %i.bqf, 0
  %i.bqh = and i32 %.sroa.0.0.copyload.i334.i259, 12291
  %i.bqi = icmp ne i32 %i.bqh, 0
  %.not304.i262 = and i1 %i.bqg, %i.bqi
  br i1 %.not304.i262, label %.thread1114, label %.critedge316.i263, !prof !45

.critedge316.i263:                                ; preds = %bb.jz
  store i32 %.sroa.0.0.copyload.i334.i259, ptr %.8253.i223, align 1
  %i.bqj = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 4
  br label %.preheader1369.backedge

bb.ka:                                            ; preds = %bb.jp
  %i.bqk = shl nuw nsw i64 %.pre-phi3206, 1
  %i.bql = getelementptr inbounds nuw i8, ptr @esc_single_char_table, i64 %i.bqk
  %i.bqm = load i16, ptr %i.bql, align 2
  store i16 %i.bqm, ptr %.8253.i223, align 1
  %i.bqn = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 2
  %i.bqo = getelementptr inbounds nuw i8, ptr %.8.i224, i64 1
  br label %.preheader1369.backedge

.preheader1369.backedge:                          ; preds = %bb.ka, %bb.kb, %bb.kj, %bb.kk, %bb.js, %.critedge.i269, %.critedge316.i263, %bb.kd, %.critedge321.i244, %.critedge325.i235
  %.8253.i223.be = phi ptr [ %i.bun, %bb.kj ], [ %i.bpn, %bb.js ], [ %i.bpz, %.critedge.i269 ], [ %i.bqj, %.critedge316.i263 ], [ %i.bqn, %bb.ka ], [ %i.bqv, %bb.kb ], [ %i.brq, %bb.kd ], [ %i.bsn, %.critedge321.i244 ], [ %i.buj, %.critedge325.i235 ], [ %i.bup, %bb.kk ]
  %.8.i224.be = phi ptr [ %i.bum, %bb.kj ], [ %i.bpo, %bb.js ], [ %i.bqa, %.critedge.i269 ], [ %i.bot, %.critedge316.i263 ], [ %i.bqo, %bb.ka ], [ %i.bqw, %bb.kb ], [ %i.brr, %bb.kd ], [ %i.bso, %.critedge321.i244 ], [ %i.bot, %.critedge325.i235 ], [ %i.buq, %bb.kk ]
  br label %.preheader1369

bb.kb:                                            ; preds = %bb.jp
  store i32 808482140, ptr %.8253.i223, align 1
  %i.bqp = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 4
  %i.bqq = load i8, ptr %.8.i224, align 1, !tbaa !100
  %i.bqr = zext i8 %i.bqq to i64
  %i.bqs = shl nuw nsw i64 %i.bqr, 1
  %i.bqt = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bqs
  %i.bqu = load i16, ptr %i.bqt, align 2
  store i16 %i.bqu, ptr %i.bqp, align 1
  %i.bqv = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 6
  %i.bqw = getelementptr inbounds nuw i8, ptr %.8.i224, i64 1
  br label %.preheader1369.backedge

bb.kc:                                            ; preds = %bb.jp
  %.sroa.0.0.copyload.i332.i252 = load i16, ptr %.8.i224, align 1 ; 3 uses
  %.sroa.0972.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i252 to i32 ; 2 uses
  %i.bqx = and i32 %.sroa.0972.0.insert.ext, 49376
  %i.bqy = icmp ne i32 %i.bqx, 32960
  %i.bqz = and i32 %.sroa.0972.0.insert.ext, 30
  %i.bra = icmp eq i32 %i.bqz, 0
  %.not298.i253 = or i1 %i.bqy, %i.bra
  br i1 %.not298.i253, label %.thread1124, label %bb.kd, !prof !45

bb.kd:                                            ; preds = %bb.kc
  %i.brb = lshr i16 %.sroa.0.0.copyload.i332.i252, 8
  %i.brc = trunc nuw i16 %i.brb to i8
  %i.brd = trunc i16 %.sroa.0.0.copyload.i332.i252 to i8 ; 2 uses
  %.tr299.i254 = shl i8 %i.brd, 6
  %i.bre = and i8 %i.brc, 63
  store i16 30044, ptr %.8253.i223, align 1
  %i.brf = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 2
  %i.brg = lshr i8 %i.brd, 1
  %i.brh = and i8 %i.brg, 14
  %i.bri = zext nneg i8 %i.brh to i64
  %i.brj = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bri
  %i.brk = load i16, ptr %i.brj, align 2
  store i16 %i.brk, ptr %i.brf, align 1
  %i.brl = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 4
  %.narrow300.i255 = or disjoint i8 %i.bre, %.tr299.i254
  %i.brm = zext i8 %.narrow300.i255 to i64
  %i.brn = shl nuw nsw i64 %i.brm, 1
  %i.bro = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.brn
  %i.brp = load i16, ptr %i.bro, align 2
  store i16 %i.brp, ptr %i.brl, align 1
  %i.brq = getelementptr inbounds nuw i8, ptr %.8253.i223, i64 6
  %i.brr = getelementptr inbounds nuw i8, ptr %.8.i224, i64 2
  br label %.preheader1369.backedge

bb.ke:                                            ; preds = %bb.jp
  %.sroa.0.0.copyload.i.i239 = load i16, ptr %.8.i224, align 1 ; 3 uses
  %i.brs = getelementptr inbounds nuw i8, ptr %.8.i224, i64 2
  %i.brt = load i8, ptr %i.brs, align 1, !tbaa !100 ; 2 uses
  %.sroa.4.0.insert.ext.i.i240 = zext i8 %i.brt to i32
  %.sroa.4.0.insert.shift.i.i241 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i240, 16
  %.sroa.0.0.insert.ext.i.i242 = zext i16 %.sroa.0.0.copyload.i.i239 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i243 = or disjoint i32 %.sroa.4.0.insert.shift.i.i241, %.sroa.0.0.insert.ext.i.i242
  %i.bru = and i32 %.sroa.0.0.insert.insert.i.i243, 12632304
  %i.brv = icmp eq i32 %i.bru, 8421600
  br i1 %i.brv, label %bb.kf, label %.thread1124, !prof !62

bb.kf:                                            ; preds = %bb.ke
  %i.brw = and i32 %.sroa.0.0.insert.ext.i.i242, 8207
  switch i32 %i.brw, label %.critedge321.i244 [
    i32 8205, label %.thread1124
    i32 0, label %.thread1124
  ], !prof !151

.critedge321.i244:                                ; preds = %bb.kf
  %i.brx = zext i16 %.sroa.0.0.copyload.i.i239 to i64
end_hunk_5
begin_hunk_6_@yyjson_val_write_opts:bb.a
vector.ph5177:                                    ; preds = %.lr.ph2398.preheader
  %n.vec5178 = and i64 %i.buw, 9223372036854775800 ; 4 uses
  %i.buy = shl i64 %n.vec5178, 2
  %i.buz = sub i64 %.0.i73.lcssa, %i.buy          ; 2 uses
  %i.bva = shl i64 %n.vec5178, 2                  ; 2 uses
  %i.bvb = getelementptr i8, ptr %.018.i72.lcssa, i64 %i.bva ; 2 uses
  %i.bvc = getelementptr i8, ptr %.021.i71.lcssa, i64 %i.bva ; 2 uses
  br label %vector.body5179

vector.body5179:                                  ; preds = %vector.body5179, %vector.ph5177
  %index5180.a = phi i64 [ 0, %vector.ph5177 ], [ %index.next5185, %vector.body5179 ] ; 2 uses
  %i.bvd = shl i64 %index5180.a, 2                ; 2 uses
  %next.gep5181.a = getelementptr i8, ptr %.018.i72.lcssa, i64 %i.bvd ; 2 uses
  %next.gep5182.a = getelementptr i8, ptr %.021.i71.lcssa, i64 %i.bvd ; 2 uses
  %i.bve = getelementptr i8, ptr %next.gep5181.a, i64 16
  %wide.load5183.a = load <4 x i32>, ptr %next.gep5181.a, align 1
  %wide.load5184 = load <4 x i32>, ptr %i.bve, align 1
  %i.bvf = getelementptr i8, ptr %next.gep5182.a, i64 16
  store <4 x i32> %wide.load5183.a, ptr %next.gep5182.a, align 1
  store <4 x i32> %wide.load5184, ptr %i.bvf, align 1
  %index.next5185 = add nuw i64 %index5180.a, 8   ; 2 uses
  %i.bvg = icmp eq i64 %index.next5185, %n.vec5178
  br i1 %i.bvg, label %middle.block5186, label %vector.body5179, !llvm.loop !375

middle.block5186:                                 ; preds = %vector.body5179
  %cmp.n5187 = icmp eq i64 %i.buw, %n.vec5178
  br i1 %cmp.n5187, label %.preheader1400, label %.lr.ph2398.preheader5709

.lr.ph2398.preheader5709:                         ; preds = %.lr.ph2398.preheader, %middle.block5186
  %.1.i762397.ph = phi i64 [ %.0.i73.lcssa, %.lr.ph2398.preheader ], [ %i.buz, %middle.block5186 ]
  %.119.i752396.ph = phi ptr [ %.018.i72.lcssa, %.lr.ph2398.preheader ], [ %i.bvb, %middle.block5186 ]
  %.122.i742395.ph = phi ptr [ %.021.i71.lcssa, %.lr.ph2398.preheader ], [ %i.bvc, %middle.block5186 ]
  br label %.lr.ph2398

.lr.ph2391:                                       ; preds = %bb.kl, %.lr.ph2391
  %.0.i732389 = phi i64 [ %i.bvj, %.lr.ph2391 ], [ %i.ass, %bb.kl ]
  %.018.i722388 = phi ptr [ %i.bvi, %.lr.ph2391 ], [ %i.asu, %bb.kl ] ; 2 uses
  %.021.i712387 = phi ptr [ %i.bvh, %.lr.ph2391 ], [ %i.bur, %bb.kl ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i712387, ptr noundef nonnull align 1 dereferenceable(16) %.018.i722388, i64 16, i1 false)
  %i.bvh = getelementptr inbounds nuw i8, ptr %.021.i712387, i64 16 ; 2 uses
  %i.bvi = getelementptr inbounds nuw i8, ptr %.018.i722388, i64 16 ; 2 uses
  %i.bvj = add nsw i64 %.0.i732389, -16           ; 3 uses
  %i.bvk = icmp ugt i64 %i.bvj, 15
  br i1 %i.bvk, label %.lr.ph2391, label %.preheader1401, !llvm.loop !26

.preheader1400:                                   ; preds = %.lr.ph2398, %middle.block5186, %.preheader1401
  %.122.i74.lcssa = phi ptr [ %.021.i71.lcssa, %.preheader1401 ], [ %i.bvc, %middle.block5186 ], [ %i.bwe, %.lr.ph2398 ] ; 7 uses
  %.119.i75.lcssa = phi ptr [ %.018.i72.lcssa, %.preheader1401 ], [ %i.bvb, %middle.block5186 ], [ %i.bwf, %.lr.ph2398 ] ; 6 uses
  %.1.i76.lcssa = phi i64 [ %.0.i73.lcssa, %.preheader1401 ], [ %i.buz, %middle.block5186 ], [ %i.bwg, %.lr.ph2398 ] ; 11 uses
  %.not.i802402 = icmp eq i64 %.1.i76.lcssa, 0
  br i1 %.not.i802402, label %write_str.exit407, label %iter.check

iter.check:                                       ; preds = %.preheader1400
  %.119.i75.lcssa5156 = ptrtoaddr ptr %.119.i75.lcssa to i64
  %.122.i74.lcssa5155 = ptrtoaddr ptr %.122.i74.lcssa to i64
  %min.iters.check = icmp ult i64 %.1.i76.lcssa, 4
  %i.bvl = sub i64 %.119.i75.lcssa5156, %.122.i74.lcssa5155
  %diff.check = icmp ugt i64 %i.bvl, -32
  %or.cond5313 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond5313, label %.lr.ph2406.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5157 = icmp ult i64 %.1.i76.lcssa, 32
  br i1 %min.iters.check5157, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bvm = and i64 %.1.i76.lcssa, 28
  %n.vec = and i64 %.1.i76.lcssa, -32             ; 5 uses
  %i.bvn = and i64 %.1.i76.lcssa, 31
  %i.bvo = getelementptr i8, ptr %.119.i75.lcssa, i64 %n.vec
  %i.bvp = getelementptr i8, ptr %.122.i74.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.119.i75.lcssa, i64 %index ; 2 uses
  %next.gep5158 = getelementptr i8, ptr %.122.i74.lcssa, i64 %index ; 2 uses
  %i.bvq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !100
  %wide.load5159 = load <16 x i8>, ptr %i.bvq, align 1, !tbaa !100
  %i.bvr = getelementptr i8, ptr %next.gep5158, i64 16
  store <16 x i8> %wide.load, ptr %next.gep5158, align 1, !tbaa !100
  store <16 x i8> %wide.load5159, ptr %i.bvr, align 1, !tbaa !100
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bvs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bvs, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.1.i76.lcssa, %n.vec
  br i1 %cmp.n, label %write_str.exit407, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bvm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2406.preheader, label %vec.epilog.ph, !prof !152

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5162 = and i64 %.1.i76.lcssa, -4          ; 4 uses
  %i.bvt = and i64 %.1.i76.lcssa, 3
  %i.bvu = getelementptr i8, ptr %.119.i75.lcssa, i64 %n.vec5162
  %i.bvv = getelementptr i8, ptr %.122.i74.lcssa, i64 %n.vec5162 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5163 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next5167, %vec.epilog.vector.body ] ; 3 uses
  %next.gep5164 = getelementptr i8, ptr %.119.i75.lcssa, i64 %index5163
  %next.gep5165 = getelementptr i8, ptr %.122.i74.lcssa, i64 %index5163
  %wide.load5166 = load <4 x i8>, ptr %next.gep5164, align 1, !tbaa !100
  store <4 x i8> %wide.load5166, ptr %next.gep5165, align 1, !tbaa !100
  %index.next5167 = add nuw i64 %index5163, 4     ; 2 uses
  %i.bvw = icmp eq i64 %index.next5167, %n.vec5162
  br i1 %i.bvw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !377

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n5168 = icmp eq i64 %.1.i76.lcssa, %n.vec5162
  br i1 %cmp.n5168, label %write_str.exit407, label %.lr.ph2406.preheader

.lr.ph2406.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2.i792405.ph = phi i64 [ %.1.i76.lcssa, %iter.check ], [ %i.bvn, %vec.epilog.iter.check ], [ %i.bvt, %vec.epilog.middle.block ] ; 4 uses
  %.220.i782404.ph = phi ptr [ %.119.i75.lcssa, %iter.check ], [ %i.bvo, %vec.epilog.iter.check ], [ %i.bvu, %vec.epilog.middle.block ] ; 2 uses
  %.223.i772403.ph = phi ptr [ %.122.i74.lcssa, %iter.check ], [ %i.bvp, %vec.epilog.iter.check ], [ %i.bvv, %vec.epilog.middle.block ] ; 2 uses
  %i.bvx = add nsw i64 %.2.i792405.ph, -1
  %xtraiter5952 = and i64 %.2.i792405.ph, 7       ; 2 uses
  %lcmp.mod5953.not = icmp eq i64 %xtraiter5952, 0
  br i1 %lcmp.mod5953.not, label %.lr.ph2406.prol.loopexit, label %.lr.ph2406.prol

.lr.ph2406.prol:                                  ; preds = %.lr.ph2406.preheader, %.lr.ph2406.prol
  %.2.i792405.prol = phi i64 [ %i.bwb, %.lr.ph2406.prol ], [ %.2.i792405.ph, %.lr.ph2406.preheader ]
  %.220.i782404.prol = phi ptr [ %i.bvy, %.lr.ph2406.prol ], [ %.220.i782404.ph, %.lr.ph2406.preheader ] ; 2 uses
  %.223.i772403.prol = phi ptr [ %i.bwa, %.lr.ph2406.prol ], [ %.223.i772403.ph, %.lr.ph2406.preheader ] ; 2 uses
  %prol.iter5954 = phi i64 [ %prol.iter5954.next, %.lr.ph2406.prol ], [ 0, %.lr.ph2406.preheader ]
  %i.bvy = getelementptr inbounds nuw i8, ptr %.220.i782404.prol, i64 1 ; 2 uses
  %i.bvz = load i8, ptr %.220.i782404.prol, align 1, !tbaa !100
  %i.bwa = getelementptr inbounds nuw i8, ptr %.223.i772403.prol, i64 1 ; 3 uses
  store i8 %i.bvz, ptr %.223.i772403.prol, align 1, !tbaa !100
  %i.bwb = add nsw i64 %.2.i792405.prol, -1       ; 2 uses
  %prol.iter5954.next = add i64 %prol.iter5954, 1 ; 2 uses
  %prol.iter5954.cmp.not = icmp eq i64 %prol.iter5954.next, %xtraiter5952
  br i1 %prol.iter5954.cmp.not, label %.lr.ph2406.prol.loopexit, label %.lr.ph2406.prol, !llvm.loop !378

.lr.ph2406.prol.loopexit:                         ; preds = %.lr.ph2406.prol, %.lr.ph2406.preheader
  %.lcssa5797.unr = phi ptr [ poison, %.lr.ph2406.preheader ], [ %i.bwa, %.lr.ph2406.prol ]
  %.2.i792405.unr = phi i64 [ %.2.i792405.ph, %.lr.ph2406.preheader ], [ %i.bwb, %.lr.ph2406.prol ]
  %.220.i782404.unr = phi ptr [ %.220.i782404.ph, %.lr.ph2406.preheader ], [ %i.bvy, %.lr.ph2406.prol ]
  %.223.i772403.unr = phi ptr [ %.223.i772403.ph, %.lr.ph2406.preheader ], [ %i.bwa, %.lr.ph2406.prol ]
  %i.bwc = icmp ult i64 %i.bvx, 7
  br i1 %i.bwc, label %write_str.exit407, label %.lr.ph2406

.lr.ph2398:                                       ; preds = %.lr.ph2398.preheader5709, %.lr.ph2398
  %.1.i762397 = phi i64 [ %i.bwg, %.lr.ph2398 ], [ %.1.i762397.ph, %.lr.ph2398.preheader5709 ]
  %.119.i752396 = phi ptr [ %i.bwf, %.lr.ph2398 ], [ %.119.i752396.ph, %.lr.ph2398.preheader5709 ] ; 2 uses
  %.122.i742395 = phi ptr [ %i.bwe, %.lr.ph2398 ], [ %.122.i742395.ph, %.lr.ph2398.preheader5709 ] ; 2 uses
  %i.bwd = load i32, ptr %.119.i752396, align 1
  store i32 %i.bwd, ptr %.122.i742395, align 1
  %i.bwe = getelementptr inbounds nuw i8, ptr %.122.i742395, i64 4 ; 2 uses
  %i.bwf = getelementptr inbounds nuw i8, ptr %.119.i752396, i64 4 ; 2 uses
  %i.bwg = add nsw i64 %.1.i762397, -4            ; 3 uses
  %i.bwh = icmp ugt i64 %i.bwg, 3
  br i1 %i.bwh, label %.lr.ph2398, label %.preheader1400, !llvm.loop !379

.lr.ph2406:                                       ; preds = %.lr.ph2406.prol.loopexit, %.lr.ph2406
  %.2.i792405 = phi i64 [ %i.bxg, %.lr.ph2406 ], [ %.2.i792405.unr, %.lr.ph2406.prol.loopexit ]
  %.220.i782404 = phi ptr [ %i.bxd, %.lr.ph2406 ], [ %.220.i782404.unr, %.lr.ph2406.prol.loopexit ] ; 9 uses
  %.223.i772403 = phi ptr [ %i.bxf, %.lr.ph2406 ], [ %.223.i772403.unr, %.lr.ph2406.prol.loopexit ] ; 9 uses
  %i.bwi = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 1
  %i.bwj = load i8, ptr %.220.i782404, align 1, !tbaa !100
  %i.bwk = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 1
  store i8 %i.bwj, ptr %.223.i772403, align 1, !tbaa !100
  %i.bwl = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 2
  %i.bwm = load i8, ptr %i.bwi, align 1, !tbaa !100
  %i.bwn = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 2
  store i8 %i.bwm, ptr %i.bwk, align 1, !tbaa !100
  %i.bwo = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 3
  %i.bwp = load i8, ptr %i.bwl, align 1, !tbaa !100
  %i.bwq = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 3
  store i8 %i.bwp, ptr %i.bwn, align 1, !tbaa !100
  %i.bwr = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 4
  %i.bws = load i8, ptr %i.bwo, align 1, !tbaa !100
  %i.bwt = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 4
  store i8 %i.bws, ptr %i.bwq, align 1, !tbaa !100
  %i.bwu = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 5
  %i.bwv = load i8, ptr %i.bwr, align 1, !tbaa !100
  %i.bww = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 5
  store i8 %i.bwv, ptr %i.bwt, align 1, !tbaa !100
  %i.bwx = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 6
  %i.bwy = load i8, ptr %i.bwu, align 1, !tbaa !100
  %i.bwz = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 6
  store i8 %i.bwy, ptr %i.bww, align 1, !tbaa !100
  %i.bxa = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 7
  %i.bxb = load i8, ptr %i.bwx, align 1, !tbaa !100
  %i.bxc = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 7
  store i8 %i.bxb, ptr %i.bwz, align 1, !tbaa !100
  %i.bxd = getelementptr inbounds nuw i8, ptr %.220.i782404, i64 8
  %i.bxe = load i8, ptr %i.bxa, align 1, !tbaa !100
  %i.bxf = getelementptr inbounds nuw i8, ptr %.223.i772403, i64 8 ; 2 uses
  store i8 %i.bxe, ptr %i.bxc, align 1, !tbaa !100
  %i.bxg = add nsw i64 %.2.i792405, -8            ; 2 uses
  %.not.i80.7 = icmp eq i64 %i.bxg, 0
  br i1 %.not.i80.7, label %write_str.exit407, label %.lr.ph2406, !llvm.loop !380

write_str.exit407:                                ; preds = %.preheader1386, %.lr.ph2406.prol.loopexit, %.lr.ph2406, %.preheader1372, %bb.gu, %.lr.ph2384.prol.loopexit, %bb.hi, %bb.jb, %.lr.ph2434.prol.loopexit, %bb.jp, %middle.block, %vec.epilog.middle.block, %.preheader1400
  %.3248.i316.lcssa.sink4541 = phi ptr [ %.lcssa5867.unr, %.lr.ph2434.prol.loopexit ], [ %.8253.i322, %bb.hi ], [ %.2247.i215.lcssa, %.preheader1372 ], [ %.8253.i223, %bb.jp ], [ %i.bxf, %.lr.ph2406 ], [ %.lcssa5784.unr, %.lr.ph2384.prol.loopexit ], [ %.122.i74.lcssa, %.preheader1400 ], [ %i.bvv, %vec.epilog.middle.block ], [ %i.bvp, %middle.block ], [ %i.bnh, %bb.jb ], [ %i.azz, %bb.gu ], [ %.lcssa5797.unr, %.lr.ph2406.prol.loopexit ], [ %.2247.i314.lcssa, %.preheader1386 ] ; 4 uses
  %i.bxh = getelementptr inbounds nuw i8, ptr %.3248.i316.lcssa.sink4541, i64 1
  store i8 34, ptr %.3248.i316.lcssa.sink4541, align 1, !tbaa !100
  %i.bxi = select i1 %.not593.i, i8 44, i8 58
  %i.bxj = getelementptr inbounds nuw i8, ptr %.3248.i316.lcssa.sink4541, i64 2
  store i8 %i.bxi, ptr %i.bxh, align 1, !tbaa !100
  %i.bxk = select i1 %.not593.i, i8 10, i8 32
  %i.bxl = getelementptr inbounds nuw i8, ptr %.3248.i316.lcssa.sink4541, i64 3
  store i8 %i.bxk, ptr %i.bxj, align 1, !tbaa !100
  br label %bb.mb

bb.km:                                            ; preds = %bb.fv
  %i.bxm = trunc i64 %.01041 to i32
  %i.bxn = and i32 %i.asa, %i.bxm
  %.not588.i = icmp ne i32 %i.bxn, 0              ; 2 uses
  %i.bxo = select i1 %.not588.i, i64 40, i64 %i.asc ; 2 uses
  %i.bxp = getelementptr inbounds nuw i8, ptr %.0523.i, i64 %i.bxo
  %.not589.i = icmp ult ptr %i.bxp, %.0493.i
  br i1 %.not589.i, label %bb.kn, label %size_align_up.exit628.i, !prof !62

size_align_up.exit628.i:                          ; preds = %bb.km
  %i.bxq = lshr i64 %.0484.i, 1
  %i.bxr = tail call i64 @llvm.umax.i64(i64 %i.bxq, i64 %i.bxo)
  %i.bxs = add i64 %i.bxr, 7
  %i.bxt = and i64 %i.bxs, -8
  %i.bxu = add i64 %i.bxt, %.0484.i               ; 4 uses
  %i.bxv = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0542.i, i64 noundef %.0484.i, i64 noundef %i.bxu) #33, !inline_history !371 ; 6 uses
  %.not590.i = icmp eq ptr %i.bxv, null
  br i1 %.not590.i, label %.loopexit1398, label %.thread1136, !prof !45

.thread1136:                                      ; preds = %size_align_up.exit628.i
  %i.bxw = ptrtoint ptr %.0504.i to i64
  %i.bxx = ptrtoint ptr %.0493.i to i64           ; 2 uses
  %i.bxy = sub i64 %i.bxw, %i.bxx                 ; 2 uses
  %i.bxz = ptrtoint ptr %.0523.i to i64
  %i.bya = ptrtoint ptr %.0542.i to i64           ; 2 uses
  %i.byb = sub i64 %i.bxz, %i.bya
  %i.byc = sub i64 %i.bxx, %i.bya
  %i.byd = sub i64 %i.bxu, %i.bxy
  %i.bye = getelementptr inbounds nuw i8, ptr %i.bxv, i64 %i.byd ; 2 uses
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bxv, i64 %i.byc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bye, ptr nonnull align 1 %i.byf, i64 %i.bxy, i1 false)
  %i.byg = getelementptr inbounds nuw i8, ptr %i.bxv, i64 %i.byb
  %i.byh = getelementptr inbounds nuw i8, ptr %i.bxv, i64 %i.bxu
  br label %bb.kn

bb.kn:                                            ; preds = %.thread1136, %bb.km
  %.4546.i = phi ptr [ %i.bxv, %.thread1136 ], [ %.0542.i, %bb.km ] ; 2 uses
  %.5528.i = phi ptr [ %i.byg, %.thread1136 ], [ %.0523.i, %bb.km ] ; 3 uses
  %.4508.i = phi ptr [ %i.byh, %.thread1136 ], [ %.0504.i, %bb.km ]
  %.4497.i = phi ptr [ %i.bye, %.thread1136 ], [ %.0493.i, %bb.km ]
  %.2486.i = phi i64 [ %i.bxu, %.thread1136 ], [ %.0484.i, %bb.km ]
  %.not.i7492351 = select i1 %.not588.i, i1 true, i1 %.not.i74923513285
  br i1 %.not.i7492351, label %write_indent.exit750, label %select.unfold1142.preheader

select.unfold1142.preheader:                      ; preds = %bb.kn
  br i1 %lcmp.mod.not, label %select.unfold1142.prol.loopexit, label %select.unfold1142.prol

select.unfold1142.prol:                           ; preds = %select.unfold1142.preheader, %select.unfold1142.prol
  %.0.i7482353.prol = phi ptr [ %i.byj, %select.unfold1142.prol ], [ %.5528.i, %select.unfold1142.preheader ] ; 2 uses
  %.04.i7472352.prol = phi i64 [ %i.byi, %select.unfold1142.prol ], [ %.0482.i.ph, %select.unfold1142.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %select.unfold1142.prol ], [ 0, %select.unfold1142.preheader ]
  %i.byi = add i64 %.04.i7472352.prol, -1         ; 2 uses
  store i32 538976288, ptr %.0.i7482353.prol, align 1
  %i.byj = getelementptr inbounds nuw i8, ptr %.0.i7482353.prol, i64 %i.arf ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %select.unfold1142.prol.loopexit, label %select.unfold1142.prol, !llvm.loop !381

select.unfold1142.prol.loopexit:                  ; preds = %select.unfold1142.prol, %select.unfold1142.preheader
  %.lcssa5713.unr = phi ptr [ poison, %select.unfold1142.preheader ], [ %i.byj, %select.unfold1142.prol ]
  %.0.i7482353.unr = phi ptr [ %.5528.i, %select.unfold1142.preheader ], [ %i.byj, %select.unfold1142.prol ]
  %.04.i7472352.unr = phi i64 [ %.0482.i.ph, %select.unfold1142.preheader ], [ %i.byi, %select.unfold1142.prol ]
  br i1 %i.asf, label %write_indent.exit750, label %select.unfold1142

select.unfold1142:                                ; preds = %select.unfold1142.prol.loopexit, %select.unfold1142
  %.0.i7482353 = phi ptr [ %i.bys, %select.unfold1142 ], [ %.0.i7482353.unr, %select.unfold1142.prol.loopexit ] ; 2 uses
  %.04.i7472352 = phi i64 [ %i.byr, %select.unfold1142 ], [ %.04.i7472352.unr, %select.unfold1142.prol.loopexit ]
  store i32 538976288, ptr %.0.i7482353, align 1
  %i.byk = getelementptr inbounds nuw i8, ptr %.0.i7482353, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.byk, align 1
  %i.byl = getelementptr inbounds nuw i8, ptr %i.byk, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.byl, align 1
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byl, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.bym, align 1
  %i.byn = getelementptr inbounds nuw i8, ptr %i.bym, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.byn, align 1
  %i.byo = getelementptr inbounds nuw i8, ptr %i.byn, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.byo, align 1
  %i.byp = getelementptr inbounds nuw i8, ptr %i.byo, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.byp, align 1
  %i.byq = getelementptr inbounds nuw i8, ptr %i.byp, i64 %i.arf ; 2 uses
  %i.byr = add i64 %.04.i7472352, -8              ; 2 uses
  store i32 538976288, ptr %i.byq, align 1
  %i.bys = getelementptr inbounds nuw i8, ptr %i.byq, i64 %i.arf ; 2 uses
  %.not.i749.7 = icmp eq i64 %i.byr, 0
  br i1 %.not.i749.7, label %write_indent.exit750, label %select.unfold1142, !llvm.loop !27

write_indent.exit750:                             ; preds = %select.unfold1142.prol.loopexit, %select.unfold1142, %bb.kn
  %.0.i748.lcssa = phi ptr [ %.5528.i, %bb.kn ], [ %.lcssa5713.unr, %select.unfold1142.prol.loopexit ], [ %i.bys, %select.unfold1142 ] ; 6 uses
  %i.byt = load i64, ptr %.0565.i, align 8, !tbaa !99 ; 3 uses
  %i.byu = and i64 %i.byt, 16
  %.not.i609 = icmp eq i64 %i.byu, 0
  %i.byv = getelementptr inbounds nuw i8, ptr %.0565.i, i64 8
  %i.byw = load i64, ptr %i.byv, align 8, !tbaa !100 ; 7 uses
  br i1 %.not.i609, label %bb.ko, label %bb.lh

bb.ko:                                            ; preds = %write_indent.exit750
  %i.byx = sub i64 0, %i.byw
  %i.byy = lshr i64 %i.byt, 3
  %.lobit.i615 = lshr i64 %i.byw, 63
  %i.byz = and i64 %.lobit.i615, %i.byy           ; 2 uses
  store i8 45, ptr %.0.i748.lcssa, align 1, !tbaa !100
  %.not37.i616 = icmp eq i64 %i.byz, 0
  %i.bza = select i1 %.not37.i616, i64 %i.byw, i64 %i.byx ; 26 uses
  %i.bzb = getelementptr inbounds nuw i8, ptr %.0.i748.lcssa, i64 %i.byz ; 20 uses
  %i.bzc = icmp ult i64 %i.bza, 100000000
  br i1 %i.bzc, label %bb.kp, label %bb.kw

bb.kp:                                            ; preds = %bb.ko
  %i.bzd = trunc nuw nsw i64 %i.bza to i32        ; 4 uses
  %i.bze = icmp samesign ult i64 %i.bza, 100
  br i1 %i.bze, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.bzf = icmp samesign ult i64 %i.bza, 10       ; 2 uses
  %i.bzg = shl nuw nsw i64 %i.bza, 1
  %i.bzh = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.bzg
  %.neg70.i.i661 = sext i1 %i.bzf to i64
  %i.bzi = zext i1 %i.bzf to i64
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bzh, i64 %i.bzi
  %i.bzk = load i16, ptr %i.bzj, align 1
  store i16 %i.bzk, ptr %i.bzb, align 1
  %i.bzl = getelementptr inbounds i8, ptr %i.bzb, i64 %.neg70.i.i661
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bzl, i64 2
  br label %write_num.exit662.thread

bb.kr:                                            ; preds = %bb.kp
  %i.bzn = icmp samesign ult i64 %i.bza, 10000
  br i1 %i.bzn, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.bzo = mul nuw nsw i32 %i.bzd, 5243
  %i.bzp = lshr i32 %i.bzo, 19                    ; 2 uses
  %.neg68.i.i659 = mul nsw i32 %i.bzp, -100
  %i.bzq = add nsw i32 %.neg68.i.i659, %i.bzd
  %i.bzr = icmp samesign ult i64 %i.bza, 1000     ; 2 uses
  %i.bzs = shl nuw nsw i32 %i.bzp, 1
  %i.bzt = zext nneg i32 %i.bzs to i64
  %i.bzu = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.bzt
  %.neg69.i.i660 = sext i1 %i.bzr to i64
  %i.bzv = zext i1 %i.bzr to i64
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.bzu, i64 %i.bzv
  %i.bzx = load i16, ptr %i.bzw, align 1
  store i16 %i.bzx, ptr %i.bzb, align 1
  %i.bzy = getelementptr inbounds i8, ptr %i.bzb, i64 %.neg69.i.i660 ; 2 uses
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.bzy, i64 2
  %i.caa = shl nsw i32 %i.bzq, 1
  %i.cab = zext i32 %i.caa to i64
  %i.cac = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.cab
  %i.cad = load i16, ptr %i.cac, align 2
  store i16 %i.cad, ptr %i.bzz, align 1
  %i.cae = getelementptr inbounds nuw i8, ptr %i.bzy, i64 4
  br label %write_num.exit662.thread

bb.kt:                                            ; preds = %bb.kr
  %i.caf = icmp samesign ult i64 %i.bza, 1000000
  br i1 %i.caf, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %i.cag = mul nuw nsw i64 %i.bza, 429497
  %i.cah = lshr i64 %i.cag, 32                    ; 2 uses
  %i.cai = trunc nuw nsw i64 %i.cah to i32
  %.neg65.i.i656 = mul nsw i32 %i.cai, -10000
  %i.caj = add nsw i32 %.neg65.i.i656, %i.bzd     ; 2 uses
  %i.cak = mul i32 %i.caj, 5243
  %i.cal = lshr i32 %i.cak, 19                    ; 2 uses
  %.neg66.i.i657 = mul nsw i32 %i.cal, -100
  %i.cam = add nsw i32 %.neg66.i.i657, %i.caj
  %i.can = icmp samesign ult i64 %i.bza, 100000   ; 2 uses
  %i.cao = shl nuw nsw i64 %i.cah, 1
  %i.cap = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.cao
  %.neg67.i.i658 = sext i1 %i.can to i64
  %i.caq = zext i1 %i.can to i64
  %i.car = getelementptr inbounds nuw i8, ptr %i.cap, i64 %i.caq
  %i.cas = load i16, ptr %i.car, align 1
  store i16 %i.cas, ptr %i.bzb, align 1
  %i.cat = getelementptr inbounds i8, ptr %i.bzb, i64 %.neg67.i.i658 ; 3 uses
  %i.cau = getelementptr inbounds nuw i8, ptr %i.cat, i64 2
  %i.cav = shl nuw nsw i32 %i.cal, 1
  %i.caw = zext nneg i32 %i.cav to i64
  %i.cax = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.caw
  %i.cay = load i16, ptr %i.cax, align 2
  store i16 %i.cay, ptr %i.cau, align 1
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cat, i64 4
  %i.cba = shl nsw i32 %i.cam, 1
  %i.cbb = zext i32 %i.cba to i64
  %i.cbc = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.cbb
  %i.cbd = load i16, ptr %i.cbc, align 2
  store i16 %i.cbd, ptr %i.caz, align 1
  %i.cbe = getelementptr inbounds nuw i8, ptr %i.cat, i64 6
  br label %write_num.exit662.thread

bb.kv:                                            ; preds = %bb.kt
  %i.cbf = mul nuw nsw i64 %i.bza, 109951163
  %i.cbg = lshr i64 %i.cbf, 40
  %i.cbh = trunc nuw nsw i64 %i.cbg to i32        ; 3 uses
  %.neg.i42.i650 = mul nsw i32 %i.cbh, -10000
end_hunk_6
begin_hunk_7_@yyjson_val_write_opts:bb.a
  br i1 %.not27, label %.cont772, label %.else774

.else774:                                         ; preds = %bb.mh
  %i.cwi = ptrtoint ptr %.22.i to i64
  %i.cwj = ptrtoint ptr %.21563.i to i64
  %i.cwk = sub i64 %i.cwi, %i.cwj
  store i64 %i.cwk, ptr %3, align 8, !tbaa !106
  br label %.cont772

.cont772:                                         ; preds = %bb.mh, %.else774
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %spec.store.select, i8 0, i64 16, i1 false)
  br label %yyjson_write_single.exit

.loopexit1398:                                    ; preds = %size_align_up.exit624.i, %size_align_up.exit618.i, %size_align_up.exit620.i, %size_align_up.exit622.i, %size_align_up.exit626.i, %size_align_up.exit628.i, %size_align_up.exit630.i, %size_align_up.exit616.i, %size_align_up.exit.i, %size_align_up.exit632.i
  %.22564.i = phi ptr [ %.18560.i, %size_align_up.exit.i ], [ %.16558.i, %size_align_up.exit616.i ], [ null, %size_align_up.exit632.i ], [ %.0542.i, %size_align_up.exit618.i ], [ %.0542.i, %size_align_up.exit630.i ], [ %.0542.i, %size_align_up.exit628.i ], [ %.0542.i, %size_align_up.exit626.i ], [ %.0542.i, %size_align_up.exit622.i ], [ %.0542.i, %size_align_up.exit620.i ], [ %.0542.i, %size_align_up.exit624.i ] ; 2 uses
  br i1 %.not27, label %.cont775, label %.else777

.else777:                                         ; preds = %.loopexit1398
  store i64 0, ptr %3, align 8, !tbaa !106
  br label %.cont775

.cont775:                                         ; preds = %.loopexit1398, %.else777
  store i32 2, ptr %spec.store.select, align 8, !tbaa !150
  %spec.store.select.sroa.sel811.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel811.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel811.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel811.v.sroa.sel.v.sroa.sel, align 8, !tbaa !149
  %.not606.i = icmp eq ptr %.22564.i, null
  br i1 %.not606.i, label %yyjson_write_single.exit, label %bb.mi

bb.mi:                                            ; preds = %.cont775
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.22564.i) #33, !inline_history !371
  br label %yyjson_write_single.exit

bb.mj:                                            ; preds = %bb.lu
  br i1 %.not27, label %bb.mk, label %.else765

.else765:                                         ; preds = %bb.mj
  store i64 0, ptr %3, align 8, !tbaa !106
  br label %bb.mk

bb.mk:                                            ; preds = %.else765, %bb.mj
  store i32 3, ptr %spec.store.select, align 8, !tbaa !150
  %spec.store.select.sroa.sel820.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel820.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel820.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.110, ptr %spec.store.select.sroa.sel820.v.sroa.sel.v.sroa.sel, align 8, !tbaa !149
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.0542.i) #33, !inline_history !371
  br label %yyjson_write_single.exit

bb.ml:                                            ; preds = %write_num.exit662
  br i1 %.not27, label %bb.mm, label %.else771

.else771:                                         ; preds = %bb.ml
  store i64 0, ptr %3, align 8, !tbaa !106
  br label %bb.mm

bb.mm:                                            ; preds = %.else771, %bb.ml
  store i32 4, ptr %spec.store.select, align 8, !tbaa !150
  %spec.store.select.sroa.sel814.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel814.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel814.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.111, ptr %spec.store.select.sroa.sel814.v.sroa.sel.v.sroa.sel, align 8, !tbaa !149
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.4546.i) #33, !inline_history !371
  br label %yyjson_write_single.exit

.loopexit1370:                                    ; preds = %.thread1104, %.thread1094, %.thread1114, %.thread1124
  br i1 %.not27, label %bb.mn, label %.else768

.else768:                                         ; preds = %.loopexit1370
  store i64 0, ptr %3, align 8, !tbaa !106
  br label %bb.mn

bb.mn:                                            ; preds = %.else768, %.loopexit1370
  store i32 7, ptr %spec.store.select, align 8, !tbaa !150
  %spec.store.select.sroa.sel817.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel817.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel817.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.76, ptr %spec.store.select.sroa.sel817.v.sroa.sel.v.sroa.sel, align 8, !tbaa !149
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.2544.i) #33, !inline_history !371
  br label %yyjson_write_single.exit

bb.mo:                                            ; preds = %bb.fq
  br i1 %.not1291, label %bb.mq, label %bb.mp, !prof !62

bb.mp:                                            ; preds = %bb.mo
  %enc_table_esc_slash.enc_table_esc.i = select i1 %.not1292, ptr @enc_table_esc, ptr @enc_table_esc_slash, !prof !62
  br label %size_align_up.exit469.i

bb.mq:                                            ; preds = %bb.mo
  %enc_table_cpy_slash.enc_table_cpy.i = select i1 %.not1292, ptr @enc_table_cpy, ptr @enc_table_cpy_slash, !prof !62
  br label %size_align_up.exit469.i

size_align_up.exit469.i:                          ; preds = %bb.mp, %bb.mq
  %.0.i58 = phi ptr [ %enc_table_esc_slash.enc_table_esc.i, %bb.mp ], [ %enc_table_cpy_slash.enc_table_cpy.i, %bb.mq ] ; 28 uses
  %i.cwl = icmp eq ptr %.0.i58, @enc_table_cpy
  %i.cwm = and i32 %1, 32
  %.not1294 = icmp eq i32 %i.cwm, 0               ; 4 uses
  %i.cwn = and i32 %1, 128
  %.not1295 = icmp eq i32 %i.cwn, 0
  %i.cwo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cwp = load i64, ptr %i.cwo, align 8, !tbaa !100
  %i.cwq = lshr i64 %i.cwp, 4
  %i.cwr = mul i64 %i.cwq, 18
  %i.cws = add i64 %i.cwr, 70
  %i.cwt = and i64 %i.cws, -8                     ; 3 uses
  %i.cwu = tail call ptr %.sroa.0849.0(ptr noundef %.sroa.9.0, i64 noundef %i.cwt) #33, !inline_history !388 ; 5 uses
  %.not.i35 = icmp eq ptr %i.cwu, null
  br i1 %.not.i35, label %.loopexit1368, label %bb.mr

bb.mr:                                            ; preds = %size_align_up.exit469.i
  %i.cwv = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.cwt ; 2 uses
  %i.cww = load i64, ptr %0, align 8, !tbaa !99   ; 2 uses
  %i.cwx = and i64 %i.cww, 7
  %i.cwy = icmp eq i64 %i.cwx, 7                  ; 3 uses
  %i.cwz = zext i1 %i.cwy to i8
  %i.cxa = lshr i64 %i.cww, 8
  %i.cxb = zext i1 %i.cwy to i64
  %i.cxc = shl nuw nsw i64 %i.cxa, %i.cxb
  %i.cxd = select i1 %i.cwy, i8 123, i8 91
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.cwu, i64 1
  store i8 %i.cxd, ptr %i.cwu, align 1, !tbaa !100
  %i.cxf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cxg = lshr i32 %1, 28
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.mr
  %.01044.ph = phi i64 [ %i.cxc, %bb.mr ], [ %.01044.ph.be, %.outer.backedge ]
  %.01042.ph = phi i8 [ %i.cwz, %bb.mr ], [ %.01042.ph.be, %.outer.backedge ] ; 3 uses
  %.0418.i.ph = phi ptr [ %i.cxf, %bb.mr ], [ %.0418.i.ph.be, %.outer.backedge ]
  %.0400.i.ph = phi ptr [ %i.cwu, %bb.mr ], [ %.0400.i.ph.be, %.outer.backedge ]
  %.0385.i.ph = phi ptr [ %i.cxe, %bb.mr ], [ %.0385.i.ph.be, %.outer.backedge ]
  %.0371.i.ph = phi ptr [ %i.cwv, %bb.mr ], [ %.0371.i.ph.be, %.outer.backedge ]
  %.0363.i.ph = phi ptr [ %i.cwv, %bb.mr ], [ %.0363.i.ph.be, %.outer.backedge ]
  %.0356.i.ph = phi i64 [ %i.cwt, %bb.mr ], [ %.0356.i.ph.be, %.outer.backedge ]
  %i.cxh = zext nneg i8 %.01042.ph to i32
  br label %bb.ms

bb.ms:                                            ; preds = %.outer, %bb.sw
  %.01044 = phi i64 [ %i.etu, %bb.sw ], [ %.01044.ph, %.outer ] ; 3 uses
  %.0418.i = phi ptr [ %i.ett, %bb.sw ], [ %.0418.i.ph, %.outer ] ; 9 uses
  %.0400.i = phi ptr [ %.13413.i, %bb.sw ], [ %.0400.i.ph, %.outer ] ; 25 uses
  %.0385.i = phi ptr [ %.14399.i, %bb.sw ], [ %.0385.i.ph, %.outer ] ; 18 uses
  %.0371.i = phi ptr [ %.13384.i, %bb.sw ], [ %.0371.i.ph, %.outer ] ; 12 uses
  %.0363.i = phi ptr [ %.13.i37, %bb.sw ], [ %.0363.i.ph, %.outer ] ; 18 uses
  %.0356.i = phi i64 [ %.7.i38, %bb.sw ], [ %.0356.i.ph, %.outer ] ; 24 uses
  %i.cxi = load i64, ptr %.0418.i, align 8, !tbaa !99 ; 7 uses
  %i.cxj = trunc i64 %i.cxi to i8                 ; 2 uses
  %i.cxk = and i8 %i.cxj, 7                       ; 3 uses
  switch i8 %i.cxk, label %bb.sl [
    i8 5, label %bb.mt
    i8 4, label %bb.rj
  ]

bb.mt:                                            ; preds = %bb.ms
  %i.cxl = trunc i64 %.01044 to i32
  %i.cxm = xor i32 %i.cxl, -1
  %i.cxn = and i32 %i.cxh, %i.cxm
  %.not439.i = icmp eq i32 %i.cxn, 0
  %i.cxo = lshr i64 %i.cxi, 8                     ; 9 uses
  %i.cxp = getelementptr inbounds nuw i8, ptr %.0418.i, i64 8
  %i.cxq = load ptr, ptr %i.cxp, align 8, !tbaa !100 ; 7 uses
  %i.cxr = ptrtoaddr ptr %i.cxq to i64            ; 4 uses
  %i.cxs = mul nuw nsw i64 %i.cxo, 6
  %i.cxt = add nuw nsw i64 %i.cxs, 16             ; 2 uses
  %i.cxu = getelementptr inbounds nuw i8, ptr %.0385.i, i64 %i.cxt
  %.not440.i = icmp ult ptr %i.cxu, %.0363.i
  br i1 %.not440.i, label %bb.mu, label %size_align_up.exit467.i, !prof !62

size_align_up.exit467.i:                          ; preds = %bb.mt
  %i.cxv = lshr i64 %.0356.i, 1
  %i.cxw = tail call i64 @llvm.umax.i64(i64 %i.cxv, i64 %i.cxt)
  %i.cxx = add nuw i64 %i.cxw, 7
  %i.cxy = and i64 %i.cxx, -8
  %i.cxz = add i64 %i.cxy, %.0356.i               ; 4 uses
  %i.cya = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0400.i, i64 noundef %.0356.i, i64 noundef %i.cxz) #33, !inline_history !388 ; 6 uses
  %.not441.i = icmp eq ptr %i.cya, null
  br i1 %.not441.i, label %.loopexit1368, label %.thread1191, !prof !45

.thread1191:                                      ; preds = %size_align_up.exit467.i
  %i.cyb = ptrtoint ptr %.0371.i to i64
  %i.cyc = ptrtoint ptr %.0363.i to i64           ; 2 uses
  %i.cyd = sub i64 %i.cyb, %i.cyc                 ; 2 uses
  %i.cye = ptrtoint ptr %.0385.i to i64
  %i.cyf = ptrtoint ptr %.0400.i to i64           ; 2 uses
  %i.cyg = sub i64 %i.cye, %i.cyf
  %i.cyh = sub i64 %i.cyc, %i.cyf
  %i.cyi = sub i64 %i.cxz, %i.cyd
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.cya, i64 %i.cyi ; 2 uses
  %i.cyk = getelementptr inbounds nuw i8, ptr %i.cya, i64 %i.cyh
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cyj, ptr nonnull align 1 %i.cyk, i64 %i.cyd, i1 false)
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.cya, i64 %i.cyg
  %i.cym = getelementptr inbounds nuw i8, ptr %i.cya, i64 %i.cxz
  br label %bb.mu

bb.mu:                                            ; preds = %.thread1191, %bb.mt
  %.2402.i = phi ptr [ %i.cya, %.thread1191 ], [ %.0400.i, %bb.mt ] ; 2 uses
  %.2387.i = phi ptr [ %i.cyl, %.thread1191 ], [ %.0385.i, %bb.mt ] ; 5 uses
  %.2373.i = phi ptr [ %i.cym, %.thread1191 ], [ %.0371.i, %bb.mt ]
  %.2365.i = phi ptr [ %i.cyj, %.thread1191 ], [ %.0363.i, %bb.mt ]
  %.1357.i = phi i64 [ %i.cxz, %.thread1191 ], [ %.0356.i, %bb.mt ]
  br i1 %i.cwl, label %bb.pb, label %.split.i47, !prof !62

.split.i47:                                       ; preds = %bb.mu
  %i.cyn = getelementptr inbounds nuw i8, ptr %i.cxq, i64 %i.cxo ; 3 uses
  store i8 34, ptr %.2387.i, align 1, !tbaa !100
  %i.cyo = ptrtoint ptr %i.cyn to i64             ; 4 uses
  %i.cyp = add i64 %i.cxo, %i.cxr
  br label %bb.mv

bb.mv:                                            ; preds = %bb.og, %.split.i47
  %.pn.i111 = phi ptr [ %.2387.i, %.split.i47 ], [ %.8253.i124, %bb.og ]
  %.0238.i112 = phi ptr [ %i.cxq, %.split.i47 ], [ %i.dgi, %bb.og ] ; 3 uses
  %.0245.i113 = getelementptr inbounds nuw i8, ptr %.pn.i111, i64 1 ; 2 uses
  %i.cyq = ptrtoint ptr %.0238.i112 to i64
  %i.cyr = sub i64 %i.cyo, %i.cyq                 ; 2 uses
  %i.cys = icmp sgt i64 %i.cyr, 15
  br i1 %i.cys, label %.lr.ph2490, label %.preheader1355

.preheader1355:                                   ; preds = %bb.nl, %bb.mv
  %.pre-phi3202 = phi i64 [ %i.cyr, %bb.mv ], [ %i.dby, %bb.nl ]
  %.1246.i114.lcssa = phi ptr [ %.0245.i113, %bb.mv ], [ %i.dbv, %bb.nl ] ; 2 uses
  %.1239.i115.lcssa = phi ptr [ %.0238.i112, %bb.mv ], [ %i.dbw, %bb.nl ] ; 2 uses
  %i.cyt = icmp sgt i64 %.pre-phi3202, 3
  br i1 %i.cyt, label %.lr.ph2496, label %.preheader1353

.lr.ph2490:                                       ; preds = %bb.mv, %bb.nl
  %.1239.i1152488 = phi ptr [ %i.dbw, %bb.nl ], [ %.0238.i112, %bb.mv ] ; 46 uses
  %.1246.i1142487 = phi ptr [ %i.dbv, %bb.nl ], [ %.0245.i113, %bb.mv ] ; 30 uses
  %i.cyu = load i8, ptr %.1239.i1152488, align 1, !tbaa !100 ; 2 uses
  %i.cyv = zext i8 %i.cyu to i64
  %i.cyw = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.cyv
  %i.cyx = load i8, ptr %i.cyw, align 1, !tbaa !100
  %.not272.i193 = icmp eq i8 %i.cyx, 0
  br i1 %.not272.i193, label %bb.mw, label %.preheader1350.preheader, !prof !62

bb.mw:                                            ; preds = %.lr.ph2490
  %i.cyy = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 1
  %i.cyz = load i8, ptr %i.cyy, align 1, !tbaa !100
  %i.cza = zext i8 %i.cyz to i64
  %i.czb = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.cza
  %i.czc = load i8, ptr %i.czb, align 1, !tbaa !100
  %.not273.i194 = icmp eq i8 %i.czc, 0
  br i1 %.not273.i194, label %bb.mx, label %.loopexit1357, !prof !62

bb.mx:                                            ; preds = %bb.mw
  %i.czd = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 2
  %i.cze = load i8, ptr %i.czd, align 1, !tbaa !100
  %i.czf = zext i8 %i.cze to i64
  %i.czg = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.czf
  %i.czh = load i8, ptr %i.czg, align 1, !tbaa !100
  %.not274.i195 = icmp eq i8 %i.czh, 0
  br i1 %.not274.i195, label %bb.my, label %.loopexit1358, !prof !62

bb.my:                                            ; preds = %bb.mx
  %i.czi = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 3
  %i.czj = load i8, ptr %i.czi, align 1, !tbaa !100
  %i.czk = zext i8 %i.czj to i64
  %i.czl = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.czk
  %i.czm = load i8, ptr %i.czl, align 1, !tbaa !100
  %.not275.i196 = icmp eq i8 %i.czm, 0
  br i1 %.not275.i196, label %bb.mz, label %.loopexit1359, !prof !62

bb.mz:                                            ; preds = %bb.my
  %i.czn = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 4
  %i.czo = load i8, ptr %i.czn, align 1, !tbaa !100
  %i.czp = zext i8 %i.czo to i64
  %i.czq = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.czp
  %i.czr = load i8, ptr %i.czq, align 1, !tbaa !100
  %.not276.i197 = icmp eq i8 %i.czr, 0
  br i1 %.not276.i197, label %bb.na, label %bb.ns, !prof !62

bb.na:                                            ; preds = %bb.mz
  %i.czs = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 5
  %i.czt = load i8, ptr %i.czs, align 1, !tbaa !100
  %i.czu = zext i8 %i.czt to i64
  %i.czv = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.czu
  %i.czw = load i8, ptr %i.czv, align 1, !tbaa !100
  %.not277.i198 = icmp eq i8 %i.czw, 0
  br i1 %.not277.i198, label %bb.nb, label %bb.nt, !prof !62

bb.nb:                                            ; preds = %bb.na
  %i.czx = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 6
  %i.czy = load i8, ptr %i.czx, align 1, !tbaa !100
  %i.czz = zext i8 %i.czy to i64
  %i.daa = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.czz
  %i.dab = load i8, ptr %i.daa, align 1, !tbaa !100
  %.not278.i199 = icmp eq i8 %i.dab, 0
  br i1 %.not278.i199, label %bb.nc, label %bb.nu, !prof !62

bb.nc:                                            ; preds = %bb.nb
  %i.dac = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 7
  %i.dad = load i8, ptr %i.dac, align 1, !tbaa !100
  %i.dae = zext i8 %i.dad to i64
  %i.daf = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dae
  %i.dag = load i8, ptr %i.daf, align 1, !tbaa !100
  %.not279.i200 = icmp eq i8 %i.dag, 0
  br i1 %.not279.i200, label %bb.nd, label %bb.nv, !prof !62

bb.nd:                                            ; preds = %bb.nc
  %i.dah = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 8
  %i.dai = load i8, ptr %i.dah, align 1, !tbaa !100
  %i.daj = zext i8 %i.dai to i64
  %i.dak = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.daj
  %i.dal = load i8, ptr %i.dak, align 1, !tbaa !100
  %.not280.i201 = icmp eq i8 %i.dal, 0
  br i1 %.not280.i201, label %bb.ne, label %bb.nw, !prof !62

bb.ne:                                            ; preds = %bb.nd
  %i.dam = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 9
  %i.dan = load i8, ptr %i.dam, align 1, !tbaa !100
  %i.dao = zext i8 %i.dan to i64
  %i.dap = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dao
  %i.daq = load i8, ptr %i.dap, align 1, !tbaa !100
  %.not281.i202 = icmp eq i8 %i.daq, 0
  br i1 %.not281.i202, label %bb.nf, label %bb.nx, !prof !62

bb.nf:                                            ; preds = %bb.ne
  %i.dar = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 10
  %i.das = load i8, ptr %i.dar, align 1, !tbaa !100
  %i.dat = zext i8 %i.das to i64
  %i.dau = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dat
  %i.dav = load i8, ptr %i.dau, align 1, !tbaa !100
  %.not282.i203 = icmp eq i8 %i.dav, 0
  br i1 %.not282.i203, label %bb.ng, label %bb.ny, !prof !62

bb.ng:                                            ; preds = %bb.nf
  %i.daw = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 11
  %i.dax = load i8, ptr %i.daw, align 1, !tbaa !100
  %i.day = zext i8 %i.dax to i64
  %i.daz = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.day
  %i.dba = load i8, ptr %i.daz, align 1, !tbaa !100
  %.not283.i204 = icmp eq i8 %i.dba, 0
  br i1 %.not283.i204, label %bb.nh, label %bb.nz, !prof !62

bb.nh:                                            ; preds = %bb.ng
  %i.dbb = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 12
  %i.dbc = load i8, ptr %i.dbb, align 1, !tbaa !100
  %i.dbd = zext i8 %i.dbc to i64
  %i.dbe = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dbd
  %i.dbf = load i8, ptr %i.dbe, align 1, !tbaa !100
  %.not284.i205 = icmp eq i8 %i.dbf, 0
  br i1 %.not284.i205, label %bb.ni, label %bb.oa, !prof !62

bb.ni:                                            ; preds = %bb.nh
  %i.dbg = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 13
  %i.dbh = load i8, ptr %i.dbg, align 1, !tbaa !100
  %i.dbi = zext i8 %i.dbh to i64
  %i.dbj = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dbi
  %i.dbk = load i8, ptr %i.dbj, align 1, !tbaa !100
  %.not285.i206 = icmp eq i8 %i.dbk, 0
  br i1 %.not285.i206, label %bb.nj, label %bb.ob, !prof !62

bb.nj:                                            ; preds = %bb.ni
  %i.dbl = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 14
  %i.dbm = load i8, ptr %i.dbl, align 1, !tbaa !100
  %i.dbn = zext i8 %i.dbm to i64
  %i.dbo = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dbn
  %i.dbp = load i8, ptr %i.dbo, align 1, !tbaa !100
  %.not286.i207 = icmp eq i8 %i.dbp, 0
  br i1 %.not286.i207, label %bb.nk, label %bb.oc, !prof !62

bb.nk:                                            ; preds = %bb.nj
  %i.dbq = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 15
  %i.dbr = load i8, ptr %i.dbq, align 1, !tbaa !100
  %i.dbs = zext i8 %i.dbr to i64
  %i.dbt = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dbs
  %i.dbu = load i8, ptr %i.dbt, align 1, !tbaa !100
  %.not287.i208 = icmp eq i8 %i.dbu, 0
  br i1 %.not287.i208, label %bb.nl, label %bb.od, !prof !62

bb.nl:                                            ; preds = %bb.nk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i1142487, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i1152488, i64 16, i1 false)
  %i.dbv = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 16 ; 2 uses
  %i.dbw = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 16 ; 3 uses
  %i.dbx = ptrtoint ptr %i.dbw to i64
  %i.dby = sub i64 %i.cyo, %i.dbx                 ; 2 uses
  %i.dbz = icmp sgt i64 %i.dby, 15
  br i1 %i.dbz, label %.lr.ph2490, label %.preheader1355, !llvm.loop !23

.preheader1353:                                   ; preds = %bb.nq, %.preheader1355
  %.2247.i116.lcssa = phi ptr [ %.1246.i114.lcssa, %.preheader1355 ], [ %i.ddh, %bb.nq ] ; 3 uses
  %.2240.i117.lcssa = phi ptr [ %.1239.i115.lcssa, %.preheader1355 ], [ %i.ddi, %bb.nq ] ; 5 uses
  %i.dca = icmp ugt ptr %i.cyn, %.2240.i117.lcssa
  br i1 %i.dca, label %.lr.ph2501.preheader, label %write_str.exit209

.lr.ph2501.preheader:                             ; preds = %.preheader1353
  %.2240.i117.lcssa3124 = ptrtoaddr ptr %.2240.i117.lcssa to i64 ; 2 uses
  %i.dcb = getelementptr i8, ptr %.2240.i117.lcssa, i64 %i.cxo
  %scevgep3123 = getelementptr i8, ptr %i.dcb, i64 %i.cxr
  %i.dcc = sub i64 0, %.2240.i117.lcssa3124
  %scevgep3125 = getelementptr i8, ptr %scevgep3123, i64 %i.dcc
  %i.dcd = sub i64 %i.cyp, %.2240.i117.lcssa3124
  %i.dce = freeze i64 %i.dcd                      ; 2 uses
  %i.dcf = add i64 %i.dce, -1
  %xtraiter5980 = and i64 %i.dce, 3               ; 2 uses
  %lcmp.mod5981.not = icmp eq i64 %xtraiter5980, 0
  br i1 %lcmp.mod5981.not, label %.lr.ph2501.prol.loopexit, label %.lr.ph2501.prol

.lr.ph2501.prol:                                  ; preds = %.lr.ph2501.preheader, %bb.nm
  %.3241.i1192500.prol = phi ptr [ %i.dck, %bb.nm ], [ %.2240.i117.lcssa, %.lr.ph2501.preheader ] ; 3 uses
  %.3248.i1182499.prol = phi ptr [ %i.dcl, %bb.nm ], [ %.2247.i116.lcssa, %.lr.ph2501.preheader ] ; 3 uses
  %prol.iter5982 = phi i64 [ %prol.iter5982.next, %bb.nm ], [ 0, %.lr.ph2501.preheader ]
  %i.dcg = load i8, ptr %.3241.i1192500.prol, align 1, !tbaa !100 ; 2 uses
  %i.dch = zext i8 %i.dcg to i64
end_hunk_7
begin_hunk_8_@yyjson_val_write_opts:bb.a
  %i.dcv = load i8, ptr %i.dcu, align 1, !tbaa !100
  %.not269.i184 = icmp eq i8 %i.dcv, 0
  br i1 %.not269.i184, label %bb.no, label %.loopexit1357, !prof !62

bb.no:                                            ; preds = %bb.nn
  %i.dcw = getelementptr inbounds nuw i8, ptr %.2240.i1172495, i64 2
  %i.dcx = load i8, ptr %i.dcw, align 1, !tbaa !100
  %i.dcy = zext i8 %i.dcx to i64
  %i.dcz = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dcy
  %i.dda = load i8, ptr %i.dcz, align 1, !tbaa !100
  %.not270.i187 = icmp eq i8 %i.dda, 0
  br i1 %.not270.i187, label %bb.np, label %.loopexit1358, !prof !62

bb.np:                                            ; preds = %bb.no
  %i.ddb = getelementptr inbounds nuw i8, ptr %.2240.i1172495, i64 3
  %i.ddc = load i8, ptr %i.ddb, align 1, !tbaa !100
  %i.ddd = zext i8 %i.ddc to i64
  %i.dde = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.ddd
  %i.ddf = load i8, ptr %i.dde, align 1, !tbaa !100
  %.not271.i190 = icmp eq i8 %i.ddf, 0
  br i1 %.not271.i190, label %bb.nq, label %.loopexit1359, !prof !62

bb.nq:                                            ; preds = %bb.np
  %i.ddg = load i32, ptr %.2240.i1172495, align 1
  store i32 %i.ddg, ptr %.2247.i1162494, align 1
  %i.ddh = getelementptr inbounds nuw i8, ptr %.2247.i1162494, i64 4 ; 2 uses
  %i.ddi = getelementptr inbounds nuw i8, ptr %.2240.i1172495, i64 4 ; 3 uses
  %i.ddj = ptrtoint ptr %i.ddi to i64
  %i.ddk = sub i64 %i.cyo, %i.ddj
  %i.ddl = icmp sgt i64 %i.ddk, 3
  br i1 %i.ddl, label %.lr.ph2496, label %.preheader1353, !llvm.loop !24

.lr.ph2501:                                       ; preds = %.lr.ph2501.prol.loopexit, %bb.nr
  %.3241.i1192500 = phi ptr [ %i.dei, %bb.nr ], [ %.3241.i1192500.unr, %.lr.ph2501.prol.loopexit ] ; 9 uses
  %.3248.i1182499 = phi ptr [ %i.dej, %bb.nr ], [ %.3248.i1182499.unr, %.lr.ph2501.prol.loopexit ] ; 6 uses
  %i.ddm = load i8, ptr %.3241.i1192500, align 1, !tbaa !100 ; 2 uses
  %i.ddn = zext i8 %i.ddm to i64
  %i.ddo = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.ddn
  %i.ddp = load i8, ptr %i.ddo, align 1, !tbaa !100
  %.not.i121 = icmp eq i8 %i.ddp, 0
  br i1 %.not.i121, label %.lr.ph2501.1, label %.preheader1350.preheader, !prof !62

.lr.ph2501.1:                                     ; preds = %.lr.ph2501
  %i.ddq = getelementptr inbounds nuw i8, ptr %.3241.i1192500, i64 1
  %i.ddr = getelementptr inbounds nuw i8, ptr %.3248.i1182499, i64 1 ; 2 uses
  store i8 %i.ddm, ptr %.3248.i1182499, align 1, !tbaa !100
  %i.dds = load i8, ptr %i.ddq, align 1, !tbaa !100 ; 2 uses
  %i.ddt = zext i8 %i.dds to i64
  %i.ddu = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.ddt
  %i.ddv = load i8, ptr %i.ddu, align 1, !tbaa !100
  %.not.i121.1 = icmp eq i8 %i.ddv, 0
  br i1 %.not.i121.1, label %.lr.ph2501.2, label %.preheader1350.preheader.loopexit.loopexit.split.loop.exit6692, !prof !62

.lr.ph2501.2:                                     ; preds = %.lr.ph2501.1
  %i.ddw = getelementptr inbounds nuw i8, ptr %.3241.i1192500, i64 2
  %i.ddx = getelementptr inbounds nuw i8, ptr %.3248.i1182499, i64 2 ; 2 uses
  store i8 %i.dds, ptr %i.ddr, align 1, !tbaa !100
  %i.ddy = load i8, ptr %i.ddw, align 1, !tbaa !100 ; 2 uses
  %i.ddz = zext i8 %i.ddy to i64
  %i.dea = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.ddz
  %i.deb = load i8, ptr %i.dea, align 1, !tbaa !100
  %.not.i121.2 = icmp eq i8 %i.deb, 0
  br i1 %.not.i121.2, label %.lr.ph2501.3, label %.preheader1350.preheader.loopexit.loopexit.split.loop.exit6689, !prof !62

.lr.ph2501.3:                                     ; preds = %.lr.ph2501.2
  %i.dec = getelementptr inbounds nuw i8, ptr %.3241.i1192500, i64 3
  %i.ded = getelementptr inbounds nuw i8, ptr %.3248.i1182499, i64 3 ; 2 uses
  store i8 %i.ddy, ptr %i.ddx, align 1, !tbaa !100
  %i.dee = load i8, ptr %i.dec, align 1, !tbaa !100 ; 2 uses
  %i.def = zext i8 %i.dee to i64
  %i.deg = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.def
  %i.deh = load i8, ptr %i.deg, align 1, !tbaa !100
  %.not.i121.3 = icmp eq i8 %i.deh, 0
  br i1 %.not.i121.3, label %bb.nr, label %.preheader1350.preheader.loopexit.loopexit.split.loop.exit, !prof !62

bb.nr:                                            ; preds = %.lr.ph2501.3
  %i.dei = getelementptr inbounds nuw i8, ptr %.3241.i1192500, i64 4 ; 2 uses
  %i.dej = getelementptr inbounds nuw i8, ptr %.3248.i1182499, i64 4 ; 2 uses
  store i8 %i.dee, ptr %i.ded, align 1, !tbaa !100
  %exitcond3126.not.3 = icmp eq ptr %i.dei, %scevgep3125
  br i1 %exitcond3126.not.3, label %write_str.exit209, label %.lr.ph2501, !llvm.loop !25

.loopexit1357:                                    ; preds = %bb.mw, %bb.nn
  %i.dek = phi i8 [ %i.dcn, %bb.nn ], [ %i.cyu, %bb.mw ]
  %.5250.i185 = phi ptr [ %.2247.i1162494, %bb.nn ], [ %.1246.i1142487, %bb.mw ] ; 2 uses
  %.5243.i186 = phi ptr [ %.2240.i1172495, %bb.nn ], [ %.1239.i1152488, %bb.mw ]
  store i8 %i.dek, ptr %.5250.i185, align 1
  %i.del = getelementptr inbounds nuw i8, ptr %.5250.i185, i64 1
  %i.dem = getelementptr inbounds nuw i8, ptr %.5243.i186, i64 1
  br label %.preheader1350.preheader

.loopexit1358:                                    ; preds = %bb.mx, %bb.no
  %.6251.i188 = phi ptr [ %.2247.i1162494, %bb.no ], [ %.1246.i1142487, %bb.mx ] ; 2 uses
  %.6.i189 = phi ptr [ %.2240.i1172495, %bb.no ], [ %.1239.i1152488, %bb.mx ] ; 2 uses
  %i.den = load i16, ptr %.6.i189, align 1
  store i16 %i.den, ptr %.6251.i188, align 1
  %i.deo = getelementptr inbounds nuw i8, ptr %.6251.i188, i64 2
  %i.dep = getelementptr inbounds nuw i8, ptr %.6.i189, i64 2
  br label %.preheader1350.preheader

.loopexit1359:                                    ; preds = %bb.my, %bb.np
  %.7252.i191 = phi ptr [ %.2247.i1162494, %bb.np ], [ %.1246.i1142487, %bb.my ] ; 2 uses
  %.7.i192 = phi ptr [ %.2240.i1172495, %bb.np ], [ %.1239.i1152488, %bb.my ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i191, ptr noundef nonnull align 1 dereferenceable(3) %.7.i192, i64 3, i1 false)
  %i.deq = getelementptr inbounds nuw i8, ptr %.7252.i191, i64 3
  %i.der = getelementptr inbounds nuw i8, ptr %.7.i192, i64 3
  br label %.preheader1350.preheader

bb.ns:                                            ; preds = %bb.mz
  %i.des = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 4
  %i.det = load i32, ptr %.1239.i1152488, align 1
  store i32 %i.det, ptr %.1246.i1142487, align 1
  %i.deu = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 4
  br label %.preheader1350.preheader

bb.nt:                                            ; preds = %bb.na
  %i.dev = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i1142487, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i1152488, i64 5, i1 false)
  %i.dew = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 5
  br label %.preheader1350.preheader

bb.nu:                                            ; preds = %bb.nb
  %i.dex = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i1142487, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i1152488, i64 6, i1 false)
  %i.dey = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 6
  br label %.preheader1350.preheader

bb.nv:                                            ; preds = %bb.nc
  %i.dez = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i1142487, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i1152488, i64 7, i1 false)
  %i.dfa = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 7
  br label %.preheader1350.preheader

bb.nw:                                            ; preds = %bb.nd
  %i.dfb = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 8
  %i.dfc = load i64, ptr %.1239.i1152488, align 1
  store i64 %i.dfc, ptr %.1246.i1142487, align 1
  %i.dfd = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 8
  br label %.preheader1350.preheader

bb.nx:                                            ; preds = %bb.ne
  %i.dfe = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i1142487, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i1152488, i64 9, i1 false)
  %i.dff = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 9
  br label %.preheader1350.preheader

bb.ny:                                            ; preds = %bb.nf
  %i.dfg = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i1142487, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i1152488, i64 10, i1 false)
  %i.dfh = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 10
  br label %.preheader1350.preheader

bb.nz:                                            ; preds = %bb.ng
  %i.dfi = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1246.i1142487, ptr noundef nonnull align 1 dereferenceable(11) %.1239.i1152488, i64 11, i1 false)
  %i.dfj = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 11
  br label %.preheader1350.preheader

bb.oa:                                            ; preds = %bb.nh
  %i.dfk = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1246.i1142487, ptr noundef nonnull align 1 dereferenceable(12) %.1239.i1152488, i64 12, i1 false)
  %i.dfl = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 12
  br label %.preheader1350.preheader

bb.ob:                                            ; preds = %bb.ni
  %i.dfm = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1246.i1142487, ptr noundef nonnull align 1 dereferenceable(13) %.1239.i1152488, i64 13, i1 false)
  %i.dfn = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 13
  br label %.preheader1350.preheader

bb.oc:                                            ; preds = %bb.nj
  %i.dfo = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1246.i1142487, ptr noundef nonnull align 1 dereferenceable(14) %.1239.i1152488, i64 14, i1 false)
  %i.dfp = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 14
  br label %.preheader1350.preheader

bb.od:                                            ; preds = %bb.nk
  %i.dfq = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1246.i1142487, ptr noundef nonnull align 1 dereferenceable(15) %.1239.i1152488, i64 15, i1 false)
  %i.dfr = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 15
  br label %.preheader1350.preheader

.preheader1350.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2501.3
  %i.dfs = getelementptr inbounds nuw i8, ptr %.3241.i1192500, i64 3
  br label %.preheader1350.preheader

.preheader1350.preheader.loopexit.loopexit.split.loop.exit6689: ; preds = %.lr.ph2501.2
  %i.dft = getelementptr inbounds nuw i8, ptr %.3241.i1192500, i64 2
  br label %.preheader1350.preheader

.preheader1350.preheader.loopexit.loopexit.split.loop.exit6692: ; preds = %.lr.ph2501.1
  %i.dfu = getelementptr inbounds nuw i8, ptr %.3241.i1192500, i64 1
  br label %.preheader1350.preheader

.preheader1350.preheader:                         ; preds = %.lr.ph2490, %.lr.ph2496, %.lr.ph2501, %.preheader1350.preheader.loopexit.loopexit.split.loop.exit6692, %.preheader1350.preheader.loopexit.loopexit.split.loop.exit6689, %.preheader1350.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2501.prol, %.loopexit1357, %.loopexit1358, %.loopexit1359, %bb.ns, %bb.nt, %bb.nu, %bb.nv, %bb.nw, %bb.nx, %bb.ny, %bb.nz, %bb.oa, %bb.ob, %bb.oc, %bb.od
  %.8253.i124.ph = phi ptr [ %.2247.i1162494, %.lr.ph2496 ], [ %.3248.i1182499.prol, %.lr.ph2501.prol ], [ %i.del, %.loopexit1357 ], [ %i.deo, %.loopexit1358 ], [ %i.deq, %.loopexit1359 ], [ %i.deu, %bb.ns ], [ %i.dew, %bb.nt ], [ %i.dey, %bb.nu ], [ %i.dfa, %bb.nv ], [ %i.dfd, %bb.nw ], [ %i.dff, %bb.nx ], [ %i.dfh, %bb.ny ], [ %i.dfj, %bb.nz ], [ %i.dfl, %bb.oa ], [ %i.dfn, %bb.ob ], [ %i.dfp, %bb.oc ], [ %i.dfr, %bb.od ], [ %.3248.i1182499, %.lr.ph2501 ], [ %i.ddr, %.preheader1350.preheader.loopexit.loopexit.split.loop.exit6692 ], [ %i.ddx, %.preheader1350.preheader.loopexit.loopexit.split.loop.exit6689 ], [ %i.ded, %.preheader1350.preheader.loopexit.loopexit.split.loop.exit ], [ %.1246.i1142487, %.lr.ph2490 ]
  %.8.i125.ph = phi ptr [ %.2240.i1172495, %.lr.ph2496 ], [ %.3241.i1192500.prol, %.lr.ph2501.prol ], [ %i.dem, %.loopexit1357 ], [ %i.dep, %.loopexit1358 ], [ %i.der, %.loopexit1359 ], [ %i.des, %bb.ns ], [ %i.dev, %bb.nt ], [ %i.dex, %bb.nu ], [ %i.dez, %bb.nv ], [ %i.dfb, %bb.nw ], [ %i.dfe, %bb.nx ], [ %i.dfg, %bb.ny ], [ %i.dfi, %bb.nz ], [ %i.dfk, %bb.oa ], [ %i.dfm, %bb.ob ], [ %i.dfo, %bb.oc ], [ %i.dfq, %bb.od ], [ %.3241.i1192500, %.lr.ph2501 ], [ %i.dfu, %.preheader1350.preheader.loopexit.loopexit.split.loop.exit6692 ], [ %i.dft, %.preheader1350.preheader.loopexit.loopexit.split.loop.exit6689 ], [ %i.dfs, %.preheader1350.preheader.loopexit.loopexit.split.loop.exit ], [ %.1239.i1152488, %.lr.ph2490 ]
  br label %.preheader1350

.preheader1350:                                   ; preds = %.preheader1350.backedge, %.preheader1350.preheader
  %.8253.i124 = phi ptr [ %.8253.i124.ph, %.preheader1350.preheader ], [ %.8253.i124.be, %.preheader1350.backedge ] ; 34 uses
  %.8.i125 = phi ptr [ %.8.i125.ph, %.preheader1350.preheader ], [ %.8.i125.be, %.preheader1350.backedge ] ; 23 uses
  %i.dfv = getelementptr inbounds nuw i8, ptr %.8.i125, i64 4 ; 3 uses
  %i.dfw = icmp ugt ptr %i.dfv, %i.cyn            ; 2 uses
  br i1 %i.dfw, label %bb.oe, label %._crit_edge3172, !prof !45

._crit_edge3172:                                  ; preds = %.preheader1350
  %.pre3173 = load i8, ptr %.8.i125, align 1, !tbaa !100 ; 2 uses
  %.phi.trans.insert3174 = zext i8 %.pre3173 to i64 ; 2 uses
  %.phi.trans.insert3175 = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %.phi.trans.insert3174
  %.pre3176 = load i8, ptr %.phi.trans.insert3175, align 1, !tbaa !100
  br label %bb.of

bb.oe:                                            ; preds = %.preheader1350
  %i.dfx = ptrtoint ptr %.8.i125 to i64
  %i.dfy = sub i64 %i.cyo, %i.dfx
  %i.dfz = load i8, ptr %.8.i125, align 1, !tbaa !100 ; 3 uses
  %i.dga = zext i8 %i.dfz to i64                  ; 2 uses
  %i.dgb = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dga
  %i.dgc = load i8, ptr %i.dgb, align 1, !tbaa !100 ; 2 uses
  %i.dgd = lshr i8 %i.dgc, 1
  %i.dge = zext nneg i8 %i.dgd to i64
  %i.dgf = icmp slt i64 %i.dfy, %i.dge
  br i1 %i.dgf, label %bb.oy, label %bb.of

bb.of:                                            ; preds = %._crit_edge3172, %bb.oe
  %.pre-phi3203 = phi i64 [ %.phi.trans.insert3174, %._crit_edge3172 ], [ %i.dga, %bb.oe ]
  %i.dgg = phi i8 [ %.pre3176, %._crit_edge3172 ], [ %i.dgc, %bb.oe ]
  %i.dgh = phi i8 [ %.pre3173, %._crit_edge3172 ], [ %i.dfz, %bb.oe ] ; 2 uses
  switch i8 %i.dgg, label %write_str.exit209 [
    i8 0, label %bb.og
    i8 4, label %bb.oh
    i8 6, label %bb.oj
    i8 8, label %bb.oo
    i8 2, label %bb.oq
    i8 3, label %bb.or
    i8 5, label %bb.os
    i8 7, label %bb.ou
    i8 9, label %bb.ow
    i8 1, label %bb.oy
  ]

bb.og:                                            ; preds = %bb.of
  %i.dgi = getelementptr inbounds nuw i8, ptr %.8.i125, i64 1
  store i8 %i.dgh, ptr %.8253.i124, align 1, !tbaa !100
  br label %bb.mv

bb.oh:                                            ; preds = %bb.of
  %i.dgj = load i16, ptr %.8.i125, align 1        ; 3 uses
  %.sroa.0960.0.insert.ext = zext i16 %i.dgj to i32 ; 2 uses
  %i.dgk = and i32 %.sroa.0960.0.insert.ext, 49376
  %i.dgl = icmp ne i32 %i.dgk, 32960
  %i.dgm = and i32 %.sroa.0960.0.insert.ext, 30
  %i.dgn = icmp eq i32 %i.dgm, 0
  %.not310.i179 = or i1 %i.dgl, %i.dgn
  %i.dgo = trunc i16 %i.dgj to i8
  br i1 %.not310.i179, label %.thread1197, label %bb.oi, !prof !45

bb.oi:                                            ; preds = %bb.oh
  store i16 %i.dgj, ptr %.8253.i124, align 1
  %i.dgp = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 2
  %i.dgq = getelementptr inbounds nuw i8, ptr %.8.i125, i64 2
  br label %.preheader1350.backedge

bb.oj:                                            ; preds = %bb.of
  br i1 %i.dfw, label %bb.om, label %bb.ok, !prof !45

bb.ok:                                            ; preds = %bb.oj
  %.sroa.0.0.copyload.i335.i169 = load i32, ptr %.8.i125, align 1 ; 4 uses
  %i.dgr = and i32 %.sroa.0.0.copyload.i335.i169, 12632304
  %i.dgs = icmp eq i32 %i.dgr, 8421600
  %i.dgt = trunc i32 %.sroa.0.0.copyload.i335.i169 to i8 ; 3 uses
  br i1 %i.dgs, label %bb.ol, label %.thread1197, !prof !62

bb.ol:                                            ; preds = %bb.ok
  %i.dgu = and i32 %.sroa.0.0.copyload.i335.i169, 8207
  switch i32 %i.dgu, label %.critedge.i170 [
    i32 8205, label %.thread1197
    i32 0, label %.thread1197
  ], !prof !151

bb.om:                                            ; preds = %bb.oj
  %.sroa.0.0.copyload.i327.i174 = load i16, ptr %.8.i125, align 1 ; 2 uses
  %i.dgv = getelementptr inbounds nuw i8, ptr %.8.i125, i64 2
  %i.dgw = load i8, ptr %i.dgv, align 1, !tbaa !100
  %.sroa.4.0.insert.ext.i328.i175 = zext i8 %i.dgw to i32
  %.sroa.4.0.insert.shift.i329.i176 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i328.i175, 16
  %.sroa.0.0.insert.ext.i330.i177 = zext i16 %.sroa.0.0.copyload.i327.i174 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i331.i178 = or disjoint i32 %.sroa.4.0.insert.shift.i329.i176, %.sroa.0.0.insert.ext.i330.i177 ; 2 uses
  %i.dgx = and i32 %.sroa.0.0.insert.insert.i331.i178, 12632304
  %i.dgy = icmp eq i32 %i.dgx, 8421600
  %i.dgz = trunc i16 %.sroa.0.0.copyload.i327.i174 to i8 ; 3 uses
  br i1 %i.dgy, label %bb.on, label %.thread1197, !prof !62

bb.on:                                            ; preds = %bb.om
  %i.dha = and i32 %.sroa.0.0.insert.ext.i330.i177, 8207
  switch i32 %i.dha, label %.critedge.i170 [
    i32 8205, label %.thread1197
    i32 0, label %.thread1197
  ], !prof !151

.critedge.i170:                                   ; preds = %bb.on, %bb.ol
  %storemerge1296 = phi i32 [ %.sroa.0.0.copyload.i335.i169, %bb.ol ], [ %.sroa.0.0.insert.insert.i331.i178, %bb.on ]
  store i32 %storemerge1296, ptr %.8253.i124, align 1
  %i.dhb = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 3
  %i.dhc = getelementptr inbounds nuw i8, ptr %.8.i125, i64 3
  br label %.preheader1350.backedge

bb.oo:                                            ; preds = %bb.of
  %.sroa.0.0.copyload.i334.i160 = load i32, ptr %.8.i125, align 1 ; 6 uses
  %i.dhd = and i32 %.sroa.0.0.copyload.i334.i160, -1061109512
  %i.dhe = icmp ne i32 %i.dhd, -2139062032
  %i.dhf = and i32 %.sroa.0.0.copyload.i334.i160, 12295
  %.not301.i161 = icmp eq i32 %i.dhf, 0
  %or.cond.i162 = or i1 %i.dhe, %.not301.i161
  %i.dhg = trunc i32 %.sroa.0.0.copyload.i334.i160 to i8 ; 2 uses
  br i1 %or.cond.i162, label %.thread1197, label %bb.op, !prof !139

bb.op:                                            ; preds = %bb.oo
  %i.dhh = and i32 %.sroa.0.0.copyload.i334.i160, 4
  %i.dhi = icmp ne i32 %i.dhh, 0
  %i.dhj = and i32 %.sroa.0.0.copyload.i334.i160, 12291
  %i.dhk = icmp ne i32 %i.dhj, 0
  %.not304.i163 = and i1 %i.dhi, %i.dhk
  br i1 %.not304.i163, label %.thread1197, label %.critedge316.i164, !prof !45

.critedge316.i164:                                ; preds = %bb.op
  store i32 %.sroa.0.0.copyload.i334.i160, ptr %.8253.i124, align 1
  %i.dhl = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 4
  br label %.preheader1350.backedge

bb.oq:                                            ; preds = %bb.of
  %i.dhm = shl nuw nsw i64 %.pre-phi3203, 1
  %i.dhn = getelementptr inbounds nuw i8, ptr @esc_single_char_table, i64 %i.dhm
  %i.dho = load i16, ptr %i.dhn, align 2
  store i16 %i.dho, ptr %.8253.i124, align 1
  %i.dhp = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 2
  %i.dhq = getelementptr inbounds nuw i8, ptr %.8.i125, i64 1
  br label %.preheader1350.backedge

.preheader1350.backedge:                          ; preds = %bb.oq, %bb.or, %bb.oz, %bb.pa, %bb.oi, %.critedge.i170, %.critedge316.i164, %bb.ot, %.critedge321.i145, %.critedge325.i136
  %.8253.i124.be = phi ptr [ %i.dlp, %bb.oz ], [ %i.dgp, %bb.oi ], [ %i.dhb, %.critedge.i170 ], [ %i.dhl, %.critedge316.i164 ], [ %i.dhp, %bb.oq ], [ %i.dhx, %bb.or ], [ %i.dis, %bb.ot ], [ %i.djp, %.critedge321.i145 ], [ %i.dll, %.critedge325.i136 ], [ %i.dlr, %bb.pa ]
  %.8.i125.be = phi ptr [ %i.dlo, %bb.oz ], [ %i.dgq, %bb.oi ], [ %i.dhc, %.critedge.i170 ], [ %i.dfv, %.critedge316.i164 ], [ %i.dhq, %bb.oq ], [ %i.dhy, %bb.or ], [ %i.dit, %bb.ot ], [ %i.djq, %.critedge321.i145 ], [ %i.dfv, %.critedge325.i136 ], [ %i.dls, %bb.pa ]
  br label %.preheader1350

bb.or:                                            ; preds = %bb.of
  store i32 808482140, ptr %.8253.i124, align 1
  %i.dhr = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 4
  %i.dhs = load i8, ptr %.8.i125, align 1, !tbaa !100
  %i.dht = zext i8 %i.dhs to i64
  %i.dhu = shl nuw nsw i64 %i.dht, 1
  %i.dhv = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dhu
  %i.dhw = load i16, ptr %i.dhv, align 2
  store i16 %i.dhw, ptr %i.dhr, align 1
  %i.dhx = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 6
  %i.dhy = getelementptr inbounds nuw i8, ptr %.8.i125, i64 1
  br label %.preheader1350.backedge

bb.os:                                            ; preds = %bb.of
  %.sroa.0.0.copyload.i332.i153 = load i16, ptr %.8.i125, align 1 ; 3 uses
  %.sroa.0957.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i153 to i32 ; 2 uses
  %i.dhz = and i32 %.sroa.0957.0.insert.ext, 49376
  %i.dia = icmp ne i32 %i.dhz, 32960
  %i.dib = and i32 %.sroa.0957.0.insert.ext, 30
  %i.dic = icmp eq i32 %i.dib, 0
  %.not298.i154 = or i1 %i.dia, %i.dic
  br i1 %.not298.i154, label %.thread1207, label %bb.ot, !prof !45

bb.ot:                                            ; preds = %bb.os
  %i.did = lshr i16 %.sroa.0.0.copyload.i332.i153, 8
  %i.die = trunc nuw i16 %i.did to i8
  %i.dif = trunc i16 %.sroa.0.0.copyload.i332.i153 to i8 ; 2 uses
  %.tr299.i155 = shl i8 %i.dif, 6
  %i.dig = and i8 %i.die, 63
  store i16 30044, ptr %.8253.i124, align 1
  %i.dih = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 2
  %i.dii = lshr i8 %i.dif, 1
  %i.dij = and i8 %i.dii, 14
  %i.dik = zext nneg i8 %i.dij to i64
  %i.dil = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dik
  %i.dim = load i16, ptr %i.dil, align 2
  store i16 %i.dim, ptr %i.dih, align 1
  %i.din = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 4
  %.narrow300.i156 = or disjoint i8 %i.dig, %.tr299.i155
  %i.dio = zext i8 %.narrow300.i156 to i64
  %i.dip = shl nuw nsw i64 %i.dio, 1
  %i.diq = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dip
  %i.dir = load i16, ptr %i.diq, align 2
  store i16 %i.dir, ptr %i.din, align 1
  %i.dis = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 6
  %i.dit = getelementptr inbounds nuw i8, ptr %.8.i125, i64 2
  br label %.preheader1350.backedge

bb.ou:                                            ; preds = %bb.of
  %.sroa.0.0.copyload.i.i140 = load i16, ptr %.8.i125, align 1 ; 3 uses
  %i.diu = getelementptr inbounds nuw i8, ptr %.8.i125, i64 2
  %i.div = load i8, ptr %i.diu, align 1, !tbaa !100 ; 2 uses
  %.sroa.4.0.insert.ext.i.i141 = zext i8 %i.div to i32
  %.sroa.4.0.insert.shift.i.i142 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i141, 16
  %.sroa.0.0.insert.ext.i.i143 = zext i16 %.sroa.0.0.copyload.i.i140 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i144 = or disjoint i32 %.sroa.4.0.insert.shift.i.i142, %.sroa.0.0.insert.ext.i.i143
  %i.diw = and i32 %.sroa.0.0.insert.insert.i.i144, 12632304
  %i.dix = icmp eq i32 %i.diw, 8421600
  br i1 %i.dix, label %bb.ov, label %.thread1207, !prof !62

bb.ov:                                            ; preds = %bb.ou
  %i.diy = and i32 %.sroa.0.0.insert.ext.i.i143, 8207
  switch i32 %i.diy, label %.critedge321.i145 [
    i32 8205, label %.thread1207
    i32 0, label %.thread1207
  ], !prof !151

.critedge321.i145:                                ; preds = %bb.ov
  %i.diz = zext i16 %.sroa.0.0.copyload.i.i140 to i64
  %i.dja = shl nuw nsw i64 %i.diz, 12
  %i.djb = lshr i16 %.sroa.0.0.copyload.i.i140, 2
  %i.djc = and i16 %i.djb, 4032                   ; 2 uses
  %i.djd = zext nneg i16 %i.djc to i64
  %i.dje = and i8 %i.div, 63
  store i16 30044, ptr %.8253.i124, align 1
  %i.djf = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 2
  %.masked.i150 = or disjoint i64 %i.dja, %i.djd
  %i.djg = lshr i64 %.masked.i150, 7
  %i.djh = and i64 %i.djg, 510
  %i.dji = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.djh
  %i.djj = load i16, ptr %i.dji, align 2
  store i16 %i.djj, ptr %i.djf, align 1
  %i.djk = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 4
  %.tr294.i151 = trunc i16 %i.djc to i8
  %.narrow295.i152 = or disjoint i8 %i.dje, %.tr294.i151
  %i.djl = zext i8 %.narrow295.i152 to i64
  %i.djm = shl nuw nsw i64 %i.djl, 1
  %i.djn = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.djm
  %i.djo = load i16, ptr %i.djn, align 2
  store i16 %i.djo, ptr %i.djk, align 1
  %i.djp = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 6
  %i.djq = getelementptr inbounds nuw i8, ptr %.8.i125, i64 3
  br label %.preheader1350.backedge

bb.ow:                                            ; preds = %bb.of
  %.sroa.0.0.copyload.i333.i130 = load i32, ptr %.8.i125, align 1 ; 9 uses
  %i.djr = and i32 %.sroa.0.0.copyload.i333.i130, -1061109512
  %i.djs = icmp ne i32 %i.djr, -2139062032
  %i.djt = and i32 %.sroa.0.0.copyload.i333.i130, 12295
  %.not288.i131 = icmp eq i32 %i.djt, 0
  %or.cond323.i132 = or i1 %i.djs, %.not288.i131
  %i.dju = lshr i32 %.sroa.0.0.copyload.i333.i130, 24
  br i1 %or.cond323.i132, label %.thread1207, label %bb.ox, !prof !139

bb.ox:                                            ; preds = %bb.ow
  %i.djv = and i32 %.sroa.0.0.copyload.i333.i130, 4
  %i.djw = icmp ne i32 %i.djv, 0
  %i.djx = and i32 %.sroa.0.0.copyload.i333.i130, 12291
  %i.djy = icmp ne i32 %i.djx, 0
  %.not291.i133 = and i1 %i.djw, %i.djy
  br i1 %.not291.i133, label %.thread1207, label %.critedge325.i136, !prof !45

.critedge325.i136:                                ; preds = %bb.ox
  %i.djz = shl i32 %.sroa.0.0.copyload.i333.i130, 18
  %i.dka = and i32 %i.djz, 1835008
  %i.dkb = shl i32 %.sroa.0.0.copyload.i333.i130, 4
  %i.dkc = and i32 %i.dkb, 258048
  %i.dkd = lshr i32 %.sroa.0.0.copyload.i333.i130, 10 ; 2 uses
  %i.dke = and i32 %i.dkd, 3072
  %i.dkf = and i32 %i.dju, 63
  %i.dkg = add nsw i32 %i.dka, -65536
  %i.dkh = add nsw i32 %i.dkg, %i.dkc             ; 2 uses
  %i.dki = or disjoint i32 %i.dkh, %i.dke
  %i.dkj = lshr exact i32 %i.dkh, 10
  %i.dkk = add nuw nsw i32 %i.dkj, 55296
  store i16 30044, ptr %.8253.i124, align 1
  %i.dkl = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 2
  %i.dkm = lshr i32 %i.dkk, 7
  %i.dkn = and i32 %i.dkm, 65534
  %i.dko = zext nneg i32 %i.dkn to i64
  %i.dkp = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dko
  %i.dkq = load i16, ptr %i.dkp, align 2
  store i16 %i.dkq, ptr %i.dkl, align 1
  %i.dkr = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 4
  %i.dks = lshr exact i32 %i.dki, 9
  %i.dkt = and i32 %i.dks, 510
  %i.dku = zext nneg i32 %i.dkt to i64
  %i.dkv = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dku
  %i.dkw = load i16, ptr %i.dkv, align 2
  store i16 %i.dkw, ptr %i.dkr, align 1
  %i.dkx = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 6
  store i16 30044, ptr %i.dkx, align 1
  %i.dky = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 8
  %i.dkz = lshr i32 %.sroa.0.0.copyload.i333.i130, 17
  %i.dla = and i32 %i.dkz, 6
  %i.dlb = zext nneg i32 %i.dla to i64
  %i.dlc = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dlb
  %i.dld = getelementptr inbounds nuw i8, ptr %i.dlc, i64 440
  %i.dle = load i16, ptr %i.dld, align 2
  store i16 %i.dle, ptr %i.dky, align 1
  %i.dlf = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 10
  %.masked3296 = and i32 %i.dkd, 192
  %i.dlg = or disjoint i32 %i.dkf, %.masked3296
  %i.dlh = shl nuw nsw i32 %i.dlg, 1
  %i.dli = zext nneg i32 %i.dlh to i64
  %i.dlj = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dli
  %i.dlk = load i16, ptr %i.dlj, align 2
  store i16 %i.dlk, ptr %i.dlf, align 1
  %i.dll = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 12
  br label %.preheader1350.backedge

bb.oy:                                            ; preds = %bb.of, %bb.oe
  %i.dlm = phi i8 [ %i.dgh, %bb.of ], [ %i.dfz, %bb.oe ]
  br i1 %.not1291, label %.thread1197, label %.thread1207

.thread1197:                                      ; preds = %bb.oo, %bb.op, %bb.om, %bb.ok, %bb.on, %bb.on, %bb.ol, %bb.ol, %bb.oh, %bb.oy
  %i.dln = phi i8 [ %i.dhg, %bb.oo ], [ %i.dhg, %bb.op ], [ %i.dgz, %bb.om ], [ %i.dgt, %bb.ok ], [ %i.dgz, %bb.on ], [ %i.dgz, %bb.on ], [ %i.dgt, %bb.ol ], [ %i.dgt, %bb.ol ], [ %i.dgo, %bb.oh ], [ %i.dlm, %bb.oy ]
  br i1 %.not1294, label %.loopexit1337, label %bb.oz

bb.oz:                                            ; preds = %.thread1197
  %i.dlo = getelementptr inbounds nuw i8, ptr %.8.i125, i64 1
  %i.dlp = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 1
  store i8 %i.dln, ptr %.8253.i124, align 1, !tbaa !100
  br label %.preheader1350.backedge

.thread1207:                                      ; preds = %bb.ow, %bb.ox, %bb.ou, %bb.ov, %bb.ov, %bb.os, %bb.oy
  br i1 %.not1294, label %.loopexit1337, label %bb.pa

bb.pa:                                            ; preds = %.thread1207
  store i16 30044, ptr %.8253.i124, align 1
  %i.dlq = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 2
  store i32 1145456198, ptr %i.dlq, align 1
  %i.dlr = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 6
  %i.dls = getelementptr inbounds nuw i8, ptr %.8.i125, i64 1
  br label %.preheader1350.backedge

bb.pb:                                            ; preds = %bb.mu
  %i.dlt = load i64, ptr %.0418.i, align 8, !tbaa !99
  %i.dlu = and i64 %i.dlt, 24
  %.not442.i = icmp eq i64 %i.dlu, 0
  store i8 34, ptr %.2387.i, align 1, !tbaa !100
  br i1 %.not442.i, label %.split420.i, label %bb.ri

.split420.i:                                      ; preds = %bb.pb
  %i.dlv = getelementptr inbounds nuw i8, ptr %i.cxq, i64 %i.cxo ; 3 uses
  %i.dlw = ptrtoint ptr %i.dlv to i64             ; 4 uses
  %i.dlx = add i64 %i.cxo, %i.cxr
  br label %bb.pc

bb.pc:                                            ; preds = %bb.qn, %.split420.i
  %.pn.i = phi ptr [ %.2387.i, %.split420.i ], [ %.8253.i, %bb.qn ]
  %.0238.i = phi ptr [ %i.cxq, %.split420.i ], [ %i.dtq, %bb.qn ] ; 3 uses
  %.0245.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %i.dly = ptrtoint ptr %.0238.i to i64
  %i.dlz = sub i64 %i.dlw, %i.dly                 ; 2 uses
  %i.dma = icmp sgt i64 %i.dlz, 15
  br i1 %i.dma, label %.lr.ph2541, label %.preheader1341

.preheader1341:                                   ; preds = %bb.ps, %bb.pc
  %.pre-phi3199 = phi i64 [ %i.dlz, %bb.pc ], [ %i.dpg, %bb.ps ]
  %.1246.i.lcssa = phi ptr [ %.0245.i, %bb.pc ], [ %i.dpd, %bb.ps ] ; 2 uses
  %.1239.i.lcssa = phi ptr [ %.0238.i, %bb.pc ], [ %i.dpe, %bb.ps ] ; 2 uses
  %i.dmb = icmp sgt i64 %.pre-phi3199, 3
  br i1 %i.dmb, label %.lr.ph2547, label %.preheader1339

.lr.ph2541:                                       ; preds = %bb.pc, %bb.ps
  %.1239.i2539 = phi ptr [ %i.dpe, %bb.ps ], [ %.0238.i, %bb.pc ] ; 46 uses
  %.1246.i2538 = phi ptr [ %i.dpd, %bb.ps ], [ %.0245.i, %bb.pc ] ; 30 uses
  %i.dmc = load i8, ptr %.1239.i2539, align 1, !tbaa !100 ; 2 uses
  %i.dmd = zext i8 %i.dmc to i64
  %i.dme = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dmd
  %i.dmf = load i8, ptr %i.dme, align 1, !tbaa !100
  %.not272.i = icmp eq i8 %i.dmf, 0
  br i1 %.not272.i, label %bb.pd, label %.preheader1336.preheader, !prof !62

bb.pd:                                            ; preds = %.lr.ph2541
  %i.dmg = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 1
  %i.dmh = load i8, ptr %i.dmg, align 1, !tbaa !100
  %i.dmi = zext i8 %i.dmh to i64
  %i.dmj = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dmi
  %i.dmk = load i8, ptr %i.dmj, align 1, !tbaa !100
  %.not273.i = icmp eq i8 %i.dmk, 0
  br i1 %.not273.i, label %bb.pe, label %.loopexit1343, !prof !62

bb.pe:                                            ; preds = %bb.pd
  %i.dml = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 2
  %i.dmm = load i8, ptr %i.dml, align 1, !tbaa !100
  %i.dmn = zext i8 %i.dmm to i64
  %i.dmo = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dmn
  %i.dmp = load i8, ptr %i.dmo, align 1, !tbaa !100
  %.not274.i = icmp eq i8 %i.dmp, 0
  br i1 %.not274.i, label %bb.pf, label %.loopexit1344, !prof !62

bb.pf:                                            ; preds = %bb.pe
  %i.dmq = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 3
  %i.dmr = load i8, ptr %i.dmq, align 1, !tbaa !100
  %i.dms = zext i8 %i.dmr to i64
  %i.dmt = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dms
  %i.dmu = load i8, ptr %i.dmt, align 1, !tbaa !100
  %.not275.i = icmp eq i8 %i.dmu, 0
  br i1 %.not275.i, label %bb.pg, label %.loopexit1345, !prof !62

bb.pg:                                            ; preds = %bb.pf
  %i.dmv = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 4
  %i.dmw = load i8, ptr %i.dmv, align 1, !tbaa !100
  %i.dmx = zext i8 %i.dmw to i64
  %i.dmy = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dmx
  %i.dmz = load i8, ptr %i.dmy, align 1, !tbaa !100
  %.not276.i = icmp eq i8 %i.dmz, 0
  br i1 %.not276.i, label %bb.ph, label %bb.pz, !prof !62

bb.ph:                                            ; preds = %bb.pg
  %i.dna = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 5
  %i.dnb = load i8, ptr %i.dna, align 1, !tbaa !100
  %i.dnc = zext i8 %i.dnb to i64
  %i.dnd = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dnc
  %i.dne = load i8, ptr %i.dnd, align 1, !tbaa !100
  %.not277.i = icmp eq i8 %i.dne, 0
  br i1 %.not277.i, label %bb.pi, label %bb.qa, !prof !62

bb.pi:                                            ; preds = %bb.ph
  %i.dnf = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 6
  %i.dng = load i8, ptr %i.dnf, align 1, !tbaa !100
  %i.dnh = zext i8 %i.dng to i64
  %i.dni = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dnh
  %i.dnj = load i8, ptr %i.dni, align 1, !tbaa !100
  %.not278.i = icmp eq i8 %i.dnj, 0
  br i1 %.not278.i, label %bb.pj, label %bb.qb, !prof !62

bb.pj:                                            ; preds = %bb.pi
  %i.dnk = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 7
  %i.dnl = load i8, ptr %i.dnk, align 1, !tbaa !100
  %i.dnm = zext i8 %i.dnl to i64
  %i.dnn = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dnm
  %i.dno = load i8, ptr %i.dnn, align 1, !tbaa !100
  %.not279.i = icmp eq i8 %i.dno, 0
  br i1 %.not279.i, label %bb.pk, label %bb.qc, !prof !62

bb.pk:                                            ; preds = %bb.pj
  %i.dnp = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 8
  %i.dnq = load i8, ptr %i.dnp, align 1, !tbaa !100
  %i.dnr = zext i8 %i.dnq to i64
  %i.dns = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dnr
  %i.dnt = load i8, ptr %i.dns, align 1, !tbaa !100
  %.not280.i = icmp eq i8 %i.dnt, 0
  br i1 %.not280.i, label %bb.pl, label %bb.qd, !prof !62

bb.pl:                                            ; preds = %bb.pk
  %i.dnu = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 9
  %i.dnv = load i8, ptr %i.dnu, align 1, !tbaa !100
  %i.dnw = zext i8 %i.dnv to i64
  %i.dnx = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dnw
  %i.dny = load i8, ptr %i.dnx, align 1, !tbaa !100
  %.not281.i = icmp eq i8 %i.dny, 0
  br i1 %.not281.i, label %bb.pm, label %bb.qe, !prof !62

bb.pm:                                            ; preds = %bb.pl
  %i.dnz = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 10
  %i.doa = load i8, ptr %i.dnz, align 1, !tbaa !100
  %i.dob = zext i8 %i.doa to i64
  %i.doc = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dob
  %i.dod = load i8, ptr %i.doc, align 1, !tbaa !100
  %.not282.i = icmp eq i8 %i.dod, 0
  br i1 %.not282.i, label %bb.pn, label %bb.qf, !prof !62

bb.pn:                                            ; preds = %bb.pm
  %i.doe = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 11
  %i.dof = load i8, ptr %i.doe, align 1, !tbaa !100
  %i.dog = zext i8 %i.dof to i64
  %i.doh = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dog
  %i.doi = load i8, ptr %i.doh, align 1, !tbaa !100
  %.not283.i = icmp eq i8 %i.doi, 0
  br i1 %.not283.i, label %bb.po, label %bb.qg, !prof !62

bb.po:                                            ; preds = %bb.pn
  %i.doj = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 12
  %i.dok = load i8, ptr %i.doj, align 1, !tbaa !100
  %i.dol = zext i8 %i.dok to i64
  %i.dom = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dol
  %i.don = load i8, ptr %i.dom, align 1, !tbaa !100
  %.not284.i = icmp eq i8 %i.don, 0
  br i1 %.not284.i, label %bb.pp, label %bb.qh, !prof !62

bb.pp:                                            ; preds = %bb.po
  %i.doo = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 13
  %i.dop = load i8, ptr %i.doo, align 1, !tbaa !100
  %i.doq = zext i8 %i.dop to i64
  %i.dor = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.doq
  %i.dos = load i8, ptr %i.dor, align 1, !tbaa !100
  %.not285.i = icmp eq i8 %i.dos, 0
  br i1 %.not285.i, label %bb.pq, label %bb.qi, !prof !62

bb.pq:                                            ; preds = %bb.pp
  %i.dot = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 14
  %i.dou = load i8, ptr %i.dot, align 1, !tbaa !100
  %i.dov = zext i8 %i.dou to i64
  %i.dow = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dov
  %i.dox = load i8, ptr %i.dow, align 1, !tbaa !100
  %.not286.i = icmp eq i8 %i.dox, 0
  br i1 %.not286.i, label %bb.pr, label %bb.qj, !prof !62

bb.pr:                                            ; preds = %bb.pq
  %i.doy = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 15
  %i.doz = load i8, ptr %i.doy, align 1, !tbaa !100
  %i.dpa = zext i8 %i.doz to i64
  %i.dpb = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dpa
  %i.dpc = load i8, ptr %i.dpb, align 1, !tbaa !100
  %.not287.i = icmp eq i8 %i.dpc, 0
  br i1 %.not287.i, label %bb.ps, label %bb.qk, !prof !62

bb.ps:                                            ; preds = %bb.pr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i2538, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i2539, i64 16, i1 false)
  %i.dpd = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 16 ; 2 uses
  %i.dpe = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 16 ; 3 uses
  %i.dpf = ptrtoint ptr %i.dpe to i64
  %i.dpg = sub i64 %i.dlw, %i.dpf                 ; 2 uses
  %i.dph = icmp sgt i64 %i.dpg, 15
  br i1 %i.dph, label %.lr.ph2541, label %.preheader1341, !llvm.loop !23

.preheader1339:                                   ; preds = %bb.px, %.preheader1341
  %.2247.i.lcssa = phi ptr [ %.1246.i.lcssa, %.preheader1341 ], [ %i.dqp, %bb.px ] ; 3 uses
  %.2240.i.lcssa = phi ptr [ %.1239.i.lcssa, %.preheader1341 ], [ %i.dqq, %bb.px ] ; 5 uses
  %i.dpi = icmp ugt ptr %i.dlv, %.2240.i.lcssa
  br i1 %i.dpi, label %.lr.ph2552.preheader, label %write_str.exit209

.lr.ph2552.preheader:                             ; preds = %.preheader1339
  %.2240.i.lcssa3128 = ptrtoaddr ptr %.2240.i.lcssa to i64 ; 2 uses
  %i.dpj = getelementptr i8, ptr %.2240.i.lcssa, i64 %i.cxo
  %scevgep3127 = getelementptr i8, ptr %i.dpj, i64 %i.cxr
  %i.dpk = sub i64 0, %.2240.i.lcssa3128
  %scevgep3129 = getelementptr i8, ptr %scevgep3127, i64 %i.dpk
  %i.dpl = sub i64 %i.dlx, %.2240.i.lcssa3128
  %i.dpm = freeze i64 %i.dpl                      ; 2 uses
  %i.dpn = add i64 %i.dpm, -1
  %xtraiter5990 = and i64 %i.dpm, 3               ; 2 uses
  %lcmp.mod5991.not = icmp eq i64 %xtraiter5990, 0
  br i1 %lcmp.mod5991.not, label %.lr.ph2552.prol.loopexit, label %.lr.ph2552.prol

.lr.ph2552.prol:                                  ; preds = %.lr.ph2552.preheader, %bb.pt
  %.3241.i2551.prol = phi ptr [ %i.dps, %bb.pt ], [ %.2240.i.lcssa, %.lr.ph2552.preheader ] ; 3 uses
  %.3248.i2550.prol = phi ptr [ %i.dpt, %bb.pt ], [ %.2247.i.lcssa, %.lr.ph2552.preheader ] ; 3 uses
  %prol.iter5992 = phi i64 [ %prol.iter5992.next, %bb.pt ], [ 0, %.lr.ph2552.preheader ]
  %i.dpo = load i8, ptr %.3241.i2551.prol, align 1, !tbaa !100 ; 2 uses
  %i.dpp = zext i8 %i.dpo to i64
  %i.dpq = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dpp
end_hunk_8
begin_hunk_9_@yyjson_val_write_opts:bb.a
  %i.dqd = load i8, ptr %i.dqc, align 1, !tbaa !100
  %.not269.i = icmp eq i8 %i.dqd, 0
  br i1 %.not269.i, label %bb.pv, label %.loopexit1343, !prof !62

bb.pv:                                            ; preds = %bb.pu
  %i.dqe = getelementptr inbounds nuw i8, ptr %.2240.i2546, i64 2
  %i.dqf = load i8, ptr %i.dqe, align 1, !tbaa !100
  %i.dqg = zext i8 %i.dqf to i64
  %i.dqh = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dqg
  %i.dqi = load i8, ptr %i.dqh, align 1, !tbaa !100
  %.not270.i = icmp eq i8 %i.dqi, 0
  br i1 %.not270.i, label %bb.pw, label %.loopexit1344, !prof !62

bb.pw:                                            ; preds = %bb.pv
  %i.dqj = getelementptr inbounds nuw i8, ptr %.2240.i2546, i64 3
  %i.dqk = load i8, ptr %i.dqj, align 1, !tbaa !100
  %i.dql = zext i8 %i.dqk to i64
  %i.dqm = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dql
  %i.dqn = load i8, ptr %i.dqm, align 1, !tbaa !100
  %.not271.i = icmp eq i8 %i.dqn, 0
  br i1 %.not271.i, label %bb.px, label %.loopexit1345, !prof !62

bb.px:                                            ; preds = %bb.pw
  %i.dqo = load i32, ptr %.2240.i2546, align 1
  store i32 %i.dqo, ptr %.2247.i2545, align 1
  %i.dqp = getelementptr inbounds nuw i8, ptr %.2247.i2545, i64 4 ; 2 uses
  %i.dqq = getelementptr inbounds nuw i8, ptr %.2240.i2546, i64 4 ; 3 uses
  %i.dqr = ptrtoint ptr %i.dqq to i64
  %i.dqs = sub i64 %i.dlw, %i.dqr
  %i.dqt = icmp sgt i64 %i.dqs, 3
  br i1 %i.dqt, label %.lr.ph2547, label %.preheader1339, !llvm.loop !24

.lr.ph2552:                                       ; preds = %.lr.ph2552.prol.loopexit, %bb.py
  %.3241.i2551 = phi ptr [ %i.drq, %bb.py ], [ %.3241.i2551.unr, %.lr.ph2552.prol.loopexit ] ; 9 uses
  %.3248.i2550 = phi ptr [ %i.drr, %bb.py ], [ %.3248.i2550.unr, %.lr.ph2552.prol.loopexit ] ; 6 uses
  %i.dqu = load i8, ptr %.3241.i2551, align 1, !tbaa !100 ; 2 uses
  %i.dqv = zext i8 %i.dqu to i64
  %i.dqw = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dqv
  %i.dqx = load i8, ptr %i.dqw, align 1, !tbaa !100
  %.not.i93 = icmp eq i8 %i.dqx, 0
  br i1 %.not.i93, label %.lr.ph2552.1, label %.preheader1336.preheader, !prof !62

.lr.ph2552.1:                                     ; preds = %.lr.ph2552
  %i.dqy = getelementptr inbounds nuw i8, ptr %.3241.i2551, i64 1
  %i.dqz = getelementptr inbounds nuw i8, ptr %.3248.i2550, i64 1 ; 2 uses
  store i8 %i.dqu, ptr %.3248.i2550, align 1, !tbaa !100
  %i.dra = load i8, ptr %i.dqy, align 1, !tbaa !100 ; 2 uses
  %i.drb = zext i8 %i.dra to i64
  %i.drc = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.drb
  %i.drd = load i8, ptr %i.drc, align 1, !tbaa !100
  %.not.i93.1 = icmp eq i8 %i.drd, 0
  br i1 %.not.i93.1, label %.lr.ph2552.2, label %.preheader1336.preheader.loopexit.loopexit.split.loop.exit6704, !prof !62

.lr.ph2552.2:                                     ; preds = %.lr.ph2552.1
  %i.dre = getelementptr inbounds nuw i8, ptr %.3241.i2551, i64 2
  %i.drf = getelementptr inbounds nuw i8, ptr %.3248.i2550, i64 2 ; 2 uses
  store i8 %i.dra, ptr %i.dqz, align 1, !tbaa !100
  %i.drg = load i8, ptr %i.dre, align 1, !tbaa !100 ; 2 uses
  %i.drh = zext i8 %i.drg to i64
  %i.dri = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.drh
  %i.drj = load i8, ptr %i.dri, align 1, !tbaa !100
  %.not.i93.2 = icmp eq i8 %i.drj, 0
  br i1 %.not.i93.2, label %.lr.ph2552.3, label %.preheader1336.preheader.loopexit.loopexit.split.loop.exit6701, !prof !62

.lr.ph2552.3:                                     ; preds = %.lr.ph2552.2
  %i.drk = getelementptr inbounds nuw i8, ptr %.3241.i2551, i64 3
  %i.drl = getelementptr inbounds nuw i8, ptr %.3248.i2550, i64 3 ; 2 uses
  store i8 %i.drg, ptr %i.drf, align 1, !tbaa !100
  %i.drm = load i8, ptr %i.drk, align 1, !tbaa !100 ; 2 uses
  %i.drn = zext i8 %i.drm to i64
  %i.dro = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.drn
  %i.drp = load i8, ptr %i.dro, align 1, !tbaa !100
  %.not.i93.3 = icmp eq i8 %i.drp, 0
  br i1 %.not.i93.3, label %bb.py, label %.preheader1336.preheader.loopexit.loopexit.split.loop.exit, !prof !62

bb.py:                                            ; preds = %.lr.ph2552.3
  %i.drq = getelementptr inbounds nuw i8, ptr %.3241.i2551, i64 4 ; 2 uses
  %i.drr = getelementptr inbounds nuw i8, ptr %.3248.i2550, i64 4 ; 2 uses
  store i8 %i.drm, ptr %i.drl, align 1, !tbaa !100
  %exitcond3130.not.3 = icmp eq ptr %i.drq, %scevgep3129
  br i1 %exitcond3130.not.3, label %write_str.exit209, label %.lr.ph2552, !llvm.loop !25

.loopexit1343:                                    ; preds = %bb.pd, %bb.pu
  %i.drs = phi i8 [ %i.dpv, %bb.pu ], [ %i.dmc, %bb.pd ]
  %.5250.i = phi ptr [ %.2247.i2545, %bb.pu ], [ %.1246.i2538, %bb.pd ] ; 2 uses
  %.5243.i = phi ptr [ %.2240.i2546, %bb.pu ], [ %.1239.i2539, %bb.pd ]
  store i8 %i.drs, ptr %.5250.i, align 1
  %i.drt = getelementptr inbounds nuw i8, ptr %.5250.i, i64 1
  %i.dru = getelementptr inbounds nuw i8, ptr %.5243.i, i64 1
  br label %.preheader1336.preheader

.loopexit1344:                                    ; preds = %bb.pe, %bb.pv
  %.6251.i = phi ptr [ %.2247.i2545, %bb.pv ], [ %.1246.i2538, %bb.pe ] ; 2 uses
  %.6.i109 = phi ptr [ %.2240.i2546, %bb.pv ], [ %.1239.i2539, %bb.pe ] ; 2 uses
  %i.drv = load i16, ptr %.6.i109, align 1
  store i16 %i.drv, ptr %.6251.i, align 1
  %i.drw = getelementptr inbounds nuw i8, ptr %.6251.i, i64 2
  %i.drx = getelementptr inbounds nuw i8, ptr %.6.i109, i64 2
  br label %.preheader1336.preheader

.loopexit1345:                                    ; preds = %bb.pf, %bb.pw
  %.7252.i = phi ptr [ %.2247.i2545, %bb.pw ], [ %.1246.i2538, %bb.pf ] ; 2 uses
  %.7.i110 = phi ptr [ %.2240.i2546, %bb.pw ], [ %.1239.i2539, %bb.pf ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i, ptr noundef nonnull align 1 dereferenceable(3) %.7.i110, i64 3, i1 false)
  %i.dry = getelementptr inbounds nuw i8, ptr %.7252.i, i64 3
  %i.drz = getelementptr inbounds nuw i8, ptr %.7.i110, i64 3
  br label %.preheader1336.preheader

bb.pz:                                            ; preds = %bb.pg
  %i.dsa = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 4
  %i.dsb = load i32, ptr %.1239.i2539, align 1
  store i32 %i.dsb, ptr %.1246.i2538, align 1
  %i.dsc = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 4
  br label %.preheader1336.preheader

bb.qa:                                            ; preds = %bb.ph
  %i.dsd = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i2538, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i2539, i64 5, i1 false)
  %i.dse = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 5
  br label %.preheader1336.preheader

bb.qb:                                            ; preds = %bb.pi
  %i.dsf = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i2538, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i2539, i64 6, i1 false)
  %i.dsg = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 6
  br label %.preheader1336.preheader

bb.qc:                                            ; preds = %bb.pj
  %i.dsh = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i2538, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i2539, i64 7, i1 false)
  %i.dsi = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 7
  br label %.preheader1336.preheader

bb.qd:                                            ; preds = %bb.pk
  %i.dsj = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 8
  %i.dsk = load i64, ptr %.1239.i2539, align 1
  store i64 %i.dsk, ptr %.1246.i2538, align 1
  %i.dsl = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 8
  br label %.preheader1336.preheader

bb.qe:                                            ; preds = %bb.pl
  %i.dsm = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i2538, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i2539, i64 9, i1 false)
  %i.dsn = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 9
  br label %.preheader1336.preheader

bb.qf:                                            ; preds = %bb.pm
  %i.dso = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i2538, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i2539, i64 10, i1 false)
  %i.dsp = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 10
  br label %.preheader1336.preheader

bb.qg:                                            ; preds = %bb.pn
  %i.dsq = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1246.i2538, ptr noundef nonnull align 1 dereferenceable(11) %.1239.i2539, i64 11, i1 false)
  %i.dsr = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 11
  br label %.preheader1336.preheader

bb.qh:                                            ; preds = %bb.po
  %i.dss = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1246.i2538, ptr noundef nonnull align 1 dereferenceable(12) %.1239.i2539, i64 12, i1 false)
  %i.dst = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 12
  br label %.preheader1336.preheader

bb.qi:                                            ; preds = %bb.pp
  %i.dsu = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1246.i2538, ptr noundef nonnull align 1 dereferenceable(13) %.1239.i2539, i64 13, i1 false)
  %i.dsv = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 13
  br label %.preheader1336.preheader

bb.qj:                                            ; preds = %bb.pq
  %i.dsw = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1246.i2538, ptr noundef nonnull align 1 dereferenceable(14) %.1239.i2539, i64 14, i1 false)
  %i.dsx = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 14
  br label %.preheader1336.preheader

bb.qk:                                            ; preds = %bb.pr
  %i.dsy = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1246.i2538, ptr noundef nonnull align 1 dereferenceable(15) %.1239.i2539, i64 15, i1 false)
  %i.dsz = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 15
  br label %.preheader1336.preheader

.preheader1336.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2552.3
  %i.dta = getelementptr inbounds nuw i8, ptr %.3241.i2551, i64 3
  br label %.preheader1336.preheader

.preheader1336.preheader.loopexit.loopexit.split.loop.exit6701: ; preds = %.lr.ph2552.2
  %i.dtb = getelementptr inbounds nuw i8, ptr %.3241.i2551, i64 2
  br label %.preheader1336.preheader

.preheader1336.preheader.loopexit.loopexit.split.loop.exit6704: ; preds = %.lr.ph2552.1
  %i.dtc = getelementptr inbounds nuw i8, ptr %.3241.i2551, i64 1
  br label %.preheader1336.preheader

.preheader1336.preheader:                         ; preds = %.lr.ph2541, %.lr.ph2547, %.lr.ph2552, %.preheader1336.preheader.loopexit.loopexit.split.loop.exit6704, %.preheader1336.preheader.loopexit.loopexit.split.loop.exit6701, %.preheader1336.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2552.prol, %.loopexit1343, %.loopexit1344, %.loopexit1345, %bb.pz, %bb.qa, %bb.qb, %bb.qc, %bb.qd, %bb.qe, %bb.qf, %bb.qg, %bb.qh, %bb.qi, %bb.qj, %bb.qk
  %.8253.i.ph = phi ptr [ %.2247.i2545, %.lr.ph2547 ], [ %.3248.i2550.prol, %.lr.ph2552.prol ], [ %i.drt, %.loopexit1343 ], [ %i.drw, %.loopexit1344 ], [ %i.dry, %.loopexit1345 ], [ %i.dsc, %bb.pz ], [ %i.dse, %bb.qa ], [ %i.dsg, %bb.qb ], [ %i.dsi, %bb.qc ], [ %i.dsl, %bb.qd ], [ %i.dsn, %bb.qe ], [ %i.dsp, %bb.qf ], [ %i.dsr, %bb.qg ], [ %i.dst, %bb.qh ], [ %i.dsv, %bb.qi ], [ %i.dsx, %bb.qj ], [ %i.dsz, %bb.qk ], [ %.3248.i2550, %.lr.ph2552 ], [ %i.dqz, %.preheader1336.preheader.loopexit.loopexit.split.loop.exit6704 ], [ %i.drf, %.preheader1336.preheader.loopexit.loopexit.split.loop.exit6701 ], [ %i.drl, %.preheader1336.preheader.loopexit.loopexit.split.loop.exit ], [ %.1246.i2538, %.lr.ph2541 ]
  %.8.i94.ph = phi ptr [ %.2240.i2546, %.lr.ph2547 ], [ %.3241.i2551.prol, %.lr.ph2552.prol ], [ %i.dru, %.loopexit1343 ], [ %i.drx, %.loopexit1344 ], [ %i.drz, %.loopexit1345 ], [ %i.dsa, %bb.pz ], [ %i.dsd, %bb.qa ], [ %i.dsf, %bb.qb ], [ %i.dsh, %bb.qc ], [ %i.dsj, %bb.qd ], [ %i.dsm, %bb.qe ], [ %i.dso, %bb.qf ], [ %i.dsq, %bb.qg ], [ %i.dss, %bb.qh ], [ %i.dsu, %bb.qi ], [ %i.dsw, %bb.qj ], [ %i.dsy, %bb.qk ], [ %.3241.i2551, %.lr.ph2552 ], [ %i.dtc, %.preheader1336.preheader.loopexit.loopexit.split.loop.exit6704 ], [ %i.dtb, %.preheader1336.preheader.loopexit.loopexit.split.loop.exit6701 ], [ %i.dta, %.preheader1336.preheader.loopexit.loopexit.split.loop.exit ], [ %.1239.i2539, %.lr.ph2541 ]
  br label %.preheader1336

.preheader1336:                                   ; preds = %.preheader1336.backedge, %.preheader1336.preheader
  %.8253.i = phi ptr [ %.8253.i.ph, %.preheader1336.preheader ], [ %.8253.i.be, %.preheader1336.backedge ] ; 34 uses
  %.8.i94 = phi ptr [ %.8.i94.ph, %.preheader1336.preheader ], [ %.8.i94.be, %.preheader1336.backedge ] ; 23 uses
  %i.dtd = getelementptr inbounds nuw i8, ptr %.8.i94, i64 4 ; 3 uses
  %i.dte = icmp ugt ptr %i.dtd, %i.dlv            ; 2 uses
  br i1 %i.dte, label %bb.ql, label %._crit_edge3177, !prof !45

._crit_edge3177:                                  ; preds = %.preheader1336
  %.pre3178 = load i8, ptr %.8.i94, align 1, !tbaa !100 ; 2 uses
  %.phi.trans.insert3179 = zext i8 %.pre3178 to i64 ; 2 uses
  %.phi.trans.insert3180 = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %.phi.trans.insert3179
  %.pre3181 = load i8, ptr %.phi.trans.insert3180, align 1, !tbaa !100
  br label %bb.qm

bb.ql:                                            ; preds = %.preheader1336
  %i.dtf = ptrtoint ptr %.8.i94 to i64
  %i.dtg = sub i64 %i.dlw, %i.dtf
  %i.dth = load i8, ptr %.8.i94, align 1, !tbaa !100 ; 3 uses
  %i.dti = zext i8 %i.dth to i64                  ; 2 uses
  %i.dtj = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dti
  %i.dtk = load i8, ptr %i.dtj, align 1, !tbaa !100 ; 2 uses
  %i.dtl = lshr i8 %i.dtk, 1
  %i.dtm = zext nneg i8 %i.dtl to i64
  %i.dtn = icmp slt i64 %i.dtg, %i.dtm
  br i1 %i.dtn, label %bb.rf, label %bb.qm

bb.qm:                                            ; preds = %._crit_edge3177, %bb.ql
  %.pre-phi3200 = phi i64 [ %.phi.trans.insert3179, %._crit_edge3177 ], [ %i.dti, %bb.ql ]
  %i.dto = phi i8 [ %.pre3181, %._crit_edge3177 ], [ %i.dtk, %bb.ql ]
  %i.dtp = phi i8 [ %.pre3178, %._crit_edge3177 ], [ %i.dth, %bb.ql ] ; 2 uses
  switch i8 %i.dto, label %write_str.exit209 [
    i8 0, label %bb.qn
    i8 4, label %bb.qo
    i8 6, label %bb.qq
    i8 8, label %bb.qv
    i8 2, label %bb.qx
    i8 3, label %bb.qy
    i8 5, label %bb.qz
    i8 7, label %bb.rb
    i8 9, label %bb.rd
    i8 1, label %bb.rf
  ]

bb.qn:                                            ; preds = %bb.qm
  %i.dtq = getelementptr inbounds nuw i8, ptr %.8.i94, i64 1
  store i8 %i.dtp, ptr %.8253.i, align 1, !tbaa !100
  br label %bb.pc

bb.qo:                                            ; preds = %bb.qm
  %i.dtr = load i16, ptr %.8.i94, align 1         ; 3 uses
  %.sroa.0946.0.insert.ext = zext i16 %i.dtr to i32 ; 2 uses
  %i.dts = and i32 %.sroa.0946.0.insert.ext, 49376
  %i.dtt = icmp ne i32 %i.dts, 32960
  %i.dtu = and i32 %.sroa.0946.0.insert.ext, 30
  %i.dtv = icmp eq i32 %i.dtu, 0
  %.not310.i = or i1 %i.dtt, %i.dtv
  %i.dtw = trunc i16 %i.dtr to i8
  br i1 %.not310.i, label %.thread1217, label %bb.qp, !prof !45

bb.qp:                                            ; preds = %bb.qo
  store i16 %i.dtr, ptr %.8253.i, align 1
  %i.dtx = getelementptr inbounds nuw i8, ptr %.8253.i, i64 2
  %i.dty = getelementptr inbounds nuw i8, ptr %.8.i94, i64 2
  br label %.preheader1336.backedge

bb.qq:                                            ; preds = %bb.qm
  br i1 %i.dte, label %bb.qt, label %bb.qr, !prof !45

bb.qr:                                            ; preds = %bb.qq
  %.sroa.0.0.copyload.i335.i = load i32, ptr %.8.i94, align 1 ; 4 uses
  %i.dtz = and i32 %.sroa.0.0.copyload.i335.i, 12632304
  %i.dua = icmp eq i32 %i.dtz, 8421600
  %i.dub = trunc i32 %.sroa.0.0.copyload.i335.i to i8 ; 3 uses
  br i1 %i.dua, label %bb.qs, label %.thread1217, !prof !62

bb.qs:                                            ; preds = %bb.qr
  %i.duc = and i32 %.sroa.0.0.copyload.i335.i, 8207
  switch i32 %i.duc, label %.critedge.i [
    i32 8205, label %.thread1217
    i32 0, label %.thread1217
  ], !prof !151

bb.qt:                                            ; preds = %bb.qq
  %.sroa.0.0.copyload.i327.i = load i16, ptr %.8.i94, align 1 ; 2 uses
  %i.dud = getelementptr inbounds nuw i8, ptr %.8.i94, i64 2
  %i.due = load i8, ptr %i.dud, align 1, !tbaa !100
  %.sroa.4.0.insert.ext.i328.i = zext i8 %i.due to i32
  %.sroa.4.0.insert.shift.i329.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i328.i, 16
  %.sroa.0.0.insert.ext.i330.i = zext i16 %.sroa.0.0.copyload.i327.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i331.i = or disjoint i32 %.sroa.4.0.insert.shift.i329.i, %.sroa.0.0.insert.ext.i330.i ; 2 uses
  %i.duf = and i32 %.sroa.0.0.insert.insert.i331.i, 12632304
  %i.dug = icmp eq i32 %i.duf, 8421600
  %i.duh = trunc i16 %.sroa.0.0.copyload.i327.i to i8 ; 3 uses
  br i1 %i.dug, label %bb.qu, label %.thread1217, !prof !62

bb.qu:                                            ; preds = %bb.qt
  %i.dui = and i32 %.sroa.0.0.insert.ext.i330.i, 8207
  switch i32 %i.dui, label %.critedge.i [
    i32 8205, label %.thread1217
    i32 0, label %.thread1217
  ], !prof !151

.critedge.i:                                      ; preds = %bb.qu, %bb.qs
  %storemerge1297 = phi i32 [ %.sroa.0.0.copyload.i335.i, %bb.qs ], [ %.sroa.0.0.insert.insert.i331.i, %bb.qu ]
  store i32 %storemerge1297, ptr %.8253.i, align 1
  %i.duj = getelementptr inbounds nuw i8, ptr %.8253.i, i64 3
  %i.duk = getelementptr inbounds nuw i8, ptr %.8.i94, i64 3
  br label %.preheader1336.backedge

bb.qv:                                            ; preds = %bb.qm
  %.sroa.0.0.copyload.i334.i = load i32, ptr %.8.i94, align 1 ; 6 uses
  %i.dul = and i32 %.sroa.0.0.copyload.i334.i, -1061109512
  %i.dum = icmp ne i32 %i.dul, -2139062032
  %i.dun = and i32 %.sroa.0.0.copyload.i334.i, 12295
  %.not301.i = icmp eq i32 %i.dun, 0
  %or.cond.i = or i1 %i.dum, %.not301.i
  %i.duo = trunc i32 %.sroa.0.0.copyload.i334.i to i8 ; 2 uses
  br i1 %or.cond.i, label %.thread1217, label %bb.qw, !prof !139

bb.qw:                                            ; preds = %bb.qv
  %i.dup = and i32 %.sroa.0.0.copyload.i334.i, 4
  %i.duq = icmp ne i32 %i.dup, 0
  %i.dur = and i32 %.sroa.0.0.copyload.i334.i, 12291
  %i.dus = icmp ne i32 %i.dur, 0
  %.not304.i = and i1 %i.duq, %i.dus
  br i1 %.not304.i, label %.thread1217, label %.critedge316.i, !prof !45

.critedge316.i:                                   ; preds = %bb.qw
  store i32 %.sroa.0.0.copyload.i334.i, ptr %.8253.i, align 1
  %i.dut = getelementptr inbounds nuw i8, ptr %.8253.i, i64 4
  br label %.preheader1336.backedge

bb.qx:                                            ; preds = %bb.qm
  %i.duu = shl nuw nsw i64 %.pre-phi3200, 1
  %i.duv = getelementptr inbounds nuw i8, ptr @esc_single_char_table, i64 %i.duu
  %i.duw = load i16, ptr %i.duv, align 2
  store i16 %i.duw, ptr %.8253.i, align 1
  %i.dux = getelementptr inbounds nuw i8, ptr %.8253.i, i64 2
  %i.duy = getelementptr inbounds nuw i8, ptr %.8.i94, i64 1
  br label %.preheader1336.backedge

.preheader1336.backedge:                          ; preds = %bb.qx, %bb.qy, %bb.rg, %bb.rh, %bb.qp, %.critedge.i, %.critedge316.i, %bb.ra, %.critedge321.i, %.critedge325.i
  %.8253.i.be = phi ptr [ %i.dyx, %bb.rg ], [ %i.dtx, %bb.qp ], [ %i.duj, %.critedge.i ], [ %i.dut, %.critedge316.i ], [ %i.dux, %bb.qx ], [ %i.dvf, %bb.qy ], [ %i.dwa, %bb.ra ], [ %i.dwx, %.critedge321.i ], [ %i.dyt, %.critedge325.i ], [ %i.dyz, %bb.rh ]
  %.8.i94.be = phi ptr [ %i.dyw, %bb.rg ], [ %i.dty, %bb.qp ], [ %i.duk, %.critedge.i ], [ %i.dtd, %.critedge316.i ], [ %i.duy, %bb.qx ], [ %i.dvg, %bb.qy ], [ %i.dwb, %bb.ra ], [ %i.dwy, %.critedge321.i ], [ %i.dtd, %.critedge325.i ], [ %i.dza, %bb.rh ]
  br label %.preheader1336

bb.qy:                                            ; preds = %bb.qm
  store i32 808482140, ptr %.8253.i, align 1
  %i.duz = getelementptr inbounds nuw i8, ptr %.8253.i, i64 4
  %i.dva = load i8, ptr %.8.i94, align 1, !tbaa !100
  %i.dvb = zext i8 %i.dva to i64
  %i.dvc = shl nuw nsw i64 %i.dvb, 1
  %i.dvd = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dvc
  %i.dve = load i16, ptr %i.dvd, align 2
  store i16 %i.dve, ptr %i.duz, align 1
  %i.dvf = getelementptr inbounds nuw i8, ptr %.8253.i, i64 6
  %i.dvg = getelementptr inbounds nuw i8, ptr %.8.i94, i64 1
  br label %.preheader1336.backedge

bb.qz:                                            ; preds = %bb.qm
  %.sroa.0.0.copyload.i332.i = load i16, ptr %.8.i94, align 1 ; 3 uses
  %.sroa.0944.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i to i32 ; 2 uses
  %i.dvh = and i32 %.sroa.0944.0.insert.ext, 49376
  %i.dvi = icmp ne i32 %i.dvh, 32960
  %i.dvj = and i32 %.sroa.0944.0.insert.ext, 30
  %i.dvk = icmp eq i32 %i.dvj, 0
  %.not298.i = or i1 %i.dvi, %i.dvk
  br i1 %.not298.i, label %.thread1227, label %bb.ra, !prof !45

bb.ra:                                            ; preds = %bb.qz
  %i.dvl = lshr i16 %.sroa.0.0.copyload.i332.i, 8
  %i.dvm = trunc nuw i16 %i.dvl to i8
  %i.dvn = trunc i16 %.sroa.0.0.copyload.i332.i to i8 ; 2 uses
  %.tr299.i = shl i8 %i.dvn, 6
  %i.dvo = and i8 %i.dvm, 63
  store i16 30044, ptr %.8253.i, align 1
  %i.dvp = getelementptr inbounds nuw i8, ptr %.8253.i, i64 2
  %i.dvq = lshr i8 %i.dvn, 1
  %i.dvr = and i8 %i.dvq, 14
  %i.dvs = zext nneg i8 %i.dvr to i64
  %i.dvt = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dvs
  %i.dvu = load i16, ptr %i.dvt, align 2
  store i16 %i.dvu, ptr %i.dvp, align 1
  %i.dvv = getelementptr inbounds nuw i8, ptr %.8253.i, i64 4
  %.narrow300.i = or disjoint i8 %i.dvo, %.tr299.i
  %i.dvw = zext i8 %.narrow300.i to i64
  %i.dvx = shl nuw nsw i64 %i.dvw, 1
  %i.dvy = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dvx
  %i.dvz = load i16, ptr %i.dvy, align 2
  store i16 %i.dvz, ptr %i.dvv, align 1
  %i.dwa = getelementptr inbounds nuw i8, ptr %.8253.i, i64 6
  %i.dwb = getelementptr inbounds nuw i8, ptr %.8.i94, i64 2
  br label %.preheader1336.backedge

bb.rb:                                            ; preds = %bb.qm
  %.sroa.0.0.copyload.i.i = load i16, ptr %.8.i94, align 1 ; 3 uses
  %i.dwc = getelementptr inbounds nuw i8, ptr %.8.i94, i64 2
  %i.dwd = load i8, ptr %i.dwc, align 1, !tbaa !100 ; 2 uses
  %.sroa.4.0.insert.ext.i.i = zext i8 %i.dwd to i32
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.dwe = and i32 %.sroa.0.0.insert.insert.i.i, 12632304
  %i.dwf = icmp eq i32 %i.dwe, 8421600
  br i1 %i.dwf, label %bb.rc, label %.thread1227, !prof !62

bb.rc:                                            ; preds = %bb.rb
  %i.dwg = and i32 %.sroa.0.0.insert.ext.i.i, 8207
  switch i32 %i.dwg, label %.critedge321.i [
    i32 8205, label %.thread1227
    i32 0, label %.thread1227
  ], !prof !151

.critedge321.i:                                   ; preds = %bb.rc
  %i.dwh = zext i16 %.sroa.0.0.copyload.i.i to i64
end_hunk_9
begin_hunk_10_@yyjson_val_write_opts:bb.a
vector.ph5236:                                    ; preds = %.lr.ph2516.preheader
  %n.vec5237 = and i64 %i.dzg, 9223372036854775800 ; 4 uses
  %i.dzi = shl i64 %n.vec5237, 2
  %i.dzj = sub i64 %.0.i67.lcssa, %i.dzi          ; 2 uses
  %i.dzk = shl i64 %n.vec5237, 2                  ; 2 uses
  %i.dzl = getelementptr i8, ptr %.018.i.lcssa, i64 %i.dzk ; 2 uses
  %i.dzm = getelementptr i8, ptr %.021.i.lcssa, i64 %i.dzk ; 2 uses
  br label %vector.body5238

vector.body5238:                                  ; preds = %vector.body5238, %vector.ph5236
  %index5239 = phi i64 [ 0, %vector.ph5236 ], [ %index.next5244, %vector.body5238 ] ; 2 uses
  %i.dzn = shl i64 %index5239, 2                  ; 2 uses
  %next.gep5240 = getelementptr i8, ptr %.018.i.lcssa, i64 %i.dzn ; 2 uses
  %next.gep5241 = getelementptr i8, ptr %.021.i.lcssa, i64 %i.dzn ; 2 uses
  %i.dzo = getelementptr i8, ptr %next.gep5240, i64 16
  %wide.load5242 = load <4 x i32>, ptr %next.gep5240, align 1
  %wide.load5243 = load <4 x i32>, ptr %i.dzo, align 1
  %i.dzp = getelementptr i8, ptr %next.gep5241, i64 16
  store <4 x i32> %wide.load5242, ptr %next.gep5241, align 1
  store <4 x i32> %wide.load5243, ptr %i.dzp, align 1
  %index.next5244 = add nuw i64 %index5239, 8     ; 2 uses
  %i.dzq = icmp eq i64 %index.next5244, %n.vec5237
  br i1 %i.dzq, label %middle.block5245, label %vector.body5238, !llvm.loop !391

middle.block5245:                                 ; preds = %vector.body5238
  %cmp.n5246 = icmp eq i64 %i.dzg, %n.vec5237
  br i1 %cmp.n5246, label %.preheader1366, label %.lr.ph2516.preheader5502

.lr.ph2516.preheader5502:                         ; preds = %.lr.ph2516.preheader, %middle.block5245
  %.1.i682515.ph = phi i64 [ %.0.i67.lcssa, %.lr.ph2516.preheader ], [ %i.dzj, %middle.block5245 ]
  %.119.i2514.ph = phi ptr [ %.018.i.lcssa, %.lr.ph2516.preheader ], [ %i.dzl, %middle.block5245 ]
  %.122.i2513.ph = phi ptr [ %.021.i.lcssa, %.lr.ph2516.preheader ], [ %i.dzm, %middle.block5245 ]
  br label %.lr.ph2516

.lr.ph2509:                                       ; preds = %bb.ri, %.lr.ph2509
  %.0.i672507 = phi i64 [ %i.dzt, %.lr.ph2509 ], [ %i.cxo, %bb.ri ]
  %.018.i2506 = phi ptr [ %i.dzs, %.lr.ph2509 ], [ %i.cxq, %bb.ri ] ; 2 uses
  %.021.i2505 = phi ptr [ %i.dzr, %.lr.ph2509 ], [ %i.dzb, %bb.ri ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i2505, ptr noundef nonnull align 1 dereferenceable(16) %.018.i2506, i64 16, i1 false)
  %i.dzr = getelementptr inbounds nuw i8, ptr %.021.i2505, i64 16 ; 2 uses
  %i.dzs = getelementptr inbounds nuw i8, ptr %.018.i2506, i64 16 ; 2 uses
  %i.dzt = add nsw i64 %.0.i672507, -16           ; 3 uses
  %i.dzu = icmp ugt i64 %i.dzt, 15
  br i1 %i.dzu, label %.lr.ph2509, label %.preheader1367, !llvm.loop !26

.preheader1366:                                   ; preds = %.lr.ph2516, %middle.block5245, %.preheader1367
  %.122.i.lcssa = phi ptr [ %.021.i.lcssa, %.preheader1367 ], [ %i.dzm, %middle.block5245 ], [ %i.eao, %.lr.ph2516 ] ; 7 uses
  %.119.i.lcssa = phi ptr [ %.018.i.lcssa, %.preheader1367 ], [ %i.dzl, %middle.block5245 ], [ %i.eap, %.lr.ph2516 ] ; 6 uses
  %.1.i68.lcssa = phi i64 [ %.0.i67.lcssa, %.preheader1367 ], [ %i.dzj, %middle.block5245 ], [ %i.eaq, %.lr.ph2516 ] ; 11 uses
  %.not.i702520 = icmp eq i64 %.1.i68.lcssa, 0
  br i1 %.not.i702520, label %write_str.exit209, label %iter.check5213

iter.check5213:                                   ; preds = %.preheader1366
  %.119.i.lcssa5192 = ptrtoaddr ptr %.119.i.lcssa to i64
  %.122.i.lcssa5191 = ptrtoaddr ptr %.122.i.lcssa to i64
  %min.iters.check5195 = icmp ult i64 %.1.i68.lcssa, 4
  %i.dzv = sub i64 %.119.i.lcssa5192, %.122.i.lcssa5191
  %diff.check5193 = icmp ugt i64 %i.dzv, -32
  %or.cond5315 = select i1 %min.iters.check5195, i1 true, i1 %diff.check5193
  br i1 %or.cond5315, label %.lr.ph2524.preheader, label %vector.main.loop.iter.check5196

vector.main.loop.iter.check5196:                  ; preds = %iter.check5213
  %min.iters.check5197 = icmp ult i64 %.1.i68.lcssa, 32
  br i1 %min.iters.check5197, label %vec.epilog.ph5217, label %vector.ph5198

vector.ph5198:                                    ; preds = %vector.main.loop.iter.check5196
  %i.dzw = and i64 %.1.i68.lcssa, 28
  %n.vec5199 = and i64 %.1.i68.lcssa, -32         ; 5 uses
  %i.dzx = and i64 %.1.i68.lcssa, 31
  %i.dzy = getelementptr i8, ptr %.119.i.lcssa, i64 %n.vec5199
  %i.dzz = getelementptr i8, ptr %.122.i.lcssa, i64 %n.vec5199 ; 2 uses
  br label %vector.body5200

vector.body5200:                                  ; preds = %vector.body5200, %vector.ph5198
  %index5201 = phi i64 [ 0, %vector.ph5198 ], [ %index.next5206, %vector.body5200 ] ; 3 uses
  %next.gep5202 = getelementptr i8, ptr %.119.i.lcssa, i64 %index5201 ; 2 uses
  %next.gep5203 = getelementptr i8, ptr %.122.i.lcssa, i64 %index5201 ; 2 uses
  %i.eaa = getelementptr i8, ptr %next.gep5202, i64 16
  %wide.load5204 = load <16 x i8>, ptr %next.gep5202, align 1, !tbaa !100
  %wide.load5205 = load <16 x i8>, ptr %i.eaa, align 1, !tbaa !100
  %i.eab = getelementptr i8, ptr %next.gep5203, i64 16
  store <16 x i8> %wide.load5204, ptr %next.gep5203, align 1, !tbaa !100
  store <16 x i8> %wide.load5205, ptr %i.eab, align 1, !tbaa !100
  %index.next5206 = add nuw i64 %index5201, 32    ; 2 uses
  %i.eac = icmp eq i64 %index.next5206, %n.vec5199
  br i1 %i.eac, label %middle.block5207, label %vector.body5200, !llvm.loop !392

middle.block5207:                                 ; preds = %vector.body5200
  %cmp.n5208 = icmp eq i64 %.1.i68.lcssa, %n.vec5199
  br i1 %cmp.n5208, label %write_str.exit209, label %vec.epilog.iter.check5215

vec.epilog.iter.check5215:                        ; preds = %middle.block5207
  %min.epilog.iters.check5216 = icmp eq i64 %i.dzw, 0
  br i1 %min.epilog.iters.check5216, label %.lr.ph2524.preheader, label %vec.epilog.ph5217, !prof !152

vec.epilog.ph5217:                                ; preds = %vector.main.loop.iter.check5196, %vec.epilog.iter.check5215
  %vec.epilog.resume.val5209 = phi i64 [ %n.vec5199, %vec.epilog.iter.check5215 ], [ 0, %vector.main.loop.iter.check5196 ]
  %n.vec5218 = and i64 %.1.i68.lcssa, -4          ; 4 uses
  %i.ead = and i64 %.1.i68.lcssa, 3
  %i.eae = getelementptr i8, ptr %.119.i.lcssa, i64 %n.vec5218
  %i.eaf = getelementptr i8, ptr %.122.i.lcssa, i64 %n.vec5218 ; 2 uses
  br label %vec.epilog.vector.body5219

vec.epilog.vector.body5219:                       ; preds = %vec.epilog.vector.body5219, %vec.epilog.ph5217
  %index5220 = phi i64 [ %vec.epilog.resume.val5209, %vec.epilog.ph5217 ], [ %index.next5224, %vec.epilog.vector.body5219 ] ; 3 uses
  %next.gep5221 = getelementptr i8, ptr %.119.i.lcssa, i64 %index5220
  %next.gep5222 = getelementptr i8, ptr %.122.i.lcssa, i64 %index5220
  %wide.load5223 = load <4 x i8>, ptr %next.gep5221, align 1, !tbaa !100
  store <4 x i8> %wide.load5223, ptr %next.gep5222, align 1, !tbaa !100
  %index.next5224 = add nuw i64 %index5220, 4     ; 2 uses
  %i.eag = icmp eq i64 %index.next5224, %n.vec5218
  br i1 %i.eag, label %vec.epilog.middle.block5225, label %vec.epilog.vector.body5219, !llvm.loop !393

vec.epilog.middle.block5225:                      ; preds = %vec.epilog.vector.body5219
  %cmp.n5226 = icmp eq i64 %.1.i68.lcssa, %n.vec5218
  br i1 %cmp.n5226, label %write_str.exit209, label %.lr.ph2524.preheader

.lr.ph2524.preheader:                             ; preds = %iter.check5213, %vec.epilog.iter.check5215, %vec.epilog.middle.block5225
  %.2.i692523.ph = phi i64 [ %.1.i68.lcssa, %iter.check5213 ], [ %i.dzx, %vec.epilog.iter.check5215 ], [ %i.ead, %vec.epilog.middle.block5225 ] ; 4 uses
  %.220.i2522.ph = phi ptr [ %.119.i.lcssa, %iter.check5213 ], [ %i.dzy, %vec.epilog.iter.check5215 ], [ %i.eae, %vec.epilog.middle.block5225 ] ; 2 uses
  %.223.i2521.ph = phi ptr [ %.122.i.lcssa, %iter.check5213 ], [ %i.dzz, %vec.epilog.iter.check5215 ], [ %i.eaf, %vec.epilog.middle.block5225 ] ; 2 uses
  %i.eah = add nsw i64 %.2.i692523.ph, -1
  %xtraiter5987 = and i64 %.2.i692523.ph, 7       ; 2 uses
  %lcmp.mod5988.not = icmp eq i64 %xtraiter5987, 0
  br i1 %lcmp.mod5988.not, label %.lr.ph2524.prol.loopexit, label %.lr.ph2524.prol

.lr.ph2524.prol:                                  ; preds = %.lr.ph2524.preheader, %.lr.ph2524.prol
  %.2.i692523.prol = phi i64 [ %i.eal, %.lr.ph2524.prol ], [ %.2.i692523.ph, %.lr.ph2524.preheader ]
  %.220.i2522.prol = phi ptr [ %i.eai, %.lr.ph2524.prol ], [ %.220.i2522.ph, %.lr.ph2524.preheader ] ; 2 uses
  %.223.i2521.prol = phi ptr [ %i.eak, %.lr.ph2524.prol ], [ %.223.i2521.ph, %.lr.ph2524.preheader ] ; 2 uses
  %prol.iter5989 = phi i64 [ %prol.iter5989.next, %.lr.ph2524.prol ], [ 0, %.lr.ph2524.preheader ]
  %i.eai = getelementptr inbounds nuw i8, ptr %.220.i2522.prol, i64 1 ; 2 uses
  %i.eaj = load i8, ptr %.220.i2522.prol, align 1, !tbaa !100
  %i.eak = getelementptr inbounds nuw i8, ptr %.223.i2521.prol, i64 1 ; 3 uses
  store i8 %i.eaj, ptr %.223.i2521.prol, align 1, !tbaa !100
  %i.eal = add nsw i64 %.2.i692523.prol, -1       ; 2 uses
  %prol.iter5989.next = add i64 %prol.iter5989, 1 ; 2 uses
  %prol.iter5989.cmp.not = icmp eq i64 %prol.iter5989.next, %xtraiter5987
  br i1 %prol.iter5989.cmp.not, label %.lr.ph2524.prol.loopexit, label %.lr.ph2524.prol, !llvm.loop !394

.lr.ph2524.prol.loopexit:                         ; preds = %.lr.ph2524.prol, %.lr.ph2524.preheader
  %.lcssa5586.unr = phi ptr [ poison, %.lr.ph2524.preheader ], [ %i.eak, %.lr.ph2524.prol ]
  %.2.i692523.unr = phi i64 [ %.2.i692523.ph, %.lr.ph2524.preheader ], [ %i.eal, %.lr.ph2524.prol ]
  %.220.i2522.unr = phi ptr [ %.220.i2522.ph, %.lr.ph2524.preheader ], [ %i.eai, %.lr.ph2524.prol ]
  %.223.i2521.unr = phi ptr [ %.223.i2521.ph, %.lr.ph2524.preheader ], [ %i.eak, %.lr.ph2524.prol ]
  %i.eam = icmp ult i64 %i.eah, 7
  br i1 %i.eam, label %write_str.exit209, label %.lr.ph2524

.lr.ph2516:                                       ; preds = %.lr.ph2516.preheader5502, %.lr.ph2516
  %.1.i682515 = phi i64 [ %i.eaq, %.lr.ph2516 ], [ %.1.i682515.ph, %.lr.ph2516.preheader5502 ]
  %.119.i2514 = phi ptr [ %i.eap, %.lr.ph2516 ], [ %.119.i2514.ph, %.lr.ph2516.preheader5502 ] ; 2 uses
  %.122.i2513 = phi ptr [ %i.eao, %.lr.ph2516 ], [ %.122.i2513.ph, %.lr.ph2516.preheader5502 ] ; 2 uses
  %i.ean = load i32, ptr %.119.i2514, align 1
  store i32 %i.ean, ptr %.122.i2513, align 1
  %i.eao = getelementptr inbounds nuw i8, ptr %.122.i2513, i64 4 ; 2 uses
  %i.eap = getelementptr inbounds nuw i8, ptr %.119.i2514, i64 4 ; 2 uses
  %i.eaq = add nsw i64 %.1.i682515, -4            ; 3 uses
  %i.ear = icmp ugt i64 %i.eaq, 3
  br i1 %i.ear, label %.lr.ph2516, label %.preheader1366, !llvm.loop !395

.lr.ph2524:                                       ; preds = %.lr.ph2524.prol.loopexit, %.lr.ph2524
  %.2.i692523 = phi i64 [ %i.ebq, %.lr.ph2524 ], [ %.2.i692523.unr, %.lr.ph2524.prol.loopexit ]
  %.220.i2522 = phi ptr [ %i.ebn, %.lr.ph2524 ], [ %.220.i2522.unr, %.lr.ph2524.prol.loopexit ] ; 9 uses
  %.223.i2521 = phi ptr [ %i.ebp, %.lr.ph2524 ], [ %.223.i2521.unr, %.lr.ph2524.prol.loopexit ] ; 9 uses
  %i.eas = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 1
  %i.eat = load i8, ptr %.220.i2522, align 1, !tbaa !100
  %i.eau = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 1
  store i8 %i.eat, ptr %.223.i2521, align 1, !tbaa !100
  %i.eav = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 2
  %i.eaw = load i8, ptr %i.eas, align 1, !tbaa !100
  %i.eax = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 2
  store i8 %i.eaw, ptr %i.eau, align 1, !tbaa !100
  %i.eay = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 3
  %i.eaz = load i8, ptr %i.eav, align 1, !tbaa !100
  %i.eba = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 3
  store i8 %i.eaz, ptr %i.eax, align 1, !tbaa !100
  %i.ebb = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 4
  %i.ebc = load i8, ptr %i.eay, align 1, !tbaa !100
  %i.ebd = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 4
  store i8 %i.ebc, ptr %i.eba, align 1, !tbaa !100
  %i.ebe = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 5
  %i.ebf = load i8, ptr %i.ebb, align 1, !tbaa !100
  %i.ebg = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 5
  store i8 %i.ebf, ptr %i.ebd, align 1, !tbaa !100
  %i.ebh = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 6
  %i.ebi = load i8, ptr %i.ebe, align 1, !tbaa !100
  %i.ebj = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 6
  store i8 %i.ebi, ptr %i.ebg, align 1, !tbaa !100
  %i.ebk = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 7
  %i.ebl = load i8, ptr %i.ebh, align 1, !tbaa !100
  %i.ebm = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 7
  store i8 %i.ebl, ptr %i.ebj, align 1, !tbaa !100
  %i.ebn = getelementptr inbounds nuw i8, ptr %.220.i2522, i64 8
  %i.ebo = load i8, ptr %i.ebk, align 1, !tbaa !100
  %i.ebp = getelementptr inbounds nuw i8, ptr %.223.i2521, i64 8 ; 2 uses
  store i8 %i.ebo, ptr %i.ebm, align 1, !tbaa !100
  %i.ebq = add nsw i64 %.2.i692523, -8            ; 2 uses
  %.not.i70.7 = icmp eq i64 %i.ebq, 0
  br i1 %.not.i70.7, label %write_str.exit209, label %.lr.ph2524, !llvm.loop !396

write_str.exit209:                                ; preds = %.preheader1353, %.lr.ph2524.prol.loopexit, %.lr.ph2524, %.preheader1339, %bb.nr, %.lr.ph2501.prol.loopexit, %bb.of, %bb.py, %.lr.ph2552.prol.loopexit, %bb.qm, %middle.block5207, %vec.epilog.middle.block5225, %.preheader1366
  %.3248.i118.lcssa.sink4542 = phi ptr [ %.lcssa5656.unr, %.lr.ph2552.prol.loopexit ], [ %.8253.i124, %bb.of ], [ %.2247.i.lcssa, %.preheader1339 ], [ %.8253.i, %bb.qm ], [ %i.ebp, %.lr.ph2524 ], [ %.lcssa5573.unr, %.lr.ph2501.prol.loopexit ], [ %.122.i.lcssa, %.preheader1366 ], [ %i.eaf, %vec.epilog.middle.block5225 ], [ %i.dzz, %middle.block5207 ], [ %i.drr, %bb.py ], [ %i.dej, %bb.nr ], [ %.lcssa5586.unr, %.lr.ph2524.prol.loopexit ], [ %.2247.i116.lcssa, %.preheader1353 ] ; 3 uses
  %i.ebr = getelementptr inbounds nuw i8, ptr %.3248.i118.lcssa.sink4542, i64 1
  store i8 34, ptr %.3248.i118.lcssa.sink4542, align 1, !tbaa !100
  %i.ebs = select i1 %.not439.i, i8 44, i8 58
  %i.ebt = getelementptr inbounds nuw i8, ptr %.3248.i118.lcssa.sink4542, i64 2
  store i8 %i.ebs, ptr %i.ebr, align 1, !tbaa !100
  br label %bb.sw

bb.rj:                                            ; preds = %bb.ms
  %i.ebu = getelementptr inbounds nuw i8, ptr %.0385.i, i64 40
  %.not435.i = icmp ult ptr %i.ebu, %.0363.i
  br i1 %.not435.i, label %bb.rk, label %size_align_up.exit465.i, !prof !62

size_align_up.exit465.i:                          ; preds = %bb.rj
  %i.ebv = lshr i64 %.0356.i, 1
  %i.ebw = tail call i64 @llvm.umax.i64(i64 %i.ebv, i64 40)
  %i.ebx = add nuw i64 %i.ebw, 7
  %i.eby = and i64 %i.ebx, -8
  %i.ebz = add i64 %i.eby, %.0356.i               ; 4 uses
  %i.eca = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0400.i, i64 noundef %.0356.i, i64 noundef %i.ebz) #33, !inline_history !388 ; 6 uses
  %.not436.i = icmp eq ptr %i.eca, null
  br i1 %.not436.i, label %.loopexit1368, label %.thread1239, !prof !45

.thread1239:                                      ; preds = %size_align_up.exit465.i
  %i.ecb = ptrtoint ptr %.0371.i to i64
  %i.ecc = ptrtoint ptr %.0363.i to i64           ; 2 uses
  %i.ecd = sub i64 %i.ecb, %i.ecc                 ; 2 uses
  %i.ece = ptrtoint ptr %.0385.i to i64
  %i.ecf = ptrtoint ptr %.0400.i to i64           ; 2 uses
  %i.ecg = sub i64 %i.ece, %i.ecf
  %i.ech = sub i64 %i.ecc, %i.ecf
  %i.eci = sub i64 %i.ebz, %i.ecd
  %i.ecj = getelementptr inbounds nuw i8, ptr %i.eca, i64 %i.eci ; 2 uses
  %i.eck = getelementptr inbounds nuw i8, ptr %i.eca, i64 %i.ech
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ecj, ptr nonnull align 1 %i.eck, i64 %i.ecd, i1 false)
  %i.ecl = getelementptr inbounds nuw i8, ptr %i.eca, i64 %i.ecg
  %i.ecm = getelementptr inbounds nuw i8, ptr %i.eca, i64 %i.ebz
  %.pre3171 = load i64, ptr %.0418.i, align 8, !tbaa !99
  br label %bb.rk

bb.rk:                                            ; preds = %.thread1239, %bb.rj
  %i.ecn = phi i64 [ %.pre3171, %.thread1239 ], [ %i.cxi, %bb.rj ] ; 3 uses
  %.4404.i = phi ptr [ %i.eca, %.thread1239 ], [ %.0400.i, %bb.rj ] ; 2 uses
  %.5390.i = phi ptr [ %i.ecl, %.thread1239 ], [ %.0385.i, %bb.rj ] ; 6 uses
  %.4375.i = phi ptr [ %i.ecm, %.thread1239 ], [ %.0371.i, %bb.rj ]
  %.4367.i = phi ptr [ %i.ecj, %.thread1239 ], [ %.0363.i, %bb.rj ]
  %.2358.i = phi i64 [ %i.ebz, %.thread1239 ], [ %.0356.i, %bb.rj ]
  %i.eco = and i64 %i.ecn, 16
  %.not.i606 = icmp eq i64 %i.eco, 0
  %i.ecp = getelementptr inbounds nuw i8, ptr %.0418.i, i64 8
  %i.ecq = load i64, ptr %i.ecp, align 8, !tbaa !100 ; 7 uses
  br i1 %.not.i606, label %bb.rl, label %bb.se

bb.rl:                                            ; preds = %bb.rk
  %i.ecr = sub i64 0, %i.ecq
  %i.ecs = lshr i64 %i.ecn, 3
  %.lobit.i = lshr i64 %i.ecq, 63
  %i.ect = and i64 %.lobit.i, %i.ecs              ; 2 uses
  store i8 45, ptr %.5390.i, align 1, !tbaa !100
  %.not37.i = icmp eq i64 %i.ect, 0
  %i.ecu = select i1 %.not37.i, i64 %i.ecq, i64 %i.ecr ; 26 uses
  %i.ecv = getelementptr inbounds nuw i8, ptr %.5390.i, i64 %i.ect ; 20 uses
  %i.ecw = icmp ult i64 %i.ecu, 100000000
  br i1 %i.ecw, label %bb.rm, label %bb.rt

bb.rm:                                            ; preds = %bb.rl
  %i.ecx = trunc nuw nsw i64 %i.ecu to i32        ; 4 uses
  %i.ecy = icmp samesign ult i64 %i.ecu, 100
  br i1 %i.ecy, label %bb.rn, label %bb.ro

bb.rn:                                            ; preds = %bb.rm
  %i.ecz = icmp samesign ult i64 %i.ecu, 10       ; 2 uses
  %i.eda = shl nuw nsw i64 %i.ecu, 1
  %i.edb = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.eda
  %.neg70.i.i = sext i1 %i.ecz to i64
  %i.edc = zext i1 %i.ecz to i64
  %i.edd = getelementptr inbounds nuw i8, ptr %i.edb, i64 %i.edc
  %i.ede = load i16, ptr %i.edd, align 1
  store i16 %i.ede, ptr %i.ecv, align 1
  %i.edf = getelementptr inbounds i8, ptr %i.ecv, i64 %.neg70.i.i
  %i.edg = getelementptr inbounds nuw i8, ptr %i.edf, i64 2
  br label %write_num.exit.thread

bb.ro:                                            ; preds = %bb.rm
  %i.edh = icmp samesign ult i64 %i.ecu, 10000
  br i1 %i.edh, label %bb.rp, label %bb.rq

bb.rp:                                            ; preds = %bb.ro
  %i.edi = mul nuw nsw i32 %i.ecx, 5243
  %i.edj = lshr i32 %i.edi, 19                    ; 2 uses
  %.neg68.i.i = mul nsw i32 %i.edj, -100
  %i.edk = add nsw i32 %.neg68.i.i, %i.ecx
  %i.edl = icmp samesign ult i64 %i.ecu, 1000     ; 2 uses
  %i.edm = shl nuw nsw i32 %i.edj, 1
  %i.edn = zext nneg i32 %i.edm to i64
  %i.edo = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.edn
  %.neg69.i.i = sext i1 %i.edl to i64
  %i.edp = zext i1 %i.edl to i64
  %i.edq = getelementptr inbounds nuw i8, ptr %i.edo, i64 %i.edp
  %i.edr = load i16, ptr %i.edq, align 1
  store i16 %i.edr, ptr %i.ecv, align 1
  %i.eds = getelementptr inbounds i8, ptr %i.ecv, i64 %.neg69.i.i ; 2 uses
  %i.edt = getelementptr inbounds nuw i8, ptr %i.eds, i64 2
  %i.edu = shl nsw i32 %i.edk, 1
  %i.edv = zext i32 %i.edu to i64
  %i.edw = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.edv
  %i.edx = load i16, ptr %i.edw, align 2
  store i16 %i.edx, ptr %i.edt, align 1
  %i.edy = getelementptr inbounds nuw i8, ptr %i.eds, i64 4
  br label %write_num.exit.thread

bb.rq:                                            ; preds = %bb.ro
  %i.edz = icmp samesign ult i64 %i.ecu, 1000000
  br i1 %i.edz, label %bb.rr, label %bb.rs

bb.rr:                                            ; preds = %bb.rq
  %i.eea = mul nuw nsw i64 %i.ecu, 429497
  %i.eeb = lshr i64 %i.eea, 32                    ; 2 uses
  %i.eec = trunc nuw nsw i64 %i.eeb to i32
  %.neg65.i.i = mul nsw i32 %i.eec, -10000
  %i.eed = add nsw i32 %.neg65.i.i, %i.ecx        ; 2 uses
  %i.eee = mul i32 %i.eed, 5243
  %i.eef = lshr i32 %i.eee, 19                    ; 2 uses
  %.neg66.i.i = mul nsw i32 %i.eef, -100
  %i.eeg = add nsw i32 %.neg66.i.i, %i.eed
  %i.eeh = icmp samesign ult i64 %i.ecu, 100000   ; 2 uses
  %i.eei = shl nuw nsw i64 %i.eeb, 1
  %i.eej = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.eei
  %.neg67.i.i = sext i1 %i.eeh to i64
  %i.eek = zext i1 %i.eeh to i64
  %i.eel = getelementptr inbounds nuw i8, ptr %i.eej, i64 %i.eek
  %i.eem = load i16, ptr %i.eel, align 1
  store i16 %i.eem, ptr %i.ecv, align 1
  %i.een = getelementptr inbounds i8, ptr %i.ecv, i64 %.neg67.i.i ; 3 uses
  %i.eeo = getelementptr inbounds nuw i8, ptr %i.een, i64 2
  %i.eep = shl nuw nsw i32 %i.eef, 1
  %i.eeq = zext nneg i32 %i.eep to i64
  %i.eer = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.eeq
  %i.ees = load i16, ptr %i.eer, align 2
  store i16 %i.ees, ptr %i.eeo, align 1
  %i.eet = getelementptr inbounds nuw i8, ptr %i.een, i64 4
  %i.eeu = shl nsw i32 %i.eeg, 1
  %i.eev = zext i32 %i.eeu to i64
  %i.eew = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.eev
  %i.eex = load i16, ptr %i.eew, align 2
  store i16 %i.eex, ptr %i.eet, align 1
  %i.eey = getelementptr inbounds nuw i8, ptr %i.een, i64 6
  br label %write_num.exit.thread

bb.rs:                                            ; preds = %bb.rq
  %i.eez = mul nuw nsw i64 %i.ecu, 109951163
  %i.efa = lshr i64 %i.eez, 40
  %i.efb = trunc nuw nsw i64 %i.efa to i32        ; 3 uses
  %.neg.i42.i = mul nsw i32 %i.efb, -10000
  %i.efc = add nsw i32 %.neg.i42.i, %i.ecx        ; 2 uses
  %i.efd = mul nuw nsw i32 %i.efb, 5243
  %i.efe = lshr i32 %i.efd, 19                    ; 2 uses
  %i.eff = mul i32 %i.efc, 5243
  %i.efg = lshr i32 %i.eff, 19                    ; 2 uses
  %.neg62.i.i = mul nsw i32 %i.efe, -100
  %i.efh = add nsw i32 %.neg62.i.i, %i.efb
  %.neg63.i.i = mul i32 %i.efg, 2147483548
  %i.efi = add i32 %.neg63.i.i, %i.efc
  %i.efj = icmp samesign ult i64 %i.ecu, 10000000 ; 2 uses
  %i.efk = shl nuw nsw i32 %i.efe, 1
  %i.efl = zext nneg i32 %i.efk to i64
  %i.efm = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.efl
  %.neg64.i.i = sext i1 %i.efj to i64
  %i.efn = zext i1 %i.efj to i64
  %i.efo = getelementptr inbounds nuw i8, ptr %i.efm, i64 %i.efn
  %i.efp = load i16, ptr %i.efo, align 1
  store i16 %i.efp, ptr %i.ecv, align 1
  %i.efq = getelementptr inbounds i8, ptr %i.ecv, i64 %.neg64.i.i ; 4 uses
  %i.efr = getelementptr inbounds nuw i8, ptr %i.efq, i64 2
  %i.efs = shl nsw i32 %i.efh, 1
  %i.eft = zext i32 %i.efs to i64
  %i.efu = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.eft
  %i.efv = load i16, ptr %i.efu, align 2
  store i16 %i.efv, ptr %i.efr, align 1
  %i.efw = getelementptr inbounds nuw i8, ptr %i.efq, i64 4
  %i.efx = shl nuw nsw i32 %i.efg, 1
  %i.efy = zext nneg i32 %i.efx to i64
  %i.efz = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.efy
  %i.ega = load i16, ptr %i.efz, align 2
  store i16 %i.ega, ptr %i.efw, align 1
  %i.egb = getelementptr inbounds nuw i8, ptr %i.efq, i64 6
  %i.egc = shl i32 %i.efi, 1
  %i.egd = zext i32 %i.egc to i64
  %i.ege = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.egd
  %i.egf = load i16, ptr %i.ege, align 2
  store i16 %i.egf, ptr %i.egb, align 1
  %i.egg = getelementptr inbounds nuw i8, ptr %i.efq, i64 8
  br label %write_num.exit.thread

bb.rt:                                            ; preds = %bb.rl
  %i.egh = icmp ult i64 %i.ecu, 10000000000000000
  %i.egi = udiv i64 %i.ecu, 100000000             ; 6 uses
  %.neg28.i.i = mul i64 %i.egi, 4194967296
  %i.egj = add i64 %.neg28.i.i, %i.ecu            ; 3 uses
  %i.egk = trunc i64 %i.egj to i32                ; 2 uses
  br i1 %i.egh, label %bb.ru, label %bb.sb

bb.ru:                                            ; preds = %bb.rt
  %i.egl = trunc nuw nsw i64 %i.egi to i32        ; 4 uses
  %i.egm = icmp samesign ult i64 %i.ecu, 10000000000
end_hunk_10
begin_hunk_11_@yyjson_write_file:bb.a

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @yyjson_write_fp(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca %struct.yyjson_write_err, align 8   ; 5 uses
  %6 = alloca %struct.yyjson_alc, align 8         ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !48
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) @YYJSON_DEFAULT_ALC, i64 32, i1 false), !tbaa.struct !48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 0, ptr %i.a, align 8, !tbaa !106
  %.not17.i = icmp eq ptr %4, null                ; 3 uses
  %spec.store.select.i = select i1 %.not17.i, ptr %5, ptr %4 ; 3 uses
  %.not18.i = icmp eq ptr %0, null
  br i1 %.not18.i, label %bb.g, label %bb.h, !prof !45

bb.g:                                             ; preds = %bb.f
  %spec.store.select.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not17.i, ptr %5, ptr %4
  %spec.store.select.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.31, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !149
  store i32 1, ptr %spec.store.select.i, align 8, !tbaa !150
  br label %yyjson_val_write_fp.exit

bb.h:                                             ; preds = %bb.f
  %i.d = call ptr @yyjson_val_write_opts(ptr noundef readonly %i.c, i32 noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull %spec.store.select.i) ; 3 uses
  %.not19.i = icmp eq ptr %i.d, null
  br i1 %.not19.i, label %yyjson_val_write_fp.exit, label %bb.i, !prof !45

bb.i:                                             ; preds = %bb.h
  %i.e = load i64, ptr %i.a, align 8, !tbaa !106
  %i.f = call i64 @fwrite(ptr noundef nonnull readonly %i.d, i64 noundef %i.e, i64 noundef 1, ptr noundef nonnull %0)
  %.not.i.i = icmp eq i64 %i.f, 1                 ; 2 uses
  br i1 %.not.i.i, label %write_dat_to_fp.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %spec.store.select.sroa.sel23.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not17.i, ptr %5, ptr %4
  %spec.store.select.sroa.sel23.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel23.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.117, ptr %spec.store.select.sroa.sel23.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !149
  store i32 6, ptr %spec.store.select.i, align 8, !tbaa !150
  br label %write_dat_to_fp.exit.i

write_dat_to_fp.exit.i:                           ; preds = %bb.j, %bb.i
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  call void %i.h(ptr noundef %i.j, ptr noundef nonnull %i.d) #33, !inline_history !399
  br label %yyjson_val_write_fp.exit

yyjson_val_write_fp.exit:                         ; preds = %bb.g, %bb.h, %write_dat_to_fp.exit.i
  %.0.i = phi i1 [ false, %bb.g ], [ %.not.i.i, %write_dat_to_fp.exit.i ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @yyjson_mut_val_write_opts(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call fastcc ptr @yyjson_mut_write_opts_impl(ptr noundef %0, i64 noundef 0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @yyjson_mut_write_opts_impl(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #10 {
bb.a:
  %6 = alloca %struct.yyjson_write_err, align 8   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0486.0.copyload = load ptr, ptr %3, align 8, !tbaa !47
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !47
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !47
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.9.0 = phi ptr [ %.sroa.9.0.copyload, %bb.b ], [ null, %bb.a ] ; 35 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %bb.b ], [ @default_free, %bb.a ] ; 10 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload, %bb.b ], [ @default_realloc, %bb.a ] ; 16 uses
  %.sroa.0486.0 = phi ptr [ %.sroa.0486.0.copyload, %bb.b ], [ @default_malloc, %bb.a ] ; 9 uses
  %.not28 = icmp eq ptr %5, null                  ; 16 uses
  %spec.store.select = select i1 %.not28, ptr %6, ptr %5 ; 16 uses
  %.not29 = icmp eq ptr %4, null                  ; 16 uses
  %.not30 = icmp eq ptr %0, null
  br i1 %.not30, label %bb.d, label %bb.e, !prof !45

bb.d:                                             ; preds = %bb.c
  br i1 %.not29, label %.cont423, label %.else425

.else425:                                         ; preds = %bb.d
  store i64 0, ptr %4, align 8, !tbaa !106
  br label %.cont423

.cont423:                                         ; preds = %bb.d, %.else425
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.29, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !149
  store i32 1, ptr %spec.store.select, align 8, !tbaa !150
  br label %yyjson_mut_write_single.exit

bb.e:                                             ; preds = %bb.c
  %i.a = load i64, ptr %0, align 8, !tbaa !99     ; 5 uses
  %i.b = trunc i64 %i.a to i8                     ; 2 uses
  %i.c = and i8 %i.b, 6
  %i.d = icmp ne i8 %i.c, 6
  %i.e = icmp ult i64 %i.a, 256
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.f, label %bb.fq

bb.f:                                             ; preds = %bb.e
  %i.f = and i32 %2, 2
  %.not950 = icmp eq i32 %i.f, 0                  ; 3 uses
  %i.g = and i32 %2, 4
  %.not951 = icmp eq i32 %i.g, 0                  ; 2 uses
  br i1 %.not950, label %bb.h, label %bb.g, !prof !62

bb.g:                                             ; preds = %bb.f
  %enc_table_esc_slash.enc_table_esc.i.i = select i1 %.not951, ptr @enc_table_esc, ptr @enc_table_esc_slash, !prof !62
  br label %get_enc_table_with_flag.exit.i

bb.h:                                             ; preds = %bb.f
  %enc_table_cpy_slash.enc_table_cpy.i.i = select i1 %.not951, ptr @enc_table_cpy, ptr @enc_table_cpy_slash, !prof !62
  br label %get_enc_table_with_flag.exit.i

get_enc_table_with_flag.exit.i:                   ; preds = %bb.h, %bb.g
  %.0.i3.i = phi ptr [ %enc_table_esc_slash.enc_table_esc.i.i, %bb.g ], [ %enc_table_cpy_slash.enc_table_cpy.i.i, %bb.h ] ; 28 uses
  %i.h = icmp eq ptr %.0.i3.i, @enc_table_cpy
  %i.i = and i32 %2, 32
  %.not953 = icmp eq i32 %i.i, 0                  ; 4 uses
  %i.j = and i32 %2, 128
  %.not954 = icmp eq i32 %i.j, 0
  %i.k = and i8 %i.b, 7
  switch i8 %i.k, label %default.unreachable [
    i8 1, label %bb.i
    i8 5, label %bb.k
    i8 4, label %bb.ec
    i8 3, label %bb.fe
    i8 2, label %bb.ff
    i8 6, label %bb.fh
    i8 7, label %bb.fj
    i8 0, label %bb.fo
  ]

bb.i:                                             ; preds = %get_enc_table_with_flag.exit.i
  %i.l = lshr i64 %i.a, 8                         ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100
  %i.o = add nuw nsw i64 %i.l, 2
  %i.p = tail call ptr %.sroa.0486.0(ptr noundef %.sroa.9.0, i64 noundef %i.o) #33, !inline_history !400 ; 4 uses
  %.not107.i.i = icmp eq ptr %i.p, null
  br i1 %.not107.i.i, label %bb.fn, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.n, i64 range(i64 0, 72057594037927936) %i.l, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l
  br label %write_str.exit109.i

bb.k:                                             ; preds = %get_enc_table_with_flag.exit.i
  %i.r = lshr i64 %i.a, 8                         ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !100  ; 7 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 4 uses
  %i.v = mul nuw nsw i64 %i.r, 6
  %i.w = add nuw nsw i64 %i.v, 4
  %i.x = tail call ptr %.sroa.0486.0(ptr noundef %.sroa.9.0, i64 noundef %i.w) #33, !inline_history !400 ; 12 uses
  %.not104.i.i = icmp eq ptr %i.x, null
  br i1 %.not104.i.i, label %bb.fn, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.h, label %bb.bt, label %.split.i.i, !prof !62

.split.i.i:                                       ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r ; 3 uses
  store i8 34, ptr %i.x, align 1, !tbaa !100
  %i.z = ptrtoint ptr %i.y to i64                 ; 4 uses
  %i.aa = add i64 %i.r, %i.u
  br label %bb.m

bb.m:                                             ; preds = %bb.ax, %.split.i.i
  %.pn.i11.i = phi ptr [ %i.x, %.split.i.i ], [ %.8253.i24.i, %bb.ax ]
  %.0238.i12.i = phi ptr [ %i.t, %.split.i.i ], [ %i.hu, %bb.ax ] ; 3 uses
  %.0245.i13.i = getelementptr inbounds nuw i8, ptr %.pn.i11.i, i64 1 ; 2 uses
  %i.ab = ptrtoint ptr %.0238.i12.i to i64
  %i.ac = sub i64 %i.z, %i.ab                     ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 15
  br i1 %i.ad, label %.lr.ph2225, label %.preheader978

.preheader978:                                    ; preds = %bb.ac, %bb.m
  %.pre-phi2855 = phi i64 [ %i.ac, %bb.m ], [ %i.dj, %bb.ac ]
  %.1246.i14.i.lcssa = phi ptr [ %.0245.i13.i, %bb.m ], [ %i.dg, %bb.ac ] ; 2 uses
  %.1239.i15.i.lcssa = phi ptr [ %.0238.i12.i, %bb.m ], [ %i.dh, %bb.ac ] ; 2 uses
  %i.ae = icmp sgt i64 %.pre-phi2855, 3
  br i1 %i.ae, label %.lr.ph2231, label %.preheader976

.lr.ph2225:                                       ; preds = %bb.m, %bb.ac
  %.1239.i15.i2223 = phi ptr [ %i.dh, %bb.ac ], [ %.0238.i12.i, %bb.m ] ; 46 uses
  %.1246.i14.i2222 = phi ptr [ %i.dg, %bb.ac ], [ %.0245.i13.i, %bb.m ] ; 30 uses
  %i.af = load i8, ptr %.1239.i15.i2223, align 1, !tbaa !100 ; 2 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !100
  %.not272.i93.i = icmp eq i8 %i.ai, 0
  br i1 %.not272.i93.i, label %bb.n, label %.preheader973.preheader, !prof !62

bb.n:                                             ; preds = %.lr.ph2225
  %i.aj = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !100
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !100
  %.not273.i94.i = icmp eq i8 %i.an, 0
  br i1 %.not273.i94.i, label %bb.o, label %.loopexit980, !prof !62

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !100
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !100
  %.not274.i95.i = icmp eq i8 %i.as, 0
  br i1 %.not274.i95.i, label %bb.p, label %.loopexit981, !prof !62

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !100
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !100
  %.not275.i96.i = icmp eq i8 %i.ax, 0
  br i1 %.not275.i96.i, label %bb.q, label %.loopexit982, !prof !62

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !100
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !100
  %.not276.i97.i = icmp eq i8 %i.bc, 0
  br i1 %.not276.i97.i, label %bb.r, label %bb.aj, !prof !62

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !100
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !100
  %.not277.i98.i = icmp eq i8 %i.bh, 0
  br i1 %.not277.i98.i, label %bb.s, label %bb.ak, !prof !62

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 6
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !100
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !100
  %.not278.i99.i = icmp eq i8 %i.bm, 0
  br i1 %.not278.i99.i, label %bb.t, label %bb.al, !prof !62

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !100
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !100
  %.not279.i100.i = icmp eq i8 %i.br, 0
  br i1 %.not279.i100.i, label %bb.u, label %bb.am, !prof !62

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 8
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !100
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !100
  %.not280.i101.i = icmp eq i8 %i.bw, 0
  br i1 %.not280.i101.i, label %bb.v, label %bb.an, !prof !62

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 9
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !100
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !100
  %.not281.i102.i = icmp eq i8 %i.cb, 0
  br i1 %.not281.i102.i, label %bb.w, label %bb.ao, !prof !62

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 10
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !100
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !100
  %.not282.i103.i = icmp eq i8 %i.cg, 0
  br i1 %.not282.i103.i, label %bb.x, label %bb.ap, !prof !62

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 11
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !100
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !100
  %.not283.i104.i = icmp eq i8 %i.cl, 0
  br i1 %.not283.i104.i, label %bb.y, label %bb.aq, !prof !62

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 12
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !100
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !100
  %.not284.i105.i = icmp eq i8 %i.cq, 0
  br i1 %.not284.i105.i, label %bb.z, label %bb.ar, !prof !62

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 13
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !100
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !100
  %.not285.i106.i = icmp eq i8 %i.cv, 0
  br i1 %.not285.i106.i, label %bb.aa, label %bb.as, !prof !62

bb.aa:                                            ; preds = %bb.z
  %i.cw = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 14
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !100
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !100
  %.not286.i107.i = icmp eq i8 %i.da, 0
  br i1 %.not286.i107.i, label %bb.ab, label %bb.at, !prof !62

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 15
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !100
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !100
  %.not287.i108.i = icmp eq i8 %i.df, 0
  br i1 %.not287.i108.i, label %bb.ac, label %bb.au, !prof !62

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i14.i2222, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i15.i2223, i64 16, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 16 ; 3 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.z, %i.di                     ; 2 uses
  %i.dk = icmp sgt i64 %i.dj, 15
  br i1 %i.dk, label %.lr.ph2225, label %.preheader978, !llvm.loop !23

.preheader976:                                    ; preds = %bb.ah, %.preheader978
  %.2247.i16.i.lcssa = phi ptr [ %.1246.i14.i.lcssa, %.preheader978 ], [ %i.es, %bb.ah ] ; 3 uses
  %.2240.i17.i.lcssa = phi ptr [ %.1239.i15.i.lcssa, %.preheader978 ], [ %i.et, %bb.ah ] ; 5 uses
  %i.dl = icmp ugt ptr %i.y, %.2240.i17.i.lcssa
  br i1 %i.dl, label %.lr.ph2236.preheader, label %.preheader976._crit_edge

.lr.ph2236.preheader:                             ; preds = %.preheader976
  %.2240.i17.i.lcssa2787 = ptrtoaddr ptr %.2240.i17.i.lcssa to i64 ; 2 uses
  %i.dm = getelementptr i8, ptr %.2240.i17.i.lcssa, i64 %i.r
  %scevgep2786 = getelementptr i8, ptr %i.dm, i64 %i.u
  %i.dn = sub i64 0, %.2240.i17.i.lcssa2787
  %scevgep2788 = getelementptr i8, ptr %scevgep2786, i64 %i.dn
  %i.do = sub i64 %i.aa, %.2240.i17.i.lcssa2787
  %i.dp = freeze i64 %i.do                        ; 2 uses
  %i.dq = add i64 %i.dp, -1
  %xtraiter5662.a = and i64 %i.dp, 3              ; 2 uses
  %lcmp.mod5663.not.a = icmp eq i64 %xtraiter5662.a, 0
  br i1 %lcmp.mod5663.not.a, label %.lr.ph2236.prol.loopexit, label %.lr.ph2236.prol

.lr.ph2236.prol:                                  ; preds = %.lr.ph2236.preheader, %bb.ad
  %.3241.i19.i2235.prol = phi ptr [ %i.dv, %bb.ad ], [ %.2240.i17.i.lcssa, %.lr.ph2236.preheader ] ; 3 uses
  %.3248.i18.i2234.prol = phi ptr [ %i.dw, %bb.ad ], [ %.2247.i16.i.lcssa, %.lr.ph2236.preheader ] ; 3 uses
  %prol.iter5664.a = phi i64 [ %prol.iter5664.next.a, %bb.ad ], [ 0, %.lr.ph2236.preheader ]
  %i.dr = load i8, ptr %.3241.i19.i2235.prol, align 1, !tbaa !100 ; 2 uses
  %i.ds = zext i8 %i.dr to i64
end_hunk_11
begin_hunk_12_@yyjson_mut_write_opts_impl:bb.a
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !100
  %.not270.i87.i = icmp eq i8 %i.el, 0
  br i1 %.not270.i87.i, label %bb.ag, label %.loopexit981, !prof !62

bb.ag:                                            ; preds = %bb.af
  %i.em = getelementptr inbounds nuw i8, ptr %.2240.i17.i2230, i64 3
  %i.en = load i8, ptr %i.em, align 1, !tbaa !100
  %i.eo = zext i8 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !100
  %.not271.i90.i = icmp eq i8 %i.eq, 0
  br i1 %.not271.i90.i, label %bb.ah, label %.loopexit982, !prof !62

bb.ah:                                            ; preds = %bb.ag
  %i.er = load i32, ptr %.2240.i17.i2230, align 1
  store i32 %i.er, ptr %.2247.i16.i2229, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %.2247.i16.i2229, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.2240.i17.i2230, i64 4 ; 3 uses
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = sub i64 %i.z, %i.eu
  %i.ew = icmp sgt i64 %i.ev, 3
  br i1 %i.ew, label %.lr.ph2231, label %.preheader976, !llvm.loop !24

.lr.ph2236:                                       ; preds = %.lr.ph2236.prol.loopexit, %bb.ai
  %.3241.i19.i2235 = phi ptr [ %i.ft, %bb.ai ], [ %.3241.i19.i2235.unr, %.lr.ph2236.prol.loopexit ] ; 9 uses
  %.3248.i18.i2234 = phi ptr [ %i.fu, %bb.ai ], [ %.3248.i18.i2234.unr, %.lr.ph2236.prol.loopexit ] ; 6 uses
  %i.ex = load i8, ptr %.3241.i19.i2235, align 1, !tbaa !100 ; 2 uses
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !100
  %.not.i21.i = icmp eq i8 %i.fa, 0
  br i1 %.not.i21.i, label %.lr.ph2236.1, label %.preheader973.preheader, !prof !62

.lr.ph2236.1:                                     ; preds = %.lr.ph2236
  %i.fb = getelementptr inbounds nuw i8, ptr %.3241.i19.i2235, i64 1
  %i.fc = getelementptr inbounds nuw i8, ptr %.3248.i18.i2234, i64 1 ; 2 uses
  store i8 %i.ex, ptr %.3248.i18.i2234, align 1, !tbaa !100
  %i.fd = load i8, ptr %i.fb, align 1, !tbaa !100 ; 2 uses
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !100
  %.not.i21.i.1 = icmp eq i8 %i.fg, 0
  br i1 %.not.i21.i.1, label %.lr.ph2236.2, label %.preheader973.preheader.loopexit.loopexit.split.loop.exit6387, !prof !62

.lr.ph2236.2:                                     ; preds = %.lr.ph2236.1
  %i.fh = getelementptr inbounds nuw i8, ptr %.3241.i19.i2235, i64 2
  %i.fi = getelementptr inbounds nuw i8, ptr %.3248.i18.i2234, i64 2 ; 2 uses
  store i8 %i.fd, ptr %i.fc, align 1, !tbaa !100
  %i.fj = load i8, ptr %i.fh, align 1, !tbaa !100 ; 2 uses
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !100
  %.not.i21.i.2 = icmp eq i8 %i.fm, 0
  br i1 %.not.i21.i.2, label %.lr.ph2236.3, label %.preheader973.preheader.loopexit.loopexit.split.loop.exit6384, !prof !62

.lr.ph2236.3:                                     ; preds = %.lr.ph2236.2
  %i.fn = getelementptr inbounds nuw i8, ptr %.3241.i19.i2235, i64 3
  %i.fo = getelementptr inbounds nuw i8, ptr %.3248.i18.i2234, i64 3 ; 2 uses
  store i8 %i.fj, ptr %i.fi, align 1, !tbaa !100
  %i.fp = load i8, ptr %i.fn, align 1, !tbaa !100 ; 2 uses
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !100
  %.not.i21.i.3 = icmp eq i8 %i.fs, 0
  br i1 %.not.i21.i.3, label %bb.ai, label %.preheader973.preheader.loopexit.loopexit.split.loop.exit, !prof !62

bb.ai:                                            ; preds = %.lr.ph2236.3
  %i.ft = getelementptr inbounds nuw i8, ptr %.3241.i19.i2235, i64 4 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.3248.i18.i2234, i64 4 ; 2 uses
  store i8 %i.fp, ptr %i.fo, align 1, !tbaa !100
  %exitcond2789.not.3 = icmp eq ptr %i.ft, %scevgep2788
  br i1 %exitcond2789.not.3, label %.preheader976._crit_edge, label %.lr.ph2236, !llvm.loop !25

.preheader976._crit_edge:                         ; preds = %.preheader976, %bb.ai, %.lr.ph2236.prol.loopexit
  %.3248.i18.i.lcssa = phi ptr [ %.lcssa5142.unr, %.lr.ph2236.prol.loopexit ], [ %i.fu, %bb.ai ], [ %.2247.i16.i.lcssa, %.preheader976 ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.3248.i18.i.lcssa, i64 1
  store i8 34, ptr %.3248.i18.i.lcssa, align 1, !tbaa !100
  br label %write_str.exit109.i

.loopexit980:                                     ; preds = %bb.n, %bb.ae
  %i.fw = phi i8 [ %i.dy, %bb.ae ], [ %i.af, %bb.n ]
  %.5250.i85.i = phi ptr [ %.2247.i16.i2229, %bb.ae ], [ %.1246.i14.i2222, %bb.n ] ; 2 uses
  %.5243.i86.i = phi ptr [ %.2240.i17.i2230, %bb.ae ], [ %.1239.i15.i2223, %bb.n ]
  store i8 %i.fw, ptr %.5250.i85.i, align 1
  %i.fx = getelementptr inbounds nuw i8, ptr %.5250.i85.i, i64 1
  %i.fy = getelementptr inbounds nuw i8, ptr %.5243.i86.i, i64 1
  br label %.preheader973.preheader

.loopexit981:                                     ; preds = %bb.o, %bb.af
  %.6251.i88.i = phi ptr [ %.2247.i16.i2229, %bb.af ], [ %.1246.i14.i2222, %bb.o ] ; 2 uses
  %.6.i89.i = phi ptr [ %.2240.i17.i2230, %bb.af ], [ %.1239.i15.i2223, %bb.o ] ; 2 uses
  %i.fz = load i16, ptr %.6.i89.i, align 1
  store i16 %i.fz, ptr %.6251.i88.i, align 1
  %i.ga = getelementptr inbounds nuw i8, ptr %.6251.i88.i, i64 2
  %i.gb = getelementptr inbounds nuw i8, ptr %.6.i89.i, i64 2
  br label %.preheader973.preheader

.loopexit982:                                     ; preds = %bb.p, %bb.ag
  %.7252.i91.i = phi ptr [ %.2247.i16.i2229, %bb.ag ], [ %.1246.i14.i2222, %bb.p ] ; 2 uses
  %.7.i92.i = phi ptr [ %.2240.i17.i2230, %bb.ag ], [ %.1239.i15.i2223, %bb.p ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i91.i, ptr noundef nonnull align 1 dereferenceable(3) %.7.i92.i, i64 3, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %.7252.i91.i, i64 3
  %i.gd = getelementptr inbounds nuw i8, ptr %.7.i92.i, i64 3
  br label %.preheader973.preheader

bb.aj:                                            ; preds = %bb.q
  %i.ge = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 4
  %i.gf = load i32, ptr %.1239.i15.i2223, align 1
  store i32 %i.gf, ptr %.1246.i14.i2222, align 1
  %i.gg = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 4
  br label %.preheader973.preheader

bb.ak:                                            ; preds = %bb.r
  %i.gh = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i14.i2222, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i15.i2223, i64 5, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 5
  br label %.preheader973.preheader

bb.al:                                            ; preds = %bb.s
  %i.gj = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i14.i2222, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i15.i2223, i64 6, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 6
  br label %.preheader973.preheader

bb.am:                                            ; preds = %bb.t
  %i.gl = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i14.i2222, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i15.i2223, i64 7, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 7
  br label %.preheader973.preheader

bb.an:                                            ; preds = %bb.u
  %i.gn = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 8
  %i.go = load i64, ptr %.1239.i15.i2223, align 1
  store i64 %i.go, ptr %.1246.i14.i2222, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 8
  br label %.preheader973.preheader

bb.ao:                                            ; preds = %bb.v
  %i.gq = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i14.i2222, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i15.i2223, i64 9, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 9
  br label %.preheader973.preheader

bb.ap:                                            ; preds = %bb.w
  %i.gs = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i14.i2222, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i15.i2223, i64 10, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 10
  br label %.preheader973.preheader

bb.aq:                                            ; preds = %bb.x
  %i.gu = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1246.i14.i2222, ptr noundef nonnull align 1 dereferenceable(11) %.1239.i15.i2223, i64 11, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 11
  br label %.preheader973.preheader

bb.ar:                                            ; preds = %bb.y
  %i.gw = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1246.i14.i2222, ptr noundef nonnull align 1 dereferenceable(12) %.1239.i15.i2223, i64 12, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 12
  br label %.preheader973.preheader

bb.as:                                            ; preds = %bb.z
  %i.gy = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1246.i14.i2222, ptr noundef nonnull align 1 dereferenceable(13) %.1239.i15.i2223, i64 13, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 13
  br label %.preheader973.preheader

bb.at:                                            ; preds = %bb.aa
  %i.ha = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1246.i14.i2222, ptr noundef nonnull align 1 dereferenceable(14) %.1239.i15.i2223, i64 14, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 14
  br label %.preheader973.preheader

bb.au:                                            ; preds = %bb.ab
  %i.hc = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1246.i14.i2222, ptr noundef nonnull align 1 dereferenceable(15) %.1239.i15.i2223, i64 15, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 15
  br label %.preheader973.preheader

.preheader973.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2236.3
  %i.he = getelementptr inbounds nuw i8, ptr %.3241.i19.i2235, i64 3
  br label %.preheader973.preheader

.preheader973.preheader.loopexit.loopexit.split.loop.exit6384: ; preds = %.lr.ph2236.2
  %i.hf = getelementptr inbounds nuw i8, ptr %.3241.i19.i2235, i64 2
  br label %.preheader973.preheader

.preheader973.preheader.loopexit.loopexit.split.loop.exit6387: ; preds = %.lr.ph2236.1
  %i.hg = getelementptr inbounds nuw i8, ptr %.3241.i19.i2235, i64 1
  br label %.preheader973.preheader

.preheader973.preheader:                          ; preds = %.lr.ph2225, %.lr.ph2231, %.lr.ph2236, %.preheader973.preheader.loopexit.loopexit.split.loop.exit6387, %.preheader973.preheader.loopexit.loopexit.split.loop.exit6384, %.preheader973.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2236.prol, %.loopexit980, %.loopexit981, %.loopexit982, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au
  %.8253.i24.i.ph = phi ptr [ %.2247.i16.i2229, %.lr.ph2231 ], [ %.3248.i18.i2234.prol, %.lr.ph2236.prol ], [ %i.fx, %.loopexit980 ], [ %i.ga, %.loopexit981 ], [ %i.gc, %.loopexit982 ], [ %i.gg, %bb.aj ], [ %i.gi, %bb.ak ], [ %i.gk, %bb.al ], [ %i.gm, %bb.am ], [ %i.gp, %bb.an ], [ %i.gr, %bb.ao ], [ %i.gt, %bb.ap ], [ %i.gv, %bb.aq ], [ %i.gx, %bb.ar ], [ %i.gz, %bb.as ], [ %i.hb, %bb.at ], [ %i.hd, %bb.au ], [ %.3248.i18.i2234, %.lr.ph2236 ], [ %i.fc, %.preheader973.preheader.loopexit.loopexit.split.loop.exit6387 ], [ %i.fi, %.preheader973.preheader.loopexit.loopexit.split.loop.exit6384 ], [ %i.fo, %.preheader973.preheader.loopexit.loopexit.split.loop.exit ], [ %.1246.i14.i2222, %.lr.ph2225 ]
  %.8.i25.i.ph = phi ptr [ %.2240.i17.i2230, %.lr.ph2231 ], [ %.3241.i19.i2235.prol, %.lr.ph2236.prol ], [ %i.fy, %.loopexit980 ], [ %i.gb, %.loopexit981 ], [ %i.gd, %.loopexit982 ], [ %i.ge, %bb.aj ], [ %i.gh, %bb.ak ], [ %i.gj, %bb.al ], [ %i.gl, %bb.am ], [ %i.gn, %bb.an ], [ %i.gq, %bb.ao ], [ %i.gs, %bb.ap ], [ %i.gu, %bb.aq ], [ %i.gw, %bb.ar ], [ %i.gy, %bb.as ], [ %i.ha, %bb.at ], [ %i.hc, %bb.au ], [ %.3241.i19.i2235, %.lr.ph2236 ], [ %i.hg, %.preheader973.preheader.loopexit.loopexit.split.loop.exit6387 ], [ %i.hf, %.preheader973.preheader.loopexit.loopexit.split.loop.exit6384 ], [ %i.he, %.preheader973.preheader.loopexit.loopexit.split.loop.exit ], [ %.1239.i15.i2223, %.lr.ph2225 ]
  br label %.preheader973

.preheader973:                                    ; preds = %.preheader973.backedge, %.preheader973.preheader
  %.8253.i24.i = phi ptr [ %.8253.i24.i.ph, %.preheader973.preheader ], [ %.8253.i24.i.be, %.preheader973.backedge ] ; 35 uses
  %.8.i25.i = phi ptr [ %.8.i25.i.ph, %.preheader973.preheader ], [ %.8.i25.i.be, %.preheader973.backedge ] ; 23 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 4 ; 3 uses
  %i.hi = icmp ugt ptr %i.hh, %i.y                ; 2 uses
  br i1 %i.hi, label %bb.av, label %._crit_edge2842, !prof !45

._crit_edge2842:                                  ; preds = %.preheader973
  %.pre2843 = load i8, ptr %.8.i25.i, align 1, !tbaa !100 ; 2 uses
  %.phi.trans.insert2844 = zext i8 %.pre2843 to i64 ; 2 uses
  %.phi.trans.insert2845.a = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %.phi.trans.insert2844
  %.pre2846 = load i8, ptr %.phi.trans.insert2845.a, align 1, !tbaa !100
  br label %bb.aw

bb.av:                                            ; preds = %.preheader973
  %i.hj = ptrtoint ptr %.8.i25.i to i64
  %i.hk = sub i64 %i.z, %i.hj
  %i.hl = load i8, ptr %.8.i25.i, align 1, !tbaa !100 ; 3 uses
  %i.hm = zext i8 %i.hl to i64                    ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !100 ; 2 uses
  %i.hp = lshr i8 %i.ho, 1
  %i.hq = zext nneg i8 %i.hp to i64
  %i.hr = icmp slt i64 %i.hk, %i.hq
  br i1 %i.hr, label %bb.bq, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge2842, %bb.av
  %.pre-phi2856 = phi i64 [ %.phi.trans.insert2844, %._crit_edge2842 ], [ %i.hm, %bb.av ]
  %i.hs = phi i8 [ %.pre2846, %._crit_edge2842 ], [ %i.ho, %bb.av ]
  %i.ht = phi i8 [ %.pre2843, %._crit_edge2842 ], [ %i.hl, %bb.av ] ; 2 uses
  switch i8 %i.hs, label %bb.bp [
    i8 0, label %bb.ax
    i8 4, label %bb.ay
    i8 6, label %bb.ba
    i8 8, label %bb.bf
    i8 2, label %bb.bh
    i8 3, label %bb.bi
    i8 5, label %bb.bj
    i8 7, label %bb.bl
    i8 9, label %bb.bn
    i8 1, label %bb.bq
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.hu = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 1
  store i8 %i.ht, ptr %.8253.i24.i, align 1, !tbaa !100
  br label %bb.m

bb.ay:                                            ; preds = %bb.aw
  %i.hv = load i16, ptr %.8.i25.i, align 1        ; 3 uses
  %.sroa.0523.0.insert.ext = zext i16 %i.hv to i32 ; 2 uses
  %i.hw = and i32 %.sroa.0523.0.insert.ext, 49376
  %i.hx = icmp ne i32 %i.hw, 32960
  %i.hy = and i32 %.sroa.0523.0.insert.ext, 30
  %i.hz = icmp eq i32 %i.hy, 0
  %.not310.i79.i = or i1 %i.hx, %i.hz
  %i.ia = trunc i16 %i.hv to i8
  br i1 %.not310.i79.i, label %.thread, label %bb.az, !prof !45

bb.az:                                            ; preds = %bb.ay
  store i16 %i.hv, ptr %.8253.i24.i, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 2
  %i.ic = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 2
  br label %.preheader973.backedge

bb.ba:                                            ; preds = %bb.aw
  br i1 %i.hi, label %bb.bd, label %bb.bb, !prof !45

bb.bb:                                            ; preds = %bb.ba
  %.sroa.0.0.copyload.i335.i69.i = load i32, ptr %.8.i25.i, align 1 ; 4 uses
  %i.id = and i32 %.sroa.0.0.copyload.i335.i69.i, 12632304
  %i.ie = icmp eq i32 %i.id, 8421600
  %i.if = trunc i32 %.sroa.0.0.copyload.i335.i69.i to i8 ; 3 uses
  br i1 %i.ie, label %bb.bc, label %.thread, !prof !62

bb.bc:                                            ; preds = %bb.bb
  %i.ig = and i32 %.sroa.0.0.copyload.i335.i69.i, 8207
  switch i32 %i.ig, label %.critedge.i70.i [
    i32 8205, label %.thread
    i32 0, label %.thread
  ], !prof !151

bb.bd:                                            ; preds = %bb.ba
  %.sroa.0.0.copyload.i327.i74.i = load i16, ptr %.8.i25.i, align 1 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 2
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !100
  %.sroa.4.0.insert.ext.i328.i75.i = zext i8 %i.ii to i32
  %.sroa.4.0.insert.shift.i329.i76.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i328.i75.i, 16
  %.sroa.0.0.insert.ext.i330.i77.i = zext i16 %.sroa.0.0.copyload.i327.i74.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i331.i78.i = or disjoint i32 %.sroa.4.0.insert.shift.i329.i76.i, %.sroa.0.0.insert.ext.i330.i77.i ; 2 uses
  %i.ij = and i32 %.sroa.0.0.insert.insert.i331.i78.i, 12632304
  %i.ik = icmp eq i32 %i.ij, 8421600
  %i.il = trunc i16 %.sroa.0.0.copyload.i327.i74.i to i8 ; 3 uses
  br i1 %i.ik, label %bb.be, label %.thread, !prof !62

bb.be:                                            ; preds = %bb.bd
  %i.im = and i32 %.sroa.0.0.insert.ext.i330.i77.i, 8207
  switch i32 %i.im, label %.critedge.i70.i [
    i32 8205, label %.thread
    i32 0, label %.thread
  ], !prof !151

.critedge.i70.i:                                  ; preds = %bb.be, %bb.bc
  %storemerge956 = phi i32 [ %.sroa.0.0.copyload.i335.i69.i, %bb.bc ], [ %.sroa.0.0.insert.insert.i331.i78.i, %bb.be ]
  store i32 %storemerge956, ptr %.8253.i24.i, align 1
  %i.in = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 3
  %i.io = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 3
  br label %.preheader973.backedge

bb.bf:                                            ; preds = %bb.aw
  %.sroa.0.0.copyload.i334.i60.i = load i32, ptr %.8.i25.i, align 1 ; 6 uses
  %i.ip = and i32 %.sroa.0.0.copyload.i334.i60.i, -1061109512
  %i.iq = icmp ne i32 %i.ip, -2139062032
  %i.ir = and i32 %.sroa.0.0.copyload.i334.i60.i, 12295
  %.not301.i61.i = icmp eq i32 %i.ir, 0
  %or.cond.i62.i = or i1 %i.iq, %.not301.i61.i
  %i.is = trunc i32 %.sroa.0.0.copyload.i334.i60.i to i8 ; 2 uses
  br i1 %or.cond.i62.i, label %.thread, label %bb.bg, !prof !139

bb.bg:                                            ; preds = %bb.bf
  %i.it = and i32 %.sroa.0.0.copyload.i334.i60.i, 4
  %i.iu = icmp ne i32 %i.it, 0
  %i.iv = and i32 %.sroa.0.0.copyload.i334.i60.i, 12291
  %i.iw = icmp ne i32 %i.iv, 0
  %.not304.i63.i = and i1 %i.iu, %i.iw
  br i1 %.not304.i63.i, label %.thread, label %.critedge316.i64.i, !prof !45

.critedge316.i64.i:                               ; preds = %bb.bg
  store i32 %.sroa.0.0.copyload.i334.i60.i, ptr %.8253.i24.i, align 1
  %i.ix = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 4
  br label %.preheader973.backedge

bb.bh:                                            ; preds = %bb.aw
  %i.iy = shl nuw nsw i64 %.pre-phi2856, 1
  %i.iz = getelementptr inbounds nuw i8, ptr @esc_single_char_table, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2
  store i16 %i.ja, ptr %.8253.i24.i, align 1
  %i.jb = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 2
  %i.jc = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 1
  br label %.preheader973.backedge

.preheader973.backedge:                           ; preds = %bb.bh, %bb.bi, %bb.br, %bb.bs, %bb.az, %.critedge.i70.i, %.critedge316.i64.i, %bb.bk, %.critedge321.i45.i, %.critedge325.i36.i
  %.8253.i24.i.be = phi ptr [ %i.nc, %bb.br ], [ %i.ib, %bb.az ], [ %i.in, %.critedge.i70.i ], [ %i.ix, %.critedge316.i64.i ], [ %i.jb, %bb.bh ], [ %i.jj, %bb.bi ], [ %i.ke, %bb.bk ], [ %i.lb, %.critedge321.i45.i ], [ %i.mx, %.critedge325.i36.i ], [ %i.ne, %bb.bs ]
  %.8.i25.i.be = phi ptr [ %i.nb, %bb.br ], [ %i.ic, %bb.az ], [ %i.io, %.critedge.i70.i ], [ %i.hh, %.critedge316.i64.i ], [ %i.jc, %bb.bh ], [ %i.jk, %bb.bi ], [ %i.kf, %bb.bk ], [ %i.lc, %.critedge321.i45.i ], [ %i.hh, %.critedge325.i36.i ], [ %i.nf, %bb.bs ]
  br label %.preheader973

bb.bi:                                            ; preds = %bb.aw
  store i32 808482140, ptr %.8253.i24.i, align 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 4
  %i.je = load i8, ptr %.8.i25.i, align 1, !tbaa !100
  %i.jf = zext i8 %i.je to i64
  %i.jg = shl nuw nsw i64 %i.jf, 1
  %i.jh = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2
  store i16 %i.ji, ptr %i.jd, align 1
  %i.jj = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 6
  %i.jk = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 1
  br label %.preheader973.backedge

bb.bj:                                            ; preds = %bb.aw
  %.sroa.0.0.copyload.i332.i53.i = load i16, ptr %.8.i25.i, align 1 ; 3 uses
  %.sroa.0520.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i53.i to i32 ; 2 uses
  %i.jl = and i32 %.sroa.0520.0.insert.ext, 49376
  %i.jm = icmp ne i32 %i.jl, 32960
  %i.jn = and i32 %.sroa.0520.0.insert.ext, 30
  %i.jo = icmp eq i32 %i.jn, 0
  %.not298.i54.i = or i1 %i.jm, %i.jo
  br i1 %.not298.i54.i, label %.thread705, label %bb.bk, !prof !45

bb.bk:                                            ; preds = %bb.bj
  %i.jp = lshr i16 %.sroa.0.0.copyload.i332.i53.i, 8
  %i.jq = trunc nuw i16 %i.jp to i8
  %i.jr = trunc i16 %.sroa.0.0.copyload.i332.i53.i to i8 ; 2 uses
  %.tr299.i55.i = shl i8 %i.jr, 6
  %i.js = and i8 %i.jq, 63
  store i16 30044, ptr %.8253.i24.i, align 1
  %i.jt = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 2
  %i.ju = lshr i8 %i.jr, 1
  %i.jv = and i8 %i.ju, 14
  %i.jw = zext nneg i8 %i.jv to i64
  %i.jx = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.jw
  %i.jy = load i16, ptr %i.jx, align 2
  store i16 %i.jy, ptr %i.jt, align 1
  %i.jz = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 4
  %.narrow300.i56.i = or disjoint i8 %i.js, %.tr299.i55.i
  %i.ka = zext i8 %.narrow300.i56.i to i64
  %i.kb = shl nuw nsw i64 %i.ka, 1
  %i.kc = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 2
  store i16 %i.kd, ptr %i.jz, align 1
  %i.ke = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 6
  %i.kf = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 2
  br label %.preheader973.backedge

bb.bl:                                            ; preds = %bb.aw
  %.sroa.0.0.copyload.i.i40.i = load i16, ptr %.8.i25.i, align 1 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 2
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !100 ; 2 uses
  %.sroa.4.0.insert.ext.i.i41.i = zext i8 %i.kh to i32
  %.sroa.4.0.insert.shift.i.i42.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i41.i, 16
  %.sroa.0.0.insert.ext.i.i43.i = zext i16 %.sroa.0.0.copyload.i.i40.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i44.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i42.i, %.sroa.0.0.insert.ext.i.i43.i
  %i.ki = and i32 %.sroa.0.0.insert.insert.i.i44.i, 12632304
  %i.kj = icmp eq i32 %i.ki, 8421600
  br i1 %i.kj, label %bb.bm, label %.thread705, !prof !62

bb.bm:                                            ; preds = %bb.bl
  %i.kk = and i32 %.sroa.0.0.insert.ext.i.i43.i, 8207
  switch i32 %i.kk, label %.critedge321.i45.i [
    i32 8205, label %.thread705
    i32 0, label %.thread705
  ], !prof !151

.critedge321.i45.i:                               ; preds = %bb.bm
  %i.kl = zext i16 %.sroa.0.0.copyload.i.i40.i to i64
  %i.km = shl nuw nsw i64 %i.kl, 12
  %i.kn = lshr i16 %.sroa.0.0.copyload.i.i40.i, 2
  %i.ko = and i16 %i.kn, 4032                     ; 2 uses
  %i.kp = zext nneg i16 %i.ko to i64
  %i.kq = and i8 %i.kh, 63
  store i16 30044, ptr %.8253.i24.i, align 1
  %i.kr = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 2
  %.masked.i50.i = or disjoint i64 %i.km, %i.kp
  %i.ks = lshr i64 %.masked.i50.i, 7
  %i.kt = and i64 %i.ks, 510
  %i.ku = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.kt
  %i.kv = load i16, ptr %i.ku, align 2
  store i16 %i.kv, ptr %i.kr, align 1
  %i.kw = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 4
  %.tr294.i51.i = trunc i16 %i.ko to i8
  %.narrow295.i52.i = or disjoint i8 %i.kq, %.tr294.i51.i
  %i.kx = zext i8 %.narrow295.i52.i to i64
  %i.ky = shl nuw nsw i64 %i.kx, 1
  %i.kz = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.ky
  %i.la = load i16, ptr %i.kz, align 2
  store i16 %i.la, ptr %i.kw, align 1
  %i.lb = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 6
  %i.lc = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 3
  br label %.preheader973.backedge

bb.bn:                                            ; preds = %bb.aw
  %.sroa.0.0.copyload.i333.i30.i = load i32, ptr %.8.i25.i, align 1 ; 9 uses
  %i.ld = and i32 %.sroa.0.0.copyload.i333.i30.i, -1061109512
  %i.le = icmp ne i32 %i.ld, -2139062032
  %i.lf = and i32 %.sroa.0.0.copyload.i333.i30.i, 12295
  %.not288.i31.i = icmp eq i32 %i.lf, 0
  %or.cond323.i32.i = or i1 %i.le, %.not288.i31.i
  %i.lg = lshr i32 %.sroa.0.0.copyload.i333.i30.i, 24
  br i1 %or.cond323.i32.i, label %.thread705, label %bb.bo, !prof !139

bb.bo:                                            ; preds = %bb.bn
  %i.lh = and i32 %.sroa.0.0.copyload.i333.i30.i, 4
  %i.li = icmp ne i32 %i.lh, 0
  %i.lj = and i32 %.sroa.0.0.copyload.i333.i30.i, 12291
  %i.lk = icmp ne i32 %i.lj, 0
  %.not291.i33.i = and i1 %i.li, %i.lk
  br i1 %.not291.i33.i, label %.thread705, label %.critedge325.i36.i, !prof !45

.critedge325.i36.i:                               ; preds = %bb.bo
  %i.ll = shl i32 %.sroa.0.0.copyload.i333.i30.i, 18
  %i.lm = and i32 %i.ll, 1835008
  %i.ln = shl i32 %.sroa.0.0.copyload.i333.i30.i, 4
  %i.lo = and i32 %i.ln, 258048
  %i.lp = lshr i32 %.sroa.0.0.copyload.i333.i30.i, 10 ; 2 uses
  %i.lq = and i32 %i.lp, 3072
  %i.lr = and i32 %i.lg, 63
  %i.ls = add nsw i32 %i.lm, -65536
  %i.lt = add nsw i32 %i.ls, %i.lo                ; 2 uses
  %i.lu = or disjoint i32 %i.lt, %i.lq
  %i.lv = lshr exact i32 %i.lt, 10
  %i.lw = add nuw nsw i32 %i.lv, 55296
  store i16 30044, ptr %.8253.i24.i, align 1
  %i.lx = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 2
  %i.ly = lshr i32 %i.lw, 7
  %i.lz = and i32 %i.ly, 65534
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.ma
  %i.mc = load i16, ptr %i.mb, align 2
  store i16 %i.mc, ptr %i.lx, align 1
  %i.md = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 4
  %i.me = lshr exact i32 %i.lu, 9
  %i.mf = and i32 %i.me, 510
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.mg
  %i.mi = load i16, ptr %i.mh, align 2
  store i16 %i.mi, ptr %i.md, align 1
  %i.mj = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 6
  store i16 30044, ptr %i.mj, align 1
  %i.mk = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 8
  %i.ml = lshr i32 %.sroa.0.0.copyload.i333.i30.i, 17
  %i.mm = and i32 %i.ml, 6
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 440
  %i.mq = load i16, ptr %i.mp, align 2
  store i16 %i.mq, ptr %i.mk, align 1
  %i.mr = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 10
  %.masked2959 = and i32 %i.lp, 192
  %i.ms = or disjoint i32 %i.lr, %.masked2959
  %i.mt = shl nuw nsw i32 %i.ms, 1
  %i.mu = zext nneg i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.mu
  %i.mw = load i16, ptr %i.mv, align 2
  store i16 %i.mw, ptr %i.mr, align 1
  %i.mx = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 12
  br label %.preheader973.backedge

bb.bp:                                            ; preds = %bb.aw
  %i.my = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 1
  store i8 34, ptr %.8253.i24.i, align 1, !tbaa !100
  br label %write_str.exit109.i

bb.bq:                                            ; preds = %bb.aw, %bb.av
  %i.mz = phi i8 [ %i.ht, %bb.aw ], [ %i.hl, %bb.av ]
  br i1 %.not950, label %.thread, label %.thread705

.thread:                                          ; preds = %bb.bf, %bb.bg, %bb.bd, %bb.bb, %bb.be, %bb.be, %bb.bc, %bb.bc, %bb.ay, %bb.bq
  %i.na = phi i8 [ %i.is, %bb.bf ], [ %i.is, %bb.bg ], [ %i.il, %bb.bd ], [ %i.if, %bb.bb ], [ %i.il, %bb.be ], [ %i.il, %bb.be ], [ %i.if, %bb.bc ], [ %i.if, %bb.bc ], [ %i.ia, %bb.ay ], [ %i.mz, %bb.bq ]
  br i1 %.not953, label %.loopexit, label %bb.br

bb.br:                                            ; preds = %.thread
  %i.nb = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 1
  store i8 %i.na, ptr %.8253.i24.i, align 1, !tbaa !100
  br label %.preheader973.backedge

.thread705:                                       ; preds = %bb.bn, %bb.bo, %bb.bl, %bb.bm, %bb.bm, %bb.bj, %bb.bq
  br i1 %.not953, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %.thread705
  store i16 30044, ptr %.8253.i24.i, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 2
  store i32 1145456198, ptr %i.nd, align 1
  %i.ne = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 6
  %i.nf = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 1
  br label %.preheader973.backedge

bb.bt:                                            ; preds = %bb.l
  %i.ng = load i64, ptr %0, align 8, !tbaa !99
  %i.nh = and i64 %i.ng, 24
  %.not105.i.i = icmp eq i64 %i.nh, 0
  store i8 34, ptr %i.x, align 1, !tbaa !100
  br i1 %.not105.i.i, label %.split83.i.i, label %bb.eb

.split83.i.i:                                     ; preds = %bb.bt
  %i.ni = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r ; 3 uses
  %i.nj = ptrtoint ptr %i.ni to i64               ; 4 uses
  %i.nk = add i64 %i.r, %i.u
  br label %bb.bu

bb.bu:                                            ; preds = %bb.df, %.split83.i.i
  %.pn.i.i = phi ptr [ %i.x, %.split83.i.i ], [ %.8253.i.i, %bb.df ]
  %.0238.i.i = phi ptr [ %i.t, %.split83.i.i ], [ %i.ve, %bb.df ] ; 3 uses
  %.0245.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 1 ; 2 uses
  %i.nl = ptrtoint ptr %.0238.i.i to i64
  %i.nm = sub i64 %i.nj, %i.nl                    ; 2 uses
  %i.nn = icmp sgt i64 %i.nm, 15
  br i1 %i.nn, label %.lr.ph2276, label %.preheader962

.preheader962:                                    ; preds = %bb.ck, %bb.bu
  %.pre-phi2852 = phi i64 [ %i.nm, %bb.bu ], [ %i.qt, %bb.ck ]
  %.1246.i.i.lcssa = phi ptr [ %.0245.i.i, %bb.bu ], [ %i.qq, %bb.ck ] ; 2 uses
  %.1239.i.i.lcssa = phi ptr [ %.0238.i.i, %bb.bu ], [ %i.qr, %bb.ck ] ; 2 uses
  %i.no = icmp sgt i64 %.pre-phi2852, 3
  br i1 %i.no, label %.lr.ph2282, label %.preheader960

.lr.ph2276:                                       ; preds = %bb.bu, %bb.ck
  %.1239.i.i2274 = phi ptr [ %i.qr, %bb.ck ], [ %.0238.i.i, %bb.bu ] ; 46 uses
  %.1246.i.i2273 = phi ptr [ %i.qq, %bb.ck ], [ %.0245.i.i, %bb.bu ] ; 30 uses
  %i.np = load i8, ptr %.1239.i.i2274, align 1, !tbaa !100 ; 2 uses
  %i.nq = zext i8 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !100
  %.not272.i.i = icmp eq i8 %i.ns, 0
  br i1 %.not272.i.i, label %bb.bv, label %.preheader.preheader, !prof !62

bb.bv:                                            ; preds = %.lr.ph2276
  %i.nt = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 1
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !100
  %i.nv = zext i8 %i.nu to i64
  %i.nw = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !100
  %.not273.i.i = icmp eq i8 %i.nx, 0
  br i1 %.not273.i.i, label %bb.bw, label %.loopexit964, !prof !62

bb.bw:                                            ; preds = %bb.bv
  %i.ny = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 2
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !100
  %i.oa = zext i8 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !100
  %.not274.i.i = icmp eq i8 %i.oc, 0
  br i1 %.not274.i.i, label %bb.bx, label %.loopexit965, !prof !62

bb.bx:                                            ; preds = %bb.bw
  %i.od = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 3
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !100
  %i.of = zext i8 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !100
  %.not275.i.i = icmp eq i8 %i.oh, 0
  br i1 %.not275.i.i, label %bb.by, label %.loopexit966, !prof !62

bb.by:                                            ; preds = %bb.bx
  %i.oi = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 4
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !100
  %i.ok = zext i8 %i.oj to i64
  %i.ol = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !100
  %.not276.i.i = icmp eq i8 %i.om, 0
  br i1 %.not276.i.i, label %bb.bz, label %bb.cr, !prof !62

bb.bz:                                            ; preds = %bb.by
  %i.on = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 5
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !100
  %i.op = zext i8 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !100
  %.not277.i.i = icmp eq i8 %i.or, 0
  br i1 %.not277.i.i, label %bb.ca, label %bb.cs, !prof !62

bb.ca:                                            ; preds = %bb.bz
  %i.os = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 6
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !100
  %i.ou = zext i8 %i.ot to i64
  %i.ov = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.ou
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !100
  %.not278.i.i = icmp eq i8 %i.ow, 0
  br i1 %.not278.i.i, label %bb.cb, label %bb.ct, !prof !62

bb.cb:                                            ; preds = %bb.ca
  %i.ox = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 7
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !100
  %i.oz = zext i8 %i.oy to i64
  %i.pa = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !100
  %.not279.i.i = icmp eq i8 %i.pb, 0
  br i1 %.not279.i.i, label %bb.cc, label %bb.cu, !prof !62

bb.cc:                                            ; preds = %bb.cb
  %i.pc = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 8
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !100
  %i.pe = zext i8 %i.pd to i64
  %i.pf = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !100
  %.not280.i.i = icmp eq i8 %i.pg, 0
  br i1 %.not280.i.i, label %bb.cd, label %bb.cv, !prof !62

bb.cd:                                            ; preds = %bb.cc
  %i.ph = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 9
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !100
  %i.pj = zext i8 %i.pi to i64
  %i.pk = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.pj
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !100
  %.not281.i.i = icmp eq i8 %i.pl, 0
  br i1 %.not281.i.i, label %bb.ce, label %bb.cw, !prof !62

bb.ce:                                            ; preds = %bb.cd
  %i.pm = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 10
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !100
  %i.po = zext i8 %i.pn to i64
  %i.pp = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.po
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !100
  %.not282.i.i = icmp eq i8 %i.pq, 0
  br i1 %.not282.i.i, label %bb.cf, label %bb.cx, !prof !62

bb.cf:                                            ; preds = %bb.ce
  %i.pr = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 11
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !100
  %i.pt = zext i8 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !100
  %.not283.i.i = icmp eq i8 %i.pv, 0
  br i1 %.not283.i.i, label %bb.cg, label %bb.cy, !prof !62

bb.cg:                                            ; preds = %bb.cf
  %i.pw = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 12
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !100
  %i.py = zext i8 %i.px to i64
  %i.pz = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.py
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !100
  %.not284.i.i = icmp eq i8 %i.qa, 0
  br i1 %.not284.i.i, label %bb.ch, label %bb.cz, !prof !62

bb.ch:                                            ; preds = %bb.cg
  %i.qb = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 13
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !100
  %i.qd = zext i8 %i.qc to i64
  %i.qe = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !100
  %.not285.i.i = icmp eq i8 %i.qf, 0
  br i1 %.not285.i.i, label %bb.ci, label %bb.da, !prof !62

bb.ci:                                            ; preds = %bb.ch
  %i.qg = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 14
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !100
  %i.qi = zext i8 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !100
  %.not286.i.i = icmp eq i8 %i.qk, 0
  br i1 %.not286.i.i, label %bb.cj, label %bb.db, !prof !62

bb.cj:                                            ; preds = %bb.ci
  %i.ql = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 15
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !100
  %i.qn = zext i8 %i.qm to i64
  %i.qo = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.qn
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !100
  %.not287.i.i = icmp eq i8 %i.qp, 0
  br i1 %.not287.i.i, label %bb.ck, label %bb.dc, !prof !62

bb.ck:                                            ; preds = %bb.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i.i2273, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i.i2274, i64 16, i1 false)
  %i.qq = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 16 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 16 ; 3 uses
  %i.qs = ptrtoint ptr %i.qr to i64
  %i.qt = sub i64 %i.nj, %i.qs                    ; 2 uses
  %i.qu = icmp sgt i64 %i.qt, 15
  br i1 %i.qu, label %.lr.ph2276, label %.preheader962, !llvm.loop !23

.preheader960:                                    ; preds = %bb.cp, %.preheader962
  %.2247.i.i.lcssa = phi ptr [ %.1246.i.i.lcssa, %.preheader962 ], [ %i.sc, %bb.cp ] ; 3 uses
  %.2240.i.i.lcssa = phi ptr [ %.1239.i.i.lcssa, %.preheader962 ], [ %i.sd, %bb.cp ] ; 5 uses
  %i.qv = icmp ugt ptr %i.ni, %.2240.i.i.lcssa
  br i1 %i.qv, label %.lr.ph2287.preheader, label %.preheader960._crit_edge

.lr.ph2287.preheader:                             ; preds = %.preheader960
  %.2240.i.i.lcssa2791 = ptrtoaddr ptr %.2240.i.i.lcssa to i64 ; 2 uses
  %i.qw = getelementptr i8, ptr %.2240.i.i.lcssa, i64 %i.r
  %scevgep2790 = getelementptr i8, ptr %i.qw, i64 %i.u
  %i.qx = sub i64 0, %.2240.i.i.lcssa2791
  %scevgep2792 = getelementptr i8, ptr %scevgep2790, i64 %i.qx
  %i.qy = sub i64 %i.nk, %.2240.i.i.lcssa2791
  %i.qz = freeze i64 %i.qy                        ; 2 uses
  %i.ra = add i64 %i.qz, -1
  %xtraiter5672 = and i64 %i.qz, 3                ; 2 uses
  %lcmp.mod5673.not = icmp eq i64 %xtraiter5672, 0
  br i1 %lcmp.mod5673.not, label %.lr.ph2287.prol.loopexit, label %.lr.ph2287.prol

.lr.ph2287.prol:                                  ; preds = %.lr.ph2287.preheader, %bb.cl
  %.3241.i.i2286.prol = phi ptr [ %i.rf, %bb.cl ], [ %.2240.i.i.lcssa, %.lr.ph2287.preheader ] ; 3 uses
  %.3248.i.i2285.prol = phi ptr [ %i.rg, %bb.cl ], [ %.2247.i.i.lcssa, %.lr.ph2287.preheader ] ; 3 uses
  %prol.iter5674 = phi i64 [ %prol.iter5674.next, %bb.cl ], [ 0, %.lr.ph2287.preheader ]
  %i.rb = load i8, ptr %.3241.i.i2286.prol, align 1, !tbaa !100 ; 2 uses
  %i.rc = zext i8 %i.rb to i64
  %i.rd = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.rc
end_hunk_12
begin_hunk_13_@yyjson_mut_write_opts_impl:bb.a
  %i.rt = zext i8 %i.rs to i64
  %i.ru = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.rt
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !100
  %.not270.i.i = icmp eq i8 %i.rv, 0
  br i1 %.not270.i.i, label %bb.co, label %.loopexit965, !prof !62

bb.co:                                            ; preds = %bb.cn
  %i.rw = getelementptr inbounds nuw i8, ptr %.2240.i.i2281, i64 3
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !100
  %i.ry = zext i8 %i.rx to i64
  %i.rz = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.ry
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !100
  %.not271.i.i = icmp eq i8 %i.sa, 0
  br i1 %.not271.i.i, label %bb.cp, label %.loopexit966, !prof !62

bb.cp:                                            ; preds = %bb.co
  %i.sb = load i32, ptr %.2240.i.i2281, align 1
  store i32 %i.sb, ptr %.2247.i.i2280, align 1
  %i.sc = getelementptr inbounds nuw i8, ptr %.2247.i.i2280, i64 4 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.2240.i.i2281, i64 4 ; 3 uses
  %i.se = ptrtoint ptr %i.sd to i64
  %i.sf = sub i64 %i.nj, %i.se
  %i.sg = icmp sgt i64 %i.sf, 3
  br i1 %i.sg, label %.lr.ph2282, label %.preheader960, !llvm.loop !24

.lr.ph2287:                                       ; preds = %.lr.ph2287.prol.loopexit, %bb.cq
  %.3241.i.i2286 = phi ptr [ %i.td, %bb.cq ], [ %.3241.i.i2286.unr, %.lr.ph2287.prol.loopexit ] ; 9 uses
  %.3248.i.i2285 = phi ptr [ %i.te, %bb.cq ], [ %.3248.i.i2285.unr, %.lr.ph2287.prol.loopexit ] ; 6 uses
  %i.sh = load i8, ptr %.3241.i.i2286, align 1, !tbaa !100 ; 2 uses
  %i.si = zext i8 %i.sh to i64
  %i.sj = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.si
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !100
  %.not.i7.i = icmp eq i8 %i.sk, 0
  br i1 %.not.i7.i, label %.lr.ph2287.1, label %.preheader.preheader, !prof !62

.lr.ph2287.1:                                     ; preds = %.lr.ph2287
  %i.sl = getelementptr inbounds nuw i8, ptr %.3241.i.i2286, i64 1
  %i.sm = getelementptr inbounds nuw i8, ptr %.3248.i.i2285, i64 1 ; 2 uses
  store i8 %i.sh, ptr %.3248.i.i2285, align 1, !tbaa !100
  %i.sn = load i8, ptr %i.sl, align 1, !tbaa !100 ; 2 uses
  %i.so = zext i8 %i.sn to i64
  %i.sp = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.so
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !100
  %.not.i7.i.1 = icmp eq i8 %i.sq, 0
  br i1 %.not.i7.i.1, label %.lr.ph2287.2, label %.preheader.preheader.loopexit.loopexit.split.loop.exit6399, !prof !62

.lr.ph2287.2:                                     ; preds = %.lr.ph2287.1
  %i.sr = getelementptr inbounds nuw i8, ptr %.3241.i.i2286, i64 2
  %i.ss = getelementptr inbounds nuw i8, ptr %.3248.i.i2285, i64 2 ; 2 uses
  store i8 %i.sn, ptr %i.sm, align 1, !tbaa !100
  %i.st = load i8, ptr %i.sr, align 1, !tbaa !100 ; 2 uses
  %i.su = zext i8 %i.st to i64
  %i.sv = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.su
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !100
  %.not.i7.i.2 = icmp eq i8 %i.sw, 0
  br i1 %.not.i7.i.2, label %.lr.ph2287.3, label %.preheader.preheader.loopexit.loopexit.split.loop.exit6396, !prof !62

.lr.ph2287.3:                                     ; preds = %.lr.ph2287.2
  %i.sx = getelementptr inbounds nuw i8, ptr %.3241.i.i2286, i64 3
  %i.sy = getelementptr inbounds nuw i8, ptr %.3248.i.i2285, i64 3 ; 2 uses
  store i8 %i.st, ptr %i.ss, align 1, !tbaa !100
  %i.sz = load i8, ptr %i.sx, align 1, !tbaa !100 ; 2 uses
  %i.ta = zext i8 %i.sz to i64
  %i.tb = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.ta
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !100
  %.not.i7.i.3 = icmp eq i8 %i.tc, 0
  br i1 %.not.i7.i.3, label %bb.cq, label %.preheader.preheader.loopexit.loopexit.split.loop.exit, !prof !62

bb.cq:                                            ; preds = %.lr.ph2287.3
  %i.td = getelementptr inbounds nuw i8, ptr %.3241.i.i2286, i64 4 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.3248.i.i2285, i64 4 ; 2 uses
  store i8 %i.sz, ptr %i.sy, align 1, !tbaa !100
  %exitcond2793.not.3 = icmp eq ptr %i.td, %scevgep2792
  br i1 %exitcond2793.not.3, label %.preheader960._crit_edge, label %.lr.ph2287, !llvm.loop !25

.preheader960._crit_edge:                         ; preds = %.preheader960, %bb.cq, %.lr.ph2287.prol.loopexit
  %.3248.i.i.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph2287.prol.loopexit ], [ %i.te, %bb.cq ], [ %.2247.i.i.lcssa, %.preheader960 ] ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.3248.i.i.lcssa, i64 1
  store i8 34, ptr %.3248.i.i.lcssa, align 1, !tbaa !100
  br label %write_str.exit109.i

.loopexit964:                                     ; preds = %bb.bv, %bb.cm
  %i.tg = phi i8 [ %i.ri, %bb.cm ], [ %i.np, %bb.bv ]
  %.5250.i.i = phi ptr [ %.2247.i.i2280, %bb.cm ], [ %.1246.i.i2273, %bb.bv ] ; 2 uses
  %.5243.i.i = phi ptr [ %.2240.i.i2281, %bb.cm ], [ %.1239.i.i2274, %bb.bv ]
  store i8 %i.tg, ptr %.5250.i.i, align 1
  %i.th = getelementptr inbounds nuw i8, ptr %.5250.i.i, i64 1
  %i.ti = getelementptr inbounds nuw i8, ptr %.5243.i.i, i64 1
  br label %.preheader.preheader

.loopexit965:                                     ; preds = %bb.bw, %bb.cn
  %.6251.i.i = phi ptr [ %.2247.i.i2280, %bb.cn ], [ %.1246.i.i2273, %bb.bw ] ; 2 uses
  %.6.i.i = phi ptr [ %.2240.i.i2281, %bb.cn ], [ %.1239.i.i2274, %bb.bw ] ; 2 uses
  %i.tj = load i16, ptr %.6.i.i, align 1
  store i16 %i.tj, ptr %.6251.i.i, align 1
  %i.tk = getelementptr inbounds nuw i8, ptr %.6251.i.i, i64 2
  %i.tl = getelementptr inbounds nuw i8, ptr %.6.i.i, i64 2
  br label %.preheader.preheader

.loopexit966:                                     ; preds = %bb.bx, %bb.co
  %.7252.i.i = phi ptr [ %.2247.i.i2280, %bb.co ], [ %.1246.i.i2273, %bb.bx ] ; 2 uses
  %.7.i.i = phi ptr [ %.2240.i.i2281, %bb.co ], [ %.1239.i.i2274, %bb.bx ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.7.i.i, i64 3, i1 false)
  %i.tm = getelementptr inbounds nuw i8, ptr %.7252.i.i, i64 3
  %i.tn = getelementptr inbounds nuw i8, ptr %.7.i.i, i64 3
  br label %.preheader.preheader

bb.cr:                                            ; preds = %bb.by
  %i.to = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 4
  %i.tp = load i32, ptr %.1239.i.i2274, align 1
  store i32 %i.tp, ptr %.1246.i.i2273, align 1
  %i.tq = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 4
  br label %.preheader.preheader

bb.cs:                                            ; preds = %bb.bz
  %i.tr = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i.i2273, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i.i2274, i64 5, i1 false)
  %i.ts = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 5
  br label %.preheader.preheader

bb.ct:                                            ; preds = %bb.ca
  %i.tt = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i.i2273, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i.i2274, i64 6, i1 false)
  %i.tu = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 6
  br label %.preheader.preheader

bb.cu:                                            ; preds = %bb.cb
  %i.tv = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i.i2273, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i.i2274, i64 7, i1 false)
  %i.tw = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 7
  br label %.preheader.preheader

bb.cv:                                            ; preds = %bb.cc
  %i.tx = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 8
  %i.ty = load i64, ptr %.1239.i.i2274, align 1
  store i64 %i.ty, ptr %.1246.i.i2273, align 1
  %i.tz = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 8
  br label %.preheader.preheader

bb.cw:                                            ; preds = %bb.cd
  %i.ua = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i.i2273, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i.i2274, i64 9, i1 false)
  %i.ub = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 9
  br label %.preheader.preheader

bb.cx:                                            ; preds = %bb.ce
  %i.uc = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i.i2273, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i.i2274, i64 10, i1 false)
  %i.ud = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 10
  br label %.preheader.preheader

bb.cy:                                            ; preds = %bb.cf
  %i.ue = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1246.i.i2273, ptr noundef nonnull align 1 dereferenceable(11) %.1239.i.i2274, i64 11, i1 false)
  %i.uf = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 11
  br label %.preheader.preheader

bb.cz:                                            ; preds = %bb.cg
  %i.ug = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1246.i.i2273, ptr noundef nonnull align 1 dereferenceable(12) %.1239.i.i2274, i64 12, i1 false)
  %i.uh = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 12
  br label %.preheader.preheader

bb.da:                                            ; preds = %bb.ch
  %i.ui = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1246.i.i2273, ptr noundef nonnull align 1 dereferenceable(13) %.1239.i.i2274, i64 13, i1 false)
  %i.uj = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 13
  br label %.preheader.preheader

bb.db:                                            ; preds = %bb.ci
  %i.uk = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1246.i.i2273, ptr noundef nonnull align 1 dereferenceable(14) %.1239.i.i2274, i64 14, i1 false)
  %i.ul = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 14
  br label %.preheader.preheader

bb.dc:                                            ; preds = %bb.cj
  %i.um = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1246.i.i2273, ptr noundef nonnull align 1 dereferenceable(15) %.1239.i.i2274, i64 15, i1 false)
  %i.un = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 15
  br label %.preheader.preheader

.preheader.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2287.3
  %i.uo = getelementptr inbounds nuw i8, ptr %.3241.i.i2286, i64 3
  br label %.preheader.preheader

.preheader.preheader.loopexit.loopexit.split.loop.exit6396: ; preds = %.lr.ph2287.2
  %i.up = getelementptr inbounds nuw i8, ptr %.3241.i.i2286, i64 2
  br label %.preheader.preheader

.preheader.preheader.loopexit.loopexit.split.loop.exit6399: ; preds = %.lr.ph2287.1
  %i.uq = getelementptr inbounds nuw i8, ptr %.3241.i.i2286, i64 1
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph2276, %.lr.ph2282, %.lr.ph2287, %.preheader.preheader.loopexit.loopexit.split.loop.exit6399, %.preheader.preheader.loopexit.loopexit.split.loop.exit6396, %.preheader.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2287.prol, %.loopexit964, %.loopexit965, %.loopexit966, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.dc
  %.8253.i.i.ph = phi ptr [ %.2247.i.i2280, %.lr.ph2282 ], [ %.3248.i.i2285.prol, %.lr.ph2287.prol ], [ %i.th, %.loopexit964 ], [ %i.tk, %.loopexit965 ], [ %i.tm, %.loopexit966 ], [ %i.tq, %bb.cr ], [ %i.ts, %bb.cs ], [ %i.tu, %bb.ct ], [ %i.tw, %bb.cu ], [ %i.tz, %bb.cv ], [ %i.ub, %bb.cw ], [ %i.ud, %bb.cx ], [ %i.uf, %bb.cy ], [ %i.uh, %bb.cz ], [ %i.uj, %bb.da ], [ %i.ul, %bb.db ], [ %i.un, %bb.dc ], [ %.3248.i.i2285, %.lr.ph2287 ], [ %i.sm, %.preheader.preheader.loopexit.loopexit.split.loop.exit6399 ], [ %i.ss, %.preheader.preheader.loopexit.loopexit.split.loop.exit6396 ], [ %i.sy, %.preheader.preheader.loopexit.loopexit.split.loop.exit ], [ %.1246.i.i2273, %.lr.ph2276 ]
  %.8.i.i.ph = phi ptr [ %.2240.i.i2281, %.lr.ph2282 ], [ %.3241.i.i2286.prol, %.lr.ph2287.prol ], [ %i.ti, %.loopexit964 ], [ %i.tl, %.loopexit965 ], [ %i.tn, %.loopexit966 ], [ %i.to, %bb.cr ], [ %i.tr, %bb.cs ], [ %i.tt, %bb.ct ], [ %i.tv, %bb.cu ], [ %i.tx, %bb.cv ], [ %i.ua, %bb.cw ], [ %i.uc, %bb.cx ], [ %i.ue, %bb.cy ], [ %i.ug, %bb.cz ], [ %i.ui, %bb.da ], [ %i.uk, %bb.db ], [ %i.um, %bb.dc ], [ %.3241.i.i2286, %.lr.ph2287 ], [ %i.uq, %.preheader.preheader.loopexit.loopexit.split.loop.exit6399 ], [ %i.up, %.preheader.preheader.loopexit.loopexit.split.loop.exit6396 ], [ %i.uo, %.preheader.preheader.loopexit.loopexit.split.loop.exit ], [ %.1239.i.i2274, %.lr.ph2276 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader
  %.8253.i.i = phi ptr [ %.8253.i.i.ph, %.preheader.preheader ], [ %.8253.i.i.be, %.preheader.backedge ] ; 35 uses
  %.8.i.i = phi ptr [ %.8.i.i.ph, %.preheader.preheader ], [ %.8.i.i.be, %.preheader.backedge ] ; 23 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 4 ; 3 uses
  %i.us = icmp ugt ptr %i.ur, %i.ni               ; 2 uses
  br i1 %i.us, label %bb.dd, label %._crit_edge2847, !prof !45

._crit_edge2847:                                  ; preds = %.preheader
  %.pre2848.a = load i8, ptr %.8.i.i, align 1, !tbaa !100 ; 2 uses
  %.phi.trans.insert2849 = zext i8 %.pre2848.a to i64 ; 2 uses
  %.phi.trans.insert2850 = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %.phi.trans.insert2849
  %.pre2851 = load i8, ptr %.phi.trans.insert2850, align 1, !tbaa !100
  br label %bb.de

bb.dd:                                            ; preds = %.preheader
  %i.ut = ptrtoint ptr %.8.i.i to i64
  %i.uu = sub i64 %i.nj, %i.ut
  %i.uv = load i8, ptr %.8.i.i, align 1, !tbaa !100 ; 3 uses
  %i.uw = zext i8 %i.uv to i64                    ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.uw
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !100 ; 2 uses
  %i.uz = lshr i8 %i.uy, 1
  %i.va = zext nneg i8 %i.uz to i64
  %i.vb = icmp slt i64 %i.uu, %i.va
  br i1 %i.vb, label %bb.dy, label %bb.de

bb.de:                                            ; preds = %._crit_edge2847, %bb.dd
  %.pre-phi2853 = phi i64 [ %.phi.trans.insert2849, %._crit_edge2847 ], [ %i.uw, %bb.dd ]
  %i.vc = phi i8 [ %.pre2851, %._crit_edge2847 ], [ %i.uy, %bb.dd ]
  %i.vd = phi i8 [ %.pre2848.a, %._crit_edge2847 ], [ %i.uv, %bb.dd ] ; 2 uses
  switch i8 %i.vc, label %bb.dx [
    i8 0, label %bb.df
    i8 4, label %bb.dg
    i8 6, label %bb.di
    i8 8, label %bb.dn
    i8 2, label %bb.dp
    i8 3, label %bb.dq
    i8 5, label %bb.dr
    i8 7, label %bb.dt
    i8 9, label %bb.dv
    i8 1, label %bb.dy
  ]

bb.df:                                            ; preds = %bb.de
  %i.ve = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 1
  store i8 %i.vd, ptr %.8253.i.i, align 1, !tbaa !100
  br label %bb.bu

bb.dg:                                            ; preds = %bb.de
  %i.vf = load i16, ptr %.8.i.i, align 1          ; 3 uses
  %.sroa.0508.0.insert.ext = zext i16 %i.vf to i32 ; 2 uses
  %i.vg = and i32 %.sroa.0508.0.insert.ext, 49376
  %i.vh = icmp ne i32 %i.vg, 32960
  %i.vi = and i32 %.sroa.0508.0.insert.ext, 30
  %i.vj = icmp eq i32 %i.vi, 0
  %.not310.i.i = or i1 %i.vh, %i.vj
  %i.vk = trunc i16 %i.vf to i8
  br i1 %.not310.i.i, label %.thread715, label %bb.dh, !prof !45

bb.dh:                                            ; preds = %bb.dg
  store i16 %i.vf, ptr %.8253.i.i, align 1
  %i.vl = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 2
  %i.vm = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 2
  br label %.preheader.backedge

bb.di:                                            ; preds = %bb.de
  br i1 %i.us, label %bb.dl, label %bb.dj, !prof !45

bb.dj:                                            ; preds = %bb.di
  %.sroa.0.0.copyload.i335.i.i = load i32, ptr %.8.i.i, align 1 ; 4 uses
  %i.vn = and i32 %.sroa.0.0.copyload.i335.i.i, 12632304
  %i.vo = icmp eq i32 %i.vn, 8421600
  %i.vp = trunc i32 %.sroa.0.0.copyload.i335.i.i to i8 ; 3 uses
  br i1 %i.vo, label %bb.dk, label %.thread715, !prof !62

bb.dk:                                            ; preds = %bb.dj
  %i.vq = and i32 %.sroa.0.0.copyload.i335.i.i, 8207
  switch i32 %i.vq, label %.critedge.i.i [
    i32 8205, label %.thread715
    i32 0, label %.thread715
  ], !prof !151

bb.dl:                                            ; preds = %bb.di
  %.sroa.0.0.copyload.i327.i.i = load i16, ptr %.8.i.i, align 1 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 2
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !100
  %.sroa.4.0.insert.ext.i328.i.i = zext i8 %i.vs to i32
  %.sroa.4.0.insert.shift.i329.i.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i328.i.i, 16
  %.sroa.0.0.insert.ext.i330.i.i = zext i16 %.sroa.0.0.copyload.i327.i.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i331.i.i = or disjoint i32 %.sroa.4.0.insert.shift.i329.i.i, %.sroa.0.0.insert.ext.i330.i.i ; 2 uses
  %i.vt = and i32 %.sroa.0.0.insert.insert.i331.i.i, 12632304
  %i.vu = icmp eq i32 %i.vt, 8421600
  %i.vv = trunc i16 %.sroa.0.0.copyload.i327.i.i to i8 ; 3 uses
  br i1 %i.vu, label %bb.dm, label %.thread715, !prof !62

bb.dm:                                            ; preds = %bb.dl
  %i.vw = and i32 %.sroa.0.0.insert.ext.i330.i.i, 8207
  switch i32 %i.vw, label %.critedge.i.i [
    i32 8205, label %.thread715
    i32 0, label %.thread715
  ], !prof !151

.critedge.i.i:                                    ; preds = %bb.dm, %bb.dk
  %storemerge957 = phi i32 [ %.sroa.0.0.copyload.i335.i.i, %bb.dk ], [ %.sroa.0.0.insert.insert.i331.i.i, %bb.dm ]
  store i32 %storemerge957, ptr %.8253.i.i, align 1
  %i.vx = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 3
  %i.vy = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 3
  br label %.preheader.backedge

bb.dn:                                            ; preds = %bb.de
  %.sroa.0.0.copyload.i334.i.i = load i32, ptr %.8.i.i, align 1 ; 6 uses
  %i.vz = and i32 %.sroa.0.0.copyload.i334.i.i, -1061109512
  %i.wa = icmp ne i32 %i.vz, -2139062032
  %i.wb = and i32 %.sroa.0.0.copyload.i334.i.i, 12295
  %.not301.i.i = icmp eq i32 %i.wb, 0
  %or.cond.i.i = or i1 %i.wa, %.not301.i.i
  %i.wc = trunc i32 %.sroa.0.0.copyload.i334.i.i to i8 ; 2 uses
  br i1 %or.cond.i.i, label %.thread715, label %bb.do, !prof !139

bb.do:                                            ; preds = %bb.dn
  %i.wd = and i32 %.sroa.0.0.copyload.i334.i.i, 4
  %i.we = icmp ne i32 %i.wd, 0
  %i.wf = and i32 %.sroa.0.0.copyload.i334.i.i, 12291
  %i.wg = icmp ne i32 %i.wf, 0
  %.not304.i.i = and i1 %i.we, %i.wg
  br i1 %.not304.i.i, label %.thread715, label %.critedge316.i.i, !prof !45

.critedge316.i.i:                                 ; preds = %bb.do
  store i32 %.sroa.0.0.copyload.i334.i.i, ptr %.8253.i.i, align 1
  %i.wh = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 4
  br label %.preheader.backedge

bb.dp:                                            ; preds = %bb.de
  %i.wi = shl nuw nsw i64 %.pre-phi2853, 1
  %i.wj = getelementptr inbounds nuw i8, ptr @esc_single_char_table, i64 %i.wi
  %i.wk = load i16, ptr %i.wj, align 2
  store i16 %i.wk, ptr %.8253.i.i, align 1
  %i.wl = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 2
  %i.wm = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 1
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.dp, %bb.dq, %bb.dz, %bb.ea, %bb.dh, %.critedge.i.i, %.critedge316.i.i, %bb.ds, %.critedge321.i.i, %.critedge325.i.i
  %.8253.i.i.be = phi ptr [ %i.aam, %bb.dz ], [ %i.vl, %bb.dh ], [ %i.vx, %.critedge.i.i ], [ %i.wh, %.critedge316.i.i ], [ %i.wl, %bb.dp ], [ %i.wt, %bb.dq ], [ %i.xo, %bb.ds ], [ %i.yl, %.critedge321.i.i ], [ %i.aah, %.critedge325.i.i ], [ %i.aao, %bb.ea ]
  %.8.i.i.be = phi ptr [ %i.aal, %bb.dz ], [ %i.vm, %bb.dh ], [ %i.vy, %.critedge.i.i ], [ %i.ur, %.critedge316.i.i ], [ %i.wm, %bb.dp ], [ %i.wu, %bb.dq ], [ %i.xp, %bb.ds ], [ %i.ym, %.critedge321.i.i ], [ %i.ur, %.critedge325.i.i ], [ %i.aap, %bb.ea ]
  br label %.preheader

bb.dq:                                            ; preds = %bb.de
  store i32 808482140, ptr %.8253.i.i, align 1
  %i.wn = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 4
  %i.wo = load i8, ptr %.8.i.i, align 1, !tbaa !100
  %i.wp = zext i8 %i.wo to i64
  %i.wq = shl nuw nsw i64 %i.wp, 1
  %i.wr = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.wq
  %i.ws = load i16, ptr %i.wr, align 2
  store i16 %i.ws, ptr %i.wn, align 1
  %i.wt = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 6
  %i.wu = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 1
  br label %.preheader.backedge

bb.dr:                                            ; preds = %bb.de
  %.sroa.0.0.copyload.i332.i.i = load i16, ptr %.8.i.i, align 1 ; 3 uses
  %.sroa.0505.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i.i to i32 ; 2 uses
  %i.wv = and i32 %.sroa.0505.0.insert.ext, 49376
  %i.ww = icmp ne i32 %i.wv, 32960
  %i.wx = and i32 %.sroa.0505.0.insert.ext, 30
  %i.wy = icmp eq i32 %i.wx, 0
  %.not298.i.i = or i1 %i.ww, %i.wy
  br i1 %.not298.i.i, label %.thread725, label %bb.ds, !prof !45

bb.ds:                                            ; preds = %bb.dr
  %i.wz = lshr i16 %.sroa.0.0.copyload.i332.i.i, 8
  %i.xa = trunc nuw i16 %i.wz to i8
  %i.xb = trunc i16 %.sroa.0.0.copyload.i332.i.i to i8 ; 2 uses
  %.tr299.i.i = shl i8 %i.xb, 6
  %i.xc = and i8 %i.xa, 63
  store i16 30044, ptr %.8253.i.i, align 1
  %i.xd = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 2
  %i.xe = lshr i8 %i.xb, 1
  %i.xf = and i8 %i.xe, 14
  %i.xg = zext nneg i8 %i.xf to i64
  %i.xh = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.xg
  %i.xi = load i16, ptr %i.xh, align 2
  store i16 %i.xi, ptr %i.xd, align 1
  %i.xj = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 4
  %.narrow300.i.i = or disjoint i8 %i.xc, %.tr299.i.i
  %i.xk = zext i8 %.narrow300.i.i to i64
  %i.xl = shl nuw nsw i64 %i.xk, 1
  %i.xm = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.xl
  %i.xn = load i16, ptr %i.xm, align 2
  store i16 %i.xn, ptr %i.xj, align 1
  %i.xo = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 6
  %i.xp = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 2
  br label %.preheader.backedge

bb.dt:                                            ; preds = %bb.de
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %.8.i.i, align 1 ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 2
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !100 ; 2 uses
  %.sroa.4.0.insert.ext.i.i.i = zext i8 %i.xr to i32
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i.i, 16
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %.sroa.0.0.copyload.i.i.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.xs = and i32 %.sroa.0.0.insert.insert.i.i.i, 12632304
  %i.xt = icmp eq i32 %i.xs, 8421600
  br i1 %i.xt, label %bb.du, label %.thread725, !prof !62

bb.du:                                            ; preds = %bb.dt
  %i.xu = and i32 %.sroa.0.0.insert.ext.i.i.i, 8207
  switch i32 %i.xu, label %.critedge321.i.i [
    i32 8205, label %.thread725
    i32 0, label %.thread725
  ], !prof !151

.critedge321.i.i:                                 ; preds = %bb.du
  %i.xv = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.xw = shl nuw nsw i64 %i.xv, 12
  %i.xx = lshr i16 %.sroa.0.0.copyload.i.i.i, 2
  %i.xy = and i16 %i.xx, 4032                     ; 2 uses
  %i.xz = zext nneg i16 %i.xy to i64
  %i.ya = and i8 %i.xr, 63
  store i16 30044, ptr %.8253.i.i, align 1
  %i.yb = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 2
  %.masked.i.i = or disjoint i64 %i.xw, %i.xz
  %i.yc = lshr i64 %.masked.i.i, 7
  %i.yd = and i64 %i.yc, 510
  %i.ye = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.yd
  %i.yf = load i16, ptr %i.ye, align 2
  store i16 %i.yf, ptr %i.yb, align 1
  %i.yg = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 4
  %.tr294.i.i = trunc i16 %i.xy to i8
  %.narrow295.i.i = or disjoint i8 %i.ya, %.tr294.i.i
  %i.yh = zext i8 %.narrow295.i.i to i64
  %i.yi = shl nuw nsw i64 %i.yh, 1
  %i.yj = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.yi
  %i.yk = load i16, ptr %i.yj, align 2
  store i16 %i.yk, ptr %i.yg, align 1
  %i.yl = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 6
  %i.ym = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 3
  br label %.preheader.backedge

bb.dv:                                            ; preds = %bb.de
  %.sroa.0.0.copyload.i333.i.i = load i32, ptr %.8.i.i, align 1 ; 9 uses
  %i.yn = and i32 %.sroa.0.0.copyload.i333.i.i, -1061109512
  %i.yo = icmp ne i32 %i.yn, -2139062032
  %i.yp = and i32 %.sroa.0.0.copyload.i333.i.i, 12295
  %.not288.i.i = icmp eq i32 %i.yp, 0
  %or.cond323.i.i = or i1 %i.yo, %.not288.i.i
  %i.yq = lshr i32 %.sroa.0.0.copyload.i333.i.i, 24
  br i1 %or.cond323.i.i, label %.thread725, label %bb.dw, !prof !139

bb.dw:                                            ; preds = %bb.dv
  %i.yr = and i32 %.sroa.0.0.copyload.i333.i.i, 4
  %i.ys = icmp ne i32 %i.yr, 0
  %i.yt = and i32 %.sroa.0.0.copyload.i333.i.i, 12291
  %i.yu = icmp ne i32 %i.yt, 0
  %.not291.i.i = and i1 %i.ys, %i.yu
  br i1 %.not291.i.i, label %.thread725, label %.critedge325.i.i, !prof !45

.critedge325.i.i:                                 ; preds = %bb.dw
  %i.yv = shl i32 %.sroa.0.0.copyload.i333.i.i, 18
  %i.yw = and i32 %i.yv, 1835008
  %i.yx = shl i32 %.sroa.0.0.copyload.i333.i.i, 4
  %i.yy = and i32 %i.yx, 258048
  %i.yz = lshr i32 %.sroa.0.0.copyload.i333.i.i, 10 ; 2 uses
  %i.za = and i32 %i.yz, 3072
  %i.zb = and i32 %i.yq, 63
  %i.zc = add nsw i32 %i.yw, -65536
  %i.zd = add nsw i32 %i.zc, %i.yy                ; 2 uses
  %i.ze = or disjoint i32 %i.zd, %i.za
  %i.zf = lshr exact i32 %i.zd, 10
  %i.zg = add nuw nsw i32 %i.zf, 55296
  store i16 30044, ptr %.8253.i.i, align 1
  %i.zh = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 2
  %i.zi = lshr i32 %i.zg, 7
  %i.zj = and i32 %i.zi, 65534
  %i.zk = zext nneg i32 %i.zj to i64
  %i.zl = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.zk
  %i.zm = load i16, ptr %i.zl, align 2
  store i16 %i.zm, ptr %i.zh, align 1
  %i.zn = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 4
  %i.zo = lshr exact i32 %i.ze, 9
  %i.zp = and i32 %i.zo, 510
  %i.zq = zext nneg i32 %i.zp to i64
  %i.zr = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.zq
  %i.zs = load i16, ptr %i.zr, align 2
  store i16 %i.zs, ptr %i.zn, align 1
  %i.zt = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 6
  store i16 30044, ptr %i.zt, align 1
  %i.zu = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 8
  %i.zv = lshr i32 %.sroa.0.0.copyload.i333.i.i, 17
  %i.zw = and i32 %i.zv, 6
  %i.zx = zext nneg i32 %i.zw to i64
  %i.zy = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.zx
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 440
  %i.aaa = load i16, ptr %i.zz, align 2
  store i16 %i.aaa, ptr %i.zu, align 1
  %i.aab = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 10
  %.masked2961 = and i32 %i.yz, 192
  %i.aac = or disjoint i32 %i.zb, %.masked2961
  %i.aad = shl nuw nsw i32 %i.aac, 1
  %i.aae = zext nneg i32 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.aae
  %i.aag = load i16, ptr %i.aaf, align 2
  store i16 %i.aag, ptr %i.aab, align 1
  %i.aah = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 12
  br label %.preheader.backedge

bb.dx:                                            ; preds = %bb.de
  %i.aai = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 1
  store i8 34, ptr %.8253.i.i, align 1, !tbaa !100
  br label %write_str.exit109.i

bb.dy:                                            ; preds = %bb.de, %bb.dd
  %i.aaj = phi i8 [ %i.vd, %bb.de ], [ %i.uv, %bb.dd ]
  br i1 %.not950, label %.thread715, label %.thread725

.thread715:                                       ; preds = %bb.dn, %bb.do, %bb.dl, %bb.dj, %bb.dm, %bb.dm, %bb.dk, %bb.dk, %bb.dg, %bb.dy
  %i.aak = phi i8 [ %i.wc, %bb.dn ], [ %i.wc, %bb.do ], [ %i.vv, %bb.dl ], [ %i.vp, %bb.dj ], [ %i.vv, %bb.dm ], [ %i.vv, %bb.dm ], [ %i.vp, %bb.dk ], [ %i.vp, %bb.dk ], [ %i.vk, %bb.dg ], [ %i.aaj, %bb.dy ]
  br i1 %.not953, label %.loopexit, label %bb.dz

bb.dz:                                            ; preds = %.thread715
  %i.aal = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 1
  %i.aam = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 1
  store i8 %i.aak, ptr %.8253.i.i, align 1, !tbaa !100
  br label %.preheader.backedge

.thread725:                                       ; preds = %bb.dv, %bb.dw, %bb.dt, %bb.du, %bb.du, %bb.dr, %bb.dy
  br i1 %.not953, label %.loopexit, label %bb.ea

bb.ea:                                            ; preds = %.thread725
  store i16 30044, ptr %.8253.i.i, align 1
  %i.aan = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 2
  store i32 1145456198, ptr %i.aan, align 1
  %i.aao = getelementptr inbounds nuw i8, ptr %.8253.i.i, i64 6
  %i.aap = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 1
  br label %.preheader.backedge

bb.eb:                                            ; preds = %bb.bt
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %i.aar = icmp ugt i64 %i.a, 4095
  br i1 %i.aar, label %.lr.ph2244, label %.preheader972

.preheader972:                                    ; preds = %.lr.ph2244, %bb.eb
  %.021.i.i.lcssa = phi ptr [ %i.aaq, %bb.eb ], [ %i.abg, %.lr.ph2244 ] ; 5 uses
  %.018.i.i.lcssa = phi ptr [ %i.t, %bb.eb ], [ %i.abh, %.lr.ph2244 ] ; 5 uses
  %.0.i4.i.lcssa = phi i64 [ %i.r, %bb.eb ], [ %i.abi, %.lr.ph2244 ] ; 5 uses
  %i.aas = icmp samesign ugt i64 %.0.i4.i.lcssa, 3
  br i1 %i.aas, label %.lr.ph2251.preheader, label %.preheader971

.lr.ph2251.preheader:                             ; preds = %.preheader972
  %.018.i.i.lcssa4915 = ptrtoaddr ptr %.018.i.i.lcssa to i64
  %.021.i.i.lcssa4914 = ptrtoaddr ptr %.021.i.i.lcssa to i64
  %i.aat = add nsw i64 %.0.i4.i.lcssa, -4         ; 2 uses
  %i.aau = lshr i64 %i.aat, 2
  %i.aav = add nuw nsw i64 %i.aau, 1              ; 2 uses
  %min.iters.check4918 = icmp ult i64 %i.aat, 28
  %i.aaw = sub i64 %.018.i.i.lcssa4915, %.021.i.i.lcssa4914
  %diff.check4916 = icmp ugt i64 %i.aaw, -32
  %or.cond4973 = select i1 %min.iters.check4918, i1 true, i1 %diff.check4916
  br i1 %or.cond4973, label %.lr.ph2251.preheader5059, label %vector.ph4919

vector.ph4919:                                    ; preds = %.lr.ph2251.preheader
  %n.vec4920 = and i64 %i.aav, 9223372036854775800 ; 4 uses
  %i.aax = shl i64 %n.vec4920, 2
  %i.aay = sub i64 %.0.i4.i.lcssa, %i.aax         ; 2 uses
  %i.aaz = shl i64 %n.vec4920, 2                  ; 2 uses
  %i.aba = getelementptr i8, ptr %.018.i.i.lcssa, i64 %i.aaz ; 2 uses
  %i.abb = getelementptr i8, ptr %.021.i.i.lcssa, i64 %i.aaz ; 2 uses
  br label %vector.body4921

vector.body4921:                                  ; preds = %vector.body4921, %vector.ph4919
  %index4922 = phi i64 [ 0, %vector.ph4919 ], [ %index.next4927, %vector.body4921 ] ; 2 uses
  %i.abc = shl i64 %index4922, 2                  ; 2 uses
  %next.gep4923 = getelementptr i8, ptr %.018.i.i.lcssa, i64 %i.abc ; 2 uses
  %next.gep4924 = getelementptr i8, ptr %.021.i.i.lcssa, i64 %i.abc ; 2 uses
  %i.abd = getelementptr i8, ptr %next.gep4923, i64 16
  %wide.load4925 = load <4 x i32>, ptr %next.gep4923, align 1
  %wide.load4926 = load <4 x i32>, ptr %i.abd, align 1
  %i.abe = getelementptr i8, ptr %next.gep4924, i64 16
  store <4 x i32> %wide.load4925, ptr %next.gep4924, align 1
  store <4 x i32> %wide.load4926, ptr %i.abe, align 1
  %index.next4927 = add nuw i64 %index4922, 8     ; 2 uses
  %i.abf = icmp eq i64 %index.next4927, %n.vec4920
  br i1 %i.abf, label %middle.block4928, label %vector.body4921, !llvm.loop !403

middle.block4928:                                 ; preds = %vector.body4921
  %cmp.n4929 = icmp eq i64 %i.aav, %n.vec4920
  br i1 %cmp.n4929, label %.preheader971, label %.lr.ph2251.preheader5059

.lr.ph2251.preheader5059:                         ; preds = %.lr.ph2251.preheader, %middle.block4928
  %.1.i5.i2250.ph = phi i64 [ %.0.i4.i.lcssa, %.lr.ph2251.preheader ], [ %i.aay, %middle.block4928 ]
  %.119.i.i2249.ph = phi ptr [ %.018.i.i.lcssa, %.lr.ph2251.preheader ], [ %i.aba, %middle.block4928 ]
  %.122.i.i2248.ph = phi ptr [ %.021.i.i.lcssa, %.lr.ph2251.preheader ], [ %i.abb, %middle.block4928 ]
  br label %.lr.ph2251

.lr.ph2244:                                       ; preds = %bb.eb, %.lr.ph2244
  %.0.i4.i2242 = phi i64 [ %i.abi, %.lr.ph2244 ], [ %i.r, %bb.eb ]
  %.018.i.i2241 = phi ptr [ %i.abh, %.lr.ph2244 ], [ %i.t, %bb.eb ] ; 2 uses
  %.021.i.i2240 = phi ptr [ %i.abg, %.lr.ph2244 ], [ %i.aaq, %bb.eb ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i.i2240, ptr noundef nonnull align 1 dereferenceable(16) %.018.i.i2241, i64 16, i1 false)
  %i.abg = getelementptr inbounds nuw i8, ptr %.021.i.i2240, i64 16 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.018.i.i2241, i64 16 ; 2 uses
  %i.abi = add nsw i64 %.0.i4.i2242, -16          ; 3 uses
  %i.abj = icmp ugt i64 %i.abi, 15
  br i1 %i.abj, label %.lr.ph2244, label %.preheader972, !llvm.loop !26

.preheader971:                                    ; preds = %.lr.ph2251, %middle.block4928, %.preheader972
  %.122.i.i.lcssa = phi ptr [ %.021.i.i.lcssa, %.preheader972 ], [ %i.abb, %middle.block4928 ], [ %i.acd, %.lr.ph2251 ] ; 7 uses
  %.119.i.i.lcssa = phi ptr [ %.018.i.i.lcssa, %.preheader972 ], [ %i.aba, %middle.block4928 ], [ %i.ace, %.lr.ph2251 ] ; 6 uses
  %.1.i5.i.lcssa = phi i64 [ %.0.i4.i.lcssa, %.preheader972 ], [ %i.aay, %middle.block4928 ], [ %i.acf, %.lr.ph2251 ] ; 11 uses
  %.not.i6.i2255 = icmp eq i64 %.1.i5.i.lcssa, 0
  br i1 %.not.i6.i2255, label %write_str_noesc.exit.i, label %iter.check4956

iter.check4956:                                   ; preds = %.preheader971
  %.119.i.i.lcssa4935 = ptrtoaddr ptr %.119.i.i.lcssa to i64
  %.122.i.i.lcssa4934 = ptrtoaddr ptr %.122.i.i.lcssa to i64
  %min.iters.check4938 = icmp ult i64 %.1.i5.i.lcssa, 4
  %i.abk = sub i64 %.119.i.i.lcssa4935, %.122.i.i.lcssa4934
  %diff.check4936 = icmp ugt i64 %i.abk, -32
  %or.cond4974 = select i1 %min.iters.check4938, i1 true, i1 %diff.check4936
  br i1 %or.cond4974, label %.lr.ph2259.preheader, label %vector.main.loop.iter.check4939

vector.main.loop.iter.check4939:                  ; preds = %iter.check4956
  %min.iters.check4940 = icmp ult i64 %.1.i5.i.lcssa, 32
  br i1 %min.iters.check4940, label %vec.epilog.ph4960, label %vector.ph4941

vector.ph4941:                                    ; preds = %vector.main.loop.iter.check4939
  %i.abl = and i64 %.1.i5.i.lcssa, 28
  %n.vec4942 = and i64 %.1.i5.i.lcssa, -32        ; 5 uses
  %i.abm = and i64 %.1.i5.i.lcssa, 31
  %i.abn = getelementptr i8, ptr %.119.i.i.lcssa, i64 %n.vec4942
  %i.abo = getelementptr i8, ptr %.122.i.i.lcssa, i64 %n.vec4942 ; 2 uses
  br label %vector.body4943

vector.body4943:                                  ; preds = %vector.body4943, %vector.ph4941
  %index4944 = phi i64 [ 0, %vector.ph4941 ], [ %index.next4949, %vector.body4943 ] ; 3 uses
  %next.gep4945 = getelementptr i8, ptr %.119.i.i.lcssa, i64 %index4944 ; 2 uses
  %next.gep4946 = getelementptr i8, ptr %.122.i.i.lcssa, i64 %index4944 ; 2 uses
  %i.abp = getelementptr i8, ptr %next.gep4945, i64 16
  %wide.load4947 = load <16 x i8>, ptr %next.gep4945, align 1, !tbaa !100
  %wide.load4948 = load <16 x i8>, ptr %i.abp, align 1, !tbaa !100
  %i.abq = getelementptr i8, ptr %next.gep4946, i64 16
  store <16 x i8> %wide.load4947, ptr %next.gep4946, align 1, !tbaa !100
  store <16 x i8> %wide.load4948, ptr %i.abq, align 1, !tbaa !100
  %index.next4949 = add nuw i64 %index4944, 32    ; 2 uses
  %i.abr = icmp eq i64 %index.next4949, %n.vec4942
  br i1 %i.abr, label %middle.block4950, label %vector.body4943, !llvm.loop !404

middle.block4950:                                 ; preds = %vector.body4943
  %cmp.n4951 = icmp eq i64 %.1.i5.i.lcssa, %n.vec4942
  br i1 %cmp.n4951, label %write_str_noesc.exit.i, label %vec.epilog.iter.check4958

vec.epilog.iter.check4958:                        ; preds = %middle.block4950
  %min.epilog.iters.check4959 = icmp eq i64 %i.abl, 0
  br i1 %min.epilog.iters.check4959, label %.lr.ph2259.preheader, label %vec.epilog.ph4960, !prof !152

vec.epilog.ph4960:                                ; preds = %vector.main.loop.iter.check4939, %vec.epilog.iter.check4958
  %vec.epilog.resume.val4952 = phi i64 [ %n.vec4942, %vec.epilog.iter.check4958 ], [ 0, %vector.main.loop.iter.check4939 ]
  %n.vec4961 = and i64 %.1.i5.i.lcssa, -4         ; 4 uses
  %i.abs = and i64 %.1.i5.i.lcssa, 3
  %i.abt = getelementptr i8, ptr %.119.i.i.lcssa, i64 %n.vec4961
  %i.abu = getelementptr i8, ptr %.122.i.i.lcssa, i64 %n.vec4961 ; 2 uses
  br label %vec.epilog.vector.body4962

vec.epilog.vector.body4962:                       ; preds = %vec.epilog.vector.body4962, %vec.epilog.ph4960
  %index4963 = phi i64 [ %vec.epilog.resume.val4952, %vec.epilog.ph4960 ], [ %index.next4967, %vec.epilog.vector.body4962 ] ; 3 uses
  %next.gep4964 = getelementptr i8, ptr %.119.i.i.lcssa, i64 %index4963
  %next.gep4965 = getelementptr i8, ptr %.122.i.i.lcssa, i64 %index4963
  %wide.load4966 = load <4 x i8>, ptr %next.gep4964, align 1, !tbaa !100
  store <4 x i8> %wide.load4966, ptr %next.gep4965, align 1, !tbaa !100
  %index.next4967 = add nuw i64 %index4963, 4     ; 2 uses
  %i.abv = icmp eq i64 %index.next4967, %n.vec4961
  br i1 %i.abv, label %vec.epilog.middle.block4968, label %vec.epilog.vector.body4962, !llvm.loop !405

vec.epilog.middle.block4968:                      ; preds = %vec.epilog.vector.body4962
  %cmp.n4969 = icmp eq i64 %.1.i5.i.lcssa, %n.vec4961
  br i1 %cmp.n4969, label %write_str_noesc.exit.i, label %.lr.ph2259.preheader

.lr.ph2259.preheader:                             ; preds = %iter.check4956, %vec.epilog.iter.check4958, %vec.epilog.middle.block4968
  %.2.i.i2258.ph = phi i64 [ %.1.i5.i.lcssa, %iter.check4956 ], [ %i.abm, %vec.epilog.iter.check4958 ], [ %i.abs, %vec.epilog.middle.block4968 ] ; 4 uses
  %.220.i.i2257.ph = phi ptr [ %.119.i.i.lcssa, %iter.check4956 ], [ %i.abn, %vec.epilog.iter.check4958 ], [ %i.abt, %vec.epilog.middle.block4968 ] ; 2 uses
  %.223.i.i2256.ph = phi ptr [ %.122.i.i.lcssa, %iter.check4956 ], [ %i.abo, %vec.epilog.iter.check4958 ], [ %i.abu, %vec.epilog.middle.block4968 ] ; 2 uses
  %i.abw = add nsw i64 %.2.i.i2258.ph, -1
  %xtraiter5669 = and i64 %.2.i.i2258.ph, 7       ; 2 uses
  %lcmp.mod5670.not = icmp eq i64 %xtraiter5669, 0
  br i1 %lcmp.mod5670.not, label %.lr.ph2259.prol.loopexit, label %.lr.ph2259.prol

.lr.ph2259.prol:                                  ; preds = %.lr.ph2259.preheader, %.lr.ph2259.prol
  %.2.i.i2258.prol = phi i64 [ %i.aca, %.lr.ph2259.prol ], [ %.2.i.i2258.ph, %.lr.ph2259.preheader ]
  %.220.i.i2257.prol = phi ptr [ %i.abx, %.lr.ph2259.prol ], [ %.220.i.i2257.ph, %.lr.ph2259.preheader ] ; 2 uses
  %.223.i.i2256.prol = phi ptr [ %i.abz, %.lr.ph2259.prol ], [ %.223.i.i2256.ph, %.lr.ph2259.preheader ] ; 2 uses
  %prol.iter5671 = phi i64 [ %prol.iter5671.next, %.lr.ph2259.prol ], [ 0, %.lr.ph2259.preheader ]
  %i.abx = getelementptr inbounds nuw i8, ptr %.220.i.i2257.prol, i64 1 ; 2 uses
  %i.aby = load i8, ptr %.220.i.i2257.prol, align 1, !tbaa !100
  %i.abz = getelementptr inbounds nuw i8, ptr %.223.i.i2256.prol, i64 1 ; 3 uses
  store i8 %i.aby, ptr %.223.i.i2256.prol, align 1, !tbaa !100
  %i.aca = add nsw i64 %.2.i.i2258.prol, -1       ; 2 uses
  %prol.iter5671.next = add i64 %prol.iter5671, 1 ; 2 uses
  %prol.iter5671.cmp.not = icmp eq i64 %prol.iter5671.next, %xtraiter5669
  br i1 %prol.iter5671.cmp.not, label %.lr.ph2259.prol.loopexit, label %.lr.ph2259.prol, !llvm.loop !406

.lr.ph2259.prol.loopexit:                         ; preds = %.lr.ph2259.prol, %.lr.ph2259.preheader
  %.lcssa5058.unr = phi ptr [ poison, %.lr.ph2259.preheader ], [ %i.abz, %.lr.ph2259.prol ]
  %.2.i.i2258.unr = phi i64 [ %.2.i.i2258.ph, %.lr.ph2259.preheader ], [ %i.aca, %.lr.ph2259.prol ]
  %.220.i.i2257.unr = phi ptr [ %.220.i.i2257.ph, %.lr.ph2259.preheader ], [ %i.abx, %.lr.ph2259.prol ]
  %.223.i.i2256.unr = phi ptr [ %.223.i.i2256.ph, %.lr.ph2259.preheader ], [ %i.abz, %.lr.ph2259.prol ]
  %i.acb = icmp ult i64 %i.abw, 7
  br i1 %i.acb, label %write_str_noesc.exit.i, label %.lr.ph2259
end_hunk_13
begin_hunk_14_@yyjson_mut_write_opts_impl:bb.a
  %i.are = and i32 %2, 64
  %.not938 = icmp eq i32 %i.are, 0
  %i.arf = select i1 %.not938, i64 4, i64 2, !prof !62 ; 72 uses
  %i.arg = and i32 %2, 128
  %.not939 = icmp eq i32 %i.arg, 0
  %i.arh = shl i64 %1, 5
  %i.ari = add i64 %i.arh, 64                     ; 3 uses
  %i.arj = tail call ptr %.sroa.0486.0(ptr noundef %.sroa.9.0, i64 noundef %i.ari) #33, !inline_history !409 ; 6 uses
  %.not.i = icmp eq ptr %i.arj, null
  br i1 %.not.i, label %.loopexit1049, label %bb.fu

bb.fu:                                            ; preds = %get_enc_table_with_flag.exit.i33
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.ari ; 2 uses
  %i.arl = load i64, ptr %0, align 8, !tbaa !99   ; 2 uses
  %i.arm = and i64 %i.arl, 7
  %i.arn = icmp eq i64 %i.arm, 7                  ; 4 uses
  %i.aro = zext i1 %i.arn to i8
  %i.arp = lshr i64 %i.arl, 8
  %i.arq = zext i1 %i.arn to i64
  %i.arr = shl nuw nsw i64 %i.arp, %i.arq
  %i.ars = select i1 %i.arn, i8 123, i8 91
  %i.art = getelementptr inbounds nuw i8, ptr %i.arj, i64 1
  store i8 %i.ars, ptr %i.arj, align 1, !tbaa !100
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arj, i64 2
  store i8 10, ptr %i.art, align 1, !tbaa !100
  %i.arv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !100 ; 2 uses
  br i1 %i.arn, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 16
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !104
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.pn.i = phi ptr [ %i.ary, %bb.fv ], [ %i.arw, %bb.fu ]
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.arz = load ptr, ptr %.in.i, align 8, !tbaa !104
  %i.asa = lshr i32 %2, 28
  br label %.outer1054

.outer1054:                                       ; preds = %.outer1054.backedge, %bb.fw
  %.0689.ph = phi ptr [ %0, %bb.fw ], [ %.0689.ph.be, %.outer1054.backedge ] ; 2 uses
  %.0688.ph = phi i64 [ %i.arr, %bb.fw ], [ %.0688.ph.be, %.outer1054.backedge ]
  %.0687.ph = phi i8 [ %i.aro, %bb.fw ], [ %.0687.ph.be, %.outer1054.backedge ] ; 3 uses
  %.0570.i.ph = phi ptr [ %i.arz, %bb.fw ], [ %.0570.i.ph.be, %.outer1054.backedge ]
  %.0547.i.ph = phi ptr [ %i.arj, %bb.fw ], [ %.0547.i.ph.be, %.outer1054.backedge ]
  %.0528.i.ph = phi ptr [ %i.aru, %bb.fw ], [ %.0528.i.ph.be, %.outer1054.backedge ]
  %.0509.i.ph = phi ptr [ %i.ark, %bb.fw ], [ %.0509.i.ph.be, %.outer1054.backedge ]
  %.0498.i.ph = phi ptr [ %i.ark, %bb.fw ], [ %.0498.i.ph.be, %.outer1054.backedge ]
  %.0489.i.ph = phi i64 [ %i.ari, %bb.fw ], [ %.0489.i.ph.be, %.outer1054.backedge ]
  %.0487.i.ph = phi i64 [ 1, %bb.fw ], [ %.0487.i.ph.be, %.outer1054.backedge ] ; 33 uses
  %i.asb = zext nneg i8 %.0687.ph to i32          ; 7 uses
  %i.asc = shl i64 %.0487.i.ph, 2                 ; 4 uses
  %i.asd = add i64 %i.asc, 40
  %i.ase = add i64 %i.asc, 16                     ; 4 uses
  %.not.i771.i20042944 = icmp eq i64 %.0487.i.ph, 0
  %.not.i775.i20072945 = icmp eq i64 %.0487.i.ph, 0
  %.not.i751.i20912949 = icmp eq i64 %.0487.i.ph, 0
  %.not.i755.i20972950 = icmp eq i64 %.0487.i.ph, 0
  %.not.i759.i21032951 = icmp eq i64 %.0487.i.ph, 0
  %.not.i767.i21092953 = icmp eq i64 %.0487.i.ph, 0
  %i.asf = add i64 %.0487.i.ph, -1                ; 7 uses
  %xtraiter = and i64 %.0487.i.ph, 7              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.asg = icmp ult i64 %i.asf, 7
  %xtraiter5607 = and i64 %.0487.i.ph, 7          ; 2 uses
  %lcmp.mod5608.not = icmp eq i64 %xtraiter5607, 0
  %i.ash = icmp ult i64 %i.asf, 7
  %xtraiter5627 = and i64 %.0487.i.ph, 7          ; 2 uses
  %lcmp.mod5628.not = icmp eq i64 %xtraiter5627, 0
  %i.asi = icmp ult i64 %i.asf, 7
  %xtraiter5630 = and i64 %.0487.i.ph, 7          ; 2 uses
  %lcmp.mod5631.not = icmp eq i64 %xtraiter5630, 0
  %i.asj = icmp ult i64 %i.asf, 7
  %xtraiter5633.a = and i64 %.0487.i.ph, 7        ; 2 uses
  %lcmp.mod5634.not.a = icmp eq i64 %xtraiter5633.a, 0
  %i.ask = icmp ult i64 %i.asf, 7
  %xtraiter5636 = and i64 %.0487.i.ph, 7          ; 2 uses
  %lcmp.mod5637.not = icmp eq i64 %xtraiter5636, 0
  %i.asl = icmp ult i64 %i.asf, 7
  br label %bb.fx

bb.fx:                                            ; preds = %.outer1054, %bb.mn
  %.0688 = phi i64 [ %i.ctw, %bb.mn ], [ %.0688.ph, %.outer1054 ] ; 8 uses
  %.0570.i = phi ptr [ %i.cua, %bb.mn ], [ %.0570.i.ph, %.outer1054 ] ; 10 uses
  %.0547.i = phi ptr [ %.15562.i, %bb.mn ], [ %.0547.i.ph, %.outer1054 ] ; 29 uses
  %.0528.i = phi ptr [ %.16544.i, %bb.mn ], [ %.0528.i.ph, %.outer1054 ] ; 21 uses
  %.0509.i = phi ptr [ %.15524.i, %bb.mn ], [ %.0509.i.ph, %.outer1054 ] ; 14 uses
  %.0498.i = phi ptr [ %.15.i, %bb.mn ], [ %.0498.i.ph, %.outer1054 ] ; 21 uses
  %.0489.i = phi i64 [ %.8497.i, %bb.mn ], [ %.0489.i.ph, %.outer1054 ] ; 28 uses
  %i.asm = load i64, ptr %.0570.i, align 8, !tbaa !99 ; 5 uses
  %i.asn = trunc i64 %i.asm to i8                 ; 2 uses
  %i.aso = and i8 %i.asn, 7                       ; 3 uses
  switch i8 %i.aso, label %bb.ls [
    i8 5, label %bb.fy
    i8 4, label %bb.kp
  ]

bb.fy:                                            ; preds = %bb.fx
  %i.asp = trunc i64 %.0688 to i32                ; 2 uses
  %i.asq = xor i32 %i.asp, -1
  %i.asr = and i32 %i.asb, %i.asq
  %.not600.i = icmp eq i32 %i.asr, 0              ; 2 uses
  %i.ass = and i32 %i.asb, %i.asp
  %.not601.i = icmp ne i32 %i.ass, 0              ; 2 uses
  %i.ast = lshr i64 %i.asm, 8                     ; 9 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %.0570.i, i64 8
  %i.asv = load ptr, ptr %i.asu, align 8, !tbaa !100 ; 7 uses
  %i.asw = ptrtoaddr ptr %i.asv to i64            ; 4 uses
  %i.asx = mul nuw nsw i64 %i.ast, 6
  %i.asy = select i1 %.not601.i, i64 16, i64 %i.ase
  %i.asz = add i64 %i.asy, %i.asx                 ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %.0528.i, i64 %i.asz
  %.not602.i = icmp ult ptr %i.ata, %.0498.i
  br i1 %.not602.i, label %bb.ga, label %bb.fz, !prof !62

bb.fz:                                            ; preds = %bb.fy
  %i.atb = lshr i64 %.0489.i, 1
  %i.atc = tail call i64 @llvm.umax.i64(i64 %i.atb, i64 %i.asz)
  %i.atd = add i64 %i.atc, 15
  %i.ate = and i64 %i.atd, -16
  %i.atf = add i64 %i.ate, %.0489.i               ; 4 uses
  %i.atg = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0547.i, i64 noundef %.0489.i, i64 noundef %i.atf) #33, !inline_history !409 ; 6 uses
  %.not603.i = icmp eq ptr %i.atg, null
  br i1 %.not603.i, label %.loopexit1049, label %.thread739, !prof !45

.thread739:                                       ; preds = %bb.fz
  %i.ath = ptrtoint ptr %.0509.i to i64
  %i.ati = ptrtoint ptr %.0498.i to i64           ; 2 uses
  %i.atj = sub i64 %i.ath, %i.ati                 ; 2 uses
  %i.atk = ptrtoint ptr %.0528.i to i64
  %i.atl = ptrtoint ptr %.0547.i to i64           ; 2 uses
  %i.atm = sub i64 %i.atk, %i.atl
  %i.atn = sub i64 %i.ati, %i.atl
  %i.ato = sub i64 %i.atf, %i.atj
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atg, i64 %i.ato ; 2 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atg, i64 %i.atn
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.atp, ptr nonnull align 1 %i.atq, i64 %i.atj, i1 false)
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atg, i64 %i.atm
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atg, i64 %i.atf
  br label %bb.ga

bb.ga:                                            ; preds = %.thread739, %bb.fy
  %.2549.i = phi ptr [ %i.atg, %.thread739 ], [ %.0547.i, %bb.fy ] ; 2 uses
  %.2530.i = phi ptr [ %i.atr, %.thread739 ], [ %.0528.i, %bb.fy ] ; 3 uses
  %.2511.i = phi ptr [ %i.ats, %.thread739 ], [ %.0509.i, %bb.fy ]
  %.2500.i = phi ptr [ %i.atp, %.thread739 ], [ %.0498.i, %bb.fy ]
  %.1490.i = phi i64 [ %i.atf, %.thread739 ], [ %.0489.i, %bb.fy ]
  %.not.i775.i2007 = select i1 %.not601.i, i1 true, i1 %.not.i775.i20072945
  br i1 %.not.i775.i2007, label %write_indent.exit776.i, label %select.unfold.preheader

select.unfold.preheader:                          ; preds = %bb.ga
  br i1 %lcmp.mod5608.not, label %select.unfold.prol.loopexit, label %select.unfold.prol

select.unfold.prol:                               ; preds = %select.unfold.preheader, %select.unfold.prol
  %.0.i774.i2009.prol = phi ptr [ %i.atu, %select.unfold.prol ], [ %.2530.i, %select.unfold.preheader ] ; 2 uses
  %.04.i773.i2008.prol = phi i64 [ %i.att, %select.unfold.prol ], [ %.0487.i.ph, %select.unfold.preheader ]
  %prol.iter5609 = phi i64 [ %prol.iter5609.next, %select.unfold.prol ], [ 0, %select.unfold.preheader ]
  %i.att = add i64 %.04.i773.i2008.prol, -1       ; 2 uses
  store i32 538976288, ptr %.0.i774.i2009.prol, align 1
  %i.atu = getelementptr inbounds nuw i8, ptr %.0.i774.i2009.prol, i64 %i.arf ; 3 uses
  %prol.iter5609.next = add i64 %prol.iter5609, 1 ; 2 uses
  %prol.iter5609.cmp.not = icmp eq i64 %prol.iter5609.next, %xtraiter5607
  br i1 %prol.iter5609.cmp.not, label %select.unfold.prol.loopexit, label %select.unfold.prol, !llvm.loop !410

select.unfold.prol.loopexit:                      ; preds = %select.unfold.prol, %select.unfold.preheader
  %.lcssa5378.unr = phi ptr [ poison, %select.unfold.preheader ], [ %i.atu, %select.unfold.prol ]
  %.0.i774.i2009.unr = phi ptr [ %.2530.i, %select.unfold.preheader ], [ %i.atu, %select.unfold.prol ]
  %.04.i773.i2008.unr = phi i64 [ %.0487.i.ph, %select.unfold.preheader ], [ %i.att, %select.unfold.prol ]
  br i1 %i.ash, label %write_indent.exit776.i, label %select.unfold

select.unfold:                                    ; preds = %select.unfold.prol.loopexit, %select.unfold
  %.0.i774.i2009 = phi ptr [ %i.aud, %select.unfold ], [ %.0.i774.i2009.unr, %select.unfold.prol.loopexit ] ; 2 uses
  %.04.i773.i2008 = phi i64 [ %i.auc, %select.unfold ], [ %.04.i773.i2008.unr, %select.unfold.prol.loopexit ]
  store i32 538976288, ptr %.0.i774.i2009, align 1
  %i.atv = getelementptr inbounds nuw i8, ptr %.0.i774.i2009, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atv, align 1
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atw, align 1
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atx, align 1
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.aty, align 1
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atz, align 1
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.aua, align 1
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 %i.arf ; 2 uses
  %i.auc = add i64 %.04.i773.i2008, -8            ; 2 uses
  store i32 538976288, ptr %i.aub, align 1
  %i.aud = getelementptr inbounds nuw i8, ptr %i.aub, i64 %i.arf ; 2 uses
  %.not.i775.i.7 = icmp eq i64 %i.auc, 0
  br i1 %.not.i775.i.7, label %write_indent.exit776.i, label %select.unfold, !llvm.loop !27

write_indent.exit776.i:                           ; preds = %select.unfold.prol.loopexit, %select.unfold, %bb.ga
  %.0.i774.i.lcssa = phi ptr [ %.2530.i, %bb.ga ], [ %.lcssa5378.unr, %select.unfold.prol.loopexit ], [ %i.aud, %select.unfold ] ; 5 uses
  br i1 %i.arc, label %bb.ih, label %.split.i, !prof !62

.split.i:                                         ; preds = %write_indent.exit776.i
  %i.aue = getelementptr inbounds nuw i8, ptr %i.asv, i64 %i.ast ; 3 uses
  store i8 34, ptr %.0.i774.i.lcssa, align 1, !tbaa !100
  %i.auf = ptrtoint ptr %i.aue to i64             ; 4 uses
  %i.aug = add i64 %i.ast, %i.asw
  br label %bb.gb

bb.gb:                                            ; preds = %bb.hm, %.split.i
  %.pn.i646.i = phi ptr [ %.0.i774.i.lcssa, %.split.i ], [ %.8253.i659.i, %bb.hm ]
  %.0238.i647.i = phi ptr [ %i.asv, %.split.i ], [ %i.bbz, %bb.hm ] ; 3 uses
  %.0245.i648.i = getelementptr inbounds nuw i8, ptr %.pn.i646.i, i64 1 ; 2 uses
  %i.auh = ptrtoint ptr %.0238.i647.i to i64
  %i.aui = sub i64 %i.auf, %i.auh                 ; 2 uses
  %i.auj = icmp sgt i64 %i.aui, 15
  br i1 %i.auj, label %.lr.ph2026, label %.preheader1039

.preheader1039:                                   ; preds = %bb.gr, %bb.gb
  %.pre-phi2867 = phi i64 [ %i.aui, %bb.gb ], [ %i.axp, %bb.gr ]
  %.1246.i649.i.lcssa = phi ptr [ %.0245.i648.i, %bb.gb ], [ %i.axm, %bb.gr ] ; 2 uses
  %.1239.i650.i.lcssa = phi ptr [ %.0238.i647.i, %bb.gb ], [ %i.axn, %bb.gr ] ; 2 uses
  %i.auk = icmp sgt i64 %.pre-phi2867, 3
  br i1 %i.auk, label %.lr.ph2032, label %.preheader1037

.lr.ph2026:                                       ; preds = %bb.gb, %bb.gr
  %.1239.i650.i2025 = phi ptr [ %i.axn, %bb.gr ], [ %.0238.i647.i, %bb.gb ] ; 46 uses
  %.1246.i649.i2024 = phi ptr [ %i.axm, %bb.gr ], [ %.0245.i648.i, %bb.gb ] ; 30 uses
  %i.aul = load i8, ptr %.1239.i650.i2025, align 1, !tbaa !100 ; 2 uses
  %i.aum = zext i8 %i.aul to i64
  %i.aun = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.aum
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !100
  %.not272.i728.i = icmp eq i8 %i.auo, 0
  br i1 %.not272.i728.i, label %bb.gc, label %.preheader1034.preheader, !prof !62

bb.gc:                                            ; preds = %.lr.ph2026
  %i.aup = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 1
  %i.auq = load i8, ptr %i.aup, align 1, !tbaa !100
  %i.aur = zext i8 %i.auq to i64
  %i.aus = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.aur
  %i.aut = load i8, ptr %i.aus, align 1, !tbaa !100
  %.not273.i729.i = icmp eq i8 %i.aut, 0
  br i1 %.not273.i729.i, label %bb.gd, label %.loopexit1041, !prof !62

bb.gd:                                            ; preds = %bb.gc
  %i.auu = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 2
  %i.auv = load i8, ptr %i.auu, align 1, !tbaa !100
  %i.auw = zext i8 %i.auv to i64
  %i.aux = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.auw
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !100
  %.not274.i730.i = icmp eq i8 %i.auy, 0
  br i1 %.not274.i730.i, label %bb.ge, label %.loopexit1042, !prof !62

bb.ge:                                            ; preds = %bb.gd
  %i.auz = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 3
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !100
  %i.avb = zext i8 %i.ava to i64
  %i.avc = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.avb
  %i.avd = load i8, ptr %i.avc, align 1, !tbaa !100
  %.not275.i731.i = icmp eq i8 %i.avd, 0
  br i1 %.not275.i731.i, label %bb.gf, label %.loopexit1043, !prof !62

bb.gf:                                            ; preds = %bb.ge
  %i.ave = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 4
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !100
  %i.avg = zext i8 %i.avf to i64
  %i.avh = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.avg
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !100
  %.not276.i732.i = icmp eq i8 %i.avi, 0
  br i1 %.not276.i732.i, label %bb.gg, label %bb.gy, !prof !62

bb.gg:                                            ; preds = %bb.gf
  %i.avj = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 5
  %i.avk = load i8, ptr %i.avj, align 1, !tbaa !100
  %i.avl = zext i8 %i.avk to i64
  %i.avm = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.avl
  %i.avn = load i8, ptr %i.avm, align 1, !tbaa !100
  %.not277.i733.i = icmp eq i8 %i.avn, 0
  br i1 %.not277.i733.i, label %bb.gh, label %bb.gz, !prof !62

bb.gh:                                            ; preds = %bb.gg
  %i.avo = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 6
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !100
  %i.avq = zext i8 %i.avp to i64
  %i.avr = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.avq
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !100
  %.not278.i734.i = icmp eq i8 %i.avs, 0
  br i1 %.not278.i734.i, label %bb.gi, label %bb.ha, !prof !62

bb.gi:                                            ; preds = %bb.gh
  %i.avt = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 7
  %i.avu = load i8, ptr %i.avt, align 1, !tbaa !100
  %i.avv = zext i8 %i.avu to i64
  %i.avw = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.avv
  %i.avx = load i8, ptr %i.avw, align 1, !tbaa !100
  %.not279.i735.i = icmp eq i8 %i.avx, 0
  br i1 %.not279.i735.i, label %bb.gj, label %bb.hb, !prof !62

bb.gj:                                            ; preds = %bb.gi
  %i.avy = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 8
  %i.avz = load i8, ptr %i.avy, align 1, !tbaa !100
  %i.awa = zext i8 %i.avz to i64
  %i.awb = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.awa
  %i.awc = load i8, ptr %i.awb, align 1, !tbaa !100
  %.not280.i736.i = icmp eq i8 %i.awc, 0
  br i1 %.not280.i736.i, label %bb.gk, label %bb.hc, !prof !62

bb.gk:                                            ; preds = %bb.gj
  %i.awd = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 9
  %i.awe = load i8, ptr %i.awd, align 1, !tbaa !100
  %i.awf = zext i8 %i.awe to i64
  %i.awg = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.awf
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !100
  %.not281.i737.i = icmp eq i8 %i.awh, 0
  br i1 %.not281.i737.i, label %bb.gl, label %bb.hd, !prof !62

bb.gl:                                            ; preds = %bb.gk
  %i.awi = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 10
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !100
  %i.awk = zext i8 %i.awj to i64
  %i.awl = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.awk
  %i.awm = load i8, ptr %i.awl, align 1, !tbaa !100
  %.not282.i738.i = icmp eq i8 %i.awm, 0
  br i1 %.not282.i738.i, label %bb.gm, label %bb.he, !prof !62

bb.gm:                                            ; preds = %bb.gl
  %i.awn = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 11
  %i.awo = load i8, ptr %i.awn, align 1, !tbaa !100
  %i.awp = zext i8 %i.awo to i64
  %i.awq = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.awp
  %i.awr = load i8, ptr %i.awq, align 1, !tbaa !100
  %.not283.i739.i = icmp eq i8 %i.awr, 0
  br i1 %.not283.i739.i, label %bb.gn, label %bb.hf, !prof !62

bb.gn:                                            ; preds = %bb.gm
  %i.aws = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 12
  %i.awt = load i8, ptr %i.aws, align 1, !tbaa !100
  %i.awu = zext i8 %i.awt to i64
  %i.awv = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.awu
  %i.aww = load i8, ptr %i.awv, align 1, !tbaa !100
  %.not284.i740.i = icmp eq i8 %i.aww, 0
  br i1 %.not284.i740.i, label %bb.go, label %bb.hg, !prof !62

bb.go:                                            ; preds = %bb.gn
  %i.awx = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 13
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !100
  %i.awz = zext i8 %i.awy to i64
  %i.axa = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.awz
  %i.axb = load i8, ptr %i.axa, align 1, !tbaa !100
  %.not285.i741.i = icmp eq i8 %i.axb, 0
  br i1 %.not285.i741.i, label %bb.gp, label %bb.hh, !prof !62

bb.gp:                                            ; preds = %bb.go
  %i.axc = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 14
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !100
  %i.axe = zext i8 %i.axd to i64
  %i.axf = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.axe
  %i.axg = load i8, ptr %i.axf, align 1, !tbaa !100
  %.not286.i742.i = icmp eq i8 %i.axg, 0
  br i1 %.not286.i742.i, label %bb.gq, label %bb.hi, !prof !62

bb.gq:                                            ; preds = %bb.gp
  %i.axh = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 15
  %i.axi = load i8, ptr %i.axh, align 1, !tbaa !100
  %i.axj = zext i8 %i.axi to i64
  %i.axk = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.axj
  %i.axl = load i8, ptr %i.axk, align 1, !tbaa !100
  %.not287.i743.i = icmp eq i8 %i.axl, 0
  br i1 %.not287.i743.i, label %bb.gr, label %bb.hj, !prof !62

bb.gr:                                            ; preds = %bb.gq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i649.i2024, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i650.i2025, i64 16, i1 false)
  %i.axm = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 16 ; 2 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 16 ; 3 uses
  %i.axo = ptrtoint ptr %i.axn to i64
  %i.axp = sub i64 %i.auf, %i.axo                 ; 2 uses
  %i.axq = icmp sgt i64 %i.axp, 15
  br i1 %i.axq, label %.lr.ph2026, label %.preheader1039, !llvm.loop !23

.preheader1037:                                   ; preds = %bb.gw, %.preheader1039
  %.2247.i651.i.lcssa = phi ptr [ %.1246.i649.i.lcssa, %.preheader1039 ], [ %i.ayy, %bb.gw ] ; 3 uses
  %.2240.i652.i.lcssa = phi ptr [ %.1239.i650.i.lcssa, %.preheader1039 ], [ %i.ayz, %bb.gw ] ; 5 uses
  %i.axr = icmp ugt ptr %i.aue, %.2240.i652.i.lcssa
  br i1 %i.axr, label %.lr.ph2037.preheader, label %write_str.exit744.i

.lr.ph2037.preheader:                             ; preds = %.preheader1037
  %.2240.i652.i.lcssa2772 = ptrtoaddr ptr %.2240.i652.i.lcssa to i64 ; 2 uses
  %i.axs = getelementptr i8, ptr %.2240.i652.i.lcssa, i64 %i.ast
  %scevgep = getelementptr i8, ptr %i.axs, i64 %i.asw
  %i.axt = sub i64 0, %.2240.i652.i.lcssa2772
  %scevgep2773 = getelementptr i8, ptr %scevgep, i64 %i.axt
  %i.axu = sub i64 %i.aug, %.2240.i652.i.lcssa2772
  %i.axv = freeze i64 %i.axu                      ; 2 uses
  %i.axw = add i64 %i.axv, -1
  %xtraiter5610 = and i64 %i.axv, 3               ; 2 uses
  %lcmp.mod5611.not = icmp eq i64 %xtraiter5610, 0
  br i1 %lcmp.mod5611.not, label %.lr.ph2037.prol.loopexit, label %.lr.ph2037.prol

.lr.ph2037.prol:                                  ; preds = %.lr.ph2037.preheader, %bb.gs
  %.3241.i654.i2036.prol = phi ptr [ %i.ayb, %bb.gs ], [ %.2240.i652.i.lcssa, %.lr.ph2037.preheader ] ; 3 uses
  %.3248.i653.i2035.prol = phi ptr [ %i.ayc, %bb.gs ], [ %.2247.i651.i.lcssa, %.lr.ph2037.preheader ] ; 3 uses
  %prol.iter5612 = phi i64 [ %prol.iter5612.next, %bb.gs ], [ 0, %.lr.ph2037.preheader ]
  %i.axx = load i8, ptr %.3241.i654.i2036.prol, align 1, !tbaa !100 ; 2 uses
  %i.axy = zext i8 %i.axx to i64
end_hunk_14
begin_hunk_15_@yyjson_mut_write_opts_impl:bb.a
  %i.aym = load i8, ptr %i.ayl, align 1, !tbaa !100
  %.not269.i719.i = icmp eq i8 %i.aym, 0
  br i1 %.not269.i719.i, label %bb.gu, label %.loopexit1041, !prof !62

bb.gu:                                            ; preds = %bb.gt
  %i.ayn = getelementptr inbounds nuw i8, ptr %.2240.i652.i2031, i64 2
  %i.ayo = load i8, ptr %i.ayn, align 1, !tbaa !100
  %i.ayp = zext i8 %i.ayo to i64
  %i.ayq = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.ayp
  %i.ayr = load i8, ptr %i.ayq, align 1, !tbaa !100
  %.not270.i722.i = icmp eq i8 %i.ayr, 0
  br i1 %.not270.i722.i, label %bb.gv, label %.loopexit1042, !prof !62

bb.gv:                                            ; preds = %bb.gu
  %i.ays = getelementptr inbounds nuw i8, ptr %.2240.i652.i2031, i64 3
  %i.ayt = load i8, ptr %i.ays, align 1, !tbaa !100
  %i.ayu = zext i8 %i.ayt to i64
  %i.ayv = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.ayu
  %i.ayw = load i8, ptr %i.ayv, align 1, !tbaa !100
  %.not271.i725.i = icmp eq i8 %i.ayw, 0
  br i1 %.not271.i725.i, label %bb.gw, label %.loopexit1043, !prof !62

bb.gw:                                            ; preds = %bb.gv
  %i.ayx = load i32, ptr %.2240.i652.i2031, align 1
  store i32 %i.ayx, ptr %.2247.i651.i2030, align 1
  %i.ayy = getelementptr inbounds nuw i8, ptr %.2247.i651.i2030, i64 4 ; 2 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %.2240.i652.i2031, i64 4 ; 3 uses
  %i.aza = ptrtoint ptr %i.ayz to i64
  %i.azb = sub i64 %i.auf, %i.aza
  %i.azc = icmp sgt i64 %i.azb, 3
  br i1 %i.azc, label %.lr.ph2032, label %.preheader1037, !llvm.loop !24

.lr.ph2037:                                       ; preds = %.lr.ph2037.prol.loopexit, %bb.gx
  %.3241.i654.i2036 = phi ptr [ %i.azz, %bb.gx ], [ %.3241.i654.i2036.unr, %.lr.ph2037.prol.loopexit ] ; 9 uses
  %.3248.i653.i2035 = phi ptr [ %i.baa, %bb.gx ], [ %.3248.i653.i2035.unr, %.lr.ph2037.prol.loopexit ] ; 6 uses
  %i.azd = load i8, ptr %.3241.i654.i2036, align 1, !tbaa !100 ; 2 uses
  %i.aze = zext i8 %i.azd to i64
  %i.azf = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.aze
  %i.azg = load i8, ptr %i.azf, align 1, !tbaa !100
  %.not.i656.i = icmp eq i8 %i.azg, 0
  br i1 %.not.i656.i, label %.lr.ph2037.1, label %.preheader1034.preheader, !prof !62

.lr.ph2037.1:                                     ; preds = %.lr.ph2037
  %i.azh = getelementptr inbounds nuw i8, ptr %.3241.i654.i2036, i64 1
  %i.azi = getelementptr inbounds nuw i8, ptr %.3248.i653.i2035, i64 1 ; 2 uses
  store i8 %i.azd, ptr %.3248.i653.i2035, align 1, !tbaa !100
  %i.azj = load i8, ptr %i.azh, align 1, !tbaa !100 ; 2 uses
  %i.azk = zext i8 %i.azj to i64
  %i.azl = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.azk
  %i.azm = load i8, ptr %i.azl, align 1, !tbaa !100
  %.not.i656.i.1 = icmp eq i8 %i.azm, 0
  br i1 %.not.i656.i.1, label %.lr.ph2037.2, label %.preheader1034.preheader.loopexit.loopexit.split.loop.exit6339, !prof !62

.lr.ph2037.2:                                     ; preds = %.lr.ph2037.1
  %i.azn = getelementptr inbounds nuw i8, ptr %.3241.i654.i2036, i64 2
  %i.azo = getelementptr inbounds nuw i8, ptr %.3248.i653.i2035, i64 2 ; 2 uses
  store i8 %i.azj, ptr %i.azi, align 1, !tbaa !100
  %i.azp = load i8, ptr %i.azn, align 1, !tbaa !100 ; 2 uses
  %i.azq = zext i8 %i.azp to i64
  %i.azr = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.azq
  %i.azs = load i8, ptr %i.azr, align 1, !tbaa !100
  %.not.i656.i.2 = icmp eq i8 %i.azs, 0
  br i1 %.not.i656.i.2, label %.lr.ph2037.3, label %.preheader1034.preheader.loopexit.loopexit.split.loop.exit6336, !prof !62

.lr.ph2037.3:                                     ; preds = %.lr.ph2037.2
  %i.azt = getelementptr inbounds nuw i8, ptr %.3241.i654.i2036, i64 3
  %i.azu = getelementptr inbounds nuw i8, ptr %.3248.i653.i2035, i64 3 ; 2 uses
  store i8 %i.azp, ptr %i.azo, align 1, !tbaa !100
  %i.azv = load i8, ptr %i.azt, align 1, !tbaa !100 ; 2 uses
  %i.azw = zext i8 %i.azv to i64
  %i.azx = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.azw
  %i.azy = load i8, ptr %i.azx, align 1, !tbaa !100
  %.not.i656.i.3 = icmp eq i8 %i.azy, 0
  br i1 %.not.i656.i.3, label %bb.gx, label %.preheader1034.preheader.loopexit.loopexit.split.loop.exit, !prof !62

bb.gx:                                            ; preds = %.lr.ph2037.3
  %i.azz = getelementptr inbounds nuw i8, ptr %.3241.i654.i2036, i64 4 ; 2 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %.3248.i653.i2035, i64 4 ; 2 uses
  store i8 %i.azv, ptr %i.azu, align 1, !tbaa !100
  %exitcond.not.3 = icmp eq ptr %i.azz, %scevgep2773
  br i1 %exitcond.not.3, label %write_str.exit744.i, label %.lr.ph2037, !llvm.loop !25

.loopexit1041:                                    ; preds = %bb.gc, %bb.gt
  %i.bab = phi i8 [ %i.aye, %bb.gt ], [ %i.aul, %bb.gc ]
  %.5250.i720.i = phi ptr [ %.2247.i651.i2030, %bb.gt ], [ %.1246.i649.i2024, %bb.gc ] ; 2 uses
  %.5243.i721.i = phi ptr [ %.2240.i652.i2031, %bb.gt ], [ %.1239.i650.i2025, %bb.gc ]
  store i8 %i.bab, ptr %.5250.i720.i, align 1
  %i.bac = getelementptr inbounds nuw i8, ptr %.5250.i720.i, i64 1
  %i.bad = getelementptr inbounds nuw i8, ptr %.5243.i721.i, i64 1
  br label %.preheader1034.preheader

.loopexit1042:                                    ; preds = %bb.gd, %bb.gu
  %.6251.i723.i = phi ptr [ %.2247.i651.i2030, %bb.gu ], [ %.1246.i649.i2024, %bb.gd ] ; 2 uses
  %.6.i724.i = phi ptr [ %.2240.i652.i2031, %bb.gu ], [ %.1239.i650.i2025, %bb.gd ] ; 2 uses
  %i.bae = load i16, ptr %.6.i724.i, align 1
  store i16 %i.bae, ptr %.6251.i723.i, align 1
  %i.baf = getelementptr inbounds nuw i8, ptr %.6251.i723.i, i64 2
  %i.bag = getelementptr inbounds nuw i8, ptr %.6.i724.i, i64 2
  br label %.preheader1034.preheader

.loopexit1043:                                    ; preds = %bb.ge, %bb.gv
  %.7252.i726.i = phi ptr [ %.2247.i651.i2030, %bb.gv ], [ %.1246.i649.i2024, %bb.ge ] ; 2 uses
  %.7.i727.i = phi ptr [ %.2240.i652.i2031, %bb.gv ], [ %.1239.i650.i2025, %bb.ge ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i726.i, ptr noundef nonnull align 1 dereferenceable(3) %.7.i727.i, i64 3, i1 false)
  %i.bah = getelementptr inbounds nuw i8, ptr %.7252.i726.i, i64 3
  %i.bai = getelementptr inbounds nuw i8, ptr %.7.i727.i, i64 3
  br label %.preheader1034.preheader

bb.gy:                                            ; preds = %bb.gf
  %i.baj = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 4
  %i.bak = load i32, ptr %.1239.i650.i2025, align 1
  store i32 %i.bak, ptr %.1246.i649.i2024, align 1
  %i.bal = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 4
  br label %.preheader1034.preheader

bb.gz:                                            ; preds = %bb.gg
  %i.bam = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i649.i2024, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i650.i2025, i64 5, i1 false)
  %i.ban = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 5
  br label %.preheader1034.preheader

bb.ha:                                            ; preds = %bb.gh
  %i.bao = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i649.i2024, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i650.i2025, i64 6, i1 false)
  %i.bap = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 6
  br label %.preheader1034.preheader

bb.hb:                                            ; preds = %bb.gi
  %i.baq = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i649.i2024, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i650.i2025, i64 7, i1 false)
  %i.bar = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 7
  br label %.preheader1034.preheader

bb.hc:                                            ; preds = %bb.gj
  %i.bas = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 8
  %i.bat = load i64, ptr %.1239.i650.i2025, align 1
  store i64 %i.bat, ptr %.1246.i649.i2024, align 1
  %i.bau = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 8
  br label %.preheader1034.preheader

bb.hd:                                            ; preds = %bb.gk
  %i.bav = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i649.i2024, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i650.i2025, i64 9, i1 false)
  %i.baw = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 9
  br label %.preheader1034.preheader

bb.he:                                            ; preds = %bb.gl
  %i.bax = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i649.i2024, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i650.i2025, i64 10, i1 false)
  %i.bay = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 10
  br label %.preheader1034.preheader

bb.hf:                                            ; preds = %bb.gm
  %i.baz = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1246.i649.i2024, ptr noundef nonnull align 1 dereferenceable(11) %.1239.i650.i2025, i64 11, i1 false)
  %i.bba = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 11
  br label %.preheader1034.preheader

bb.hg:                                            ; preds = %bb.gn
  %i.bbb = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1246.i649.i2024, ptr noundef nonnull align 1 dereferenceable(12) %.1239.i650.i2025, i64 12, i1 false)
  %i.bbc = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 12
  br label %.preheader1034.preheader

bb.hh:                                            ; preds = %bb.go
  %i.bbd = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1246.i649.i2024, ptr noundef nonnull align 1 dereferenceable(13) %.1239.i650.i2025, i64 13, i1 false)
  %i.bbe = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 13
  br label %.preheader1034.preheader

bb.hi:                                            ; preds = %bb.gp
  %i.bbf = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1246.i649.i2024, ptr noundef nonnull align 1 dereferenceable(14) %.1239.i650.i2025, i64 14, i1 false)
  %i.bbg = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 14
  br label %.preheader1034.preheader

bb.hj:                                            ; preds = %bb.gq
  %i.bbh = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1246.i649.i2024, ptr noundef nonnull align 1 dereferenceable(15) %.1239.i650.i2025, i64 15, i1 false)
  %i.bbi = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 15
  br label %.preheader1034.preheader

.preheader1034.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2037.3
  %i.bbj = getelementptr inbounds nuw i8, ptr %.3241.i654.i2036, i64 3
  br label %.preheader1034.preheader

.preheader1034.preheader.loopexit.loopexit.split.loop.exit6336: ; preds = %.lr.ph2037.2
  %i.bbk = getelementptr inbounds nuw i8, ptr %.3241.i654.i2036, i64 2
  br label %.preheader1034.preheader

.preheader1034.preheader.loopexit.loopexit.split.loop.exit6339: ; preds = %.lr.ph2037.1
  %i.bbl = getelementptr inbounds nuw i8, ptr %.3241.i654.i2036, i64 1
  br label %.preheader1034.preheader

.preheader1034.preheader:                         ; preds = %.lr.ph2026, %.lr.ph2032, %.lr.ph2037, %.preheader1034.preheader.loopexit.loopexit.split.loop.exit6339, %.preheader1034.preheader.loopexit.loopexit.split.loop.exit6336, %.preheader1034.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2037.prol, %.loopexit1041, %.loopexit1042, %.loopexit1043, %bb.gy, %bb.gz, %bb.ha, %bb.hb, %bb.hc, %bb.hd, %bb.he, %bb.hf, %bb.hg, %bb.hh, %bb.hi, %bb.hj
  %.8253.i659.i.ph = phi ptr [ %.2247.i651.i2030, %.lr.ph2032 ], [ %.3248.i653.i2035.prol, %.lr.ph2037.prol ], [ %i.bac, %.loopexit1041 ], [ %i.baf, %.loopexit1042 ], [ %i.bah, %.loopexit1043 ], [ %i.bal, %bb.gy ], [ %i.ban, %bb.gz ], [ %i.bap, %bb.ha ], [ %i.bar, %bb.hb ], [ %i.bau, %bb.hc ], [ %i.baw, %bb.hd ], [ %i.bay, %bb.he ], [ %i.bba, %bb.hf ], [ %i.bbc, %bb.hg ], [ %i.bbe, %bb.hh ], [ %i.bbg, %bb.hi ], [ %i.bbi, %bb.hj ], [ %.3248.i653.i2035, %.lr.ph2037 ], [ %i.azi, %.preheader1034.preheader.loopexit.loopexit.split.loop.exit6339 ], [ %i.azo, %.preheader1034.preheader.loopexit.loopexit.split.loop.exit6336 ], [ %i.azu, %.preheader1034.preheader.loopexit.loopexit.split.loop.exit ], [ %.1246.i649.i2024, %.lr.ph2026 ]
  %.8.i660.i.ph = phi ptr [ %.2240.i652.i2031, %.lr.ph2032 ], [ %.3241.i654.i2036.prol, %.lr.ph2037.prol ], [ %i.bad, %.loopexit1041 ], [ %i.bag, %.loopexit1042 ], [ %i.bai, %.loopexit1043 ], [ %i.baj, %bb.gy ], [ %i.bam, %bb.gz ], [ %i.bao, %bb.ha ], [ %i.baq, %bb.hb ], [ %i.bas, %bb.hc ], [ %i.bav, %bb.hd ], [ %i.bax, %bb.he ], [ %i.baz, %bb.hf ], [ %i.bbb, %bb.hg ], [ %i.bbd, %bb.hh ], [ %i.bbf, %bb.hi ], [ %i.bbh, %bb.hj ], [ %.3241.i654.i2036, %.lr.ph2037 ], [ %i.bbl, %.preheader1034.preheader.loopexit.loopexit.split.loop.exit6339 ], [ %i.bbk, %.preheader1034.preheader.loopexit.loopexit.split.loop.exit6336 ], [ %i.bbj, %.preheader1034.preheader.loopexit.loopexit.split.loop.exit ], [ %.1239.i650.i2025, %.lr.ph2026 ]
  br label %.preheader1034

.preheader1034:                                   ; preds = %.preheader1034.backedge, %.preheader1034.preheader
  %.8253.i659.i = phi ptr [ %.8253.i659.i.ph, %.preheader1034.preheader ], [ %.8253.i659.i.be, %.preheader1034.backedge ] ; 34 uses
  %.8.i660.i = phi ptr [ %.8.i660.i.ph, %.preheader1034.preheader ], [ %.8.i660.i.be, %.preheader1034.backedge ] ; 23 uses
  %i.bbm = getelementptr inbounds nuw i8, ptr %.8.i660.i, i64 4 ; 3 uses
  %i.bbn = icmp ugt ptr %i.bbm, %i.aue            ; 2 uses
  br i1 %i.bbn, label %bb.hk, label %._crit_edge, !prof !45

._crit_edge:                                      ; preds = %.preheader1034
  %.pre = load i8, ptr %.8.i660.i, align 1, !tbaa !100 ; 2 uses
  %.phi.trans.insert = zext i8 %.pre to i64       ; 2 uses
  %.phi.trans.insert2823 = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %.phi.trans.insert
  %.pre2824 = load i8, ptr %.phi.trans.insert2823, align 1, !tbaa !100
  br label %bb.hl

bb.hk:                                            ; preds = %.preheader1034
  %i.bbo = ptrtoint ptr %.8.i660.i to i64
  %i.bbp = sub i64 %i.auf, %i.bbo
  %i.bbq = load i8, ptr %.8.i660.i, align 1, !tbaa !100 ; 3 uses
  %i.bbr = zext i8 %i.bbq to i64                  ; 2 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.bbr
  %i.bbt = load i8, ptr %i.bbs, align 1, !tbaa !100 ; 2 uses
  %i.bbu = lshr i8 %i.bbt, 1
  %i.bbv = zext nneg i8 %i.bbu to i64
  %i.bbw = icmp slt i64 %i.bbp, %i.bbv
  br i1 %i.bbw, label %bb.ie, label %bb.hl

bb.hl:                                            ; preds = %._crit_edge, %bb.hk
  %.pre-phi2868 = phi i64 [ %.phi.trans.insert, %._crit_edge ], [ %i.bbr, %bb.hk ]
  %i.bbx = phi i8 [ %.pre2824, %._crit_edge ], [ %i.bbt, %bb.hk ]
  %i.bby = phi i8 [ %.pre, %._crit_edge ], [ %i.bbq, %bb.hk ] ; 2 uses
  switch i8 %i.bbx, label %write_str.exit744.i [
    i8 0, label %bb.hm
    i8 4, label %bb.hn
    i8 6, label %bb.hp
    i8 8, label %bb.hu
    i8 2, label %bb.hw
    i8 3, label %bb.hx
    i8 5, label %bb.hy
    i8 7, label %bb.ia
    i8 9, label %bb.ic
    i8 1, label %bb.ie
  ]

bb.hm:                                            ; preds = %bb.hl
  %i.bbz = getelementptr inbounds nuw i8, ptr %.8.i660.i, i64 1
  store i8 %i.bby, ptr %.8253.i659.i, align 1, !tbaa !100
  br label %bb.gb

bb.hn:                                            ; preds = %bb.hl
  %i.bca = load i16, ptr %.8.i660.i, align 1      ; 3 uses
  %.sroa.0605.0.insert.ext = zext i16 %i.bca to i32 ; 2 uses
  %i.bcb = and i32 %.sroa.0605.0.insert.ext, 49376
  %i.bcc = icmp ne i32 %i.bcb, 32960
  %i.bcd = and i32 %.sroa.0605.0.insert.ext, 30
  %i.bce = icmp eq i32 %i.bcd, 0
  %.not310.i714.i = or i1 %i.bcc, %i.bce
  %i.bcf = trunc i16 %i.bca to i8
  br i1 %.not310.i714.i, label %.thread745, label %bb.ho, !prof !45

bb.ho:                                            ; preds = %bb.hn
  store i16 %i.bca, ptr %.8253.i659.i, align 1
  %i.bcg = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 2
  %i.bch = getelementptr inbounds nuw i8, ptr %.8.i660.i, i64 2
  br label %.preheader1034.backedge

bb.hp:                                            ; preds = %bb.hl
  br i1 %i.bbn, label %bb.hs, label %bb.hq, !prof !45

bb.hq:                                            ; preds = %bb.hp
  %.sroa.0.0.copyload.i335.i704.i = load i32, ptr %.8.i660.i, align 1 ; 4 uses
  %i.bci = and i32 %.sroa.0.0.copyload.i335.i704.i, 12632304
  %i.bcj = icmp eq i32 %i.bci, 8421600
  %i.bck = trunc i32 %.sroa.0.0.copyload.i335.i704.i to i8 ; 3 uses
  br i1 %i.bcj, label %bb.hr, label %.thread745, !prof !62

bb.hr:                                            ; preds = %bb.hq
  %i.bcl = and i32 %.sroa.0.0.copyload.i335.i704.i, 8207
  switch i32 %i.bcl, label %.critedge.i705.i [
    i32 8205, label %.thread745
    i32 0, label %.thread745
  ], !prof !151

bb.hs:                                            ; preds = %bb.hp
  %.sroa.0.0.copyload.i327.i709.i = load i16, ptr %.8.i660.i, align 1 ; 2 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %.8.i660.i, i64 2
  %i.bcn = load i8, ptr %i.bcm, align 1, !tbaa !100
  %.sroa.4.0.insert.ext.i328.i710.i = zext i8 %i.bcn to i32
  %.sroa.4.0.insert.shift.i329.i711.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i328.i710.i, 16
  %.sroa.0.0.insert.ext.i330.i712.i = zext i16 %.sroa.0.0.copyload.i327.i709.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i331.i713.i = or disjoint i32 %.sroa.4.0.insert.shift.i329.i711.i, %.sroa.0.0.insert.ext.i330.i712.i ; 2 uses
  %i.bco = and i32 %.sroa.0.0.insert.insert.i331.i713.i, 12632304
  %i.bcp = icmp eq i32 %i.bco, 8421600
  %i.bcq = trunc i16 %.sroa.0.0.copyload.i327.i709.i to i8 ; 3 uses
  br i1 %i.bcp, label %bb.ht, label %.thread745, !prof !62

bb.ht:                                            ; preds = %bb.hs
  %i.bcr = and i32 %.sroa.0.0.insert.ext.i330.i712.i, 8207
  switch i32 %i.bcr, label %.critedge.i705.i [
    i32 8205, label %.thread745
    i32 0, label %.thread745
  ], !prof !151

.critedge.i705.i:                                 ; preds = %bb.ht, %bb.hr
  %storemerge = phi i32 [ %.sroa.0.0.copyload.i335.i704.i, %bb.hr ], [ %.sroa.0.0.insert.insert.i331.i713.i, %bb.ht ]
  store i32 %storemerge, ptr %.8253.i659.i, align 1
  %i.bcs = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 3
  %i.bct = getelementptr inbounds nuw i8, ptr %.8.i660.i, i64 3
  br label %.preheader1034.backedge

bb.hu:                                            ; preds = %bb.hl
  %.sroa.0.0.copyload.i334.i695.i = load i32, ptr %.8.i660.i, align 1 ; 6 uses
  %i.bcu = and i32 %.sroa.0.0.copyload.i334.i695.i, -1061109512
  %i.bcv = icmp ne i32 %i.bcu, -2139062032
  %i.bcw = and i32 %.sroa.0.0.copyload.i334.i695.i, 12295
  %.not301.i696.i = icmp eq i32 %i.bcw, 0
  %or.cond.i697.i = or i1 %i.bcv, %.not301.i696.i
  %i.bcx = trunc i32 %.sroa.0.0.copyload.i334.i695.i to i8 ; 2 uses
  br i1 %or.cond.i697.i, label %.thread745, label %bb.hv, !prof !139

bb.hv:                                            ; preds = %bb.hu
  %i.bcy = and i32 %.sroa.0.0.copyload.i334.i695.i, 4
  %i.bcz = icmp ne i32 %i.bcy, 0
  %i.bda = and i32 %.sroa.0.0.copyload.i334.i695.i, 12291
  %i.bdb = icmp ne i32 %i.bda, 0
  %.not304.i698.i = and i1 %i.bcz, %i.bdb
  br i1 %.not304.i698.i, label %.thread745, label %.critedge316.i699.i, !prof !45

.critedge316.i699.i:                              ; preds = %bb.hv
  store i32 %.sroa.0.0.copyload.i334.i695.i, ptr %.8253.i659.i, align 1
  %i.bdc = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 4
  br label %.preheader1034.backedge

bb.hw:                                            ; preds = %bb.hl
  %i.bdd = shl nuw nsw i64 %.pre-phi2868, 1
  %i.bde = getelementptr inbounds nuw i8, ptr @esc_single_char_table, i64 %i.bdd
  %i.bdf = load i16, ptr %i.bde, align 2
  store i16 %i.bdf, ptr %.8253.i659.i, align 1
  %i.bdg = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 2
  %i.bdh = getelementptr inbounds nuw i8, ptr %.8.i660.i, i64 1
  br label %.preheader1034.backedge

.preheader1034.backedge:                          ; preds = %bb.hw, %bb.hx, %bb.if, %bb.ig, %bb.ho, %.critedge.i705.i, %.critedge316.i699.i, %bb.hz, %.critedge321.i680.i, %.critedge325.i671.i
  %.8253.i659.i.be = phi ptr [ %i.bhg, %bb.if ], [ %i.bcg, %bb.ho ], [ %i.bcs, %.critedge.i705.i ], [ %i.bdc, %.critedge316.i699.i ], [ %i.bdg, %bb.hw ], [ %i.bdo, %bb.hx ], [ %i.bej, %bb.hz ], [ %i.bfg, %.critedge321.i680.i ], [ %i.bhc, %.critedge325.i671.i ], [ %i.bhi, %bb.ig ]
  %.8.i660.i.be = phi ptr [ %i.bhf, %bb.if ], [ %i.bch, %bb.ho ], [ %i.bct, %.critedge.i705.i ], [ %i.bbm, %.critedge316.i699.i ], [ %i.bdh, %bb.hw ], [ %i.bdp, %bb.hx ], [ %i.bek, %bb.hz ], [ %i.bfh, %.critedge321.i680.i ], [ %i.bbm, %.critedge325.i671.i ], [ %i.bhj, %bb.ig ]
  br label %.preheader1034

bb.hx:                                            ; preds = %bb.hl
  store i32 808482140, ptr %.8253.i659.i, align 1
  %i.bdi = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 4
  %i.bdj = load i8, ptr %.8.i660.i, align 1, !tbaa !100
  %i.bdk = zext i8 %i.bdj to i64
  %i.bdl = shl nuw nsw i64 %i.bdk, 1
  %i.bdm = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bdl
  %i.bdn = load i16, ptr %i.bdm, align 2
  store i16 %i.bdn, ptr %i.bdi, align 1
  %i.bdo = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 6
  %i.bdp = getelementptr inbounds nuw i8, ptr %.8.i660.i, i64 1
  br label %.preheader1034.backedge

bb.hy:                                            ; preds = %bb.hl
  %.sroa.0.0.copyload.i332.i688.i = load i16, ptr %.8.i660.i, align 1 ; 3 uses
  %.sroa.0602.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i688.i to i32 ; 2 uses
  %i.bdq = and i32 %.sroa.0602.0.insert.ext, 49376
  %i.bdr = icmp ne i32 %i.bdq, 32960
  %i.bds = and i32 %.sroa.0602.0.insert.ext, 30
  %i.bdt = icmp eq i32 %i.bds, 0
  %.not298.i689.i = or i1 %i.bdr, %i.bdt
  br i1 %.not298.i689.i, label %.thread755, label %bb.hz, !prof !45

bb.hz:                                            ; preds = %bb.hy
  %i.bdu = lshr i16 %.sroa.0.0.copyload.i332.i688.i, 8
  %i.bdv = trunc nuw i16 %i.bdu to i8
  %i.bdw = trunc i16 %.sroa.0.0.copyload.i332.i688.i to i8 ; 2 uses
  %.tr299.i690.i = shl i8 %i.bdw, 6
  %i.bdx = and i8 %i.bdv, 63
  store i16 30044, ptr %.8253.i659.i, align 1
  %i.bdy = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 2
  %i.bdz = lshr i8 %i.bdw, 1
  %i.bea = and i8 %i.bdz, 14
  %i.beb = zext nneg i8 %i.bea to i64
  %i.bec = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.beb
  %i.bed = load i16, ptr %i.bec, align 2
  store i16 %i.bed, ptr %i.bdy, align 1
  %i.bee = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 4
  %.narrow300.i691.i = or disjoint i8 %i.bdx, %.tr299.i690.i
  %i.bef = zext i8 %.narrow300.i691.i to i64
  %i.beg = shl nuw nsw i64 %i.bef, 1
  %i.beh = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.beg
  %i.bei = load i16, ptr %i.beh, align 2
  store i16 %i.bei, ptr %i.bee, align 1
  %i.bej = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 6
  %i.bek = getelementptr inbounds nuw i8, ptr %.8.i660.i, i64 2
  br label %.preheader1034.backedge

bb.ia:                                            ; preds = %bb.hl
  %.sroa.0.0.copyload.i.i675.i = load i16, ptr %.8.i660.i, align 1 ; 3 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %.8.i660.i, i64 2
  %i.bem = load i8, ptr %i.bel, align 1, !tbaa !100 ; 2 uses
  %.sroa.4.0.insert.ext.i.i676.i = zext i8 %i.bem to i32
  %.sroa.4.0.insert.shift.i.i677.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i676.i, 16
  %.sroa.0.0.insert.ext.i.i678.i = zext i16 %.sroa.0.0.copyload.i.i675.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i679.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i677.i, %.sroa.0.0.insert.ext.i.i678.i
  %i.ben = and i32 %.sroa.0.0.insert.insert.i.i679.i, 12632304
  %i.beo = icmp eq i32 %i.ben, 8421600
  br i1 %i.beo, label %bb.ib, label %.thread755, !prof !62

bb.ib:                                            ; preds = %bb.ia
  %i.bep = and i32 %.sroa.0.0.insert.ext.i.i678.i, 8207
  switch i32 %i.bep, label %.critedge321.i680.i [
    i32 8205, label %.thread755
    i32 0, label %.thread755
  ], !prof !151

.critedge321.i680.i:                              ; preds = %bb.ib
  %i.beq = zext i16 %.sroa.0.0.copyload.i.i675.i to i64
  %i.ber = shl nuw nsw i64 %i.beq, 12
  %i.bes = lshr i16 %.sroa.0.0.copyload.i.i675.i, 2
  %i.bet = and i16 %i.bes, 4032                   ; 2 uses
  %i.beu = zext nneg i16 %i.bet to i64
  %i.bev = and i8 %i.bem, 63
  store i16 30044, ptr %.8253.i659.i, align 1
  %i.bew = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 2
  %.masked.i685.i = or disjoint i64 %i.ber, %i.beu
  %i.bex = lshr i64 %.masked.i685.i, 7
  %i.bey = and i64 %i.bex, 510
  %i.bez = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bey
  %i.bfa = load i16, ptr %i.bez, align 2
  store i16 %i.bfa, ptr %i.bew, align 1
  %i.bfb = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 4
  %.tr294.i686.i = trunc i16 %i.bet to i8
  %.narrow295.i687.i = or disjoint i8 %i.bev, %.tr294.i686.i
  %i.bfc = zext i8 %.narrow295.i687.i to i64
  %i.bfd = shl nuw nsw i64 %i.bfc, 1
  %i.bfe = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bfd
  %i.bff = load i16, ptr %i.bfe, align 2
  store i16 %i.bff, ptr %i.bfb, align 1
  %i.bfg = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 6
  %i.bfh = getelementptr inbounds nuw i8, ptr %.8.i660.i, i64 3
  br label %.preheader1034.backedge

bb.ic:                                            ; preds = %bb.hl
  %.sroa.0.0.copyload.i333.i665.i = load i32, ptr %.8.i660.i, align 1 ; 9 uses
  %i.bfi = and i32 %.sroa.0.0.copyload.i333.i665.i, -1061109512
  %i.bfj = icmp ne i32 %i.bfi, -2139062032
  %i.bfk = and i32 %.sroa.0.0.copyload.i333.i665.i, 12295
  %.not288.i666.i = icmp eq i32 %i.bfk, 0
  %or.cond323.i667.i = or i1 %i.bfj, %.not288.i666.i
  %i.bfl = lshr i32 %.sroa.0.0.copyload.i333.i665.i, 24
  br i1 %or.cond323.i667.i, label %.thread755, label %bb.id, !prof !139

bb.id:                                            ; preds = %bb.ic
  %i.bfm = and i32 %.sroa.0.0.copyload.i333.i665.i, 4
  %i.bfn = icmp ne i32 %i.bfm, 0
  %i.bfo = and i32 %.sroa.0.0.copyload.i333.i665.i, 12291
  %i.bfp = icmp ne i32 %i.bfo, 0
  %.not291.i668.i = and i1 %i.bfn, %i.bfp
  br i1 %.not291.i668.i, label %.thread755, label %.critedge325.i671.i, !prof !45

.critedge325.i671.i:                              ; preds = %bb.id
  %i.bfq = shl i32 %.sroa.0.0.copyload.i333.i665.i, 18
  %i.bfr = and i32 %i.bfq, 1835008
  %i.bfs = shl i32 %.sroa.0.0.copyload.i333.i665.i, 4
  %i.bft = and i32 %i.bfs, 258048
  %i.bfu = lshr i32 %.sroa.0.0.copyload.i333.i665.i, 10 ; 2 uses
  %i.bfv = and i32 %i.bfu, 3072
  %i.bfw = and i32 %i.bfl, 63
  %i.bfx = add nsw i32 %i.bfr, -65536
  %i.bfy = add nsw i32 %i.bfx, %i.bft             ; 2 uses
  %i.bfz = or disjoint i32 %i.bfy, %i.bfv
  %i.bga = lshr exact i32 %i.bfy, 10
  %i.bgb = add nuw nsw i32 %i.bga, 55296
  store i16 30044, ptr %.8253.i659.i, align 1
  %i.bgc = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 2
  %i.bgd = lshr i32 %i.bgb, 7
  %i.bge = and i32 %i.bgd, 65534
  %i.bgf = zext nneg i32 %i.bge to i64
  %i.bgg = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bgf
  %i.bgh = load i16, ptr %i.bgg, align 2
  store i16 %i.bgh, ptr %i.bgc, align 1
  %i.bgi = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 4
  %i.bgj = lshr exact i32 %i.bfz, 9
  %i.bgk = and i32 %i.bgj, 510
  %i.bgl = zext nneg i32 %i.bgk to i64
  %i.bgm = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bgl
  %i.bgn = load i16, ptr %i.bgm, align 2
  store i16 %i.bgn, ptr %i.bgi, align 1
  %i.bgo = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 6
  store i16 30044, ptr %i.bgo, align 1
  %i.bgp = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 8
  %i.bgq = lshr i32 %.sroa.0.0.copyload.i333.i665.i, 17
  %i.bgr = and i32 %i.bgq, 6
  %i.bgs = zext nneg i32 %i.bgr to i64
  %i.bgt = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bgs
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgt, i64 440
  %i.bgv = load i16, ptr %i.bgu, align 2
  store i16 %i.bgv, ptr %i.bgp, align 1
  %i.bgw = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 10
  %.masked = and i32 %i.bfu, 192
  %i.bgx = or disjoint i32 %i.bfw, %.masked
  %i.bgy = shl nuw nsw i32 %i.bgx, 1
  %i.bgz = zext nneg i32 %i.bgy to i64
  %i.bha = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bgz
  %i.bhb = load i16, ptr %i.bha, align 2
  store i16 %i.bhb, ptr %i.bgw, align 1
  %i.bhc = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 12
  br label %.preheader1034.backedge

bb.ie:                                            ; preds = %bb.hl, %bb.hk
  %i.bhd = phi i8 [ %i.bby, %bb.hl ], [ %i.bbq, %bb.hk ]
  br i1 %.not942, label %.thread745, label %.thread755

.thread745:                                       ; preds = %bb.hu, %bb.hv, %bb.hs, %bb.hq, %bb.ht, %bb.ht, %bb.hr, %bb.hr, %bb.hn, %bb.ie
  %i.bhe = phi i8 [ %i.bcx, %bb.hu ], [ %i.bcx, %bb.hv ], [ %i.bcq, %bb.hs ], [ %i.bck, %bb.hq ], [ %i.bcq, %bb.ht ], [ %i.bcq, %bb.ht ], [ %i.bck, %bb.hr ], [ %i.bck, %bb.hr ], [ %i.bcf, %bb.hn ], [ %i.bhd, %bb.ie ]
  br i1 %.not937, label %.loopexit1021, label %bb.if

bb.if:                                            ; preds = %.thread745
  %i.bhf = getelementptr inbounds nuw i8, ptr %.8.i660.i, i64 1
  %i.bhg = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 1
  store i8 %i.bhe, ptr %.8253.i659.i, align 1, !tbaa !100
  br label %.preheader1034.backedge

.thread755:                                       ; preds = %bb.ic, %bb.id, %bb.ia, %bb.ib, %bb.ib, %bb.hy, %bb.ie
  br i1 %.not937, label %.loopexit1021, label %bb.ig

bb.ig:                                            ; preds = %.thread755
  store i16 30044, ptr %.8253.i659.i, align 1
  %i.bhh = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 2
  store i32 1145456198, ptr %i.bhh, align 1
  %i.bhi = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 6
  %i.bhj = getelementptr inbounds nuw i8, ptr %.8.i660.i, i64 1
  br label %.preheader1034.backedge

bb.ih:                                            ; preds = %write_indent.exit776.i
  %i.bhk = load i64, ptr %.0570.i, align 8, !tbaa !99
  %i.bhl = and i64 %i.bhk, 24
  %.not604.i = icmp eq i64 %i.bhl, 0
  store i8 34, ptr %.0.i774.i.lcssa, align 1, !tbaa !100
  br i1 %.not604.i, label %.split572.i, label %bb.ko

.split572.i:                                      ; preds = %bb.ih
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.asv, i64 %i.ast ; 3 uses
  %i.bhn = ptrtoint ptr %i.bhm to i64             ; 4 uses
  %i.bho = add i64 %i.ast, %i.asw
  br label %bb.ii

bb.ii:                                            ; preds = %bb.jt, %.split572.i
  %.pn.i.i97 = phi ptr [ %.0.i774.i.lcssa, %.split572.i ], [ %.8253.i.i110, %bb.jt ]
  %.0238.i.i98 = phi ptr [ %i.asv, %.split572.i ], [ %i.bph, %bb.jt ] ; 3 uses
  %.0245.i.i99 = getelementptr inbounds nuw i8, ptr %.pn.i.i97, i64 1 ; 2 uses
  %i.bhp = ptrtoint ptr %.0238.i.i98 to i64
  %i.bhq = sub i64 %i.bhn, %i.bhp                 ; 2 uses
  %i.bhr = icmp sgt i64 %i.bhq, 15
  br i1 %i.bhr, label %.lr.ph2076, label %.preheader1025

.preheader1025:                                   ; preds = %bb.iy, %bb.ii
  %.pre-phi2864 = phi i64 [ %i.bhq, %bb.ii ], [ %i.bkx, %bb.iy ]
  %.1246.i.i100.lcssa = phi ptr [ %.0245.i.i99, %bb.ii ], [ %i.bku, %bb.iy ] ; 2 uses
  %.1239.i.i101.lcssa = phi ptr [ %.0238.i.i98, %bb.ii ], [ %i.bkv, %bb.iy ] ; 2 uses
  %i.bhs = icmp sgt i64 %.pre-phi2864, 3
  br i1 %i.bhs, label %.lr.ph2082, label %.preheader1023

.lr.ph2076:                                       ; preds = %bb.ii, %bb.iy
  %.1239.i.i1012074 = phi ptr [ %i.bkv, %bb.iy ], [ %.0238.i.i98, %bb.ii ] ; 46 uses
  %.1246.i.i1002073 = phi ptr [ %i.bku, %bb.iy ], [ %.0245.i.i99, %bb.ii ] ; 30 uses
  %i.bht = load i8, ptr %.1239.i.i1012074, align 1, !tbaa !100 ; 2 uses
  %i.bhu = zext i8 %i.bht to i64
  %i.bhv = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bhu
  %i.bhw = load i8, ptr %i.bhv, align 1, !tbaa !100
  %.not272.i.i176 = icmp eq i8 %i.bhw, 0
  br i1 %.not272.i.i176, label %bb.ij, label %.preheader1020.preheader, !prof !62

bb.ij:                                            ; preds = %.lr.ph2076
  %i.bhx = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 1
  %i.bhy = load i8, ptr %i.bhx, align 1, !tbaa !100
  %i.bhz = zext i8 %i.bhy to i64
  %i.bia = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bhz
  %i.bib = load i8, ptr %i.bia, align 1, !tbaa !100
  %.not273.i.i177 = icmp eq i8 %i.bib, 0
  br i1 %.not273.i.i177, label %bb.ik, label %.loopexit1027, !prof !62

bb.ik:                                            ; preds = %bb.ij
  %i.bic = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 2
  %i.bid = load i8, ptr %i.bic, align 1, !tbaa !100
  %i.bie = zext i8 %i.bid to i64
  %i.bif = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bie
  %i.big = load i8, ptr %i.bif, align 1, !tbaa !100
  %.not274.i.i178 = icmp eq i8 %i.big, 0
  br i1 %.not274.i.i178, label %bb.il, label %.loopexit1028, !prof !62

bb.il:                                            ; preds = %bb.ik
  %i.bih = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 3
  %i.bii = load i8, ptr %i.bih, align 1, !tbaa !100
  %i.bij = zext i8 %i.bii to i64
  %i.bik = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bij
  %i.bil = load i8, ptr %i.bik, align 1, !tbaa !100
  %.not275.i.i179 = icmp eq i8 %i.bil, 0
  br i1 %.not275.i.i179, label %bb.im, label %.loopexit1029, !prof !62

bb.im:                                            ; preds = %bb.il
  %i.bim = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 4
  %i.bin = load i8, ptr %i.bim, align 1, !tbaa !100
  %i.bio = zext i8 %i.bin to i64
  %i.bip = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bio
  %i.biq = load i8, ptr %i.bip, align 1, !tbaa !100
  %.not276.i.i180 = icmp eq i8 %i.biq, 0
  br i1 %.not276.i.i180, label %bb.in, label %bb.jf, !prof !62

bb.in:                                            ; preds = %bb.im
  %i.bir = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 5
  %i.bis = load i8, ptr %i.bir, align 1, !tbaa !100
  %i.bit = zext i8 %i.bis to i64
  %i.biu = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bit
  %i.biv = load i8, ptr %i.biu, align 1, !tbaa !100
  %.not277.i.i181 = icmp eq i8 %i.biv, 0
  br i1 %.not277.i.i181, label %bb.io, label %bb.jg, !prof !62

bb.io:                                            ; preds = %bb.in
  %i.biw = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 6
  %i.bix = load i8, ptr %i.biw, align 1, !tbaa !100
  %i.biy = zext i8 %i.bix to i64
  %i.biz = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.biy
  %i.bja = load i8, ptr %i.biz, align 1, !tbaa !100
  %.not278.i.i182 = icmp eq i8 %i.bja, 0
  br i1 %.not278.i.i182, label %bb.ip, label %bb.jh, !prof !62

bb.ip:                                            ; preds = %bb.io
  %i.bjb = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 7
  %i.bjc = load i8, ptr %i.bjb, align 1, !tbaa !100
  %i.bjd = zext i8 %i.bjc to i64
  %i.bje = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjd
  %i.bjf = load i8, ptr %i.bje, align 1, !tbaa !100
  %.not279.i.i183 = icmp eq i8 %i.bjf, 0
  br i1 %.not279.i.i183, label %bb.iq, label %bb.ji, !prof !62

bb.iq:                                            ; preds = %bb.ip
  %i.bjg = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 8
  %i.bjh = load i8, ptr %i.bjg, align 1, !tbaa !100
  %i.bji = zext i8 %i.bjh to i64
  %i.bjj = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bji
  %i.bjk = load i8, ptr %i.bjj, align 1, !tbaa !100
  %.not280.i.i184 = icmp eq i8 %i.bjk, 0
  br i1 %.not280.i.i184, label %bb.ir, label %bb.jj, !prof !62

bb.ir:                                            ; preds = %bb.iq
  %i.bjl = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 9
  %i.bjm = load i8, ptr %i.bjl, align 1, !tbaa !100
  %i.bjn = zext i8 %i.bjm to i64
  %i.bjo = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjn
  %i.bjp = load i8, ptr %i.bjo, align 1, !tbaa !100
  %.not281.i.i185 = icmp eq i8 %i.bjp, 0
  br i1 %.not281.i.i185, label %bb.is, label %bb.jk, !prof !62

bb.is:                                            ; preds = %bb.ir
  %i.bjq = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 10
  %i.bjr = load i8, ptr %i.bjq, align 1, !tbaa !100
  %i.bjs = zext i8 %i.bjr to i64
  %i.bjt = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjs
  %i.bju = load i8, ptr %i.bjt, align 1, !tbaa !100
  %.not282.i.i186 = icmp eq i8 %i.bju, 0
  br i1 %.not282.i.i186, label %bb.it, label %bb.jl, !prof !62

bb.it:                                            ; preds = %bb.is
  %i.bjv = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 11
  %i.bjw = load i8, ptr %i.bjv, align 1, !tbaa !100
  %i.bjx = zext i8 %i.bjw to i64
  %i.bjy = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjx
  %i.bjz = load i8, ptr %i.bjy, align 1, !tbaa !100
  %.not283.i.i187 = icmp eq i8 %i.bjz, 0
  br i1 %.not283.i.i187, label %bb.iu, label %bb.jm, !prof !62

bb.iu:                                            ; preds = %bb.it
  %i.bka = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 12
  %i.bkb = load i8, ptr %i.bka, align 1, !tbaa !100
  %i.bkc = zext i8 %i.bkb to i64
  %i.bkd = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bkc
  %i.bke = load i8, ptr %i.bkd, align 1, !tbaa !100
  %.not284.i.i188 = icmp eq i8 %i.bke, 0
  br i1 %.not284.i.i188, label %bb.iv, label %bb.jn, !prof !62

bb.iv:                                            ; preds = %bb.iu
  %i.bkf = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 13
  %i.bkg = load i8, ptr %i.bkf, align 1, !tbaa !100
  %i.bkh = zext i8 %i.bkg to i64
  %i.bki = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bkh
  %i.bkj = load i8, ptr %i.bki, align 1, !tbaa !100
  %.not285.i.i189 = icmp eq i8 %i.bkj, 0
  br i1 %.not285.i.i189, label %bb.iw, label %bb.jo, !prof !62

bb.iw:                                            ; preds = %bb.iv
  %i.bkk = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 14
  %i.bkl = load i8, ptr %i.bkk, align 1, !tbaa !100
  %i.bkm = zext i8 %i.bkl to i64
  %i.bkn = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bkm
  %i.bko = load i8, ptr %i.bkn, align 1, !tbaa !100
  %.not286.i.i190 = icmp eq i8 %i.bko, 0
  br i1 %.not286.i.i190, label %bb.ix, label %bb.jp, !prof !62

bb.ix:                                            ; preds = %bb.iw
  %i.bkp = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 15
  %i.bkq = load i8, ptr %i.bkp, align 1, !tbaa !100
  %i.bkr = zext i8 %i.bkq to i64
  %i.bks = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bkr
  %i.bkt = load i8, ptr %i.bks, align 1, !tbaa !100
  %.not287.i.i191 = icmp eq i8 %i.bkt, 0
  br i1 %.not287.i.i191, label %bb.iy, label %bb.jq, !prof !62

bb.iy:                                            ; preds = %bb.ix
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i.i1002073, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i.i1012074, i64 16, i1 false)
  %i.bku = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 16 ; 2 uses
  %i.bkv = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 16 ; 3 uses
  %i.bkw = ptrtoint ptr %i.bkv to i64
  %i.bkx = sub i64 %i.bhn, %i.bkw                 ; 2 uses
  %i.bky = icmp sgt i64 %i.bkx, 15
  br i1 %i.bky, label %.lr.ph2076, label %.preheader1025, !llvm.loop !23

.preheader1023:                                   ; preds = %bb.jd, %.preheader1025
  %.2247.i.i102.lcssa = phi ptr [ %.1246.i.i100.lcssa, %.preheader1025 ], [ %i.bmg, %bb.jd ] ; 3 uses
  %.2240.i.i103.lcssa = phi ptr [ %.1239.i.i101.lcssa, %.preheader1025 ], [ %i.bmh, %bb.jd ] ; 5 uses
  %i.bkz = icmp ugt ptr %i.bhm, %.2240.i.i103.lcssa
  br i1 %i.bkz, label %.lr.ph2087.preheader, label %write_str.exit744.i

.lr.ph2087.preheader:                             ; preds = %.preheader1023
  %.2240.i.i103.lcssa2775 = ptrtoaddr ptr %.2240.i.i103.lcssa to i64 ; 2 uses
  %i.bla = getelementptr i8, ptr %.2240.i.i103.lcssa, i64 %i.ast
  %scevgep2774 = getelementptr i8, ptr %i.bla, i64 %i.asw
  %i.blb = sub i64 0, %.2240.i.i103.lcssa2775
  %scevgep2776 = getelementptr i8, ptr %scevgep2774, i64 %i.blb
  %i.blc = sub i64 %i.bho, %.2240.i.i103.lcssa2775
  %i.bld = freeze i64 %i.blc                      ; 2 uses
  %i.ble = add i64 %i.bld, -1
  %xtraiter5620 = and i64 %i.bld, 3               ; 2 uses
  %lcmp.mod5621.not = icmp eq i64 %xtraiter5620, 0
  br i1 %lcmp.mod5621.not, label %.lr.ph2087.prol.loopexit, label %.lr.ph2087.prol

.lr.ph2087.prol:                                  ; preds = %.lr.ph2087.preheader, %bb.iz
  %.3241.i.i1052086.prol = phi ptr [ %i.blj, %bb.iz ], [ %.2240.i.i103.lcssa, %.lr.ph2087.preheader ] ; 3 uses
  %.3248.i.i1042085.prol = phi ptr [ %i.blk, %bb.iz ], [ %.2247.i.i102.lcssa, %.lr.ph2087.preheader ] ; 3 uses
  %prol.iter5622 = phi i64 [ %prol.iter5622.next, %bb.iz ], [ 0, %.lr.ph2087.preheader ]
  %i.blf = load i8, ptr %.3241.i.i1052086.prol, align 1, !tbaa !100 ; 2 uses
  %i.blg = zext i8 %i.blf to i64
  %i.blh = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.blg
end_hunk_15
begin_hunk_16_@yyjson_mut_write_opts_impl:bb.a
  %i.blu = load i8, ptr %i.blt, align 1, !tbaa !100
  %.not269.i.i167 = icmp eq i8 %i.blu, 0
  br i1 %.not269.i.i167, label %bb.jb, label %.loopexit1027, !prof !62

bb.jb:                                            ; preds = %bb.ja
  %i.blv = getelementptr inbounds nuw i8, ptr %.2240.i.i1032081, i64 2
  %i.blw = load i8, ptr %i.blv, align 1, !tbaa !100
  %i.blx = zext i8 %i.blw to i64
  %i.bly = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.blx
  %i.blz = load i8, ptr %i.bly, align 1, !tbaa !100
  %.not270.i.i170 = icmp eq i8 %i.blz, 0
  br i1 %.not270.i.i170, label %bb.jc, label %.loopexit1028, !prof !62

bb.jc:                                            ; preds = %bb.jb
  %i.bma = getelementptr inbounds nuw i8, ptr %.2240.i.i1032081, i64 3
  %i.bmb = load i8, ptr %i.bma, align 1, !tbaa !100
  %i.bmc = zext i8 %i.bmb to i64
  %i.bmd = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bmc
  %i.bme = load i8, ptr %i.bmd, align 1, !tbaa !100
  %.not271.i.i173 = icmp eq i8 %i.bme, 0
  br i1 %.not271.i.i173, label %bb.jd, label %.loopexit1029, !prof !62

bb.jd:                                            ; preds = %bb.jc
  %i.bmf = load i32, ptr %.2240.i.i1032081, align 1
  store i32 %i.bmf, ptr %.2247.i.i1022080, align 1
  %i.bmg = getelementptr inbounds nuw i8, ptr %.2247.i.i1022080, i64 4 ; 2 uses
  %i.bmh = getelementptr inbounds nuw i8, ptr %.2240.i.i1032081, i64 4 ; 3 uses
  %i.bmi = ptrtoint ptr %i.bmh to i64
  %i.bmj = sub i64 %i.bhn, %i.bmi
  %i.bmk = icmp sgt i64 %i.bmj, 3
  br i1 %i.bmk, label %.lr.ph2082, label %.preheader1023, !llvm.loop !24

.lr.ph2087:                                       ; preds = %.lr.ph2087.prol.loopexit, %bb.je
  %.3241.i.i1052086 = phi ptr [ %i.bnh, %bb.je ], [ %.3241.i.i1052086.unr, %.lr.ph2087.prol.loopexit ] ; 9 uses
  %.3248.i.i1042085 = phi ptr [ %i.bni, %bb.je ], [ %.3248.i.i1042085.unr, %.lr.ph2087.prol.loopexit ] ; 6 uses
  %i.bml = load i8, ptr %.3241.i.i1052086, align 1, !tbaa !100 ; 2 uses
  %i.bmm = zext i8 %i.bml to i64
  %i.bmn = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bmm
  %i.bmo = load i8, ptr %i.bmn, align 1, !tbaa !100
  %.not.i642.i = icmp eq i8 %i.bmo, 0
  br i1 %.not.i642.i, label %.lr.ph2087.1, label %.preheader1020.preheader, !prof !62

.lr.ph2087.1:                                     ; preds = %.lr.ph2087
  %i.bmp = getelementptr inbounds nuw i8, ptr %.3241.i.i1052086, i64 1
  %i.bmq = getelementptr inbounds nuw i8, ptr %.3248.i.i1042085, i64 1 ; 2 uses
  store i8 %i.bml, ptr %.3248.i.i1042085, align 1, !tbaa !100
  %i.bmr = load i8, ptr %i.bmp, align 1, !tbaa !100 ; 2 uses
  %i.bms = zext i8 %i.bmr to i64
  %i.bmt = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bms
  %i.bmu = load i8, ptr %i.bmt, align 1, !tbaa !100
  %.not.i642.i.1 = icmp eq i8 %i.bmu, 0
  br i1 %.not.i642.i.1, label %.lr.ph2087.2, label %.preheader1020.preheader.loopexit.loopexit.split.loop.exit6351, !prof !62

.lr.ph2087.2:                                     ; preds = %.lr.ph2087.1
  %i.bmv = getelementptr inbounds nuw i8, ptr %.3241.i.i1052086, i64 2
  %i.bmw = getelementptr inbounds nuw i8, ptr %.3248.i.i1042085, i64 2 ; 2 uses
  store i8 %i.bmr, ptr %i.bmq, align 1, !tbaa !100
  %i.bmx = load i8, ptr %i.bmv, align 1, !tbaa !100 ; 2 uses
  %i.bmy = zext i8 %i.bmx to i64
  %i.bmz = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bmy
  %i.bna = load i8, ptr %i.bmz, align 1, !tbaa !100
  %.not.i642.i.2 = icmp eq i8 %i.bna, 0
  br i1 %.not.i642.i.2, label %.lr.ph2087.3, label %.preheader1020.preheader.loopexit.loopexit.split.loop.exit6348, !prof !62

.lr.ph2087.3:                                     ; preds = %.lr.ph2087.2
  %i.bnb = getelementptr inbounds nuw i8, ptr %.3241.i.i1052086, i64 3
  %i.bnc = getelementptr inbounds nuw i8, ptr %.3248.i.i1042085, i64 3 ; 2 uses
  store i8 %i.bmx, ptr %i.bmw, align 1, !tbaa !100
  %i.bnd = load i8, ptr %i.bnb, align 1, !tbaa !100 ; 2 uses
  %i.bne = zext i8 %i.bnd to i64
  %i.bnf = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bne
  %i.bng = load i8, ptr %i.bnf, align 1, !tbaa !100
  %.not.i642.i.3 = icmp eq i8 %i.bng, 0
  br i1 %.not.i642.i.3, label %bb.je, label %.preheader1020.preheader.loopexit.loopexit.split.loop.exit, !prof !62

bb.je:                                            ; preds = %.lr.ph2087.3
  %i.bnh = getelementptr inbounds nuw i8, ptr %.3241.i.i1052086, i64 4 ; 2 uses
  %i.bni = getelementptr inbounds nuw i8, ptr %.3248.i.i1042085, i64 4 ; 2 uses
  store i8 %i.bnd, ptr %i.bnc, align 1, !tbaa !100
  %exitcond2777.not.3 = icmp eq ptr %i.bnh, %scevgep2776
  br i1 %exitcond2777.not.3, label %write_str.exit744.i, label %.lr.ph2087, !llvm.loop !25

.loopexit1027:                                    ; preds = %bb.ij, %bb.ja
  %i.bnj = phi i8 [ %i.blm, %bb.ja ], [ %i.bht, %bb.ij ]
  %.5250.i.i168 = phi ptr [ %.2247.i.i1022080, %bb.ja ], [ %.1246.i.i1002073, %bb.ij ] ; 2 uses
  %.5243.i.i169 = phi ptr [ %.2240.i.i1032081, %bb.ja ], [ %.1239.i.i1012074, %bb.ij ]
  store i8 %i.bnj, ptr %.5250.i.i168, align 1
  %i.bnk = getelementptr inbounds nuw i8, ptr %.5250.i.i168, i64 1
  %i.bnl = getelementptr inbounds nuw i8, ptr %.5243.i.i169, i64 1
  br label %.preheader1020.preheader

.loopexit1028:                                    ; preds = %bb.ik, %bb.jb
  %.6251.i.i171 = phi ptr [ %.2247.i.i1022080, %bb.jb ], [ %.1246.i.i1002073, %bb.ik ] ; 2 uses
  %.6.i.i172 = phi ptr [ %.2240.i.i1032081, %bb.jb ], [ %.1239.i.i1012074, %bb.ik ] ; 2 uses
  %i.bnm = load i16, ptr %.6.i.i172, align 1
  store i16 %i.bnm, ptr %.6251.i.i171, align 1
  %i.bnn = getelementptr inbounds nuw i8, ptr %.6251.i.i171, i64 2
  %i.bno = getelementptr inbounds nuw i8, ptr %.6.i.i172, i64 2
  br label %.preheader1020.preheader

.loopexit1029:                                    ; preds = %bb.il, %bb.jc
  %.7252.i.i174 = phi ptr [ %.2247.i.i1022080, %bb.jc ], [ %.1246.i.i1002073, %bb.il ] ; 2 uses
  %.7.i.i175 = phi ptr [ %.2240.i.i1032081, %bb.jc ], [ %.1239.i.i1012074, %bb.il ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i.i174, ptr noundef nonnull align 1 dereferenceable(3) %.7.i.i175, i64 3, i1 false)
  %i.bnp = getelementptr inbounds nuw i8, ptr %.7252.i.i174, i64 3
  %i.bnq = getelementptr inbounds nuw i8, ptr %.7.i.i175, i64 3
  br label %.preheader1020.preheader

bb.jf:                                            ; preds = %bb.im
  %i.bnr = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 4
  %i.bns = load i32, ptr %.1239.i.i1012074, align 1
  store i32 %i.bns, ptr %.1246.i.i1002073, align 1
  %i.bnt = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 4
  br label %.preheader1020.preheader

bb.jg:                                            ; preds = %bb.in
  %i.bnu = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i.i1002073, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i.i1012074, i64 5, i1 false)
  %i.bnv = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 5
  br label %.preheader1020.preheader

bb.jh:                                            ; preds = %bb.io
  %i.bnw = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i.i1002073, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i.i1012074, i64 6, i1 false)
  %i.bnx = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 6
  br label %.preheader1020.preheader

bb.ji:                                            ; preds = %bb.ip
  %i.bny = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i.i1002073, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i.i1012074, i64 7, i1 false)
  %i.bnz = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 7
  br label %.preheader1020.preheader

bb.jj:                                            ; preds = %bb.iq
  %i.boa = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 8
  %i.bob = load i64, ptr %.1239.i.i1012074, align 1
  store i64 %i.bob, ptr %.1246.i.i1002073, align 1
  %i.boc = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 8
  br label %.preheader1020.preheader

bb.jk:                                            ; preds = %bb.ir
  %i.bod = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i.i1002073, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i.i1012074, i64 9, i1 false)
  %i.boe = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 9
  br label %.preheader1020.preheader

bb.jl:                                            ; preds = %bb.is
  %i.bof = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i.i1002073, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i.i1012074, i64 10, i1 false)
  %i.bog = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 10
  br label %.preheader1020.preheader

bb.jm:                                            ; preds = %bb.it
  %i.boh = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1246.i.i1002073, ptr noundef nonnull align 1 dereferenceable(11) %.1239.i.i1012074, i64 11, i1 false)
  %i.boi = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 11
  br label %.preheader1020.preheader

bb.jn:                                            ; preds = %bb.iu
  %i.boj = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1246.i.i1002073, ptr noundef nonnull align 1 dereferenceable(12) %.1239.i.i1012074, i64 12, i1 false)
  %i.bok = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 12
  br label %.preheader1020.preheader

bb.jo:                                            ; preds = %bb.iv
  %i.bol = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1246.i.i1002073, ptr noundef nonnull align 1 dereferenceable(13) %.1239.i.i1012074, i64 13, i1 false)
  %i.bom = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 13
  br label %.preheader1020.preheader

bb.jp:                                            ; preds = %bb.iw
  %i.bon = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1246.i.i1002073, ptr noundef nonnull align 1 dereferenceable(14) %.1239.i.i1012074, i64 14, i1 false)
  %i.boo = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 14
  br label %.preheader1020.preheader

bb.jq:                                            ; preds = %bb.ix
  %i.bop = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1246.i.i1002073, ptr noundef nonnull align 1 dereferenceable(15) %.1239.i.i1012074, i64 15, i1 false)
  %i.boq = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 15
  br label %.preheader1020.preheader

.preheader1020.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2087.3
  %i.bor = getelementptr inbounds nuw i8, ptr %.3241.i.i1052086, i64 3
  br label %.preheader1020.preheader

.preheader1020.preheader.loopexit.loopexit.split.loop.exit6348: ; preds = %.lr.ph2087.2
  %i.bos = getelementptr inbounds nuw i8, ptr %.3241.i.i1052086, i64 2
  br label %.preheader1020.preheader

.preheader1020.preheader.loopexit.loopexit.split.loop.exit6351: ; preds = %.lr.ph2087.1
  %i.bot = getelementptr inbounds nuw i8, ptr %.3241.i.i1052086, i64 1
  br label %.preheader1020.preheader

.preheader1020.preheader:                         ; preds = %.lr.ph2076, %.lr.ph2082, %.lr.ph2087, %.preheader1020.preheader.loopexit.loopexit.split.loop.exit6351, %.preheader1020.preheader.loopexit.loopexit.split.loop.exit6348, %.preheader1020.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2087.prol, %.loopexit1027, %.loopexit1028, %.loopexit1029, %bb.jf, %bb.jg, %bb.jh, %bb.ji, %bb.jj, %bb.jk, %bb.jl, %bb.jm, %bb.jn, %bb.jo, %bb.jp, %bb.jq
  %.8253.i.i110.ph = phi ptr [ %.2247.i.i1022080, %.lr.ph2082 ], [ %.3248.i.i1042085.prol, %.lr.ph2087.prol ], [ %i.bnk, %.loopexit1027 ], [ %i.bnn, %.loopexit1028 ], [ %i.bnp, %.loopexit1029 ], [ %i.bnt, %bb.jf ], [ %i.bnv, %bb.jg ], [ %i.bnx, %bb.jh ], [ %i.bnz, %bb.ji ], [ %i.boc, %bb.jj ], [ %i.boe, %bb.jk ], [ %i.bog, %bb.jl ], [ %i.boi, %bb.jm ], [ %i.bok, %bb.jn ], [ %i.bom, %bb.jo ], [ %i.boo, %bb.jp ], [ %i.boq, %bb.jq ], [ %.3248.i.i1042085, %.lr.ph2087 ], [ %i.bmq, %.preheader1020.preheader.loopexit.loopexit.split.loop.exit6351 ], [ %i.bmw, %.preheader1020.preheader.loopexit.loopexit.split.loop.exit6348 ], [ %i.bnc, %.preheader1020.preheader.loopexit.loopexit.split.loop.exit ], [ %.1246.i.i1002073, %.lr.ph2076 ]
  %.8.i.i111.ph = phi ptr [ %.2240.i.i1032081, %.lr.ph2082 ], [ %.3241.i.i1052086.prol, %.lr.ph2087.prol ], [ %i.bnl, %.loopexit1027 ], [ %i.bno, %.loopexit1028 ], [ %i.bnq, %.loopexit1029 ], [ %i.bnr, %bb.jf ], [ %i.bnu, %bb.jg ], [ %i.bnw, %bb.jh ], [ %i.bny, %bb.ji ], [ %i.boa, %bb.jj ], [ %i.bod, %bb.jk ], [ %i.bof, %bb.jl ], [ %i.boh, %bb.jm ], [ %i.boj, %bb.jn ], [ %i.bol, %bb.jo ], [ %i.bon, %bb.jp ], [ %i.bop, %bb.jq ], [ %.3241.i.i1052086, %.lr.ph2087 ], [ %i.bot, %.preheader1020.preheader.loopexit.loopexit.split.loop.exit6351 ], [ %i.bos, %.preheader1020.preheader.loopexit.loopexit.split.loop.exit6348 ], [ %i.bor, %.preheader1020.preheader.loopexit.loopexit.split.loop.exit ], [ %.1239.i.i1012074, %.lr.ph2076 ]
  br label %.preheader1020

.preheader1020:                                   ; preds = %.preheader1020.backedge, %.preheader1020.preheader
  %.8253.i.i110 = phi ptr [ %.8253.i.i110.ph, %.preheader1020.preheader ], [ %.8253.i.i110.be, %.preheader1020.backedge ] ; 34 uses
  %.8.i.i111 = phi ptr [ %.8.i.i111.ph, %.preheader1020.preheader ], [ %.8.i.i111.be, %.preheader1020.backedge ] ; 23 uses
  %i.bou = getelementptr inbounds nuw i8, ptr %.8.i.i111, i64 4 ; 3 uses
  %i.bov = icmp ugt ptr %i.bou, %i.bhm            ; 2 uses
  br i1 %i.bov, label %bb.jr, label %._crit_edge2825, !prof !45

._crit_edge2825:                                  ; preds = %.preheader1020
  %.pre2826 = load i8, ptr %.8.i.i111, align 1, !tbaa !100 ; 2 uses
  %.phi.trans.insert2827 = zext i8 %.pre2826 to i64 ; 2 uses
  %.phi.trans.insert2828 = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %.phi.trans.insert2827
  %.pre2829 = load i8, ptr %.phi.trans.insert2828, align 1, !tbaa !100
  br label %bb.js

bb.jr:                                            ; preds = %.preheader1020
  %i.bow = ptrtoint ptr %.8.i.i111 to i64
  %i.box = sub i64 %i.bhn, %i.bow
  %i.boy = load i8, ptr %.8.i.i111, align 1, !tbaa !100 ; 3 uses
  %i.boz = zext i8 %i.boy to i64                  ; 2 uses
  %i.bpa = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.boz
  %i.bpb = load i8, ptr %i.bpa, align 1, !tbaa !100 ; 2 uses
  %i.bpc = lshr i8 %i.bpb, 1
  %i.bpd = zext nneg i8 %i.bpc to i64
  %i.bpe = icmp slt i64 %i.box, %i.bpd
  br i1 %i.bpe, label %bb.kl, label %bb.js

bb.js:                                            ; preds = %._crit_edge2825, %bb.jr
  %.pre-phi2865 = phi i64 [ %.phi.trans.insert2827, %._crit_edge2825 ], [ %i.boz, %bb.jr ]
  %i.bpf = phi i8 [ %.pre2829, %._crit_edge2825 ], [ %i.bpb, %bb.jr ]
  %i.bpg = phi i8 [ %.pre2826, %._crit_edge2825 ], [ %i.boy, %bb.jr ] ; 2 uses
  switch i8 %i.bpf, label %write_str.exit744.i [
    i8 0, label %bb.jt
    i8 4, label %bb.ju
    i8 6, label %bb.jw
    i8 8, label %bb.kb
    i8 2, label %bb.kd
    i8 3, label %bb.ke
    i8 5, label %bb.kf
    i8 7, label %bb.kh
    i8 9, label %bb.kj
    i8 1, label %bb.kl
  ]

bb.jt:                                            ; preds = %bb.js
  %i.bph = getelementptr inbounds nuw i8, ptr %.8.i.i111, i64 1
  store i8 %i.bpg, ptr %.8253.i.i110, align 1, !tbaa !100
  br label %bb.ii

bb.ju:                                            ; preds = %bb.js
  %i.bpi = load i16, ptr %.8.i.i111, align 1      ; 3 uses
  %.sroa.0590.0.insert.ext = zext i16 %i.bpi to i32 ; 2 uses
  %i.bpj = and i32 %.sroa.0590.0.insert.ext, 49376
  %i.bpk = icmp ne i32 %i.bpj, 32960
  %i.bpl = and i32 %.sroa.0590.0.insert.ext, 30
  %i.bpm = icmp eq i32 %i.bpl, 0
  %.not310.i.i163 = or i1 %i.bpk, %i.bpm
  %i.bpn = trunc i16 %i.bpi to i8
  br i1 %.not310.i.i163, label %.thread765, label %bb.jv, !prof !45

bb.jv:                                            ; preds = %bb.ju
  store i16 %i.bpi, ptr %.8253.i.i110, align 1
  %i.bpo = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 2
  %i.bpp = getelementptr inbounds nuw i8, ptr %.8.i.i111, i64 2
  br label %.preheader1020.backedge

bb.jw:                                            ; preds = %bb.js
  br i1 %i.bov, label %bb.jz, label %bb.jx, !prof !45

bb.jx:                                            ; preds = %bb.jw
  %.sroa.0.0.copyload.i335.i.i154 = load i32, ptr %.8.i.i111, align 1 ; 4 uses
  %i.bpq = and i32 %.sroa.0.0.copyload.i335.i.i154, 12632304
  %i.bpr = icmp eq i32 %i.bpq, 8421600
  %i.bps = trunc i32 %.sroa.0.0.copyload.i335.i.i154 to i8 ; 3 uses
  br i1 %i.bpr, label %bb.jy, label %.thread765, !prof !62

bb.jy:                                            ; preds = %bb.jx
  %i.bpt = and i32 %.sroa.0.0.copyload.i335.i.i154, 8207
  switch i32 %i.bpt, label %.critedge.i.i155 [
    i32 8205, label %.thread765
    i32 0, label %.thread765
  ], !prof !151

bb.jz:                                            ; preds = %bb.jw
  %.sroa.0.0.copyload.i327.i.i158 = load i16, ptr %.8.i.i111, align 1 ; 2 uses
  %i.bpu = getelementptr inbounds nuw i8, ptr %.8.i.i111, i64 2
  %i.bpv = load i8, ptr %i.bpu, align 1, !tbaa !100
  %.sroa.4.0.insert.ext.i328.i.i159 = zext i8 %i.bpv to i32
  %.sroa.4.0.insert.shift.i329.i.i160 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i328.i.i159, 16
  %.sroa.0.0.insert.ext.i330.i.i161 = zext i16 %.sroa.0.0.copyload.i327.i.i158 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i331.i.i162 = or disjoint i32 %.sroa.4.0.insert.shift.i329.i.i160, %.sroa.0.0.insert.ext.i330.i.i161 ; 2 uses
  %i.bpw = and i32 %.sroa.0.0.insert.insert.i331.i.i162, 12632304
  %i.bpx = icmp eq i32 %i.bpw, 8421600
  %i.bpy = trunc i16 %.sroa.0.0.copyload.i327.i.i158 to i8 ; 3 uses
  br i1 %i.bpx, label %bb.ka, label %.thread765, !prof !62

bb.ka:                                            ; preds = %bb.jz
  %i.bpz = and i32 %.sroa.0.0.insert.ext.i330.i.i161, 8207
  switch i32 %i.bpz, label %.critedge.i.i155 [
    i32 8205, label %.thread765
    i32 0, label %.thread765
  ], !prof !151

.critedge.i.i155:                                 ; preds = %bb.ka, %bb.jy
  %storemerge940 = phi i32 [ %.sroa.0.0.copyload.i335.i.i154, %bb.jy ], [ %.sroa.0.0.insert.insert.i331.i.i162, %bb.ka ]
  store i32 %storemerge940, ptr %.8253.i.i110, align 1
  %i.bqa = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 3
  %i.bqb = getelementptr inbounds nuw i8, ptr %.8.i.i111, i64 3
  br label %.preheader1020.backedge

bb.kb:                                            ; preds = %bb.js
  %.sroa.0.0.copyload.i334.i.i146 = load i32, ptr %.8.i.i111, align 1 ; 6 uses
  %i.bqc = and i32 %.sroa.0.0.copyload.i334.i.i146, -1061109512
  %i.bqd = icmp ne i32 %i.bqc, -2139062032
  %i.bqe = and i32 %.sroa.0.0.copyload.i334.i.i146, 12295
  %.not301.i.i147 = icmp eq i32 %i.bqe, 0
  %or.cond.i.i148 = or i1 %i.bqd, %.not301.i.i147
  %i.bqf = trunc i32 %.sroa.0.0.copyload.i334.i.i146 to i8 ; 2 uses
  br i1 %or.cond.i.i148, label %.thread765, label %bb.kc, !prof !139

bb.kc:                                            ; preds = %bb.kb
  %i.bqg = and i32 %.sroa.0.0.copyload.i334.i.i146, 4
  %i.bqh = icmp ne i32 %i.bqg, 0
  %i.bqi = and i32 %.sroa.0.0.copyload.i334.i.i146, 12291
  %i.bqj = icmp ne i32 %i.bqi, 0
  %.not304.i.i149 = and i1 %i.bqh, %i.bqj
  br i1 %.not304.i.i149, label %.thread765, label %.critedge316.i.i150, !prof !45

.critedge316.i.i150:                              ; preds = %bb.kc
  store i32 %.sroa.0.0.copyload.i334.i.i146, ptr %.8253.i.i110, align 1
  %i.bqk = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 4
  br label %.preheader1020.backedge

bb.kd:                                            ; preds = %bb.js
  %i.bql = shl nuw nsw i64 %.pre-phi2865, 1
  %i.bqm = getelementptr inbounds nuw i8, ptr @esc_single_char_table, i64 %i.bql
  %i.bqn = load i16, ptr %i.bqm, align 2
  store i16 %i.bqn, ptr %.8253.i.i110, align 1
  %i.bqo = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 2
  %i.bqp = getelementptr inbounds nuw i8, ptr %.8.i.i111, i64 1
  br label %.preheader1020.backedge

.preheader1020.backedge:                          ; preds = %bb.kd, %bb.ke, %bb.km, %bb.kn, %bb.jv, %.critedge.i.i155, %.critedge316.i.i150, %bb.kg, %.critedge321.i.i131, %.critedge325.i.i122
  %.8253.i.i110.be = phi ptr [ %i.buo, %bb.km ], [ %i.bpo, %bb.jv ], [ %i.bqa, %.critedge.i.i155 ], [ %i.bqk, %.critedge316.i.i150 ], [ %i.bqo, %bb.kd ], [ %i.bqw, %bb.ke ], [ %i.brr, %bb.kg ], [ %i.bso, %.critedge321.i.i131 ], [ %i.buk, %.critedge325.i.i122 ], [ %i.buq, %bb.kn ]
  %.8.i.i111.be = phi ptr [ %i.bun, %bb.km ], [ %i.bpp, %bb.jv ], [ %i.bqb, %.critedge.i.i155 ], [ %i.bou, %.critedge316.i.i150 ], [ %i.bqp, %bb.kd ], [ %i.bqx, %bb.ke ], [ %i.brs, %bb.kg ], [ %i.bsp, %.critedge321.i.i131 ], [ %i.bou, %.critedge325.i.i122 ], [ %i.bur, %bb.kn ]
  br label %.preheader1020

bb.ke:                                            ; preds = %bb.js
  store i32 808482140, ptr %.8253.i.i110, align 1
  %i.bqq = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 4
  %i.bqr = load i8, ptr %.8.i.i111, align 1, !tbaa !100
  %i.bqs = zext i8 %i.bqr to i64
  %i.bqt = shl nuw nsw i64 %i.bqs, 1
  %i.bqu = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bqt
  %i.bqv = load i16, ptr %i.bqu, align 2
  store i16 %i.bqv, ptr %i.bqq, align 1
  %i.bqw = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 6
  %i.bqx = getelementptr inbounds nuw i8, ptr %.8.i.i111, i64 1
  br label %.preheader1020.backedge

bb.kf:                                            ; preds = %bb.js
  %.sroa.0.0.copyload.i332.i.i139 = load i16, ptr %.8.i.i111, align 1 ; 3 uses
  %.sroa.0587.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i.i139 to i32 ; 2 uses
  %i.bqy = and i32 %.sroa.0587.0.insert.ext, 49376
  %i.bqz = icmp ne i32 %i.bqy, 32960
  %i.bra = and i32 %.sroa.0587.0.insert.ext, 30
  %i.brb = icmp eq i32 %i.bra, 0
  %.not298.i.i140 = or i1 %i.bqz, %i.brb
  br i1 %.not298.i.i140, label %.thread775, label %bb.kg, !prof !45

bb.kg:                                            ; preds = %bb.kf
  %i.brc = lshr i16 %.sroa.0.0.copyload.i332.i.i139, 8
  %i.brd = trunc nuw i16 %i.brc to i8
  %i.bre = trunc i16 %.sroa.0.0.copyload.i332.i.i139 to i8 ; 2 uses
  %.tr299.i.i141 = shl i8 %i.bre, 6
  %i.brf = and i8 %i.brd, 63
  store i16 30044, ptr %.8253.i.i110, align 1
  %i.brg = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 2
  %i.brh = lshr i8 %i.bre, 1
  %i.bri = and i8 %i.brh, 14
  %i.brj = zext nneg i8 %i.bri to i64
  %i.brk = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.brj
  %i.brl = load i16, ptr %i.brk, align 2
  store i16 %i.brl, ptr %i.brg, align 1
  %i.brm = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 4
  %.narrow300.i.i142 = or disjoint i8 %i.brf, %.tr299.i.i141
  %i.brn = zext i8 %.narrow300.i.i142 to i64
  %i.bro = shl nuw nsw i64 %i.brn, 1
  %i.brp = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bro
  %i.brq = load i16, ptr %i.brp, align 2
  store i16 %i.brq, ptr %i.brm, align 1
  %i.brr = getelementptr inbounds nuw i8, ptr %.8253.i.i110, i64 6
  %i.brs = getelementptr inbounds nuw i8, ptr %.8.i.i111, i64 2
  br label %.preheader1020.backedge

bb.kh:                                            ; preds = %bb.js
  %.sroa.0.0.copyload.i.i.i126 = load i16, ptr %.8.i.i111, align 1 ; 3 uses
  %i.brt = getelementptr inbounds nuw i8, ptr %.8.i.i111, i64 2
  %i.bru = load i8, ptr %i.brt, align 1, !tbaa !100 ; 2 uses
  %.sroa.4.0.insert.ext.i.i.i127 = zext i8 %i.bru to i32
  %.sroa.4.0.insert.shift.i.i.i128 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i.i127, 16
  %.sroa.0.0.insert.ext.i.i.i129 = zext i16 %.sroa.0.0.copyload.i.i.i126 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i130 = or disjoint i32 %.sroa.4.0.insert.shift.i.i.i128, %.sroa.0.0.insert.ext.i.i.i129
  %i.brv = and i32 %.sroa.0.0.insert.insert.i.i.i130, 12632304
  %i.brw = icmp eq i32 %i.brv, 8421600
  br i1 %i.brw, label %bb.ki, label %.thread775, !prof !62

bb.ki:                                            ; preds = %bb.kh
  %i.brx = and i32 %.sroa.0.0.insert.ext.i.i.i129, 8207
  switch i32 %i.brx, label %.critedge321.i.i131 [
    i32 8205, label %.thread775
    i32 0, label %.thread775
  ], !prof !151

.critedge321.i.i131:                              ; preds = %bb.ki
  %i.bry = zext i16 %.sroa.0.0.copyload.i.i.i126 to i64
end_hunk_16
begin_hunk_17_@yyjson_mut_write_opts_impl:bb.a
vector.ph4840:                                    ; preds = %.lr.ph2051.preheader
  %n.vec4841 = and i64 %i.bux, 9223372036854775800 ; 4 uses
  %i.buz = shl i64 %n.vec4841, 2
  %i.bva = sub i64 %.0.i641.i.lcssa, %i.buz       ; 2 uses
  %i.bvb = shl i64 %n.vec4841, 2                  ; 2 uses
  %i.bvc = getelementptr i8, ptr %.018.i.i88.lcssa, i64 %i.bvb ; 2 uses
  %i.bvd = getelementptr i8, ptr %.021.i.i87.lcssa, i64 %i.bvb ; 2 uses
  br label %vector.body4842

vector.body4842:                                  ; preds = %vector.body4842, %vector.ph4840
  %index4843.a = phi i64 [ 0, %vector.ph4840 ], [ %index.next4848, %vector.body4842 ] ; 2 uses
  %i.bve = shl i64 %index4843.a, 2                ; 2 uses
  %next.gep4844.a = getelementptr i8, ptr %.018.i.i88.lcssa, i64 %i.bve ; 2 uses
  %next.gep4845.a = getelementptr i8, ptr %.021.i.i87.lcssa, i64 %i.bve ; 2 uses
  %i.bvf = getelementptr i8, ptr %next.gep4844.a, i64 16
  %wide.load4846.a = load <4 x i32>, ptr %next.gep4844.a, align 1
  %wide.load4847 = load <4 x i32>, ptr %i.bvf, align 1
  %i.bvg = getelementptr i8, ptr %next.gep4845.a, i64 16
  store <4 x i32> %wide.load4846.a, ptr %next.gep4845.a, align 1
  store <4 x i32> %wide.load4847, ptr %i.bvg, align 1
  %index.next4848 = add nuw i64 %index4843.a, 8   ; 2 uses
  %i.bvh = icmp eq i64 %index.next4848, %n.vec4841
  br i1 %i.bvh, label %middle.block4849, label %vector.body4842, !llvm.loop !413

middle.block4849:                                 ; preds = %vector.body4842
  %cmp.n4850 = icmp eq i64 %i.bux, %n.vec4841
  br i1 %cmp.n4850, label %.preheader1051, label %.lr.ph2051.preheader5373

.lr.ph2051.preheader5373:                         ; preds = %.lr.ph2051.preheader, %middle.block4849
  %.1.i.i912050.ph = phi i64 [ %.0.i641.i.lcssa, %.lr.ph2051.preheader ], [ %i.bva, %middle.block4849 ]
  %.119.i.i902049.ph = phi ptr [ %.018.i.i88.lcssa, %.lr.ph2051.preheader ], [ %i.bvc, %middle.block4849 ]
  %.122.i.i892048.ph = phi ptr [ %.021.i.i87.lcssa, %.lr.ph2051.preheader ], [ %i.bvd, %middle.block4849 ]
  br label %.lr.ph2051

.lr.ph2044:                                       ; preds = %bb.ko, %.lr.ph2044
  %.0.i641.i2042 = phi i64 [ %i.bvk, %.lr.ph2044 ], [ %i.ast, %bb.ko ]
  %.018.i.i882041 = phi ptr [ %i.bvj, %.lr.ph2044 ], [ %i.asv, %bb.ko ] ; 2 uses
  %.021.i.i872040 = phi ptr [ %i.bvi, %.lr.ph2044 ], [ %i.bus, %bb.ko ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i.i872040, ptr noundef nonnull align 1 dereferenceable(16) %.018.i.i882041, i64 16, i1 false)
  %i.bvi = getelementptr inbounds nuw i8, ptr %.021.i.i872040, i64 16 ; 2 uses
  %i.bvj = getelementptr inbounds nuw i8, ptr %.018.i.i882041, i64 16 ; 2 uses
  %i.bvk = add nsw i64 %.0.i641.i2042, -16        ; 3 uses
  %i.bvl = icmp ugt i64 %i.bvk, 15
  br i1 %i.bvl, label %.lr.ph2044, label %.preheader1052, !llvm.loop !26

.preheader1051:                                   ; preds = %.lr.ph2051, %middle.block4849, %.preheader1052
  %.122.i.i89.lcssa = phi ptr [ %.021.i.i87.lcssa, %.preheader1052 ], [ %i.bvd, %middle.block4849 ], [ %i.bwf, %.lr.ph2051 ] ; 7 uses
  %.119.i.i90.lcssa = phi ptr [ %.018.i.i88.lcssa, %.preheader1052 ], [ %i.bvc, %middle.block4849 ], [ %i.bwg, %.lr.ph2051 ] ; 6 uses
  %.1.i.i91.lcssa = phi i64 [ %.0.i641.i.lcssa, %.preheader1052 ], [ %i.bva, %middle.block4849 ], [ %i.bwh, %.lr.ph2051 ] ; 11 uses
  %.not.i.i952055 = icmp eq i64 %.1.i.i91.lcssa, 0
  br i1 %.not.i.i952055, label %write_str.exit744.i, label %iter.check

iter.check:                                       ; preds = %.preheader1051
  %.119.i.i90.lcssa4819 = ptrtoaddr ptr %.119.i.i90.lcssa to i64
  %.122.i.i89.lcssa4818 = ptrtoaddr ptr %.122.i.i89.lcssa to i64
  %min.iters.check = icmp ult i64 %.1.i.i91.lcssa, 4
  %i.bvm = sub i64 %.119.i.i90.lcssa4819, %.122.i.i89.lcssa4818
  %diff.check = icmp ugt i64 %i.bvm, -32
  %or.cond4976 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond4976, label %.lr.ph2059.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4820 = icmp ult i64 %.1.i.i91.lcssa, 32
  br i1 %min.iters.check4820, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bvn = and i64 %.1.i.i91.lcssa, 28
  %n.vec = and i64 %.1.i.i91.lcssa, -32           ; 5 uses
  %i.bvo = and i64 %.1.i.i91.lcssa, 31
  %i.bvp = getelementptr i8, ptr %.119.i.i90.lcssa, i64 %n.vec
  %i.bvq = getelementptr i8, ptr %.122.i.i89.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.119.i.i90.lcssa, i64 %index ; 2 uses
  %next.gep4821 = getelementptr i8, ptr %.122.i.i89.lcssa, i64 %index ; 2 uses
  %i.bvr = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !100
  %wide.load4822 = load <16 x i8>, ptr %i.bvr, align 1, !tbaa !100
  %i.bvs = getelementptr i8, ptr %next.gep4821, i64 16
  store <16 x i8> %wide.load, ptr %next.gep4821, align 1, !tbaa !100
  store <16 x i8> %wide.load4822, ptr %i.bvs, align 1, !tbaa !100
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bvt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bvt, label %middle.block, label %vector.body, !llvm.loop !414

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.1.i.i91.lcssa, %n.vec
  br i1 %cmp.n, label %write_str.exit744.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bvn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2059.preheader, label %vec.epilog.ph, !prof !152

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4825 = and i64 %.1.i.i91.lcssa, -4        ; 4 uses
  %i.bvu = and i64 %.1.i.i91.lcssa, 3
  %i.bvv = getelementptr i8, ptr %.119.i.i90.lcssa, i64 %n.vec4825
  %i.bvw = getelementptr i8, ptr %.122.i.i89.lcssa, i64 %n.vec4825 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4826 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4830, %vec.epilog.vector.body ] ; 3 uses
  %next.gep4827 = getelementptr i8, ptr %.119.i.i90.lcssa, i64 %index4826
  %next.gep4828 = getelementptr i8, ptr %.122.i.i89.lcssa, i64 %index4826
  %wide.load4829 = load <4 x i8>, ptr %next.gep4827, align 1, !tbaa !100
  store <4 x i8> %wide.load4829, ptr %next.gep4828, align 1, !tbaa !100
  %index.next4830 = add nuw i64 %index4826, 4     ; 2 uses
  %i.bvx = icmp eq i64 %index.next4830, %n.vec4825
  br i1 %i.bvx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !415

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4831 = icmp eq i64 %.1.i.i91.lcssa, %n.vec4825
  br i1 %cmp.n4831, label %write_str.exit744.i, label %.lr.ph2059.preheader

.lr.ph2059.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2.i.i942058.ph = phi i64 [ %.1.i.i91.lcssa, %iter.check ], [ %i.bvo, %vec.epilog.iter.check ], [ %i.bvu, %vec.epilog.middle.block ] ; 4 uses
  %.220.i.i932057.ph = phi ptr [ %.119.i.i90.lcssa, %iter.check ], [ %i.bvp, %vec.epilog.iter.check ], [ %i.bvv, %vec.epilog.middle.block ] ; 2 uses
  %.223.i.i922056.ph = phi ptr [ %.122.i.i89.lcssa, %iter.check ], [ %i.bvq, %vec.epilog.iter.check ], [ %i.bvw, %vec.epilog.middle.block ] ; 2 uses
  %i.bvy = add nsw i64 %.2.i.i942058.ph, -1
  %xtraiter5617 = and i64 %.2.i.i942058.ph, 7     ; 2 uses
  %lcmp.mod5618.not = icmp eq i64 %xtraiter5617, 0
  br i1 %lcmp.mod5618.not, label %.lr.ph2059.prol.loopexit, label %.lr.ph2059.prol

.lr.ph2059.prol:                                  ; preds = %.lr.ph2059.preheader, %.lr.ph2059.prol
  %.2.i.i942058.prol = phi i64 [ %i.bwc, %.lr.ph2059.prol ], [ %.2.i.i942058.ph, %.lr.ph2059.preheader ]
  %.220.i.i932057.prol = phi ptr [ %i.bvz, %.lr.ph2059.prol ], [ %.220.i.i932057.ph, %.lr.ph2059.preheader ] ; 2 uses
  %.223.i.i922056.prol = phi ptr [ %i.bwb, %.lr.ph2059.prol ], [ %.223.i.i922056.ph, %.lr.ph2059.preheader ] ; 2 uses
  %prol.iter5619 = phi i64 [ %prol.iter5619.next, %.lr.ph2059.prol ], [ 0, %.lr.ph2059.preheader ]
  %i.bvz = getelementptr inbounds nuw i8, ptr %.220.i.i932057.prol, i64 1 ; 2 uses
  %i.bwa = load i8, ptr %.220.i.i932057.prol, align 1, !tbaa !100
  %i.bwb = getelementptr inbounds nuw i8, ptr %.223.i.i922056.prol, i64 1 ; 3 uses
  store i8 %i.bwa, ptr %.223.i.i922056.prol, align 1, !tbaa !100
  %i.bwc = add nsw i64 %.2.i.i942058.prol, -1     ; 2 uses
  %prol.iter5619.next = add i64 %prol.iter5619, 1 ; 2 uses
  %prol.iter5619.cmp.not = icmp eq i64 %prol.iter5619.next, %xtraiter5617
  br i1 %prol.iter5619.cmp.not, label %.lr.ph2059.prol.loopexit, label %.lr.ph2059.prol, !llvm.loop !416

.lr.ph2059.prol.loopexit:                         ; preds = %.lr.ph2059.prol, %.lr.ph2059.preheader
  %.lcssa5461.unr = phi ptr [ poison, %.lr.ph2059.preheader ], [ %i.bwb, %.lr.ph2059.prol ]
  %.2.i.i942058.unr = phi i64 [ %.2.i.i942058.ph, %.lr.ph2059.preheader ], [ %i.bwc, %.lr.ph2059.prol ]
  %.220.i.i932057.unr = phi ptr [ %.220.i.i932057.ph, %.lr.ph2059.preheader ], [ %i.bvz, %.lr.ph2059.prol ]
  %.223.i.i922056.unr = phi ptr [ %.223.i.i922056.ph, %.lr.ph2059.preheader ], [ %i.bwb, %.lr.ph2059.prol ]
  %i.bwd = icmp ult i64 %i.bvy, 7
  br i1 %i.bwd, label %write_str.exit744.i, label %.lr.ph2059

.lr.ph2051:                                       ; preds = %.lr.ph2051.preheader5373, %.lr.ph2051
  %.1.i.i912050 = phi i64 [ %i.bwh, %.lr.ph2051 ], [ %.1.i.i912050.ph, %.lr.ph2051.preheader5373 ]
  %.119.i.i902049 = phi ptr [ %i.bwg, %.lr.ph2051 ], [ %.119.i.i902049.ph, %.lr.ph2051.preheader5373 ] ; 2 uses
  %.122.i.i892048 = phi ptr [ %i.bwf, %.lr.ph2051 ], [ %.122.i.i892048.ph, %.lr.ph2051.preheader5373 ] ; 2 uses
  %i.bwe = load i32, ptr %.119.i.i902049, align 1
  store i32 %i.bwe, ptr %.122.i.i892048, align 1
  %i.bwf = getelementptr inbounds nuw i8, ptr %.122.i.i892048, i64 4 ; 2 uses
  %i.bwg = getelementptr inbounds nuw i8, ptr %.119.i.i902049, i64 4 ; 2 uses
  %i.bwh = add nsw i64 %.1.i.i912050, -4          ; 3 uses
  %i.bwi = icmp ugt i64 %i.bwh, 3
  br i1 %i.bwi, label %.lr.ph2051, label %.preheader1051, !llvm.loop !417

.lr.ph2059:                                       ; preds = %.lr.ph2059.prol.loopexit, %.lr.ph2059
  %.2.i.i942058 = phi i64 [ %i.bxh, %.lr.ph2059 ], [ %.2.i.i942058.unr, %.lr.ph2059.prol.loopexit ]
  %.220.i.i932057 = phi ptr [ %i.bxe, %.lr.ph2059 ], [ %.220.i.i932057.unr, %.lr.ph2059.prol.loopexit ] ; 9 uses
  %.223.i.i922056 = phi ptr [ %i.bxg, %.lr.ph2059 ], [ %.223.i.i922056.unr, %.lr.ph2059.prol.loopexit ] ; 9 uses
  %i.bwj = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 1
  %i.bwk = load i8, ptr %.220.i.i932057, align 1, !tbaa !100
  %i.bwl = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 1
  store i8 %i.bwk, ptr %.223.i.i922056, align 1, !tbaa !100
  %i.bwm = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 2
  %i.bwn = load i8, ptr %i.bwj, align 1, !tbaa !100
  %i.bwo = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 2
  store i8 %i.bwn, ptr %i.bwl, align 1, !tbaa !100
  %i.bwp = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 3
  %i.bwq = load i8, ptr %i.bwm, align 1, !tbaa !100
  %i.bwr = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 3
  store i8 %i.bwq, ptr %i.bwo, align 1, !tbaa !100
  %i.bws = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 4
  %i.bwt = load i8, ptr %i.bwp, align 1, !tbaa !100
  %i.bwu = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 4
  store i8 %i.bwt, ptr %i.bwr, align 1, !tbaa !100
  %i.bwv = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 5
  %i.bww = load i8, ptr %i.bws, align 1, !tbaa !100
  %i.bwx = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 5
  store i8 %i.bww, ptr %i.bwu, align 1, !tbaa !100
  %i.bwy = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 6
  %i.bwz = load i8, ptr %i.bwv, align 1, !tbaa !100
  %i.bxa = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 6
  store i8 %i.bwz, ptr %i.bwx, align 1, !tbaa !100
  %i.bxb = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 7
  %i.bxc = load i8, ptr %i.bwy, align 1, !tbaa !100
  %i.bxd = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 7
  store i8 %i.bxc, ptr %i.bxa, align 1, !tbaa !100
  %i.bxe = getelementptr inbounds nuw i8, ptr %.220.i.i932057, i64 8
  %i.bxf = load i8, ptr %i.bxb, align 1, !tbaa !100
  %i.bxg = getelementptr inbounds nuw i8, ptr %.223.i.i922056, i64 8 ; 2 uses
  store i8 %i.bxf, ptr %i.bxd, align 1, !tbaa !100
  %i.bxh = add nsw i64 %.2.i.i942058, -8          ; 2 uses
  %.not.i.i95.7 = icmp eq i64 %i.bxh, 0
  br i1 %.not.i.i95.7, label %write_str.exit744.i, label %.lr.ph2059, !llvm.loop !418

write_str.exit744.i:                              ; preds = %.preheader1037, %.lr.ph2059.prol.loopexit, %.lr.ph2059, %.preheader1023, %bb.gx, %.lr.ph2037.prol.loopexit, %bb.hl, %bb.je, %.lr.ph2087.prol.loopexit, %bb.js, %middle.block, %vec.epilog.middle.block, %.preheader1051
  %.8253.i659.i.lcssa.sink4202 = phi ptr [ %.8253.i659.i, %bb.hl ], [ %.lcssa5531.unr, %.lr.ph2087.prol.loopexit ], [ %.8253.i.i110, %bb.js ], [ %.2247.i.i102.lcssa, %.preheader1023 ], [ %i.bxg, %.lr.ph2059 ], [ %.lcssa5448.unr, %.lr.ph2037.prol.loopexit ], [ %.122.i.i89.lcssa, %.preheader1051 ], [ %i.bvw, %vec.epilog.middle.block ], [ %i.bvq, %middle.block ], [ %i.bni, %bb.je ], [ %i.baa, %bb.gx ], [ %.lcssa5461.unr, %.lr.ph2059.prol.loopexit ], [ %.2247.i651.i.lcssa, %.preheader1037 ] ; 4 uses
  %i.bxi = getelementptr inbounds nuw i8, ptr %.8253.i659.i.lcssa.sink4202, i64 1
  store i8 34, ptr %.8253.i659.i.lcssa.sink4202, align 1, !tbaa !100
  %i.bxj = select i1 %.not600.i, i8 44, i8 58
  %i.bxk = getelementptr inbounds nuw i8, ptr %.8253.i659.i.lcssa.sink4202, i64 2
  store i8 %i.bxj, ptr %i.bxi, align 1, !tbaa !100
  %i.bxl = select i1 %.not600.i, i8 10, i8 32
  %i.bxm = getelementptr inbounds nuw i8, ptr %.8253.i659.i.lcssa.sink4202, i64 3
  store i8 %i.bxl, ptr %i.bxk, align 1, !tbaa !100
  br label %bb.mm

bb.kp:                                            ; preds = %bb.fx
  %i.bxn = trunc i64 %.0688 to i32
  %i.bxo = and i32 %i.asb, %i.bxn
  %.not595.i = icmp ne i32 %i.bxo, 0              ; 2 uses
  %i.bxp = select i1 %.not595.i, i64 40, i64 %i.asd ; 2 uses
  %i.bxq = getelementptr inbounds nuw i8, ptr %.0528.i, i64 %i.bxp
  %.not596.i = icmp ult ptr %i.bxq, %.0498.i
  br i1 %.not596.i, label %bb.kr, label %bb.kq, !prof !62

bb.kq:                                            ; preds = %bb.kp
  %i.bxr = lshr i64 %.0489.i, 1
  %i.bxs = tail call i64 @llvm.umax.i64(i64 %i.bxr, i64 %i.bxp)
  %i.bxt = add i64 %i.bxs, 15
  %i.bxu = and i64 %i.bxt, -16
  %i.bxv = add i64 %i.bxu, %.0489.i               ; 4 uses
  %i.bxw = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0547.i, i64 noundef %.0489.i, i64 noundef %i.bxv) #33, !inline_history !409 ; 6 uses
  %.not597.i = icmp eq ptr %i.bxw, null
  br i1 %.not597.i, label %.loopexit1049, label %.thread787, !prof !45

.thread787:                                       ; preds = %bb.kq
  %i.bxx = ptrtoint ptr %.0509.i to i64
  %i.bxy = ptrtoint ptr %.0498.i to i64           ; 2 uses
  %i.bxz = sub i64 %i.bxx, %i.bxy                 ; 2 uses
  %i.bya = ptrtoint ptr %.0528.i to i64
  %i.byb = ptrtoint ptr %.0547.i to i64           ; 2 uses
  %i.byc = sub i64 %i.bya, %i.byb
  %i.byd = sub i64 %i.bxy, %i.byb
  %i.bye = sub i64 %i.bxv, %i.bxz
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bxw, i64 %i.bye ; 2 uses
  %i.byg = getelementptr inbounds nuw i8, ptr %i.bxw, i64 %i.byd
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.byf, ptr nonnull align 1 %i.byg, i64 %i.bxz, i1 false)
  %i.byh = getelementptr inbounds nuw i8, ptr %i.bxw, i64 %i.byc
  %i.byi = getelementptr inbounds nuw i8, ptr %i.bxw, i64 %i.bxv
  br label %bb.kr

bb.kr:                                            ; preds = %.thread787, %bb.kp
  %.4551.i = phi ptr [ %i.bxw, %.thread787 ], [ %.0547.i, %bb.kp ] ; 2 uses
  %.5533.i = phi ptr [ %i.byh, %.thread787 ], [ %.0528.i, %bb.kp ] ; 3 uses
  %.4513.i = phi ptr [ %i.byi, %.thread787 ], [ %.0509.i, %bb.kp ]
  %.4502.i = phi ptr [ %i.byf, %.thread787 ], [ %.0498.i, %bb.kp ]
  %.2491.i = phi i64 [ %i.bxv, %.thread787 ], [ %.0489.i, %bb.kp ]
  %.not.i771.i2004 = select i1 %.not595.i, i1 true, i1 %.not.i771.i20042944
  br i1 %.not.i771.i2004, label %write_indent.exit772.i, label %select.unfold793.preheader

select.unfold793.preheader:                       ; preds = %bb.kr
  br i1 %lcmp.mod.not, label %select.unfold793.prol.loopexit, label %select.unfold793.prol

select.unfold793.prol:                            ; preds = %select.unfold793.preheader, %select.unfold793.prol
  %.0.i770.i2006.prol = phi ptr [ %i.byk, %select.unfold793.prol ], [ %.5533.i, %select.unfold793.preheader ] ; 2 uses
  %.04.i769.i2005.prol = phi i64 [ %i.byj, %select.unfold793.prol ], [ %.0487.i.ph, %select.unfold793.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %select.unfold793.prol ], [ 0, %select.unfold793.preheader ]
  %i.byj = add i64 %.04.i769.i2005.prol, -1       ; 2 uses
  store i32 538976288, ptr %.0.i770.i2006.prol, align 1
  %i.byk = getelementptr inbounds nuw i8, ptr %.0.i770.i2006.prol, i64 %i.arf ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %select.unfold793.prol.loopexit, label %select.unfold793.prol, !llvm.loop !419

select.unfold793.prol.loopexit:                   ; preds = %select.unfold793.prol, %select.unfold793.preheader
  %.lcssa5377.unr = phi ptr [ poison, %select.unfold793.preheader ], [ %i.byk, %select.unfold793.prol ]
  %.0.i770.i2006.unr = phi ptr [ %.5533.i, %select.unfold793.preheader ], [ %i.byk, %select.unfold793.prol ]
  %.04.i769.i2005.unr = phi i64 [ %.0487.i.ph, %select.unfold793.preheader ], [ %i.byj, %select.unfold793.prol ]
  br i1 %i.asg, label %write_indent.exit772.i, label %select.unfold793

select.unfold793:                                 ; preds = %select.unfold793.prol.loopexit, %select.unfold793
  %.0.i770.i2006 = phi ptr [ %i.byt, %select.unfold793 ], [ %.0.i770.i2006.unr, %select.unfold793.prol.loopexit ] ; 2 uses
  %.04.i769.i2005 = phi i64 [ %i.bys, %select.unfold793 ], [ %.04.i769.i2005.unr, %select.unfold793.prol.loopexit ]
  store i32 538976288, ptr %.0.i770.i2006, align 1
  %i.byl = getelementptr inbounds nuw i8, ptr %.0.i770.i2006, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.byl, align 1
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byl, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.bym, align 1
  %i.byn = getelementptr inbounds nuw i8, ptr %i.bym, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.byn, align 1
  %i.byo = getelementptr inbounds nuw i8, ptr %i.byn, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.byo, align 1
  %i.byp = getelementptr inbounds nuw i8, ptr %i.byo, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.byp, align 1
  %i.byq = getelementptr inbounds nuw i8, ptr %i.byp, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.byq, align 1
  %i.byr = getelementptr inbounds nuw i8, ptr %i.byq, i64 %i.arf ; 2 uses
  %i.bys = add i64 %.04.i769.i2005, -8            ; 2 uses
  store i32 538976288, ptr %i.byr, align 1
  %i.byt = getelementptr inbounds nuw i8, ptr %i.byr, i64 %i.arf ; 2 uses
  %.not.i771.i.7 = icmp eq i64 %i.bys, 0
  br i1 %.not.i771.i.7, label %write_indent.exit772.i, label %select.unfold793, !llvm.loop !27

write_indent.exit772.i:                           ; preds = %select.unfold793.prol.loopexit, %select.unfold793, %bb.kr
  %.0.i770.i.lcssa = phi ptr [ %.5533.i, %bb.kr ], [ %.lcssa5377.unr, %select.unfold793.prol.loopexit ], [ %i.byt, %select.unfold793 ] ; 6 uses
  %i.byu = load i64, ptr %.0570.i, align 8, !tbaa !99 ; 3 uses
  %i.byv = and i64 %i.byu, 16
  %.not.i745.i = icmp eq i64 %i.byv, 0
  %i.byw = getelementptr inbounds nuw i8, ptr %.0570.i, i64 8
  %i.byx = load i64, ptr %i.byw, align 8, !tbaa !100 ; 7 uses
  br i1 %.not.i745.i, label %bb.ks, label %bb.ll

bb.ks:                                            ; preds = %write_indent.exit772.i
  %i.byy = sub i64 0, %i.byx
  %i.byz = lshr i64 %i.byu, 3
  %.lobit.i.i40 = lshr i64 %i.byx, 63
  %i.bza = and i64 %.lobit.i.i40, %i.byz          ; 2 uses
  store i8 45, ptr %.0.i770.i.lcssa, align 1, !tbaa !100
  %.not37.i.i41 = icmp eq i64 %i.bza, 0
  %i.bzb = select i1 %.not37.i.i41, i64 %i.byx, i64 %i.byy ; 26 uses
  %i.bzc = getelementptr inbounds nuw i8, ptr %.0.i770.i.lcssa, i64 %i.bza ; 20 uses
  %i.bzd = icmp ult i64 %i.bzb, 100000000
  br i1 %i.bzd, label %bb.kt, label %bb.la

bb.kt:                                            ; preds = %bb.ks
  %i.bze = trunc nuw nsw i64 %i.bzb to i32        ; 4 uses
  %i.bzf = icmp samesign ult i64 %i.bzb, 100
  br i1 %i.bzf, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %i.bzg = icmp samesign ult i64 %i.bzb, 10       ; 2 uses
  %i.bzh = shl nuw nsw i64 %i.bzb, 1
  %i.bzi = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.bzh
  %.neg70.i.i.i86 = sext i1 %i.bzg to i64
  %i.bzj = zext i1 %i.bzg to i64
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bzi, i64 %i.bzj
  %i.bzl = load i16, ptr %i.bzk, align 1
  store i16 %i.bzl, ptr %i.bzc, align 1
  %i.bzm = getelementptr inbounds i8, ptr %i.bzc, i64 %.neg70.i.i.i86
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.bzm, i64 2
  br label %write_num.exit.i37.thread

bb.kv:                                            ; preds = %bb.kt
  %i.bzo = icmp samesign ult i64 %i.bzb, 10000
  br i1 %i.bzo, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %bb.kv
  %i.bzp = mul nuw nsw i32 %i.bze, 5243
  %i.bzq = lshr i32 %i.bzp, 19                    ; 2 uses
  %.neg68.i.i.i84 = mul nsw i32 %i.bzq, -100
  %i.bzr = add nsw i32 %.neg68.i.i.i84, %i.bze
  %i.bzs = icmp samesign ult i64 %i.bzb, 1000     ; 2 uses
  %i.bzt = shl nuw nsw i32 %i.bzq, 1
  %i.bzu = zext nneg i32 %i.bzt to i64
  %i.bzv = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.bzu
  %.neg69.i.i.i85 = sext i1 %i.bzs to i64
  %i.bzw = zext i1 %i.bzs to i64
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.bzv, i64 %i.bzw
  %i.bzy = load i16, ptr %i.bzx, align 1
  store i16 %i.bzy, ptr %i.bzc, align 1
  %i.bzz = getelementptr inbounds i8, ptr %i.bzc, i64 %.neg69.i.i.i85 ; 2 uses
  %i.caa = getelementptr inbounds nuw i8, ptr %i.bzz, i64 2
  %i.cab = shl nsw i32 %i.bzr, 1
  %i.cac = zext i32 %i.cab to i64
  %i.cad = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.cac
  %i.cae = load i16, ptr %i.cad, align 2
  store i16 %i.cae, ptr %i.caa, align 1
  %i.caf = getelementptr inbounds nuw i8, ptr %i.bzz, i64 4
  br label %write_num.exit.i37.thread

bb.kx:                                            ; preds = %bb.kv
  %i.cag = icmp samesign ult i64 %i.bzb, 1000000
  br i1 %i.cag, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kx
  %i.cah = mul nuw nsw i64 %i.bzb, 429497
  %i.cai = lshr i64 %i.cah, 32                    ; 2 uses
  %i.caj = trunc nuw nsw i64 %i.cai to i32
  %.neg65.i.i.i81 = mul nsw i32 %i.caj, -10000
  %i.cak = add nsw i32 %.neg65.i.i.i81, %i.bze    ; 2 uses
  %i.cal = mul i32 %i.cak, 5243
  %i.cam = lshr i32 %i.cal, 19                    ; 2 uses
  %.neg66.i.i.i82 = mul nsw i32 %i.cam, -100
  %i.can = add nsw i32 %.neg66.i.i.i82, %i.cak
  %i.cao = icmp samesign ult i64 %i.bzb, 100000   ; 2 uses
  %i.cap = shl nuw nsw i64 %i.cai, 1
  %i.caq = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.cap
  %.neg67.i.i.i83 = sext i1 %i.cao to i64
  %i.car = zext i1 %i.cao to i64
  %i.cas = getelementptr inbounds nuw i8, ptr %i.caq, i64 %i.car
  %i.cat = load i16, ptr %i.cas, align 1
  store i16 %i.cat, ptr %i.bzc, align 1
  %i.cau = getelementptr inbounds i8, ptr %i.bzc, i64 %.neg67.i.i.i83 ; 3 uses
  %i.cav = getelementptr inbounds nuw i8, ptr %i.cau, i64 2
  %i.caw = shl nuw nsw i32 %i.cam, 1
  %i.cax = zext nneg i32 %i.caw to i64
  %i.cay = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.cax
  %i.caz = load i16, ptr %i.cay, align 2
  store i16 %i.caz, ptr %i.cav, align 1
  %i.cba = getelementptr inbounds nuw i8, ptr %i.cau, i64 4
  %i.cbb = shl nsw i32 %i.can, 1
  %i.cbc = zext i32 %i.cbb to i64
  %i.cbd = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.cbc
  %i.cbe = load i16, ptr %i.cbd, align 2
  store i16 %i.cbe, ptr %i.cba, align 1
  %i.cbf = getelementptr inbounds nuw i8, ptr %i.cau, i64 6
  br label %write_num.exit.i37.thread

bb.kz:                                            ; preds = %bb.kx
  %i.cbg = mul nuw nsw i64 %i.bzb, 109951163
  %i.cbh = lshr i64 %i.cbg, 40
  %i.cbi = trunc nuw nsw i64 %i.cbh to i32        ; 3 uses
  %.neg.i42.i.i75 = mul nsw i32 %i.cbi, -10000
end_hunk_17
begin_hunk_18_@yyjson_mut_write_opts_impl:bb.a
  store ptr null, ptr %spec.store.select.sroa.sel444.v.sroa.sel.v.sroa.sel, align 8, !tbaa !149
  br label %yyjson_mut_write_single.exit

.loopexit1049:                                    ; preds = %bb.ly, %bb.mk, %bb.mh, %bb.me, %bb.lv, %bb.kq, %bb.fz, %bb.mo, %bb.mt, %get_enc_table_with_flag.exit.i33
  %.22569.i = phi ptr [ %.18565.i, %bb.mt ], [ %.16563.i, %bb.mo ], [ null, %get_enc_table_with_flag.exit.i33 ], [ %.0547.i, %bb.mk ], [ %.0547.i, %bb.fz ], [ %.0547.i, %bb.kq ], [ %.0547.i, %bb.lv ], [ %.0547.i, %bb.me ], [ %.0547.i, %bb.mh ], [ %.0547.i, %bb.ly ] ; 2 uses
  br i1 %.not29, label %.cont405, label %.else407

.else407:                                         ; preds = %.loopexit1049
  store i64 0, ptr %4, align 8, !tbaa !106
  br label %.cont405

.cont405:                                         ; preds = %.loopexit1049, %.else407
  store i32 2, ptr %spec.store.select, align 8, !tbaa !150
  %spec.store.select.sroa.sel441.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel441.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel441.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel441.v.sroa.sel.v.sroa.sel, align 8, !tbaa !149
  %.not613.i = icmp eq ptr %.22569.i, null
  br i1 %.not613.i, label %yyjson_mut_write_single.exit, label %bb.mw

bb.mw:                                            ; preds = %.cont405
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.22569.i) #33, !inline_history !409
  br label %yyjson_mut_write_single.exit

bb.mx:                                            ; preds = %bb.mc
  br i1 %.not29, label %bb.my, label %.else395

.else395:                                         ; preds = %bb.mx
  store i64 0, ptr %4, align 8, !tbaa !106
  br label %bb.my

bb.my:                                            ; preds = %.else395, %bb.mx
  store i32 3, ptr %spec.store.select, align 8, !tbaa !150
  %spec.store.select.sroa.sel453.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel453.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel453.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.110, ptr %spec.store.select.sroa.sel453.v.sroa.sel.v.sroa.sel, align 8, !tbaa !149
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.0547.i) #33, !inline_history !409
  br label %yyjson_mut_write_single.exit

bb.mz:                                            ; preds = %write_num.exit.i37
  br i1 %.not29, label %bb.na, label %.else401

.else401:                                         ; preds = %bb.mz
  store i64 0, ptr %4, align 8, !tbaa !106
  br label %bb.na

bb.na:                                            ; preds = %.else401, %bb.mz
  store i32 4, ptr %spec.store.select, align 8, !tbaa !150
  %spec.store.select.sroa.sel447.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel447.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel447.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.111, ptr %spec.store.select.sroa.sel447.v.sroa.sel.v.sroa.sel, align 8, !tbaa !149
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.4551.i) #33, !inline_history !409
  br label %yyjson_mut_write_single.exit

.loopexit1021:                                    ; preds = %.thread755, %.thread745, %.thread765, %.thread775
  br i1 %.not29, label %bb.nb, label %.else398

.else398:                                         ; preds = %.loopexit1021
  store i64 0, ptr %4, align 8, !tbaa !106
  br label %bb.nb

bb.nb:                                            ; preds = %.else398, %.loopexit1021
  store i32 7, ptr %spec.store.select, align 8, !tbaa !150
  %spec.store.select.sroa.sel450.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel450.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel450.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.76, ptr %spec.store.select.sroa.sel450.v.sroa.sel.v.sroa.sel, align 8, !tbaa !149
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.2549.i) #33, !inline_history !409
  br label %yyjson_mut_write_single.exit

bb.nc:                                            ; preds = %bb.fq
  br i1 %.not942, label %bb.ne, label %bb.nd, !prof !62

bb.nd:                                            ; preds = %bb.nc
  %enc_table_esc_slash.enc_table_esc.i.i380 = select i1 %.not943, ptr @enc_table_esc, ptr @enc_table_esc_slash, !prof !62
  br label %get_enc_table_with_flag.exit.i196

bb.ne:                                            ; preds = %bb.nc
  %enc_table_cpy_slash.enc_table_cpy.i.i195 = select i1 %.not943, ptr @enc_table_cpy, ptr @enc_table_cpy_slash, !prof !62
  br label %get_enc_table_with_flag.exit.i196

get_enc_table_with_flag.exit.i196:                ; preds = %bb.ne, %bb.nd
  %.0.i477.i = phi ptr [ %enc_table_esc_slash.enc_table_esc.i.i380, %bb.nd ], [ %enc_table_cpy_slash.enc_table_cpy.i.i195, %bb.ne ] ; 28 uses
  %i.cww = icmp eq ptr %.0.i477.i, @enc_table_cpy
  %i.cwx = and i32 %2, 32
  %.not945 = icmp eq i32 %i.cwx, 0                ; 4 uses
  %i.cwy = and i32 %2, 128
  %.not946 = icmp eq i32 %i.cwy, 0
  %i.cwz = mul i64 %1, 18
  %i.cxa = add i64 %i.cwz, 78
  %i.cxb = and i64 %i.cxa, -16                    ; 3 uses
  %i.cxc = tail call ptr %.sroa.0486.0(ptr noundef %.sroa.9.0, i64 noundef %i.cxb) #33, !inline_history !426 ; 5 uses
  %.not.i197 = icmp eq ptr %i.cxc, null
  br i1 %.not.i197, label %.loopexit1019, label %bb.nf

bb.nf:                                            ; preds = %get_enc_table_with_flag.exit.i196
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.cxc, i64 %i.cxb ; 2 uses
  %i.cxe = load i64, ptr %0, align 8, !tbaa !99   ; 2 uses
  %i.cxf = and i64 %i.cxe, 7
  %i.cxg = icmp eq i64 %i.cxf, 7                  ; 4 uses
  %i.cxh = zext i1 %i.cxg to i8
  %i.cxi = lshr i64 %i.cxe, 8
  %i.cxj = zext i1 %i.cxg to i64
  %i.cxk = shl nuw nsw i64 %i.cxi, %i.cxj
  %i.cxl = select i1 %i.cxg, i8 123, i8 91
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.cxc, i64 1
  store i8 %i.cxl, ptr %i.cxc, align 1, !tbaa !100
  %i.cxn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cxo = load ptr, ptr %i.cxn, align 8, !tbaa !100 ; 2 uses
  br i1 %i.cxg, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %bb.nf
  %i.cxp = getelementptr inbounds nuw i8, ptr %i.cxo, i64 16
  %i.cxq = load ptr, ptr %i.cxp, align 8, !tbaa !104
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %bb.nf
  %.pn.i198 = phi ptr [ %i.cxq, %bb.ng ], [ %i.cxo, %bb.nf ]
  %i.cxr = lshr i32 %2, 28
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.nh
  %.0694.ph = phi ptr [ %0, %bb.nh ], [ %.0694.ph.be, %.outer.backedge ] ; 2 uses
  %.0693.ph = phi i64 [ %i.cxk, %bb.nh ], [ %.0693.ph.be, %.outer.backedge ]
  %.0691.ph = phi i8 [ %i.cxh, %bb.nh ], [ %.0691.ph.be, %.outer.backedge ] ; 3 uses
  %.pn.i198.pn = phi ptr [ %.pn.i198, %bb.nh ], [ %.pn.i198.pn.be, %.outer.backedge ]
  %.0405.i.ph = phi ptr [ %i.cxc, %bb.nh ], [ %.0405.i.ph.be, %.outer.backedge ]
  %.0390.i.ph = phi ptr [ %i.cxm, %bb.nh ], [ %.0390.i.ph.be, %.outer.backedge ]
  %.0376.i.ph = phi ptr [ %i.cxd, %bb.nh ], [ %.0376.i.ph.be, %.outer.backedge ]
  %.0368.i.ph = phi ptr [ %i.cxd, %bb.nh ], [ %.0368.i.ph.be, %.outer.backedge ]
  %.0361.i.ph = phi i64 [ %i.cxb, %bb.nh ], [ %.0361.i.ph.be, %.outer.backedge ]
  %i.cxs = zext nneg i8 %.0691.ph to i32
  br label %bb.ni

bb.ni:                                            ; preds = %bb.tt, %.outer
  %.0693 = phi i64 [ %.0693.ph, %.outer ], [ %i.euh, %bb.tt ] ; 3 uses
  %.0423.i.pn = phi ptr [ %.pn.i198.pn, %.outer ], [ %.0423.i, %bb.tt ]
  %.0405.i = phi ptr [ %.0405.i.ph, %.outer ], [ %.13418.i, %bb.tt ] ; 25 uses
  %.0390.i = phi ptr [ %.0390.i.ph, %.outer ], [ %.14404.i, %bb.tt ] ; 18 uses
  %.0376.i = phi ptr [ %.0376.i.ph, %.outer ], [ %.13389.i, %bb.tt ] ; 12 uses
  %.0368.i = phi ptr [ %.0368.i.ph, %.outer ], [ %.13.i205, %bb.tt ] ; 18 uses
  %.0361.i = phi i64 [ %.0361.i.ph, %.outer ], [ %.7.i206, %bb.tt ] ; 24 uses
  %.0423.i.in = getelementptr inbounds nuw i8, ptr %.0423.i.pn, i64 16
  %.0423.i = load ptr, ptr %.0423.i.in, align 8, !tbaa !104 ; 11 uses
  %i.cxt = load i64, ptr %.0423.i, align 8, !tbaa !99 ; 7 uses
  %i.cxu = trunc i64 %i.cxt to i8                 ; 2 uses
  %i.cxv = and i8 %i.cxu, 7                       ; 3 uses
  switch i8 %i.cxv, label %bb.td [
    i8 5, label %bb.nj
    i8 4, label %bb.sa
  ]

bb.nj:                                            ; preds = %bb.ni
  %i.cxw = trunc i64 %.0693 to i32
  %i.cxx = xor i32 %i.cxw, -1
  %i.cxy = and i32 %i.cxs, %i.cxx
  %.not446.i = icmp eq i32 %i.cxy, 0
  %i.cxz = lshr i64 %i.cxt, 8                     ; 9 uses
  %i.cya = getelementptr inbounds nuw i8, ptr %.0423.i, i64 8
  %i.cyb = load ptr, ptr %i.cya, align 8, !tbaa !100 ; 7 uses
  %i.cyc = ptrtoaddr ptr %i.cyb to i64            ; 4 uses
  %i.cyd = mul nuw nsw i64 %i.cxz, 6
  %i.cye = add nuw nsw i64 %i.cyd, 16             ; 2 uses
  %i.cyf = getelementptr inbounds nuw i8, ptr %.0390.i, i64 %i.cye
  %.not447.i = icmp ult ptr %i.cyf, %.0368.i
  br i1 %.not447.i, label %bb.nl, label %bb.nk, !prof !62

bb.nk:                                            ; preds = %bb.nj
  %i.cyg = lshr i64 %.0361.i, 1
  %i.cyh = tail call i64 @llvm.umax.i64(i64 %i.cyg, i64 %i.cye)
  %i.cyi = add nuw i64 %i.cyh, 15
  %i.cyj = and i64 %i.cyi, -16
  %i.cyk = add i64 %i.cyj, %.0361.i               ; 4 uses
  %i.cyl = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0405.i, i64 noundef %.0361.i, i64 noundef %i.cyk) #33, !inline_history !426 ; 6 uses
  %.not448.i = icmp eq ptr %i.cyl, null
  br i1 %.not448.i, label %.loopexit1019, label %.thread842, !prof !45

.thread842:                                       ; preds = %bb.nk
  %i.cym = ptrtoint ptr %.0376.i to i64
  %i.cyn = ptrtoint ptr %.0368.i to i64           ; 2 uses
  %i.cyo = sub i64 %i.cym, %i.cyn                 ; 2 uses
  %i.cyp = ptrtoint ptr %.0390.i to i64
  %i.cyq = ptrtoint ptr %.0405.i to i64           ; 2 uses
  %i.cyr = sub i64 %i.cyp, %i.cyq
  %i.cys = sub i64 %i.cyn, %i.cyq
  %i.cyt = sub i64 %i.cyk, %i.cyo
  %i.cyu = getelementptr inbounds nuw i8, ptr %i.cyl, i64 %i.cyt ; 2 uses
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.cyl, i64 %i.cys
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cyu, ptr nonnull align 1 %i.cyv, i64 %i.cyo, i1 false)
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.cyl, i64 %i.cyr
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.cyl, i64 %i.cyk
  br label %bb.nl

bb.nl:                                            ; preds = %.thread842, %bb.nj
  %.2407.i = phi ptr [ %i.cyl, %.thread842 ], [ %.0405.i, %bb.nj ] ; 2 uses
  %.2392.i = phi ptr [ %i.cyw, %.thread842 ], [ %.0390.i, %bb.nj ] ; 5 uses
  %.2378.i = phi ptr [ %i.cyx, %.thread842 ], [ %.0376.i, %bb.nj ]
  %.2370.i = phi ptr [ %i.cyu, %.thread842 ], [ %.0368.i, %bb.nj ]
  %.1362.i = phi i64 [ %i.cyk, %.thread842 ], [ %.0361.i, %bb.nj ]
  br i1 %i.cww, label %bb.ps, label %.split.i262, !prof !62

.split.i262:                                      ; preds = %bb.nl
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.cyb, i64 %i.cxz ; 3 uses
  store i8 34, ptr %.2392.i, align 1, !tbaa !100
  %i.cyz = ptrtoint ptr %i.cyy to i64             ; 4 uses
  %i.cza = add i64 %i.cxz, %i.cyc
  br label %bb.nm

bb.nm:                                            ; preds = %bb.ox, %.split.i262
  %.pn.i483.i = phi ptr [ %.2392.i, %.split.i262 ], [ %.8253.i496.i, %bb.ox ]
  %.0238.i484.i = phi ptr [ %i.cyb, %.split.i262 ], [ %i.dgt, %bb.ox ] ; 3 uses
  %.0245.i485.i = getelementptr inbounds nuw i8, ptr %.pn.i483.i, i64 1 ; 2 uses
  %i.czb = ptrtoint ptr %.0238.i484.i to i64
  %i.czc = sub i64 %i.cyz, %i.czb                 ; 2 uses
  %i.czd = icmp sgt i64 %i.czc, 15
  br i1 %i.czd, label %.lr.ph2143, label %.preheader1006

.preheader1006:                                   ; preds = %bb.oc, %bb.nm
  %.pre-phi2861 = phi i64 [ %i.czc, %bb.nm ], [ %i.dcj, %bb.oc ]
  %.1246.i486.i.lcssa = phi ptr [ %.0245.i485.i, %bb.nm ], [ %i.dcg, %bb.oc ] ; 2 uses
  %.1239.i487.i.lcssa = phi ptr [ %.0238.i484.i, %bb.nm ], [ %i.dch, %bb.oc ] ; 2 uses
  %i.cze = icmp sgt i64 %.pre-phi2861, 3
  br i1 %i.cze, label %.lr.ph2149, label %.preheader1004

.lr.ph2143:                                       ; preds = %bb.nm, %bb.oc
  %.1239.i487.i2141 = phi ptr [ %i.dch, %bb.oc ], [ %.0238.i484.i, %bb.nm ] ; 46 uses
  %.1246.i486.i2140 = phi ptr [ %i.dcg, %bb.oc ], [ %.0245.i485.i, %bb.nm ] ; 30 uses
  %i.czf = load i8, ptr %.1239.i487.i2141, align 1, !tbaa !100 ; 2 uses
  %i.czg = zext i8 %i.czf to i64
  %i.czh = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.czg
  %i.czi = load i8, ptr %i.czh, align 1, !tbaa !100
  %.not272.i565.i = icmp eq i8 %i.czi, 0
  br i1 %.not272.i565.i, label %bb.nn, label %.preheader1001.preheader, !prof !62

bb.nn:                                            ; preds = %.lr.ph2143
  %i.czj = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 1
  %i.czk = load i8, ptr %i.czj, align 1, !tbaa !100
  %i.czl = zext i8 %i.czk to i64
  %i.czm = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.czl
  %i.czn = load i8, ptr %i.czm, align 1, !tbaa !100
  %.not273.i566.i = icmp eq i8 %i.czn, 0
  br i1 %.not273.i566.i, label %bb.no, label %.loopexit1008, !prof !62

bb.no:                                            ; preds = %bb.nn
  %i.czo = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 2
  %i.czp = load i8, ptr %i.czo, align 1, !tbaa !100
  %i.czq = zext i8 %i.czp to i64
  %i.czr = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.czq
  %i.czs = load i8, ptr %i.czr, align 1, !tbaa !100
  %.not274.i567.i = icmp eq i8 %i.czs, 0
  br i1 %.not274.i567.i, label %bb.np, label %.loopexit1009, !prof !62

bb.np:                                            ; preds = %bb.no
  %i.czt = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 3
  %i.czu = load i8, ptr %i.czt, align 1, !tbaa !100
  %i.czv = zext i8 %i.czu to i64
  %i.czw = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.czv
  %i.czx = load i8, ptr %i.czw, align 1, !tbaa !100
  %.not275.i568.i = icmp eq i8 %i.czx, 0
  br i1 %.not275.i568.i, label %bb.nq, label %.loopexit1010, !prof !62

bb.nq:                                            ; preds = %bb.np
  %i.czy = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 4
  %i.czz = load i8, ptr %i.czy, align 1, !tbaa !100
  %i.daa = zext i8 %i.czz to i64
  %i.dab = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.daa
  %i.dac = load i8, ptr %i.dab, align 1, !tbaa !100
  %.not276.i569.i = icmp eq i8 %i.dac, 0
  br i1 %.not276.i569.i, label %bb.nr, label %bb.oj, !prof !62

bb.nr:                                            ; preds = %bb.nq
  %i.dad = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 5
  %i.dae = load i8, ptr %i.dad, align 1, !tbaa !100
  %i.daf = zext i8 %i.dae to i64
  %i.dag = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.daf
  %i.dah = load i8, ptr %i.dag, align 1, !tbaa !100
  %.not277.i570.i = icmp eq i8 %i.dah, 0
  br i1 %.not277.i570.i, label %bb.ns, label %bb.ok, !prof !62

bb.ns:                                            ; preds = %bb.nr
  %i.dai = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 6
  %i.daj = load i8, ptr %i.dai, align 1, !tbaa !100
  %i.dak = zext i8 %i.daj to i64
  %i.dal = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dak
  %i.dam = load i8, ptr %i.dal, align 1, !tbaa !100
  %.not278.i571.i = icmp eq i8 %i.dam, 0
  br i1 %.not278.i571.i, label %bb.nt, label %bb.ol, !prof !62

bb.nt:                                            ; preds = %bb.ns
  %i.dan = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 7
  %i.dao = load i8, ptr %i.dan, align 1, !tbaa !100
  %i.dap = zext i8 %i.dao to i64
  %i.daq = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dap
  %i.dar = load i8, ptr %i.daq, align 1, !tbaa !100
  %.not279.i572.i = icmp eq i8 %i.dar, 0
  br i1 %.not279.i572.i, label %bb.nu, label %bb.om, !prof !62

bb.nu:                                            ; preds = %bb.nt
  %i.das = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 8
  %i.dat = load i8, ptr %i.das, align 1, !tbaa !100
  %i.dau = zext i8 %i.dat to i64
  %i.dav = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dau
  %i.daw = load i8, ptr %i.dav, align 1, !tbaa !100
  %.not280.i573.i = icmp eq i8 %i.daw, 0
  br i1 %.not280.i573.i, label %bb.nv, label %bb.on, !prof !62

bb.nv:                                            ; preds = %bb.nu
  %i.dax = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 9
  %i.day = load i8, ptr %i.dax, align 1, !tbaa !100
  %i.daz = zext i8 %i.day to i64
  %i.dba = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.daz
  %i.dbb = load i8, ptr %i.dba, align 1, !tbaa !100
  %.not281.i574.i = icmp eq i8 %i.dbb, 0
  br i1 %.not281.i574.i, label %bb.nw, label %bb.oo, !prof !62

bb.nw:                                            ; preds = %bb.nv
  %i.dbc = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 10
  %i.dbd = load i8, ptr %i.dbc, align 1, !tbaa !100
  %i.dbe = zext i8 %i.dbd to i64
  %i.dbf = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dbe
  %i.dbg = load i8, ptr %i.dbf, align 1, !tbaa !100
  %.not282.i575.i = icmp eq i8 %i.dbg, 0
  br i1 %.not282.i575.i, label %bb.nx, label %bb.op, !prof !62

bb.nx:                                            ; preds = %bb.nw
  %i.dbh = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 11
  %i.dbi = load i8, ptr %i.dbh, align 1, !tbaa !100
  %i.dbj = zext i8 %i.dbi to i64
  %i.dbk = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dbj
  %i.dbl = load i8, ptr %i.dbk, align 1, !tbaa !100
  %.not283.i576.i = icmp eq i8 %i.dbl, 0
  br i1 %.not283.i576.i, label %bb.ny, label %bb.oq, !prof !62

bb.ny:                                            ; preds = %bb.nx
  %i.dbm = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 12
  %i.dbn = load i8, ptr %i.dbm, align 1, !tbaa !100
  %i.dbo = zext i8 %i.dbn to i64
  %i.dbp = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dbo
  %i.dbq = load i8, ptr %i.dbp, align 1, !tbaa !100
  %.not284.i577.i = icmp eq i8 %i.dbq, 0
  br i1 %.not284.i577.i, label %bb.nz, label %bb.or, !prof !62

bb.nz:                                            ; preds = %bb.ny
  %i.dbr = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 13
  %i.dbs = load i8, ptr %i.dbr, align 1, !tbaa !100
  %i.dbt = zext i8 %i.dbs to i64
  %i.dbu = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dbt
  %i.dbv = load i8, ptr %i.dbu, align 1, !tbaa !100
  %.not285.i578.i = icmp eq i8 %i.dbv, 0
  br i1 %.not285.i578.i, label %bb.oa, label %bb.os, !prof !62

bb.oa:                                            ; preds = %bb.nz
  %i.dbw = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 14
  %i.dbx = load i8, ptr %i.dbw, align 1, !tbaa !100
  %i.dby = zext i8 %i.dbx to i64
  %i.dbz = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dby
  %i.dca = load i8, ptr %i.dbz, align 1, !tbaa !100
  %.not286.i579.i = icmp eq i8 %i.dca, 0
  br i1 %.not286.i579.i, label %bb.ob, label %bb.ot, !prof !62

bb.ob:                                            ; preds = %bb.oa
  %i.dcb = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 15
  %i.dcc = load i8, ptr %i.dcb, align 1, !tbaa !100
  %i.dcd = zext i8 %i.dcc to i64
  %i.dce = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dcd
  %i.dcf = load i8, ptr %i.dce, align 1, !tbaa !100
  %.not287.i580.i = icmp eq i8 %i.dcf, 0
  br i1 %.not287.i580.i, label %bb.oc, label %bb.ou, !prof !62

bb.oc:                                            ; preds = %bb.ob
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i486.i2140, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i487.i2141, i64 16, i1 false)
  %i.dcg = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 16 ; 2 uses
  %i.dch = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 16 ; 3 uses
  %i.dci = ptrtoint ptr %i.dch to i64
  %i.dcj = sub i64 %i.cyz, %i.dci                 ; 2 uses
  %i.dck = icmp sgt i64 %i.dcj, 15
  br i1 %i.dck, label %.lr.ph2143, label %.preheader1006, !llvm.loop !23

.preheader1004:                                   ; preds = %bb.oh, %.preheader1006
  %.2247.i488.i.lcssa = phi ptr [ %.1246.i486.i.lcssa, %.preheader1006 ], [ %i.dds, %bb.oh ] ; 3 uses
  %.2240.i489.i.lcssa = phi ptr [ %.1239.i487.i.lcssa, %.preheader1006 ], [ %i.ddt, %bb.oh ] ; 5 uses
  %i.dcl = icmp ugt ptr %i.cyy, %.2240.i489.i.lcssa
  br i1 %i.dcl, label %.lr.ph2154.preheader, label %write_str.exit581.i

.lr.ph2154.preheader:                             ; preds = %.preheader1004
  %.2240.i489.i.lcssa2779 = ptrtoaddr ptr %.2240.i489.i.lcssa to i64 ; 2 uses
  %i.dcm = getelementptr i8, ptr %.2240.i489.i.lcssa, i64 %i.cxz
  %scevgep2778 = getelementptr i8, ptr %i.dcm, i64 %i.cyc
  %i.dcn = sub i64 0, %.2240.i489.i.lcssa2779
  %scevgep2780 = getelementptr i8, ptr %scevgep2778, i64 %i.dcn
  %i.dco = sub i64 %i.cza, %.2240.i489.i.lcssa2779
  %i.dcp = freeze i64 %i.dco                      ; 2 uses
  %i.dcq = add i64 %i.dcp, -1
  %xtraiter5645 = and i64 %i.dcp, 3               ; 2 uses
  %lcmp.mod5646.not = icmp eq i64 %xtraiter5645, 0
  br i1 %lcmp.mod5646.not, label %.lr.ph2154.prol.loopexit, label %.lr.ph2154.prol

.lr.ph2154.prol:                                  ; preds = %.lr.ph2154.preheader, %bb.od
  %.3241.i491.i2153.prol = phi ptr [ %i.dcv, %bb.od ], [ %.2240.i489.i.lcssa, %.lr.ph2154.preheader ] ; 3 uses
  %.3248.i490.i2152.prol = phi ptr [ %i.dcw, %bb.od ], [ %.2247.i488.i.lcssa, %.lr.ph2154.preheader ] ; 3 uses
  %prol.iter5647 = phi i64 [ %prol.iter5647.next, %bb.od ], [ 0, %.lr.ph2154.preheader ]
  %i.dcr = load i8, ptr %.3241.i491.i2153.prol, align 1, !tbaa !100 ; 2 uses
  %i.dcs = zext i8 %i.dcr to i64
end_hunk_18
begin_hunk_19_@yyjson_mut_write_opts_impl:bb.a
  %i.ddg = load i8, ptr %i.ddf, align 1, !tbaa !100
  %.not269.i556.i = icmp eq i8 %i.ddg, 0
  br i1 %.not269.i556.i, label %bb.of, label %.loopexit1008, !prof !62

bb.of:                                            ; preds = %bb.oe
  %i.ddh = getelementptr inbounds nuw i8, ptr %.2240.i489.i2148, i64 2
  %i.ddi = load i8, ptr %i.ddh, align 1, !tbaa !100
  %i.ddj = zext i8 %i.ddi to i64
  %i.ddk = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.ddj
  %i.ddl = load i8, ptr %i.ddk, align 1, !tbaa !100
  %.not270.i559.i = icmp eq i8 %i.ddl, 0
  br i1 %.not270.i559.i, label %bb.og, label %.loopexit1009, !prof !62

bb.og:                                            ; preds = %bb.of
  %i.ddm = getelementptr inbounds nuw i8, ptr %.2240.i489.i2148, i64 3
  %i.ddn = load i8, ptr %i.ddm, align 1, !tbaa !100
  %i.ddo = zext i8 %i.ddn to i64
  %i.ddp = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.ddo
  %i.ddq = load i8, ptr %i.ddp, align 1, !tbaa !100
  %.not271.i562.i = icmp eq i8 %i.ddq, 0
  br i1 %.not271.i562.i, label %bb.oh, label %.loopexit1010, !prof !62

bb.oh:                                            ; preds = %bb.og
  %i.ddr = load i32, ptr %.2240.i489.i2148, align 1
  store i32 %i.ddr, ptr %.2247.i488.i2147, align 1
  %i.dds = getelementptr inbounds nuw i8, ptr %.2247.i488.i2147, i64 4 ; 2 uses
  %i.ddt = getelementptr inbounds nuw i8, ptr %.2240.i489.i2148, i64 4 ; 3 uses
  %i.ddu = ptrtoint ptr %i.ddt to i64
  %i.ddv = sub i64 %i.cyz, %i.ddu
  %i.ddw = icmp sgt i64 %i.ddv, 3
  br i1 %i.ddw, label %.lr.ph2149, label %.preheader1004, !llvm.loop !24

.lr.ph2154:                                       ; preds = %.lr.ph2154.prol.loopexit, %bb.oi
  %.3241.i491.i2153 = phi ptr [ %i.det, %bb.oi ], [ %.3241.i491.i2153.unr, %.lr.ph2154.prol.loopexit ] ; 9 uses
  %.3248.i490.i2152 = phi ptr [ %i.deu, %bb.oi ], [ %.3248.i490.i2152.unr, %.lr.ph2154.prol.loopexit ] ; 6 uses
  %i.ddx = load i8, ptr %.3241.i491.i2153, align 1, !tbaa !100 ; 2 uses
  %i.ddy = zext i8 %i.ddx to i64
  %i.ddz = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.ddy
  %i.dea = load i8, ptr %i.ddz, align 1, !tbaa !100
  %.not.i493.i = icmp eq i8 %i.dea, 0
  br i1 %.not.i493.i, label %.lr.ph2154.1, label %.preheader1001.preheader, !prof !62

.lr.ph2154.1:                                     ; preds = %.lr.ph2154
  %i.deb = getelementptr inbounds nuw i8, ptr %.3241.i491.i2153, i64 1
  %i.dec = getelementptr inbounds nuw i8, ptr %.3248.i490.i2152, i64 1 ; 2 uses
  store i8 %i.ddx, ptr %.3248.i490.i2152, align 1, !tbaa !100
  %i.ded = load i8, ptr %i.deb, align 1, !tbaa !100 ; 2 uses
  %i.dee = zext i8 %i.ded to i64
  %i.def = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dee
  %i.deg = load i8, ptr %i.def, align 1, !tbaa !100
  %.not.i493.i.1 = icmp eq i8 %i.deg, 0
  br i1 %.not.i493.i.1, label %.lr.ph2154.2, label %.preheader1001.preheader.loopexit.loopexit.split.loop.exit6363, !prof !62

.lr.ph2154.2:                                     ; preds = %.lr.ph2154.1
  %i.deh = getelementptr inbounds nuw i8, ptr %.3241.i491.i2153, i64 2
  %i.dei = getelementptr inbounds nuw i8, ptr %.3248.i490.i2152, i64 2 ; 2 uses
  store i8 %i.ded, ptr %i.dec, align 1, !tbaa !100
  %i.dej = load i8, ptr %i.deh, align 1, !tbaa !100 ; 2 uses
  %i.dek = zext i8 %i.dej to i64
  %i.del = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dek
  %i.dem = load i8, ptr %i.del, align 1, !tbaa !100
  %.not.i493.i.2 = icmp eq i8 %i.dem, 0
  br i1 %.not.i493.i.2, label %.lr.ph2154.3, label %.preheader1001.preheader.loopexit.loopexit.split.loop.exit6360, !prof !62

.lr.ph2154.3:                                     ; preds = %.lr.ph2154.2
  %i.den = getelementptr inbounds nuw i8, ptr %.3241.i491.i2153, i64 3
  %i.deo = getelementptr inbounds nuw i8, ptr %.3248.i490.i2152, i64 3 ; 2 uses
  store i8 %i.dej, ptr %i.dei, align 1, !tbaa !100
  %i.dep = load i8, ptr %i.den, align 1, !tbaa !100 ; 2 uses
  %i.deq = zext i8 %i.dep to i64
  %i.der = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.deq
  %i.des = load i8, ptr %i.der, align 1, !tbaa !100
  %.not.i493.i.3 = icmp eq i8 %i.des, 0
  br i1 %.not.i493.i.3, label %bb.oi, label %.preheader1001.preheader.loopexit.loopexit.split.loop.exit, !prof !62

bb.oi:                                            ; preds = %.lr.ph2154.3
  %i.det = getelementptr inbounds nuw i8, ptr %.3241.i491.i2153, i64 4 ; 2 uses
  %i.deu = getelementptr inbounds nuw i8, ptr %.3248.i490.i2152, i64 4 ; 2 uses
  store i8 %i.dep, ptr %i.deo, align 1, !tbaa !100
  %exitcond2781.not.3 = icmp eq ptr %i.det, %scevgep2780
  br i1 %exitcond2781.not.3, label %write_str.exit581.i, label %.lr.ph2154, !llvm.loop !25

.loopexit1008:                                    ; preds = %bb.nn, %bb.oe
  %i.dev = phi i8 [ %i.dcy, %bb.oe ], [ %i.czf, %bb.nn ]
  %.5250.i557.i = phi ptr [ %.2247.i488.i2147, %bb.oe ], [ %.1246.i486.i2140, %bb.nn ] ; 2 uses
  %.5243.i558.i = phi ptr [ %.2240.i489.i2148, %bb.oe ], [ %.1239.i487.i2141, %bb.nn ]
  store i8 %i.dev, ptr %.5250.i557.i, align 1
  %i.dew = getelementptr inbounds nuw i8, ptr %.5250.i557.i, i64 1
  %i.dex = getelementptr inbounds nuw i8, ptr %.5243.i558.i, i64 1
  br label %.preheader1001.preheader

.loopexit1009:                                    ; preds = %bb.no, %bb.of
  %.6251.i560.i = phi ptr [ %.2247.i488.i2147, %bb.of ], [ %.1246.i486.i2140, %bb.no ] ; 2 uses
  %.6.i561.i = phi ptr [ %.2240.i489.i2148, %bb.of ], [ %.1239.i487.i2141, %bb.no ] ; 2 uses
  %i.dey = load i16, ptr %.6.i561.i, align 1
  store i16 %i.dey, ptr %.6251.i560.i, align 1
  %i.dez = getelementptr inbounds nuw i8, ptr %.6251.i560.i, i64 2
  %i.dfa = getelementptr inbounds nuw i8, ptr %.6.i561.i, i64 2
  br label %.preheader1001.preheader

.loopexit1010:                                    ; preds = %bb.np, %bb.og
  %.7252.i563.i = phi ptr [ %.2247.i488.i2147, %bb.og ], [ %.1246.i486.i2140, %bb.np ] ; 2 uses
  %.7.i564.i = phi ptr [ %.2240.i489.i2148, %bb.og ], [ %.1239.i487.i2141, %bb.np ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i563.i, ptr noundef nonnull align 1 dereferenceable(3) %.7.i564.i, i64 3, i1 false)
  %i.dfb = getelementptr inbounds nuw i8, ptr %.7252.i563.i, i64 3
  %i.dfc = getelementptr inbounds nuw i8, ptr %.7.i564.i, i64 3
  br label %.preheader1001.preheader

bb.oj:                                            ; preds = %bb.nq
  %i.dfd = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 4
  %i.dfe = load i32, ptr %.1239.i487.i2141, align 1
  store i32 %i.dfe, ptr %.1246.i486.i2140, align 1
  %i.dff = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 4
  br label %.preheader1001.preheader

bb.ok:                                            ; preds = %bb.nr
  %i.dfg = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i486.i2140, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i487.i2141, i64 5, i1 false)
  %i.dfh = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 5
  br label %.preheader1001.preheader

bb.ol:                                            ; preds = %bb.ns
  %i.dfi = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i486.i2140, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i487.i2141, i64 6, i1 false)
  %i.dfj = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 6
  br label %.preheader1001.preheader

bb.om:                                            ; preds = %bb.nt
  %i.dfk = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i486.i2140, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i487.i2141, i64 7, i1 false)
  %i.dfl = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 7
  br label %.preheader1001.preheader

bb.on:                                            ; preds = %bb.nu
  %i.dfm = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 8
  %i.dfn = load i64, ptr %.1239.i487.i2141, align 1
  store i64 %i.dfn, ptr %.1246.i486.i2140, align 1
  %i.dfo = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 8
  br label %.preheader1001.preheader

bb.oo:                                            ; preds = %bb.nv
  %i.dfp = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i486.i2140, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i487.i2141, i64 9, i1 false)
  %i.dfq = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 9
  br label %.preheader1001.preheader

bb.op:                                            ; preds = %bb.nw
  %i.dfr = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i486.i2140, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i487.i2141, i64 10, i1 false)
  %i.dfs = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 10
  br label %.preheader1001.preheader

bb.oq:                                            ; preds = %bb.nx
  %i.dft = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1246.i486.i2140, ptr noundef nonnull align 1 dereferenceable(11) %.1239.i487.i2141, i64 11, i1 false)
  %i.dfu = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 11
  br label %.preheader1001.preheader

bb.or:                                            ; preds = %bb.ny
  %i.dfv = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1246.i486.i2140, ptr noundef nonnull align 1 dereferenceable(12) %.1239.i487.i2141, i64 12, i1 false)
  %i.dfw = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 12
  br label %.preheader1001.preheader

bb.os:                                            ; preds = %bb.nz
  %i.dfx = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1246.i486.i2140, ptr noundef nonnull align 1 dereferenceable(13) %.1239.i487.i2141, i64 13, i1 false)
  %i.dfy = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 13
  br label %.preheader1001.preheader

bb.ot:                                            ; preds = %bb.oa
  %i.dfz = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1246.i486.i2140, ptr noundef nonnull align 1 dereferenceable(14) %.1239.i487.i2141, i64 14, i1 false)
  %i.dga = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 14
  br label %.preheader1001.preheader

bb.ou:                                            ; preds = %bb.ob
  %i.dgb = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1246.i486.i2140, ptr noundef nonnull align 1 dereferenceable(15) %.1239.i487.i2141, i64 15, i1 false)
  %i.dgc = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 15
  br label %.preheader1001.preheader

.preheader1001.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2154.3
  %i.dgd = getelementptr inbounds nuw i8, ptr %.3241.i491.i2153, i64 3
  br label %.preheader1001.preheader

.preheader1001.preheader.loopexit.loopexit.split.loop.exit6360: ; preds = %.lr.ph2154.2
  %i.dge = getelementptr inbounds nuw i8, ptr %.3241.i491.i2153, i64 2
  br label %.preheader1001.preheader

.preheader1001.preheader.loopexit.loopexit.split.loop.exit6363: ; preds = %.lr.ph2154.1
  %i.dgf = getelementptr inbounds nuw i8, ptr %.3241.i491.i2153, i64 1
  br label %.preheader1001.preheader

.preheader1001.preheader:                         ; preds = %.lr.ph2143, %.lr.ph2149, %.lr.ph2154, %.preheader1001.preheader.loopexit.loopexit.split.loop.exit6363, %.preheader1001.preheader.loopexit.loopexit.split.loop.exit6360, %.preheader1001.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2154.prol, %.loopexit1008, %.loopexit1009, %.loopexit1010, %bb.oj, %bb.ok, %bb.ol, %bb.om, %bb.on, %bb.oo, %bb.op, %bb.oq, %bb.or, %bb.os, %bb.ot, %bb.ou
  %.8253.i496.i.ph = phi ptr [ %.2247.i488.i2147, %.lr.ph2149 ], [ %.3248.i490.i2152.prol, %.lr.ph2154.prol ], [ %i.dew, %.loopexit1008 ], [ %i.dez, %.loopexit1009 ], [ %i.dfb, %.loopexit1010 ], [ %i.dff, %bb.oj ], [ %i.dfh, %bb.ok ], [ %i.dfj, %bb.ol ], [ %i.dfl, %bb.om ], [ %i.dfo, %bb.on ], [ %i.dfq, %bb.oo ], [ %i.dfs, %bb.op ], [ %i.dfu, %bb.oq ], [ %i.dfw, %bb.or ], [ %i.dfy, %bb.os ], [ %i.dga, %bb.ot ], [ %i.dgc, %bb.ou ], [ %.3248.i490.i2152, %.lr.ph2154 ], [ %i.dec, %.preheader1001.preheader.loopexit.loopexit.split.loop.exit6363 ], [ %i.dei, %.preheader1001.preheader.loopexit.loopexit.split.loop.exit6360 ], [ %i.deo, %.preheader1001.preheader.loopexit.loopexit.split.loop.exit ], [ %.1246.i486.i2140, %.lr.ph2143 ]
  %.8.i497.i.ph = phi ptr [ %.2240.i489.i2148, %.lr.ph2149 ], [ %.3241.i491.i2153.prol, %.lr.ph2154.prol ], [ %i.dex, %.loopexit1008 ], [ %i.dfa, %.loopexit1009 ], [ %i.dfc, %.loopexit1010 ], [ %i.dfd, %bb.oj ], [ %i.dfg, %bb.ok ], [ %i.dfi, %bb.ol ], [ %i.dfk, %bb.om ], [ %i.dfm, %bb.on ], [ %i.dfp, %bb.oo ], [ %i.dfr, %bb.op ], [ %i.dft, %bb.oq ], [ %i.dfv, %bb.or ], [ %i.dfx, %bb.os ], [ %i.dfz, %bb.ot ], [ %i.dgb, %bb.ou ], [ %.3241.i491.i2153, %.lr.ph2154 ], [ %i.dgf, %.preheader1001.preheader.loopexit.loopexit.split.loop.exit6363 ], [ %i.dge, %.preheader1001.preheader.loopexit.loopexit.split.loop.exit6360 ], [ %i.dgd, %.preheader1001.preheader.loopexit.loopexit.split.loop.exit ], [ %.1239.i487.i2141, %.lr.ph2143 ]
  br label %.preheader1001

.preheader1001:                                   ; preds = %.preheader1001.backedge, %.preheader1001.preheader
  %.8253.i496.i = phi ptr [ %.8253.i496.i.ph, %.preheader1001.preheader ], [ %.8253.i496.i.be, %.preheader1001.backedge ] ; 34 uses
  %.8.i497.i = phi ptr [ %.8.i497.i.ph, %.preheader1001.preheader ], [ %.8.i497.i.be, %.preheader1001.backedge ] ; 23 uses
  %i.dgg = getelementptr inbounds nuw i8, ptr %.8.i497.i, i64 4 ; 3 uses
  %i.dgh = icmp ugt ptr %i.dgg, %i.cyy            ; 2 uses
  br i1 %i.dgh, label %bb.ov, label %._crit_edge2831, !prof !45

._crit_edge2831:                                  ; preds = %.preheader1001
  %.pre2832 = load i8, ptr %.8.i497.i, align 1, !tbaa !100 ; 2 uses
  %.phi.trans.insert2833 = zext i8 %.pre2832 to i64 ; 2 uses
  %.phi.trans.insert2834 = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %.phi.trans.insert2833
  %.pre2835 = load i8, ptr %.phi.trans.insert2834, align 1, !tbaa !100
  br label %bb.ow

bb.ov:                                            ; preds = %.preheader1001
  %i.dgi = ptrtoint ptr %.8.i497.i to i64
  %i.dgj = sub i64 %i.cyz, %i.dgi
  %i.dgk = load i8, ptr %.8.i497.i, align 1, !tbaa !100 ; 3 uses
  %i.dgl = zext i8 %i.dgk to i64                  ; 2 uses
  %i.dgm = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dgl
  %i.dgn = load i8, ptr %i.dgm, align 1, !tbaa !100 ; 2 uses
  %i.dgo = lshr i8 %i.dgn, 1
  %i.dgp = zext nneg i8 %i.dgo to i64
  %i.dgq = icmp slt i64 %i.dgj, %i.dgp
  br i1 %i.dgq, label %bb.pp, label %bb.ow

bb.ow:                                            ; preds = %._crit_edge2831, %bb.ov
  %.pre-phi2862 = phi i64 [ %.phi.trans.insert2833, %._crit_edge2831 ], [ %i.dgl, %bb.ov ]
  %i.dgr = phi i8 [ %.pre2835, %._crit_edge2831 ], [ %i.dgn, %bb.ov ]
  %i.dgs = phi i8 [ %.pre2832, %._crit_edge2831 ], [ %i.dgk, %bb.ov ] ; 2 uses
  switch i8 %i.dgr, label %write_str.exit581.i [
    i8 0, label %bb.ox
    i8 4, label %bb.oy
    i8 6, label %bb.pa
    i8 8, label %bb.pf
    i8 2, label %bb.ph
    i8 3, label %bb.pi
    i8 5, label %bb.pj
    i8 7, label %bb.pl
    i8 9, label %bb.pn
    i8 1, label %bb.pp
  ]

bb.ox:                                            ; preds = %bb.ow
  %i.dgt = getelementptr inbounds nuw i8, ptr %.8.i497.i, i64 1
  store i8 %i.dgs, ptr %.8253.i496.i, align 1, !tbaa !100
  br label %bb.nm

bb.oy:                                            ; preds = %bb.ow
  %i.dgu = load i16, ptr %.8.i497.i, align 1      ; 3 uses
  %.sroa.0673.0.insert.ext = zext i16 %i.dgu to i32 ; 2 uses
  %i.dgv = and i32 %.sroa.0673.0.insert.ext, 49376
  %i.dgw = icmp ne i32 %i.dgv, 32960
  %i.dgx = and i32 %.sroa.0673.0.insert.ext, 30
  %i.dgy = icmp eq i32 %i.dgx, 0
  %.not310.i551.i = or i1 %i.dgw, %i.dgy
  %i.dgz = trunc i16 %i.dgu to i8
  br i1 %.not310.i551.i, label %.thread848, label %bb.oz, !prof !45

bb.oz:                                            ; preds = %bb.oy
  store i16 %i.dgu, ptr %.8253.i496.i, align 1
  %i.dha = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 2
  %i.dhb = getelementptr inbounds nuw i8, ptr %.8.i497.i, i64 2
  br label %.preheader1001.backedge

bb.pa:                                            ; preds = %bb.ow
  br i1 %i.dgh, label %bb.pd, label %bb.pb, !prof !45

bb.pb:                                            ; preds = %bb.pa
  %.sroa.0.0.copyload.i335.i541.i = load i32, ptr %.8.i497.i, align 1 ; 4 uses
  %i.dhc = and i32 %.sroa.0.0.copyload.i335.i541.i, 12632304
  %i.dhd = icmp eq i32 %i.dhc, 8421600
  %i.dhe = trunc i32 %.sroa.0.0.copyload.i335.i541.i to i8 ; 3 uses
  br i1 %i.dhd, label %bb.pc, label %.thread848, !prof !62

bb.pc:                                            ; preds = %bb.pb
  %i.dhf = and i32 %.sroa.0.0.copyload.i335.i541.i, 8207
  switch i32 %i.dhf, label %.critedge.i542.i [
    i32 8205, label %.thread848
    i32 0, label %.thread848
  ], !prof !151

bb.pd:                                            ; preds = %bb.pa
  %.sroa.0.0.copyload.i327.i546.i = load i16, ptr %.8.i497.i, align 1 ; 2 uses
  %i.dhg = getelementptr inbounds nuw i8, ptr %.8.i497.i, i64 2
  %i.dhh = load i8, ptr %i.dhg, align 1, !tbaa !100
  %.sroa.4.0.insert.ext.i328.i547.i = zext i8 %i.dhh to i32
  %.sroa.4.0.insert.shift.i329.i548.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i328.i547.i, 16
  %.sroa.0.0.insert.ext.i330.i549.i = zext i16 %.sroa.0.0.copyload.i327.i546.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i331.i550.i = or disjoint i32 %.sroa.4.0.insert.shift.i329.i548.i, %.sroa.0.0.insert.ext.i330.i549.i ; 2 uses
  %i.dhi = and i32 %.sroa.0.0.insert.insert.i331.i550.i, 12632304
  %i.dhj = icmp eq i32 %i.dhi, 8421600
  %i.dhk = trunc i16 %.sroa.0.0.copyload.i327.i546.i to i8 ; 3 uses
  br i1 %i.dhj, label %bb.pe, label %.thread848, !prof !62

bb.pe:                                            ; preds = %bb.pd
  %i.dhl = and i32 %.sroa.0.0.insert.ext.i330.i549.i, 8207
  switch i32 %i.dhl, label %.critedge.i542.i [
    i32 8205, label %.thread848
    i32 0, label %.thread848
  ], !prof !151

.critedge.i542.i:                                 ; preds = %bb.pe, %bb.pc
  %storemerge947 = phi i32 [ %.sroa.0.0.copyload.i335.i541.i, %bb.pc ], [ %.sroa.0.0.insert.insert.i331.i550.i, %bb.pe ]
  store i32 %storemerge947, ptr %.8253.i496.i, align 1
  %i.dhm = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 3
  %i.dhn = getelementptr inbounds nuw i8, ptr %.8.i497.i, i64 3
  br label %.preheader1001.backedge

bb.pf:                                            ; preds = %bb.ow
  %.sroa.0.0.copyload.i334.i532.i = load i32, ptr %.8.i497.i, align 1 ; 6 uses
  %i.dho = and i32 %.sroa.0.0.copyload.i334.i532.i, -1061109512
  %i.dhp = icmp ne i32 %i.dho, -2139062032
  %i.dhq = and i32 %.sroa.0.0.copyload.i334.i532.i, 12295
  %.not301.i533.i = icmp eq i32 %i.dhq, 0
  %or.cond.i534.i = or i1 %i.dhp, %.not301.i533.i
  %i.dhr = trunc i32 %.sroa.0.0.copyload.i334.i532.i to i8 ; 2 uses
  br i1 %or.cond.i534.i, label %.thread848, label %bb.pg, !prof !139

bb.pg:                                            ; preds = %bb.pf
  %i.dhs = and i32 %.sroa.0.0.copyload.i334.i532.i, 4
  %i.dht = icmp ne i32 %i.dhs, 0
  %i.dhu = and i32 %.sroa.0.0.copyload.i334.i532.i, 12291
  %i.dhv = icmp ne i32 %i.dhu, 0
  %.not304.i535.i = and i1 %i.dht, %i.dhv
  br i1 %.not304.i535.i, label %.thread848, label %.critedge316.i536.i, !prof !45

.critedge316.i536.i:                              ; preds = %bb.pg
  store i32 %.sroa.0.0.copyload.i334.i532.i, ptr %.8253.i496.i, align 1
  %i.dhw = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 4
  br label %.preheader1001.backedge

bb.ph:                                            ; preds = %bb.ow
  %i.dhx = shl nuw nsw i64 %.pre-phi2862, 1
  %i.dhy = getelementptr inbounds nuw i8, ptr @esc_single_char_table, i64 %i.dhx
  %i.dhz = load i16, ptr %i.dhy, align 2
  store i16 %i.dhz, ptr %.8253.i496.i, align 1
  %i.dia = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 2
  %i.dib = getelementptr inbounds nuw i8, ptr %.8.i497.i, i64 1
  br label %.preheader1001.backedge

.preheader1001.backedge:                          ; preds = %bb.ph, %bb.pi, %bb.pq, %bb.pr, %bb.oz, %.critedge.i542.i, %.critedge316.i536.i, %bb.pk, %.critedge321.i517.i, %.critedge325.i508.i
  %.8253.i496.i.be = phi ptr [ %i.dma, %bb.pq ], [ %i.dha, %bb.oz ], [ %i.dhm, %.critedge.i542.i ], [ %i.dhw, %.critedge316.i536.i ], [ %i.dia, %bb.ph ], [ %i.dii, %bb.pi ], [ %i.djd, %bb.pk ], [ %i.dka, %.critedge321.i517.i ], [ %i.dlw, %.critedge325.i508.i ], [ %i.dmc, %bb.pr ]
  %.8.i497.i.be = phi ptr [ %i.dlz, %bb.pq ], [ %i.dhb, %bb.oz ], [ %i.dhn, %.critedge.i542.i ], [ %i.dgg, %.critedge316.i536.i ], [ %i.dib, %bb.ph ], [ %i.dij, %bb.pi ], [ %i.dje, %bb.pk ], [ %i.dkb, %.critedge321.i517.i ], [ %i.dgg, %.critedge325.i508.i ], [ %i.dmd, %bb.pr ]
  br label %.preheader1001

bb.pi:                                            ; preds = %bb.ow
  store i32 808482140, ptr %.8253.i496.i, align 1
  %i.dic = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 4
  %i.did = load i8, ptr %.8.i497.i, align 1, !tbaa !100
  %i.die = zext i8 %i.did to i64
  %i.dif = shl nuw nsw i64 %i.die, 1
  %i.dig = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dif
  %i.dih = load i16, ptr %i.dig, align 2
  store i16 %i.dih, ptr %i.dic, align 1
  %i.dii = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 6
  %i.dij = getelementptr inbounds nuw i8, ptr %.8.i497.i, i64 1
  br label %.preheader1001.backedge

bb.pj:                                            ; preds = %bb.ow
  %.sroa.0.0.copyload.i332.i525.i = load i16, ptr %.8.i497.i, align 1 ; 3 uses
  %.sroa.0670.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i525.i to i32 ; 2 uses
  %i.dik = and i32 %.sroa.0670.0.insert.ext, 49376
  %i.dil = icmp ne i32 %i.dik, 32960
  %i.dim = and i32 %.sroa.0670.0.insert.ext, 30
  %i.din = icmp eq i32 %i.dim, 0
  %.not298.i526.i = or i1 %i.dil, %i.din
  br i1 %.not298.i526.i, label %.thread858, label %bb.pk, !prof !45

bb.pk:                                            ; preds = %bb.pj
  %i.dio = lshr i16 %.sroa.0.0.copyload.i332.i525.i, 8
  %i.dip = trunc nuw i16 %i.dio to i8
  %i.diq = trunc i16 %.sroa.0.0.copyload.i332.i525.i to i8 ; 2 uses
  %.tr299.i527.i = shl i8 %i.diq, 6
  %i.dir = and i8 %i.dip, 63
  store i16 30044, ptr %.8253.i496.i, align 1
  %i.dis = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 2
  %i.dit = lshr i8 %i.diq, 1
  %i.diu = and i8 %i.dit, 14
  %i.div = zext nneg i8 %i.diu to i64
  %i.diw = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.div
  %i.dix = load i16, ptr %i.diw, align 2
  store i16 %i.dix, ptr %i.dis, align 1
  %i.diy = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 4
  %.narrow300.i528.i = or disjoint i8 %i.dir, %.tr299.i527.i
  %i.diz = zext i8 %.narrow300.i528.i to i64
  %i.dja = shl nuw nsw i64 %i.diz, 1
  %i.djb = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dja
  %i.djc = load i16, ptr %i.djb, align 2
  store i16 %i.djc, ptr %i.diy, align 1
  %i.djd = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 6
  %i.dje = getelementptr inbounds nuw i8, ptr %.8.i497.i, i64 2
  br label %.preheader1001.backedge

bb.pl:                                            ; preds = %bb.ow
  %.sroa.0.0.copyload.i.i512.i = load i16, ptr %.8.i497.i, align 1 ; 3 uses
  %i.djf = getelementptr inbounds nuw i8, ptr %.8.i497.i, i64 2
  %i.djg = load i8, ptr %i.djf, align 1, !tbaa !100 ; 2 uses
  %.sroa.4.0.insert.ext.i.i513.i = zext i8 %i.djg to i32
  %.sroa.4.0.insert.shift.i.i514.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i513.i, 16
  %.sroa.0.0.insert.ext.i.i515.i = zext i16 %.sroa.0.0.copyload.i.i512.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i516.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i514.i, %.sroa.0.0.insert.ext.i.i515.i
  %i.djh = and i32 %.sroa.0.0.insert.insert.i.i516.i, 12632304
  %i.dji = icmp eq i32 %i.djh, 8421600
  br i1 %i.dji, label %bb.pm, label %.thread858, !prof !62

bb.pm:                                            ; preds = %bb.pl
  %i.djj = and i32 %.sroa.0.0.insert.ext.i.i515.i, 8207
  switch i32 %i.djj, label %.critedge321.i517.i [
    i32 8205, label %.thread858
    i32 0, label %.thread858
  ], !prof !151

.critedge321.i517.i:                              ; preds = %bb.pm
  %i.djk = zext i16 %.sroa.0.0.copyload.i.i512.i to i64
  %i.djl = shl nuw nsw i64 %i.djk, 12
  %i.djm = lshr i16 %.sroa.0.0.copyload.i.i512.i, 2
  %i.djn = and i16 %i.djm, 4032                   ; 2 uses
  %i.djo = zext nneg i16 %i.djn to i64
  %i.djp = and i8 %i.djg, 63
  store i16 30044, ptr %.8253.i496.i, align 1
  %i.djq = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 2
  %.masked.i522.i = or disjoint i64 %i.djl, %i.djo
  %i.djr = lshr i64 %.masked.i522.i, 7
  %i.djs = and i64 %i.djr, 510
  %i.djt = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.djs
  %i.dju = load i16, ptr %i.djt, align 2
  store i16 %i.dju, ptr %i.djq, align 1
  %i.djv = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 4
  %.tr294.i523.i = trunc i16 %i.djn to i8
  %.narrow295.i524.i = or disjoint i8 %i.djp, %.tr294.i523.i
  %i.djw = zext i8 %.narrow295.i524.i to i64
  %i.djx = shl nuw nsw i64 %i.djw, 1
  %i.djy = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.djx
  %i.djz = load i16, ptr %i.djy, align 2
  store i16 %i.djz, ptr %i.djv, align 1
  %i.dka = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 6
  %i.dkb = getelementptr inbounds nuw i8, ptr %.8.i497.i, i64 3
  br label %.preheader1001.backedge

bb.pn:                                            ; preds = %bb.ow
  %.sroa.0.0.copyload.i333.i502.i = load i32, ptr %.8.i497.i, align 1 ; 9 uses
  %i.dkc = and i32 %.sroa.0.0.copyload.i333.i502.i, -1061109512
  %i.dkd = icmp ne i32 %i.dkc, -2139062032
  %i.dke = and i32 %.sroa.0.0.copyload.i333.i502.i, 12295
  %.not288.i503.i = icmp eq i32 %i.dke, 0
  %or.cond323.i504.i = or i1 %i.dkd, %.not288.i503.i
  %i.dkf = lshr i32 %.sroa.0.0.copyload.i333.i502.i, 24
  br i1 %or.cond323.i504.i, label %.thread858, label %bb.po, !prof !139

bb.po:                                            ; preds = %bb.pn
  %i.dkg = and i32 %.sroa.0.0.copyload.i333.i502.i, 4
  %i.dkh = icmp ne i32 %i.dkg, 0
  %i.dki = and i32 %.sroa.0.0.copyload.i333.i502.i, 12291
  %i.dkj = icmp ne i32 %i.dki, 0
  %.not291.i505.i = and i1 %i.dkh, %i.dkj
  br i1 %.not291.i505.i, label %.thread858, label %.critedge325.i508.i, !prof !45

.critedge325.i508.i:                              ; preds = %bb.po
  %i.dkk = shl i32 %.sroa.0.0.copyload.i333.i502.i, 18
  %i.dkl = and i32 %i.dkk, 1835008
  %i.dkm = shl i32 %.sroa.0.0.copyload.i333.i502.i, 4
  %i.dkn = and i32 %i.dkm, 258048
  %i.dko = lshr i32 %.sroa.0.0.copyload.i333.i502.i, 10 ; 2 uses
  %i.dkp = and i32 %i.dko, 3072
  %i.dkq = and i32 %i.dkf, 63
  %i.dkr = add nsw i32 %i.dkl, -65536
  %i.dks = add nsw i32 %i.dkr, %i.dkn             ; 2 uses
  %i.dkt = or disjoint i32 %i.dks, %i.dkp
  %i.dku = lshr exact i32 %i.dks, 10
  %i.dkv = add nuw nsw i32 %i.dku, 55296
  store i16 30044, ptr %.8253.i496.i, align 1
  %i.dkw = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 2
  %i.dkx = lshr i32 %i.dkv, 7
  %i.dky = and i32 %i.dkx, 65534
  %i.dkz = zext nneg i32 %i.dky to i64
  %i.dla = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dkz
  %i.dlb = load i16, ptr %i.dla, align 2
  store i16 %i.dlb, ptr %i.dkw, align 1
  %i.dlc = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 4
  %i.dld = lshr exact i32 %i.dkt, 9
  %i.dle = and i32 %i.dld, 510
  %i.dlf = zext nneg i32 %i.dle to i64
  %i.dlg = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dlf
  %i.dlh = load i16, ptr %i.dlg, align 2
  store i16 %i.dlh, ptr %i.dlc, align 1
  %i.dli = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 6
  store i16 30044, ptr %i.dli, align 1
  %i.dlj = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 8
  %i.dlk = lshr i32 %.sroa.0.0.copyload.i333.i502.i, 17
  %i.dll = and i32 %i.dlk, 6
  %i.dlm = zext nneg i32 %i.dll to i64
  %i.dln = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dlm
  %i.dlo = getelementptr inbounds nuw i8, ptr %i.dln, i64 440
  %i.dlp = load i16, ptr %i.dlo, align 2
  store i16 %i.dlp, ptr %i.dlj, align 1
  %i.dlq = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 10
  %.masked2955 = and i32 %i.dko, 192
  %i.dlr = or disjoint i32 %i.dkq, %.masked2955
  %i.dls = shl nuw nsw i32 %i.dlr, 1
  %i.dlt = zext nneg i32 %i.dls to i64
  %i.dlu = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dlt
  %i.dlv = load i16, ptr %i.dlu, align 2
  store i16 %i.dlv, ptr %i.dlq, align 1
  %i.dlw = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 12
  br label %.preheader1001.backedge

bb.pp:                                            ; preds = %bb.ow, %bb.ov
  %i.dlx = phi i8 [ %i.dgs, %bb.ow ], [ %i.dgk, %bb.ov ]
  br i1 %.not942, label %.thread848, label %.thread858

.thread848:                                       ; preds = %bb.pf, %bb.pg, %bb.pd, %bb.pb, %bb.pe, %bb.pe, %bb.pc, %bb.pc, %bb.oy, %bb.pp
  %i.dly = phi i8 [ %i.dhr, %bb.pf ], [ %i.dhr, %bb.pg ], [ %i.dhk, %bb.pd ], [ %i.dhe, %bb.pb ], [ %i.dhk, %bb.pe ], [ %i.dhk, %bb.pe ], [ %i.dhe, %bb.pc ], [ %i.dhe, %bb.pc ], [ %i.dgz, %bb.oy ], [ %i.dlx, %bb.pp ]
  br i1 %.not945, label %.loopexit988, label %bb.pq

bb.pq:                                            ; preds = %.thread848
  %i.dlz = getelementptr inbounds nuw i8, ptr %.8.i497.i, i64 1
  %i.dma = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 1
  store i8 %i.dly, ptr %.8253.i496.i, align 1, !tbaa !100
  br label %.preheader1001.backedge

.thread858:                                       ; preds = %bb.pn, %bb.po, %bb.pl, %bb.pm, %bb.pm, %bb.pj, %bb.pp
  br i1 %.not945, label %.loopexit988, label %bb.pr

bb.pr:                                            ; preds = %.thread858
  store i16 30044, ptr %.8253.i496.i, align 1
  %i.dmb = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 2
  store i32 1145456198, ptr %i.dmb, align 1
  %i.dmc = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 6
  %i.dmd = getelementptr inbounds nuw i8, ptr %.8.i497.i, i64 1
  br label %.preheader1001.backedge

bb.ps:                                            ; preds = %bb.nl
  %i.dme = load i64, ptr %.0423.i, align 8, !tbaa !99
  %i.dmf = and i64 %i.dme, 24
  %.not449.i = icmp eq i64 %i.dmf, 0
  store i8 34, ptr %.2392.i, align 1, !tbaa !100
  br i1 %.not449.i, label %.split425.i, label %bb.rz

.split425.i:                                      ; preds = %bb.ps
  %i.dmg = getelementptr inbounds nuw i8, ptr %i.cyb, i64 %i.cxz ; 3 uses
  %i.dmh = ptrtoint ptr %i.dmg to i64             ; 4 uses
  %i.dmi = add i64 %i.cxz, %i.cyc
  br label %bb.pt

bb.pt:                                            ; preds = %bb.re, %.split425.i
  %.pn.i.i274 = phi ptr [ %.2392.i, %.split425.i ], [ %.8253.i.i287, %bb.re ]
  %.0238.i.i275 = phi ptr [ %i.cyb, %.split425.i ], [ %i.dub, %bb.re ] ; 3 uses
  %.0245.i.i276 = getelementptr inbounds nuw i8, ptr %.pn.i.i274, i64 1 ; 2 uses
  %i.dmj = ptrtoint ptr %.0238.i.i275 to i64
  %i.dmk = sub i64 %i.dmh, %i.dmj                 ; 2 uses
  %i.dml = icmp sgt i64 %i.dmk, 15
  br i1 %i.dml, label %.lr.ph2194, label %.preheader992

.preheader992:                                    ; preds = %bb.qj, %bb.pt
  %.pre-phi2858 = phi i64 [ %i.dmk, %bb.pt ], [ %i.dpr, %bb.qj ]
  %.1246.i.i277.lcssa = phi ptr [ %.0245.i.i276, %bb.pt ], [ %i.dpo, %bb.qj ] ; 2 uses
  %.1239.i.i278.lcssa = phi ptr [ %.0238.i.i275, %bb.pt ], [ %i.dpp, %bb.qj ] ; 2 uses
  %i.dmm = icmp sgt i64 %.pre-phi2858, 3
  br i1 %i.dmm, label %.lr.ph2200, label %.preheader990

.lr.ph2194:                                       ; preds = %bb.pt, %bb.qj
  %.1239.i.i2782192 = phi ptr [ %i.dpp, %bb.qj ], [ %.0238.i.i275, %bb.pt ] ; 46 uses
  %.1246.i.i2772191 = phi ptr [ %i.dpo, %bb.qj ], [ %.0245.i.i276, %bb.pt ] ; 30 uses
  %i.dmn = load i8, ptr %.1239.i.i2782192, align 1, !tbaa !100 ; 2 uses
  %i.dmo = zext i8 %i.dmn to i64
  %i.dmp = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dmo
  %i.dmq = load i8, ptr %i.dmp, align 1, !tbaa !100
  %.not272.i.i353 = icmp eq i8 %i.dmq, 0
  br i1 %.not272.i.i353, label %bb.pu, label %.preheader987.preheader, !prof !62

bb.pu:                                            ; preds = %.lr.ph2194
  %i.dmr = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 1
  %i.dms = load i8, ptr %i.dmr, align 1, !tbaa !100
  %i.dmt = zext i8 %i.dms to i64
  %i.dmu = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dmt
  %i.dmv = load i8, ptr %i.dmu, align 1, !tbaa !100
  %.not273.i.i354 = icmp eq i8 %i.dmv, 0
  br i1 %.not273.i.i354, label %bb.pv, label %.loopexit994, !prof !62

bb.pv:                                            ; preds = %bb.pu
  %i.dmw = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 2
  %i.dmx = load i8, ptr %i.dmw, align 1, !tbaa !100
  %i.dmy = zext i8 %i.dmx to i64
  %i.dmz = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dmy
  %i.dna = load i8, ptr %i.dmz, align 1, !tbaa !100
  %.not274.i.i355 = icmp eq i8 %i.dna, 0
  br i1 %.not274.i.i355, label %bb.pw, label %.loopexit995, !prof !62

bb.pw:                                            ; preds = %bb.pv
  %i.dnb = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 3
  %i.dnc = load i8, ptr %i.dnb, align 1, !tbaa !100
  %i.dnd = zext i8 %i.dnc to i64
  %i.dne = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dnd
  %i.dnf = load i8, ptr %i.dne, align 1, !tbaa !100
  %.not275.i.i356 = icmp eq i8 %i.dnf, 0
  br i1 %.not275.i.i356, label %bb.px, label %.loopexit996, !prof !62

bb.px:                                            ; preds = %bb.pw
  %i.dng = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 4
  %i.dnh = load i8, ptr %i.dng, align 1, !tbaa !100
  %i.dni = zext i8 %i.dnh to i64
  %i.dnj = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dni
  %i.dnk = load i8, ptr %i.dnj, align 1, !tbaa !100
  %.not276.i.i357 = icmp eq i8 %i.dnk, 0
  br i1 %.not276.i.i357, label %bb.py, label %bb.qq, !prof !62

bb.py:                                            ; preds = %bb.px
  %i.dnl = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 5
  %i.dnm = load i8, ptr %i.dnl, align 1, !tbaa !100
  %i.dnn = zext i8 %i.dnm to i64
  %i.dno = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dnn
  %i.dnp = load i8, ptr %i.dno, align 1, !tbaa !100
  %.not277.i.i358 = icmp eq i8 %i.dnp, 0
  br i1 %.not277.i.i358, label %bb.pz, label %bb.qr, !prof !62

bb.pz:                                            ; preds = %bb.py
  %i.dnq = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 6
  %i.dnr = load i8, ptr %i.dnq, align 1, !tbaa !100
  %i.dns = zext i8 %i.dnr to i64
  %i.dnt = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dns
  %i.dnu = load i8, ptr %i.dnt, align 1, !tbaa !100
  %.not278.i.i359 = icmp eq i8 %i.dnu, 0
  br i1 %.not278.i.i359, label %bb.qa, label %bb.qs, !prof !62

bb.qa:                                            ; preds = %bb.pz
  %i.dnv = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 7
  %i.dnw = load i8, ptr %i.dnv, align 1, !tbaa !100
  %i.dnx = zext i8 %i.dnw to i64
  %i.dny = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dnx
  %i.dnz = load i8, ptr %i.dny, align 1, !tbaa !100
  %.not279.i.i360 = icmp eq i8 %i.dnz, 0
  br i1 %.not279.i.i360, label %bb.qb, label %bb.qt, !prof !62

bb.qb:                                            ; preds = %bb.qa
  %i.doa = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 8
  %i.dob = load i8, ptr %i.doa, align 1, !tbaa !100
  %i.doc = zext i8 %i.dob to i64
  %i.dod = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.doc
  %i.doe = load i8, ptr %i.dod, align 1, !tbaa !100
  %.not280.i.i361 = icmp eq i8 %i.doe, 0
  br i1 %.not280.i.i361, label %bb.qc, label %bb.qu, !prof !62

bb.qc:                                            ; preds = %bb.qb
  %i.dof = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 9
  %i.dog = load i8, ptr %i.dof, align 1, !tbaa !100
  %i.doh = zext i8 %i.dog to i64
  %i.doi = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.doh
  %i.doj = load i8, ptr %i.doi, align 1, !tbaa !100
  %.not281.i.i362 = icmp eq i8 %i.doj, 0
  br i1 %.not281.i.i362, label %bb.qd, label %bb.qv, !prof !62

bb.qd:                                            ; preds = %bb.qc
  %i.dok = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 10
  %i.dol = load i8, ptr %i.dok, align 1, !tbaa !100
  %i.dom = zext i8 %i.dol to i64
  %i.don = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dom
  %i.doo = load i8, ptr %i.don, align 1, !tbaa !100
  %.not282.i.i363 = icmp eq i8 %i.doo, 0
  br i1 %.not282.i.i363, label %bb.qe, label %bb.qw, !prof !62

bb.qe:                                            ; preds = %bb.qd
  %i.dop = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 11
  %i.doq = load i8, ptr %i.dop, align 1, !tbaa !100
  %i.dor = zext i8 %i.doq to i64
  %i.dos = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dor
  %i.dot = load i8, ptr %i.dos, align 1, !tbaa !100
  %.not283.i.i364 = icmp eq i8 %i.dot, 0
  br i1 %.not283.i.i364, label %bb.qf, label %bb.qx, !prof !62

bb.qf:                                            ; preds = %bb.qe
  %i.dou = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 12
  %i.dov = load i8, ptr %i.dou, align 1, !tbaa !100
  %i.dow = zext i8 %i.dov to i64
  %i.dox = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dow
  %i.doy = load i8, ptr %i.dox, align 1, !tbaa !100
  %.not284.i.i365 = icmp eq i8 %i.doy, 0
  br i1 %.not284.i.i365, label %bb.qg, label %bb.qy, !prof !62

bb.qg:                                            ; preds = %bb.qf
  %i.doz = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 13
  %i.dpa = load i8, ptr %i.doz, align 1, !tbaa !100
  %i.dpb = zext i8 %i.dpa to i64
  %i.dpc = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dpb
  %i.dpd = load i8, ptr %i.dpc, align 1, !tbaa !100
  %.not285.i.i366 = icmp eq i8 %i.dpd, 0
  br i1 %.not285.i.i366, label %bb.qh, label %bb.qz, !prof !62

bb.qh:                                            ; preds = %bb.qg
  %i.dpe = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 14
  %i.dpf = load i8, ptr %i.dpe, align 1, !tbaa !100
  %i.dpg = zext i8 %i.dpf to i64
  %i.dph = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dpg
  %i.dpi = load i8, ptr %i.dph, align 1, !tbaa !100
  %.not286.i.i367 = icmp eq i8 %i.dpi, 0
  br i1 %.not286.i.i367, label %bb.qi, label %bb.ra, !prof !62

bb.qi:                                            ; preds = %bb.qh
  %i.dpj = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 15
  %i.dpk = load i8, ptr %i.dpj, align 1, !tbaa !100
  %i.dpl = zext i8 %i.dpk to i64
  %i.dpm = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dpl
  %i.dpn = load i8, ptr %i.dpm, align 1, !tbaa !100
  %.not287.i.i368 = icmp eq i8 %i.dpn, 0
  br i1 %.not287.i.i368, label %bb.qj, label %bb.rb, !prof !62

bb.qj:                                            ; preds = %bb.qi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i.i2772191, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i.i2782192, i64 16, i1 false)
  %i.dpo = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 16 ; 2 uses
  %i.dpp = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 16 ; 3 uses
  %i.dpq = ptrtoint ptr %i.dpp to i64
  %i.dpr = sub i64 %i.dmh, %i.dpq                 ; 2 uses
  %i.dps = icmp sgt i64 %i.dpr, 15
  br i1 %i.dps, label %.lr.ph2194, label %.preheader992, !llvm.loop !23

.preheader990:                                    ; preds = %bb.qo, %.preheader992
  %.2247.i.i279.lcssa = phi ptr [ %.1246.i.i277.lcssa, %.preheader992 ], [ %i.dra, %bb.qo ] ; 3 uses
  %.2240.i.i280.lcssa = phi ptr [ %.1239.i.i278.lcssa, %.preheader992 ], [ %i.drb, %bb.qo ] ; 5 uses
  %i.dpt = icmp ugt ptr %i.dmg, %.2240.i.i280.lcssa
  br i1 %i.dpt, label %.lr.ph2205.preheader, label %write_str.exit581.i

.lr.ph2205.preheader:                             ; preds = %.preheader990
  %.2240.i.i280.lcssa2783 = ptrtoaddr ptr %.2240.i.i280.lcssa to i64 ; 2 uses
  %i.dpu = getelementptr i8, ptr %.2240.i.i280.lcssa, i64 %i.cxz
  %scevgep2782 = getelementptr i8, ptr %i.dpu, i64 %i.cyc
  %i.dpv = sub i64 0, %.2240.i.i280.lcssa2783
  %scevgep2784 = getelementptr i8, ptr %scevgep2782, i64 %i.dpv
  %i.dpw = sub i64 %i.dmi, %.2240.i.i280.lcssa2783
  %i.dpx = freeze i64 %i.dpw                      ; 2 uses
  %i.dpy = add i64 %i.dpx, -1
  %xtraiter5655 = and i64 %i.dpx, 3               ; 2 uses
  %lcmp.mod5656.not = icmp eq i64 %xtraiter5655, 0
  br i1 %lcmp.mod5656.not, label %.lr.ph2205.prol.loopexit, label %.lr.ph2205.prol

.lr.ph2205.prol:                                  ; preds = %.lr.ph2205.preheader, %bb.qk
  %.3241.i.i2822204.prol = phi ptr [ %i.dqd, %bb.qk ], [ %.2240.i.i280.lcssa, %.lr.ph2205.preheader ] ; 3 uses
  %.3248.i.i2812203.prol = phi ptr [ %i.dqe, %bb.qk ], [ %.2247.i.i279.lcssa, %.lr.ph2205.preheader ] ; 3 uses
  %prol.iter5657 = phi i64 [ %prol.iter5657.next, %bb.qk ], [ 0, %.lr.ph2205.preheader ]
  %i.dpz = load i8, ptr %.3241.i.i2822204.prol, align 1, !tbaa !100 ; 2 uses
  %i.dqa = zext i8 %i.dpz to i64
  %i.dqb = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dqa
end_hunk_19
begin_hunk_20_@yyjson_mut_write_opts_impl:bb.a
  %i.dqo = load i8, ptr %i.dqn, align 1, !tbaa !100
  %.not269.i.i344 = icmp eq i8 %i.dqo, 0
  br i1 %.not269.i.i344, label %bb.qm, label %.loopexit994, !prof !62

bb.qm:                                            ; preds = %bb.ql
  %i.dqp = getelementptr inbounds nuw i8, ptr %.2240.i.i2802199, i64 2
  %i.dqq = load i8, ptr %i.dqp, align 1, !tbaa !100
  %i.dqr = zext i8 %i.dqq to i64
  %i.dqs = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dqr
  %i.dqt = load i8, ptr %i.dqs, align 1, !tbaa !100
  %.not270.i.i347 = icmp eq i8 %i.dqt, 0
  br i1 %.not270.i.i347, label %bb.qn, label %.loopexit995, !prof !62

bb.qn:                                            ; preds = %bb.qm
  %i.dqu = getelementptr inbounds nuw i8, ptr %.2240.i.i2802199, i64 3
  %i.dqv = load i8, ptr %i.dqu, align 1, !tbaa !100
  %i.dqw = zext i8 %i.dqv to i64
  %i.dqx = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dqw
  %i.dqy = load i8, ptr %i.dqx, align 1, !tbaa !100
  %.not271.i.i350 = icmp eq i8 %i.dqy, 0
  br i1 %.not271.i.i350, label %bb.qo, label %.loopexit996, !prof !62

bb.qo:                                            ; preds = %bb.qn
  %i.dqz = load i32, ptr %.2240.i.i2802199, align 1
  store i32 %i.dqz, ptr %.2247.i.i2792198, align 1
  %i.dra = getelementptr inbounds nuw i8, ptr %.2247.i.i2792198, i64 4 ; 2 uses
  %i.drb = getelementptr inbounds nuw i8, ptr %.2240.i.i2802199, i64 4 ; 3 uses
  %i.drc = ptrtoint ptr %i.drb to i64
  %i.drd = sub i64 %i.dmh, %i.drc
  %i.dre = icmp sgt i64 %i.drd, 3
  br i1 %i.dre, label %.lr.ph2200, label %.preheader990, !llvm.loop !24

.lr.ph2205:                                       ; preds = %.lr.ph2205.prol.loopexit, %bb.qp
  %.3241.i.i2822204 = phi ptr [ %i.dsb, %bb.qp ], [ %.3241.i.i2822204.unr, %.lr.ph2205.prol.loopexit ] ; 9 uses
  %.3248.i.i2812203 = phi ptr [ %i.dsc, %bb.qp ], [ %.3248.i.i2812203.unr, %.lr.ph2205.prol.loopexit ] ; 6 uses
  %i.drf = load i8, ptr %.3241.i.i2822204, align 1, !tbaa !100 ; 2 uses
  %i.drg = zext i8 %i.drf to i64
  %i.drh = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.drg
  %i.dri = load i8, ptr %i.drh, align 1, !tbaa !100
  %.not.i479.i = icmp eq i8 %i.dri, 0
  br i1 %.not.i479.i, label %.lr.ph2205.1, label %.preheader987.preheader, !prof !62

.lr.ph2205.1:                                     ; preds = %.lr.ph2205
  %i.drj = getelementptr inbounds nuw i8, ptr %.3241.i.i2822204, i64 1
  %i.drk = getelementptr inbounds nuw i8, ptr %.3248.i.i2812203, i64 1 ; 2 uses
  store i8 %i.drf, ptr %.3248.i.i2812203, align 1, !tbaa !100
  %i.drl = load i8, ptr %i.drj, align 1, !tbaa !100 ; 2 uses
  %i.drm = zext i8 %i.drl to i64
  %i.drn = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.drm
  %i.dro = load i8, ptr %i.drn, align 1, !tbaa !100
  %.not.i479.i.1 = icmp eq i8 %i.dro, 0
  br i1 %.not.i479.i.1, label %.lr.ph2205.2, label %.preheader987.preheader.loopexit.loopexit.split.loop.exit6375, !prof !62

.lr.ph2205.2:                                     ; preds = %.lr.ph2205.1
  %i.drp = getelementptr inbounds nuw i8, ptr %.3241.i.i2822204, i64 2
  %i.drq = getelementptr inbounds nuw i8, ptr %.3248.i.i2812203, i64 2 ; 2 uses
  store i8 %i.drl, ptr %i.drk, align 1, !tbaa !100
  %i.drr = load i8, ptr %i.drp, align 1, !tbaa !100 ; 2 uses
  %i.drs = zext i8 %i.drr to i64
  %i.drt = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.drs
  %i.dru = load i8, ptr %i.drt, align 1, !tbaa !100
  %.not.i479.i.2 = icmp eq i8 %i.dru, 0
  br i1 %.not.i479.i.2, label %.lr.ph2205.3, label %.preheader987.preheader.loopexit.loopexit.split.loop.exit6372, !prof !62

.lr.ph2205.3:                                     ; preds = %.lr.ph2205.2
  %i.drv = getelementptr inbounds nuw i8, ptr %.3241.i.i2822204, i64 3
  %i.drw = getelementptr inbounds nuw i8, ptr %.3248.i.i2812203, i64 3 ; 2 uses
  store i8 %i.drr, ptr %i.drq, align 1, !tbaa !100
  %i.drx = load i8, ptr %i.drv, align 1, !tbaa !100 ; 2 uses
  %i.dry = zext i8 %i.drx to i64
  %i.drz = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dry
  %i.dsa = load i8, ptr %i.drz, align 1, !tbaa !100
  %.not.i479.i.3 = icmp eq i8 %i.dsa, 0
  br i1 %.not.i479.i.3, label %bb.qp, label %.preheader987.preheader.loopexit.loopexit.split.loop.exit, !prof !62

bb.qp:                                            ; preds = %.lr.ph2205.3
  %i.dsb = getelementptr inbounds nuw i8, ptr %.3241.i.i2822204, i64 4 ; 2 uses
  %i.dsc = getelementptr inbounds nuw i8, ptr %.3248.i.i2812203, i64 4 ; 2 uses
  store i8 %i.drx, ptr %i.drw, align 1, !tbaa !100
  %exitcond2785.not.3 = icmp eq ptr %i.dsb, %scevgep2784
  br i1 %exitcond2785.not.3, label %write_str.exit581.i, label %.lr.ph2205, !llvm.loop !25

.loopexit994:                                     ; preds = %bb.pu, %bb.ql
  %i.dsd = phi i8 [ %i.dqg, %bb.ql ], [ %i.dmn, %bb.pu ]
  %.5250.i.i345 = phi ptr [ %.2247.i.i2792198, %bb.ql ], [ %.1246.i.i2772191, %bb.pu ] ; 2 uses
  %.5243.i.i346 = phi ptr [ %.2240.i.i2802199, %bb.ql ], [ %.1239.i.i2782192, %bb.pu ]
  store i8 %i.dsd, ptr %.5250.i.i345, align 1
  %i.dse = getelementptr inbounds nuw i8, ptr %.5250.i.i345, i64 1
  %i.dsf = getelementptr inbounds nuw i8, ptr %.5243.i.i346, i64 1
  br label %.preheader987.preheader

.loopexit995:                                     ; preds = %bb.pv, %bb.qm
  %.6251.i.i348 = phi ptr [ %.2247.i.i2792198, %bb.qm ], [ %.1246.i.i2772191, %bb.pv ] ; 2 uses
  %.6.i.i349 = phi ptr [ %.2240.i.i2802199, %bb.qm ], [ %.1239.i.i2782192, %bb.pv ] ; 2 uses
  %i.dsg = load i16, ptr %.6.i.i349, align 1
  store i16 %i.dsg, ptr %.6251.i.i348, align 1
  %i.dsh = getelementptr inbounds nuw i8, ptr %.6251.i.i348, i64 2
  %i.dsi = getelementptr inbounds nuw i8, ptr %.6.i.i349, i64 2
  br label %.preheader987.preheader

.loopexit996:                                     ; preds = %bb.pw, %bb.qn
  %.7252.i.i351 = phi ptr [ %.2247.i.i2792198, %bb.qn ], [ %.1246.i.i2772191, %bb.pw ] ; 2 uses
  %.7.i.i352 = phi ptr [ %.2240.i.i2802199, %bb.qn ], [ %.1239.i.i2782192, %bb.pw ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i.i351, ptr noundef nonnull align 1 dereferenceable(3) %.7.i.i352, i64 3, i1 false)
  %i.dsj = getelementptr inbounds nuw i8, ptr %.7252.i.i351, i64 3
  %i.dsk = getelementptr inbounds nuw i8, ptr %.7.i.i352, i64 3
  br label %.preheader987.preheader

bb.qq:                                            ; preds = %bb.px
  %i.dsl = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 4
  %i.dsm = load i32, ptr %.1239.i.i2782192, align 1
  store i32 %i.dsm, ptr %.1246.i.i2772191, align 1
  %i.dsn = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 4
  br label %.preheader987.preheader

bb.qr:                                            ; preds = %bb.py
  %i.dso = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i.i2772191, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i.i2782192, i64 5, i1 false)
  %i.dsp = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 5
  br label %.preheader987.preheader

bb.qs:                                            ; preds = %bb.pz
  %i.dsq = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i.i2772191, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i.i2782192, i64 6, i1 false)
  %i.dsr = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 6
  br label %.preheader987.preheader

bb.qt:                                            ; preds = %bb.qa
  %i.dss = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i.i2772191, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i.i2782192, i64 7, i1 false)
  %i.dst = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 7
  br label %.preheader987.preheader

bb.qu:                                            ; preds = %bb.qb
  %i.dsu = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 8
  %i.dsv = load i64, ptr %.1239.i.i2782192, align 1
  store i64 %i.dsv, ptr %.1246.i.i2772191, align 1
  %i.dsw = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 8
  br label %.preheader987.preheader

bb.qv:                                            ; preds = %bb.qc
  %i.dsx = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i.i2772191, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i.i2782192, i64 9, i1 false)
  %i.dsy = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 9
  br label %.preheader987.preheader

bb.qw:                                            ; preds = %bb.qd
  %i.dsz = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i.i2772191, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i.i2782192, i64 10, i1 false)
  %i.dta = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 10
  br label %.preheader987.preheader

bb.qx:                                            ; preds = %bb.qe
  %i.dtb = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.1246.i.i2772191, ptr noundef nonnull align 1 dereferenceable(11) %.1239.i.i2782192, i64 11, i1 false)
  %i.dtc = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 11
  br label %.preheader987.preheader

bb.qy:                                            ; preds = %bb.qf
  %i.dtd = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1246.i.i2772191, ptr noundef nonnull align 1 dereferenceable(12) %.1239.i.i2782192, i64 12, i1 false)
  %i.dte = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 12
  br label %.preheader987.preheader

bb.qz:                                            ; preds = %bb.qg
  %i.dtf = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.1246.i.i2772191, ptr noundef nonnull align 1 dereferenceable(13) %.1239.i.i2782192, i64 13, i1 false)
  %i.dtg = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 13
  br label %.preheader987.preheader

bb.ra:                                            ; preds = %bb.qh
  %i.dth = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.1246.i.i2772191, ptr noundef nonnull align 1 dereferenceable(14) %.1239.i.i2782192, i64 14, i1 false)
  %i.dti = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 14
  br label %.preheader987.preheader

bb.rb:                                            ; preds = %bb.qi
  %i.dtj = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.1246.i.i2772191, ptr noundef nonnull align 1 dereferenceable(15) %.1239.i.i2782192, i64 15, i1 false)
  %i.dtk = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 15
  br label %.preheader987.preheader

.preheader987.preheader.loopexit.loopexit.split.loop.exit: ; preds = %.lr.ph2205.3
  %i.dtl = getelementptr inbounds nuw i8, ptr %.3241.i.i2822204, i64 3
  br label %.preheader987.preheader

.preheader987.preheader.loopexit.loopexit.split.loop.exit6372: ; preds = %.lr.ph2205.2
  %i.dtm = getelementptr inbounds nuw i8, ptr %.3241.i.i2822204, i64 2
  br label %.preheader987.preheader

.preheader987.preheader.loopexit.loopexit.split.loop.exit6375: ; preds = %.lr.ph2205.1
  %i.dtn = getelementptr inbounds nuw i8, ptr %.3241.i.i2822204, i64 1
  br label %.preheader987.preheader

.preheader987.preheader:                          ; preds = %.lr.ph2194, %.lr.ph2200, %.lr.ph2205, %.preheader987.preheader.loopexit.loopexit.split.loop.exit6375, %.preheader987.preheader.loopexit.loopexit.split.loop.exit6372, %.preheader987.preheader.loopexit.loopexit.split.loop.exit, %.lr.ph2205.prol, %.loopexit994, %.loopexit995, %.loopexit996, %bb.qq, %bb.qr, %bb.qs, %bb.qt, %bb.qu, %bb.qv, %bb.qw, %bb.qx, %bb.qy, %bb.qz, %bb.ra, %bb.rb
  %.8253.i.i287.ph = phi ptr [ %.2247.i.i2792198, %.lr.ph2200 ], [ %.3248.i.i2812203.prol, %.lr.ph2205.prol ], [ %i.dse, %.loopexit994 ], [ %i.dsh, %.loopexit995 ], [ %i.dsj, %.loopexit996 ], [ %i.dsn, %bb.qq ], [ %i.dsp, %bb.qr ], [ %i.dsr, %bb.qs ], [ %i.dst, %bb.qt ], [ %i.dsw, %bb.qu ], [ %i.dsy, %bb.qv ], [ %i.dta, %bb.qw ], [ %i.dtc, %bb.qx ], [ %i.dte, %bb.qy ], [ %i.dtg, %bb.qz ], [ %i.dti, %bb.ra ], [ %i.dtk, %bb.rb ], [ %.3248.i.i2812203, %.lr.ph2205 ], [ %i.drk, %.preheader987.preheader.loopexit.loopexit.split.loop.exit6375 ], [ %i.drq, %.preheader987.preheader.loopexit.loopexit.split.loop.exit6372 ], [ %i.drw, %.preheader987.preheader.loopexit.loopexit.split.loop.exit ], [ %.1246.i.i2772191, %.lr.ph2194 ]
  %.8.i.i288.ph = phi ptr [ %.2240.i.i2802199, %.lr.ph2200 ], [ %.3241.i.i2822204.prol, %.lr.ph2205.prol ], [ %i.dsf, %.loopexit994 ], [ %i.dsi, %.loopexit995 ], [ %i.dsk, %.loopexit996 ], [ %i.dsl, %bb.qq ], [ %i.dso, %bb.qr ], [ %i.dsq, %bb.qs ], [ %i.dss, %bb.qt ], [ %i.dsu, %bb.qu ], [ %i.dsx, %bb.qv ], [ %i.dsz, %bb.qw ], [ %i.dtb, %bb.qx ], [ %i.dtd, %bb.qy ], [ %i.dtf, %bb.qz ], [ %i.dth, %bb.ra ], [ %i.dtj, %bb.rb ], [ %.3241.i.i2822204, %.lr.ph2205 ], [ %i.dtn, %.preheader987.preheader.loopexit.loopexit.split.loop.exit6375 ], [ %i.dtm, %.preheader987.preheader.loopexit.loopexit.split.loop.exit6372 ], [ %i.dtl, %.preheader987.preheader.loopexit.loopexit.split.loop.exit ], [ %.1239.i.i2782192, %.lr.ph2194 ]
  br label %.preheader987

.preheader987:                                    ; preds = %.preheader987.backedge, %.preheader987.preheader
  %.8253.i.i287 = phi ptr [ %.8253.i.i287.ph, %.preheader987.preheader ], [ %.8253.i.i287.be, %.preheader987.backedge ] ; 34 uses
  %.8.i.i288 = phi ptr [ %.8.i.i288.ph, %.preheader987.preheader ], [ %.8.i.i288.be, %.preheader987.backedge ] ; 23 uses
  %i.dto = getelementptr inbounds nuw i8, ptr %.8.i.i288, i64 4 ; 3 uses
  %i.dtp = icmp ugt ptr %i.dto, %i.dmg            ; 2 uses
  br i1 %i.dtp, label %bb.rc, label %._crit_edge2836, !prof !45

._crit_edge2836:                                  ; preds = %.preheader987
  %.pre2837 = load i8, ptr %.8.i.i288, align 1, !tbaa !100 ; 2 uses
  %.phi.trans.insert2838 = zext i8 %.pre2837 to i64 ; 2 uses
  %.phi.trans.insert2839 = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %.phi.trans.insert2838
  %.pre2840 = load i8, ptr %.phi.trans.insert2839, align 1, !tbaa !100
  br label %bb.rd

bb.rc:                                            ; preds = %.preheader987
  %i.dtq = ptrtoint ptr %.8.i.i288 to i64
  %i.dtr = sub i64 %i.dmh, %i.dtq
  %i.dts = load i8, ptr %.8.i.i288, align 1, !tbaa !100 ; 3 uses
  %i.dtt = zext i8 %i.dts to i64                  ; 2 uses
  %i.dtu = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dtt
  %i.dtv = load i8, ptr %i.dtu, align 1, !tbaa !100 ; 2 uses
  %i.dtw = lshr i8 %i.dtv, 1
  %i.dtx = zext nneg i8 %i.dtw to i64
  %i.dty = icmp slt i64 %i.dtr, %i.dtx
  br i1 %i.dty, label %bb.rw, label %bb.rd

bb.rd:                                            ; preds = %._crit_edge2836, %bb.rc
  %.pre-phi2859 = phi i64 [ %.phi.trans.insert2838, %._crit_edge2836 ], [ %i.dtt, %bb.rc ]
  %i.dtz = phi i8 [ %.pre2840, %._crit_edge2836 ], [ %i.dtv, %bb.rc ]
  %i.dua = phi i8 [ %.pre2837, %._crit_edge2836 ], [ %i.dts, %bb.rc ] ; 2 uses
  switch i8 %i.dtz, label %write_str.exit581.i [
    i8 0, label %bb.re
    i8 4, label %bb.rf
    i8 6, label %bb.rh
    i8 8, label %bb.rm
    i8 2, label %bb.ro
    i8 3, label %bb.rp
    i8 5, label %bb.rq
    i8 7, label %bb.rs
    i8 9, label %bb.ru
    i8 1, label %bb.rw
  ]

bb.re:                                            ; preds = %bb.rd
  %i.dub = getelementptr inbounds nuw i8, ptr %.8.i.i288, i64 1
  store i8 %i.dua, ptr %.8253.i.i287, align 1, !tbaa !100
  br label %bb.pt

bb.rf:                                            ; preds = %bb.rd
  %i.duc = load i16, ptr %.8.i.i288, align 1      ; 3 uses
  %.sroa.0658.0.insert.ext = zext i16 %i.duc to i32 ; 2 uses
  %i.dud = and i32 %.sroa.0658.0.insert.ext, 49376
  %i.due = icmp ne i32 %i.dud, 32960
  %i.duf = and i32 %.sroa.0658.0.insert.ext, 30
  %i.dug = icmp eq i32 %i.duf, 0
  %.not310.i.i340 = or i1 %i.due, %i.dug
  %i.duh = trunc i16 %i.duc to i8
  br i1 %.not310.i.i340, label %.thread868, label %bb.rg, !prof !45

bb.rg:                                            ; preds = %bb.rf
  store i16 %i.duc, ptr %.8253.i.i287, align 1
  %i.dui = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 2
  %i.duj = getelementptr inbounds nuw i8, ptr %.8.i.i288, i64 2
  br label %.preheader987.backedge

bb.rh:                                            ; preds = %bb.rd
  br i1 %i.dtp, label %bb.rk, label %bb.ri, !prof !45

bb.ri:                                            ; preds = %bb.rh
  %.sroa.0.0.copyload.i335.i.i331 = load i32, ptr %.8.i.i288, align 1 ; 4 uses
  %i.duk = and i32 %.sroa.0.0.copyload.i335.i.i331, 12632304
  %i.dul = icmp eq i32 %i.duk, 8421600
  %i.dum = trunc i32 %.sroa.0.0.copyload.i335.i.i331 to i8 ; 3 uses
  br i1 %i.dul, label %bb.rj, label %.thread868, !prof !62

bb.rj:                                            ; preds = %bb.ri
  %i.dun = and i32 %.sroa.0.0.copyload.i335.i.i331, 8207
  switch i32 %i.dun, label %.critedge.i.i332 [
    i32 8205, label %.thread868
    i32 0, label %.thread868
  ], !prof !151

bb.rk:                                            ; preds = %bb.rh
  %.sroa.0.0.copyload.i327.i.i335 = load i16, ptr %.8.i.i288, align 1 ; 2 uses
  %i.duo = getelementptr inbounds nuw i8, ptr %.8.i.i288, i64 2
  %i.dup = load i8, ptr %i.duo, align 1, !tbaa !100
  %.sroa.4.0.insert.ext.i328.i.i336 = zext i8 %i.dup to i32
  %.sroa.4.0.insert.shift.i329.i.i337 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i328.i.i336, 16
  %.sroa.0.0.insert.ext.i330.i.i338 = zext i16 %.sroa.0.0.copyload.i327.i.i335 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i331.i.i339 = or disjoint i32 %.sroa.4.0.insert.shift.i329.i.i337, %.sroa.0.0.insert.ext.i330.i.i338 ; 2 uses
  %i.duq = and i32 %.sroa.0.0.insert.insert.i331.i.i339, 12632304
  %i.dur = icmp eq i32 %i.duq, 8421600
  %i.dus = trunc i16 %.sroa.0.0.copyload.i327.i.i335 to i8 ; 3 uses
  br i1 %i.dur, label %bb.rl, label %.thread868, !prof !62

bb.rl:                                            ; preds = %bb.rk
  %i.dut = and i32 %.sroa.0.0.insert.ext.i330.i.i338, 8207
  switch i32 %i.dut, label %.critedge.i.i332 [
    i32 8205, label %.thread868
    i32 0, label %.thread868
  ], !prof !151

.critedge.i.i332:                                 ; preds = %bb.rl, %bb.rj
  %storemerge948 = phi i32 [ %.sroa.0.0.copyload.i335.i.i331, %bb.rj ], [ %.sroa.0.0.insert.insert.i331.i.i339, %bb.rl ]
  store i32 %storemerge948, ptr %.8253.i.i287, align 1
  %i.duu = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 3
  %i.duv = getelementptr inbounds nuw i8, ptr %.8.i.i288, i64 3
  br label %.preheader987.backedge

bb.rm:                                            ; preds = %bb.rd
  %.sroa.0.0.copyload.i334.i.i323 = load i32, ptr %.8.i.i288, align 1 ; 6 uses
  %i.duw = and i32 %.sroa.0.0.copyload.i334.i.i323, -1061109512
  %i.dux = icmp ne i32 %i.duw, -2139062032
  %i.duy = and i32 %.sroa.0.0.copyload.i334.i.i323, 12295
  %.not301.i.i324 = icmp eq i32 %i.duy, 0
  %or.cond.i.i325 = or i1 %i.dux, %.not301.i.i324
  %i.duz = trunc i32 %.sroa.0.0.copyload.i334.i.i323 to i8 ; 2 uses
  br i1 %or.cond.i.i325, label %.thread868, label %bb.rn, !prof !139

bb.rn:                                            ; preds = %bb.rm
  %i.dva = and i32 %.sroa.0.0.copyload.i334.i.i323, 4
  %i.dvb = icmp ne i32 %i.dva, 0
  %i.dvc = and i32 %.sroa.0.0.copyload.i334.i.i323, 12291
  %i.dvd = icmp ne i32 %i.dvc, 0
  %.not304.i.i326 = and i1 %i.dvb, %i.dvd
  br i1 %.not304.i.i326, label %.thread868, label %.critedge316.i.i327, !prof !45

.critedge316.i.i327:                              ; preds = %bb.rn
  store i32 %.sroa.0.0.copyload.i334.i.i323, ptr %.8253.i.i287, align 1
  %i.dve = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 4
  br label %.preheader987.backedge

bb.ro:                                            ; preds = %bb.rd
  %i.dvf = shl nuw nsw i64 %.pre-phi2859, 1
  %i.dvg = getelementptr inbounds nuw i8, ptr @esc_single_char_table, i64 %i.dvf
  %i.dvh = load i16, ptr %i.dvg, align 2
  store i16 %i.dvh, ptr %.8253.i.i287, align 1
  %i.dvi = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 2
  %i.dvj = getelementptr inbounds nuw i8, ptr %.8.i.i288, i64 1
  br label %.preheader987.backedge

.preheader987.backedge:                           ; preds = %bb.ro, %bb.rp, %bb.rx, %bb.ry, %bb.rg, %.critedge.i.i332, %.critedge316.i.i327, %bb.rr, %.critedge321.i.i308, %.critedge325.i.i299
  %.8253.i.i287.be = phi ptr [ %i.dzi, %bb.rx ], [ %i.dui, %bb.rg ], [ %i.duu, %.critedge.i.i332 ], [ %i.dve, %.critedge316.i.i327 ], [ %i.dvi, %bb.ro ], [ %i.dvq, %bb.rp ], [ %i.dwl, %bb.rr ], [ %i.dxi, %.critedge321.i.i308 ], [ %i.dze, %.critedge325.i.i299 ], [ %i.dzk, %bb.ry ]
  %.8.i.i288.be = phi ptr [ %i.dzh, %bb.rx ], [ %i.duj, %bb.rg ], [ %i.duv, %.critedge.i.i332 ], [ %i.dto, %.critedge316.i.i327 ], [ %i.dvj, %bb.ro ], [ %i.dvr, %bb.rp ], [ %i.dwm, %bb.rr ], [ %i.dxj, %.critedge321.i.i308 ], [ %i.dto, %.critedge325.i.i299 ], [ %i.dzl, %bb.ry ]
  br label %.preheader987

bb.rp:                                            ; preds = %bb.rd
  store i32 808482140, ptr %.8253.i.i287, align 1
  %i.dvk = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 4
  %i.dvl = load i8, ptr %.8.i.i288, align 1, !tbaa !100
  %i.dvm = zext i8 %i.dvl to i64
  %i.dvn = shl nuw nsw i64 %i.dvm, 1
  %i.dvo = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dvn
  %i.dvp = load i16, ptr %i.dvo, align 2
  store i16 %i.dvp, ptr %i.dvk, align 1
  %i.dvq = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 6
  %i.dvr = getelementptr inbounds nuw i8, ptr %.8.i.i288, i64 1
  br label %.preheader987.backedge

bb.rq:                                            ; preds = %bb.rd
  %.sroa.0.0.copyload.i332.i.i316 = load i16, ptr %.8.i.i288, align 1 ; 3 uses
  %.sroa.0655.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i.i316 to i32 ; 2 uses
  %i.dvs = and i32 %.sroa.0655.0.insert.ext, 49376
  %i.dvt = icmp ne i32 %i.dvs, 32960
  %i.dvu = and i32 %.sroa.0655.0.insert.ext, 30
  %i.dvv = icmp eq i32 %i.dvu, 0
  %.not298.i.i317 = or i1 %i.dvt, %i.dvv
  br i1 %.not298.i.i317, label %.thread878, label %bb.rr, !prof !45

bb.rr:                                            ; preds = %bb.rq
  %i.dvw = lshr i16 %.sroa.0.0.copyload.i332.i.i316, 8
  %i.dvx = trunc nuw i16 %i.dvw to i8
  %i.dvy = trunc i16 %.sroa.0.0.copyload.i332.i.i316 to i8 ; 2 uses
  %.tr299.i.i318 = shl i8 %i.dvy, 6
  %i.dvz = and i8 %i.dvx, 63
  store i16 30044, ptr %.8253.i.i287, align 1
  %i.dwa = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 2
  %i.dwb = lshr i8 %i.dvy, 1
  %i.dwc = and i8 %i.dwb, 14
  %i.dwd = zext nneg i8 %i.dwc to i64
  %i.dwe = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dwd
  %i.dwf = load i16, ptr %i.dwe, align 2
  store i16 %i.dwf, ptr %i.dwa, align 1
  %i.dwg = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 4
  %.narrow300.i.i319 = or disjoint i8 %i.dvz, %.tr299.i.i318
  %i.dwh = zext i8 %.narrow300.i.i319 to i64
  %i.dwi = shl nuw nsw i64 %i.dwh, 1
  %i.dwj = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dwi
  %i.dwk = load i16, ptr %i.dwj, align 2
  store i16 %i.dwk, ptr %i.dwg, align 1
  %i.dwl = getelementptr inbounds nuw i8, ptr %.8253.i.i287, i64 6
  %i.dwm = getelementptr inbounds nuw i8, ptr %.8.i.i288, i64 2
  br label %.preheader987.backedge

bb.rs:                                            ; preds = %bb.rd
  %.sroa.0.0.copyload.i.i.i303 = load i16, ptr %.8.i.i288, align 1 ; 3 uses
  %i.dwn = getelementptr inbounds nuw i8, ptr %.8.i.i288, i64 2
  %i.dwo = load i8, ptr %i.dwn, align 1, !tbaa !100 ; 2 uses
  %.sroa.4.0.insert.ext.i.i.i304 = zext i8 %i.dwo to i32
  %.sroa.4.0.insert.shift.i.i.i305 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i.i304, 16
  %.sroa.0.0.insert.ext.i.i.i306 = zext i16 %.sroa.0.0.copyload.i.i.i303 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i307 = or disjoint i32 %.sroa.4.0.insert.shift.i.i.i305, %.sroa.0.0.insert.ext.i.i.i306
  %i.dwp = and i32 %.sroa.0.0.insert.insert.i.i.i307, 12632304
  %i.dwq = icmp eq i32 %i.dwp, 8421600
  br i1 %i.dwq, label %bb.rt, label %.thread878, !prof !62

bb.rt:                                            ; preds = %bb.rs
  %i.dwr = and i32 %.sroa.0.0.insert.ext.i.i.i306, 8207
  switch i32 %i.dwr, label %.critedge321.i.i308 [
    i32 8205, label %.thread878
    i32 0, label %.thread878
  ], !prof !151

.critedge321.i.i308:                              ; preds = %bb.rt
  %i.dws = zext i16 %.sroa.0.0.copyload.i.i.i303 to i64
end_hunk_20
begin_hunk_21_@yyjson_mut_write_opts_impl:bb.a
vector.ph4899:                                    ; preds = %.lr.ph2169.preheader
  %n.vec4900 = and i64 %i.dzr, 9223372036854775800 ; 4 uses
  %i.dzt = shl i64 %n.vec4900, 2
  %i.dzu = sub i64 %.0.i478.i.lcssa, %i.dzt       ; 2 uses
  %i.dzv = shl i64 %n.vec4900, 2                  ; 2 uses
  %i.dzw = getelementptr i8, ptr %.018.i.i265.lcssa, i64 %i.dzv ; 2 uses
  %i.dzx = getelementptr i8, ptr %.021.i.i264.lcssa, i64 %i.dzv ; 2 uses
  br label %vector.body4901

vector.body4901:                                  ; preds = %vector.body4901, %vector.ph4899
  %index4902 = phi i64 [ 0, %vector.ph4899 ], [ %index.next4907, %vector.body4901 ] ; 2 uses
  %i.dzy = shl i64 %index4902, 2                  ; 2 uses
  %next.gep4903 = getelementptr i8, ptr %.018.i.i265.lcssa, i64 %i.dzy ; 2 uses
  %next.gep4904 = getelementptr i8, ptr %.021.i.i264.lcssa, i64 %i.dzy ; 2 uses
  %i.dzz = getelementptr i8, ptr %next.gep4903, i64 16
  %wide.load4905 = load <4 x i32>, ptr %next.gep4903, align 1
  %wide.load4906 = load <4 x i32>, ptr %i.dzz, align 1
  %i.eaa = getelementptr i8, ptr %next.gep4904, i64 16
  store <4 x i32> %wide.load4905, ptr %next.gep4904, align 1
  store <4 x i32> %wide.load4906, ptr %i.eaa, align 1
  %index.next4907 = add nuw i64 %index4902, 8     ; 2 uses
  %i.eab = icmp eq i64 %index.next4907, %n.vec4900
  br i1 %i.eab, label %middle.block4908, label %vector.body4901, !llvm.loop !429

middle.block4908:                                 ; preds = %vector.body4901
  %cmp.n4909 = icmp eq i64 %i.dzr, %n.vec4900
  br i1 %cmp.n4909, label %.preheader1017, label %.lr.ph2169.preheader5165

.lr.ph2169.preheader5165:                         ; preds = %.lr.ph2169.preheader, %middle.block4908
  %.1.i.i2682168.ph = phi i64 [ %.0.i478.i.lcssa, %.lr.ph2169.preheader ], [ %i.dzu, %middle.block4908 ]
  %.119.i.i2672167.ph = phi ptr [ %.018.i.i265.lcssa, %.lr.ph2169.preheader ], [ %i.dzw, %middle.block4908 ]
  %.122.i.i2662166.ph = phi ptr [ %.021.i.i264.lcssa, %.lr.ph2169.preheader ], [ %i.dzx, %middle.block4908 ]
  br label %.lr.ph2169

.lr.ph2162:                                       ; preds = %bb.rz, %.lr.ph2162
  %.0.i478.i2160 = phi i64 [ %i.eae, %.lr.ph2162 ], [ %i.cxz, %bb.rz ]
  %.018.i.i2652159 = phi ptr [ %i.ead, %.lr.ph2162 ], [ %i.cyb, %bb.rz ] ; 2 uses
  %.021.i.i2642158 = phi ptr [ %i.eac, %.lr.ph2162 ], [ %i.dzm, %bb.rz ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i.i2642158, ptr noundef nonnull align 1 dereferenceable(16) %.018.i.i2652159, i64 16, i1 false)
  %i.eac = getelementptr inbounds nuw i8, ptr %.021.i.i2642158, i64 16 ; 2 uses
  %i.ead = getelementptr inbounds nuw i8, ptr %.018.i.i2652159, i64 16 ; 2 uses
  %i.eae = add nsw i64 %.0.i478.i2160, -16        ; 3 uses
  %i.eaf = icmp ugt i64 %i.eae, 15
  br i1 %i.eaf, label %.lr.ph2162, label %.preheader1018, !llvm.loop !26

.preheader1017:                                   ; preds = %.lr.ph2169, %middle.block4908, %.preheader1018
  %.122.i.i266.lcssa = phi ptr [ %.021.i.i264.lcssa, %.preheader1018 ], [ %i.dzx, %middle.block4908 ], [ %i.eaz, %.lr.ph2169 ] ; 7 uses
  %.119.i.i267.lcssa = phi ptr [ %.018.i.i265.lcssa, %.preheader1018 ], [ %i.dzw, %middle.block4908 ], [ %i.eba, %.lr.ph2169 ] ; 6 uses
  %.1.i.i268.lcssa = phi i64 [ %.0.i478.i.lcssa, %.preheader1018 ], [ %i.dzu, %middle.block4908 ], [ %i.ebb, %.lr.ph2169 ] ; 11 uses
  %.not.i.i2722173 = icmp eq i64 %.1.i.i268.lcssa, 0
  br i1 %.not.i.i2722173, label %write_str.exit581.i, label %iter.check4876

iter.check4876:                                   ; preds = %.preheader1017
  %.119.i.i267.lcssa4855 = ptrtoaddr ptr %.119.i.i267.lcssa to i64
  %.122.i.i266.lcssa4854 = ptrtoaddr ptr %.122.i.i266.lcssa to i64
  %min.iters.check4858 = icmp ult i64 %.1.i.i268.lcssa, 4
  %i.eag = sub i64 %.119.i.i267.lcssa4855, %.122.i.i266.lcssa4854
  %diff.check4856 = icmp ugt i64 %i.eag, -32
  %or.cond4978 = select i1 %min.iters.check4858, i1 true, i1 %diff.check4856
  br i1 %or.cond4978, label %.lr.ph2177.preheader, label %vector.main.loop.iter.check4859

vector.main.loop.iter.check4859:                  ; preds = %iter.check4876
  %min.iters.check4860 = icmp ult i64 %.1.i.i268.lcssa, 32
  br i1 %min.iters.check4860, label %vec.epilog.ph4880, label %vector.ph4861

vector.ph4861:                                    ; preds = %vector.main.loop.iter.check4859
  %i.eah = and i64 %.1.i.i268.lcssa, 28
  %n.vec4862 = and i64 %.1.i.i268.lcssa, -32      ; 5 uses
  %i.eai = and i64 %.1.i.i268.lcssa, 31
  %i.eaj = getelementptr i8, ptr %.119.i.i267.lcssa, i64 %n.vec4862
  %i.eak = getelementptr i8, ptr %.122.i.i266.lcssa, i64 %n.vec4862 ; 2 uses
  br label %vector.body4863

vector.body4863:                                  ; preds = %vector.body4863, %vector.ph4861
  %index4864 = phi i64 [ 0, %vector.ph4861 ], [ %index.next4869, %vector.body4863 ] ; 3 uses
  %next.gep4865 = getelementptr i8, ptr %.119.i.i267.lcssa, i64 %index4864 ; 2 uses
  %next.gep4866 = getelementptr i8, ptr %.122.i.i266.lcssa, i64 %index4864 ; 2 uses
  %i.eal = getelementptr i8, ptr %next.gep4865, i64 16
  %wide.load4867 = load <16 x i8>, ptr %next.gep4865, align 1, !tbaa !100
  %wide.load4868 = load <16 x i8>, ptr %i.eal, align 1, !tbaa !100
  %i.eam = getelementptr i8, ptr %next.gep4866, i64 16
  store <16 x i8> %wide.load4867, ptr %next.gep4866, align 1, !tbaa !100
  store <16 x i8> %wide.load4868, ptr %i.eam, align 1, !tbaa !100
  %index.next4869 = add nuw i64 %index4864, 32    ; 2 uses
  %i.ean = icmp eq i64 %index.next4869, %n.vec4862
  br i1 %i.ean, label %middle.block4870, label %vector.body4863, !llvm.loop !430

middle.block4870:                                 ; preds = %vector.body4863
  %cmp.n4871 = icmp eq i64 %.1.i.i268.lcssa, %n.vec4862
  br i1 %cmp.n4871, label %write_str.exit581.i, label %vec.epilog.iter.check4878

vec.epilog.iter.check4878:                        ; preds = %middle.block4870
  %min.epilog.iters.check4879 = icmp eq i64 %i.eah, 0
  br i1 %min.epilog.iters.check4879, label %.lr.ph2177.preheader, label %vec.epilog.ph4880, !prof !152

vec.epilog.ph4880:                                ; preds = %vector.main.loop.iter.check4859, %vec.epilog.iter.check4878
  %vec.epilog.resume.val4872 = phi i64 [ %n.vec4862, %vec.epilog.iter.check4878 ], [ 0, %vector.main.loop.iter.check4859 ]
  %n.vec4881 = and i64 %.1.i.i268.lcssa, -4       ; 4 uses
  %i.eao = and i64 %.1.i.i268.lcssa, 3
  %i.eap = getelementptr i8, ptr %.119.i.i267.lcssa, i64 %n.vec4881
  %i.eaq = getelementptr i8, ptr %.122.i.i266.lcssa, i64 %n.vec4881 ; 2 uses
  br label %vec.epilog.vector.body4882

vec.epilog.vector.body4882:                       ; preds = %vec.epilog.vector.body4882, %vec.epilog.ph4880
  %index4883 = phi i64 [ %vec.epilog.resume.val4872, %vec.epilog.ph4880 ], [ %index.next4887, %vec.epilog.vector.body4882 ] ; 3 uses
  %next.gep4884 = getelementptr i8, ptr %.119.i.i267.lcssa, i64 %index4883
  %next.gep4885 = getelementptr i8, ptr %.122.i.i266.lcssa, i64 %index4883
  %wide.load4886 = load <4 x i8>, ptr %next.gep4884, align 1, !tbaa !100
  store <4 x i8> %wide.load4886, ptr %next.gep4885, align 1, !tbaa !100
  %index.next4887 = add nuw i64 %index4883, 4     ; 2 uses
  %i.ear = icmp eq i64 %index.next4887, %n.vec4881
  br i1 %i.ear, label %vec.epilog.middle.block4888, label %vec.epilog.vector.body4882, !llvm.loop !431

vec.epilog.middle.block4888:                      ; preds = %vec.epilog.vector.body4882
  %cmp.n4889 = icmp eq i64 %.1.i.i268.lcssa, %n.vec4881
  br i1 %cmp.n4889, label %write_str.exit581.i, label %.lr.ph2177.preheader

.lr.ph2177.preheader:                             ; preds = %iter.check4876, %vec.epilog.iter.check4878, %vec.epilog.middle.block4888
  %.2.i.i2712176.ph = phi i64 [ %.1.i.i268.lcssa, %iter.check4876 ], [ %i.eai, %vec.epilog.iter.check4878 ], [ %i.eao, %vec.epilog.middle.block4888 ] ; 4 uses
  %.220.i.i2702175.ph = phi ptr [ %.119.i.i267.lcssa, %iter.check4876 ], [ %i.eaj, %vec.epilog.iter.check4878 ], [ %i.eap, %vec.epilog.middle.block4888 ] ; 2 uses
  %.223.i.i2692174.ph = phi ptr [ %.122.i.i266.lcssa, %iter.check4876 ], [ %i.eak, %vec.epilog.iter.check4878 ], [ %i.eaq, %vec.epilog.middle.block4888 ] ; 2 uses
  %i.eas = add nsw i64 %.2.i.i2712176.ph, -1
  %xtraiter5652 = and i64 %.2.i.i2712176.ph, 7    ; 2 uses
  %lcmp.mod5653.not = icmp eq i64 %xtraiter5652, 0
  br i1 %lcmp.mod5653.not, label %.lr.ph2177.prol.loopexit, label %.lr.ph2177.prol

.lr.ph2177.prol:                                  ; preds = %.lr.ph2177.preheader, %.lr.ph2177.prol
  %.2.i.i2712176.prol = phi i64 [ %i.eaw, %.lr.ph2177.prol ], [ %.2.i.i2712176.ph, %.lr.ph2177.preheader ]
  %.220.i.i2702175.prol = phi ptr [ %i.eat, %.lr.ph2177.prol ], [ %.220.i.i2702175.ph, %.lr.ph2177.preheader ] ; 2 uses
  %.223.i.i2692174.prol = phi ptr [ %i.eav, %.lr.ph2177.prol ], [ %.223.i.i2692174.ph, %.lr.ph2177.preheader ] ; 2 uses
  %prol.iter5654 = phi i64 [ %prol.iter5654.next, %.lr.ph2177.prol ], [ 0, %.lr.ph2177.preheader ]
  %i.eat = getelementptr inbounds nuw i8, ptr %.220.i.i2702175.prol, i64 1 ; 2 uses
  %i.eau = load i8, ptr %.220.i.i2702175.prol, align 1, !tbaa !100
  %i.eav = getelementptr inbounds nuw i8, ptr %.223.i.i2692174.prol, i64 1 ; 3 uses
  store i8 %i.eau, ptr %.223.i.i2692174.prol, align 1, !tbaa !100
  %i.eaw = add nsw i64 %.2.i.i2712176.prol, -1    ; 2 uses
  %prol.iter5654.next = add i64 %prol.iter5654, 1 ; 2 uses
  %prol.iter5654.cmp.not = icmp eq i64 %prol.iter5654.next, %xtraiter5652
  br i1 %prol.iter5654.cmp.not, label %.lr.ph2177.prol.loopexit, label %.lr.ph2177.prol, !llvm.loop !432

.lr.ph2177.prol.loopexit:                         ; preds = %.lr.ph2177.prol, %.lr.ph2177.preheader
  %.lcssa5249.unr = phi ptr [ poison, %.lr.ph2177.preheader ], [ %i.eav, %.lr.ph2177.prol ]
  %.2.i.i2712176.unr = phi i64 [ %.2.i.i2712176.ph, %.lr.ph2177.preheader ], [ %i.eaw, %.lr.ph2177.prol ]
  %.220.i.i2702175.unr = phi ptr [ %.220.i.i2702175.ph, %.lr.ph2177.preheader ], [ %i.eat, %.lr.ph2177.prol ]
  %.223.i.i2692174.unr = phi ptr [ %.223.i.i2692174.ph, %.lr.ph2177.preheader ], [ %i.eav, %.lr.ph2177.prol ]
  %i.eax = icmp ult i64 %i.eas, 7
  br i1 %i.eax, label %write_str.exit581.i, label %.lr.ph2177

.lr.ph2169:                                       ; preds = %.lr.ph2169.preheader5165, %.lr.ph2169
  %.1.i.i2682168 = phi i64 [ %i.ebb, %.lr.ph2169 ], [ %.1.i.i2682168.ph, %.lr.ph2169.preheader5165 ]
  %.119.i.i2672167 = phi ptr [ %i.eba, %.lr.ph2169 ], [ %.119.i.i2672167.ph, %.lr.ph2169.preheader5165 ] ; 2 uses
  %.122.i.i2662166 = phi ptr [ %i.eaz, %.lr.ph2169 ], [ %.122.i.i2662166.ph, %.lr.ph2169.preheader5165 ] ; 2 uses
  %i.eay = load i32, ptr %.119.i.i2672167, align 1
  store i32 %i.eay, ptr %.122.i.i2662166, align 1
  %i.eaz = getelementptr inbounds nuw i8, ptr %.122.i.i2662166, i64 4 ; 2 uses
  %i.eba = getelementptr inbounds nuw i8, ptr %.119.i.i2672167, i64 4 ; 2 uses
  %i.ebb = add nsw i64 %.1.i.i2682168, -4         ; 3 uses
  %i.ebc = icmp ugt i64 %i.ebb, 3
  br i1 %i.ebc, label %.lr.ph2169, label %.preheader1017, !llvm.loop !433

.lr.ph2177:                                       ; preds = %.lr.ph2177.prol.loopexit, %.lr.ph2177
  %.2.i.i2712176 = phi i64 [ %i.ecb, %.lr.ph2177 ], [ %.2.i.i2712176.unr, %.lr.ph2177.prol.loopexit ]
  %.220.i.i2702175 = phi ptr [ %i.eby, %.lr.ph2177 ], [ %.220.i.i2702175.unr, %.lr.ph2177.prol.loopexit ] ; 9 uses
  %.223.i.i2692174 = phi ptr [ %i.eca, %.lr.ph2177 ], [ %.223.i.i2692174.unr, %.lr.ph2177.prol.loopexit ] ; 9 uses
  %i.ebd = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 1
  %i.ebe = load i8, ptr %.220.i.i2702175, align 1, !tbaa !100
  %i.ebf = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 1
  store i8 %i.ebe, ptr %.223.i.i2692174, align 1, !tbaa !100
  %i.ebg = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 2
  %i.ebh = load i8, ptr %i.ebd, align 1, !tbaa !100
  %i.ebi = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 2
  store i8 %i.ebh, ptr %i.ebf, align 1, !tbaa !100
  %i.ebj = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 3
  %i.ebk = load i8, ptr %i.ebg, align 1, !tbaa !100
  %i.ebl = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 3
  store i8 %i.ebk, ptr %i.ebi, align 1, !tbaa !100
  %i.ebm = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 4
  %i.ebn = load i8, ptr %i.ebj, align 1, !tbaa !100
  %i.ebo = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 4
  store i8 %i.ebn, ptr %i.ebl, align 1, !tbaa !100
  %i.ebp = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 5
  %i.ebq = load i8, ptr %i.ebm, align 1, !tbaa !100
  %i.ebr = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 5
  store i8 %i.ebq, ptr %i.ebo, align 1, !tbaa !100
  %i.ebs = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 6
  %i.ebt = load i8, ptr %i.ebp, align 1, !tbaa !100
  %i.ebu = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 6
  store i8 %i.ebt, ptr %i.ebr, align 1, !tbaa !100
  %i.ebv = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 7
  %i.ebw = load i8, ptr %i.ebs, align 1, !tbaa !100
  %i.ebx = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 7
  store i8 %i.ebw, ptr %i.ebu, align 1, !tbaa !100
  %i.eby = getelementptr inbounds nuw i8, ptr %.220.i.i2702175, i64 8
  %i.ebz = load i8, ptr %i.ebv, align 1, !tbaa !100
  %i.eca = getelementptr inbounds nuw i8, ptr %.223.i.i2692174, i64 8 ; 2 uses
  store i8 %i.ebz, ptr %i.ebx, align 1, !tbaa !100
  %i.ecb = add nsw i64 %.2.i.i2712176, -8         ; 2 uses
  %.not.i.i272.7 = icmp eq i64 %i.ecb, 0
  br i1 %.not.i.i272.7, label %write_str.exit581.i, label %.lr.ph2177, !llvm.loop !434

write_str.exit581.i:                              ; preds = %.preheader1004, %.lr.ph2177.prol.loopexit, %.lr.ph2177, %.preheader990, %bb.oi, %.lr.ph2154.prol.loopexit, %bb.ow, %bb.qp, %.lr.ph2205.prol.loopexit, %bb.rd, %middle.block4870, %vec.epilog.middle.block4888, %.preheader1017
  %.8253.i496.i.lcssa.sink4203 = phi ptr [ %.8253.i496.i, %bb.ow ], [ %.lcssa5319.unr, %.lr.ph2205.prol.loopexit ], [ %.8253.i.i287, %bb.rd ], [ %.2247.i.i279.lcssa, %.preheader990 ], [ %i.eca, %.lr.ph2177 ], [ %.lcssa5236.unr, %.lr.ph2154.prol.loopexit ], [ %.122.i.i266.lcssa, %.preheader1017 ], [ %i.eaq, %vec.epilog.middle.block4888 ], [ %i.eak, %middle.block4870 ], [ %i.dsc, %bb.qp ], [ %i.deu, %bb.oi ], [ %.lcssa5249.unr, %.lr.ph2177.prol.loopexit ], [ %.2247.i488.i.lcssa, %.preheader1004 ] ; 3 uses
  %i.ecc = getelementptr inbounds nuw i8, ptr %.8253.i496.i.lcssa.sink4203, i64 1
  store i8 34, ptr %.8253.i496.i.lcssa.sink4203, align 1, !tbaa !100
  %i.ecd = select i1 %.not446.i, i8 44, i8 58
  %i.ece = getelementptr inbounds nuw i8, ptr %.8253.i496.i.lcssa.sink4203, i64 2
  store i8 %i.ecd, ptr %i.ecc, align 1, !tbaa !100
  br label %bb.tt

bb.sa:                                            ; preds = %bb.ni
  %i.ecf = getelementptr inbounds nuw i8, ptr %.0390.i, i64 40
  %.not442.i = icmp ult ptr %i.ecf, %.0368.i
  br i1 %.not442.i, label %bb.sc, label %bb.sb, !prof !62

bb.sb:                                            ; preds = %bb.sa
  %i.ecg = lshr i64 %.0361.i, 1
  %i.ech = tail call i64 @llvm.umax.i64(i64 %i.ecg, i64 40)
  %i.eci = add nuw i64 %i.ech, 15
  %i.ecj = and i64 %i.eci, -16
  %i.eck = add i64 %i.ecj, %.0361.i               ; 4 uses
  %i.ecl = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0405.i, i64 noundef %.0361.i, i64 noundef %i.eck) #33, !inline_history !426 ; 6 uses
  %.not443.i = icmp eq ptr %i.ecl, null
  br i1 %.not443.i, label %.loopexit1019, label %.thread890, !prof !45

.thread890:                                       ; preds = %bb.sb
  %i.ecm = ptrtoint ptr %.0376.i to i64
  %i.ecn = ptrtoint ptr %.0368.i to i64           ; 2 uses
  %i.eco = sub i64 %i.ecm, %i.ecn                 ; 2 uses
  %i.ecp = ptrtoint ptr %.0390.i to i64
  %i.ecq = ptrtoint ptr %.0405.i to i64           ; 2 uses
  %i.ecr = sub i64 %i.ecp, %i.ecq
  %i.ecs = sub i64 %i.ecn, %i.ecq
  %i.ect = sub i64 %i.eck, %i.eco
  %i.ecu = getelementptr inbounds nuw i8, ptr %i.ecl, i64 %i.ect ; 2 uses
  %i.ecv = getelementptr inbounds nuw i8, ptr %i.ecl, i64 %i.ecs
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ecu, ptr nonnull align 1 %i.ecv, i64 %i.eco, i1 false)
  %i.ecw = getelementptr inbounds nuw i8, ptr %i.ecl, i64 %i.ecr
  %i.ecx = getelementptr inbounds nuw i8, ptr %i.ecl, i64 %i.eck
  %.pre2830 = load i64, ptr %.0423.i, align 8, !tbaa !99
  br label %bb.sc

bb.sc:                                            ; preds = %.thread890, %bb.sa
  %i.ecy = phi i64 [ %.pre2830, %.thread890 ], [ %i.cxt, %bb.sa ] ; 3 uses
  %.4409.i = phi ptr [ %i.ecl, %.thread890 ], [ %.0405.i, %bb.sa ] ; 2 uses
  %.5395.i = phi ptr [ %i.ecw, %.thread890 ], [ %.0390.i, %bb.sa ] ; 6 uses
  %.4380.i = phi ptr [ %i.ecx, %.thread890 ], [ %.0376.i, %bb.sa ]
  %.4372.i = phi ptr [ %i.ecu, %.thread890 ], [ %.0368.i, %bb.sa ]
  %.2363.i = phi i64 [ %i.eck, %.thread890 ], [ %.0361.i, %bb.sa ]
  %i.ecz = and i64 %i.ecy, 16
  %.not.i582.i = icmp eq i64 %i.ecz, 0
  %i.eda = getelementptr inbounds nuw i8, ptr %.0423.i, i64 8
  %i.edb = load i64, ptr %i.eda, align 8, !tbaa !100 ; 7 uses
  br i1 %.not.i582.i, label %bb.sd, label %bb.sw

bb.sd:                                            ; preds = %bb.sc
  %i.edc = sub i64 0, %i.edb
  %i.edd = lshr i64 %i.ecy, 3
  %.lobit.i.i214 = lshr i64 %i.edb, 63
  %i.ede = and i64 %.lobit.i.i214, %i.edd         ; 2 uses
  store i8 45, ptr %.5395.i, align 1, !tbaa !100
  %.not37.i.i215 = icmp eq i64 %i.ede, 0
  %i.edf = select i1 %.not37.i.i215, i64 %i.edb, i64 %i.edc ; 26 uses
  %i.edg = getelementptr inbounds nuw i8, ptr %.5395.i, i64 %i.ede ; 20 uses
  %i.edh = icmp ult i64 %i.edf, 100000000
  br i1 %i.edh, label %bb.se, label %bb.sl

bb.se:                                            ; preds = %bb.sd
  %i.edi = trunc nuw nsw i64 %i.edf to i32        ; 4 uses
  %i.edj = icmp samesign ult i64 %i.edf, 100
  br i1 %i.edj, label %bb.sf, label %bb.sg

bb.sf:                                            ; preds = %bb.se
  %i.edk = icmp samesign ult i64 %i.edf, 10       ; 2 uses
  %i.edl = shl nuw nsw i64 %i.edf, 1
  %i.edm = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.edl
  %.neg70.i.i.i260 = sext i1 %i.edk to i64
  %i.edn = zext i1 %i.edk to i64
  %i.edo = getelementptr inbounds nuw i8, ptr %i.edm, i64 %i.edn
  %i.edp = load i16, ptr %i.edo, align 1
  store i16 %i.edp, ptr %i.edg, align 1
  %i.edq = getelementptr inbounds i8, ptr %i.edg, i64 %.neg70.i.i.i260
  %i.edr = getelementptr inbounds nuw i8, ptr %i.edq, i64 2
  br label %write_num.exit.i204.thread

bb.sg:                                            ; preds = %bb.se
  %i.eds = icmp samesign ult i64 %i.edf, 10000
  br i1 %i.eds, label %bb.sh, label %bb.si

bb.sh:                                            ; preds = %bb.sg
  %i.edt = mul nuw nsw i32 %i.edi, 5243
  %i.edu = lshr i32 %i.edt, 19                    ; 2 uses
  %.neg68.i.i.i258 = mul nsw i32 %i.edu, -100
  %i.edv = add nsw i32 %.neg68.i.i.i258, %i.edi
  %i.edw = icmp samesign ult i64 %i.edf, 1000     ; 2 uses
  %i.edx = shl nuw nsw i32 %i.edu, 1
  %i.edy = zext nneg i32 %i.edx to i64
  %i.edz = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.edy
  %.neg69.i.i.i259 = sext i1 %i.edw to i64
  %i.eea = zext i1 %i.edw to i64
  %i.eeb = getelementptr inbounds nuw i8, ptr %i.edz, i64 %i.eea
  %i.eec = load i16, ptr %i.eeb, align 1
  store i16 %i.eec, ptr %i.edg, align 1
  %i.eed = getelementptr inbounds i8, ptr %i.edg, i64 %.neg69.i.i.i259 ; 2 uses
  %i.eee = getelementptr inbounds nuw i8, ptr %i.eed, i64 2
  %i.eef = shl nsw i32 %i.edv, 1
  %i.eeg = zext i32 %i.eef to i64
  %i.eeh = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.eeg
  %i.eei = load i16, ptr %i.eeh, align 2
  store i16 %i.eei, ptr %i.eee, align 1
  %i.eej = getelementptr inbounds nuw i8, ptr %i.eed, i64 4
  br label %write_num.exit.i204.thread

bb.si:                                            ; preds = %bb.sg
  %i.eek = icmp samesign ult i64 %i.edf, 1000000
  br i1 %i.eek, label %bb.sj, label %bb.sk

bb.sj:                                            ; preds = %bb.si
  %i.eel = mul nuw nsw i64 %i.edf, 429497
  %i.eem = lshr i64 %i.eel, 32                    ; 2 uses
  %i.een = trunc nuw nsw i64 %i.eem to i32
  %.neg65.i.i.i255 = mul nsw i32 %i.een, -10000
  %i.eeo = add nsw i32 %.neg65.i.i.i255, %i.edi   ; 2 uses
  %i.eep = mul i32 %i.eeo, 5243
  %i.eeq = lshr i32 %i.eep, 19                    ; 2 uses
  %.neg66.i.i.i256 = mul nsw i32 %i.eeq, -100
  %i.eer = add nsw i32 %.neg66.i.i.i256, %i.eeo
  %i.ees = icmp samesign ult i64 %i.edf, 100000   ; 2 uses
  %i.eet = shl nuw nsw i64 %i.eem, 1
  %i.eeu = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.eet
  %.neg67.i.i.i257 = sext i1 %i.ees to i64
  %i.eev = zext i1 %i.ees to i64
  %i.eew = getelementptr inbounds nuw i8, ptr %i.eeu, i64 %i.eev
  %i.eex = load i16, ptr %i.eew, align 1
  store i16 %i.eex, ptr %i.edg, align 1
  %i.eey = getelementptr inbounds i8, ptr %i.edg, i64 %.neg67.i.i.i257 ; 3 uses
  %i.eez = getelementptr inbounds nuw i8, ptr %i.eey, i64 2
  %i.efa = shl nuw nsw i32 %i.eeq, 1
  %i.efb = zext nneg i32 %i.efa to i64
  %i.efc = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.efb
  %i.efd = load i16, ptr %i.efc, align 2
  store i16 %i.efd, ptr %i.eez, align 1
  %i.efe = getelementptr inbounds nuw i8, ptr %i.eey, i64 4
  %i.eff = shl nsw i32 %i.eer, 1
  %i.efg = zext i32 %i.eff to i64
  %i.efh = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.efg
  %i.efi = load i16, ptr %i.efh, align 2
  store i16 %i.efi, ptr %i.efe, align 1
  %i.efj = getelementptr inbounds nuw i8, ptr %i.eey, i64 6
  br label %write_num.exit.i204.thread

bb.sk:                                            ; preds = %bb.si
  %i.efk = mul nuw nsw i64 %i.edf, 109951163
  %i.efl = lshr i64 %i.efk, 40
  %i.efm = trunc nuw nsw i64 %i.efl to i32        ; 3 uses
  %.neg.i42.i.i249 = mul nsw i32 %i.efm, -10000
  %i.efn = add nsw i32 %.neg.i42.i.i249, %i.edi   ; 2 uses
  %i.efo = mul nuw nsw i32 %i.efm, 5243
  %i.efp = lshr i32 %i.efo, 19                    ; 2 uses
  %i.efq = mul i32 %i.efn, 5243
  %i.efr = lshr i32 %i.efq, 19                    ; 2 uses
  %.neg62.i.i.i250 = mul nsw i32 %i.efp, -100
  %i.efs = add nsw i32 %.neg62.i.i.i250, %i.efm
  %.neg63.i.i.i251 = mul i32 %i.efr, 2147483548
  %i.eft = add i32 %.neg63.i.i.i251, %i.efn
  %i.efu = icmp samesign ult i64 %i.edf, 10000000 ; 2 uses
  %i.efv = shl nuw nsw i32 %i.efp, 1
  %i.efw = zext nneg i32 %i.efv to i64
  %i.efx = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.efw
  %.neg64.i.i.i252 = sext i1 %i.efu to i64
  %i.efy = zext i1 %i.efu to i64
  %i.efz = getelementptr inbounds nuw i8, ptr %i.efx, i64 %i.efy
  %i.ega = load i16, ptr %i.efz, align 1
  store i16 %i.ega, ptr %i.edg, align 1
  %i.egb = getelementptr inbounds i8, ptr %i.edg, i64 %.neg64.i.i.i252 ; 4 uses
  %i.egc = getelementptr inbounds nuw i8, ptr %i.egb, i64 2
  %i.egd = shl nsw i32 %i.efs, 1
  %i.ege = zext i32 %i.egd to i64
  %i.egf = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ege
  %i.egg = load i16, ptr %i.egf, align 2
  store i16 %i.egg, ptr %i.egc, align 1
  %i.egh = getelementptr inbounds nuw i8, ptr %i.egb, i64 4
  %i.egi = shl nuw nsw i32 %i.efr, 1
  %i.egj = zext nneg i32 %i.egi to i64
  %i.egk = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.egj
  %i.egl = load i16, ptr %i.egk, align 2
  store i16 %i.egl, ptr %i.egh, align 1
  %i.egm = getelementptr inbounds nuw i8, ptr %i.egb, i64 6
  %i.egn = shl i32 %i.eft, 1
  %i.ego = zext i32 %i.egn to i64
  %i.egp = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ego
  %i.egq = load i16, ptr %i.egp, align 2
  store i16 %i.egq, ptr %i.egm, align 1
  %i.egr = getelementptr inbounds nuw i8, ptr %i.egb, i64 8
  br label %write_num.exit.i204.thread

bb.sl:                                            ; preds = %bb.sd
  %i.egs = icmp ult i64 %i.edf, 10000000000000000
  %i.egt = udiv i64 %i.edf, 100000000             ; 6 uses
  %.neg28.i.i.i233 = mul i64 %i.egt, 4194967296
  %i.egu = add i64 %.neg28.i.i.i233, %i.edf       ; 3 uses
  %i.egv = trunc i64 %i.egu to i32                ; 2 uses
  br i1 %i.egs, label %bb.sm, label %bb.st

bb.sm:                                            ; preds = %bb.sl
  %i.egw = trunc nuw nsw i64 %i.egt to i32        ; 4 uses
  %i.egx = icmp samesign ult i64 %i.edf, 10000000000
end_hunk_21
