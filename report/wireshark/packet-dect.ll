Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-dect?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_afield:bb.a
  %i.ml = shl i16 %.229.2.i, 1
  %.125.lobit.2.i = lshr i8 %.125.2.i, 7
  %i.mm = zext nneg i8 %.125.lobit.2.i to i16
  %i.mn = or disjoint i16 %i.ml, %i.mm            ; 3 uses
  %i.mo = shl i8 %.125.2.i, 1
  %i.mp = add i32 %.1.2.i, 1
  br i1 %.not.2.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.preheader.2.i
  %i.mq = xor i16 %i.mn, 1417                     ; 2 uses
  %i.mr = icmp slt i32 %.1.2.i, 7
  br i1 %i.mr, label %.preheader.2.i.backedge, label %.thread.2.i

bb.bd:                                            ; preds = %.preheader.2.i
  %exitcond.2.i = icmp eq i32 %.1.2.i, 7
  br i1 %exitcond.2.i, label %.thread.2.i, label %.preheader.2.i.backedge

.preheader.2.i.backedge:                          ; preds = %bb.bd, %bb.bc
  %.229.2.i.be = phi i16 [ %i.mn, %bb.bd ], [ %i.mq, %bb.bc ]
  br label %.preheader.2.i, !llvm.loop !7

.thread.2.i:                                      ; preds = %bb.bc, %bb.bd
  %.4.2.i = phi i16 [ %i.mn, %bb.bd ], [ %i.mq, %bb.bc ]
  %i.ms = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.mt = load i8, ptr %i.ms, align 1
  br label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.3.i.backedge, %.thread.2.i
  %.229.3.i = phi i16 [ %.4.2.i, %.thread.2.i ], [ %.229.3.i.be, %.preheader.3.i.backedge ] ; 2 uses
  %.125.3.i = phi i8 [ %i.mt, %.thread.2.i ], [ %i.mx, %.preheader.3.i.backedge ] ; 2 uses
  %.1.3.i = phi i32 [ 0, %.thread.2.i ], [ %i.my, %.preheader.3.i.backedge ] ; 3 uses
  %.not.3.i = icmp sgt i16 %.229.3.i, -1
  %i.mu = shl i16 %.229.3.i, 1
  %.125.lobit.3.i = lshr i8 %.125.3.i, 7
  %i.mv = zext nneg i8 %.125.lobit.3.i to i16
  %i.mw = or disjoint i16 %i.mu, %i.mv            ; 3 uses
  %i.mx = shl i8 %.125.3.i, 1
  %i.my = add i32 %.1.3.i, 1
  br i1 %.not.3.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.preheader.3.i
  %i.mz = xor i16 %i.mw, 1417                     ; 2 uses
  %i.na = icmp slt i32 %.1.3.i, 7
  br i1 %i.na, label %.preheader.3.i.backedge, label %.preheader.4.i.preheader

bb.bf:                                            ; preds = %.preheader.3.i
  %exitcond.3.i = icmp eq i32 %.1.3.i, 7
  br i1 %exitcond.3.i, label %.preheader.4.i.preheader, label %.preheader.3.i.backedge

.preheader.3.i.backedge:                          ; preds = %bb.bf, %bb.be
  %.229.3.i.be = phi i16 [ %i.mw, %bb.bf ], [ %i.mz, %bb.be ]
  br label %.preheader.3.i, !llvm.loop !7

.preheader.4.i.preheader:                         ; preds = %bb.bf, %bb.be
  %.229.4.i.ph = phi i16 [ %i.mz, %bb.be ], [ %i.mw, %bb.bf ]
  br label %.preheader.4.i

.preheader.4.i:                                   ; preds = %.preheader.4.i.backedge, %.preheader.4.i.preheader
  %.229.4.i = phi i16 [ %.229.4.i.ph, %.preheader.4.i.preheader ], [ %.229.4.i.be, %.preheader.4.i.backedge ] ; 2 uses
  %.1.4.i = phi i32 [ 0, %.preheader.4.i.preheader ], [ %i.nc, %.preheader.4.i.backedge ] ; 3 uses
  %.not.4.i = icmp sgt i16 %.229.4.i, -1
  %i.nb = shl i16 %.229.4.i, 1                    ; 3 uses
  %i.nc = add i32 %.1.4.i, 1
  br i1 %.not.4.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.preheader.4.i
  %i.nd = xor i16 %i.nb, 1417                     ; 2 uses
  %i.ne = icmp slt i32 %.1.4.i, 7
  br i1 %i.ne, label %.preheader.4.i.backedge, label %.preheader.5.i.preheader

bb.bh:                                            ; preds = %.preheader.4.i
  %exitcond.4.i = icmp eq i32 %.1.4.i, 7
  br i1 %exitcond.4.i, label %.preheader.5.i.preheader, label %.preheader.4.i.backedge

.preheader.4.i.backedge:                          ; preds = %bb.bh, %bb.bg
  %.229.4.i.be = phi i16 [ %i.nb, %bb.bh ], [ %i.nd, %bb.bg ]
  br label %.preheader.4.i, !llvm.loop !7

.preheader.5.i.preheader:                         ; preds = %bb.bh, %bb.bg
  %.229.5.i.ph = phi i16 [ %i.nd, %bb.bg ], [ %i.nb, %bb.bh ]
  br label %.preheader.5.i

.preheader.5.i:                                   ; preds = %.preheader.5.i.backedge, %.preheader.5.i.preheader
  %.229.5.i = phi i16 [ %.229.5.i.ph, %.preheader.5.i.preheader ], [ %.229.5.i.be, %.preheader.5.i.backedge ] ; 2 uses
  %.1.5.i = phi i32 [ 0, %.preheader.5.i.preheader ], [ %i.ng, %.preheader.5.i.backedge ] ; 3 uses
  %.not.5.i = icmp sgt i16 %.229.5.i, -1
  %i.nf = shl i16 %.229.5.i, 1                    ; 3 uses
  %i.ng = add i32 %.1.5.i, 1
  br i1 %.not.5.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.preheader.5.i
  %i.nh = xor i16 %i.nf, 1417                     ; 2 uses
  %i.ni = icmp slt i32 %.1.5.i, 7
  br i1 %i.ni, label %.preheader.5.i.backedge, label %calc_rcrc.exit

bb.bj:                                            ; preds = %.preheader.5.i
  %exitcond.5.i = icmp eq i32 %.1.5.i, 7
  br i1 %exitcond.5.i, label %calc_rcrc.exit, label %.preheader.5.i.backedge

.preheader.5.i.backedge:                          ; preds = %bb.bj, %bb.bi
  %.229.5.i.be = phi i16 [ %i.nf, %bb.bj ], [ %i.nh, %bb.bi ]
  br label %.preheader.5.i, !llvm.loop !7

calc_rcrc.exit:                                   ; preds = %bb.bi, %bb.bj
  %.4.5.i = phi i16 [ %i.nf, %bb.bj ], [ %i.nh, %bb.bi ]
  %i.nj = xor i16 %.4.5.i, 1                      ; 2 uses
  %i.nk = zext i16 %i.nj to i32                   ; 2 uses
  %i.nl = zext i16 %i.k to i32                    ; 2 uses
  %.not558 = icmp eq i16 %i.nj, %i.k
  %i.nm = load i32, ptr @hf_dect_A_RCRC, align 4  ; 2 uses
  br i1 %.not558, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %calc_rcrc.exit
  %i.nn = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.p, i32 noundef %i.nm, ptr noundef %3, i32 noundef 17, i32 noundef 2, i32 noundef 0, ptr noundef nonnull @.str.735, i32 noundef %i.nk, i32 noundef %i.nl) ; 0 uses
  br label %bb.bm

bb.bl:                                            ; preds = %calc_rcrc.exit
  %i.no = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.p, i32 noundef %i.nm, ptr noundef %3, i32 noundef 17, i32 noundef 2, i32 noundef 1, ptr noundef nonnull @.str.736, i32 noundef %i.nk, i32 noundef %i.nl) ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_bfield(i8 noundef zeroext %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 14 uses
  %i.b = alloca [128 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %2, i32 noundef 19) ; 5 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.c, i32 128) ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %spec.store.select to i64  ; 3 uses
  %i.e = call ptr @tvb_memcpy(ptr noundef %2, ptr noundef nonnull %i.b, i32 noundef 19, i64 noundef %i.d) ; 0 uses
  %i.f = icmp ult i32 %i.c, 128
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.b, i64 %i.d
  %i.h = sub nuw nsw i32 128, %spec.store.select
  %i.i = zext nneg i32 %i.h to i64
  %i.j = sub nuw nsw i64 128, %i.d
  %i.k = call ptr @__memset_chk(ptr noundef %i.g, i32 noundef 0, i64 noundef range(i64 1, 129) %i.i, i64 noundef %i.j) #6 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 noundef 0, i64 noundef 128, i1 noundef false) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  switch i8 %0, label %.thread [
    i8 0, label %bb.h
    i8 1, label %bb.h
    i8 3, label %bb.h
    i8 5, label %bb.h
    i8 6, label %bb.h
    i8 2, label %bb.f
    i8 4, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

.thread:                                          ; preds = %bb.e
  %i.l = load i32, ptr @hf_dect_cc_BField, align 4
  %i.m = call ptr @proto_tree_add_string(ptr noundef %4, i32 noundef %i.l, ptr noundef %2, i32 noundef 19, i32 noundef 1, ptr noundef nonnull @.str.240) ; 0 uses
  br label %.preheader

bb.h:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.f, %bb.g
  %.ph = phi i1 [ true, %bb.e ], [ true, %bb.e ], [ true, %bb.e ], [ true, %bb.e ], [ true, %bb.e ], [ false, %bb.f ], [ false, %bb.g ] ; 2 uses
  %.091.ph = phi i32 [ 40, %bb.e ], [ 40, %bb.e ], [ 40, %bb.e ], [ 40, %bb.e ], [ 40, %bb.e ], [ 100, %bb.f ], [ 10, %bb.g ] ; 7 uses
  %.090.ph = phi ptr [ @.str.737, %bb.e ], [ @.str.737, %bb.e ], [ @.str.737, %bb.e ], [ @.str.737, %bb.e ], [ @.str.737, %bb.e ], [ @.str.738, %bb.f ], [ @.str.739, %bb.g ]
  %.089.ph = phi ptr [ @.str.434, %bb.e ], [ @.str.434, %bb.e ], [ @.str.434, %bb.e ], [ @.str.434, %bb.e ], [ @.str.434, %bb.e ], [ @.str.428, %bb.f ], [ @.str.431, %bb.g ]
  %i.n = load i32, ptr @hf_dect_cc_BField, align 4
  %i.o = call ptr @proto_tree_add_string(ptr noundef %4, i32 noundef %i.n, ptr noundef %2, i32 noundef 19, i32 noundef 1, ptr noundef nonnull %.089.ph) ; 0 uses
  %i.p = load i32, ptr @hf_dect_B, align 4
  %i.q = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.p, ptr noundef %2, i32 noundef 19, i32 noundef %.091.ph, i32 noundef 0) ; 4 uses
  %i.r = load i32, ptr @ett_bfield, align 4
  %i.s = call ptr @proto_item_add_subtree(ptr noundef %i.q, i32 noundef %i.r) ; 3 uses
  %i.t = load i32, ptr @hf_dect_B_Data, align 4
  %i.u = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.s, i32 noundef %i.t, ptr noundef %2, i32 noundef 19, i32 noundef %.091.ph, ptr noundef nonnull @.str.715, ptr noundef nonnull %.090.ph) ; 0 uses
  %i.v = load i32, ptr @hf_dect_B_DescrambledData, align 4
  %i.w = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.v, ptr noundef %2, i32 noundef 19, i32 noundef %.091.ph, i32 noundef 0)
  %i.x = load i32, ptr @ett_bfdescrdata, align 4
  %i.y = call ptr @proto_item_add_subtree(ptr noundef %i.w, i32 noundef %i.x)
  %.not104 = icmp ult i32 %i.c, %.091.ph
  br i1 %.not104, label %.split, label %.preheader

.preheader:                                       ; preds = %.thread, %bb.h
  %.086262 = phi ptr [ null, %.thread ], [ %i.y, %bb.h ] ; 2 uses
  %.088261 = phi ptr [ null, %.thread ], [ %i.q, %bb.h ] ; 2 uses
  %i.z = phi i1 [ false, %.thread ], [ %.ph, %bb.h ]
  %.091113259 = phi i32 [ 0, %.thread ], [ %.091.ph, %bb.h ] ; 4 uses
  %.not180 = icmp eq i32 %.091113259, 0
  %i.aa = getelementptr i8, ptr %1, i64 416
  %i.ab = zext nneg i32 %.091113259 to i64        ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv248 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next249, %._crit_edge ] ; 3 uses
  %indvars250 = trunc i64 %indvars.iv248 to i32   ; 2 uses
  %i.ac = load i32, ptr @hf_dect_B_fn, align 4
  %i.ad = or disjoint i32 %indvars250, 8
  %i.ae = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %.086262, i32 noundef %i.ac, ptr noundef %2, i32 noundef 19, i32 noundef 0, ptr noundef nonnull @.str.740, i32 noundef %indvars250, i32 noundef %i.ad) ; 0 uses
  br i1 %.not180, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.af = getelementptr [31 x i8], ptr @scrt, i64 %indvars.iv248
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv246 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next247, %bb.m ] ; 2 uses
  %.0178 = phi i16 [ 0, %.lr.ph ], [ %.1.lcssa, %bb.m ]
  %.194176 = phi i32 [ 19, %.lr.ph ], [ %i.at, %bb.m ] ; 2 uses
  %i.ag = load ptr, ptr %i.aa, align 8
  %i.ah = call ptr @wmem_strbuf_new(ptr noundef %i.ag, ptr noundef null) ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.l
  %indvars.iv240 = phi i32 [ 0, %bb.j ], [ %indvars.iv.next241, %bb.l ]
  %indvars.iv = phi i64 [ 0, %bb.j ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.1175 = phi i16 [ %.0178, %bb.j ], [ %i.ap, %bb.l ] ; 3 uses
  %5 = or disjoint i64 %indvars.iv, %indvars.iv246 ; 2 uses
  %.not107 = icmp samesign ult i64 %5, %i.ab
  br i1 %.not107, label %bb.l, label %.split.loop.exit

bb.l:                                             ; preds = %bb.k
  %gep = getelementptr i8, ptr %i.b, i64 %5
  %i.ai = load i8, ptr %gep, align 1
  %i.aj = urem i16 %.1175, 31
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = getelementptr i8, ptr %i.af, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %i.an = xor i8 %i.am, %i.ai
  %i.ao = zext i8 %i.an to i32
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.ah, ptr noundef nonnull @.str.741, i32 noundef %i.ao)
  %i.ap = add i16 %.1175, 1                       ; 2 uses
  %indvars.iv.next241 = add nuw nsw i32 %indvars.iv240, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond245.not, label %bb.m, label %bb.k, !llvm.loop !8

.split.loop.exit:                                 ; preds = %bb.k
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.split.loop.exit
  %.1.lcssa = phi i16 [ %.1175, %.split.loop.exit ], [ %i.ap, %bb.l ]
  %.lcssa173 = phi i32 [ %6, %.split.loop.exit ], [ %indvars.iv.next241, %bb.l ] ; 2 uses
  %i.aq = load i32, ptr @hf_dect_B_Data, align 4
  %i.ar = call ptr @wmem_strbuf_get_str(ptr noundef %i.ah)
  %i.as = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %.086262, i32 noundef %i.aq, ptr noundef %2, i32 noundef %.194176, i32 noundef %.lcssa173, ptr noundef nonnull @.str.742, ptr noundef %i.ar) ; 0 uses
  %i.at = add i32 %.lcssa173, %.194176            ; 2 uses
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 16 ; 2 uses
  %i.au = icmp samesign ult i64 %indvars.iv.next247, %i.ab
  br i1 %i.au, label %bb.j, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.m, %bb.i
  %.194.lcssa = phi i32 [ 19, %bb.i ], [ %i.at, %bb.m ] ; 2 uses
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond251.not = icmp eq i64 %indvars.iv.next249, 8
  br i1 %exitcond251.not, label %.loopexit, label %bb.i, !llvm.loop !10

.split:                                           ; preds = %bb.h
  %i.av = load i32, ptr @hf_dect_B_Data, align 4
  %i.aw = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.s, i32 noundef %i.av, ptr noundef %2, i32 noundef 19, i32 noundef 0, ptr noundef nonnull @.str.743) ; 0 uses
  br i1 %.ph, label %bb.n, label %bb.ak

.loopexit:                                        ; preds = %._crit_edge
  br i1 %i.z, label %bb.n, label %bb.ak

bb.n:                                             ; preds = %.split, %.loopexit
  %.2268 = phi i32 [ 19, %.split ], [ %.194.lcssa, %.loopexit ]
  %.091113258266 = phi i32 [ %.091.ph, %.split ], [ %.091113259, %.loopexit ]
  %.088260264 = phi ptr [ %i.q, %.split ], [ %.088261, %.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %i.a, i8 noundef 0, i64 noundef 21, i1 noundef false) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.02951.i = phi i32 [ 0, %bb.n ], [ %i.bp, %bb.o ] ; 5 uses
  %i.ax = lshr i32 %.02951.i, 4
  %i.ay = mul nuw nsw i32 %i.ax, 48
  %i.az = add nuw nsw i32 %.02951.i, 48
  %i.ba = add nuw nsw i32 %i.az, %i.ay
  %.zext.i = lshr i32 %i.ba, 3
  %i.bb = zext nneg i32 %.zext.i to i64
  %i.bc = getelementptr i8, ptr %i.b, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = and i32 %.02951.i, 7
  %i.bg = shl nuw nsw i32 1, %i.bf                ; 2 uses
  %i.bh = and i32 %i.bg, %i.be
  %.not.i.i = icmp eq i32 %i.bh, 0
  %.zext45.i = lshr i32 %.02951.i, 3
  %i.bi = zext nneg i32 %.zext45.i to i64
  %i.bj = getelementptr i8, ptr %i.a, i64 %i.bi   ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1             ; 2 uses
  %i.bl = trunc nuw i32 %i.bg to i8               ; 2 uses
  %i.bm = or i8 %i.bk, %i.bl
  %i.bn = xor i8 %i.bl, -1
  %i.bo = and i8 %i.bk, %i.bn
  %.sink.i.i = select i1 %.not.i.i, i8 %i.bo, i8 %i.bm
  store i8 %.sink.i.i, ptr %i.bj, align 1
  %i.bp = add nuw nsw i32 %.02951.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bp, 80
  br i1 %exitcond.not.i, label %bb.p, label %bb.o, !llvm.loop !11

bb.p:                                             ; preds = %bb.o
  %i.bq = load i8, ptr %i.a, align 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.bs = load i8, ptr %i.br, align 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.backedge, %bb.p
  %.236.i = phi i8 [ %i.bq, %bb.p ], [ %.236.i.be, %.preheader.i.backedge ] ; 2 uses
  %.233.i = phi i8 [ %i.bs, %bb.p ], [ %i.bu, %.preheader.i.backedge ] ; 2 uses
  %.1.i = phi i32 [ 0, %bb.p ], [ %i.bv, %.preheader.i.backedge ] ; 3 uses
  %.not40.i = icmp sgt i8 %.236.i, -1
  %i.bt = call i8 @llvm.fshl.i8(i8 %.236.i, i8 %.233.i, i8 1) ; 3 uses
  %i.bu = shl i8 %.233.i, 1
  %i.bv = add i32 %.1.i, 1
  br i1 %.not40.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader.i
  %exitcond62.i = icmp eq i32 %.1.i, 7
  br i1 %exitcond62.i, label %.thread.i, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.q, %bb.r
  %.236.i.be = phi i8 [ %i.bt, %bb.q ], [ %i.bw, %bb.r ]
  br label %.preheader.i, !llvm.loop !12

bb.r:                                             ; preds = %.preheader.i
  %i.bw = xor i8 %i.bt, 16                        ; 2 uses
  %i.bx = icmp slt i32 %.1.i, 7
  br i1 %i.bx, label %.preheader.i.backedge, label %.thread.i

.thread.i:                                        ; preds = %bb.r, %bb.q
  %.4.i = phi i8 [ %i.bt, %bb.q ], [ %i.bw, %bb.r ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.bz = load i8, ptr %i.by, align 2
  br label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.preheader.1.i.backedge, %.thread.i
  %.236.1.i = phi i8 [ %.4.i, %.thread.i ], [ %.236.1.i.be, %.preheader.1.i.backedge ] ; 2 uses
  %.233.1.i = phi i8 [ %i.bz, %.thread.i ], [ %i.cb, %.preheader.1.i.backedge ] ; 2 uses
  %.1.1.i = phi i32 [ 0, %.thread.i ], [ %i.cc, %.preheader.1.i.backedge ] ; 3 uses
  %.not40.1.i = icmp sgt i8 %.236.1.i, -1
  %i.ca = call i8 @llvm.fshl.i8(i8 %.236.1.i, i8 %.233.1.i, i8 1) ; 3 uses
  %i.cb = shl i8 %.233.1.i, 1
  %i.cc = add i32 %.1.1.i, 1
  br i1 %.not40.1.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.preheader.1.i
  %i.cd = xor i8 %i.ca, 16                        ; 2 uses
  %i.ce = icmp slt i32 %.1.1.i, 7
  br i1 %i.ce, label %.preheader.1.i.backedge, label %.thread.1.i

bb.t:                                             ; preds = %.preheader.1.i
  %exitcond62.1.i = icmp eq i32 %.1.1.i, 7
  br i1 %exitcond62.1.i, label %.thread.1.i, label %.preheader.1.i.backedge

.preheader.1.i.backedge:                          ; preds = %bb.t, %bb.s
  %.236.1.i.be = phi i8 [ %i.ca, %bb.t ], [ %i.cd, %bb.s ]
  br label %.preheader.1.i, !llvm.loop !12

.thread.1.i:                                      ; preds = %bb.s, %bb.t
  %.4.1.i = phi i8 [ %i.ca, %bb.t ], [ %i.cd, %bb.s ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.cg = load i8, ptr %i.cf, align 1
  br label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.2.i.backedge, %.thread.1.i
  %.236.2.i = phi i8 [ %.4.1.i, %.thread.1.i ], [ %.236.2.i.be, %.preheader.2.i.backedge ] ; 2 uses
  %.233.2.i = phi i8 [ %i.cg, %.thread.1.i ], [ %i.ci, %.preheader.2.i.backedge ] ; 2 uses
  %.1.2.i = phi i32 [ 0, %.thread.1.i ], [ %i.cj, %.preheader.2.i.backedge ] ; 3 uses
  %.not40.2.i = icmp sgt i8 %.236.2.i, -1
  %i.ch = call i8 @llvm.fshl.i8(i8 %.236.2.i, i8 %.233.2.i, i8 1) ; 3 uses
  %i.ci = shl i8 %.233.2.i, 1
  %i.cj = add i32 %.1.2.i, 1
  br i1 %.not40.2.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader.2.i
  %i.ck = xor i8 %i.ch, 16                        ; 2 uses
  %i.cl = icmp slt i32 %.1.2.i, 7
  br i1 %i.cl, label %.preheader.2.i.backedge, label %.thread.2.i

bb.v:                                             ; preds = %.preheader.2.i
  %exitcond62.2.i = icmp eq i32 %.1.2.i, 7
  br i1 %exitcond62.2.i, label %.thread.2.i, label %.preheader.2.i.backedge

.preheader.2.i.backedge:                          ; preds = %bb.v, %bb.u
  %.236.2.i.be = phi i8 [ %i.ch, %bb.v ], [ %i.ck, %bb.u ]
  br label %.preheader.2.i, !llvm.loop !12

.thread.2.i:                                      ; preds = %bb.u, %bb.v
  %.4.2.i = phi i8 [ %i.ch, %bb.v ], [ %i.ck, %bb.u ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cn = load i8, ptr %i.cm, align 4
  br label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.3.i.backedge, %.thread.2.i
  %.236.3.i = phi i8 [ %.4.2.i, %.thread.2.i ], [ %.236.3.i.be, %.preheader.3.i.backedge ] ; 2 uses
  %.233.3.i = phi i8 [ %i.cn, %.thread.2.i ], [ %i.cp, %.preheader.3.i.backedge ] ; 2 uses
  %.1.3.i = phi i32 [ 0, %.thread.2.i ], [ %i.cq, %.preheader.3.i.backedge ] ; 3 uses
  %.not40.3.i = icmp sgt i8 %.236.3.i, -1
  %i.co = call i8 @llvm.fshl.i8(i8 %.236.3.i, i8 %.233.3.i, i8 1) ; 3 uses
  %i.cp = shl i8 %.233.3.i, 1
  %i.cq = add i32 %.1.3.i, 1
  br i1 %.not40.3.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.preheader.3.i
  %i.cr = xor i8 %i.co, 16                        ; 2 uses
  %i.cs = icmp slt i32 %.1.3.i, 7
  br i1 %i.cs, label %.preheader.3.i.backedge, label %.thread.3.i

bb.x:                                             ; preds = %.preheader.3.i
  %exitcond62.3.i = icmp eq i32 %.1.3.i, 7
  br i1 %exitcond62.3.i, label %.thread.3.i, label %.preheader.3.i.backedge

.preheader.3.i.backedge:                          ; preds = %bb.x, %bb.w
  %.236.3.i.be = phi i8 [ %i.co, %bb.x ], [ %i.cr, %bb.w ]
  br label %.preheader.3.i, !llvm.loop !12

.thread.3.i:                                      ; preds = %bb.w, %bb.x
  %.4.3.i = phi i8 [ %i.co, %bb.x ], [ %i.cr, %bb.w ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.cu = load i8, ptr %i.ct, align 1
  br label %.preheader.4.i

.preheader.4.i:                                   ; preds = %.preheader.4.i.backedge, %.thread.3.i
  %.236.4.i = phi i8 [ %.4.3.i, %.thread.3.i ], [ %.236.4.i.be, %.preheader.4.i.backedge ] ; 2 uses
  %.233.4.i = phi i8 [ %i.cu, %.thread.3.i ], [ %i.cw, %.preheader.4.i.backedge ] ; 2 uses
  %.1.4.i = phi i32 [ 0, %.thread.3.i ], [ %i.cx, %.preheader.4.i.backedge ] ; 3 uses
  %.not40.4.i = icmp sgt i8 %.236.4.i, -1
  %i.cv = call i8 @llvm.fshl.i8(i8 %.236.4.i, i8 %.233.4.i, i8 1) ; 3 uses
  %i.cw = shl i8 %.233.4.i, 1
  %i.cx = add i32 %.1.4.i, 1
  br i1 %.not40.4.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader.4.i
  %i.cy = xor i8 %i.cv, 16                        ; 2 uses
  %i.cz = icmp slt i32 %.1.4.i, 7
  br i1 %i.cz, label %.preheader.4.i.backedge, label %.thread.4.i

bb.z:                                             ; preds = %.preheader.4.i
  %exitcond62.4.i = icmp eq i32 %.1.4.i, 7
  br i1 %exitcond62.4.i, label %.thread.4.i, label %.preheader.4.i.backedge

.preheader.4.i.backedge:                          ; preds = %bb.z, %bb.y
  %.236.4.i.be = phi i8 [ %i.cv, %bb.z ], [ %i.cy, %bb.y ]
  br label %.preheader.4.i, !llvm.loop !12

.thread.4.i:                                      ; preds = %bb.y, %bb.z
  %.4.4.i = phi i8 [ %i.cv, %bb.z ], [ %i.cy, %bb.y ]
end_hunk_0
