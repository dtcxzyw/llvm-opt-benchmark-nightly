Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp3dsp?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ff_vp3dsp_idct10_add:bb.a
  %isnotneg.i21 = icmp sgt i32 %i.lc, -1
  %i.ld = sext i1 %isnotneg.i21 to i8
  %i.le = trunc nuw i32 %i.lc to i8
  %.0.i22 = select i1 %.not.i20, i8 %i.le, i8 %i.ld
  store i8 %.0.i22, ptr %i.kx, align 1, !tbaa !11
  %i.lf = getelementptr inbounds i8, ptr %.0203.i28, i64 %1 ; 2 uses
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !11
  %i.lh = zext i8 %i.lg to i32
  %i.li = add nsw i32 %i.kn, %i.kk
  %i.lj = ashr i32 %i.li, 4
  %i.lk = add nsw i32 %i.lj, %i.lh                ; 3 uses
  %.not.i17 = icmp ult i32 %i.lk, 256
  %isnotneg.i18 = icmp sgt i32 %i.lk, -1
  %i.ll = sext i1 %isnotneg.i18 to i8
  %i.lm = trunc nuw i32 %i.lk to i8
  %.0.i19 = select i1 %.not.i17, i8 %i.lm, i8 %i.ll
  store i8 %.0.i19, ptr %i.lf, align 1, !tbaa !11
  %i.ln = getelementptr inbounds i8, ptr %.0203.i28, i64 %i.is ; 2 uses
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !11
  %i.lp = zext i8 %i.lo to i32
  %i.lq = sub nsw i32 %i.kn, %i.kk
  %i.lr = ashr i32 %i.lq, 4
  %i.ls = add nsw i32 %i.lr, %i.lp                ; 3 uses
  %.not.i14 = icmp ult i32 %i.ls, 256
  %isnotneg.i15 = icmp sgt i32 %i.ls, -1
  %i.lt = sext i1 %isnotneg.i15 to i8
  %i.lu = trunc nuw i32 %i.ls to i8
  %.0.i16 = select i1 %.not.i14, i8 %i.lu, i8 %i.lt
  store i8 %.0.i16, ptr %i.ln, align 1, !tbaa !11
  %i.lv = getelementptr inbounds i8, ptr %.0203.i28, i64 %i.it ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !11
  %i.lx = zext i8 %i.lw to i32
  %i.ly = add nsw i32 %i.ko, %i.jz
  %i.lz = ashr i32 %i.ly, 4
  %i.ma = add nsw i32 %i.lz, %i.lx                ; 3 uses
  %.not.i11 = icmp ult i32 %i.ma, 256
  %isnotneg.i12 = icmp sgt i32 %i.ma, -1
  %i.mb = sext i1 %isnotneg.i12 to i8
  %i.mc = trunc nuw i32 %i.ma to i8
  %.0.i13 = select i1 %.not.i11, i8 %i.mc, i8 %i.mb
  store i8 %.0.i13, ptr %i.lv, align 1, !tbaa !11
  %i.md = getelementptr inbounds i8, ptr %.0203.i28, i64 %i.iu ; 2 uses
  %i.me = load i8, ptr %i.md, align 1, !tbaa !11
  %i.mf = zext i8 %i.me to i32
  %i.mg = sub nsw i32 %i.ko, %i.jz
  %i.mh = ashr i32 %i.mg, 4
  %i.mi = add nsw i32 %i.mh, %i.mf                ; 3 uses
  %.not.i8 = icmp ult i32 %i.mi, 256
  %isnotneg.i9 = icmp sgt i32 %i.mi, -1
  %i.mj = sext i1 %isnotneg.i9 to i8
  %i.mk = trunc nuw i32 %i.mi to i8
  %.0.i10 = select i1 %.not.i8, i8 %i.mk, i8 %i.mj
  store i8 %.0.i10, ptr %i.md, align 1, !tbaa !11
  %i.ml = getelementptr inbounds i8, ptr %.0203.i28, i64 %i.iv ; 2 uses
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !11
  %i.mn = zext i8 %i.mm to i32
  %i.mo = add nsw i32 %i.kp, %i.ki
  %i.mp = ashr i32 %i.mo, 4
  %i.mq = add nsw i32 %i.mp, %i.mn                ; 3 uses
  %.not.i5 = icmp ult i32 %i.mq, 256
  %isnotneg.i6 = icmp sgt i32 %i.mq, -1
  %i.mr = sext i1 %isnotneg.i6 to i8
  %i.ms = trunc nuw i32 %i.mq to i8
  %.0.i7 = select i1 %.not.i5, i8 %i.ms, i8 %i.mr
  store i8 %.0.i7, ptr %i.ml, align 1, !tbaa !11
  %i.mt = getelementptr inbounds i8, ptr %.0203.i28, i64 %i.iw ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !11
  %i.mv = zext i8 %i.mu to i32
  %i.mw = sub nsw i32 %i.kp, %i.ki
  %i.mx = ashr i32 %i.mw, 4
  %i.my = add nsw i32 %i.mx, %i.mv                ; 3 uses
  %.not.i3 = icmp ult i32 %i.my, 256
  %isnotneg.i = icmp sgt i32 %i.my, -1
  %i.mz = sext i1 %isnotneg.i to i8
  %i.na = trunc nuw i32 %i.my to i8
  %.0.i4 = select i1 %.not.i3, i8 %i.na, i8 %i.mz
  store i8 %.0.i4, ptr %i.mt, align 1, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.nb = getelementptr inbounds nuw i8, ptr %.1202.i29, i64 16
  %i.nc = getelementptr inbounds nuw i8, ptr %.0203.i28, i64 1
  %i.nd = add nuw nsw i32 %.1.i30, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.nd, 8
  br i1 %exitcond.not, label %idct10.exit, label %bb.i, !llvm.loop !12

idct10.exit:                                      ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_vp3dsp_v_loop_filter_12(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i64 0, %1                        ; 2 uses
  %i.b = shl nsw i64 %i.a, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.0.i.idx6 = phi i64 [ 0, %bb.a ], [ %.0.i.add, %bb.b ] ; 2 uses
  %.0.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i.idx6 ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %.0.i.ptr, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11
  %i.e = zext i8 %i.d to i32
  %i.f = getelementptr inbounds i8, ptr %.0.i.ptr, i64 %1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %i.h = zext i8 %i.g to i32
  %i.i = load i8, ptr %.0.i.ptr, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds i8, ptr %.0.i.ptr, i64 %i.a ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = sub nsw i32 %i.j, %i.m
  %i.o = mul nsw i32 %i.n, 3
  %i.p = add nuw nsw i32 %i.e, 4
  %i.q = sub nsw i32 %i.p, %i.h
  %i.r = add nsw i32 %i.q, %i.o
  %i.s = ashr i32 %i.r, 3
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %2, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !14   ; 2 uses
  %i.w = add nsw i32 %i.v, %i.m                   ; 3 uses
  %.not.i3 = icmp ult i32 %i.w, 256
  %isnotneg.i4 = icmp sgt i32 %i.w, -1
  %i.x = sext i1 %isnotneg.i4 to i8
  %i.y = trunc nuw i32 %i.w to i8
  %.0.i5 = select i1 %.not.i3, i8 %i.y, i8 %i.x
  store i8 %.0.i5, ptr %i.k, align 1, !tbaa !11
  %i.z = load i8, ptr %.0.i.ptr, align 1, !tbaa !11
  %i.aa = zext i8 %i.z to i32
  %i.ab = sub nsw i32 %i.aa, %i.v                 ; 3 uses
  %.not.i = icmp ult i32 %i.ab, 256
  %isnotneg.i = icmp sgt i32 %i.ab, -1
  %i.ac = sext i1 %isnotneg.i to i8
  %i.ad = trunc nuw i32 %i.ab to i8
  %.0.i2 = select i1 %.not.i, i8 %i.ad, i8 %i.ac
  store i8 %.0.i2, ptr %.0.i.ptr, align 1, !tbaa !11
  %.0.i.add = add nuw nsw i64 %.0.i.idx6, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %.0.i.add, 12
  br i1 %exitcond.not, label %vp3_v_loop_filter_c.exit, label %bb.b, !llvm.loop !15

vp3_v_loop_filter_c.exit:                         ; preds = %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_vp3dsp_h_loop_filter_12(ptr nofree noundef captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i64 %1, 12
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %.not.i7 = icmp eq i64 %1, 0
  br i1 %.not.i7, label %vp3_h_loop_filter_c.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i8 = phi ptr [ %i.ac, %.lr.ph ], [ %0, %bb.a ] ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %.0.i8, i64 -2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11
  %i.e = zext i8 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i8, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %i.h = zext i8 %i.g to i32
  %i.i = load i8, ptr %.0.i8, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.0.i8, i64 -1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = sub nsw i32 %i.j, %i.m
  %i.o = mul nsw i32 %i.n, 3
  %i.p = add nuw nsw i32 %i.e, 4
  %i.q = sub nsw i32 %i.p, %i.h
  %i.r = add nsw i32 %i.q, %i.o
  %i.s = ashr i32 %i.r, 3
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %2, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !14   ; 2 uses
  %i.w = add nsw i32 %i.v, %i.m                   ; 3 uses
  %.not.i4 = icmp ult i32 %i.w, 256
  %isnotneg.i5 = icmp sgt i32 %i.w, -1
  %i.x = sext i1 %isnotneg.i5 to i8
  %i.y = trunc nuw i32 %i.w to i8
  %.0.i6 = select i1 %.not.i4, i8 %i.y, i8 %i.x
  store i8 %.0.i6, ptr %i.k, align 1, !tbaa !11
  %i.z = sub nsw i32 %i.j, %i.v                   ; 3 uses
  %.not.i2 = icmp ult i32 %i.z, 256
  %isnotneg.i = icmp sgt i32 %i.z, -1
  %i.aa = sext i1 %isnotneg.i to i8
  %i.ab = trunc nuw i32 %i.z to i8
  %.0.i3 = select i1 %.not.i2, i8 %i.ab, i8 %i.aa
  store i8 %.0.i3, ptr %.0.i8, align 1, !tbaa !11
  %i.ac = getelementptr inbounds i8, ptr %.0.i8, i64 %1 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, %i.b
  br i1 %.not.i, label %vp3_h_loop_filter_c.exit, label %.lr.ph, !llvm.loop !16

vp3_h_loop_filter_c.exit:                         ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_vp3dsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0) local_unnamed_addr #2 {
bb.a:
  store <4 x ptr> <ptr @put_no_rnd_pixels_l2, ptr @vp3_idct_put_c, ptr @vp3_idct_add_c, ptr @vp3_idct_dc_add_c>, ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x ptr> <ptr @vp3_v_loop_filter_8_c, ptr @vp3_h_loop_filter_8_c, ptr @vp3_v_loop_filter_8_c, ptr @vp3_h_loop_filter_8_c>, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_no_rnd_pixels_l2(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = mul nsw i64 %3, %indvars.iv              ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = load i32, ptr %i.c, align 1, !tbaa !11   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.b
  %i.f = load i32, ptr %i.e, align 1, !tbaa !11   ; 2 uses
  %i.g = and i32 %i.f, %i.d
  %i.h = xor i32 %i.f, %i.d
  %i.i = lshr i32 %i.h, 1
  %i.j = and i32 %i.i, 2139062143
  %i.k = add i32 %i.j, %i.g
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.b
  store i32 %i.k, ptr %i.l, align 4, !tbaa !11
  %i.m = add nsw i64 %i.b, 4                      ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.m
  %i.o = load i32, ptr %i.n, align 1, !tbaa !11   ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.m
  %i.q = load i32, ptr %i.p, align 1, !tbaa !11   ; 2 uses
  %i.r = and i32 %i.q, %i.o
  %i.s = xor i32 %i.q, %i.o
  %i.t = lshr i32 %i.s, 1
  %i.u = and i32 %i.t, 2139062143
  %i.v = add i32 %i.u, %i.r
  %i.w = getelementptr inbounds i8, ptr %0, i64 %i.m
  store i32 %i.v, ptr %i.w, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @vp3_idct_put_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  br label %bb.b

.preheader:                                       ; preds = %bb.d
  %i.a = mul nsw i64 %1, 7                        ; 2 uses
  %i.b = shl nsw i64 %1, 1                        ; 2 uses
  %i.c = mul nsw i64 %1, 3                        ; 2 uses
  %i.d = shl nsw i64 %1, 2                        ; 2 uses
  %i.e = mul nsw i64 %1, 5                        ; 2 uses
  %i.f = mul nsw i64 %1, 6                        ; 2 uses
  br label %bb.e

bb.b:                                             ; preds = %bb.a, %bb.d
  %.0263.i4 = phi i32 [ 0, %bb.a ], [ %i.cz, %bb.d ]
  %.0266.i3 = phi ptr [ %2, %bb.a ], [ %i.cy, %bb.d ] ; 10 uses
  %i.g = load i16, ptr %.0266.i3, align 2, !tbaa !9
  %i.h = sext i16 %i.g to i32                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0266.i3, i64 16 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !9
  %i.k = sext i16 %i.j to i32                     ; 3 uses
  %i.l = or i32 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %.0266.i3, i64 32 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !9
  %i.o = sext i16 %i.n to i32                     ; 3 uses
  %i.p = or i32 %i.l, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.0266.i3, i64 48 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !9
  %i.s = sext i16 %i.r to i32                     ; 3 uses
  %i.t = or i32 %i.p, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.0266.i3, i64 64 ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !9
  %i.w = sext i16 %i.v to i32                     ; 3 uses
  %i.x = or i32 %i.t, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.0266.i3, i64 80 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !9
  %i.aa = sext i16 %i.z to i32                    ; 3 uses
  %i.ab = or i32 %i.x, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.0266.i3, i64 96 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !9
  %i.ae = sext i16 %i.ad to i32                   ; 3 uses
  %i.af = or i32 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.0266.i3, i64 112 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !9
  %i.ai = sext i16 %i.ah to i32                   ; 3 uses
  %i.aj = or i32 %i.af, %i.ai
  %.not270.i = icmp eq i32 %i.aj, 0
  br i1 %.not270.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = mul nsw i32 %i.k, 64277
  %i.al = ashr i32 %i.ak, 16
  %i.am = mul nsw i32 %i.ai, 12785
  %i.an = ashr i32 %i.am, 16
  %i.ao = add nsw i32 %i.an, %i.al                ; 2 uses
  %i.ap = mul nsw i32 %i.k, 12785
  %i.aq = ashr i32 %i.ap, 16
  %i.ar = mul nsw i32 %i.ai, 64277
  %i.as = ashr i32 %i.ar, 16
  %i.at = sub nsw i32 %i.aq, %i.as                ; 2 uses
  %i.au = mul nsw i32 %i.s, 54491
  %i.av = ashr i32 %i.au, 16
  %i.aw = mul nsw i32 %i.aa, 36410
  %i.ax = ashr i32 %i.aw, 16
  %i.ay = add nsw i32 %i.ax, %i.av                ; 2 uses
  %i.az = mul nsw i32 %i.aa, 54491
  %i.ba = ashr i32 %i.az, 16
  %i.bb = mul nsw i32 %i.s, 36410
  %i.bc = ashr i32 %i.bb, 16
  %i.bd = sub nsw i32 %i.ba, %i.bc                ; 2 uses
  %i.be = sub nsw i32 %i.ao, %i.ay
  %i.bf = mul i32 %i.be, 46341
  %i.bg = ashr i32 %i.bf, 16                      ; 2 uses
  %i.bh = sub nsw i32 %i.at, %i.bd
  %i.bi = mul i32 %i.bh, 46341
  %i.bj = ashr i32 %i.bi, 16                      ; 2 uses
  %i.bk = add nsw i32 %i.ao, %i.ay                ; 2 uses
  %i.bl = add nsw i32 %i.at, %i.bd                ; 2 uses
  %i.bm = add nsw i32 %i.w, %i.h
  %i.bn = mul i32 %i.bm, 46341
  %i.bo = ashr i32 %i.bn, 16                      ; 2 uses
  %i.bp = sub nsw i32 %i.h, %i.w
  %i.bq = mul i32 %i.bp, 46341
  %i.br = ashr i32 %i.bq, 16                      ; 2 uses
  %i.bs = mul nsw i32 %i.o, 60547
  %i.bt = ashr i32 %i.bs, 16
  %i.bu = mul nsw i32 %i.ae, 25080
  %i.bv = ashr i32 %i.bu, 16
  %i.bw = add nsw i32 %i.bv, %i.bt                ; 2 uses
  %i.bx = mul nsw i32 %i.o, 25080
  %i.by = ashr i32 %i.bx, 16
  %i.bz = mul nsw i32 %i.ae, 60547
  %i.ca = ashr i32 %i.bz, 16
  %i.cb = sub nsw i32 %i.by, %i.ca                ; 2 uses
  %i.cc = sub nsw i32 %i.bo, %i.bw                ; 2 uses
  %i.cd = add nsw i32 %i.bw, %i.bo                ; 2 uses
  %i.ce = add nsw i32 %i.bg, %i.br                ; 2 uses
  %i.cf = sub nsw i32 %i.bj, %i.cb                ; 2 uses
  %i.cg = sub nsw i32 %i.br, %i.bg                ; 2 uses
  %i.ch = add nsw i32 %i.bj, %i.cb                ; 2 uses
  %i.ci = add nsw i32 %i.bk, %i.cd
  %i.cj = trunc i32 %i.ci to i16
  store i16 %i.cj, ptr %.0266.i3, align 2, !tbaa !9
  %i.ck = sub nsw i32 %i.cd, %i.bk
  %i.cl = trunc i32 %i.ck to i16
  store i16 %i.cl, ptr %i.ag, align 2, !tbaa !9
  %i.cm = add nsw i32 %i.ce, %i.ch
  %i.cn = trunc i32 %i.cm to i16
  store i16 %i.cn, ptr %i.i, align 2, !tbaa !9
  %i.co = sub nsw i32 %i.ce, %i.ch
  %i.cp = trunc i32 %i.co to i16
  store i16 %i.cp, ptr %i.m, align 2, !tbaa !9
  %i.cq = add nsw i32 %i.bl, %i.cc
  %i.cr = trunc i32 %i.cq to i16
  store i16 %i.cr, ptr %i.q, align 2, !tbaa !9
  %i.cs = sub nsw i32 %i.cc, %i.bl
  %i.ct = trunc i32 %i.cs to i16
  store i16 %i.ct, ptr %i.u, align 2, !tbaa !9
  %i.cu = add nsw i32 %i.cg, %i.cf
  %i.cv = trunc i32 %i.cu to i16
  store i16 %i.cv, ptr %i.y, align 2, !tbaa !9
  %i.cw = sub nsw i32 %i.cg, %i.cf
  %i.cx = trunc i32 %i.cw to i16
  store i16 %i.cx, ptr %i.ac, align 2, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cy = getelementptr inbounds nuw i8, ptr %.0266.i3, i64 2
  %i.cz = add nuw nsw i32 %.0263.i4, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cz, 8
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !20

bb.e:                                             ; preds = %.preheader, %bb.h
  %.0.i7 = phi ptr [ %0, %.preheader ], [ %i.ig, %bb.h ] ; 17 uses
  %.1.i6 = phi i32 [ 0, %.preheader ], [ %i.ih, %bb.h ]
  %.1267.i5 = phi ptr [ %2, %.preheader ], [ %i.if, %bb.h ] ; 10 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1267.i5, i64 2
  %i.db = load i16, ptr %i.da, align 2, !tbaa !9  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.1267.i5, i64 4
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !9  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.1267.i5, i64 6
  %i.df = load i16, ptr %i.de, align 2, !tbaa !9  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1267.i5, i64 8
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !9  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.1267.i5, i64 10
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !9  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.1267.i5, i64 12
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !9  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.1267.i5, i64 14
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !9  ; 2 uses
  %i.do = or i16 %i.dd, %i.db
  %i.dp = or i16 %i.do, %i.df
  %i.dq = or i16 %i.dp, %i.dh
  %i.dr = or i16 %i.dq, %i.dj
  %i.ds = or i16 %i.dr, %i.dl
  %i.dt = or i16 %i.ds, %i.dn
  %.not.i = icmp eq i16 %i.dt, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.du = sext i16 %i.dn to i32                   ; 2 uses
  %i.dv = sext i16 %i.dj to i32                   ; 2 uses
  %i.dw = sext i16 %i.dh to i32                   ; 2 uses
  %i.dx = sext i16 %i.df to i32                   ; 2 uses
  %i.dy = sext i16 %i.db to i32                   ; 2 uses
  %i.dz = mul nsw i32 %i.dy, 64277
  %i.ea = ashr i32 %i.dz, 16
  %i.eb = mul nsw i32 %i.du, 12785
  %i.ec = ashr i32 %i.eb, 16
  %i.ed = add nsw i32 %i.ec, %i.ea                ; 2 uses
  %i.ee = mul nsw i32 %i.dy, 12785
  %i.ef = ashr i32 %i.ee, 16
  %i.eg = mul nsw i32 %i.du, 64277
  %i.eh = ashr i32 %i.eg, 16
  %i.ei = sub nsw i32 %i.ef, %i.eh                ; 2 uses
  %i.ej = mul nsw i32 %i.dx, 54491
  %i.ek = ashr i32 %i.ej, 16
  %i.el = mul nsw i32 %i.dv, 36410
  %i.em = ashr i32 %i.el, 16
  %i.en = add nsw i32 %i.em, %i.ek                ; 2 uses
  %i.eo = mul nsw i32 %i.dv, 54491
  %i.ep = ashr i32 %i.eo, 16
  %i.eq = mul nsw i32 %i.dx, 36410
  %i.er = ashr i32 %i.eq, 16
  %i.es = sub nsw i32 %i.ep, %i.er                ; 2 uses
  %i.et = sub nsw i32 %i.ed, %i.en
  %i.eu = mul i32 %i.et, 46341
  %i.ev = ashr i32 %i.eu, 16                      ; 2 uses
  %i.ew = sub nsw i32 %i.ei, %i.es
  %i.ex = mul i32 %i.ew, 46341
  %i.ey = ashr i32 %i.ex, 16                      ; 2 uses
  %i.ez = add nsw i32 %i.ed, %i.en                ; 2 uses
  %i.fa = add nsw i32 %i.ei, %i.es                ; 2 uses
  %i.fb = load i16, ptr %.1267.i5, align 2, !tbaa !9
  %i.fc = sext i16 %i.fb to i32                   ; 2 uses
  %i.fd = add nsw i32 %i.fc, %i.dw
  %i.fe = mul i32 %i.fd, 46341
  %i.ff = ashr i32 %i.fe, 16
  %i.fg = sub nsw i32 %i.fc, %i.dw
  %i.fh = mul i32 %i.fg, 46341
  %i.fi = ashr i32 %i.fh, 16
  %i.fj = add nsw i32 %i.ff, 2056                 ; 2 uses
  %i.fk = add nsw i32 %i.fi, 2056                 ; 2 uses
  %i.fl = sext i16 %i.dd to i32                   ; 2 uses
  %i.fm = mul nsw i32 %i.fl, 60547
  %i.fn = ashr i32 %i.fm, 16
  %i.fo = sext i16 %i.dl to i32                   ; 2 uses
  %i.fp = mul nsw i32 %i.fo, 25080
  %i.fq = ashr i32 %i.fp, 16
  %i.fr = add nsw i32 %i.fq, %i.fn                ; 2 uses
  %i.fs = mul nsw i32 %i.fl, 25080
  %i.ft = ashr i32 %i.fs, 16
  %i.fu = mul nsw i32 %i.fo, 60547
  %i.fv = ashr i32 %i.fu, 16
  %i.fw = sub nsw i32 %i.ft, %i.fv                ; 2 uses
  %i.fx = sub nsw i32 %i.fj, %i.fr                ; 2 uses
  %i.fy = add nsw i32 %i.fj, %i.fr                ; 2 uses
  %i.fz = add nsw i32 %i.fk, %i.ev                ; 2 uses
  %i.ga = sub nsw i32 %i.ey, %i.fw                ; 2 uses
  %i.gb = sub nsw i32 %i.fk, %i.ev                ; 2 uses
  %i.gc = add nsw i32 %i.ey, %i.fw                ; 2 uses
  %i.gd = add nsw i32 %i.fy, %i.ez
  %i.ge = ashr i32 %i.gd, 4                       ; 3 uses
  %.not.i340.i = icmp ult i32 %i.ge, 256
  %isnotneg.i341.i = icmp sgt i32 %i.ge, -1
  %i.gf = sext i1 %isnotneg.i341.i to i8
  %i.gg = trunc nuw i32 %i.ge to i8
  %.0.i342.i = select i1 %.not.i340.i, i8 %i.gg, i8 %i.gf
  store i8 %.0.i342.i, ptr %.0.i7, align 1, !tbaa !11
  %i.gh = sub nsw i32 %i.fy, %i.ez
  %i.gi = ashr i32 %i.gh, 4                       ; 3 uses
  %.not.i337.i = icmp ult i32 %i.gi, 256
  %isnotneg.i338.i = icmp sgt i32 %i.gi, -1
  %i.gj = sext i1 %isnotneg.i338.i to i8
  %i.gk = trunc nuw i32 %i.gi to i8
  %.0.i339.i = select i1 %.not.i337.i, i8 %i.gk, i8 %i.gj
  %i.gl = getelementptr inbounds i8, ptr %.0.i7, i64 %i.a
  store i8 %.0.i339.i, ptr %i.gl, align 1, !tbaa !11
  %i.gm = add nsw i32 %i.fz, %i.gc
  %i.gn = ashr i32 %i.gm, 4                       ; 3 uses
  %.not.i334.i = icmp ult i32 %i.gn, 256
  %isnotneg.i335.i = icmp sgt i32 %i.gn, -1
  %i.go = sext i1 %isnotneg.i335.i to i8
  %i.gp = trunc nuw i32 %i.gn to i8
  %.0.i336.i = select i1 %.not.i334.i, i8 %i.gp, i8 %i.go
  %i.gq = getelementptr inbounds i8, ptr %.0.i7, i64 %1
  store i8 %.0.i336.i, ptr %i.gq, align 1, !tbaa !11
  %i.gr = sub nsw i32 %i.fz, %i.gc
  %i.gs = ashr i32 %i.gr, 4                       ; 3 uses
  %.not.i331.i = icmp ult i32 %i.gs, 256
  %isnotneg.i332.i = icmp sgt i32 %i.gs, -1
  %i.gt = sext i1 %isnotneg.i332.i to i8
  %i.gu = trunc nuw i32 %i.gs to i8
  %.0.i333.i = select i1 %.not.i331.i, i8 %i.gu, i8 %i.gt
  %i.gv = getelementptr inbounds i8, ptr %.0.i7, i64 %i.b
  store i8 %.0.i333.i, ptr %i.gv, align 1, !tbaa !11
  %i.gw = add nsw i32 %i.fx, %i.fa
  %i.gx = ashr i32 %i.gw, 4                       ; 3 uses
  %.not.i328.i = icmp ult i32 %i.gx, 256
  %isnotneg.i329.i = icmp sgt i32 %i.gx, -1
  %i.gy = sext i1 %isnotneg.i329.i to i8
  %i.gz = trunc nuw i32 %i.gx to i8
  %.0.i330.i = select i1 %.not.i328.i, i8 %i.gz, i8 %i.gy
  %i.ha = getelementptr inbounds i8, ptr %.0.i7, i64 %i.c
  store i8 %.0.i330.i, ptr %i.ha, align 1, !tbaa !11
  %i.hb = sub nsw i32 %i.fx, %i.fa
  %i.hc = ashr i32 %i.hb, 4                       ; 3 uses
  %.not.i325.i = icmp ult i32 %i.hc, 256
  %isnotneg.i326.i = icmp sgt i32 %i.hc, -1
  %i.hd = sext i1 %isnotneg.i326.i to i8
  %i.he = trunc nuw i32 %i.hc to i8
  %.0.i327.i = select i1 %.not.i325.i, i8 %i.he, i8 %i.hd
  %i.hf = getelementptr inbounds i8, ptr %.0.i7, i64 %i.d
  store i8 %.0.i327.i, ptr %i.hf, align 1, !tbaa !11
  %i.hg = add nsw i32 %i.gb, %i.ga
  %i.hh = ashr i32 %i.hg, 4                       ; 3 uses
  %.not.i322.i = icmp ult i32 %i.hh, 256
  %isnotneg.i323.i = icmp sgt i32 %i.hh, -1
  %i.hi = sext i1 %isnotneg.i323.i to i8
  %i.hj = trunc nuw i32 %i.hh to i8
  %.0.i324.i = select i1 %.not.i322.i, i8 %i.hj, i8 %i.hi
  %i.hk = getelementptr inbounds i8, ptr %.0.i7, i64 %i.e
  store i8 %.0.i324.i, ptr %i.hk, align 1, !tbaa !11
  %i.hl = sub nsw i32 %i.gb, %i.ga
  %i.hm = ashr i32 %i.hl, 4                       ; 3 uses
  %.not.i319.i = icmp ult i32 %i.hm, 256
  %isnotneg.i320.i = icmp sgt i32 %i.hm, -1
  %i.hn = sext i1 %isnotneg.i320.i to i8
  %i.ho = trunc nuw i32 %i.hm to i8
  %.0.i321.i = select i1 %.not.i319.i, i8 %i.ho, i8 %i.hn
  %i.hp = getelementptr inbounds i8, ptr %.0.i7, i64 %i.f
  store i8 %.0.i321.i, ptr %i.hp, align 1, !tbaa !11
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.hq = load i16, ptr %.1267.i5, align 2, !tbaa !9
  %i.hr = sext i16 %i.hq to i32
  %i.hs = mul nsw i32 %i.hr, 46341
  %i.ht = add nsw i32 %i.hs, 524288
  %i.hu = ashr i32 %i.ht, 20                      ; 2 uses
  %i.hv = add nsw i32 %i.hu, 128                  ; 2 uses
  %.not.i292.i = icmp ult i32 %i.hv, 256
  %isnotneg.i293.i = icmp sgt i32 %i.hu, -129
  %i.hw = sext i1 %isnotneg.i293.i to i8
  %i.hx = trunc nuw i32 %i.hv to i8
  %.0.i294.i = select i1 %.not.i292.i, i8 %i.hx, i8 %i.hw ; 8 uses
  %i.hy = getelementptr inbounds i8, ptr %.0.i7, i64 %i.a
  store i8 %.0.i294.i, ptr %i.hy, align 1, !tbaa !11
  %i.hz = getelementptr inbounds i8, ptr %.0.i7, i64 %i.f
  store i8 %.0.i294.i, ptr %i.hz, align 1, !tbaa !11
  %i.ia = getelementptr inbounds i8, ptr %.0.i7, i64 %i.e
  store i8 %.0.i294.i, ptr %i.ia, align 1, !tbaa !11
  %i.ib = getelementptr inbounds i8, ptr %.0.i7, i64 %i.d
  store i8 %.0.i294.i, ptr %i.ib, align 1, !tbaa !11
  %i.ic = getelementptr inbounds i8, ptr %.0.i7, i64 %i.c
  store i8 %.0.i294.i, ptr %i.ic, align 1, !tbaa !11
  %i.id = getelementptr inbounds i8, ptr %.0.i7, i64 %i.b
  store i8 %.0.i294.i, ptr %i.id, align 1, !tbaa !11
  %i.ie = getelementptr inbounds i8, ptr %.0.i7, i64 %1
  store i8 %.0.i294.i, ptr %i.ie, align 1, !tbaa !11
  store i8 %.0.i294.i, ptr %.0.i7, align 1, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.if = getelementptr inbounds nuw i8, ptr %.1267.i5, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i7, i64 1
  %i.ih = add nuw nsw i32 %.1.i6, 1               ; 2 uses
  %exitcond8.not = icmp eq i32 %i.ih, 8
  br i1 %exitcond8.not, label %idct.exit, label %bb.e, !llvm.loop !21

idct.exit:                                        ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @vp3_idct_add_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  br label %bb.b

.preheader:                                       ; preds = %bb.d
  %i.a = mul nsw i64 %1, 7                        ; 2 uses
  %i.b = shl nsw i64 %1, 1                        ; 2 uses
  %i.c = mul nsw i64 %1, 3                        ; 2 uses
  %i.d = shl nsw i64 %1, 2                        ; 2 uses
  %i.e = mul nsw i64 %1, 5                        ; 2 uses
  %i.f = mul nsw i64 %1, 6                        ; 2 uses
  br label %bb.e

bb.b:                                             ; preds = %bb.a, %bb.d
  %.0263.i4 = phi i32 [ 0, %bb.a ], [ %i.cz, %bb.d ]
  %.0266.i3 = phi ptr [ %2, %bb.a ], [ %i.cy, %bb.d ] ; 10 uses
  %i.g = load i16, ptr %.0266.i3, align 2, !tbaa !9
  %i.h = sext i16 %i.g to i32                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0266.i3, i64 16 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !9
  %i.k = sext i16 %i.j to i32                     ; 3 uses
  %i.l = or i32 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %.0266.i3, i64 32 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !9
  %i.o = sext i16 %i.n to i32                     ; 3 uses
  %i.p = or i32 %i.l, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.0266.i3, i64 48 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !9
  %i.s = sext i16 %i.r to i32                     ; 3 uses
  %i.t = or i32 %i.p, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.0266.i3, i64 64 ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !9
  %i.w = sext i16 %i.v to i32                     ; 3 uses
  %i.x = or i32 %i.t, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.0266.i3, i64 80 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !9
  %i.aa = sext i16 %i.z to i32                    ; 3 uses
  %i.ab = or i32 %i.x, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.0266.i3, i64 96 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !9
  %i.ae = sext i16 %i.ad to i32                   ; 3 uses
  %i.af = or i32 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.0266.i3, i64 112 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !9
  %i.ai = sext i16 %i.ah to i32                   ; 3 uses
  %i.aj = or i32 %i.af, %i.ai
  %.not270.i = icmp eq i32 %i.aj, 0
  br i1 %.not270.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = mul nsw i32 %i.k, 64277
  %i.al = ashr i32 %i.ak, 16
  %i.am = mul nsw i32 %i.ai, 12785
  %i.an = ashr i32 %i.am, 16
  %i.ao = add nsw i32 %i.an, %i.al                ; 2 uses
  %i.ap = mul nsw i32 %i.k, 12785
  %i.aq = ashr i32 %i.ap, 16
  %i.ar = mul nsw i32 %i.ai, 64277
  %i.as = ashr i32 %i.ar, 16
  %i.at = sub nsw i32 %i.aq, %i.as                ; 2 uses
  %i.au = mul nsw i32 %i.s, 54491
  %i.av = ashr i32 %i.au, 16
  %i.aw = mul nsw i32 %i.aa, 36410
  %i.ax = ashr i32 %i.aw, 16
  %i.ay = add nsw i32 %i.ax, %i.av                ; 2 uses
  %i.az = mul nsw i32 %i.aa, 54491
  %i.ba = ashr i32 %i.az, 16
  %i.bb = mul nsw i32 %i.s, 36410
  %i.bc = ashr i32 %i.bb, 16
  %i.bd = sub nsw i32 %i.ba, %i.bc                ; 2 uses
  %i.be = sub nsw i32 %i.ao, %i.ay
  %i.bf = mul i32 %i.be, 46341
  %i.bg = ashr i32 %i.bf, 16                      ; 2 uses
  %i.bh = sub nsw i32 %i.at, %i.bd
  %i.bi = mul i32 %i.bh, 46341
  %i.bj = ashr i32 %i.bi, 16                      ; 2 uses
  %i.bk = add nsw i32 %i.ao, %i.ay                ; 2 uses
  %i.bl = add nsw i32 %i.at, %i.bd                ; 2 uses
  %i.bm = add nsw i32 %i.w, %i.h
  %i.bn = mul i32 %i.bm, 46341
  %i.bo = ashr i32 %i.bn, 16                      ; 2 uses
  %i.bp = sub nsw i32 %i.h, %i.w
  %i.bq = mul i32 %i.bp, 46341
  %i.br = ashr i32 %i.bq, 16                      ; 2 uses
  %i.bs = mul nsw i32 %i.o, 60547
  %i.bt = ashr i32 %i.bs, 16
  %i.bu = mul nsw i32 %i.ae, 25080
  %i.bv = ashr i32 %i.bu, 16
  %i.bw = add nsw i32 %i.bv, %i.bt                ; 2 uses
  %i.bx = mul nsw i32 %i.o, 25080
  %i.by = ashr i32 %i.bx, 16
  %i.bz = mul nsw i32 %i.ae, 60547
  %i.ca = ashr i32 %i.bz, 16
  %i.cb = sub nsw i32 %i.by, %i.ca                ; 2 uses
  %i.cc = sub nsw i32 %i.bo, %i.bw                ; 2 uses
  %i.cd = add nsw i32 %i.bw, %i.bo                ; 2 uses
  %i.ce = add nsw i32 %i.bg, %i.br                ; 2 uses
  %i.cf = sub nsw i32 %i.bj, %i.cb                ; 2 uses
  %i.cg = sub nsw i32 %i.br, %i.bg                ; 2 uses
  %i.ch = add nsw i32 %i.bj, %i.cb                ; 2 uses
  %i.ci = add nsw i32 %i.bk, %i.cd
  %i.cj = trunc i32 %i.ci to i16
  store i16 %i.cj, ptr %.0266.i3, align 2, !tbaa !9
  %i.ck = sub nsw i32 %i.cd, %i.bk
  %i.cl = trunc i32 %i.ck to i16
  store i16 %i.cl, ptr %i.ag, align 2, !tbaa !9
  %i.cm = add nsw i32 %i.ce, %i.ch
  %i.cn = trunc i32 %i.cm to i16
  store i16 %i.cn, ptr %i.i, align 2, !tbaa !9
  %i.co = sub nsw i32 %i.ce, %i.ch
  %i.cp = trunc i32 %i.co to i16
  store i16 %i.cp, ptr %i.m, align 2, !tbaa !9
  %i.cq = add nsw i32 %i.bl, %i.cc
  %i.cr = trunc i32 %i.cq to i16
  store i16 %i.cr, ptr %i.q, align 2, !tbaa !9
  %i.cs = sub nsw i32 %i.cc, %i.bl
  %i.ct = trunc i32 %i.cs to i16
  store i16 %i.ct, ptr %i.u, align 2, !tbaa !9
  %i.cu = add nsw i32 %i.cg, %i.cf
  %i.cv = trunc i32 %i.cu to i16
  store i16 %i.cv, ptr %i.y, align 2, !tbaa !9
  %i.cw = sub nsw i32 %i.cg, %i.cf
  %i.cx = trunc i32 %i.cw to i16
  store i16 %i.cx, ptr %i.ac, align 2, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cy = getelementptr inbounds nuw i8, ptr %.0266.i3, i64 2
  %i.cz = add nuw nsw i32 %.0263.i4, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cz, 8
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !20

bb.e:                                             ; preds = %.preheader, %bb.i
  %.0.i7 = phi ptr [ %0, %.preheader ], [ %i.kp, %bb.i ] ; 19 uses
  %.1.i6 = phi i32 [ 0, %.preheader ], [ %i.kq, %bb.i ]
  %.1267.i5 = phi ptr [ %2, %.preheader ], [ %i.ko, %bb.i ] ; 10 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1267.i5, i64 2
  %i.db = load i16, ptr %i.da, align 2, !tbaa !9  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.1267.i5, i64 4
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !9  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.1267.i5, i64 6
  %i.df = load i16, ptr %i.de, align 2, !tbaa !9  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1267.i5, i64 8
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !9  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.1267.i5, i64 10
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !9  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.1267.i5, i64 12
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !9  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.1267.i5, i64 14
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !9  ; 2 uses
  %i.do = or i16 %i.dd, %i.db
  %i.dp = or i16 %i.do, %i.df
  %i.dq = or i16 %i.dp, %i.dh
  %i.dr = or i16 %i.dq, %i.dj
  %i.ds = or i16 %i.dr, %i.dl
  %i.dt = or i16 %i.ds, %i.dn
  %.not.i = icmp eq i16 %i.dt, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.du = sext i16 %i.dn to i32                   ; 2 uses
  %i.dv = sext i16 %i.dj to i32                   ; 2 uses
  %i.dw = sext i16 %i.dh to i32                   ; 2 uses
  %i.dx = sext i16 %i.df to i32                   ; 2 uses
  %i.dy = sext i16 %i.db to i32                   ; 2 uses
  %i.dz = mul nsw i32 %i.dy, 64277
  %i.ea = ashr i32 %i.dz, 16
  %i.eb = mul nsw i32 %i.du, 12785
  %i.ec = ashr i32 %i.eb, 16
  %i.ed = add nsw i32 %i.ec, %i.ea                ; 2 uses
  %i.ee = mul nsw i32 %i.dy, 12785
  %i.ef = ashr i32 %i.ee, 16
  %i.eg = mul nsw i32 %i.du, 64277
  %i.eh = ashr i32 %i.eg, 16
  %i.ei = sub nsw i32 %i.ef, %i.eh                ; 2 uses
  %i.ej = mul nsw i32 %i.dx, 54491
  %i.ek = ashr i32 %i.ej, 16
  %i.el = mul nsw i32 %i.dv, 36410
  %i.em = ashr i32 %i.el, 16
  %i.en = add nsw i32 %i.em, %i.ek                ; 2 uses
  %i.eo = mul nsw i32 %i.dv, 54491
  %i.ep = ashr i32 %i.eo, 16
  %i.eq = mul nsw i32 %i.dx, 36410
  %i.er = ashr i32 %i.eq, 16
  %i.es = sub nsw i32 %i.ep, %i.er                ; 2 uses
  %i.et = sub nsw i32 %i.ed, %i.en
  %i.eu = mul i32 %i.et, 46341
  %i.ev = ashr i32 %i.eu, 16                      ; 2 uses
  %i.ew = sub nsw i32 %i.ei, %i.es
  %i.ex = mul i32 %i.ew, 46341
  %i.ey = ashr i32 %i.ex, 16                      ; 2 uses
  %i.ez = add nsw i32 %i.ed, %i.en                ; 2 uses
  %i.fa = add nsw i32 %i.ei, %i.es                ; 2 uses
  %i.fb = load i16, ptr %.1267.i5, align 2, !tbaa !9
  %i.fc = sext i16 %i.fb to i32                   ; 2 uses
  %i.fd = add nsw i32 %i.fc, %i.dw
  %i.fe = mul i32 %i.fd, 46341
  %i.ff = ashr i32 %i.fe, 16
  %i.fg = add nsw i32 %i.ff, 8                    ; 2 uses
  %i.fh = sub nsw i32 %i.fc, %i.dw
  %i.fi = mul i32 %i.fh, 46341
  %i.fj = ashr i32 %i.fi, 16
  %i.fk = add nsw i32 %i.fj, 8                    ; 2 uses
  %i.fl = sext i16 %i.dd to i32                   ; 2 uses
  %i.fm = mul nsw i32 %i.fl, 60547
  %i.fn = ashr i32 %i.fm, 16
  %i.fo = sext i16 %i.dl to i32                   ; 2 uses
  %i.fp = mul nsw i32 %i.fo, 25080
  %i.fq = ashr i32 %i.fp, 16
  %i.fr = add nsw i32 %i.fq, %i.fn                ; 2 uses
  %i.fs = mul nsw i32 %i.fl, 25080
  %i.ft = ashr i32 %i.fs, 16
  %i.fu = mul nsw i32 %i.fo, 60547
  %i.fv = ashr i32 %i.fu, 16
  %i.fw = sub nsw i32 %i.ft, %i.fv                ; 2 uses
  %i.fx = sub nsw i32 %i.fg, %i.fr                ; 2 uses
  %i.fy = add nsw i32 %i.fg, %i.fr                ; 2 uses
  %i.fz = add nsw i32 %i.fk, %i.ev                ; 2 uses
  %i.ga = sub nsw i32 %i.ey, %i.fw                ; 2 uses
  %i.gb = sub nsw i32 %i.fk, %i.ev                ; 2 uses
  %i.gc = add nsw i32 %i.ey, %i.fw                ; 2 uses
  %i.gd = load i8, ptr %.0.i7, align 1, !tbaa !11
  %i.ge = zext i8 %i.gd to i32
  %i.gf = add nsw i32 %i.fy, %i.ez
  %i.gg = ashr i32 %i.gf, 4
  %i.gh = add nsw i32 %i.gg, %i.ge                ; 3 uses
  %.not.i316.i = icmp ult i32 %i.gh, 256
  %isnotneg.i317.i = icmp sgt i32 %i.gh, -1
  %i.gi = sext i1 %isnotneg.i317.i to i8
  %i.gj = trunc nuw i32 %i.gh to i8
  %.0.i318.i = select i1 %.not.i316.i, i8 %i.gj, i8 %i.gi
  store i8 %.0.i318.i, ptr %.0.i7, align 1, !tbaa !11
  %i.gk = getelementptr inbounds i8, ptr %.0.i7, i64 %i.a ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !11
  %i.gm = zext i8 %i.gl to i32
  %i.gn = sub nsw i32 %i.fy, %i.ez
  %i.go = ashr i32 %i.gn, 4
  %i.gp = add nsw i32 %i.go, %i.gm                ; 3 uses
  %.not.i313.i = icmp ult i32 %i.gp, 256
  %isnotneg.i314.i = icmp sgt i32 %i.gp, -1
  %i.gq = sext i1 %isnotneg.i314.i to i8
  %i.gr = trunc nuw i32 %i.gp to i8
  %.0.i315.i = select i1 %.not.i313.i, i8 %i.gr, i8 %i.gq
  store i8 %.0.i315.i, ptr %i.gk, align 1, !tbaa !11
  %i.gs = getelementptr inbounds i8, ptr %.0.i7, i64 %1 ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !11
  %i.gu = zext i8 %i.gt to i32
  %i.gv = add nsw i32 %i.fz, %i.gc
  %i.gw = ashr i32 %i.gv, 4
  %i.gx = add nsw i32 %i.gw, %i.gu                ; 3 uses
  %.not.i310.i = icmp ult i32 %i.gx, 256
  %isnotneg.i311.i = icmp sgt i32 %i.gx, -1
  %i.gy = sext i1 %isnotneg.i311.i to i8
  %i.gz = trunc nuw i32 %i.gx to i8
  %.0.i312.i = select i1 %.not.i310.i, i8 %i.gz, i8 %i.gy
  store i8 %.0.i312.i, ptr %i.gs, align 1, !tbaa !11
  %i.ha = getelementptr inbounds i8, ptr %.0.i7, i64 %i.b ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !11
  %i.hc = zext i8 %i.hb to i32
  %i.hd = sub nsw i32 %i.fz, %i.gc
  %i.he = ashr i32 %i.hd, 4
  %i.hf = add nsw i32 %i.he, %i.hc                ; 3 uses
  %.not.i307.i = icmp ult i32 %i.hf, 256
  %isnotneg.i308.i = icmp sgt i32 %i.hf, -1
  %i.hg = sext i1 %isnotneg.i308.i to i8
  %i.hh = trunc nuw i32 %i.hf to i8
  %.0.i309.i = select i1 %.not.i307.i, i8 %i.hh, i8 %i.hg
  store i8 %.0.i309.i, ptr %i.ha, align 1, !tbaa !11
  %i.hi = getelementptr inbounds i8, ptr %.0.i7, i64 %i.c ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !11
  %i.hk = zext i8 %i.hj to i32
  %i.hl = add nsw i32 %i.fx, %i.fa
  %i.hm = ashr i32 %i.hl, 4
  %i.hn = add nsw i32 %i.hm, %i.hk                ; 3 uses
  %.not.i304.i = icmp ult i32 %i.hn, 256
  %isnotneg.i305.i = icmp sgt i32 %i.hn, -1
  %i.ho = sext i1 %isnotneg.i305.i to i8
  %i.hp = trunc nuw i32 %i.hn to i8
  %.0.i306.i = select i1 %.not.i304.i, i8 %i.hp, i8 %i.ho
  store i8 %.0.i306.i, ptr %i.hi, align 1, !tbaa !11
  %i.hq = getelementptr inbounds i8, ptr %.0.i7, i64 %i.d ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !11
  %i.hs = zext i8 %i.hr to i32
  %i.ht = sub nsw i32 %i.fx, %i.fa
  %i.hu = ashr i32 %i.ht, 4
  %i.hv = add nsw i32 %i.hu, %i.hs                ; 3 uses
  %.not.i301.i = icmp ult i32 %i.hv, 256
  %isnotneg.i302.i = icmp sgt i32 %i.hv, -1
  %i.hw = sext i1 %isnotneg.i302.i to i8
  %i.hx = trunc nuw i32 %i.hv to i8
  %.0.i303.i = select i1 %.not.i301.i, i8 %i.hx, i8 %i.hw
  store i8 %.0.i303.i, ptr %i.hq, align 1, !tbaa !11
  %i.hy = getelementptr inbounds i8, ptr %.0.i7, i64 %i.e ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !11
  %i.ia = zext i8 %i.hz to i32
  %i.ib = add nsw i32 %i.gb, %i.ga
  %i.ic = ashr i32 %i.ib, 4
  %i.id = add nsw i32 %i.ic, %i.ia                ; 3 uses
  %.not.i298.i = icmp ult i32 %i.id, 256
  %isnotneg.i299.i = icmp sgt i32 %i.id, -1
  %i.ie = sext i1 %isnotneg.i299.i to i8
  %i.if = trunc nuw i32 %i.id to i8
  %.0.i300.i = select i1 %.not.i298.i, i8 %i.if, i8 %i.ie
  store i8 %.0.i300.i, ptr %i.hy, align 1, !tbaa !11
  %i.ig = getelementptr inbounds i8, ptr %.0.i7, i64 %i.f ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !11
  %i.ii = zext i8 %i.ih to i32
  %i.ij = sub nsw i32 %i.gb, %i.ga
  %i.ik = ashr i32 %i.ij, 4
  %i.il = add nsw i32 %i.ik, %i.ii                ; 3 uses
  %.not.i295.i = icmp ult i32 %i.il, 256
  %isnotneg.i296.i = icmp sgt i32 %i.il, -1
  %i.im = sext i1 %isnotneg.i296.i to i8
  %i.in = trunc nuw i32 %i.il to i8
  %.0.i297.i = select i1 %.not.i295.i, i8 %i.in, i8 %i.im
  store i8 %.0.i297.i, ptr %i.ig, align 1, !tbaa !11
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.io = load i16, ptr %.1267.i5, align 2, !tbaa !9 ; 2 uses
  %.not269.i = icmp eq i16 %i.io, 0
  br i1 %.not269.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ip = sext i16 %i.io to i32
  %i.iq = mul nsw i32 %i.ip, 46341
  %i.ir = add nsw i32 %i.iq, 524288
  %i.is = ashr i32 %i.ir, 20                      ; 8 uses
  %i.it = load i8, ptr %.0.i7, align 1, !tbaa !11
  %i.iu = zext i8 %i.it to i32
  %i.iv = add nsw i32 %i.is, %i.iu                ; 3 uses
  %.not.i289.i = icmp ult i32 %i.iv, 256
  %isnotneg.i290.i = icmp sgt i32 %i.iv, -1
  %i.iw = sext i1 %isnotneg.i290.i to i8
  %i.ix = trunc nuw i32 %i.iv to i8
  %.0.i291.i = select i1 %.not.i289.i, i8 %i.ix, i8 %i.iw
  store i8 %.0.i291.i, ptr %.0.i7, align 1, !tbaa !11
  %i.iy = getelementptr inbounds i8, ptr %.0.i7, i64 %1 ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !11
  %i.ja = zext i8 %i.iz to i32
  %i.jb = add nsw i32 %i.is, %i.ja                ; 3 uses
  %.not.i286.i = icmp ult i32 %i.jb, 256
  %isnotneg.i287.i = icmp sgt i32 %i.jb, -1
  %i.jc = sext i1 %isnotneg.i287.i to i8
  %i.jd = trunc nuw i32 %i.jb to i8
  %.0.i288.i = select i1 %.not.i286.i, i8 %i.jd, i8 %i.jc
  store i8 %.0.i288.i, ptr %i.iy, align 1, !tbaa !11
  %i.je = getelementptr inbounds i8, ptr %.0.i7, i64 %i.b ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !11
  %i.jg = zext i8 %i.jf to i32
  %i.jh = add nsw i32 %i.is, %i.jg                ; 3 uses
  %.not.i283.i = icmp ult i32 %i.jh, 256
  %isnotneg.i284.i = icmp sgt i32 %i.jh, -1
  %i.ji = sext i1 %isnotneg.i284.i to i8
  %i.jj = trunc nuw i32 %i.jh to i8
  %.0.i285.i = select i1 %.not.i283.i, i8 %i.jj, i8 %i.ji
  store i8 %.0.i285.i, ptr %i.je, align 1, !tbaa !11
  %i.jk = getelementptr inbounds i8, ptr %.0.i7, i64 %i.c ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !11
  %i.jm = zext i8 %i.jl to i32
  %i.jn = add nsw i32 %i.is, %i.jm                ; 3 uses
  %.not.i280.i = icmp ult i32 %i.jn, 256
  %isnotneg.i281.i = icmp sgt i32 %i.jn, -1
  %i.jo = sext i1 %isnotneg.i281.i to i8
  %i.jp = trunc nuw i32 %i.jn to i8
  %.0.i282.i = select i1 %.not.i280.i, i8 %i.jp, i8 %i.jo
  store i8 %.0.i282.i, ptr %i.jk, align 1, !tbaa !11
  %i.jq = getelementptr inbounds i8, ptr %.0.i7, i64 %i.d ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !11
  %i.js = zext i8 %i.jr to i32
  %i.jt = add nsw i32 %i.is, %i.js                ; 3 uses
  %.not.i277.i = icmp ult i32 %i.jt, 256
  %isnotneg.i278.i = icmp sgt i32 %i.jt, -1
  %i.ju = sext i1 %isnotneg.i278.i to i8
  %i.jv = trunc nuw i32 %i.jt to i8
  %.0.i279.i = select i1 %.not.i277.i, i8 %i.jv, i8 %i.ju
  store i8 %.0.i279.i, ptr %i.jq, align 1, !tbaa !11
  %i.jw = getelementptr inbounds i8, ptr %.0.i7, i64 %i.e ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !11
  %i.jy = zext i8 %i.jx to i32
  %i.jz = add nsw i32 %i.is, %i.jy                ; 3 uses
  %.not.i274.i = icmp ult i32 %i.jz, 256
  %isnotneg.i275.i = icmp sgt i32 %i.jz, -1
  %i.ka = sext i1 %isnotneg.i275.i to i8
  %i.kb = trunc nuw i32 %i.jz to i8
  %.0.i276.i = select i1 %.not.i274.i, i8 %i.kb, i8 %i.ka
  store i8 %.0.i276.i, ptr %i.jw, align 1, !tbaa !11
  %i.kc = getelementptr inbounds i8, ptr %.0.i7, i64 %i.f ; 2 uses
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !11
  %i.ke = zext i8 %i.kd to i32
  %i.kf = add nsw i32 %i.is, %i.ke                ; 3 uses
  %.not.i271.i = icmp ult i32 %i.kf, 256
  %isnotneg.i272.i = icmp sgt i32 %i.kf, -1
  %i.kg = sext i1 %isnotneg.i272.i to i8
  %i.kh = trunc nuw i32 %i.kf to i8
  %.0.i273.i = select i1 %.not.i271.i, i8 %i.kh, i8 %i.kg
  store i8 %.0.i273.i, ptr %i.kc, align 1, !tbaa !11
  %i.ki = getelementptr inbounds i8, ptr %.0.i7, i64 %i.a ; 2 uses
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !11
  %i.kk = zext i8 %i.kj to i32
  %i.kl = add nsw i32 %i.is, %i.kk                ; 3 uses
  %.not.i.i = icmp ult i32 %i.kl, 256
  %isnotneg.i.i = icmp sgt i32 %i.kl, -1
  %i.km = sext i1 %isnotneg.i.i to i8
  %i.kn = trunc nuw i32 %i.kl to i8
  %.0.i.i = select i1 %.not.i.i, i8 %i.kn, i8 %i.km
  store i8 %.0.i.i, ptr %i.ki, align 1, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ko = getelementptr inbounds nuw i8, ptr %.1267.i5, i64 16
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i7, i64 1
  %i.kq = add nuw nsw i32 %.1.i6, 1               ; 2 uses
  %exitcond8.not = icmp eq i32 %i.kq, 8
  br i1 %exitcond8.not, label %idct.exit, label %bb.e, !llvm.loop !21

idct.exit:                                        ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @vp3_idct_dc_add_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #0 {
.lver.check:
  %i.a = load i16, ptr %2, align 2, !tbaa !9
  %i.b = sext i16 %i.a to i32
  %i.c = add nsw i32 %i.b, 15
  %i.d = ashr i32 %i.c, 5                         ; 16 uses
  %ident.check.not = icmp eq i64 %1, 1
  br i1 %ident.check.not, label %.loopexit.loopexit, label %.ph.lver.orig

.ph.lver.orig:                                    ; preds = %.lver.check
  %i.e = load <8 x i8>, ptr %0, align 1, !tbaa !11
  %i.f = zext <8 x i8> %i.e to <8 x i16>
  %i.g = trunc nsw i32 %i.d to i16
  %i.h = insertelement <8 x i16> poison, i16 %i.g, i64 0
  %i.i = shufflevector <8 x i16> %i.h, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.j = add <8 x i16> %i.i, %i.f                 ; 3 uses
  %i.k = icmp ult <8 x i16> %i.j, splat (i16 256)
  %i.l = icmp sgt <8 x i16> %i.j, splat (i16 -1)
  %i.m = sext <8 x i1> %i.l to <8 x i8>
  %i.n = trunc <8 x i16> %i.j to <8 x i8>
  %i.o = select <8 x i1> %i.k, <8 x i8> %i.n, <8 x i8> %i.m
  store <8 x i8> %i.o, ptr %0, align 1, !tbaa !11
  %i.p = getelementptr inbounds i8, ptr %0, i64 %1 ; 3 uses
  %i.q = load <8 x i8>, ptr %i.p, align 1, !tbaa !11
  %i.r = zext <8 x i8> %i.q to <8 x i16>
  %i.s = trunc nsw i32 %i.d to i16
  %i.t = insertelement <8 x i16> poison, i16 %i.s, i64 0
  %i.u = shufflevector <8 x i16> %i.t, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.v = add <8 x i16> %i.u, %i.r                 ; 3 uses
  %i.w = icmp ult <8 x i16> %i.v, splat (i16 256)
  %i.x = icmp sgt <8 x i16> %i.v, splat (i16 -1)
  %i.y = sext <8 x i1> %i.x to <8 x i8>
  %i.z = trunc <8 x i16> %i.v to <8 x i8>
  %i.aa = select <8 x i1> %i.w, <8 x i8> %i.z, <8 x i8> %i.y
  store <8 x i8> %i.aa, ptr %i.p, align 1, !tbaa !11
  %i.ab = getelementptr inbounds i8, ptr %i.p, i64 %1 ; 3 uses
  %i.ac = load <8 x i8>, ptr %i.ab, align 1, !tbaa !11
  %i.ad = zext <8 x i8> %i.ac to <8 x i16>
  %i.ae = trunc nsw i32 %i.d to i16
  %i.af = insertelement <8 x i16> poison, i16 %i.ae, i64 0
  %i.ag = shufflevector <8 x i16> %i.af, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ah = add <8 x i16> %i.ag, %i.ad              ; 3 uses
  %i.ai = icmp ult <8 x i16> %i.ah, splat (i16 256)
  %i.aj = icmp sgt <8 x i16> %i.ah, splat (i16 -1)
  %i.ak = sext <8 x i1> %i.aj to <8 x i8>
  %i.al = trunc <8 x i16> %i.ah to <8 x i8>
  %i.am = select <8 x i1> %i.ai, <8 x i8> %i.al, <8 x i8> %i.ak
  store <8 x i8> %i.am, ptr %i.ab, align 1, !tbaa !11
  %i.an = getelementptr inbounds i8, ptr %i.ab, i64 %1 ; 3 uses
  %i.ao = load <8 x i8>, ptr %i.an, align 1, !tbaa !11
  %i.ap = zext <8 x i8> %i.ao to <8 x i16>
  %i.aq = trunc nsw i32 %i.d to i16
  %i.ar = insertelement <8 x i16> poison, i16 %i.aq, i64 0
  %i.as = shufflevector <8 x i16> %i.ar, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.at = add <8 x i16> %i.as, %i.ap              ; 3 uses
  %i.au = icmp ult <8 x i16> %i.at, splat (i16 256)
  %i.av = icmp sgt <8 x i16> %i.at, splat (i16 -1)
  %i.aw = sext <8 x i1> %i.av to <8 x i8>
  %i.ax = trunc <8 x i16> %i.at to <8 x i8>
  %i.ay = select <8 x i1> %i.au, <8 x i8> %i.ax, <8 x i8> %i.aw
  store <8 x i8> %i.ay, ptr %i.an, align 1, !tbaa !11
  %i.az = getelementptr inbounds i8, ptr %i.an, i64 %1 ; 3 uses
  %i.ba = load <8 x i8>, ptr %i.az, align 1, !tbaa !11
  %i.bb = zext <8 x i8> %i.ba to <8 x i16>
  %i.bc = trunc nsw i32 %i.d to i16
  %i.bd = insertelement <8 x i16> poison, i16 %i.bc, i64 0
  %i.be = shufflevector <8 x i16> %i.bd, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bf = add <8 x i16> %i.be, %i.bb              ; 3 uses
  %i.bg = icmp ult <8 x i16> %i.bf, splat (i16 256)
  %i.bh = icmp sgt <8 x i16> %i.bf, splat (i16 -1)
  %i.bi = sext <8 x i1> %i.bh to <8 x i8>
  %i.bj = trunc <8 x i16> %i.bf to <8 x i8>
  %i.bk = select <8 x i1> %i.bg, <8 x i8> %i.bj, <8 x i8> %i.bi
  store <8 x i8> %i.bk, ptr %i.az, align 1, !tbaa !11
  %i.bl = getelementptr inbounds i8, ptr %i.az, i64 %1 ; 3 uses
  %i.bm = load <8 x i8>, ptr %i.bl, align 1, !tbaa !11
  %i.bn = zext <8 x i8> %i.bm to <8 x i16>
  %i.bo = trunc nsw i32 %i.d to i16
  %i.bp = insertelement <8 x i16> poison, i16 %i.bo, i64 0
  %i.bq = shufflevector <8 x i16> %i.bp, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.br = add <8 x i16> %i.bq, %i.bn              ; 3 uses
  %i.bs = icmp ult <8 x i16> %i.br, splat (i16 256)
  %i.bt = icmp sgt <8 x i16> %i.br, splat (i16 -1)
  %i.bu = sext <8 x i1> %i.bt to <8 x i8>
  %i.bv = trunc <8 x i16> %i.br to <8 x i8>
  %i.bw = select <8 x i1> %i.bs, <8 x i8> %i.bv, <8 x i8> %i.bu
  store <8 x i8> %i.bw, ptr %i.bl, align 1, !tbaa !11
  %i.bx = getelementptr inbounds i8, ptr %i.bl, i64 %1 ; 3 uses
  %i.by = load <8 x i8>, ptr %i.bx, align 1, !tbaa !11
  %i.bz = zext <8 x i8> %i.by to <8 x i16>
  %i.ca = trunc nsw i32 %i.d to i16
  %i.cb = insertelement <8 x i16> poison, i16 %i.ca, i64 0
  %i.cc = shufflevector <8 x i16> %i.cb, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cd = add <8 x i16> %i.cc, %i.bz              ; 3 uses
  %i.ce = icmp ult <8 x i16> %i.cd, splat (i16 256)
  %i.cf = icmp sgt <8 x i16> %i.cd, splat (i16 -1)
  %i.cg = sext <8 x i1> %i.cf to <8 x i8>
  %i.ch = trunc <8 x i16> %i.cd to <8 x i8>
  %i.ci = select <8 x i1> %i.ce, <8 x i8> %i.ch, <8 x i8> %i.cg
  store <8 x i8> %i.ci, ptr %i.bx, align 1, !tbaa !11
  %i.cj = getelementptr inbounds i8, ptr %i.bx, i64 %1 ; 2 uses
  %i.ck = load <8 x i8>, ptr %i.cj, align 1, !tbaa !11
  %i.cl = zext <8 x i8> %i.ck to <8 x i16>
  %i.cm = trunc nsw i32 %i.d to i16
  %i.cn = insertelement <8 x i16> poison, i16 %i.cm, i64 0
  %i.co = shufflevector <8 x i16> %i.cn, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cp = add <8 x i16> %i.co, %i.cl              ; 3 uses
  %i.cq = icmp ult <8 x i16> %i.cp, splat (i16 256)
  %i.cr = icmp sgt <8 x i16> %i.cp, splat (i16 -1)
  %i.cs = sext <8 x i1> %i.cr to <8 x i8>
  %i.ct = trunc <8 x i16> %i.cp to <8 x i8>
  %i.cu = select <8 x i1> %i.cq, <8 x i8> %i.ct, <8 x i8> %i.cs
  store <8 x i8> %i.cu, ptr %i.cj, align 1, !tbaa !11
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lver.check
  %scevgep = getelementptr i8, ptr %0, i64 6
  %load_initial = load i8, ptr %scevgep, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !11
  %i.cy = load <4 x i8>, ptr %0, align 1, !tbaa !11
  %i.cz = load <2 x i8>, ptr %i.cv, align 1, !tbaa !11
  %i.da = shufflevector <2 x i8> %i.cz, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.db = shufflevector <4 x i8> %i.cy, <4 x i8> %i.da, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.dc = insertelement <8 x i8> %i.db, i8 %load_initial, i64 6
  %i.dd = insertelement <8 x i8> %i.dc, i8 %i.cx, i64 7
  %i.de = zext <8 x i8> %i.dd to <8 x i16>
  %i.df = trunc nsw i32 %i.d to i16
  %i.dg = insertelement <8 x i16> poison, i16 %i.df, i64 0
  %i.dh = shufflevector <8 x i16> %i.dg, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.di = add <8 x i16> %i.dh, %i.de              ; 3 uses
  %i.dj = icmp ult <8 x i16> %i.di, splat (i16 256)
  %i.dk = icmp sgt <8 x i16> %i.di, splat (i16 -1)
  %i.dl = sext <8 x i1> %i.dk to <8 x i8>
  %i.dm = trunc <8 x i16> %i.di to <8 x i8>
  %i.dn = select <8 x i1> %i.dj, <8 x i8> %i.dm, <8 x i8> %i.dl ; 2 uses
  store <8 x i8> %i.dn, ptr %0, align 1, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 5 uses
  %i.dp = extractelement <8 x i8> %i.dn, i64 7
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 7
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !11
  %i.dt = load <4 x i8>, ptr %i.do, align 1, !tbaa !11
  %i.du = load <2 x i8>, ptr %i.dq, align 1, !tbaa !11
  %i.dv = shufflevector <2 x i8> %i.du, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dw = shufflevector <4 x i8> %i.dt, <4 x i8> %i.dv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.dx = insertelement <8 x i8> %i.dw, i8 %i.dp, i64 6
  %i.dy = insertelement <8 x i8> %i.dx, i8 %i.ds, i64 7
  %i.dz = zext <8 x i8> %i.dy to <8 x i16>
  %i.ea = trunc nsw i32 %i.d to i16
  %i.eb = insertelement <8 x i16> poison, i16 %i.ea, i64 0
  %i.ec = shufflevector <8 x i16> %i.eb, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ed = add <8 x i16> %i.ec, %i.dz              ; 3 uses
  %i.ee = icmp ult <8 x i16> %i.ed, splat (i16 256)
  %i.ef = icmp sgt <8 x i16> %i.ed, splat (i16 -1)
  %i.eg = sext <8 x i1> %i.ef to <8 x i8>
  %i.eh = trunc <8 x i16> %i.ed to <8 x i8>
  %i.ei = select <8 x i1> %i.ee, <8 x i8> %i.eh, <8 x i8> %i.eg ; 2 uses
  store <8 x i8> %i.ei, ptr %i.do, align 1, !tbaa !11
  %i.ej = getelementptr inbounds nuw i8, ptr %i.do, i64 %1 ; 5 uses
  %i.ek = extractelement <8 x i8> %i.ei, i64 7
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 7
  %i.en = load i8, ptr %i.em, align 1, !tbaa !11
  %i.eo = load <4 x i8>, ptr %i.ej, align 1, !tbaa !11
  %i.ep = load <2 x i8>, ptr %i.el, align 1, !tbaa !11
  %i.eq = shufflevector <2 x i8> %i.ep, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.er = shufflevector <4 x i8> %i.eo, <4 x i8> %i.eq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.es = insertelement <8 x i8> %i.er, i8 %i.ek, i64 6
  %i.et = insertelement <8 x i8> %i.es, i8 %i.en, i64 7
  %i.eu = zext <8 x i8> %i.et to <8 x i16>
  %i.ev = trunc nsw i32 %i.d to i16
  %i.ew = insertelement <8 x i16> poison, i16 %i.ev, i64 0
  %i.ex = shufflevector <8 x i16> %i.ew, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ey = add <8 x i16> %i.ex, %i.eu              ; 3 uses
  %i.ez = icmp ult <8 x i16> %i.ey, splat (i16 256)
  %i.fa = icmp sgt <8 x i16> %i.ey, splat (i16 -1)
  %i.fb = sext <8 x i1> %i.fa to <8 x i8>
  %i.fc = trunc <8 x i16> %i.ey to <8 x i8>
  %i.fd = select <8 x i1> %i.ez, <8 x i8> %i.fc, <8 x i8> %i.fb ; 2 uses
  store <8 x i8> %i.fd, ptr %i.ej, align 1, !tbaa !11
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ej, i64 %1 ; 5 uses
  %i.ff = extractelement <8 x i8> %i.fd, i64 7
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 7
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !11
  %i.fj = load <4 x i8>, ptr %i.fe, align 1, !tbaa !11
  %i.fk = load <2 x i8>, ptr %i.fg, align 1, !tbaa !11
  %i.fl = shufflevector <2 x i8> %i.fk, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fm = shufflevector <4 x i8> %i.fj, <4 x i8> %i.fl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.fn = insertelement <8 x i8> %i.fm, i8 %i.ff, i64 6
  %i.fo = insertelement <8 x i8> %i.fn, i8 %i.fi, i64 7
end_hunk_0
begin_hunk_1_@vp3_v_loop_filter_8_c:vp3_v_loop_filter_c.exit
  %i.fb = add nsw i32 %i.fa, %i.ey
  %i.fc = ashr i32 %i.fb, 3
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !14 ; 2 uses
  %i.fg = add nsw i32 %i.ff, %i.ew                ; 3 uses
  %.not.i3.5 = icmp ult i32 %i.fg, 256
  %isnotneg.i4.5 = icmp sgt i32 %i.fg, -1
  %i.fh = sext i1 %isnotneg.i4.5 to i8
  %i.fi = trunc nuw i32 %i.fg to i8
  %.0.i5.5 = select i1 %.not.i3.5, i8 %i.fi, i8 %i.fh
  store i8 %.0.i5.5, ptr %i.eu, align 1, !tbaa !11
  %i.fj = load i8, ptr %.0.i.ptr.5, align 1, !tbaa !11
  %i.fk = zext i8 %i.fj to i32
  %i.fl = sub nsw i32 %i.fk, %i.ff                ; 3 uses
  %.not.i.5 = icmp ult i32 %i.fl, 256
  %isnotneg.i.5 = icmp sgt i32 %i.fl, -1
  %i.fm = sext i1 %isnotneg.i.5 to i8
  %i.fn = trunc nuw i32 %i.fl to i8
  %.0.i2.5 = select i1 %.not.i.5, i8 %i.fn, i8 %i.fm
  store i8 %.0.i2.5, ptr %.0.i.ptr.5, align 1, !tbaa !11
  %.0.i.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 6 uses
  %i.fo = getelementptr inbounds i8, ptr %.0.i.ptr.6, i64 %i.b
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !11
  %i.fq = zext i8 %i.fp to i32
  %i.fr = getelementptr inbounds i8, ptr %.0.i.ptr.6, i64 %1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !11
  %i.ft = zext i8 %i.fs to i32
  %i.fu = load i8, ptr %.0.i.ptr.6, align 1, !tbaa !11
  %i.fv = zext i8 %i.fu to i32
  %i.fw = getelementptr inbounds i8, ptr %.0.i.ptr.6, i64 %i.a ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !11
  %i.fy = zext i8 %i.fx to i32                    ; 2 uses
  %i.fz = sub nsw i32 %i.fv, %i.fy
  %i.ga = mul nsw i32 %i.fz, 3
  %i.gb = add nuw nsw i32 %i.fq, 4
  %i.gc = sub nsw i32 %i.gb, %i.ft
  %i.gd = add nsw i32 %i.gc, %i.ga
  %i.ge = ashr i32 %i.gd, 3
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !14 ; 2 uses
  %i.gi = add nsw i32 %i.gh, %i.fy                ; 3 uses
  %.not.i3.6 = icmp ult i32 %i.gi, 256
  %isnotneg.i4.6 = icmp sgt i32 %i.gi, -1
  %i.gj = sext i1 %isnotneg.i4.6 to i8
  %i.gk = trunc nuw i32 %i.gi to i8
  %.0.i5.6 = select i1 %.not.i3.6, i8 %i.gk, i8 %i.gj
  store i8 %.0.i5.6, ptr %i.fw, align 1, !tbaa !11
  %i.gl = load i8, ptr %.0.i.ptr.6, align 1, !tbaa !11
  %i.gm = zext i8 %i.gl to i32
  %i.gn = sub nsw i32 %i.gm, %i.gh                ; 3 uses
  %.not.i.6 = icmp ult i32 %i.gn, 256
  %isnotneg.i.6 = icmp sgt i32 %i.gn, -1
  %i.go = sext i1 %isnotneg.i.6 to i8
  %i.gp = trunc nuw i32 %i.gn to i8
  %.0.i2.6 = select i1 %.not.i.6, i8 %i.gp, i8 %i.go
  store i8 %.0.i2.6, ptr %.0.i.ptr.6, align 1, !tbaa !11
  %.0.i.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 6 uses
  %i.gq = getelementptr inbounds i8, ptr %.0.i.ptr.7, i64 %i.b
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !11
  %i.gs = zext i8 %i.gr to i32
  %i.gt = getelementptr inbounds i8, ptr %.0.i.ptr.7, i64 %1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !11
  %i.gv = zext i8 %i.gu to i32
  %i.gw = load i8, ptr %.0.i.ptr.7, align 1, !tbaa !11
  %i.gx = zext i8 %i.gw to i32
  %i.gy = getelementptr inbounds i8, ptr %.0.i.ptr.7, i64 %i.a ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !11
  %i.ha = zext i8 %i.gz to i32                    ; 2 uses
  %i.hb = sub nsw i32 %i.gx, %i.ha
  %i.hc = mul nsw i32 %i.hb, 3
  %i.hd = add nuw nsw i32 %i.gs, 4
  %i.he = sub nsw i32 %i.hd, %i.gv
  %i.hf = add nsw i32 %i.he, %i.hc
  %i.hg = ashr i32 %i.hf, 3
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !14 ; 2 uses
  %i.hk = add nsw i32 %i.hj, %i.ha                ; 3 uses
  %.not.i3.7 = icmp ult i32 %i.hk, 256
  %isnotneg.i4.7 = icmp sgt i32 %i.hk, -1
  %i.hl = sext i1 %isnotneg.i4.7 to i8
  %i.hm = trunc nuw i32 %i.hk to i8
  %.0.i5.7 = select i1 %.not.i3.7, i8 %i.hm, i8 %i.hl
  store i8 %.0.i5.7, ptr %i.gy, align 1, !tbaa !11
  %i.hn = load i8, ptr %.0.i.ptr.7, align 1, !tbaa !11
  %i.ho = zext i8 %i.hn to i32
  %i.hp = sub nsw i32 %i.ho, %i.hj                ; 3 uses
  %.not.i.7 = icmp ult i32 %i.hp, 256
  %isnotneg.i.7 = icmp sgt i32 %i.hp, -1
  %i.hq = sext i1 %isnotneg.i.7 to i8
  %i.hr = trunc nuw i32 %i.hp to i8
  %.0.i2.7 = select i1 %.not.i.7, i8 %i.hr, i8 %i.hq
  store i8 %.0.i2.7, ptr %.0.i.ptr.7, align 1, !tbaa !11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @vp3_h_loop_filter_8_c(ptr nofree noundef captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = shl nsw i64 %1, 3
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %.not.i7 = icmp eq i64 %1, 0
  br i1 %.not.i7, label %vp3_h_loop_filter_c.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i8 = phi ptr [ %i.ac, %.lr.ph ], [ %0, %bb.a ] ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %.0.i8, i64 -2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11
  %i.e = zext i8 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i8, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %i.h = zext i8 %i.g to i32
  %i.i = load i8, ptr %.0.i8, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.0.i8, i64 -1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = sub nsw i32 %i.j, %i.m
  %i.o = mul nsw i32 %i.n, 3
  %i.p = add nuw nsw i32 %i.e, 4
  %i.q = sub nsw i32 %i.p, %i.h
  %i.r = add nsw i32 %i.q, %i.o
  %i.s = ashr i32 %i.r, 3
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %2, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !14   ; 2 uses
  %i.w = add nsw i32 %i.v, %i.m                   ; 3 uses
  %.not.i4 = icmp ult i32 %i.w, 256
  %isnotneg.i5 = icmp sgt i32 %i.w, -1
  %i.x = sext i1 %isnotneg.i5 to i8
  %i.y = trunc nuw i32 %i.w to i8
  %.0.i6 = select i1 %.not.i4, i8 %i.y, i8 %i.x
  store i8 %.0.i6, ptr %i.k, align 1, !tbaa !11
  %i.z = sub nsw i32 %i.j, %i.v                   ; 3 uses
  %.not.i2 = icmp ult i32 %i.z, 256
  %isnotneg.i = icmp sgt i32 %i.z, -1
  %i.aa = sext i1 %isnotneg.i to i8
  %i.ab = trunc nuw i32 %i.z to i8
  %.0.i3 = select i1 %.not.i2, i8 %i.ab, i8 %i.aa
  store i8 %.0.i3, ptr %.0.i8, align 1, !tbaa !11
  %i.ac = getelementptr inbounds i8, ptr %.0.i8, i64 %1 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, %i.b
  br i1 %.not.i, label %vp3_h_loop_filter_c.exit, label %.lr.ph, !llvm.loop !16

vp3_h_loop_filter_c.exit:                         ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_vp3dsp_set_bounding_values(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 12 uses
  %i.b = icmp ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 483) #8
  tail call void @abort() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.c = icmp ult i32 %1, 4
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 124
  br label %.lr.ph

.lr.ph33.preheader.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph33.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph33.preheader.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph33.preheader.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.d = sub nsw i64 0, %indvars.iv.epil          ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.d
  %i.f = trunc nsw i64 %i.d to i32
  store i32 %i.f, ptr %i.e, align 4, !tbaa !14
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil
  %i.h = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.h, ptr %i.g, align 4, !tbaa !14
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph33.preheader, label %.lr.ph.epil, !llvm.loop !22

.lr.ph33.preheader:                               ; preds = %.lr.ph.epil, %.lr.ph33.preheader.unr-lcssa
  %i.i = zext nneg i32 %1 to i64
  br label %.lr.ph33

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.j = sub nsw i64 0, %indvars.iv               ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.j
  %i.l = trunc nsw i64 %i.j to i32
  store i32 %i.l, ptr %i.k, align 4, !tbaa !14
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.n, ptr %i.m, align 4, !tbaa !14
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = xor i64 %indvars.iv, -1                  ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.o
  %i.q = trunc nsw i64 %i.o to i32
  store i32 %i.q, ptr %i.p, align 4, !tbaa !14
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.s = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.s, ptr %i.r, align 4, !tbaa !14
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.t = sub nuw nsw i64 -2, %indvars.iv          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.t
  %i.v = trunc nsw i64 %i.t to i32
  store i32 %i.v, ptr %i.u, align 4, !tbaa !14
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.1
  %i.x = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.x, ptr %i.w, align 4, !tbaa !14
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.y = sub nuw nsw i64 -3, %indvars.iv          ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.y
  %i.aa = trunc nsw i64 %i.y to i32
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !14
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.2
  %i.ac = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph33.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !24

.lr.ph33:                                         ; preds = %.lr.ph33.preheader, %.lr.ph33
  %indvars.iv39 = phi i64 [ %i.i, %.lr.ph33.preheader ], [ %indvars.iv.next40, %.lr.ph33 ] ; 4 uses
  %.032 = phi i32 [ %1, %.lr.ph33.preheader ], [ %i.ah, %.lr.ph33 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv39
  store i32 %.032, ptr %i.ad, align 4, !tbaa !14
  %i.ae = sub nsw i32 0, %.032
  %i.af = sub nsw i64 0, %indvars.iv39
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.af
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !14
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %i.ah = add nsw i32 %.032, -1                   ; 3 uses
  %i.ai = icmp samesign ult i64 %indvars.iv39, 127
  %i.aj = icmp ne i32 %i.ah, 0                    ; 2 uses
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %i.ak, label %.lr.ph33, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph33
  br i1 %i.aj, label %bb.d, label %._crit_edge.thread

bb.d:                                             ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1020
  store i32 %i.ah, ptr %i.al, align 4, !tbaa !14
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %bb.d, %._crit_edge
  %i.am = mul nuw i32 %1, 33686018                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store i32 %i.am, ptr %i.an, align 4, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !14
  ret void
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!6, !6, i64 0}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
end_hunk_1
