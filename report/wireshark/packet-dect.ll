inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_afield:bb.a
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.backedge, %bb.ax
  %.229.i = phi i16 [ %i.lq, %bb.ax ], [ %.229.i.be, %.preheader.i.backedge ] ; 2 uses
  %.125.i = phi i8 [ %i.ls, %bb.ax ], [ %i.lw, %.preheader.i.backedge ] ; 2 uses
  %.1.i = phi i32 [ 0, %bb.ax ], [ %i.lx, %.preheader.i.backedge ] ; 3 uses
  %.not.i = icmp sgt i16 %.229.i, -1
  %i.lt = shl i16 %.229.i, 1
  %.125.lobit.i = lshr i8 %.125.i, 7
  %i.lu = zext nneg i8 %.125.lobit.i to i16
  %i.lv = or disjoint i16 %i.lt, %i.lu            ; 3 uses
  %i.lw = shl i8 %.125.i, 1
  %i.lx = add i32 %.1.i, 1
  br i1 %.not.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.preheader.i
  %exitcond.i = icmp eq i32 %.1.i, 7
  br i1 %exitcond.i, label %.thread.i, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.ay, %bb.az
  %.229.i.be = phi i16 [ %i.lv, %bb.ay ], [ %i.ly, %bb.az ]
  br label %.preheader.i, !llvm.loop !6

bb.az:                                            ; preds = %.preheader.i
  %i.ly = xor i16 %i.lv, 1417                     ; 2 uses
  %i.lz = icmp slt i32 %.1.i, 7
  br i1 %i.lz, label %.preheader.i.backedge, label %.thread.i

.thread.i:                                        ; preds = %bb.az, %bb.ay
  %.4.i = phi i16 [ %i.lv, %bb.ay ], [ %i.ly, %bb.az ]
  %i.ma = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.mb = load i8, ptr %i.ma, align 1
  br label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.preheader.1.i.backedge, %.thread.i
  %.229.1.i = phi i16 [ %.4.i, %.thread.i ], [ %.229.1.i.be, %.preheader.1.i.backedge ] ; 2 uses
  %.125.1.i = phi i8 [ %i.mb, %.thread.i ], [ %i.mf, %.preheader.1.i.backedge ] ; 2 uses
  %.1.1.i = phi i32 [ 0, %.thread.i ], [ %i.mg, %.preheader.1.i.backedge ] ; 3 uses
  %.not.1.i = icmp sgt i16 %.229.1.i, -1
  %i.mc = shl i16 %.229.1.i, 1
  %.125.lobit.1.i = lshr i8 %.125.1.i, 7
  %i.md = zext nneg i8 %.125.lobit.1.i to i16
  %i.me = or disjoint i16 %i.mc, %i.md            ; 3 uses
  %i.mf = shl i8 %.125.1.i, 1
  %i.mg = add i32 %.1.1.i, 1
  br i1 %.not.1.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.preheader.1.i
  %i.mh = xor i16 %i.me, 1417                     ; 2 uses
  %i.mi = icmp slt i32 %.1.1.i, 7
  br i1 %i.mi, label %.preheader.1.i.backedge, label %.thread.1.i

bb.bb:                                            ; preds = %.preheader.1.i
  %exitcond.1.i = icmp eq i32 %.1.1.i, 7
  br i1 %exitcond.1.i, label %.thread.1.i, label %.preheader.1.i.backedge

.preheader.1.i.backedge:                          ; preds = %bb.bb, %bb.ba
  %.229.1.i.be = phi i16 [ %i.me, %bb.bb ], [ %i.mh, %bb.ba ]
  br label %.preheader.1.i, !llvm.loop !6

.thread.1.i:                                      ; preds = %bb.ba, %bb.bb
  %.4.1.i = phi i16 [ %i.me, %bb.bb ], [ %i.mh, %bb.ba ]
  %i.mj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.mk = load i8, ptr %i.mj, align 1
  br label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.2.i.backedge, %.thread.1.i
  %.229.2.i = phi i16 [ %.4.1.i, %.thread.1.i ], [ %.229.2.i.be, %.preheader.2.i.backedge ] ; 2 uses
  %.125.2.i = phi i8 [ %i.mk, %.thread.1.i ], [ %i.mo, %.preheader.2.i.backedge ] ; 2 uses
  %.1.2.i = phi i32 [ 0, %.thread.1.i ], [ %i.mp, %.preheader.2.i.backedge ] ; 3 uses
  %.not.2.i = icmp sgt i16 %.229.2.i, -1
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
  br label %.preheader.2.i, !llvm.loop !6

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
  br label %.preheader.3.i, !llvm.loop !6

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
  br label %.preheader.4.i, !llvm.loop !6

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
  br label %.preheader.5.i, !llvm.loop !6

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
  %.094.ph = phi i32 [ 40, %bb.e ], [ 40, %bb.e ], [ 40, %bb.e ], [ 40, %bb.e ], [ 40, %bb.e ], [ 100, %bb.f ], [ 10, %bb.g ] ; 7 uses
  %.092.ph = phi ptr [ @.str.737, %bb.e ], [ @.str.737, %bb.e ], [ @.str.737, %bb.e ], [ @.str.737, %bb.e ], [ @.str.737, %bb.e ], [ @.str.738, %bb.f ], [ @.str.739, %bb.g ]
  %.091.ph = phi ptr [ @.str.434, %bb.e ], [ @.str.434, %bb.e ], [ @.str.434, %bb.e ], [ @.str.434, %bb.e ], [ @.str.434, %bb.e ], [ @.str.428, %bb.f ], [ @.str.431, %bb.g ]
  %i.n = load i32, ptr @hf_dect_cc_BField, align 4
  %i.o = call ptr @proto_tree_add_string(ptr noundef %4, i32 noundef %i.n, ptr noundef %2, i32 noundef 19, i32 noundef 1, ptr noundef nonnull %.091.ph) ; 0 uses
  %i.p = load i32, ptr @hf_dect_B, align 4
  %i.q = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.p, ptr noundef %2, i32 noundef 19, i32 noundef %.094.ph, i32 noundef 0) ; 4 uses
  %i.r = load i32, ptr @ett_bfield, align 4
  %i.s = call ptr @proto_item_add_subtree(ptr noundef %i.q, i32 noundef %i.r) ; 3 uses
  %i.t = load i32, ptr @hf_dect_B_Data, align 4
  %i.u = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.s, i32 noundef %i.t, ptr noundef %2, i32 noundef 19, i32 noundef %.094.ph, ptr noundef nonnull @.str.715, ptr noundef nonnull %.092.ph) ; 0 uses
  %i.v = load i32, ptr @hf_dect_B_DescrambledData, align 4
  %i.w = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.v, ptr noundef %2, i32 noundef 19, i32 noundef %.094.ph, i32 noundef 0)
  %i.x = load i32, ptr @ett_bfdescrdata, align 4
  %i.y = call ptr @proto_item_add_subtree(ptr noundef %i.w, i32 noundef %i.x)
  %.not104 = icmp ult i32 %i.c, %.094.ph
  br i1 %.not104, label %.split, label %.preheader

.preheader:                                       ; preds = %.thread, %bb.h
  %.088260 = phi ptr [ null, %.thread ], [ %i.y, %bb.h ] ; 2 uses
  %.090259 = phi ptr [ null, %.thread ], [ %i.q, %bb.h ] ; 2 uses
  %i.z = phi i1 [ false, %.thread ], [ %.ph, %bb.h ]
  %.094113257 = phi i32 [ 0, %.thread ], [ %.094.ph, %bb.h ] ; 5 uses
  %.not180 = icmp eq i32 %.094113257, 0
  %i.aa = getelementptr i8, ptr %1, i64 416
  %i.ab = zext nneg i32 %.094113257 to i64
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv246.a = phi i64 [ 0, %.preheader ], [ %indvars.iv.next247, %._crit_edge ] ; 3 uses
  %indvars248 = trunc i64 %indvars.iv246.a to i32 ; 2 uses
  %i.ac = load i32, ptr @hf_dect_B_fn, align 4
  %i.ad = or disjoint i32 %indvars248, 8
  %i.ae = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %.088260, i32 noundef %i.ac, ptr noundef %2, i32 noundef 19, i32 noundef 0, ptr noundef nonnull @.str.740, i32 noundef %indvars248, i32 noundef %i.ad) ; 0 uses
  br i1 %.not180, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.af = getelementptr [31 x i8], ptr @scrt, i64 %indvars.iv246.a
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv.a = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.a, %bb.m ] ; 2 uses
  %indvars.iv242 = phi i32 [ %.094113257, %.lr.ph ], [ %indvars.iv.next243, %bb.m ] ; 3 uses
  %.1178 = phi i32 [ 19, %.lr.ph ], [ %i.av, %bb.m ] ; 2 uses
  %.083177 = phi i16 [ 0, %.lr.ph ], [ %.184.lcssa, %bb.m ]
  %umin = call i32 @llvm.umin.i32(i32 %indvars.iv242, i32 15) ; 2 uses
  %i.ag = add nuw nsw i32 %umin, 1
  %i.ah = load ptr, ptr %i.aa, align 8
  %i.ai = call ptr @wmem_strbuf_new(ptr noundef %i.ah, ptr noundef null) ; 2 uses
  %wide.trip.count = zext i32 %indvars.iv242 to i64
  %invariant.gep = getelementptr i8, ptr %i.b, i64 %indvars.iv.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.l
  %indvars.iv = phi i64 [ 0, %bb.j ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.184175 = phi i16 [ %.083177, %bb.j ], [ %i.ar, %bb.l ] ; 3 uses
  %exitcond.14.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.14.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = urem i16 %.184175, 31
  %i.am = zext nneg i16 %i.al to i64
  %i.an = getelementptr i8, ptr %i.af, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = xor i8 %i.ao, %i.ak
  %i.aq = zext i8 %i.ap to i32
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.ai, ptr noundef nonnull @.str.741, i32 noundef %i.aq)
  %i.ar = add i16 %.184175, 1                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.15.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.15.not, label %bb.m, label %bb.k, !llvm.loop !8

bb.m:                                             ; preds = %bb.k, %bb.l
  %.184.lcssa = phi i16 [ %.184175, %bb.k ], [ %i.ar, %bb.l ]
  %.lcssa173 = phi i32 [ %umin, %bb.k ], [ %i.ag, %bb.l ] ; 2 uses
  %i.as = load i32, ptr @hf_dect_B_Data, align 4
  %i.at = call ptr @wmem_strbuf_get_str(ptr noundef %i.ai)
  %i.au = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %.088260, i32 noundef %i.as, ptr noundef %2, i32 noundef %.1178, i32 noundef %.lcssa173, ptr noundef nonnull @.str.742, ptr noundef %i.at) ; 0 uses
  %i.av = add i32 %.lcssa173, %.1178              ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 16 ; 2 uses
  %i.aw = icmp samesign ult i64 %indvars.iv.next.a, %i.ab
  %indvars.iv.next243 = add i32 %indvars.iv242, -16
  br i1 %i.aw, label %bb.j, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.m, %bb.i
  %.1.lcssa = phi i32 [ 19, %bb.i ], [ %i.av, %bb.m ] ; 2 uses
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246.a, 1 ; 2 uses
  %exitcond249.not = icmp eq i64 %indvars.iv.next247, 8
  br i1 %exitcond249.not, label %.loopexit, label %bb.i, !llvm.loop !10

.split:                                           ; preds = %bb.h
  %i.ax = load i32, ptr @hf_dect_B_Data, align 4
  %i.ay = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %i.s, i32 noundef %i.ax, ptr noundef %2, i32 noundef 19, i32 noundef 0, ptr noundef nonnull @.str.743) ; 0 uses
  br i1 %.ph, label %bb.n, label %bb.ak

.loopexit:                                        ; preds = %._crit_edge
  br i1 %i.z, label %bb.n, label %bb.ak

bb.n:                                             ; preds = %.split, %.loopexit
  %.2266 = phi i32 [ 19, %.split ], [ %.1.lcssa, %.loopexit ]
  %.094113256264 = phi i32 [ %.094.ph, %.split ], [ %.094113257, %.loopexit ]
  %.090258262 = phi ptr [ %i.q, %.split ], [ %.090259, %.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %i.a, i8 noundef 0, i64 noundef 21, i1 noundef false) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.02951.i = phi i32 [ 0, %bb.n ], [ %i.br, %bb.o ] ; 5 uses
  %i.az = lshr i32 %.02951.i, 4
  %i.ba = mul nuw nsw i32 %i.az, 48
  %i.bb = add nuw nsw i32 %.02951.i, 48
  %i.bc = add nuw nsw i32 %i.bb, %i.ba
  %.zext.i = lshr i32 %i.bc, 3
  %i.bd = zext nneg i32 %.zext.i to i64
  %i.be = getelementptr i8, ptr %i.b, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = and i32 %.02951.i, 7
  %i.bi = shl nuw nsw i32 1, %i.bh                ; 2 uses
  %i.bj = and i32 %i.bi, %i.bg
  %.not.i.i = icmp eq i32 %i.bj, 0
  %.zext45.i = lshr i32 %.02951.i, 3
  %i.bk = zext nneg i32 %.zext45.i to i64
  %i.bl = getelementptr i8, ptr %i.a, i64 %i.bk   ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1             ; 2 uses
  %i.bn = trunc nuw i32 %i.bi to i8               ; 2 uses
  %i.bo = or i8 %i.bm, %i.bn
  %i.bp = xor i8 %i.bn, -1
  %i.bq = and i8 %i.bm, %i.bp
  %.sink.i.i = select i1 %.not.i.i, i8 %i.bq, i8 %i.bo
  store i8 %.sink.i.i, ptr %i.bl, align 1
  %i.br = add nuw nsw i32 %.02951.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.br, 80
  br i1 %exitcond.not.i, label %bb.p, label %bb.o, !llvm.loop !11

bb.p:                                             ; preds = %bb.o
  %i.bs = load i8, ptr %i.a, align 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.bu = load i8, ptr %i.bt, align 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.backedge, %bb.p
  %.236.i = phi i8 [ %i.bs, %bb.p ], [ %.236.i.be, %.preheader.i.backedge ] ; 2 uses
  %.233.i = phi i8 [ %i.bu, %bb.p ], [ %i.bw, %.preheader.i.backedge ] ; 2 uses
  %.1.i = phi i32 [ 0, %bb.p ], [ %i.bx, %.preheader.i.backedge ] ; 3 uses
  %.not40.i = icmp sgt i8 %.236.i, -1
  %i.bv = call i8 @llvm.fshl.i8(i8 %.236.i, i8 %.233.i, i8 1) ; 3 uses
  %i.bw = shl i8 %.233.i, 1
  %i.bx = add i32 %.1.i, 1
  br i1 %.not40.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader.i
  %exitcond62.i = icmp eq i32 %.1.i, 7
  br i1 %exitcond62.i, label %.thread.i, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.q, %bb.r
  %.236.i.be = phi i8 [ %i.bv, %bb.q ], [ %i.by, %bb.r ]
  br label %.preheader.i, !llvm.loop !12

bb.r:                                             ; preds = %.preheader.i
  %i.by = xor i8 %i.bv, 16                        ; 2 uses
  %i.bz = icmp slt i32 %.1.i, 7
  br i1 %i.bz, label %.preheader.i.backedge, label %.thread.i

.thread.i:                                        ; preds = %bb.r, %bb.q
  %.4.i = phi i8 [ %i.bv, %bb.q ], [ %i.by, %bb.r ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.cb = load i8, ptr %i.ca, align 2
  br label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.preheader.1.i.backedge, %.thread.i
  %.236.1.i = phi i8 [ %.4.i, %.thread.i ], [ %.236.1.i.be, %.preheader.1.i.backedge ] ; 2 uses
  %.233.1.i = phi i8 [ %i.cb, %.thread.i ], [ %i.cd, %.preheader.1.i.backedge ] ; 2 uses
  %.1.1.i = phi i32 [ 0, %.thread.i ], [ %i.ce, %.preheader.1.i.backedge ] ; 3 uses
  %.not40.1.i = icmp sgt i8 %.236.1.i, -1
  %i.cc = call i8 @llvm.fshl.i8(i8 %.236.1.i, i8 %.233.1.i, i8 1) ; 3 uses
  %i.cd = shl i8 %.233.1.i, 1
  %i.ce = add i32 %.1.1.i, 1
  br i1 %.not40.1.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.preheader.1.i
  %i.cf = xor i8 %i.cc, 16                        ; 2 uses
  %i.cg = icmp slt i32 %.1.1.i, 7
  br i1 %i.cg, label %.preheader.1.i.backedge, label %.thread.1.i

bb.t:                                             ; preds = %.preheader.1.i
  %exitcond62.1.i = icmp eq i32 %.1.1.i, 7
  br i1 %exitcond62.1.i, label %.thread.1.i, label %.preheader.1.i.backedge

.preheader.1.i.backedge:                          ; preds = %bb.t, %bb.s
  %.236.1.i.be = phi i8 [ %i.cc, %bb.t ], [ %i.cf, %bb.s ]
  br label %.preheader.1.i, !llvm.loop !12

.thread.1.i:                                      ; preds = %bb.s, %bb.t
  %.4.1.i = phi i8 [ %i.cc, %bb.t ], [ %i.cf, %bb.s ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ci = load i8, ptr %i.ch, align 1
  br label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.2.i.backedge, %.thread.1.i
  %.236.2.i = phi i8 [ %.4.1.i, %.thread.1.i ], [ %.236.2.i.be, %.preheader.2.i.backedge ] ; 2 uses
  %.233.2.i = phi i8 [ %i.ci, %.thread.1.i ], [ %i.ck, %.preheader.2.i.backedge ] ; 2 uses
  %.1.2.i = phi i32 [ 0, %.thread.1.i ], [ %i.cl, %.preheader.2.i.backedge ] ; 3 uses
  %.not40.2.i = icmp sgt i8 %.236.2.i, -1
  %i.cj = call i8 @llvm.fshl.i8(i8 %.236.2.i, i8 %.233.2.i, i8 1) ; 3 uses
  %i.ck = shl i8 %.233.2.i, 1
  %i.cl = add i32 %.1.2.i, 1
  br i1 %.not40.2.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader.2.i
  %i.cm = xor i8 %i.cj, 16                        ; 2 uses
  %i.cn = icmp slt i32 %.1.2.i, 7
  br i1 %i.cn, label %.preheader.2.i.backedge, label %.thread.2.i

bb.v:                                             ; preds = %.preheader.2.i
  %exitcond62.2.i = icmp eq i32 %.1.2.i, 7
  br i1 %exitcond62.2.i, label %.thread.2.i, label %.preheader.2.i.backedge

.preheader.2.i.backedge:                          ; preds = %bb.v, %bb.u
  %.236.2.i.be = phi i8 [ %i.cj, %bb.v ], [ %i.cm, %bb.u ]
  br label %.preheader.2.i, !llvm.loop !12

.thread.2.i:                                      ; preds = %bb.u, %bb.v
  %.4.2.i = phi i8 [ %i.cj, %bb.v ], [ %i.cm, %bb.u ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cp = load i8, ptr %i.co, align 4
  br label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.3.i.backedge, %.thread.2.i
  %.236.3.i = phi i8 [ %.4.2.i, %.thread.2.i ], [ %.236.3.i.be, %.preheader.3.i.backedge ] ; 2 uses
  %.233.3.i = phi i8 [ %i.cp, %.thread.2.i ], [ %i.cr, %.preheader.3.i.backedge ] ; 2 uses
  %.1.3.i = phi i32 [ 0, %.thread.2.i ], [ %i.cs, %.preheader.3.i.backedge ] ; 3 uses
  %.not40.3.i = icmp sgt i8 %.236.3.i, -1
  %i.cq = call i8 @llvm.fshl.i8(i8 %.236.3.i, i8 %.233.3.i, i8 1) ; 3 uses
  %i.cr = shl i8 %.233.3.i, 1
  %i.cs = add i32 %.1.3.i, 1
  br i1 %.not40.3.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.preheader.3.i
  %i.ct = xor i8 %i.cq, 16                        ; 2 uses
  %i.cu = icmp slt i32 %.1.3.i, 7
  br i1 %i.cu, label %.preheader.3.i.backedge, label %.thread.3.i

bb.x:                                             ; preds = %.preheader.3.i
  %exitcond62.3.i = icmp eq i32 %.1.3.i, 7
  br i1 %exitcond62.3.i, label %.thread.3.i, label %.preheader.3.i.backedge

.preheader.3.i.backedge:                          ; preds = %bb.x, %bb.w
  %.236.3.i.be = phi i8 [ %i.cq, %bb.x ], [ %i.ct, %bb.w ]
  br label %.preheader.3.i, !llvm.loop !12

.thread.3.i:                                      ; preds = %bb.w, %bb.x
  %.4.3.i = phi i8 [ %i.cq, %bb.x ], [ %i.ct, %bb.w ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.cw = load i8, ptr %i.cv, align 1
  br label %.preheader.4.i

.preheader.4.i:                                   ; preds = %.preheader.4.i.backedge, %.thread.3.i
  %.236.4.i = phi i8 [ %.4.3.i, %.thread.3.i ], [ %.236.4.i.be, %.preheader.4.i.backedge ] ; 2 uses
  %.233.4.i = phi i8 [ %i.cw, %.thread.3.i ], [ %i.cy, %.preheader.4.i.backedge ] ; 2 uses
  %.1.4.i = phi i32 [ 0, %.thread.3.i ], [ %i.cz, %.preheader.4.i.backedge ] ; 3 uses
  %.not40.4.i = icmp sgt i8 %.236.4.i, -1
  %i.cx = call i8 @llvm.fshl.i8(i8 %.236.4.i, i8 %.233.4.i, i8 1) ; 3 uses
  %i.cy = shl i8 %.233.4.i, 1
  %i.cz = add i32 %.1.4.i, 1
  br i1 %.not40.4.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader.4.i
  %i.da = xor i8 %i.cx, 16                        ; 2 uses
  %i.db = icmp slt i32 %.1.4.i, 7
  br i1 %i.db, label %.preheader.4.i.backedge, label %.thread.4.i

bb.z:                                             ; preds = %.preheader.4.i
  %exitcond62.4.i = icmp eq i32 %.1.4.i, 7
  br i1 %exitcond62.4.i, label %.thread.4.i, label %.preheader.4.i.backedge

.preheader.4.i.backedge:                          ; preds = %bb.z, %bb.y
  %.236.4.i.be = phi i8 [ %i.cx, %bb.z ], [ %i.da, %bb.y ]
  br label %.preheader.4.i, !llvm.loop !12

.thread.4.i:                                      ; preds = %bb.y, %bb.z
  %.4.4.i = phi i8 [ %i.cx, %bb.z ], [ %i.da, %bb.y ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.dd = load i8, ptr %i.dc, align 2
  br label %.preheader.5.i

.preheader.5.i:                                   ; preds = %.preheader.5.i.backedge, %.thread.4.i
  %.236.5.i = phi i8 [ %.4.4.i, %.thread.4.i ], [ %.236.5.i.be, %.preheader.5.i.backedge ] ; 2 uses
  %.233.5.i = phi i8 [ %i.dd, %.thread.4.i ], [ %i.df, %.preheader.5.i.backedge ] ; 2 uses
  %.1.5.i = phi i32 [ 0, %.thread.4.i ], [ %i.dg, %.preheader.5.i.backedge ] ; 3 uses
  %.not40.5.i = icmp sgt i8 %.236.5.i, -1
  %i.de = call i8 @llvm.fshl.i8(i8 %.236.5.i, i8 %.233.5.i, i8 1) ; 3 uses
  %i.df = shl i8 %.233.5.i, 1
  %i.dg = add i32 %.1.5.i, 1
  br i1 %.not40.5.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.preheader.5.i
  %i.dh = xor i8 %i.de, 16                        ; 2 uses
  %i.di = icmp slt i32 %.1.5.i, 7
  br i1 %i.di, label %.preheader.5.i.backedge, label %.thread.5.i

bb.ab:                                            ; preds = %.preheader.5.i
  %exitcond62.5.i = icmp eq i32 %.1.5.i, 7
  br i1 %exitcond62.5.i, label %.thread.5.i, label %.preheader.5.i.backedge

.preheader.5.i.backedge:                          ; preds = %bb.ab, %bb.aa
  %.236.5.i.be = phi i8 [ %i.de, %bb.ab ], [ %i.dh, %bb.aa ]
  br label %.preheader.5.i, !llvm.loop !12

.thread.5.i:                                      ; preds = %bb.aa, %bb.ab
  %.4.5.i = phi i8 [ %i.de, %bb.ab ], [ %i.dh, %bb.aa ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.dk = load i8, ptr %i.dj, align 1
  br label %.preheader.6.i

.preheader.6.i:                                   ; preds = %.preheader.6.i.backedge, %.thread.5.i
  %.236.6.i = phi i8 [ %.4.5.i, %.thread.5.i ], [ %.236.6.i.be, %.preheader.6.i.backedge ] ; 2 uses
  %.233.6.i = phi i8 [ %i.dk, %.thread.5.i ], [ %i.dm, %.preheader.6.i.backedge ] ; 2 uses
  %.1.6.i = phi i32 [ 0, %.thread.5.i ], [ %i.dn, %.preheader.6.i.backedge ] ; 3 uses
  %.not40.6.i = icmp sgt i8 %.236.6.i, -1
  %i.dl = call i8 @llvm.fshl.i8(i8 %.236.6.i, i8 %.233.6.i, i8 1) ; 3 uses
  %i.dm = shl i8 %.233.6.i, 1
  %i.dn = add i32 %.1.6.i, 1
  br i1 %.not40.6.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader.6.i
  %i.do = xor i8 %i.dl, 16                        ; 2 uses
  %i.dp = icmp slt i32 %.1.6.i, 7
  br i1 %i.dp, label %.preheader.6.i.backedge, label %.thread.6.i

bb.ad:                                            ; preds = %.preheader.6.i
  %exitcond62.6.i = icmp eq i32 %.1.6.i, 7
  br i1 %exitcond62.6.i, label %.thread.6.i, label %.preheader.6.i.backedge

.preheader.6.i.backedge:                          ; preds = %bb.ad, %bb.ac
  %.236.6.i.be = phi i8 [ %i.dl, %bb.ad ], [ %i.do, %bb.ac ]
  br label %.preheader.6.i, !llvm.loop !12

.thread.6.i:                                      ; preds = %bb.ac, %bb.ad
  %.4.6.i = phi i8 [ %i.dl, %bb.ad ], [ %i.do, %bb.ac ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dr = load i8, ptr %i.dq, align 8
  br label %.preheader.7.i

.preheader.7.i:                                   ; preds = %.preheader.7.i.backedge, %.thread.6.i
  %.236.7.i = phi i8 [ %.4.6.i, %.thread.6.i ], [ %.236.7.i.be, %.preheader.7.i.backedge ] ; 2 uses
  %.233.7.i = phi i8 [ %i.dr, %.thread.6.i ], [ %i.dt, %.preheader.7.i.backedge ] ; 2 uses
  %.1.7.i = phi i32 [ 0, %.thread.6.i ], [ %i.du, %.preheader.7.i.backedge ] ; 3 uses
  %.not40.7.i = icmp sgt i8 %.236.7.i, -1
  %i.ds = call i8 @llvm.fshl.i8(i8 %.236.7.i, i8 %.233.7.i, i8 1) ; 3 uses
  %i.dt = shl i8 %.233.7.i, 1
  %i.du = add i32 %.1.7.i, 1
  br i1 %.not40.7.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.preheader.7.i
  %i.dv = xor i8 %i.ds, 16                        ; 2 uses
  %i.dw = icmp slt i32 %.1.7.i, 7
  br i1 %i.dw, label %.preheader.7.i.backedge, label %.thread.7.i

bb.af:                                            ; preds = %.preheader.7.i
  %exitcond62.7.i = icmp eq i32 %.1.7.i, 7
  br i1 %exitcond62.7.i, label %.thread.7.i, label %.preheader.7.i.backedge

.preheader.7.i.backedge:                          ; preds = %bb.af, %bb.ae
  %.236.7.i.be = phi i8 [ %i.ds, %bb.af ], [ %i.dv, %bb.ae ]
  br label %.preheader.7.i, !llvm.loop !12

.thread.7.i:                                      ; preds = %bb.ae, %bb.af
  %.4.7.i = phi i8 [ %i.ds, %bb.af ], [ %i.dv, %bb.ae ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.dy = load i8, ptr %i.dx, align 1
  br label %.preheader.8.i

.preheader.8.i:                                   ; preds = %.preheader.8.i.backedge, %.thread.7.i
  %.236.8.i = phi i8 [ %.4.7.i, %.thread.7.i ], [ %.236.8.i.be, %.preheader.8.i.backedge ] ; 2 uses
  %.233.8.i = phi i8 [ %i.dy, %.thread.7.i ], [ %i.ea, %.preheader.8.i.backedge ] ; 2 uses
  %.1.8.i = phi i32 [ 0, %.thread.7.i ], [ %i.eb, %.preheader.8.i.backedge ] ; 3 uses
  %.not40.8.i = icmp sgt i8 %.236.8.i, -1
  %i.dz = call i8 @llvm.fshl.i8(i8 %.236.8.i, i8 %.233.8.i, i8 1) ; 3 uses
  %i.ea = shl i8 %.233.8.i, 1
  %i.eb = add i32 %.1.8.i, 1
  br i1 %.not40.8.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.preheader.8.i
  %i.ec = xor i8 %i.dz, 16                        ; 2 uses
  %i.ed = icmp slt i32 %.1.8.i, 7
  br i1 %i.ed, label %.preheader.8.i.backedge, label %.preheader.9.i.preheader

bb.ah:                                            ; preds = %.preheader.8.i
  %exitcond62.8.i = icmp eq i32 %.1.8.i, 7
  br i1 %exitcond62.8.i, label %.preheader.9.i.preheader, label %.preheader.8.i.backedge

.preheader.8.i.backedge:                          ; preds = %bb.ah, %bb.ag
  %.236.8.i.be = phi i8 [ %i.dz, %bb.ah ], [ %i.ec, %bb.ag ]
  br label %.preheader.8.i, !llvm.loop !12

.preheader.9.i.preheader:                         ; preds = %bb.ah, %bb.ag
  %.236.9.i.ph = phi i8 [ %i.ec, %bb.ag ], [ %i.dz, %bb.ah ]
  br label %.preheader.9.i

.preheader.9.i:                                   ; preds = %.preheader.9.i.backedge, %.preheader.9.i.preheader
  %.236.9.i = phi i8 [ %.236.9.i.ph, %.preheader.9.i.preheader ], [ %.236.9.i.be, %.preheader.9.i.backedge ] ; 2 uses
  %.1.9.i = phi i32 [ 0, %.preheader.9.i.preheader ], [ %i.ef, %.preheader.9.i.backedge ] ; 3 uses
  %.not40.9.i = icmp sgt i8 %.236.9.i, -1
  %i.ee = shl i8 %.236.9.i, 1                     ; 3 uses
  %i.ef = add i32 %.1.9.i, 1
  br i1 %.not40.9.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.preheader.9.i
  %i.eg = xor i8 %i.ee, 16                        ; 2 uses
  %i.eh = icmp slt i32 %.1.9.i, 7
  br i1 %i.eh, label %.preheader.9.i.backedge, label %calc_xcrc.exit

bb.aj:                                            ; preds = %.preheader.9.i
  %exitcond62.9.i = icmp eq i32 %.1.9.i, 7
  br i1 %exitcond62.9.i, label %calc_xcrc.exit, label %.preheader.9.i.backedge

.preheader.9.i.backedge:                          ; preds = %bb.aj, %bb.ai
  %.236.9.i.be = phi i8 [ %i.ee, %bb.aj ], [ %i.eg, %bb.ai ]
  br label %.preheader.9.i, !llvm.loop !12

calc_xcrc.exit:                                   ; preds = %bb.ai, %bb.aj
  %.4.9.i = phi i8 [ %i.ee, %bb.aj ], [ %i.eg, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.ei = zext i8 %.4.9.i to i32
  br label %bb.ak

bb.ak:                                            ; preds = %.split, %.loopexit, %calc_xcrc.exit
  %.2265 = phi i32 [ %.2266, %calc_xcrc.exit ], [ %.1.lcssa, %.loopexit ], [ 19, %.split ] ; 3 uses
  %.094113256263 = phi i32 [ %.094113256264, %calc_xcrc.exit ], [ %.094113257, %.loopexit ], [ %.094.ph, %.split ]
  %.090258261 = phi ptr [ %.090258262, %calc_xcrc.exit ], [ %.090259, %.loopexit ], [ %i.q, %.split ] ; 3 uses
  %.093 = phi i32 [ %i.ei, %calc_xcrc.exit ], [ 0, %.loopexit ], [ 0, %.split ] ; 5 uses
  %.not105.not = icmp ugt i32 %i.c, %.094113256263
  br i1 %.not105.not, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ek = load i8, ptr %i.ej, align 8
  %i.el = and i8 %i.ek, -16
  %i.em = zext i8 %i.el to i32                    ; 2 uses
  %.not106 = icmp eq i32 %.093, %i.em
  %i.en = load i32, ptr @hf_dect_B_XCRC, align 4  ; 2 uses
  br i1 %.not106, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eo = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %.090258261, i32 noundef %i.en, ptr noundef %2, i32 noundef %.2265, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.744, i32 noundef %.093, i32 noundef %i.em) ; 0 uses
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.ep = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %.090258261, i32 noundef %i.en, ptr noundef %2, i32 noundef %.2265, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.745, i32 noundef %.093, i32 noundef %.093) ; 0 uses
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.eq = load i32, ptr @hf_dect_B_XCRC, align 4
  %i.er = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %.090258261, i32 noundef %i.eq, ptr noundef %2, i32 noundef %.2265, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.746, i32 noundef %.093) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.am, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_none_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_bytes_to_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_get_str(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_tree_add_bitmask_list(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memcpy(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memset_chk(ptr noundef writeonly, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
end_hunk_0
