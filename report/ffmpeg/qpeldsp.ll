Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/qpeldsp?download=true
inline.NumInlined: 263
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 168
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 175
begin_hunk_0_@ff_avg_dirac_pixels32_l2_c:bb.a
  %exitcond.not.i.i18 = icmp eq i64 %indvars.iv.next.i.i17, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i18, label %.lr.ph.preheader.i13.i19, label %.lr.ph.i.i15, !llvm.loop !37

.lr.ph.preheader.i13.i19:                         ; preds = %.lr.ph.i.i15
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %.lr.ph.i15.i20

.lr.ph.i15.i20:                                   ; preds = %.lr.ph.i15.i20, %.lr.ph.preheader.i13.i19
  %indvars.iv.i16.i21 = phi i64 [ 0, %.lr.ph.preheader.i13.i19 ], [ %indvars.iv.next.i17.i22, %.lr.ph.i15.i20 ] ; 2 uses
  %i.dj = mul nsw i64 %indvars.iv.i16.i21, %i.d   ; 3 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dh, i64 %i.dj ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 1, !tbaa !9  ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 %i.dj ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 1, !tbaa !9  ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %i.dg, i64 %i.dj ; 3 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !10 ; 2 uses
  %i.dq = or i32 %i.dn, %i.dl
  %i.dr = xor i32 %i.dn, %i.dl
  %i.ds = lshr i32 %i.dr, 1
  %i.dt = and i32 %i.ds, 2139062143
  %i.du = sub i32 %i.dq, %i.dt                    ; 2 uses
  %i.dv = or i32 %i.du, %i.dp
  %i.dw = xor i32 %i.du, %i.dp
  %i.dx = lshr i32 %i.dw, 1
  %i.dy = and i32 %i.dx, 2139062143
  %i.dz = sub i32 %i.dv, %i.dy
  store i32 %i.dz, ptr %i.do, align 4, !tbaa !10
  %i.ea = getelementptr i8, ptr %i.dk, i64 4
  %i.eb = load i32, ptr %i.ea, align 1, !tbaa !9  ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dm, i64 4
  %i.ed = load i32, ptr %i.ec, align 1, !tbaa !9  ; 2 uses
  %i.ee = getelementptr i8, ptr %i.do, i64 4      ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !10 ; 2 uses
  %i.eg = or i32 %i.ed, %i.eb
  %i.eh = xor i32 %i.ed, %i.eb
  %i.ei = lshr i32 %i.eh, 1
  %i.ej = and i32 %i.ei, 2139062143
  %i.ek = sub i32 %i.eg, %i.ej                    ; 2 uses
  %i.el = or i32 %i.ek, %i.ef
  %i.em = xor i32 %i.ek, %i.ef
  %i.en = lshr i32 %i.em, 1
  %i.eo = and i32 %i.en, 2139062143
  %i.ep = sub i32 %i.el, %i.eo
  store i32 %i.ep, ptr %i.ee, align 4, !tbaa !10
  %indvars.iv.next.i17.i22 = add nuw nsw i64 %indvars.iv.i16.i21, 1 ; 2 uses
  %exitcond.not.i18.i23 = icmp eq i64 %indvars.iv.next.i17.i22, %wide.trip.count.i.i
  br i1 %exitcond.not.i18.i23, label %avg_pixels16_l2_8.exit24, label %.lr.ph.i15.i20, !llvm.loop !37

avg_pixels16_l2_8.exit24:                         ; preds = %.lr.ph.i15.i20, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_avg_dirac_pixels8_l4_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.h = icmp sgt i32 %3, 0
  br i1 %i.h, label %.lr.ph.preheader.i, label %avg_pixels8_l4_8.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.i = sext i32 %2 to i64
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.j = mul nsw i64 %indvars.iv.i, %i.i          ; 5 uses
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9    ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.c, i64 %i.j ; 2 uses
  %i.n = load i32, ptr %i.m, align 1, !tbaa !9    ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 %i.j ; 2 uses
  %i.p = load i32, ptr %i.o, align 1, !tbaa !9    ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.g, i64 %i.j ; 2 uses
  %i.r = load i32, ptr %i.q, align 1, !tbaa !9    ; 2 uses
  %i.s = and i32 %i.l, 50529027
  %i.t = and i32 %i.n, 50529027
  %i.u = lshr i32 %i.l, 2
  %i.v = and i32 %i.u, 1061109567
  %i.w = lshr i32 %i.n, 2
  %i.x = and i32 %i.w, 1061109567
  %i.y = and i32 %i.p, 50529027
  %i.z = and i32 %i.r, 50529027
  %i.aa = lshr i32 %i.p, 2
  %i.ab = and i32 %i.aa, 1061109567
  %i.ac = lshr i32 %i.r, 2
  %i.ad = and i32 %i.ac, 1061109567
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.j ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !10 ; 2 uses
  %i.ag = add nuw nsw i32 %i.s, 33686018
  %i.ah = add nuw nsw i32 %i.ag, %i.t
  %i.ai = add nuw nsw i32 %i.ah, %i.y
  %i.aj = add nuw nsw i32 %i.ai, %i.z
  %i.ak = lshr i32 %i.aj, 2
  %i.al = and i32 %i.ak, 117901063
  %narrow62.i = add nuw nsw i32 %i.x, %i.v
  %narrow.i = add nuw i32 %narrow62.i, %i.ab
  %i.am = add nuw i32 %narrow.i, %i.ad
  %i.an = add i32 %i.am, %i.al                    ; 2 uses
  %i.ao = or i32 %i.an, %i.af
  %i.ap = xor i32 %i.an, %i.af
  %i.aq = lshr i32 %i.ap, 1
  %i.ar = and i32 %i.aq, 2139062143
  %i.as = sub i32 %i.ao, %i.ar
  store i32 %i.as, ptr %i.ae, align 4, !tbaa !10
  %i.at = getelementptr i8, ptr %i.k, i64 4
  %i.au = load i32, ptr %i.at, align 1, !tbaa !9  ; 2 uses
  %i.av = getelementptr i8, ptr %i.m, i64 4
  %i.aw = load i32, ptr %i.av, align 1, !tbaa !9  ; 2 uses
  %i.ax = getelementptr i8, ptr %i.o, i64 4
  %i.ay = load i32, ptr %i.ax, align 1, !tbaa !9  ; 2 uses
  %i.az = getelementptr i8, ptr %i.q, i64 4
  %i.ba = load i32, ptr %i.az, align 1, !tbaa !9  ; 2 uses
  %i.bb = and i32 %i.au, 50529027
  %i.bc = and i32 %i.aw, 50529027
  %i.bd = lshr i32 %i.au, 2
  %i.be = and i32 %i.bd, 1061109567
  %i.bf = lshr i32 %i.aw, 2
  %i.bg = and i32 %i.bf, 1061109567
  %i.bh = and i32 %i.ay, 50529027
  %i.bi = and i32 %i.ba, 50529027
  %i.bj = lshr i32 %i.ay, 2
  %i.bk = and i32 %i.bj, 1061109567
  %i.bl = lshr i32 %i.ba, 2
  %i.bm = and i32 %i.bl, 1061109567
  %i.bn = getelementptr i8, ptr %i.ae, i64 4      ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !10 ; 2 uses
  %i.bp = add nuw nsw i32 %i.bb, 33686018
  %i.bq = add nuw nsw i32 %i.bp, %i.bc
  %i.br = add nuw nsw i32 %i.bq, %i.bh
  %i.bs = add nuw nsw i32 %i.br, %i.bi
  %i.bt = lshr i32 %i.bs, 2
  %i.bu = and i32 %i.bt, 117901063
  %narrow64.i = add nuw nsw i32 %i.bg, %i.be
  %narrow63.i = add nuw i32 %narrow64.i, %i.bk
  %i.bv = add nuw i32 %narrow63.i, %i.bm
  %i.bw = add i32 %i.bv, %i.bu                    ; 2 uses
  %i.bx = or i32 %i.bw, %i.bo
  %i.by = xor i32 %i.bw, %i.bo
  %i.bz = lshr i32 %i.by, 1
  %i.ca = and i32 %i.bz, 2139062143
  %i.cb = sub i32 %i.bx, %i.ca
  store i32 %i.cb, ptr %i.bn, align 4, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %avg_pixels8_l4_8.exit, label %.lr.ph.i, !llvm.loop !22

avg_pixels8_l4_8.exit:                            ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_avg_dirac_pixels16_l4_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  tail call fastcc void @avg_pixels16_l4_8(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.e, ptr noundef %i.g, i32 noundef %2, i32 noundef %2, i32 noundef %2, i32 noundef %2, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_avg_dirac_pixels32_l4_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  tail call fastcc void @avg_pixels16_l4_8(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.e, ptr noundef %i.g, i32 noundef %2, i32 noundef %2, i32 noundef %2, i32 noundef %2, i32 noundef %2, i32 noundef %3)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %1, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  tail call fastcc void @avg_pixels16_l4_8(ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p, i32 noundef %2, i32 noundef %2, i32 noundef %2, i32 noundef %2, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_qpeldsp_init(ptr nofree noundef writeonly initializes((0, 768)) %0) local_unnamed_addr #7 {
bb.a:
  store ptr @ff_put_pixels16x16_c, ptr %0, align 8, !tbaa !38
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @put_qpel16_mc10_c, ptr %1, align 8, !tbaa !38
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @put_qpel16_mc20_c, ptr %2, align 8, !tbaa !38
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @put_qpel16_mc30_c, ptr %3, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @put_qpel16_mc01_c, ptr %i.a, align 8, !tbaa !38
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @put_qpel16_mc11_c, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @put_qpel16_mc21_c, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @put_qpel16_mc31_c, ptr %6, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @put_qpel16_mc02_c, ptr %i.b, align 8, !tbaa !38
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @put_qpel16_mc12_c, ptr %7, align 8, !tbaa !38
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @put_qpel16_mc22_c, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @put_qpel16_mc32_c, ptr %9, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @put_qpel16_mc03_c, ptr %i.c, align 8, !tbaa !38
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @put_qpel16_mc13_c, ptr %10, align 8, !tbaa !38
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @put_qpel16_mc23_c, ptr %11, align 8, !tbaa !38
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @put_qpel16_mc33_c, ptr %12, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @ff_put_pixels8x8_c, ptr %i.d, align 8, !tbaa !38
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @put_qpel8_mc10_c, ptr %13, align 8, !tbaa !38
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @put_qpel8_mc20_c, ptr %14, align 8, !tbaa !38
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @put_qpel8_mc30_c, ptr %15, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr @put_qpel8_mc01_c, ptr %i.e, align 8, !tbaa !38
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @put_qpel8_mc11_c, ptr %16, align 8, !tbaa !38
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @put_qpel8_mc21_c, ptr %17, align 8, !tbaa !38
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr @put_qpel8_mc31_c, ptr %18, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr @put_qpel8_mc02_c, ptr %i.f, align 8, !tbaa !38
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr @put_qpel8_mc12_c, ptr %19, align 8, !tbaa !38
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr @put_qpel8_mc22_c, ptr %20, align 8, !tbaa !38
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr @put_qpel8_mc32_c, ptr %21, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr @put_qpel8_mc03_c, ptr %i.g, align 8, !tbaa !38
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr @put_qpel8_mc13_c, ptr %22, align 8, !tbaa !38
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr @put_qpel8_mc23_c, ptr %23, align 8, !tbaa !38
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr @put_qpel8_mc33_c, ptr %24, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr @ff_put_pixels16x16_c, ptr %i.h, align 8, !tbaa !38
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr @put_no_rnd_qpel16_mc10_c, ptr %25, align 8, !tbaa !38
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr @put_no_rnd_qpel16_mc20_c, ptr %26, align 8, !tbaa !38
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr @put_no_rnd_qpel16_mc30_c, ptr %27, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr @put_no_rnd_qpel16_mc01_c, ptr %i.i, align 8, !tbaa !38
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr @put_no_rnd_qpel16_mc11_c, ptr %28, align 8, !tbaa !38
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @put_no_rnd_qpel16_mc21_c, ptr %29, align 8, !tbaa !38
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr @put_no_rnd_qpel16_mc31_c, ptr %30, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr @put_no_rnd_qpel16_mc02_c, ptr %i.j, align 8, !tbaa !38
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr @put_no_rnd_qpel16_mc12_c, ptr %31, align 8, !tbaa !38
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr @put_no_rnd_qpel16_mc22_c, ptr %32, align 8, !tbaa !38
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr @put_no_rnd_qpel16_mc32_c, ptr %33, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr @put_no_rnd_qpel16_mc03_c, ptr %i.k, align 8, !tbaa !38
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr @put_no_rnd_qpel16_mc13_c, ptr %34, align 8, !tbaa !38
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr @put_no_rnd_qpel16_mc23_c, ptr %35, align 8, !tbaa !38
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 632
  store ptr @put_no_rnd_qpel16_mc33_c, ptr %36, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr @ff_put_pixels8x8_c, ptr %i.l, align 8, !tbaa !38
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 648
  store ptr @put_no_rnd_qpel8_mc10_c, ptr %37, align 8, !tbaa !38
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr @put_no_rnd_qpel8_mc20_c, ptr %38, align 8, !tbaa !38
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 664
  store ptr @put_no_rnd_qpel8_mc30_c, ptr %39, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr @put_no_rnd_qpel8_mc01_c, ptr %i.m, align 8, !tbaa !38
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr @put_no_rnd_qpel8_mc11_c, ptr %40, align 8, !tbaa !38
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr @put_no_rnd_qpel8_mc21_c, ptr %41, align 8, !tbaa !38
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store ptr @put_no_rnd_qpel8_mc31_c, ptr %42, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr @put_no_rnd_qpel8_mc02_c, ptr %i.n, align 8, !tbaa !38
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 712
  store ptr @put_no_rnd_qpel8_mc12_c, ptr %43, align 8, !tbaa !38
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr @put_no_rnd_qpel8_mc22_c, ptr %44, align 8, !tbaa !38
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr @put_no_rnd_qpel8_mc32_c, ptr %45, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr @put_no_rnd_qpel8_mc03_c, ptr %i.o, align 8, !tbaa !38
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 744
  store ptr @put_no_rnd_qpel8_mc13_c, ptr %46, align 8, !tbaa !38
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr @put_no_rnd_qpel8_mc23_c, ptr %47, align 8, !tbaa !38
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 760
  store ptr @put_no_rnd_qpel8_mc33_c, ptr %48, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @ff_avg_pixels16x16_c, ptr %i.p, align 8, !tbaa !38
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @avg_qpel16_mc10_c, ptr %49, align 8, !tbaa !38
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr @avg_qpel16_mc20_c, ptr %50, align 8, !tbaa !38
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @avg_qpel16_mc30_c, ptr %51, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr @avg_qpel16_mc01_c, ptr %i.q, align 8, !tbaa !38
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr @avg_qpel16_mc11_c, ptr %52, align 8, !tbaa !38
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr @avg_qpel16_mc21_c, ptr %53, align 8, !tbaa !38
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr @avg_qpel16_mc31_c, ptr %54, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr @avg_qpel16_mc02_c, ptr %i.r, align 8, !tbaa !38
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr @avg_qpel16_mc12_c, ptr %55, align 8, !tbaa !38
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr @avg_qpel16_mc22_c, ptr %56, align 8, !tbaa !38
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr @avg_qpel16_mc32_c, ptr %57, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr @avg_qpel16_mc03_c, ptr %i.s, align 8, !tbaa !38
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr @avg_qpel16_mc13_c, ptr %58, align 8, !tbaa !38
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr @avg_qpel16_mc23_c, ptr %59, align 8, !tbaa !38
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr @avg_qpel16_mc33_c, ptr %60, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr @ff_avg_pixels8x8_c, ptr %i.t, align 8, !tbaa !38
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr @avg_qpel8_mc10_c, ptr %61, align 8, !tbaa !38
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr @avg_qpel8_mc20_c, ptr %62, align 8, !tbaa !38
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr @avg_qpel8_mc30_c, ptr %63, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr @avg_qpel8_mc01_c, ptr %i.u, align 8, !tbaa !38
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr @avg_qpel8_mc11_c, ptr %64, align 8, !tbaa !38
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr @avg_qpel8_mc21_c, ptr %65, align 8, !tbaa !38
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr @avg_qpel8_mc31_c, ptr %66, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr @avg_qpel8_mc02_c, ptr %i.v, align 8, !tbaa !38
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr @avg_qpel8_mc12_c, ptr %67, align 8, !tbaa !38
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr @avg_qpel8_mc22_c, ptr %68, align 8, !tbaa !38
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr @avg_qpel8_mc32_c, ptr %69, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr @avg_qpel8_mc03_c, ptr %i.w, align 8, !tbaa !38
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr @avg_qpel8_mc13_c, ptr %70, align 8, !tbaa !38
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr @avg_qpel8_mc23_c, ptr %71, align 8, !tbaa !38
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr @avg_qpel8_mc33_c, ptr %72, align 8, !tbaa !38
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_qpel16_mc10_c(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = trunc i64 %2 to i32
  call fastcc void @put_mpeg4_qpel16_h_lowpass(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef 16, i32 noundef %i.b, i32 noundef 16)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.a
  %indvars.iv.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.c = mul nsw i64 %indvars.iv.i.i, %2          ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 1, !tbaa !9    ; 2 uses
  %i.f = shl nuw nsw i64 %indvars.iv.i.i, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 16, !tbaa !9   ; 2 uses
  %i.i = or i32 %i.h, %i.e
  %i.j = xor i32 %i.h, %i.e
  %i.k = lshr i32 %i.j, 1
  %i.l = and i32 %i.k, 2139062143
  %i.m = sub i32 %i.i, %i.l
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  store i32 %i.m, ptr %i.n, align 4, !tbaa !10
  %i.o = getelementptr i8, ptr %i.d, i64 4
  %i.p = load i32, ptr %i.o, align 1, !tbaa !9    ; 2 uses
  %i.q = getelementptr i8, ptr %i.g, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9    ; 2 uses
  %i.s = or i32 %i.r, %i.p
  %i.t = xor i32 %i.r, %i.p
  %i.u = lshr i32 %i.t, 1
  %i.v = and i32 %i.u, 2139062143
  %i.w = sub i32 %i.s, %i.v
  %i.x = getelementptr i8, ptr %i.n, i64 4
  store i32 %i.w, ptr %i.x, align 4, !tbaa !10
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 16
  br i1 %exitcond.not.i.i, label %.lr.ph.preheader.i13.i, label %.lr.ph.i.i, !llvm.loop !23

.lr.ph.preheader.i13.i:                           ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i15.i, %.lr.ph.preheader.i13.i
  %indvars.iv.i16.i = phi i64 [ 0, %.lr.ph.preheader.i13.i ], [ %indvars.iv.next.i17.i, %.lr.ph.i15.i ] ; 3 uses
  %i.ab = mul nsw i64 %indvars.iv.i16.i, %2       ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 1, !tbaa !9  ; 2 uses
  %i.ae = shl nuw nsw i64 %indvars.iv.i16.i, 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !9  ; 2 uses
  %i.ah = or i32 %i.ag, %i.ad
  %i.ai = xor i32 %i.ag, %i.ad
  %i.aj = lshr i32 %i.ai, 1
  %i.ak = and i32 %i.aj, 2139062143
  %i.al = sub i32 %i.ah, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.y, i64 %i.ab ; 2 uses
  store i32 %i.al, ptr %i.am, align 4, !tbaa !10
  %i.an = getelementptr i8, ptr %i.ac, i64 4
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !9  ; 2 uses
  %i.ap = getelementptr i8, ptr %i.af, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !9  ; 2 uses
  %i.ar = or i32 %i.aq, %i.ao
  %i.as = xor i32 %i.aq, %i.ao
  %i.at = lshr i32 %i.as, 1
  %i.au = and i32 %i.at, 2139062143
  %i.av = sub i32 %i.ar, %i.au
  %i.aw = getelementptr i8, ptr %i.am, i64 4
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !10
  %indvars.iv.next.i17.i = add nuw nsw i64 %indvars.iv.i16.i, 1 ; 2 uses
  %exitcond.not.i18.i = icmp eq i64 %indvars.iv.next.i17.i, 16
  br i1 %exitcond.not.i18.i, label %put_pixels16_l2_8.exit, label %.lr.ph.i15.i, !llvm.loop !23

put_pixels16_l2_8.exit:                           ; preds = %.lr.ph.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_qpel16_mc20_c(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  tail call fastcc void @put_mpeg4_qpel16_h_lowpass(ptr noundef %0, ptr noundef %1, i32 noundef %i.a, i32 noundef %i.a, i32 noundef 16)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_qpel16_mc30_c(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = trunc i64 %2 to i32
  call fastcc void @put_mpeg4_qpel16_h_lowpass(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef 16, i32 noundef %i.b, i32 noundef 16)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.a
  %indvars.iv.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.d = mul nsw i64 %indvars.iv.i.i, %2          ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 %i.d ; 2 uses
  %i.f = load i32, ptr %i.e, align 1, !tbaa !9    ; 2 uses
  %i.g = shl nuw nsw i64 %indvars.iv.i.i, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 16, !tbaa !9   ; 2 uses
  %i.j = or i32 %i.i, %i.f
  %i.k = xor i32 %i.i, %i.f
  %i.l = lshr i32 %i.k, 1
  %i.m = and i32 %i.l, 2139062143
  %i.n = sub i32 %i.j, %i.m
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.d ; 2 uses
  store i32 %i.n, ptr %i.o, align 4, !tbaa !10
  %i.p = getelementptr i8, ptr %i.e, i64 4
  %i.q = load i32, ptr %i.p, align 1, !tbaa !9    ; 2 uses
  %i.r = getelementptr i8, ptr %i.h, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !9    ; 2 uses
  %i.t = or i32 %i.s, %i.q
  %i.u = xor i32 %i.s, %i.q
  %i.v = lshr i32 %i.u, 1
  %i.w = and i32 %i.v, 2139062143
  %i.x = sub i32 %i.t, %i.w
  %i.y = getelementptr i8, ptr %i.o, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !10
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 16
  br i1 %exitcond.not.i.i, label %.lr.ph.preheader.i13.i, label %.lr.ph.i.i, !llvm.loop !23

.lr.ph.preheader.i13.i:                           ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i15.i, %.lr.ph.preheader.i13.i
  %indvars.iv.i16.i = phi i64 [ 0, %.lr.ph.preheader.i13.i ], [ %indvars.iv.next.i17.i, %.lr.ph.i15.i ] ; 3 uses
  %i.ac = mul nsw i64 %indvars.iv.i16.i, %2       ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !9  ; 2 uses
  %i.af = shl nuw nsw i64 %indvars.iv.i16.i, 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !9  ; 2 uses
  %i.ai = or i32 %i.ah, %i.ae
  %i.aj = xor i32 %i.ah, %i.ae
  %i.ak = lshr i32 %i.aj, 1
  %i.al = and i32 %i.ak, 2139062143
  %i.am = sub i32 %i.ai, %i.al
  %i.an = getelementptr inbounds i8, ptr %i.z, i64 %i.ac ; 2 uses
  store i32 %i.am, ptr %i.an, align 4, !tbaa !10
  %i.ao = getelementptr i8, ptr %i.ad, i64 4
  %i.ap = load i32, ptr %i.ao, align 1, !tbaa !9  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ag, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !9  ; 2 uses
  %i.as = or i32 %i.ar, %i.ap
  %i.at = xor i32 %i.ar, %i.ap
  %i.au = lshr i32 %i.at, 1
  %i.av = and i32 %i.au, 2139062143
  %i.aw = sub i32 %i.as, %i.av
  %i.ax = getelementptr i8, ptr %i.an, i64 4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !10
  %indvars.iv.next.i17.i = add nuw nsw i64 %indvars.iv.i16.i, 1 ; 2 uses
  %exitcond.not.i18.i = icmp eq i64 %indvars.iv.next.i17.i, 16
  br i1 %exitcond.not.i18.i, label %put_pixels16_l2_8.exit, label %.lr.ph.i15.i, !llvm.loop !23

put_pixels16_l2_8.exit:                           ; preds = %.lr.ph.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @put_qpel16_mc01_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #2 {
.lr.ph.i.i:
  %i.a = alloca [408 x i8], align 16              ; 52 uses
  %i.b = alloca [256 x i8], align 16              ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = load <2 x i64>, ptr %1, align 1, !tbaa !9
  store <2 x i64> %i.c, ptr %i.a, align 16, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds i8, ptr %1, i64 %2 ; 2 uses
  %i.f = load <2 x i64>, ptr %i.e, align 1, !tbaa !9
  store <2 x i64> %i.f, ptr %i.d, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %2 ; 2 uses
  %i.i = load <2 x i64>, ptr %i.h, align 1, !tbaa !9
  store <2 x i64> %i.i, ptr %i.g, align 16, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %2 ; 2 uses
  %i.l = load <2 x i64>, ptr %i.k, align 1, !tbaa !9
  store <2 x i64> %i.l, ptr %i.j, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %2 ; 2 uses
  %i.o = load <2 x i64>, ptr %i.n, align 1, !tbaa !9
  store <2 x i64> %i.o, ptr %i.m, align 16, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 %2 ; 2 uses
  %i.r = load <2 x i64>, ptr %i.q, align 1, !tbaa !9
end_hunk_0
