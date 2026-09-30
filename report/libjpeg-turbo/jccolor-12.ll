Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jccolor-12?download=true
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@extxrgb_ycc_convert:bb.a
.lr.ph.preheader:                                 ; preds = %.lr.ph51
  %wide.trip.count = zext i32 %i.f to i64
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %bb.b
  %i.m = add nsw i32 %.in, -1
  %i.n = getelementptr inbounds nuw i8, ptr %.04549, i64 8
  %i.o = add i32 %.04450, 1
  %i.p = icmp sgt i32 %.in, 1
  br i1 %i.p, label %.lr.ph, label %._crit_edge.split, !llvm.loop !224

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.in = phi i32 [ %i.m, %..loopexit_crit_edge ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.04450 = phi i32 [ %i.o, %..loopexit_crit_edge ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.04549 = phi ptr [ %i.n, %..loopexit_crit_edge ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.q = load ptr, ptr %.04549, align 8, !tbaa !43
  %i.r = zext i32 %.04450 to i64                  ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.r
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.r
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.04247 = phi ptr [ %i.q, %.lr.ph ], [ %i.ah, %bb.b ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.04247, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !39
  %i.aa = and i16 %i.z, 4095
  %i.ab = getelementptr inbounds nuw i8, ptr %.04247, i64 4
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !39
  %i.ad = and i16 %i.ac, 4095
  %i.ae = getelementptr inbounds nuw i8, ptr %.04247, i64 6
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !39
  %i.ag = and i16 %i.af, 4095
  %i.ah = getelementptr inbounds nuw i8, ptr %.04247, i64 8
  %i.ai = zext nneg i16 %i.aa to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ai ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.al = zext nneg i16 %i.ad to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32768
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !45
  %i.ap = add nsw i64 %i.ao, %i.ak
  %i.aq = zext nneg i16 %i.ag to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 65536
  %i.at = load i64, ptr %i.as, align 8, !tbaa !45
  %i.au = add nsw i64 %i.ap, %i.at
  %i.av = lshr i64 %i.au, 16
  %i.aw = trunc i64 %i.av to i16
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 98304
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !45
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 131072
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !45
  %i.bc = add nsw i64 %i.bb, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 163840
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !45
  %i.bf = add nsw i64 %i.bc, %i.be
  %i.bg = lshr i64 %i.bf, 16
  %i.bh = trunc i64 %i.bg to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 163840
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !45
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 196608
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !45
  %i.bn = add nsw i64 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 229376
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !45
  %i.bq = add nsw i64 %i.bn, %i.bp
  %i.br = lshr i64 %i.bq, 16
  %i.bs = trunc i64 %i.br to i16
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.b, !llvm.loop !225

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph51, %bb.a
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rgb_ycc_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.g = icmp sgt i32 %4, 0
  br i1 %i.g, label %.lr.ph51, label %._crit_edge.split

.lr.ph51:                                         ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph51
  %wide.trip.count = zext i32 %i.f to i64
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %bb.b
  %i.m = add nsw i32 %.in, -1
  %i.n = getelementptr inbounds nuw i8, ptr %.04549, i64 8
  %i.o = add i32 %.04450, 1
  %i.p = icmp sgt i32 %.in, 1
  br i1 %i.p, label %.lr.ph, label %._crit_edge.split, !llvm.loop !226

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.in = phi i32 [ %i.m, %..loopexit_crit_edge ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.04450 = phi i32 [ %i.o, %..loopexit_crit_edge ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.04549 = phi ptr [ %i.n, %..loopexit_crit_edge ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.q = load ptr, ptr %.04549, align 8, !tbaa !43
  %i.r = zext i32 %.04450 to i64                  ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.r
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.r
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.04247 = phi ptr [ %i.q, %.lr.ph ], [ %i.ag, %bb.b ] ; 4 uses
  %i.y = load i16, ptr %.04247, align 2, !tbaa !39
  %i.z = and i16 %i.y, 4095
  %i.aa = getelementptr inbounds nuw i8, ptr %.04247, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !39
  %i.ac = and i16 %i.ab, 4095
  %i.ad = getelementptr inbounds nuw i8, ptr %.04247, i64 4
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !39
  %i.af = and i16 %i.ae, 4095
  %i.ag = getelementptr inbounds nuw i8, ptr %.04247, i64 6
  %i.ah = zext nneg i16 %i.z to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ah ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !45
  %i.ak = zext nneg i16 %i.ac to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ak ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32768
  %i.an = load i64, ptr %i.am, align 8, !tbaa !45
  %i.ao = add nsw i64 %i.an, %i.aj
  %i.ap = zext nneg i16 %i.af to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 65536
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !45
  %i.at = add nsw i64 %i.ao, %i.as
  %i.au = lshr i64 %i.at, 16
  %i.av = trunc i64 %i.au to i16
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 98304
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 131072
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !45
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 163840
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !45
  %i.be = add nsw i64 %i.bb, %i.bd
  %i.bf = lshr i64 %i.be, 16
  %i.bg = trunc i64 %i.bf to i16
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !39
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 163840
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 196608
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !45
  %i.bm = add nsw i64 %i.bl, %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 229376
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !45
  %i.bp = add nsw i64 %i.bm, %i.bo
  %i.bq = lshr i64 %i.bp, 16
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.b, !llvm.loop !227

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph51, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cmyk_ycck_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.g = icmp sgt i32 %4, 0
  br i1 %i.g, label %.lr.ph56, label %._crit_edge.split

.lr.ph56:                                         ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph56
  %wide.trip.count = zext i32 %i.f to i64
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %bb.b
  %i.o = add nsw i32 %.in, -1
  %i.p = getelementptr inbounds nuw i8, ptr %.05054, i64 8
  %i.q = add i32 %.04955, 1
  %i.r = icmp sgt i32 %.in, 1
  br i1 %i.r, label %.lr.ph, label %._crit_edge.split, !llvm.loop !228

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.in = phi i32 [ %i.o, %..loopexit_crit_edge ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.04955 = phi i32 [ %i.q, %..loopexit_crit_edge ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.05054 = phi ptr [ %i.p, %..loopexit_crit_edge ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.s = load ptr, ptr %.05054, align 8, !tbaa !43
  %i.t = zext i32 %.04955 to i64                  ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.t
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.t
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.t
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %.04752 = phi ptr [ %i.s, %.lr.ph ], [ %i.aq, %bb.b ] ; 5 uses
  %i.ac = load i16, ptr %.04752, align 2, !tbaa !39
  %i.ad = and i16 %i.ac, 4095                     ; 2 uses
  %i.ae = xor i16 %i.ad, 4095
  %i.af = getelementptr inbounds nuw i8, ptr %.04752, i64 2
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !39
  %i.ah = and i16 %i.ag, 4095                     ; 2 uses
  %i.ai = xor i16 %i.ah, 4095
  %i.aj = getelementptr inbounds nuw i8, ptr %.04752, i64 4
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !39
  %i.al = and i16 %i.ak, 4095                     ; 2 uses
  %i.am = xor i16 %i.al, 4095
  %i.an = getelementptr inbounds nuw i8, ptr %.04752, i64 6
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !39
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %.04752, i64 8
  %i.ar = zext nneg i16 %i.ae to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ar ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !45
  %i.au = zext nneg i16 %i.ai to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32768
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = add nsw i64 %i.ax, %i.at
  %i.az = zext nneg i16 %i.am to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 65536
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !45
  %i.bd = add nsw i64 %i.ay, %i.bc
  %i.be = lshr i64 %i.bd, 16
  %i.bf = trunc i64 %i.be to i16
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !39
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 98304
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !45
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 131072
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !45
  %i.bl = add nsw i64 %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 163840
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !45
  %i.bo = add nsw i64 %i.bl, %i.bn
  %i.bp = lshr i64 %i.bo, 16
  %i.bq = trunc i64 %i.bp to i16
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !39
  %5 = xor i16 %i.ad, 24575
  %6 = zext nneg i16 %5 to i64
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %6
  %i.bs = load i64, ptr %7, align 8, !tbaa !45
  %8 = xor i16 %i.ah, 28671
  %9 = zext nneg i16 %8 to i64
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %9
  %i.bt = load i64, ptr %10, align 8, !tbaa !45
  %i.bu = add nsw i64 %i.bt, %i.bs
  %11 = xor i16 %i.al, 32767
  %12 = zext nneg i16 %11 to i64
  %13 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %12
  %i.bv = load i64, ptr %13, align 8, !tbaa !45
  %i.bw = add nsw i64 %i.bu, %i.bv
  %i.bx = lshr i64 %i.bw, 16
  %i.by = trunc i64 %i.bx to i16
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.b, !llvm.loop !229

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph56, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !8, i64 0}
!10 = !{!"p1 _ZTS15jpeg_memory_mgr", !8, i64 0}
!11 = !{!"p1 _ZTS17jpeg_progress_mgr", !8, i64 0}
!12 = !{!"p1 _ZTS20jpeg_destination_mgr", !8, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!"short", !4, i64 0}
!15 = !{!"p1 _ZTS16jpeg_comp_master", !8, i64 0}
!16 = !{!"p1 _ZTS22jpeg_c_main_controller", !8, i64 0}
!17 = !{!"p1 _ZTS22jpeg_c_prep_controller", !8, i64 0}
!18 = !{!"p1 _ZTS22jpeg_c_coef_controller", !8, i64 0}
!19 = !{!"p1 _ZTS18jpeg_marker_writer", !8, i64 0}
!20 = !{!"p1 _ZTS20jpeg_color_converter", !8, i64 0}
!21 = !{!"p1 _ZTS16jpeg_downsampler", !8, i64 0}
!22 = !{!"p1 _ZTS16jpeg_forward_dct", !8, i64 0}
!23 = !{!"p1 _ZTS20jpeg_entropy_encoder", !8, i64 0}
!24 = !{!"jpeg_compress_struct", !9, i64 0, !10, i64 8, !11, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !12, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !13, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !8, i64 88, !4, i64 96, !4, i64 128, !4, i64 160, !4, i64 192, !4, i64 208, !4, i64 224, !5, i64 240, !8, i64 248, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !5, i64 288, !4, i64 292, !4, i64 293, !4, i64 294, !14, i64 296, !14, i64 298, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !5, i64 316, !5, i64 320, !5, i64 324, !4, i64 328, !5, i64 360, !5, i64 364, !5, i64 368, !4, i64 372, !5, i64 412, !5, i64 416, !5, i64 420, !5, i64 424, !15, i64 432, !16, i64 440, !17, i64 448, !18, i64 456, !19, i64 464, !20, i64 472, !21, i64 480, !22, i64 488, !23, i64 496, !8, i64 504, !5, i64 512}
!25 = !{!"long", !4, i64 0}
!26 = !{!"any p2 pointer", !8, i64 0}
!27 = !{!24, !10, i64 8}
!28 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !25, i64 88, !25, i64 96}
!29 = !{!28, !8, i64 0}
!30 = !{!24, !20, i64 472}
!31 = !{!"jpeg_color_converter", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!32 = !{!"p1 long", !8, i64 0}
!33 = !{!"", !31, i64 0, !32, i64 40}
!34 = !{!24, !5, i64 56}
!35 = !{!24, !5, i64 76}
!36 = !{!24, !5, i64 48}
!37 = !{!"p2 short", !26, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!14, !14, i64 0}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"p1 short", !8, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!33, !32, i64 40}
!45 = !{!25, !25, i64 0}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = !{!24, !15, i64 432}
!49 = !{!"jpeg_comp_master", !8, i64 0, !8, i64 8, !8, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40}
!50 = !{!49, !5, i64 32}
!51 = !{!24, !5, i64 72}
!52 = !{!24, !9, i64 0}
!53 = !{!"p2 omnipotent char", !26, i64 0}
!54 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !4, i64 44, !5, i64 124, !25, i64 128, !53, i64 136, !5, i64 144, !53, i64 152, !5, i64 160, !5, i64 164}
!55 = !{!54, !5, i64 40}
!56 = !{!4, !4, i64 0}
!57 = !{!54, !8, i64 0}
!58 = !{!33, !8, i64 0}
!59 = !{!24, !5, i64 60}
!60 = !{!5, !5, i64 0}
!61 = !{!24, !5, i64 80}
!62 = !{!33, !8, i64 16}
!63 = distinct !{!63, !40}
!64 = distinct !{!64, !41}
!65 = distinct !{!65, !41}
!66 = distinct !{!66, !41}
!67 = distinct !{!67, !41}
!68 = distinct !{!68, !41}
!69 = distinct !{!69, !41}
!70 = distinct !{!70, !41}
!71 = distinct !{!71, !41}
!72 = distinct !{!72, !41}
!73 = distinct !{!73, !41}
!74 = distinct !{!74, !41}
!75 = distinct !{!75, !41}
!76 = distinct !{!76, !41}
!77 = distinct !{!77, !41}
!78 = distinct !{!78, !41}
!79 = distinct !{!79, !41}
!80 = distinct !{!80, !41}
!81 = distinct !{!81, !41}
!82 = distinct !{!82, !"LVerDomain"}
!83 = distinct !{!83, !82}
!84 = distinct !{!84, !82}
!85 = distinct !{!85, !82}
!86 = distinct !{!86, !82}
!87 = distinct !{!87, !41, !46, !47}
!88 = distinct !{!88, !41, !46}
!89 = distinct !{!89, !41}
!90 = distinct !{!90, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !90}
!94 = distinct !{!94, !90}
!95 = distinct !{!95, !90}
!96 = distinct !{!96, !41, !46, !47}
!97 = distinct !{!97, !41, !46}
!98 = distinct !{!98, !41}
!99 = distinct !{!99, !40}
!100 = distinct !{!100, !41}
!101 = distinct !{!101, !41}
!102 = !{!83}
!103 = !{!84}
!104 = !{!86, !85, !83}
!105 = !{!86}
!106 = !{!85, !83}
!107 = !{!85}
!108 = !{!91}
!109 = !{!92}
!110 = !{!95, !94, !93, !91}
!111 = !{!95}
!112 = !{!94, !93, !91}
!113 = !{!94}
!114 = !{!93, !91}
!115 = !{!93}
!116 = distinct !{!116, !41}
!117 = distinct !{!117, !"LVerDomain"}
!118 = distinct !{!118, !117}
!119 = distinct !{!119, !117}
!120 = distinct !{!120, !117}
!121 = distinct !{!121, !117}
!122 = distinct !{!122, !41, !46, !47}
!123 = distinct !{!123, !41, !46}
!124 = !{!118}
!125 = !{!119}
!126 = !{!121, !120, !118}
!127 = !{!121}
!128 = !{!120, !118}
!129 = !{!120}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, !"LVerDomain"}
!132 = distinct !{!132, !131}
!133 = distinct !{!133, !131}
!134 = distinct !{!134, !131}
!135 = distinct !{!135, !131}
!136 = distinct !{!136, !41, !46, !47}
!137 = distinct !{!137, !41, !46}
!138 = !{!132}
!139 = !{!133}
!140 = !{!135, !134, !132}
!141 = !{!135}
!142 = !{!134, !132}
!143 = !{!134}
!144 = distinct !{!144, !41}
!145 = distinct !{!145, !"LVerDomain"}
!146 = distinct !{!146, !145}
!147 = distinct !{!147, !145}
!148 = distinct !{!148, !145}
!149 = distinct !{!149, !145}
!150 = distinct !{!150, !41, !46, !47}
!151 = distinct !{!151, !41, !46}
!152 = !{!146}
!153 = !{!147}
!154 = !{!149, !148, !146}
!155 = !{!149}
!156 = !{!148, !146}
!157 = !{!148}
!158 = distinct !{!158, !41}
!159 = distinct !{!159, !"LVerDomain"}
!160 = distinct !{!160, !159}
!161 = distinct !{!161, !159}
!162 = distinct !{!162, !159}
!163 = distinct !{!163, !159}
!164 = distinct !{!164, !41, !46, !47}
!165 = distinct !{!165, !41, !46}
!166 = !{!160}
!167 = !{!161}
!168 = !{!163, !162, !160}
!169 = !{!163}
!170 = !{!162, !160}
!171 = !{!162}
!172 = distinct !{!172, !41}
end_hunk_0
