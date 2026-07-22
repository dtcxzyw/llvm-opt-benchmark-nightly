inline.NumInlined: 86
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 26
begin_hunk_0_@ExpandMatrix:.preheader46
  %i.dd = lshr i32 %i.cz, 11
  %i.de = lshr i32 %i.da, 11
  %i.df = lshr i32 %i.db, 11
  %i.dg = trunc nuw nsw i32 %i.dc to i16          ; 3 uses
  %i.dh = trunc nuw nsw i32 %i.dd to i16
  %i.di = trunc nuw nsw i32 %i.de to i16
  %i.dj = trunc nuw nsw i32 %i.df to i16
  %i.dk = insertelement <8 x i16> poison, i16 %i.dj, i64 0
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.di, i64 1
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.dh, i64 2
  %i.dn = insertelement <8 x i16> %i.dm, i16 %i.dg, i64 3
  %i.do = shufflevector <8 x i16> %i.dn, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 3, i32 2, i32 3, i32 3>
  store <8 x i16> %i.do, ptr %i.cv, align 2, !tbaa !47
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 214
  store i16 %i.dg, ptr %i.dp, align 2, !tbaa !47
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i16 %i.dg, ptr %i.dq, align 4, !tbaa !47
  %i.dr = shl nuw nsw i32 %i.ad, 3
  %i.ds = mul nuw nsw i32 %i.ci, 90
  %i.dt = lshr i32 %i.ds, 11
  %i.du = trunc nuw nsw i32 %i.dt to i16          ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 218
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !47
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i16 %i.du, ptr %i.dw, align 4, !tbaa !47
  %reass.add63 = shl nuw nsw i32 %i.ci, 1
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 222
  store i16 %i.du, ptr %i.dx, align 2, !tbaa !47
  %i.dy = shl nuw nsw i32 %i.ci, 1
  %op.rdx = add nuw nsw i32 %i.dy, %i.co
  %op.rdx64 = add nuw nsw i32 %op.rdx, %i.cu
  %op.rdx65 = add nuw nsw i32 %op.rdx64, %i.cx
  %op.rdx66 = add nuw nsw i32 %op.rdx65, %i.dr
  %op.rdx67 = add nuw nsw i32 %reass.add63, %i.bw
  %op.rdx68 = add nuw nsw i32 %op.rdx66, %op.rdx67
  br label %.split.us

.split.us:                                        ; preds = %.preheader.split.preheader, %.preheader.split.us.preheader
  %.us-phi = phi i32 [ %op.rdx68, %.preheader.split.us.preheader ], [ %op.rdx74, %.preheader.split.preheader ]
  %i.dz = add nuw nsw i32 %.us-phi, 8
  %i.ea = lshr i32 %i.dz, 4
  ret i32 %i.ea
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ReconstructIntra16(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i32 noundef range(i32 -2147483648, 256) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x [16 x i16]], align 16       ; 27 uses
  %i.b = alloca [16 x i16], align 16              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.g = sext i32 %3 to i64
  %i.h = getelementptr inbounds [2 x i8], ptr @VP8I16ModeOffsets, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !47
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !104  ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.p = load i8, ptr %i.o, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.q = load ptr, ptr @VP8FTransform2, align 8, !tbaa !87
  call void %i.q(ptr noundef %i.m, ptr noundef %i.k, ptr noundef nonnull %i.a) #11
  %i.r = load ptr, ptr @VP8FTransform2, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 4 uses
  call void %i.r(ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u) #11
  %i.v = load ptr, ptr @VP8FTransform2, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 4 uses
  call void %i.v(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y) #11
  %i.z = load ptr, ptr @VP8FTransform2, align 8, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 4 uses
  call void %i.z(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) #11
  %i.ad = load ptr, ptr @VP8FTransform2, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 256 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 4 uses
  call void %i.ad(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag) #11
  %i.ah = load ptr, ptr @VP8FTransform2, align 8, !tbaa !87
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 264 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 4 uses
  call void %i.ah(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak) #11
  %i.al = load ptr, ptr @VP8FTransform2, align 8, !tbaa !87
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 384 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 384 ; 4 uses
  call void %i.al(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao) #11
  %i.ap = load ptr, ptr @VP8FTransform2, align 8, !tbaa !87
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 392
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 392 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 448 ; 4 uses
  call void %i.ap(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as) #11
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 608
  %i.au = lshr i8 %i.p, 5
  %i.av = and i8 %i.au, 3
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [744 x i8], ptr %i.at, i64 %i.aw ; 14 uses
  %i.ay = load ptr, ptr @VP8FTransformWHT, align 8, !tbaa !87
  call void %i.ay(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  %i.az = load ptr, ptr @VP8EncQuantizeBlockWHT, align 8, !tbaa !87
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 224
  %i.bc = call i32 %i.az(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb) #11
  %i.bd = shl i32 %i.bc, 24                       ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !97
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i16 0, ptr %i.bh, align 16, !tbaa !47
  store i16 0, ptr %i.a, align 16, !tbaa !47
  %i.bi = load ptr, ptr @VP8EncQuantize2Blocks, align 8, !tbaa !87
  %i.bj = call i32 %i.bi(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.ax) #11
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i16 0, ptr %i.bk, align 16, !tbaa !47
  store i16 0, ptr %i.u, align 16, !tbaa !47
  %i.bl = load ptr, ptr @VP8EncQuantize2Blocks, align 8, !tbaa !87
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bn = call i32 %i.bl(ptr noundef nonnull %i.u, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.ax) #11
  %i.bo = shl i32 %i.bn, 2
  %i.bp = or i32 %i.bj, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i16 0, ptr %i.bq, align 16, !tbaa !47
  store i16 0, ptr %i.y, align 16, !tbaa !47
  %i.br = load ptr, ptr @VP8EncQuantize2Blocks, align 8, !tbaa !87
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bt = call i32 %i.br(ptr noundef nonnull %i.y, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.ax) #11
  %i.bu = shl i32 %i.bt, 4
  %i.bv = or i32 %i.bp, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i16 0, ptr %i.bw, align 16, !tbaa !47
  store i16 0, ptr %i.ac, align 16, !tbaa !47
  %i.bx = load ptr, ptr @VP8EncQuantize2Blocks, align 8, !tbaa !87
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bz = call i32 %i.bx(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.by, ptr noundef nonnull %i.ax) #11
  %i.ca = shl i32 %i.bz, 6
  %i.cb = or i32 %i.bv, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store i16 0, ptr %i.cc, align 16, !tbaa !47
  store i16 0, ptr %i.ag, align 16, !tbaa !47
  %i.cd = load ptr, ptr @VP8EncQuantize2Blocks, align 8, !tbaa !87
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.cf = call i32 %i.cd(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.ax) #11
  %i.cg = shl i32 %i.cf, 8
  %i.ch = or i32 %i.cb, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store i16 0, ptr %i.ci, align 16, !tbaa !47
  store i16 0, ptr %i.ak, align 16, !tbaa !47
  %i.cj = load ptr, ptr @VP8EncQuantize2Blocks, align 8, !tbaa !87
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.cl = call i32 %i.cj(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.ax) #11
  %i.cm = shl i32 %i.cl, 10
  %i.cn = or i32 %i.ch, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  store i16 0, ptr %i.co, align 16, !tbaa !47
  store i16 0, ptr %i.ao, align 16, !tbaa !47
  %i.cp = load ptr, ptr @VP8EncQuantize2Blocks, align 8, !tbaa !87
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.cr = call i32 %i.cp(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ax) #11
  %i.cs = shl i32 %i.cr, 12
  %i.ct = or i32 %i.cn, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store i16 0, ptr %i.cu, align 16, !tbaa !47
  store i16 0, ptr %i.as, align 16, !tbaa !47
  %i.cv = load ptr, ptr @VP8EncQuantize2Blocks, align 8, !tbaa !87
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.cx = call i32 %i.cv(ptr noundef nonnull %i.as, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.ax) #11
  %i.cy = shl i32 %i.cx, 14
  %i.cz = or i32 %i.ct, %i.cy
  %i.da = or i32 %i.cz, %i.bd
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @VP8IteratorNzToBytes(ptr noundef nonnull %0) #11
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 720
  %.pre = load i32, ptr %i.db, align 4, !tbaa !3
  %.pre100 = load i32, ptr %i.de, align 8, !tbaa !73 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br label %.preheader67

.preheader67:                                     ; preds = %bb.b, %.preheader67
  %i.di = phi i32 [ %.pre, %bb.b ], [ %i.do, %.preheader67 ]
  %indvars.iv89 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next88, %.preheader67 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next90, %.preheader67 ] ; 7 uses
  %.075 = phi i32 [ %i.bd, %bb.b ], [ %i.ep, %.preheader67 ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv89 ; 5 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = add nsw i32 %i.dk, %i.di
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.dd, i64 %indvars.iv ; 2 uses
  %i.do = call fastcc i32 @TrellisQuantizeBlock(ptr noundef nonnull %i.d, ptr noundef %i.dm, ptr noundef nonnull %i.dn, i32 noundef %i.dl, i32 noundef 0, ptr noundef nonnull %i.ax, i32 noundef %.pre100) ; 5 uses
  store i32 %i.do, ptr %i.dj, align 4, !tbaa !3
  store i32 %i.do, ptr %i.db, align 4, !tbaa !3
  store i16 0, ptr %i.dn, align 8, !tbaa !47
  %i.dp = trunc nuw nsw i64 %indvars.iv to i32
  %i.dq = shl nuw i32 %i.do, %i.dp
  %i.dr = or i32 %i.dq, %.075
  %indvars.iv.next.a = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ds = load i32, ptr %i.df, align 8, !tbaa !3
  %i.dt = add nsw i32 %i.do, %i.ds
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv.next.a
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.dd, i64 %indvars.iv.next.a ; 2 uses
  %i.dw = call fastcc i32 @TrellisQuantizeBlock(ptr noundef nonnull %i.d, ptr noundef %i.du, ptr noundef nonnull %i.dv, i32 noundef %i.dt, i32 noundef 0, ptr noundef nonnull %i.ax, i32 noundef %.pre100) ; 4 uses
  store i32 %i.dw, ptr %i.dj, align 4, !tbaa !3
  store i32 %i.dw, ptr %i.df, align 8, !tbaa !3
  store i16 0, ptr %i.dv, align 8, !tbaa !47
  %i.dx = trunc nuw nsw i64 %indvars.iv.next.a to i32
  %i.dy = shl nuw i32 %i.dw, %i.dx
  %i.dz = or i32 %i.dy, %i.dr
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.ea = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.eb = add nsw i32 %i.dw, %i.ea
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv.next.1
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.dd, i64 %indvars.iv.next.1 ; 2 uses
  %i.ee = call fastcc i32 @TrellisQuantizeBlock(ptr noundef nonnull %i.d, ptr noundef %i.ec, ptr noundef nonnull %i.ed, i32 noundef %i.eb, i32 noundef 0, ptr noundef nonnull %i.ax, i32 noundef %.pre100) ; 4 uses
  store i32 %i.ee, ptr %i.dj, align 4, !tbaa !3
  store i32 %i.ee, ptr %i.dg, align 4, !tbaa !3
  store i16 0, ptr %i.ed, align 8, !tbaa !47
  %i.ef = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.eg = shl nuw i32 %i.ee, %i.ef
  %i.eh = or i32 %i.eg, %i.dz
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %i.ei = load i32, ptr %i.dh, align 8, !tbaa !3
  %i.ej = add nsw i32 %i.ee, %i.ei
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv.next.2
  %i.el = getelementptr inbounds nuw [32 x i8], ptr %i.dd, i64 %indvars.iv.next.2 ; 2 uses
  %i.em = call fastcc i32 @TrellisQuantizeBlock(ptr noundef nonnull %i.d, ptr noundef %i.ek, ptr noundef nonnull %i.el, i32 noundef %i.ej, i32 noundef 0, ptr noundef nonnull %i.ax, i32 noundef %.pre100) ; 3 uses
  store i32 %i.em, ptr %i.dj, align 4, !tbaa !3
  store i32 %i.em, ptr %i.dh, align 8, !tbaa !3
  store i16 0, ptr %i.el, align 8, !tbaa !47
  %i.en = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.eo = shl nuw i32 %i.em, %i.en
  %i.ep = or i32 %i.eo, %i.eh                     ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not = icmp eq i64 %indvars.iv.next88, 4
  br i1 %exitcond.not, label %.loopexit, label %.preheader67, !llvm.loop !233

.loopexit:                                        ; preds = %.preheader67, %.preheader
  %.3 = phi i32 [ %i.da, %.preheader ], [ %i.ep, %.preheader67 ]
  %i.eq = load ptr, ptr @VP8TransformWHT, align 8, !tbaa !87
  call void %i.eq(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #11
  %i.er = load ptr, ptr @VP8ITransform, align 8, !tbaa !87
  call void %i.er(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef 1) #11
  %i.es = load ptr, ptr @VP8ITransform, align 8, !tbaa !87
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void %i.es(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.et, i32 noundef 1) #11
  %i.eu = load ptr, ptr @VP8ITransform, align 8, !tbaa !87
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void %i.eu(ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ev, i32 noundef 1) #11
  %i.ew = load ptr, ptr @VP8ITransform, align 8, !tbaa !87
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 136
  call void %i.ew(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ex, i32 noundef 1) #11
  %i.ey = load ptr, ptr @VP8ITransform, align 8, !tbaa !87
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 256
  call void %i.ey(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ez, i32 noundef 1) #11
  %i.fa = load ptr, ptr @VP8ITransform, align 8, !tbaa !87
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 264
  call void %i.fa(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.fb, i32 noundef 1) #11
  %i.fc = load ptr, ptr @VP8ITransform, align 8, !tbaa !87
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 384
  call void %i.fc(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.fd, i32 noundef 1) #11
  %i.fe = load ptr, ptr @VP8ITransform, align 8, !tbaa !87
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 392
  call void %i.fe(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef nonnull %i.ff, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.3
}

declare i32 @VP8GetCostLuma16(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @IsFlat_C(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 1, 17) %1, i32 noundef range(i32 0, 4) %2) unnamed_addr #6 {
bb.a:
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.p
  %.in = phi i32 [ %1, %bb.a ], [ %i.a, %bb.p ]   ; 2 uses
  %.01127 = phi i32 [ 0, %bb.a ], [ %i.cl, %bb.p ]
  %.01626 = phi ptr [ %0, %bb.a ], [ %i.cn, %bb.p ] ; 16 uses
  %i.a = add nsw i32 %.in, -1
  %i.b = getelementptr inbounds nuw i8, ptr %.01626, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !47
  %i.d = icmp ne i16 %i.c, 0
  %i.e = zext i1 %i.d to i32
  %i.f = add nuw nsw i32 %.01127, %i.e            ; 2 uses
  %i.g = icmp sgt i32 %i.f, %2
  br i1 %i.g, label %.thread, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %.01626, i64 4
  %i.i = load i16, ptr %i.h, align 2, !tbaa !47
  %i.j = icmp ne i16 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %i.l = add nuw nsw i32 %i.f, %i.k               ; 2 uses
  %i.m = icmp sgt i32 %i.l, %2
  br i1 %i.m, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.01626, i64 6
  %i.o = load i16, ptr %i.n, align 2, !tbaa !47
  %i.p = icmp ne i16 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = add nuw nsw i32 %i.l, %i.q               ; 2 uses
  %i.s = icmp sgt i32 %i.r, %2
  br i1 %i.s, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.01626, i64 8
  %i.u = load i16, ptr %i.t, align 2, !tbaa !47
  %i.v = icmp ne i16 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = add nuw nsw i32 %i.r, %i.w               ; 2 uses
  %i.y = icmp sgt i32 %i.x, %2
  br i1 %i.y, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.01626, i64 10
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !47
  %i.ab = icmp ne i16 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = add nuw nsw i32 %i.x, %i.ac             ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, %2
  br i1 %i.ae, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.01626, i64 12
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !47
  %i.ah = icmp ne i16 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = add nuw nsw i32 %i.ad, %i.ai            ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, %2
  br i1 %i.ak, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.01626, i64 14
  %i.am = load i16, ptr %i.al, align 2, !tbaa !47
  %i.an = icmp ne i16 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %i.ap = add nuw nsw i32 %i.aj, %i.ao            ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, %2
  br i1 %i.aq, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.01626, i64 16
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !47
  %i.at = icmp ne i16 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = add nuw nsw i32 %i.ap, %i.au            ; 2 uses
  %i.aw = icmp sgt i32 %i.av, %2
  br i1 %i.aw, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.01626, i64 18
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !47
  %i.az = icmp ne i16 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = add nuw nsw i32 %i.av, %i.ba            ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, %2
  br i1 %i.bc, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.01626, i64 20
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !47
  %i.bf = icmp ne i16 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = add nuw nsw i32 %i.bb, %i.bg            ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, %2
  br i1 %i.bi, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %.01626, i64 22
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !47
  %i.bl = icmp ne i16 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.bh, %i.bm            ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, %2
  br i1 %i.bo, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %.01626, i64 24
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !47
  %i.br = icmp ne i16 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = add nuw nsw i32 %i.bn, %i.bs            ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, %2
  br i1 %i.bu, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %.01626, i64 26
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !47
  %i.bx = icmp ne i16 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %i.bz = add nuw nsw i32 %i.bt, %i.by            ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, %2
  br i1 %i.ca, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %.01626, i64 28
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !47
  %i.cd = icmp ne i16 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = add nuw nsw i32 %i.bz, %i.ce            ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, %2
  br i1 %i.cg, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %.01626, i64 30
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !47
  %i.cj = icmp ne i16 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = add nuw nsw i32 %i.cf, %i.ck            ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, %2
  br i1 %i.cm, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %.01626, i64 32
  %i.co = icmp samesign ugt i32 %.in, 1
  br i1 %i.co, label %.preheader, label %.thread, !llvm.loop !234

.thread:                                          ; preds = %bb.p, %.preheader, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.214 = phi i32 [ 0, %.preheader ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 1, %bb.p ]
  ret i32 %.214
}

declare void @VP8SetIntra16Mode(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @VP8IteratorNzToBytes(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @TrellisQuantizeBlock(ptr noalias nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 0, 4) %4, ptr noalias nofree noundef readonly captures(none) %5, i32 noundef %6) unnamed_addr #7 {
bb.a:
  %7 = alloca [16 x [2 x %struct.Node]], align 16 ; 5 uses
  %8 = alloca [2 x [2 x %struct.ScoreState]], align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3620
end_hunk_0
