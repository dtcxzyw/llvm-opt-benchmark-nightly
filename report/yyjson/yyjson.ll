Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@write_f32_raw:bb.a
  %i.sz = trunc nuw nsw i64 %i.sy to i32          ; 3 uses
  %.neg.i = mul i32 %i.sz, -10000
  %i.ta = add i32 %.neg.i, %.0174                 ; 2 uses
  %i.tb = mul nuw i32 %i.sz, 5243
  %i.tc = lshr i32 %i.tb, 19                      ; 2 uses
  %i.td = mul i32 %i.ta, 5243
  %i.te = lshr i32 %i.td, 19                      ; 2 uses
  %.neg62.i = mul nsw i32 %i.tc, -100
  %i.tf = add nsw i32 %.neg62.i, %i.sz
  %.neg63.i = mul i32 %i.te, 2147483548
  %i.tg = add i32 %.neg63.i, %i.ta
  %i.th = icmp ult i32 %.0174, 10000000           ; 2 uses
  %i.ti = shl nuw nsw i32 %i.tc, 1
  %i.tj = zext nneg i32 %i.ti to i64
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
  store i8 %i.uf, ptr %i.q, align 1, !tbaa !81
  store i8 46, ptr %i.qt, align 1, !tbaa !81
  %i.ug = getelementptr inbounds i8, ptr %.0.i, i64 -1
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !81
  %i.ui = icmp eq i8 %i.uh, 48
  %.neg = sext i1 %i.ui to i64
  %i.uj = getelementptr inbounds i8, ptr %.0.i, i64 %.neg ; 2 uses
  %i.uk = getelementptr inbounds i8, ptr %i.uj, i64 -1
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !81
  %i.um = icmp eq i8 %i.ul, 48
  %.neg98 = sext i1 %i.um to i64
  %i.un = getelementptr inbounds i8, ptr %i.uj, i64 %.neg98
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %write_u32_len_1_to_8.exit
  %.092 = phi ptr [ %i.un, %write_u32_len_1_to_8.exit ], [ %i.uo, %bb.at ] ; 2 uses
  %i.uo = getelementptr inbounds i8, ptr %.092, i64 -1 ; 2 uses
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !81  ; 2 uses
  %i.uq = icmp eq i8 %i.up, 48
  br i1 %i.uq, label %bb.at, label %bb.au, !llvm.loop !326

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
  %.sroa.0849.0.copyload = load ptr, ptr %2, align 8, !tbaa !10
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !10
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !10
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !10
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
  br i1 %.not28, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  br i1 %.not27, label %.cont793, label %.else795

.else795:                                         ; preds = %bb.d
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %.cont793

.cont793:                                         ; preds = %bb.d, %.else795
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.29, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  store i32 1, ptr %spec.store.select, align 8, !tbaa !329
  br label %yyjson_write_single.exit

bb.e:                                             ; preds = %bb.c
  %i.a = load i64, ptr %0, align 8, !tbaa !79     ; 5 uses
  %i.b = trunc i64 %i.a to i8                     ; 2 uses
  %i.c = and i8 %i.b, 6
  %i.d = icmp ne i8 %i.c, 6
  %i.e = icmp ult i64 %i.a, 256
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.f, label %bb.fs

bb.f:                                             ; preds = %bb.e
  %i.f = and i32 %1, 2
  %.not1299 = icmp eq i32 %i.f, 0                 ; 3 uses
  %i.g = and i32 %1, 4
  %.not1300 = icmp eq i32 %i.g, 0                 ; 2 uses
  br i1 %.not1299, label %bb.h, label %bb.g, !prof !25

bb.g:                                             ; preds = %bb.f
  %enc_table_esc_slash.enc_table_esc.i65 = select i1 %.not1300, ptr @enc_table_esc, ptr @enc_table_esc_slash, !prof !25
  br label %get_enc_table_with_flag.exit66

bb.h:                                             ; preds = %bb.f
  %enc_table_cpy_slash.enc_table_cpy.i63 = select i1 %.not1300, ptr @enc_table_cpy, ptr @enc_table_cpy_slash, !prof !25
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
    i8 4, label %bb.ee
    i8 3, label %bb.fg
    i8 2, label %bb.fh
    i8 6, label %bb.fj
    i8 7, label %bb.fl
    i8 0, label %bb.fq
  ]

bb.i:                                             ; preds = %get_enc_table_with_flag.exit66
  %i.l = lshr i64 %i.a, 8                         ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.o = add nuw nsw i64 %i.l, 2
  %i.p = tail call ptr %.sroa.0849.0(ptr noundef %.sroa.9.0, i64 noundef %i.o) #33, !inline_history !330 ; 4 uses
  %.not107.i = icmp eq ptr %i.p, null
  br i1 %.not107.i, label %bb.fp, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.n, i64 range(i64 0, 72057594037927936) %i.l, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l
  br label %write_str.exit605

bb.k:                                             ; preds = %get_enc_table_with_flag.exit66
  %i.r = lshr i64 %i.a, 8                         ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81   ; 7 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 2 uses
  %i.v = mul nuw nsw i64 %i.r, 6
  %i.w = add nuw nsw i64 %i.v, 4
  %i.x = tail call ptr %.sroa.0849.0(ptr noundef %.sroa.9.0, i64 noundef %i.w) #33, !inline_history !330 ; 12 uses
  %.not104.i = icmp eq ptr %i.x, null
  br i1 %.not104.i, label %bb.fp, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.h, label %bb.bu, label %.split.i, !prof !25

.split.i:                                         ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r ; 4 uses
  store i8 34, ptr %i.x, align 1, !tbaa !81
  %i.z = ptrtoint ptr %i.y to i64                 ; 5 uses
  %i.aa = add i64 %i.r, %i.u
  br label %bb.m

bb.m:                                             ; preds = %bb.ay, %.split.i
  %.pn.i507 = phi ptr [ %i.x, %.split.i ], [ %.8253.i520, %bb.ay ]
  %.0238.i508 = phi ptr [ %i.t, %.split.i ], [ %i.hu, %bb.ay ] ; 3 uses
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
  %i.af = load i8, ptr %.1239.i5112570, align 1, !tbaa !81 ; 2 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !81
  %.not272.i589 = icmp eq i8 %i.ai, 0
  br i1 %.not272.i589, label %bb.n, label %.preheader1322.preheader, !prof !25

bb.n:                                             ; preds = %.lr.ph2572
  %i.aj = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !81
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !81
  %.not273.i590 = icmp eq i8 %i.an, 0
  br i1 %.not273.i590, label %bb.o, label %.loopexit1329, !prof !25

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !81
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !81
  %.not274.i591 = icmp eq i8 %i.as, 0
  br i1 %.not274.i591, label %bb.p, label %.loopexit1330, !prof !25

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !81
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !81
  %.not275.i592 = icmp eq i8 %i.ax, 0
  br i1 %.not275.i592, label %bb.q, label %.loopexit1331, !prof !25

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !81
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !81
  %.not276.i593 = icmp eq i8 %i.bc, 0
  br i1 %.not276.i593, label %bb.r, label %bb.aj, !prof !25

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !81
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !81
  %.not277.i594 = icmp eq i8 %i.bh, 0
  br i1 %.not277.i594, label %bb.s, label %bb.ak, !prof !25

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 6
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !81
  %.not278.i595 = icmp eq i8 %i.bm, 0
  br i1 %.not278.i595, label %bb.t, label %bb.al, !prof !25

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !81
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %.not279.i596 = icmp eq i8 %i.br, 0
  br i1 %.not279.i596, label %bb.u, label %bb.am, !prof !25

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 8
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !81
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !81
  %.not280.i597 = icmp eq i8 %i.bw, 0
  br i1 %.not280.i597, label %bb.v, label %bb.an, !prof !25

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 9
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !81
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !81
  %.not281.i598 = icmp eq i8 %i.cb, 0
  br i1 %.not281.i598, label %bb.w, label %bb.ao, !prof !25

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 10
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !81
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !81
  %.not282.i599 = icmp eq i8 %i.cg, 0
  br i1 %.not282.i599, label %bb.x, label %bb.ap, !prof !25

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 11
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !81
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !81
  %.not283.i600 = icmp eq i8 %i.cl, 0
  br i1 %.not283.i600, label %bb.y, label %bb.aq, !prof !25

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 12
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !81
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !81
  %.not284.i601 = icmp eq i8 %i.cq, 0
  br i1 %.not284.i601, label %bb.z, label %bb.ar, !prof !25

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 13
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !81
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !81
  %.not285.i602 = icmp eq i8 %i.cv, 0
  br i1 %.not285.i602, label %bb.aa, label %bb.as, !prof !25

bb.aa:                                            ; preds = %bb.z
  %i.cw = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 14
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !81
  %.not286.i603 = icmp eq i8 %i.da, 0
  br i1 %.not286.i603, label %bb.ab, label %bb.at, !prof !25

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 15
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !81
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !81
  %.not287.i604 = icmp eq i8 %i.df, 0
  br i1 %.not287.i604, label %bb.ac, label %bb.au, !prof !25

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i5102569, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i5112570, i64 16, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 16 ; 3 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.z, %i.di                     ; 2 uses
  %i.dk = icmp sgt i64 %i.dj, 15
  br i1 %i.dk, label %.lr.ph2572, label %.preheader1327, !llvm.loop !331

.preheader1325:                                   ; preds = %bb.ah, %.preheader1327
  %.2247.i512.lcssa = phi ptr [ %.1246.i510.lcssa, %.preheader1327 ], [ %i.er, %bb.ah ] ; 3 uses
  %.2240.i513.lcssa = phi ptr [ %.1239.i511.lcssa, %.preheader1327 ], [ %i.es, %bb.ah ] ; 5 uses
  %i.dl = icmp ugt ptr %i.y, %.2240.i513.lcssa
  br i1 %i.dl, label %.lr.ph2583.preheader, label %.preheader1325._crit_edge

.lr.ph2583.preheader:                             ; preds = %.preheader1325
  %.2240.i513.lcssa3132 = ptrtoaddr ptr %.2240.i513.lcssa to i64 ; 2 uses
  %scevgep3131 = getelementptr i8, ptr %.2240.i513.lcssa, i64 %i.z
  %i.dm = sub i64 0, %.2240.i513.lcssa3132
  %scevgep3133 = getelementptr i8, ptr %scevgep3131, i64 %i.dm
  %i.dn = sub i64 %i.aa, %.2240.i513.lcssa3132
  %i.do = freeze i64 %i.dn                        ; 2 uses
  %i.dp = add i64 %i.do, -1
  %xtraiter5997 = and i64 %i.do, 3                ; 2 uses
  %lcmp.mod5998.not = icmp eq i64 %xtraiter5997, 0
  br i1 %lcmp.mod5998.not, label %.lr.ph2583.prol.loopexit, label %.lr.ph2583.prol

.lr.ph2583.prol:                                  ; preds = %.lr.ph2583.preheader, %bb.ad
  %.3241.i5152582.prol = phi ptr [ %i.du, %bb.ad ], [ %.2240.i513.lcssa, %.lr.ph2583.preheader ] ; 3 uses
  %.3248.i5142581.prol = phi ptr [ %i.dv, %bb.ad ], [ %.2247.i512.lcssa, %.lr.ph2583.preheader ] ; 3 uses
  %prol.iter5999 = phi i64 [ %prol.iter5999.next, %bb.ad ], [ 0, %.lr.ph2583.preheader ]
  %i.dq = load i8, ptr %.3241.i5152582.prol, align 1, !tbaa !81 ; 2 uses
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !81
  %.not.i517.prol = icmp eq i8 %i.dt, 0
  br i1 %.not.i517.prol, label %bb.ad, label %.preheader1322.preheader, !prof !25

bb.ad:                                            ; preds = %.lr.ph2583.prol
  %i.du = getelementptr inbounds nuw i8, ptr %.3241.i5152582.prol, i64 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.3248.i5142581.prol, i64 1 ; 3 uses
  store i8 %i.dq, ptr %.3248.i5142581.prol, align 1, !tbaa !81
  %prol.iter5999.next = add i64 %prol.iter5999, 1 ; 2 uses
  %prol.iter5999.cmp.not = icmp eq i64 %prol.iter5999.next, %xtraiter5997
  br i1 %prol.iter5999.cmp.not, label %.lr.ph2583.prol.loopexit, label %.lr.ph2583.prol, !llvm.loop !332

.lr.ph2583.prol.loopexit:                         ; preds = %bb.ad, %.lr.ph2583.preheader
  %.lcssa5479.unr = phi ptr [ poison, %.lr.ph2583.preheader ], [ %i.dv, %bb.ad ]
  %.3241.i5152582.unr = phi ptr [ %.2240.i513.lcssa, %.lr.ph2583.preheader ], [ %i.du, %bb.ad ]
  %.3248.i5142581.unr = phi ptr [ %.2247.i512.lcssa, %.lr.ph2583.preheader ], [ %i.dv, %bb.ad ]
  %i.dw = icmp ult i64 %i.dp, 3
  br i1 %i.dw, label %.preheader1325._crit_edge, label %.lr.ph2583

.lr.ph2578:                                       ; preds = %.preheader1327, %bb.ah
  %.2240.i5132577 = phi ptr [ %i.es, %bb.ah ], [ %.1239.i511.lcssa, %.preheader1327 ] ; 10 uses
  %.2247.i5122576 = phi ptr [ %i.er, %bb.ah ], [ %.1246.i510.lcssa, %.preheader1327 ] ; 6 uses
  %i.dx = load i8, ptr %.2240.i5132577, align 1, !tbaa !81 ; 2 uses
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !81
  %.not268.i579 = icmp eq i8 %i.ea, 0
  br i1 %.not268.i579, label %bb.ae, label %.preheader1322.preheader, !prof !25

bb.ae:                                            ; preds = %.lr.ph2578
  %i.eb = getelementptr inbounds nuw i8, ptr %.2240.i5132577, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !81
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !81
  %.not269.i580 = icmp eq i8 %i.ef, 0
  br i1 %.not269.i580, label %bb.af, label %.loopexit1329, !prof !25

bb.af:                                            ; preds = %bb.ae
  %i.eg = getelementptr inbounds nuw i8, ptr %.2240.i5132577, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !81
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !81
  %.not270.i583 = icmp eq i8 %i.ek, 0
  br i1 %.not270.i583, label %bb.ag, label %.loopexit1330, !prof !25

bb.ag:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds nuw i8, ptr %.2240.i5132577, i64 3
  %i.em = load i8, ptr %i.el, align 1, !tbaa !81
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !81
  %.not271.i586 = icmp eq i8 %i.ep, 0
  br i1 %.not271.i586, label %bb.ah, label %.loopexit1331, !prof !25

bb.ah:                                            ; preds = %bb.ag
  %i.eq = load i32, ptr %.2240.i5132577, align 1
  store i32 %i.eq, ptr %.2247.i5122576, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %.2247.i5122576, i64 4 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.2240.i5132577, i64 4 ; 3 uses
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = sub i64 %i.z, %i.et
  %i.ev = icmp sgt i64 %i.eu, 3
  br i1 %i.ev, label %.lr.ph2578, label %.preheader1325, !llvm.loop !333

.lr.ph2583:                                       ; preds = %.lr.ph2583.prol.loopexit, %bb.ai
  %.3241.i5152582 = phi ptr [ %i.fs, %bb.ai ], [ %.3241.i5152582.unr, %.lr.ph2583.prol.loopexit ] ; 9 uses
  %.3248.i5142581 = phi ptr [ %i.ft, %bb.ai ], [ %.3248.i5142581.unr, %.lr.ph2583.prol.loopexit ] ; 6 uses
  %i.ew = load i8, ptr %.3241.i5152582, align 1, !tbaa !81 ; 2 uses
  %i.ex = zext i8 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !81
  %.not.i517 = icmp eq i8 %i.ez, 0
  br i1 %.not.i517, label %.lr.ph2583.1, label %.preheader1322.preheader, !prof !25

.lr.ph2583.1:                                     ; preds = %.lr.ph2583
  %i.fa = getelementptr inbounds nuw i8, ptr %.3241.i5152582, i64 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.3248.i5142581, i64 1 ; 2 uses
  store i8 %i.ew, ptr %.3248.i5142581, align 1, !tbaa !81
  %i.fc = load i8, ptr %i.fa, align 1, !tbaa !81  ; 2 uses
  %i.fd = zext i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !81
  %.not.i517.1 = icmp eq i8 %i.ff, 0
  br i1 %.not.i517.1, label %.lr.ph2583.2, label %.preheader1322.preheader.loopexit.loopexit.split.loop.exit6716, !prof !25

.lr.ph2583.2:                                     ; preds = %.lr.ph2583.1
  %i.fg = getelementptr inbounds nuw i8, ptr %.3241.i5152582, i64 2
  %i.fh = getelementptr inbounds nuw i8, ptr %.3248.i5142581, i64 2 ; 2 uses
  store i8 %i.fc, ptr %i.fb, align 1, !tbaa !81
  %i.fi = load i8, ptr %i.fg, align 1, !tbaa !81  ; 2 uses
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !81
  %.not.i517.2 = icmp eq i8 %i.fl, 0
  br i1 %.not.i517.2, label %.lr.ph2583.3, label %.preheader1322.preheader.loopexit.loopexit.split.loop.exit6713, !prof !25

.lr.ph2583.3:                                     ; preds = %.lr.ph2583.2
  %i.fm = getelementptr inbounds nuw i8, ptr %.3241.i5152582, i64 3
  %i.fn = getelementptr inbounds nuw i8, ptr %.3248.i5142581, i64 3 ; 2 uses
  store i8 %i.fi, ptr %i.fh, align 1, !tbaa !81
  %i.fo = load i8, ptr %i.fm, align 1, !tbaa !81  ; 2 uses
  %i.fp = zext i8 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i64, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !81
  %.not.i517.3 = icmp eq i8 %i.fr, 0
  br i1 %.not.i517.3, label %bb.ai, label %.preheader1322.preheader.loopexit.loopexit.split.loop.exit, !prof !25

bb.ai:                                            ; preds = %.lr.ph2583.3
  %i.fs = getelementptr inbounds nuw i8, ptr %.3241.i5152582, i64 4 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.3248.i5142581, i64 4 ; 2 uses
  store i8 %i.fo, ptr %i.fn, align 1, !tbaa !81
  %exitcond3134.not.3 = icmp eq ptr %i.fs, %scevgep3133
  br i1 %exitcond3134.not.3, label %.preheader1325._crit_edge, label %.lr.ph2583, !llvm.loop !334

.preheader1325._crit_edge:                        ; preds = %.preheader1325, %bb.ai, %.lr.ph2583.prol.loopexit
  %.3248.i514.lcssa = phi ptr [ %.lcssa5479.unr, %.lr.ph2583.prol.loopexit ], [ %i.ft, %bb.ai ], [ %.2247.i512.lcssa, %.preheader1325 ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.3248.i514.lcssa, i64 1
  store i8 34, ptr %.3248.i514.lcssa, align 1, !tbaa !81
  br label %write_str.exit605

.loopexit1329:                                    ; preds = %bb.n, %bb.ae
  %i.fv = phi i8 [ %i.dx, %bb.ae ], [ %i.af, %bb.n ]
  %.5250.i581 = phi ptr [ %.2247.i5122576, %bb.ae ], [ %.1246.i5102569, %bb.n ] ; 2 uses
  %.5243.i582 = phi ptr [ %.2240.i5132577, %bb.ae ], [ %.1239.i5112570, %bb.n ]
  store i8 %i.fv, ptr %.5250.i581, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %.5250.i581, i64 1
  %i.fx = getelementptr inbounds nuw i8, ptr %.5243.i582, i64 1
  br label %.preheader1322.preheader

.loopexit1330:                                    ; preds = %bb.o, %bb.af
  %.6251.i584 = phi ptr [ %.2247.i5122576, %bb.af ], [ %.1246.i5102569, %bb.o ] ; 2 uses
  %.6.i585 = phi ptr [ %.2240.i5132577, %bb.af ], [ %.1239.i5112570, %bb.o ] ; 2 uses
  %i.fy = load i16, ptr %.6.i585, align 1
  store i16 %i.fy, ptr %.6251.i584, align 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.6251.i584, i64 2
  %i.ga = getelementptr inbounds nuw i8, ptr %.6.i585, i64 2
  br label %.preheader1322.preheader

.loopexit1331:                                    ; preds = %bb.p, %bb.ag
  %.7252.i587 = phi ptr [ %.2247.i5122576, %bb.ag ], [ %.1246.i5102569, %bb.p ] ; 2 uses
  %.7.i588 = phi ptr [ %.2240.i5132577, %bb.ag ], [ %.1239.i5112570, %bb.p ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i587, ptr noundef nonnull align 1 dereferenceable(3) %.7.i588, i64 3, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %.7252.i587, i64 3
  %i.gc = getelementptr inbounds nuw i8, ptr %.7.i588, i64 3
  br label %.preheader1322.preheader

bb.aj:                                            ; preds = %bb.q
  %i.gd = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 4
  %i.ge = load i32, ptr %.1239.i5112570, align 1
  store i32 %i.ge, ptr %.1246.i5102569, align 1
  %i.gf = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 4
  br label %.preheader1322.preheader

bb.ak:                                            ; preds = %bb.r
  %i.gg = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i5102569, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i5112570, i64 5, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 5
  br label %.preheader1322.preheader

bb.al:                                            ; preds = %bb.s
  %i.gi = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i5102569, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i5112570, i64 6, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 6
  br label %.preheader1322.preheader

bb.am:                                            ; preds = %bb.t
  %i.gk = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i5102569, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i5112570, i64 7, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 7
  br label %.preheader1322.preheader

bb.an:                                            ; preds = %bb.u
  %i.gm = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 8
  %i.gn = load i64, ptr %.1239.i5112570, align 1
  store i64 %i.gn, ptr %.1246.i5102569, align 1
  %i.go = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 8
  br label %.preheader1322.preheader

bb.ao:                                            ; preds = %bb.v
  %i.gp = getelementptr inbounds nuw i8, ptr %.1239.i5112570, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i5102569, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i5112570, i64 9, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %.1246.i5102569, i64 9
end_hunk_0
begin_hunk_1_@yyjson_val_write_opts:bb.a
bb.bj:                                            ; preds = %bb.ax
  store i32 808482140, ptr %.8253.i520, align 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 4
  %i.je = load i8, ptr %.8.i521, align 1, !tbaa !81
  %i.jf = zext i8 %i.je to i64
  %i.jg = shl nuw nsw i64 %i.jf, 1
  %i.jh = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2
  store i16 %i.ji, ptr %i.jd, align 1
  %i.jj = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 6
  %i.jk = getelementptr inbounds nuw i8, ptr %.8.i521, i64 1
  br label %.preheader1322.backedge

bb.bk:                                            ; preds = %bb.ax
  %.sroa.0.0.copyload.i332.i549 = load i16, ptr %.8.i521, align 1 ; 3 uses
  %.sroa.01017.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i549 to i32 ; 2 uses
  %i.jl = and i32 %.sroa.01017.0.insert.ext, 49376
  %i.jm = icmp ne i32 %i.jl, 32960
  %i.jn = and i32 %.sroa.01017.0.insert.ext, 30
  %i.jo = icmp eq i32 %i.jn, 0
  %.not298.i550 = or i1 %i.jm, %i.jo
  br i1 %.not298.i550, label %.thread1054, label %bb.bl, !prof !8

bb.bl:                                            ; preds = %bb.bk
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

bb.bm:                                            ; preds = %bb.ax
  %.sroa.0.0.copyload.i.i536 = load i16, ptr %.8.i521, align 1 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.8.i521, i64 2
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !81  ; 2 uses
  %.sroa.4.0.insert.ext.i.i537 = zext i8 %i.kh to i32
  %.sroa.4.0.insert.shift.i.i538 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i537, 16
  %.sroa.0.0.insert.ext.i.i539 = zext i16 %.sroa.0.0.copyload.i.i536 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i540 = or disjoint i32 %.sroa.4.0.insert.shift.i.i538, %.sroa.0.0.insert.ext.i.i539
  %i.ki = and i32 %.sroa.0.0.insert.insert.i.i540, 12632304
  %i.kj = icmp eq i32 %i.ki, 8421600
  br i1 %i.kj, label %bb.bn, label %.thread1054, !prof !25

bb.bn:                                            ; preds = %bb.bm
  %i.kk = and i32 %.sroa.0.0.insert.ext.i.i539, 8207
  switch i32 %i.kk, label %.critedge321.i541 [
    i32 8205, label %.thread1054
    i32 0, label %.thread1054
  ], !prof !335

.critedge321.i541:                                ; preds = %bb.bn
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

bb.bo:                                            ; preds = %bb.ax
  %.sroa.0.0.copyload.i333.i526 = load i32, ptr %.8.i521, align 1 ; 9 uses
  %i.ld = and i32 %.sroa.0.0.copyload.i333.i526, -1061109512
  %i.le = icmp ne i32 %i.ld, -2139062032
  %i.lf = and i32 %.sroa.0.0.copyload.i333.i526, 12295
  %.not288.i527 = icmp eq i32 %i.lf, 0
  %or.cond323.i528 = or i1 %i.le, %.not288.i527
  %i.lg = lshr i32 %.sroa.0.0.copyload.i333.i526, 24
  br i1 %or.cond323.i528, label %.thread1054, label %bb.bp, !prof !258

bb.bp:                                            ; preds = %bb.bo
  %i.lh = and i32 %.sroa.0.0.copyload.i333.i526, 4
  %i.li = icmp ne i32 %i.lh, 0
  %i.lj = and i32 %.sroa.0.0.copyload.i333.i526, 12291
  %i.lk = icmp ne i32 %i.lj, 0
  %.not291.i529 = and i1 %i.li, %i.lk
  br i1 %.not291.i529, label %.thread1054, label %.critedge325.i532, !prof !8

.critedge325.i532:                                ; preds = %bb.bp
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

bb.bq:                                            ; preds = %bb.ax, %bb.av
  %i.my = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 1
  store i8 34, ptr %.8253.i520, align 1, !tbaa !81
  br label %write_str.exit605

bb.br:                                            ; preds = %bb.ax, %bb.aw
  %i.mz = phi i8 [ %i.ht, %bb.ax ], [ %i.hl, %bb.aw ]
  br i1 %.not1299, label %.thread, label %.thread1054

.thread:                                          ; preds = %bb.bg, %bb.bh, %bb.be, %bb.bc, %bb.bf, %bb.bf, %bb.bd, %bb.bd, %bb.az, %bb.br
  %i.na = phi i8 [ %i.is, %bb.bg ], [ %i.is, %bb.bh ], [ %i.il, %bb.be ], [ %i.if, %bb.bc ], [ %i.il, %bb.bf ], [ %i.il, %bb.bf ], [ %i.if, %bb.bd ], [ %i.if, %bb.bd ], [ %i.ia, %bb.az ], [ %i.mz, %bb.br ]
  br i1 %.not1302, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %.thread
  %i.nb = getelementptr inbounds nuw i8, ptr %.8.i521, i64 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 1
  store i8 %i.na, ptr %.8253.i520, align 1, !tbaa !81
  br label %.preheader1322.backedge

.thread1054:                                      ; preds = %bb.bo, %bb.bp, %bb.bm, %bb.bn, %bb.bn, %bb.bk, %bb.br
  br i1 %.not1302, label %.loopexit, label %bb.bt

bb.bt:                                            ; preds = %.thread1054
  store i16 30044, ptr %.8253.i520, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 2
  store i32 1145456198, ptr %i.nd, align 1
  %i.ne = getelementptr inbounds nuw i8, ptr %.8253.i520, i64 6
  %i.nf = getelementptr inbounds nuw i8, ptr %.8.i521, i64 1
  br label %.preheader1322.backedge

bb.bu:                                            ; preds = %bb.l
  %i.ng = load i64, ptr %0, align 8, !tbaa !79
  %i.nh = and i64 %i.ng, 24
  %.not105.i = icmp eq i64 %i.nh, 0
  store i8 34, ptr %i.x, align 1, !tbaa !81
  br i1 %.not105.i, label %.split83.i, label %bb.ed

.split83.i:                                       ; preds = %bb.bu
  %i.ni = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r ; 4 uses
  %i.nj = ptrtoint ptr %i.ni to i64               ; 5 uses
  %i.nk = add i64 %i.r, %i.u
  br label %bb.bv

bb.bv:                                            ; preds = %bb.dh, %.split83.i
  %.pn.i408 = phi ptr [ %i.x, %.split83.i ], [ %.8253.i421, %bb.dh ]
  %.0238.i409 = phi ptr [ %i.t, %.split83.i ], [ %i.ve, %bb.dh ] ; 3 uses
  %.0245.i410 = getelementptr inbounds nuw i8, ptr %.pn.i408, i64 1 ; 2 uses
  %i.nl = ptrtoint ptr %.0238.i409 to i64
  %i.nm = sub i64 %i.nj, %i.nl                    ; 2 uses
  %i.nn = icmp sgt i64 %i.nm, 15
  br i1 %i.nn, label %.lr.ph2623, label %.preheader1311

.preheader1311:                                   ; preds = %bb.cl, %bb.bv
  %.pre-phi3193 = phi i64 [ %i.nm, %bb.bv ], [ %i.qt, %bb.cl ]
  %.1246.i411.lcssa = phi ptr [ %.0245.i410, %bb.bv ], [ %i.qq, %bb.cl ] ; 2 uses
  %.1239.i412.lcssa = phi ptr [ %.0238.i409, %bb.bv ], [ %i.qr, %bb.cl ] ; 2 uses
  %i.no = icmp sgt i64 %.pre-phi3193, 3
  br i1 %i.no, label %.lr.ph2629, label %.preheader1309

.lr.ph2623:                                       ; preds = %bb.bv, %bb.cl
  %.1239.i4122621 = phi ptr [ %i.qr, %bb.cl ], [ %.0238.i409, %bb.bv ] ; 46 uses
  %.1246.i4112620 = phi ptr [ %i.qq, %bb.cl ], [ %.0245.i410, %bb.bv ] ; 30 uses
  %i.np = load i8, ptr %.1239.i4122621, align 1, !tbaa !81 ; 2 uses
  %i.nq = zext i8 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !81
  %.not272.i490 = icmp eq i8 %i.ns, 0
  br i1 %.not272.i490, label %bb.bw, label %.preheader.preheader, !prof !25

bb.bw:                                            ; preds = %.lr.ph2623
  %i.nt = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 1
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !81
  %i.nv = zext i8 %i.nu to i64
  %i.nw = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !81
  %.not273.i491 = icmp eq i8 %i.nx, 0
  br i1 %.not273.i491, label %bb.bx, label %.loopexit1313, !prof !25

bb.bx:                                            ; preds = %bb.bw
  %i.ny = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 2
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !81
  %i.oa = zext i8 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !81
  %.not274.i492 = icmp eq i8 %i.oc, 0
  br i1 %.not274.i492, label %bb.by, label %.loopexit1314, !prof !25

bb.by:                                            ; preds = %bb.bx
  %i.od = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 3
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !81
  %i.of = zext i8 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !81
  %.not275.i493 = icmp eq i8 %i.oh, 0
  br i1 %.not275.i493, label %bb.bz, label %.loopexit1315, !prof !25

bb.bz:                                            ; preds = %bb.by
  %i.oi = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 4
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !81
  %i.ok = zext i8 %i.oj to i64
  %i.ol = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !81
  %.not276.i494 = icmp eq i8 %i.om, 0
  br i1 %.not276.i494, label %bb.ca, label %bb.cs, !prof !25

bb.ca:                                            ; preds = %bb.bz
  %i.on = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 5
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !81
  %i.op = zext i8 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !81
  %.not277.i495 = icmp eq i8 %i.or, 0
  br i1 %.not277.i495, label %bb.cb, label %bb.ct, !prof !25

bb.cb:                                            ; preds = %bb.ca
  %i.os = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 6
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !81
  %i.ou = zext i8 %i.ot to i64
  %i.ov = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.ou
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !81
  %.not278.i496 = icmp eq i8 %i.ow, 0
  br i1 %.not278.i496, label %bb.cc, label %bb.cu, !prof !25

bb.cc:                                            ; preds = %bb.cb
  %i.ox = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 7
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !81
  %i.oz = zext i8 %i.oy to i64
  %i.pa = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !81
  %.not279.i497 = icmp eq i8 %i.pb, 0
  br i1 %.not279.i497, label %bb.cd, label %bb.cv, !prof !25

bb.cd:                                            ; preds = %bb.cc
  %i.pc = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 8
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !81
  %i.pe = zext i8 %i.pd to i64
  %i.pf = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !81
  %.not280.i498 = icmp eq i8 %i.pg, 0
  br i1 %.not280.i498, label %bb.ce, label %bb.cw, !prof !25

bb.ce:                                            ; preds = %bb.cd
  %i.ph = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 9
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !81
  %i.pj = zext i8 %i.pi to i64
  %i.pk = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.pj
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !81
  %.not281.i499 = icmp eq i8 %i.pl, 0
  br i1 %.not281.i499, label %bb.cf, label %bb.cx, !prof !25

bb.cf:                                            ; preds = %bb.ce
  %i.pm = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 10
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !81
  %i.po = zext i8 %i.pn to i64
  %i.pp = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.po
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !81
  %.not282.i500 = icmp eq i8 %i.pq, 0
  br i1 %.not282.i500, label %bb.cg, label %bb.cy, !prof !25

bb.cg:                                            ; preds = %bb.cf
  %i.pr = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 11
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !81
  %i.pt = zext i8 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !81
  %.not283.i501 = icmp eq i8 %i.pv, 0
  br i1 %.not283.i501, label %bb.ch, label %bb.cz, !prof !25

bb.ch:                                            ; preds = %bb.cg
  %i.pw = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 12
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !81
  %i.py = zext i8 %i.px to i64
  %i.pz = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.py
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !81
  %.not284.i502 = icmp eq i8 %i.qa, 0
  br i1 %.not284.i502, label %bb.ci, label %bb.da, !prof !25

bb.ci:                                            ; preds = %bb.ch
  %i.qb = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 13
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !81
  %i.qd = zext i8 %i.qc to i64
  %i.qe = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !81
  %.not285.i503 = icmp eq i8 %i.qf, 0
  br i1 %.not285.i503, label %bb.cj, label %bb.db, !prof !25

bb.cj:                                            ; preds = %bb.ci
  %i.qg = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 14
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !81
  %i.qi = zext i8 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !81
  %.not286.i504 = icmp eq i8 %i.qk, 0
  br i1 %.not286.i504, label %bb.ck, label %bb.dc, !prof !25

bb.ck:                                            ; preds = %bb.cj
  %i.ql = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 15
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !81
  %i.qn = zext i8 %i.qm to i64
  %i.qo = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.qn
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !81
  %.not287.i505 = icmp eq i8 %i.qp, 0
  br i1 %.not287.i505, label %bb.cl, label %bb.dd, !prof !25

bb.cl:                                            ; preds = %bb.ck
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i4112620, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i4122621, i64 16, i1 false)
  %i.qq = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 16 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 16 ; 3 uses
  %i.qs = ptrtoint ptr %i.qr to i64
  %i.qt = sub i64 %i.nj, %i.qs                    ; 2 uses
  %i.qu = icmp sgt i64 %i.qt, 15
  br i1 %i.qu, label %.lr.ph2623, label %.preheader1311, !llvm.loop !331

.preheader1309:                                   ; preds = %bb.cq, %.preheader1311
  %.2247.i413.lcssa = phi ptr [ %.1246.i411.lcssa, %.preheader1311 ], [ %i.sb, %bb.cq ] ; 3 uses
  %.2240.i414.lcssa = phi ptr [ %.1239.i412.lcssa, %.preheader1311 ], [ %i.sc, %bb.cq ] ; 5 uses
  %i.qv = icmp ugt ptr %i.ni, %.2240.i414.lcssa
  br i1 %i.qv, label %.lr.ph2634.preheader, label %.preheader1309._crit_edge

.lr.ph2634.preheader:                             ; preds = %.preheader1309
  %.2240.i414.lcssa3136 = ptrtoaddr ptr %.2240.i414.lcssa to i64 ; 2 uses
  %scevgep3135 = getelementptr i8, ptr %.2240.i414.lcssa, i64 %i.nj
  %i.qw = sub i64 0, %.2240.i414.lcssa3136
  %scevgep3137 = getelementptr i8, ptr %scevgep3135, i64 %i.qw
  %i.qx = sub i64 %i.nk, %.2240.i414.lcssa3136
  %i.qy = freeze i64 %i.qx                        ; 2 uses
  %i.qz = add i64 %i.qy, -1
  %xtraiter6007 = and i64 %i.qy, 3                ; 2 uses
  %lcmp.mod6008.not = icmp eq i64 %xtraiter6007, 0
  br i1 %lcmp.mod6008.not, label %.lr.ph2634.prol.loopexit, label %.lr.ph2634.prol

.lr.ph2634.prol:                                  ; preds = %.lr.ph2634.preheader, %bb.cm
  %.3241.i4162633.prol = phi ptr [ %i.re, %bb.cm ], [ %.2240.i414.lcssa, %.lr.ph2634.preheader ] ; 3 uses
  %.3248.i4152632.prol = phi ptr [ %i.rf, %bb.cm ], [ %.2247.i413.lcssa, %.lr.ph2634.preheader ] ; 3 uses
  %prol.iter6009 = phi i64 [ %prol.iter6009.next, %bb.cm ], [ 0, %.lr.ph2634.preheader ]
  %i.ra = load i8, ptr %.3241.i4162633.prol, align 1, !tbaa !81 ; 2 uses
  %i.rb = zext i8 %i.ra to i64
  %i.rc = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !81
  %.not.i418.prol = icmp eq i8 %i.rd, 0
  br i1 %.not.i418.prol, label %bb.cm, label %.preheader.preheader, !prof !25

bb.cm:                                            ; preds = %.lr.ph2634.prol
  %i.re = getelementptr inbounds nuw i8, ptr %.3241.i4162633.prol, i64 1 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.3248.i4152632.prol, i64 1 ; 3 uses
  store i8 %i.ra, ptr %.3248.i4152632.prol, align 1, !tbaa !81
  %prol.iter6009.next = add i64 %prol.iter6009, 1 ; 2 uses
  %prol.iter6009.cmp.not = icmp eq i64 %prol.iter6009.next, %xtraiter6007
  br i1 %prol.iter6009.cmp.not, label %.lr.ph2634.prol.loopexit, label %.lr.ph2634.prol, !llvm.loop !336

.lr.ph2634.prol.loopexit:                         ; preds = %bb.cm, %.lr.ph2634.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph2634.preheader ], [ %i.rf, %bb.cm ]
  %.3241.i4162633.unr = phi ptr [ %.2240.i414.lcssa, %.lr.ph2634.preheader ], [ %i.re, %bb.cm ]
  %.3248.i4152632.unr = phi ptr [ %.2247.i413.lcssa, %.lr.ph2634.preheader ], [ %i.rf, %bb.cm ]
  %i.rg = icmp ult i64 %i.qz, 3
  br i1 %i.rg, label %.preheader1309._crit_edge, label %.lr.ph2634

.lr.ph2629:                                       ; preds = %.preheader1311, %bb.cq
  %.2240.i4142628 = phi ptr [ %i.sc, %bb.cq ], [ %.1239.i412.lcssa, %.preheader1311 ] ; 10 uses
  %.2247.i4132627 = phi ptr [ %i.sb, %bb.cq ], [ %.1246.i411.lcssa, %.preheader1311 ] ; 6 uses
  %i.rh = load i8, ptr %.2240.i4142628, align 1, !tbaa !81 ; 2 uses
  %i.ri = zext i8 %i.rh to i64
  %i.rj = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.ri
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !81
  %.not268.i480 = icmp eq i8 %i.rk, 0
  br i1 %.not268.i480, label %bb.cn, label %.preheader.preheader, !prof !25

bb.cn:                                            ; preds = %.lr.ph2629
  %i.rl = getelementptr inbounds nuw i8, ptr %.2240.i4142628, i64 1
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !81
  %i.rn = zext i8 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !81
  %.not269.i481 = icmp eq i8 %i.rp, 0
  br i1 %.not269.i481, label %bb.co, label %.loopexit1313, !prof !25

bb.co:                                            ; preds = %bb.cn
  %i.rq = getelementptr inbounds nuw i8, ptr %.2240.i4142628, i64 2
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !81
  %i.rs = zext i8 %i.rr to i64
  %i.rt = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.rs
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !81
  %.not270.i484 = icmp eq i8 %i.ru, 0
  br i1 %.not270.i484, label %bb.cp, label %.loopexit1314, !prof !25

bb.cp:                                            ; preds = %bb.co
  %i.rv = getelementptr inbounds nuw i8, ptr %.2240.i4142628, i64 3
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !81
  %i.rx = zext i8 %i.rw to i64
  %i.ry = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.rx
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !81
  %.not271.i487 = icmp eq i8 %i.rz, 0
  br i1 %.not271.i487, label %bb.cq, label %.loopexit1315, !prof !25

bb.cq:                                            ; preds = %bb.cp
  %i.sa = load i32, ptr %.2240.i4142628, align 1
  store i32 %i.sa, ptr %.2247.i4132627, align 1
  %i.sb = getelementptr inbounds nuw i8, ptr %.2247.i4132627, i64 4 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.2240.i4142628, i64 4 ; 3 uses
  %i.sd = ptrtoint ptr %i.sc to i64
  %i.se = sub i64 %i.nj, %i.sd
  %i.sf = icmp sgt i64 %i.se, 3
  br i1 %i.sf, label %.lr.ph2629, label %.preheader1309, !llvm.loop !333

.lr.ph2634:                                       ; preds = %.lr.ph2634.prol.loopexit, %bb.cr
  %.3241.i4162633 = phi ptr [ %i.tc, %bb.cr ], [ %.3241.i4162633.unr, %.lr.ph2634.prol.loopexit ] ; 9 uses
  %.3248.i4152632 = phi ptr [ %i.td, %bb.cr ], [ %.3248.i4152632.unr, %.lr.ph2634.prol.loopexit ] ; 6 uses
  %i.sg = load i8, ptr %.3241.i4162633, align 1, !tbaa !81 ; 2 uses
  %i.sh = zext i8 %i.sg to i64
  %i.si = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.sh
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !81
  %.not.i418 = icmp eq i8 %i.sj, 0
  br i1 %.not.i418, label %.lr.ph2634.1, label %.preheader.preheader, !prof !25

.lr.ph2634.1:                                     ; preds = %.lr.ph2634
  %i.sk = getelementptr inbounds nuw i8, ptr %.3241.i4162633, i64 1
  %i.sl = getelementptr inbounds nuw i8, ptr %.3248.i4152632, i64 1 ; 2 uses
  store i8 %i.sg, ptr %.3248.i4152632, align 1, !tbaa !81
  %i.sm = load i8, ptr %i.sk, align 1, !tbaa !81  ; 2 uses
  %i.sn = zext i8 %i.sm to i64
  %i.so = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.sn
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !81
  %.not.i418.1 = icmp eq i8 %i.sp, 0
  br i1 %.not.i418.1, label %.lr.ph2634.2, label %.preheader.preheader.loopexit.loopexit.split.loop.exit6728, !prof !25

.lr.ph2634.2:                                     ; preds = %.lr.ph2634.1
  %i.sq = getelementptr inbounds nuw i8, ptr %.3241.i4162633, i64 2
  %i.sr = getelementptr inbounds nuw i8, ptr %.3248.i4152632, i64 2 ; 2 uses
  store i8 %i.sm, ptr %i.sl, align 1, !tbaa !81
  %i.ss = load i8, ptr %i.sq, align 1, !tbaa !81  ; 2 uses
  %i.st = zext i8 %i.ss to i64
  %i.su = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.st
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !81
  %.not.i418.2 = icmp eq i8 %i.sv, 0
  br i1 %.not.i418.2, label %.lr.ph2634.3, label %.preheader.preheader.loopexit.loopexit.split.loop.exit6725, !prof !25

.lr.ph2634.3:                                     ; preds = %.lr.ph2634.2
  %i.sw = getelementptr inbounds nuw i8, ptr %.3241.i4162633, i64 3
  %i.sx = getelementptr inbounds nuw i8, ptr %.3248.i4152632, i64 3 ; 2 uses
  store i8 %i.ss, ptr %i.sr, align 1, !tbaa !81
  %i.sy = load i8, ptr %i.sw, align 1, !tbaa !81  ; 2 uses
  %i.sz = zext i8 %i.sy to i64
  %i.ta = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.sz
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !81
  %.not.i418.3 = icmp eq i8 %i.tb, 0
  br i1 %.not.i418.3, label %bb.cr, label %.preheader.preheader.loopexit.loopexit.split.loop.exit, !prof !25

bb.cr:                                            ; preds = %.lr.ph2634.3
  %i.tc = getelementptr inbounds nuw i8, ptr %.3241.i4162633, i64 4 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.3248.i4152632, i64 4 ; 2 uses
  store i8 %i.sy, ptr %i.sx, align 1, !tbaa !81
  %exitcond3138.not.3 = icmp eq ptr %i.tc, %scevgep3137
  br i1 %exitcond3138.not.3, label %.preheader1309._crit_edge, label %.lr.ph2634, !llvm.loop !334

.preheader1309._crit_edge:                        ; preds = %.preheader1309, %bb.cr, %.lr.ph2634.prol.loopexit
  %.3248.i415.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph2634.prol.loopexit ], [ %i.td, %bb.cr ], [ %.2247.i413.lcssa, %.preheader1309 ] ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.3248.i415.lcssa, i64 1
  store i8 34, ptr %.3248.i415.lcssa, align 1, !tbaa !81
  br label %write_str.exit605

.loopexit1313:                                    ; preds = %bb.bw, %bb.cn
  %i.tf = phi i8 [ %i.rh, %bb.cn ], [ %i.np, %bb.bw ]
  %.5250.i482 = phi ptr [ %.2247.i4132627, %bb.cn ], [ %.1246.i4112620, %bb.bw ] ; 2 uses
  %.5243.i483 = phi ptr [ %.2240.i4142628, %bb.cn ], [ %.1239.i4122621, %bb.bw ]
  store i8 %i.tf, ptr %.5250.i482, align 1
  %i.tg = getelementptr inbounds nuw i8, ptr %.5250.i482, i64 1
  %i.th = getelementptr inbounds nuw i8, ptr %.5243.i483, i64 1
  br label %.preheader.preheader

.loopexit1314:                                    ; preds = %bb.bx, %bb.co
  %.6251.i485 = phi ptr [ %.2247.i4132627, %bb.co ], [ %.1246.i4112620, %bb.bx ] ; 2 uses
  %.6.i486 = phi ptr [ %.2240.i4142628, %bb.co ], [ %.1239.i4122621, %bb.bx ] ; 2 uses
  %i.ti = load i16, ptr %.6.i486, align 1
  store i16 %i.ti, ptr %.6251.i485, align 1
  %i.tj = getelementptr inbounds nuw i8, ptr %.6251.i485, i64 2
  %i.tk = getelementptr inbounds nuw i8, ptr %.6.i486, i64 2
  br label %.preheader.preheader

.loopexit1315:                                    ; preds = %bb.by, %bb.cp
  %.7252.i488 = phi ptr [ %.2247.i4132627, %bb.cp ], [ %.1246.i4112620, %bb.by ] ; 2 uses
  %.7.i489 = phi ptr [ %.2240.i4142628, %bb.cp ], [ %.1239.i4122621, %bb.by ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i488, ptr noundef nonnull align 1 dereferenceable(3) %.7.i489, i64 3, i1 false)
  %i.tl = getelementptr inbounds nuw i8, ptr %.7252.i488, i64 3
  %i.tm = getelementptr inbounds nuw i8, ptr %.7.i489, i64 3
  br label %.preheader.preheader

bb.cs:                                            ; preds = %bb.bz
  %i.tn = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 4
  %i.to = load i32, ptr %.1239.i4122621, align 1
  store i32 %i.to, ptr %.1246.i4112620, align 1
  %i.tp = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 4
  br label %.preheader.preheader

bb.ct:                                            ; preds = %bb.ca
  %i.tq = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i4112620, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i4122621, i64 5, i1 false)
  %i.tr = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 5
  br label %.preheader.preheader

bb.cu:                                            ; preds = %bb.cb
  %i.ts = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i4112620, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i4122621, i64 6, i1 false)
  %i.tt = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 6
  br label %.preheader.preheader

bb.cv:                                            ; preds = %bb.cc
  %i.tu = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i4112620, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i4122621, i64 7, i1 false)
  %i.tv = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 7
  br label %.preheader.preheader

bb.cw:                                            ; preds = %bb.cd
  %i.tw = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 8
  %i.tx = load i64, ptr %.1239.i4122621, align 1
  store i64 %i.tx, ptr %.1246.i4112620, align 1
  %i.ty = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 8
  br label %.preheader.preheader

bb.cx:                                            ; preds = %bb.ce
  %i.tz = getelementptr inbounds nuw i8, ptr %.1239.i4122621, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i4112620, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i4122621, i64 9, i1 false)
  %i.ua = getelementptr inbounds nuw i8, ptr %.1246.i4112620, i64 9
end_hunk_1
begin_hunk_2_@yyjson_val_write_opts:bb.a
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %write_str.exit605
  %.1.i = phi ptr [ %i.aqv, %bb.fn ], [ %.0.i, %write_str.exit605 ] ; 2 uses
  store i8 0, ptr %.1.i, align 1, !tbaa !81
  br i1 %.not27, label %.cont787, label %.else789

.else789:                                         ; preds = %bb.fo
  %i.aqw = ptrtoint ptr %.1.i to i64
  %i.aqx = ptrtoint ptr %.080.i to i64
  %i.aqy = sub i64 %i.aqw, %i.aqx
  store i64 %i.aqy, ptr %3, align 8, !tbaa !91
  br label %.cont787

.cont787:                                         ; preds = %bb.fo, %.else789
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %spec.store.select, i8 0, i64 16, i1 false)
  br label %yyjson_write_single.exit

bb.fp:                                            ; preds = %bb.fl, %bb.fj, %bb.fh, %bb.fg, %bb.ee, %bb.k, %bb.i
  br i1 %.not27, label %.cont784, label %.else786

.else786:                                         ; preds = %bb.fp
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %.cont784

.cont784:                                         ; preds = %bb.fp, %.else786
  store i32 2, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel802.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel802.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel802.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel802.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_write_single.exit

default.unreachable:                              ; preds = %get_enc_table_with_flag.exit66
  unreachable

bb.fq:                                            ; preds = %get_enc_table_with_flag.exit66
  br i1 %.not27, label %.cont790, label %.else792

.else792:                                         ; preds = %bb.fq
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %.cont790

.cont790:                                         ; preds = %bb.fq, %.else792
  store i32 3, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel799.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel799.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel799.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.110, ptr %spec.store.select.sroa.sel799.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_write_single.exit

bb.fr:                                            ; preds = %write_num.exit716
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %i.adh) #33, !inline_history !330
  br i1 %.not27, label %.cont781, label %.else783

.else783:                                         ; preds = %bb.fr
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %.cont781

.cont781:                                         ; preds = %bb.fr, %.else783
  store i32 4, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel805.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel805.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel805.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.111, ptr %spec.store.select.sroa.sel805.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_write_single.exit

.loopexit:                                        ; preds = %.thread1054, %.thread, %.thread1064, %.thread1074
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %i.x) #33, !inline_history !330
  br i1 %.not27, label %.cont778, label %.else780

.else780:                                         ; preds = %.loopexit
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %.cont778

.cont778:                                         ; preds = %.loopexit, %.else780
  store i32 7, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel808.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel808.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel808.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.76, ptr %spec.store.select.sroa.sel808.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_write_single.exit

bb.fs:                                            ; preds = %bb.e
  %i.aqz = and i32 %1, 65
  %.not29 = icmp eq i32 %i.aqz, 0
  %i.ara = and i32 %1, 2
  %.not1291 = icmp eq i32 %i.ara, 0               ; 6 uses
  %i.arb = and i32 %1, 4
  %.not1292 = icmp eq i32 %i.arb, 0               ; 4 uses
  br i1 %.not29, label %bb.ms, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  br i1 %.not1291, label %bb.fv, label %bb.fu, !prof !25

bb.fu:                                            ; preds = %bb.ft
  %enc_table_esc_slash.enc_table_esc.i61 = select i1 %.not1292, ptr @enc_table_esc, ptr @enc_table_esc_slash, !prof !25
  br label %size_align_up.exit632.i

bb.fv:                                            ; preds = %bb.ft
  %enc_table_cpy_slash.enc_table_cpy.i59 = select i1 %.not1292, ptr @enc_table_cpy, ptr @enc_table_cpy_slash, !prof !25
  br label %size_align_up.exit632.i

size_align_up.exit632.i:                          ; preds = %bb.fu, %bb.fv
  %.0.i60 = phi ptr [ %enc_table_esc_slash.enc_table_esc.i61, %bb.fu ], [ %enc_table_cpy_slash.enc_table_cpy.i59, %bb.fv ] ; 28 uses
  %i.arc = icmp eq ptr %.0.i60, @enc_table_cpy
  %i.ard = and i32 %1, 32
  %.not1286 = icmp eq i32 %i.ard, 0               ; 4 uses
  %i.are = and i32 %1, 64
  %.not1287 = icmp eq i32 %i.are, 0
  %i.arf = select i1 %.not1287, i64 4, i64 2, !prof !25 ; 72 uses
  %i.arg = and i32 %1, 128
  %.not1288 = icmp eq i32 %i.arg, 0
  %i.arh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ari = load i64, ptr %i.arh, align 8, !tbaa !81
  %i.arj = shl i64 %i.ari, 1
  %i.ark = and i64 %i.arj, -32
  %i.arl = add i64 %i.ark, 64                     ; 3 uses
  %i.arm = tail call ptr %.sroa.0849.0(ptr noundef %.sroa.9.0, i64 noundef %i.arl) #33, !inline_history !346 ; 6 uses
  %.not.i30 = icmp eq ptr %i.arm, null
  br i1 %.not.i30, label %.loopexit1398, label %bb.fw

bb.fw:                                            ; preds = %size_align_up.exit632.i
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 %i.arl ; 2 uses
  %i.aro = load i64, ptr %0, align 8, !tbaa !79   ; 2 uses
  %i.arp = and i64 %i.aro, 7
  %i.arq = icmp eq i64 %i.arp, 7                  ; 3 uses
  %i.arr = zext i1 %i.arq to i8
  %i.ars = lshr i64 %i.aro, 8
  %i.art = zext i1 %i.arq to i64
  %i.aru = shl nuw nsw i64 %i.ars, %i.art
  %i.arv = select i1 %i.arq, i8 123, i8 91
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arm, i64 1
  store i8 %i.arv, ptr %i.arm, align 1, !tbaa !81
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arm, i64 2
  store i8 10, ptr %i.arw, align 1, !tbaa !81
  %i.ary = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.arz = lshr i32 %1, 28
  br label %.outer1403

.outer1403:                                       ; preds = %.outer1403.backedge, %bb.fw
  %.01041.ph = phi i64 [ %i.aru, %bb.fw ], [ %.01041.ph.be, %.outer1403.backedge ]
  %.01040.ph = phi i8 [ %i.arr, %bb.fw ], [ %.01040.ph.be, %.outer1403.backedge ] ; 3 uses
  %.0565.i.ph = phi ptr [ %i.ary, %bb.fw ], [ %.0565.i.ph.be, %.outer1403.backedge ]
  %.0542.i.ph = phi ptr [ %i.arm, %bb.fw ], [ %.0542.i.ph.be, %.outer1403.backedge ]
  %.0523.i.ph = phi ptr [ %i.arx, %bb.fw ], [ %.0523.i.ph.be, %.outer1403.backedge ]
  %.0504.i.ph = phi ptr [ %i.arn, %bb.fw ], [ %.0504.i.ph.be, %.outer1403.backedge ]
  %.0493.i.ph = phi ptr [ %i.arn, %bb.fw ], [ %.0493.i.ph.be, %.outer1403.backedge ]
  %.0484.i.ph = phi i64 [ %i.arl, %bb.fw ], [ %.0484.i.ph.be, %.outer1403.backedge ]
  %.0482.i.ph = phi i64 [ 1, %bb.fw ], [ %.0482.i.ph.be, %.outer1403.backedge ] ; 33 uses
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
  %xtraiter5968 = and i64 %.0482.i.ph, 7          ; 2 uses
  %lcmp.mod5969.not = icmp eq i64 %xtraiter5968, 0
  %i.asj = icmp ult i64 %i.ase, 7
  %xtraiter5971 = and i64 %.0482.i.ph, 7          ; 2 uses
  %lcmp.mod5972.not = icmp eq i64 %xtraiter5971, 0
  %i.ask = icmp ult i64 %i.ase, 7
  br label %bb.fx

bb.fx:                                            ; preds = %.outer1403, %bb.mf
  %.01041 = phi i64 [ %i.ctr, %bb.mf ], [ %.01041.ph, %.outer1403 ] ; 8 uses
  %.0565.i = phi ptr [ %i.ctq, %bb.mf ], [ %.0565.i.ph, %.outer1403 ] ; 9 uses
  %.0542.i = phi ptr [ %.15557.i, %bb.mf ], [ %.0542.i.ph, %.outer1403 ] ; 29 uses
  %.0523.i = phi ptr [ %.16539.i, %bb.mf ], [ %.0523.i.ph, %.outer1403 ] ; 21 uses
  %.0504.i = phi ptr [ %.15519.i, %bb.mf ], [ %.0504.i.ph, %.outer1403 ] ; 14 uses
  %.0493.i = phi ptr [ %.15.i, %bb.mf ], [ %.0493.i.ph, %.outer1403 ] ; 21 uses
  %.0484.i = phi i64 [ %.8492.i, %bb.mf ], [ %.0484.i.ph, %.outer1403 ] ; 28 uses
  %i.asl = load i64, ptr %.0565.i, align 8, !tbaa !79 ; 5 uses
  %i.asm = trunc i64 %i.asl to i8                 ; 2 uses
  %i.asn = and i8 %i.asm, 7                       ; 3 uses
  switch i8 %i.asn, label %bb.ls [
    i8 5, label %bb.fy
    i8 4, label %bb.kq
  ]

bb.fy:                                            ; preds = %bb.fx
  %i.aso = trunc i64 %.01041 to i32               ; 2 uses
  %i.asp = xor i32 %i.aso, -1
  %i.asq = and i32 %i.asa, %i.asp
  %.not593.i = icmp eq i32 %i.asq, 0              ; 2 uses
  %i.asr = and i32 %i.asa, %i.aso
  %.not594.i = icmp ne i32 %i.asr, 0              ; 2 uses
  %i.ass = lshr i64 %i.asl, 8                     ; 7 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %.0565.i, i64 8
  %i.asu = load ptr, ptr %i.ast, align 8, !tbaa !81 ; 7 uses
  %i.asv = ptrtoaddr ptr %i.asu to i64            ; 2 uses
  %i.asw = mul nuw nsw i64 %i.ass, 6
  %i.asx = select i1 %.not594.i, i64 16, i64 %i.asd
  %i.asy = add i64 %i.asx, %i.asw                 ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %.0523.i, i64 %i.asy
  %.not595.i = icmp ult ptr %i.asz, %.0493.i
  br i1 %.not595.i, label %bb.fz, label %size_align_up.exit630.i, !prof !25

size_align_up.exit630.i:                          ; preds = %bb.fy
  %i.ata = lshr i64 %.0484.i, 1
  %i.atb = tail call i64 @llvm.umax.i64(i64 %i.ata, i64 %i.asy)
  %i.atc = add i64 %i.atb, 7
  %i.atd = and i64 %i.atc, -8
  %i.ate = add i64 %i.atd, %.0484.i               ; 4 uses
  %i.atf = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0542.i, i64 noundef %.0484.i, i64 noundef %i.ate) #33, !inline_history !346 ; 6 uses
  %.not596.i = icmp eq ptr %i.atf, null
  br i1 %.not596.i, label %.loopexit1398, label %.thread1088, !prof !8

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
  br label %bb.fz

bb.fz:                                            ; preds = %.thread1088, %bb.fy
  %.2544.i = phi ptr [ %i.atf, %.thread1088 ], [ %.0542.i, %bb.fy ] ; 2 uses
  %.2525.i = phi ptr [ %i.atq, %.thread1088 ], [ %.0523.i, %bb.fy ] ; 3 uses
  %.2506.i = phi ptr [ %i.atr, %.thread1088 ], [ %.0504.i, %bb.fy ]
  %.2495.i = phi ptr [ %i.ato, %.thread1088 ], [ %.0493.i, %bb.fy ]
  %.1485.i = phi i64 [ %i.ate, %.thread1088 ], [ %.0484.i, %bb.fy ]
  %.not.i7412354 = select i1 %.not594.i, i1 true, i1 %.not.i74123543286
  br i1 %.not.i7412354, label %write_indent.exit742, label %select.unfold.preheader

select.unfold.preheader:                          ; preds = %bb.fz
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
  br i1 %prol.iter5944.cmp.not, label %select.unfold.prol.loopexit, label %select.unfold.prol, !llvm.loop !347

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
  br i1 %.not.i741.7, label %write_indent.exit742, label %select.unfold, !llvm.loop !348

write_indent.exit742:                             ; preds = %select.unfold.prol.loopexit, %select.unfold, %bb.fz
  %.0.i740.lcssa = phi ptr [ %.2525.i, %bb.fz ], [ %.lcssa5714.unr, %select.unfold.prol.loopexit ], [ %i.auc, %select.unfold ] ; 5 uses
  br i1 %i.arc, label %bb.ih, label %.split.i33, !prof !25

.split.i33:                                       ; preds = %write_indent.exit742
  %i.aud = getelementptr inbounds nuw i8, ptr %i.asu, i64 %i.ass ; 4 uses
  store i8 34, ptr %.0.i740.lcssa, align 1, !tbaa !81
  %i.aue = ptrtoint ptr %i.aud to i64             ; 5 uses
  %i.auf = add i64 %i.ass, %i.asv
  br label %bb.ga

bb.ga:                                            ; preds = %bb.hm, %.split.i33
  %.pn.i309 = phi ptr [ %.0.i740.lcssa, %.split.i33 ], [ %.8253.i322, %bb.hm ]
  %.0238.i310 = phi ptr [ %i.asu, %.split.i33 ], [ %i.bby, %bb.hm ] ; 3 uses
  %.0245.i311 = getelementptr inbounds nuw i8, ptr %.pn.i309, i64 1 ; 2 uses
  %i.aug = ptrtoint ptr %.0238.i310 to i64
  %i.auh = sub i64 %i.aue, %i.aug                 ; 2 uses
  %i.aui = icmp sgt i64 %i.auh, 15
  br i1 %i.aui, label %.lr.ph2373, label %.preheader1388

.preheader1388:                                   ; preds = %bb.gq, %bb.ga
  %.pre-phi3208 = phi i64 [ %i.auh, %bb.ga ], [ %i.axo, %bb.gq ]
  %.1246.i312.lcssa = phi ptr [ %.0245.i311, %bb.ga ], [ %i.axl, %bb.gq ] ; 2 uses
  %.1239.i313.lcssa = phi ptr [ %.0238.i310, %bb.ga ], [ %i.axm, %bb.gq ] ; 2 uses
  %i.auj = icmp sgt i64 %.pre-phi3208, 3
  br i1 %i.auj, label %.lr.ph2379, label %.preheader1386

.lr.ph2373:                                       ; preds = %bb.ga, %bb.gq
  %.1239.i3132372 = phi ptr [ %i.axm, %bb.gq ], [ %.0238.i310, %bb.ga ] ; 46 uses
  %.1246.i3122371 = phi ptr [ %i.axl, %bb.gq ], [ %.0245.i311, %bb.ga ] ; 30 uses
  %i.auk = load i8, ptr %.1239.i3132372, align 1, !tbaa !81 ; 2 uses
  %i.aul = zext i8 %i.auk to i64
  %i.aum = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.aul
  %i.aun = load i8, ptr %i.aum, align 1, !tbaa !81
  %.not272.i391 = icmp eq i8 %i.aun, 0
  br i1 %.not272.i391, label %bb.gb, label %.preheader1383.preheader, !prof !25

bb.gb:                                            ; preds = %.lr.ph2373
  %i.auo = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 1
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !81
  %i.auq = zext i8 %i.aup to i64
  %i.aur = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.auq
  %i.aus = load i8, ptr %i.aur, align 1, !tbaa !81
  %.not273.i392 = icmp eq i8 %i.aus, 0
  br i1 %.not273.i392, label %bb.gc, label %.loopexit1390, !prof !25

bb.gc:                                            ; preds = %bb.gb
  %i.aut = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 2
  %i.auu = load i8, ptr %i.aut, align 1, !tbaa !81
  %i.auv = zext i8 %i.auu to i64
  %i.auw = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.auv
  %i.aux = load i8, ptr %i.auw, align 1, !tbaa !81
  %.not274.i393 = icmp eq i8 %i.aux, 0
  br i1 %.not274.i393, label %bb.gd, label %.loopexit1391, !prof !25

bb.gd:                                            ; preds = %bb.gc
  %i.auy = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 3
  %i.auz = load i8, ptr %i.auy, align 1, !tbaa !81
  %i.ava = zext i8 %i.auz to i64
  %i.avb = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.ava
  %i.avc = load i8, ptr %i.avb, align 1, !tbaa !81
  %.not275.i394 = icmp eq i8 %i.avc, 0
  br i1 %.not275.i394, label %bb.ge, label %.loopexit1392, !prof !25

bb.ge:                                            ; preds = %bb.gd
  %i.avd = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 4
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !81
  %i.avf = zext i8 %i.ave to i64
  %i.avg = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.avf
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !81
  %.not276.i395 = icmp eq i8 %i.avh, 0
  br i1 %.not276.i395, label %bb.gf, label %bb.gx, !prof !25

bb.gf:                                            ; preds = %bb.ge
  %i.avi = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 5
  %i.avj = load i8, ptr %i.avi, align 1, !tbaa !81
  %i.avk = zext i8 %i.avj to i64
  %i.avl = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.avk
  %i.avm = load i8, ptr %i.avl, align 1, !tbaa !81
  %.not277.i396 = icmp eq i8 %i.avm, 0
  br i1 %.not277.i396, label %bb.gg, label %bb.gy, !prof !25

bb.gg:                                            ; preds = %bb.gf
  %i.avn = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 6
  %i.avo = load i8, ptr %i.avn, align 1, !tbaa !81
  %i.avp = zext i8 %i.avo to i64
  %i.avq = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.avp
  %i.avr = load i8, ptr %i.avq, align 1, !tbaa !81
  %.not278.i397 = icmp eq i8 %i.avr, 0
  br i1 %.not278.i397, label %bb.gh, label %bb.gz, !prof !25

bb.gh:                                            ; preds = %bb.gg
  %i.avs = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 7
  %i.avt = load i8, ptr %i.avs, align 1, !tbaa !81
  %i.avu = zext i8 %i.avt to i64
  %i.avv = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.avu
  %i.avw = load i8, ptr %i.avv, align 1, !tbaa !81
  %.not279.i398 = icmp eq i8 %i.avw, 0
  br i1 %.not279.i398, label %bb.gi, label %bb.ha, !prof !25

bb.gi:                                            ; preds = %bb.gh
  %i.avx = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 8
  %i.avy = load i8, ptr %i.avx, align 1, !tbaa !81
  %i.avz = zext i8 %i.avy to i64
  %i.awa = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.avz
  %i.awb = load i8, ptr %i.awa, align 1, !tbaa !81
  %.not280.i399 = icmp eq i8 %i.awb, 0
  br i1 %.not280.i399, label %bb.gj, label %bb.hb, !prof !25

bb.gj:                                            ; preds = %bb.gi
  %i.awc = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 9
  %i.awd = load i8, ptr %i.awc, align 1, !tbaa !81
  %i.awe = zext i8 %i.awd to i64
  %i.awf = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.awe
  %i.awg = load i8, ptr %i.awf, align 1, !tbaa !81
  %.not281.i400 = icmp eq i8 %i.awg, 0
  br i1 %.not281.i400, label %bb.gk, label %bb.hc, !prof !25

bb.gk:                                            ; preds = %bb.gj
  %i.awh = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 10
  %i.awi = load i8, ptr %i.awh, align 1, !tbaa !81
  %i.awj = zext i8 %i.awi to i64
  %i.awk = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.awj
  %i.awl = load i8, ptr %i.awk, align 1, !tbaa !81
  %.not282.i401 = icmp eq i8 %i.awl, 0
  br i1 %.not282.i401, label %bb.gl, label %bb.hd, !prof !25

bb.gl:                                            ; preds = %bb.gk
  %i.awm = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 11
  %i.awn = load i8, ptr %i.awm, align 1, !tbaa !81
  %i.awo = zext i8 %i.awn to i64
  %i.awp = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.awo
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !81
  %.not283.i402 = icmp eq i8 %i.awq, 0
  br i1 %.not283.i402, label %bb.gm, label %bb.he, !prof !25

bb.gm:                                            ; preds = %bb.gl
  %i.awr = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 12
  %i.aws = load i8, ptr %i.awr, align 1, !tbaa !81
  %i.awt = zext i8 %i.aws to i64
  %i.awu = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.awt
  %i.awv = load i8, ptr %i.awu, align 1, !tbaa !81
  %.not284.i403 = icmp eq i8 %i.awv, 0
  br i1 %.not284.i403, label %bb.gn, label %bb.hf, !prof !25

bb.gn:                                            ; preds = %bb.gm
  %i.aww = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 13
  %i.awx = load i8, ptr %i.aww, align 1, !tbaa !81
  %i.awy = zext i8 %i.awx to i64
  %i.awz = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.awy
  %i.axa = load i8, ptr %i.awz, align 1, !tbaa !81
  %.not285.i404 = icmp eq i8 %i.axa, 0
  br i1 %.not285.i404, label %bb.go, label %bb.hg, !prof !25

bb.go:                                            ; preds = %bb.gn
  %i.axb = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 14
  %i.axc = load i8, ptr %i.axb, align 1, !tbaa !81
  %i.axd = zext i8 %i.axc to i64
  %i.axe = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.axd
  %i.axf = load i8, ptr %i.axe, align 1, !tbaa !81
  %.not286.i405 = icmp eq i8 %i.axf, 0
  br i1 %.not286.i405, label %bb.gp, label %bb.hh, !prof !25

bb.gp:                                            ; preds = %bb.go
  %i.axg = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 15
  %i.axh = load i8, ptr %i.axg, align 1, !tbaa !81
  %i.axi = zext i8 %i.axh to i64
  %i.axj = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.axi
  %i.axk = load i8, ptr %i.axj, align 1, !tbaa !81
  %.not287.i406 = icmp eq i8 %i.axk, 0
  br i1 %.not287.i406, label %bb.gq, label %bb.hi, !prof !25

bb.gq:                                            ; preds = %bb.gp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i3122371, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i3132372, i64 16, i1 false)
  %i.axl = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 16 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 16 ; 3 uses
  %i.axn = ptrtoint ptr %i.axm to i64
  %i.axo = sub i64 %i.aue, %i.axn                 ; 2 uses
  %i.axp = icmp sgt i64 %i.axo, 15
  br i1 %i.axp, label %.lr.ph2373, label %.preheader1388, !llvm.loop !331

.preheader1386:                                   ; preds = %bb.gv, %.preheader1388
  %.2247.i314.lcssa = phi ptr [ %.1246.i312.lcssa, %.preheader1388 ], [ %i.ayw, %bb.gv ] ; 3 uses
  %.2240.i315.lcssa = phi ptr [ %.1239.i313.lcssa, %.preheader1388 ], [ %i.ayx, %bb.gv ] ; 5 uses
  %i.axq = icmp ugt ptr %i.aud, %.2240.i315.lcssa
  br i1 %i.axq, label %.lr.ph2384.preheader, label %write_str.exit407

.lr.ph2384.preheader:                             ; preds = %.preheader1386
  %.2240.i315.lcssa3117 = ptrtoaddr ptr %.2240.i315.lcssa to i64 ; 2 uses
  %scevgep = getelementptr i8, ptr %.2240.i315.lcssa, i64 %i.aue
  %i.axr = sub i64 0, %.2240.i315.lcssa3117
  %scevgep3118 = getelementptr i8, ptr %scevgep, i64 %i.axr
  %i.axs = sub i64 %i.auf, %.2240.i315.lcssa3117
  %i.axt = freeze i64 %i.axs                      ; 2 uses
  %i.axu = add i64 %i.axt, -1
  %xtraiter5945 = and i64 %i.axt, 3               ; 2 uses
  %lcmp.mod5946.not = icmp eq i64 %xtraiter5945, 0
  br i1 %lcmp.mod5946.not, label %.lr.ph2384.prol.loopexit, label %.lr.ph2384.prol

.lr.ph2384.prol:                                  ; preds = %.lr.ph2384.preheader, %bb.gr
  %.3241.i3172383.prol = phi ptr [ %i.axz, %bb.gr ], [ %.2240.i315.lcssa, %.lr.ph2384.preheader ] ; 3 uses
  %.3248.i3162382.prol = phi ptr [ %i.aya, %bb.gr ], [ %.2247.i314.lcssa, %.lr.ph2384.preheader ] ; 3 uses
  %prol.iter5947 = phi i64 [ %prol.iter5947.next, %bb.gr ], [ 0, %.lr.ph2384.preheader ]
  %i.axv = load i8, ptr %.3241.i3172383.prol, align 1, !tbaa !81 ; 2 uses
  %i.axw = zext i8 %i.axv to i64
  %i.axx = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.axw
  %i.axy = load i8, ptr %i.axx, align 1, !tbaa !81
  %.not.i319.prol = icmp eq i8 %i.axy, 0
  br i1 %.not.i319.prol, label %bb.gr, label %.preheader1383.preheader, !prof !25

bb.gr:                                            ; preds = %.lr.ph2384.prol
  %i.axz = getelementptr inbounds nuw i8, ptr %.3241.i3172383.prol, i64 1 ; 2 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %.3248.i3162382.prol, i64 1 ; 3 uses
  store i8 %i.axv, ptr %.3248.i3162382.prol, align 1, !tbaa !81
  %prol.iter5947.next = add i64 %prol.iter5947, 1 ; 2 uses
  %prol.iter5947.cmp.not = icmp eq i64 %prol.iter5947.next, %xtraiter5945
  br i1 %prol.iter5947.cmp.not, label %.lr.ph2384.prol.loopexit, label %.lr.ph2384.prol, !llvm.loop !349

.lr.ph2384.prol.loopexit:                         ; preds = %bb.gr, %.lr.ph2384.preheader
  %.lcssa5784.unr = phi ptr [ poison, %.lr.ph2384.preheader ], [ %i.aya, %bb.gr ]
  %.3241.i3172383.unr = phi ptr [ %.2240.i315.lcssa, %.lr.ph2384.preheader ], [ %i.axz, %bb.gr ]
  %.3248.i3162382.unr = phi ptr [ %.2247.i314.lcssa, %.lr.ph2384.preheader ], [ %i.aya, %bb.gr ]
  %i.ayb = icmp ult i64 %i.axu, 3
  br i1 %i.ayb, label %write_str.exit407, label %.lr.ph2384

.lr.ph2379:                                       ; preds = %.preheader1388, %bb.gv
  %.2240.i3152378 = phi ptr [ %i.ayx, %bb.gv ], [ %.1239.i313.lcssa, %.preheader1388 ] ; 10 uses
  %.2247.i3142377 = phi ptr [ %i.ayw, %bb.gv ], [ %.1246.i312.lcssa, %.preheader1388 ] ; 6 uses
  %i.ayc = load i8, ptr %.2240.i3152378, align 1, !tbaa !81 ; 2 uses
  %i.ayd = zext i8 %i.ayc to i64
  %i.aye = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.ayd
  %i.ayf = load i8, ptr %i.aye, align 1, !tbaa !81
  %.not268.i381 = icmp eq i8 %i.ayf, 0
  br i1 %.not268.i381, label %bb.gs, label %.preheader1383.preheader, !prof !25

bb.gs:                                            ; preds = %.lr.ph2379
  %i.ayg = getelementptr inbounds nuw i8, ptr %.2240.i3152378, i64 1
  %i.ayh = load i8, ptr %i.ayg, align 1, !tbaa !81
  %i.ayi = zext i8 %i.ayh to i64
  %i.ayj = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.ayi
  %i.ayk = load i8, ptr %i.ayj, align 1, !tbaa !81
  %.not269.i382 = icmp eq i8 %i.ayk, 0
  br i1 %.not269.i382, label %bb.gt, label %.loopexit1390, !prof !25

bb.gt:                                            ; preds = %bb.gs
  %i.ayl = getelementptr inbounds nuw i8, ptr %.2240.i3152378, i64 2
  %i.aym = load i8, ptr %i.ayl, align 1, !tbaa !81
  %i.ayn = zext i8 %i.aym to i64
  %i.ayo = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.ayn
  %i.ayp = load i8, ptr %i.ayo, align 1, !tbaa !81
  %.not270.i385 = icmp eq i8 %i.ayp, 0
  br i1 %.not270.i385, label %bb.gu, label %.loopexit1391, !prof !25

bb.gu:                                            ; preds = %bb.gt
  %i.ayq = getelementptr inbounds nuw i8, ptr %.2240.i3152378, i64 3
  %i.ayr = load i8, ptr %i.ayq, align 1, !tbaa !81
  %i.ays = zext i8 %i.ayr to i64
  %i.ayt = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.ays
  %i.ayu = load i8, ptr %i.ayt, align 1, !tbaa !81
  %.not271.i388 = icmp eq i8 %i.ayu, 0
  br i1 %.not271.i388, label %bb.gv, label %.loopexit1392, !prof !25

bb.gv:                                            ; preds = %bb.gu
  %i.ayv = load i32, ptr %.2240.i3152378, align 1
  store i32 %i.ayv, ptr %.2247.i3142377, align 1
  %i.ayw = getelementptr inbounds nuw i8, ptr %.2247.i3142377, i64 4 ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %.2240.i3152378, i64 4 ; 3 uses
  %i.ayy = ptrtoint ptr %i.ayx to i64
  %i.ayz = sub i64 %i.aue, %i.ayy
  %i.aza = icmp sgt i64 %i.ayz, 3
  br i1 %i.aza, label %.lr.ph2379, label %.preheader1386, !llvm.loop !333

.lr.ph2384:                                       ; preds = %.lr.ph2384.prol.loopexit, %bb.gw
  %.3241.i3172383 = phi ptr [ %i.azx, %bb.gw ], [ %.3241.i3172383.unr, %.lr.ph2384.prol.loopexit ] ; 9 uses
  %.3248.i3162382 = phi ptr [ %i.azy, %bb.gw ], [ %.3248.i3162382.unr, %.lr.ph2384.prol.loopexit ] ; 6 uses
  %i.azb = load i8, ptr %.3241.i3172383, align 1, !tbaa !81 ; 2 uses
  %i.azc = zext i8 %i.azb to i64
  %i.azd = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.azc
  %i.aze = load i8, ptr %i.azd, align 1, !tbaa !81
  %.not.i319 = icmp eq i8 %i.aze, 0
  br i1 %.not.i319, label %.lr.ph2384.1, label %.preheader1383.preheader, !prof !25

.lr.ph2384.1:                                     ; preds = %.lr.ph2384
  %i.azf = getelementptr inbounds nuw i8, ptr %.3241.i3172383, i64 1
  %i.azg = getelementptr inbounds nuw i8, ptr %.3248.i3162382, i64 1 ; 2 uses
  store i8 %i.azb, ptr %.3248.i3162382, align 1, !tbaa !81
  %i.azh = load i8, ptr %i.azf, align 1, !tbaa !81 ; 2 uses
  %i.azi = zext i8 %i.azh to i64
  %i.azj = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.azi
  %i.azk = load i8, ptr %i.azj, align 1, !tbaa !81
  %.not.i319.1 = icmp eq i8 %i.azk, 0
  br i1 %.not.i319.1, label %.lr.ph2384.2, label %.preheader1383.preheader.loopexit.loopexit.split.loop.exit6668, !prof !25

.lr.ph2384.2:                                     ; preds = %.lr.ph2384.1
  %i.azl = getelementptr inbounds nuw i8, ptr %.3241.i3172383, i64 2
  %i.azm = getelementptr inbounds nuw i8, ptr %.3248.i3162382, i64 2 ; 2 uses
  store i8 %i.azh, ptr %i.azg, align 1, !tbaa !81
  %i.azn = load i8, ptr %i.azl, align 1, !tbaa !81 ; 2 uses
  %i.azo = zext i8 %i.azn to i64
  %i.azp = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.azo
  %i.azq = load i8, ptr %i.azp, align 1, !tbaa !81
  %.not.i319.2 = icmp eq i8 %i.azq, 0
  br i1 %.not.i319.2, label %.lr.ph2384.3, label %.preheader1383.preheader.loopexit.loopexit.split.loop.exit6665, !prof !25

.lr.ph2384.3:                                     ; preds = %.lr.ph2384.2
  %i.azr = getelementptr inbounds nuw i8, ptr %.3241.i3172383, i64 3
  %i.azs = getelementptr inbounds nuw i8, ptr %.3248.i3162382, i64 3 ; 2 uses
  store i8 %i.azn, ptr %i.azm, align 1, !tbaa !81
  %i.azt = load i8, ptr %i.azr, align 1, !tbaa !81 ; 2 uses
  %i.azu = zext i8 %i.azt to i64
  %i.azv = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.azu
  %i.azw = load i8, ptr %i.azv, align 1, !tbaa !81
  %.not.i319.3 = icmp eq i8 %i.azw, 0
  br i1 %.not.i319.3, label %bb.gw, label %.preheader1383.preheader.loopexit.loopexit.split.loop.exit, !prof !25

bb.gw:                                            ; preds = %.lr.ph2384.3
  %i.azx = getelementptr inbounds nuw i8, ptr %.3241.i3172383, i64 4 ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %.3248.i3162382, i64 4 ; 2 uses
  store i8 %i.azt, ptr %i.azs, align 1, !tbaa !81
  %exitcond.not.3 = icmp eq ptr %i.azx, %scevgep3118
  br i1 %exitcond.not.3, label %write_str.exit407, label %.lr.ph2384, !llvm.loop !334

.loopexit1390:                                    ; preds = %bb.gb, %bb.gs
  %i.azz = phi i8 [ %i.ayc, %bb.gs ], [ %i.auk, %bb.gb ]
  %.5250.i383 = phi ptr [ %.2247.i3142377, %bb.gs ], [ %.1246.i3122371, %bb.gb ] ; 2 uses
  %.5243.i384 = phi ptr [ %.2240.i3152378, %bb.gs ], [ %.1239.i3132372, %bb.gb ]
  store i8 %i.azz, ptr %.5250.i383, align 1
  %i.baa = getelementptr inbounds nuw i8, ptr %.5250.i383, i64 1
  %i.bab = getelementptr inbounds nuw i8, ptr %.5243.i384, i64 1
  br label %.preheader1383.preheader

.loopexit1391:                                    ; preds = %bb.gc, %bb.gt
  %.6251.i386 = phi ptr [ %.2247.i3142377, %bb.gt ], [ %.1246.i3122371, %bb.gc ] ; 2 uses
  %.6.i387 = phi ptr [ %.2240.i3152378, %bb.gt ], [ %.1239.i3132372, %bb.gc ] ; 2 uses
  %i.bac = load i16, ptr %.6.i387, align 1
  store i16 %i.bac, ptr %.6251.i386, align 1
  %i.bad = getelementptr inbounds nuw i8, ptr %.6251.i386, i64 2
  %i.bae = getelementptr inbounds nuw i8, ptr %.6.i387, i64 2
  br label %.preheader1383.preheader

.loopexit1392:                                    ; preds = %bb.gd, %bb.gu
  %.7252.i389 = phi ptr [ %.2247.i3142377, %bb.gu ], [ %.1246.i3122371, %bb.gd ] ; 2 uses
  %.7.i390 = phi ptr [ %.2240.i3152378, %bb.gu ], [ %.1239.i3132372, %bb.gd ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i389, ptr noundef nonnull align 1 dereferenceable(3) %.7.i390, i64 3, i1 false)
  %i.baf = getelementptr inbounds nuw i8, ptr %.7252.i389, i64 3
  %i.bag = getelementptr inbounds nuw i8, ptr %.7.i390, i64 3
  br label %.preheader1383.preheader

bb.gx:                                            ; preds = %bb.ge
  %i.bah = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 4
  %i.bai = load i32, ptr %.1239.i3132372, align 1
  store i32 %i.bai, ptr %.1246.i3122371, align 1
  %i.baj = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 4
  br label %.preheader1383.preheader

bb.gy:                                            ; preds = %bb.gf
  %i.bak = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i3122371, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i3132372, i64 5, i1 false)
  %i.bal = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 5
  br label %.preheader1383.preheader

bb.gz:                                            ; preds = %bb.gg
  %i.bam = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i3122371, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i3132372, i64 6, i1 false)
  %i.ban = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 6
  br label %.preheader1383.preheader

bb.ha:                                            ; preds = %bb.gh
  %i.bao = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i3122371, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i3132372, i64 7, i1 false)
  %i.bap = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 7
  br label %.preheader1383.preheader

bb.hb:                                            ; preds = %bb.gi
  %i.baq = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 8
  %i.bar = load i64, ptr %.1239.i3132372, align 1
  store i64 %i.bar, ptr %.1246.i3122371, align 1
  %i.bas = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 8
  br label %.preheader1383.preheader

bb.hc:                                            ; preds = %bb.gj
  %i.bat = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i3122371, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i3132372, i64 9, i1 false)
  %i.bau = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 9
  br label %.preheader1383.preheader

bb.hd:                                            ; preds = %bb.gk
  %i.bav = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i3122371, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i3132372, i64 10, i1 false)
  %i.baw = getelementptr inbounds nuw i8, ptr %.1246.i3122371, i64 10
end_hunk_2
begin_hunk_3_@yyjson_val_write_opts:bb.a
.preheader1383.backedge:                          ; preds = %bb.hw, %bb.hx, %bb.if, %bb.ig, %bb.ho, %.critedge.i368, %.critedge316.i362, %bb.hz, %.critedge321.i343, %.critedge325.i334
  %.8253.i322.be = phi ptr [ %i.bhf, %bb.if ], [ %i.bcf, %bb.ho ], [ %i.bcr, %.critedge.i368 ], [ %i.bdb, %.critedge316.i362 ], [ %i.bdf, %bb.hw ], [ %i.bdn, %bb.hx ], [ %i.bei, %bb.hz ], [ %i.bff, %.critedge321.i343 ], [ %i.bhb, %.critedge325.i334 ], [ %i.bhh, %bb.ig ]
  %.8.i323.be = phi ptr [ %i.bhe, %bb.if ], [ %i.bcg, %bb.ho ], [ %i.bcs, %.critedge.i368 ], [ %i.bbk, %.critedge316.i362 ], [ %i.bdg, %bb.hw ], [ %i.bdo, %bb.hx ], [ %i.bej, %bb.hz ], [ %i.bfg, %.critedge321.i343 ], [ %i.bbk, %.critedge325.i334 ], [ %i.bhi, %bb.ig ]
  br label %.preheader1383

bb.hx:                                            ; preds = %bb.hl
  store i32 808482140, ptr %.8253.i322, align 1
  %i.bdh = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 4
  %i.bdi = load i8, ptr %.8.i323, align 1, !tbaa !81
  %i.bdj = zext i8 %i.bdi to i64
  %i.bdk = shl nuw nsw i64 %i.bdj, 1
  %i.bdl = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bdk
  %i.bdm = load i16, ptr %i.bdl, align 2
  store i16 %i.bdm, ptr %i.bdh, align 1
  %i.bdn = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 6
  %i.bdo = getelementptr inbounds nuw i8, ptr %.8.i323, i64 1
  br label %.preheader1383.backedge

bb.hy:                                            ; preds = %bb.hl
  %.sroa.0.0.copyload.i332.i351 = load i16, ptr %.8.i323, align 1 ; 3 uses
  %.sroa.0987.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i351 to i32 ; 2 uses
  %i.bdp = and i32 %.sroa.0987.0.insert.ext, 49376
  %i.bdq = icmp ne i32 %i.bdp, 32960
  %i.bdr = and i32 %.sroa.0987.0.insert.ext, 30
  %i.bds = icmp eq i32 %i.bdr, 0
  %.not298.i352 = or i1 %i.bdq, %i.bds
  br i1 %.not298.i352, label %.thread1104, label %bb.hz, !prof !8

bb.hz:                                            ; preds = %bb.hy
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

bb.ia:                                            ; preds = %bb.hl
  %.sroa.0.0.copyload.i.i338 = load i16, ptr %.8.i323, align 1 ; 3 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %.8.i323, i64 2
  %i.bel = load i8, ptr %i.bek, align 1, !tbaa !81 ; 2 uses
  %.sroa.4.0.insert.ext.i.i339 = zext i8 %i.bel to i32
  %.sroa.4.0.insert.shift.i.i340 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i339, 16
  %.sroa.0.0.insert.ext.i.i341 = zext i16 %.sroa.0.0.copyload.i.i338 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i342 = or disjoint i32 %.sroa.4.0.insert.shift.i.i340, %.sroa.0.0.insert.ext.i.i341
  %i.bem = and i32 %.sroa.0.0.insert.insert.i.i342, 12632304
  %i.ben = icmp eq i32 %i.bem, 8421600
  br i1 %i.ben, label %bb.ib, label %.thread1104, !prof !25

bb.ib:                                            ; preds = %bb.ia
  %i.beo = and i32 %.sroa.0.0.insert.ext.i.i341, 8207
  switch i32 %i.beo, label %.critedge321.i343 [
    i32 8205, label %.thread1104
    i32 0, label %.thread1104
  ], !prof !335

.critedge321.i343:                                ; preds = %bb.ib
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

bb.ic:                                            ; preds = %bb.hl
  %.sroa.0.0.copyload.i333.i328 = load i32, ptr %.8.i323, align 1 ; 9 uses
  %i.bfh = and i32 %.sroa.0.0.copyload.i333.i328, -1061109512
  %i.bfi = icmp ne i32 %i.bfh, -2139062032
  %i.bfj = and i32 %.sroa.0.0.copyload.i333.i328, 12295
  %.not288.i329 = icmp eq i32 %i.bfj, 0
  %or.cond323.i330 = or i1 %i.bfi, %.not288.i329
  %i.bfk = lshr i32 %.sroa.0.0.copyload.i333.i328, 24
  br i1 %or.cond323.i330, label %.thread1104, label %bb.id, !prof !258

bb.id:                                            ; preds = %bb.ic
  %i.bfl = and i32 %.sroa.0.0.copyload.i333.i328, 4
  %i.bfm = icmp ne i32 %i.bfl, 0
  %i.bfn = and i32 %.sroa.0.0.copyload.i333.i328, 12291
  %i.bfo = icmp ne i32 %i.bfn, 0
  %.not291.i331 = and i1 %i.bfm, %i.bfo
  br i1 %.not291.i331, label %.thread1104, label %.critedge325.i334, !prof !8

.critedge325.i334:                                ; preds = %bb.id
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

bb.ie:                                            ; preds = %bb.hl, %bb.hk
  %i.bhc = phi i8 [ %i.bbx, %bb.hl ], [ %i.bbp, %bb.hk ]
  br i1 %.not1291, label %.thread1094, label %.thread1104

.thread1094:                                      ; preds = %bb.hu, %bb.hv, %bb.hs, %bb.hq, %bb.ht, %bb.ht, %bb.hr, %bb.hr, %bb.hn, %bb.ie
  %i.bhd = phi i8 [ %i.bcw, %bb.hu ], [ %i.bcw, %bb.hv ], [ %i.bcp, %bb.hs ], [ %i.bcj, %bb.hq ], [ %i.bcp, %bb.ht ], [ %i.bcp, %bb.ht ], [ %i.bcj, %bb.hr ], [ %i.bcj, %bb.hr ], [ %i.bce, %bb.hn ], [ %i.bhc, %bb.ie ]
  br i1 %.not1286, label %.loopexit1370, label %bb.if

bb.if:                                            ; preds = %.thread1094
  %i.bhe = getelementptr inbounds nuw i8, ptr %.8.i323, i64 1
  %i.bhf = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 1
  store i8 %i.bhd, ptr %.8253.i322, align 1, !tbaa !81
  br label %.preheader1383.backedge

.thread1104:                                      ; preds = %bb.ic, %bb.id, %bb.ia, %bb.ib, %bb.ib, %bb.hy, %bb.ie
  br i1 %.not1286, label %.loopexit1370, label %bb.ig

bb.ig:                                            ; preds = %.thread1104
  store i16 30044, ptr %.8253.i322, align 1
  %i.bhg = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 2
  store i32 1145456198, ptr %i.bhg, align 1
  %i.bhh = getelementptr inbounds nuw i8, ptr %.8253.i322, i64 6
  %i.bhi = getelementptr inbounds nuw i8, ptr %.8.i323, i64 1
  br label %.preheader1383.backedge

bb.ih:                                            ; preds = %write_indent.exit742
  %i.bhj = load i64, ptr %.0565.i, align 8, !tbaa !79
  %i.bhk = and i64 %i.bhj, 24
  %.not597.i = icmp eq i64 %i.bhk, 0
  store i8 34, ptr %.0.i740.lcssa, align 1, !tbaa !81
  br i1 %.not597.i, label %.split567.i, label %bb.kp

.split567.i:                                      ; preds = %bb.ih
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.asu, i64 %i.ass ; 4 uses
  %i.bhm = ptrtoint ptr %i.bhl to i64             ; 5 uses
  %i.bhn = add i64 %i.ass, %i.asv
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ju, %.split567.i
  %.pn.i210 = phi ptr [ %.0.i740.lcssa, %.split567.i ], [ %.8253.i223, %bb.ju ]
  %.0238.i211 = phi ptr [ %i.asu, %.split567.i ], [ %i.bpg, %bb.ju ] ; 3 uses
  %.0245.i212 = getelementptr inbounds nuw i8, ptr %.pn.i210, i64 1 ; 2 uses
  %i.bho = ptrtoint ptr %.0238.i211 to i64
  %i.bhp = sub i64 %i.bhm, %i.bho                 ; 2 uses
  %i.bhq = icmp sgt i64 %i.bhp, 15
  br i1 %i.bhq, label %.lr.ph2423, label %.preheader1374

.preheader1374:                                   ; preds = %bb.iy, %bb.ii
  %.pre-phi3205 = phi i64 [ %i.bhp, %bb.ii ], [ %i.bkw, %bb.iy ]
  %.1246.i213.lcssa = phi ptr [ %.0245.i212, %bb.ii ], [ %i.bkt, %bb.iy ] ; 2 uses
  %.1239.i214.lcssa = phi ptr [ %.0238.i211, %bb.ii ], [ %i.bku, %bb.iy ] ; 2 uses
  %i.bhr = icmp sgt i64 %.pre-phi3205, 3
  br i1 %i.bhr, label %.lr.ph2429, label %.preheader1372

.lr.ph2423:                                       ; preds = %bb.ii, %bb.iy
  %.1239.i2142421 = phi ptr [ %i.bku, %bb.iy ], [ %.0238.i211, %bb.ii ] ; 46 uses
  %.1246.i2132420 = phi ptr [ %i.bkt, %bb.iy ], [ %.0245.i212, %bb.ii ] ; 30 uses
  %i.bhs = load i8, ptr %.1239.i2142421, align 1, !tbaa !81 ; 2 uses
  %i.bht = zext i8 %i.bhs to i64
  %i.bhu = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bht
  %i.bhv = load i8, ptr %i.bhu, align 1, !tbaa !81
  %.not272.i292 = icmp eq i8 %i.bhv, 0
  br i1 %.not272.i292, label %bb.ij, label %.preheader1369.preheader, !prof !25

bb.ij:                                            ; preds = %.lr.ph2423
  %i.bhw = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 1
  %i.bhx = load i8, ptr %i.bhw, align 1, !tbaa !81
  %i.bhy = zext i8 %i.bhx to i64
  %i.bhz = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bhy
  %i.bia = load i8, ptr %i.bhz, align 1, !tbaa !81
  %.not273.i293 = icmp eq i8 %i.bia, 0
  br i1 %.not273.i293, label %bb.ik, label %.loopexit1376, !prof !25

bb.ik:                                            ; preds = %bb.ij
  %i.bib = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 2
  %i.bic = load i8, ptr %i.bib, align 1, !tbaa !81
  %i.bid = zext i8 %i.bic to i64
  %i.bie = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bid
  %i.bif = load i8, ptr %i.bie, align 1, !tbaa !81
  %.not274.i294 = icmp eq i8 %i.bif, 0
  br i1 %.not274.i294, label %bb.il, label %.loopexit1377, !prof !25

bb.il:                                            ; preds = %bb.ik
  %i.big = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 3
  %i.bih = load i8, ptr %i.big, align 1, !tbaa !81
  %i.bii = zext i8 %i.bih to i64
  %i.bij = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bii
  %i.bik = load i8, ptr %i.bij, align 1, !tbaa !81
  %.not275.i295 = icmp eq i8 %i.bik, 0
  br i1 %.not275.i295, label %bb.im, label %.loopexit1378, !prof !25

bb.im:                                            ; preds = %bb.il
  %i.bil = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 4
  %i.bim = load i8, ptr %i.bil, align 1, !tbaa !81
  %i.bin = zext i8 %i.bim to i64
  %i.bio = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bin
  %i.bip = load i8, ptr %i.bio, align 1, !tbaa !81
  %.not276.i296 = icmp eq i8 %i.bip, 0
  br i1 %.not276.i296, label %bb.in, label %bb.jf, !prof !25

bb.in:                                            ; preds = %bb.im
  %i.biq = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 5
  %i.bir = load i8, ptr %i.biq, align 1, !tbaa !81
  %i.bis = zext i8 %i.bir to i64
  %i.bit = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bis
  %i.biu = load i8, ptr %i.bit, align 1, !tbaa !81
  %.not277.i297 = icmp eq i8 %i.biu, 0
  br i1 %.not277.i297, label %bb.io, label %bb.jg, !prof !25

bb.io:                                            ; preds = %bb.in
  %i.biv = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 6
  %i.biw = load i8, ptr %i.biv, align 1, !tbaa !81
  %i.bix = zext i8 %i.biw to i64
  %i.biy = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bix
  %i.biz = load i8, ptr %i.biy, align 1, !tbaa !81
  %.not278.i298 = icmp eq i8 %i.biz, 0
  br i1 %.not278.i298, label %bb.ip, label %bb.jh, !prof !25

bb.ip:                                            ; preds = %bb.io
  %i.bja = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 7
  %i.bjb = load i8, ptr %i.bja, align 1, !tbaa !81
  %i.bjc = zext i8 %i.bjb to i64
  %i.bjd = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjc
  %i.bje = load i8, ptr %i.bjd, align 1, !tbaa !81
  %.not279.i299 = icmp eq i8 %i.bje, 0
  br i1 %.not279.i299, label %bb.iq, label %bb.ji, !prof !25

bb.iq:                                            ; preds = %bb.ip
  %i.bjf = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 8
  %i.bjg = load i8, ptr %i.bjf, align 1, !tbaa !81
  %i.bjh = zext i8 %i.bjg to i64
  %i.bji = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjh
  %i.bjj = load i8, ptr %i.bji, align 1, !tbaa !81
  %.not280.i300 = icmp eq i8 %i.bjj, 0
  br i1 %.not280.i300, label %bb.ir, label %bb.jj, !prof !25

bb.ir:                                            ; preds = %bb.iq
  %i.bjk = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 9
  %i.bjl = load i8, ptr %i.bjk, align 1, !tbaa !81
  %i.bjm = zext i8 %i.bjl to i64
  %i.bjn = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjm
  %i.bjo = load i8, ptr %i.bjn, align 1, !tbaa !81
  %.not281.i301 = icmp eq i8 %i.bjo, 0
  br i1 %.not281.i301, label %bb.is, label %bb.jk, !prof !25

bb.is:                                            ; preds = %bb.ir
  %i.bjp = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 10
  %i.bjq = load i8, ptr %i.bjp, align 1, !tbaa !81
  %i.bjr = zext i8 %i.bjq to i64
  %i.bjs = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjr
  %i.bjt = load i8, ptr %i.bjs, align 1, !tbaa !81
  %.not282.i302 = icmp eq i8 %i.bjt, 0
  br i1 %.not282.i302, label %bb.it, label %bb.jl, !prof !25

bb.it:                                            ; preds = %bb.is
  %i.bju = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 11
  %i.bjv = load i8, ptr %i.bju, align 1, !tbaa !81
  %i.bjw = zext i8 %i.bjv to i64
  %i.bjx = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjw
  %i.bjy = load i8, ptr %i.bjx, align 1, !tbaa !81
  %.not283.i303 = icmp eq i8 %i.bjy, 0
  br i1 %.not283.i303, label %bb.iu, label %bb.jm, !prof !25

bb.iu:                                            ; preds = %bb.it
  %i.bjz = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 12
  %i.bka = load i8, ptr %i.bjz, align 1, !tbaa !81
  %i.bkb = zext i8 %i.bka to i64
  %i.bkc = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bkb
  %i.bkd = load i8, ptr %i.bkc, align 1, !tbaa !81
  %.not284.i304 = icmp eq i8 %i.bkd, 0
  br i1 %.not284.i304, label %bb.iv, label %bb.jn, !prof !25

bb.iv:                                            ; preds = %bb.iu
  %i.bke = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 13
  %i.bkf = load i8, ptr %i.bke, align 1, !tbaa !81
  %i.bkg = zext i8 %i.bkf to i64
  %i.bkh = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bkg
  %i.bki = load i8, ptr %i.bkh, align 1, !tbaa !81
  %.not285.i305 = icmp eq i8 %i.bki, 0
  br i1 %.not285.i305, label %bb.iw, label %bb.jo, !prof !25

bb.iw:                                            ; preds = %bb.iv
  %i.bkj = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 14
  %i.bkk = load i8, ptr %i.bkj, align 1, !tbaa !81
  %i.bkl = zext i8 %i.bkk to i64
  %i.bkm = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bkl
  %i.bkn = load i8, ptr %i.bkm, align 1, !tbaa !81
  %.not286.i306 = icmp eq i8 %i.bkn, 0
  br i1 %.not286.i306, label %bb.ix, label %bb.jp, !prof !25

bb.ix:                                            ; preds = %bb.iw
  %i.bko = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 15
  %i.bkp = load i8, ptr %i.bko, align 1, !tbaa !81
  %i.bkq = zext i8 %i.bkp to i64
  %i.bkr = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bkq
  %i.bks = load i8, ptr %i.bkr, align 1, !tbaa !81
  %.not287.i307 = icmp eq i8 %i.bks, 0
  br i1 %.not287.i307, label %bb.iy, label %bb.jq, !prof !25

bb.iy:                                            ; preds = %bb.ix
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i2132420, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i2142421, i64 16, i1 false)
  %i.bkt = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 16 ; 2 uses
  %i.bku = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 16 ; 3 uses
  %i.bkv = ptrtoint ptr %i.bku to i64
  %i.bkw = sub i64 %i.bhm, %i.bkv                 ; 2 uses
  %i.bkx = icmp sgt i64 %i.bkw, 15
  br i1 %i.bkx, label %.lr.ph2423, label %.preheader1374, !llvm.loop !331

.preheader1372:                                   ; preds = %bb.jd, %.preheader1374
  %.2247.i215.lcssa = phi ptr [ %.1246.i213.lcssa, %.preheader1374 ], [ %i.bme, %bb.jd ] ; 3 uses
  %.2240.i216.lcssa = phi ptr [ %.1239.i214.lcssa, %.preheader1374 ], [ %i.bmf, %bb.jd ] ; 5 uses
  %i.bky = icmp ugt ptr %i.bhl, %.2240.i216.lcssa
  br i1 %i.bky, label %.lr.ph2434.preheader, label %write_str.exit407

.lr.ph2434.preheader:                             ; preds = %.preheader1372
  %.2240.i216.lcssa3120 = ptrtoaddr ptr %.2240.i216.lcssa to i64 ; 2 uses
  %scevgep3119 = getelementptr i8, ptr %.2240.i216.lcssa, i64 %i.bhm
  %i.bkz = sub i64 0, %.2240.i216.lcssa3120
  %scevgep3121 = getelementptr i8, ptr %scevgep3119, i64 %i.bkz
  %i.bla = sub i64 %i.bhn, %.2240.i216.lcssa3120
  %i.blb = freeze i64 %i.bla                      ; 2 uses
  %i.blc = add i64 %i.blb, -1
  %xtraiter5955 = and i64 %i.blb, 3               ; 2 uses
  %lcmp.mod5956.not = icmp eq i64 %xtraiter5955, 0
  br i1 %lcmp.mod5956.not, label %.lr.ph2434.prol.loopexit, label %.lr.ph2434.prol

.lr.ph2434.prol:                                  ; preds = %.lr.ph2434.preheader, %bb.iz
  %.3241.i2182433.prol = phi ptr [ %i.blh, %bb.iz ], [ %.2240.i216.lcssa, %.lr.ph2434.preheader ] ; 3 uses
  %.3248.i2172432.prol = phi ptr [ %i.bli, %bb.iz ], [ %.2247.i215.lcssa, %.lr.ph2434.preheader ] ; 3 uses
  %prol.iter5957 = phi i64 [ %prol.iter5957.next, %bb.iz ], [ 0, %.lr.ph2434.preheader ]
  %i.bld = load i8, ptr %.3241.i2182433.prol, align 1, !tbaa !81 ; 2 uses
  %i.ble = zext i8 %i.bld to i64
  %i.blf = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.ble
  %i.blg = load i8, ptr %i.blf, align 1, !tbaa !81
  %.not.i220.prol = icmp eq i8 %i.blg, 0
  br i1 %.not.i220.prol, label %bb.iz, label %.preheader1369.preheader, !prof !25

bb.iz:                                            ; preds = %.lr.ph2434.prol
  %i.blh = getelementptr inbounds nuw i8, ptr %.3241.i2182433.prol, i64 1 ; 2 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %.3248.i2172432.prol, i64 1 ; 3 uses
  store i8 %i.bld, ptr %.3248.i2172432.prol, align 1, !tbaa !81
  %prol.iter5957.next = add i64 %prol.iter5957, 1 ; 2 uses
  %prol.iter5957.cmp.not = icmp eq i64 %prol.iter5957.next, %xtraiter5955
  br i1 %prol.iter5957.cmp.not, label %.lr.ph2434.prol.loopexit, label %.lr.ph2434.prol, !llvm.loop !350

.lr.ph2434.prol.loopexit:                         ; preds = %bb.iz, %.lr.ph2434.preheader
  %.lcssa5867.unr = phi ptr [ poison, %.lr.ph2434.preheader ], [ %i.bli, %bb.iz ]
  %.3241.i2182433.unr = phi ptr [ %.2240.i216.lcssa, %.lr.ph2434.preheader ], [ %i.blh, %bb.iz ]
  %.3248.i2172432.unr = phi ptr [ %.2247.i215.lcssa, %.lr.ph2434.preheader ], [ %i.bli, %bb.iz ]
  %i.blj = icmp ult i64 %i.blc, 3
  br i1 %i.blj, label %write_str.exit407, label %.lr.ph2434

.lr.ph2429:                                       ; preds = %.preheader1374, %bb.jd
  %.2240.i2162428 = phi ptr [ %i.bmf, %bb.jd ], [ %.1239.i214.lcssa, %.preheader1374 ] ; 10 uses
  %.2247.i2152427 = phi ptr [ %i.bme, %bb.jd ], [ %.1246.i213.lcssa, %.preheader1374 ] ; 6 uses
  %i.blk = load i8, ptr %.2240.i2162428, align 1, !tbaa !81 ; 2 uses
  %i.bll = zext i8 %i.blk to i64
  %i.blm = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bll
  %i.bln = load i8, ptr %i.blm, align 1, !tbaa !81
  %.not268.i282 = icmp eq i8 %i.bln, 0
  br i1 %.not268.i282, label %bb.ja, label %.preheader1369.preheader, !prof !25

bb.ja:                                            ; preds = %.lr.ph2429
  %i.blo = getelementptr inbounds nuw i8, ptr %.2240.i2162428, i64 1
  %i.blp = load i8, ptr %i.blo, align 1, !tbaa !81
  %i.blq = zext i8 %i.blp to i64
  %i.blr = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.blq
  %i.bls = load i8, ptr %i.blr, align 1, !tbaa !81
  %.not269.i283 = icmp eq i8 %i.bls, 0
  br i1 %.not269.i283, label %bb.jb, label %.loopexit1376, !prof !25

bb.jb:                                            ; preds = %bb.ja
  %i.blt = getelementptr inbounds nuw i8, ptr %.2240.i2162428, i64 2
  %i.blu = load i8, ptr %i.blt, align 1, !tbaa !81
  %i.blv = zext i8 %i.blu to i64
  %i.blw = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.blv
  %i.blx = load i8, ptr %i.blw, align 1, !tbaa !81
  %.not270.i286 = icmp eq i8 %i.blx, 0
  br i1 %.not270.i286, label %bb.jc, label %.loopexit1377, !prof !25

bb.jc:                                            ; preds = %bb.jb
  %i.bly = getelementptr inbounds nuw i8, ptr %.2240.i2162428, i64 3
  %i.blz = load i8, ptr %i.bly, align 1, !tbaa !81
  %i.bma = zext i8 %i.blz to i64
  %i.bmb = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bma
  %i.bmc = load i8, ptr %i.bmb, align 1, !tbaa !81
  %.not271.i289 = icmp eq i8 %i.bmc, 0
  br i1 %.not271.i289, label %bb.jd, label %.loopexit1378, !prof !25

bb.jd:                                            ; preds = %bb.jc
  %i.bmd = load i32, ptr %.2240.i2162428, align 1
  store i32 %i.bmd, ptr %.2247.i2152427, align 1
  %i.bme = getelementptr inbounds nuw i8, ptr %.2247.i2152427, i64 4 ; 2 uses
  %i.bmf = getelementptr inbounds nuw i8, ptr %.2240.i2162428, i64 4 ; 3 uses
  %i.bmg = ptrtoint ptr %i.bmf to i64
  %i.bmh = sub i64 %i.bhm, %i.bmg
  %i.bmi = icmp sgt i64 %i.bmh, 3
  br i1 %i.bmi, label %.lr.ph2429, label %.preheader1372, !llvm.loop !333

.lr.ph2434:                                       ; preds = %.lr.ph2434.prol.loopexit, %bb.je
  %.3241.i2182433 = phi ptr [ %i.bnf, %bb.je ], [ %.3241.i2182433.unr, %.lr.ph2434.prol.loopexit ] ; 9 uses
  %.3248.i2172432 = phi ptr [ %i.bng, %bb.je ], [ %.3248.i2172432.unr, %.lr.ph2434.prol.loopexit ] ; 6 uses
  %i.bmj = load i8, ptr %.3241.i2182433, align 1, !tbaa !81 ; 2 uses
  %i.bmk = zext i8 %i.bmj to i64
  %i.bml = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bmk
  %i.bmm = load i8, ptr %i.bml, align 1, !tbaa !81
  %.not.i220 = icmp eq i8 %i.bmm, 0
  br i1 %.not.i220, label %.lr.ph2434.1, label %.preheader1369.preheader, !prof !25

.lr.ph2434.1:                                     ; preds = %.lr.ph2434
  %i.bmn = getelementptr inbounds nuw i8, ptr %.3241.i2182433, i64 1
  %i.bmo = getelementptr inbounds nuw i8, ptr %.3248.i2172432, i64 1 ; 2 uses
  store i8 %i.bmj, ptr %.3248.i2172432, align 1, !tbaa !81
  %i.bmp = load i8, ptr %i.bmn, align 1, !tbaa !81 ; 2 uses
  %i.bmq = zext i8 %i.bmp to i64
  %i.bmr = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bmq
  %i.bms = load i8, ptr %i.bmr, align 1, !tbaa !81
  %.not.i220.1 = icmp eq i8 %i.bms, 0
  br i1 %.not.i220.1, label %.lr.ph2434.2, label %.preheader1369.preheader.loopexit.loopexit.split.loop.exit6680, !prof !25

.lr.ph2434.2:                                     ; preds = %.lr.ph2434.1
  %i.bmt = getelementptr inbounds nuw i8, ptr %.3241.i2182433, i64 2
  %i.bmu = getelementptr inbounds nuw i8, ptr %.3248.i2172432, i64 2 ; 2 uses
  store i8 %i.bmp, ptr %i.bmo, align 1, !tbaa !81
  %i.bmv = load i8, ptr %i.bmt, align 1, !tbaa !81 ; 2 uses
  %i.bmw = zext i8 %i.bmv to i64
  %i.bmx = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bmw
  %i.bmy = load i8, ptr %i.bmx, align 1, !tbaa !81
  %.not.i220.2 = icmp eq i8 %i.bmy, 0
  br i1 %.not.i220.2, label %.lr.ph2434.3, label %.preheader1369.preheader.loopexit.loopexit.split.loop.exit6677, !prof !25

.lr.ph2434.3:                                     ; preds = %.lr.ph2434.2
  %i.bmz = getelementptr inbounds nuw i8, ptr %.3241.i2182433, i64 3
  %i.bna = getelementptr inbounds nuw i8, ptr %.3248.i2172432, i64 3 ; 2 uses
  store i8 %i.bmv, ptr %i.bmu, align 1, !tbaa !81
  %i.bnb = load i8, ptr %i.bmz, align 1, !tbaa !81 ; 2 uses
  %i.bnc = zext i8 %i.bnb to i64
  %i.bnd = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bnc
  %i.bne = load i8, ptr %i.bnd, align 1, !tbaa !81
  %.not.i220.3 = icmp eq i8 %i.bne, 0
  br i1 %.not.i220.3, label %bb.je, label %.preheader1369.preheader.loopexit.loopexit.split.loop.exit, !prof !25

bb.je:                                            ; preds = %.lr.ph2434.3
  %i.bnf = getelementptr inbounds nuw i8, ptr %.3241.i2182433, i64 4 ; 2 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %.3248.i2172432, i64 4 ; 2 uses
  store i8 %i.bnb, ptr %i.bna, align 1, !tbaa !81
  %exitcond3122.not.3 = icmp eq ptr %i.bnf, %scevgep3121
  br i1 %exitcond3122.not.3, label %write_str.exit407, label %.lr.ph2434, !llvm.loop !334

.loopexit1376:                                    ; preds = %bb.ij, %bb.ja
  %i.bnh = phi i8 [ %i.blk, %bb.ja ], [ %i.bhs, %bb.ij ]
  %.5250.i284 = phi ptr [ %.2247.i2152427, %bb.ja ], [ %.1246.i2132420, %bb.ij ] ; 2 uses
  %.5243.i285 = phi ptr [ %.2240.i2162428, %bb.ja ], [ %.1239.i2142421, %bb.ij ]
  store i8 %i.bnh, ptr %.5250.i284, align 1
  %i.bni = getelementptr inbounds nuw i8, ptr %.5250.i284, i64 1
  %i.bnj = getelementptr inbounds nuw i8, ptr %.5243.i285, i64 1
  br label %.preheader1369.preheader

.loopexit1377:                                    ; preds = %bb.ik, %bb.jb
  %.6251.i287 = phi ptr [ %.2247.i2152427, %bb.jb ], [ %.1246.i2132420, %bb.ik ] ; 2 uses
  %.6.i288 = phi ptr [ %.2240.i2162428, %bb.jb ], [ %.1239.i2142421, %bb.ik ] ; 2 uses
  %i.bnk = load i16, ptr %.6.i288, align 1
  store i16 %i.bnk, ptr %.6251.i287, align 1
  %i.bnl = getelementptr inbounds nuw i8, ptr %.6251.i287, i64 2
  %i.bnm = getelementptr inbounds nuw i8, ptr %.6.i288, i64 2
  br label %.preheader1369.preheader

.loopexit1378:                                    ; preds = %bb.il, %bb.jc
  %.7252.i290 = phi ptr [ %.2247.i2152427, %bb.jc ], [ %.1246.i2132420, %bb.il ] ; 2 uses
  %.7.i291 = phi ptr [ %.2240.i2162428, %bb.jc ], [ %.1239.i2142421, %bb.il ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i290, ptr noundef nonnull align 1 dereferenceable(3) %.7.i291, i64 3, i1 false)
  %i.bnn = getelementptr inbounds nuw i8, ptr %.7252.i290, i64 3
  %i.bno = getelementptr inbounds nuw i8, ptr %.7.i291, i64 3
  br label %.preheader1369.preheader

bb.jf:                                            ; preds = %bb.im
  %i.bnp = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 4
  %i.bnq = load i32, ptr %.1239.i2142421, align 1
  store i32 %i.bnq, ptr %.1246.i2132420, align 1
  %i.bnr = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 4
  br label %.preheader1369.preheader

bb.jg:                                            ; preds = %bb.in
  %i.bns = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i2132420, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i2142421, i64 5, i1 false)
  %i.bnt = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 5
  br label %.preheader1369.preheader

bb.jh:                                            ; preds = %bb.io
  %i.bnu = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i2132420, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i2142421, i64 6, i1 false)
  %i.bnv = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 6
  br label %.preheader1369.preheader

bb.ji:                                            ; preds = %bb.ip
  %i.bnw = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i2132420, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i2142421, i64 7, i1 false)
  %i.bnx = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 7
  br label %.preheader1369.preheader

bb.jj:                                            ; preds = %bb.iq
  %i.bny = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 8
  %i.bnz = load i64, ptr %.1239.i2142421, align 1
  store i64 %i.bnz, ptr %.1246.i2132420, align 1
  %i.boa = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 8
  br label %.preheader1369.preheader

bb.jk:                                            ; preds = %bb.ir
  %i.bob = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i2132420, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i2142421, i64 9, i1 false)
  %i.boc = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 9
  br label %.preheader1369.preheader

bb.jl:                                            ; preds = %bb.is
  %i.bod = getelementptr inbounds nuw i8, ptr %.1239.i2142421, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i2132420, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i2142421, i64 10, i1 false)
  %i.boe = getelementptr inbounds nuw i8, ptr %.1246.i2132420, i64 10
end_hunk_3
begin_hunk_4_@yyjson_val_write_opts:bb.a

bb.mi:                                            ; preds = %write_indent.exit746
  br i1 %.not1288, label %bb.ml, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.cvp = getelementptr inbounds nuw i8, ptr %.0.i744.lcssa, i64 3
  %.not604.i = icmp ult ptr %i.cvp, %.18.i
  br i1 %.not604.i, label %bb.mk, label %size_align_up.exit.i, !prof !25

size_align_up.exit.i:                             ; preds = %bb.mj
  %i.cvq = lshr i64 %.10.i, 1
  %i.cvr = tail call i64 @llvm.umax.i64(i64 %i.cvq, i64 2)
  %i.cvs = add nuw i64 %i.cvr, 7
  %i.cvt = and i64 %i.cvs, -8
  %i.cvu = add i64 %i.cvt, %.10.i                 ; 2 uses
  %i.cvv = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.18560.i, i64 noundef %.10.i, i64 noundef %i.cvu) #33, !inline_history !346 ; 5 uses
  %.not605.i = icmp eq ptr %i.cvv, null
  br i1 %.not605.i, label %.loopexit1398, label %.thread1187, !prof !8

.thread1187:                                      ; preds = %size_align_up.exit.i
  %i.cvw = ptrtoint ptr %.18522.i to i64
  %i.cvx = ptrtoint ptr %.18.i to i64             ; 2 uses
  %i.cvy = sub i64 %i.cvw, %i.cvx                 ; 2 uses
  %i.cvz = ptrtoint ptr %i.cvg to i64
  %i.cwa = ptrtoint ptr %.18560.i to i64          ; 2 uses
  %i.cwb = sub i64 %i.cvz, %i.cwa
  %i.cwc = sub i64 %i.cvx, %i.cwa
  %i.cwd = sub i64 %i.cvu, %i.cvy
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.cvv, i64 %i.cwd
  %i.cwf = getelementptr inbounds nuw i8, ptr %i.cvv, i64 %i.cwc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cwe, ptr nonnull align 1 %i.cwf, i64 %i.cvy, i1 false)
  %i.cwg = getelementptr inbounds nuw i8, ptr %i.cvv, i64 %i.cwb
  br label %bb.mk

bb.mk:                                            ; preds = %.thread1187, %bb.mj
  %.20562.i = phi ptr [ %i.cvv, %.thread1187 ], [ %.18560.i, %bb.mj ]
  %.21.i = phi ptr [ %i.cwg, %.thread1187 ], [ %i.cvg, %bb.mj ] ; 2 uses
  %i.cwh = getelementptr inbounds nuw i8, ptr %.21.i, i64 1
  store i8 10, ptr %.21.i, align 1, !tbaa !81
  br label %bb.ml

bb.ml:                                            ; preds = %bb.mk, %bb.mi
  %.21563.i = phi ptr [ %.20562.i, %bb.mk ], [ %.18560.i, %bb.mi ] ; 2 uses
  %.22.i = phi ptr [ %i.cwh, %bb.mk ], [ %i.cvg, %bb.mi ] ; 2 uses
  store i8 0, ptr %.22.i, align 1, !tbaa !81
  br i1 %.not27, label %.cont772, label %.else774

.else774:                                         ; preds = %bb.ml
  %i.cwi = ptrtoint ptr %.22.i to i64
  %i.cwj = ptrtoint ptr %.21563.i to i64
  %i.cwk = sub i64 %i.cwi, %i.cwj
  store i64 %i.cwk, ptr %3, align 8, !tbaa !91
  br label %.cont772

.cont772:                                         ; preds = %bb.ml, %.else774
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %spec.store.select, i8 0, i64 16, i1 false)
  br label %yyjson_write_single.exit

.loopexit1398:                                    ; preds = %size_align_up.exit624.i, %size_align_up.exit618.i, %size_align_up.exit620.i, %size_align_up.exit622.i, %size_align_up.exit626.i, %size_align_up.exit628.i, %size_align_up.exit630.i, %size_align_up.exit616.i, %size_align_up.exit.i, %size_align_up.exit632.i
  %.22564.i = phi ptr [ %.18560.i, %size_align_up.exit.i ], [ %.16558.i, %size_align_up.exit616.i ], [ null, %size_align_up.exit632.i ], [ %.0542.i, %size_align_up.exit618.i ], [ %.0542.i, %size_align_up.exit630.i ], [ %.0542.i, %size_align_up.exit628.i ], [ %.0542.i, %size_align_up.exit626.i ], [ %.0542.i, %size_align_up.exit622.i ], [ %.0542.i, %size_align_up.exit620.i ], [ %.0542.i, %size_align_up.exit624.i ] ; 2 uses
  br i1 %.not27, label %.cont775, label %.else777

.else777:                                         ; preds = %.loopexit1398
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %.cont775

.cont775:                                         ; preds = %.loopexit1398, %.else777
  store i32 2, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel811.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel811.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel811.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel811.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  %.not606.i = icmp eq ptr %.22564.i, null
  br i1 %.not606.i, label %yyjson_write_single.exit, label %bb.mm

bb.mm:                                            ; preds = %.cont775
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.22564.i) #33, !inline_history !346
  br label %yyjson_write_single.exit

bb.mn:                                            ; preds = %bb.ly
  br i1 %.not27, label %bb.mo, label %.else765

.else765:                                         ; preds = %bb.mn
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %bb.mo

bb.mo:                                            ; preds = %.else765, %bb.mn
  store i32 3, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel820.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel820.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel820.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.110, ptr %spec.store.select.sroa.sel820.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.0542.i) #33, !inline_history !346
  br label %yyjson_write_single.exit

bb.mp:                                            ; preds = %write_num.exit662
  br i1 %.not27, label %bb.mq, label %.else771

.else771:                                         ; preds = %bb.mp
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %bb.mq

bb.mq:                                            ; preds = %.else771, %bb.mp
  store i32 4, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel814.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel814.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel814.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.111, ptr %spec.store.select.sroa.sel814.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.4546.i) #33, !inline_history !346
  br label %yyjson_write_single.exit

.loopexit1370:                                    ; preds = %.thread1104, %.thread1094, %.thread1114, %.thread1124
  br i1 %.not27, label %bb.mr, label %.else768

.else768:                                         ; preds = %.loopexit1370
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %bb.mr

bb.mr:                                            ; preds = %.else768, %.loopexit1370
  store i32 7, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel817.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel817.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel817.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.76, ptr %spec.store.select.sroa.sel817.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.2544.i) #33, !inline_history !346
  br label %yyjson_write_single.exit

bb.ms:                                            ; preds = %bb.fs
  br i1 %.not1291, label %bb.mu, label %bb.mt, !prof !25

bb.mt:                                            ; preds = %bb.ms
  %enc_table_esc_slash.enc_table_esc.i = select i1 %.not1292, ptr @enc_table_esc, ptr @enc_table_esc_slash, !prof !25
  br label %size_align_up.exit469.i

bb.mu:                                            ; preds = %bb.ms
  %enc_table_cpy_slash.enc_table_cpy.i = select i1 %.not1292, ptr @enc_table_cpy, ptr @enc_table_cpy_slash, !prof !25
  br label %size_align_up.exit469.i

size_align_up.exit469.i:                          ; preds = %bb.mt, %bb.mu
  %.0.i58 = phi ptr [ %enc_table_esc_slash.enc_table_esc.i, %bb.mt ], [ %enc_table_cpy_slash.enc_table_cpy.i, %bb.mu ] ; 28 uses
  %i.cwl = icmp eq ptr %.0.i58, @enc_table_cpy
  %i.cwm = and i32 %1, 32
  %.not1294 = icmp eq i32 %i.cwm, 0               ; 4 uses
  %i.cwn = and i32 %1, 128
  %.not1295 = icmp eq i32 %i.cwn, 0
  %i.cwo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cwp = load i64, ptr %i.cwo, align 8, !tbaa !81
  %i.cwq = lshr i64 %i.cwp, 4
  %i.cwr = mul i64 %i.cwq, 18
  %i.cws = add i64 %i.cwr, 70
  %i.cwt = and i64 %i.cws, -8                     ; 3 uses
  %i.cwu = tail call ptr %.sroa.0849.0(ptr noundef %.sroa.9.0, i64 noundef %i.cwt) #33, !inline_history !366 ; 5 uses
  %.not.i35 = icmp eq ptr %i.cwu, null
  br i1 %.not.i35, label %.loopexit1368, label %bb.mv

bb.mv:                                            ; preds = %size_align_up.exit469.i
  %i.cwv = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.cwt ; 2 uses
  %i.cww = load i64, ptr %0, align 8, !tbaa !79   ; 2 uses
  %i.cwx = and i64 %i.cww, 7
  %i.cwy = icmp eq i64 %i.cwx, 7                  ; 3 uses
  %i.cwz = zext i1 %i.cwy to i8
  %i.cxa = lshr i64 %i.cww, 8
  %i.cxb = zext i1 %i.cwy to i64
  %i.cxc = shl nuw nsw i64 %i.cxa, %i.cxb
  %i.cxd = select i1 %i.cwy, i8 123, i8 91
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.cwu, i64 1
  store i8 %i.cxd, ptr %i.cwu, align 1, !tbaa !81
  %i.cxf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cxg = lshr i32 %1, 28
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.mv
  %.01044.ph = phi i64 [ %i.cxc, %bb.mv ], [ %.01044.ph.be, %.outer.backedge ]
  %.01042.ph = phi i8 [ %i.cwz, %bb.mv ], [ %.01042.ph.be, %.outer.backedge ] ; 3 uses
  %.0418.i.ph = phi ptr [ %i.cxf, %bb.mv ], [ %.0418.i.ph.be, %.outer.backedge ]
  %.0400.i.ph = phi ptr [ %i.cwu, %bb.mv ], [ %.0400.i.ph.be, %.outer.backedge ]
  %.0385.i.ph = phi ptr [ %i.cxe, %bb.mv ], [ %.0385.i.ph.be, %.outer.backedge ]
  %.0371.i.ph = phi ptr [ %i.cwv, %bb.mv ], [ %.0371.i.ph.be, %.outer.backedge ]
  %.0363.i.ph = phi ptr [ %i.cwv, %bb.mv ], [ %.0363.i.ph.be, %.outer.backedge ]
  %.0356.i.ph = phi i64 [ %i.cwt, %bb.mv ], [ %.0356.i.ph.be, %.outer.backedge ]
  %i.cxh = zext nneg i8 %.01042.ph to i32
  br label %bb.mw

bb.mw:                                            ; preds = %.outer, %bb.tc
  %.01044 = phi i64 [ %i.etu, %bb.tc ], [ %.01044.ph, %.outer ] ; 3 uses
  %.0418.i = phi ptr [ %i.ett, %bb.tc ], [ %.0418.i.ph, %.outer ] ; 9 uses
  %.0400.i = phi ptr [ %.13413.i, %bb.tc ], [ %.0400.i.ph, %.outer ] ; 25 uses
  %.0385.i = phi ptr [ %.14399.i, %bb.tc ], [ %.0385.i.ph, %.outer ] ; 18 uses
  %.0371.i = phi ptr [ %.13384.i, %bb.tc ], [ %.0371.i.ph, %.outer ] ; 12 uses
  %.0363.i = phi ptr [ %.13.i37, %bb.tc ], [ %.0363.i.ph, %.outer ] ; 18 uses
  %.0356.i = phi i64 [ %.7.i38, %bb.tc ], [ %.0356.i.ph, %.outer ] ; 24 uses
  %i.cxi = load i64, ptr %.0418.i, align 8, !tbaa !79 ; 7 uses
  %i.cxj = trunc i64 %i.cxi to i8                 ; 2 uses
  %i.cxk = and i8 %i.cxj, 7                       ; 3 uses
  switch i8 %i.cxk, label %bb.sr [
    i8 5, label %bb.mx
    i8 4, label %bb.rp
  ]

bb.mx:                                            ; preds = %bb.mw
  %i.cxl = trunc i64 %.01044 to i32
  %i.cxm = xor i32 %i.cxl, -1
  %i.cxn = and i32 %i.cxh, %i.cxm
  %.not439.i = icmp eq i32 %i.cxn, 0
  %i.cxo = lshr i64 %i.cxi, 8                     ; 7 uses
  %i.cxp = getelementptr inbounds nuw i8, ptr %.0418.i, i64 8
  %i.cxq = load ptr, ptr %i.cxp, align 8, !tbaa !81 ; 7 uses
  %i.cxr = ptrtoaddr ptr %i.cxq to i64            ; 2 uses
  %i.cxs = mul nuw nsw i64 %i.cxo, 6
  %i.cxt = add nuw nsw i64 %i.cxs, 16             ; 2 uses
  %i.cxu = getelementptr inbounds nuw i8, ptr %.0385.i, i64 %i.cxt
  %.not440.i = icmp ult ptr %i.cxu, %.0363.i
  br i1 %.not440.i, label %bb.my, label %size_align_up.exit467.i, !prof !25

size_align_up.exit467.i:                          ; preds = %bb.mx
  %i.cxv = lshr i64 %.0356.i, 1
  %i.cxw = tail call i64 @llvm.umax.i64(i64 %i.cxv, i64 %i.cxt)
  %i.cxx = add nuw i64 %i.cxw, 7
  %i.cxy = and i64 %i.cxx, -8
  %i.cxz = add i64 %i.cxy, %.0356.i               ; 4 uses
  %i.cya = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0400.i, i64 noundef %.0356.i, i64 noundef %i.cxz) #33, !inline_history !366 ; 6 uses
  %.not441.i = icmp eq ptr %i.cya, null
  br i1 %.not441.i, label %.loopexit1368, label %.thread1191, !prof !8

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
  br label %bb.my

bb.my:                                            ; preds = %.thread1191, %bb.mx
  %.2402.i = phi ptr [ %i.cya, %.thread1191 ], [ %.0400.i, %bb.mx ] ; 2 uses
  %.2387.i = phi ptr [ %i.cyl, %.thread1191 ], [ %.0385.i, %bb.mx ] ; 5 uses
  %.2373.i = phi ptr [ %i.cym, %.thread1191 ], [ %.0371.i, %bb.mx ]
  %.2365.i = phi ptr [ %i.cyj, %.thread1191 ], [ %.0363.i, %bb.mx ]
  %.1357.i = phi i64 [ %i.cxz, %.thread1191 ], [ %.0356.i, %bb.mx ]
  br i1 %i.cwl, label %bb.pg, label %.split.i47, !prof !25

.split.i47:                                       ; preds = %bb.my
  %i.cyn = getelementptr inbounds nuw i8, ptr %i.cxq, i64 %i.cxo ; 4 uses
  store i8 34, ptr %.2387.i, align 1, !tbaa !81
  %i.cyo = ptrtoint ptr %i.cyn to i64             ; 5 uses
  %i.cyp = add i64 %i.cxo, %i.cxr
  br label %bb.mz

bb.mz:                                            ; preds = %bb.ol, %.split.i47
  %.pn.i111 = phi ptr [ %.2387.i, %.split.i47 ], [ %.8253.i124, %bb.ol ]
  %.0238.i112 = phi ptr [ %i.cxq, %.split.i47 ], [ %i.dgi, %bb.ol ] ; 3 uses
  %.0245.i113 = getelementptr inbounds nuw i8, ptr %.pn.i111, i64 1 ; 2 uses
  %i.cyq = ptrtoint ptr %.0238.i112 to i64
  %i.cyr = sub i64 %i.cyo, %i.cyq                 ; 2 uses
  %i.cys = icmp sgt i64 %i.cyr, 15
  br i1 %i.cys, label %.lr.ph2490, label %.preheader1355

.preheader1355:                                   ; preds = %bb.np, %bb.mz
  %.pre-phi3202 = phi i64 [ %i.cyr, %bb.mz ], [ %i.dby, %bb.np ]
  %.1246.i114.lcssa = phi ptr [ %.0245.i113, %bb.mz ], [ %i.dbv, %bb.np ] ; 2 uses
  %.1239.i115.lcssa = phi ptr [ %.0238.i112, %bb.mz ], [ %i.dbw, %bb.np ] ; 2 uses
  %i.cyt = icmp sgt i64 %.pre-phi3202, 3
  br i1 %i.cyt, label %.lr.ph2496, label %.preheader1353

.lr.ph2490:                                       ; preds = %bb.mz, %bb.np
  %.1239.i1152488 = phi ptr [ %i.dbw, %bb.np ], [ %.0238.i112, %bb.mz ] ; 46 uses
  %.1246.i1142487 = phi ptr [ %i.dbv, %bb.np ], [ %.0245.i113, %bb.mz ] ; 30 uses
  %i.cyu = load i8, ptr %.1239.i1152488, align 1, !tbaa !81 ; 2 uses
  %i.cyv = zext i8 %i.cyu to i64
  %i.cyw = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.cyv
  %i.cyx = load i8, ptr %i.cyw, align 1, !tbaa !81
  %.not272.i193 = icmp eq i8 %i.cyx, 0
  br i1 %.not272.i193, label %bb.na, label %.preheader1350.preheader, !prof !25

bb.na:                                            ; preds = %.lr.ph2490
  %i.cyy = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 1
  %i.cyz = load i8, ptr %i.cyy, align 1, !tbaa !81
  %i.cza = zext i8 %i.cyz to i64
  %i.czb = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.cza
  %i.czc = load i8, ptr %i.czb, align 1, !tbaa !81
  %.not273.i194 = icmp eq i8 %i.czc, 0
  br i1 %.not273.i194, label %bb.nb, label %.loopexit1357, !prof !25

bb.nb:                                            ; preds = %bb.na
  %i.czd = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 2
  %i.cze = load i8, ptr %i.czd, align 1, !tbaa !81
  %i.czf = zext i8 %i.cze to i64
  %i.czg = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.czf
  %i.czh = load i8, ptr %i.czg, align 1, !tbaa !81
  %.not274.i195 = icmp eq i8 %i.czh, 0
  br i1 %.not274.i195, label %bb.nc, label %.loopexit1358, !prof !25

bb.nc:                                            ; preds = %bb.nb
  %i.czi = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 3
  %i.czj = load i8, ptr %i.czi, align 1, !tbaa !81
  %i.czk = zext i8 %i.czj to i64
  %i.czl = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.czk
  %i.czm = load i8, ptr %i.czl, align 1, !tbaa !81
  %.not275.i196 = icmp eq i8 %i.czm, 0
  br i1 %.not275.i196, label %bb.nd, label %.loopexit1359, !prof !25

bb.nd:                                            ; preds = %bb.nc
  %i.czn = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 4
  %i.czo = load i8, ptr %i.czn, align 1, !tbaa !81
  %i.czp = zext i8 %i.czo to i64
  %i.czq = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.czp
  %i.czr = load i8, ptr %i.czq, align 1, !tbaa !81
  %.not276.i197 = icmp eq i8 %i.czr, 0
  br i1 %.not276.i197, label %bb.ne, label %bb.nw, !prof !25

bb.ne:                                            ; preds = %bb.nd
  %i.czs = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 5
  %i.czt = load i8, ptr %i.czs, align 1, !tbaa !81
  %i.czu = zext i8 %i.czt to i64
  %i.czv = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.czu
  %i.czw = load i8, ptr %i.czv, align 1, !tbaa !81
  %.not277.i198 = icmp eq i8 %i.czw, 0
  br i1 %.not277.i198, label %bb.nf, label %bb.nx, !prof !25

bb.nf:                                            ; preds = %bb.ne
  %i.czx = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 6
  %i.czy = load i8, ptr %i.czx, align 1, !tbaa !81
  %i.czz = zext i8 %i.czy to i64
  %i.daa = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.czz
  %i.dab = load i8, ptr %i.daa, align 1, !tbaa !81
  %.not278.i199 = icmp eq i8 %i.dab, 0
  br i1 %.not278.i199, label %bb.ng, label %bb.ny, !prof !25

bb.ng:                                            ; preds = %bb.nf
  %i.dac = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 7
  %i.dad = load i8, ptr %i.dac, align 1, !tbaa !81
  %i.dae = zext i8 %i.dad to i64
  %i.daf = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dae
  %i.dag = load i8, ptr %i.daf, align 1, !tbaa !81
  %.not279.i200 = icmp eq i8 %i.dag, 0
  br i1 %.not279.i200, label %bb.nh, label %bb.nz, !prof !25

bb.nh:                                            ; preds = %bb.ng
  %i.dah = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 8
  %i.dai = load i8, ptr %i.dah, align 1, !tbaa !81
  %i.daj = zext i8 %i.dai to i64
  %i.dak = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.daj
  %i.dal = load i8, ptr %i.dak, align 1, !tbaa !81
  %.not280.i201 = icmp eq i8 %i.dal, 0
  br i1 %.not280.i201, label %bb.ni, label %bb.oa, !prof !25

bb.ni:                                            ; preds = %bb.nh
  %i.dam = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 9
  %i.dan = load i8, ptr %i.dam, align 1, !tbaa !81
  %i.dao = zext i8 %i.dan to i64
  %i.dap = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dao
  %i.daq = load i8, ptr %i.dap, align 1, !tbaa !81
  %.not281.i202 = icmp eq i8 %i.daq, 0
  br i1 %.not281.i202, label %bb.nj, label %bb.ob, !prof !25

bb.nj:                                            ; preds = %bb.ni
  %i.dar = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 10
  %i.das = load i8, ptr %i.dar, align 1, !tbaa !81
  %i.dat = zext i8 %i.das to i64
  %i.dau = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dat
  %i.dav = load i8, ptr %i.dau, align 1, !tbaa !81
  %.not282.i203 = icmp eq i8 %i.dav, 0
  br i1 %.not282.i203, label %bb.nk, label %bb.oc, !prof !25

bb.nk:                                            ; preds = %bb.nj
  %i.daw = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 11
  %i.dax = load i8, ptr %i.daw, align 1, !tbaa !81
  %i.day = zext i8 %i.dax to i64
  %i.daz = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.day
  %i.dba = load i8, ptr %i.daz, align 1, !tbaa !81
  %.not283.i204 = icmp eq i8 %i.dba, 0
  br i1 %.not283.i204, label %bb.nl, label %bb.od, !prof !25

bb.nl:                                            ; preds = %bb.nk
  %i.dbb = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 12
  %i.dbc = load i8, ptr %i.dbb, align 1, !tbaa !81
  %i.dbd = zext i8 %i.dbc to i64
  %i.dbe = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dbd
  %i.dbf = load i8, ptr %i.dbe, align 1, !tbaa !81
  %.not284.i205 = icmp eq i8 %i.dbf, 0
  br i1 %.not284.i205, label %bb.nm, label %bb.oe, !prof !25

bb.nm:                                            ; preds = %bb.nl
  %i.dbg = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 13
  %i.dbh = load i8, ptr %i.dbg, align 1, !tbaa !81
  %i.dbi = zext i8 %i.dbh to i64
  %i.dbj = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dbi
  %i.dbk = load i8, ptr %i.dbj, align 1, !tbaa !81
  %.not285.i206 = icmp eq i8 %i.dbk, 0
  br i1 %.not285.i206, label %bb.nn, label %bb.of, !prof !25

bb.nn:                                            ; preds = %bb.nm
  %i.dbl = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 14
  %i.dbm = load i8, ptr %i.dbl, align 1, !tbaa !81
  %i.dbn = zext i8 %i.dbm to i64
  %i.dbo = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dbn
  %i.dbp = load i8, ptr %i.dbo, align 1, !tbaa !81
  %.not286.i207 = icmp eq i8 %i.dbp, 0
  br i1 %.not286.i207, label %bb.no, label %bb.og, !prof !25

bb.no:                                            ; preds = %bb.nn
  %i.dbq = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 15
  %i.dbr = load i8, ptr %i.dbq, align 1, !tbaa !81
  %i.dbs = zext i8 %i.dbr to i64
  %i.dbt = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dbs
  %i.dbu = load i8, ptr %i.dbt, align 1, !tbaa !81
  %.not287.i208 = icmp eq i8 %i.dbu, 0
  br i1 %.not287.i208, label %bb.np, label %bb.oh, !prof !25

bb.np:                                            ; preds = %bb.no
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i1142487, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i1152488, i64 16, i1 false)
  %i.dbv = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 16 ; 2 uses
  %i.dbw = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 16 ; 3 uses
  %i.dbx = ptrtoint ptr %i.dbw to i64
  %i.dby = sub i64 %i.cyo, %i.dbx                 ; 2 uses
  %i.dbz = icmp sgt i64 %i.dby, 15
  br i1 %i.dbz, label %.lr.ph2490, label %.preheader1355, !llvm.loop !331

.preheader1353:                                   ; preds = %bb.nu, %.preheader1355
  %.2247.i116.lcssa = phi ptr [ %.1246.i114.lcssa, %.preheader1355 ], [ %i.ddg, %bb.nu ] ; 3 uses
  %.2240.i117.lcssa = phi ptr [ %.1239.i115.lcssa, %.preheader1355 ], [ %i.ddh, %bb.nu ] ; 5 uses
  %i.dca = icmp ugt ptr %i.cyn, %.2240.i117.lcssa
  br i1 %i.dca, label %.lr.ph2501.preheader, label %write_str.exit209

.lr.ph2501.preheader:                             ; preds = %.preheader1353
  %.2240.i117.lcssa3124 = ptrtoaddr ptr %.2240.i117.lcssa to i64 ; 2 uses
  %scevgep3123 = getelementptr i8, ptr %.2240.i117.lcssa, i64 %i.cyo
  %i.dcb = sub i64 0, %.2240.i117.lcssa3124
  %scevgep3125 = getelementptr i8, ptr %scevgep3123, i64 %i.dcb
  %i.dcc = sub i64 %i.cyp, %.2240.i117.lcssa3124
  %i.dcd = freeze i64 %i.dcc                      ; 2 uses
  %i.dce = add i64 %i.dcd, -1
  %xtraiter5980 = and i64 %i.dcd, 3               ; 2 uses
  %lcmp.mod5981.not = icmp eq i64 %xtraiter5980, 0
  br i1 %lcmp.mod5981.not, label %.lr.ph2501.prol.loopexit, label %.lr.ph2501.prol

.lr.ph2501.prol:                                  ; preds = %.lr.ph2501.preheader, %bb.nq
  %.3241.i1192500.prol = phi ptr [ %i.dcj, %bb.nq ], [ %.2240.i117.lcssa, %.lr.ph2501.preheader ] ; 3 uses
  %.3248.i1182499.prol = phi ptr [ %i.dck, %bb.nq ], [ %.2247.i116.lcssa, %.lr.ph2501.preheader ] ; 3 uses
  %prol.iter5982 = phi i64 [ %prol.iter5982.next, %bb.nq ], [ 0, %.lr.ph2501.preheader ]
  %i.dcf = load i8, ptr %.3241.i1192500.prol, align 1, !tbaa !81 ; 2 uses
  %i.dcg = zext i8 %i.dcf to i64
  %i.dch = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dcg
  %i.dci = load i8, ptr %i.dch, align 1, !tbaa !81
  %.not.i121.prol = icmp eq i8 %i.dci, 0
  br i1 %.not.i121.prol, label %bb.nq, label %.preheader1350.preheader, !prof !25

bb.nq:                                            ; preds = %.lr.ph2501.prol
  %i.dcj = getelementptr inbounds nuw i8, ptr %.3241.i1192500.prol, i64 1 ; 2 uses
  %i.dck = getelementptr inbounds nuw i8, ptr %.3248.i1182499.prol, i64 1 ; 3 uses
  store i8 %i.dcf, ptr %.3248.i1182499.prol, align 1, !tbaa !81
  %prol.iter5982.next = add i64 %prol.iter5982, 1 ; 2 uses
  %prol.iter5982.cmp.not = icmp eq i64 %prol.iter5982.next, %xtraiter5980
  br i1 %prol.iter5982.cmp.not, label %.lr.ph2501.prol.loopexit, label %.lr.ph2501.prol, !llvm.loop !367

.lr.ph2501.prol.loopexit:                         ; preds = %bb.nq, %.lr.ph2501.preheader
  %.lcssa5573.unr = phi ptr [ poison, %.lr.ph2501.preheader ], [ %i.dck, %bb.nq ]
  %.3241.i1192500.unr = phi ptr [ %.2240.i117.lcssa, %.lr.ph2501.preheader ], [ %i.dcj, %bb.nq ]
  %.3248.i1182499.unr = phi ptr [ %.2247.i116.lcssa, %.lr.ph2501.preheader ], [ %i.dck, %bb.nq ]
  %i.dcl = icmp ult i64 %i.dce, 3
  br i1 %i.dcl, label %write_str.exit209, label %.lr.ph2501

.lr.ph2496:                                       ; preds = %.preheader1355, %bb.nu
  %.2240.i1172495 = phi ptr [ %i.ddh, %bb.nu ], [ %.1239.i115.lcssa, %.preheader1355 ] ; 10 uses
  %.2247.i1162494 = phi ptr [ %i.ddg, %bb.nu ], [ %.1246.i114.lcssa, %.preheader1355 ] ; 6 uses
  %i.dcm = load i8, ptr %.2240.i1172495, align 1, !tbaa !81 ; 2 uses
  %i.dcn = zext i8 %i.dcm to i64
  %i.dco = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dcn
  %i.dcp = load i8, ptr %i.dco, align 1, !tbaa !81
  %.not268.i183 = icmp eq i8 %i.dcp, 0
  br i1 %.not268.i183, label %bb.nr, label %.preheader1350.preheader, !prof !25

bb.nr:                                            ; preds = %.lr.ph2496
  %i.dcq = getelementptr inbounds nuw i8, ptr %.2240.i1172495, i64 1
  %i.dcr = load i8, ptr %i.dcq, align 1, !tbaa !81
  %i.dcs = zext i8 %i.dcr to i64
  %i.dct = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dcs
  %i.dcu = load i8, ptr %i.dct, align 1, !tbaa !81
  %.not269.i184 = icmp eq i8 %i.dcu, 0
  br i1 %.not269.i184, label %bb.ns, label %.loopexit1357, !prof !25

bb.ns:                                            ; preds = %bb.nr
  %i.dcv = getelementptr inbounds nuw i8, ptr %.2240.i1172495, i64 2
  %i.dcw = load i8, ptr %i.dcv, align 1, !tbaa !81
  %i.dcx = zext i8 %i.dcw to i64
  %i.dcy = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dcx
  %i.dcz = load i8, ptr %i.dcy, align 1, !tbaa !81
  %.not270.i187 = icmp eq i8 %i.dcz, 0
  br i1 %.not270.i187, label %bb.nt, label %.loopexit1358, !prof !25

bb.nt:                                            ; preds = %bb.ns
  %i.dda = getelementptr inbounds nuw i8, ptr %.2240.i1172495, i64 3
  %i.ddb = load i8, ptr %i.dda, align 1, !tbaa !81
  %i.ddc = zext i8 %i.ddb to i64
  %i.ddd = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.ddc
  %i.dde = load i8, ptr %i.ddd, align 1, !tbaa !81
  %.not271.i190 = icmp eq i8 %i.dde, 0
  br i1 %.not271.i190, label %bb.nu, label %.loopexit1359, !prof !25

bb.nu:                                            ; preds = %bb.nt
  %i.ddf = load i32, ptr %.2240.i1172495, align 1
  store i32 %i.ddf, ptr %.2247.i1162494, align 1
  %i.ddg = getelementptr inbounds nuw i8, ptr %.2247.i1162494, i64 4 ; 2 uses
  %i.ddh = getelementptr inbounds nuw i8, ptr %.2240.i1172495, i64 4 ; 3 uses
  %i.ddi = ptrtoint ptr %i.ddh to i64
  %i.ddj = sub i64 %i.cyo, %i.ddi
  %i.ddk = icmp sgt i64 %i.ddj, 3
  br i1 %i.ddk, label %.lr.ph2496, label %.preheader1353, !llvm.loop !333

.lr.ph2501:                                       ; preds = %.lr.ph2501.prol.loopexit, %bb.nv
  %.3241.i1192500 = phi ptr [ %i.deh, %bb.nv ], [ %.3241.i1192500.unr, %.lr.ph2501.prol.loopexit ] ; 9 uses
  %.3248.i1182499 = phi ptr [ %i.dei, %bb.nv ], [ %.3248.i1182499.unr, %.lr.ph2501.prol.loopexit ] ; 6 uses
  %i.ddl = load i8, ptr %.3241.i1192500, align 1, !tbaa !81 ; 2 uses
  %i.ddm = zext i8 %i.ddl to i64
  %i.ddn = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.ddm
  %i.ddo = load i8, ptr %i.ddn, align 1, !tbaa !81
  %.not.i121 = icmp eq i8 %i.ddo, 0
  br i1 %.not.i121, label %.lr.ph2501.1, label %.preheader1350.preheader, !prof !25

.lr.ph2501.1:                                     ; preds = %.lr.ph2501
  %i.ddp = getelementptr inbounds nuw i8, ptr %.3241.i1192500, i64 1
  %i.ddq = getelementptr inbounds nuw i8, ptr %.3248.i1182499, i64 1 ; 2 uses
  store i8 %i.ddl, ptr %.3248.i1182499, align 1, !tbaa !81
  %i.ddr = load i8, ptr %i.ddp, align 1, !tbaa !81 ; 2 uses
  %i.dds = zext i8 %i.ddr to i64
  %i.ddt = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dds
  %i.ddu = load i8, ptr %i.ddt, align 1, !tbaa !81
  %.not.i121.1 = icmp eq i8 %i.ddu, 0
  br i1 %.not.i121.1, label %.lr.ph2501.2, label %.preheader1350.preheader.loopexit.loopexit.split.loop.exit6692, !prof !25

.lr.ph2501.2:                                     ; preds = %.lr.ph2501.1
  %i.ddv = getelementptr inbounds nuw i8, ptr %.3241.i1192500, i64 2
  %i.ddw = getelementptr inbounds nuw i8, ptr %.3248.i1182499, i64 2 ; 2 uses
  store i8 %i.ddr, ptr %i.ddq, align 1, !tbaa !81
  %i.ddx = load i8, ptr %i.ddv, align 1, !tbaa !81 ; 2 uses
  %i.ddy = zext i8 %i.ddx to i64
  %i.ddz = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.ddy
  %i.dea = load i8, ptr %i.ddz, align 1, !tbaa !81
  %.not.i121.2 = icmp eq i8 %i.dea, 0
  br i1 %.not.i121.2, label %.lr.ph2501.3, label %.preheader1350.preheader.loopexit.loopexit.split.loop.exit6689, !prof !25

.lr.ph2501.3:                                     ; preds = %.lr.ph2501.2
  %i.deb = getelementptr inbounds nuw i8, ptr %.3241.i1192500, i64 3
  %i.dec = getelementptr inbounds nuw i8, ptr %.3248.i1182499, i64 3 ; 2 uses
  store i8 %i.ddx, ptr %i.ddw, align 1, !tbaa !81
  %i.ded = load i8, ptr %i.deb, align 1, !tbaa !81 ; 2 uses
  %i.dee = zext i8 %i.ded to i64
  %i.def = getelementptr inbounds nuw i8, ptr %.0.i58, i64 %i.dee
  %i.deg = load i8, ptr %i.def, align 1, !tbaa !81
  %.not.i121.3 = icmp eq i8 %i.deg, 0
  br i1 %.not.i121.3, label %bb.nv, label %.preheader1350.preheader.loopexit.loopexit.split.loop.exit, !prof !25

bb.nv:                                            ; preds = %.lr.ph2501.3
  %i.deh = getelementptr inbounds nuw i8, ptr %.3241.i1192500, i64 4 ; 2 uses
  %i.dei = getelementptr inbounds nuw i8, ptr %.3248.i1182499, i64 4 ; 2 uses
  store i8 %i.ded, ptr %i.dec, align 1, !tbaa !81
  %exitcond3126.not.3 = icmp eq ptr %i.deh, %scevgep3125
  br i1 %exitcond3126.not.3, label %write_str.exit209, label %.lr.ph2501, !llvm.loop !334

.loopexit1357:                                    ; preds = %bb.na, %bb.nr
  %i.dej = phi i8 [ %i.dcm, %bb.nr ], [ %i.cyu, %bb.na ]
  %.5250.i185 = phi ptr [ %.2247.i1162494, %bb.nr ], [ %.1246.i1142487, %bb.na ] ; 2 uses
  %.5243.i186 = phi ptr [ %.2240.i1172495, %bb.nr ], [ %.1239.i1152488, %bb.na ]
  store i8 %i.dej, ptr %.5250.i185, align 1
  %i.dek = getelementptr inbounds nuw i8, ptr %.5250.i185, i64 1
  %i.del = getelementptr inbounds nuw i8, ptr %.5243.i186, i64 1
  br label %.preheader1350.preheader

.loopexit1358:                                    ; preds = %bb.nb, %bb.ns
  %.6251.i188 = phi ptr [ %.2247.i1162494, %bb.ns ], [ %.1246.i1142487, %bb.nb ] ; 2 uses
  %.6.i189 = phi ptr [ %.2240.i1172495, %bb.ns ], [ %.1239.i1152488, %bb.nb ] ; 2 uses
  %i.dem = load i16, ptr %.6.i189, align 1
  store i16 %i.dem, ptr %.6251.i188, align 1
  %i.den = getelementptr inbounds nuw i8, ptr %.6251.i188, i64 2
  %i.deo = getelementptr inbounds nuw i8, ptr %.6.i189, i64 2
  br label %.preheader1350.preheader

.loopexit1359:                                    ; preds = %bb.nc, %bb.nt
  %.7252.i191 = phi ptr [ %.2247.i1162494, %bb.nt ], [ %.1246.i1142487, %bb.nc ] ; 2 uses
  %.7.i192 = phi ptr [ %.2240.i1172495, %bb.nt ], [ %.1239.i1152488, %bb.nc ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i191, ptr noundef nonnull align 1 dereferenceable(3) %.7.i192, i64 3, i1 false)
  %i.dep = getelementptr inbounds nuw i8, ptr %.7252.i191, i64 3
  %i.deq = getelementptr inbounds nuw i8, ptr %.7.i192, i64 3
  br label %.preheader1350.preheader

bb.nw:                                            ; preds = %bb.nd
  %i.der = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 4
  %i.des = load i32, ptr %.1239.i1152488, align 1
  store i32 %i.des, ptr %.1246.i1142487, align 1
  %i.det = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 4
  br label %.preheader1350.preheader

bb.nx:                                            ; preds = %bb.ne
  %i.deu = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i1142487, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i1152488, i64 5, i1 false)
  %i.dev = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 5
  br label %.preheader1350.preheader

bb.ny:                                            ; preds = %bb.nf
  %i.dew = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i1142487, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i1152488, i64 6, i1 false)
  %i.dex = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 6
  br label %.preheader1350.preheader

bb.nz:                                            ; preds = %bb.ng
  %i.dey = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i1142487, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i1152488, i64 7, i1 false)
  %i.dez = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 7
  br label %.preheader1350.preheader

bb.oa:                                            ; preds = %bb.nh
  %i.dfa = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 8
  %i.dfb = load i64, ptr %.1239.i1152488, align 1
  store i64 %i.dfb, ptr %.1246.i1142487, align 1
  %i.dfc = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 8
  br label %.preheader1350.preheader

bb.ob:                                            ; preds = %bb.ni
  %i.dfd = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i1142487, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i1152488, i64 9, i1 false)
  %i.dfe = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 9
  br label %.preheader1350.preheader

bb.oc:                                            ; preds = %bb.nj
  %i.dff = getelementptr inbounds nuw i8, ptr %.1239.i1152488, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i1142487, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i1152488, i64 10, i1 false)
  %i.dfg = getelementptr inbounds nuw i8, ptr %.1246.i1142487, i64 10
end_hunk_4
begin_hunk_5_@yyjson_val_write_opts:bb.a
.preheader1350.backedge:                          ; preds = %bb.ov, %bb.ow, %bb.pe, %bb.pf, %bb.on, %.critedge.i170, %.critedge316.i164, %bb.oy, %.critedge321.i145, %.critedge325.i136
  %.8253.i124.be = phi ptr [ %i.dlp, %bb.pe ], [ %i.dgp, %bb.on ], [ %i.dhb, %.critedge.i170 ], [ %i.dhl, %.critedge316.i164 ], [ %i.dhp, %bb.ov ], [ %i.dhx, %bb.ow ], [ %i.dis, %bb.oy ], [ %i.djp, %.critedge321.i145 ], [ %i.dll, %.critedge325.i136 ], [ %i.dlr, %bb.pf ]
  %.8.i125.be = phi ptr [ %i.dlo, %bb.pe ], [ %i.dgq, %bb.on ], [ %i.dhc, %.critedge.i170 ], [ %i.dfu, %.critedge316.i164 ], [ %i.dhq, %bb.ov ], [ %i.dhy, %bb.ow ], [ %i.dit, %bb.oy ], [ %i.djq, %.critedge321.i145 ], [ %i.dfu, %.critedge325.i136 ], [ %i.dls, %bb.pf ]
  br label %.preheader1350

bb.ow:                                            ; preds = %bb.ok
  store i32 808482140, ptr %.8253.i124, align 1
  %i.dhr = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 4
  %i.dhs = load i8, ptr %.8.i125, align 1, !tbaa !81
  %i.dht = zext i8 %i.dhs to i64
  %i.dhu = shl nuw nsw i64 %i.dht, 1
  %i.dhv = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dhu
  %i.dhw = load i16, ptr %i.dhv, align 2
  store i16 %i.dhw, ptr %i.dhr, align 1
  %i.dhx = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 6
  %i.dhy = getelementptr inbounds nuw i8, ptr %.8.i125, i64 1
  br label %.preheader1350.backedge

bb.ox:                                            ; preds = %bb.ok
  %.sroa.0.0.copyload.i332.i153 = load i16, ptr %.8.i125, align 1 ; 3 uses
  %.sroa.0957.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i153 to i32 ; 2 uses
  %i.dhz = and i32 %.sroa.0957.0.insert.ext, 49376
  %i.dia = icmp ne i32 %i.dhz, 32960
  %i.dib = and i32 %.sroa.0957.0.insert.ext, 30
  %i.dic = icmp eq i32 %i.dib, 0
  %.not298.i154 = or i1 %i.dia, %i.dic
  br i1 %.not298.i154, label %.thread1207, label %bb.oy, !prof !8

bb.oy:                                            ; preds = %bb.ox
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

bb.oz:                                            ; preds = %bb.ok
  %.sroa.0.0.copyload.i.i140 = load i16, ptr %.8.i125, align 1 ; 3 uses
  %i.diu = getelementptr inbounds nuw i8, ptr %.8.i125, i64 2
  %i.div = load i8, ptr %i.diu, align 1, !tbaa !81 ; 2 uses
  %.sroa.4.0.insert.ext.i.i141 = zext i8 %i.div to i32
  %.sroa.4.0.insert.shift.i.i142 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i141, 16
  %.sroa.0.0.insert.ext.i.i143 = zext i16 %.sroa.0.0.copyload.i.i140 to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i144 = or disjoint i32 %.sroa.4.0.insert.shift.i.i142, %.sroa.0.0.insert.ext.i.i143
  %i.diw = and i32 %.sroa.0.0.insert.insert.i.i144, 12632304
  %i.dix = icmp eq i32 %i.diw, 8421600
  br i1 %i.dix, label %bb.pa, label %.thread1207, !prof !25

bb.pa:                                            ; preds = %bb.oz
  %i.diy = and i32 %.sroa.0.0.insert.ext.i.i143, 8207
  switch i32 %i.diy, label %.critedge321.i145 [
    i32 8205, label %.thread1207
    i32 0, label %.thread1207
  ], !prof !335

.critedge321.i145:                                ; preds = %bb.pa
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

bb.pb:                                            ; preds = %bb.ok
  %.sroa.0.0.copyload.i333.i130 = load i32, ptr %.8.i125, align 1 ; 9 uses
  %i.djr = and i32 %.sroa.0.0.copyload.i333.i130, -1061109512
  %i.djs = icmp ne i32 %i.djr, -2139062032
  %i.djt = and i32 %.sroa.0.0.copyload.i333.i130, 12295
  %.not288.i131 = icmp eq i32 %i.djt, 0
  %or.cond323.i132 = or i1 %i.djs, %.not288.i131
  %i.dju = lshr i32 %.sroa.0.0.copyload.i333.i130, 24
  br i1 %or.cond323.i132, label %.thread1207, label %bb.pc, !prof !258

bb.pc:                                            ; preds = %bb.pb
  %i.djv = and i32 %.sroa.0.0.copyload.i333.i130, 4
  %i.djw = icmp ne i32 %i.djv, 0
  %i.djx = and i32 %.sroa.0.0.copyload.i333.i130, 12291
  %i.djy = icmp ne i32 %i.djx, 0
  %.not291.i133 = and i1 %i.djw, %i.djy
  br i1 %.not291.i133, label %.thread1207, label %.critedge325.i136, !prof !8

.critedge325.i136:                                ; preds = %bb.pc
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

bb.pd:                                            ; preds = %bb.ok, %bb.oj
  %i.dlm = phi i8 [ %i.dgh, %bb.ok ], [ %i.dfz, %bb.oj ]
  br i1 %.not1291, label %.thread1197, label %.thread1207

.thread1197:                                      ; preds = %bb.ot, %bb.ou, %bb.or, %bb.op, %bb.os, %bb.os, %bb.oq, %bb.oq, %bb.om, %bb.pd
  %i.dln = phi i8 [ %i.dhg, %bb.ot ], [ %i.dhg, %bb.ou ], [ %i.dgz, %bb.or ], [ %i.dgt, %bb.op ], [ %i.dgz, %bb.os ], [ %i.dgz, %bb.os ], [ %i.dgt, %bb.oq ], [ %i.dgt, %bb.oq ], [ %i.dgo, %bb.om ], [ %i.dlm, %bb.pd ]
  br i1 %.not1294, label %.loopexit1337, label %bb.pe

bb.pe:                                            ; preds = %.thread1197
  %i.dlo = getelementptr inbounds nuw i8, ptr %.8.i125, i64 1
  %i.dlp = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 1
  store i8 %i.dln, ptr %.8253.i124, align 1, !tbaa !81
  br label %.preheader1350.backedge

.thread1207:                                      ; preds = %bb.pb, %bb.pc, %bb.oz, %bb.pa, %bb.pa, %bb.ox, %bb.pd
  br i1 %.not1294, label %.loopexit1337, label %bb.pf

bb.pf:                                            ; preds = %.thread1207
  store i16 30044, ptr %.8253.i124, align 1
  %i.dlq = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 2
  store i32 1145456198, ptr %i.dlq, align 1
  %i.dlr = getelementptr inbounds nuw i8, ptr %.8253.i124, i64 6
  %i.dls = getelementptr inbounds nuw i8, ptr %.8.i125, i64 1
  br label %.preheader1350.backedge

bb.pg:                                            ; preds = %bb.my
  %i.dlt = load i64, ptr %.0418.i, align 8, !tbaa !79
  %i.dlu = and i64 %i.dlt, 24
  %.not442.i = icmp eq i64 %i.dlu, 0
  store i8 34, ptr %.2387.i, align 1, !tbaa !81
  br i1 %.not442.i, label %.split420.i, label %bb.ro

.split420.i:                                      ; preds = %bb.pg
  %i.dlv = getelementptr inbounds nuw i8, ptr %i.cxq, i64 %i.cxo ; 4 uses
  %i.dlw = ptrtoint ptr %i.dlv to i64             ; 5 uses
  %i.dlx = add i64 %i.cxo, %i.cxr
  br label %bb.ph

bb.ph:                                            ; preds = %bb.qt, %.split420.i
  %.pn.i = phi ptr [ %.2387.i, %.split420.i ], [ %.8253.i, %bb.qt ]
  %.0238.i = phi ptr [ %i.cxq, %.split420.i ], [ %i.dtq, %bb.qt ] ; 3 uses
  %.0245.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %i.dly = ptrtoint ptr %.0238.i to i64
  %i.dlz = sub i64 %i.dlw, %i.dly                 ; 2 uses
  %i.dma = icmp sgt i64 %i.dlz, 15
  br i1 %i.dma, label %.lr.ph2541, label %.preheader1341

.preheader1341:                                   ; preds = %bb.px, %bb.ph
  %.pre-phi3199 = phi i64 [ %i.dlz, %bb.ph ], [ %i.dpg, %bb.px ]
  %.1246.i.lcssa = phi ptr [ %.0245.i, %bb.ph ], [ %i.dpd, %bb.px ] ; 2 uses
  %.1239.i.lcssa = phi ptr [ %.0238.i, %bb.ph ], [ %i.dpe, %bb.px ] ; 2 uses
  %i.dmb = icmp sgt i64 %.pre-phi3199, 3
  br i1 %i.dmb, label %.lr.ph2547, label %.preheader1339

.lr.ph2541:                                       ; preds = %bb.ph, %bb.px
  %.1239.i2539 = phi ptr [ %i.dpe, %bb.px ], [ %.0238.i, %bb.ph ] ; 46 uses
  %.1246.i2538 = phi ptr [ %i.dpd, %bb.px ], [ %.0245.i, %bb.ph ] ; 30 uses
  %i.dmc = load i8, ptr %.1239.i2539, align 1, !tbaa !81 ; 2 uses
  %i.dmd = zext i8 %i.dmc to i64
  %i.dme = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dmd
  %i.dmf = load i8, ptr %i.dme, align 1, !tbaa !81
  %.not272.i = icmp eq i8 %i.dmf, 0
  br i1 %.not272.i, label %bb.pi, label %.preheader1336.preheader, !prof !25

bb.pi:                                            ; preds = %.lr.ph2541
  %i.dmg = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 1
  %i.dmh = load i8, ptr %i.dmg, align 1, !tbaa !81
  %i.dmi = zext i8 %i.dmh to i64
  %i.dmj = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dmi
  %i.dmk = load i8, ptr %i.dmj, align 1, !tbaa !81
  %.not273.i = icmp eq i8 %i.dmk, 0
  br i1 %.not273.i, label %bb.pj, label %.loopexit1343, !prof !25

bb.pj:                                            ; preds = %bb.pi
  %i.dml = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 2
  %i.dmm = load i8, ptr %i.dml, align 1, !tbaa !81
  %i.dmn = zext i8 %i.dmm to i64
  %i.dmo = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dmn
  %i.dmp = load i8, ptr %i.dmo, align 1, !tbaa !81
  %.not274.i = icmp eq i8 %i.dmp, 0
  br i1 %.not274.i, label %bb.pk, label %.loopexit1344, !prof !25

bb.pk:                                            ; preds = %bb.pj
  %i.dmq = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 3
  %i.dmr = load i8, ptr %i.dmq, align 1, !tbaa !81
  %i.dms = zext i8 %i.dmr to i64
  %i.dmt = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dms
  %i.dmu = load i8, ptr %i.dmt, align 1, !tbaa !81
  %.not275.i = icmp eq i8 %i.dmu, 0
  br i1 %.not275.i, label %bb.pl, label %.loopexit1345, !prof !25

bb.pl:                                            ; preds = %bb.pk
  %i.dmv = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 4
  %i.dmw = load i8, ptr %i.dmv, align 1, !tbaa !81
  %i.dmx = zext i8 %i.dmw to i64
  %i.dmy = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dmx
  %i.dmz = load i8, ptr %i.dmy, align 1, !tbaa !81
  %.not276.i = icmp eq i8 %i.dmz, 0
  br i1 %.not276.i, label %bb.pm, label %bb.qe, !prof !25

bb.pm:                                            ; preds = %bb.pl
  %i.dna = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 5
  %i.dnb = load i8, ptr %i.dna, align 1, !tbaa !81
  %i.dnc = zext i8 %i.dnb to i64
  %i.dnd = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dnc
  %i.dne = load i8, ptr %i.dnd, align 1, !tbaa !81
  %.not277.i = icmp eq i8 %i.dne, 0
  br i1 %.not277.i, label %bb.pn, label %bb.qf, !prof !25

bb.pn:                                            ; preds = %bb.pm
  %i.dnf = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 6
  %i.dng = load i8, ptr %i.dnf, align 1, !tbaa !81
  %i.dnh = zext i8 %i.dng to i64
  %i.dni = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dnh
  %i.dnj = load i8, ptr %i.dni, align 1, !tbaa !81
  %.not278.i = icmp eq i8 %i.dnj, 0
  br i1 %.not278.i, label %bb.po, label %bb.qg, !prof !25

bb.po:                                            ; preds = %bb.pn
  %i.dnk = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 7
  %i.dnl = load i8, ptr %i.dnk, align 1, !tbaa !81
  %i.dnm = zext i8 %i.dnl to i64
  %i.dnn = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dnm
  %i.dno = load i8, ptr %i.dnn, align 1, !tbaa !81
  %.not279.i = icmp eq i8 %i.dno, 0
  br i1 %.not279.i, label %bb.pp, label %bb.qh, !prof !25

bb.pp:                                            ; preds = %bb.po
  %i.dnp = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 8
  %i.dnq = load i8, ptr %i.dnp, align 1, !tbaa !81
  %i.dnr = zext i8 %i.dnq to i64
  %i.dns = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dnr
  %i.dnt = load i8, ptr %i.dns, align 1, !tbaa !81
  %.not280.i = icmp eq i8 %i.dnt, 0
  br i1 %.not280.i, label %bb.pq, label %bb.qi, !prof !25

bb.pq:                                            ; preds = %bb.pp
  %i.dnu = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 9
  %i.dnv = load i8, ptr %i.dnu, align 1, !tbaa !81
  %i.dnw = zext i8 %i.dnv to i64
  %i.dnx = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dnw
  %i.dny = load i8, ptr %i.dnx, align 1, !tbaa !81
  %.not281.i = icmp eq i8 %i.dny, 0
  br i1 %.not281.i, label %bb.pr, label %bb.qj, !prof !25

bb.pr:                                            ; preds = %bb.pq
  %i.dnz = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 10
  %i.doa = load i8, ptr %i.dnz, align 1, !tbaa !81
  %i.dob = zext i8 %i.doa to i64
  %i.doc = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dob
  %i.dod = load i8, ptr %i.doc, align 1, !tbaa !81
  %.not282.i = icmp eq i8 %i.dod, 0
  br i1 %.not282.i, label %bb.ps, label %bb.qk, !prof !25

bb.ps:                                            ; preds = %bb.pr
  %i.doe = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 11
  %i.dof = load i8, ptr %i.doe, align 1, !tbaa !81
  %i.dog = zext i8 %i.dof to i64
  %i.doh = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dog
  %i.doi = load i8, ptr %i.doh, align 1, !tbaa !81
  %.not283.i = icmp eq i8 %i.doi, 0
  br i1 %.not283.i, label %bb.pt, label %bb.ql, !prof !25

bb.pt:                                            ; preds = %bb.ps
  %i.doj = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 12
  %i.dok = load i8, ptr %i.doj, align 1, !tbaa !81
  %i.dol = zext i8 %i.dok to i64
  %i.dom = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dol
  %i.don = load i8, ptr %i.dom, align 1, !tbaa !81
  %.not284.i = icmp eq i8 %i.don, 0
  br i1 %.not284.i, label %bb.pu, label %bb.qm, !prof !25

bb.pu:                                            ; preds = %bb.pt
  %i.doo = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 13
  %i.dop = load i8, ptr %i.doo, align 1, !tbaa !81
  %i.doq = zext i8 %i.dop to i64
  %i.dor = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.doq
  %i.dos = load i8, ptr %i.dor, align 1, !tbaa !81
  %.not285.i = icmp eq i8 %i.dos, 0
  br i1 %.not285.i, label %bb.pv, label %bb.qn, !prof !25

bb.pv:                                            ; preds = %bb.pu
  %i.dot = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 14
  %i.dou = load i8, ptr %i.dot, align 1, !tbaa !81
  %i.dov = zext i8 %i.dou to i64
  %i.dow = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dov
  %i.dox = load i8, ptr %i.dow, align 1, !tbaa !81
  %.not286.i = icmp eq i8 %i.dox, 0
  br i1 %.not286.i, label %bb.pw, label %bb.qo, !prof !25

bb.pw:                                            ; preds = %bb.pv
  %i.doy = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 15
  %i.doz = load i8, ptr %i.doy, align 1, !tbaa !81
  %i.dpa = zext i8 %i.doz to i64
  %i.dpb = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dpa
  %i.dpc = load i8, ptr %i.dpb, align 1, !tbaa !81
  %.not287.i = icmp eq i8 %i.dpc, 0
  br i1 %.not287.i, label %bb.px, label %bb.qp, !prof !25

bb.px:                                            ; preds = %bb.pw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i2538, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i2539, i64 16, i1 false)
  %i.dpd = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 16 ; 2 uses
  %i.dpe = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 16 ; 3 uses
  %i.dpf = ptrtoint ptr %i.dpe to i64
  %i.dpg = sub i64 %i.dlw, %i.dpf                 ; 2 uses
  %i.dph = icmp sgt i64 %i.dpg, 15
  br i1 %i.dph, label %.lr.ph2541, label %.preheader1341, !llvm.loop !331

.preheader1339:                                   ; preds = %bb.qc, %.preheader1341
  %.2247.i.lcssa = phi ptr [ %.1246.i.lcssa, %.preheader1341 ], [ %i.dqo, %bb.qc ] ; 3 uses
  %.2240.i.lcssa = phi ptr [ %.1239.i.lcssa, %.preheader1341 ], [ %i.dqp, %bb.qc ] ; 5 uses
  %i.dpi = icmp ugt ptr %i.dlv, %.2240.i.lcssa
  br i1 %i.dpi, label %.lr.ph2552.preheader, label %write_str.exit209

.lr.ph2552.preheader:                             ; preds = %.preheader1339
  %.2240.i.lcssa3128 = ptrtoaddr ptr %.2240.i.lcssa to i64 ; 2 uses
  %scevgep3127 = getelementptr i8, ptr %.2240.i.lcssa, i64 %i.dlw
  %i.dpj = sub i64 0, %.2240.i.lcssa3128
  %scevgep3129 = getelementptr i8, ptr %scevgep3127, i64 %i.dpj
  %i.dpk = sub i64 %i.dlx, %.2240.i.lcssa3128
  %i.dpl = freeze i64 %i.dpk                      ; 2 uses
  %i.dpm = add i64 %i.dpl, -1
  %xtraiter5990 = and i64 %i.dpl, 3               ; 2 uses
  %lcmp.mod5991.not = icmp eq i64 %xtraiter5990, 0
  br i1 %lcmp.mod5991.not, label %.lr.ph2552.prol.loopexit, label %.lr.ph2552.prol

.lr.ph2552.prol:                                  ; preds = %.lr.ph2552.preheader, %bb.py
  %.3241.i2551.prol = phi ptr [ %i.dpr, %bb.py ], [ %.2240.i.lcssa, %.lr.ph2552.preheader ] ; 3 uses
  %.3248.i2550.prol = phi ptr [ %i.dps, %bb.py ], [ %.2247.i.lcssa, %.lr.ph2552.preheader ] ; 3 uses
  %prol.iter5992 = phi i64 [ %prol.iter5992.next, %bb.py ], [ 0, %.lr.ph2552.preheader ]
  %i.dpn = load i8, ptr %.3241.i2551.prol, align 1, !tbaa !81 ; 2 uses
  %i.dpo = zext i8 %i.dpn to i64
  %i.dpp = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dpo
  %i.dpq = load i8, ptr %i.dpp, align 1, !tbaa !81
  %.not.i93.prol = icmp eq i8 %i.dpq, 0
  br i1 %.not.i93.prol, label %bb.py, label %.preheader1336.preheader, !prof !25

bb.py:                                            ; preds = %.lr.ph2552.prol
  %i.dpr = getelementptr inbounds nuw i8, ptr %.3241.i2551.prol, i64 1 ; 2 uses
  %i.dps = getelementptr inbounds nuw i8, ptr %.3248.i2550.prol, i64 1 ; 3 uses
  store i8 %i.dpn, ptr %.3248.i2550.prol, align 1, !tbaa !81
  %prol.iter5992.next = add i64 %prol.iter5992, 1 ; 2 uses
  %prol.iter5992.cmp.not = icmp eq i64 %prol.iter5992.next, %xtraiter5990
  br i1 %prol.iter5992.cmp.not, label %.lr.ph2552.prol.loopexit, label %.lr.ph2552.prol, !llvm.loop !368

.lr.ph2552.prol.loopexit:                         ; preds = %bb.py, %.lr.ph2552.preheader
  %.lcssa5656.unr = phi ptr [ poison, %.lr.ph2552.preheader ], [ %i.dps, %bb.py ]
  %.3241.i2551.unr = phi ptr [ %.2240.i.lcssa, %.lr.ph2552.preheader ], [ %i.dpr, %bb.py ]
  %.3248.i2550.unr = phi ptr [ %.2247.i.lcssa, %.lr.ph2552.preheader ], [ %i.dps, %bb.py ]
  %i.dpt = icmp ult i64 %i.dpm, 3
  br i1 %i.dpt, label %write_str.exit209, label %.lr.ph2552

.lr.ph2547:                                       ; preds = %.preheader1341, %bb.qc
  %.2240.i2546 = phi ptr [ %i.dqp, %bb.qc ], [ %.1239.i.lcssa, %.preheader1341 ] ; 10 uses
  %.2247.i2545 = phi ptr [ %i.dqo, %bb.qc ], [ %.1246.i.lcssa, %.preheader1341 ] ; 6 uses
  %i.dpu = load i8, ptr %.2240.i2546, align 1, !tbaa !81 ; 2 uses
  %i.dpv = zext i8 %i.dpu to i64
  %i.dpw = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dpv
  %i.dpx = load i8, ptr %i.dpw, align 1, !tbaa !81
  %.not268.i = icmp eq i8 %i.dpx, 0
  br i1 %.not268.i, label %bb.pz, label %.preheader1336.preheader, !prof !25

bb.pz:                                            ; preds = %.lr.ph2547
  %i.dpy = getelementptr inbounds nuw i8, ptr %.2240.i2546, i64 1
  %i.dpz = load i8, ptr %i.dpy, align 1, !tbaa !81
  %i.dqa = zext i8 %i.dpz to i64
  %i.dqb = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dqa
  %i.dqc = load i8, ptr %i.dqb, align 1, !tbaa !81
  %.not269.i = icmp eq i8 %i.dqc, 0
  br i1 %.not269.i, label %bb.qa, label %.loopexit1343, !prof !25

bb.qa:                                            ; preds = %bb.pz
  %i.dqd = getelementptr inbounds nuw i8, ptr %.2240.i2546, i64 2
  %i.dqe = load i8, ptr %i.dqd, align 1, !tbaa !81
  %i.dqf = zext i8 %i.dqe to i64
  %i.dqg = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dqf
  %i.dqh = load i8, ptr %i.dqg, align 1, !tbaa !81
  %.not270.i = icmp eq i8 %i.dqh, 0
  br i1 %.not270.i, label %bb.qb, label %.loopexit1344, !prof !25

bb.qb:                                            ; preds = %bb.qa
  %i.dqi = getelementptr inbounds nuw i8, ptr %.2240.i2546, i64 3
  %i.dqj = load i8, ptr %i.dqi, align 1, !tbaa !81
  %i.dqk = zext i8 %i.dqj to i64
  %i.dql = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dqk
  %i.dqm = load i8, ptr %i.dql, align 1, !tbaa !81
  %.not271.i = icmp eq i8 %i.dqm, 0
  br i1 %.not271.i, label %bb.qc, label %.loopexit1345, !prof !25

bb.qc:                                            ; preds = %bb.qb
  %i.dqn = load i32, ptr %.2240.i2546, align 1
  store i32 %i.dqn, ptr %.2247.i2545, align 1
  %i.dqo = getelementptr inbounds nuw i8, ptr %.2247.i2545, i64 4 ; 2 uses
  %i.dqp = getelementptr inbounds nuw i8, ptr %.2240.i2546, i64 4 ; 3 uses
  %i.dqq = ptrtoint ptr %i.dqp to i64
  %i.dqr = sub i64 %i.dlw, %i.dqq
  %i.dqs = icmp sgt i64 %i.dqr, 3
  br i1 %i.dqs, label %.lr.ph2547, label %.preheader1339, !llvm.loop !333

.lr.ph2552:                                       ; preds = %.lr.ph2552.prol.loopexit, %bb.qd
  %.3241.i2551 = phi ptr [ %i.drp, %bb.qd ], [ %.3241.i2551.unr, %.lr.ph2552.prol.loopexit ] ; 9 uses
  %.3248.i2550 = phi ptr [ %i.drq, %bb.qd ], [ %.3248.i2550.unr, %.lr.ph2552.prol.loopexit ] ; 6 uses
  %i.dqt = load i8, ptr %.3241.i2551, align 1, !tbaa !81 ; 2 uses
  %i.dqu = zext i8 %i.dqt to i64
  %i.dqv = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dqu
  %i.dqw = load i8, ptr %i.dqv, align 1, !tbaa !81
  %.not.i93 = icmp eq i8 %i.dqw, 0
  br i1 %.not.i93, label %.lr.ph2552.1, label %.preheader1336.preheader, !prof !25

.lr.ph2552.1:                                     ; preds = %.lr.ph2552
  %i.dqx = getelementptr inbounds nuw i8, ptr %.3241.i2551, i64 1
  %i.dqy = getelementptr inbounds nuw i8, ptr %.3248.i2550, i64 1 ; 2 uses
  store i8 %i.dqt, ptr %.3248.i2550, align 1, !tbaa !81
  %i.dqz = load i8, ptr %i.dqx, align 1, !tbaa !81 ; 2 uses
  %i.dra = zext i8 %i.dqz to i64
  %i.drb = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dra
  %i.drc = load i8, ptr %i.drb, align 1, !tbaa !81
  %.not.i93.1 = icmp eq i8 %i.drc, 0
  br i1 %.not.i93.1, label %.lr.ph2552.2, label %.preheader1336.preheader.loopexit.loopexit.split.loop.exit6704, !prof !25

.lr.ph2552.2:                                     ; preds = %.lr.ph2552.1
  %i.drd = getelementptr inbounds nuw i8, ptr %.3241.i2551, i64 2
  %i.dre = getelementptr inbounds nuw i8, ptr %.3248.i2550, i64 2 ; 2 uses
  store i8 %i.dqz, ptr %i.dqy, align 1, !tbaa !81
  %i.drf = load i8, ptr %i.drd, align 1, !tbaa !81 ; 2 uses
  %i.drg = zext i8 %i.drf to i64
  %i.drh = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.drg
  %i.dri = load i8, ptr %i.drh, align 1, !tbaa !81
  %.not.i93.2 = icmp eq i8 %i.dri, 0
  br i1 %.not.i93.2, label %.lr.ph2552.3, label %.preheader1336.preheader.loopexit.loopexit.split.loop.exit6701, !prof !25

.lr.ph2552.3:                                     ; preds = %.lr.ph2552.2
  %i.drj = getelementptr inbounds nuw i8, ptr %.3241.i2551, i64 3
  %i.drk = getelementptr inbounds nuw i8, ptr %.3248.i2550, i64 3 ; 2 uses
  store i8 %i.drf, ptr %i.dre, align 1, !tbaa !81
  %i.drl = load i8, ptr %i.drj, align 1, !tbaa !81 ; 2 uses
  %i.drm = zext i8 %i.drl to i64
  %i.drn = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.drm
  %i.dro = load i8, ptr %i.drn, align 1, !tbaa !81
  %.not.i93.3 = icmp eq i8 %i.dro, 0
  br i1 %.not.i93.3, label %bb.qd, label %.preheader1336.preheader.loopexit.loopexit.split.loop.exit, !prof !25

bb.qd:                                            ; preds = %.lr.ph2552.3
  %i.drp = getelementptr inbounds nuw i8, ptr %.3241.i2551, i64 4 ; 2 uses
  %i.drq = getelementptr inbounds nuw i8, ptr %.3248.i2550, i64 4 ; 2 uses
  store i8 %i.drl, ptr %i.drk, align 1, !tbaa !81
  %exitcond3130.not.3 = icmp eq ptr %i.drp, %scevgep3129
  br i1 %exitcond3130.not.3, label %write_str.exit209, label %.lr.ph2552, !llvm.loop !334

.loopexit1343:                                    ; preds = %bb.pi, %bb.pz
  %i.drr = phi i8 [ %i.dpu, %bb.pz ], [ %i.dmc, %bb.pi ]
  %.5250.i = phi ptr [ %.2247.i2545, %bb.pz ], [ %.1246.i2538, %bb.pi ] ; 2 uses
  %.5243.i = phi ptr [ %.2240.i2546, %bb.pz ], [ %.1239.i2539, %bb.pi ]
  store i8 %i.drr, ptr %.5250.i, align 1
  %i.drs = getelementptr inbounds nuw i8, ptr %.5250.i, i64 1
  %i.drt = getelementptr inbounds nuw i8, ptr %.5243.i, i64 1
  br label %.preheader1336.preheader

.loopexit1344:                                    ; preds = %bb.pj, %bb.qa
  %.6251.i = phi ptr [ %.2247.i2545, %bb.qa ], [ %.1246.i2538, %bb.pj ] ; 2 uses
  %.6.i109 = phi ptr [ %.2240.i2546, %bb.qa ], [ %.1239.i2539, %bb.pj ] ; 2 uses
  %i.dru = load i16, ptr %.6.i109, align 1
  store i16 %i.dru, ptr %.6251.i, align 1
  %i.drv = getelementptr inbounds nuw i8, ptr %.6251.i, i64 2
  %i.drw = getelementptr inbounds nuw i8, ptr %.6.i109, i64 2
  br label %.preheader1336.preheader

.loopexit1345:                                    ; preds = %bb.pk, %bb.qb
  %.7252.i = phi ptr [ %.2247.i2545, %bb.qb ], [ %.1246.i2538, %bb.pk ] ; 2 uses
  %.7.i110 = phi ptr [ %.2240.i2546, %bb.qb ], [ %.1239.i2539, %bb.pk ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i, ptr noundef nonnull align 1 dereferenceable(3) %.7.i110, i64 3, i1 false)
  %i.drx = getelementptr inbounds nuw i8, ptr %.7252.i, i64 3
  %i.dry = getelementptr inbounds nuw i8, ptr %.7.i110, i64 3
  br label %.preheader1336.preheader

bb.qe:                                            ; preds = %bb.pl
  %i.drz = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 4
  %i.dsa = load i32, ptr %.1239.i2539, align 1
  store i32 %i.dsa, ptr %.1246.i2538, align 1
  %i.dsb = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 4
  br label %.preheader1336.preheader

bb.qf:                                            ; preds = %bb.pm
  %i.dsc = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i2538, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i2539, i64 5, i1 false)
  %i.dsd = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 5
  br label %.preheader1336.preheader

bb.qg:                                            ; preds = %bb.pn
  %i.dse = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i2538, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i2539, i64 6, i1 false)
  %i.dsf = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 6
  br label %.preheader1336.preheader

bb.qh:                                            ; preds = %bb.po
  %i.dsg = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i2538, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i2539, i64 7, i1 false)
  %i.dsh = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 7
  br label %.preheader1336.preheader

bb.qi:                                            ; preds = %bb.pp
  %i.dsi = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 8
  %i.dsj = load i64, ptr %.1239.i2539, align 1
  store i64 %i.dsj, ptr %.1246.i2538, align 1
  %i.dsk = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 8
  br label %.preheader1336.preheader

bb.qj:                                            ; preds = %bb.pq
  %i.dsl = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i2538, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i2539, i64 9, i1 false)
  %i.dsm = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 9
  br label %.preheader1336.preheader

bb.qk:                                            ; preds = %bb.pr
  %i.dsn = getelementptr inbounds nuw i8, ptr %.1239.i2539, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i2538, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i2539, i64 10, i1 false)
  %i.dso = getelementptr inbounds nuw i8, ptr %.1246.i2538, i64 10
end_hunk_5
begin_hunk_6_@yyjson_write_file
define noundef zeroext i1 @yyjson_write_file(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !73
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  %i.c = tail call zeroext i1 @yyjson_val_write_file(ptr noundef %0, ptr noundef %i.b, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @yyjson_write_fp(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca %struct.yyjson_write_err, align 8   ; 5 uses
  %6 = alloca %struct.yyjson_alc, align 8         ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !73
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !9
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) @YYJSON_DEFAULT_ALC, i64 32, i1 false), !tbaa.struct !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 0, ptr %i.a, align 8, !tbaa !91
  %.not17.i = icmp eq ptr %4, null                ; 3 uses
  %spec.store.select.i = select i1 %.not17.i, ptr %5, ptr %4 ; 3 uses
  %.not18.i = icmp eq ptr %0, null
  br i1 %.not18.i, label %bb.g, label %bb.h, !prof !8

bb.g:                                             ; preds = %bb.f
  %spec.store.select.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not17.i, ptr %5, ptr %4
  %spec.store.select.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.31, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  store i32 1, ptr %spec.store.select.i, align 8, !tbaa !329
  br label %yyjson_val_write_fp.exit

bb.h:                                             ; preds = %bb.f
  %i.d = call ptr @yyjson_val_write_opts(ptr noundef readonly %i.c, i32 noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull %spec.store.select.i) ; 3 uses
  %.not19.i = icmp eq ptr %i.d, null
  br i1 %.not19.i, label %yyjson_val_write_fp.exit, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.e = load i64, ptr %i.a, align 8, !tbaa !91
  %i.f = call i64 @fwrite(ptr noundef nonnull readonly %i.d, i64 noundef %i.e, i64 noundef 1, ptr noundef nonnull %0)
  %.not.i.i = icmp eq i64 %i.f, 1                 ; 2 uses
  br i1 %.not.i.i, label %write_dat_to_fp.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %spec.store.select.sroa.sel23.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not17.i, ptr %5, ptr %4
  %spec.store.select.sroa.sel23.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel23.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.117, ptr %spec.store.select.sroa.sel23.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  store i32 6, ptr %spec.store.select.i, align 8, !tbaa !329
  br label %write_dat_to_fp.exit.i

write_dat_to_fp.exit.i:                           ; preds = %bb.j, %bb.i
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  call void %i.h(ptr noundef %i.j, ptr noundef nonnull %i.d) #33, !inline_history !375
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
  %.sroa.0486.0.copyload = load ptr, ptr %3, align 8, !tbaa !10
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !10
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !10
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !10
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
  br i1 %.not30, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  br i1 %.not29, label %.cont423, label %.else425

.else425:                                         ; preds = %bb.d
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %.cont423

.cont423:                                         ; preds = %bb.d, %.else425
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.29, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  store i32 1, ptr %spec.store.select, align 8, !tbaa !329
  br label %yyjson_mut_write_single.exit

bb.e:                                             ; preds = %bb.c
  %i.a = load i64, ptr %0, align 8, !tbaa !79     ; 5 uses
  %i.b = trunc i64 %i.a to i8                     ; 2 uses
  %i.c = and i8 %i.b, 6
  %i.d = icmp ne i8 %i.c, 6
  %i.e = icmp ult i64 %i.a, 256
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.f, label %bb.fs

bb.f:                                             ; preds = %bb.e
  %i.f = and i32 %2, 2
  %.not950 = icmp eq i32 %i.f, 0                  ; 3 uses
  %i.g = and i32 %2, 4
  %.not951 = icmp eq i32 %i.g, 0                  ; 2 uses
  br i1 %.not950, label %bb.h, label %bb.g, !prof !25

bb.g:                                             ; preds = %bb.f
  %enc_table_esc_slash.enc_table_esc.i.i = select i1 %.not951, ptr @enc_table_esc, ptr @enc_table_esc_slash, !prof !25
  br label %get_enc_table_with_flag.exit.i

bb.h:                                             ; preds = %bb.f
  %enc_table_cpy_slash.enc_table_cpy.i.i = select i1 %.not951, ptr @enc_table_cpy, ptr @enc_table_cpy_slash, !prof !25
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
    i8 4, label %bb.ee
    i8 3, label %bb.fg
    i8 2, label %bb.fh
    i8 6, label %bb.fj
    i8 7, label %bb.fl
    i8 0, label %bb.fq
  ]

bb.i:                                             ; preds = %get_enc_table_with_flag.exit.i
  %i.l = lshr i64 %i.a, 8                         ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.o = add nuw nsw i64 %i.l, 2
  %i.p = tail call ptr %.sroa.0486.0(ptr noundef %.sroa.9.0, i64 noundef %i.o) #33, !inline_history !376 ; 4 uses
  %.not107.i.i = icmp eq ptr %i.p, null
  br i1 %.not107.i.i, label %bb.fp, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.n, i64 range(i64 0, 72057594037927936) %i.l, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l
  br label %write_str.exit109.i

bb.k:                                             ; preds = %get_enc_table_with_flag.exit.i
  %i.r = lshr i64 %i.a, 8                         ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81   ; 7 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 2 uses
  %i.v = mul nuw nsw i64 %i.r, 6
  %i.w = add nuw nsw i64 %i.v, 4
  %i.x = tail call ptr %.sroa.0486.0(ptr noundef %.sroa.9.0, i64 noundef %i.w) #33, !inline_history !376 ; 12 uses
  %.not104.i.i = icmp eq ptr %i.x, null
  br i1 %.not104.i.i, label %bb.fp, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.h, label %bb.bu, label %.split.i.i, !prof !25

.split.i.i:                                       ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r ; 4 uses
  store i8 34, ptr %i.x, align 1, !tbaa !81
  %i.z = ptrtoint ptr %i.y to i64                 ; 5 uses
  %i.aa = add i64 %i.r, %i.u
  br label %bb.m

bb.m:                                             ; preds = %bb.ay, %.split.i.i
  %.pn.i11.i = phi ptr [ %i.x, %.split.i.i ], [ %.8253.i24.i, %bb.ay ]
  %.0238.i12.i = phi ptr [ %i.t, %.split.i.i ], [ %i.hu, %bb.ay ] ; 3 uses
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
  %i.af = load i8, ptr %.1239.i15.i2223, align 1, !tbaa !81 ; 2 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !81
  %.not272.i93.i = icmp eq i8 %i.ai, 0
  br i1 %.not272.i93.i, label %bb.n, label %.preheader973.preheader, !prof !25

bb.n:                                             ; preds = %.lr.ph2225
  %i.aj = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !81
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !81
  %.not273.i94.i = icmp eq i8 %i.an, 0
  br i1 %.not273.i94.i, label %bb.o, label %.loopexit980, !prof !25

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !81
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !81
  %.not274.i95.i = icmp eq i8 %i.as, 0
  br i1 %.not274.i95.i, label %bb.p, label %.loopexit981, !prof !25

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !81
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !81
  %.not275.i96.i = icmp eq i8 %i.ax, 0
  br i1 %.not275.i96.i, label %bb.q, label %.loopexit982, !prof !25

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !81
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !81
  %.not276.i97.i = icmp eq i8 %i.bc, 0
  br i1 %.not276.i97.i, label %bb.r, label %bb.aj, !prof !25

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !81
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !81
  %.not277.i98.i = icmp eq i8 %i.bh, 0
  br i1 %.not277.i98.i, label %bb.s, label %bb.ak, !prof !25

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 6
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !81
  %.not278.i99.i = icmp eq i8 %i.bm, 0
  br i1 %.not278.i99.i, label %bb.t, label %bb.al, !prof !25

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !81
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %.not279.i100.i = icmp eq i8 %i.br, 0
  br i1 %.not279.i100.i, label %bb.u, label %bb.am, !prof !25

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 8
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !81
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !81
  %.not280.i101.i = icmp eq i8 %i.bw, 0
  br i1 %.not280.i101.i, label %bb.v, label %bb.an, !prof !25

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 9
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !81
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !81
  %.not281.i102.i = icmp eq i8 %i.cb, 0
  br i1 %.not281.i102.i, label %bb.w, label %bb.ao, !prof !25

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 10
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !81
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !81
  %.not282.i103.i = icmp eq i8 %i.cg, 0
  br i1 %.not282.i103.i, label %bb.x, label %bb.ap, !prof !25

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 11
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !81
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !81
  %.not283.i104.i = icmp eq i8 %i.cl, 0
  br i1 %.not283.i104.i, label %bb.y, label %bb.aq, !prof !25

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 12
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !81
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !81
  %.not284.i105.i = icmp eq i8 %i.cq, 0
  br i1 %.not284.i105.i, label %bb.z, label %bb.ar, !prof !25

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 13
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !81
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !81
  %.not285.i106.i = icmp eq i8 %i.cv, 0
  br i1 %.not285.i106.i, label %bb.aa, label %bb.as, !prof !25

bb.aa:                                            ; preds = %bb.z
  %i.cw = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 14
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !81
  %.not286.i107.i = icmp eq i8 %i.da, 0
  br i1 %.not286.i107.i, label %bb.ab, label %bb.at, !prof !25

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 15
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !81
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !81
  %.not287.i108.i = icmp eq i8 %i.df, 0
  br i1 %.not287.i108.i, label %bb.ac, label %bb.au, !prof !25

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i14.i2222, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i15.i2223, i64 16, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 16 ; 3 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.z, %i.di                     ; 2 uses
  %i.dk = icmp sgt i64 %i.dj, 15
  br i1 %i.dk, label %.lr.ph2225, label %.preheader978, !llvm.loop !331

.preheader976:                                    ; preds = %bb.ah, %.preheader978
  %.2247.i16.i.lcssa = phi ptr [ %.1246.i14.i.lcssa, %.preheader978 ], [ %i.er, %bb.ah ] ; 3 uses
  %.2240.i17.i.lcssa = phi ptr [ %.1239.i15.i.lcssa, %.preheader978 ], [ %i.es, %bb.ah ] ; 5 uses
  %i.dl = icmp ugt ptr %i.y, %.2240.i17.i.lcssa
  br i1 %i.dl, label %.lr.ph2236.preheader, label %.preheader976._crit_edge

.lr.ph2236.preheader:                             ; preds = %.preheader976
  %.2240.i17.i.lcssa2787 = ptrtoaddr ptr %.2240.i17.i.lcssa to i64 ; 2 uses
  %scevgep2786 = getelementptr i8, ptr %.2240.i17.i.lcssa, i64 %i.z
  %i.dm = sub i64 0, %.2240.i17.i.lcssa2787
  %scevgep2788 = getelementptr i8, ptr %scevgep2786, i64 %i.dm
  %i.dn = sub i64 %i.aa, %.2240.i17.i.lcssa2787
  %i.do = freeze i64 %i.dn                        ; 2 uses
  %i.dp = add i64 %i.do, -1
  %xtraiter5662 = and i64 %i.do, 3                ; 2 uses
  %lcmp.mod5663.not = icmp eq i64 %xtraiter5662, 0
  br i1 %lcmp.mod5663.not, label %.lr.ph2236.prol.loopexit, label %.lr.ph2236.prol

.lr.ph2236.prol:                                  ; preds = %.lr.ph2236.preheader, %bb.ad
  %.3241.i19.i2235.prol = phi ptr [ %i.du, %bb.ad ], [ %.2240.i17.i.lcssa, %.lr.ph2236.preheader ] ; 3 uses
  %.3248.i18.i2234.prol = phi ptr [ %i.dv, %bb.ad ], [ %.2247.i16.i.lcssa, %.lr.ph2236.preheader ] ; 3 uses
  %prol.iter5664 = phi i64 [ %prol.iter5664.next, %bb.ad ], [ 0, %.lr.ph2236.preheader ]
  %i.dq = load i8, ptr %.3241.i19.i2235.prol, align 1, !tbaa !81 ; 2 uses
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !81
  %.not.i21.i.prol = icmp eq i8 %i.dt, 0
  br i1 %.not.i21.i.prol, label %bb.ad, label %.preheader973.preheader, !prof !25

bb.ad:                                            ; preds = %.lr.ph2236.prol
  %i.du = getelementptr inbounds nuw i8, ptr %.3241.i19.i2235.prol, i64 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.3248.i18.i2234.prol, i64 1 ; 3 uses
  store i8 %i.dq, ptr %.3248.i18.i2234.prol, align 1, !tbaa !81
  %prol.iter5664.next = add i64 %prol.iter5664, 1 ; 2 uses
  %prol.iter5664.cmp.not = icmp eq i64 %prol.iter5664.next, %xtraiter5662
  br i1 %prol.iter5664.cmp.not, label %.lr.ph2236.prol.loopexit, label %.lr.ph2236.prol, !llvm.loop !377

.lr.ph2236.prol.loopexit:                         ; preds = %bb.ad, %.lr.ph2236.preheader
  %.lcssa5142.unr = phi ptr [ poison, %.lr.ph2236.preheader ], [ %i.dv, %bb.ad ]
  %.3241.i19.i2235.unr = phi ptr [ %.2240.i17.i.lcssa, %.lr.ph2236.preheader ], [ %i.du, %bb.ad ]
  %.3248.i18.i2234.unr = phi ptr [ %.2247.i16.i.lcssa, %.lr.ph2236.preheader ], [ %i.dv, %bb.ad ]
  %i.dw = icmp ult i64 %i.dp, 3
  br i1 %i.dw, label %.preheader976._crit_edge, label %.lr.ph2236

.lr.ph2231:                                       ; preds = %.preheader978, %bb.ah
  %.2240.i17.i2230 = phi ptr [ %i.es, %bb.ah ], [ %.1239.i15.i.lcssa, %.preheader978 ] ; 10 uses
  %.2247.i16.i2229 = phi ptr [ %i.er, %bb.ah ], [ %.1246.i14.i.lcssa, %.preheader978 ] ; 6 uses
  %i.dx = load i8, ptr %.2240.i17.i2230, align 1, !tbaa !81 ; 2 uses
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !81
  %.not268.i83.i = icmp eq i8 %i.ea, 0
  br i1 %.not268.i83.i, label %bb.ae, label %.preheader973.preheader, !prof !25

bb.ae:                                            ; preds = %.lr.ph2231
  %i.eb = getelementptr inbounds nuw i8, ptr %.2240.i17.i2230, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !81
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !81
  %.not269.i84.i = icmp eq i8 %i.ef, 0
  br i1 %.not269.i84.i, label %bb.af, label %.loopexit980, !prof !25

bb.af:                                            ; preds = %bb.ae
  %i.eg = getelementptr inbounds nuw i8, ptr %.2240.i17.i2230, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !81
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !81
  %.not270.i87.i = icmp eq i8 %i.ek, 0
  br i1 %.not270.i87.i, label %bb.ag, label %.loopexit981, !prof !25

bb.ag:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds nuw i8, ptr %.2240.i17.i2230, i64 3
  %i.em = load i8, ptr %i.el, align 1, !tbaa !81
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !81
  %.not271.i90.i = icmp eq i8 %i.ep, 0
  br i1 %.not271.i90.i, label %bb.ah, label %.loopexit982, !prof !25

bb.ah:                                            ; preds = %bb.ag
  %i.eq = load i32, ptr %.2240.i17.i2230, align 1
  store i32 %i.eq, ptr %.2247.i16.i2229, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %.2247.i16.i2229, i64 4 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.2240.i17.i2230, i64 4 ; 3 uses
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = sub i64 %i.z, %i.et
  %i.ev = icmp sgt i64 %i.eu, 3
  br i1 %i.ev, label %.lr.ph2231, label %.preheader976, !llvm.loop !333

.lr.ph2236:                                       ; preds = %.lr.ph2236.prol.loopexit, %bb.ai
  %.3241.i19.i2235 = phi ptr [ %i.fs, %bb.ai ], [ %.3241.i19.i2235.unr, %.lr.ph2236.prol.loopexit ] ; 9 uses
  %.3248.i18.i2234 = phi ptr [ %i.ft, %bb.ai ], [ %.3248.i18.i2234.unr, %.lr.ph2236.prol.loopexit ] ; 6 uses
  %i.ew = load i8, ptr %.3241.i19.i2235, align 1, !tbaa !81 ; 2 uses
  %i.ex = zext i8 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !81
  %.not.i21.i = icmp eq i8 %i.ez, 0
  br i1 %.not.i21.i, label %.lr.ph2236.1, label %.preheader973.preheader, !prof !25

.lr.ph2236.1:                                     ; preds = %.lr.ph2236
  %i.fa = getelementptr inbounds nuw i8, ptr %.3241.i19.i2235, i64 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.3248.i18.i2234, i64 1 ; 2 uses
  store i8 %i.ew, ptr %.3248.i18.i2234, align 1, !tbaa !81
  %i.fc = load i8, ptr %i.fa, align 1, !tbaa !81  ; 2 uses
  %i.fd = zext i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !81
  %.not.i21.i.1 = icmp eq i8 %i.ff, 0
  br i1 %.not.i21.i.1, label %.lr.ph2236.2, label %.preheader973.preheader.loopexit.loopexit.split.loop.exit6387, !prof !25

.lr.ph2236.2:                                     ; preds = %.lr.ph2236.1
  %i.fg = getelementptr inbounds nuw i8, ptr %.3241.i19.i2235, i64 2
  %i.fh = getelementptr inbounds nuw i8, ptr %.3248.i18.i2234, i64 2 ; 2 uses
  store i8 %i.fc, ptr %i.fb, align 1, !tbaa !81
  %i.fi = load i8, ptr %i.fg, align 1, !tbaa !81  ; 2 uses
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !81
  %.not.i21.i.2 = icmp eq i8 %i.fl, 0
  br i1 %.not.i21.i.2, label %.lr.ph2236.3, label %.preheader973.preheader.loopexit.loopexit.split.loop.exit6384, !prof !25

.lr.ph2236.3:                                     ; preds = %.lr.ph2236.2
  %i.fm = getelementptr inbounds nuw i8, ptr %.3241.i19.i2235, i64 3
  %i.fn = getelementptr inbounds nuw i8, ptr %.3248.i18.i2234, i64 3 ; 2 uses
  store i8 %i.fi, ptr %i.fh, align 1, !tbaa !81
  %i.fo = load i8, ptr %i.fm, align 1, !tbaa !81  ; 2 uses
  %i.fp = zext i8 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !81
  %.not.i21.i.3 = icmp eq i8 %i.fr, 0
  br i1 %.not.i21.i.3, label %bb.ai, label %.preheader973.preheader.loopexit.loopexit.split.loop.exit, !prof !25

bb.ai:                                            ; preds = %.lr.ph2236.3
  %i.fs = getelementptr inbounds nuw i8, ptr %.3241.i19.i2235, i64 4 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.3248.i18.i2234, i64 4 ; 2 uses
  store i8 %i.fo, ptr %i.fn, align 1, !tbaa !81
  %exitcond2789.not.3 = icmp eq ptr %i.fs, %scevgep2788
  br i1 %exitcond2789.not.3, label %.preheader976._crit_edge, label %.lr.ph2236, !llvm.loop !334

.preheader976._crit_edge:                         ; preds = %.preheader976, %bb.ai, %.lr.ph2236.prol.loopexit
  %.3248.i18.i.lcssa = phi ptr [ %.lcssa5142.unr, %.lr.ph2236.prol.loopexit ], [ %i.ft, %bb.ai ], [ %.2247.i16.i.lcssa, %.preheader976 ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.3248.i18.i.lcssa, i64 1
  store i8 34, ptr %.3248.i18.i.lcssa, align 1, !tbaa !81
  br label %write_str.exit109.i

.loopexit980:                                     ; preds = %bb.n, %bb.ae
  %i.fv = phi i8 [ %i.dx, %bb.ae ], [ %i.af, %bb.n ]
  %.5250.i85.i = phi ptr [ %.2247.i16.i2229, %bb.ae ], [ %.1246.i14.i2222, %bb.n ] ; 2 uses
  %.5243.i86.i = phi ptr [ %.2240.i17.i2230, %bb.ae ], [ %.1239.i15.i2223, %bb.n ]
  store i8 %i.fv, ptr %.5250.i85.i, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %.5250.i85.i, i64 1
  %i.fx = getelementptr inbounds nuw i8, ptr %.5243.i86.i, i64 1
  br label %.preheader973.preheader

.loopexit981:                                     ; preds = %bb.o, %bb.af
  %.6251.i88.i = phi ptr [ %.2247.i16.i2229, %bb.af ], [ %.1246.i14.i2222, %bb.o ] ; 2 uses
  %.6.i89.i = phi ptr [ %.2240.i17.i2230, %bb.af ], [ %.1239.i15.i2223, %bb.o ] ; 2 uses
  %i.fy = load i16, ptr %.6.i89.i, align 1
  store i16 %i.fy, ptr %.6251.i88.i, align 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.6251.i88.i, i64 2
  %i.ga = getelementptr inbounds nuw i8, ptr %.6.i89.i, i64 2
  br label %.preheader973.preheader

.loopexit982:                                     ; preds = %bb.p, %bb.ag
  %.7252.i91.i = phi ptr [ %.2247.i16.i2229, %bb.ag ], [ %.1246.i14.i2222, %bb.p ] ; 2 uses
  %.7.i92.i = phi ptr [ %.2240.i17.i2230, %bb.ag ], [ %.1239.i15.i2223, %bb.p ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i91.i, ptr noundef nonnull align 1 dereferenceable(3) %.7.i92.i, i64 3, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %.7252.i91.i, i64 3
  %i.gc = getelementptr inbounds nuw i8, ptr %.7.i92.i, i64 3
  br label %.preheader973.preheader

bb.aj:                                            ; preds = %bb.q
  %i.gd = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 4
  %i.ge = load i32, ptr %.1239.i15.i2223, align 1
  store i32 %i.ge, ptr %.1246.i14.i2222, align 1
  %i.gf = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 4
  br label %.preheader973.preheader

bb.ak:                                            ; preds = %bb.r
  %i.gg = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i14.i2222, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i15.i2223, i64 5, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 5
  br label %.preheader973.preheader

bb.al:                                            ; preds = %bb.s
  %i.gi = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i14.i2222, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i15.i2223, i64 6, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 6
  br label %.preheader973.preheader

bb.am:                                            ; preds = %bb.t
  %i.gk = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i14.i2222, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i15.i2223, i64 7, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 7
  br label %.preheader973.preheader

bb.an:                                            ; preds = %bb.u
  %i.gm = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 8
  %i.gn = load i64, ptr %.1239.i15.i2223, align 1
  store i64 %i.gn, ptr %.1246.i14.i2222, align 1
  %i.go = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 8
  br label %.preheader973.preheader

bb.ao:                                            ; preds = %bb.v
  %i.gp = getelementptr inbounds nuw i8, ptr %.1239.i15.i2223, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i14.i2222, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i15.i2223, i64 9, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %.1246.i14.i2222, i64 9
end_hunk_6
begin_hunk_7_@yyjson_mut_write_opts_impl:bb.a
bb.bj:                                            ; preds = %bb.ax
  store i32 808482140, ptr %.8253.i24.i, align 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 4
  %i.je = load i8, ptr %.8.i25.i, align 1, !tbaa !81
  %i.jf = zext i8 %i.je to i64
  %i.jg = shl nuw nsw i64 %i.jf, 1
  %i.jh = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2
  store i16 %i.ji, ptr %i.jd, align 1
  %i.jj = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 6
  %i.jk = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 1
  br label %.preheader973.backedge

bb.bk:                                            ; preds = %bb.ax
  %.sroa.0.0.copyload.i332.i53.i = load i16, ptr %.8.i25.i, align 1 ; 3 uses
  %.sroa.0520.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i53.i to i32 ; 2 uses
  %i.jl = and i32 %.sroa.0520.0.insert.ext, 49376
  %i.jm = icmp ne i32 %i.jl, 32960
  %i.jn = and i32 %.sroa.0520.0.insert.ext, 30
  %i.jo = icmp eq i32 %i.jn, 0
  %.not298.i54.i = or i1 %i.jm, %i.jo
  br i1 %.not298.i54.i, label %.thread705, label %bb.bl, !prof !8

bb.bl:                                            ; preds = %bb.bk
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

bb.bm:                                            ; preds = %bb.ax
  %.sroa.0.0.copyload.i.i40.i = load i16, ptr %.8.i25.i, align 1 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 2
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !81  ; 2 uses
  %.sroa.4.0.insert.ext.i.i41.i = zext i8 %i.kh to i32
  %.sroa.4.0.insert.shift.i.i42.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i41.i, 16
  %.sroa.0.0.insert.ext.i.i43.i = zext i16 %.sroa.0.0.copyload.i.i40.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i44.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i42.i, %.sroa.0.0.insert.ext.i.i43.i
  %i.ki = and i32 %.sroa.0.0.insert.insert.i.i44.i, 12632304
  %i.kj = icmp eq i32 %i.ki, 8421600
  br i1 %i.kj, label %bb.bn, label %.thread705, !prof !25

bb.bn:                                            ; preds = %bb.bm
  %i.kk = and i32 %.sroa.0.0.insert.ext.i.i43.i, 8207
  switch i32 %i.kk, label %.critedge321.i45.i [
    i32 8205, label %.thread705
    i32 0, label %.thread705
  ], !prof !335

.critedge321.i45.i:                               ; preds = %bb.bn
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

bb.bo:                                            ; preds = %bb.ax
  %.sroa.0.0.copyload.i333.i30.i = load i32, ptr %.8.i25.i, align 1 ; 9 uses
  %i.ld = and i32 %.sroa.0.0.copyload.i333.i30.i, -1061109512
  %i.le = icmp ne i32 %i.ld, -2139062032
  %i.lf = and i32 %.sroa.0.0.copyload.i333.i30.i, 12295
  %.not288.i31.i = icmp eq i32 %i.lf, 0
  %or.cond323.i32.i = or i1 %i.le, %.not288.i31.i
  %i.lg = lshr i32 %.sroa.0.0.copyload.i333.i30.i, 24
  br i1 %or.cond323.i32.i, label %.thread705, label %bb.bp, !prof !258

bb.bp:                                            ; preds = %bb.bo
  %i.lh = and i32 %.sroa.0.0.copyload.i333.i30.i, 4
  %i.li = icmp ne i32 %i.lh, 0
  %i.lj = and i32 %.sroa.0.0.copyload.i333.i30.i, 12291
  %i.lk = icmp ne i32 %i.lj, 0
  %.not291.i33.i = and i1 %i.li, %i.lk
  br i1 %.not291.i33.i, label %.thread705, label %.critedge325.i36.i, !prof !8

.critedge325.i36.i:                               ; preds = %bb.bp
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

bb.bq:                                            ; preds = %bb.ax, %bb.av
  %i.my = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 1
  store i8 34, ptr %.8253.i24.i, align 1, !tbaa !81
  br label %write_str.exit109.i

bb.br:                                            ; preds = %bb.ax, %bb.aw
  %i.mz = phi i8 [ %i.ht, %bb.ax ], [ %i.hl, %bb.aw ]
  br i1 %.not950, label %.thread, label %.thread705

.thread:                                          ; preds = %bb.bg, %bb.bh, %bb.be, %bb.bc, %bb.bf, %bb.bf, %bb.bd, %bb.bd, %bb.az, %bb.br
  %i.na = phi i8 [ %i.is, %bb.bg ], [ %i.is, %bb.bh ], [ %i.il, %bb.be ], [ %i.if, %bb.bc ], [ %i.il, %bb.bf ], [ %i.il, %bb.bf ], [ %i.if, %bb.bd ], [ %i.if, %bb.bd ], [ %i.ia, %bb.az ], [ %i.mz, %bb.br ]
  br i1 %.not953, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %.thread
  %i.nb = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 1
  store i8 %i.na, ptr %.8253.i24.i, align 1, !tbaa !81
  br label %.preheader973.backedge

.thread705:                                       ; preds = %bb.bo, %bb.bp, %bb.bm, %bb.bn, %bb.bn, %bb.bk, %bb.br
  br i1 %.not953, label %.loopexit, label %bb.bt

bb.bt:                                            ; preds = %.thread705
  store i16 30044, ptr %.8253.i24.i, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 2
  store i32 1145456198, ptr %i.nd, align 1
  %i.ne = getelementptr inbounds nuw i8, ptr %.8253.i24.i, i64 6
  %i.nf = getelementptr inbounds nuw i8, ptr %.8.i25.i, i64 1
  br label %.preheader973.backedge

bb.bu:                                            ; preds = %bb.l
  %i.ng = load i64, ptr %0, align 8, !tbaa !79
  %i.nh = and i64 %i.ng, 24
  %.not105.i.i = icmp eq i64 %i.nh, 0
  store i8 34, ptr %i.x, align 1, !tbaa !81
  br i1 %.not105.i.i, label %.split83.i.i, label %bb.ed

.split83.i.i:                                     ; preds = %bb.bu
  %i.ni = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r ; 4 uses
  %i.nj = ptrtoint ptr %i.ni to i64               ; 5 uses
  %i.nk = add i64 %i.r, %i.u
  br label %bb.bv

bb.bv:                                            ; preds = %bb.dh, %.split83.i.i
  %.pn.i.i = phi ptr [ %i.x, %.split83.i.i ], [ %.8253.i.i, %bb.dh ]
  %.0238.i.i = phi ptr [ %i.t, %.split83.i.i ], [ %i.ve, %bb.dh ] ; 3 uses
  %.0245.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 1 ; 2 uses
  %i.nl = ptrtoint ptr %.0238.i.i to i64
  %i.nm = sub i64 %i.nj, %i.nl                    ; 2 uses
  %i.nn = icmp sgt i64 %i.nm, 15
  br i1 %i.nn, label %.lr.ph2276, label %.preheader962

.preheader962:                                    ; preds = %bb.cl, %bb.bv
  %.pre-phi2852 = phi i64 [ %i.nm, %bb.bv ], [ %i.qt, %bb.cl ]
  %.1246.i.i.lcssa = phi ptr [ %.0245.i.i, %bb.bv ], [ %i.qq, %bb.cl ] ; 2 uses
  %.1239.i.i.lcssa = phi ptr [ %.0238.i.i, %bb.bv ], [ %i.qr, %bb.cl ] ; 2 uses
  %i.no = icmp sgt i64 %.pre-phi2852, 3
  br i1 %i.no, label %.lr.ph2282, label %.preheader960

.lr.ph2276:                                       ; preds = %bb.bv, %bb.cl
  %.1239.i.i2274 = phi ptr [ %i.qr, %bb.cl ], [ %.0238.i.i, %bb.bv ] ; 46 uses
  %.1246.i.i2273 = phi ptr [ %i.qq, %bb.cl ], [ %.0245.i.i, %bb.bv ] ; 30 uses
  %i.np = load i8, ptr %.1239.i.i2274, align 1, !tbaa !81 ; 2 uses
  %i.nq = zext i8 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !81
  %.not272.i.i = icmp eq i8 %i.ns, 0
  br i1 %.not272.i.i, label %bb.bw, label %.preheader.preheader, !prof !25

bb.bw:                                            ; preds = %.lr.ph2276
  %i.nt = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 1
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !81
  %i.nv = zext i8 %i.nu to i64
  %i.nw = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !81
  %.not273.i.i = icmp eq i8 %i.nx, 0
  br i1 %.not273.i.i, label %bb.bx, label %.loopexit964, !prof !25

bb.bx:                                            ; preds = %bb.bw
  %i.ny = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 2
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !81
  %i.oa = zext i8 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !81
  %.not274.i.i = icmp eq i8 %i.oc, 0
  br i1 %.not274.i.i, label %bb.by, label %.loopexit965, !prof !25

bb.by:                                            ; preds = %bb.bx
  %i.od = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 3
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !81
  %i.of = zext i8 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !81
  %.not275.i.i = icmp eq i8 %i.oh, 0
  br i1 %.not275.i.i, label %bb.bz, label %.loopexit966, !prof !25

bb.bz:                                            ; preds = %bb.by
  %i.oi = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 4
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !81
  %i.ok = zext i8 %i.oj to i64
  %i.ol = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !81
  %.not276.i.i = icmp eq i8 %i.om, 0
  br i1 %.not276.i.i, label %bb.ca, label %bb.cs, !prof !25

bb.ca:                                            ; preds = %bb.bz
  %i.on = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 5
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !81
  %i.op = zext i8 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !81
  %.not277.i.i = icmp eq i8 %i.or, 0
  br i1 %.not277.i.i, label %bb.cb, label %bb.ct, !prof !25

bb.cb:                                            ; preds = %bb.ca
  %i.os = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 6
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !81
  %i.ou = zext i8 %i.ot to i64
  %i.ov = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.ou
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !81
  %.not278.i.i = icmp eq i8 %i.ow, 0
  br i1 %.not278.i.i, label %bb.cc, label %bb.cu, !prof !25

bb.cc:                                            ; preds = %bb.cb
  %i.ox = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 7
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !81
  %i.oz = zext i8 %i.oy to i64
  %i.pa = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !81
  %.not279.i.i = icmp eq i8 %i.pb, 0
  br i1 %.not279.i.i, label %bb.cd, label %bb.cv, !prof !25

bb.cd:                                            ; preds = %bb.cc
  %i.pc = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 8
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !81
  %i.pe = zext i8 %i.pd to i64
  %i.pf = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !81
  %.not280.i.i = icmp eq i8 %i.pg, 0
  br i1 %.not280.i.i, label %bb.ce, label %bb.cw, !prof !25

bb.ce:                                            ; preds = %bb.cd
  %i.ph = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 9
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !81
  %i.pj = zext i8 %i.pi to i64
  %i.pk = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.pj
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !81
  %.not281.i.i = icmp eq i8 %i.pl, 0
  br i1 %.not281.i.i, label %bb.cf, label %bb.cx, !prof !25

bb.cf:                                            ; preds = %bb.ce
  %i.pm = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 10
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !81
  %i.po = zext i8 %i.pn to i64
  %i.pp = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.po
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !81
  %.not282.i.i = icmp eq i8 %i.pq, 0
  br i1 %.not282.i.i, label %bb.cg, label %bb.cy, !prof !25

bb.cg:                                            ; preds = %bb.cf
  %i.pr = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 11
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !81
  %i.pt = zext i8 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !81
  %.not283.i.i = icmp eq i8 %i.pv, 0
  br i1 %.not283.i.i, label %bb.ch, label %bb.cz, !prof !25

bb.ch:                                            ; preds = %bb.cg
  %i.pw = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 12
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !81
  %i.py = zext i8 %i.px to i64
  %i.pz = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.py
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !81
  %.not284.i.i = icmp eq i8 %i.qa, 0
  br i1 %.not284.i.i, label %bb.ci, label %bb.da, !prof !25

bb.ci:                                            ; preds = %bb.ch
  %i.qb = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 13
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !81
  %i.qd = zext i8 %i.qc to i64
  %i.qe = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !81
  %.not285.i.i = icmp eq i8 %i.qf, 0
  br i1 %.not285.i.i, label %bb.cj, label %bb.db, !prof !25

bb.cj:                                            ; preds = %bb.ci
  %i.qg = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 14
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !81
  %i.qi = zext i8 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !81
  %.not286.i.i = icmp eq i8 %i.qk, 0
  br i1 %.not286.i.i, label %bb.ck, label %bb.dc, !prof !25

bb.ck:                                            ; preds = %bb.cj
  %i.ql = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 15
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !81
  %i.qn = zext i8 %i.qm to i64
  %i.qo = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.qn
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !81
  %.not287.i.i = icmp eq i8 %i.qp, 0
  br i1 %.not287.i.i, label %bb.cl, label %bb.dd, !prof !25

bb.cl:                                            ; preds = %bb.ck
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i.i2273, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i.i2274, i64 16, i1 false)
  %i.qq = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 16 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 16 ; 3 uses
  %i.qs = ptrtoint ptr %i.qr to i64
  %i.qt = sub i64 %i.nj, %i.qs                    ; 2 uses
  %i.qu = icmp sgt i64 %i.qt, 15
  br i1 %i.qu, label %.lr.ph2276, label %.preheader962, !llvm.loop !331

.preheader960:                                    ; preds = %bb.cq, %.preheader962
  %.2247.i.i.lcssa = phi ptr [ %.1246.i.i.lcssa, %.preheader962 ], [ %i.sb, %bb.cq ] ; 3 uses
  %.2240.i.i.lcssa = phi ptr [ %.1239.i.i.lcssa, %.preheader962 ], [ %i.sc, %bb.cq ] ; 5 uses
  %i.qv = icmp ugt ptr %i.ni, %.2240.i.i.lcssa
  br i1 %i.qv, label %.lr.ph2287.preheader, label %.preheader960._crit_edge

.lr.ph2287.preheader:                             ; preds = %.preheader960
  %.2240.i.i.lcssa2791 = ptrtoaddr ptr %.2240.i.i.lcssa to i64 ; 2 uses
  %scevgep2790 = getelementptr i8, ptr %.2240.i.i.lcssa, i64 %i.nj
  %i.qw = sub i64 0, %.2240.i.i.lcssa2791
  %scevgep2792 = getelementptr i8, ptr %scevgep2790, i64 %i.qw
  %i.qx = sub i64 %i.nk, %.2240.i.i.lcssa2791
  %i.qy = freeze i64 %i.qx                        ; 2 uses
  %i.qz = add i64 %i.qy, -1
  %xtraiter5672 = and i64 %i.qy, 3                ; 2 uses
  %lcmp.mod5673.not = icmp eq i64 %xtraiter5672, 0
  br i1 %lcmp.mod5673.not, label %.lr.ph2287.prol.loopexit, label %.lr.ph2287.prol

.lr.ph2287.prol:                                  ; preds = %.lr.ph2287.preheader, %bb.cm
  %.3241.i.i2286.prol = phi ptr [ %i.re, %bb.cm ], [ %.2240.i.i.lcssa, %.lr.ph2287.preheader ] ; 3 uses
  %.3248.i.i2285.prol = phi ptr [ %i.rf, %bb.cm ], [ %.2247.i.i.lcssa, %.lr.ph2287.preheader ] ; 3 uses
  %prol.iter5674 = phi i64 [ %prol.iter5674.next, %bb.cm ], [ 0, %.lr.ph2287.preheader ]
  %i.ra = load i8, ptr %.3241.i.i2286.prol, align 1, !tbaa !81 ; 2 uses
  %i.rb = zext i8 %i.ra to i64
  %i.rc = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !81
  %.not.i7.i.prol = icmp eq i8 %i.rd, 0
  br i1 %.not.i7.i.prol, label %bb.cm, label %.preheader.preheader, !prof !25

bb.cm:                                            ; preds = %.lr.ph2287.prol
  %i.re = getelementptr inbounds nuw i8, ptr %.3241.i.i2286.prol, i64 1 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.3248.i.i2285.prol, i64 1 ; 3 uses
  store i8 %i.ra, ptr %.3248.i.i2285.prol, align 1, !tbaa !81
  %prol.iter5674.next = add i64 %prol.iter5674, 1 ; 2 uses
  %prol.iter5674.cmp.not = icmp eq i64 %prol.iter5674.next, %xtraiter5672
  br i1 %prol.iter5674.cmp.not, label %.lr.ph2287.prol.loopexit, label %.lr.ph2287.prol, !llvm.loop !378

.lr.ph2287.prol.loopexit:                         ; preds = %bb.cm, %.lr.ph2287.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph2287.preheader ], [ %i.rf, %bb.cm ]
  %.3241.i.i2286.unr = phi ptr [ %.2240.i.i.lcssa, %.lr.ph2287.preheader ], [ %i.re, %bb.cm ]
  %.3248.i.i2285.unr = phi ptr [ %.2247.i.i.lcssa, %.lr.ph2287.preheader ], [ %i.rf, %bb.cm ]
  %i.rg = icmp ult i64 %i.qz, 3
  br i1 %i.rg, label %.preheader960._crit_edge, label %.lr.ph2287

.lr.ph2282:                                       ; preds = %.preheader962, %bb.cq
  %.2240.i.i2281 = phi ptr [ %i.sc, %bb.cq ], [ %.1239.i.i.lcssa, %.preheader962 ] ; 10 uses
  %.2247.i.i2280 = phi ptr [ %i.sb, %bb.cq ], [ %.1246.i.i.lcssa, %.preheader962 ] ; 6 uses
  %i.rh = load i8, ptr %.2240.i.i2281, align 1, !tbaa !81 ; 2 uses
  %i.ri = zext i8 %i.rh to i64
  %i.rj = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.ri
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !81
  %.not268.i.i = icmp eq i8 %i.rk, 0
  br i1 %.not268.i.i, label %bb.cn, label %.preheader.preheader, !prof !25

bb.cn:                                            ; preds = %.lr.ph2282
  %i.rl = getelementptr inbounds nuw i8, ptr %.2240.i.i2281, i64 1
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !81
  %i.rn = zext i8 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !81
  %.not269.i.i = icmp eq i8 %i.rp, 0
  br i1 %.not269.i.i, label %bb.co, label %.loopexit964, !prof !25

bb.co:                                            ; preds = %bb.cn
  %i.rq = getelementptr inbounds nuw i8, ptr %.2240.i.i2281, i64 2
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !81
  %i.rs = zext i8 %i.rr to i64
  %i.rt = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.rs
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !81
  %.not270.i.i = icmp eq i8 %i.ru, 0
  br i1 %.not270.i.i, label %bb.cp, label %.loopexit965, !prof !25

bb.cp:                                            ; preds = %bb.co
  %i.rv = getelementptr inbounds nuw i8, ptr %.2240.i.i2281, i64 3
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !81
  %i.rx = zext i8 %i.rw to i64
  %i.ry = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.rx
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !81
  %.not271.i.i = icmp eq i8 %i.rz, 0
  br i1 %.not271.i.i, label %bb.cq, label %.loopexit966, !prof !25

bb.cq:                                            ; preds = %bb.cp
  %i.sa = load i32, ptr %.2240.i.i2281, align 1
  store i32 %i.sa, ptr %.2247.i.i2280, align 1
  %i.sb = getelementptr inbounds nuw i8, ptr %.2247.i.i2280, i64 4 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.2240.i.i2281, i64 4 ; 3 uses
  %i.sd = ptrtoint ptr %i.sc to i64
  %i.se = sub i64 %i.nj, %i.sd
  %i.sf = icmp sgt i64 %i.se, 3
  br i1 %i.sf, label %.lr.ph2282, label %.preheader960, !llvm.loop !333

.lr.ph2287:                                       ; preds = %.lr.ph2287.prol.loopexit, %bb.cr
  %.3241.i.i2286 = phi ptr [ %i.tc, %bb.cr ], [ %.3241.i.i2286.unr, %.lr.ph2287.prol.loopexit ] ; 9 uses
  %.3248.i.i2285 = phi ptr [ %i.td, %bb.cr ], [ %.3248.i.i2285.unr, %.lr.ph2287.prol.loopexit ] ; 6 uses
  %i.sg = load i8, ptr %.3241.i.i2286, align 1, !tbaa !81 ; 2 uses
  %i.sh = zext i8 %i.sg to i64
  %i.si = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.sh
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !81
  %.not.i7.i = icmp eq i8 %i.sj, 0
  br i1 %.not.i7.i, label %.lr.ph2287.1, label %.preheader.preheader, !prof !25

.lr.ph2287.1:                                     ; preds = %.lr.ph2287
  %i.sk = getelementptr inbounds nuw i8, ptr %.3241.i.i2286, i64 1
  %i.sl = getelementptr inbounds nuw i8, ptr %.3248.i.i2285, i64 1 ; 2 uses
  store i8 %i.sg, ptr %.3248.i.i2285, align 1, !tbaa !81
  %i.sm = load i8, ptr %i.sk, align 1, !tbaa !81  ; 2 uses
  %i.sn = zext i8 %i.sm to i64
  %i.so = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.sn
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !81
  %.not.i7.i.1 = icmp eq i8 %i.sp, 0
  br i1 %.not.i7.i.1, label %.lr.ph2287.2, label %.preheader.preheader.loopexit.loopexit.split.loop.exit6399, !prof !25

.lr.ph2287.2:                                     ; preds = %.lr.ph2287.1
  %i.sq = getelementptr inbounds nuw i8, ptr %.3241.i.i2286, i64 2
  %i.sr = getelementptr inbounds nuw i8, ptr %.3248.i.i2285, i64 2 ; 2 uses
  store i8 %i.sm, ptr %i.sl, align 1, !tbaa !81
  %i.ss = load i8, ptr %i.sq, align 1, !tbaa !81  ; 2 uses
  %i.st = zext i8 %i.ss to i64
  %i.su = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.st
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !81
  %.not.i7.i.2 = icmp eq i8 %i.sv, 0
  br i1 %.not.i7.i.2, label %.lr.ph2287.3, label %.preheader.preheader.loopexit.loopexit.split.loop.exit6396, !prof !25

.lr.ph2287.3:                                     ; preds = %.lr.ph2287.2
  %i.sw = getelementptr inbounds nuw i8, ptr %.3241.i.i2286, i64 3
  %i.sx = getelementptr inbounds nuw i8, ptr %.3248.i.i2285, i64 3 ; 2 uses
  store i8 %i.ss, ptr %i.sr, align 1, !tbaa !81
  %i.sy = load i8, ptr %i.sw, align 1, !tbaa !81  ; 2 uses
  %i.sz = zext i8 %i.sy to i64
  %i.ta = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.sz
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !81
  %.not.i7.i.3 = icmp eq i8 %i.tb, 0
  br i1 %.not.i7.i.3, label %bb.cr, label %.preheader.preheader.loopexit.loopexit.split.loop.exit, !prof !25

bb.cr:                                            ; preds = %.lr.ph2287.3
  %i.tc = getelementptr inbounds nuw i8, ptr %.3241.i.i2286, i64 4 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.3248.i.i2285, i64 4 ; 2 uses
  store i8 %i.sy, ptr %i.sx, align 1, !tbaa !81
  %exitcond2793.not.3 = icmp eq ptr %i.tc, %scevgep2792
  br i1 %exitcond2793.not.3, label %.preheader960._crit_edge, label %.lr.ph2287, !llvm.loop !334

.preheader960._crit_edge:                         ; preds = %.preheader960, %bb.cr, %.lr.ph2287.prol.loopexit
  %.3248.i.i.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph2287.prol.loopexit ], [ %i.td, %bb.cr ], [ %.2247.i.i.lcssa, %.preheader960 ] ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.3248.i.i.lcssa, i64 1
  store i8 34, ptr %.3248.i.i.lcssa, align 1, !tbaa !81
  br label %write_str.exit109.i

.loopexit964:                                     ; preds = %bb.bw, %bb.cn
  %i.tf = phi i8 [ %i.rh, %bb.cn ], [ %i.np, %bb.bw ]
  %.5250.i.i = phi ptr [ %.2247.i.i2280, %bb.cn ], [ %.1246.i.i2273, %bb.bw ] ; 2 uses
  %.5243.i.i = phi ptr [ %.2240.i.i2281, %bb.cn ], [ %.1239.i.i2274, %bb.bw ]
  store i8 %i.tf, ptr %.5250.i.i, align 1
  %i.tg = getelementptr inbounds nuw i8, ptr %.5250.i.i, i64 1
  %i.th = getelementptr inbounds nuw i8, ptr %.5243.i.i, i64 1
  br label %.preheader.preheader

.loopexit965:                                     ; preds = %bb.bx, %bb.co
  %.6251.i.i = phi ptr [ %.2247.i.i2280, %bb.co ], [ %.1246.i.i2273, %bb.bx ] ; 2 uses
  %.6.i.i = phi ptr [ %.2240.i.i2281, %bb.co ], [ %.1239.i.i2274, %bb.bx ] ; 2 uses
  %i.ti = load i16, ptr %.6.i.i, align 1
  store i16 %i.ti, ptr %.6251.i.i, align 1
  %i.tj = getelementptr inbounds nuw i8, ptr %.6251.i.i, i64 2
  %i.tk = getelementptr inbounds nuw i8, ptr %.6.i.i, i64 2
  br label %.preheader.preheader

.loopexit966:                                     ; preds = %bb.by, %bb.cp
  %.7252.i.i = phi ptr [ %.2247.i.i2280, %bb.cp ], [ %.1246.i.i2273, %bb.by ] ; 2 uses
  %.7.i.i = phi ptr [ %.2240.i.i2281, %bb.cp ], [ %.1239.i.i2274, %bb.by ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.7.i.i, i64 3, i1 false)
  %i.tl = getelementptr inbounds nuw i8, ptr %.7252.i.i, i64 3
  %i.tm = getelementptr inbounds nuw i8, ptr %.7.i.i, i64 3
  br label %.preheader.preheader

bb.cs:                                            ; preds = %bb.bz
  %i.tn = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 4
  %i.to = load i32, ptr %.1239.i.i2274, align 1
  store i32 %i.to, ptr %.1246.i.i2273, align 1
  %i.tp = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 4
  br label %.preheader.preheader

bb.ct:                                            ; preds = %bb.ca
  %i.tq = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i.i2273, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i.i2274, i64 5, i1 false)
  %i.tr = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 5
  br label %.preheader.preheader

bb.cu:                                            ; preds = %bb.cb
  %i.ts = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i.i2273, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i.i2274, i64 6, i1 false)
  %i.tt = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 6
  br label %.preheader.preheader

bb.cv:                                            ; preds = %bb.cc
  %i.tu = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i.i2273, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i.i2274, i64 7, i1 false)
  %i.tv = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 7
  br label %.preheader.preheader

bb.cw:                                            ; preds = %bb.cd
  %i.tw = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 8
  %i.tx = load i64, ptr %.1239.i.i2274, align 1
  store i64 %i.tx, ptr %.1246.i.i2273, align 1
  %i.ty = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 8
  br label %.preheader.preheader

bb.cx:                                            ; preds = %bb.ce
  %i.tz = getelementptr inbounds nuw i8, ptr %.1239.i.i2274, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i.i2273, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i.i2274, i64 9, i1 false)
  %i.ua = getelementptr inbounds nuw i8, ptr %.1246.i.i2273, i64 9
end_hunk_7
begin_hunk_8_@yyjson_mut_write_opts_impl:bb.a
  %i.aqy = sub i64 %i.aqw, %i.aqx
  store i64 %i.aqy, ptr %4, align 8, !tbaa !91
  br label %.cont417

.cont417:                                         ; preds = %bb.fo, %.else419
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %spec.store.select, i8 0, i64 16, i1 false)
  br label %yyjson_mut_write_single.exit

bb.fp:                                            ; preds = %bb.fl, %bb.fj, %bb.fh, %bb.fg, %bb.ee, %bb.k, %bb.i
  br i1 %.not29, label %.cont414, label %.else416

.else416:                                         ; preds = %bb.fp
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %.cont414

.cont414:                                         ; preds = %bb.fp, %.else416
  store i32 2, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel432.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel432.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel432.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel432.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_mut_write_single.exit

default.unreachable:                              ; preds = %get_enc_table_with_flag.exit.i
  unreachable

bb.fq:                                            ; preds = %get_enc_table_with_flag.exit.i
  br i1 %.not29, label %.cont420, label %.else422

.else422:                                         ; preds = %bb.fq
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %.cont420

.cont420:                                         ; preds = %bb.fq, %.else422
  store i32 3, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel429.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel429.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel429.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.110, ptr %spec.store.select.sroa.sel429.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_mut_write_single.exit

bb.fr:                                            ; preds = %write_num.exit.i
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %i.adh) #33, !inline_history !376
  br i1 %.not29, label %.cont411, label %.else413

.else413:                                         ; preds = %bb.fr
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %.cont411

.cont411:                                         ; preds = %bb.fr, %.else413
  store i32 4, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel435.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel435.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel435.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.111, ptr %spec.store.select.sroa.sel435.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_mut_write_single.exit

.loopexit:                                        ; preds = %.thread705, %.thread, %.thread715, %.thread725
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %i.x) #33, !inline_history !376
  br i1 %.not29, label %.cont408, label %.else410

.else410:                                         ; preds = %.loopexit
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %.cont408

.cont408:                                         ; preds = %.loopexit, %.else410
  store i32 7, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel438.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel438.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel438.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.76, ptr %spec.store.select.sroa.sel438.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_mut_write_single.exit

bb.fs:                                            ; preds = %bb.e
  %i.aqz = and i32 %2, 65
  %.not31 = icmp eq i32 %i.aqz, 0
  %i.ara = and i32 %2, 2
  %.not942 = icmp eq i32 %i.ara, 0                ; 6 uses
  %i.arb = and i32 %2, 4
  %.not943 = icmp eq i32 %i.arb, 0                ; 4 uses
  br i1 %.not31, label %bb.ng, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  br i1 %.not942, label %bb.fv, label %bb.fu, !prof !25

bb.fu:                                            ; preds = %bb.ft
  %enc_table_esc_slash.enc_table_esc.i.i194 = select i1 %.not943, ptr @enc_table_esc, ptr @enc_table_esc_slash, !prof !25
  br label %get_enc_table_with_flag.exit.i33

bb.fv:                                            ; preds = %bb.ft
  %enc_table_cpy_slash.enc_table_cpy.i.i32 = select i1 %.not943, ptr @enc_table_cpy, ptr @enc_table_cpy_slash, !prof !25
  br label %get_enc_table_with_flag.exit.i33

get_enc_table_with_flag.exit.i33:                 ; preds = %bb.fv, %bb.fu
  %.0.i640.i = phi ptr [ %enc_table_esc_slash.enc_table_esc.i.i194, %bb.fu ], [ %enc_table_cpy_slash.enc_table_cpy.i.i32, %bb.fv ] ; 28 uses
  %i.arc = icmp eq ptr %.0.i640.i, @enc_table_cpy
  %i.ard = and i32 %2, 32
  %.not937 = icmp eq i32 %i.ard, 0                ; 4 uses
  %i.are = and i32 %2, 64
  %.not938 = icmp eq i32 %i.are, 0
  %i.arf = select i1 %.not938, i64 4, i64 2, !prof !25 ; 72 uses
  %i.arg = and i32 %2, 128
  %.not939 = icmp eq i32 %i.arg, 0
  %i.arh = shl i64 %1, 5
  %i.ari = add i64 %i.arh, 64                     ; 3 uses
  %i.arj = tail call ptr %.sroa.0486.0(ptr noundef %.sroa.9.0, i64 noundef %i.ari) #33, !inline_history !385 ; 6 uses
  %.not.i = icmp eq ptr %i.arj, null
  br i1 %.not.i, label %.loopexit1049, label %bb.fw

bb.fw:                                            ; preds = %get_enc_table_with_flag.exit.i33
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.ari ; 2 uses
  %i.arl = load i64, ptr %0, align 8, !tbaa !79   ; 2 uses
  %i.arm = and i64 %i.arl, 7
  %i.arn = icmp eq i64 %i.arm, 7                  ; 4 uses
  %i.aro = zext i1 %i.arn to i8
  %i.arp = lshr i64 %i.arl, 8
  %i.arq = zext i1 %i.arn to i64
  %i.arr = shl nuw nsw i64 %i.arp, %i.arq
  %i.ars = select i1 %i.arn, i8 123, i8 91
  %i.art = getelementptr inbounds nuw i8, ptr %i.arj, i64 1
  store i8 %i.ars, ptr %i.arj, align 1, !tbaa !81
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arj, i64 2
  store i8 10, ptr %i.art, align 1, !tbaa !81
  %i.arv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !81 ; 2 uses
  br i1 %i.arn, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 16
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !85
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.pn.i = phi ptr [ %i.ary, %bb.fx ], [ %i.arw, %bb.fw ]
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.arz = load ptr, ptr %.in.i, align 8, !tbaa !85
  %i.asa = lshr i32 %2, 28
  br label %.outer1054

.outer1054:                                       ; preds = %.outer1054.backedge, %bb.fy
  %.0689.ph = phi ptr [ %0, %bb.fy ], [ %.0689.ph.be, %.outer1054.backedge ] ; 2 uses
  %.0688.ph = phi i64 [ %i.arr, %bb.fy ], [ %.0688.ph.be, %.outer1054.backedge ]
  %.0687.ph = phi i8 [ %i.aro, %bb.fy ], [ %.0687.ph.be, %.outer1054.backedge ] ; 3 uses
  %.0570.i.ph = phi ptr [ %i.arz, %bb.fy ], [ %.0570.i.ph.be, %.outer1054.backedge ]
  %.0547.i.ph = phi ptr [ %i.arj, %bb.fy ], [ %.0547.i.ph.be, %.outer1054.backedge ]
  %.0528.i.ph = phi ptr [ %i.aru, %bb.fy ], [ %.0528.i.ph.be, %.outer1054.backedge ]
  %.0509.i.ph = phi ptr [ %i.ark, %bb.fy ], [ %.0509.i.ph.be, %.outer1054.backedge ]
  %.0498.i.ph = phi ptr [ %i.ark, %bb.fy ], [ %.0498.i.ph.be, %.outer1054.backedge ]
  %.0489.i.ph = phi i64 [ %i.ari, %bb.fy ], [ %.0489.i.ph.be, %.outer1054.backedge ]
  %.0487.i.ph = phi i64 [ 1, %bb.fy ], [ %.0487.i.ph.be, %.outer1054.backedge ] ; 33 uses
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
  %xtraiter5633 = and i64 %.0487.i.ph, 7          ; 2 uses
  %lcmp.mod5634.not = icmp eq i64 %xtraiter5633, 0
  %i.ask = icmp ult i64 %i.asf, 7
  %xtraiter5636 = and i64 %.0487.i.ph, 7          ; 2 uses
  %lcmp.mod5637.not = icmp eq i64 %xtraiter5636, 0
  %i.asl = icmp ult i64 %i.asf, 7
  br label %bb.fz

bb.fz:                                            ; preds = %.outer1054, %bb.mr
  %.0688 = phi i64 [ %i.ctw, %bb.mr ], [ %.0688.ph, %.outer1054 ] ; 8 uses
  %.0570.i = phi ptr [ %i.cua, %bb.mr ], [ %.0570.i.ph, %.outer1054 ] ; 10 uses
  %.0547.i = phi ptr [ %.15562.i, %bb.mr ], [ %.0547.i.ph, %.outer1054 ] ; 29 uses
  %.0528.i = phi ptr [ %.16544.i, %bb.mr ], [ %.0528.i.ph, %.outer1054 ] ; 21 uses
  %.0509.i = phi ptr [ %.15524.i, %bb.mr ], [ %.0509.i.ph, %.outer1054 ] ; 14 uses
  %.0498.i = phi ptr [ %.15.i, %bb.mr ], [ %.0498.i.ph, %.outer1054 ] ; 21 uses
  %.0489.i = phi i64 [ %.8497.i, %bb.mr ], [ %.0489.i.ph, %.outer1054 ] ; 28 uses
  %i.asm = load i64, ptr %.0570.i, align 8, !tbaa !79 ; 5 uses
  %i.asn = trunc i64 %i.asm to i8                 ; 2 uses
  %i.aso = and i8 %i.asn, 7                       ; 3 uses
  switch i8 %i.aso, label %bb.lw [
    i8 5, label %bb.ga
    i8 4, label %bb.kt
  ]

bb.ga:                                            ; preds = %bb.fz
  %i.asp = trunc i64 %.0688 to i32                ; 2 uses
  %i.asq = xor i32 %i.asp, -1
  %i.asr = and i32 %i.asb, %i.asq
  %.not600.i = icmp eq i32 %i.asr, 0              ; 2 uses
  %i.ass = and i32 %i.asb, %i.asp
  %.not601.i = icmp ne i32 %i.ass, 0              ; 2 uses
  %i.ast = lshr i64 %i.asm, 8                     ; 7 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %.0570.i, i64 8
  %i.asv = load ptr, ptr %i.asu, align 8, !tbaa !81 ; 7 uses
  %i.asw = ptrtoaddr ptr %i.asv to i64            ; 2 uses
  %i.asx = mul nuw nsw i64 %i.ast, 6
  %i.asy = select i1 %.not601.i, i64 16, i64 %i.ase
  %i.asz = add i64 %i.asy, %i.asx                 ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %.0528.i, i64 %i.asz
  %.not602.i = icmp ult ptr %i.ata, %.0498.i
  br i1 %.not602.i, label %bb.gc, label %bb.gb, !prof !25

bb.gb:                                            ; preds = %bb.ga
  %i.atb = lshr i64 %.0489.i, 1
  %i.atc = tail call i64 @llvm.umax.i64(i64 %i.atb, i64 %i.asz)
  %i.atd = add i64 %i.atc, 15
  %i.ate = and i64 %i.atd, -16
  %i.atf = add i64 %i.ate, %.0489.i               ; 4 uses
  %i.atg = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0547.i, i64 noundef %.0489.i, i64 noundef %i.atf) #33, !inline_history !385 ; 6 uses
  %.not603.i = icmp eq ptr %i.atg, null
  br i1 %.not603.i, label %.loopexit1049, label %.thread739, !prof !8

.thread739:                                       ; preds = %bb.gb
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
  br label %bb.gc

bb.gc:                                            ; preds = %.thread739, %bb.ga
  %.2549.i = phi ptr [ %i.atg, %.thread739 ], [ %.0547.i, %bb.ga ] ; 2 uses
  %.2530.i = phi ptr [ %i.atr, %.thread739 ], [ %.0528.i, %bb.ga ] ; 3 uses
  %.2511.i = phi ptr [ %i.ats, %.thread739 ], [ %.0509.i, %bb.ga ]
  %.2500.i = phi ptr [ %i.atp, %.thread739 ], [ %.0498.i, %bb.ga ]
  %.1490.i = phi i64 [ %i.atf, %.thread739 ], [ %.0489.i, %bb.ga ]
  %.not.i775.i2007 = select i1 %.not601.i, i1 true, i1 %.not.i775.i20072945
  br i1 %.not.i775.i2007, label %write_indent.exit776.i, label %select.unfold.preheader

select.unfold.preheader:                          ; preds = %bb.gc
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
  br i1 %prol.iter5609.cmp.not, label %select.unfold.prol.loopexit, label %select.unfold.prol, !llvm.loop !386

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
  br i1 %.not.i775.i.7, label %write_indent.exit776.i, label %select.unfold, !llvm.loop !348

write_indent.exit776.i:                           ; preds = %select.unfold.prol.loopexit, %select.unfold, %bb.gc
  %.0.i774.i.lcssa = phi ptr [ %.2530.i, %bb.gc ], [ %.lcssa5378.unr, %select.unfold.prol.loopexit ], [ %i.aud, %select.unfold ] ; 5 uses
  br i1 %i.arc, label %bb.ik, label %.split.i, !prof !25

.split.i:                                         ; preds = %write_indent.exit776.i
  %i.aue = getelementptr inbounds nuw i8, ptr %i.asv, i64 %i.ast ; 4 uses
  store i8 34, ptr %.0.i774.i.lcssa, align 1, !tbaa !81
  %i.auf = ptrtoint ptr %i.aue to i64             ; 5 uses
  %i.aug = add i64 %i.ast, %i.asw
  br label %bb.gd

bb.gd:                                            ; preds = %bb.hp, %.split.i
  %.pn.i646.i = phi ptr [ %.0.i774.i.lcssa, %.split.i ], [ %.8253.i659.i, %bb.hp ]
  %.0238.i647.i = phi ptr [ %i.asv, %.split.i ], [ %i.bbz, %bb.hp ] ; 3 uses
  %.0245.i648.i = getelementptr inbounds nuw i8, ptr %.pn.i646.i, i64 1 ; 2 uses
  %i.auh = ptrtoint ptr %.0238.i647.i to i64
  %i.aui = sub i64 %i.auf, %i.auh                 ; 2 uses
  %i.auj = icmp sgt i64 %i.aui, 15
  br i1 %i.auj, label %.lr.ph2026, label %.preheader1039

.preheader1039:                                   ; preds = %bb.gt, %bb.gd
  %.pre-phi2867 = phi i64 [ %i.aui, %bb.gd ], [ %i.axp, %bb.gt ]
  %.1246.i649.i.lcssa = phi ptr [ %.0245.i648.i, %bb.gd ], [ %i.axm, %bb.gt ] ; 2 uses
  %.1239.i650.i.lcssa = phi ptr [ %.0238.i647.i, %bb.gd ], [ %i.axn, %bb.gt ] ; 2 uses
  %i.auk = icmp sgt i64 %.pre-phi2867, 3
  br i1 %i.auk, label %.lr.ph2032, label %.preheader1037

.lr.ph2026:                                       ; preds = %bb.gd, %bb.gt
  %.1239.i650.i2025 = phi ptr [ %i.axn, %bb.gt ], [ %.0238.i647.i, %bb.gd ] ; 46 uses
  %.1246.i649.i2024 = phi ptr [ %i.axm, %bb.gt ], [ %.0245.i648.i, %bb.gd ] ; 30 uses
  %i.aul = load i8, ptr %.1239.i650.i2025, align 1, !tbaa !81 ; 2 uses
  %i.aum = zext i8 %i.aul to i64
  %i.aun = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.aum
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !81
  %.not272.i728.i = icmp eq i8 %i.auo, 0
  br i1 %.not272.i728.i, label %bb.ge, label %.preheader1034.preheader, !prof !25

bb.ge:                                            ; preds = %.lr.ph2026
  %i.aup = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 1
  %i.auq = load i8, ptr %i.aup, align 1, !tbaa !81
  %i.aur = zext i8 %i.auq to i64
  %i.aus = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.aur
  %i.aut = load i8, ptr %i.aus, align 1, !tbaa !81
  %.not273.i729.i = icmp eq i8 %i.aut, 0
  br i1 %.not273.i729.i, label %bb.gf, label %.loopexit1041, !prof !25

bb.gf:                                            ; preds = %bb.ge
  %i.auu = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 2
  %i.auv = load i8, ptr %i.auu, align 1, !tbaa !81
  %i.auw = zext i8 %i.auv to i64
  %i.aux = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.auw
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !81
  %.not274.i730.i = icmp eq i8 %i.auy, 0
  br i1 %.not274.i730.i, label %bb.gg, label %.loopexit1042, !prof !25

bb.gg:                                            ; preds = %bb.gf
  %i.auz = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 3
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !81
  %i.avb = zext i8 %i.ava to i64
  %i.avc = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.avb
  %i.avd = load i8, ptr %i.avc, align 1, !tbaa !81
  %.not275.i731.i = icmp eq i8 %i.avd, 0
  br i1 %.not275.i731.i, label %bb.gh, label %.loopexit1043, !prof !25

bb.gh:                                            ; preds = %bb.gg
  %i.ave = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 4
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !81
  %i.avg = zext i8 %i.avf to i64
  %i.avh = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.avg
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !81
  %.not276.i732.i = icmp eq i8 %i.avi, 0
  br i1 %.not276.i732.i, label %bb.gi, label %bb.ha, !prof !25

bb.gi:                                            ; preds = %bb.gh
  %i.avj = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 5
  %i.avk = load i8, ptr %i.avj, align 1, !tbaa !81
  %i.avl = zext i8 %i.avk to i64
  %i.avm = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.avl
  %i.avn = load i8, ptr %i.avm, align 1, !tbaa !81
  %.not277.i733.i = icmp eq i8 %i.avn, 0
  br i1 %.not277.i733.i, label %bb.gj, label %bb.hb, !prof !25

bb.gj:                                            ; preds = %bb.gi
  %i.avo = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 6
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !81
  %i.avq = zext i8 %i.avp to i64
  %i.avr = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.avq
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !81
  %.not278.i734.i = icmp eq i8 %i.avs, 0
  br i1 %.not278.i734.i, label %bb.gk, label %bb.hc, !prof !25

bb.gk:                                            ; preds = %bb.gj
  %i.avt = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 7
  %i.avu = load i8, ptr %i.avt, align 1, !tbaa !81
  %i.avv = zext i8 %i.avu to i64
  %i.avw = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.avv
  %i.avx = load i8, ptr %i.avw, align 1, !tbaa !81
  %.not279.i735.i = icmp eq i8 %i.avx, 0
  br i1 %.not279.i735.i, label %bb.gl, label %bb.hd, !prof !25

bb.gl:                                            ; preds = %bb.gk
  %i.avy = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 8
  %i.avz = load i8, ptr %i.avy, align 1, !tbaa !81
  %i.awa = zext i8 %i.avz to i64
  %i.awb = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.awa
  %i.awc = load i8, ptr %i.awb, align 1, !tbaa !81
  %.not280.i736.i = icmp eq i8 %i.awc, 0
  br i1 %.not280.i736.i, label %bb.gm, label %bb.he, !prof !25

bb.gm:                                            ; preds = %bb.gl
  %i.awd = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 9
  %i.awe = load i8, ptr %i.awd, align 1, !tbaa !81
  %i.awf = zext i8 %i.awe to i64
  %i.awg = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.awf
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !81
  %.not281.i737.i = icmp eq i8 %i.awh, 0
  br i1 %.not281.i737.i, label %bb.gn, label %bb.hf, !prof !25

bb.gn:                                            ; preds = %bb.gm
  %i.awi = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 10
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !81
  %i.awk = zext i8 %i.awj to i64
  %i.awl = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.awk
  %i.awm = load i8, ptr %i.awl, align 1, !tbaa !81
  %.not282.i738.i = icmp eq i8 %i.awm, 0
  br i1 %.not282.i738.i, label %bb.go, label %bb.hg, !prof !25

bb.go:                                            ; preds = %bb.gn
  %i.awn = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 11
  %i.awo = load i8, ptr %i.awn, align 1, !tbaa !81
  %i.awp = zext i8 %i.awo to i64
  %i.awq = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.awp
  %i.awr = load i8, ptr %i.awq, align 1, !tbaa !81
  %.not283.i739.i = icmp eq i8 %i.awr, 0
  br i1 %.not283.i739.i, label %bb.gp, label %bb.hh, !prof !25

bb.gp:                                            ; preds = %bb.go
  %i.aws = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 12
  %i.awt = load i8, ptr %i.aws, align 1, !tbaa !81
  %i.awu = zext i8 %i.awt to i64
  %i.awv = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.awu
  %i.aww = load i8, ptr %i.awv, align 1, !tbaa !81
  %.not284.i740.i = icmp eq i8 %i.aww, 0
  br i1 %.not284.i740.i, label %bb.gq, label %bb.hi, !prof !25

bb.gq:                                            ; preds = %bb.gp
  %i.awx = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 13
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !81
  %i.awz = zext i8 %i.awy to i64
  %i.axa = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.awz
  %i.axb = load i8, ptr %i.axa, align 1, !tbaa !81
  %.not285.i741.i = icmp eq i8 %i.axb, 0
  br i1 %.not285.i741.i, label %bb.gr, label %bb.hj, !prof !25

bb.gr:                                            ; preds = %bb.gq
  %i.axc = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 14
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !81
  %i.axe = zext i8 %i.axd to i64
  %i.axf = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.axe
  %i.axg = load i8, ptr %i.axf, align 1, !tbaa !81
  %.not286.i742.i = icmp eq i8 %i.axg, 0
  br i1 %.not286.i742.i, label %bb.gs, label %bb.hk, !prof !25

bb.gs:                                            ; preds = %bb.gr
  %i.axh = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 15
  %i.axi = load i8, ptr %i.axh, align 1, !tbaa !81
  %i.axj = zext i8 %i.axi to i64
  %i.axk = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.axj
  %i.axl = load i8, ptr %i.axk, align 1, !tbaa !81
  %.not287.i743.i = icmp eq i8 %i.axl, 0
  br i1 %.not287.i743.i, label %bb.gt, label %bb.hl, !prof !25

bb.gt:                                            ; preds = %bb.gs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i649.i2024, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i650.i2025, i64 16, i1 false)
  %i.axm = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 16 ; 2 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 16 ; 3 uses
  %i.axo = ptrtoint ptr %i.axn to i64
  %i.axp = sub i64 %i.auf, %i.axo                 ; 2 uses
  %i.axq = icmp sgt i64 %i.axp, 15
  br i1 %i.axq, label %.lr.ph2026, label %.preheader1039, !llvm.loop !331

.preheader1037:                                   ; preds = %bb.gy, %.preheader1039
  %.2247.i651.i.lcssa = phi ptr [ %.1246.i649.i.lcssa, %.preheader1039 ], [ %i.ayx, %bb.gy ] ; 3 uses
  %.2240.i652.i.lcssa = phi ptr [ %.1239.i650.i.lcssa, %.preheader1039 ], [ %i.ayy, %bb.gy ] ; 5 uses
  %i.axr = icmp ugt ptr %i.aue, %.2240.i652.i.lcssa
  br i1 %i.axr, label %.lr.ph2037.preheader, label %write_str.exit744.i

.lr.ph2037.preheader:                             ; preds = %.preheader1037
  %.2240.i652.i.lcssa2772 = ptrtoaddr ptr %.2240.i652.i.lcssa to i64 ; 2 uses
  %scevgep = getelementptr i8, ptr %.2240.i652.i.lcssa, i64 %i.auf
  %i.axs = sub i64 0, %.2240.i652.i.lcssa2772
  %scevgep2773 = getelementptr i8, ptr %scevgep, i64 %i.axs
  %i.axt = sub i64 %i.aug, %.2240.i652.i.lcssa2772
  %i.axu = freeze i64 %i.axt                      ; 2 uses
  %i.axv = add i64 %i.axu, -1
  %xtraiter5610 = and i64 %i.axu, 3               ; 2 uses
  %lcmp.mod5611.not = icmp eq i64 %xtraiter5610, 0
  br i1 %lcmp.mod5611.not, label %.lr.ph2037.prol.loopexit, label %.lr.ph2037.prol

.lr.ph2037.prol:                                  ; preds = %.lr.ph2037.preheader, %bb.gu
  %.3241.i654.i2036.prol = phi ptr [ %i.aya, %bb.gu ], [ %.2240.i652.i.lcssa, %.lr.ph2037.preheader ] ; 3 uses
  %.3248.i653.i2035.prol = phi ptr [ %i.ayb, %bb.gu ], [ %.2247.i651.i.lcssa, %.lr.ph2037.preheader ] ; 3 uses
  %prol.iter5612 = phi i64 [ %prol.iter5612.next, %bb.gu ], [ 0, %.lr.ph2037.preheader ]
  %i.axw = load i8, ptr %.3241.i654.i2036.prol, align 1, !tbaa !81 ; 2 uses
  %i.axx = zext i8 %i.axw to i64
  %i.axy = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.axx
  %i.axz = load i8, ptr %i.axy, align 1, !tbaa !81
  %.not.i656.i.prol = icmp eq i8 %i.axz, 0
  br i1 %.not.i656.i.prol, label %bb.gu, label %.preheader1034.preheader, !prof !25

bb.gu:                                            ; preds = %.lr.ph2037.prol
  %i.aya = getelementptr inbounds nuw i8, ptr %.3241.i654.i2036.prol, i64 1 ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %.3248.i653.i2035.prol, i64 1 ; 3 uses
  store i8 %i.axw, ptr %.3248.i653.i2035.prol, align 1, !tbaa !81
  %prol.iter5612.next = add i64 %prol.iter5612, 1 ; 2 uses
  %prol.iter5612.cmp.not = icmp eq i64 %prol.iter5612.next, %xtraiter5610
  br i1 %prol.iter5612.cmp.not, label %.lr.ph2037.prol.loopexit, label %.lr.ph2037.prol, !llvm.loop !387

.lr.ph2037.prol.loopexit:                         ; preds = %bb.gu, %.lr.ph2037.preheader
  %.lcssa5448.unr = phi ptr [ poison, %.lr.ph2037.preheader ], [ %i.ayb, %bb.gu ]
  %.3241.i654.i2036.unr = phi ptr [ %.2240.i652.i.lcssa, %.lr.ph2037.preheader ], [ %i.aya, %bb.gu ]
  %.3248.i653.i2035.unr = phi ptr [ %.2247.i651.i.lcssa, %.lr.ph2037.preheader ], [ %i.ayb, %bb.gu ]
  %i.ayc = icmp ult i64 %i.axv, 3
  br i1 %i.ayc, label %write_str.exit744.i, label %.lr.ph2037

.lr.ph2032:                                       ; preds = %.preheader1039, %bb.gy
  %.2240.i652.i2031 = phi ptr [ %i.ayy, %bb.gy ], [ %.1239.i650.i.lcssa, %.preheader1039 ] ; 10 uses
  %.2247.i651.i2030 = phi ptr [ %i.ayx, %bb.gy ], [ %.1246.i649.i.lcssa, %.preheader1039 ] ; 6 uses
  %i.ayd = load i8, ptr %.2240.i652.i2031, align 1, !tbaa !81 ; 2 uses
  %i.aye = zext i8 %i.ayd to i64
  %i.ayf = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.aye
  %i.ayg = load i8, ptr %i.ayf, align 1, !tbaa !81
  %.not268.i718.i = icmp eq i8 %i.ayg, 0
  br i1 %.not268.i718.i, label %bb.gv, label %.preheader1034.preheader, !prof !25

bb.gv:                                            ; preds = %.lr.ph2032
  %i.ayh = getelementptr inbounds nuw i8, ptr %.2240.i652.i2031, i64 1
  %i.ayi = load i8, ptr %i.ayh, align 1, !tbaa !81
  %i.ayj = zext i8 %i.ayi to i64
  %i.ayk = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.ayj
  %i.ayl = load i8, ptr %i.ayk, align 1, !tbaa !81
  %.not269.i719.i = icmp eq i8 %i.ayl, 0
  br i1 %.not269.i719.i, label %bb.gw, label %.loopexit1041, !prof !25

bb.gw:                                            ; preds = %bb.gv
  %i.aym = getelementptr inbounds nuw i8, ptr %.2240.i652.i2031, i64 2
  %i.ayn = load i8, ptr %i.aym, align 1, !tbaa !81
  %i.ayo = zext i8 %i.ayn to i64
  %i.ayp = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.ayo
  %i.ayq = load i8, ptr %i.ayp, align 1, !tbaa !81
  %.not270.i722.i = icmp eq i8 %i.ayq, 0
  br i1 %.not270.i722.i, label %bb.gx, label %.loopexit1042, !prof !25

bb.gx:                                            ; preds = %bb.gw
  %i.ayr = getelementptr inbounds nuw i8, ptr %.2240.i652.i2031, i64 3
  %i.ays = load i8, ptr %i.ayr, align 1, !tbaa !81
  %i.ayt = zext i8 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.ayt
  %i.ayv = load i8, ptr %i.ayu, align 1, !tbaa !81
  %.not271.i725.i = icmp eq i8 %i.ayv, 0
  br i1 %.not271.i725.i, label %bb.gy, label %.loopexit1043, !prof !25

bb.gy:                                            ; preds = %bb.gx
  %i.ayw = load i32, ptr %.2240.i652.i2031, align 1
  store i32 %i.ayw, ptr %.2247.i651.i2030, align 1
  %i.ayx = getelementptr inbounds nuw i8, ptr %.2247.i651.i2030, i64 4 ; 2 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %.2240.i652.i2031, i64 4 ; 3 uses
  %i.ayz = ptrtoint ptr %i.ayy to i64
  %i.aza = sub i64 %i.auf, %i.ayz
  %i.azb = icmp sgt i64 %i.aza, 3
  br i1 %i.azb, label %.lr.ph2032, label %.preheader1037, !llvm.loop !333

.lr.ph2037:                                       ; preds = %.lr.ph2037.prol.loopexit, %bb.gz
  %.3241.i654.i2036 = phi ptr [ %i.azy, %bb.gz ], [ %.3241.i654.i2036.unr, %.lr.ph2037.prol.loopexit ] ; 9 uses
  %.3248.i653.i2035 = phi ptr [ %i.azz, %bb.gz ], [ %.3248.i653.i2035.unr, %.lr.ph2037.prol.loopexit ] ; 6 uses
  %i.azc = load i8, ptr %.3241.i654.i2036, align 1, !tbaa !81 ; 2 uses
  %i.azd = zext i8 %i.azc to i64
  %i.aze = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.azd
  %i.azf = load i8, ptr %i.aze, align 1, !tbaa !81
  %.not.i656.i = icmp eq i8 %i.azf, 0
  br i1 %.not.i656.i, label %.lr.ph2037.1, label %.preheader1034.preheader, !prof !25

.lr.ph2037.1:                                     ; preds = %.lr.ph2037
  %i.azg = getelementptr inbounds nuw i8, ptr %.3241.i654.i2036, i64 1
  %i.azh = getelementptr inbounds nuw i8, ptr %.3248.i653.i2035, i64 1 ; 2 uses
  store i8 %i.azc, ptr %.3248.i653.i2035, align 1, !tbaa !81
  %i.azi = load i8, ptr %i.azg, align 1, !tbaa !81 ; 2 uses
  %i.azj = zext i8 %i.azi to i64
  %i.azk = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.azj
  %i.azl = load i8, ptr %i.azk, align 1, !tbaa !81
  %.not.i656.i.1 = icmp eq i8 %i.azl, 0
  br i1 %.not.i656.i.1, label %.lr.ph2037.2, label %.preheader1034.preheader.loopexit.loopexit.split.loop.exit6339, !prof !25

.lr.ph2037.2:                                     ; preds = %.lr.ph2037.1
  %i.azm = getelementptr inbounds nuw i8, ptr %.3241.i654.i2036, i64 2
  %i.azn = getelementptr inbounds nuw i8, ptr %.3248.i653.i2035, i64 2 ; 2 uses
  store i8 %i.azi, ptr %i.azh, align 1, !tbaa !81
  %i.azo = load i8, ptr %i.azm, align 1, !tbaa !81 ; 2 uses
  %i.azp = zext i8 %i.azo to i64
  %i.azq = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.azp
  %i.azr = load i8, ptr %i.azq, align 1, !tbaa !81
  %.not.i656.i.2 = icmp eq i8 %i.azr, 0
  br i1 %.not.i656.i.2, label %.lr.ph2037.3, label %.preheader1034.preheader.loopexit.loopexit.split.loop.exit6336, !prof !25

.lr.ph2037.3:                                     ; preds = %.lr.ph2037.2
  %i.azs = getelementptr inbounds nuw i8, ptr %.3241.i654.i2036, i64 3
  %i.azt = getelementptr inbounds nuw i8, ptr %.3248.i653.i2035, i64 3 ; 2 uses
  store i8 %i.azo, ptr %i.azn, align 1, !tbaa !81
  %i.azu = load i8, ptr %i.azs, align 1, !tbaa !81 ; 2 uses
  %i.azv = zext i8 %i.azu to i64
  %i.azw = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.azv
  %i.azx = load i8, ptr %i.azw, align 1, !tbaa !81
  %.not.i656.i.3 = icmp eq i8 %i.azx, 0
  br i1 %.not.i656.i.3, label %bb.gz, label %.preheader1034.preheader.loopexit.loopexit.split.loop.exit, !prof !25

bb.gz:                                            ; preds = %.lr.ph2037.3
  %i.azy = getelementptr inbounds nuw i8, ptr %.3241.i654.i2036, i64 4 ; 2 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %.3248.i653.i2035, i64 4 ; 2 uses
  store i8 %i.azu, ptr %i.azt, align 1, !tbaa !81
  %exitcond.not.3 = icmp eq ptr %i.azy, %scevgep2773
  br i1 %exitcond.not.3, label %write_str.exit744.i, label %.lr.ph2037, !llvm.loop !334

.loopexit1041:                                    ; preds = %bb.ge, %bb.gv
  %i.baa = phi i8 [ %i.ayd, %bb.gv ], [ %i.aul, %bb.ge ]
  %.5250.i720.i = phi ptr [ %.2247.i651.i2030, %bb.gv ], [ %.1246.i649.i2024, %bb.ge ] ; 2 uses
  %.5243.i721.i = phi ptr [ %.2240.i652.i2031, %bb.gv ], [ %.1239.i650.i2025, %bb.ge ]
  store i8 %i.baa, ptr %.5250.i720.i, align 1
  %i.bab = getelementptr inbounds nuw i8, ptr %.5250.i720.i, i64 1
  %i.bac = getelementptr inbounds nuw i8, ptr %.5243.i721.i, i64 1
  br label %.preheader1034.preheader

.loopexit1042:                                    ; preds = %bb.gf, %bb.gw
  %.6251.i723.i = phi ptr [ %.2247.i651.i2030, %bb.gw ], [ %.1246.i649.i2024, %bb.gf ] ; 2 uses
  %.6.i724.i = phi ptr [ %.2240.i652.i2031, %bb.gw ], [ %.1239.i650.i2025, %bb.gf ] ; 2 uses
  %i.bad = load i16, ptr %.6.i724.i, align 1
  store i16 %i.bad, ptr %.6251.i723.i, align 1
  %i.bae = getelementptr inbounds nuw i8, ptr %.6251.i723.i, i64 2
  %i.baf = getelementptr inbounds nuw i8, ptr %.6.i724.i, i64 2
  br label %.preheader1034.preheader

.loopexit1043:                                    ; preds = %bb.gg, %bb.gx
  %.7252.i726.i = phi ptr [ %.2247.i651.i2030, %bb.gx ], [ %.1246.i649.i2024, %bb.gg ] ; 2 uses
  %.7.i727.i = phi ptr [ %.2240.i652.i2031, %bb.gx ], [ %.1239.i650.i2025, %bb.gg ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i726.i, ptr noundef nonnull align 1 dereferenceable(3) %.7.i727.i, i64 3, i1 false)
  %i.bag = getelementptr inbounds nuw i8, ptr %.7252.i726.i, i64 3
  %i.bah = getelementptr inbounds nuw i8, ptr %.7.i727.i, i64 3
  br label %.preheader1034.preheader

bb.ha:                                            ; preds = %bb.gh
  %i.bai = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 4
  %i.baj = load i32, ptr %.1239.i650.i2025, align 1
  store i32 %i.baj, ptr %.1246.i649.i2024, align 1
  %i.bak = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 4
  br label %.preheader1034.preheader

bb.hb:                                            ; preds = %bb.gi
  %i.bal = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i649.i2024, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i650.i2025, i64 5, i1 false)
  %i.bam = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 5
  br label %.preheader1034.preheader

bb.hc:                                            ; preds = %bb.gj
  %i.ban = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i649.i2024, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i650.i2025, i64 6, i1 false)
  %i.bao = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 6
  br label %.preheader1034.preheader

bb.hd:                                            ; preds = %bb.gk
  %i.bap = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i649.i2024, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i650.i2025, i64 7, i1 false)
  %i.baq = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 7
  br label %.preheader1034.preheader

bb.he:                                            ; preds = %bb.gl
  %i.bar = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 8
  %i.bas = load i64, ptr %.1239.i650.i2025, align 1
  store i64 %i.bas, ptr %.1246.i649.i2024, align 1
  %i.bat = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 8
  br label %.preheader1034.preheader

bb.hf:                                            ; preds = %bb.gm
  %i.bau = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i649.i2024, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i650.i2025, i64 9, i1 false)
  %i.bav = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 9
  br label %.preheader1034.preheader

bb.hg:                                            ; preds = %bb.gn
  %i.baw = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i649.i2024, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i650.i2025, i64 10, i1 false)
  %i.bax = getelementptr inbounds nuw i8, ptr %.1246.i649.i2024, i64 10
end_hunk_8
begin_hunk_9_@yyjson_mut_write_opts_impl:bb.a
.preheader1034.backedge:                          ; preds = %bb.hz, %bb.ia, %bb.ii, %bb.ij, %bb.hr, %.critedge.i705.i, %.critedge316.i699.i, %bb.ic, %.critedge321.i680.i, %.critedge325.i671.i
  %.8253.i659.i.be = phi ptr [ %i.bhg, %bb.ii ], [ %i.bcg, %bb.hr ], [ %i.bcs, %.critedge.i705.i ], [ %i.bdc, %.critedge316.i699.i ], [ %i.bdg, %bb.hz ], [ %i.bdo, %bb.ia ], [ %i.bej, %bb.ic ], [ %i.bfg, %.critedge321.i680.i ], [ %i.bhc, %.critedge325.i671.i ], [ %i.bhi, %bb.ij ]
  %.8.i660.i.be = phi ptr [ %i.bhf, %bb.ii ], [ %i.bch, %bb.hr ], [ %i.bct, %.critedge.i705.i ], [ %i.bbl, %.critedge316.i699.i ], [ %i.bdh, %bb.hz ], [ %i.bdp, %bb.ia ], [ %i.bek, %bb.ic ], [ %i.bfh, %.critedge321.i680.i ], [ %i.bbl, %.critedge325.i671.i ], [ %i.bhj, %bb.ij ]
  br label %.preheader1034

bb.ia:                                            ; preds = %bb.ho
  store i32 808482140, ptr %.8253.i659.i, align 1
  %i.bdi = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 4
  %i.bdj = load i8, ptr %.8.i660.i, align 1, !tbaa !81
  %i.bdk = zext i8 %i.bdj to i64
  %i.bdl = shl nuw nsw i64 %i.bdk, 1
  %i.bdm = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.bdl
  %i.bdn = load i16, ptr %i.bdm, align 2
  store i16 %i.bdn, ptr %i.bdi, align 1
  %i.bdo = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 6
  %i.bdp = getelementptr inbounds nuw i8, ptr %.8.i660.i, i64 1
  br label %.preheader1034.backedge

bb.ib:                                            ; preds = %bb.ho
  %.sroa.0.0.copyload.i332.i688.i = load i16, ptr %.8.i660.i, align 1 ; 3 uses
  %.sroa.0602.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i688.i to i32 ; 2 uses
  %i.bdq = and i32 %.sroa.0602.0.insert.ext, 49376
  %i.bdr = icmp ne i32 %i.bdq, 32960
  %i.bds = and i32 %.sroa.0602.0.insert.ext, 30
  %i.bdt = icmp eq i32 %i.bds, 0
  %.not298.i689.i = or i1 %i.bdr, %i.bdt
  br i1 %.not298.i689.i, label %.thread755, label %bb.ic, !prof !8

bb.ic:                                            ; preds = %bb.ib
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

bb.id:                                            ; preds = %bb.ho
  %.sroa.0.0.copyload.i.i675.i = load i16, ptr %.8.i660.i, align 1 ; 3 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %.8.i660.i, i64 2
  %i.bem = load i8, ptr %i.bel, align 1, !tbaa !81 ; 2 uses
  %.sroa.4.0.insert.ext.i.i676.i = zext i8 %i.bem to i32
  %.sroa.4.0.insert.shift.i.i677.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i676.i, 16
  %.sroa.0.0.insert.ext.i.i678.i = zext i16 %.sroa.0.0.copyload.i.i675.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i679.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i677.i, %.sroa.0.0.insert.ext.i.i678.i
  %i.ben = and i32 %.sroa.0.0.insert.insert.i.i679.i, 12632304
  %i.beo = icmp eq i32 %i.ben, 8421600
  br i1 %i.beo, label %bb.ie, label %.thread755, !prof !25

bb.ie:                                            ; preds = %bb.id
  %i.bep = and i32 %.sroa.0.0.insert.ext.i.i678.i, 8207
  switch i32 %i.bep, label %.critedge321.i680.i [
    i32 8205, label %.thread755
    i32 0, label %.thread755
  ], !prof !335

.critedge321.i680.i:                              ; preds = %bb.ie
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

bb.if:                                            ; preds = %bb.ho
  %.sroa.0.0.copyload.i333.i665.i = load i32, ptr %.8.i660.i, align 1 ; 9 uses
  %i.bfi = and i32 %.sroa.0.0.copyload.i333.i665.i, -1061109512
  %i.bfj = icmp ne i32 %i.bfi, -2139062032
  %i.bfk = and i32 %.sroa.0.0.copyload.i333.i665.i, 12295
  %.not288.i666.i = icmp eq i32 %i.bfk, 0
  %or.cond323.i667.i = or i1 %i.bfj, %.not288.i666.i
  %i.bfl = lshr i32 %.sroa.0.0.copyload.i333.i665.i, 24
  br i1 %or.cond323.i667.i, label %.thread755, label %bb.ig, !prof !258

bb.ig:                                            ; preds = %bb.if
  %i.bfm = and i32 %.sroa.0.0.copyload.i333.i665.i, 4
  %i.bfn = icmp ne i32 %i.bfm, 0
  %i.bfo = and i32 %.sroa.0.0.copyload.i333.i665.i, 12291
  %i.bfp = icmp ne i32 %i.bfo, 0
  %.not291.i668.i = and i1 %i.bfn, %i.bfp
  br i1 %.not291.i668.i, label %.thread755, label %.critedge325.i671.i, !prof !8

.critedge325.i671.i:                              ; preds = %bb.ig
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

bb.ih:                                            ; preds = %bb.ho, %bb.hn
  %i.bhd = phi i8 [ %i.bby, %bb.ho ], [ %i.bbq, %bb.hn ]
  br i1 %.not942, label %.thread745, label %.thread755

.thread745:                                       ; preds = %bb.hx, %bb.hy, %bb.hv, %bb.ht, %bb.hw, %bb.hw, %bb.hu, %bb.hu, %bb.hq, %bb.ih
  %i.bhe = phi i8 [ %i.bcx, %bb.hx ], [ %i.bcx, %bb.hy ], [ %i.bcq, %bb.hv ], [ %i.bck, %bb.ht ], [ %i.bcq, %bb.hw ], [ %i.bcq, %bb.hw ], [ %i.bck, %bb.hu ], [ %i.bck, %bb.hu ], [ %i.bcf, %bb.hq ], [ %i.bhd, %bb.ih ]
  br i1 %.not937, label %.loopexit1021, label %bb.ii

bb.ii:                                            ; preds = %.thread745
  %i.bhf = getelementptr inbounds nuw i8, ptr %.8.i660.i, i64 1
  %i.bhg = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 1
  store i8 %i.bhe, ptr %.8253.i659.i, align 1, !tbaa !81
  br label %.preheader1034.backedge

.thread755:                                       ; preds = %bb.if, %bb.ig, %bb.id, %bb.ie, %bb.ie, %bb.ib, %bb.ih
  br i1 %.not937, label %.loopexit1021, label %bb.ij

bb.ij:                                            ; preds = %.thread755
  store i16 30044, ptr %.8253.i659.i, align 1
  %i.bhh = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 2
  store i32 1145456198, ptr %i.bhh, align 1
  %i.bhi = getelementptr inbounds nuw i8, ptr %.8253.i659.i, i64 6
  %i.bhj = getelementptr inbounds nuw i8, ptr %.8.i660.i, i64 1
  br label %.preheader1034.backedge

bb.ik:                                            ; preds = %write_indent.exit776.i
  %i.bhk = load i64, ptr %.0570.i, align 8, !tbaa !79
  %i.bhl = and i64 %i.bhk, 24
  %.not604.i = icmp eq i64 %i.bhl, 0
  store i8 34, ptr %.0.i774.i.lcssa, align 1, !tbaa !81
  br i1 %.not604.i, label %.split572.i, label %bb.ks

.split572.i:                                      ; preds = %bb.ik
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.asv, i64 %i.ast ; 4 uses
  %i.bhn = ptrtoint ptr %i.bhm to i64             ; 5 uses
  %i.bho = add i64 %i.ast, %i.asw
  br label %bb.il

bb.il:                                            ; preds = %bb.jx, %.split572.i
  %.pn.i.i97 = phi ptr [ %.0.i774.i.lcssa, %.split572.i ], [ %.8253.i.i110, %bb.jx ]
  %.0238.i.i98 = phi ptr [ %i.asv, %.split572.i ], [ %i.bph, %bb.jx ] ; 3 uses
  %.0245.i.i99 = getelementptr inbounds nuw i8, ptr %.pn.i.i97, i64 1 ; 2 uses
  %i.bhp = ptrtoint ptr %.0238.i.i98 to i64
  %i.bhq = sub i64 %i.bhn, %i.bhp                 ; 2 uses
  %i.bhr = icmp sgt i64 %i.bhq, 15
  br i1 %i.bhr, label %.lr.ph2076, label %.preheader1025

.preheader1025:                                   ; preds = %bb.jb, %bb.il
  %.pre-phi2864 = phi i64 [ %i.bhq, %bb.il ], [ %i.bkx, %bb.jb ]
  %.1246.i.i100.lcssa = phi ptr [ %.0245.i.i99, %bb.il ], [ %i.bku, %bb.jb ] ; 2 uses
  %.1239.i.i101.lcssa = phi ptr [ %.0238.i.i98, %bb.il ], [ %i.bkv, %bb.jb ] ; 2 uses
  %i.bhs = icmp sgt i64 %.pre-phi2864, 3
  br i1 %i.bhs, label %.lr.ph2082, label %.preheader1023

.lr.ph2076:                                       ; preds = %bb.il, %bb.jb
  %.1239.i.i1012074 = phi ptr [ %i.bkv, %bb.jb ], [ %.0238.i.i98, %bb.il ] ; 46 uses
  %.1246.i.i1002073 = phi ptr [ %i.bku, %bb.jb ], [ %.0245.i.i99, %bb.il ] ; 30 uses
  %i.bht = load i8, ptr %.1239.i.i1012074, align 1, !tbaa !81 ; 2 uses
  %i.bhu = zext i8 %i.bht to i64
  %i.bhv = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bhu
  %i.bhw = load i8, ptr %i.bhv, align 1, !tbaa !81
  %.not272.i.i176 = icmp eq i8 %i.bhw, 0
  br i1 %.not272.i.i176, label %bb.im, label %.preheader1020.preheader, !prof !25

bb.im:                                            ; preds = %.lr.ph2076
  %i.bhx = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 1
  %i.bhy = load i8, ptr %i.bhx, align 1, !tbaa !81
  %i.bhz = zext i8 %i.bhy to i64
  %i.bia = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bhz
  %i.bib = load i8, ptr %i.bia, align 1, !tbaa !81
  %.not273.i.i177 = icmp eq i8 %i.bib, 0
  br i1 %.not273.i.i177, label %bb.in, label %.loopexit1027, !prof !25

bb.in:                                            ; preds = %bb.im
  %i.bic = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 2
  %i.bid = load i8, ptr %i.bic, align 1, !tbaa !81
  %i.bie = zext i8 %i.bid to i64
  %i.bif = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bie
  %i.big = load i8, ptr %i.bif, align 1, !tbaa !81
  %.not274.i.i178 = icmp eq i8 %i.big, 0
  br i1 %.not274.i.i178, label %bb.io, label %.loopexit1028, !prof !25

bb.io:                                            ; preds = %bb.in
  %i.bih = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 3
  %i.bii = load i8, ptr %i.bih, align 1, !tbaa !81
  %i.bij = zext i8 %i.bii to i64
  %i.bik = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bij
  %i.bil = load i8, ptr %i.bik, align 1, !tbaa !81
  %.not275.i.i179 = icmp eq i8 %i.bil, 0
  br i1 %.not275.i.i179, label %bb.ip, label %.loopexit1029, !prof !25

bb.ip:                                            ; preds = %bb.io
  %i.bim = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 4
  %i.bin = load i8, ptr %i.bim, align 1, !tbaa !81
  %i.bio = zext i8 %i.bin to i64
  %i.bip = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bio
  %i.biq = load i8, ptr %i.bip, align 1, !tbaa !81
  %.not276.i.i180 = icmp eq i8 %i.biq, 0
  br i1 %.not276.i.i180, label %bb.iq, label %bb.ji, !prof !25

bb.iq:                                            ; preds = %bb.ip
  %i.bir = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 5
  %i.bis = load i8, ptr %i.bir, align 1, !tbaa !81
  %i.bit = zext i8 %i.bis to i64
  %i.biu = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bit
  %i.biv = load i8, ptr %i.biu, align 1, !tbaa !81
  %.not277.i.i181 = icmp eq i8 %i.biv, 0
  br i1 %.not277.i.i181, label %bb.ir, label %bb.jj, !prof !25

bb.ir:                                            ; preds = %bb.iq
  %i.biw = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 6
  %i.bix = load i8, ptr %i.biw, align 1, !tbaa !81
  %i.biy = zext i8 %i.bix to i64
  %i.biz = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.biy
  %i.bja = load i8, ptr %i.biz, align 1, !tbaa !81
  %.not278.i.i182 = icmp eq i8 %i.bja, 0
  br i1 %.not278.i.i182, label %bb.is, label %bb.jk, !prof !25

bb.is:                                            ; preds = %bb.ir
  %i.bjb = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 7
  %i.bjc = load i8, ptr %i.bjb, align 1, !tbaa !81
  %i.bjd = zext i8 %i.bjc to i64
  %i.bje = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjd
  %i.bjf = load i8, ptr %i.bje, align 1, !tbaa !81
  %.not279.i.i183 = icmp eq i8 %i.bjf, 0
  br i1 %.not279.i.i183, label %bb.it, label %bb.jl, !prof !25

bb.it:                                            ; preds = %bb.is
  %i.bjg = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 8
  %i.bjh = load i8, ptr %i.bjg, align 1, !tbaa !81
  %i.bji = zext i8 %i.bjh to i64
  %i.bjj = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bji
  %i.bjk = load i8, ptr %i.bjj, align 1, !tbaa !81
  %.not280.i.i184 = icmp eq i8 %i.bjk, 0
  br i1 %.not280.i.i184, label %bb.iu, label %bb.jm, !prof !25

bb.iu:                                            ; preds = %bb.it
  %i.bjl = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 9
  %i.bjm = load i8, ptr %i.bjl, align 1, !tbaa !81
  %i.bjn = zext i8 %i.bjm to i64
  %i.bjo = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjn
  %i.bjp = load i8, ptr %i.bjo, align 1, !tbaa !81
  %.not281.i.i185 = icmp eq i8 %i.bjp, 0
  br i1 %.not281.i.i185, label %bb.iv, label %bb.jn, !prof !25

bb.iv:                                            ; preds = %bb.iu
  %i.bjq = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 10
  %i.bjr = load i8, ptr %i.bjq, align 1, !tbaa !81
  %i.bjs = zext i8 %i.bjr to i64
  %i.bjt = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjs
  %i.bju = load i8, ptr %i.bjt, align 1, !tbaa !81
  %.not282.i.i186 = icmp eq i8 %i.bju, 0
  br i1 %.not282.i.i186, label %bb.iw, label %bb.jo, !prof !25

bb.iw:                                            ; preds = %bb.iv
  %i.bjv = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 11
  %i.bjw = load i8, ptr %i.bjv, align 1, !tbaa !81
  %i.bjx = zext i8 %i.bjw to i64
  %i.bjy = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bjx
  %i.bjz = load i8, ptr %i.bjy, align 1, !tbaa !81
  %.not283.i.i187 = icmp eq i8 %i.bjz, 0
  br i1 %.not283.i.i187, label %bb.ix, label %bb.jp, !prof !25

bb.ix:                                            ; preds = %bb.iw
  %i.bka = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 12
  %i.bkb = load i8, ptr %i.bka, align 1, !tbaa !81
  %i.bkc = zext i8 %i.bkb to i64
  %i.bkd = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bkc
  %i.bke = load i8, ptr %i.bkd, align 1, !tbaa !81
  %.not284.i.i188 = icmp eq i8 %i.bke, 0
  br i1 %.not284.i.i188, label %bb.iy, label %bb.jq, !prof !25

bb.iy:                                            ; preds = %bb.ix
  %i.bkf = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 13
  %i.bkg = load i8, ptr %i.bkf, align 1, !tbaa !81
  %i.bkh = zext i8 %i.bkg to i64
  %i.bki = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bkh
  %i.bkj = load i8, ptr %i.bki, align 1, !tbaa !81
  %.not285.i.i189 = icmp eq i8 %i.bkj, 0
  br i1 %.not285.i.i189, label %bb.iz, label %bb.jr, !prof !25

bb.iz:                                            ; preds = %bb.iy
  %i.bkk = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 14
  %i.bkl = load i8, ptr %i.bkk, align 1, !tbaa !81
  %i.bkm = zext i8 %i.bkl to i64
  %i.bkn = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bkm
  %i.bko = load i8, ptr %i.bkn, align 1, !tbaa !81
  %.not286.i.i190 = icmp eq i8 %i.bko, 0
  br i1 %.not286.i.i190, label %bb.ja, label %bb.js, !prof !25

bb.ja:                                            ; preds = %bb.iz
  %i.bkp = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 15
  %i.bkq = load i8, ptr %i.bkp, align 1, !tbaa !81
  %i.bkr = zext i8 %i.bkq to i64
  %i.bks = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bkr
  %i.bkt = load i8, ptr %i.bks, align 1, !tbaa !81
  %.not287.i.i191 = icmp eq i8 %i.bkt, 0
  br i1 %.not287.i.i191, label %bb.jb, label %bb.jt, !prof !25

bb.jb:                                            ; preds = %bb.ja
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i.i1002073, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i.i1012074, i64 16, i1 false)
  %i.bku = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 16 ; 2 uses
  %i.bkv = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 16 ; 3 uses
  %i.bkw = ptrtoint ptr %i.bkv to i64
  %i.bkx = sub i64 %i.bhn, %i.bkw                 ; 2 uses
  %i.bky = icmp sgt i64 %i.bkx, 15
  br i1 %i.bky, label %.lr.ph2076, label %.preheader1025, !llvm.loop !331

.preheader1023:                                   ; preds = %bb.jg, %.preheader1025
  %.2247.i.i102.lcssa = phi ptr [ %.1246.i.i100.lcssa, %.preheader1025 ], [ %i.bmf, %bb.jg ] ; 3 uses
  %.2240.i.i103.lcssa = phi ptr [ %.1239.i.i101.lcssa, %.preheader1025 ], [ %i.bmg, %bb.jg ] ; 5 uses
  %i.bkz = icmp ugt ptr %i.bhm, %.2240.i.i103.lcssa
  br i1 %i.bkz, label %.lr.ph2087.preheader, label %write_str.exit744.i

.lr.ph2087.preheader:                             ; preds = %.preheader1023
  %.2240.i.i103.lcssa2775 = ptrtoaddr ptr %.2240.i.i103.lcssa to i64 ; 2 uses
  %scevgep2774 = getelementptr i8, ptr %.2240.i.i103.lcssa, i64 %i.bhn
  %i.bla = sub i64 0, %.2240.i.i103.lcssa2775
  %scevgep2776 = getelementptr i8, ptr %scevgep2774, i64 %i.bla
  %i.blb = sub i64 %i.bho, %.2240.i.i103.lcssa2775
  %i.blc = freeze i64 %i.blb                      ; 2 uses
  %i.bld = add i64 %i.blc, -1
  %xtraiter5620 = and i64 %i.blc, 3               ; 2 uses
  %lcmp.mod5621.not = icmp eq i64 %xtraiter5620, 0
  br i1 %lcmp.mod5621.not, label %.lr.ph2087.prol.loopexit, label %.lr.ph2087.prol

.lr.ph2087.prol:                                  ; preds = %.lr.ph2087.preheader, %bb.jc
  %.3241.i.i1052086.prol = phi ptr [ %i.bli, %bb.jc ], [ %.2240.i.i103.lcssa, %.lr.ph2087.preheader ] ; 3 uses
  %.3248.i.i1042085.prol = phi ptr [ %i.blj, %bb.jc ], [ %.2247.i.i102.lcssa, %.lr.ph2087.preheader ] ; 3 uses
  %prol.iter5622 = phi i64 [ %prol.iter5622.next, %bb.jc ], [ 0, %.lr.ph2087.preheader ]
  %i.ble = load i8, ptr %.3241.i.i1052086.prol, align 1, !tbaa !81 ; 2 uses
  %i.blf = zext i8 %i.ble to i64
  %i.blg = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.blf
  %i.blh = load i8, ptr %i.blg, align 1, !tbaa !81
  %.not.i642.i.prol = icmp eq i8 %i.blh, 0
  br i1 %.not.i642.i.prol, label %bb.jc, label %.preheader1020.preheader, !prof !25

bb.jc:                                            ; preds = %.lr.ph2087.prol
  %i.bli = getelementptr inbounds nuw i8, ptr %.3241.i.i1052086.prol, i64 1 ; 2 uses
  %i.blj = getelementptr inbounds nuw i8, ptr %.3248.i.i1042085.prol, i64 1 ; 3 uses
  store i8 %i.ble, ptr %.3248.i.i1042085.prol, align 1, !tbaa !81
  %prol.iter5622.next = add i64 %prol.iter5622, 1 ; 2 uses
  %prol.iter5622.cmp.not = icmp eq i64 %prol.iter5622.next, %xtraiter5620
  br i1 %prol.iter5622.cmp.not, label %.lr.ph2087.prol.loopexit, label %.lr.ph2087.prol, !llvm.loop !388

.lr.ph2087.prol.loopexit:                         ; preds = %bb.jc, %.lr.ph2087.preheader
  %.lcssa5531.unr = phi ptr [ poison, %.lr.ph2087.preheader ], [ %i.blj, %bb.jc ]
  %.3241.i.i1052086.unr = phi ptr [ %.2240.i.i103.lcssa, %.lr.ph2087.preheader ], [ %i.bli, %bb.jc ]
  %.3248.i.i1042085.unr = phi ptr [ %.2247.i.i102.lcssa, %.lr.ph2087.preheader ], [ %i.blj, %bb.jc ]
  %i.blk = icmp ult i64 %i.bld, 3
  br i1 %i.blk, label %write_str.exit744.i, label %.lr.ph2087

.lr.ph2082:                                       ; preds = %.preheader1025, %bb.jg
  %.2240.i.i1032081 = phi ptr [ %i.bmg, %bb.jg ], [ %.1239.i.i101.lcssa, %.preheader1025 ] ; 10 uses
  %.2247.i.i1022080 = phi ptr [ %i.bmf, %bb.jg ], [ %.1246.i.i100.lcssa, %.preheader1025 ] ; 6 uses
  %i.bll = load i8, ptr %.2240.i.i1032081, align 1, !tbaa !81 ; 2 uses
  %i.blm = zext i8 %i.bll to i64
  %i.bln = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.blm
  %i.blo = load i8, ptr %i.bln, align 1, !tbaa !81
  %.not268.i.i166 = icmp eq i8 %i.blo, 0
  br i1 %.not268.i.i166, label %bb.jd, label %.preheader1020.preheader, !prof !25

bb.jd:                                            ; preds = %.lr.ph2082
  %i.blp = getelementptr inbounds nuw i8, ptr %.2240.i.i1032081, i64 1
  %i.blq = load i8, ptr %i.blp, align 1, !tbaa !81
  %i.blr = zext i8 %i.blq to i64
  %i.bls = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.blr
  %i.blt = load i8, ptr %i.bls, align 1, !tbaa !81
  %.not269.i.i167 = icmp eq i8 %i.blt, 0
  br i1 %.not269.i.i167, label %bb.je, label %.loopexit1027, !prof !25

bb.je:                                            ; preds = %bb.jd
  %i.blu = getelementptr inbounds nuw i8, ptr %.2240.i.i1032081, i64 2
  %i.blv = load i8, ptr %i.blu, align 1, !tbaa !81
  %i.blw = zext i8 %i.blv to i64
  %i.blx = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.blw
  %i.bly = load i8, ptr %i.blx, align 1, !tbaa !81
  %.not270.i.i170 = icmp eq i8 %i.bly, 0
  br i1 %.not270.i.i170, label %bb.jf, label %.loopexit1028, !prof !25

bb.jf:                                            ; preds = %bb.je
  %i.blz = getelementptr inbounds nuw i8, ptr %.2240.i.i1032081, i64 3
  %i.bma = load i8, ptr %i.blz, align 1, !tbaa !81
  %i.bmb = zext i8 %i.bma to i64
  %i.bmc = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bmb
  %i.bmd = load i8, ptr %i.bmc, align 1, !tbaa !81
  %.not271.i.i173 = icmp eq i8 %i.bmd, 0
  br i1 %.not271.i.i173, label %bb.jg, label %.loopexit1029, !prof !25

bb.jg:                                            ; preds = %bb.jf
  %i.bme = load i32, ptr %.2240.i.i1032081, align 1
  store i32 %i.bme, ptr %.2247.i.i1022080, align 1
  %i.bmf = getelementptr inbounds nuw i8, ptr %.2247.i.i1022080, i64 4 ; 2 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %.2240.i.i1032081, i64 4 ; 3 uses
  %i.bmh = ptrtoint ptr %i.bmg to i64
  %i.bmi = sub i64 %i.bhn, %i.bmh
  %i.bmj = icmp sgt i64 %i.bmi, 3
  br i1 %i.bmj, label %.lr.ph2082, label %.preheader1023, !llvm.loop !333

.lr.ph2087:                                       ; preds = %.lr.ph2087.prol.loopexit, %bb.jh
  %.3241.i.i1052086 = phi ptr [ %i.bng, %bb.jh ], [ %.3241.i.i1052086.unr, %.lr.ph2087.prol.loopexit ] ; 9 uses
  %.3248.i.i1042085 = phi ptr [ %i.bnh, %bb.jh ], [ %.3248.i.i1042085.unr, %.lr.ph2087.prol.loopexit ] ; 6 uses
  %i.bmk = load i8, ptr %.3241.i.i1052086, align 1, !tbaa !81 ; 2 uses
  %i.bml = zext i8 %i.bmk to i64
  %i.bmm = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bml
  %i.bmn = load i8, ptr %i.bmm, align 1, !tbaa !81
  %.not.i642.i = icmp eq i8 %i.bmn, 0
  br i1 %.not.i642.i, label %.lr.ph2087.1, label %.preheader1020.preheader, !prof !25

.lr.ph2087.1:                                     ; preds = %.lr.ph2087
  %i.bmo = getelementptr inbounds nuw i8, ptr %.3241.i.i1052086, i64 1
  %i.bmp = getelementptr inbounds nuw i8, ptr %.3248.i.i1042085, i64 1 ; 2 uses
  store i8 %i.bmk, ptr %.3248.i.i1042085, align 1, !tbaa !81
  %i.bmq = load i8, ptr %i.bmo, align 1, !tbaa !81 ; 2 uses
  %i.bmr = zext i8 %i.bmq to i64
  %i.bms = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bmr
  %i.bmt = load i8, ptr %i.bms, align 1, !tbaa !81
  %.not.i642.i.1 = icmp eq i8 %i.bmt, 0
  br i1 %.not.i642.i.1, label %.lr.ph2087.2, label %.preheader1020.preheader.loopexit.loopexit.split.loop.exit6351, !prof !25

.lr.ph2087.2:                                     ; preds = %.lr.ph2087.1
  %i.bmu = getelementptr inbounds nuw i8, ptr %.3241.i.i1052086, i64 2
  %i.bmv = getelementptr inbounds nuw i8, ptr %.3248.i.i1042085, i64 2 ; 2 uses
  store i8 %i.bmq, ptr %i.bmp, align 1, !tbaa !81
  %i.bmw = load i8, ptr %i.bmu, align 1, !tbaa !81 ; 2 uses
  %i.bmx = zext i8 %i.bmw to i64
  %i.bmy = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bmx
  %i.bmz = load i8, ptr %i.bmy, align 1, !tbaa !81
  %.not.i642.i.2 = icmp eq i8 %i.bmz, 0
  br i1 %.not.i642.i.2, label %.lr.ph2087.3, label %.preheader1020.preheader.loopexit.loopexit.split.loop.exit6348, !prof !25

.lr.ph2087.3:                                     ; preds = %.lr.ph2087.2
  %i.bna = getelementptr inbounds nuw i8, ptr %.3241.i.i1052086, i64 3
  %i.bnb = getelementptr inbounds nuw i8, ptr %.3248.i.i1042085, i64 3 ; 2 uses
  store i8 %i.bmw, ptr %i.bmv, align 1, !tbaa !81
  %i.bnc = load i8, ptr %i.bna, align 1, !tbaa !81 ; 2 uses
  %i.bnd = zext i8 %i.bnc to i64
  %i.bne = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.bnd
  %i.bnf = load i8, ptr %i.bne, align 1, !tbaa !81
  %.not.i642.i.3 = icmp eq i8 %i.bnf, 0
  br i1 %.not.i642.i.3, label %bb.jh, label %.preheader1020.preheader.loopexit.loopexit.split.loop.exit, !prof !25

bb.jh:                                            ; preds = %.lr.ph2087.3
  %i.bng = getelementptr inbounds nuw i8, ptr %.3241.i.i1052086, i64 4 ; 2 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %.3248.i.i1042085, i64 4 ; 2 uses
  store i8 %i.bnc, ptr %i.bnb, align 1, !tbaa !81
  %exitcond2777.not.3 = icmp eq ptr %i.bng, %scevgep2776
  br i1 %exitcond2777.not.3, label %write_str.exit744.i, label %.lr.ph2087, !llvm.loop !334

.loopexit1027:                                    ; preds = %bb.im, %bb.jd
  %i.bni = phi i8 [ %i.bll, %bb.jd ], [ %i.bht, %bb.im ]
  %.5250.i.i168 = phi ptr [ %.2247.i.i1022080, %bb.jd ], [ %.1246.i.i1002073, %bb.im ] ; 2 uses
  %.5243.i.i169 = phi ptr [ %.2240.i.i1032081, %bb.jd ], [ %.1239.i.i1012074, %bb.im ]
  store i8 %i.bni, ptr %.5250.i.i168, align 1
  %i.bnj = getelementptr inbounds nuw i8, ptr %.5250.i.i168, i64 1
  %i.bnk = getelementptr inbounds nuw i8, ptr %.5243.i.i169, i64 1
  br label %.preheader1020.preheader

.loopexit1028:                                    ; preds = %bb.in, %bb.je
  %.6251.i.i171 = phi ptr [ %.2247.i.i1022080, %bb.je ], [ %.1246.i.i1002073, %bb.in ] ; 2 uses
  %.6.i.i172 = phi ptr [ %.2240.i.i1032081, %bb.je ], [ %.1239.i.i1012074, %bb.in ] ; 2 uses
  %i.bnl = load i16, ptr %.6.i.i172, align 1
  store i16 %i.bnl, ptr %.6251.i.i171, align 1
  %i.bnm = getelementptr inbounds nuw i8, ptr %.6251.i.i171, i64 2
  %i.bnn = getelementptr inbounds nuw i8, ptr %.6.i.i172, i64 2
  br label %.preheader1020.preheader

.loopexit1029:                                    ; preds = %bb.io, %bb.jf
  %.7252.i.i174 = phi ptr [ %.2247.i.i1022080, %bb.jf ], [ %.1246.i.i1002073, %bb.io ] ; 2 uses
  %.7.i.i175 = phi ptr [ %.2240.i.i1032081, %bb.jf ], [ %.1239.i.i1012074, %bb.io ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i.i174, ptr noundef nonnull align 1 dereferenceable(3) %.7.i.i175, i64 3, i1 false)
  %i.bno = getelementptr inbounds nuw i8, ptr %.7252.i.i174, i64 3
  %i.bnp = getelementptr inbounds nuw i8, ptr %.7.i.i175, i64 3
  br label %.preheader1020.preheader

bb.ji:                                            ; preds = %bb.ip
  %i.bnq = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 4
  %i.bnr = load i32, ptr %.1239.i.i1012074, align 1
  store i32 %i.bnr, ptr %.1246.i.i1002073, align 1
  %i.bns = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 4
  br label %.preheader1020.preheader

bb.jj:                                            ; preds = %bb.iq
  %i.bnt = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i.i1002073, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i.i1012074, i64 5, i1 false)
  %i.bnu = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 5
  br label %.preheader1020.preheader

bb.jk:                                            ; preds = %bb.ir
  %i.bnv = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i.i1002073, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i.i1012074, i64 6, i1 false)
  %i.bnw = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 6
  br label %.preheader1020.preheader

bb.jl:                                            ; preds = %bb.is
  %i.bnx = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i.i1002073, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i.i1012074, i64 7, i1 false)
  %i.bny = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 7
  br label %.preheader1020.preheader

bb.jm:                                            ; preds = %bb.it
  %i.bnz = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 8
  %i.boa = load i64, ptr %.1239.i.i1012074, align 1
  store i64 %i.boa, ptr %.1246.i.i1002073, align 1
  %i.bob = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 8
  br label %.preheader1020.preheader

bb.jn:                                            ; preds = %bb.iu
  %i.boc = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i.i1002073, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i.i1012074, i64 9, i1 false)
  %i.bod = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 9
  br label %.preheader1020.preheader

bb.jo:                                            ; preds = %bb.iv
  %i.boe = getelementptr inbounds nuw i8, ptr %.1239.i.i1012074, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i.i1002073, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i.i1012074, i64 10, i1 false)
  %i.bof = getelementptr inbounds nuw i8, ptr %.1246.i.i1002073, i64 10
end_hunk_9
begin_hunk_10_@yyjson_mut_write_opts_impl:bb.a
  %i.cwe = and i64 %i.cwd, -16
  %i.cwf = add i64 %i.cwe, %.10.i                 ; 2 uses
  %i.cwg = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.18565.i, i64 noundef %.10.i, i64 noundef %i.cwf) #33, !inline_history !385 ; 5 uses
  %.not612.i = icmp eq ptr %i.cwg, null
  br i1 %.not612.i, label %.loopexit1049, label %.thread838, !prof !8

.thread838:                                       ; preds = %bb.mx
  %i.cwh = ptrtoint ptr %.18527.i to i64
  %i.cwi = ptrtoint ptr %.18.i to i64             ; 2 uses
  %i.cwj = sub i64 %i.cwh, %i.cwi                 ; 2 uses
  %i.cwk = ptrtoint ptr %i.cvn to i64
  %i.cwl = ptrtoint ptr %.18565.i to i64          ; 2 uses
  %i.cwm = sub i64 %i.cwk, %i.cwl
  %i.cwn = sub i64 %i.cwi, %i.cwl
  %i.cwo = sub i64 %i.cwf, %i.cwj
  %i.cwp = getelementptr inbounds nuw i8, ptr %i.cwg, i64 %i.cwo
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.cwg, i64 %i.cwn
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cwp, ptr nonnull align 1 %i.cwq, i64 %i.cwj, i1 false)
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.cwg, i64 %i.cwm
  br label %bb.my

bb.my:                                            ; preds = %.thread838, %bb.mw
  %.20567.i = phi ptr [ %i.cwg, %.thread838 ], [ %.18565.i, %bb.mw ]
  %.21.i = phi ptr [ %i.cwr, %.thread838 ], [ %i.cvn, %bb.mw ] ; 2 uses
  %i.cws = getelementptr inbounds nuw i8, ptr %.21.i, i64 1
  store i8 10, ptr %.21.i, align 1, !tbaa !81
  br label %bb.mz

bb.mz:                                            ; preds = %bb.my, %bb.mv
  %.21568.i = phi ptr [ %.20567.i, %bb.my ], [ %.18565.i, %bb.mv ] ; 2 uses
  %.22.i = phi ptr [ %i.cws, %bb.my ], [ %i.cvn, %bb.mv ] ; 2 uses
  store i8 0, ptr %.22.i, align 1, !tbaa !81
  br i1 %.not29, label %.cont402, label %.else404

.else404:                                         ; preds = %bb.mz
  %i.cwt = ptrtoint ptr %.22.i to i64
  %i.cwu = ptrtoint ptr %.21568.i to i64
  %i.cwv = sub i64 %i.cwt, %i.cwu
  store i64 %i.cwv, ptr %4, align 8, !tbaa !91
  br label %.cont402

.cont402:                                         ; preds = %bb.mz, %.else404
  store i32 0, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel444.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel444.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel444.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr null, ptr %spec.store.select.sroa.sel444.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_mut_write_single.exit

.loopexit1049:                                    ; preds = %bb.mc, %bb.mo, %bb.ml, %bb.mi, %bb.lz, %bb.ku, %bb.gb, %bb.ms, %bb.mx, %get_enc_table_with_flag.exit.i33
  %.22569.i = phi ptr [ %.18565.i, %bb.mx ], [ %.16563.i, %bb.ms ], [ null, %get_enc_table_with_flag.exit.i33 ], [ %.0547.i, %bb.mo ], [ %.0547.i, %bb.gb ], [ %.0547.i, %bb.ku ], [ %.0547.i, %bb.lz ], [ %.0547.i, %bb.mi ], [ %.0547.i, %bb.ml ], [ %.0547.i, %bb.mc ] ; 2 uses
  br i1 %.not29, label %.cont405, label %.else407

.else407:                                         ; preds = %.loopexit1049
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %.cont405

.cont405:                                         ; preds = %.loopexit1049, %.else407
  store i32 2, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel441.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel441.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel441.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel441.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  %.not613.i = icmp eq ptr %.22569.i, null
  br i1 %.not613.i, label %yyjson_mut_write_single.exit, label %bb.na

bb.na:                                            ; preds = %.cont405
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.22569.i) #33, !inline_history !385
  br label %yyjson_mut_write_single.exit

bb.nb:                                            ; preds = %bb.mg
  br i1 %.not29, label %bb.nc, label %.else395

.else395:                                         ; preds = %bb.nb
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %bb.nc

bb.nc:                                            ; preds = %.else395, %bb.nb
  store i32 3, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel453.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel453.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel453.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.110, ptr %spec.store.select.sroa.sel453.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.0547.i) #33, !inline_history !385
  br label %yyjson_mut_write_single.exit

bb.nd:                                            ; preds = %write_num.exit.i37
  br i1 %.not29, label %bb.ne, label %.else401

.else401:                                         ; preds = %bb.nd
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %bb.ne

bb.ne:                                            ; preds = %.else401, %bb.nd
  store i32 4, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel447.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel447.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel447.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.111, ptr %spec.store.select.sroa.sel447.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.4551.i) #33, !inline_history !385
  br label %yyjson_mut_write_single.exit

.loopexit1021:                                    ; preds = %.thread755, %.thread745, %.thread765, %.thread775
  br i1 %.not29, label %bb.nf, label %.else398

.else398:                                         ; preds = %.loopexit1021
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %bb.nf

bb.nf:                                            ; preds = %.else398, %.loopexit1021
  store i32 7, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel450.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel450.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel450.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.76, ptr %spec.store.select.sroa.sel450.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.2549.i) #33, !inline_history !385
  br label %yyjson_mut_write_single.exit

bb.ng:                                            ; preds = %bb.fs
  br i1 %.not942, label %bb.ni, label %bb.nh, !prof !25

bb.nh:                                            ; preds = %bb.ng
  %enc_table_esc_slash.enc_table_esc.i.i380 = select i1 %.not943, ptr @enc_table_esc, ptr @enc_table_esc_slash, !prof !25
  br label %get_enc_table_with_flag.exit.i196

bb.ni:                                            ; preds = %bb.ng
  %enc_table_cpy_slash.enc_table_cpy.i.i195 = select i1 %.not943, ptr @enc_table_cpy, ptr @enc_table_cpy_slash, !prof !25
  br label %get_enc_table_with_flag.exit.i196

get_enc_table_with_flag.exit.i196:                ; preds = %bb.ni, %bb.nh
  %.0.i477.i = phi ptr [ %enc_table_esc_slash.enc_table_esc.i.i380, %bb.nh ], [ %enc_table_cpy_slash.enc_table_cpy.i.i195, %bb.ni ] ; 28 uses
  %i.cww = icmp eq ptr %.0.i477.i, @enc_table_cpy
  %i.cwx = and i32 %2, 32
  %.not945 = icmp eq i32 %i.cwx, 0                ; 4 uses
  %i.cwy = and i32 %2, 128
  %.not946 = icmp eq i32 %i.cwy, 0
  %i.cwz = mul i64 %1, 18
  %i.cxa = add i64 %i.cwz, 78
  %i.cxb = and i64 %i.cxa, -16                    ; 3 uses
  %i.cxc = tail call ptr %.sroa.0486.0(ptr noundef %.sroa.9.0, i64 noundef %i.cxb) #33, !inline_history !405 ; 5 uses
  %.not.i197 = icmp eq ptr %i.cxc, null
  br i1 %.not.i197, label %.loopexit1019, label %bb.nj

bb.nj:                                            ; preds = %get_enc_table_with_flag.exit.i196
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.cxc, i64 %i.cxb ; 2 uses
  %i.cxe = load i64, ptr %0, align 8, !tbaa !79   ; 2 uses
  %i.cxf = and i64 %i.cxe, 7
  %i.cxg = icmp eq i64 %i.cxf, 7                  ; 4 uses
  %i.cxh = zext i1 %i.cxg to i8
  %i.cxi = lshr i64 %i.cxe, 8
  %i.cxj = zext i1 %i.cxg to i64
  %i.cxk = shl nuw nsw i64 %i.cxi, %i.cxj
  %i.cxl = select i1 %i.cxg, i8 123, i8 91
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.cxc, i64 1
  store i8 %i.cxl, ptr %i.cxc, align 1, !tbaa !81
  %i.cxn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cxo = load ptr, ptr %i.cxn, align 8, !tbaa !81 ; 2 uses
  br i1 %i.cxg, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  %i.cxp = getelementptr inbounds nuw i8, ptr %i.cxo, i64 16
  %i.cxq = load ptr, ptr %i.cxp, align 8, !tbaa !85
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.nj
  %.pn.i198 = phi ptr [ %i.cxq, %bb.nk ], [ %i.cxo, %bb.nj ]
  %i.cxr = lshr i32 %2, 28
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.nl
  %.0694.ph = phi ptr [ %0, %bb.nl ], [ %.0694.ph.be, %.outer.backedge ] ; 2 uses
  %.0693.ph = phi i64 [ %i.cxk, %bb.nl ], [ %.0693.ph.be, %.outer.backedge ]
  %.0691.ph = phi i8 [ %i.cxh, %bb.nl ], [ %.0691.ph.be, %.outer.backedge ] ; 3 uses
  %.pn.i198.pn = phi ptr [ %.pn.i198, %bb.nl ], [ %.pn.i198.pn.be, %.outer.backedge ]
  %.0405.i.ph = phi ptr [ %i.cxc, %bb.nl ], [ %.0405.i.ph.be, %.outer.backedge ]
  %.0390.i.ph = phi ptr [ %i.cxm, %bb.nl ], [ %.0390.i.ph.be, %.outer.backedge ]
  %.0376.i.ph = phi ptr [ %i.cxd, %bb.nl ], [ %.0376.i.ph.be, %.outer.backedge ]
  %.0368.i.ph = phi ptr [ %i.cxd, %bb.nl ], [ %.0368.i.ph.be, %.outer.backedge ]
  %.0361.i.ph = phi i64 [ %i.cxb, %bb.nl ], [ %.0361.i.ph.be, %.outer.backedge ]
  %i.cxs = zext nneg i8 %.0691.ph to i32
  br label %bb.nm

bb.nm:                                            ; preds = %bb.tz, %.outer
  %.0693 = phi i64 [ %.0693.ph, %.outer ], [ %i.euh, %bb.tz ] ; 3 uses
  %.0423.i.pn = phi ptr [ %.pn.i198.pn, %.outer ], [ %.0423.i, %bb.tz ]
  %.0405.i = phi ptr [ %.0405.i.ph, %.outer ], [ %.13418.i, %bb.tz ] ; 25 uses
  %.0390.i = phi ptr [ %.0390.i.ph, %.outer ], [ %.14404.i, %bb.tz ] ; 18 uses
  %.0376.i = phi ptr [ %.0376.i.ph, %.outer ], [ %.13389.i, %bb.tz ] ; 12 uses
  %.0368.i = phi ptr [ %.0368.i.ph, %.outer ], [ %.13.i205, %bb.tz ] ; 18 uses
  %.0361.i = phi i64 [ %.0361.i.ph, %.outer ], [ %.7.i206, %bb.tz ] ; 24 uses
  %.0423.i.in = getelementptr inbounds nuw i8, ptr %.0423.i.pn, i64 16
  %.0423.i = load ptr, ptr %.0423.i.in, align 8, !tbaa !85 ; 11 uses
  %i.cxt = load i64, ptr %.0423.i, align 8, !tbaa !79 ; 7 uses
  %i.cxu = trunc i64 %i.cxt to i8                 ; 2 uses
  %i.cxv = and i8 %i.cxu, 7                       ; 3 uses
  switch i8 %i.cxv, label %bb.tj [
    i8 5, label %bb.nn
    i8 4, label %bb.sg
  ]

bb.nn:                                            ; preds = %bb.nm
  %i.cxw = trunc i64 %.0693 to i32
  %i.cxx = xor i32 %i.cxw, -1
  %i.cxy = and i32 %i.cxs, %i.cxx
  %.not446.i = icmp eq i32 %i.cxy, 0
  %i.cxz = lshr i64 %i.cxt, 8                     ; 7 uses
  %i.cya = getelementptr inbounds nuw i8, ptr %.0423.i, i64 8
  %i.cyb = load ptr, ptr %i.cya, align 8, !tbaa !81 ; 7 uses
  %i.cyc = ptrtoaddr ptr %i.cyb to i64            ; 2 uses
  %i.cyd = mul nuw nsw i64 %i.cxz, 6
  %i.cye = add nuw nsw i64 %i.cyd, 16             ; 2 uses
  %i.cyf = getelementptr inbounds nuw i8, ptr %.0390.i, i64 %i.cye
  %.not447.i = icmp ult ptr %i.cyf, %.0368.i
  br i1 %.not447.i, label %bb.np, label %bb.no, !prof !25

bb.no:                                            ; preds = %bb.nn
  %i.cyg = lshr i64 %.0361.i, 1
  %i.cyh = tail call i64 @llvm.umax.i64(i64 %i.cyg, i64 %i.cye)
  %i.cyi = add nuw i64 %i.cyh, 15
  %i.cyj = and i64 %i.cyi, -16
  %i.cyk = add i64 %i.cyj, %.0361.i               ; 4 uses
  %i.cyl = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0405.i, i64 noundef %.0361.i, i64 noundef %i.cyk) #33, !inline_history !405 ; 6 uses
  %.not448.i = icmp eq ptr %i.cyl, null
  br i1 %.not448.i, label %.loopexit1019, label %.thread842, !prof !8

.thread842:                                       ; preds = %bb.no
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
  br label %bb.np

bb.np:                                            ; preds = %.thread842, %bb.nn
  %.2407.i = phi ptr [ %i.cyl, %.thread842 ], [ %.0405.i, %bb.nn ] ; 2 uses
  %.2392.i = phi ptr [ %i.cyw, %.thread842 ], [ %.0390.i, %bb.nn ] ; 5 uses
  %.2378.i = phi ptr [ %i.cyx, %.thread842 ], [ %.0376.i, %bb.nn ]
  %.2370.i = phi ptr [ %i.cyu, %.thread842 ], [ %.0368.i, %bb.nn ]
  %.1362.i = phi i64 [ %i.cyk, %.thread842 ], [ %.0361.i, %bb.nn ]
  br i1 %i.cww, label %bb.px, label %.split.i262, !prof !25

.split.i262:                                      ; preds = %bb.np
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.cyb, i64 %i.cxz ; 4 uses
  store i8 34, ptr %.2392.i, align 1, !tbaa !81
  %i.cyz = ptrtoint ptr %i.cyy to i64             ; 5 uses
  %i.cza = add i64 %i.cxz, %i.cyc
  br label %bb.nq

bb.nq:                                            ; preds = %bb.pc, %.split.i262
  %.pn.i483.i = phi ptr [ %.2392.i, %.split.i262 ], [ %.8253.i496.i, %bb.pc ]
  %.0238.i484.i = phi ptr [ %i.cyb, %.split.i262 ], [ %i.dgt, %bb.pc ] ; 3 uses
  %.0245.i485.i = getelementptr inbounds nuw i8, ptr %.pn.i483.i, i64 1 ; 2 uses
  %i.czb = ptrtoint ptr %.0238.i484.i to i64
  %i.czc = sub i64 %i.cyz, %i.czb                 ; 2 uses
  %i.czd = icmp sgt i64 %i.czc, 15
  br i1 %i.czd, label %.lr.ph2143, label %.preheader1006

.preheader1006:                                   ; preds = %bb.og, %bb.nq
  %.pre-phi2861 = phi i64 [ %i.czc, %bb.nq ], [ %i.dcj, %bb.og ]
  %.1246.i486.i.lcssa = phi ptr [ %.0245.i485.i, %bb.nq ], [ %i.dcg, %bb.og ] ; 2 uses
  %.1239.i487.i.lcssa = phi ptr [ %.0238.i484.i, %bb.nq ], [ %i.dch, %bb.og ] ; 2 uses
  %i.cze = icmp sgt i64 %.pre-phi2861, 3
  br i1 %i.cze, label %.lr.ph2149, label %.preheader1004

.lr.ph2143:                                       ; preds = %bb.nq, %bb.og
  %.1239.i487.i2141 = phi ptr [ %i.dch, %bb.og ], [ %.0238.i484.i, %bb.nq ] ; 46 uses
  %.1246.i486.i2140 = phi ptr [ %i.dcg, %bb.og ], [ %.0245.i485.i, %bb.nq ] ; 30 uses
  %i.czf = load i8, ptr %.1239.i487.i2141, align 1, !tbaa !81 ; 2 uses
  %i.czg = zext i8 %i.czf to i64
  %i.czh = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.czg
  %i.czi = load i8, ptr %i.czh, align 1, !tbaa !81
  %.not272.i565.i = icmp eq i8 %i.czi, 0
  br i1 %.not272.i565.i, label %bb.nr, label %.preheader1001.preheader, !prof !25

bb.nr:                                            ; preds = %.lr.ph2143
  %i.czj = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 1
  %i.czk = load i8, ptr %i.czj, align 1, !tbaa !81
  %i.czl = zext i8 %i.czk to i64
  %i.czm = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.czl
  %i.czn = load i8, ptr %i.czm, align 1, !tbaa !81
  %.not273.i566.i = icmp eq i8 %i.czn, 0
  br i1 %.not273.i566.i, label %bb.ns, label %.loopexit1008, !prof !25

bb.ns:                                            ; preds = %bb.nr
  %i.czo = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 2
  %i.czp = load i8, ptr %i.czo, align 1, !tbaa !81
  %i.czq = zext i8 %i.czp to i64
  %i.czr = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.czq
  %i.czs = load i8, ptr %i.czr, align 1, !tbaa !81
  %.not274.i567.i = icmp eq i8 %i.czs, 0
  br i1 %.not274.i567.i, label %bb.nt, label %.loopexit1009, !prof !25

bb.nt:                                            ; preds = %bb.ns
  %i.czt = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 3
  %i.czu = load i8, ptr %i.czt, align 1, !tbaa !81
  %i.czv = zext i8 %i.czu to i64
  %i.czw = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.czv
  %i.czx = load i8, ptr %i.czw, align 1, !tbaa !81
  %.not275.i568.i = icmp eq i8 %i.czx, 0
  br i1 %.not275.i568.i, label %bb.nu, label %.loopexit1010, !prof !25

bb.nu:                                            ; preds = %bb.nt
  %i.czy = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 4
  %i.czz = load i8, ptr %i.czy, align 1, !tbaa !81
  %i.daa = zext i8 %i.czz to i64
  %i.dab = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.daa
  %i.dac = load i8, ptr %i.dab, align 1, !tbaa !81
  %.not276.i569.i = icmp eq i8 %i.dac, 0
  br i1 %.not276.i569.i, label %bb.nv, label %bb.on, !prof !25

bb.nv:                                            ; preds = %bb.nu
  %i.dad = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 5
  %i.dae = load i8, ptr %i.dad, align 1, !tbaa !81
  %i.daf = zext i8 %i.dae to i64
  %i.dag = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.daf
  %i.dah = load i8, ptr %i.dag, align 1, !tbaa !81
  %.not277.i570.i = icmp eq i8 %i.dah, 0
  br i1 %.not277.i570.i, label %bb.nw, label %bb.oo, !prof !25

bb.nw:                                            ; preds = %bb.nv
  %i.dai = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 6
  %i.daj = load i8, ptr %i.dai, align 1, !tbaa !81
  %i.dak = zext i8 %i.daj to i64
  %i.dal = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dak
  %i.dam = load i8, ptr %i.dal, align 1, !tbaa !81
  %.not278.i571.i = icmp eq i8 %i.dam, 0
  br i1 %.not278.i571.i, label %bb.nx, label %bb.op, !prof !25

bb.nx:                                            ; preds = %bb.nw
  %i.dan = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 7
  %i.dao = load i8, ptr %i.dan, align 1, !tbaa !81
  %i.dap = zext i8 %i.dao to i64
  %i.daq = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dap
  %i.dar = load i8, ptr %i.daq, align 1, !tbaa !81
  %.not279.i572.i = icmp eq i8 %i.dar, 0
  br i1 %.not279.i572.i, label %bb.ny, label %bb.oq, !prof !25

bb.ny:                                            ; preds = %bb.nx
  %i.das = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 8
  %i.dat = load i8, ptr %i.das, align 1, !tbaa !81
  %i.dau = zext i8 %i.dat to i64
  %i.dav = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dau
  %i.daw = load i8, ptr %i.dav, align 1, !tbaa !81
  %.not280.i573.i = icmp eq i8 %i.daw, 0
  br i1 %.not280.i573.i, label %bb.nz, label %bb.or, !prof !25

bb.nz:                                            ; preds = %bb.ny
  %i.dax = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 9
  %i.day = load i8, ptr %i.dax, align 1, !tbaa !81
  %i.daz = zext i8 %i.day to i64
  %i.dba = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.daz
  %i.dbb = load i8, ptr %i.dba, align 1, !tbaa !81
  %.not281.i574.i = icmp eq i8 %i.dbb, 0
  br i1 %.not281.i574.i, label %bb.oa, label %bb.os, !prof !25

bb.oa:                                            ; preds = %bb.nz
  %i.dbc = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 10
  %i.dbd = load i8, ptr %i.dbc, align 1, !tbaa !81
  %i.dbe = zext i8 %i.dbd to i64
  %i.dbf = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dbe
  %i.dbg = load i8, ptr %i.dbf, align 1, !tbaa !81
  %.not282.i575.i = icmp eq i8 %i.dbg, 0
  br i1 %.not282.i575.i, label %bb.ob, label %bb.ot, !prof !25

bb.ob:                                            ; preds = %bb.oa
  %i.dbh = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 11
  %i.dbi = load i8, ptr %i.dbh, align 1, !tbaa !81
  %i.dbj = zext i8 %i.dbi to i64
  %i.dbk = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dbj
  %i.dbl = load i8, ptr %i.dbk, align 1, !tbaa !81
  %.not283.i576.i = icmp eq i8 %i.dbl, 0
  br i1 %.not283.i576.i, label %bb.oc, label %bb.ou, !prof !25

bb.oc:                                            ; preds = %bb.ob
  %i.dbm = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 12
  %i.dbn = load i8, ptr %i.dbm, align 1, !tbaa !81
  %i.dbo = zext i8 %i.dbn to i64
  %i.dbp = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dbo
  %i.dbq = load i8, ptr %i.dbp, align 1, !tbaa !81
  %.not284.i577.i = icmp eq i8 %i.dbq, 0
  br i1 %.not284.i577.i, label %bb.od, label %bb.ov, !prof !25

bb.od:                                            ; preds = %bb.oc
  %i.dbr = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 13
  %i.dbs = load i8, ptr %i.dbr, align 1, !tbaa !81
  %i.dbt = zext i8 %i.dbs to i64
  %i.dbu = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dbt
  %i.dbv = load i8, ptr %i.dbu, align 1, !tbaa !81
  %.not285.i578.i = icmp eq i8 %i.dbv, 0
  br i1 %.not285.i578.i, label %bb.oe, label %bb.ow, !prof !25

bb.oe:                                            ; preds = %bb.od
  %i.dbw = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 14
  %i.dbx = load i8, ptr %i.dbw, align 1, !tbaa !81
  %i.dby = zext i8 %i.dbx to i64
  %i.dbz = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dby
  %i.dca = load i8, ptr %i.dbz, align 1, !tbaa !81
  %.not286.i579.i = icmp eq i8 %i.dca, 0
  br i1 %.not286.i579.i, label %bb.of, label %bb.ox, !prof !25

bb.of:                                            ; preds = %bb.oe
  %i.dcb = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 15
  %i.dcc = load i8, ptr %i.dcb, align 1, !tbaa !81
  %i.dcd = zext i8 %i.dcc to i64
  %i.dce = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dcd
  %i.dcf = load i8, ptr %i.dce, align 1, !tbaa !81
  %.not287.i580.i = icmp eq i8 %i.dcf, 0
  br i1 %.not287.i580.i, label %bb.og, label %bb.oy, !prof !25

bb.og:                                            ; preds = %bb.of
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i486.i2140, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i487.i2141, i64 16, i1 false)
  %i.dcg = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 16 ; 2 uses
  %i.dch = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 16 ; 3 uses
  %i.dci = ptrtoint ptr %i.dch to i64
  %i.dcj = sub i64 %i.cyz, %i.dci                 ; 2 uses
  %i.dck = icmp sgt i64 %i.dcj, 15
  br i1 %i.dck, label %.lr.ph2143, label %.preheader1006, !llvm.loop !331

.preheader1004:                                   ; preds = %bb.ol, %.preheader1006
  %.2247.i488.i.lcssa = phi ptr [ %.1246.i486.i.lcssa, %.preheader1006 ], [ %i.ddr, %bb.ol ] ; 3 uses
  %.2240.i489.i.lcssa = phi ptr [ %.1239.i487.i.lcssa, %.preheader1006 ], [ %i.dds, %bb.ol ] ; 5 uses
  %i.dcl = icmp ugt ptr %i.cyy, %.2240.i489.i.lcssa
  br i1 %i.dcl, label %.lr.ph2154.preheader, label %write_str.exit581.i

.lr.ph2154.preheader:                             ; preds = %.preheader1004
  %.2240.i489.i.lcssa2779 = ptrtoaddr ptr %.2240.i489.i.lcssa to i64 ; 2 uses
  %scevgep2778 = getelementptr i8, ptr %.2240.i489.i.lcssa, i64 %i.cyz
  %i.dcm = sub i64 0, %.2240.i489.i.lcssa2779
  %scevgep2780 = getelementptr i8, ptr %scevgep2778, i64 %i.dcm
  %i.dcn = sub i64 %i.cza, %.2240.i489.i.lcssa2779
  %i.dco = freeze i64 %i.dcn                      ; 2 uses
  %i.dcp = add i64 %i.dco, -1
  %xtraiter5645 = and i64 %i.dco, 3               ; 2 uses
  %lcmp.mod5646.not = icmp eq i64 %xtraiter5645, 0
  br i1 %lcmp.mod5646.not, label %.lr.ph2154.prol.loopexit, label %.lr.ph2154.prol

.lr.ph2154.prol:                                  ; preds = %.lr.ph2154.preheader, %bb.oh
  %.3241.i491.i2153.prol = phi ptr [ %i.dcu, %bb.oh ], [ %.2240.i489.i.lcssa, %.lr.ph2154.preheader ] ; 3 uses
  %.3248.i490.i2152.prol = phi ptr [ %i.dcv, %bb.oh ], [ %.2247.i488.i.lcssa, %.lr.ph2154.preheader ] ; 3 uses
  %prol.iter5647 = phi i64 [ %prol.iter5647.next, %bb.oh ], [ 0, %.lr.ph2154.preheader ]
  %i.dcq = load i8, ptr %.3241.i491.i2153.prol, align 1, !tbaa !81 ; 2 uses
  %i.dcr = zext i8 %i.dcq to i64
  %i.dcs = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dcr
  %i.dct = load i8, ptr %i.dcs, align 1, !tbaa !81
  %.not.i493.i.prol = icmp eq i8 %i.dct, 0
  br i1 %.not.i493.i.prol, label %bb.oh, label %.preheader1001.preheader, !prof !25

bb.oh:                                            ; preds = %.lr.ph2154.prol
  %i.dcu = getelementptr inbounds nuw i8, ptr %.3241.i491.i2153.prol, i64 1 ; 2 uses
  %i.dcv = getelementptr inbounds nuw i8, ptr %.3248.i490.i2152.prol, i64 1 ; 3 uses
  store i8 %i.dcq, ptr %.3248.i490.i2152.prol, align 1, !tbaa !81
  %prol.iter5647.next = add i64 %prol.iter5647, 1 ; 2 uses
  %prol.iter5647.cmp.not = icmp eq i64 %prol.iter5647.next, %xtraiter5645
  br i1 %prol.iter5647.cmp.not, label %.lr.ph2154.prol.loopexit, label %.lr.ph2154.prol, !llvm.loop !406

.lr.ph2154.prol.loopexit:                         ; preds = %bb.oh, %.lr.ph2154.preheader
  %.lcssa5236.unr = phi ptr [ poison, %.lr.ph2154.preheader ], [ %i.dcv, %bb.oh ]
  %.3241.i491.i2153.unr = phi ptr [ %.2240.i489.i.lcssa, %.lr.ph2154.preheader ], [ %i.dcu, %bb.oh ]
  %.3248.i490.i2152.unr = phi ptr [ %.2247.i488.i.lcssa, %.lr.ph2154.preheader ], [ %i.dcv, %bb.oh ]
  %i.dcw = icmp ult i64 %i.dcp, 3
  br i1 %i.dcw, label %write_str.exit581.i, label %.lr.ph2154

.lr.ph2149:                                       ; preds = %.preheader1006, %bb.ol
  %.2240.i489.i2148 = phi ptr [ %i.dds, %bb.ol ], [ %.1239.i487.i.lcssa, %.preheader1006 ] ; 10 uses
  %.2247.i488.i2147 = phi ptr [ %i.ddr, %bb.ol ], [ %.1246.i486.i.lcssa, %.preheader1006 ] ; 6 uses
  %i.dcx = load i8, ptr %.2240.i489.i2148, align 1, !tbaa !81 ; 2 uses
  %i.dcy = zext i8 %i.dcx to i64
  %i.dcz = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dcy
  %i.dda = load i8, ptr %i.dcz, align 1, !tbaa !81
  %.not268.i555.i = icmp eq i8 %i.dda, 0
  br i1 %.not268.i555.i, label %bb.oi, label %.preheader1001.preheader, !prof !25

bb.oi:                                            ; preds = %.lr.ph2149
  %i.ddb = getelementptr inbounds nuw i8, ptr %.2240.i489.i2148, i64 1
  %i.ddc = load i8, ptr %i.ddb, align 1, !tbaa !81
  %i.ddd = zext i8 %i.ddc to i64
  %i.dde = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.ddd
  %i.ddf = load i8, ptr %i.dde, align 1, !tbaa !81
  %.not269.i556.i = icmp eq i8 %i.ddf, 0
  br i1 %.not269.i556.i, label %bb.oj, label %.loopexit1008, !prof !25

bb.oj:                                            ; preds = %bb.oi
  %i.ddg = getelementptr inbounds nuw i8, ptr %.2240.i489.i2148, i64 2
  %i.ddh = load i8, ptr %i.ddg, align 1, !tbaa !81
  %i.ddi = zext i8 %i.ddh to i64
  %i.ddj = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.ddi
  %i.ddk = load i8, ptr %i.ddj, align 1, !tbaa !81
  %.not270.i559.i = icmp eq i8 %i.ddk, 0
  br i1 %.not270.i559.i, label %bb.ok, label %.loopexit1009, !prof !25

bb.ok:                                            ; preds = %bb.oj
  %i.ddl = getelementptr inbounds nuw i8, ptr %.2240.i489.i2148, i64 3
  %i.ddm = load i8, ptr %i.ddl, align 1, !tbaa !81
  %i.ddn = zext i8 %i.ddm to i64
  %i.ddo = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.ddn
  %i.ddp = load i8, ptr %i.ddo, align 1, !tbaa !81
  %.not271.i562.i = icmp eq i8 %i.ddp, 0
  br i1 %.not271.i562.i, label %bb.ol, label %.loopexit1010, !prof !25

bb.ol:                                            ; preds = %bb.ok
  %i.ddq = load i32, ptr %.2240.i489.i2148, align 1
  store i32 %i.ddq, ptr %.2247.i488.i2147, align 1
  %i.ddr = getelementptr inbounds nuw i8, ptr %.2247.i488.i2147, i64 4 ; 2 uses
  %i.dds = getelementptr inbounds nuw i8, ptr %.2240.i489.i2148, i64 4 ; 3 uses
  %i.ddt = ptrtoint ptr %i.dds to i64
  %i.ddu = sub i64 %i.cyz, %i.ddt
  %i.ddv = icmp sgt i64 %i.ddu, 3
  br i1 %i.ddv, label %.lr.ph2149, label %.preheader1004, !llvm.loop !333

.lr.ph2154:                                       ; preds = %.lr.ph2154.prol.loopexit, %bb.om
  %.3241.i491.i2153 = phi ptr [ %i.des, %bb.om ], [ %.3241.i491.i2153.unr, %.lr.ph2154.prol.loopexit ] ; 9 uses
  %.3248.i490.i2152 = phi ptr [ %i.det, %bb.om ], [ %.3248.i490.i2152.unr, %.lr.ph2154.prol.loopexit ] ; 6 uses
  %i.ddw = load i8, ptr %.3241.i491.i2153, align 1, !tbaa !81 ; 2 uses
  %i.ddx = zext i8 %i.ddw to i64
  %i.ddy = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.ddx
  %i.ddz = load i8, ptr %i.ddy, align 1, !tbaa !81
  %.not.i493.i = icmp eq i8 %i.ddz, 0
  br i1 %.not.i493.i, label %.lr.ph2154.1, label %.preheader1001.preheader, !prof !25

.lr.ph2154.1:                                     ; preds = %.lr.ph2154
  %i.dea = getelementptr inbounds nuw i8, ptr %.3241.i491.i2153, i64 1
  %i.deb = getelementptr inbounds nuw i8, ptr %.3248.i490.i2152, i64 1 ; 2 uses
  store i8 %i.ddw, ptr %.3248.i490.i2152, align 1, !tbaa !81
  %i.dec = load i8, ptr %i.dea, align 1, !tbaa !81 ; 2 uses
  %i.ded = zext i8 %i.dec to i64
  %i.dee = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.ded
  %i.def = load i8, ptr %i.dee, align 1, !tbaa !81
  %.not.i493.i.1 = icmp eq i8 %i.def, 0
  br i1 %.not.i493.i.1, label %.lr.ph2154.2, label %.preheader1001.preheader.loopexit.loopexit.split.loop.exit6363, !prof !25

.lr.ph2154.2:                                     ; preds = %.lr.ph2154.1
  %i.deg = getelementptr inbounds nuw i8, ptr %.3241.i491.i2153, i64 2
  %i.deh = getelementptr inbounds nuw i8, ptr %.3248.i490.i2152, i64 2 ; 2 uses
  store i8 %i.dec, ptr %i.deb, align 1, !tbaa !81
  %i.dei = load i8, ptr %i.deg, align 1, !tbaa !81 ; 2 uses
  %i.dej = zext i8 %i.dei to i64
  %i.dek = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dej
  %i.del = load i8, ptr %i.dek, align 1, !tbaa !81
  %.not.i493.i.2 = icmp eq i8 %i.del, 0
  br i1 %.not.i493.i.2, label %.lr.ph2154.3, label %.preheader1001.preheader.loopexit.loopexit.split.loop.exit6360, !prof !25

.lr.ph2154.3:                                     ; preds = %.lr.ph2154.2
  %i.dem = getelementptr inbounds nuw i8, ptr %.3241.i491.i2153, i64 3
  %i.den = getelementptr inbounds nuw i8, ptr %.3248.i490.i2152, i64 3 ; 2 uses
  store i8 %i.dei, ptr %i.deh, align 1, !tbaa !81
  %i.deo = load i8, ptr %i.dem, align 1, !tbaa !81 ; 2 uses
  %i.dep = zext i8 %i.deo to i64
  %i.deq = getelementptr inbounds nuw i8, ptr %.0.i477.i, i64 %i.dep
  %i.der = load i8, ptr %i.deq, align 1, !tbaa !81
  %.not.i493.i.3 = icmp eq i8 %i.der, 0
  br i1 %.not.i493.i.3, label %bb.om, label %.preheader1001.preheader.loopexit.loopexit.split.loop.exit, !prof !25

bb.om:                                            ; preds = %.lr.ph2154.3
  %i.des = getelementptr inbounds nuw i8, ptr %.3241.i491.i2153, i64 4 ; 2 uses
  %i.det = getelementptr inbounds nuw i8, ptr %.3248.i490.i2152, i64 4 ; 2 uses
  store i8 %i.deo, ptr %i.den, align 1, !tbaa !81
  %exitcond2781.not.3 = icmp eq ptr %i.des, %scevgep2780
  br i1 %exitcond2781.not.3, label %write_str.exit581.i, label %.lr.ph2154, !llvm.loop !334

.loopexit1008:                                    ; preds = %bb.nr, %bb.oi
  %i.deu = phi i8 [ %i.dcx, %bb.oi ], [ %i.czf, %bb.nr ]
  %.5250.i557.i = phi ptr [ %.2247.i488.i2147, %bb.oi ], [ %.1246.i486.i2140, %bb.nr ] ; 2 uses
  %.5243.i558.i = phi ptr [ %.2240.i489.i2148, %bb.oi ], [ %.1239.i487.i2141, %bb.nr ]
  store i8 %i.deu, ptr %.5250.i557.i, align 1
  %i.dev = getelementptr inbounds nuw i8, ptr %.5250.i557.i, i64 1
  %i.dew = getelementptr inbounds nuw i8, ptr %.5243.i558.i, i64 1
  br label %.preheader1001.preheader

.loopexit1009:                                    ; preds = %bb.ns, %bb.oj
  %.6251.i560.i = phi ptr [ %.2247.i488.i2147, %bb.oj ], [ %.1246.i486.i2140, %bb.ns ] ; 2 uses
  %.6.i561.i = phi ptr [ %.2240.i489.i2148, %bb.oj ], [ %.1239.i487.i2141, %bb.ns ] ; 2 uses
  %i.dex = load i16, ptr %.6.i561.i, align 1
  store i16 %i.dex, ptr %.6251.i560.i, align 1
  %i.dey = getelementptr inbounds nuw i8, ptr %.6251.i560.i, i64 2
  %i.dez = getelementptr inbounds nuw i8, ptr %.6.i561.i, i64 2
  br label %.preheader1001.preheader

.loopexit1010:                                    ; preds = %bb.nt, %bb.ok
  %.7252.i563.i = phi ptr [ %.2247.i488.i2147, %bb.ok ], [ %.1246.i486.i2140, %bb.nt ] ; 2 uses
  %.7.i564.i = phi ptr [ %.2240.i489.i2148, %bb.ok ], [ %.1239.i487.i2141, %bb.nt ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i563.i, ptr noundef nonnull align 1 dereferenceable(3) %.7.i564.i, i64 3, i1 false)
  %i.dfa = getelementptr inbounds nuw i8, ptr %.7252.i563.i, i64 3
  %i.dfb = getelementptr inbounds nuw i8, ptr %.7.i564.i, i64 3
  br label %.preheader1001.preheader

bb.on:                                            ; preds = %bb.nu
  %i.dfc = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 4
  %i.dfd = load i32, ptr %.1239.i487.i2141, align 1
  store i32 %i.dfd, ptr %.1246.i486.i2140, align 1
  %i.dfe = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 4
  br label %.preheader1001.preheader

bb.oo:                                            ; preds = %bb.nv
  %i.dff = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i486.i2140, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i487.i2141, i64 5, i1 false)
  %i.dfg = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 5
  br label %.preheader1001.preheader

bb.op:                                            ; preds = %bb.nw
  %i.dfh = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i486.i2140, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i487.i2141, i64 6, i1 false)
  %i.dfi = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 6
  br label %.preheader1001.preheader

bb.oq:                                            ; preds = %bb.nx
  %i.dfj = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i486.i2140, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i487.i2141, i64 7, i1 false)
  %i.dfk = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 7
  br label %.preheader1001.preheader

bb.or:                                            ; preds = %bb.ny
  %i.dfl = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 8
  %i.dfm = load i64, ptr %.1239.i487.i2141, align 1
  store i64 %i.dfm, ptr %.1246.i486.i2140, align 1
  %i.dfn = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 8
  br label %.preheader1001.preheader

bb.os:                                            ; preds = %bb.nz
  %i.dfo = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i486.i2140, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i487.i2141, i64 9, i1 false)
  %i.dfp = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 9
  br label %.preheader1001.preheader

bb.ot:                                            ; preds = %bb.oa
  %i.dfq = getelementptr inbounds nuw i8, ptr %.1239.i487.i2141, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i486.i2140, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i487.i2141, i64 10, i1 false)
  %i.dfr = getelementptr inbounds nuw i8, ptr %.1246.i486.i2140, i64 10
end_hunk_10
begin_hunk_11_@yyjson_mut_write_opts_impl:bb.a
.preheader1001.backedge:                          ; preds = %bb.pm, %bb.pn, %bb.pv, %bb.pw, %bb.pe, %.critedge.i542.i, %.critedge316.i536.i, %bb.pp, %.critedge321.i517.i, %.critedge325.i508.i
  %.8253.i496.i.be = phi ptr [ %i.dma, %bb.pv ], [ %i.dha, %bb.pe ], [ %i.dhm, %.critedge.i542.i ], [ %i.dhw, %.critedge316.i536.i ], [ %i.dia, %bb.pm ], [ %i.dii, %bb.pn ], [ %i.djd, %bb.pp ], [ %i.dka, %.critedge321.i517.i ], [ %i.dlw, %.critedge325.i508.i ], [ %i.dmc, %bb.pw ]
  %.8.i497.i.be = phi ptr [ %i.dlz, %bb.pv ], [ %i.dhb, %bb.pe ], [ %i.dhn, %.critedge.i542.i ], [ %i.dgf, %.critedge316.i536.i ], [ %i.dib, %bb.pm ], [ %i.dij, %bb.pn ], [ %i.dje, %bb.pp ], [ %i.dkb, %.critedge321.i517.i ], [ %i.dgf, %.critedge325.i508.i ], [ %i.dmd, %bb.pw ]
  br label %.preheader1001

bb.pn:                                            ; preds = %bb.pb
  store i32 808482140, ptr %.8253.i496.i, align 1
  %i.dic = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 4
  %i.did = load i8, ptr %.8.i497.i, align 1, !tbaa !81
  %i.die = zext i8 %i.did to i64
  %i.dif = shl nuw nsw i64 %i.die, 1
  %i.dig = getelementptr inbounds nuw i8, ptr @esc_hex_char_table, i64 %i.dif
  %i.dih = load i16, ptr %i.dig, align 2
  store i16 %i.dih, ptr %i.dic, align 1
  %i.dii = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 6
  %i.dij = getelementptr inbounds nuw i8, ptr %.8.i497.i, i64 1
  br label %.preheader1001.backedge

bb.po:                                            ; preds = %bb.pb
  %.sroa.0.0.copyload.i332.i525.i = load i16, ptr %.8.i497.i, align 1 ; 3 uses
  %.sroa.0670.0.insert.ext = zext i16 %.sroa.0.0.copyload.i332.i525.i to i32 ; 2 uses
  %i.dik = and i32 %.sroa.0670.0.insert.ext, 49376
  %i.dil = icmp ne i32 %i.dik, 32960
  %i.dim = and i32 %.sroa.0670.0.insert.ext, 30
  %i.din = icmp eq i32 %i.dim, 0
  %.not298.i526.i = or i1 %i.dil, %i.din
  br i1 %.not298.i526.i, label %.thread858, label %bb.pp, !prof !8

bb.pp:                                            ; preds = %bb.po
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

bb.pq:                                            ; preds = %bb.pb
  %.sroa.0.0.copyload.i.i512.i = load i16, ptr %.8.i497.i, align 1 ; 3 uses
  %i.djf = getelementptr inbounds nuw i8, ptr %.8.i497.i, i64 2
  %i.djg = load i8, ptr %i.djf, align 1, !tbaa !81 ; 2 uses
  %.sroa.4.0.insert.ext.i.i513.i = zext i8 %i.djg to i32
  %.sroa.4.0.insert.shift.i.i514.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i513.i, 16
  %.sroa.0.0.insert.ext.i.i515.i = zext i16 %.sroa.0.0.copyload.i.i512.i to i32 ; 2 uses
  %.sroa.0.0.insert.insert.i.i516.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i514.i, %.sroa.0.0.insert.ext.i.i515.i
  %i.djh = and i32 %.sroa.0.0.insert.insert.i.i516.i, 12632304
  %i.dji = icmp eq i32 %i.djh, 8421600
  br i1 %i.dji, label %bb.pr, label %.thread858, !prof !25

bb.pr:                                            ; preds = %bb.pq
  %i.djj = and i32 %.sroa.0.0.insert.ext.i.i515.i, 8207
  switch i32 %i.djj, label %.critedge321.i517.i [
    i32 8205, label %.thread858
    i32 0, label %.thread858
  ], !prof !335

.critedge321.i517.i:                              ; preds = %bb.pr
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

bb.ps:                                            ; preds = %bb.pb
  %.sroa.0.0.copyload.i333.i502.i = load i32, ptr %.8.i497.i, align 1 ; 9 uses
  %i.dkc = and i32 %.sroa.0.0.copyload.i333.i502.i, -1061109512
  %i.dkd = icmp ne i32 %i.dkc, -2139062032
  %i.dke = and i32 %.sroa.0.0.copyload.i333.i502.i, 12295
  %.not288.i503.i = icmp eq i32 %i.dke, 0
  %or.cond323.i504.i = or i1 %i.dkd, %.not288.i503.i
  %i.dkf = lshr i32 %.sroa.0.0.copyload.i333.i502.i, 24
  br i1 %or.cond323.i504.i, label %.thread858, label %bb.pt, !prof !258

bb.pt:                                            ; preds = %bb.ps
  %i.dkg = and i32 %.sroa.0.0.copyload.i333.i502.i, 4
  %i.dkh = icmp ne i32 %i.dkg, 0
  %i.dki = and i32 %.sroa.0.0.copyload.i333.i502.i, 12291
  %i.dkj = icmp ne i32 %i.dki, 0
  %.not291.i505.i = and i1 %i.dkh, %i.dkj
  br i1 %.not291.i505.i, label %.thread858, label %.critedge325.i508.i, !prof !8

.critedge325.i508.i:                              ; preds = %bb.pt
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

bb.pu:                                            ; preds = %bb.pb, %bb.pa
  %i.dlx = phi i8 [ %i.dgs, %bb.pb ], [ %i.dgk, %bb.pa ]
  br i1 %.not942, label %.thread848, label %.thread858

.thread848:                                       ; preds = %bb.pk, %bb.pl, %bb.pi, %bb.pg, %bb.pj, %bb.pj, %bb.ph, %bb.ph, %bb.pd, %bb.pu
  %i.dly = phi i8 [ %i.dhr, %bb.pk ], [ %i.dhr, %bb.pl ], [ %i.dhk, %bb.pi ], [ %i.dhe, %bb.pg ], [ %i.dhk, %bb.pj ], [ %i.dhk, %bb.pj ], [ %i.dhe, %bb.ph ], [ %i.dhe, %bb.ph ], [ %i.dgz, %bb.pd ], [ %i.dlx, %bb.pu ]
  br i1 %.not945, label %.loopexit988, label %bb.pv

bb.pv:                                            ; preds = %.thread848
  %i.dlz = getelementptr inbounds nuw i8, ptr %.8.i497.i, i64 1
  %i.dma = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 1
  store i8 %i.dly, ptr %.8253.i496.i, align 1, !tbaa !81
  br label %.preheader1001.backedge

.thread858:                                       ; preds = %bb.ps, %bb.pt, %bb.pq, %bb.pr, %bb.pr, %bb.po, %bb.pu
  br i1 %.not945, label %.loopexit988, label %bb.pw

bb.pw:                                            ; preds = %.thread858
  store i16 30044, ptr %.8253.i496.i, align 1
  %i.dmb = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 2
  store i32 1145456198, ptr %i.dmb, align 1
  %i.dmc = getelementptr inbounds nuw i8, ptr %.8253.i496.i, i64 6
  %i.dmd = getelementptr inbounds nuw i8, ptr %.8.i497.i, i64 1
  br label %.preheader1001.backedge

bb.px:                                            ; preds = %bb.np
  %i.dme = load i64, ptr %.0423.i, align 8, !tbaa !79
  %i.dmf = and i64 %i.dme, 24
  %.not449.i = icmp eq i64 %i.dmf, 0
  store i8 34, ptr %.2392.i, align 1, !tbaa !81
  br i1 %.not449.i, label %.split425.i, label %bb.sf

.split425.i:                                      ; preds = %bb.px
  %i.dmg = getelementptr inbounds nuw i8, ptr %i.cyb, i64 %i.cxz ; 4 uses
  %i.dmh = ptrtoint ptr %i.dmg to i64             ; 5 uses
  %i.dmi = add i64 %i.cxz, %i.cyc
  br label %bb.py

bb.py:                                            ; preds = %bb.rk, %.split425.i
  %.pn.i.i274 = phi ptr [ %.2392.i, %.split425.i ], [ %.8253.i.i287, %bb.rk ]
  %.0238.i.i275 = phi ptr [ %i.cyb, %.split425.i ], [ %i.dub, %bb.rk ] ; 3 uses
  %.0245.i.i276 = getelementptr inbounds nuw i8, ptr %.pn.i.i274, i64 1 ; 2 uses
  %i.dmj = ptrtoint ptr %.0238.i.i275 to i64
  %i.dmk = sub i64 %i.dmh, %i.dmj                 ; 2 uses
  %i.dml = icmp sgt i64 %i.dmk, 15
  br i1 %i.dml, label %.lr.ph2194, label %.preheader992

.preheader992:                                    ; preds = %bb.qo, %bb.py
  %.pre-phi2858 = phi i64 [ %i.dmk, %bb.py ], [ %i.dpr, %bb.qo ]
  %.1246.i.i277.lcssa = phi ptr [ %.0245.i.i276, %bb.py ], [ %i.dpo, %bb.qo ] ; 2 uses
  %.1239.i.i278.lcssa = phi ptr [ %.0238.i.i275, %bb.py ], [ %i.dpp, %bb.qo ] ; 2 uses
  %i.dmm = icmp sgt i64 %.pre-phi2858, 3
  br i1 %i.dmm, label %.lr.ph2200, label %.preheader990

.lr.ph2194:                                       ; preds = %bb.py, %bb.qo
  %.1239.i.i2782192 = phi ptr [ %i.dpp, %bb.qo ], [ %.0238.i.i275, %bb.py ] ; 46 uses
  %.1246.i.i2772191 = phi ptr [ %i.dpo, %bb.qo ], [ %.0245.i.i276, %bb.py ] ; 30 uses
  %i.dmn = load i8, ptr %.1239.i.i2782192, align 1, !tbaa !81 ; 2 uses
  %i.dmo = zext i8 %i.dmn to i64
  %i.dmp = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dmo
  %i.dmq = load i8, ptr %i.dmp, align 1, !tbaa !81
  %.not272.i.i353 = icmp eq i8 %i.dmq, 0
  br i1 %.not272.i.i353, label %bb.pz, label %.preheader987.preheader, !prof !25

bb.pz:                                            ; preds = %.lr.ph2194
  %i.dmr = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 1
  %i.dms = load i8, ptr %i.dmr, align 1, !tbaa !81
  %i.dmt = zext i8 %i.dms to i64
  %i.dmu = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dmt
  %i.dmv = load i8, ptr %i.dmu, align 1, !tbaa !81
  %.not273.i.i354 = icmp eq i8 %i.dmv, 0
  br i1 %.not273.i.i354, label %bb.qa, label %.loopexit994, !prof !25

bb.qa:                                            ; preds = %bb.pz
  %i.dmw = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 2
  %i.dmx = load i8, ptr %i.dmw, align 1, !tbaa !81
  %i.dmy = zext i8 %i.dmx to i64
  %i.dmz = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dmy
  %i.dna = load i8, ptr %i.dmz, align 1, !tbaa !81
  %.not274.i.i355 = icmp eq i8 %i.dna, 0
  br i1 %.not274.i.i355, label %bb.qb, label %.loopexit995, !prof !25

bb.qb:                                            ; preds = %bb.qa
  %i.dnb = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 3
  %i.dnc = load i8, ptr %i.dnb, align 1, !tbaa !81
  %i.dnd = zext i8 %i.dnc to i64
  %i.dne = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dnd
  %i.dnf = load i8, ptr %i.dne, align 1, !tbaa !81
  %.not275.i.i356 = icmp eq i8 %i.dnf, 0
  br i1 %.not275.i.i356, label %bb.qc, label %.loopexit996, !prof !25

bb.qc:                                            ; preds = %bb.qb
  %i.dng = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 4
  %i.dnh = load i8, ptr %i.dng, align 1, !tbaa !81
  %i.dni = zext i8 %i.dnh to i64
  %i.dnj = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dni
  %i.dnk = load i8, ptr %i.dnj, align 1, !tbaa !81
  %.not276.i.i357 = icmp eq i8 %i.dnk, 0
  br i1 %.not276.i.i357, label %bb.qd, label %bb.qv, !prof !25

bb.qd:                                            ; preds = %bb.qc
  %i.dnl = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 5
  %i.dnm = load i8, ptr %i.dnl, align 1, !tbaa !81
  %i.dnn = zext i8 %i.dnm to i64
  %i.dno = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dnn
  %i.dnp = load i8, ptr %i.dno, align 1, !tbaa !81
  %.not277.i.i358 = icmp eq i8 %i.dnp, 0
  br i1 %.not277.i.i358, label %bb.qe, label %bb.qw, !prof !25

bb.qe:                                            ; preds = %bb.qd
  %i.dnq = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 6
  %i.dnr = load i8, ptr %i.dnq, align 1, !tbaa !81
  %i.dns = zext i8 %i.dnr to i64
  %i.dnt = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dns
  %i.dnu = load i8, ptr %i.dnt, align 1, !tbaa !81
  %.not278.i.i359 = icmp eq i8 %i.dnu, 0
  br i1 %.not278.i.i359, label %bb.qf, label %bb.qx, !prof !25

bb.qf:                                            ; preds = %bb.qe
  %i.dnv = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 7
  %i.dnw = load i8, ptr %i.dnv, align 1, !tbaa !81
  %i.dnx = zext i8 %i.dnw to i64
  %i.dny = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dnx
  %i.dnz = load i8, ptr %i.dny, align 1, !tbaa !81
  %.not279.i.i360 = icmp eq i8 %i.dnz, 0
  br i1 %.not279.i.i360, label %bb.qg, label %bb.qy, !prof !25

bb.qg:                                            ; preds = %bb.qf
  %i.doa = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 8
  %i.dob = load i8, ptr %i.doa, align 1, !tbaa !81
  %i.doc = zext i8 %i.dob to i64
  %i.dod = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.doc
  %i.doe = load i8, ptr %i.dod, align 1, !tbaa !81
  %.not280.i.i361 = icmp eq i8 %i.doe, 0
  br i1 %.not280.i.i361, label %bb.qh, label %bb.qz, !prof !25

bb.qh:                                            ; preds = %bb.qg
  %i.dof = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 9
  %i.dog = load i8, ptr %i.dof, align 1, !tbaa !81
  %i.doh = zext i8 %i.dog to i64
  %i.doi = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.doh
  %i.doj = load i8, ptr %i.doi, align 1, !tbaa !81
  %.not281.i.i362 = icmp eq i8 %i.doj, 0
  br i1 %.not281.i.i362, label %bb.qi, label %bb.ra, !prof !25

bb.qi:                                            ; preds = %bb.qh
  %i.dok = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 10
  %i.dol = load i8, ptr %i.dok, align 1, !tbaa !81
  %i.dom = zext i8 %i.dol to i64
  %i.don = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dom
  %i.doo = load i8, ptr %i.don, align 1, !tbaa !81
  %.not282.i.i363 = icmp eq i8 %i.doo, 0
  br i1 %.not282.i.i363, label %bb.qj, label %bb.rb, !prof !25

bb.qj:                                            ; preds = %bb.qi
  %i.dop = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 11
  %i.doq = load i8, ptr %i.dop, align 1, !tbaa !81
  %i.dor = zext i8 %i.doq to i64
  %i.dos = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dor
  %i.dot = load i8, ptr %i.dos, align 1, !tbaa !81
  %.not283.i.i364 = icmp eq i8 %i.dot, 0
  br i1 %.not283.i.i364, label %bb.qk, label %bb.rc, !prof !25

bb.qk:                                            ; preds = %bb.qj
  %i.dou = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 12
  %i.dov = load i8, ptr %i.dou, align 1, !tbaa !81
  %i.dow = zext i8 %i.dov to i64
  %i.dox = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dow
  %i.doy = load i8, ptr %i.dox, align 1, !tbaa !81
  %.not284.i.i365 = icmp eq i8 %i.doy, 0
  br i1 %.not284.i.i365, label %bb.ql, label %bb.rd, !prof !25

bb.ql:                                            ; preds = %bb.qk
  %i.doz = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 13
  %i.dpa = load i8, ptr %i.doz, align 1, !tbaa !81
  %i.dpb = zext i8 %i.dpa to i64
  %i.dpc = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dpb
  %i.dpd = load i8, ptr %i.dpc, align 1, !tbaa !81
  %.not285.i.i366 = icmp eq i8 %i.dpd, 0
  br i1 %.not285.i.i366, label %bb.qm, label %bb.re, !prof !25

bb.qm:                                            ; preds = %bb.ql
  %i.dpe = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 14
  %i.dpf = load i8, ptr %i.dpe, align 1, !tbaa !81
  %i.dpg = zext i8 %i.dpf to i64
  %i.dph = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dpg
  %i.dpi = load i8, ptr %i.dph, align 1, !tbaa !81
  %.not286.i.i367 = icmp eq i8 %i.dpi, 0
  br i1 %.not286.i.i367, label %bb.qn, label %bb.rf, !prof !25

bb.qn:                                            ; preds = %bb.qm
  %i.dpj = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 15
  %i.dpk = load i8, ptr %i.dpj, align 1, !tbaa !81
  %i.dpl = zext i8 %i.dpk to i64
  %i.dpm = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dpl
  %i.dpn = load i8, ptr %i.dpm, align 1, !tbaa !81
  %.not287.i.i368 = icmp eq i8 %i.dpn, 0
  br i1 %.not287.i.i368, label %bb.qo, label %bb.rg, !prof !25

bb.qo:                                            ; preds = %bb.qn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1246.i.i2772191, ptr noundef nonnull align 1 dereferenceable(16) %.1239.i.i2782192, i64 16, i1 false)
  %i.dpo = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 16 ; 2 uses
  %i.dpp = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 16 ; 3 uses
  %i.dpq = ptrtoint ptr %i.dpp to i64
  %i.dpr = sub i64 %i.dmh, %i.dpq                 ; 2 uses
  %i.dps = icmp sgt i64 %i.dpr, 15
  br i1 %i.dps, label %.lr.ph2194, label %.preheader992, !llvm.loop !331

.preheader990:                                    ; preds = %bb.qt, %.preheader992
  %.2247.i.i279.lcssa = phi ptr [ %.1246.i.i277.lcssa, %.preheader992 ], [ %i.dqz, %bb.qt ] ; 3 uses
  %.2240.i.i280.lcssa = phi ptr [ %.1239.i.i278.lcssa, %.preheader992 ], [ %i.dra, %bb.qt ] ; 5 uses
  %i.dpt = icmp ugt ptr %i.dmg, %.2240.i.i280.lcssa
  br i1 %i.dpt, label %.lr.ph2205.preheader, label %write_str.exit581.i

.lr.ph2205.preheader:                             ; preds = %.preheader990
  %.2240.i.i280.lcssa2783 = ptrtoaddr ptr %.2240.i.i280.lcssa to i64 ; 2 uses
  %scevgep2782 = getelementptr i8, ptr %.2240.i.i280.lcssa, i64 %i.dmh
  %i.dpu = sub i64 0, %.2240.i.i280.lcssa2783
  %scevgep2784 = getelementptr i8, ptr %scevgep2782, i64 %i.dpu
  %i.dpv = sub i64 %i.dmi, %.2240.i.i280.lcssa2783
  %i.dpw = freeze i64 %i.dpv                      ; 2 uses
  %i.dpx = add i64 %i.dpw, -1
  %xtraiter5655 = and i64 %i.dpw, 3               ; 2 uses
  %lcmp.mod5656.not = icmp eq i64 %xtraiter5655, 0
  br i1 %lcmp.mod5656.not, label %.lr.ph2205.prol.loopexit, label %.lr.ph2205.prol

.lr.ph2205.prol:                                  ; preds = %.lr.ph2205.preheader, %bb.qp
  %.3241.i.i2822204.prol = phi ptr [ %i.dqc, %bb.qp ], [ %.2240.i.i280.lcssa, %.lr.ph2205.preheader ] ; 3 uses
  %.3248.i.i2812203.prol = phi ptr [ %i.dqd, %bb.qp ], [ %.2247.i.i279.lcssa, %.lr.ph2205.preheader ] ; 3 uses
  %prol.iter5657 = phi i64 [ %prol.iter5657.next, %bb.qp ], [ 0, %.lr.ph2205.preheader ]
  %i.dpy = load i8, ptr %.3241.i.i2822204.prol, align 1, !tbaa !81 ; 2 uses
  %i.dpz = zext i8 %i.dpy to i64
  %i.dqa = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dpz
  %i.dqb = load i8, ptr %i.dqa, align 1, !tbaa !81
  %.not.i479.i.prol = icmp eq i8 %i.dqb, 0
  br i1 %.not.i479.i.prol, label %bb.qp, label %.preheader987.preheader, !prof !25

bb.qp:                                            ; preds = %.lr.ph2205.prol
  %i.dqc = getelementptr inbounds nuw i8, ptr %.3241.i.i2822204.prol, i64 1 ; 2 uses
  %i.dqd = getelementptr inbounds nuw i8, ptr %.3248.i.i2812203.prol, i64 1 ; 3 uses
  store i8 %i.dpy, ptr %.3248.i.i2812203.prol, align 1, !tbaa !81
  %prol.iter5657.next = add i64 %prol.iter5657, 1 ; 2 uses
  %prol.iter5657.cmp.not = icmp eq i64 %prol.iter5657.next, %xtraiter5655
  br i1 %prol.iter5657.cmp.not, label %.lr.ph2205.prol.loopexit, label %.lr.ph2205.prol, !llvm.loop !407

.lr.ph2205.prol.loopexit:                         ; preds = %bb.qp, %.lr.ph2205.preheader
  %.lcssa5319.unr = phi ptr [ poison, %.lr.ph2205.preheader ], [ %i.dqd, %bb.qp ]
  %.3241.i.i2822204.unr = phi ptr [ %.2240.i.i280.lcssa, %.lr.ph2205.preheader ], [ %i.dqc, %bb.qp ]
  %.3248.i.i2812203.unr = phi ptr [ %.2247.i.i279.lcssa, %.lr.ph2205.preheader ], [ %i.dqd, %bb.qp ]
  %i.dqe = icmp ult i64 %i.dpx, 3
  br i1 %i.dqe, label %write_str.exit581.i, label %.lr.ph2205

.lr.ph2200:                                       ; preds = %.preheader992, %bb.qt
  %.2240.i.i2802199 = phi ptr [ %i.dra, %bb.qt ], [ %.1239.i.i278.lcssa, %.preheader992 ] ; 10 uses
  %.2247.i.i2792198 = phi ptr [ %i.dqz, %bb.qt ], [ %.1246.i.i277.lcssa, %.preheader992 ] ; 6 uses
  %i.dqf = load i8, ptr %.2240.i.i2802199, align 1, !tbaa !81 ; 2 uses
  %i.dqg = zext i8 %i.dqf to i64
  %i.dqh = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dqg
  %i.dqi = load i8, ptr %i.dqh, align 1, !tbaa !81
  %.not268.i.i343 = icmp eq i8 %i.dqi, 0
  br i1 %.not268.i.i343, label %bb.qq, label %.preheader987.preheader, !prof !25

bb.qq:                                            ; preds = %.lr.ph2200
  %i.dqj = getelementptr inbounds nuw i8, ptr %.2240.i.i2802199, i64 1
  %i.dqk = load i8, ptr %i.dqj, align 1, !tbaa !81
  %i.dql = zext i8 %i.dqk to i64
  %i.dqm = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dql
  %i.dqn = load i8, ptr %i.dqm, align 1, !tbaa !81
  %.not269.i.i344 = icmp eq i8 %i.dqn, 0
  br i1 %.not269.i.i344, label %bb.qr, label %.loopexit994, !prof !25

bb.qr:                                            ; preds = %bb.qq
  %i.dqo = getelementptr inbounds nuw i8, ptr %.2240.i.i2802199, i64 2
  %i.dqp = load i8, ptr %i.dqo, align 1, !tbaa !81
  %i.dqq = zext i8 %i.dqp to i64
  %i.dqr = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dqq
  %i.dqs = load i8, ptr %i.dqr, align 1, !tbaa !81
  %.not270.i.i347 = icmp eq i8 %i.dqs, 0
  br i1 %.not270.i.i347, label %bb.qs, label %.loopexit995, !prof !25

bb.qs:                                            ; preds = %bb.qr
  %i.dqt = getelementptr inbounds nuw i8, ptr %.2240.i.i2802199, i64 3
  %i.dqu = load i8, ptr %i.dqt, align 1, !tbaa !81
  %i.dqv = zext i8 %i.dqu to i64
  %i.dqw = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.dqv
  %i.dqx = load i8, ptr %i.dqw, align 1, !tbaa !81
  %.not271.i.i350 = icmp eq i8 %i.dqx, 0
  br i1 %.not271.i.i350, label %bb.qt, label %.loopexit996, !prof !25

bb.qt:                                            ; preds = %bb.qs
  %i.dqy = load i32, ptr %.2240.i.i2802199, align 1
  store i32 %i.dqy, ptr %.2247.i.i2792198, align 1
  %i.dqz = getelementptr inbounds nuw i8, ptr %.2247.i.i2792198, i64 4 ; 2 uses
  %i.dra = getelementptr inbounds nuw i8, ptr %.2240.i.i2802199, i64 4 ; 3 uses
  %i.drb = ptrtoint ptr %i.dra to i64
  %i.drc = sub i64 %i.dmh, %i.drb
  %i.drd = icmp sgt i64 %i.drc, 3
  br i1 %i.drd, label %.lr.ph2200, label %.preheader990, !llvm.loop !333

.lr.ph2205:                                       ; preds = %.lr.ph2205.prol.loopexit, %bb.qu
  %.3241.i.i2822204 = phi ptr [ %i.dsa, %bb.qu ], [ %.3241.i.i2822204.unr, %.lr.ph2205.prol.loopexit ] ; 9 uses
  %.3248.i.i2812203 = phi ptr [ %i.dsb, %bb.qu ], [ %.3248.i.i2812203.unr, %.lr.ph2205.prol.loopexit ] ; 6 uses
  %i.dre = load i8, ptr %.3241.i.i2822204, align 1, !tbaa !81 ; 2 uses
  %i.drf = zext i8 %i.dre to i64
  %i.drg = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.drf
  %i.drh = load i8, ptr %i.drg, align 1, !tbaa !81
  %.not.i479.i = icmp eq i8 %i.drh, 0
  br i1 %.not.i479.i, label %.lr.ph2205.1, label %.preheader987.preheader, !prof !25

.lr.ph2205.1:                                     ; preds = %.lr.ph2205
  %i.dri = getelementptr inbounds nuw i8, ptr %.3241.i.i2822204, i64 1
  %i.drj = getelementptr inbounds nuw i8, ptr %.3248.i.i2812203, i64 1 ; 2 uses
  store i8 %i.dre, ptr %.3248.i.i2812203, align 1, !tbaa !81
  %i.drk = load i8, ptr %i.dri, align 1, !tbaa !81 ; 2 uses
  %i.drl = zext i8 %i.drk to i64
  %i.drm = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.drl
  %i.drn = load i8, ptr %i.drm, align 1, !tbaa !81
  %.not.i479.i.1 = icmp eq i8 %i.drn, 0
  br i1 %.not.i479.i.1, label %.lr.ph2205.2, label %.preheader987.preheader.loopexit.loopexit.split.loop.exit6375, !prof !25

.lr.ph2205.2:                                     ; preds = %.lr.ph2205.1
  %i.dro = getelementptr inbounds nuw i8, ptr %.3241.i.i2822204, i64 2
  %i.drp = getelementptr inbounds nuw i8, ptr %.3248.i.i2812203, i64 2 ; 2 uses
  store i8 %i.drk, ptr %i.drj, align 1, !tbaa !81
  %i.drq = load i8, ptr %i.dro, align 1, !tbaa !81 ; 2 uses
  %i.drr = zext i8 %i.drq to i64
  %i.drs = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.drr
  %i.drt = load i8, ptr %i.drs, align 1, !tbaa !81
  %.not.i479.i.2 = icmp eq i8 %i.drt, 0
  br i1 %.not.i479.i.2, label %.lr.ph2205.3, label %.preheader987.preheader.loopexit.loopexit.split.loop.exit6372, !prof !25

.lr.ph2205.3:                                     ; preds = %.lr.ph2205.2
  %i.dru = getelementptr inbounds nuw i8, ptr %.3241.i.i2822204, i64 3
  %i.drv = getelementptr inbounds nuw i8, ptr %.3248.i.i2812203, i64 3 ; 2 uses
  store i8 %i.drq, ptr %i.drp, align 1, !tbaa !81
  %i.drw = load i8, ptr %i.dru, align 1, !tbaa !81 ; 2 uses
  %i.drx = zext i8 %i.drw to i64
  %i.dry = getelementptr inbounds nuw i8, ptr @enc_table_cpy, i64 %i.drx
  %i.drz = load i8, ptr %i.dry, align 1, !tbaa !81
  %.not.i479.i.3 = icmp eq i8 %i.drz, 0
  br i1 %.not.i479.i.3, label %bb.qu, label %.preheader987.preheader.loopexit.loopexit.split.loop.exit, !prof !25

bb.qu:                                            ; preds = %.lr.ph2205.3
  %i.dsa = getelementptr inbounds nuw i8, ptr %.3241.i.i2822204, i64 4 ; 2 uses
  %i.dsb = getelementptr inbounds nuw i8, ptr %.3248.i.i2812203, i64 4 ; 2 uses
  store i8 %i.drw, ptr %i.drv, align 1, !tbaa !81
  %exitcond2785.not.3 = icmp eq ptr %i.dsa, %scevgep2784
  br i1 %exitcond2785.not.3, label %write_str.exit581.i, label %.lr.ph2205, !llvm.loop !334

.loopexit994:                                     ; preds = %bb.pz, %bb.qq
  %i.dsc = phi i8 [ %i.dqf, %bb.qq ], [ %i.dmn, %bb.pz ]
  %.5250.i.i345 = phi ptr [ %.2247.i.i2792198, %bb.qq ], [ %.1246.i.i2772191, %bb.pz ] ; 2 uses
  %.5243.i.i346 = phi ptr [ %.2240.i.i2802199, %bb.qq ], [ %.1239.i.i2782192, %bb.pz ]
  store i8 %i.dsc, ptr %.5250.i.i345, align 1
  %i.dsd = getelementptr inbounds nuw i8, ptr %.5250.i.i345, i64 1
  %i.dse = getelementptr inbounds nuw i8, ptr %.5243.i.i346, i64 1
  br label %.preheader987.preheader

.loopexit995:                                     ; preds = %bb.qa, %bb.qr
  %.6251.i.i348 = phi ptr [ %.2247.i.i2792198, %bb.qr ], [ %.1246.i.i2772191, %bb.qa ] ; 2 uses
  %.6.i.i349 = phi ptr [ %.2240.i.i2802199, %bb.qr ], [ %.1239.i.i2782192, %bb.qa ] ; 2 uses
  %i.dsf = load i16, ptr %.6.i.i349, align 1
  store i16 %i.dsf, ptr %.6251.i.i348, align 1
  %i.dsg = getelementptr inbounds nuw i8, ptr %.6251.i.i348, i64 2
  %i.dsh = getelementptr inbounds nuw i8, ptr %.6.i.i349, i64 2
  br label %.preheader987.preheader

.loopexit996:                                     ; preds = %bb.qb, %bb.qs
  %.7252.i.i351 = phi ptr [ %.2247.i.i2792198, %bb.qs ], [ %.1246.i.i2772191, %bb.qb ] ; 2 uses
  %.7.i.i352 = phi ptr [ %.2240.i.i2802199, %bb.qs ], [ %.1239.i.i2782192, %bb.qb ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.7252.i.i351, ptr noundef nonnull align 1 dereferenceable(3) %.7.i.i352, i64 3, i1 false)
  %i.dsi = getelementptr inbounds nuw i8, ptr %.7252.i.i351, i64 3
  %i.dsj = getelementptr inbounds nuw i8, ptr %.7.i.i352, i64 3
  br label %.preheader987.preheader

bb.qv:                                            ; preds = %bb.qc
  %i.dsk = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 4
  %i.dsl = load i32, ptr %.1239.i.i2782192, align 1
  store i32 %i.dsl, ptr %.1246.i.i2772191, align 1
  %i.dsm = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 4
  br label %.preheader987.preheader

bb.qw:                                            ; preds = %bb.qd
  %i.dsn = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.1246.i.i2772191, ptr noundef nonnull align 1 dereferenceable(5) %.1239.i.i2782192, i64 5, i1 false)
  %i.dso = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 5
  br label %.preheader987.preheader

bb.qx:                                            ; preds = %bb.qe
  %i.dsp = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1246.i.i2772191, ptr noundef nonnull align 1 dereferenceable(6) %.1239.i.i2782192, i64 6, i1 false)
  %i.dsq = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 6
  br label %.preheader987.preheader

bb.qy:                                            ; preds = %bb.qf
  %i.dsr = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.1246.i.i2772191, ptr noundef nonnull align 1 dereferenceable(7) %.1239.i.i2782192, i64 7, i1 false)
  %i.dss = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 7
  br label %.preheader987.preheader

bb.qz:                                            ; preds = %bb.qg
  %i.dst = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 8
  %i.dsu = load i64, ptr %.1239.i.i2782192, align 1
  store i64 %i.dsu, ptr %.1246.i.i2772191, align 1
  %i.dsv = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 8
  br label %.preheader987.preheader

bb.ra:                                            ; preds = %bb.qh
  %i.dsw = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.1246.i.i2772191, ptr noundef nonnull align 1 dereferenceable(9) %.1239.i.i2782192, i64 9, i1 false)
  %i.dsx = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 9
  br label %.preheader987.preheader

bb.rb:                                            ; preds = %bb.qi
  %i.dsy = getelementptr inbounds nuw i8, ptr %.1239.i.i2782192, i64 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.1246.i.i2772191, ptr noundef nonnull align 1 dereferenceable(10) %.1239.i.i2782192, i64 10, i1 false)
  %i.dsz = getelementptr inbounds nuw i8, ptr %.1246.i.i2772191, i64 10
end_hunk_11
