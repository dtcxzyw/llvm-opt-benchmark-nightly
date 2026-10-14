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
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %.not = icmp eq i32 %7, 0                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !87   ; 5 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !86     ; 7 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.d, %5                     ; 2 uses
  %i.g = mul nsw i32 %i.f, %3
  %i.h = add i32 %i.e, %4
  %i.i = add i32 %i.h, %i.g
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = ashr i32 %i.d, 1
  %i.k = mul nsw i32 %i.j, %3
  %i.l = ashr i32 %i.e, 1
  %i.m = add nsw i32 %i.k, %i.l
  %.pre = add nsw i32 %i.d, %5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i32 [ %.pre, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %.pn.in = phi i32 [ %i.m, %bb.c ], [ %i.i, %bb.b ]
  %.pn = sext i32 %.pn.in to i64                  ; 3 uses
  %.091 = getelementptr inbounds i8, ptr %2, i64 %.pn ; 17 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(258) %i.n, i8 -128, i64 258, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 364 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.q = icmp sgt i32 %.pre-phi, 0
  br i1 %i.q, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.o, align 4, !tbaa !212
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.s = sext i32 %3 to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds i8, ptr %.091, i64 %i.t ; 2 uses
  %i.v = sext i32 %6 to i64                       ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.u, i64 %i.v, i1 false)
  %i.w = shl i32 %6, 1                            ; 4 uses
  br i1 %.not, label %.critedge, label %has_top_block.exit.i

has_top_block.exit.i:                             ; preds = %bb.e
  %i.x = add nsw i32 %i.e, %4                     ; 2 uses
  %i.y = add nsw i32 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !68
  %.not17.i = icmp sgt i32 %i.y, %i.aa
  br i1 %.not17.i, label %has_top_right_block.exit.thread, label %has_top_right_block.exit

has_top_right_block.exit:                         ; preds = %has_top_block.exit.i
  %i.ab = and i32 %i.x, 63
  %.not.i.i = icmp ult i32 %6, 65536              ; 2 uses
  %i.ac = lshr i32 %6, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %6, i32 %i.ac ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.ad = lshr i32 %spec.select.i.i, 8
  %i.ae = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.ad
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.ae
  %i.af = zext nneg i32 %.110.i.i to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !42
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nuw nsw i32 %.1.i.i, %i.ai          ; 2 uses
  %i.ak = lshr i32 %i.ab, %i.aj
  %i.al = and i32 %.pre-phi, 63
  %i.am = lshr i32 %i.al, %i.aj
  %i.an = zext nneg i32 %i.ak to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @rv60_avail_mask, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !42
  %i.aq = zext i8 %i.ap to i32
  %i.ar = and i32 %i.am, %i.aq
  %.not14.i.not = icmp eq i32 %i.ar, 0
  br i1 %.not14.i.not, label %bb.f, label %has_top_right_block.exit.thread

.critedge:                                        ; preds = %bb.e
  %.not.i15.i99 = icmp eq i32 %i.d, 0
  br i1 %.not.i15.i99, label %has_top_right_block.exit.thread, label %has_top_block.exit.i100

has_top_block.exit.i100:                          ; preds = %.critedge
  %i.as = shl i32 %6, 2
  %i.at = add nsw i32 %i.e, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.av = load i32, ptr %i.au, align 8, !tbaa !68
  %.not17.i101 = icmp sgt i32 %i.at, %i.av
  br i1 %.not17.i101, label %has_top_right_block.exit.thread, label %has_top_right_block.exit110

has_top_right_block.exit110:                      ; preds = %has_top_block.exit.i100
  %i.aw = and i32 %i.e, 63
  %.not.i.i102 = icmp ult i32 %i.w, 65536         ; 2 uses
  %i.ax = lshr i32 %i.w, 16
  %spec.select.i.i103 = select i1 %.not.i.i102, i32 %i.w, i32 %i.ax ; 3 uses
  %spec.select12.i.i104 = select i1 %.not.i.i102, i32 0, i32 16 ; 2 uses
  %.not11.i.i105 = icmp samesign ult i32 %spec.select.i.i103, 256 ; 2 uses
  %i.ay = lshr i32 %spec.select.i.i103, 8
  %i.az = or disjoint i32 %spec.select12.i.i104, 8
  %.110.i.i106 = select i1 %.not11.i.i105, i32 %spec.select.i.i103, i32 %i.ay
  %.1.i.i107 = select i1 %.not11.i.i105, i32 %spec.select12.i.i104, i32 %i.az
  %i.ba = zext nneg i32 %.110.i.i106 to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !42
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %.1.i.i107, %i.bd       ; 2 uses
  %i.bf = lshr i32 %i.aw, %i.be
  %i.bg = and i32 %i.d, 63
  %i.bh = lshr i32 %i.bg, %i.be
  %i.bi = zext nneg i32 %i.bf to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @rv60_avail_mask, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !42
  %i.bl = zext i8 %i.bk to i32
  %i.bm = and i32 %i.bh, %i.bl
  %.not14.i108.not = icmp eq i32 %i.bm, 0
  br i1 %.not14.i108.not, label %bb.f, label %has_top_right_block.exit.thread

bb.f:                                             ; preds = %has_top_right_block.exit110, %has_top_right_block.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i32 1, ptr %i.bn, align 4, !tbaa !213
  %i.bo = getelementptr inbounds i8, ptr %i.n, i64 %i.v
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %i.bq, i64 %i.v, i1 false)
  br label %bb.g

has_top_right_block.exit.thread:                  ; preds = %.critedge, %has_top_block.exit.i100, %has_top_block.exit.i, %has_top_right_block.exit, %has_top_right_block.exit110
  %i.br = getelementptr inbounds i8, ptr %i.n, i64 %i.v ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bs, i8 %i.bt, i64 %i.v, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %has_top_right_block.exit.thread, %bb.f
  %i.bu = load i32, ptr %1, align 4, !tbaa !86    ; 2 uses
  %i.bv = add nsw i32 %i.bu, %4                   ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %thread-pre-split.thread, label %thread-pre-split.thread158

thread-pre-split.thread:                          ; preds = %bb.g
  %i.bx = xor i32 %3, -1
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %.091, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !42
  store i8 %i.ca, ptr %i.n, align 4, !tbaa !42
  br label %bb.h

thread-pre-split:                                 ; preds = %bb.d
  %.pre151 = add nsw i32 %i.e, %4                 ; 2 uses
  %i.cb = icmp sgt i32 %.pre151, 0
  br i1 %i.cb, label %bb.h, label %thread-pre-split.thread158

bb.h:                                             ; preds = %thread-pre-split.thread, %thread-pre-split
  %i.cc = phi i32 [ %i.bu, %thread-pre-split.thread ], [ %i.e, %thread-pre-split ] ; 2 uses
  %.pre-phi149157 = phi i32 [ %i.bv, %thread-pre-split.thread ], [ %.pre151, %thread-pre-split ]
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 372
  store i32 1, ptr %i.cd, align 4, !tbaa !214
  %i.ce = icmp sgt i32 %6, 0
  br i1 %i.ce, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 233 ; 7 uses
  %i.cg = sext i32 %3 to i64                      ; 5 uses
  %wide.trip.count = zext nneg i32 %6 to i64      ; 8 uses
  %min.iters.check = icmp ugt i32 %6, 7
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.ch = add i64 %i.a, %.pn
  %i.ci = sub i64 %i.b, %i.ch
  %i.cj = add i64 %i.ci, 234
  %diff.check = icmp ult i64 %i.cj, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check160 = icmp ult i32 %6, 32
  br i1 %min.iters.check160, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ck = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cl = getelementptr i8, ptr %.091, i64 %index ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 -1
  %i.cn = getelementptr i8, ptr %i.cl, i64 15
  %wide.load = load <16 x i8>, ptr %i.cm, align 1, !tbaa !42
  %wide.load161 = load <16 x i8>, ptr %i.cn, align 1, !tbaa !42
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 17
  store <16 x i8> %wide.load, ptr %i.cp, align 1, !tbaa !42
  store <16 x i8> %wide.load161, ptr %i.cq, align 1, !tbaa !42
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ck, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec162 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index163 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next165, %vec.epilog.vector.body ] ; 3 uses
  %i.cs = getelementptr i8, ptr %.091, i64 %index163
  %i.ct = getelementptr i8, ptr %i.cs, i64 -1
  %wide.load164 = load <8 x i8>, ptr %i.ct, align 1, !tbaa !42
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 %index163
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  store <8 x i8> %wide.load164, ptr %i.cv, align 1, !tbaa !42
  %index.next165 = add nuw i64 %index163, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next165, %n.vec162
  br i1 %i.cw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !205

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
  %i.cx = mul nsw i64 %indvars.iv.prol, %i.cg
  %i.cy = getelementptr i8, ptr %.091, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 -1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !42
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv.next.prol
  store i8 %i.da, ptr %i.db, align 1, !tbaa !42
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !206

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.dc = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dd = icmp ugt i64 %i.dc, -4
  br i1 %i.dd, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.h
  %i.de = load i32, ptr %i.p, align 4, !tbaa !87  ; 3 uses
  %i.df = shl i32 %6, 1                           ; 6 uses
  br i1 %.not, label %.critedge98, label %has_left_block.exit.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.dg = mul nsw i64 %indvars.iv, %i.cg
  %i.dh = getelementptr i8, ptr %.091, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv.next
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !42
  %i.dl = mul nsw i64 %indvars.iv.next, %i.cg
  %i.dm = getelementptr i8, ptr %.091, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 -1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !42
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv.next.1
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !42
  %i.dq = mul nsw i64 %indvars.iv.next.1, %i.cg
  %i.dr = getelementptr i8, ptr %.091, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 -1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !42
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv.next.2
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !42
  %i.dv = mul nsw i64 %indvars.iv.next.2, %i.cg
  %i.dw = getelementptr i8, ptr %.091, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 -1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !42
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv.next.3
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !42
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !207

has_left_block.exit.i:                            ; preds = %._crit_edge
  %i.ea = add nsw i32 %i.de, %5                   ; 2 uses
  %i.eb = add nsw i32 %i.ea, %i.df
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !69
  %.not16.i = icmp sgt i32 %i.eb, %i.ed
  br i1 %.not16.i, label %has_left_down_block.exit.thread, label %has_left_down_block.exit

has_left_down_block.exit:                         ; preds = %has_left_block.exit.i
  %i.ee = and i32 %.pre-phi149157, 63
  %i.ef = xor i32 %i.ee, 63
  %.not.i.i111 = icmp ult i32 %6, 65536           ; 2 uses
  %i.eg = lshr i32 %6, 16
  %spec.select.i.i112 = select i1 %.not.i.i111, i32 %6, i32 %i.eg ; 3 uses
  %spec.select12.i.i113 = select i1 %.not.i.i111, i32 0, i32 16 ; 2 uses
  %.not11.i.i114 = icmp samesign ult i32 %spec.select.i.i112, 256 ; 2 uses
  %i.eh = lshr i32 %spec.select.i.i112, 8
  %i.ei = or disjoint i32 %spec.select12.i.i113, 8
  %.110.i.i115 = select i1 %.not11.i.i114, i32 %spec.select.i.i112, i32 %i.eh
  %.1.i.i116 = select i1 %.not11.i.i114, i32 %spec.select12.i.i113, i32 %i.ei
  %i.ej = zext nneg i32 %.110.i.i115 to i64
  %i.ek = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !42
  %i.em = zext i8 %i.el to i32
  %i.en = add nuw nsw i32 %.1.i.i116, %i.em       ; 2 uses
  %i.eo = lshr i32 %i.ef, %i.en
  %i.ep = and i32 %i.ea, 63
  %i.eq = xor i32 %i.ep, 63
  %i.er = lshr i32 %i.eq, %i.en
  %i.es = zext nneg i32 %i.eo to i64
  %i.et = getelementptr inbounds nuw i8, ptr @rv60_avail_mask, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !42
  %i.ev = zext i8 %i.eu to i32
  %i.ew = and i32 %i.er, %i.ev
  %.not95 = icmp eq i32 %i.ew, 0
  br i1 %.not95, label %has_left_down_block.exit.thread, label %bb.i

.critedge98:                                      ; preds = %._crit_edge
  %.not.i14.i118 = icmp eq i32 %i.cc, 0
  br i1 %.not.i14.i118, label %has_left_down_block.exit.thread, label %has_left_block.exit.i119

has_left_block.exit.i119:                         ; preds = %.critedge98
  %i.ex = shl i32 %6, 2
  %i.ey = add nsw i32 %i.de, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !69
  %.not16.i120 = icmp sgt i32 %i.ey, %i.fa
  br i1 %.not16.i120, label %has_left_down_block.exit.thread, label %has_left_down_block.exit128

has_left_down_block.exit128:                      ; preds = %has_left_block.exit.i119
  %i.fb = and i32 %i.cc, 63
  %i.fc = xor i32 %i.fb, 63
  %.not.i.i121 = icmp ult i32 %i.df, 65536        ; 2 uses
  %i.fd = lshr i32 %i.df, 16
  %spec.select.i.i122 = select i1 %.not.i.i121, i32 %i.df, i32 %i.fd ; 3 uses
  %spec.select12.i.i123 = select i1 %.not.i.i121, i32 0, i32 16 ; 2 uses
  %.not11.i.i124 = icmp samesign ult i32 %spec.select.i.i122, 256 ; 2 uses
  %i.fe = lshr i32 %spec.select.i.i122, 8
  %i.ff = or disjoint i32 %spec.select12.i.i123, 8
  %.110.i.i125 = select i1 %.not11.i.i124, i32 %spec.select.i.i122, i32 %i.fe
  %.1.i.i126 = select i1 %.not11.i.i124, i32 %spec.select12.i.i123, i32 %i.ff
  %i.fg = zext nneg i32 %.110.i.i125 to i64
  %i.fh = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !42
  %i.fj = zext i8 %i.fi to i32
  %i.fk = add nuw nsw i32 %.1.i.i126, %i.fj       ; 2 uses
  %i.fl = lshr i32 %i.fc, %i.fk
  %i.fm = and i32 %i.de, 63
  %i.fn = xor i32 %i.fm, 63
  %i.fo = lshr i32 %i.fn, %i.fk
  %i.fp = zext nneg i32 %i.fl to i64
  %i.fq = getelementptr inbounds nuw i8, ptr @rv60_avail_mask, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !42
  %i.fs = zext i8 %i.fr to i32
  %i.ft = and i32 %i.fo, %i.fs
  %.not96 = icmp eq i32 %i.ft, 0
  br i1 %.not96, label %has_left_down_block.exit.thread, label %bb.i

bb.i:                                             ; preds = %has_left_down_block.exit128, %has_left_down_block.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 376
  store i32 1, ptr %i.fu, align 4, !tbaa !215
  %i.fv = icmp slt i32 %6, %i.df
  br i1 %i.fv, label %iter.check185, label %.loopexit

iter.check185:                                    ; preds = %bb.i
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 233 ; 7 uses
  %i.fx = sext i32 %6 to i64                      ; 7 uses
  %i.fy = sext i32 %3 to i64                      ; 5 uses
  %wide.trip.count145 = sext i32 %i.df to i64     ; 4 uses
  %i.fz = sub nsw i64 %wide.trip.count145, %i.fx  ; 7 uses
  %min.iters.check171 = icmp ugt i64 %i.fz, 7
  %ident.check168.not = icmp eq i32 %3, 1
  %or.cond198 = and i1 %min.iters.check171, %ident.check168.not
  br i1 %or.cond198, label %vector.memcheck169, label %vec.epilog.scalar.ph186.preheader

vector.memcheck169:                               ; preds = %iter.check185
  %i.ga = add i64 %i.a, %.pn
  %i.gb = sub i64 %i.b, %i.ga
  %i.gc = add i64 %i.gb, 234
  %diff.check170 = icmp ult i64 %i.gc, 31
  br i1 %diff.check170, label %vec.epilog.scalar.ph186.preheader, label %vector.main.loop.iter.check172

vector.main.loop.iter.check172:                   ; preds = %vector.memcheck169
  %min.iters.check173 = icmp ult i64 %i.fz, 32
  br i1 %min.iters.check173, label %vec.epilog.ph189, label %vector.ph174

vector.ph174:                                     ; preds = %vector.main.loop.iter.check172
  %i.gd = and i64 %i.fz, 24
  %n.vec175 = and i64 %i.fz, -32                  ; 4 uses
  %i.ge = add nsw i64 %n.vec175, %i.fx
  br label %vector.body176

vector.body176:                                   ; preds = %vector.ph174, %vector.body176
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next180, %vector.body176 ] ; 2 uses
  %i.gf = add nuw i64 %index177, %i.fx            ; 2 uses
  %i.gg = getelementptr i8, ptr %.091, i64 %i.gf  ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 -1
  %i.gi = getelementptr i8, ptr %i.gg, i64 15
  %wide.load178 = load <16 x i8>, ptr %i.gh, align 1, !tbaa !42
  %wide.load179 = load <16 x i8>, ptr %i.gi, align 1, !tbaa !42
  %i.gj = getelementptr i8, ptr %i.fw, i64 %i.gf  ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 1
  %i.gl = getelementptr i8, ptr %i.gj, i64 17
  store <16 x i8> %wide.load178, ptr %i.gk, align 1, !tbaa !42
  store <16 x i8> %wide.load179, ptr %i.gl, align 1, !tbaa !42
  %index.next180 = add nuw i64 %index177, 32      ; 2 uses
  %i.gm = icmp eq i64 %index.next180, %n.vec175
  br i1 %i.gm, label %middle.block181, label %vector.body176, !llvm.loop !208

middle.block181:                                  ; preds = %vector.body176
  %cmp.n182 = icmp eq i64 %i.fz, %n.vec175
  br i1 %cmp.n182, label %.loopexit, label %vec.epilog.iter.check187

vec.epilog.iter.check187:                         ; preds = %middle.block181
  %min.epilog.iters.check188 = icmp eq i64 %i.gd, 0
  br i1 %min.epilog.iters.check188, label %vec.epilog.scalar.ph186.preheader, label %vec.epilog.ph189, !prof !99

vec.epilog.ph189:                                 ; preds = %vector.main.loop.iter.check172, %vec.epilog.iter.check187
  %vec.epilog.resume.val183 = phi i64 [ %n.vec175, %vec.epilog.iter.check187 ], [ 0, %vector.main.loop.iter.check172 ]
  %n.vec190 = and i64 %i.fz, -8                   ; 3 uses
  %i.gn = add nsw i64 %n.vec190, %i.fx
  br label %vec.epilog.vector.body191

vec.epilog.vector.body191:                        ; preds = %vec.epilog.vector.body191, %vec.epilog.ph189
  %index192 = phi i64 [ %vec.epilog.resume.val183, %vec.epilog.ph189 ], [ %index.next194, %vec.epilog.vector.body191 ] ; 2 uses
  %i.go = add nuw i64 %index192, %i.fx            ; 2 uses
  %i.gp = getelementptr i8, ptr %.091, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gp, i64 -1
  %wide.load193 = load <8 x i8>, ptr %i.gq, align 1, !tbaa !42
  %i.gr = getelementptr i8, ptr %i.fw, i64 %i.go
  %i.gs = getelementptr i8, ptr %i.gr, i64 1
  store <8 x i8> %wide.load193, ptr %i.gs, align 1, !tbaa !42
  %index.next194 = add nuw i64 %index192, 8       ; 2 uses
  %i.gt = icmp eq i64 %index.next194, %n.vec190
  br i1 %i.gt, label %vec.epilog.middle.block195, label %vec.epilog.vector.body191, !llvm.loop !209

vec.epilog.middle.block195:                       ; preds = %vec.epilog.vector.body191
  %cmp.n196 = icmp eq i64 %i.fz, %n.vec190
  br i1 %cmp.n196, label %.loopexit, label %vec.epilog.scalar.ph186.preheader

vec.epilog.scalar.ph186.preheader:                ; preds = %iter.check185, %vector.memcheck169, %vec.epilog.iter.check187, %vec.epilog.middle.block195
  %indvars.iv142.ph = phi i64 [ %i.fx, %iter.check185 ], [ %i.fx, %vector.memcheck169 ], [ %i.ge, %vec.epilog.iter.check187 ], [ %i.gn, %vec.epilog.middle.block195 ] ; 4 uses
  %i.gu = sub nsw i64 %wide.trip.count145, %indvars.iv142.ph
  %xtraiter199 = and i64 %i.gu, 3                 ; 2 uses
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %vec.epilog.scalar.ph186.prol.loopexit, label %vec.epilog.scalar.ph186.prol

vec.epilog.scalar.ph186.prol:                     ; preds = %vec.epilog.scalar.ph186.preheader, %vec.epilog.scalar.ph186.prol
  %indvars.iv142.prol = phi i64 [ %indvars.iv.next143.prol, %vec.epilog.scalar.ph186.prol ], [ %indvars.iv142.ph, %vec.epilog.scalar.ph186.preheader ] ; 2 uses
  %prol.iter201 = phi i64 [ %prol.iter201.next, %vec.epilog.scalar.ph186.prol ], [ 0, %vec.epilog.scalar.ph186.preheader ]
  %i.gv = mul nsw i64 %indvars.iv142.prol, %i.fy
  %i.gw = getelementptr i8, ptr %.091, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.gw, i64 -1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !42
  %indvars.iv.next143.prol = add nuw nsw i64 %indvars.iv142.prol, 1 ; 3 uses
  %i.gz = getelementptr inbounds i8, ptr %i.fw, i64 %indvars.iv.next143.prol
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !42
  %prol.iter201.next = add i64 %prol.iter201, 1   ; 2 uses
  %prol.iter201.cmp.not = icmp eq i64 %prol.iter201.next, %xtraiter199
  br i1 %prol.iter201.cmp.not, label %vec.epilog.scalar.ph186.prol.loopexit, label %vec.epilog.scalar.ph186.prol, !llvm.loop !210

vec.epilog.scalar.ph186.prol.loopexit:            ; preds = %vec.epilog.scalar.ph186.prol, %vec.epilog.scalar.ph186.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv142.ph, %vec.epilog.scalar.ph186.preheader ], [ %indvars.iv.next143.prol, %vec.epilog.scalar.ph186.prol ]
  %i.ha = sub nsw i64 %indvars.iv142.ph, %wide.trip.count145
  %i.hb = icmp ugt i64 %i.ha, -4
  br i1 %i.hb, label %.loopexit, label %vec.epilog.scalar.ph186

vec.epilog.scalar.ph186:                          ; preds = %vec.epilog.scalar.ph186.prol.loopexit, %vec.epilog.scalar.ph186
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.3, %vec.epilog.scalar.ph186 ], [ %indvars.iv142.unr, %vec.epilog.scalar.ph186.prol.loopexit ] ; 5 uses
  %i.hc = mul nsw i64 %indvars.iv142, %i.fy
  %i.hd = getelementptr i8, ptr %.091, i64 %i.hc
  %i.he = getelementptr i8, ptr %i.hd, i64 -1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !42
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %i.fw, i64 %indvars.iv.next143
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !42
  %i.hh = mul nsw i64 %indvars.iv.next143, %i.fy
  %i.hi = getelementptr i8, ptr %.091, i64 %i.hh
  %i.hj = getelementptr i8, ptr %i.hi, i64 -1
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !42
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %i.fw, i64 %indvars.iv.next143.1
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !42
  %i.hm = mul nsw i64 %indvars.iv.next143.1, %i.fy
  %i.hn = getelementptr i8, ptr %.091, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 -1
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !42
  %indvars.iv.next143.2 = add nuw nsw i64 %indvars.iv142, 3 ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %i.fw, i64 %indvars.iv.next143.2
  store i8 %i.hp, ptr %i.hq, align 1, !tbaa !42
  %i.hr = mul nsw i64 %indvars.iv.next143.2, %i.fy
  %i.hs = getelementptr i8, ptr %.091, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.hs, i64 -1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !42
  %indvars.iv.next143.3 = add nuw nsw i64 %indvars.iv142, 4 ; 3 uses
  %i.hv = getelementptr inbounds i8, ptr %i.fw, i64 %indvars.iv.next143.3
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !42
  %exitcond146.not.3 = icmp eq i64 %indvars.iv.next143.3, %wide.trip.count145
  br i1 %exitcond146.not.3, label %.loopexit, label %vec.epilog.scalar.ph186, !llvm.loop !211

has_left_down_block.exit.thread:                  ; preds = %.critedge98, %has_left_block.exit.i119, %has_left_block.exit.i, %has_left_down_block.exit, %has_left_down_block.exit128
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 233
  %i.hx = sext i32 %6 to i64                      ; 2 uses
  %i.hy = getelementptr inbounds i8, ptr %i.hw, i64 %i.hx ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  %i.ia = load i8, ptr %i.hy, align 1, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hz, i8 %i.ia, i64 %i.hx, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %vec.epilog.scalar.ph186.prol.loopexit, %vec.epilog.scalar.ph186, %middle.block181, %vec.epilog.middle.block195, %bb.i, %has_left_down_block.exit.thread
  %i.ib = load i32, ptr %i.p, align 4, !tbaa !87
  %i.ic = add nsw i32 %i.ib, %5
  %i.id = icmp sgt i32 %i.ic, 0
  br i1 %i.id, label %bb.j, label %thread-pre-split.thread158

bb.j:                                             ; preds = %.loopexit
  %i.ie = xor i32 %3, -1
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds i8, ptr %.091, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !42
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 233
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !42
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
