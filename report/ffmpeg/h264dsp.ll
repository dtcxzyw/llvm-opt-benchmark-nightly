Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h264dsp?download=true
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumUnrolled: 54
begin_hunk_0_@biweight_h264_pixels8_9_c:bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %.093, i64 12
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !27
  %i.cm = zext i16 %i.cl to i32
  %i.cn = mul nsw i32 %6, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.06892, i64 12 ; 2 uses
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !27
  %i.cq = zext i16 %i.cp to i32
  %i.cr = mul nsw i32 %5, %i.cq
  %i.cs = add i32 %i.cn, %i.d
  %i.ct = add i32 %i.cs, %i.cr
  %i.cu = ashr i32 %i.ct, %i.f
  %i.cv = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 0)
  %i.cw = tail call i32 @llvm.umin.i32(i32 %i.cv, i32 511)
  %i.cx = trunc nuw nsw i32 %i.cw to i16
  store i16 %i.cx, ptr %i.co, align 2, !tbaa !27
  %i.cy = getelementptr inbounds nuw i8, ptr %.093, i64 14
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !27
  %i.da = zext i16 %i.cz to i32
  %i.db = mul nsw i32 %6, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %.06892, i64 14 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !27
  %i.de = zext i16 %i.dd to i32
  %i.df = mul nsw i32 %5, %i.de
  %i.dg = add i32 %i.db, %i.d
  %i.dh = add i32 %i.dg, %i.df
  %i.di = ashr i32 %i.dh, %i.f
  %i.dj = tail call i32 @llvm.smax.i32(i32 %i.di, i32 0)
  %i.dk = tail call i32 @llvm.umin.i32(i32 %i.dj, i32 511)
  %i.dl = trunc nuw nsw i32 %i.dk to i16
  store i16 %i.dl, ptr %i.dc, align 2, !tbaa !27
  %i.dm = add nuw nsw i32 %.06991, 1              ; 2 uses
  %i.dn = getelementptr inbounds [2 x i8], ptr %.06892, i64 %i.a
  %i.do = getelementptr inbounds [2 x i8], ptr %.093, i64 %i.a
  %exitcond.not = icmp eq i32 %i.dm, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @biweight_h264_pixels4_9_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 {
bb.a:
  %i.a = ashr i64 %2, 1                           ; 2 uses
  %i.b = shl i32 %7, 1
  %i.c = or disjoint i32 %i.b, 1
  %i.d = shl i32 %i.c, %4                         ; 4 uses
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %4, 1                        ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.053 = phi ptr [ %1, %.lr.ph ], [ %i.bk, %bb.b ] ; 5 uses
  %.04052 = phi ptr [ %0, %.lr.ph ], [ %i.bj, %bb.b ] ; 6 uses
  %.04151 = phi i32 [ 0, %.lr.ph ], [ %i.bi, %bb.b ]
  %i.g = load i16, ptr %.053, align 2, !tbaa !27
  %i.h = zext i16 %i.g to i32
  %i.i = mul nsw i32 %6, %i.h
  %i.j = load i16, ptr %.04052, align 2, !tbaa !27
  %i.k = zext i16 %i.j to i32
  %i.l = mul nsw i32 %5, %i.k
  %i.m = add i32 %i.i, %i.d
  %i.n = add i32 %i.m, %i.l
  %i.o = ashr i32 %i.n, %i.f
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.p, i32 511)
  %i.r = trunc nuw nsw i32 %i.q to i16
  store i16 %i.r, ptr %.04052, align 2, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %.053, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !27
  %i.u = zext i16 %i.t to i32
  %i.v = mul nsw i32 %6, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.04052, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27
  %i.y = zext i16 %i.x to i32
  %i.z = mul nsw i32 %5, %i.y
  %i.aa = add i32 %i.v, %i.d
  %i.ab = add i32 %i.aa, %i.z
  %i.ac = ashr i32 %i.ab, %i.f
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 511)
  %i.af = trunc nuw nsw i32 %i.ae to i16
  store i16 %i.af, ptr %i.w, align 2, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %.053, i64 4
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !27
  %i.ai = zext i16 %i.ah to i32
  %i.aj = mul nsw i32 %6, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.04052, i64 4 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !27
  %i.am = zext i16 %i.al to i32
  %i.an = mul nsw i32 %5, %i.am
  %i.ao = add i32 %i.aj, %i.d
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = ashr i32 %i.ap, %i.f
  %i.ar = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 0)
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.ar, i32 511)
  %i.at = trunc nuw nsw i32 %i.as to i16
  store i16 %i.at, ptr %i.ak, align 2, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %.053, i64 6
  %i.av = load i16, ptr %i.au, align 2, !tbaa !27
  %i.aw = zext i16 %i.av to i32
  %i.ax = mul nsw i32 %6, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.04052, i64 6 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !27
  %i.ba = zext i16 %i.az to i32
  %i.bb = mul nsw i32 %5, %i.ba
  %i.bc = add i32 %i.ax, %i.d
  %i.bd = add i32 %i.bc, %i.bb
  %i.be = ashr i32 %i.bd, %i.f
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.be, i32 0)
  %i.bg = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 511)
  %i.bh = trunc nuw nsw i32 %i.bg to i16
  store i16 %i.bh, ptr %i.ay, align 2, !tbaa !27
  %i.bi = add nuw nsw i32 %.04151, 1              ; 2 uses
  %i.bj = getelementptr inbounds [2 x i8], ptr %.04052, i64 %i.a
  %i.bk = getelementptr inbounds [2 x i8], ptr %.053, i64 %i.a
  %exitcond.not = icmp eq i32 %i.bi, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @biweight_h264_pixels2_9_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 {
bb.a:
  %i.a = ashr i64 %2, 1                           ; 2 uses
  %i.b = shl i32 %7, 1
  %i.c = or disjoint i32 %i.b, 1
  %i.d = shl i32 %i.c, %4                         ; 2 uses
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %4, 1                        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.033 = phi ptr [ %1, %.lr.ph ], [ %i.ai, %bb.b ] ; 3 uses
  %.02632 = phi ptr [ %0, %.lr.ph ], [ %i.ah, %bb.b ] ; 4 uses
  %.02731 = phi i32 [ 0, %.lr.ph ], [ %i.ag, %bb.b ]
  %i.g = load i16, ptr %.033, align 2, !tbaa !27
  %i.h = zext i16 %i.g to i32
  %i.i = mul nsw i32 %6, %i.h
  %i.j = load i16, ptr %.02632, align 2, !tbaa !27
  %i.k = zext i16 %i.j to i32
  %i.l = mul nsw i32 %5, %i.k
  %i.m = add i32 %i.i, %i.d
  %i.n = add i32 %i.m, %i.l
  %i.o = ashr i32 %i.n, %i.f
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.p, i32 511)
  %i.r = trunc nuw nsw i32 %i.q to i16
  store i16 %i.r, ptr %.02632, align 2, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %.033, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !27
  %i.u = zext i16 %i.t to i32
  %i.v = mul nsw i32 %6, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.02632, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27
  %i.y = zext i16 %i.x to i32
  %i.z = mul nsw i32 %5, %i.y
  %i.aa = add i32 %i.v, %i.d
  %i.ab = add i32 %i.aa, %i.z
  %i.ac = ashr i32 %i.ab, %i.f
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 511)
  %i.af = trunc nuw nsw i32 %i.ae to i16
  store i16 %i.af, ptr %i.w, align 2, !tbaa !27
  %i.ag = add nuw nsw i32 %.02731, 1              ; 2 uses
  %i.ah = getelementptr inbounds [2 x i8], ptr %.02632, i64 %i.a
  %i.ai = getelementptr inbounds [2 x i8], ptr %.033, i64 %i.a
  %exitcond.not = icmp eq i32 %i.ag, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @h264_v_loop_filter_luma_9_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #3 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 4 uses
  %i.b = shl i32 %2, 1
  %i.c = shl i32 %3, 1                            ; 4 uses
  %i.d = sub nsw i64 0, %i.a
  %.idx.i = mul nsw i64 %i.a, -4
  %.idx115.i = mul nsw i64 %i.a, -6
  %i.e = and i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0101.i11 = phi ptr [ %0, %bb.a ], [ %.2.i, %.loopexit ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29    ; 3 uses
  %i.h = sext i8 %i.g to i32
  %i.i = shl nsw i32 %i.h, 1                      ; 5 uses
  %i.j = icmp slt i8 %i.g, 0
  br i1 %i.j, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not.i = icmp eq i8 %i.g, 0                    ; 2 uses
  %i.k = sub nsw i32 0, %i.i                      ; 4 uses
  %i.l = or disjoint i32 %i.i, 1                  ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0101.i11, i64 8
  br label %.loopexit

bb.d:                                             ; preds = %.preheader, %bb.n
  %.099.i10 = phi i32 [ 0, %.preheader ], [ %i.cd, %bb.n ]
  %.1102.i9 = phi ptr [ %.0101.i11, %.preheader ], [ %i.cc, %bb.n ] ; 8 uses
  %i.n = getelementptr inbounds [2 x i8], ptr %.1102.i9, i64 %i.d ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !27
  %i.p = zext i16 %i.o to i32                     ; 7 uses
  %i.q = getelementptr inbounds i8, ptr %.1102.i9, i64 %.idx.i ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !27   ; 2 uses
  %i.s = zext i16 %i.r to i32                     ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %.1102.i9, i64 %.idx115.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !27
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = load i16, ptr %.1102.i9, align 2, !tbaa !27
  %i.x = zext i16 %i.w to i32                     ; 7 uses
  %i.y = getelementptr inbounds [2 x i8], ptr %.1102.i9, i64 %i.a ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !27   ; 2 uses
  %i.aa = zext i16 %i.z to i32                    ; 3 uses
  %i.ab = getelementptr inbounds [2 x i8], ptr %.1102.i9, i64 %i.e
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !27
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = sub nsw i32 %i.p, %i.x
  %i.af = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 true)
  %i.ag = icmp slt i32 %i.af, %i.b
  br i1 %i.ag, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.ah = sub nsw i32 %i.s, %i.p
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %i.aj = icmp slt i32 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ak = sub nsw i32 %i.aa, %i.x
  %i.al = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %i.am = icmp samesign ult i32 %i.al, %i.c
  br i1 %i.am, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.an = sub nsw i32 %i.v, %i.p
  %i.ao = tail call i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %i.ap = icmp samesign uge i32 %i.ao, %i.c       ; 2 uses
  %brmerge = or i1 %i.ap, %.not.i
  %.mux = select i1 %i.ap, i32 %i.i, i32 %i.l
  br i1 %brmerge, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = add nuw nsw i32 %i.p, 1
  %i.ar = add nuw nsw i32 %i.aq, %i.x
  %i.as = lshr i32 %i.ar, 1
  %i.at = add nuw nsw i32 %i.as, %i.v
  %i.au = lshr i32 %i.at, 1
  %i.av = sub nsw i32 %i.au, %i.s                 ; 2 uses
  %i.aw = icmp slt i32 %i.av, %i.k
  %..i = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.i)
  %.0.i4 = select i1 %i.aw, i32 %i.k, i32 %..i
  %i.ax = trunc i32 %.0.i4 to i16
  %i.ay = add i16 %i.r, %i.ax
  store i16 %i.ay, ptr %i.q, align 2, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %.mux, %bb.g ], [ %i.l, %bb.h ] ; 2 uses
  %i.az = sub nsw i32 %i.ad, %i.x
  %i.ba = tail call i32 @llvm.abs.i32(i32 %i.az, i1 true)
  %i.bb = icmp samesign ult i32 %i.ba, %i.c
  br i1 %i.bb, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = add nuw nsw i32 %i.p, 1
  %i.bd = add nuw nsw i32 %i.bc, %i.x
  %i.be = lshr i32 %i.bd, 1
  %i.bf = add nuw nsw i32 %i.be, %i.ad
  %i.bg = lshr i32 %i.bf, 1
  %i.bh = sub nsw i32 %i.bg, %i.aa                ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.k
  %..i5 = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.i)
  %.0.i6 = select i1 %i.bi, i32 %i.k, i32 %..i5
  %i.bj = trunc i32 %.0.i6 to i16
  %i.bk = add i16 %i.z, %i.bj
  store i16 %i.bk, ptr %i.y, align 2, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = add nuw nsw i32 %.0.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.1.i = phi i32 [ %i.bl, %bb.l ], [ %.0.i, %bb.i ] ; 2 uses
  %i.bm = sub nsw i32 %i.x, %i.p
  %i.bn = shl nsw i32 %i.bm, 2
  %i.bo = add nuw nsw i32 %i.s, 4
  %i.bp = sub nsw i32 %i.bo, %i.aa
  %i.bq = add nsw i32 %i.bp, %i.bn
  %i.br = ashr i32 %i.bq, 3                       ; 2 uses
  %i.bs = sub nsw i32 0, %.1.i                    ; 2 uses
  %i.bt = icmp slt i32 %i.br, %i.bs
  %..i7 = tail call i32 @llvm.smin.i32(i32 %i.br, i32 %.1.i)
  %.0.i8 = select i1 %i.bt, i32 %i.bs, i32 %..i7  ; 2 uses
  %i.bu = add nsw i32 %.0.i8, %i.p
  %i.bv = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  %i.bw = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 511)
  %i.bx = trunc nuw nsw i32 %i.bw to i16
  store i16 %i.bx, ptr %i.n, align 2, !tbaa !27
  %i.by = sub nsw i32 %i.x, %.0.i8
  %i.bz = tail call i32 @llvm.smax.i32(i32 %i.by, i32 0)
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 511)
  %i.cb = trunc nuw nsw i32 %i.ca to i16
  store i16 %i.cb, ptr %.1102.i9, align 2, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f, %bb.e, %bb.d
  %i.cc = getelementptr inbounds nuw i8, ptr %.1102.i9, i64 2 ; 2 uses
  %i.cd = add nuw nsw i32 %.099.i10, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cd, 4
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !39

.loopexit:                                        ; preds = %bb.n, %bb.c
  %.2.i = phi ptr [ %i.m, %bb.c ], [ %i.cc, %bb.n ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond14.not, label %h264_loop_filter_luma_9_c.exit, label %bb.b, !llvm.loop !40

h264_loop_filter_luma_9_c.exit:                   ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @h264_h_loop_filter_luma_9_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #3 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 2 uses
  %i.b = shl i32 %2, 1
  %i.c = shl i32 %3, 1                            ; 4 uses
  %.idx = shl nsw i64 %i.a, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0101.i11 = phi ptr [ %0, %bb.a ], [ %.2.i, %.loopexit ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29    ; 3 uses
  %i.f = sext i8 %i.e to i32
  %i.g = shl nsw i32 %i.f, 1                      ; 5 uses
  %i.h = icmp slt i8 %i.e, 0
  br i1 %i.h, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not.i = icmp eq i8 %i.e, 0                    ; 2 uses
  %i.i = sub nsw i32 0, %i.g                      ; 4 uses
  %i.j = or disjoint i32 %i.g, 1                  ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %.0101.i11, i64 %.idx
  br label %.loopexit

bb.d:                                             ; preds = %.preheader, %bb.n
  %.099.i10 = phi i32 [ 0, %.preheader ], [ %i.cb, %bb.n ]
  %.1102.i9 = phi ptr [ %.0101.i11, %.preheader ], [ %i.ca, %bb.n ] ; 8 uses
  %i.l = getelementptr inbounds i8, ptr %.1102.i9, i64 -2 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !27
  %i.n = zext i16 %i.m to i32                     ; 7 uses
  %i.o = getelementptr inbounds i8, ptr %.1102.i9, i64 -4 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !27   ; 2 uses
  %i.q = zext i16 %i.p to i32                     ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.1102.i9, i64 -6
  %i.s = load i16, ptr %i.r, align 2, !tbaa !27
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = load i16, ptr %.1102.i9, align 2, !tbaa !27
  %i.v = zext i16 %i.u to i32                     ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1102.i9, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27   ; 2 uses
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.1102.i9, i64 4
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !27
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = sub nsw i32 %i.n, %i.v
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.ae = icmp slt i32 %i.ad, %i.b
  br i1 %i.ae, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.af = sub nsw i32 %i.q, %i.n
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true)
  %i.ah = icmp slt i32 %i.ag, %i.c
  br i1 %i.ah, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ai = sub nsw i32 %i.y, %i.v
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 true)
  %i.ak = icmp samesign ult i32 %i.aj, %i.c
  br i1 %i.ak, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.al = sub nsw i32 %i.t, %i.n
  %i.am = tail call i32 @llvm.abs.i32(i32 %i.al, i1 true)
  %i.an = icmp samesign uge i32 %i.am, %i.c       ; 2 uses
  %brmerge = or i1 %i.an, %.not.i
  %.mux = select i1 %i.an, i32 %i.g, i32 %i.j
  br i1 %brmerge, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = add nuw nsw i32 %i.n, 1
  %i.ap = add nuw nsw i32 %i.ao, %i.v
  %i.aq = lshr i32 %i.ap, 1
  %i.ar = add nuw nsw i32 %i.aq, %i.t
  %i.as = lshr i32 %i.ar, 1
  %i.at = sub nsw i32 %i.as, %i.q                 ; 2 uses
  %i.au = icmp slt i32 %i.at, %i.i
  %..i = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %i.g)
  %.0.i4 = select i1 %i.au, i32 %i.i, i32 %..i
  %i.av = trunc i32 %.0.i4 to i16
  %i.aw = add i16 %i.p, %i.av
  store i16 %i.aw, ptr %i.o, align 2, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %.mux, %bb.g ], [ %i.j, %bb.h ] ; 2 uses
  %i.ax = sub nsw i32 %i.ab, %i.v
  %i.ay = tail call i32 @llvm.abs.i32(i32 %i.ax, i1 true)
  %i.az = icmp samesign ult i32 %i.ay, %i.c
  br i1 %i.az, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add nuw nsw i32 %i.n, 1
  %i.bb = add nuw nsw i32 %i.ba, %i.v
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = add nuw nsw i32 %i.bc, %i.ab
  %i.be = lshr i32 %i.bd, 1
  %i.bf = sub nsw i32 %i.be, %i.y                 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.i
  %..i5 = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 %i.g)
  %.0.i6 = select i1 %i.bg, i32 %i.i, i32 %..i5
  %i.bh = trunc i32 %.0.i6 to i16
  %i.bi = add i16 %i.x, %i.bh
  store i16 %i.bi, ptr %i.w, align 2, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bj = add nuw nsw i32 %.0.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.1.i = phi i32 [ %i.bj, %bb.l ], [ %.0.i, %bb.i ] ; 2 uses
  %i.bk = sub nsw i32 %i.v, %i.n
  %i.bl = shl nsw i32 %i.bk, 2
  %i.bm = add nuw nsw i32 %i.q, 4
  %i.bn = sub nsw i32 %i.bm, %i.y
  %i.bo = add nsw i32 %i.bn, %i.bl
  %i.bp = ashr i32 %i.bo, 3                       ; 2 uses
  %i.bq = sub nsw i32 0, %.1.i                    ; 2 uses
  %i.br = icmp slt i32 %i.bp, %i.bq
  %..i7 = tail call i32 @llvm.smin.i32(i32 %i.bp, i32 %.1.i)
  %.0.i8 = select i1 %i.br, i32 %i.bq, i32 %..i7  ; 2 uses
  %i.bs = add nsw i32 %.0.i8, %i.n
  %i.bt = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 511)
  %i.bv = trunc nuw nsw i32 %i.bu to i16
  store i16 %i.bv, ptr %i.l, align 2, !tbaa !27
  %i.bw = sub nsw i32 %i.v, %.0.i8
  %i.bx = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 0)
  %i.by = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 511)
  %i.bz = trunc nuw nsw i32 %i.by to i16
  store i16 %i.bz, ptr %.1102.i9, align 2, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f, %bb.e, %bb.d
  %i.ca = getelementptr inbounds [2 x i8], ptr %.1102.i9, i64 %i.a ; 2 uses
  %i.cb = add nuw nsw i32 %.099.i10, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cb, 4
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !39

.loopexit:                                        ; preds = %bb.n, %bb.c
  %.2.i = phi ptr [ %i.k, %bb.c ], [ %i.ca, %bb.n ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond14.not, label %h264_loop_filter_luma_9_c.exit, label %bb.b, !llvm.loop !40

h264_loop_filter_luma_9_c.exit:                   ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @h264_h_loop_filter_luma_mbaff_9_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #3 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 2 uses
  %i.b = shl i32 %2, 1                            ; 2 uses
  %i.c = shl i32 %3, 1                            ; 8 uses
  %i.d = and i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0101.i11 = phi ptr [ %0, %bb.a ], [ %.2.i, %.loopexit ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !29    ; 3 uses
  %i.g = sext i8 %i.f to i32
  %i.h = shl nsw i32 %i.g, 1                      ; 8 uses
  %i.i = icmp slt i8 %i.f, 0
  br i1 %i.i, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not.i = icmp eq i8 %i.f, 0                    ; 4 uses
  %i.j = sub nsw i32 0, %i.h                      ; 8 uses
  %i.k = or disjoint i32 %i.h, 1                  ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.0101.i11, i64 -2 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !27
  %i.n = zext i16 %i.m to i32                     ; 7 uses
  %i.o = getelementptr inbounds i8, ptr %.0101.i11, i64 -4 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !27   ; 2 uses
  %i.q = zext i16 %i.p to i32                     ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.0101.i11, i64 -6
  %i.s = load i16, ptr %i.r, align 2, !tbaa !27
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = load i16, ptr %.0101.i11, align 2, !tbaa !27
  %i.v = zext i16 %i.u to i32                     ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0101.i11, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27   ; 2 uses
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0101.i11, i64 4
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !27
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = sub nsw i32 %i.n, %i.v
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.ae = icmp slt i32 %i.ad, %i.b
  br i1 %i.ae, label %bb.d, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds [2 x i8], ptr %.0101.i11, i64 %i.d
  br label %.loopexit

bb.d:                                             ; preds = %.preheader
  %i.ag = sub nsw i32 %i.q, %i.n
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true)
  %i.ai = icmp slt i32 %i.ah, %i.c
  br i1 %i.ai, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.aj = sub nsw i32 %i.y, %i.v
  %i.ak = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 true)
  %i.al = icmp samesign ult i32 %i.ak, %i.c
  br i1 %i.al, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.am = sub nsw i32 %i.t, %i.n
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %i.ao = icmp samesign uge i32 %i.an, %i.c       ; 2 uses
  %brmerge = or i1 %i.ao, %.not.i
  %.mux = select i1 %i.ao, i32 %i.h, i32 %i.k
  br i1 %brmerge, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = add nuw nsw i32 %i.n, 1
  %i.aq = add nuw nsw i32 %i.ap, %i.v
  %i.ar = lshr i32 %i.aq, 1
  %i.as = add nuw nsw i32 %i.ar, %i.t
  %i.at = lshr i32 %i.as, 1
  %i.au = sub nsw i32 %i.at, %i.q                 ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.j
  %..i = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.h)
  %.0.i4 = select i1 %i.av, i32 %i.j, i32 %..i
  %i.aw = trunc i32 %.0.i4 to i16
  %i.ax = add i16 %i.p, %i.aw
  store i16 %i.ax, ptr %i.o, align 2, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %.mux, %bb.f ], [ %i.k, %bb.g ] ; 2 uses
  %i.ay = sub nsw i32 %i.ab, %i.v
  %i.az = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  %i.ba = icmp samesign ult i32 %i.az, %i.c
  br i1 %i.ba, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = add nuw nsw i32 %i.n, 1
  %i.bc = add nuw nsw i32 %i.bb, %i.v
  %i.bd = lshr i32 %i.bc, 1
  %i.be = add nuw nsw i32 %i.bd, %i.ab
  %i.bf = lshr i32 %i.be, 1
  %i.bg = sub nsw i32 %i.bf, %i.y                 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %i.j
  %..i5 = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 %i.h)
  %.0.i6 = select i1 %i.bh, i32 %i.j, i32 %..i5
  %i.bi = trunc i32 %.0.i6 to i16
  %i.bj = add i16 %i.x, %i.bi
  store i16 %i.bj, ptr %i.w, align 2, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bk = add nuw nsw i32 %.0.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.1.i = phi i32 [ %i.bk, %bb.k ], [ %.0.i, %bb.h ] ; 2 uses
  %i.bl = sub nsw i32 %i.v, %i.n
  %i.bm = shl nsw i32 %i.bl, 2
  %i.bn = add nuw nsw i32 %i.q, 4
  %i.bo = sub nsw i32 %i.bn, %i.y
  %i.bp = add nsw i32 %i.bo, %i.bm
  %i.bq = ashr i32 %i.bp, 3                       ; 2 uses
  %i.br = sub nsw i32 0, %.1.i                    ; 2 uses
  %i.bs = icmp slt i32 %i.bq, %i.br
  %..i7 = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %.1.i)
  %.0.i8 = select i1 %i.bs, i32 %i.br, i32 %..i7  ; 2 uses
  %i.bt = add nsw i32 %.0.i8, %i.n
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %i.bv = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 511)
  %i.bw = trunc nuw nsw i32 %i.bv to i16
  store i16 %i.bw, ptr %i.l, align 2, !tbaa !27
  %i.bx = sub nsw i32 %i.v, %.0.i8
  %i.by = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 0)
  %i.bz = tail call i32 @llvm.umin.i32(i32 %i.by, i32 511)
  %i.ca = trunc nuw nsw i32 %i.bz to i16
  store i16 %i.ca, ptr %.0101.i11, align 2, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e, %bb.d, %.preheader
  %i.cb = getelementptr inbounds [2 x i8], ptr %.0101.i11, i64 %i.a ; 8 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -2 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !27
  %i.ce = zext i16 %i.cd to i32                   ; 7 uses
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 -4 ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !27 ; 2 uses
  %i.ch = zext i16 %i.cg to i32                   ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %i.cb, i64 -6
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !27
  %i.ck = zext i16 %i.cj to i32                   ; 2 uses
  %i.cl = load i16, ptr %i.cb, align 2, !tbaa !27
  %i.cm = zext i16 %i.cl to i32                   ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 2 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !27 ; 2 uses
  %i.cp = zext i16 %i.co to i32                   ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !27
  %i.cs = zext i16 %i.cr to i32                   ; 2 uses
  %i.ct = sub nsw i32 %i.ce, %i.cm
  %i.cu = tail call i32 @llvm.abs.i32(i32 %i.ct, i1 true)
  %i.cv = icmp slt i32 %i.cu, %i.b
  br i1 %i.cv, label %bb.n, label %.loopexit.loopexit

bb.n:                                             ; preds = %bb.m
  %i.cw = sub nsw i32 %i.ch, %i.ce
  %i.cx = tail call i32 @llvm.abs.i32(i32 %i.cw, i1 true)
  %i.cy = icmp slt i32 %i.cx, %i.c
  br i1 %i.cy, label %bb.o, label %.loopexit.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cz = sub nsw i32 %i.cp, %i.cm
  %i.da = tail call i32 @llvm.abs.i32(i32 %i.cz, i1 true)
  %i.db = icmp samesign ult i32 %i.da, %i.c
  br i1 %i.db, label %bb.p, label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.o
  %i.dc = sub nsw i32 %i.ck, %i.ce
  %i.dd = tail call i32 @llvm.abs.i32(i32 %i.dc, i1 true)
  %i.de = icmp samesign uge i32 %i.dd, %i.c       ; 2 uses
  %brmerge.1 = or i1 %i.de, %.not.i
  %.mux.1 = select i1 %i.de, i32 %i.h, i32 %i.k
  br i1 %brmerge.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.df = add nuw nsw i32 %i.ce, 1
  %i.dg = add nuw nsw i32 %i.df, %i.cm
  %i.dh = lshr i32 %i.dg, 1
  %i.di = add nuw nsw i32 %i.dh, %i.ck
  %i.dj = lshr i32 %i.di, 1
  %i.dk = sub nsw i32 %i.dj, %i.ch                ; 2 uses
  %i.dl = icmp slt i32 %i.dk, %i.j
  %..i.1 = tail call i32 @llvm.smin.i32(i32 %i.dk, i32 %i.h)
  %.0.i4.1 = select i1 %i.dl, i32 %i.j, i32 %..i.1
  %i.dm = trunc i32 %.0.i4.1 to i16
  %i.dn = add i16 %i.cg, %i.dm
  store i16 %i.dn, ptr %i.cf, align 2, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.i.1 = phi i32 [ %.mux.1, %bb.p ], [ %i.k, %bb.q ] ; 2 uses
  %i.do = sub nsw i32 %i.cs, %i.cm
  %i.dp = tail call i32 @llvm.abs.i32(i32 %i.do, i1 true)
  %i.dq = icmp samesign ult i32 %i.dp, %i.c
  br i1 %i.dq, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dr = add nuw nsw i32 %i.ce, 1
  %i.ds = add nuw nsw i32 %i.dr, %i.cm
  %i.dt = lshr i32 %i.ds, 1
  %i.du = add nuw nsw i32 %i.dt, %i.cs
  %i.dv = lshr i32 %i.du, 1
  %i.dw = sub nsw i32 %i.dv, %i.cp                ; 2 uses
  %i.dx = icmp slt i32 %i.dw, %i.j
  %..i5.1 = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.h)
  %.0.i6.1 = select i1 %i.dx, i32 %i.j, i32 %..i5.1
end_hunk_0
begin_hunk_1_@biweight_h264_pixels8_10_c:bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %.093, i64 12
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !27
  %i.cm = zext i16 %i.cl to i32
  %i.cn = mul nsw i32 %6, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.06892, i64 12 ; 2 uses
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !27
  %i.cq = zext i16 %i.cp to i32
  %i.cr = mul nsw i32 %5, %i.cq
  %i.cs = add i32 %i.cn, %i.d
  %i.ct = add i32 %i.cs, %i.cr
  %i.cu = ashr i32 %i.ct, %i.f
  %i.cv = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 0)
  %i.cw = tail call i32 @llvm.umin.i32(i32 %i.cv, i32 1023)
  %i.cx = trunc nuw nsw i32 %i.cw to i16
  store i16 %i.cx, ptr %i.co, align 2, !tbaa !27
  %i.cy = getelementptr inbounds nuw i8, ptr %.093, i64 14
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !27
  %i.da = zext i16 %i.cz to i32
  %i.db = mul nsw i32 %6, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %.06892, i64 14 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !27
  %i.de = zext i16 %i.dd to i32
  %i.df = mul nsw i32 %5, %i.de
  %i.dg = add i32 %i.db, %i.d
  %i.dh = add i32 %i.dg, %i.df
  %i.di = ashr i32 %i.dh, %i.f
  %i.dj = tail call i32 @llvm.smax.i32(i32 %i.di, i32 0)
  %i.dk = tail call i32 @llvm.umin.i32(i32 %i.dj, i32 1023)
  %i.dl = trunc nuw nsw i32 %i.dk to i16
  store i16 %i.dl, ptr %i.dc, align 2, !tbaa !27
  %i.dm = add nuw nsw i32 %.06991, 1              ; 2 uses
  %i.dn = getelementptr inbounds [2 x i8], ptr %.06892, i64 %i.a
  %i.do = getelementptr inbounds [2 x i8], ptr %.093, i64 %i.a
  %exitcond.not = icmp eq i32 %i.dm, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @biweight_h264_pixels4_10_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 {
bb.a:
  %i.a = ashr i64 %2, 1                           ; 2 uses
  %i.b = shl i32 %7, 2
  %i.c = or disjoint i32 %i.b, 1
  %i.d = shl i32 %i.c, %4                         ; 4 uses
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %4, 1                        ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.053 = phi ptr [ %1, %.lr.ph ], [ %i.bk, %bb.b ] ; 5 uses
  %.04052 = phi ptr [ %0, %.lr.ph ], [ %i.bj, %bb.b ] ; 6 uses
  %.04151 = phi i32 [ 0, %.lr.ph ], [ %i.bi, %bb.b ]
  %i.g = load i16, ptr %.053, align 2, !tbaa !27
  %i.h = zext i16 %i.g to i32
  %i.i = mul nsw i32 %6, %i.h
  %i.j = load i16, ptr %.04052, align 2, !tbaa !27
  %i.k = zext i16 %i.j to i32
  %i.l = mul nsw i32 %5, %i.k
  %i.m = add i32 %i.i, %i.d
  %i.n = add i32 %i.m, %i.l
  %i.o = ashr i32 %i.n, %i.f
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.p, i32 1023)
  %i.r = trunc nuw nsw i32 %i.q to i16
  store i16 %i.r, ptr %.04052, align 2, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %.053, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !27
  %i.u = zext i16 %i.t to i32
  %i.v = mul nsw i32 %6, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.04052, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27
  %i.y = zext i16 %i.x to i32
  %i.z = mul nsw i32 %5, %i.y
  %i.aa = add i32 %i.v, %i.d
  %i.ab = add i32 %i.aa, %i.z
  %i.ac = ashr i32 %i.ab, %i.f
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 1023)
  %i.af = trunc nuw nsw i32 %i.ae to i16
  store i16 %i.af, ptr %i.w, align 2, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %.053, i64 4
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !27
  %i.ai = zext i16 %i.ah to i32
  %i.aj = mul nsw i32 %6, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.04052, i64 4 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !27
  %i.am = zext i16 %i.al to i32
  %i.an = mul nsw i32 %5, %i.am
  %i.ao = add i32 %i.aj, %i.d
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = ashr i32 %i.ap, %i.f
  %i.ar = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 0)
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.ar, i32 1023)
  %i.at = trunc nuw nsw i32 %i.as to i16
  store i16 %i.at, ptr %i.ak, align 2, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %.053, i64 6
  %i.av = load i16, ptr %i.au, align 2, !tbaa !27
  %i.aw = zext i16 %i.av to i32
  %i.ax = mul nsw i32 %6, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.04052, i64 6 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !27
  %i.ba = zext i16 %i.az to i32
  %i.bb = mul nsw i32 %5, %i.ba
  %i.bc = add i32 %i.ax, %i.d
  %i.bd = add i32 %i.bc, %i.bb
  %i.be = ashr i32 %i.bd, %i.f
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.be, i32 0)
  %i.bg = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 1023)
  %i.bh = trunc nuw nsw i32 %i.bg to i16
  store i16 %i.bh, ptr %i.ay, align 2, !tbaa !27
  %i.bi = add nuw nsw i32 %.04151, 1              ; 2 uses
  %i.bj = getelementptr inbounds [2 x i8], ptr %.04052, i64 %i.a
  %i.bk = getelementptr inbounds [2 x i8], ptr %.053, i64 %i.a
  %exitcond.not = icmp eq i32 %i.bi, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @biweight_h264_pixels2_10_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 {
bb.a:
  %i.a = ashr i64 %2, 1                           ; 2 uses
  %i.b = shl i32 %7, 2
  %i.c = or disjoint i32 %i.b, 1
  %i.d = shl i32 %i.c, %4                         ; 2 uses
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %4, 1                        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.033 = phi ptr [ %1, %.lr.ph ], [ %i.ai, %bb.b ] ; 3 uses
  %.02632 = phi ptr [ %0, %.lr.ph ], [ %i.ah, %bb.b ] ; 4 uses
  %.02731 = phi i32 [ 0, %.lr.ph ], [ %i.ag, %bb.b ]
  %i.g = load i16, ptr %.033, align 2, !tbaa !27
  %i.h = zext i16 %i.g to i32
  %i.i = mul nsw i32 %6, %i.h
  %i.j = load i16, ptr %.02632, align 2, !tbaa !27
  %i.k = zext i16 %i.j to i32
  %i.l = mul nsw i32 %5, %i.k
  %i.m = add i32 %i.i, %i.d
  %i.n = add i32 %i.m, %i.l
  %i.o = ashr i32 %i.n, %i.f
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.p, i32 1023)
  %i.r = trunc nuw nsw i32 %i.q to i16
  store i16 %i.r, ptr %.02632, align 2, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %.033, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !27
  %i.u = zext i16 %i.t to i32
  %i.v = mul nsw i32 %6, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.02632, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27
  %i.y = zext i16 %i.x to i32
  %i.z = mul nsw i32 %5, %i.y
  %i.aa = add i32 %i.v, %i.d
  %i.ab = add i32 %i.aa, %i.z
  %i.ac = ashr i32 %i.ab, %i.f
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 1023)
  %i.af = trunc nuw nsw i32 %i.ae to i16
  store i16 %i.af, ptr %i.w, align 2, !tbaa !27
  %i.ag = add nuw nsw i32 %.02731, 1              ; 2 uses
  %i.ah = getelementptr inbounds [2 x i8], ptr %.02632, i64 %i.a
  %i.ai = getelementptr inbounds [2 x i8], ptr %.033, i64 %i.a
  %exitcond.not = icmp eq i32 %i.ag, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @h264_v_loop_filter_luma_10_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #3 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 4 uses
  %i.b = shl i32 %2, 2
  %i.c = shl i32 %3, 2                            ; 4 uses
  %i.d = sub nsw i64 0, %i.a
  %.idx.i = mul nsw i64 %i.a, -4
  %.idx115.i = mul nsw i64 %i.a, -6
  %i.e = and i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0101.i6 = phi ptr [ %0, %bb.a ], [ %.2.i, %.loopexit ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29    ; 3 uses
  %i.h = sext i8 %i.g to i32
  %i.i = shl nsw i32 %i.h, 2                      ; 5 uses
  %i.j = icmp slt i8 %i.g, 0
  br i1 %i.j, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not.i = icmp eq i8 %i.g, 0                    ; 2 uses
  %i.k = sub nsw i32 0, %i.i                      ; 4 uses
  %i.l = or disjoint i32 %i.i, 1                  ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0101.i6, i64 8
  br label %.loopexit

bb.d:                                             ; preds = %.preheader, %bb.n
  %.099.i5 = phi i32 [ 0, %.preheader ], [ %i.cd, %bb.n ]
  %.1102.i4 = phi ptr [ %.0101.i6, %.preheader ], [ %i.cc, %bb.n ] ; 8 uses
  %i.n = getelementptr inbounds [2 x i8], ptr %.1102.i4, i64 %i.d ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !27
  %i.p = zext i16 %i.o to i32                     ; 7 uses
  %i.q = getelementptr inbounds i8, ptr %.1102.i4, i64 %.idx.i ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !27   ; 2 uses
  %i.s = zext i16 %i.r to i32                     ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %.1102.i4, i64 %.idx115.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !27
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = load i16, ptr %.1102.i4, align 2, !tbaa !27
  %i.x = zext i16 %i.w to i32                     ; 7 uses
  %i.y = getelementptr inbounds [2 x i8], ptr %.1102.i4, i64 %i.a ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !27   ; 2 uses
  %i.aa = zext i16 %i.z to i32                    ; 3 uses
  %i.ab = getelementptr inbounds [2 x i8], ptr %.1102.i4, i64 %i.e
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !27
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = sub nsw i32 %i.p, %i.x
  %i.af = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 true)
  %i.ag = icmp slt i32 %i.af, %i.b
  br i1 %i.ag, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.ah = sub nsw i32 %i.s, %i.p
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %i.aj = icmp slt i32 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ak = sub nsw i32 %i.aa, %i.x
  %i.al = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %i.am = icmp samesign ult i32 %i.al, %i.c
  br i1 %i.am, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.an = sub nsw i32 %i.v, %i.p
  %i.ao = tail call i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %i.ap = icmp samesign uge i32 %i.ao, %i.c       ; 2 uses
  %brmerge = or i1 %i.ap, %.not.i
  %.mux = select i1 %i.ap, i32 %i.i, i32 %i.l
  br i1 %brmerge, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = add nuw nsw i32 %i.p, 1
  %i.ar = add nuw nsw i32 %i.aq, %i.x
  %i.as = lshr i32 %i.ar, 1
  %i.at = add nuw nsw i32 %i.as, %i.v
  %i.au = lshr i32 %i.at, 1
  %i.av = sub nsw i32 %i.au, %i.s                 ; 2 uses
  %i.aw = icmp slt i32 %i.av, %i.k
  %..i123.i = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.i)
  %.0.i124.i = select i1 %i.aw, i32 %i.k, i32 %..i123.i
  %i.ax = trunc i32 %.0.i124.i to i16
  %i.ay = add i16 %i.r, %i.ax
  store i16 %i.ay, ptr %i.q, align 2, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %.mux, %bb.g ], [ %i.l, %bb.h ] ; 2 uses
  %i.az = sub nsw i32 %i.ad, %i.x
  %i.ba = tail call i32 @llvm.abs.i32(i32 %i.az, i1 true)
  %i.bb = icmp samesign ult i32 %i.ba, %i.c
  br i1 %i.bb, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = add nuw nsw i32 %i.p, 1
  %i.bd = add nuw nsw i32 %i.bc, %i.x
  %i.be = lshr i32 %i.bd, 1
  %i.bf = add nuw nsw i32 %i.be, %i.ad
  %i.bg = lshr i32 %i.bf, 1
  %i.bh = sub nsw i32 %i.bg, %i.aa                ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.k
  %..i121.i = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.i)
  %.0.i122.i = select i1 %i.bi, i32 %i.k, i32 %..i121.i
  %i.bj = trunc i32 %.0.i122.i to i16
  %i.bk = add i16 %i.z, %i.bj
  store i16 %i.bk, ptr %i.y, align 2, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = add nuw nsw i32 %.0.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.1.i = phi i32 [ %i.bl, %bb.l ], [ %.0.i, %bb.i ] ; 2 uses
  %i.bm = sub nsw i32 %i.x, %i.p
  %i.bn = shl nsw i32 %i.bm, 2
  %i.bo = add nuw nsw i32 %i.s, 4
  %i.bp = sub nsw i32 %i.bo, %i.aa
  %i.bq = add nsw i32 %i.bp, %i.bn
  %i.br = ashr i32 %i.bq, 3                       ; 2 uses
  %i.bs = sub nsw i32 0, %.1.i                    ; 2 uses
  %i.bt = icmp slt i32 %i.br, %i.bs
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.br, i32 %.1.i)
  %.0.i120.i = select i1 %i.bt, i32 %i.bs, i32 %..i.i ; 2 uses
  %i.bu = add nsw i32 %.0.i120.i, %i.p
  %i.bv = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  %i.bw = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 1023)
  %i.bx = trunc nuw nsw i32 %i.bw to i16
  store i16 %i.bx, ptr %i.n, align 2, !tbaa !27
  %i.by = sub nsw i32 %i.x, %.0.i120.i
  %i.bz = tail call i32 @llvm.smax.i32(i32 %i.by, i32 0)
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 1023)
  %i.cb = trunc nuw nsw i32 %i.ca to i16
  store i16 %i.cb, ptr %.1102.i4, align 2, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f, %bb.e, %bb.d
  %i.cc = getelementptr inbounds nuw i8, ptr %.1102.i4, i64 2 ; 2 uses
  %i.cd = add nuw nsw i32 %.099.i5, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cd, 4
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !52

.loopexit:                                        ; preds = %bb.n, %bb.c
  %.2.i = phi ptr [ %i.m, %bb.c ], [ %i.cc, %bb.n ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond9.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond9.not, label %h264_loop_filter_luma_10_c.exit, label %bb.b, !llvm.loop !53

h264_loop_filter_luma_10_c.exit:                  ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @h264_h_loop_filter_luma_10_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #3 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 2 uses
  %i.b = shl i32 %2, 2
  %i.c = shl i32 %3, 2                            ; 4 uses
  %.idx = shl nsw i64 %i.a, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0101.i6 = phi ptr [ %0, %bb.a ], [ %.2.i, %.loopexit ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29    ; 3 uses
  %i.f = sext i8 %i.e to i32
  %i.g = shl nsw i32 %i.f, 2                      ; 5 uses
  %i.h = icmp slt i8 %i.e, 0
  br i1 %i.h, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not.i = icmp eq i8 %i.e, 0                    ; 2 uses
  %i.i = sub nsw i32 0, %i.g                      ; 4 uses
  %i.j = or disjoint i32 %i.g, 1                  ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %.0101.i6, i64 %.idx
  br label %.loopexit

bb.d:                                             ; preds = %.preheader, %bb.n
  %.099.i5 = phi i32 [ 0, %.preheader ], [ %i.cb, %bb.n ]
  %.1102.i4 = phi ptr [ %.0101.i6, %.preheader ], [ %i.ca, %bb.n ] ; 8 uses
  %i.l = getelementptr inbounds i8, ptr %.1102.i4, i64 -2 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !27
  %i.n = zext i16 %i.m to i32                     ; 7 uses
  %i.o = getelementptr inbounds i8, ptr %.1102.i4, i64 -4 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !27   ; 2 uses
  %i.q = zext i16 %i.p to i32                     ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.1102.i4, i64 -6
  %i.s = load i16, ptr %i.r, align 2, !tbaa !27
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = load i16, ptr %.1102.i4, align 2, !tbaa !27
  %i.v = zext i16 %i.u to i32                     ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1102.i4, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27   ; 2 uses
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.1102.i4, i64 4
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !27
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = sub nsw i32 %i.n, %i.v
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.ae = icmp slt i32 %i.ad, %i.b
  br i1 %i.ae, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.af = sub nsw i32 %i.q, %i.n
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true)
  %i.ah = icmp slt i32 %i.ag, %i.c
  br i1 %i.ah, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ai = sub nsw i32 %i.y, %i.v
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 true)
  %i.ak = icmp samesign ult i32 %i.aj, %i.c
  br i1 %i.ak, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.al = sub nsw i32 %i.t, %i.n
  %i.am = tail call i32 @llvm.abs.i32(i32 %i.al, i1 true)
  %i.an = icmp samesign uge i32 %i.am, %i.c       ; 2 uses
  %brmerge = or i1 %i.an, %.not.i
  %.mux = select i1 %i.an, i32 %i.g, i32 %i.j
  br i1 %brmerge, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = add nuw nsw i32 %i.n, 1
  %i.ap = add nuw nsw i32 %i.ao, %i.v
  %i.aq = lshr i32 %i.ap, 1
  %i.ar = add nuw nsw i32 %i.aq, %i.t
  %i.as = lshr i32 %i.ar, 1
  %i.at = sub nsw i32 %i.as, %i.q                 ; 2 uses
  %i.au = icmp slt i32 %i.at, %i.i
  %..i123.i = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %i.g)
  %.0.i124.i = select i1 %i.au, i32 %i.i, i32 %..i123.i
  %i.av = trunc i32 %.0.i124.i to i16
  %i.aw = add i16 %i.p, %i.av
  store i16 %i.aw, ptr %i.o, align 2, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %.mux, %bb.g ], [ %i.j, %bb.h ] ; 2 uses
  %i.ax = sub nsw i32 %i.ab, %i.v
  %i.ay = tail call i32 @llvm.abs.i32(i32 %i.ax, i1 true)
  %i.az = icmp samesign ult i32 %i.ay, %i.c
  br i1 %i.az, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add nuw nsw i32 %i.n, 1
  %i.bb = add nuw nsw i32 %i.ba, %i.v
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = add nuw nsw i32 %i.bc, %i.ab
  %i.be = lshr i32 %i.bd, 1
  %i.bf = sub nsw i32 %i.be, %i.y                 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.i
  %..i121.i = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 %i.g)
  %.0.i122.i = select i1 %i.bg, i32 %i.i, i32 %..i121.i
  %i.bh = trunc i32 %.0.i122.i to i16
  %i.bi = add i16 %i.x, %i.bh
  store i16 %i.bi, ptr %i.w, align 2, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bj = add nuw nsw i32 %.0.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.1.i = phi i32 [ %i.bj, %bb.l ], [ %.0.i, %bb.i ] ; 2 uses
  %i.bk = sub nsw i32 %i.v, %i.n
  %i.bl = shl nsw i32 %i.bk, 2
  %i.bm = add nuw nsw i32 %i.q, 4
  %i.bn = sub nsw i32 %i.bm, %i.y
  %i.bo = add nsw i32 %i.bn, %i.bl
  %i.bp = ashr i32 %i.bo, 3                       ; 2 uses
  %i.bq = sub nsw i32 0, %.1.i                    ; 2 uses
  %i.br = icmp slt i32 %i.bp, %i.bq
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.bp, i32 %.1.i)
  %.0.i120.i = select i1 %i.br, i32 %i.bq, i32 %..i.i ; 2 uses
  %i.bs = add nsw i32 %.0.i120.i, %i.n
  %i.bt = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 1023)
  %i.bv = trunc nuw nsw i32 %i.bu to i16
  store i16 %i.bv, ptr %i.l, align 2, !tbaa !27
  %i.bw = sub nsw i32 %i.v, %.0.i120.i
  %i.bx = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 0)
  %i.by = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 1023)
  %i.bz = trunc nuw nsw i32 %i.by to i16
  store i16 %i.bz, ptr %.1102.i4, align 2, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f, %bb.e, %bb.d
  %i.ca = getelementptr inbounds [2 x i8], ptr %.1102.i4, i64 %i.a ; 2 uses
  %i.cb = add nuw nsw i32 %.099.i5, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cb, 4
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !52

.loopexit:                                        ; preds = %bb.n, %bb.c
  %.2.i = phi ptr [ %i.k, %bb.c ], [ %i.ca, %bb.n ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond9.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond9.not, label %h264_loop_filter_luma_10_c.exit, label %bb.b, !llvm.loop !53

h264_loop_filter_luma_10_c.exit:                  ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @h264_h_loop_filter_luma_mbaff_10_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #3 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 2 uses
  %i.b = shl i32 %2, 2                            ; 2 uses
  %i.c = shl i32 %3, 2                            ; 8 uses
  %i.d = and i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0101.i6 = phi ptr [ %0, %bb.a ], [ %.2.i, %.loopexit ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !29    ; 3 uses
  %i.g = sext i8 %i.f to i32
  %i.h = shl nsw i32 %i.g, 2                      ; 8 uses
  %i.i = icmp slt i8 %i.f, 0
  br i1 %i.i, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not.i = icmp eq i8 %i.f, 0                    ; 4 uses
  %i.j = sub nsw i32 0, %i.h                      ; 8 uses
  %i.k = or disjoint i32 %i.h, 1                  ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.0101.i6, i64 -2 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !27
  %i.n = zext i16 %i.m to i32                     ; 7 uses
  %i.o = getelementptr inbounds i8, ptr %.0101.i6, i64 -4 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !27   ; 2 uses
  %i.q = zext i16 %i.p to i32                     ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.0101.i6, i64 -6
  %i.s = load i16, ptr %i.r, align 2, !tbaa !27
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = load i16, ptr %.0101.i6, align 2, !tbaa !27
  %i.v = zext i16 %i.u to i32                     ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0101.i6, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27   ; 2 uses
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0101.i6, i64 4
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !27
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = sub nsw i32 %i.n, %i.v
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.ae = icmp slt i32 %i.ad, %i.b
  br i1 %i.ae, label %bb.d, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds [2 x i8], ptr %.0101.i6, i64 %i.d
  br label %.loopexit

bb.d:                                             ; preds = %.preheader
  %i.ag = sub nsw i32 %i.q, %i.n
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true)
  %i.ai = icmp slt i32 %i.ah, %i.c
  br i1 %i.ai, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.aj = sub nsw i32 %i.y, %i.v
  %i.ak = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 true)
  %i.al = icmp samesign ult i32 %i.ak, %i.c
  br i1 %i.al, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.am = sub nsw i32 %i.t, %i.n
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %i.ao = icmp samesign uge i32 %i.an, %i.c       ; 2 uses
  %brmerge = or i1 %i.ao, %.not.i
  %.mux = select i1 %i.ao, i32 %i.h, i32 %i.k
  br i1 %brmerge, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = add nuw nsw i32 %i.n, 1
  %i.aq = add nuw nsw i32 %i.ap, %i.v
  %i.ar = lshr i32 %i.aq, 1
  %i.as = add nuw nsw i32 %i.ar, %i.t
  %i.at = lshr i32 %i.as, 1
  %i.au = sub nsw i32 %i.at, %i.q                 ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.j
  %..i123.i = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.h)
  %.0.i124.i = select i1 %i.av, i32 %i.j, i32 %..i123.i
  %i.aw = trunc i32 %.0.i124.i to i16
  %i.ax = add i16 %i.p, %i.aw
  store i16 %i.ax, ptr %i.o, align 2, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %.mux, %bb.f ], [ %i.k, %bb.g ] ; 2 uses
  %i.ay = sub nsw i32 %i.ab, %i.v
  %i.az = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  %i.ba = icmp samesign ult i32 %i.az, %i.c
  br i1 %i.ba, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = add nuw nsw i32 %i.n, 1
  %i.bc = add nuw nsw i32 %i.bb, %i.v
  %i.bd = lshr i32 %i.bc, 1
  %i.be = add nuw nsw i32 %i.bd, %i.ab
  %i.bf = lshr i32 %i.be, 1
  %i.bg = sub nsw i32 %i.bf, %i.y                 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %i.j
  %..i121.i = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 %i.h)
  %.0.i122.i = select i1 %i.bh, i32 %i.j, i32 %..i121.i
  %i.bi = trunc i32 %.0.i122.i to i16
  %i.bj = add i16 %i.x, %i.bi
  store i16 %i.bj, ptr %i.w, align 2, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bk = add nuw nsw i32 %.0.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.1.i = phi i32 [ %i.bk, %bb.k ], [ %.0.i, %bb.h ] ; 2 uses
  %i.bl = sub nsw i32 %i.v, %i.n
  %i.bm = shl nsw i32 %i.bl, 2
  %i.bn = add nuw nsw i32 %i.q, 4
  %i.bo = sub nsw i32 %i.bn, %i.y
  %i.bp = add nsw i32 %i.bo, %i.bm
  %i.bq = ashr i32 %i.bp, 3                       ; 2 uses
  %i.br = sub nsw i32 0, %.1.i                    ; 2 uses
  %i.bs = icmp slt i32 %i.bq, %i.br
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %.1.i)
  %.0.i120.i = select i1 %i.bs, i32 %i.br, i32 %..i.i ; 2 uses
  %i.bt = add nsw i32 %.0.i120.i, %i.n
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %i.bv = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 1023)
  %i.bw = trunc nuw nsw i32 %i.bv to i16
  store i16 %i.bw, ptr %i.l, align 2, !tbaa !27
  %i.bx = sub nsw i32 %i.v, %.0.i120.i
  %i.by = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 0)
  %i.bz = tail call i32 @llvm.umin.i32(i32 %i.by, i32 1023)
  %i.ca = trunc nuw nsw i32 %i.bz to i16
  store i16 %i.ca, ptr %.0101.i6, align 2, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e, %bb.d, %.preheader
  %i.cb = getelementptr inbounds [2 x i8], ptr %.0101.i6, i64 %i.a ; 8 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -2 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !27
  %i.ce = zext i16 %i.cd to i32                   ; 7 uses
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 -4 ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !27 ; 2 uses
  %i.ch = zext i16 %i.cg to i32                   ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %i.cb, i64 -6
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !27
  %i.ck = zext i16 %i.cj to i32                   ; 2 uses
  %i.cl = load i16, ptr %i.cb, align 2, !tbaa !27
  %i.cm = zext i16 %i.cl to i32                   ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 2 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !27 ; 2 uses
  %i.cp = zext i16 %i.co to i32                   ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !27
  %i.cs = zext i16 %i.cr to i32                   ; 2 uses
  %i.ct = sub nsw i32 %i.ce, %i.cm
  %i.cu = tail call i32 @llvm.abs.i32(i32 %i.ct, i1 true)
  %i.cv = icmp slt i32 %i.cu, %i.b
  br i1 %i.cv, label %bb.n, label %.loopexit.loopexit

bb.n:                                             ; preds = %bb.m
  %i.cw = sub nsw i32 %i.ch, %i.ce
  %i.cx = tail call i32 @llvm.abs.i32(i32 %i.cw, i1 true)
  %i.cy = icmp slt i32 %i.cx, %i.c
  br i1 %i.cy, label %bb.o, label %.loopexit.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cz = sub nsw i32 %i.cp, %i.cm
  %i.da = tail call i32 @llvm.abs.i32(i32 %i.cz, i1 true)
  %i.db = icmp samesign ult i32 %i.da, %i.c
  br i1 %i.db, label %bb.p, label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.o
  %i.dc = sub nsw i32 %i.ck, %i.ce
  %i.dd = tail call i32 @llvm.abs.i32(i32 %i.dc, i1 true)
  %i.de = icmp samesign uge i32 %i.dd, %i.c       ; 2 uses
  %brmerge.1 = or i1 %i.de, %.not.i
  %.mux.1 = select i1 %i.de, i32 %i.h, i32 %i.k
  br i1 %brmerge.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.df = add nuw nsw i32 %i.ce, 1
  %i.dg = add nuw nsw i32 %i.df, %i.cm
  %i.dh = lshr i32 %i.dg, 1
  %i.di = add nuw nsw i32 %i.dh, %i.ck
  %i.dj = lshr i32 %i.di, 1
  %i.dk = sub nsw i32 %i.dj, %i.ch                ; 2 uses
  %i.dl = icmp slt i32 %i.dk, %i.j
  %..i123.i.1 = tail call i32 @llvm.smin.i32(i32 %i.dk, i32 %i.h)
  %.0.i124.i.1 = select i1 %i.dl, i32 %i.j, i32 %..i123.i.1
  %i.dm = trunc i32 %.0.i124.i.1 to i16
  %i.dn = add i16 %i.cg, %i.dm
  store i16 %i.dn, ptr %i.cf, align 2, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.i.1 = phi i32 [ %.mux.1, %bb.p ], [ %i.k, %bb.q ] ; 2 uses
  %i.do = sub nsw i32 %i.cs, %i.cm
  %i.dp = tail call i32 @llvm.abs.i32(i32 %i.do, i1 true)
  %i.dq = icmp samesign ult i32 %i.dp, %i.c
  br i1 %i.dq, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dr = add nuw nsw i32 %i.ce, 1
  %i.ds = add nuw nsw i32 %i.dr, %i.cm
  %i.dt = lshr i32 %i.ds, 1
  %i.du = add nuw nsw i32 %i.dt, %i.cs
  %i.dv = lshr i32 %i.du, 1
  %i.dw = sub nsw i32 %i.dv, %i.cp                ; 2 uses
  %i.dx = icmp slt i32 %i.dw, %i.j
  %..i121.i.1 = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.h)
  %.0.i122.i.1 = select i1 %i.dx, i32 %i.j, i32 %..i121.i.1
end_hunk_1
begin_hunk_2_@biweight_h264_pixels8_12_c:bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %.093, i64 12
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !27
  %i.cm = zext i16 %i.cl to i32
  %i.cn = mul nsw i32 %6, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.06892, i64 12 ; 2 uses
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !27
  %i.cq = zext i16 %i.cp to i32
  %i.cr = mul nsw i32 %5, %i.cq
  %i.cs = add i32 %i.cn, %i.d
  %i.ct = add i32 %i.cs, %i.cr
  %i.cu = ashr i32 %i.ct, %i.f
  %i.cv = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 0)
  %i.cw = tail call i32 @llvm.umin.i32(i32 %i.cv, i32 4095)
  %i.cx = trunc nuw nsw i32 %i.cw to i16
  store i16 %i.cx, ptr %i.co, align 2, !tbaa !27
  %i.cy = getelementptr inbounds nuw i8, ptr %.093, i64 14
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !27
  %i.da = zext i16 %i.cz to i32
  %i.db = mul nsw i32 %6, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %.06892, i64 14 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !27
  %i.de = zext i16 %i.dd to i32
  %i.df = mul nsw i32 %5, %i.de
  %i.dg = add i32 %i.db, %i.d
  %i.dh = add i32 %i.dg, %i.df
  %i.di = ashr i32 %i.dh, %i.f
  %i.dj = tail call i32 @llvm.smax.i32(i32 %i.di, i32 0)
  %i.dk = tail call i32 @llvm.umin.i32(i32 %i.dj, i32 4095)
  %i.dl = trunc nuw nsw i32 %i.dk to i16
  store i16 %i.dl, ptr %i.dc, align 2, !tbaa !27
  %i.dm = add nuw nsw i32 %.06991, 1              ; 2 uses
  %i.dn = getelementptr inbounds [2 x i8], ptr %.06892, i64 %i.a
  %i.do = getelementptr inbounds [2 x i8], ptr %.093, i64 %i.a
  %exitcond.not = icmp eq i32 %i.dm, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @biweight_h264_pixels4_12_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 {
bb.a:
  %i.a = ashr i64 %2, 1                           ; 2 uses
  %i.b = shl i32 %7, 4
  %i.c = or disjoint i32 %i.b, 1
  %i.d = shl i32 %i.c, %4                         ; 4 uses
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %4, 1                        ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.053 = phi ptr [ %1, %.lr.ph ], [ %i.bk, %bb.b ] ; 5 uses
  %.04052 = phi ptr [ %0, %.lr.ph ], [ %i.bj, %bb.b ] ; 6 uses
  %.04151 = phi i32 [ 0, %.lr.ph ], [ %i.bi, %bb.b ]
  %i.g = load i16, ptr %.053, align 2, !tbaa !27
  %i.h = zext i16 %i.g to i32
  %i.i = mul nsw i32 %6, %i.h
  %i.j = load i16, ptr %.04052, align 2, !tbaa !27
  %i.k = zext i16 %i.j to i32
  %i.l = mul nsw i32 %5, %i.k
  %i.m = add i32 %i.i, %i.d
  %i.n = add i32 %i.m, %i.l
  %i.o = ashr i32 %i.n, %i.f
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.p, i32 4095)
  %i.r = trunc nuw nsw i32 %i.q to i16
  store i16 %i.r, ptr %.04052, align 2, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %.053, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !27
  %i.u = zext i16 %i.t to i32
  %i.v = mul nsw i32 %6, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.04052, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27
  %i.y = zext i16 %i.x to i32
  %i.z = mul nsw i32 %5, %i.y
  %i.aa = add i32 %i.v, %i.d
  %i.ab = add i32 %i.aa, %i.z
  %i.ac = ashr i32 %i.ab, %i.f
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 4095)
  %i.af = trunc nuw nsw i32 %i.ae to i16
  store i16 %i.af, ptr %i.w, align 2, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %.053, i64 4
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !27
  %i.ai = zext i16 %i.ah to i32
  %i.aj = mul nsw i32 %6, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.04052, i64 4 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !27
  %i.am = zext i16 %i.al to i32
  %i.an = mul nsw i32 %5, %i.am
  %i.ao = add i32 %i.aj, %i.d
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = ashr i32 %i.ap, %i.f
  %i.ar = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 0)
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.ar, i32 4095)
  %i.at = trunc nuw nsw i32 %i.as to i16
  store i16 %i.at, ptr %i.ak, align 2, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %.053, i64 6
  %i.av = load i16, ptr %i.au, align 2, !tbaa !27
  %i.aw = zext i16 %i.av to i32
  %i.ax = mul nsw i32 %6, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.04052, i64 6 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !27
  %i.ba = zext i16 %i.az to i32
  %i.bb = mul nsw i32 %5, %i.ba
  %i.bc = add i32 %i.ax, %i.d
  %i.bd = add i32 %i.bc, %i.bb
  %i.be = ashr i32 %i.bd, %i.f
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.be, i32 0)
  %i.bg = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 4095)
  %i.bh = trunc nuw nsw i32 %i.bg to i16
  store i16 %i.bh, ptr %i.ay, align 2, !tbaa !27
  %i.bi = add nuw nsw i32 %.04151, 1              ; 2 uses
  %i.bj = getelementptr inbounds [2 x i8], ptr %.04052, i64 %i.a
  %i.bk = getelementptr inbounds [2 x i8], ptr %.053, i64 %i.a
  %exitcond.not = icmp eq i32 %i.bi, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @biweight_h264_pixels2_12_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 {
bb.a:
  %i.a = ashr i64 %2, 1                           ; 2 uses
  %i.b = shl i32 %7, 4
  %i.c = or disjoint i32 %i.b, 1
  %i.d = shl i32 %i.c, %4                         ; 2 uses
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %4, 1                        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.033 = phi ptr [ %1, %.lr.ph ], [ %i.ai, %bb.b ] ; 3 uses
  %.02632 = phi ptr [ %0, %.lr.ph ], [ %i.ah, %bb.b ] ; 4 uses
  %.02731 = phi i32 [ 0, %.lr.ph ], [ %i.ag, %bb.b ]
  %i.g = load i16, ptr %.033, align 2, !tbaa !27
  %i.h = zext i16 %i.g to i32
  %i.i = mul nsw i32 %6, %i.h
  %i.j = load i16, ptr %.02632, align 2, !tbaa !27
  %i.k = zext i16 %i.j to i32
  %i.l = mul nsw i32 %5, %i.k
  %i.m = add i32 %i.i, %i.d
  %i.n = add i32 %i.m, %i.l
  %i.o = ashr i32 %i.n, %i.f
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.p, i32 4095)
  %i.r = trunc nuw nsw i32 %i.q to i16
  store i16 %i.r, ptr %.02632, align 2, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %.033, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !27
  %i.u = zext i16 %i.t to i32
  %i.v = mul nsw i32 %6, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.02632, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27
  %i.y = zext i16 %i.x to i32
  %i.z = mul nsw i32 %5, %i.y
  %i.aa = add i32 %i.v, %i.d
  %i.ab = add i32 %i.aa, %i.z
  %i.ac = ashr i32 %i.ab, %i.f
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 4095)
  %i.af = trunc nuw nsw i32 %i.ae to i16
  store i16 %i.af, ptr %i.w, align 2, !tbaa !27
  %i.ag = add nuw nsw i32 %.02731, 1              ; 2 uses
  %i.ah = getelementptr inbounds [2 x i8], ptr %.02632, i64 %i.a
  %i.ai = getelementptr inbounds [2 x i8], ptr %.033, i64 %i.a
  %exitcond.not = icmp eq i32 %i.ag, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @h264_v_loop_filter_luma_12_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #3 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 4 uses
  %i.b = shl i32 %2, 4
  %i.c = shl i32 %3, 4                            ; 4 uses
  %i.d = sub nsw i64 0, %i.a
  %.idx.i = mul nsw i64 %i.a, -4
  %.idx115.i = mul nsw i64 %i.a, -6
  %i.e = and i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0101.i6 = phi ptr [ %0, %bb.a ], [ %.2.i, %.loopexit ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29    ; 3 uses
  %i.h = sext i8 %i.g to i32
  %i.i = shl nsw i32 %i.h, 4                      ; 5 uses
  %i.j = icmp slt i8 %i.g, 0
  br i1 %i.j, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not.i = icmp eq i8 %i.g, 0                    ; 2 uses
  %i.k = sub nsw i32 0, %i.i                      ; 4 uses
  %i.l = or disjoint i32 %i.i, 1                  ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0101.i6, i64 8
  br label %.loopexit

bb.d:                                             ; preds = %.preheader, %bb.n
  %.099.i5 = phi i32 [ 0, %.preheader ], [ %i.cd, %bb.n ]
  %.1102.i4 = phi ptr [ %.0101.i6, %.preheader ], [ %i.cc, %bb.n ] ; 8 uses
  %i.n = getelementptr inbounds [2 x i8], ptr %.1102.i4, i64 %i.d ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !27
  %i.p = zext i16 %i.o to i32                     ; 7 uses
  %i.q = getelementptr inbounds i8, ptr %.1102.i4, i64 %.idx.i ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !27   ; 2 uses
  %i.s = zext i16 %i.r to i32                     ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %.1102.i4, i64 %.idx115.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !27
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = load i16, ptr %.1102.i4, align 2, !tbaa !27
  %i.x = zext i16 %i.w to i32                     ; 7 uses
  %i.y = getelementptr inbounds [2 x i8], ptr %.1102.i4, i64 %i.a ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !27   ; 2 uses
  %i.aa = zext i16 %i.z to i32                    ; 3 uses
  %i.ab = getelementptr inbounds [2 x i8], ptr %.1102.i4, i64 %i.e
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !27
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = sub nsw i32 %i.p, %i.x
  %i.af = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 true)
  %i.ag = icmp slt i32 %i.af, %i.b
  br i1 %i.ag, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.ah = sub nsw i32 %i.s, %i.p
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %i.aj = icmp slt i32 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ak = sub nsw i32 %i.aa, %i.x
  %i.al = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %i.am = icmp samesign ult i32 %i.al, %i.c
  br i1 %i.am, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.an = sub nsw i32 %i.v, %i.p
  %i.ao = tail call i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %i.ap = icmp samesign uge i32 %i.ao, %i.c       ; 2 uses
  %brmerge = or i1 %i.ap, %.not.i
  %.mux = select i1 %i.ap, i32 %i.i, i32 %i.l
  br i1 %brmerge, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = add nuw nsw i32 %i.p, 1
  %i.ar = add nuw nsw i32 %i.aq, %i.x
  %i.as = lshr i32 %i.ar, 1
  %i.at = add nuw nsw i32 %i.as, %i.v
  %i.au = lshr i32 %i.at, 1
  %i.av = sub nsw i32 %i.au, %i.s                 ; 2 uses
  %i.aw = icmp slt i32 %i.av, %i.k
  %..i123.i = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.i)
  %.0.i124.i = select i1 %i.aw, i32 %i.k, i32 %..i123.i
  %i.ax = trunc i32 %.0.i124.i to i16
  %i.ay = add i16 %i.r, %i.ax
  store i16 %i.ay, ptr %i.q, align 2, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %.mux, %bb.g ], [ %i.l, %bb.h ] ; 2 uses
  %i.az = sub nsw i32 %i.ad, %i.x
  %i.ba = tail call i32 @llvm.abs.i32(i32 %i.az, i1 true)
  %i.bb = icmp samesign ult i32 %i.ba, %i.c
  br i1 %i.bb, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = add nuw nsw i32 %i.p, 1
  %i.bd = add nuw nsw i32 %i.bc, %i.x
  %i.be = lshr i32 %i.bd, 1
  %i.bf = add nuw nsw i32 %i.be, %i.ad
  %i.bg = lshr i32 %i.bf, 1
  %i.bh = sub nsw i32 %i.bg, %i.aa                ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.k
  %..i121.i = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.i)
  %.0.i122.i = select i1 %i.bi, i32 %i.k, i32 %..i121.i
  %i.bj = trunc i32 %.0.i122.i to i16
  %i.bk = add i16 %i.z, %i.bj
  store i16 %i.bk, ptr %i.y, align 2, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = add nuw nsw i32 %.0.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.1.i = phi i32 [ %i.bl, %bb.l ], [ %.0.i, %bb.i ] ; 2 uses
  %i.bm = sub nsw i32 %i.x, %i.p
  %i.bn = shl nsw i32 %i.bm, 2
  %i.bo = add nuw nsw i32 %i.s, 4
  %i.bp = sub nsw i32 %i.bo, %i.aa
  %i.bq = add nsw i32 %i.bp, %i.bn
  %i.br = ashr i32 %i.bq, 3                       ; 2 uses
  %i.bs = sub nsw i32 0, %.1.i                    ; 2 uses
  %i.bt = icmp slt i32 %i.br, %i.bs
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.br, i32 %.1.i)
  %.0.i120.i = select i1 %i.bt, i32 %i.bs, i32 %..i.i ; 2 uses
  %i.bu = add nsw i32 %.0.i120.i, %i.p
  %i.bv = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  %i.bw = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 4095)
  %i.bx = trunc nuw nsw i32 %i.bw to i16
  store i16 %i.bx, ptr %i.n, align 2, !tbaa !27
  %i.by = sub nsw i32 %i.x, %.0.i120.i
  %i.bz = tail call i32 @llvm.smax.i32(i32 %i.by, i32 0)
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 4095)
  %i.cb = trunc nuw nsw i32 %i.ca to i16
  store i16 %i.cb, ptr %.1102.i4, align 2, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f, %bb.e, %bb.d
  %i.cc = getelementptr inbounds nuw i8, ptr %.1102.i4, i64 2 ; 2 uses
  %i.cd = add nuw nsw i32 %.099.i5, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cd, 4
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !65

.loopexit:                                        ; preds = %bb.n, %bb.c
  %.2.i = phi ptr [ %i.m, %bb.c ], [ %i.cc, %bb.n ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond9.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond9.not, label %h264_loop_filter_luma_12_c.exit, label %bb.b, !llvm.loop !66

h264_loop_filter_luma_12_c.exit:                  ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @h264_h_loop_filter_luma_12_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #3 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 2 uses
  %i.b = shl i32 %2, 4
  %i.c = shl i32 %3, 4                            ; 4 uses
  %.idx = shl nsw i64 %i.a, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0101.i6 = phi ptr [ %0, %bb.a ], [ %.2.i, %.loopexit ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29    ; 3 uses
  %i.f = sext i8 %i.e to i32
  %i.g = shl nsw i32 %i.f, 4                      ; 5 uses
  %i.h = icmp slt i8 %i.e, 0
  br i1 %i.h, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not.i = icmp eq i8 %i.e, 0                    ; 2 uses
  %i.i = sub nsw i32 0, %i.g                      ; 4 uses
  %i.j = or disjoint i32 %i.g, 1                  ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %.0101.i6, i64 %.idx
  br label %.loopexit

bb.d:                                             ; preds = %.preheader, %bb.n
  %.099.i5 = phi i32 [ 0, %.preheader ], [ %i.cb, %bb.n ]
  %.1102.i4 = phi ptr [ %.0101.i6, %.preheader ], [ %i.ca, %bb.n ] ; 8 uses
  %i.l = getelementptr inbounds i8, ptr %.1102.i4, i64 -2 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !27
  %i.n = zext i16 %i.m to i32                     ; 7 uses
  %i.o = getelementptr inbounds i8, ptr %.1102.i4, i64 -4 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !27   ; 2 uses
  %i.q = zext i16 %i.p to i32                     ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.1102.i4, i64 -6
  %i.s = load i16, ptr %i.r, align 2, !tbaa !27
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = load i16, ptr %.1102.i4, align 2, !tbaa !27
  %i.v = zext i16 %i.u to i32                     ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1102.i4, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27   ; 2 uses
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.1102.i4, i64 4
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !27
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = sub nsw i32 %i.n, %i.v
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.ae = icmp slt i32 %i.ad, %i.b
  br i1 %i.ae, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.af = sub nsw i32 %i.q, %i.n
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true)
  %i.ah = icmp slt i32 %i.ag, %i.c
  br i1 %i.ah, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ai = sub nsw i32 %i.y, %i.v
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 true)
  %i.ak = icmp samesign ult i32 %i.aj, %i.c
  br i1 %i.ak, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.al = sub nsw i32 %i.t, %i.n
  %i.am = tail call i32 @llvm.abs.i32(i32 %i.al, i1 true)
  %i.an = icmp samesign uge i32 %i.am, %i.c       ; 2 uses
  %brmerge = or i1 %i.an, %.not.i
  %.mux = select i1 %i.an, i32 %i.g, i32 %i.j
  br i1 %brmerge, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = add nuw nsw i32 %i.n, 1
  %i.ap = add nuw nsw i32 %i.ao, %i.v
  %i.aq = lshr i32 %i.ap, 1
  %i.ar = add nuw nsw i32 %i.aq, %i.t
  %i.as = lshr i32 %i.ar, 1
  %i.at = sub nsw i32 %i.as, %i.q                 ; 2 uses
  %i.au = icmp slt i32 %i.at, %i.i
  %..i123.i = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %i.g)
  %.0.i124.i = select i1 %i.au, i32 %i.i, i32 %..i123.i
  %i.av = trunc i32 %.0.i124.i to i16
  %i.aw = add i16 %i.p, %i.av
  store i16 %i.aw, ptr %i.o, align 2, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %.mux, %bb.g ], [ %i.j, %bb.h ] ; 2 uses
  %i.ax = sub nsw i32 %i.ab, %i.v
  %i.ay = tail call i32 @llvm.abs.i32(i32 %i.ax, i1 true)
  %i.az = icmp samesign ult i32 %i.ay, %i.c
  br i1 %i.az, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add nuw nsw i32 %i.n, 1
  %i.bb = add nuw nsw i32 %i.ba, %i.v
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = add nuw nsw i32 %i.bc, %i.ab
  %i.be = lshr i32 %i.bd, 1
  %i.bf = sub nsw i32 %i.be, %i.y                 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.i
  %..i121.i = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 %i.g)
  %.0.i122.i = select i1 %i.bg, i32 %i.i, i32 %..i121.i
  %i.bh = trunc i32 %.0.i122.i to i16
  %i.bi = add i16 %i.x, %i.bh
  store i16 %i.bi, ptr %i.w, align 2, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bj = add nuw nsw i32 %.0.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.1.i = phi i32 [ %i.bj, %bb.l ], [ %.0.i, %bb.i ] ; 2 uses
  %i.bk = sub nsw i32 %i.v, %i.n
  %i.bl = shl nsw i32 %i.bk, 2
  %i.bm = add nuw nsw i32 %i.q, 4
  %i.bn = sub nsw i32 %i.bm, %i.y
  %i.bo = add nsw i32 %i.bn, %i.bl
  %i.bp = ashr i32 %i.bo, 3                       ; 2 uses
  %i.bq = sub nsw i32 0, %.1.i                    ; 2 uses
  %i.br = icmp slt i32 %i.bp, %i.bq
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.bp, i32 %.1.i)
  %.0.i120.i = select i1 %i.br, i32 %i.bq, i32 %..i.i ; 2 uses
  %i.bs = add nsw i32 %.0.i120.i, %i.n
  %i.bt = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 4095)
  %i.bv = trunc nuw nsw i32 %i.bu to i16
  store i16 %i.bv, ptr %i.l, align 2, !tbaa !27
  %i.bw = sub nsw i32 %i.v, %.0.i120.i
  %i.bx = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 0)
  %i.by = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 4095)
  %i.bz = trunc nuw nsw i32 %i.by to i16
  store i16 %i.bz, ptr %.1102.i4, align 2, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f, %bb.e, %bb.d
  %i.ca = getelementptr inbounds [2 x i8], ptr %.1102.i4, i64 %i.a ; 2 uses
  %i.cb = add nuw nsw i32 %.099.i5, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cb, 4
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !65

.loopexit:                                        ; preds = %bb.n, %bb.c
  %.2.i = phi ptr [ %i.k, %bb.c ], [ %i.ca, %bb.n ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond9.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond9.not, label %h264_loop_filter_luma_12_c.exit, label %bb.b, !llvm.loop !66

h264_loop_filter_luma_12_c.exit:                  ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @h264_h_loop_filter_luma_mbaff_12_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #3 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 2 uses
  %i.b = shl i32 %2, 4                            ; 2 uses
  %i.c = shl i32 %3, 4                            ; 8 uses
  %i.d = and i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0101.i6 = phi ptr [ %0, %bb.a ], [ %.2.i, %.loopexit ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !29    ; 3 uses
  %i.g = sext i8 %i.f to i32
  %i.h = shl nsw i32 %i.g, 4                      ; 8 uses
  %i.i = icmp slt i8 %i.f, 0
  br i1 %i.i, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not.i = icmp eq i8 %i.f, 0                    ; 4 uses
  %i.j = sub nsw i32 0, %i.h                      ; 8 uses
  %i.k = or disjoint i32 %i.h, 1                  ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.0101.i6, i64 -2 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !27
  %i.n = zext i16 %i.m to i32                     ; 7 uses
  %i.o = getelementptr inbounds i8, ptr %.0101.i6, i64 -4 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !27   ; 2 uses
  %i.q = zext i16 %i.p to i32                     ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.0101.i6, i64 -6
  %i.s = load i16, ptr %i.r, align 2, !tbaa !27
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = load i16, ptr %.0101.i6, align 2, !tbaa !27
  %i.v = zext i16 %i.u to i32                     ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0101.i6, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27   ; 2 uses
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0101.i6, i64 4
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !27
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = sub nsw i32 %i.n, %i.v
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.ae = icmp slt i32 %i.ad, %i.b
  br i1 %i.ae, label %bb.d, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds [2 x i8], ptr %.0101.i6, i64 %i.d
  br label %.loopexit

bb.d:                                             ; preds = %.preheader
  %i.ag = sub nsw i32 %i.q, %i.n
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true)
  %i.ai = icmp slt i32 %i.ah, %i.c
  br i1 %i.ai, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.aj = sub nsw i32 %i.y, %i.v
  %i.ak = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 true)
  %i.al = icmp samesign ult i32 %i.ak, %i.c
  br i1 %i.al, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.am = sub nsw i32 %i.t, %i.n
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %i.ao = icmp samesign uge i32 %i.an, %i.c       ; 2 uses
  %brmerge = or i1 %i.ao, %.not.i
  %.mux = select i1 %i.ao, i32 %i.h, i32 %i.k
  br i1 %brmerge, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = add nuw nsw i32 %i.n, 1
  %i.aq = add nuw nsw i32 %i.ap, %i.v
  %i.ar = lshr i32 %i.aq, 1
  %i.as = add nuw nsw i32 %i.ar, %i.t
  %i.at = lshr i32 %i.as, 1
  %i.au = sub nsw i32 %i.at, %i.q                 ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.j
  %..i123.i = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.h)
  %.0.i124.i = select i1 %i.av, i32 %i.j, i32 %..i123.i
  %i.aw = trunc i32 %.0.i124.i to i16
  %i.ax = add i16 %i.p, %i.aw
  store i16 %i.ax, ptr %i.o, align 2, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %.mux, %bb.f ], [ %i.k, %bb.g ] ; 2 uses
  %i.ay = sub nsw i32 %i.ab, %i.v
  %i.az = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  %i.ba = icmp samesign ult i32 %i.az, %i.c
  br i1 %i.ba, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = add nuw nsw i32 %i.n, 1
  %i.bc = add nuw nsw i32 %i.bb, %i.v
  %i.bd = lshr i32 %i.bc, 1
  %i.be = add nuw nsw i32 %i.bd, %i.ab
  %i.bf = lshr i32 %i.be, 1
  %i.bg = sub nsw i32 %i.bf, %i.y                 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %i.j
  %..i121.i = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 %i.h)
  %.0.i122.i = select i1 %i.bh, i32 %i.j, i32 %..i121.i
  %i.bi = trunc i32 %.0.i122.i to i16
  %i.bj = add i16 %i.x, %i.bi
  store i16 %i.bj, ptr %i.w, align 2, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bk = add nuw nsw i32 %.0.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.1.i = phi i32 [ %i.bk, %bb.k ], [ %.0.i, %bb.h ] ; 2 uses
  %i.bl = sub nsw i32 %i.v, %i.n
  %i.bm = shl nsw i32 %i.bl, 2
  %i.bn = add nuw nsw i32 %i.q, 4
  %i.bo = sub nsw i32 %i.bn, %i.y
  %i.bp = add nsw i32 %i.bo, %i.bm
  %i.bq = ashr i32 %i.bp, 3                       ; 2 uses
  %i.br = sub nsw i32 0, %.1.i                    ; 2 uses
  %i.bs = icmp slt i32 %i.bq, %i.br
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %.1.i)
  %.0.i120.i = select i1 %i.bs, i32 %i.br, i32 %..i.i ; 2 uses
  %i.bt = add nsw i32 %.0.i120.i, %i.n
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %i.bv = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 4095)
  %i.bw = trunc nuw nsw i32 %i.bv to i16
  store i16 %i.bw, ptr %i.l, align 2, !tbaa !27
  %i.bx = sub nsw i32 %i.v, %.0.i120.i
  %i.by = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 0)
  %i.bz = tail call i32 @llvm.umin.i32(i32 %i.by, i32 4095)
  %i.ca = trunc nuw nsw i32 %i.bz to i16
  store i16 %i.ca, ptr %.0101.i6, align 2, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e, %bb.d, %.preheader
  %i.cb = getelementptr inbounds [2 x i8], ptr %.0101.i6, i64 %i.a ; 8 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -2 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !27
  %i.ce = zext i16 %i.cd to i32                   ; 7 uses
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 -4 ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !27 ; 2 uses
  %i.ch = zext i16 %i.cg to i32                   ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %i.cb, i64 -6
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !27
  %i.ck = zext i16 %i.cj to i32                   ; 2 uses
  %i.cl = load i16, ptr %i.cb, align 2, !tbaa !27
  %i.cm = zext i16 %i.cl to i32                   ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 2 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !27 ; 2 uses
  %i.cp = zext i16 %i.co to i32                   ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !27
  %i.cs = zext i16 %i.cr to i32                   ; 2 uses
  %i.ct = sub nsw i32 %i.ce, %i.cm
  %i.cu = tail call i32 @llvm.abs.i32(i32 %i.ct, i1 true)
  %i.cv = icmp slt i32 %i.cu, %i.b
  br i1 %i.cv, label %bb.n, label %.loopexit.loopexit

bb.n:                                             ; preds = %bb.m
  %i.cw = sub nsw i32 %i.ch, %i.ce
  %i.cx = tail call i32 @llvm.abs.i32(i32 %i.cw, i1 true)
  %i.cy = icmp slt i32 %i.cx, %i.c
  br i1 %i.cy, label %bb.o, label %.loopexit.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cz = sub nsw i32 %i.cp, %i.cm
  %i.da = tail call i32 @llvm.abs.i32(i32 %i.cz, i1 true)
  %i.db = icmp samesign ult i32 %i.da, %i.c
  br i1 %i.db, label %bb.p, label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.o
  %i.dc = sub nsw i32 %i.ck, %i.ce
  %i.dd = tail call i32 @llvm.abs.i32(i32 %i.dc, i1 true)
  %i.de = icmp samesign uge i32 %i.dd, %i.c       ; 2 uses
  %brmerge.1 = or i1 %i.de, %.not.i
  %.mux.1 = select i1 %i.de, i32 %i.h, i32 %i.k
  br i1 %brmerge.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.df = add nuw nsw i32 %i.ce, 1
  %i.dg = add nuw nsw i32 %i.df, %i.cm
  %i.dh = lshr i32 %i.dg, 1
  %i.di = add nuw nsw i32 %i.dh, %i.ck
  %i.dj = lshr i32 %i.di, 1
  %i.dk = sub nsw i32 %i.dj, %i.ch                ; 2 uses
  %i.dl = icmp slt i32 %i.dk, %i.j
  %..i123.i.1 = tail call i32 @llvm.smin.i32(i32 %i.dk, i32 %i.h)
  %.0.i124.i.1 = select i1 %i.dl, i32 %i.j, i32 %..i123.i.1
  %i.dm = trunc i32 %.0.i124.i.1 to i16
  %i.dn = add i16 %i.cg, %i.dm
  store i16 %i.dn, ptr %i.cf, align 2, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.i.1 = phi i32 [ %.mux.1, %bb.p ], [ %i.k, %bb.q ] ; 2 uses
  %i.do = sub nsw i32 %i.cs, %i.cm
  %i.dp = tail call i32 @llvm.abs.i32(i32 %i.do, i1 true)
  %i.dq = icmp samesign ult i32 %i.dp, %i.c
  br i1 %i.dq, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dr = add nuw nsw i32 %i.ce, 1
  %i.ds = add nuw nsw i32 %i.dr, %i.cm
  %i.dt = lshr i32 %i.ds, 1
  %i.du = add nuw nsw i32 %i.dt, %i.cs
  %i.dv = lshr i32 %i.du, 1
  %i.dw = sub nsw i32 %i.dv, %i.cp                ; 2 uses
  %i.dx = icmp slt i32 %i.dw, %i.j
  %..i121.i.1 = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.h)
  %.0.i122.i.1 = select i1 %i.dx, i32 %i.j, i32 %..i121.i.1
end_hunk_2
begin_hunk_3_@biweight_h264_pixels8_14_c:bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %.093, i64 12
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !27
  %i.cm = zext i16 %i.cl to i32
  %i.cn = mul nsw i32 %6, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.06892, i64 12 ; 2 uses
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !27
  %i.cq = zext i16 %i.cp to i32
  %i.cr = mul nsw i32 %5, %i.cq
  %i.cs = add i32 %i.cn, %i.d
  %i.ct = add i32 %i.cs, %i.cr
  %i.cu = ashr i32 %i.ct, %i.f
  %i.cv = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 0)
  %i.cw = tail call i32 @llvm.umin.i32(i32 %i.cv, i32 16383)
  %i.cx = trunc nuw nsw i32 %i.cw to i16
  store i16 %i.cx, ptr %i.co, align 2, !tbaa !27
  %i.cy = getelementptr inbounds nuw i8, ptr %.093, i64 14
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !27
  %i.da = zext i16 %i.cz to i32
  %i.db = mul nsw i32 %6, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %.06892, i64 14 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !27
  %i.de = zext i16 %i.dd to i32
  %i.df = mul nsw i32 %5, %i.de
  %i.dg = add i32 %i.db, %i.d
  %i.dh = add i32 %i.dg, %i.df
  %i.di = ashr i32 %i.dh, %i.f
  %i.dj = tail call i32 @llvm.smax.i32(i32 %i.di, i32 0)
  %i.dk = tail call i32 @llvm.umin.i32(i32 %i.dj, i32 16383)
  %i.dl = trunc nuw nsw i32 %i.dk to i16
  store i16 %i.dl, ptr %i.dc, align 2, !tbaa !27
  %i.dm = add nuw nsw i32 %.06991, 1              ; 2 uses
  %i.dn = getelementptr inbounds [2 x i8], ptr %.06892, i64 %i.a
  %i.do = getelementptr inbounds [2 x i8], ptr %.093, i64 %i.a
  %exitcond.not = icmp eq i32 %i.dm, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @biweight_h264_pixels4_14_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 {
bb.a:
  %i.a = ashr i64 %2, 1                           ; 2 uses
  %i.b = shl i32 %7, 6
  %i.c = or disjoint i32 %i.b, 1
  %i.d = shl i32 %i.c, %4                         ; 4 uses
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %4, 1                        ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.053 = phi ptr [ %1, %.lr.ph ], [ %i.bk, %bb.b ] ; 5 uses
  %.04052 = phi ptr [ %0, %.lr.ph ], [ %i.bj, %bb.b ] ; 6 uses
  %.04151 = phi i32 [ 0, %.lr.ph ], [ %i.bi, %bb.b ]
  %i.g = load i16, ptr %.053, align 2, !tbaa !27
  %i.h = zext i16 %i.g to i32
  %i.i = mul nsw i32 %6, %i.h
  %i.j = load i16, ptr %.04052, align 2, !tbaa !27
  %i.k = zext i16 %i.j to i32
  %i.l = mul nsw i32 %5, %i.k
  %i.m = add i32 %i.i, %i.d
  %i.n = add i32 %i.m, %i.l
  %i.o = ashr i32 %i.n, %i.f
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.p, i32 16383)
  %i.r = trunc nuw nsw i32 %i.q to i16
  store i16 %i.r, ptr %.04052, align 2, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %.053, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !27
  %i.u = zext i16 %i.t to i32
  %i.v = mul nsw i32 %6, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.04052, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27
  %i.y = zext i16 %i.x to i32
  %i.z = mul nsw i32 %5, %i.y
  %i.aa = add i32 %i.v, %i.d
  %i.ab = add i32 %i.aa, %i.z
  %i.ac = ashr i32 %i.ab, %i.f
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 16383)
  %i.af = trunc nuw nsw i32 %i.ae to i16
  store i16 %i.af, ptr %i.w, align 2, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %.053, i64 4
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !27
  %i.ai = zext i16 %i.ah to i32
  %i.aj = mul nsw i32 %6, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.04052, i64 4 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !27
  %i.am = zext i16 %i.al to i32
  %i.an = mul nsw i32 %5, %i.am
  %i.ao = add i32 %i.aj, %i.d
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = ashr i32 %i.ap, %i.f
  %i.ar = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 0)
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.ar, i32 16383)
  %i.at = trunc nuw nsw i32 %i.as to i16
  store i16 %i.at, ptr %i.ak, align 2, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %.053, i64 6
  %i.av = load i16, ptr %i.au, align 2, !tbaa !27
  %i.aw = zext i16 %i.av to i32
  %i.ax = mul nsw i32 %6, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.04052, i64 6 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !27
  %i.ba = zext i16 %i.az to i32
  %i.bb = mul nsw i32 %5, %i.ba
  %i.bc = add i32 %i.ax, %i.d
  %i.bd = add i32 %i.bc, %i.bb
  %i.be = ashr i32 %i.bd, %i.f
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.be, i32 0)
  %i.bg = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 16383)
  %i.bh = trunc nuw nsw i32 %i.bg to i16
  store i16 %i.bh, ptr %i.ay, align 2, !tbaa !27
  %i.bi = add nuw nsw i32 %.04151, 1              ; 2 uses
  %i.bj = getelementptr inbounds [2 x i8], ptr %.04052, i64 %i.a
  %i.bk = getelementptr inbounds [2 x i8], ptr %.053, i64 %i.a
  %exitcond.not = icmp eq i32 %i.bi, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @biweight_h264_pixels2_14_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 {
bb.a:
  %i.a = ashr i64 %2, 1                           ; 2 uses
  %i.b = shl i32 %7, 6
  %i.c = or disjoint i32 %i.b, 1
  %i.d = shl i32 %i.c, %4                         ; 2 uses
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %4, 1                        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.033 = phi ptr [ %1, %.lr.ph ], [ %i.ai, %bb.b ] ; 3 uses
  %.02632 = phi ptr [ %0, %.lr.ph ], [ %i.ah, %bb.b ] ; 4 uses
  %.02731 = phi i32 [ 0, %.lr.ph ], [ %i.ag, %bb.b ]
  %i.g = load i16, ptr %.033, align 2, !tbaa !27
  %i.h = zext i16 %i.g to i32
  %i.i = mul nsw i32 %6, %i.h
  %i.j = load i16, ptr %.02632, align 2, !tbaa !27
  %i.k = zext i16 %i.j to i32
  %i.l = mul nsw i32 %5, %i.k
  %i.m = add i32 %i.i, %i.d
  %i.n = add i32 %i.m, %i.l
  %i.o = ashr i32 %i.n, %i.f
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.p, i32 16383)
  %i.r = trunc nuw nsw i32 %i.q to i16
  store i16 %i.r, ptr %.02632, align 2, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %.033, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !27
  %i.u = zext i16 %i.t to i32
  %i.v = mul nsw i32 %6, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.02632, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27
  %i.y = zext i16 %i.x to i32
  %i.z = mul nsw i32 %5, %i.y
  %i.aa = add i32 %i.v, %i.d
  %i.ab = add i32 %i.aa, %i.z
  %i.ac = ashr i32 %i.ab, %i.f
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 16383)
  %i.af = trunc nuw nsw i32 %i.ae to i16
  store i16 %i.af, ptr %i.w, align 2, !tbaa !27
  %i.ag = add nuw nsw i32 %.02731, 1              ; 2 uses
  %i.ah = getelementptr inbounds [2 x i8], ptr %.02632, i64 %i.a
  %i.ai = getelementptr inbounds [2 x i8], ptr %.033, i64 %i.a
  %exitcond.not = icmp eq i32 %i.ag, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @h264_v_loop_filter_luma_14_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #3 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 4 uses
  %i.b = shl i32 %2, 6
  %i.c = shl i32 %3, 6                            ; 4 uses
  %i.d = sub nsw i64 0, %i.a
  %.idx.i = mul nsw i64 %i.a, -4
  %.idx115.i = mul nsw i64 %i.a, -6
  %i.e = and i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0101.i6 = phi ptr [ %0, %bb.a ], [ %.2.i, %.loopexit ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29    ; 3 uses
  %i.h = sext i8 %i.g to i32
  %i.i = shl nsw i32 %i.h, 6                      ; 5 uses
  %i.j = icmp slt i8 %i.g, 0
  br i1 %i.j, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not.i = icmp eq i8 %i.g, 0                    ; 2 uses
  %i.k = sub nsw i32 0, %i.i                      ; 4 uses
  %i.l = or disjoint i32 %i.i, 1                  ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0101.i6, i64 8
  br label %.loopexit

bb.d:                                             ; preds = %.preheader, %bb.n
  %.099.i5 = phi i32 [ 0, %.preheader ], [ %i.cd, %bb.n ]
  %.1102.i4 = phi ptr [ %.0101.i6, %.preheader ], [ %i.cc, %bb.n ] ; 8 uses
  %i.n = getelementptr inbounds [2 x i8], ptr %.1102.i4, i64 %i.d ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !27
  %i.p = zext i16 %i.o to i32                     ; 7 uses
  %i.q = getelementptr inbounds i8, ptr %.1102.i4, i64 %.idx.i ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !27   ; 2 uses
  %i.s = zext i16 %i.r to i32                     ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %.1102.i4, i64 %.idx115.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !27
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = load i16, ptr %.1102.i4, align 2, !tbaa !27
  %i.x = zext i16 %i.w to i32                     ; 7 uses
  %i.y = getelementptr inbounds [2 x i8], ptr %.1102.i4, i64 %i.a ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !27   ; 2 uses
  %i.aa = zext i16 %i.z to i32                    ; 3 uses
  %i.ab = getelementptr inbounds [2 x i8], ptr %.1102.i4, i64 %i.e
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !27
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = sub nsw i32 %i.p, %i.x
  %i.af = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 true)
  %i.ag = icmp slt i32 %i.af, %i.b
  br i1 %i.ag, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.ah = sub nsw i32 %i.s, %i.p
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %i.aj = icmp slt i32 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ak = sub nsw i32 %i.aa, %i.x
  %i.al = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %i.am = icmp samesign ult i32 %i.al, %i.c
  br i1 %i.am, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.an = sub nsw i32 %i.v, %i.p
  %i.ao = tail call i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %i.ap = icmp samesign uge i32 %i.ao, %i.c       ; 2 uses
  %brmerge = or i1 %i.ap, %.not.i
  %.mux = select i1 %i.ap, i32 %i.i, i32 %i.l
  br i1 %brmerge, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = add nuw nsw i32 %i.p, 1
  %i.ar = add nuw nsw i32 %i.aq, %i.x
  %i.as = lshr i32 %i.ar, 1
  %i.at = add nuw nsw i32 %i.as, %i.v
  %i.au = lshr i32 %i.at, 1
  %i.av = sub nsw i32 %i.au, %i.s                 ; 2 uses
  %i.aw = icmp slt i32 %i.av, %i.k
  %..i123.i = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.i)
  %.0.i124.i = select i1 %i.aw, i32 %i.k, i32 %..i123.i
  %i.ax = trunc i32 %.0.i124.i to i16
  %i.ay = add i16 %i.r, %i.ax
  store i16 %i.ay, ptr %i.q, align 2, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %.mux, %bb.g ], [ %i.l, %bb.h ] ; 2 uses
  %i.az = sub nsw i32 %i.ad, %i.x
  %i.ba = tail call i32 @llvm.abs.i32(i32 %i.az, i1 true)
  %i.bb = icmp samesign ult i32 %i.ba, %i.c
  br i1 %i.bb, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = add nuw nsw i32 %i.p, 1
  %i.bd = add nuw nsw i32 %i.bc, %i.x
  %i.be = lshr i32 %i.bd, 1
  %i.bf = add nuw nsw i32 %i.be, %i.ad
  %i.bg = lshr i32 %i.bf, 1
  %i.bh = sub nsw i32 %i.bg, %i.aa                ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.k
  %..i121.i = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.i)
  %.0.i122.i = select i1 %i.bi, i32 %i.k, i32 %..i121.i
  %i.bj = trunc i32 %.0.i122.i to i16
  %i.bk = add i16 %i.z, %i.bj
  store i16 %i.bk, ptr %i.y, align 2, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = add nuw nsw i32 %.0.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.1.i = phi i32 [ %i.bl, %bb.l ], [ %.0.i, %bb.i ] ; 2 uses
  %i.bm = sub nsw i32 %i.x, %i.p
  %i.bn = shl nsw i32 %i.bm, 2
  %i.bo = add nuw nsw i32 %i.s, 4
  %i.bp = sub nsw i32 %i.bo, %i.aa
  %i.bq = add nsw i32 %i.bp, %i.bn
  %i.br = ashr i32 %i.bq, 3                       ; 2 uses
  %i.bs = sub nsw i32 0, %.1.i                    ; 2 uses
  %i.bt = icmp slt i32 %i.br, %i.bs
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.br, i32 %.1.i)
  %.0.i120.i = select i1 %i.bt, i32 %i.bs, i32 %..i.i ; 2 uses
  %i.bu = add nsw i32 %.0.i120.i, %i.p
  %i.bv = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  %i.bw = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 16383)
  %i.bx = trunc nuw nsw i32 %i.bw to i16
  store i16 %i.bx, ptr %i.n, align 2, !tbaa !27
  %i.by = sub nsw i32 %i.x, %.0.i120.i
  %i.bz = tail call i32 @llvm.smax.i32(i32 %i.by, i32 0)
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 16383)
  %i.cb = trunc nuw nsw i32 %i.ca to i16
  store i16 %i.cb, ptr %.1102.i4, align 2, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f, %bb.e, %bb.d
  %i.cc = getelementptr inbounds nuw i8, ptr %.1102.i4, i64 2 ; 2 uses
  %i.cd = add nuw nsw i32 %.099.i5, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cd, 4
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !78

.loopexit:                                        ; preds = %bb.n, %bb.c
  %.2.i = phi ptr [ %i.m, %bb.c ], [ %i.cc, %bb.n ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond9.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond9.not, label %h264_loop_filter_luma_14_c.exit, label %bb.b, !llvm.loop !79

h264_loop_filter_luma_14_c.exit:                  ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @h264_h_loop_filter_luma_14_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #3 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 2 uses
  %i.b = shl i32 %2, 6
  %i.c = shl i32 %3, 6                            ; 4 uses
  %.idx = shl nsw i64 %i.a, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0101.i6 = phi ptr [ %0, %bb.a ], [ %.2.i, %.loopexit ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29    ; 3 uses
  %i.f = sext i8 %i.e to i32
  %i.g = shl nsw i32 %i.f, 6                      ; 5 uses
  %i.h = icmp slt i8 %i.e, 0
  br i1 %i.h, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not.i = icmp eq i8 %i.e, 0                    ; 2 uses
  %i.i = sub nsw i32 0, %i.g                      ; 4 uses
  %i.j = or disjoint i32 %i.g, 1                  ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %.0101.i6, i64 %.idx
  br label %.loopexit

bb.d:                                             ; preds = %.preheader, %bb.n
  %.099.i5 = phi i32 [ 0, %.preheader ], [ %i.cb, %bb.n ]
  %.1102.i4 = phi ptr [ %.0101.i6, %.preheader ], [ %i.ca, %bb.n ] ; 8 uses
  %i.l = getelementptr inbounds i8, ptr %.1102.i4, i64 -2 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !27
  %i.n = zext i16 %i.m to i32                     ; 7 uses
  %i.o = getelementptr inbounds i8, ptr %.1102.i4, i64 -4 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !27   ; 2 uses
  %i.q = zext i16 %i.p to i32                     ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.1102.i4, i64 -6
  %i.s = load i16, ptr %i.r, align 2, !tbaa !27
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = load i16, ptr %.1102.i4, align 2, !tbaa !27
  %i.v = zext i16 %i.u to i32                     ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1102.i4, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27   ; 2 uses
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.1102.i4, i64 4
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !27
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = sub nsw i32 %i.n, %i.v
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.ae = icmp slt i32 %i.ad, %i.b
  br i1 %i.ae, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.af = sub nsw i32 %i.q, %i.n
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true)
  %i.ah = icmp slt i32 %i.ag, %i.c
  br i1 %i.ah, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ai = sub nsw i32 %i.y, %i.v
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 true)
  %i.ak = icmp samesign ult i32 %i.aj, %i.c
  br i1 %i.ak, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.al = sub nsw i32 %i.t, %i.n
  %i.am = tail call i32 @llvm.abs.i32(i32 %i.al, i1 true)
  %i.an = icmp samesign uge i32 %i.am, %i.c       ; 2 uses
  %brmerge = or i1 %i.an, %.not.i
  %.mux = select i1 %i.an, i32 %i.g, i32 %i.j
  br i1 %brmerge, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = add nuw nsw i32 %i.n, 1
  %i.ap = add nuw nsw i32 %i.ao, %i.v
  %i.aq = lshr i32 %i.ap, 1
  %i.ar = add nuw nsw i32 %i.aq, %i.t
  %i.as = lshr i32 %i.ar, 1
  %i.at = sub nsw i32 %i.as, %i.q                 ; 2 uses
  %i.au = icmp slt i32 %i.at, %i.i
  %..i123.i = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %i.g)
  %.0.i124.i = select i1 %i.au, i32 %i.i, i32 %..i123.i
  %i.av = trunc i32 %.0.i124.i to i16
  %i.aw = add i16 %i.p, %i.av
  store i16 %i.aw, ptr %i.o, align 2, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %.mux, %bb.g ], [ %i.j, %bb.h ] ; 2 uses
  %i.ax = sub nsw i32 %i.ab, %i.v
  %i.ay = tail call i32 @llvm.abs.i32(i32 %i.ax, i1 true)
  %i.az = icmp samesign ult i32 %i.ay, %i.c
  br i1 %i.az, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add nuw nsw i32 %i.n, 1
  %i.bb = add nuw nsw i32 %i.ba, %i.v
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = add nuw nsw i32 %i.bc, %i.ab
  %i.be = lshr i32 %i.bd, 1
  %i.bf = sub nsw i32 %i.be, %i.y                 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.i
  %..i121.i = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 %i.g)
  %.0.i122.i = select i1 %i.bg, i32 %i.i, i32 %..i121.i
  %i.bh = trunc i32 %.0.i122.i to i16
  %i.bi = add i16 %i.x, %i.bh
  store i16 %i.bi, ptr %i.w, align 2, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bj = add nuw nsw i32 %.0.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.1.i = phi i32 [ %i.bj, %bb.l ], [ %.0.i, %bb.i ] ; 2 uses
  %i.bk = sub nsw i32 %i.v, %i.n
  %i.bl = shl nsw i32 %i.bk, 2
  %i.bm = add nuw nsw i32 %i.q, 4
  %i.bn = sub nsw i32 %i.bm, %i.y
  %i.bo = add nsw i32 %i.bn, %i.bl
  %i.bp = ashr i32 %i.bo, 3                       ; 2 uses
  %i.bq = sub nsw i32 0, %.1.i                    ; 2 uses
  %i.br = icmp slt i32 %i.bp, %i.bq
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.bp, i32 %.1.i)
  %.0.i120.i = select i1 %i.br, i32 %i.bq, i32 %..i.i ; 2 uses
  %i.bs = add nsw i32 %.0.i120.i, %i.n
  %i.bt = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 16383)
  %i.bv = trunc nuw nsw i32 %i.bu to i16
  store i16 %i.bv, ptr %i.l, align 2, !tbaa !27
  %i.bw = sub nsw i32 %i.v, %.0.i120.i
  %i.bx = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 0)
  %i.by = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 16383)
  %i.bz = trunc nuw nsw i32 %i.by to i16
  store i16 %i.bz, ptr %.1102.i4, align 2, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f, %bb.e, %bb.d
  %i.ca = getelementptr inbounds [2 x i8], ptr %.1102.i4, i64 %i.a ; 2 uses
  %i.cb = add nuw nsw i32 %.099.i5, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cb, 4
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !78

.loopexit:                                        ; preds = %bb.n, %bb.c
  %.2.i = phi ptr [ %i.k, %bb.c ], [ %i.ca, %bb.n ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond9.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond9.not, label %h264_loop_filter_luma_14_c.exit, label %bb.b, !llvm.loop !79

h264_loop_filter_luma_14_c.exit:                  ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @h264_h_loop_filter_luma_mbaff_14_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #3 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 2 uses
  %i.b = shl i32 %2, 6                            ; 2 uses
  %i.c = shl i32 %3, 6                            ; 8 uses
  %i.d = and i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0101.i6 = phi ptr [ %0, %bb.a ], [ %.2.i, %.loopexit ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !29    ; 3 uses
  %i.g = sext i8 %i.f to i32
  %i.h = shl nsw i32 %i.g, 6                      ; 8 uses
  %i.i = icmp slt i8 %i.f, 0
  br i1 %i.i, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not.i = icmp eq i8 %i.f, 0                    ; 4 uses
  %i.j = sub nsw i32 0, %i.h                      ; 8 uses
  %i.k = or disjoint i32 %i.h, 1                  ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.0101.i6, i64 -2 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !27
  %i.n = zext i16 %i.m to i32                     ; 7 uses
  %i.o = getelementptr inbounds i8, ptr %.0101.i6, i64 -4 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !27   ; 2 uses
  %i.q = zext i16 %i.p to i32                     ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.0101.i6, i64 -6
  %i.s = load i16, ptr %i.r, align 2, !tbaa !27
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = load i16, ptr %.0101.i6, align 2, !tbaa !27
  %i.v = zext i16 %i.u to i32                     ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0101.i6, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27   ; 2 uses
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0101.i6, i64 4
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !27
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = sub nsw i32 %i.n, %i.v
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.ae = icmp slt i32 %i.ad, %i.b
  br i1 %i.ae, label %bb.d, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds [2 x i8], ptr %.0101.i6, i64 %i.d
  br label %.loopexit

bb.d:                                             ; preds = %.preheader
  %i.ag = sub nsw i32 %i.q, %i.n
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true)
  %i.ai = icmp slt i32 %i.ah, %i.c
  br i1 %i.ai, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.aj = sub nsw i32 %i.y, %i.v
  %i.ak = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 true)
  %i.al = icmp samesign ult i32 %i.ak, %i.c
  br i1 %i.al, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.am = sub nsw i32 %i.t, %i.n
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %i.ao = icmp samesign uge i32 %i.an, %i.c       ; 2 uses
  %brmerge = or i1 %i.ao, %.not.i
  %.mux = select i1 %i.ao, i32 %i.h, i32 %i.k
  br i1 %brmerge, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = add nuw nsw i32 %i.n, 1
  %i.aq = add nuw nsw i32 %i.ap, %i.v
  %i.ar = lshr i32 %i.aq, 1
  %i.as = add nuw nsw i32 %i.ar, %i.t
  %i.at = lshr i32 %i.as, 1
  %i.au = sub nsw i32 %i.at, %i.q                 ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.j
  %..i123.i = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.h)
  %.0.i124.i = select i1 %i.av, i32 %i.j, i32 %..i123.i
  %i.aw = trunc i32 %.0.i124.i to i16
  %i.ax = add i16 %i.p, %i.aw
  store i16 %i.ax, ptr %i.o, align 2, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %.mux, %bb.f ], [ %i.k, %bb.g ] ; 2 uses
  %i.ay = sub nsw i32 %i.ab, %i.v
  %i.az = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  %i.ba = icmp samesign ult i32 %i.az, %i.c
  br i1 %i.ba, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = add nuw nsw i32 %i.n, 1
  %i.bc = add nuw nsw i32 %i.bb, %i.v
  %i.bd = lshr i32 %i.bc, 1
  %i.be = add nuw nsw i32 %i.bd, %i.ab
  %i.bf = lshr i32 %i.be, 1
  %i.bg = sub nsw i32 %i.bf, %i.y                 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %i.j
  %..i121.i = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 %i.h)
  %.0.i122.i = select i1 %i.bh, i32 %i.j, i32 %..i121.i
  %i.bi = trunc i32 %.0.i122.i to i16
  %i.bj = add i16 %i.x, %i.bi
  store i16 %i.bj, ptr %i.w, align 2, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bk = add nuw nsw i32 %.0.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.1.i = phi i32 [ %i.bk, %bb.k ], [ %.0.i, %bb.h ] ; 2 uses
  %i.bl = sub nsw i32 %i.v, %i.n
  %i.bm = shl nsw i32 %i.bl, 2
  %i.bn = add nuw nsw i32 %i.q, 4
  %i.bo = sub nsw i32 %i.bn, %i.y
  %i.bp = add nsw i32 %i.bo, %i.bm
  %i.bq = ashr i32 %i.bp, 3                       ; 2 uses
  %i.br = sub nsw i32 0, %.1.i                    ; 2 uses
  %i.bs = icmp slt i32 %i.bq, %i.br
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %.1.i)
  %.0.i120.i = select i1 %i.bs, i32 %i.br, i32 %..i.i ; 2 uses
  %i.bt = add nsw i32 %.0.i120.i, %i.n
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %i.bv = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 16383)
  %i.bw = trunc nuw nsw i32 %i.bv to i16
  store i16 %i.bw, ptr %i.l, align 2, !tbaa !27
  %i.bx = sub nsw i32 %i.v, %.0.i120.i
  %i.by = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 0)
  %i.bz = tail call i32 @llvm.umin.i32(i32 %i.by, i32 16383)
  %i.ca = trunc nuw nsw i32 %i.bz to i16
  store i16 %i.ca, ptr %.0101.i6, align 2, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e, %bb.d, %.preheader
  %i.cb = getelementptr inbounds [2 x i8], ptr %.0101.i6, i64 %i.a ; 8 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -2 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !27
  %i.ce = zext i16 %i.cd to i32                   ; 7 uses
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 -4 ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !27 ; 2 uses
  %i.ch = zext i16 %i.cg to i32                   ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %i.cb, i64 -6
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !27
  %i.ck = zext i16 %i.cj to i32                   ; 2 uses
  %i.cl = load i16, ptr %i.cb, align 2, !tbaa !27
  %i.cm = zext i16 %i.cl to i32                   ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 2 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !27 ; 2 uses
  %i.cp = zext i16 %i.co to i32                   ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !27
  %i.cs = zext i16 %i.cr to i32                   ; 2 uses
  %i.ct = sub nsw i32 %i.ce, %i.cm
  %i.cu = tail call i32 @llvm.abs.i32(i32 %i.ct, i1 true)
  %i.cv = icmp slt i32 %i.cu, %i.b
  br i1 %i.cv, label %bb.n, label %.loopexit.loopexit

bb.n:                                             ; preds = %bb.m
  %i.cw = sub nsw i32 %i.ch, %i.ce
  %i.cx = tail call i32 @llvm.abs.i32(i32 %i.cw, i1 true)
  %i.cy = icmp slt i32 %i.cx, %i.c
  br i1 %i.cy, label %bb.o, label %.loopexit.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cz = sub nsw i32 %i.cp, %i.cm
  %i.da = tail call i32 @llvm.abs.i32(i32 %i.cz, i1 true)
  %i.db = icmp samesign ult i32 %i.da, %i.c
  br i1 %i.db, label %bb.p, label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.o
  %i.dc = sub nsw i32 %i.ck, %i.ce
  %i.dd = tail call i32 @llvm.abs.i32(i32 %i.dc, i1 true)
  %i.de = icmp samesign uge i32 %i.dd, %i.c       ; 2 uses
  %brmerge.1 = or i1 %i.de, %.not.i
  %.mux.1 = select i1 %i.de, i32 %i.h, i32 %i.k
  br i1 %brmerge.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.df = add nuw nsw i32 %i.ce, 1
  %i.dg = add nuw nsw i32 %i.df, %i.cm
  %i.dh = lshr i32 %i.dg, 1
  %i.di = add nuw nsw i32 %i.dh, %i.ck
  %i.dj = lshr i32 %i.di, 1
  %i.dk = sub nsw i32 %i.dj, %i.ch                ; 2 uses
  %i.dl = icmp slt i32 %i.dk, %i.j
  %..i123.i.1 = tail call i32 @llvm.smin.i32(i32 %i.dk, i32 %i.h)
  %.0.i124.i.1 = select i1 %i.dl, i32 %i.j, i32 %..i123.i.1
  %i.dm = trunc i32 %.0.i124.i.1 to i16
  %i.dn = add i16 %i.cg, %i.dm
  store i16 %i.dn, ptr %i.cf, align 2, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.i.1 = phi i32 [ %.mux.1, %bb.p ], [ %i.k, %bb.q ] ; 2 uses
  %i.do = sub nsw i32 %i.cs, %i.cm
  %i.dp = tail call i32 @llvm.abs.i32(i32 %i.do, i1 true)
  %i.dq = icmp samesign ult i32 %i.dp, %i.c
  br i1 %i.dq, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dr = add nuw nsw i32 %i.ce, 1
  %i.ds = add nuw nsw i32 %i.dr, %i.cm
  %i.dt = lshr i32 %i.ds, 1
  %i.du = add nuw nsw i32 %i.dt, %i.cs
  %i.dv = lshr i32 %i.du, 1
  %i.dw = sub nsw i32 %i.dv, %i.cp                ; 2 uses
  %i.dx = icmp slt i32 %i.dw, %i.j
  %..i121.i.1 = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.h)
  %.0.i122.i.1 = select i1 %i.dx, i32 %i.j, i32 %..i121.i.1
end_hunk_3
