Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec16?download=true
inline.NumInlined: 202
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 76
begin_hunk_0_@If_CluVerify3:bb.a
bb.g:                                             ; preds = %bb.f
  br i1 %i.bp, label %If_CluCopy.exit69.sink.split, label %If_CluCopy.exit69

bb.h:                                             ; preds = %bb.f
  br i1 %i.bp, label %.lr.ph.i79.preheader, label %If_CluCopy.exit69

.lr.ph.i79.preheader:                             ; preds = %bb.h
  %i.bw = sext i8 %i.bs to i64
  %i.bx = getelementptr [8192 x i8], ptr @TruthAll, i64 %i.bw
  br label %If_CluCopy.exit69.sink.split

If_CluCopy.exit69.sink.split:                     ; preds = %bb.g, %bb.e, %.lr.ph.i79.preheader
  %.sink132 = phi ptr [ %i.bx, %.lr.ph.i79.preheader ], [ %i.e, %bb.e ], [ %i.f, %bb.g ]
  %i.by = getelementptr [8192 x i8], ptr %i.d, i64 %indvars.iv124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.by, ptr noundef nonnull align 16 dereferenceable(1) %.sink132, i64 %i.bq, i1 false), !tbaa !44
  br label %If_CluCopy.exit69

If_CluCopy.exit69:                                ; preds = %If_CluCopy.exit69.sink.split, %bb.h, %bb.g, %bb.e
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %._crit_edge115, label %bb.d, !llvm.loop !216

._crit_edge115:                                   ; preds = %If_CluCopy.exit69, %._crit_edge111.split.._crit_edge115_crit_edge
  %.pre-phi130 = phi i32 [ %.pre129, %._crit_edge111.split.._crit_edge115_crit_edge ], [ %i.bn, %If_CluCopy.exit69 ]
  call fastcc void @If_CluComposeLut(i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %i.c, ptr noundef %i.d, ptr noundef %i.g)
  %i.bz = icmp slt i32 %1, 7
  %i.ca = select i1 %i.bz, i32 1, i32 %.pre-phi130 ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.preheader.i84, label %If_CluEqual.exit.thread

.lr.ph.preheader.i84:                             ; preds = %._crit_edge115
  %wide.trip.count.i85 = zext nneg i32 %i.ca to i64
  br label %.lr.ph.i86

bb.i:                                             ; preds = %.lr.ph.i86
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i87, 1 ; 2 uses
  %exitcond.not.i89 = icmp eq i64 %indvars.iv.next.i88, %wide.trip.count.i85
  br i1 %exitcond.not.i89, label %If_CluEqual.exit.thread, label %.lr.ph.i86, !llvm.loop !10

.lr.ph.i86:                                       ; preds = %bb.i, %.lr.ph.preheader.i84
  %indvars.iv.i87 = phi i64 [ 0, %.lr.ph.preheader.i84 ], [ %indvars.iv.next.i88, %bb.i ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i87
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !44
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i87
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !44
  %.not.i = icmp eq i64 %i.cd, %i.cf
  br i1 %.not.i, label %bb.i, label %If_CluEqual.exit

If_CluEqual.exit:                                 ; preds = %.lr.ph.i86
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %1) ; 0 uses
  %i.ch = load i8, ptr %2, align 1, !tbaa !78
  %i.ci = sext i8 %i.ch to i32
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.a, i32 noundef %i.ci) #24
  %i.cj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.ck = load i8, ptr %2, align 1, !tbaa !78
  %i.cl = sext i8 %i.ck to i32
  %i.cm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.cl) ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !79
  %i.cp = sext i8 %i.co to i32
  %i.cq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.cp) ; 0 uses
  %i.cr = load i8, ptr %2, align 1, !tbaa !78
  %i.cs = icmp sgt i8 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i90, label %If_CluPrintGroup.exit

.lr.ph.i90:                                       ; preds = %If_CluEqual.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i90
  %indvars.iv.i91 = phi i64 [ 0, %.lr.ph.i90 ], [ %indvars.iv.next.i92, %bb.j ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv.i91
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !71
  %i.cw = sext i8 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, 97
  %i.cy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.cx) ; 0 uses
  %indvars.iv.next.i92 = add nuw nsw i64 %indvars.iv.i91, 1 ; 2 uses
  %i.cz = load i8, ptr %2, align 1, !tbaa !78
  %i.da = sext i8 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next.i92, %i.da
  br i1 %i.db, label %bb.j, label %If_CluPrintGroup.exit, !llvm.loop !11

If_CluPrintGroup.exit:                            ; preds = %bb.j, %If_CluEqual.exit
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.dc = load i8, ptr %3, align 1, !tbaa !78
  %i.dd = sext i8 %i.dc to i32
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.b, i32 noundef %i.dd) #24
  %i.de = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.df = load i8, ptr %3, align 1, !tbaa !78
  %i.dg = sext i8 %i.df to i32
  %i.dh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.dg) ; 0 uses
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !79
  %i.dk = sext i8 %i.dj to i32
  %i.dl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.dk) ; 0 uses
  %i.dm = load i8, ptr %3, align 1, !tbaa !78
  %i.dn = icmp sgt i8 %i.dm, 0
  br i1 %i.dn, label %.lr.ph.i94, label %If_CluPrintGroup.exit97

.lr.ph.i94:                                       ; preds = %If_CluPrintGroup.exit
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i94
  %indvars.iv.i95 = phi i64 [ 0, %.lr.ph.i94 ], [ %indvars.iv.next.i96, %bb.k ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.i95
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !71
  %i.dr = sext i8 %i.dq to i32
  %i.ds = add nsw i32 %i.dr, 97
  %i.dt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ds) ; 0 uses
  %indvars.iv.next.i96 = add nuw nsw i64 %indvars.iv.i95, 1 ; 2 uses
  %i.du = load i8, ptr %3, align 1, !tbaa !78
  %i.dv = sext i8 %i.du to i64
  %i.dw = icmp slt i64 %indvars.iv.next.i96, %i.dv
  br i1 %i.dw, label %bb.k, label %If_CluPrintGroup.exit97, !llvm.loop !11

If_CluPrintGroup.exit97:                          ; preds = %bb.k, %If_CluPrintGroup.exit
  %puts.i93 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.dx = load i8, ptr %4, align 1, !tbaa !78
  %i.dy = sext i8 %i.dx to i32
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.c, i32 noundef %i.dy) #24
  %i.dz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.ea = load i8, ptr %4, align 1, !tbaa !78
  %i.eb = sext i8 %i.ea to i32
  %i.ec = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.eb) ; 0 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !79
  %i.ef = sext i8 %i.ee to i32
  %i.eg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.ef) ; 0 uses
  %i.eh = load i8, ptr %4, align 1, !tbaa !78
  %i.ei = icmp sgt i8 %i.eh, 0
  br i1 %i.ei, label %.lr.ph.i99, label %If_CluPrintGroup.exit102

.lr.ph.i99:                                       ; preds = %If_CluPrintGroup.exit97
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i99
  %indvars.iv.i100 = phi i64 [ 0, %.lr.ph.i99 ], [ %indvars.iv.next.i101, %bb.l ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv.i100
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !71
  %i.em = sext i8 %i.el to i32
  %i.en = add nsw i32 %i.em, 97
  %i.eo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.en) ; 0 uses
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i100, 1 ; 2 uses
  %i.ep = load i8, ptr %4, align 1, !tbaa !78
  %i.eq = sext i8 %i.ep to i64
  %i.er = icmp slt i64 %indvars.iv.next.i101, %i.eq
  br i1 %i.er, label %bb.l, label %If_CluPrintGroup.exit102, !llvm.loop !11

If_CluPrintGroup.exit102:                         ; preds = %bb.l, %If_CluPrintGroup.exit97
  %puts.i98 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.e, i32 noundef %1) #24
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.f, i32 noundef %1) #24
  %putchar53 = call i32 @putchar(i32 10)          ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.g, i32 noundef %1) #24
  %putchar54 = call i32 @putchar(i32 10)          ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %0, i32 noundef %1) #24
  %putchar55 = call i32 @putchar(i32 10)          ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %If_CluEqual.exit.thread

If_CluEqual.exit.thread:                          ; preds = %bb.i, %._crit_edge115, %If_CluPrintGroup.exit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @If_CluSwapVars(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp slt i32 %1, 7
  %i.b = add nsw i32 %1, -6
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 9 uses
  %i.e = icmp eq i32 %4, %5
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.smax.i32(i32 %5, i32 %4) ; 7 uses
  %spec.select158 = tail call i32 @llvm.smin.i32(i32 %5, i32 %4) ; 8 uses
  %i.f = icmp slt i32 %spec.select, 6
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %.neg = shl nsw i32 -1, %spec.select158
  %i.h = shl nuw nsw i32 1, %spec.select
  %i.i = add nsw i32 %.neg, %i.h
  %i.j = sext i32 %spec.select158 to i64
  %i.k = getelementptr inbounds [48 x i8], ptr @If_CluSwapVars.PPMasks, i64 %i.j
  %i.l = sext i32 %spec.select to i64
  %i.m = getelementptr [8 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !44   ; 9 uses
  %i.p = zext i32 %i.i to i64                     ; 8 uses
  %i.q = xor i64 %i.o, -1                         ; 4 uses
  %i.r = shl i64 %i.o, %i.p
  %i.s = xor i64 %i.r, -1                         ; 4 uses
  %min.iters.check243 = icmp ult i32 %i.d, 4
  br i1 %min.iters.check243, label %scalar.ph242, label %vector.ph244

vector.ph244:                                     ; preds = %.lr.ph
  %i.t = and i32 %i.d, 2147483644
  %n.vec245 = zext nneg i32 %i.t to i64
  %broadcast.splatinsert246 = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat247 = shufflevector <2 x i64> %broadcast.splatinsert246, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert248 = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %broadcast.splat249 = shufflevector <2 x i64> %broadcast.splatinsert248, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert250 = insertelement <2 x i64> poison, i64 %i.q, i64 0
  %broadcast.splat253.a = shufflevector <2 x i64> %broadcast.splatinsert250, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert254 = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat255 = shufflevector <2 x i64> %broadcast.splatinsert254, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op277 = and <2 x i64> %broadcast.splat253.a, %broadcast.splat255
  %invariant.op279 = and <2 x i64> %broadcast.splat253.a, %broadcast.splat255
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph244
  %index257 = phi i64 [ 0, %vector.ph244 ], [ %index.next260, %vector.body256 ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index257 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %wide.load258 = load <2 x i64>, ptr %i.u, align 8, !tbaa !44 ; 3 uses
  %wide.load259 = load <2 x i64>, ptr %i.v, align 8, !tbaa !44 ; 3 uses
  %i.w = and <2 x i64> %broadcast.splat247, %wide.load258
  %i.x = and <2 x i64> %broadcast.splat247, %wide.load259
  %i.y = shl <2 x i64> %i.w, %broadcast.splat249
  %i.z = shl <2 x i64> %i.x, %broadcast.splat249
  %.reass274.a = and <2 x i64> %wide.load258, %broadcast.splat253.a
  %.reass276 = and <2 x i64> %wide.load259, %broadcast.splat253.a
  %i.aa = lshr <2 x i64> %.reass274.a, %broadcast.splat249
  %i.ab = lshr <2 x i64> %.reass276, %broadcast.splat249
  %6 = and <2 x i64> %i.aa, %broadcast.splat247
  %7 = and <2 x i64> %i.ab, %broadcast.splat247
  %.reass278 = and <2 x i64> %wide.load258, %invariant.op277
  %.reass280 = and <2 x i64> %wide.load259, %invariant.op279
  %i.ac = or <2 x i64> %.reass278, %i.y
  %i.ad = or <2 x i64> %.reass280, %i.z
  %i.ae = or <2 x i64> %i.ac, %6
  %i.af = or <2 x i64> %i.ad, %7
  store <2 x i64> %i.ae, ptr %i.u, align 8, !tbaa !44
  store <2 x i64> %i.af, ptr %i.v, align 8, !tbaa !44
  %index.next260 = add nuw i64 %index257, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next260, %n.vec245
  br i1 %i.ag, label %.loopexit, label %vector.body256, !llvm.loop !217

scalar.ph242:                                     ; preds = %.lr.ph
  %i.ah = load i64, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.ai = and i64 %i.o, %i.ah
  %i.aj = shl i64 %i.ai, %i.p
  %i.ak = and i64 %i.ah, %i.q                     ; 2 uses
  %8 = lshr i64 %i.ak, %i.p
  %9 = and i64 %8, %i.o
  %i.al = and i64 %i.ak, %i.s
  %i.am = or i64 %i.al, %i.aj
  %i.an = or i64 %i.am, %9
  store i64 %i.an, ptr %0, align 8, !tbaa !44
  %exitcond199.not = icmp eq i32 %i.d, 1
  br i1 %exitcond199.not, label %.loopexit, label %scalar.ph242.1

scalar.ph242.1:                                   ; preds = %scalar.ph242
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !44 ; 2 uses
  %i.aq = and i64 %i.o, %i.ap
  %i.ar = shl i64 %i.aq, %i.p
  %i.as = and i64 %i.ap, %i.q                     ; 2 uses
  %10 = lshr i64 %i.as, %i.p
  %11 = and i64 %10, %i.o
  %i.at = and i64 %i.as, %i.s
  %i.au = or i64 %i.at, %i.ar
  %i.av = or i64 %i.au, %11
  store i64 %i.av, ptr %i.ao, align 8, !tbaa !44
  %exitcond199.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond199.not.1, label %.loopexit, label %scalar.ph242.2

scalar.ph242.2:                                   ; preds = %scalar.ph242.1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !44 ; 2 uses
  %i.ay = and i64 %i.o, %i.ax
  %i.az = shl i64 %i.ay, %i.p
  %i.ba = and i64 %i.ax, %i.q                     ; 2 uses
  %12 = lshr i64 %i.ba, %i.p
  %13 = and i64 %12, %i.o
  %i.bb = and i64 %i.ba, %i.s
  %i.bc = or i64 %i.bb, %i.az
  %i.bd = or i64 %i.bc, %13
  store i64 %i.bd, ptr %i.aw, align 8, !tbaa !44
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.be = icmp slt i32 %spec.select158, 6
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bf = add nsw i32 %spec.select, -5            ; 2 uses
  %i.bg = shl nuw i32 1, %i.bf                    ; 2 uses
  %i.bh = sdiv i32 %i.bg, 2                       ; 2 uses
  %i.bi = icmp sgt i32 %i.d, 0
  br i1 %i.bi, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.bj = shl nuw nsw i32 1, %spec.select158
  %i.bk = icmp sgt i32 %i.bg, 1
  %i.bl = zext nneg i32 %i.bj to i64              ; 4 uses
  br i1 %i.bk, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.bm = shl nuw nsw i32 %i.bh, 1
  %i.bn = sext i32 %spec.select158 to i64
  %i.bo = getelementptr inbounds [48 x i8], ptr @If_CluSwapVars.PPMasks, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !44 ; 4 uses
  %i.br = xor i64 %i.bq, -1                       ; 2 uses
  %i.bs = lshr i64 %i.bq, %i.bl                   ; 3 uses
  %i.bt = xor i64 %i.bs, -1                       ; 2 uses
  %i.bu = zext nneg i32 %i.bm to i64
  %i.bv = zext nneg i32 %i.bh to i64              ; 4 uses
  %invariant.gep210 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv
  %min.iters.check221 = icmp ult i32 %i.bf, 2
  %n.vec223 = and i64 %i.bv, 1073741822           ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bq, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert224 = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %broadcast.splat225 = shufflevector <2 x i64> %broadcast.splatinsert224, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert226 = insertelement <2 x i64> poison, i64 %i.br, i64 0
  %broadcast.splat227 = shufflevector <2 x i64> %broadcast.splatinsert226, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert228 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %broadcast.splat229 = shufflevector <2 x i64> %broadcast.splatinsert228, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert230 = insertelement <2 x i64> poison, i64 %i.bt, i64 0
  %broadcast.splat231 = shufflevector <2 x i64> %broadcast.splatinsert230, <2 x i64> poison, <2 x i32> zeroinitializer
  %cmp.n240 = icmp eq i64 %n.vec223, %i.bv
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge169
  %indvars.iv192 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next193, %._crit_edge169 ] ; 3 uses
  %invariant.gep208 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv192 ; 2 uses
  %gep211 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep210, i64 %indvars.iv192 ; 2 uses
  br i1 %min.iters.check221, label %scalar.ph220.preheader, label %vector.body232

vector.body232:                                   ; preds = %.preheader, %vector.body232
  %index233 = phi i64 [ %index.next238, %vector.body232 ], [ 0, %.preheader ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep208, i64 %index233 ; 4 uses
  %wide.load234 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !44 ; 2 uses
  %i.bx = and <2 x i64> %broadcast.splat, %wide.load234
  %i.by = lshr <2 x i64> %i.bx, %broadcast.splat225
  %i.bz = and <2 x i64> %wide.load234, %broadcast.splat227
  store <2 x i64> %i.bz, ptr %i.bw, align 8, !tbaa !44
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %gep211, i64 %index233 ; 4 uses
  %wide.load235 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !44 ; 2 uses
  %i.cb = and <2 x i64> %wide.load235, %broadcast.splat229
  %i.cc = shl <2 x i64> %i.cb, %broadcast.splat225
  %i.cd = and <2 x i64> %wide.load235, %broadcast.splat231
  store <2 x i64> %i.cd, ptr %i.ca, align 8, !tbaa !44
  %wide.load236 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !44
  %i.ce = or <2 x i64> %wide.load236, %i.cc
  store <2 x i64> %i.ce, ptr %i.bw, align 8, !tbaa !44
  %wide.load237 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !44
  %i.cf = or <2 x i64> %wide.load237, %i.by
  store <2 x i64> %i.cf, ptr %i.ca, align 8, !tbaa !44
  %index.next238 = add nuw i64 %index233, 2       ; 2 uses
  %i.cg = icmp eq i64 %index.next238, %n.vec223
  br i1 %i.cg, label %middle.block239, label %vector.body232, !llvm.loop !218

middle.block239:                                  ; preds = %vector.body232
  br i1 %cmp.n240, label %._crit_edge169, label %scalar.ph220.preheader

scalar.ph220.preheader:                           ; preds = %.preheader, %middle.block239
  %indvars.iv187.ph = phi i64 [ 0, %.preheader ], [ %n.vec223, %middle.block239 ]
  br label %scalar.ph220

scalar.ph220:                                     ; preds = %scalar.ph220.preheader, %scalar.ph220
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %scalar.ph220 ], [ %indvars.iv187.ph, %scalar.ph220.preheader ] ; 3 uses
  %gep209 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep208, i64 %indvars.iv187 ; 4 uses
  %i.ch = load i64, ptr %gep209, align 8, !tbaa !44 ; 2 uses
  %i.ci = and i64 %i.bq, %i.ch
  %i.cj = lshr i64 %i.ci, %i.bl
  %i.ck = and i64 %i.ch, %i.br
  store i64 %i.ck, ptr %gep209, align 8, !tbaa !44
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %gep211, i64 %indvars.iv187 ; 4 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !44 ; 2 uses
  %i.cn = and i64 %i.cm, %i.bs
  %i.co = shl i64 %i.cn, %i.bl
  %i.cp = and i64 %i.cm, %i.bt
  store i64 %i.cp, ptr %i.cl, align 8, !tbaa !44
  %i.cq = load i64, ptr %gep209, align 8, !tbaa !44
  %i.cr = or i64 %i.cq, %i.co
  store i64 %i.cr, ptr %gep209, align 8, !tbaa !44
  %i.cs = load i64, ptr %i.cl, align 8, !tbaa !44
  %i.ct = or i64 %i.cs, %i.cj
  store i64 %i.ct, ptr %i.cl, align 8, !tbaa !44
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next188, %i.bv
  br i1 %exitcond191.not, label %._crit_edge169, label %scalar.ph220, !llvm.loop !219

._crit_edge169:                                   ; preds = %scalar.ph220, %middle.block239
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, %i.bu ; 2 uses
  %i.cu = trunc nuw i64 %indvars.iv.next193 to i32
  %i.cv = icmp sgt i32 %i.d, %i.cu
  br i1 %i.cv, label %.preheader, label %.loopexit, !llvm.loop !220

bb.f:                                             ; preds = %bb.d
  %i.cw = add nsw i32 %spec.select158, -5         ; 2 uses
  %i.cx = shl nuw i32 1, %i.cw                    ; 2 uses
  %i.cy = sdiv i32 %i.cx, 2                       ; 3 uses
  %i.cz = add nsw i32 %spec.select, -5
  %i.da = shl nuw i32 1, %i.cz                    ; 2 uses
  %i.db = sdiv i32 %i.da, 2                       ; 3 uses
  %i.dc = icmp sgt i32 %i.d, 0
  br i1 %i.dc, label %.preheader161.lr.ph, label %.loopexit

.preheader161.lr.ph:                              ; preds = %bb.f
  %i.dd = icmp slt i32 %i.da, 2
  %i.de = icmp slt i32 %i.cx, 2
  %brmerge = select i1 %i.dd, i1 true, i1 %i.de
  br i1 %brmerge, label %.loopexit, label %.preheader161.preheader

.preheader161.preheader:                          ; preds = %.preheader161.lr.ph
  %i.df = shl nuw nsw i32 %i.db, 1
  %i.dg = shl nuw nsw i32 %i.cy, 1                ; 2 uses
  %i.dh = zext nneg i32 %i.dg to i64              ; 5 uses
  %i.di = zext nneg i32 %i.db to i64              ; 4 uses
  %i.dj = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dk = zext nneg i32 %i.cy to i64              ; 3 uses
  %i.dl = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %i.cy to i64   ; 5 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dk
  %invariant.gep206 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.di
  %i.dm = shl nuw nsw i64 %i.dj, 3
  %i.dn = shl nuw nsw i64 %wide.trip.count, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %umax216 = tail call i64 @llvm.umax.i64(i64 %i.di, i64 %i.dh)
  %i.do = icmp ult i32 %i.dg, %i.db
  %umin = zext i1 %i.do to i64                    ; 2 uses
  %i.dp = or disjoint i64 %umin, %i.dh
  %i.dq = sub nsw i64 %umax216, %i.dp
  %min.iters.check = icmp ult i32 %i.cw, 3
  %invariant.gep267.a = getelementptr i8, ptr %0, i64 %i.dn
  %invariant.op = add i64 %i.di, %wide.trip.count
  %n.vec = and i64 %wide.trip.count, 1073741820   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %i.dk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.dr = add nsw i64 %i.dk, -1
  br label %.preheader161

.preheader161:                                    ; preds = %.preheader161.preheader, %._crit_edge165
  %indvar = phi i64 [ 0, %.preheader161.preheader ], [ %indvar.next, %._crit_edge165 ] ; 2 uses
  %indvars.iv184 = phi i64 [ 0, %.preheader161.preheader ], [ %indvars.iv.next185, %._crit_edge165 ] ; 3 uses
  %i.ds = mul i64 %i.dm, %indvar                  ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv184 ; 2 uses
  %gep207 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep206, i64 %indvars.iv184 ; 2 uses
  %invariant.gep269.a = getelementptr i8, ptr %invariant.gep267.a, i64 %i.ds
  %invariant.gep271 = getelementptr i8, ptr %0, i64 %i.ds
  br label %.preheader160

.preheader160:                                    ; preds = %.preheader161, %._crit_edge
  %indvars.iv181 = phi i64 [ 0, %.preheader161 ], [ %indvars.iv.next182, %._crit_edge ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv181 ; 4 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %gep207, i64 %indvars.iv181 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader160
  %i.dv = udiv i64 %i.dq, %umax
  %i.dw = add i64 %i.dv, %umin
  %i.dx = mul i64 %i.dw, %i.dh                    ; 2 uses
  %i.dy = shl i64 %i.dx, 3
  %gep270.a = getelementptr i8, ptr %invariant.gep269.a, i64 %i.dy
  %.reass = add i64 %i.dx, %invariant.op
  %i.dz = shl i64 %.reass, 3
  %gep272 = getelementptr i8, ptr %invariant.gep271, i64 %i.dz
  %bound0 = icmp ult ptr %gep, %gep272
  %bound1 = icmp ult ptr %gep207, %gep270.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %index ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ea, align 8, !tbaa !44, !alias.scope !228, !noalias !229
  %wide.load217 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !44, !alias.scope !228, !noalias !229
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %wide.load218 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !44, !alias.scope !229
  %wide.load219 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !44, !alias.scope !229
  store <2 x i64> %wide.load218, ptr %i.ea, align 8, !tbaa !44, !alias.scope !228, !noalias !229
end_hunk_0
