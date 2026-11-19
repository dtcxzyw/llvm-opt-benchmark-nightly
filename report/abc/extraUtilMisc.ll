Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilMisc?download=true
inline.NumInlined: 106
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 107
begin_hunk_0_@Extra_Transpose64:.preheader
  %i.bz = and i32 %i.by, -3                       ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 64
  br i1 %i.ca, label %.preheader.4, label %.preheader.5, !llvm.loop !194

.preheader.5:                                     ; preds = %.preheader.4, %.preheader.5
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.5 ], [ 0, %.preheader.4 ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !40 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !40 ; 2 uses
  %i.cg = lshr i64 %i.cf, 1
  %i.ch = xor i64 %i.cg, %i.cc
  %i.ci = and i64 %i.ch, 6148914691236517205      ; 2 uses
  %i.cj = xor i64 %i.ci, %i.cc
  store i64 %i.cj, ptr %i.cb, align 8, !tbaa !40
  %i.ck = shl nuw i64 %i.ci, 1
  %i.cl = xor i64 %i.ck, %i.cf
  store i64 %i.cl, ptr %i.ce, align 8, !tbaa !40
  %indvars.iv.next = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !40 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !40 ; 2 uses
  %i.cr = lshr i64 %i.cq, 1
  %i.cs = xor i64 %i.cr, %i.cn
  %i.ct = and i64 %i.cs, 6148914691236517205      ; 2 uses
  %i.cu = xor i64 %i.ct, %i.cn
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !40
  %i.cv = shl nuw i64 %i.ct, 1
  %i.cw = xor i64 %i.cv, %i.cq
  store i64 %i.cw, ptr %i.cp, align 8, !tbaa !40
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4
  %i.cx = icmp samesign ult i64 %indvars.iv.next, 62
  br i1 %i.cx, label %.preheader.5, label %bb.b, !llvm.loop !194

bb.b:                                             ; preds = %.preheader.5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Extra_Transpose64p(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #28 {
.preheader:
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %bb.a
  %.02830 = phi i32 [ 0, %.preheader ], [ %i.q, %bb.a ] ; 3 uses
  %i.a = sext i32 %.02830 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.e = sext i32 %.02830 to i64
  %i.f = getelementptr [8 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 256
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !40
  %i.j = lshr i64 %i.i, 32
  %.masked = and i64 %i.d, 4294967295
  %i.k = xor i64 %i.j, %.masked                   ; 2 uses
  %i.l = xor i64 %i.k, %i.d
  store i64 %i.l, ptr %i.c, align 8, !tbaa !40
  %i.m = load i64, ptr %i.h, align 8, !tbaa !40
  %i.n = shl nuw i64 %i.k, 32
  %i.o = xor i64 %i.n, %i.m
  store i64 %i.o, ptr %i.h, align 8, !tbaa !40
  %i.p = add nsw i32 %.02830, 33
  %i.q = and i32 %i.p, -33                        ; 2 uses
  %i.r = icmp slt i32 %i.q, 64
  br i1 %i.r, label %bb.a, label %.preheader.1, !llvm.loop !8

.preheader.1:                                     ; preds = %bb.a, %.preheader.1
  %.02830.1 = phi i32 [ %i.aj, %.preheader.1 ], [ 0, %bb.a ] ; 3 uses
  %i.s = sext i32 %.02830.1 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45   ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !40   ; 2 uses
  %i.w = sext i32 %.02830.1 to i64
  %i.x = getelementptr [8 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45   ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !40
  %i.ab = lshr i64 %i.aa, 16
  %i.ac = xor i64 %i.ab, %i.v
  %i.ad = and i64 %i.ac, 281470681808895          ; 2 uses
  %i.ae = xor i64 %i.ad, %i.v
  store i64 %i.ae, ptr %i.u, align 8, !tbaa !40
  %i.af = load i64, ptr %i.z, align 8, !tbaa !40
  %i.ag = shl nuw i64 %i.ad, 16
  %i.ah = xor i64 %i.ag, %i.af
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !40
  %i.ai = add nsw i32 %.02830.1, 17
  %i.aj = and i32 %i.ai, -17                      ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 64
  br i1 %i.ak, label %.preheader.1, label %.preheader.2, !llvm.loop !8

.preheader.2:                                     ; preds = %.preheader.1, %.preheader.2
  %.02830.2 = phi i32 [ %i.bc, %.preheader.2 ], [ 0, %.preheader.1 ] ; 3 uses
  %i.al = sext i32 %.02830.2 to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !45 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !40 ; 2 uses
  %i.ap = sext i32 %.02830.2 to i64
  %i.aq = getelementptr [8 x i8], ptr %0, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !40
  %i.au = lshr i64 %i.at, 8
  %i.av = xor i64 %i.au, %i.ao
  %i.aw = and i64 %i.av, 71777214294589695        ; 2 uses
  %i.ax = xor i64 %i.aw, %i.ao
  store i64 %i.ax, ptr %i.an, align 8, !tbaa !40
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !40
  %i.az = shl nuw i64 %i.aw, 8
  %i.ba = xor i64 %i.az, %i.ay
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !40
  %i.bb = add nsw i32 %.02830.2, 9
  %i.bc = and i32 %i.bb, -9                       ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 64
  br i1 %i.bd, label %.preheader.2, label %.preheader.3, !llvm.loop !8

.preheader.3:                                     ; preds = %.preheader.2, %.preheader.3
  %.02830.3 = phi i32 [ %i.bv, %.preheader.3 ], [ 0, %.preheader.2 ] ; 3 uses
  %i.be = sext i32 %.02830.3 to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !45 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !40 ; 2 uses
  %i.bi = sext i32 %.02830.3 to i64
  %i.bj = getelementptr [8 x i8], ptr %0, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !45 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !40
  %i.bn = lshr i64 %i.bm, 4
  %i.bo = xor i64 %i.bn, %i.bh
  %i.bp = and i64 %i.bo, 1085102592571150095      ; 2 uses
  %i.bq = xor i64 %i.bp, %i.bh
  store i64 %i.bq, ptr %i.bg, align 8, !tbaa !40
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !40
  %i.bs = shl nuw i64 %i.bp, 4
  %i.bt = xor i64 %i.bs, %i.br
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !40
  %i.bu = add nsw i32 %.02830.3, 5
  %i.bv = and i32 %i.bu, -5                       ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 64
  br i1 %i.bw, label %.preheader.3, label %.preheader.4, !llvm.loop !8

.preheader.4:                                     ; preds = %.preheader.3, %.preheader.4
  %.02830.4 = phi i32 [ %i.co, %.preheader.4 ], [ 0, %.preheader.3 ] ; 3 uses
  %i.bx = sext i32 %.02830.4 to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !45 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !40 ; 2 uses
  %i.cb = sext i32 %.02830.4 to i64
  %i.cc = getelementptr [8 x i8], ptr %0, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !45 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !40
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = xor i64 %i.cg, %i.ca
  %i.ci = and i64 %i.ch, 3689348814741910323      ; 2 uses
  %i.cj = xor i64 %i.ci, %i.ca
  store i64 %i.cj, ptr %i.bz, align 8, !tbaa !40
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !40
  %i.cl = shl nuw i64 %i.ci, 2
  %i.cm = xor i64 %i.cl, %i.ck
  store i64 %i.cm, ptr %i.ce, align 8, !tbaa !40
  %i.cn = add nsw i32 %.02830.4, 3
  %i.co = and i32 %i.cn, -3                       ; 2 uses
  %i.cp = icmp slt i32 %i.co, 64
  br i1 %i.cp, label %.preheader.4, label %.preheader.5, !llvm.loop !8

.preheader.5:                                     ; preds = %.preheader.4, %.preheader.5
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader.5 ], [ 0, %.preheader.4 ] ; 4 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !45 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !40 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !45 ; 3 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !40
  %i.cx = lshr i64 %i.cw, 1
  %i.cy = xor i64 %i.cx, %i.cs
  %i.cz = and i64 %i.cy, 6148914691236517205      ; 2 uses
  %i.da = xor i64 %i.cz, %i.cs
  store i64 %i.da, ptr %i.cr, align 8, !tbaa !40
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !40
  %i.dc = shl nuw i64 %i.cz, 1
  %i.dd = xor i64 %i.dc, %i.db
  store i64 %i.dd, ptr %i.cv, align 8, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.de = icmp samesign ult i64 %indvars.iv, 62
  br i1 %i.de, label %.preheader.5, label %bb.b, !llvm.loop !8

bb.b:                                             ; preds = %.preheader.5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Extra_BitMatrixTransposeP(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #28 {
bb.a:
  %i.a = alloca [64 x ptr], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.b = icmp sgt i32 %3, 0
  %i.c = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.preheader25.lr.ph.split, label %._crit_edge30.split

.preheader25.lr.ph.split:                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  %.val23 = load ptr, ptr %i.d, align 8, !tbaa !47 ; 3 uses
  %i.f = zext nneg i32 %1 to i64                  ; 2 uses
  %i.g = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count44 = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %4 = shl nuw nsw i64 %wide.trip.count, 3
  %5 = shl nuw nsw i64 %wide.trip.count, 9
  %6 = getelementptr i8, ptr %.val23, i64 %4
  %7 = getelementptr i8, ptr %6, i64 504
  %8 = getelementptr i8, ptr %.val, i64 %5
  %ident.check = icmp ne i32 %3, 1
  %ident.check49 = icmp ne i32 %1, 1
  %9 = or i1 %ident.check, %ident.check49
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split, %._crit_edge
  %indvars.iv41 = phi i64 [ 0, %.preheader25.lr.ph.split ], [ %indvars.iv.next42, %._crit_edge ] ; 5 uses
  %10 = shl nuw nsw i64 %indvars.iv41, 9          ; 2 uses
  %scevgep = getelementptr i8, ptr %7, i64 %10
  %scevgep52 = getelementptr i8, ptr %.val23, i64 %10
  %11 = shl nuw nsw i64 %indvars.iv41, 3
  %scevgep53 = getelementptr i8, ptr %8, i64 %11
  %i.h = shl nuw nsw i64 %indvars.iv41, 6
  %i.i = or disjoint i64 %i.h, 63                 ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.val, i64 %indvars.iv41 ; 7 uses
  %bound0 = icmp ult ptr %invariant.gep, %scevgep
  %bound1 = icmp ult ptr %scevgep52, %scevgep53
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader25, %Extra_Transpose64p.exit
  %indvars.iv37 = phi i64 [ 0, %.preheader25 ], [ %indvars.iv.next38, %Extra_Transpose64p.exit ] ; 3 uses
  %i.j = shl nuw nsw i64 %indvars.iv37, 6
  %i.k = or disjoint i64 %i.j, 63                 ; 6 uses
  %invariant.gep47 = getelementptr [8 x i8], ptr %.val23, i64 %indvars.iv37 ; 3 uses
  %brmerge = select i1 %9, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph, label %vector.body.preheader

vector.body.preheader:                            ; preds = %.preheader24
  %12 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 7 uses
  %13 = xor i64 %index, -1
  %14 = sub i64 %i.k, %index
  %reass.sub = sub i64 %i.k, %index
  %reass.sub55 = sub i64 %i.k, %index
  %15 = getelementptr [8 x i8], ptr %invariant.gep, i64 %14 ; 3 uses
  %16 = getelementptr [8 x i8], ptr %12, i64 %13
  %17 = insertelement <2 x ptr> poison, ptr %15, i64 0
  %18 = insertelement <2 x ptr> %17, ptr %16, i64 1
  %19 = getelementptr [8 x i8], ptr %invariant.gep, i64 %reass.sub
  %20 = getelementptr i8, ptr %19, i64 -16
  %21 = getelementptr [8 x i8], ptr %invariant.gep, i64 %reass.sub55
  %22 = getelementptr i8, ptr %21, i64 -24
  %23 = insertelement <2 x ptr> poison, ptr %20, i64 0
  %24 = insertelement <2 x ptr> %23, ptr %22, i64 1
  %25 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 16
  store <2 x ptr> %18, ptr %25, align 16, !tbaa !45
  store <2 x ptr> %24, ptr %26, align 16, !tbaa !45
  %27 = sub i64 %i.i, %index
  %28 = getelementptr [8 x i8], ptr %invariant.gep47, i64 %27 ; 2 uses
  %29 = getelementptr i8, ptr %28, i64 -8
  %30 = getelementptr i8, ptr %28, i64 -24
  %wide.load = load <2 x i64>, ptr %29, align 8, !tbaa !40, !alias.scope !202
  %wide.load54 = load <2 x i64>, ptr %30, align 8, !tbaa !40, !alias.scope !202
  %31 = getelementptr i8, ptr %15, i64 -8
  %32 = getelementptr i8, ptr %15, i64 -24
  store <2 x i64> %wide.load, ptr %31, align 8, !tbaa !40, !alias.scope !203, !noalias !202
  store <2 x i64> %wide.load54, ptr %32, align 8, !tbaa !40, !alias.scope !203, !noalias !202
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %33 = icmp eq i64 %index.next, 64
  br i1 %33, label %.preheader.preheader, label %vector.body, !llvm.loop !198

scalar.ph:                                        ; preds = %.preheader24, %scalar.ph
  %indvars.iv31 = phi i64 [ %indvars.iv.next32.1, %scalar.ph ], [ 0, %.preheader24 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %.preheader24 ] ; 4 uses
  %i.l = add nsw i64 %i.k, %indvars.iv
  %i.m = mul nsw i64 %i.l, %i.g
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.m ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv31
  store ptr %gep, ptr %i.n, align 16, !tbaa !45
  %i.o = add nsw i64 %i.i, %indvars.iv
  %i.p = mul nsw i64 %i.o, %i.f
  %gep48 = getelementptr [8 x i8], ptr %invariant.gep47, i64 %i.p
  %i.q = load i64, ptr %gep48, align 8, !tbaa !40
  store i64 %i.q, ptr %gep, align 8, !tbaa !40
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.r = add nsw i64 %i.k, %indvars.iv.next
  %i.s = mul nsw i64 %i.r, %i.g
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.s ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv31
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %gep.1, ptr %i.u, align 8, !tbaa !45
  %i.v = add nsw i64 %i.i, %indvars.iv.next
  %i.w = mul nsw i64 %i.v, %i.f
  %gep48.1 = getelementptr [8 x i8], ptr %invariant.gep47, i64 %i.w
  %i.x = load i64, ptr %gep48.1, align 8, !tbaa !40
  store i64 %i.x, ptr %gep.1, align 8, !tbaa !40
  %indvars.iv.next32.1 = add nuw nsw i64 %indvars.iv31, 2 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next32.1, 64
  br i1 %exitcond.not.1, label %.preheader.preheader, label %scalar.ph, !llvm.loop !199

.preheader.preheader:                             ; preds = %vector.body, %scalar.ph
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.02830.i = phi i32 [ %i.am, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.y = sext i32 %.02830.i to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !45  ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !40 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 256
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !40
  %i.af = lshr i64 %i.ae, 32
  %.masked.i = and i64 %i.ab, 4294967295
  %i.ag = xor i64 %i.af, %.masked.i               ; 2 uses
  %i.ah = xor i64 %i.ag, %i.ab
  store i64 %i.ah, ptr %i.aa, align 8, !tbaa !40
  %i.ai = load i64, ptr %i.ad, align 8, !tbaa !40
  %i.aj = shl nuw i64 %i.ag, 32
  %i.ak = xor i64 %i.aj, %i.ai
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !40
  %i.al = add nsw i32 %.02830.i, 33
  %i.am = and i32 %i.al, -33                      ; 2 uses
  %i.an = icmp slt i32 %i.am, 64
  br i1 %i.an, label %.preheader, label %.preheader.1.i, !llvm.loop !8

.preheader.1.i:                                   ; preds = %.preheader, %.preheader.1.i
  %.02830.1.i = phi i32 [ %i.bd, %.preheader.1.i ], [ 0, %.preheader ] ; 2 uses
  %i.ao = sext i32 %.02830.1.i to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !40 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ap, i64 128
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !45 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !40
  %i.av = lshr i64 %i.au, 16
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = and i64 %i.aw, 281470681808895          ; 2 uses
  %i.ay = xor i64 %i.ax, %i.ar
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !40
  %i.az = load i64, ptr %i.at, align 8, !tbaa !40
  %i.ba = shl nuw i64 %i.ax, 16
  %i.bb = xor i64 %i.ba, %i.az
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !40
  %i.bc = add nsw i32 %.02830.1.i, 17
  %i.bd = and i32 %i.bc, -17                      ; 2 uses
  %i.be = icmp slt i32 %i.bd, 64
  br i1 %i.be, label %.preheader.1.i, label %.preheader.2.i, !llvm.loop !8

.preheader.2.i:                                   ; preds = %.preheader.1.i, %.preheader.2.i
  %.02830.2.i = phi i32 [ %i.bu, %.preheader.2.i ], [ 0, %.preheader.1.i ] ; 2 uses
  %i.bf = sext i32 %.02830.2.i to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bf ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !45 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !40 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bg, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !45 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !40
  %i.bm = lshr i64 %i.bl, 8
  %i.bn = xor i64 %i.bm, %i.bi
  %i.bo = and i64 %i.bn, 71777214294589695        ; 2 uses
  %i.bp = xor i64 %i.bo, %i.bi
  store i64 %i.bp, ptr %i.bh, align 8, !tbaa !40
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !40
  %i.br = shl nuw i64 %i.bo, 8
  %i.bs = xor i64 %i.br, %i.bq
  store i64 %i.bs, ptr %i.bk, align 8, !tbaa !40
  %i.bt = add nsw i32 %.02830.2.i, 9
  %i.bu = and i32 %i.bt, -9                       ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 64
  br i1 %i.bv, label %.preheader.2.i, label %.preheader.3.i, !llvm.loop !8

.preheader.3.i:                                   ; preds = %.preheader.2.i, %.preheader.3.i
  %.02830.3.i = phi i32 [ %i.cl, %.preheader.3.i ], [ 0, %.preheader.2.i ] ; 2 uses
  %i.bw = sext i32 %.02830.3.i to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bw ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !45 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !40 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bx, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !45 ; 3 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !40
  %i.cd = lshr i64 %i.cc, 4
  %i.ce = xor i64 %i.cd, %i.bz
  %i.cf = and i64 %i.ce, 1085102592571150095      ; 2 uses
  %i.cg = xor i64 %i.cf, %i.bz
  store i64 %i.cg, ptr %i.by, align 8, !tbaa !40
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !40
  %i.ci = shl nuw i64 %i.cf, 4
  %i.cj = xor i64 %i.ci, %i.ch
  store i64 %i.cj, ptr %i.cb, align 8, !tbaa !40
  %i.ck = add nsw i32 %.02830.3.i, 5
  %i.cl = and i32 %i.ck, -5                       ; 2 uses
  %i.cm = icmp slt i32 %i.cl, 64
  br i1 %i.cm, label %.preheader.3.i, label %.preheader.4.i, !llvm.loop !8

.preheader.4.i:                                   ; preds = %.preheader.3.i, %.preheader.4.i
  %.02830.4.i = phi i32 [ %i.dc, %.preheader.4.i ], [ 0, %.preheader.3.i ] ; 2 uses
  %i.cn = sext i32 %.02830.4.i to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cn ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !45 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !40 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.co, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !45 ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !40
  %i.cu = lshr i64 %i.ct, 2
  %i.cv = xor i64 %i.cu, %i.cq
  %i.cw = and i64 %i.cv, 3689348814741910323      ; 2 uses
  %i.cx = xor i64 %i.cw, %i.cq
  store i64 %i.cx, ptr %i.cp, align 8, !tbaa !40
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !40
  %i.cz = shl nuw i64 %i.cw, 2
  %i.da = xor i64 %i.cz, %i.cy
  store i64 %i.da, ptr %i.cs, align 8, !tbaa !40
  %i.db = add nsw i32 %.02830.4.i, 3
  %i.dc = and i32 %i.db, -3                       ; 2 uses
  %i.dd = icmp slt i32 %i.dc, 64
  br i1 %i.dd, label %.preheader.4.i, label %.preheader.5.i, !llvm.loop !8

.preheader.5.i:                                   ; preds = %.preheader.4.i, %.preheader.5.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.5.i ], [ 0, %.preheader.4.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.df = load ptr, ptr %i.de, align 16, !tbaa !45 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !40 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !45 ; 3 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !40
  %i.dk = lshr i64 %i.dj, 1
  %i.dl = xor i64 %i.dk, %i.dg
  %i.dm = and i64 %i.dl, 6148914691236517205      ; 2 uses
  %i.dn = xor i64 %i.dm, %i.dg
  store i64 %i.dn, ptr %i.df, align 8, !tbaa !40
  %i.do = load i64, ptr %i.di, align 8, !tbaa !40
  %i.dp = shl nuw i64 %i.dm, 1
  %i.dq = xor i64 %i.dp, %i.do
  store i64 %i.dq, ptr %i.di, align 8, !tbaa !40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2
  %i.dr = icmp samesign ult i64 %indvars.iv.i, 62
  br i1 %i.dr, label %.preheader.5.i, label %Extra_Transpose64p.exit, !llvm.loop !8

Extra_Transpose64p.exit:                          ; preds = %.preheader.5.i
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count
  br i1 %exitcond40.not, label %._crit_edge, label %.preheader24, !llvm.loop !200

._crit_edge:                                      ; preds = %Extra_Transpose64p.exit
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge30.split, label %.preheader25, !llvm.loop !201

._crit_edge30.split:                              ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Extra_BitMatrixTransposePP(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #28 {
bb.a:
  %i.a = alloca [64 x ptr], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.b = icmp sgt i32 %3, 0
  %i.c = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.preheader23.lr.ph.split, label %._crit_edge28.split

.preheader23.lr.ph.split:                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !47
  %.val21 = load ptr, ptr %i.d, align 8, !tbaa !208
  %i.f = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count42 = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.preheader23

.preheader23:                                     ; preds = %.preheader23.lr.ph.split, %._crit_edge
  %indvars.iv39 = phi i64 [ 0, %.preheader23.lr.ph.split ], [ %indvars.iv.next40, %._crit_edge ] ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.val, i64 %indvars.iv39 ; 2 uses
  %.idx = shl i64 %indvars.iv39, 9
  %i.g = getelementptr i8, ptr %.val21, i64 %.idx
  %i.h = getelementptr i8, ptr %i.g, i64 504      ; 2 uses
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader23, %Extra_Transpose64p.exit
  %indvars.iv35 = phi i64 [ 0, %.preheader23 ], [ %indvars.iv.next36, %Extra_Transpose64p.exit ] ; 4 uses
  %i.i = shl nuw nsw i64 %indvars.iv35, 6
  %i.j = or disjoint i64 %i.i, 63                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader22
  %indvars.iv29 = phi i64 [ 0, %.preheader22 ], [ %indvars.iv.next30.1, %bb.b ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader22 ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %i.k = add nsw i64 %i.j, %indvars.iv
  %i.l = mul nsw i64 %i.k, %i.f
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.l ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv29
  store ptr %gep, ptr %i.m, align 16, !tbaa !45
  %i.n = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv35
  %i.q = load i64, ptr %i.p, align 8, !tbaa !40
  store i64 %i.q, ptr %gep, align 8, !tbaa !40
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.r = add nsw i64 %i.j, %indvars.iv.next
  %i.s = mul nsw i64 %i.r, %i.f
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.s ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %gep.1, ptr %i.u, align 8, !tbaa !45
  %i.v = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv35
  %i.y = load i64, ptr %i.x, align 8, !tbaa !40
  store i64 %i.y, ptr %gep.1, align 8, !tbaa !40
  %indvars.iv.next30.1 = add nuw nsw i64 %indvars.iv29, 2 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next30.1, 64
  br i1 %exitcond.not.1, label %.preheader, label %bb.b, !llvm.loop !204

.preheader:                                       ; preds = %bb.b, %.preheader
  %.02830.i = phi i32 [ %i.an, %.preheader ], [ 0, %bb.b ] ; 2 uses
  %i.z = sext i32 %.02830.i to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.aa, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !45 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !40
  %i.ag = lshr i64 %i.af, 32
  %.masked.i = and i64 %i.ac, 4294967295
  %i.ah = xor i64 %i.ag, %.masked.i               ; 2 uses
  %i.ai = xor i64 %i.ah, %i.ac
  store i64 %i.ai, ptr %i.ab, align 8, !tbaa !40
  %i.aj = load i64, ptr %i.ae, align 8, !tbaa !40
  %i.ak = shl nuw i64 %i.ah, 32
  %i.al = xor i64 %i.ak, %i.aj
  store i64 %i.al, ptr %i.ae, align 8, !tbaa !40
  %i.am = add nsw i32 %.02830.i, 33
  %i.an = and i32 %i.am, -33                      ; 2 uses
  %i.ao = icmp slt i32 %i.an, 64
  br i1 %i.ao, label %.preheader, label %.preheader.1.i, !llvm.loop !8

.preheader.1.i:                                   ; preds = %.preheader, %.preheader.1.i
  %.02830.1.i = phi i32 [ %i.be, %.preheader.1.i ], [ 0, %.preheader ] ; 2 uses
  %i.ap = sext i32 %.02830.1.i to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ap ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !45 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !40 ; 2 uses
  %i.at = getelementptr i8, ptr %i.aq, i64 128
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !45 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !40
  %i.aw = lshr i64 %i.av, 16
  %i.ax = xor i64 %i.aw, %i.as
  %i.ay = and i64 %i.ax, 281470681808895          ; 2 uses
  %i.az = xor i64 %i.ay, %i.as
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !40
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !40
  %i.bb = shl nuw i64 %i.ay, 16
  %i.bc = xor i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !40
  %i.bd = add nsw i32 %.02830.1.i, 17
  %i.be = and i32 %i.bd, -17                      ; 2 uses
  %i.bf = icmp slt i32 %i.be, 64
  br i1 %i.bf, label %.preheader.1.i, label %.preheader.2.i, !llvm.loop !8

.preheader.2.i:                                   ; preds = %.preheader.1.i, %.preheader.2.i
  %.02830.2.i = phi i32 [ %i.bv, %.preheader.2.i ], [ 0, %.preheader.1.i ] ; 2 uses
  %i.bg = sext i32 %.02830.2.i to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bg ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !45 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !40 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bh, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !45 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !40
  %i.bn = lshr i64 %i.bm, 8
  %i.bo = xor i64 %i.bn, %i.bj
  %i.bp = and i64 %i.bo, 71777214294589695        ; 2 uses
  %i.bq = xor i64 %i.bp, %i.bj
  store i64 %i.bq, ptr %i.bi, align 8, !tbaa !40
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !40
  %i.bs = shl nuw i64 %i.bp, 8
  %i.bt = xor i64 %i.bs, %i.br
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !40
  %i.bu = add nsw i32 %.02830.2.i, 9
  %i.bv = and i32 %i.bu, -9                       ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 64
  br i1 %i.bw, label %.preheader.2.i, label %.preheader.3.i, !llvm.loop !8

.preheader.3.i:                                   ; preds = %.preheader.2.i, %.preheader.3.i
  %.02830.3.i = phi i32 [ %i.cm, %.preheader.3.i ], [ 0, %.preheader.2.i ] ; 2 uses
  %i.bx = sext i32 %.02830.3.i to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bx ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !45 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !40 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.by, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !45 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !40
  %i.ce = lshr i64 %i.cd, 4
  %i.cf = xor i64 %i.ce, %i.ca
  %i.cg = and i64 %i.cf, 1085102592571150095      ; 2 uses
  %i.ch = xor i64 %i.cg, %i.ca
  store i64 %i.ch, ptr %i.bz, align 8, !tbaa !40
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !40
  %i.cj = shl nuw i64 %i.cg, 4
  %i.ck = xor i64 %i.cj, %i.ci
  store i64 %i.ck, ptr %i.cc, align 8, !tbaa !40
  %i.cl = add nsw i32 %.02830.3.i, 5
  %i.cm = and i32 %i.cl, -5                       ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 64
  br i1 %i.cn, label %.preheader.3.i, label %.preheader.4.i, !llvm.loop !8

.preheader.4.i:                                   ; preds = %.preheader.3.i, %.preheader.4.i
  %.02830.4.i = phi i32 [ %i.dd, %.preheader.4.i ], [ 0, %.preheader.3.i ] ; 2 uses
  %i.co = sext i32 %.02830.4.i to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.co ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !45 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !40 ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cp, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !45 ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !40
  %i.cv = lshr i64 %i.cu, 2
  %i.cw = xor i64 %i.cv, %i.cr
  %i.cx = and i64 %i.cw, 3689348814741910323      ; 2 uses
  %i.cy = xor i64 %i.cx, %i.cr
  store i64 %i.cy, ptr %i.cq, align 8, !tbaa !40
  %i.cz = load i64, ptr %i.ct, align 8, !tbaa !40
  %i.da = shl nuw i64 %i.cx, 2
  %i.db = xor i64 %i.da, %i.cz
  store i64 %i.db, ptr %i.ct, align 8, !tbaa !40
  %i.dc = add nsw i32 %.02830.4.i, 3
  %i.dd = and i32 %i.dc, -3                       ; 2 uses
  %i.de = icmp slt i32 %i.dd, 64
  br i1 %i.de, label %.preheader.4.i, label %.preheader.5.i, !llvm.loop !8

.preheader.5.i:                                   ; preds = %.preheader.4.i, %.preheader.5.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.5.i ], [ 0, %.preheader.4.i ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 16, !tbaa !45 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !40 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !45 ; 3 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !40
  %i.dl = lshr i64 %i.dk, 1
  %i.dm = xor i64 %i.dl, %i.dh
  %i.dn = and i64 %i.dm, 6148914691236517205      ; 2 uses
  %i.do = xor i64 %i.dn, %i.dh
  store i64 %i.do, ptr %i.dg, align 8, !tbaa !40
  %i.dp = load i64, ptr %i.dj, align 8, !tbaa !40
  %i.dq = shl nuw i64 %i.dn, 1
  %i.dr = xor i64 %i.dq, %i.dp
  store i64 %i.dr, ptr %i.dj, align 8, !tbaa !40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2
  %i.ds = icmp samesign ult i64 %indvars.iv.i, 62
  br i1 %i.ds, label %.preheader.5.i, label %Extra_Transpose64p.exit, !llvm.loop !8

Extra_Transpose64p.exit:                          ; preds = %.preheader.5.i
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count
  br i1 %exitcond38.not, label %._crit_edge, label %.preheader22, !llvm.loop !205

._crit_edge:                                      ; preds = %Extra_Transpose64p.exit
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count42
  br i1 %exitcond43.not, label %._crit_edge28.split, label %.preheader23, !llvm.loop !206

._crit_edge28.split:                              ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: nounwind uwtable
define void @Extra_BitMatrixShow(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val14 = load i32, ptr %i.a, align 4, !tbaa !48
  %i.b = sdiv i32 %.val14, %1                     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph18, label %._crit_edge19

.lr.ph18:                                         ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  %i.e = getelementptr i8, ptr %0, i64 8
  br i1 %i.d, label %.lr.ph18.split.us.preheader, label %.lr.ph18.split

.lr.ph18.split.us.preheader:                      ; preds = %.lr.ph18
  %i.f = zext nneg i32 %1 to i64                  ; 2 uses
  %wide.trip.count26 = zext nneg i32 %i.b to i64
  br label %.lr.ph18.split.us

.lr.ph18.split.us:                                ; preds = %.lr.ph18.split.us.preheader, %._crit_edge.us
  %indvars.iv23 = phi i64 [ 0, %.lr.ph18.split.us.preheader ], [ %indvars.iv.next24, %._crit_edge.us ] ; 3 uses
  %i.g = and i64 %indvars.iv23, 63
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %.lr.ph.us

bb.b:                                             ; preds = %.lr.ph18.split.us
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7)
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.b, %.lr.ph18.split.us
  %i.i = mul nuw nsw i64 %indvars.iv23, %i.f
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !38
  %.val.us = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val.us, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i
  tail call void @Extra_PrintBinary2(ptr noundef %i.j, ptr noundef %i.l, i32 noundef 64) #37
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond22.not, label %._crit_edge.us, label %bb.c, !llvm.loop !209

._crit_edge.us:                                   ; preds = %bb.c
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7)
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %._crit_edge19, label %.lr.ph18.split.us, !llvm.loop !210

.lr.ph18.split:                                   ; preds = %.lr.ph18, %bb.e
  %.01216 = phi i32 [ %i.o, %bb.e ], [ 0, %.lr.ph18 ] ; 2 uses
  %i.m = and i32 %.01216, 63
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph18.split
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph18.split
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7)
  %i.o = add nuw nsw i32 %.01216, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %i.b
  br i1 %exitcond.not, label %._crit_edge19, label %.lr.ph18.split, !llvm.loop !210

._crit_edge19:                                    ; preds = %bb.e, %._crit_edge.us, %bb.a
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #29 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !21
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #37 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #37
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #37 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #40
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #37 ; 0 uses
  call void @free(ptr noundef %i.d) #37
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !38, !noalias !214
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #37, !inline_history !213 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void
}

declare void @Extra_PrintBinary2(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define void @Extra_BitMatrixTransposeTest() local_unnamed_addr #18 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #37
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !42
  %.neg33 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !43
  %.neg = sdiv i64 %i.e, -1000
  %.neg34 = add i64 %.neg, %.neg33
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg34, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.f = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 1280000, ptr %i.f, align 8, !tbaa !218
  %calloc.i.i = call dereferenceable_or_null(10240000) ptr @calloc(i64 1, i64 10240000) ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %calloc.i.i, ptr %i.h, align 8, !tbaa !47
  store i32 1280000, ptr %i.g, align 4, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %Abc_Clock.exit
  %indvars.iv.i = phi i64 [ 0, %Abc_Clock.exit ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.i = call i64 @Abc_RandomW(i32 noundef 0) #37
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %calloc.i.i, i64 %indvars.iv.i
  store i64 %i.i, ptr %i.j, align 8, !tbaa !40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1280000
  br i1 %exitcond.not.i, label %Vec_WrdFill.exit.i, label %bb.c, !llvm.loop !215

Vec_WrdFill.exit.i:                               ; preds = %bb.c
  %i.k = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 1280000, ptr %i.k, align 8, !tbaa !218
  %calloc.i = call dereferenceable_or_null(10240000) ptr @calloc(i64 1, i64 10240000) ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %calloc.i, ptr %i.m, align 8, !tbaa !47
  store i32 1280000, ptr %i.l, align 4, !tbaa !48
  %calloc.i22 = call dereferenceable_or_null(10240000) ptr @calloc(i64 1, i64 10240000) ; 3 uses
  call void @Extra_BitMatrixTransposeP(ptr noundef nonnull %i.f, i32 noundef 100, ptr noundef nonnull %i.k, i32 noundef 200)
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %Vec_WrdFill.exit.i
  %indvars.iv21.i = phi i64 [ 0, %Vec_WrdFill.exit.i ], [ %indvars.iv.next22.i, %bb.g ] ; 4 uses
  %.idx.i = mul nuw nsw i64 %indvars.iv21.i, 800
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 %.idx.i
  %i.o = trunc nuw nsw i64 %indvars.iv21.i to i32
  %i.p = and i32 %i.o, 31
  %i.q = shl nuw i32 1, %i.p
  %i.r = lshr i64 %indvars.iv21.i, 5
  %i.s = and i64 %i.r, 134217727
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %calloc.i22, i64 %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.preheader.i
  %indvars.iv.i23 = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i24, %bb.f ] ; 4 uses
  %i.t = trunc nuw nsw i64 %indvars.iv.i23 to i32
  %i.u = lshr i64 %indvars.iv.i23, 5
  %i.v = and i64 %i.u, 134217727
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !21
  %i.y = and i32 %i.t, 31
  %i.z = shl nuw i32 1, %i.y
  %i.aa = and i32 %i.z, %i.x
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.idx25.i = mul nuw nsw i64 %indvars.iv.i23, 1600
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx25.i ; 2 uses
  %i.ab = load i32, ptr %gep, align 4, !tbaa !21
  %i.ac = or i32 %i.ab, %i.q
  store i32 %i.ac, ptr %gep, align 4, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %indvars.iv.next.i24, 6400
  br i1 %exitcond.not.i25, label %bb.g, label %bb.d, !llvm.loop !216

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next22.i, 12800
  br i1 %exitcond24.not.i, label %Extra_BitMatrixTransposeSimple.exit, label %.preheader.i, !llvm.loop !217

Extra_BitMatrixTransposeSimple.exit:              ; preds = %bb.g
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(10240000) %calloc.i, ptr noundef nonnull dereferenceable(10240000) %calloc.i22, i64 10240000)
  %.not = icmp eq i32 %bcmp, 0
  %str.5.str.6 = select i1 %.not, ptr @str.5, ptr @str.6
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %str.5.str.6) ; 0 uses
  call void @free(ptr noundef nonnull %calloc.i.i) #37
  call void @free(ptr noundef nonnull %i.f) #37
  call void @free(ptr noundef nonnull %calloc.i) #37
  call void @free(ptr noundef nonnull %i.k) #37
  call void @free(ptr noundef nonnull %calloc.i22) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #37
  %i.ad = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #37
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Abc_Clock.exit32, label %bb.h

bb.h:                                             ; preds = %Extra_BitMatrixTransposeSimple.exit
  %i.af = load i64, ptr %0, align 8, !tbaa !42
  %i.ag = mul nsw i64 %i.af, 1000000
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !43
  %i.aj = sdiv i64 %i.ai, 1000
  %i.ak = add nsw i64 %i.aj, %i.ag
  br label %Abc_Clock.exit32

Abc_Clock.exit32:                                 ; preds = %Extra_BitMatrixTransposeSimple.exit, %bb.h
  %.0.i31 = phi i64 [ %i.ak, %bb.h ], [ -1, %Extra_BitMatrixTransposeSimple.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #37
  %i.al = add i64 %.0.i31, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.19)
  %i.am = sitofp i64 %i.al to double
  %i.an = fdiv double %i.am, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.24, double noundef %i.an)
  ret void
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #30

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #20

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #31

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #32

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #31

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #19

declare i64 @Abc_RandomW(i32 noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #33

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #34

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn }
attributes #32 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree nounwind }
attributes #34 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { nounwind }
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { nounwind allocsize(0,1) }
attributes #40 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !18}
!1 = distinct !{!1, !18}
!2 = distinct !{!2, !18}
!3 = distinct !{!3, !18}
!4 = distinct !{!4, !18}
!5 = distinct !{!5, !18}
!6 = distinct !{!6, !18}
!7 = distinct !{!7, !18}
!8 = distinct !{!8, !18}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!14, !14, i64 0}
!22 = !{!13, !13, i64 0}
!23 = !{!"any pointer", !13, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"branch_weights", i32 8, i32 24}
!26 = !{!"p1 omnipotent char", !23, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"any p2 pointer", !23, i64 0}
!29 = !{!"p2 omnipotent char", !28, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"short", !13, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"p1 short", !23, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"p1 int", !23, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"p1 _ZTS8_IO_FILE", !23, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"long", !13, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"timespec", !39, i64 0, !39, i64 8}
!42 = !{!41, !39, i64 0}
!43 = !{!41, !39, i64 8}
!44 = !{!"p1 long", !23, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"Vec_Wrd_t_", !14, i64 0, !14, i64 4, !44, i64 8}
!47 = !{!46, !44, i64 8}
!48 = !{!46, !14, i64 4}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18, !19, !20}
!52 = distinct !{!52, !18, !20, !19}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !18}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !18, !19, !20}
!60 = distinct !{!60, !18, !20, !19}
!61 = distinct !{!61, !18, !19, !20}
!62 = distinct !{!62, !18, !20, !19}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !18, !19, !20}
!65 = distinct !{!65, !18, !19, !20}
!66 = distinct !{!66, !18, !20, !19}
!67 = distinct !{!67, !17}
!68 = distinct !{!68, !18}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !18}
!71 = distinct !{!71, !18, !19, !20}
!72 = distinct !{!72, !18}
!73 = distinct !{!73, !18}
!74 = distinct !{!74, !18, !19, !20}
!75 = distinct !{!75, !18}
!76 = distinct !{!76, !18, !19, !20}
!77 = distinct !{!77, !18, !20, !19}
!78 = distinct !{!78, !18, !19, !20}
!79 = distinct !{!79, !18, !20, !19}
!80 = distinct !{!80, !17}
!81 = distinct !{!81, !18, !19, !20}
!82 = distinct !{!82, !18, !19, !20}
!83 = distinct !{!83, !18, !20, !19}
!84 = distinct !{!84, !18, !19, !20}
!85 = distinct !{!85, !18, !20, !19}
!86 = distinct !{!86, !18, !19, !20}
!87 = distinct !{!87, !18, !20, !19}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !18, !19, !20}
!90 = distinct !{!90, !18, !19, !20}
!91 = distinct !{!91, !18, !20, !19}
!92 = distinct !{!92, !18}
!93 = distinct !{!93, !18, !19, !20}
!94 = distinct !{!94, !18, !20, !19}
!95 = distinct !{!95, !18, !19, !20}
!96 = distinct !{!96, !18, !20, !19}
!97 = distinct !{!97, !17}
!98 = distinct !{!98, !18, !19, !20}
!99 = distinct !{!99, !18, !19, !20}
!100 = distinct !{!100, !18, !20, !19}
!101 = distinct !{!101, !18, !19, !20}
!102 = distinct !{!102, !18, !20, !19}
!103 = distinct !{!103, !18, !19, !20}
!104 = distinct !{!104, !18, !20, !19}
!105 = distinct !{!105, !17}
!106 = distinct !{!106, !18, !19, !20}
!107 = distinct !{!107, !18, !19, !20}
!108 = distinct !{!108, !18, !20, !19}
!109 = distinct !{!109, !18, !19, !20}
!110 = distinct !{!110, !18, !20, !19}
!111 = distinct !{!111, !18}
!112 = distinct !{!112, !18}
!113 = distinct !{!113, !18, !19, !20}
!114 = distinct !{!114, !18, !20, !19}
!115 = distinct !{!115, !18, !19, !20}
!116 = distinct !{!116, !18, !20, !19}
!117 = distinct !{!117, !17}
!118 = distinct !{!118, !18, !19, !20}
!119 = distinct !{!119, !18, !19, !20}
!120 = distinct !{!120, !18, !20, !19}
!121 = distinct !{!121, !18, !19, !20}
!122 = distinct !{!122, !18, !20, !19}
!123 = distinct !{!123, !18, !19, !20}
!124 = distinct !{!124, !18, !20, !19}
!125 = distinct !{!125, !17}
!126 = distinct !{!126, !18, !19, !20}
!127 = distinct !{!127, !18, !19, !20}
!128 = distinct !{!128, !18, !20, !19}
!129 = distinct !{!129, !18, !19, !20}
!130 = distinct !{!130, !18, !20, !19}
!131 = distinct !{!131, !18}
!132 = distinct !{!132, !18, !19, !20}
!133 = distinct !{!133, !18, !20, !19}
!134 = distinct !{!134, !18}
!135 = distinct !{!135, !18}
!136 = distinct !{!136, !18}
!137 = distinct !{!137, !18}
!138 = distinct !{!138, !18}
!139 = distinct !{!139, !18}
!140 = distinct !{!140, !18, !19, !20}
!141 = distinct !{!141, !18}
!142 = distinct !{!142, !18}
!143 = distinct !{!143, !18}
!144 = distinct !{!144, !18}
!145 = distinct !{!145, !18, !19, !20}
!146 = distinct !{!146, !17}
!147 = distinct !{!147, !18, !19}
!148 = distinct !{!148, !18}
!149 = distinct !{!149, !18}
!150 = distinct !{!150, !18}
!151 = distinct !{!151, !18}
!152 = distinct !{!152, !18}
!153 = distinct !{!153, !18, !19, !20}
!154 = distinct !{!154, !18}
!155 = distinct !{!155, !18}
!156 = distinct !{!156, !18, !19, !20}
!157 = distinct !{!157, !18}
!158 = distinct !{!158, !18}
!159 = distinct !{!159, !18, !19, !20}
!160 = distinct !{!160, !18}
!161 = distinct !{!161, !18, !19, !20}
!162 = distinct !{!162, !18}
!163 = distinct !{!163, !18}
!164 = distinct !{!164, !18, !19, !20}
!165 = distinct !{!165, !18, !20, !19}
!166 = distinct !{!166, !18}
!167 = distinct !{!167, !18}
!168 = distinct !{!168, !18}
!169 = distinct !{!169, !18}
!170 = distinct !{!170, !18}
!171 = distinct !{!171, !18}
!172 = distinct !{!172, !18, !19, !20}
!173 = distinct !{!173, !17}
!174 = distinct !{!174, !18, !19}
!175 = distinct !{!175, !18}
!176 = distinct !{!176, !18, !19, !20}
!177 = distinct !{!177, !18, !20, !19}
!178 = distinct !{!178, !18, !19, !20}
!179 = distinct !{!179, !18, !19, !20}
!180 = distinct !{!180, !18, !20, !19}
!181 = distinct !{!181, !18, !19, !20}
!182 = distinct !{!182, !18, !20, !19}
!183 = distinct !{!183, !18}
!184 = distinct !{!184, !18, !20, !19}
!185 = distinct !{!185, !18}
!186 = distinct !{!186, !18}
!187 = distinct !{!187, !18}
!188 = distinct !{!188, !18}
!189 = distinct !{!189, !18}
!190 = distinct !{!190, !17}
!191 = distinct !{!191, !18}
!192 = distinct !{!192, !18}
!193 = distinct !{!193, !18}
!194 = distinct !{!194, !18}
!195 = distinct !{!195, i1 false, !"LVerDomain"}
!196 = distinct !{!196, !195}
!197 = distinct !{!197, !195}
!198 = distinct !{!198, !18, !19, !20}
!199 = distinct !{!199, !18, !19}
!200 = distinct !{!200, !18}
!201 = distinct !{!201, !18}
!202 = !{!196}
!203 = !{!197}
!204 = distinct !{!204, !18}
!205 = distinct !{!205, !18}
!206 = distinct !{!206, !18}
!207 = !{!"Vec_Ptr_t_", !14, i64 0, !14, i64 4, !28, i64 8}
!208 = !{!207, !28, i64 8}
!209 = distinct !{!209, !18}
!210 = distinct !{!210, !18}
!211 = distinct !{!211, i1 true, !"vprintf"}
!212 = distinct !{!212, !211, !"vprintf: argument 0"}
!213 = distinct !{null}
!214 = !{!212}
!215 = distinct !{!215, !18}
!216 = distinct !{!216, !18}
!217 = distinct !{!217, !18}
!218 = !{!46, !14, i64 0}
end_hunk_0
