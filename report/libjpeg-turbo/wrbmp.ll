Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/wrbmp?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@write_os2_header:bb.a

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @write_bmp_header(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [14 x i8], align 1                ; 11 uses
  %i.b = alloca [40 x i8], align 16               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !47   ; 3 uses
  %i.e = icmp eq i32 %i.d, 2
  %i.f = add i32 %i.d, -6
  %or.cond = icmp ult i32 %i.f, 10
  %or.cond57 = or i1 %i.e, %or.cond
  br i1 %or.cond57, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !48
  %.not = icmp ne i32 %i.h, 0                     ; 3 uses
  %. = select i1 %.not, i8 8, i8 24
  %.56 = select i1 %.not, i32 256, i32 0
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  switch i32 %i.d, label %bb.d [
    i32 16, label %bb.e
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.b, %bb.d
  %.050 = phi i8 [ %., %bb.b ], [ 8, %bb.d ], [ 24, %bb.c ], [ 24, %bb.c ]
  %i.i = phi i1 [ %.not, %bb.b ], [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.c ]
  %.0 = phi i32 [ %.56, %bb.b ], [ 256, %bb.d ], [ 0, %bb.c ], [ 0, %bb.c ] ; 4 uses
  %i.j = shl nuw nsw i32 %.0, 2
  %i.k = or disjoint i32 %i.j, 54
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i32 0, ptr %i.o, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  store i8 66, ptr %i.a, align 1, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 77, ptr %i.p, align 1, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 54, ptr %i.r, align 1, !tbaa !37
  %i.s = lshr exact i32 %.0, 6
  %i.t = trunc nuw nsw i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 %i.t, ptr %i.u, align 1, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 0, ptr %i.v, align 1, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 0, ptr %i.w, align 1, !tbaa !37
  store i8 40, ptr %i.b, align 16, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.z = load i32, ptr %i.n, align 4, !tbaa !52
  %i.aa = load <2 x i32>, ptr %i.x, align 8, !tbaa !65
  %i.ab = mul i32 %i.z, %i.m
  %i.ac = add i32 %i.ab, %i.k
  store i32 %i.ac, ptr %i.q, align 1
  store <2 x i32> %i.aa, ptr %i.y, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 1, ptr %i.ad, align 4, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 %.050, ptr %i.ae, align 2, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 378
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !98
  %i.ah = icmp eq i8 %i.ag, 2
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !99 ; 3 uses
  %i.ak = trunc i16 %i.aj to i8
  %i.al = mul i8 %i.ak, 100
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 %i.al, ptr %i.am, align 8, !tbaa !37
  %i.an = mul i16 %i.aj, 100
  %i.ao = lshr i16 %i.an, 8
  %i.ap = trunc nuw i16 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !37
  %i.ar = zext i16 %i.aj to i32
  %i.as = mul nuw nsw i32 %i.ar, 100
  %i.at = lshr i32 %i.as, 16
  %i.au = trunc nuw nsw i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 %i.au, ptr %i.av, align 2, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 382
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !100 ; 3 uses
  %i.ay = trunc i16 %i.ax to i8
  %i.az = mul i8 %i.ay, 100
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i8 %i.az, ptr %i.ba, align 4, !tbaa !37
  %i.bb = mul i16 %i.ax, 100
  %i.bc = lshr i16 %i.bb, 8
  %i.bd = trunc nuw i16 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !37
  %i.bf = zext i16 %i.ax to i32
  %i.bg = mul nuw nsw i32 %i.bf, 100
  %i.bh = lshr i32 %i.bg, 16
  %i.bi = trunc nuw nsw i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i8 %i.bi, ptr %i.bj, align 2, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %i.bk, align 16, !tbaa !37
  %i.bl = lshr exact i32 %.0, 8
  %i.bm = trunc nuw nsw i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !61
  %i.bq = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 14, ptr noundef %i.bp)
  %.not53 = icmp eq i64 %i.bq, 14
  br i1 %.not53, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i32 37, ptr %i.bs, align 8, !tbaa !36
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !38
  tail call void %i.bt(ptr noundef nonnull %0) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !61
  %i.bv = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 40, ptr noundef %i.bu)
  %.not54 = icmp eq i64 %i.bv, 40
  br i1 %.not54, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i32 37, ptr %i.bx, align 8, !tbaa !36
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !38
  tail call void %i.by(ptr noundef nonnull %0) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.val = load ptr, ptr %i.bo, align 8, !tbaa !61
  tail call fastcc void @write_colormap(ptr noundef nonnull %0, ptr %.val, i32 noundef %.0, i32 noundef 4)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @write_colormap(ptr noundef %0, ptr nofree captures(none) %.40.val, i32 noundef range(i32 1, 257) %1, i32 noundef range(i32 3, 5) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.d = load i32, ptr %i.c, align 4, !tbaa !106  ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.e = icmp eq i32 %2, 4
  br i1 %i.e, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %.preheader.split.us
  %.29.us = phi i32 [ %i.j, %.preheader.split.us ], [ 0, %.preheader ] ; 4 uses
  %i.f = tail call i32 @putc(i32 noundef %.29.us, ptr noundef %.40.val) ; 0 uses
  %i.g = tail call i32 @putc(i32 noundef %.29.us, ptr noundef %.40.val) ; 0 uses
  %i.h = tail call i32 @putc(i32 noundef %.29.us, ptr noundef %.40.val) ; 0 uses
  %i.i = tail call i32 @putc(i32 noundef 0, ptr noundef %.40.val) ; 0 uses
  %i.j = add nuw nsw i32 %.29.us, 1               ; 2 uses
  %exitcond41.not = icmp eq i32 %i.j, 256
  br i1 %exitcond41.not, label %.loopexit, label %.preheader.split.us, !llvm.loop !101

bb.b:                                             ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %4 = load i32, ptr %3, align 8, !tbaa !107
  %5 = icmp eq i32 %4, 3
  %i.k = icmp sgt i32 %i.d, 0                     ; 2 uses
  br i1 %5, label %bb.c, label %.preheader2

.preheader2:                                      ; preds = %bb.b
  br i1 %i.k, label %.lr.ph, label %.lr.ph12

.lr.ph:                                           ; preds = %.preheader2
  %i.l = icmp eq i32 %2, 4
  %wide.trip.count28 = zext nneg i32 %i.d to i64  ; 2 uses
  br i1 %i.l, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 4 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv25
  %i.o = load i8, ptr %i.n, align 1, !tbaa !37
  %i.p = zext i8 %i.o to i32
  %i.q = tail call i32 @putc(i32 noundef %i.p, ptr noundef %.40.val) ; 0 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv25
  %i.t = load i8, ptr %i.s, align 1, !tbaa !37
  %i.u = zext i8 %i.t to i32
  %i.v = tail call i32 @putc(i32 noundef %i.u, ptr noundef %.40.val) ; 0 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv25
  %i.y = load i8, ptr %i.x, align 1, !tbaa !37
  %i.z = zext i8 %i.y to i32
  %i.aa = tail call i32 @putc(i32 noundef %i.z, ptr noundef %.40.val) ; 0 uses
  %i.ab = tail call i32 @putc(i32 noundef 0, ptr noundef %.40.val) ; 0 uses
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 2 uses
  %exitcond29.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count28
  br i1 %exitcond29.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !102

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %.lr.ph6, label %.lr.ph12

.lr.ph6:                                          ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !47
  %i.ae = zext i32 %i.ad to i64                   ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @rgb_blue, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !65
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @rgb_green, i64 %i.ae
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !65
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @rgb_red, i64 %i.ae
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !65
  %i.al = sext i32 %i.ag to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.al ; 2 uses
  %i.an = sext i32 %i.ai to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.an ; 2 uses
  %i.ap = sext i32 %i.ak to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ap ; 2 uses
  %i.ar = icmp eq i32 %2, 4
  %wide.trip.count38 = zext nneg i32 %i.d to i64  ; 2 uses
  br i1 %i.ar, label %.lr.ph6.split.us, label %.lr.ph6.split

.lr.ph6.split.us:                                 ; preds = %.lr.ph6, %.lr.ph6.split.us
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph6.split.us ], [ 0, %.lr.ph6 ] ; 4 uses
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv35
  %i.au = load i8, ptr %i.at, align 1, !tbaa !37
  %i.av = zext i8 %i.au to i32
  %i.aw = tail call i32 @putc(i32 noundef %i.av, ptr noundef %.40.val) ; 0 uses
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv35
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !37
  %i.ba = zext i8 %i.az to i32
  %i.bb = tail call i32 @putc(i32 noundef %i.ba, ptr noundef %.40.val) ; 0 uses
  %i.bc = load ptr, ptr %i.aq, align 8, !tbaa !63
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv35
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !37
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call i32 @putc(i32 noundef %i.bf, ptr noundef %.40.val) ; 0 uses
  %i.bh = tail call i32 @putc(i32 noundef 0, ptr noundef %.40.val) ; 0 uses
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %.loopexit, label %.lr.ph6.split.us, !llvm.loop !103

.lr.ph6.split:                                    ; preds = %.lr.ph6, %.lr.ph6.split
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %.lr.ph6.split ], [ 0, %.lr.ph6 ] ; 4 uses
  %i.bi = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv30
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !37
  %i.bl = zext i8 %i.bk to i32
  %i.bm = tail call i32 @putc(i32 noundef %i.bl, ptr noundef %.40.val) ; 0 uses
  %i.bn = load ptr, ptr %i.ao, align 8, !tbaa !63
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv30
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !37
  %i.bq = zext i8 %i.bp to i32
  %i.br = tail call i32 @putc(i32 noundef %i.bq, ptr noundef %.40.val) ; 0 uses
  %i.bs = load ptr, ptr %i.aq, align 8, !tbaa !63
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv30
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !37
  %i.bv = zext i8 %i.bu to i32
  %i.bw = tail call i32 @putc(i32 noundef %i.bv, ptr noundef %.40.val) ; 0 uses
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count38
  br i1 %exitcond34.not, label %.loopexit, label %.lr.ph6.split, !llvm.loop !103

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 4 uses
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !37
  %i.ca = zext i8 %i.bz to i32
  %i.cb = tail call i32 @putc(i32 noundef %i.ca, ptr noundef %.40.val) ; 0 uses
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !37
  %i.cf = zext i8 %i.ce to i32
  %i.cg = tail call i32 @putc(i32 noundef %i.cf, ptr noundef %.40.val) ; 0 uses
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %indvars.iv
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !37
  %i.ck = zext i8 %i.cj to i32
  %i.cl = tail call i32 @putc(i32 noundef %i.ck, ptr noundef %.40.val) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count28
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !102

.preheader.split:                                 ; preds = %.preheader, %.preheader.split
  %.29 = phi i32 [ %i.cp, %.preheader.split ], [ 0, %.preheader ] ; 4 uses
  %i.cm = tail call i32 @putc(i32 noundef %.29, ptr noundef %.40.val) ; 0 uses
  %i.cn = tail call i32 @putc(i32 noundef %.29, ptr noundef %.40.val) ; 0 uses
  %i.co = tail call i32 @putc(i32 noundef %.29, ptr noundef %.40.val) ; 0 uses
  %i.cp = add nuw nsw i32 %.29, 1                 ; 2 uses
  %exitcond40.not = icmp eq i32 %i.cp, 256
  br i1 %exitcond40.not, label %.loopexit, label %.preheader.split, !llvm.loop !101

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %.lr.ph6.split, %.lr.ph6.split.us, %.preheader.split, %.preheader.split.us
  %.3 = phi i32 [ 256, %.preheader.split.us ], [ %i.d, %.lr.ph6.split ], [ %i.d, %.lr.ph6.split.us ], [ 256, %.preheader.split ], [ %i.d, %.lr.ph.split.us ], [ %i.d, %.lr.ph.split ] ; 4 uses
  %i.cq = icmp samesign ugt i32 %.3, %1
  br i1 %i.cq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.cr = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  store i32 1051, ptr %i.cs, align 8, !tbaa !36
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 44
  store i32 %.3, ptr %i.ct, align 4, !tbaa !37
  %i.cu = load ptr, ptr %0, align 8, !tbaa !33
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !38
  tail call void %i.cv(ptr noundef nonnull %0) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %i.cw = icmp samesign ult i32 %.3, %1
  br i1 %i.cw, label %.lr.ph12, label %._crit_edge

.lr.ph12:                                         ; preds = %bb.c, %.preheader2, %bb.e
  %.34749 = phi i32 [ %.3, %bb.e ], [ 0, %.preheader2 ], [ 0, %bb.c ] ; 2 uses
  %i.cx = icmp eq i32 %2, 4
  br i1 %i.cx, label %.lr.ph12.split.us, label %.lr.ph12.split

.lr.ph12.split.us:                                ; preds = %.lr.ph12, %.lr.ph12.split.us
  %.411.us = phi i32 [ %i.dc, %.lr.ph12.split.us ], [ %.34749, %.lr.ph12 ]
  %i.cy = tail call i32 @putc(i32 noundef 0, ptr noundef %.40.val) ; 0 uses
  %i.cz = tail call i32 @putc(i32 noundef 0, ptr noundef %.40.val) ; 0 uses
  %i.da = tail call i32 @putc(i32 noundef 0, ptr noundef %.40.val) ; 0 uses
  %i.db = tail call i32 @putc(i32 noundef 0, ptr noundef %.40.val) ; 0 uses
  %i.dc = add i32 %.411.us, 1                     ; 2 uses
  %exitcond43.not = icmp eq i32 %i.dc, %1
  br i1 %exitcond43.not, label %._crit_edge, label %.lr.ph12.split.us, !llvm.loop !104

.lr.ph12.split:                                   ; preds = %.lr.ph12, %.lr.ph12.split
  %.411 = phi i32 [ %i.dg, %.lr.ph12.split ], [ %.34749, %.lr.ph12 ]
  %i.dd = tail call i32 @putc(i32 noundef 0, ptr noundef %.40.val) ; 0 uses
  %i.de = tail call i32 @putc(i32 noundef 0, ptr noundef %.40.val) ; 0 uses
  %i.df = tail call i32 @putc(i32 noundef 0, ptr noundef %.40.val) ; 0 uses
  %i.dg = add i32 %.411, 1                        ; 2 uses
  %exitcond42.not = icmp eq i32 %i.dg, %1
  br i1 %exitcond42.not, label %._crit_edge, label %.lr.ph12.split, !llvm.loop !104

._crit_edge:                                      ; preds = %.lr.ph12.split, %.lr.ph12.split.us, %bb.e
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS14jpeg_error_mgr", !9, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !9, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !9, i64 0}
!13 = !{!"p1 _ZTS15jpeg_source_mgr", !9, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"any p2 pointer", !9, i64 0}
!16 = !{!"p2 omnipotent char", !15, i64 0}
!17 = !{!"p1 int", !9, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"p1 _ZTS18jpeg_marker_struct", !9, i64 0}
!20 = !{!"p1 omnipotent char", !9, i64 0}
!21 = !{!"p1 _ZTS18jpeg_decomp_master", !9, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_main_controller", !9, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_coef_controller", !9, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_post_controller", !9, i64 0}
!25 = !{!"p1 _ZTS21jpeg_input_controller", !9, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_reader", !9, i64 0}
!27 = !{!"p1 _ZTS20jpeg_entropy_decoder", !9, i64 0}
!28 = !{!"p1 _ZTS16jpeg_inverse_dct", !9, i64 0}
!29 = !{!"p1 _ZTS14jpeg_upsampler", !9, i64 0}
!30 = !{!"p1 _ZTS22jpeg_color_deconverter", !9, i64 0}
!31 = !{!"p1 _ZTS20jpeg_color_quantizer", !9, i64 0}
!32 = !{!"jpeg_decompress_struct", !10, i64 0, !11, i64 8, !12, i64 16, !9, i64 24, !6, i64 32, !6, i64 36, !13, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !14, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !16, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !17, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !6, i64 296, !9, i64 304, !6, i64 312, !6, i64 316, !5, i64 320, !5, i64 336, !5, i64 352, !6, i64 368, !6, i64 372, !5, i64 376, !5, i64 377, !5, i64 378, !18, i64 380, !18, i64 382, !6, i64 384, !5, i64 388, !6, i64 392, !19, i64 400, !6, i64 408, !6, i64 412, !6, i64 416, !6, i64 420, !20, i64 424, !6, i64 432, !5, i64 440, !6, i64 472, !6, i64 476, !6, i64 480, !5, i64 484, !6, i64 524, !6, i64 528, !6, i64 532, !6, i64 536, !6, i64 540, !21, i64 544, !22, i64 552, !23, i64 560, !24, i64 568, !25, i64 576, !26, i64 584, !27, i64 592, !28, i64 600, !29, i64 608, !30, i64 616, !31, i64 624}
!33 = !{!32, !10, i64 0}
!34 = !{!"long", !5, i64 0}
!35 = !{!"jpeg_error_mgr", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !6, i64 40, !5, i64 44, !6, i64 124, !34, i64 128, !16, i64 136, !6, i64 144, !16, i64 152, !6, i64 160, !6, i64 164}
!36 = !{!35, !6, i64 40}
!37 = !{!5, !5, i64 0}
!38 = !{!35, !9, i64 0}
!39 = !{!32, !11, i64 8}
!40 = !{!"jpeg_memory_mgr", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !34, i64 88, !34, i64 96}
!41 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!42 = !{!"p2 short", !15, i64 0}
!43 = !{!"djpeg_dest_struct", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !41, i64 40, !16, i64 48, !42, i64 56, !42, i64 64, !6, i64 72}
!44 = !{!"p1 _ZTS20jvirt_sarray_control", !9, i64 0}
!45 = !{!"", !43, i64 0, !6, i64 80, !44, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !20, i64 120}
!46 = !{!45, !6, i64 80}
!47 = !{!32, !6, i64 64}
!48 = !{!32, !6, i64 108}
!49 = !{!32, !6, i64 136}
!50 = !{!45, !6, i64 100}
!51 = !{!45, !6, i64 104}
!52 = !{!32, !6, i64 140}
!53 = !{!45, !44, i64 88}
!54 = !{!45, !6, i64 108}
!55 = !{!32, !12, i64 16}
!56 = !{!"jpeg_progress_mgr", !9, i64 0, !34, i64 8, !34, i64 16, !6, i64 24, !6, i64 28}
!57 = !{!"cdjpeg_progress_mgr", !56, i64 0, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48}
!58 = !{!45, !20, i64 120}
!59 = !{!45, !6, i64 112}
!60 = !{!45, !16, i64 48}
!61 = !{!45, !41, i64 40}
!62 = !{!40, !9, i64 56}
!63 = !{!20, !20, i64 0}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!6, !6, i64 0}
!66 = !{!32, !6, i64 296}
!67 = !{!40, !9, i64 0}
!68 = !{!45, !9, i64 0}
!69 = !{!45, !9, i64 8}
!70 = !{!45, !9, i64 24}
!71 = !{!45, !9, i64 32}
!72 = !{!45, !9, i64 16}
!73 = !{!32, !6, i64 48}
!74 = !{!32, !6, i64 52}
!75 = !{!45, !6, i64 96}
!76 = !{!32, !6, i64 148}
!77 = !{!40, !9, i64 32}
!78 = !{!57, !6, i64 36}
!79 = !{!40, !9, i64 16}
!80 = !{!45, !6, i64 72}
!81 = distinct !{!81, !64}
!82 = !{!57, !34, i64 8}
!83 = !{!57, !34, i64 16}
!84 = !{!57, !9, i64 0}
!85 = !{!57, !6, i64 32}
!86 = distinct !{!86, !64}
!87 = distinct !{!87, !"LVerDomain"}
!88 = distinct !{!88, !87}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !64, !96, !97}
!91 = distinct !{!91, !64, !96}
!92 = distinct !{!92, !64}
!93 = !{!18, !18, i64 0}
!94 = !{!88}
!95 = !{!89}
!96 = !{!"llvm.loop.isvectorized", i32 1}
!97 = !{!"llvm.loop.unroll.runtime.disable"}
!98 = !{!32, !5, i64 378}
!99 = !{!32, !18, i64 380}
!100 = !{!32, !18, i64 382}
!101 = distinct !{!101, !64}
!102 = distinct !{!102, !64}
!103 = distinct !{!103, !64}
!104 = distinct !{!104, !64}
!105 = !{!32, !16, i64 160}
!106 = !{!32, !6, i64 156}
!107 = !{!32, !6, i64 144}
end_hunk_0
