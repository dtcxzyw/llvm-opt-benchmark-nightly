Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rv60dec?download=true
inline.NumInlined: 185
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 86
begin_hunk_0_@deblock_cu_r:bb.a
  %i.kp = getelementptr inbounds [16 x i8], ptr %i.kk, i64 %i.ko ; 10 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  %i.kr = getelementptr i8, ptr %i.kp, i64 -12
  %i.ks = load i32, ptr %i.kq, align 4, !tbaa !90 ; 3 uses
  %i.kt = load i32, ptr %i.kr, align 4, !tbaa !90
  %.not.i51.i = icmp eq i32 %i.ks, %i.kt
  br i1 %.not.i51.i, label %bb.v, label %mvinfo_is_deblock_cand.exit55.thread.i

bb.v:                                             ; preds = %bb.u
  switch i32 %i.ks, label %bb.x [
    i32 4, label %bb.w
    i32 2, label %bb.w
    i32 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v, %bb.v
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kv = load i16, ptr %i.ku, align 4, !tbaa !94
  %i.kw = sext i16 %i.kv to i32
  %i.kx = getelementptr i8, ptr %i.kp, i64 -8
  %i.ky = load i16, ptr %i.kx, align 4, !tbaa !94
  %i.kz = sext i16 %i.ky to i32
  %i.la = sub nsw i32 %i.kw, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kp, i64 10
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !93
  %i.ld = sext i16 %i.lc to i32
  %i.le = getelementptr i8, ptr %i.kp, i64 -6
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !93
  %i.lg = sext i16 %i.lf to i32
  %i.lh = sub nsw i32 %i.ld, %i.lg
  %i.li = tail call i32 @llvm.abs.i32(i32 %i.la, i1 true)
  %i.lj = tail call i32 @llvm.abs.i32(i32 %i.lh, i1 true)
  %i.lk = add nuw nsw i32 %i.lj, %i.li
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.027.i53.i = phi i32 [ %i.lk, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.ll = add i32 %i.ks, -5
  %i.lm = icmp ult i32 %i.ll, -2
  br i1 %i.lm, label %mvinfo_is_deblock_cand.exit55.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kp, i64 12
  %i.lo = load i16, ptr %i.ln, align 4, !tbaa !92
  %i.lp = sext i16 %i.lo to i32
  %i.lq = getelementptr i8, ptr %i.kp, i64 -4
  %i.lr = load i16, ptr %i.lq, align 4, !tbaa !92
  %i.ls = sext i16 %i.lr to i32
  %i.lt = sub nsw i32 %i.lp, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kp, i64 14
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !91
  %i.lw = sext i16 %i.lv to i32
  %i.lx = getelementptr i8, ptr %i.kp, i64 -2
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !91
  %i.lz = sext i16 %i.ly to i32
  %i.ma = sub nsw i32 %i.lw, %i.lz
  %i.mb = tail call i32 @llvm.abs.i32(i32 %i.lt, i1 true)
  %i.mc = tail call i32 @llvm.abs.i32(i32 %i.ma, i1 true)
  %i.md = add nuw nsw i32 %i.mb, %.027.i53.i
  %i.me = add nuw nsw i32 %i.md, %i.mc
  br label %mvinfo_is_deblock_cand.exit55.i

mvinfo_is_deblock_cand.exit55.i:                  ; preds = %bb.y, %bb.x
  %.1.i54.i = phi i32 [ %i.me, %bb.y ], [ %.027.i53.i, %bb.x ]
  %i.mf = icmp samesign ult i32 %.1.i54.i, 5
  br i1 %i.mf, label %bb.z, label %mvinfo_is_deblock_cand.exit55.thread.i

mvinfo_is_deblock_cand.exit55.thread.i:           ; preds = %mvinfo_is_deblock_cand.exit55.i, %bb.u
  %i.mg = load i8, ptr %i.kg, align 1, !tbaa !42
  %i.mh = or i8 %i.mg, 1
  store i8 %i.mh, ptr %i.kg, align 1, !tbaa !42
  br label %bb.z

bb.z:                                             ; preds = %mvinfo_is_deblock_cand.exit55.thread.i, %mvinfo_is_deblock_cand.exit55.i, %.lr.ph65.i
  %i.mi = add nuw nsw i32 %.064.i, 1              ; 2 uses
  %exitcond68.not.i = icmp eq i32 %i.mi, %i.aq
  br i1 %exitcond68.not.i, label %.lr.ph.i133.preheader, label %.lr.ph65.i, !llvm.loop !199

.lr.ph.i133.preheader:                            ; preds = %bb.j, %bb.l, %bb.z, %.loopexit62.i
  %.pre-phi177 = phi i32 [ %i.dn, %bb.l ], [ %i.fn, %bb.z ], [ %i.fn, %.loopexit62.i ], [ %i.bh, %bb.j ]
  %.val = load i32, ptr %i.ag, align 8, !tbaa !79
  %i.mj = mul nsw i32 %.val, %i.ba
  %i.mk = add nsw i32 %i.mj, %.pre-phi177         ; 2 uses
  br label %.lr.ph.i133

.preheader.i:                                     ; preds = %.lr.ph.i133
  br i1 %.not.i135, label %deblock.exit, label %.lr.ph24.i

.lr.ph.i133:                                      ; preds = %.lr.ph.i133.preheader, %.lr.ph.i133
  %.02022.i = phi i32 [ %i.mp, %.lr.ph.i133 ], [ 0, %.lr.ph.i133.preheader ] ; 3 uses
  %i.ml = shl nuw nsw i32 %.02022.i, 3
  %i.mm = add nsw i32 %i.ml, %i.bf
  %i.mn = shl nuw nsw i32 %.02022.i, 1
  %i.mo = add nsw i32 %i.mn, %i.mk
  tail call fastcc void @deblock8x8(ptr noundef nonnull readonly %0, ptr noundef readonly %1, i32 noundef %i.mm, i32 noundef %i.az, i32 noundef %i.mo)
  %i.mp = add nuw nsw i32 %.02022.i, 1            ; 2 uses
  %exitcond.not.i134 = icmp eq i32 %i.mp, %i.at
  br i1 %exitcond.not.i134, label %.preheader.i, label %.lr.ph.i133, !llvm.loop !200

.lr.ph24.i:                                       ; preds = %.preheader.i, %.lr.ph24.i
  %.023.i = phi i32 [ %i.mw, %.lr.ph24.i ], [ 1, %.preheader.i ] ; 3 uses
  %i.mq = shl nuw nsw i32 %.023.i, 3
  %i.mr = add nsw i32 %i.mq, %i.az
  %i.ms = shl nuw nsw i32 %.023.i, 1
  %i.mt = load i32, ptr %i.ag, align 8, !tbaa !79
  %i.mu = mul nsw i32 %i.ms, %i.mt
  %i.mv = add nsw i32 %i.mu, %i.mk
  tail call fastcc void @deblock8x8(ptr noundef nonnull readonly %0, ptr noundef readonly %1, i32 noundef %i.bf, i32 noundef %i.mr, i32 noundef %i.mv)
  %i.mw = add nuw nsw i32 %.023.i, 1              ; 2 uses
  %exitcond25.not.i = icmp eq i32 %i.mw, %i.at
  br i1 %exitcond25.not.i, label %deblock.exit, label %.lr.ph24.i, !llvm.loop !201

deblock.exit:                                     ; preds = %.lr.ph24.i, %.preheader.i
  %i.mx = add nuw nsw i32 %.0160, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.mx, %smax
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !202

.loopexit:                                        ; preds = %bb.b, %tailrecurse, %._crit_edge, %bb.a, %bb.h
  ret void
}

declare void @ff_thread_progress_report(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 4) i32 @read_intra_mode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  %i.d = lshr i32 %i.b, 3
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !46   ; 4 uses
  %i.j = icmp slt i32 %i.b, %i.i
  %i.k = zext i1 %i.j to i32
  %spec.select.i = add i32 %i.b, %i.k             ; 7 uses
  %i.l = zext i8 %i.g to i32
  %i.m = and i32 %i.b, 7
  store i32 %spec.select.i, ptr %i.a, align 8, !tbaa !50
  %i.n = lshr exact i32 128, %i.m
  %i.o = and i32 %i.n, %i.l
  %.not = icmp eq i32 %i.o, 0
  %i.p = lshr i32 %spec.select.i, 3
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.q ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load i8, ptr %i.r, align 1, !tbaa !42
  %i.t = icmp slt i32 %spec.select.i, %i.i
  %i.u = zext i1 %i.t to i32
  %spec.select.i.i = add i32 %spec.select.i, %i.u ; 5 uses
  %i.v = zext i8 %i.s to i32
  %i.w = and i32 %spec.select.i, 7
  store i32 %spec.select.i.i, ptr %i.a, align 8, !tbaa !50
  %i.x = lshr exact i32 128, %i.w
  %i.y = and i32 %i.x, %i.v
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %read_code012.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = lshr i32 %spec.select.i.i, 3
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !42
  %i.ad = icmp slt i32 %spec.select.i.i, %i.i
  %i.ae = zext i1 %i.ad to i32
  %spec.select.i2.i = add i32 %spec.select.i.i, %i.ae
  %i.af = zext i8 %i.ac to i32
  %i.ag = and i32 %spec.select.i.i, 7
  %i.ah = shl nuw nsw i32 %i.af, %i.ag
  %i.ai = lshr i32 %i.ah, 7
  store i32 %spec.select.i2.i, ptr %i.a, align 8, !tbaa !50
  %i.aj = and i32 %i.ai, 1
  %i.ak = add nuw nsw i32 %i.aj, 1
  br label %read_code012.exit

bb.d:                                             ; preds = %bb.a
  %i.al = load i32, ptr %i.r, align 1, !tbaa !42
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al)
  %i.an = and i32 %spec.select.i, 7
  %i.ao = shl i32 %i.am, %i.an
  %i.ap = lshr i32 %i.ao, 27
  %i.aq = add i32 %spec.select.i, 5
  %i.ar = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.aq)
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !50
  br label %read_code012.exit

read_code012.exit:                                ; preds = %bb.c, %bb.b, %bb.d
  %storemerge = phi i32 [ %i.ap, %bb.d ], [ %i.ak, %bb.c ], [ 0, %bb.b ]
  %.0 = phi i32 [ 3, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !41
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @populate_ipred(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) initializes((104, 362), (364, 380)) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 0, 5) %4, i32 noundef range(i32 0, 5) %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #8 {
bb.a:
  %8 = ptrtoaddr ptr %2 to i64                    ; 2 uses
  %9 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %.not = icmp eq i32 %7, 0                       ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !87   ; 5 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !86     ; 7 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, %5                     ; 2 uses
  %i.e = mul nsw i32 %i.d, %3
  %i.f = add i32 %i.c, %4
  %i.g = add i32 %i.f, %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = ashr i32 %i.b, 1
  %i.i = mul nsw i32 %i.h, %3
  %i.j = ashr i32 %i.c, 1
  %i.k = add nsw i32 %i.i, %i.j
  %.pre = add nsw i32 %i.b, %5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i32 [ %.pre, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %.pn.in = phi i32 [ %i.k, %bb.c ], [ %i.g, %bb.b ]
  %.pn = sext i32 %.pn.in to i64                  ; 3 uses
  %.091 = getelementptr inbounds i8, ptr %2, i64 %.pn ; 17 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(258) %i.l, i8 -128, i64 258, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 364 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.o = icmp sgt i32 %.pre-phi, 0
  br i1 %i.o, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.m, align 4, !tbaa !212
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.q = sext i32 %3 to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %.091, i64 %i.r ; 2 uses
  %i.t = sext i32 %6 to i64                       ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.s, i64 %i.t, i1 false)
  %i.u = shl i32 %6, 1                            ; 4 uses
  br i1 %.not, label %.critedge, label %has_top_block.exit.i

has_top_block.exit.i:                             ; preds = %bb.e
  %i.v = add nsw i32 %i.c, %4                     ; 2 uses
  %i.w = add nsw i32 %i.v, %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load i32, ptr %i.x, align 8, !tbaa !68
  %.not17.i = icmp sgt i32 %i.w, %i.y
  br i1 %.not17.i, label %has_top_right_block.exit.thread, label %has_top_right_block.exit

has_top_right_block.exit:                         ; preds = %has_top_block.exit.i
  %i.z = and i32 %i.v, 63
  %.not.i.i = icmp ult i32 %6, 65536              ; 2 uses
  %i.aa = lshr i32 %6, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %6, i32 %i.aa ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.ab = lshr i32 %spec.select.i.i, 8
  %i.ac = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.ab
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.ac
  %i.ad = zext nneg i32 %.110.i.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !42
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nuw nsw i32 %.1.i.i, %i.ag          ; 2 uses
  %i.ai = lshr i32 %i.z, %i.ah
  %i.aj = and i32 %.pre-phi, 63
  %i.ak = lshr i32 %i.aj, %i.ah
  %i.al = zext nneg i32 %i.ai to i64
  %i.am = getelementptr inbounds nuw i8, ptr @rv60_avail_mask, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !42
  %i.ao = zext i8 %i.an to i32
  %i.ap = and i32 %i.ak, %i.ao
  %.not14.i.not = icmp eq i32 %i.ap, 0
  br i1 %.not14.i.not, label %bb.f, label %has_top_right_block.exit.thread

.critedge:                                        ; preds = %bb.e
  %.not.i15.i99 = icmp eq i32 %i.b, 0
  br i1 %.not.i15.i99, label %has_top_right_block.exit.thread, label %has_top_block.exit.i100

has_top_block.exit.i100:                          ; preds = %.critedge
  %i.aq = shl i32 %6, 2
  %i.ar = add nsw i32 %i.c, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = load i32, ptr %i.as, align 8, !tbaa !68
  %.not17.i101 = icmp sgt i32 %i.ar, %i.at
  br i1 %.not17.i101, label %has_top_right_block.exit.thread, label %has_top_right_block.exit110

has_top_right_block.exit110:                      ; preds = %has_top_block.exit.i100
  %i.au = and i32 %i.c, 63
  %.not.i.i102 = icmp ult i32 %i.u, 65536         ; 2 uses
  %i.av = lshr i32 %i.u, 16
  %spec.select.i.i103 = select i1 %.not.i.i102, i32 %i.u, i32 %i.av ; 3 uses
  %spec.select12.i.i104 = select i1 %.not.i.i102, i32 0, i32 16 ; 2 uses
  %.not11.i.i105 = icmp samesign ult i32 %spec.select.i.i103, 256 ; 2 uses
  %i.aw = lshr i32 %spec.select.i.i103, 8
  %i.ax = or disjoint i32 %spec.select12.i.i104, 8
  %.110.i.i106 = select i1 %.not11.i.i105, i32 %spec.select.i.i103, i32 %i.aw
  %.1.i.i107 = select i1 %.not11.i.i105, i32 %spec.select12.i.i104, i32 %i.ax
  %i.ay = zext nneg i32 %.110.i.i106 to i64
  %i.az = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !42
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nuw nsw i32 %.1.i.i107, %i.bb       ; 2 uses
  %i.bd = lshr i32 %i.au, %i.bc
  %i.be = and i32 %i.b, 63
  %i.bf = lshr i32 %i.be, %i.bc
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @rv60_avail_mask, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !42
  %i.bj = zext i8 %i.bi to i32
  %i.bk = and i32 %i.bf, %i.bj
  %.not14.i108.not = icmp eq i32 %i.bk, 0
  br i1 %.not14.i108.not, label %bb.f, label %has_top_right_block.exit.thread

bb.f:                                             ; preds = %has_top_right_block.exit110, %has_top_right_block.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i32 1, ptr %i.bl, align 4, !tbaa !213
  %i.bm = getelementptr inbounds i8, ptr %i.l, i64 %i.t
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = getelementptr inbounds i8, ptr %i.s, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %i.bo, i64 %i.t, i1 false)
  br label %bb.g

has_top_right_block.exit.thread:                  ; preds = %.critedge, %has_top_block.exit.i100, %has_top_block.exit.i, %has_top_right_block.exit, %has_top_right_block.exit110
  %i.bp = getelementptr inbounds i8, ptr %i.l, i64 %i.t ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bq, i8 %i.br, i64 %i.t, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %has_top_right_block.exit.thread, %bb.f
  %i.bs = load i32, ptr %1, align 4, !tbaa !86    ; 2 uses
  %i.bt = add nsw i32 %i.bs, %4                   ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %thread-pre-split.thread, label %thread-pre-split.thread158

thread-pre-split.thread:                          ; preds = %bb.g
  %i.bv = xor i32 %3, -1
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %.091, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !42
  store i8 %i.by, ptr %i.l, align 4, !tbaa !42
  br label %bb.h

thread-pre-split:                                 ; preds = %bb.d
  %.pre151 = add nsw i32 %i.c, %4                 ; 2 uses
  %i.bz = icmp sgt i32 %.pre151, 0
  br i1 %i.bz, label %bb.h, label %thread-pre-split.thread158

bb.h:                                             ; preds = %thread-pre-split.thread, %thread-pre-split
  %i.ca = phi i32 [ %i.bs, %thread-pre-split.thread ], [ %i.c, %thread-pre-split ] ; 2 uses
  %.pre-phi149157 = phi i32 [ %i.bt, %thread-pre-split.thread ], [ %.pre151, %thread-pre-split ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 372
  store i32 1, ptr %i.cb, align 4, !tbaa !214
  %i.cc = icmp sgt i32 %6, 0
  br i1 %i.cc, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 233 ; 7 uses
  %i.ce = sext i32 %3 to i64                      ; 5 uses
  %wide.trip.count = zext nneg i32 %6 to i64      ; 8 uses
  %min.iters.check = icmp ugt i32 %6, 7
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.cf = add i64 %8, %.pn
  %i.cg = sub i64 %9, %i.cf
  %i.ch = add i64 %i.cg, 234
  %diff.check = icmp ult i64 %i.ch, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check160 = icmp ult i32 %6, 32
  br i1 %min.iters.check160, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ci = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cj = getelementptr i8, ptr %.091, i64 %index ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -1
  %i.cl = getelementptr i8, ptr %i.cj, i64 15
  %wide.load = load <16 x i8>, ptr %i.ck, align 1, !tbaa !42
  %wide.load161 = load <16 x i8>, ptr %i.cl, align 1, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 17
  store <16 x i8> %wide.load, ptr %i.cn, align 1, !tbaa !42
  store <16 x i8> %wide.load161, ptr %i.co, align 1, !tbaa !42
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ci, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec162 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index163 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next165, %vec.epilog.vector.body ] ; 3 uses
  %i.cq = getelementptr i8, ptr %.091, i64 %index163
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1
  %wide.load164 = load <8 x i8>, ptr %i.cr, align 1, !tbaa !42
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 %index163
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store <8 x i8> %wide.load164, ptr %i.ct, align 1, !tbaa !42
  %index.next165 = add nuw i64 %index163, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next165, %n.vec162
  br i1 %i.cu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !205

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n166 = icmp eq i64 %n.vec162, %wide.trip.count
  br i1 %cmp.n166, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec162, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cv = mul nsw i64 %indvars.iv.prol, %i.ce
  %i.cw = getelementptr i8, ptr %.091, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !42
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next.prol
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !42
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !206

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.da = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.h
  %i.dc = load i32, ptr %i.n, align 4, !tbaa !87  ; 3 uses
  %i.dd = shl i32 %6, 1                           ; 6 uses
  br i1 %.not, label %.critedge98, label %has_left_block.exit.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.de = mul nsw i64 %indvars.iv, %i.ce
  %i.df = getelementptr i8, ptr %.091, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 -1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !42
  %i.dj = mul nsw i64 %indvars.iv.next, %i.ce
  %i.dk = getelementptr i8, ptr %.091, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 -1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !42
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next.1
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !42
  %i.do = mul nsw i64 %indvars.iv.next.1, %i.ce
  %i.dp = getelementptr i8, ptr %.091, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 -1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !42
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next.2
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !42
  %i.dt = mul nsw i64 %indvars.iv.next.2, %i.ce
  %i.du = getelementptr i8, ptr %.091, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 -1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !42
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next.3
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !42
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !207

has_left_block.exit.i:                            ; preds = %._crit_edge
  %i.dy = add nsw i32 %i.dc, %5                   ; 2 uses
  %i.dz = add nsw i32 %i.dy, %i.dd
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !69
  %.not16.i = icmp sgt i32 %i.dz, %i.eb
  br i1 %.not16.i, label %has_left_down_block.exit.thread, label %has_left_down_block.exit

has_left_down_block.exit:                         ; preds = %has_left_block.exit.i
  %i.ec = and i32 %.pre-phi149157, 63
  %i.ed = xor i32 %i.ec, 63
  %.not.i.i111 = icmp ult i32 %6, 65536           ; 2 uses
  %i.ee = lshr i32 %6, 16
  %spec.select.i.i112 = select i1 %.not.i.i111, i32 %6, i32 %i.ee ; 3 uses
  %spec.select12.i.i113 = select i1 %.not.i.i111, i32 0, i32 16 ; 2 uses
  %.not11.i.i114 = icmp samesign ult i32 %spec.select.i.i112, 256 ; 2 uses
  %i.ef = lshr i32 %spec.select.i.i112, 8
  %i.eg = or disjoint i32 %spec.select12.i.i113, 8
  %.110.i.i115 = select i1 %.not11.i.i114, i32 %spec.select.i.i112, i32 %i.ef
  %.1.i.i116 = select i1 %.not11.i.i114, i32 %spec.select12.i.i113, i32 %i.eg
  %i.eh = zext nneg i32 %.110.i.i115 to i64
  %i.ei = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !42
  %i.ek = zext i8 %i.ej to i32
  %i.el = add nuw nsw i32 %.1.i.i116, %i.ek       ; 2 uses
  %i.em = lshr i32 %i.ed, %i.el
  %i.en = and i32 %i.dy, 63
  %i.eo = xor i32 %i.en, 63
  %i.ep = lshr i32 %i.eo, %i.el
  %i.eq = zext nneg i32 %i.em to i64
  %i.er = getelementptr inbounds nuw i8, ptr @rv60_avail_mask, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !42
  %i.et = zext i8 %i.es to i32
  %i.eu = and i32 %i.ep, %i.et
  %.not95 = icmp eq i32 %i.eu, 0
  br i1 %.not95, label %has_left_down_block.exit.thread, label %bb.i

.critedge98:                                      ; preds = %._crit_edge
  %.not.i14.i118 = icmp eq i32 %i.ca, 0
  br i1 %.not.i14.i118, label %has_left_down_block.exit.thread, label %has_left_block.exit.i119

has_left_block.exit.i119:                         ; preds = %.critedge98
  %i.ev = shl i32 %6, 2
  %i.ew = add nsw i32 %i.dc, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !69
  %.not16.i120 = icmp sgt i32 %i.ew, %i.ey
  br i1 %.not16.i120, label %has_left_down_block.exit.thread, label %has_left_down_block.exit128

has_left_down_block.exit128:                      ; preds = %has_left_block.exit.i119
  %i.ez = and i32 %i.ca, 63
  %i.fa = xor i32 %i.ez, 63
  %.not.i.i121 = icmp ult i32 %i.dd, 65536        ; 2 uses
  %i.fb = lshr i32 %i.dd, 16
  %spec.select.i.i122 = select i1 %.not.i.i121, i32 %i.dd, i32 %i.fb ; 3 uses
  %spec.select12.i.i123 = select i1 %.not.i.i121, i32 0, i32 16 ; 2 uses
  %.not11.i.i124 = icmp samesign ult i32 %spec.select.i.i122, 256 ; 2 uses
  %i.fc = lshr i32 %spec.select.i.i122, 8
  %i.fd = or disjoint i32 %spec.select12.i.i123, 8
  %.110.i.i125 = select i1 %.not11.i.i124, i32 %spec.select.i.i122, i32 %i.fc
  %.1.i.i126 = select i1 %.not11.i.i124, i32 %spec.select12.i.i123, i32 %i.fd
  %i.fe = zext nneg i32 %.110.i.i125 to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !42
  %i.fh = zext i8 %i.fg to i32
  %i.fi = add nuw nsw i32 %.1.i.i126, %i.fh       ; 2 uses
  %i.fj = lshr i32 %i.fa, %i.fi
  %i.fk = and i32 %i.dc, 63
  %i.fl = xor i32 %i.fk, 63
  %i.fm = lshr i32 %i.fl, %i.fi
  %i.fn = zext nneg i32 %i.fj to i64
  %i.fo = getelementptr inbounds nuw i8, ptr @rv60_avail_mask, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !42
  %i.fq = zext i8 %i.fp to i32
  %i.fr = and i32 %i.fm, %i.fq
  %.not96 = icmp eq i32 %i.fr, 0
  br i1 %.not96, label %has_left_down_block.exit.thread, label %bb.i

bb.i:                                             ; preds = %has_left_down_block.exit128, %has_left_down_block.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 376
  store i32 1, ptr %i.fs, align 4, !tbaa !215
  %i.ft = icmp slt i32 %6, %i.dd
  br i1 %i.ft, label %iter.check185, label %.loopexit

iter.check185:                                    ; preds = %bb.i
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 233 ; 7 uses
  %i.fv = sext i32 %6 to i64                      ; 7 uses
  %i.fw = sext i32 %3 to i64                      ; 5 uses
  %wide.trip.count145 = sext i32 %i.dd to i64     ; 4 uses
  %i.fx = sub nsw i64 %wide.trip.count145, %i.fv  ; 7 uses
  %min.iters.check171 = icmp ugt i64 %i.fx, 7
  %ident.check168.not = icmp eq i32 %3, 1
  %or.cond198 = and i1 %min.iters.check171, %ident.check168.not
  br i1 %or.cond198, label %vector.memcheck169, label %vec.epilog.scalar.ph186.preheader

vector.memcheck169:                               ; preds = %iter.check185
  %i.fy = add i64 %8, %.pn
  %i.fz = sub i64 %9, %i.fy
  %i.ga = add i64 %i.fz, 234
  %diff.check170 = icmp ult i64 %i.ga, 31
  br i1 %diff.check170, label %vec.epilog.scalar.ph186.preheader, label %vector.main.loop.iter.check172

vector.main.loop.iter.check172:                   ; preds = %vector.memcheck169
  %min.iters.check173 = icmp ult i64 %i.fx, 32
  br i1 %min.iters.check173, label %vec.epilog.ph189, label %vector.ph174

vector.ph174:                                     ; preds = %vector.main.loop.iter.check172
  %i.gb = and i64 %i.fx, 24
  %n.vec175 = and i64 %i.fx, -32                  ; 4 uses
  %i.gc = add nsw i64 %n.vec175, %i.fv
  br label %vector.body176

vector.body176:                                   ; preds = %vector.ph174, %vector.body176
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next180, %vector.body176 ] ; 2 uses
  %i.gd = add nuw i64 %index177, %i.fv            ; 2 uses
  %i.ge = getelementptr i8, ptr %.091, i64 %i.gd  ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 -1
  %i.gg = getelementptr i8, ptr %i.ge, i64 15
  %wide.load178 = load <16 x i8>, ptr %i.gf, align 1, !tbaa !42
  %wide.load179 = load <16 x i8>, ptr %i.gg, align 1, !tbaa !42
  %i.gh = getelementptr i8, ptr %i.fu, i64 %i.gd  ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 1
  %i.gj = getelementptr i8, ptr %i.gh, i64 17
  store <16 x i8> %wide.load178, ptr %i.gi, align 1, !tbaa !42
  store <16 x i8> %wide.load179, ptr %i.gj, align 1, !tbaa !42
  %index.next180 = add nuw i64 %index177, 32      ; 2 uses
  %i.gk = icmp eq i64 %index.next180, %n.vec175
  br i1 %i.gk, label %middle.block181, label %vector.body176, !llvm.loop !208

middle.block181:                                  ; preds = %vector.body176
  %cmp.n182 = icmp eq i64 %i.fx, %n.vec175
  br i1 %cmp.n182, label %.loopexit, label %vec.epilog.iter.check187

vec.epilog.iter.check187:                         ; preds = %middle.block181
  %min.epilog.iters.check188 = icmp eq i64 %i.gb, 0
  br i1 %min.epilog.iters.check188, label %vec.epilog.scalar.ph186.preheader, label %vec.epilog.ph189, !prof !99

vec.epilog.ph189:                                 ; preds = %vector.main.loop.iter.check172, %vec.epilog.iter.check187
  %vec.epilog.resume.val183 = phi i64 [ %n.vec175, %vec.epilog.iter.check187 ], [ 0, %vector.main.loop.iter.check172 ]
  %n.vec190 = and i64 %i.fx, -8                   ; 3 uses
  %i.gl = add nsw i64 %n.vec190, %i.fv
  br label %vec.epilog.vector.body191

vec.epilog.vector.body191:                        ; preds = %vec.epilog.vector.body191, %vec.epilog.ph189
  %index192 = phi i64 [ %vec.epilog.resume.val183, %vec.epilog.ph189 ], [ %index.next194, %vec.epilog.vector.body191 ] ; 2 uses
  %i.gm = add nuw i64 %index192, %i.fv            ; 2 uses
  %i.gn = getelementptr i8, ptr %.091, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gn, i64 -1
  %wide.load193 = load <8 x i8>, ptr %i.go, align 1, !tbaa !42
  %i.gp = getelementptr i8, ptr %i.fu, i64 %i.gm
  %i.gq = getelementptr i8, ptr %i.gp, i64 1
  store <8 x i8> %wide.load193, ptr %i.gq, align 1, !tbaa !42
  %index.next194 = add nuw i64 %index192, 8       ; 2 uses
  %i.gr = icmp eq i64 %index.next194, %n.vec190
  br i1 %i.gr, label %vec.epilog.middle.block195, label %vec.epilog.vector.body191, !llvm.loop !209

vec.epilog.middle.block195:                       ; preds = %vec.epilog.vector.body191
  %cmp.n196 = icmp eq i64 %i.fx, %n.vec190
  br i1 %cmp.n196, label %.loopexit, label %vec.epilog.scalar.ph186.preheader

vec.epilog.scalar.ph186.preheader:                ; preds = %iter.check185, %vector.memcheck169, %vec.epilog.iter.check187, %vec.epilog.middle.block195
  %indvars.iv142.ph = phi i64 [ %i.fv, %iter.check185 ], [ %i.fv, %vector.memcheck169 ], [ %i.gc, %vec.epilog.iter.check187 ], [ %i.gl, %vec.epilog.middle.block195 ] ; 4 uses
  %i.gs = sub nsw i64 %wide.trip.count145, %indvars.iv142.ph
  %xtraiter199 = and i64 %i.gs, 3                 ; 2 uses
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %vec.epilog.scalar.ph186.prol.loopexit, label %vec.epilog.scalar.ph186.prol

vec.epilog.scalar.ph186.prol:                     ; preds = %vec.epilog.scalar.ph186.preheader, %vec.epilog.scalar.ph186.prol
  %indvars.iv142.prol = phi i64 [ %indvars.iv.next143.prol, %vec.epilog.scalar.ph186.prol ], [ %indvars.iv142.ph, %vec.epilog.scalar.ph186.preheader ] ; 2 uses
  %prol.iter201 = phi i64 [ %prol.iter201.next, %vec.epilog.scalar.ph186.prol ], [ 0, %vec.epilog.scalar.ph186.preheader ]
  %i.gt = mul nsw i64 %indvars.iv142.prol, %i.fw
  %i.gu = getelementptr i8, ptr %.091, i64 %i.gt
  %i.gv = getelementptr i8, ptr %i.gu, i64 -1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !42
  %indvars.iv.next143.prol = add nuw nsw i64 %indvars.iv142.prol, 1 ; 3 uses
  %i.gx = getelementptr inbounds i8, ptr %i.fu, i64 %indvars.iv.next143.prol
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !42
  %prol.iter201.next = add i64 %prol.iter201, 1   ; 2 uses
  %prol.iter201.cmp.not = icmp eq i64 %prol.iter201.next, %xtraiter199
  br i1 %prol.iter201.cmp.not, label %vec.epilog.scalar.ph186.prol.loopexit, label %vec.epilog.scalar.ph186.prol, !llvm.loop !210

vec.epilog.scalar.ph186.prol.loopexit:            ; preds = %vec.epilog.scalar.ph186.prol, %vec.epilog.scalar.ph186.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv142.ph, %vec.epilog.scalar.ph186.preheader ], [ %indvars.iv.next143.prol, %vec.epilog.scalar.ph186.prol ]
  %i.gy = sub nsw i64 %indvars.iv142.ph, %wide.trip.count145
  %i.gz = icmp ugt i64 %i.gy, -4
  br i1 %i.gz, label %.loopexit, label %vec.epilog.scalar.ph186

vec.epilog.scalar.ph186:                          ; preds = %vec.epilog.scalar.ph186.prol.loopexit, %vec.epilog.scalar.ph186
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.3, %vec.epilog.scalar.ph186 ], [ %indvars.iv142.unr, %vec.epilog.scalar.ph186.prol.loopexit ] ; 5 uses
  %i.ha = mul nsw i64 %indvars.iv142, %i.fw
  %i.hb = getelementptr i8, ptr %.091, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.hb, i64 -1
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !42
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.fu, i64 %indvars.iv.next143
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !42
  %i.hf = mul nsw i64 %indvars.iv.next143, %i.fw
  %i.hg = getelementptr i8, ptr %.091, i64 %i.hf
  %i.hh = getelementptr i8, ptr %i.hg, i64 -1
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !42
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %i.fu, i64 %indvars.iv.next143.1
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !42
  %i.hk = mul nsw i64 %indvars.iv.next143.1, %i.fw
  %i.hl = getelementptr i8, ptr %.091, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 -1
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !42
  %indvars.iv.next143.2 = add nuw nsw i64 %indvars.iv142, 3 ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %i.fu, i64 %indvars.iv.next143.2
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !42
  %i.hp = mul nsw i64 %indvars.iv.next143.2, %i.fw
  %i.hq = getelementptr i8, ptr %.091, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 -1
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !42
  %indvars.iv.next143.3 = add nuw nsw i64 %indvars.iv142, 4 ; 3 uses
  %i.ht = getelementptr inbounds i8, ptr %i.fu, i64 %indvars.iv.next143.3
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !42
  %exitcond146.not.3 = icmp eq i64 %indvars.iv.next143.3, %wide.trip.count145
  br i1 %exitcond146.not.3, label %.loopexit, label %vec.epilog.scalar.ph186, !llvm.loop !211

has_left_down_block.exit.thread:                  ; preds = %.critedge98, %has_left_block.exit.i119, %has_left_block.exit.i, %has_left_down_block.exit, %has_left_down_block.exit128
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 233
  %i.hv = sext i32 %6 to i64                      ; 2 uses
  %i.hw = getelementptr inbounds i8, ptr %i.hu, i64 %i.hv ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  %i.hy = load i8, ptr %i.hw, align 1, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hx, i8 %i.hy, i64 %i.hv, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %vec.epilog.scalar.ph186.prol.loopexit, %vec.epilog.scalar.ph186, %middle.block181, %vec.epilog.middle.block195, %bb.i, %has_left_down_block.exit.thread
  %i.hz = load i32, ptr %i.n, align 4, !tbaa !87
  %i.ia = add nsw i32 %i.hz, %5
  %i.ib = icmp sgt i32 %i.ia, 0
  br i1 %i.ib, label %bb.j, label %thread-pre-split.thread158

bb.j:                                             ; preds = %.loopexit
  %i.ic = xor i32 %3, -1
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds i8, ptr %.091, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !42
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 233
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !42
  br label %thread-pre-split.thread158

thread-pre-split.thread158:                       ; preds = %bb.g, %.loopexit, %bb.j, %thread-pre-split
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @pred_angle(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #8 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 6 uses
  %i.b = alloca [64 x i32], align 16              ; 5 uses
  %i.c = alloca [64 x i32], align 16              ; 6 uses
  %i.d = alloca [64 x i32], align 16              ; 5 uses
  %i.e = alloca [96 x i8], align 16               ; 218 uses
  %i.f = alloca [96 x i8], align 16               ; 76 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  switch i32 %4, label %bb.m [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 5 uses
  %i.h = add nsw i32 %3, 1
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !42
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !42
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.p = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.p, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 3 uses
  %min.iters.check502 = icmp ult i32 %3, 4
  br i1 %min.iters.check502, label %.lr.ph.i.preheader, label %vector.ph503

vector.ph503:                                     ; preds = %.lr.ph.preheader.i
  %n.vec504 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert505 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat506 = shufflevector <4 x i32> %broadcast.splatinsert505, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph503
  %index508 = phi i64 [ 0, %vector.ph503 ], [ %index.next511, %vector.body507 ] ; 4 uses
  %i.q = or disjoint i64 %index508, 1             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
end_hunk_0
