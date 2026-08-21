Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-gsm_a_rr?download=true
inline.NumInlined: 321
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@de_rr_utran_freq_list:bb.a
; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i16 @de_rr_cell_select_indic(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [64 x i32], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.d = shl i32 %3, 3                            ; 6 uses
  %i.e = tail call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.d, i32 noundef 3)
  %i.f = or disjoint i32 %i.d, 3                  ; 4 uses
  switch i8 %i.e, label %bb.aq [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.s
    i8 3, label %bb.ag
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = ashr exact i32 %i.d, 3                   ; 2 uses
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_rr_rest_octets_elem, i64 160), align 16
  %i.i = call ptr @proto_tree_add_subtree(ptr noundef %1, ptr noundef %0, i32 noundef %i.g, i32 noundef -1, i32 noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.1800) ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0249 = phi i32 [ %i.f, %bb.b ], [ %i.aa, %bb.d ] ; 7 uses
  %i.j = add i32 %.0249, 1                        ; 2 uses
  %i.k = load i32, ptr @hf_gsm_a_rr_repeat_gsm_desc, align 4
  %i.l = and i32 %.0249, 7
  %i.m = lshr exact i32 128, %i.l
  %i.n = ashr i32 %.0249, 3
  %i.o = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.n)
  %i.p = call ptr @proto_tree_add_bits_item(ptr noundef %i.i, i32 noundef %i.k, ptr noundef %0, i32 noundef %.0249, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = zext i8 %i.o to i32
  %i.r = and i32 %i.m, %i.q
  %.not304 = icmp eq i32 %i.r, 0
  br i1 %.not304, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr @hf_gsm_a_rr_band_indicator, align 4
  %i.t = add i32 %.0249, 2
  %i.u = call ptr @proto_tree_add_bits_item(ptr noundef %i.i, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.j, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_gsm_a_rr_arfcn, align 4
  %i.w = call ptr @proto_tree_add_bits_item(ptr noundef %i.i, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.t, i32 noundef 10, i32 noundef 0) ; 0 uses
  %i.x = add i32 %.0249, 12
  %i.y = load i32, ptr @hf_gsm_a_rr_bsic, align 4
  %i.z = call ptr @proto_tree_add_bits_item(ptr noundef %i.i, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.aa = add i32 %.0249, 18
  br label %bb.c, !llvm.loop !18

bb.e:                                             ; preds = %bb.a
  %i.ab = ashr exact i32 %i.d, 3                  ; 2 uses
  %i.ac = load i32, ptr @ett_gsm_rr_rest_octets_elem, align 16
  %i.ad = call ptr @proto_tree_add_subtree(ptr noundef %1, ptr noundef %0, i32 noundef %i.ab, i32 noundef -1, i32 noundef %i.ac, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.1264) ; 8 uses
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.e
  %.1250 = phi i32 [ %i.f, %bb.e ], [ %.6, %.loopexit ] ; 6 uses
  %i.ae = add i32 %.1250, 1                       ; 4 uses
  %i.af = load i32, ptr @hf_gsm_a_rr_repeat_utran_fdd_desc, align 4
  %i.ag = and i32 %.1250, 7
  %i.ah = lshr exact i32 128, %i.ag
  %i.ai = ashr i32 %.1250, 3
  %i.aj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ai)
  %i.ak = call ptr @proto_tree_add_bits_item(ptr noundef %i.ad, i32 noundef %i.af, ptr noundef %0, i32 noundef %.1250, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.al = zext i8 %i.aj to i32
  %i.am = and i32 %i.ah, %i.al
  %.not298 = icmp eq i32 %i.am, 0
  br i1 %.not298, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = add i32 %.1250, 2                       ; 2 uses
  %i.ao = load i32, ptr @hf_gsm_a_rr_bandwidth_fdd_present, align 4
  %i.ap = and i32 %i.ae, 7
  %i.aq = lshr exact i32 128, %i.ap
  %i.ar = ashr i32 %i.ae, 3
  %i.as = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ar)
  %i.at = call ptr @proto_tree_add_bits_item(ptr noundef %i.ad, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.ae, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.au = zext i8 %i.as to i32
  %i.av = and i32 %i.aq, %i.au
  %.not299 = icmp eq i32 %i.av, 0
  br i1 %.not299, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load i32, ptr @hf_gsm_a_rr_bandwidth_fdd, align 4
  %i.ax = call ptr @proto_tree_add_bits_item(ptr noundef %i.ad, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.an, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ay = add i32 %.1250, 5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2251 = phi i32 [ %i.ay, %bb.h ], [ %i.an, %bb.g ] ; 5 uses
  %i.az = load i32, ptr @hf_gsm_a_rr_fdd_uarfcn, align 4
  %i.ba = call ptr @proto_tree_add_bits_item(ptr noundef %i.ad, i32 noundef %i.az, ptr noundef %0, i32 noundef %.2251, i32 noundef 14, i32 noundef 0) ; 0 uses
  %i.bb = add i32 %.2251, 14                      ; 3 uses
  %i.bc = add i32 %.2251, 15                      ; 4 uses
  %i.bd = load i32, ptr @hf_gsm_a_rr_fdd_cell_info_present, align 4
  %i.be = and i32 %i.bb, 7
  %i.bf = lshr exact i32 128, %i.be
  %i.bg = ashr i32 %i.bb, 3
  %i.bh = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bg)
  %i.bi = call ptr @proto_tree_add_bits_item(ptr noundef %i.ad, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.bb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bj = zext i8 %i.bh to i32
  %i.bk = and i32 %i.bf, %i.bj
  %.not300 = icmp eq i32 %i.bk, 0
  br i1 %.not300, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = add i32 %.2251, 16                      ; 2 uses
  %i.bm = load i32, ptr @hf_gsm_a_rr_fdd_indic0, align 4
  %i.bn = and i32 %i.bc, 7
  %i.bo = lshr exact i32 128, %i.bn
  %i.bp = ashr i32 %i.bc, 3
  %i.bq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bp)
  %i.br = call ptr @proto_tree_add_bits_item(ptr noundef %i.ad, i32 noundef %i.bm, ptr noundef %0, i32 noundef %i.bc, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bs = zext i8 %i.bq to i32
  %i.bt = and i32 %i.bo, %i.bs
  %.not301 = icmp eq i32 %i.bt, 0
  %i.bu = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.bl, i32 noundef 5) ; 3 uses
  %i.bv = zext i8 %i.bu to i32
  %i.bw = load i32, ptr @hf_gsm_a_rr_nr_of_fdd_cells, align 4
  %i.bx = ashr i32 %i.bl, 3
  %i.by = call ptr @proto_tree_add_uint(ptr noundef %i.ad, i32 noundef %i.bw, ptr noundef %0, i32 noundef %i.bx, i32 noundef 1, i32 noundef %i.bv) ; 0 uses
  %i.bz = add i32 %.2251, 21                      ; 4 uses
  %i.ca = zext i8 %i.bu to i64
  %i.cb = getelementptr i8, ptr @convert_n_to_p, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1
  %.fr302 = freeze i8 %i.cc                       ; 2 uses
  %i.cd = zext i8 %.fr302 to i32                  ; 3 uses
  %i.ce = ashr i32 %i.bz, 3                       ; 4 uses
  %i.cf = lshr i32 %i.cd, 3
  %i.cg = add nuw nsw i32 %i.cf, 1                ; 2 uses
  %i.ch = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_rr_rest_octets_elem, i64 52), align 4
  %i.ci = call ptr @proto_tree_add_subtree(ptr noundef %i.ad, ptr noundef %0, i32 noundef %i.ce, i32 noundef %i.cg, i32 noundef %i.ch, ptr noundef null, ptr noundef nonnull @.str.1264) ; 5 uses
  %i.cj = load i32, ptr @hf_gsm_a_rr_field_bit_long, align 4
  %i.ck = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %i.ci, i32 noundef %i.cj, ptr noundef %0, i32 noundef %i.ce, i32 noundef %i.cg, ptr noundef null, ptr noundef nonnull @.str.1783, i32 noundef %i.cd) ; 0 uses
  br i1 %.not301, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cl = load i32, ptr @hf_gsm_a_rr_scrambling_code, align 4
  %i.cm = call ptr @proto_tree_add_uint(ptr noundef %i.ci, i32 noundef %i.cl, ptr noundef %0, i32 noundef %i.ce, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.cn = load i32, ptr @hf_gsm_a_rr_diversity, align 4
  %i.co = call ptr @proto_tree_add_uint(ptr noundef %i.ci, i32 noundef %i.cn, ptr noundef %0, i32 noundef %i.ce, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cp = add i8 %i.bu, -17
  %.not258 = icmp ult i8 %i.cp, -16
  br i1 %.not258, label %.loopexit, label %.preheader309

.preheader309:                                    ; preds = %bb.l
  %.not356 = icmp eq i8 %.fr302, 0
  br i1 %.not356, label %._crit_edge347, label %.lr.ph346

.lr.ph346:                                        ; preds = %.preheader309, %bb.m
  %.0345 = phi i32 [ %i.da, %bb.m ], [ 1, %.preheader309 ] ; 3 uses
  %.0233344 = phi i32 [ %.1234, %bb.m ], [ 0, %.preheader309 ]
  %.0237343 = phi i32 [ %.1238, %bb.m ], [ 1, %.preheader309 ] ; 2 uses
  %.0241342 = phi i32 [ %.1242, %bb.m ], [ 10, %.preheader309 ] ; 4 uses
  %.0245341 = phi i32 [ %i.cv, %bb.m ], [ %i.cd, %.preheader309 ]
  %.3252340 = phi i32 [ %i.ct, %bb.m ], [ %i.bz, %.preheader309 ] ; 2 uses
  %i.cq = call i32 @tvb_get_bits32(ptr noundef %0, i32 noundef %.3252340, i32 noundef %.0241342, i32 noundef 0) ; 2 uses
  %i.cr = sext i32 %.0345 to i64
  %i.cs = getelementptr [4 x i8], ptr %i.c, i64 %i.cr
  store i32 %i.cq, ptr %i.cs, align 4
  %i.ct = add i32 %.0241342, %.3252340            ; 3 uses
  %i.cu = icmp eq i32 %i.cq, 0
  br i1 %i.cu, label %.thread, label %bb.m

bb.m:                                             ; preds = %.lr.ph346
  %i.cv = sub i32 %.0245341, %.0241342            ; 3 uses
  %i.cw = add i32 %.0233344, 1                    ; 2 uses
  %i.cx = icmp eq i32 %i.cw, %.0237343            ; 3 uses
  %i.cy = sext i1 %i.cx to i32
  %.1242 = add i32 %.0241342, %i.cy
  %i.cz = zext i1 %i.cx to i32
  %.1238 = shl i32 %.0237343, %i.cz
  %.1234 = select i1 %i.cx, i32 0, i32 %i.cw
  %i.da = add i32 %.0345, 1                       ; 2 uses
  %i.db = icmp sgt i32 %i.cv, 0
  br i1 %i.db, label %.lr.ph346, label %._crit_edge347, !llvm.loop !19

._crit_edge347:                                   ; preds = %bb.m, %.preheader309
  %.3252.lcssa = phi i32 [ %i.bz, %.preheader309 ], [ %i.ct, %bb.m ]
  %.0245.lcssa = phi i32 [ 0, %.preheader309 ], [ %i.cv, %bb.m ]
  %.0.lcssa = phi i32 [ 1, %.preheader309 ], [ %i.da, %bb.m ]
  %i.dc = add i32 %.0245.lcssa, %.3252.lcssa
  br label %.thread

.thread:                                          ; preds = %.lr.ph346, %._crit_edge347
  %.0314 = phi i32 [ %.0.lcssa, %._crit_edge347 ], [ %.0345, %.lr.ph346 ]
  %i.dd = phi i32 [ %i.dc, %._crit_edge347 ], [ %i.ct, %.lr.ph346 ] ; 3 uses
  %i.de = add i32 %.0314, -1                      ; 2 uses
  %.not259351 = icmp slt i32 %i.de, 1
  br i1 %.not259351, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.thread
  %i.df = ashr i32 %i.dd, 3                       ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %f_k.exit
  %.1352 = phi i32 [ 1, %.preheader.lr.ph ], [ %8, %f_k.exit ] ; 6 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader, %bb.n
  %.0.i.i = phi i32 [ %i.dg, %bb.n ], [ 1, %.preheader ]
  %i.dg = shl i32 %.0.i.i, 1                      ; 3 uses
  %.not.i.i = icmp sgt i32 %i.dg, %.1352
  br i1 %.not.i.i, label %greatest_power_of_2_lesser_or_equal_to.exit.i, label %bb.n, !llvm.loop !6

greatest_power_of_2_lesser_or_equal_to.exit.i:    ; preds = %bb.n
  %7 = zext nneg i32 %.1352 to i64
  %i.dh = getelementptr [4 x i8], ptr %i.c, i64 %7
  %i.di = load i32, ptr %i.dh, align 4            ; 2 uses
  %i.dj = icmp samesign ugt i32 %.1352, 1
  br i1 %i.dj, label %.preheader.preheader.i, label %f_k.exit

.preheader.preheader.i:                           ; preds = %greatest_power_of_2_lesser_or_equal_to.exit.i
  %i.dk = add i32 %i.di, -1
  %i.dl = ashr exact i32 %i.dg, 1
  %i.dm = sdiv i32 1023, %i.dl
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.r, %.preheader.preheader.i
  %.034.i = phi i32 [ %.1.i, %bb.r ], [ %i.dk, %.preheader.preheader.i ] ; 2 uses
  %.02433.i = phi i32 [ %.125.i, %bb.r ], [ %.1352, %.preheader.preheader.i ] ; 4 uses
  %.02632.i = phi i32 [ %i.dq, %bb.r ], [ %i.dm, %.preheader.preheader.i ]
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.preheader.i
  %.0.i27.i = phi i32 [ %i.dn, %bb.o ], [ 1, %.preheader.i ] ; 2 uses
  %i.dn = shl i32 %.0.i27.i, 1                    ; 2 uses
  %.not.i28.i = icmp sgt i32 %i.dn, %.02433.i
  br i1 %.not.i28.i, label %greatest_power_of_2_lesser_or_equal_to.exit29.i, label %bb.o, !llvm.loop !6

greatest_power_of_2_lesser_or_equal_to.exit29.i:  ; preds = %bb.o
  %i.do = and i32 %.0.i27.i, 2147483647           ; 3 uses
  %i.dp = shl i32 %.02632.i, 1                    ; 2 uses
  %i.dq = or disjoint i32 %i.dp, 1                ; 2 uses
  %i.dr = shl nuw i32 %.02433.i, 1
  %i.ds = mul nuw i32 %i.do, 3
  %i.dt = icmp slt i32 %i.dr, %i.ds
  br i1 %i.dt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %greatest_power_of_2_lesser_or_equal_to.exit29.i
  %.neg3031.i = lshr i32 %i.do, 1
  %i.du = sub nsw i32 %.02433.i, %.neg3031.i      ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr [4 x i8], ptr %i.c, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = ashr exact i32 %i.dp, 1
  %i.dz = add i32 %i.dy, %.034.i
  %i.ea = add i32 %i.dz, %i.dx
  br label %bb.r

bb.q:                                             ; preds = %greatest_power_of_2_lesser_or_equal_to.exit29.i
  %i.eb = sub nsw i32 %.02433.i, %i.do            ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr [4 x i8], ptr %i.c, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = add i32 %i.ee, %.034.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.125.i = phi i32 [ %i.du, %bb.p ], [ %i.eb, %bb.q ] ; 2 uses
  %.pn.i = phi i32 [ %i.ea, %bb.p ], [ %i.ef, %bb.q ]
  %.1.i = srem i32 %.pn.i, %i.dq                  ; 2 uses
  %i.eg = icmp sgt i32 %.125.i, 1
  br i1 %i.eg, label %.preheader.i, label %._crit_edge.loopexit.i, !llvm.loop !8

._crit_edge.loopexit.i:                           ; preds = %bb.r
  %i.eh = add i32 %.1.i, 1
  br label %f_k.exit

f_k.exit:                                         ; preds = %greatest_power_of_2_lesser_or_equal_to.exit.i, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i32 [ %i.di, %greatest_power_of_2_lesser_or_equal_to.exit.i ], [ %i.eh, %._crit_edge.loopexit.i ]
  %i.ei = srem i32 %.0.lcssa.i, 1024              ; 2 uses
  %i.ej = load i32, ptr @hf_gsm_a_rr_scrambling_code, align 4
  %i.ek = and i32 %i.ei, 511
  %i.el = call ptr @proto_tree_add_uint(ptr noundef %i.ci, i32 noundef %i.ej, ptr noundef %0, i32 noundef %i.df, i32 noundef 0, i32 noundef %i.ek) ; 0 uses
  %i.em = load i32, ptr @hf_gsm_a_rr_diversity, align 4
  %i.en = lshr i32 %i.ei, 9
  %i.eo = and i32 %i.en, 1
  %i.ep = call ptr @proto_tree_add_uint(ptr noundef %i.ci, i32 noundef %i.em, ptr noundef %0, i32 noundef %i.df, i32 noundef 0, i32 noundef %i.eo) ; 0 uses
  %8 = add nuw nsw i32 %.1352, 1
  %.not259.not = icmp slt i32 %.1352, %i.de
  br i1 %.not259.not, label %.preheader, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %f_k.exit, %.thread, %bb.l, %bb.i
  %.6 = phi i32 [ %i.bc, %bb.i ], [ %i.bz, %bb.l ], [ %i.dd, %.thread ], [ %i.dd, %f_k.exit ]
  br label %bb.f, !llvm.loop !21

bb.s:                                             ; preds = %bb.a
  %i.eq = ashr exact i32 %i.d, 3                  ; 2 uses
  %i.er = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_rr_rest_octets_elem, i64 4), align 4
  %i.es = call ptr @proto_tree_add_subtree(ptr noundef %1, ptr noundef %0, i32 noundef %i.eq, i32 noundef -1, i32 noundef %i.er, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.1268) ; 8 uses
  br label %bb.t

bb.t:                                             ; preds = %.loopexit311, %bb.s
  %.7 = phi i32 [ %i.f, %bb.s ], [ %.12, %.loopexit311 ] ; 6 uses
  %i.et = add i32 %.7, 1                          ; 4 uses
  %i.eu = load i32, ptr @hf_gsm_a_rr_repeat_utran_tdd_desc, align 4
  %i.ev = and i32 %.7, 7
  %i.ew = lshr exact i32 128, %i.ev
  %i.ex = ashr i32 %.7, 3
  %i.ey = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ex)
  %i.ez = call ptr @proto_tree_add_bits_item(ptr noundef %i.es, i32 noundef %i.eu, ptr noundef %0, i32 noundef %.7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fa = zext i8 %i.ey to i32
  %i.fb = and i32 %i.ew, %i.fa
  %.not292 = icmp eq i32 %i.fb, 0
  br i1 %.not292, label %.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fc = add i32 %.7, 2                          ; 2 uses
  %i.fd = load i32, ptr @hf_gsm_a_rr_bandwidth_tdd_present, align 4
  %i.fe = and i32 %i.et, 7
  %i.ff = lshr exact i32 128, %i.fe
  %i.fg = ashr i32 %i.et, 3
  %i.fh = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.fg)
  %i.fi = call ptr @proto_tree_add_bits_item(ptr noundef %i.es, i32 noundef %i.fd, ptr noundef %0, i32 noundef %i.et, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fj = zext i8 %i.fh to i32
  %i.fk = and i32 %i.ff, %i.fj
  %.not293 = icmp eq i32 %i.fk, 0
  br i1 %.not293, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fl = load i32, ptr @hf_gsm_a_rr_bandwidth_tdd, align 4
  %i.fm = call ptr @proto_tree_add_bits_item(ptr noundef %i.es, i32 noundef %i.fl, ptr noundef %0, i32 noundef %i.fc, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.fn = add i32 %.7, 5
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.8 = phi i32 [ %i.fn, %bb.v ], [ %i.fc, %bb.u ] ; 7 uses
  %i.fo = load i32, ptr @hf_gsm_a_rr_tdd_uarfcn, align 4
  %i.fp = call ptr @proto_tree_add_bits_item(ptr noundef %i.es, i32 noundef %i.fo, ptr noundef %0, i32 noundef %.8, i32 noundef 14, i32 noundef 0) ; 0 uses
  %i.fq = add i32 %.8, 1                          ; 4 uses
  %i.fr = load i32, ptr @hf_gsm_a_rr_tdd_cell_info_present, align 4
  %i.fs = and i32 %.8, 7
  %i.ft = lshr exact i32 128, %i.fs
  %i.fu = ashr i32 %.8, 3
  %i.fv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.fu)
  %i.fw = call ptr @proto_tree_add_bits_item(ptr noundef %i.es, i32 noundef %i.fr, ptr noundef %0, i32 noundef %.8, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fx = zext i8 %i.fv to i32
  %i.fy = and i32 %i.ft, %i.fx
  %.not294 = icmp eq i32 %i.fy, 0
  br i1 %.not294, label %.loopexit311, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fz = add i32 %.8, 2                          ; 2 uses
  %i.ga = load i32, ptr @hf_gsm_a_rr_tdd_indic0, align 4
  %i.gb = and i32 %i.fq, 7
  %i.gc = lshr exact i32 128, %i.gb
  %i.gd = ashr i32 %i.fq, 3
  %i.ge = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gd)
  %i.gf = call ptr @proto_tree_add_bits_item(ptr noundef %i.es, i32 noundef %i.ga, ptr noundef %0, i32 noundef %i.fq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gg = zext i8 %i.ge to i32
  %i.gh = and i32 %i.gc, %i.gg
  %.not295 = icmp eq i32 %i.gh, 0
  %i.gi = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.fz, i32 noundef 5) ; 3 uses
  %i.gj = zext i8 %i.gi to i32
  %i.gk = load i32, ptr @hf_gsm_a_rr_nr_of_tdd_cells, align 4
  %i.gl = ashr i32 %i.fz, 3
  %i.gm = call ptr @proto_tree_add_uint(ptr noundef %i.es, i32 noundef %i.gk, ptr noundef %0, i32 noundef %i.gl, i32 noundef 1, i32 noundef %i.gj) ; 0 uses
  %i.gn = add i32 %.8, 7                          ; 4 uses
  %i.go = zext i8 %i.gi to i64
  %i.gp = getelementptr i8, ptr @convert_n_to_q, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1
  %.fr296 = freeze i8 %i.gq                       ; 2 uses
  %i.gr = zext i8 %.fr296 to i32                  ; 3 uses
  %i.gs = ashr i32 %i.gn, 3                       ; 5 uses
  %i.gt = lshr i32 %i.gr, 3
  %i.gu = add nuw nsw i32 %i.gt, 1                ; 2 uses
  %i.gv = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_rr_rest_octets_elem, i64 56), align 8
  %i.gw = call ptr @proto_tree_add_subtree(ptr noundef %i.es, ptr noundef %0, i32 noundef %i.gs, i32 noundef %i.gu, i32 noundef %i.gv, ptr noundef null, ptr noundef nonnull @.str.1268) ; 7 uses
  %i.gx = load i32, ptr @hf_gsm_a_rr_field_bit_long, align 4
  %i.gy = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %i.gw, i32 noundef %i.gx, ptr noundef %0, i32 noundef %i.gs, i32 noundef %i.gu, ptr noundef null, ptr noundef nonnull @.str.1783, i32 noundef %i.gr) ; 0 uses
  br i1 %.not295, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gz = load i32, ptr @hf_gsm_a_rr_cell_parameter, align 4
  %i.ha = call ptr @proto_tree_add_uint(ptr noundef %i.gw, i32 noundef %i.gz, ptr noundef %0, i32 noundef %i.gs, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.hb = load i32, ptr @hf_gsm_a_rr_sync_case_tstd, align 4
  %i.hc = call ptr @proto_tree_add_uint(ptr noundef %i.gw, i32 noundef %i.hb, ptr noundef %0, i32 noundef %i.gs, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.hd = load i32, ptr @hf_gsm_a_rr_diversity_tdd, align 4
  %i.he = call ptr @proto_tree_add_uint(ptr noundef %i.gw, i32 noundef %i.hd, ptr noundef %0, i32 noundef %i.gs, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.hf = add i8 %i.gi, -21
  %.not = icmp ult i8 %i.hf, -20
  br i1 %.not, label %.loopexit311, label %.preheader312

.preheader312:                                    ; preds = %bb.z
  %.not354 = icmp eq i8 %.fr296, 0
  br i1 %.not354, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader312, %bb.aa
  %.2335 = phi i32 [ %i.hq, %bb.aa ], [ 1, %.preheader312 ] ; 3 uses
  %.2235334 = phi i32 [ %.3236, %bb.aa ], [ 0, %.preheader312 ]
  %.2239333 = phi i32 [ %.3240, %bb.aa ], [ 1, %.preheader312 ] ; 2 uses
  %.2243332 = phi i32 [ %.3244, %bb.aa ], [ 9, %.preheader312 ] ; 4 uses
  %.2247331 = phi i32 [ %i.hl, %bb.aa ], [ %i.gr, %.preheader312 ]
  %.9330 = phi i32 [ %i.hj, %bb.aa ], [ %i.gn, %.preheader312 ] ; 2 uses
  %i.hg = call i32 @tvb_get_bits32(ptr noundef %0, i32 noundef %.9330, i32 noundef %.2243332, i32 noundef 0) ; 2 uses
  %i.hh = sext i32 %.2335 to i64
  %i.hi = getelementptr [4 x i8], ptr %i.c, i64 %i.hh
  store i32 %i.hg, ptr %i.hi, align 4
  %i.hj = add i32 %.2243332, %.9330               ; 3 uses
  %i.hk = icmp eq i32 %i.hg, 0
  br i1 %i.hk, label %.thread283, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph
  %i.hl = sub i32 %.2247331, %.2243332            ; 3 uses
  %i.hm = add i32 %.2235334, 1                    ; 2 uses
  %i.hn = icmp eq i32 %i.hm, %.2239333            ; 3 uses
  %i.ho = sext i1 %i.hn to i32
  %.3244 = add i32 %.2243332, %i.ho
  %i.hp = zext i1 %i.hn to i32
  %.3240 = shl i32 %.2239333, %i.hp
  %.3236 = select i1 %i.hn, i32 0, i32 %i.hm
  %i.hq = add i32 %.2335, 1                       ; 2 uses
  %i.hr = icmp sgt i32 %i.hl, 0
  br i1 %i.hr, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.aa, %.preheader312
  %.9.lcssa = phi i32 [ %i.gn, %.preheader312 ], [ %i.hj, %bb.aa ]
  %.2247.lcssa = phi i32 [ 0, %.preheader312 ], [ %i.hl, %bb.aa ]
  %.2.lcssa = phi i32 [ 1, %.preheader312 ], [ %i.hq, %bb.aa ]
  %i.hs = add i32 %.2247.lcssa, %.9.lcssa
  br label %.thread283

.thread283:                                       ; preds = %.lr.ph, %._crit_edge
  %.2321 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %.2335, %.lr.ph ]
  %i.ht = phi i32 [ %i.hs, %._crit_edge ], [ %i.hj, %.lr.ph ] ; 3 uses
  %i.hu = add i32 %.2321, -1                      ; 2 uses
  %.not257338 = icmp slt i32 %i.hu, 1
  br i1 %.not257338, label %.loopexit311, label %.preheader310.lr.ph

.preheader310.lr.ph:                              ; preds = %.thread283
  %i.hv = ashr i32 %i.ht, 3                       ; 3 uses
  br label %.preheader310

.preheader310:                                    ; preds = %.preheader310.lr.ph, %f_k.exit278
  %.3339 = phi i32 [ 1, %.preheader310.lr.ph ], [ %10, %f_k.exit278 ] ; 6 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader310, %bb.ab
  %.0.i.i261 = phi i32 [ %i.hw, %bb.ab ], [ 1, %.preheader310 ]
  %i.hw = shl i32 %.0.i.i261, 1                   ; 3 uses
  %.not.i.i262 = icmp sgt i32 %i.hw, %.3339
  br i1 %.not.i.i262, label %greatest_power_of_2_lesser_or_equal_to.exit.i263, label %bb.ab, !llvm.loop !6

greatest_power_of_2_lesser_or_equal_to.exit.i263: ; preds = %bb.ab
  %9 = zext nneg i32 %.3339 to i64
  %i.hx = getelementptr [4 x i8], ptr %i.c, i64 %9
  %i.hy = load i32, ptr %i.hx, align 4            ; 2 uses
  %i.hz = icmp samesign ugt i32 %.3339, 1
  br i1 %i.hz, label %.preheader.preheader.i265, label %f_k.exit278

.preheader.preheader.i265:                        ; preds = %greatest_power_of_2_lesser_or_equal_to.exit.i263
  %i.ia = add i32 %i.hy, -1
  %i.ib = ashr exact i32 %i.hw, 1
  %i.ic = sdiv i32 511, %i.ib
  br label %.preheader.i266

.preheader.i266:                                  ; preds = %bb.af, %.preheader.preheader.i265
  %.034.i267 = phi i32 [ %.1.i275, %bb.af ], [ %i.ia, %.preheader.preheader.i265 ] ; 2 uses
  %.02433.i268 = phi i32 [ %.125.i273, %bb.af ], [ %.3339, %.preheader.preheader.i265 ] ; 4 uses
  %.02632.i269 = phi i32 [ %i.ig, %bb.af ], [ %i.ic, %.preheader.preheader.i265 ]
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.preheader.i266
  %.0.i27.i270 = phi i32 [ %i.id, %bb.ac ], [ 1, %.preheader.i266 ] ; 2 uses
  %i.id = shl i32 %.0.i27.i270, 1                 ; 2 uses
  %.not.i28.i271 = icmp sgt i32 %i.id, %.02433.i268
  br i1 %.not.i28.i271, label %greatest_power_of_2_lesser_or_equal_to.exit29.i272, label %bb.ac, !llvm.loop !6

greatest_power_of_2_lesser_or_equal_to.exit29.i272: ; preds = %bb.ac
  %i.ie = and i32 %.0.i27.i270, 2147483647        ; 3 uses
  %i.if = shl i32 %.02632.i269, 1                 ; 2 uses
  %i.ig = or disjoint i32 %i.if, 1                ; 2 uses
  %i.ih = shl nuw i32 %.02433.i268, 1
  %i.ii = mul nuw i32 %i.ie, 3
  %i.ij = icmp slt i32 %i.ih, %i.ii
  br i1 %i.ij, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %greatest_power_of_2_lesser_or_equal_to.exit29.i272
  %.neg3031.i277 = lshr i32 %i.ie, 1
  %i.ik = sub nsw i32 %.02433.i268, %.neg3031.i277 ; 2 uses
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr [4 x i8], ptr %i.c, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4
  %i.io = ashr exact i32 %i.if, 1
  %i.ip = add i32 %i.io, %.034.i267
  %i.iq = add i32 %i.ip, %i.in
  br label %bb.af

bb.ae:                                            ; preds = %greatest_power_of_2_lesser_or_equal_to.exit29.i272
  %i.ir = sub nsw i32 %.02433.i268, %i.ie         ; 2 uses
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr [4 x i8], ptr %i.c, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4
  %i.iv = add i32 %i.iu, %.034.i267
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.125.i273 = phi i32 [ %i.ik, %bb.ad ], [ %i.ir, %bb.ae ] ; 2 uses
  %.pn.i274 = phi i32 [ %i.iq, %bb.ad ], [ %i.iv, %bb.ae ]
  %.1.i275 = srem i32 %.pn.i274, %i.ig            ; 2 uses
  %i.iw = icmp sgt i32 %.125.i273, 1
  br i1 %i.iw, label %.preheader.i266, label %._crit_edge.loopexit.i276, !llvm.loop !8

._crit_edge.loopexit.i276:                        ; preds = %bb.af
  %i.ix = add i32 %.1.i275, 1
  br label %f_k.exit278

f_k.exit278:                                      ; preds = %greatest_power_of_2_lesser_or_equal_to.exit.i263, %._crit_edge.loopexit.i276
  %.0.lcssa.i264 = phi i32 [ %i.hy, %greatest_power_of_2_lesser_or_equal_to.exit.i263 ], [ %i.ix, %._crit_edge.loopexit.i276 ]
  %i.iy = srem i32 %.0.lcssa.i264, 1024           ; 3 uses
  %i.iz = load i32, ptr @hf_gsm_a_rr_cell_parameter, align 4
  %i.ja = and i32 %i.iy, 127
  %i.jb = call ptr @proto_tree_add_uint(ptr noundef %i.gw, i32 noundef %i.iz, ptr noundef %0, i32 noundef %i.hv, i32 noundef 0, i32 noundef %i.ja) ; 0 uses
  %i.jc = load i32, ptr @hf_gsm_a_rr_sync_case_tstd, align 4
  %i.jd = lshr i32 %i.iy, 7
  %i.je = and i32 %i.jd, 1
  %i.jf = call ptr @proto_tree_add_uint(ptr noundef %i.gw, i32 noundef %i.jc, ptr noundef %0, i32 noundef %i.hv, i32 noundef 0, i32 noundef %i.je) ; 0 uses
  %i.jg = load i32, ptr @hf_gsm_a_rr_diversity_tdd, align 4
  %i.jh = lshr i32 %i.iy, 8
  %i.ji = and i32 %i.jh, 1
  %i.jj = call ptr @proto_tree_add_uint(ptr noundef %i.gw, i32 noundef %i.jg, ptr noundef %0, i32 noundef %i.hv, i32 noundef 0, i32 noundef %i.ji) ; 0 uses
  %10 = add nuw nsw i32 %.3339, 1
  %.not257.not = icmp slt i32 %.3339, %i.hu
  br i1 %.not257.not, label %.preheader310, label %.loopexit311, !llvm.loop !23

.loopexit311:                                     ; preds = %f_k.exit278, %.thread283, %bb.z, %bb.w
  %.12 = phi i32 [ %i.fq, %bb.w ], [ %i.gn, %bb.z ], [ %i.ht, %.thread283 ], [ %i.ht, %f_k.exit278 ]
  br label %bb.t, !llvm.loop !24

bb.ag:                                            ; preds = %bb.a
  %i.jk = ashr exact i32 %i.d, 3                  ; 2 uses
  %i.jl = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_rr_rest_octets_elem, i64 236), align 4
  %i.jm = call ptr @proto_tree_add_subtree(ptr noundef %1, ptr noundef %0, i32 noundef %i.jk, i32 noundef -1, i32 noundef %i.jl, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.1808) ; 8 uses
  br label %bb.ah

bb.ah:                                            ; preds = %.backedge, %bb.ag
  %.13 = phi i32 [ %i.f, %bb.ag ], [ %.13.be, %.backedge ] ; 7 uses
  %i.jn = add i32 %.13, 1                         ; 2 uses
  %i.jo = load i32, ptr @hf_gsm_a_rr_repeat_eutran_desc, align 4
  %i.jp = and i32 %.13, 7
  %i.jq = lshr exact i32 128, %i.jp
  %i.jr = ashr i32 %.13, 3
  %i.js = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.jr)
  %i.jt = call ptr @proto_tree_add_bits_item(ptr noundef %i.jm, i32 noundef %i.jo, ptr noundef %0, i32 noundef %.13, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ju = zext i8 %i.js to i32
  %i.jv = and i32 %i.jq, %i.ju
  %.not288 = icmp eq i32 %i.jv, 0
  br i1 %.not288, label %.sink.split, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jw = load i32, ptr @hf_gsm_a_rr_eutran_earfcn, align 4
  %i.jx = call ptr @proto_tree_add_bits_item(ptr noundef %i.jm, i32 noundef %i.jw, ptr noundef %0, i32 noundef %i.jn, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.jy = add i32 %.13, 17                        ; 3 uses
  %i.jz = add i32 %.13, 18                        ; 2 uses
  %i.ka = load i32, ptr @hf_gsm_a_rr_eutran_measurement_bandwidth_present, align 4
  %i.kb = and i32 %i.jy, 7
  %i.kc = lshr exact i32 128, %i.kb
  %i.kd = ashr i32 %i.jy, 3
  %i.ke = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.kd)
  %i.kf = call ptr @proto_tree_add_bits_item(ptr noundef %i.jm, i32 noundef %i.ka, ptr noundef %0, i32 noundef %i.jy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.kg = zext i8 %i.ke to i32
  %i.kh = and i32 %i.kc, %i.kg
  %.not289 = icmp eq i32 %i.kh, 0
  br i1 %.not289, label %.preheader440, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ki = load i32, ptr @hf_gsm_a_rr_eutran_measurement_bandwidth, align 4
  %i.kj = call ptr @proto_tree_add_bits_item(ptr noundef %i.jm, i32 noundef %i.ki, ptr noundef %0, i32 noundef %i.jz, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.kk = add i32 %.13, 21
  br label %.preheader440

.preheader440:                                    ; preds = %bb.aj, %bb.ai
  %.15.ph = phi i32 [ %i.jz, %bb.ai ], [ %i.kk, %bb.aj ]
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader440, %de_rr_eutran_not_allowed_cells.exit
  %.15 = phi i32 [ %i.kz, %de_rr_eutran_not_allowed_cells.exit ], [ %.15.ph, %.preheader440 ] ; 6 uses
  %i.kl = add i32 %.15, 1                         ; 6 uses
  %i.km = load i32, ptr @hf_gsm_a_rr_repeated_eutran_not_allowed_cells, align 4
  %i.kn = and i32 %.15, 7
  %i.ko = lshr exact i32 128, %i.kn
  %i.kp = ashr i32 %.15, 3
  %i.kq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.kp)
  %i.kr = call ptr @proto_tree_add_bits_item(ptr noundef %i.jm, i32 noundef %i.km, ptr noundef %0, i32 noundef %.15, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ks = zext i8 %i.kq to i32
  %i.kt = and i32 %i.ko, %i.ks
  %.not290 = icmp eq i32 %i.kt, 0
  br i1 %.not290, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ku = ashr i32 %i.kl, 3                       ; 2 uses
  %i.kv = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_rr_rest_octets_elem, i64 92), align 4
  %i.kw = call ptr @proto_tree_add_subtree(ptr noundef %i.jm, ptr noundef %0, i32 noundef %i.ku, i32 noundef -1, i32 noundef %i.kv, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1789) ; 3 uses
  %i.kx = call fastcc i32 @de_rr_eutran_pcid(ptr noundef %0, ptr noundef %i.kw, i32 noundef %i.kl)
  %i.ky = add i32 %i.kx, %i.kl
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al
  %.0.i = phi i32 [ %i.ky, %bb.al ], [ %i.lk, %bb.an ] ; 5 uses
  %i.kz = add i32 %.0.i, 1                        ; 3 uses
  %i.la = load i32, ptr @hf_gsm_a_rr_repeated_eutran_frequency_index, align 4
  %i.lb = and i32 %.0.i, 7
  %i.lc = lshr exact i32 128, %i.lb
  %i.ld = ashr i32 %.0.i, 3
  %i.le = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ld)
  %i.lf = call ptr @proto_tree_add_bits_item(ptr noundef %i.kw, i32 noundef %i.la, ptr noundef %0, i32 noundef %.0.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.lg = zext i8 %i.le to i32
  %i.lh = and i32 %i.lc, %i.lg
  %.not.i = icmp eq i32 %i.lh, 0
  br i1 %.not.i, label %de_rr_eutran_not_allowed_cells.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.li = load i32, ptr @hf_gsm_a_rr_eutran_frequency_index, align 4
  %i.lj = call ptr @proto_tree_add_bits_item(ptr noundef %i.kw, i32 noundef %i.li, ptr noundef %0, i32 noundef %i.kz, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.lk = add i32 %.0.i, 4
  br label %bb.am, !llvm.loop !25

de_rr_eutran_not_allowed_cells.exit:              ; preds = %bb.am
  %i.ll = load ptr, ptr %i.a, align 8
  %i.lm = ashr i32 %i.kz, 3
  %reass.sub = sub nsw i32 %i.lm, %i.ku
  %i.ln = add nsw i32 %reass.sub, 1
  call void @proto_item_set_len(ptr noundef %i.ll, i32 noundef %i.ln)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ak, !llvm.loop !26

bb.ao:                                            ; preds = %bb.ak
  %i.lo = add i32 %.15, 2                         ; 2 uses
  %i.lp = load i32, ptr @hf_gsm_a_rr_eutran_pcid_present, align 4
  %i.lq = and i32 %i.kl, 7
  %i.lr = lshr exact i32 128, %i.lq
  %i.ls = ashr i32 %i.kl, 3
  %i.lt = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ls)
  %i.lu = call ptr @proto_tree_add_bits_item(ptr noundef %i.jm, i32 noundef %i.lp, ptr noundef %0, i32 noundef %i.kl, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.lv = zext i8 %i.lt to i32
  %i.lw = and i32 %i.lr, %i.lv
  %.not291 = icmp eq i32 %i.lw, 0
  br i1 %.not291, label %.backedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lx = load i32, ptr @hf_gsm_a_rr_eutran_pcid, align 4
  %i.ly = call ptr @proto_tree_add_bits_item(ptr noundef %i.jm, i32 noundef %i.lx, ptr noundef %0, i32 noundef %i.lo, i32 noundef 9, i32 noundef 0) ; 0 uses
  %i.lz = add i32 %.15, 11
  br label %.backedge

.backedge:                                        ; preds = %bb.ap, %bb.ao
  %.13.be = phi i32 [ %i.lz, %bb.ap ], [ %i.lo, %bb.ao ]
  br label %bb.ah, !llvm.loop !27

.sink.split:                                      ; preds = %bb.ah, %bb.t, %bb.f, %bb.c
  %.lcssa400.sink = phi i32 [ %i.ae, %bb.f ], [ %i.j, %bb.c ], [ %i.et, %bb.t ], [ %i.jn, %bb.ah ]
  %.sink403 = phi i32 [ %i.ab, %bb.f ], [ %i.g, %bb.c ], [ %i.eq, %bb.t ], [ %i.jk, %bb.ah ]
  %i.ma = load ptr, ptr %i.b, align 8
  %i.mb = ashr i32 %.lcssa400.sink, 3
  %reass.sub353 = sub nsw i32 %i.mb, %.sink403
  %i.mc = add nsw i32 %reass.sub353, 1
  call void @proto_item_set_len(ptr noundef %i.ma, i32 noundef %i.mc)
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split, %bb.a
  %i.md = trunc i32 %4 to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i16 %i.md
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i16 @de_rr_cell_opt_bcch(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = load i32, ptr @hf_gsm_a_rr_pwrc, align 4
  %i.b = shl i32 %3, 3
  %i.c = or disjoint i32 %i.b, 1
  %i.d = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %i.c, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_gsm_a_rr_dtx_bcch, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.e, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_gsm_a_rr_radio_link_timeout, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret i16 1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i16 @de_rr_cell_opt_sacch(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = load i32, ptr @hf_gsm_a_rr_pwrc, align 4
  %i.b = shl i32 %3, 3                            ; 2 uses
  %i.c = or disjoint i32 %i.b, 1
  %i.d = tail call ptr @proto_tree_add_bits_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %i.c, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_gsm_a_rr_dtx_sacch, align 4
  %i.f = tail call ptr @proto_tree_add_split_bits_item_ret_val(ptr noundef %1, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.b, ptr noundef nonnull @gsm_a_rr_dtx_sacch_crumbs, ptr noundef null) ; 0 uses
  %i.g = load i32, ptr @hf_gsm_a_rr_radio_link_timeout, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret i16 1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i16 @de_rr_cell_sel_param(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = load i32, ptr @hf_gsm_a_rr_cell_reselect_hyst, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_gsm_a_rr_ms_txpwr_max_cch, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.c, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = add i32 %3, 1                            ; 3 uses
  %i.f = load i32, ptr @hf_gsm_a_rr_acs, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr @hf_gsm_a_rr_neci, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_gsm_a_rr_rxlev_access_min, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret i16 2
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i16 @de_rr_ch_dsc2(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 %4, ptr nofree readnone captures(none) %5, i32 %6) #3 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3) ; 9 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %trunc = and i8 %i.a, -8
  switch i8 %trunc, label %bb.e [
    i8 0, label %bb.b
    i8 8, label %bb.c
    i8 -16, label %bb.d
  ]

end_hunk_0
begin_hunk_1_@de_rr_meas_param_desc:bb.a
  %i.cm = load i32, ptr @hf_gsm_a_rr_1900_reporting_present, align 4
  %i.cn = and i32 %.5, 7
  %i.co = lshr exact i32 128, %i.cn
  %i.cp = ashr i32 %.5, 3
  %i.cq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cp)
  %i.cr = call ptr @proto_tree_add_bits_item(ptr noundef %i.h, i32 noundef %i.cm, ptr noundef %0, i32 noundef %.5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cs = zext i8 %i.cq to i32
  %i.ct = and i32 %i.co, %i.cs
  %.not99 = icmp eq i32 %i.ct, 0
  br i1 %.not99, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = load i32, ptr @hf_gsm_a_rr_1900_reporting_offset, align 4
  %i.cv = call ptr @proto_tree_add_bits_item(ptr noundef %i.h, i32 noundef %i.cu, ptr noundef %0, i32 noundef %i.cl, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.cw = add i32 %.5, 4
  %i.cx = load i32, ptr @hf_gsm_a_rr_1900_reporting_threshold, align 4
  %i.cy = call ptr @proto_tree_add_bits_item(ptr noundef %i.h, i32 noundef %i.cx, ptr noundef %0, i32 noundef %i.cw, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.cz = add i32 %.5, 7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.6 = phi i32 [ %i.cz, %bb.n ], [ %i.cl, %bb.m ] ; 6 uses
  %i.da = add i32 %.6, 1                          ; 2 uses
  %i.db = load i32, ptr @hf_gsm_a_rr_850_reporting_present, align 4
  %i.dc = and i32 %.6, 7
  %i.dd = lshr exact i32 128, %i.dc
  %i.de = ashr i32 %.6, 3
  %i.df = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.de)
  %i.dg = call ptr @proto_tree_add_bits_item(ptr noundef %i.h, i32 noundef %i.db, ptr noundef %0, i32 noundef %.6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dh = zext i8 %i.df to i32
  %i.di = and i32 %i.dd, %i.dh
  %.not100 = icmp eq i32 %i.di, 0
  br i1 %.not100, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dj = load i32, ptr @hf_gsm_a_rr_850_reporting_offset, align 4
  %i.dk = call ptr @proto_tree_add_bits_item(ptr noundef %i.h, i32 noundef %i.dj, ptr noundef %0, i32 noundef %i.da, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.dl = add i32 %.6, 4
  %i.dm = load i32, ptr @hf_gsm_a_rr_850_reporting_threshold, align 4
  %i.dn = call ptr @proto_tree_add_bits_item(ptr noundef %i.h, i32 noundef %i.dm, ptr noundef %0, i32 noundef %i.dl, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.do = add i32 %.6, 7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.7 = phi i32 [ %i.do, %bb.p ], [ %i.da, %bb.o ] ; 2 uses
  %i.dp = load ptr, ptr %i.a, align 8
  %i.dq = ashr i32 %.7, 3
  %reass.sub = sub nsw i32 %i.dq, %i.b
  %i.dr = add nsw i32 %reass.sub, 1
  call void @proto_item_set_len(ptr noundef %i.dp, i32 noundef %i.dr)
  %i.ds = sub i32 %.7, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.ds
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @de_rr_si2quater_meas_info_utran_fdd_desc(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca [64 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.d = ashr i32 %2, 3                           ; 3 uses
  %i.e = load i32, ptr @ett_gsm_rr_rest_octets_elem, align 16
  %i.f = call ptr @proto_tree_add_subtree(ptr noundef %1, ptr noundef %0, i32 noundef %i.d, i32 noundef -1, i32 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1264) ; 8 uses
  %i.g = add i32 %2, 1                            ; 2 uses
  %i.h = load i32, ptr @hf_gsm_a_rr_bandwidth_fdd_present, align 4
  %i.i = and i32 %2, 7
  %i.j = lshr exact i32 128, %i.i
  %i.k = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.d)
  %i.l = call ptr @proto_tree_add_bits_item(ptr noundef %i.f, i32 noundef %i.h, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.m = zext i8 %i.k to i32
  %i.n = and i32 %i.j, %i.m
  %.not99 = icmp eq i32 %i.n, 0
  br i1 %.not99, label %.preheader143, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr @hf_gsm_a_rr_bandwidth_fdd, align 4
  %i.p = call ptr @proto_tree_add_bits_item(ptr noundef %i.f, i32 noundef %i.o, ptr noundef %0, i32 noundef %i.g, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.q = add i32 %2, 4
  br label %.preheader143

.preheader143:                                    ; preds = %bb.b, %bb.a
  %.192.ph = phi i32 [ %i.g, %bb.a ], [ %i.q, %bb.b ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader143, %.loopexit
  %.192 = phi i32 [ %.5, %.loopexit ], [ %.192.ph, %.preheader143 ] ; 8 uses
  %i.r = add i32 %.192, 1                         ; 3 uses
  %i.s = load i32, ptr @hf_gsm_a_rr_repeated_umts_fdd_neighbour_cells, align 4
  %i.t = and i32 %.192, 7
  %i.u = lshr exact i32 128, %i.t                 ; 2 uses
  %i.v = ashr i32 %.192, 3
  %i.w = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.v)
  %i.x = call ptr @proto_tree_add_bits_item(ptr noundef %i.f, i32 noundef %i.s, ptr noundef %0, i32 noundef %.192, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = zext i8 %i.w to i32
  %i.z = and i32 %i.u, %i.y
  %.not100 = icmp eq i32 %i.z, 0
  br i1 %.not100, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load i32, ptr @hf_gsm_a_rr_repeated_umts_fdd_neighbour_cells_earlier_version_bit_reserved, align 4
  %i.ab = add i32 %.192, 2
  %i.ac = call ptr @proto_tree_add_bits_item(ptr noundef %i.f, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.r, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = load i32, ptr @hf_gsm_a_rr_fdd_uarfcn, align 4
  %i.ae = call ptr @proto_tree_add_bits_item(ptr noundef %i.f, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.ab, i32 noundef 14, i32 noundef 0) ; 0 uses
  %i.af = add i32 %.192, 16                       ; 2 uses
  %i.ag = add i32 %.192, 17                       ; 2 uses
  %i.ah = load i32, ptr @hf_gsm_a_rr_fdd_cell_info_param_value0, align 4
  %i.ai = ashr i32 %i.af, 3
  %i.aj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ai)
  %i.ak = call ptr @proto_tree_add_bits_item(ptr noundef %i.f, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.af, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.al = zext i8 %i.aj to i32
  %i.am = and i32 %i.u, %i.al
  %.not101 = icmp eq i32 %i.am, 0
  %i.an = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.ag, i32 noundef 5) ; 3 uses
  %i.ao = zext i8 %i.an to i32
  %i.ap = load i32, ptr @hf_gsm_a_rr_nr_of_fdd_cells, align 4
  %i.aq = ashr i32 %i.ag, 3
  %i.ar = call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.aq, i32 noundef 1, i32 noundef %i.ao) ; 0 uses
  %i.as = add i32 %.192, 22                       ; 4 uses
  %i.at = zext i8 %i.an to i64
  %i.au = getelementptr i8, ptr @convert_n_to_p, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1
  %.fr102 = freeze i8 %i.av                       ; 2 uses
  %i.aw = zext i8 %.fr102 to i32                  ; 3 uses
  %i.ax = ashr i32 %i.as, 3                       ; 4 uses
  %i.ay = lshr i32 %i.aw, 3
  %i.az = add nuw nsw i32 %i.ay, 1                ; 2 uses
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_rr_rest_octets_elem, i64 52), align 4
  %i.bb = call ptr @proto_tree_add_subtree(ptr noundef %i.f, ptr noundef %0, i32 noundef %i.ax, i32 noundef %i.az, i32 noundef %i.ba, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.1264) ; 5 uses
  %i.bc = load i32, ptr @hf_gsm_a_rr_field_bit_long, align 4
  %i.bd = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %i.bb, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.ax, i32 noundef %i.az, ptr noundef null, ptr noundef nonnull @.str.1783, i32 noundef %i.aw) ; 0 uses
  br i1 %.not101, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = load i32, ptr @hf_gsm_a_rr_scrambling_code, align 4
  %i.bf = call ptr @proto_tree_add_uint(ptr noundef %i.bb, i32 noundef %i.be, ptr noundef %0, i32 noundef %i.ax, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.bg = load i32, ptr @hf_gsm_a_rr_diversity, align 4
  %i.bh = call ptr @proto_tree_add_uint(ptr noundef %i.bb, i32 noundef %i.bg, ptr noundef %0, i32 noundef %i.ax, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bi = add i8 %i.an, -17
  %.not = icmp ult i8 %i.bi, -16
  br i1 %.not, label %.loopexit, label %.preheader104

.preheader104:                                    ; preds = %bb.f
  %.not121 = icmp eq i8 %.fr102, 0
  br i1 %.not121, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader104, %bb.g
  %.0116 = phi i32 [ %i.bt, %bb.g ], [ 1, %.preheader104 ] ; 3 uses
  %.083115 = phi i32 [ %.184, %bb.g ], [ 0, %.preheader104 ]
  %.085114 = phi i32 [ %.186, %bb.g ], [ 1, %.preheader104 ] ; 2 uses
  %.087113 = phi i32 [ %.188, %bb.g ], [ 10, %.preheader104 ] ; 4 uses
  %.089112 = phi i32 [ %i.bo, %bb.g ], [ %i.aw, %.preheader104 ]
  %.2111 = phi i32 [ %i.bm, %bb.g ], [ %i.as, %.preheader104 ] ; 2 uses
  %i.bj = call i32 @tvb_get_bits32(ptr noundef %0, i32 noundef %.2111, i32 noundef %.087113, i32 noundef 0) ; 2 uses
  %i.bk = sext i32 %.0116 to i64
  %i.bl = getelementptr [4 x i8], ptr %i.c, i64 %i.bk
  store i32 %i.bj, ptr %i.bl, align 4
  %i.bm = add i32 %.087113, %.2111                ; 3 uses
  %i.bn = icmp eq i32 %i.bj, 0
  br i1 %i.bn, label %.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.bo = sub i32 %.089112, %.087113              ; 3 uses
  %i.bp = add i32 %.083115, 1                     ; 2 uses
  %i.bq = icmp eq i32 %i.bp, %.085114             ; 3 uses
  %i.br = sext i1 %i.bq to i32
  %.188 = add i32 %.087113, %i.br
  %i.bs = zext i1 %i.bq to i32
  %.186 = shl i32 %.085114, %i.bs
  %.184 = select i1 %i.bq, i32 0, i32 %i.bp
  %i.bt = add i32 %.0116, 1                       ; 2 uses
  %i.bu = icmp sgt i32 %i.bo, 0
  br i1 %i.bu, label %.lr.ph, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.g, %.preheader104
  %.2.lcssa = phi i32 [ %i.as, %.preheader104 ], [ %i.bm, %bb.g ]
  %.089.lcssa = phi i32 [ 0, %.preheader104 ], [ %i.bo, %bb.g ]
  %.0.lcssa = phi i32 [ 1, %.preheader104 ], [ %i.bt, %bb.g ]
  %i.bv = add i32 %.089.lcssa, %.2.lcssa
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %._crit_edge
  %.0106 = phi i32 [ %.0.lcssa, %._crit_edge ], [ %.0116, %.lr.ph ]
  %i.bw = phi i32 [ %i.bv, %._crit_edge ], [ %i.bm, %.lr.ph ] ; 3 uses
  %i.bx = add i32 %.0106, -1                      ; 2 uses
  %.not95119 = icmp slt i32 %i.bx, 1
  br i1 %.not95119, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.thread
  %i.by = ashr i32 %i.bw, 3                       ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %f_k.exit
  %.1120 = phi i32 [ 1, %.preheader.lr.ph ], [ %4, %f_k.exit ] ; 6 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.h
  %.0.i.i = phi i32 [ %i.bz, %bb.h ], [ 1, %.preheader ]
  %i.bz = shl i32 %.0.i.i, 1                      ; 3 uses
  %.not.i.i = icmp sgt i32 %i.bz, %.1120
  br i1 %.not.i.i, label %greatest_power_of_2_lesser_or_equal_to.exit.i, label %bb.h, !llvm.loop !6

greatest_power_of_2_lesser_or_equal_to.exit.i:    ; preds = %bb.h
  %3 = zext nneg i32 %.1120 to i64
  %i.ca = getelementptr [4 x i8], ptr %i.c, i64 %3
  %i.cb = load i32, ptr %i.ca, align 4            ; 2 uses
  %i.cc = icmp samesign ugt i32 %.1120, 1
  br i1 %i.cc, label %.preheader.preheader.i, label %f_k.exit

.preheader.preheader.i:                           ; preds = %greatest_power_of_2_lesser_or_equal_to.exit.i
  %i.cd = add i32 %i.cb, -1
  %i.ce = ashr exact i32 %i.bz, 1
  %i.cf = sdiv i32 1023, %i.ce
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.l, %.preheader.preheader.i
  %.034.i = phi i32 [ %.1.i, %bb.l ], [ %i.cd, %.preheader.preheader.i ] ; 2 uses
  %.02433.i = phi i32 [ %.125.i, %bb.l ], [ %.1120, %.preheader.preheader.i ] ; 4 uses
  %.02632.i = phi i32 [ %i.cj, %bb.l ], [ %i.cf, %.preheader.preheader.i ]
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i
  %.0.i27.i = phi i32 [ %i.cg, %bb.i ], [ 1, %.preheader.i ] ; 2 uses
  %i.cg = shl i32 %.0.i27.i, 1                    ; 2 uses
  %.not.i28.i = icmp sgt i32 %i.cg, %.02433.i
  br i1 %.not.i28.i, label %greatest_power_of_2_lesser_or_equal_to.exit29.i, label %bb.i, !llvm.loop !6

greatest_power_of_2_lesser_or_equal_to.exit29.i:  ; preds = %bb.i
  %i.ch = and i32 %.0.i27.i, 2147483647           ; 3 uses
  %i.ci = shl i32 %.02632.i, 1                    ; 2 uses
  %i.cj = or disjoint i32 %i.ci, 1                ; 2 uses
  %i.ck = shl nuw i32 %.02433.i, 1
  %i.cl = mul nuw i32 %i.ch, 3
  %i.cm = icmp slt i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %greatest_power_of_2_lesser_or_equal_to.exit29.i
  %.neg3031.i = lshr i32 %i.ch, 1
  %i.cn = sub nsw i32 %.02433.i, %.neg3031.i      ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [4 x i8], ptr %i.c, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = ashr exact i32 %i.ci, 1
  %i.cs = add i32 %i.cr, %.034.i
  %i.ct = add i32 %i.cs, %i.cq
  br label %bb.l

bb.k:                                             ; preds = %greatest_power_of_2_lesser_or_equal_to.exit29.i
  %i.cu = sub nsw i32 %.02433.i, %i.ch            ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr [4 x i8], ptr %i.c, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = add i32 %i.cx, %.034.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.125.i = phi i32 [ %i.cn, %bb.j ], [ %i.cu, %bb.k ] ; 2 uses
  %.pn.i = phi i32 [ %i.ct, %bb.j ], [ %i.cy, %bb.k ]
  %.1.i = srem i32 %.pn.i, %i.cj                  ; 2 uses
  %i.cz = icmp sgt i32 %.125.i, 1
  br i1 %i.cz, label %.preheader.i, label %._crit_edge.loopexit.i, !llvm.loop !8

._crit_edge.loopexit.i:                           ; preds = %bb.l
  %i.da = add i32 %.1.i, 1
  br label %f_k.exit

f_k.exit:                                         ; preds = %greatest_power_of_2_lesser_or_equal_to.exit.i, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i32 [ %i.cb, %greatest_power_of_2_lesser_or_equal_to.exit.i ], [ %i.da, %._crit_edge.loopexit.i ]
  %i.db = srem i32 %.0.lcssa.i, 1024              ; 2 uses
  %i.dc = load i32, ptr @hf_gsm_a_rr_scrambling_code, align 4
  %i.dd = and i32 %i.db, 511
  %i.de = call ptr @proto_tree_add_uint(ptr noundef %i.bb, i32 noundef %i.dc, ptr noundef %0, i32 noundef %i.by, i32 noundef 0, i32 noundef %i.dd) ; 0 uses
  %i.df = load i32, ptr @hf_gsm_a_rr_diversity, align 4
  %i.dg = lshr i32 %i.db, 9
  %i.dh = and i32 %i.dg, 1
  %i.di = call ptr @proto_tree_add_uint(ptr noundef %i.bb, i32 noundef %i.df, ptr noundef %0, i32 noundef %i.by, i32 noundef 0, i32 noundef %i.dh) ; 0 uses
  %4 = add nuw nsw i32 %.1120, 1
  %.not95.not = icmp slt i32 %.1120, %i.bx
  br i1 %.not95.not, label %.preheader, label %.loopexit, !llvm.loop !57

.loopexit:                                        ; preds = %f_k.exit, %.thread, %bb.f
  %.5 = phi i32 [ %i.as, %bb.f ], [ %i.bw, %.thread ], [ %i.bw, %f_k.exit ]
  br label %bb.c, !llvm.loop !58

bb.m:                                             ; preds = %bb.c
  %i.dj = load ptr, ptr %i.a, align 8
  %i.dk = ashr i32 %i.r, 3
  %reass.sub = sub nsw i32 %i.dk, %i.d
  %i.dl = add nsw i32 %reass.sub, 1
  call void @proto_item_set_len(ptr noundef %i.dj, i32 noundef %i.dl)
  %i.dm = sub i32 %i.r, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.dm
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @de_rr_si2quater_meas_info_utran_tdd_desc(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [64 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = ashr i32 %2, 3                           ; 3 uses
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_rr_rest_octets_elem, i64 4), align 4
  %i.e = call ptr @proto_tree_add_subtree(ptr noundef %1, ptr noundef %0, i32 noundef %i.c, i32 noundef -1, i32 noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1268) ; 8 uses
  %i.f = add i32 %2, 1                            ; 2 uses
  %i.g = load i32, ptr @hf_gsm_a_rr_bandwidth_tdd_present, align 4
  %i.h = and i32 %2, 7
  %i.i = lshr exact i32 128, %i.h
  %i.j = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.c)
  %i.k = call ptr @proto_tree_add_bits_item(ptr noundef %i.e, i32 noundef %i.g, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.l = zext i8 %i.j to i32
  %i.m = and i32 %i.i, %i.l
  %.not106 = icmp eq i32 %i.m, 0
  br i1 %.not106, label %.preheader150, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr @hf_gsm_a_rr_bandwidth_tdd, align 4
  %i.o = call ptr @proto_tree_add_bits_item(ptr noundef %i.e, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.f, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.p = add i32 %2, 4
  br label %.preheader150

.preheader150:                                    ; preds = %bb.b, %bb.a
  %.199.ph = phi i32 [ %i.f, %bb.a ], [ %i.p, %bb.b ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader150, %.loopexit
  %.199 = phi i32 [ %.5, %.loopexit ], [ %.199.ph, %.preheader150 ] ; 8 uses
  %i.q = add i32 %.199, 1                         ; 3 uses
  %i.r = load i32, ptr @hf_gsm_a_rr_repeated_umts_tdd_neighbour_cells, align 4
  %i.s = and i32 %.199, 7
  %i.t = lshr exact i32 128, %i.s                 ; 2 uses
  %i.u = ashr i32 %.199, 3
  %i.v = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.u)
  %i.w = call ptr @proto_tree_add_bits_item(ptr noundef %i.e, i32 noundef %i.r, ptr noundef %0, i32 noundef %.199, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = zext i8 %i.v to i32
  %i.y = and i32 %i.t, %i.x
  %.not107 = icmp eq i32 %i.y, 0
  br i1 %.not107, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr @hf_gsm_a_rr_repeated_umts_tdd_neighbour_cells_earlier_version_bit_reserved, align 4
  %i.aa = add i32 %.199, 2
  %i.ab = call ptr @proto_tree_add_bits_item(ptr noundef %i.e, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ac = load i32, ptr @hf_gsm_a_rr_tdd_uarfcn, align 4
  %i.ad = call ptr @proto_tree_add_bits_item(ptr noundef %i.e, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.aa, i32 noundef 14, i32 noundef 0) ; 0 uses
  %i.ae = add i32 %.199, 16                       ; 2 uses
  %i.af = add i32 %.199, 17                       ; 2 uses
  %i.ag = load i32, ptr @hf_gsm_a_rr_tdd_cell_info_param_value0, align 4
  %i.ah = ashr i32 %i.ae, 3
  %i.ai = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ah)
  %i.aj = call ptr @proto_tree_add_bits_item(ptr noundef %i.e, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.ae, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ak = zext i8 %i.ai to i32
  %i.al = and i32 %i.t, %i.ak
  %.not108 = icmp eq i32 %i.al, 0
  %i.am = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.af, i32 noundef 5) ; 3 uses
  %i.an = zext i8 %i.am to i32
  %i.ao = load i32, ptr @hf_gsm_a_rr_nr_of_tdd_cells, align 4
  %i.ap = ashr i32 %i.af, 3
  %i.aq = call ptr @proto_tree_add_uint(ptr noundef %i.e, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.ap, i32 noundef 1, i32 noundef %i.an) ; 0 uses
  %i.ar = add i32 %.199, 22                       ; 4 uses
  %i.as = zext i8 %i.am to i64
  %i.at = getelementptr i8, ptr @convert_n_to_q, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %.fr109 = freeze i8 %i.au                       ; 2 uses
  %i.av = zext i8 %.fr109 to i32                  ; 3 uses
  %i.aw = ashr i32 %i.ar, 3                       ; 5 uses
  %i.ax = lshr i32 %i.av, 3
  %i.ay = add nuw nsw i32 %i.ax, 1                ; 2 uses
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_rr_rest_octets_elem, i64 56), align 8
  %i.ba = call ptr @proto_tree_add_subtree(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.az, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1268) ; 7 uses
  %i.bb = load i32, ptr @hf_gsm_a_rr_field_bit_long, align 4
  %i.bc = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %i.ba, i32 noundef %i.bb, ptr noundef %0, i32 noundef %i.aw, i32 noundef %i.ay, ptr noundef null, ptr noundef nonnull @.str.1783, i32 noundef %i.av) ; 0 uses
  br i1 %.not108, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = load i32, ptr @hf_gsm_a_rr_cell_parameter, align 4
  %i.be = call ptr @proto_tree_add_uint(ptr noundef %i.ba, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.aw, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.bf = load i32, ptr @hf_gsm_a_rr_sync_case_tstd, align 4
  %i.bg = call ptr @proto_tree_add_uint(ptr noundef %i.ba, i32 noundef %i.bf, ptr noundef %0, i32 noundef %i.aw, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.bh = load i32, ptr @hf_gsm_a_rr_diversity_tdd, align 4
  %i.bi = call ptr @proto_tree_add_uint(ptr noundef %i.ba, i32 noundef %i.bh, ptr noundef %0, i32 noundef %i.aw, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bj = add i8 %i.am, -21
  %.not = icmp ult i8 %i.bj, -20
  br i1 %.not, label %.loopexit, label %.preheader111

.preheader111:                                    ; preds = %bb.f
  %.not128 = icmp eq i8 %.fr109, 0
  br i1 %.not128, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader111, %bb.g
  %.0123 = phi i32 [ %i.bu, %bb.g ], [ 1, %.preheader111 ] ; 3 uses
  %.090122 = phi i32 [ %.191, %bb.g ], [ 0, %.preheader111 ]
  %.092121 = phi i32 [ %.193, %bb.g ], [ 1, %.preheader111 ] ; 2 uses
  %.094120 = phi i32 [ %.195, %bb.g ], [ 9, %.preheader111 ] ; 4 uses
  %.096119 = phi i32 [ %i.bp, %bb.g ], [ %i.av, %.preheader111 ]
  %.2118 = phi i32 [ %i.bn, %bb.g ], [ %i.ar, %.preheader111 ] ; 2 uses
  %i.bk = call i32 @tvb_get_bits32(ptr noundef %0, i32 noundef %.2118, i32 noundef %.094120, i32 noundef 0) ; 2 uses
  %i.bl = sext i32 %.0123 to i64
  %i.bm = getelementptr [4 x i8], ptr %i.b, i64 %i.bl
  store i32 %i.bk, ptr %i.bm, align 4
  %i.bn = add i32 %.094120, %.2118                ; 3 uses
  %i.bo = icmp eq i32 %i.bk, 0
  br i1 %i.bo, label %.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.bp = sub i32 %.096119, %.094120              ; 3 uses
  %i.bq = add i32 %.090122, 1                     ; 2 uses
  %i.br = icmp eq i32 %i.bq, %.092121             ; 3 uses
  %i.bs = sext i1 %i.br to i32
  %.195 = add i32 %.094120, %i.bs
  %i.bt = zext i1 %i.br to i32
  %.193 = shl i32 %.092121, %i.bt
  %.191 = select i1 %i.br, i32 0, i32 %i.bq
  %i.bu = add i32 %.0123, 1                       ; 2 uses
  %i.bv = icmp sgt i32 %i.bp, 0
  br i1 %i.bv, label %.lr.ph, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.g, %.preheader111
  %.2.lcssa = phi i32 [ %i.ar, %.preheader111 ], [ %i.bn, %bb.g ]
  %.096.lcssa = phi i32 [ 0, %.preheader111 ], [ %i.bp, %bb.g ]
  %.0.lcssa = phi i32 [ 1, %.preheader111 ], [ %i.bu, %bb.g ]
  %i.bw = add i32 %.096.lcssa, %.2.lcssa
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %._crit_edge
  %.0113 = phi i32 [ %.0.lcssa, %._crit_edge ], [ %.0123, %.lr.ph ]
  %i.bx = phi i32 [ %i.bw, %._crit_edge ], [ %i.bn, %.lr.ph ] ; 3 uses
  %i.by = add i32 %.0113, -1                      ; 2 uses
  %.not102126 = icmp slt i32 %i.by, 1
  br i1 %.not102126, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.thread
  %i.bz = ashr i32 %i.bx, 3                       ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %f_k.exit
  %.1127 = phi i32 [ 1, %.preheader.lr.ph ], [ %4, %f_k.exit ] ; 6 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.h
  %.0.i.i = phi i32 [ %i.ca, %bb.h ], [ 1, %.preheader ]
  %i.ca = shl i32 %.0.i.i, 1                      ; 3 uses
  %.not.i.i = icmp sgt i32 %i.ca, %.1127
  br i1 %.not.i.i, label %greatest_power_of_2_lesser_or_equal_to.exit.i, label %bb.h, !llvm.loop !6

greatest_power_of_2_lesser_or_equal_to.exit.i:    ; preds = %bb.h
  %3 = zext nneg i32 %.1127 to i64
  %i.cb = getelementptr [4 x i8], ptr %i.b, i64 %3
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = icmp samesign ugt i32 %.1127, 1
  br i1 %i.cd, label %.preheader.preheader.i, label %f_k.exit

.preheader.preheader.i:                           ; preds = %greatest_power_of_2_lesser_or_equal_to.exit.i
  %i.ce = add i32 %i.cc, -1
  %i.cf = ashr exact i32 %i.ca, 1
  %i.cg = sdiv i32 511, %i.cf
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.l, %.preheader.preheader.i
  %.034.i = phi i32 [ %.1.i, %bb.l ], [ %i.ce, %.preheader.preheader.i ] ; 2 uses
  %.02433.i = phi i32 [ %.125.i, %bb.l ], [ %.1127, %.preheader.preheader.i ] ; 4 uses
  %.02632.i = phi i32 [ %i.ck, %bb.l ], [ %i.cg, %.preheader.preheader.i ]
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i
  %.0.i27.i = phi i32 [ %i.ch, %bb.i ], [ 1, %.preheader.i ] ; 2 uses
  %i.ch = shl i32 %.0.i27.i, 1                    ; 2 uses
  %.not.i28.i = icmp sgt i32 %i.ch, %.02433.i
  br i1 %.not.i28.i, label %greatest_power_of_2_lesser_or_equal_to.exit29.i, label %bb.i, !llvm.loop !6

greatest_power_of_2_lesser_or_equal_to.exit29.i:  ; preds = %bb.i
  %i.ci = and i32 %.0.i27.i, 2147483647           ; 3 uses
  %i.cj = shl i32 %.02632.i, 1                    ; 2 uses
  %i.ck = or disjoint i32 %i.cj, 1                ; 2 uses
  %i.cl = shl nuw i32 %.02433.i, 1
  %i.cm = mul nuw i32 %i.ci, 3
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %greatest_power_of_2_lesser_or_equal_to.exit29.i
  %.neg3031.i = lshr i32 %i.ci, 1
  %i.co = sub nsw i32 %.02433.i, %.neg3031.i      ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr [4 x i8], ptr %i.b, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = ashr exact i32 %i.cj, 1
  %i.ct = add i32 %i.cs, %.034.i
  %i.cu = add i32 %i.ct, %i.cr
  br label %bb.l

bb.k:                                             ; preds = %greatest_power_of_2_lesser_or_equal_to.exit29.i
  %i.cv = sub nsw i32 %.02433.i, %i.ci            ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [4 x i8], ptr %i.b, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = add i32 %i.cy, %.034.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.125.i = phi i32 [ %i.co, %bb.j ], [ %i.cv, %bb.k ] ; 2 uses
  %.pn.i = phi i32 [ %i.cu, %bb.j ], [ %i.cz, %bb.k ]
  %.1.i = srem i32 %.pn.i, %i.ck                  ; 2 uses
  %i.da = icmp sgt i32 %.125.i, 1
  br i1 %i.da, label %.preheader.i, label %._crit_edge.loopexit.i, !llvm.loop !8

._crit_edge.loopexit.i:                           ; preds = %bb.l
  %i.db = add i32 %.1.i, 1
  br label %f_k.exit

f_k.exit:                                         ; preds = %greatest_power_of_2_lesser_or_equal_to.exit.i, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i32 [ %i.cc, %greatest_power_of_2_lesser_or_equal_to.exit.i ], [ %i.db, %._crit_edge.loopexit.i ]
  %i.dc = srem i32 %.0.lcssa.i, 1024              ; 3 uses
  %i.dd = load i32, ptr @hf_gsm_a_rr_cell_parameter, align 4
  %i.de = and i32 %i.dc, 127
  %i.df = call ptr @proto_tree_add_uint(ptr noundef %i.ba, i32 noundef %i.dd, ptr noundef %0, i32 noundef %i.bz, i32 noundef 0, i32 noundef %i.de) ; 0 uses
  %i.dg = load i32, ptr @hf_gsm_a_rr_sync_case_tstd, align 4
  %i.dh = lshr i32 %i.dc, 7
  %i.di = and i32 %i.dh, 1
  %i.dj = call ptr @proto_tree_add_uint(ptr noundef %i.ba, i32 noundef %i.dg, ptr noundef %0, i32 noundef %i.bz, i32 noundef 0, i32 noundef %i.di) ; 0 uses
  %i.dk = load i32, ptr @hf_gsm_a_rr_diversity_tdd, align 4
  %i.dl = lshr i32 %i.dc, 8
  %i.dm = and i32 %i.dl, 1
  %i.dn = call ptr @proto_tree_add_uint(ptr noundef %i.ba, i32 noundef %i.dk, ptr noundef %0, i32 noundef %i.bz, i32 noundef 0, i32 noundef %i.dm) ; 0 uses
  %4 = add nuw nsw i32 %.1127, 1
  %.not102.not = icmp slt i32 %.1127, %i.by
  br i1 %.not102.not, label %.preheader, label %.loopexit, !llvm.loop !60

.loopexit:                                        ; preds = %f_k.exit, %.thread, %bb.f
  %.5 = phi i32 [ %i.ar, %bb.f ], [ %i.bx, %.thread ], [ %i.bx, %f_k.exit ]
  br label %bb.c, !llvm.loop !61

bb.m:                                             ; preds = %bb.c
  %i.do = load ptr, ptr %i.a, align 8
  %i.dp = ashr i32 %i.q, 3
  %reass.sub = sub nsw i32 %i.dp, %i.c
  %i.dq = add nsw i32 %reass.sub, 1
  call void @proto_item_set_len(ptr noundef %i.do, i32 noundef %i.dq)
  %i.dr = sub i32 %i.q, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.dr
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @de_rr_3g_add_meas_param_desc2(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = ashr i32 %2, 3                           ; 3 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_rr_rest_octets_elem, i64 64), align 16
  %i.d = call ptr @proto_tree_add_subtree(ptr noundef %1, ptr noundef %0, i32 noundef %i.b, i32 noundef -1, i32 noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1455) ; 2 uses
  %i.e = add i32 %2, 1                            ; 2 uses
  %i.f = load i32, ptr @hf_gsm_a_rr_fdd_reporting_threshold_2_present, align 4
  %i.g = and i32 %2, 7
  %i.h = lshr exact i32 128, %i.g
  %i.i = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.b)
  %i.j = call ptr @proto_tree_add_bits_item(ptr noundef %i.d, i32 noundef %i.f, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = zext i8 %i.i to i32
  %i.l = and i32 %i.h, %i.k
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr @hf_gsm_a_rr_fdd_reporting_threshold_2, align 4
  %i.n = call ptr @proto_tree_add_bits_item(ptr noundef %i.d, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.e, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.o = add i32 %2, 7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.o, %bb.b ], [ %i.e, %bb.a ]  ; 2 uses
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = ashr i32 %.0, 3
  %reass.sub = sub nsw i32 %i.q, %i.b
  %i.r = add nsw i32 %reass.sub, 1
  call void @proto_item_set_len(ptr noundef %i.p, i32 noundef %i.r)
  %i.s = sub i32 %.0, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.s
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @de_rr_priority_and_eutran_param_desc(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.h = ashr i32 %2, 3                           ; 3 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_rr_rest_octets_elem, i64 68), align 4
  %i.j = call ptr @proto_tree_add_subtree(ptr noundef %1, ptr noundef %0, i32 noundef %i.h, i32 noundef -1, i32 noundef %i.i, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.1463) ; 10 uses
  %i.k = add i32 %2, 1                            ; 4 uses
  %i.l = load i32, ptr @hf_gsm_a_rr_serving_cell_priority_parameters_description, align 4
  %i.m = and i32 %2, 7
  %i.n = lshr exact i32 128, %i.m
  %i.o = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.h)
  %i.p = call ptr @proto_tree_add_bits_item(ptr noundef %i.j, i32 noundef %i.l, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = zext i8 %i.o to i32
  %i.r = and i32 %i.n, %i.q
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %._crit_edge85, label %bb.b

._crit_edge85:                                    ; preds = %bb.a
  %.pre = ashr i32 %i.k, 3
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.s = ashr i32 %i.k, 3                         ; 2 uses
  %i.t = add i32 %2, 16                           ; 2 uses
  %i.u = ashr i32 %i.t, 3                         ; 2 uses
  %i.v = sub nsw i32 %i.u, %i.s
  %i.w = add nsw i32 %i.v, 1                      ; 2 uses
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_rr_rest_octets_elem, i64 72), align 8
  %i.y = call ptr @proto_tree_add_subtree(ptr noundef %i.j, ptr noundef %0, i32 noundef %i.s, i32 noundef %i.w, i32 noundef %i.x, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.1395) ; 5 uses
  %i.z = load i32, ptr @hf_gsm_a_rr_serving_cell_priority_param_geran_priority, align 4
  %i.aa = call ptr @proto_tree_add_bits_item(ptr noundef %i.y, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.k, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ab = add i32 %2, 4
  %i.ac = load i32, ptr @hf_gsm_a_rr_serving_cell_priority_param_thresh_prio_search, align 4
  %i.ad = call ptr @proto_tree_add_bits_item(ptr noundef %i.y, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.ab, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ae = add i32 %2, 8
  %i.af = load i32, ptr @hf_gsm_a_rr_serving_cell_priority_param_thresh_gsm_low, align 4
  %i.ag = call ptr @proto_tree_add_bits_item(ptr noundef %i.y, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.ae, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ah = add i32 %2, 12
  %i.ai = load i32, ptr @hf_gsm_a_rr_serving_cell_priority_param_h_prio, align 4
  %i.aj = call ptr @proto_tree_add_bits_item(ptr noundef %i.y, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.ah, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ak = add i32 %2, 14
  %i.al = load i32, ptr @hf_gsm_a_rr_serving_cell_priority_param_t_reselection, align 4
  %i.am = call ptr @proto_tree_add_bits_item(ptr noundef %i.y, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.ak, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.an = load ptr, ptr %i.g, align 8
  call void @proto_item_set_len(ptr noundef %i.an, i32 noundef %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge85, %bb.b
  %.pre-phi = phi i32 [ %.pre, %._crit_edge85 ], [ %i.u, %bb.b ]
  %.0 = phi i32 [ %i.k, %._crit_edge85 ], [ %i.t, %bb.b ] ; 9 uses
  %i.ao = add i32 %.0, 1                          ; 4 uses
  %i.ap = load i32, ptr @hf_gsm_a_rr_3g_priority_parameters_description, align 4
  %i.aq = and i32 %.0, 7
  %i.ar = lshr exact i32 128, %i.aq
  %i.as = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.pre-phi)
  %i.at = call ptr @proto_tree_add_bits_item(ptr noundef %i.j, i32 noundef %i.ap, ptr noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.au = zext i8 %i.as to i32
  %i.av = and i32 %i.ar, %i.au
  %.not60 = icmp eq i32 %i.av, 0
  br i1 %.not60, label %._crit_edge84, label %bb.d

._crit_edge84:                                    ; preds = %bb.c
  %.pre86 = ashr i32 %i.ao, 3
  br label %bb.q

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.aw = ashr i32 %i.ao, 3                       ; 2 uses
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_rr_rest_octets_elem, i64 76), align 4
  %i.ay = call ptr @proto_tree_add_subtree(ptr noundef %i.j, ptr noundef %0, i32 noundef %i.aw, i32 noundef -1, i32 noundef %i.ax, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.1397) ; 12 uses
  %i.az = load i32, ptr @hf_gsm_a_rr_3g_priority_param_desc_utran_start, align 4
  %i.ba = call ptr @proto_tree_add_bits_item(ptr noundef %i.ay, i32 noundef %i.az, ptr noundef %0, i32 noundef %i.ao, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bb = add i32 %.0, 2
  %i.bc = load i32, ptr @hf_gsm_a_rr_3g_priority_param_desc_utran_stop, align 4
  %i.bd = call ptr @proto_tree_add_bits_item(ptr noundef %i.ay, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.bb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.be = add i32 %.0, 3                          ; 3 uses
  %i.bf = add i32 %.0, 4                          ; 2 uses
  %i.bg = load i32, ptr @hf_gsm_a_rr_default_utran_priority_parameters, align 4
  %i.bh = and i32 %i.be, 7
  %i.bi = lshr exact i32 128, %i.bh
  %i.bj = ashr i32 %i.be, 3
  %i.bk = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bj)
  %i.bl = call ptr @proto_tree_add_bits_item(ptr noundef %i.ay, i32 noundef %i.bg, ptr noundef %0, i32 noundef %i.be, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bm = zext i8 %i.bk to i32
  %i.bn = and i32 %i.bi, %i.bm
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %.preheader107, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bo = load i32, ptr @hf_gsm_a_rr_3g_priority_param_desc_default_utran_prio, align 4
  %i.bp = call ptr @proto_tree_add_bits_item(ptr noundef %i.ay, i32 noundef %i.bo, ptr noundef %0, i32 noundef %i.bf, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bq = add i32 %.0, 7
  %i.br = load i32, ptr @hf_gsm_a_rr_3g_priority_param_desc_default_threshold_utran, align 4
  %i.bs = call ptr @proto_tree_add_bits_item(ptr noundef %i.ay, i32 noundef %i.br, ptr noundef %0, i32 noundef %i.bq, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.bt = add i32 %.0, 12
  %i.bu = load i32, ptr @hf_gsm_a_rr_3g_priority_param_desc_default_utran_qrxlevmin, align 4
  %i.bv = call ptr @proto_tree_add_bits_item(ptr noundef %i.ay, i32 noundef %i.bu, ptr noundef %0, i32 noundef %i.bt, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.bw = add i32 %.0, 17
  br label %.preheader107

.preheader107:                                    ; preds = %bb.e, %bb.d
  %.1.i.ph = phi i32 [ %i.bf, %bb.d ], [ %i.bw, %bb.e ]
  br label %bb.f

bb.f:                                             ; preds = %.preheader107, %bb.p
  %.1.i = phi i32 [ %.5.i, %bb.p ], [ %.1.i.ph, %.preheader107 ] ; 4 uses
  %i.bx = add i32 %.1.i, 1                        ; 3 uses
  %i.by = load i32, ptr @hf_gsm_a_rr_repeated_utran_priority_parameters, align 4
  %i.bz = and i32 %.1.i, 7
  %i.ca = lshr exact i32 128, %i.bz
  %i.cb = ashr i32 %.1.i, 3
  %i.cc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cb)
  %i.cd = call ptr @proto_tree_add_bits_item(ptr noundef %i.ay, i32 noundef %i.by, ptr noundef %0, i32 noundef %.1.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ce = zext i8 %i.cc to i32
  %i.cf = and i32 %i.ca, %i.ce
  %.not71.i = icmp eq i32 %i.cf, 0
  %i.cg = ashr i32 %i.bx, 3                       ; 4 uses
  br i1 %.not71.i, label %de_rr_3g_priority_param_desc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.ch = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_gsm_rr_rest_octets_elem, i64 80), align 16
  %i.ci = call ptr @proto_tree_add_subtree(ptr noundef %i.ay, ptr noundef %0, i32 noundef %i.cg, i32 noundef 1, i32 noundef %i.ch, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.1787) ; 5 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.2.i = phi i32 [ %i.bx, %bb.g ], [ %i.cu, %bb.i ] ; 7 uses
  %i.cj = add i32 %.2.i, 1                        ; 4 uses
  %i.ck = load i32, ptr @hf_gsm_a_rr_utran_frequency_index_present, align 4
  %i.cl = and i32 %.2.i, 7
  %i.cm = lshr exact i32 128, %i.cl
  %i.cn = ashr i32 %.2.i, 3
  %i.co = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cn)
  %i.cp = call ptr @proto_tree_add_bits_item(ptr noundef %i.ay, i32 noundef %i.ck, ptr noundef %0, i32 noundef %.2.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cq = zext i8 %i.co to i32
  %i.cr = and i32 %i.cm, %i.cq
end_hunk_1
