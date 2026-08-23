Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilMisc?download=true
inline.NumInlined: 106
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 107
begin_hunk_0_@Extra_Transpose64:.preheader
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4
  %i.cx = icmp samesign ult i64 %indvars.iv.next, 62
  br i1 %i.cx, label %.preheader.5, label %bb.b, !llvm.loop !188

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !189  ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !173  ; 2 uses
  %i.e = sext i32 %.02830 to i64
  %i.f = getelementptr [8 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 256
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !189  ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !173
  %i.j = lshr i64 %i.i, 32
  %.masked = and i64 %i.d, 4294967295
  %i.k = xor i64 %i.j, %.masked                   ; 2 uses
  %i.l = xor i64 %i.k, %i.d
  store i64 %i.l, ptr %i.c, align 8, !tbaa !173
  %i.m = load i64, ptr %i.h, align 8, !tbaa !173
  %i.n = shl nuw i64 %i.k, 32
  %i.o = xor i64 %i.n, %i.m
  store i64 %i.o, ptr %i.h, align 8, !tbaa !173
  %i.p = add nsw i32 %.02830, 33
  %i.q = and i32 %i.p, -33                        ; 2 uses
  %i.r = icmp slt i32 %i.q, 64
  br i1 %i.r, label %bb.a, label %.preheader.1, !llvm.loop !191

.preheader.1:                                     ; preds = %bb.a, %.preheader.1
  %.02830.1 = phi i32 [ %i.aj, %.preheader.1 ], [ 0, %bb.a ] ; 3 uses
  %i.s = sext i32 %.02830.1 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !189  ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !173  ; 2 uses
  %i.w = sext i32 %.02830.1 to i64
  %i.x = getelementptr [8 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !189  ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !173
  %i.ab = lshr i64 %i.aa, 16
  %i.ac = xor i64 %i.ab, %i.v
  %i.ad = and i64 %i.ac, 281470681808895          ; 2 uses
  %i.ae = xor i64 %i.ad, %i.v
  store i64 %i.ae, ptr %i.u, align 8, !tbaa !173
  %i.af = load i64, ptr %i.z, align 8, !tbaa !173
  %i.ag = shl nuw i64 %i.ad, 16
  %i.ah = xor i64 %i.ag, %i.af
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !173
  %i.ai = add nsw i32 %.02830.1, 17
  %i.aj = and i32 %i.ai, -17                      ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 64
  br i1 %i.ak, label %.preheader.1, label %.preheader.2, !llvm.loop !191

.preheader.2:                                     ; preds = %.preheader.1, %.preheader.2
  %.02830.2 = phi i32 [ %i.bc, %.preheader.2 ], [ 0, %.preheader.1 ] ; 3 uses
  %i.al = sext i32 %.02830.2 to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !189 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !173 ; 2 uses
  %i.ap = sext i32 %.02830.2 to i64
  %i.aq = getelementptr [8 x i8], ptr %0, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !189 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !173
  %i.au = lshr i64 %i.at, 8
  %i.av = xor i64 %i.au, %i.ao
  %i.aw = and i64 %i.av, 71777214294589695        ; 2 uses
  %i.ax = xor i64 %i.aw, %i.ao
  store i64 %i.ax, ptr %i.an, align 8, !tbaa !173
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !173
  %i.az = shl nuw i64 %i.aw, 8
  %i.ba = xor i64 %i.az, %i.ay
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !173
  %i.bb = add nsw i32 %.02830.2, 9
  %i.bc = and i32 %i.bb, -9                       ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 64
  br i1 %i.bd, label %.preheader.2, label %.preheader.3, !llvm.loop !191

.preheader.3:                                     ; preds = %.preheader.2, %.preheader.3
  %.02830.3 = phi i32 [ %i.bv, %.preheader.3 ], [ 0, %.preheader.2 ] ; 3 uses
  %i.be = sext i32 %.02830.3 to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !189 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !173 ; 2 uses
  %i.bi = sext i32 %.02830.3 to i64
  %i.bj = getelementptr [8 x i8], ptr %0, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !189 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !173
  %i.bn = lshr i64 %i.bm, 4
  %i.bo = xor i64 %i.bn, %i.bh
  %i.bp = and i64 %i.bo, 1085102592571150095      ; 2 uses
  %i.bq = xor i64 %i.bp, %i.bh
  store i64 %i.bq, ptr %i.bg, align 8, !tbaa !173
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !173
  %i.bs = shl nuw i64 %i.bp, 4
  %i.bt = xor i64 %i.bs, %i.br
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !173
  %i.bu = add nsw i32 %.02830.3, 5
  %i.bv = and i32 %i.bu, -5                       ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 64
  br i1 %i.bw, label %.preheader.3, label %.preheader.4, !llvm.loop !191

.preheader.4:                                     ; preds = %.preheader.3, %.preheader.4
  %.02830.4 = phi i32 [ %i.co, %.preheader.4 ], [ 0, %.preheader.3 ] ; 3 uses
  %i.bx = sext i32 %.02830.4 to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !189 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !173 ; 2 uses
  %i.cb = sext i32 %.02830.4 to i64
  %i.cc = getelementptr [8 x i8], ptr %0, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !189 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !173
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = xor i64 %i.cg, %i.ca
  %i.ci = and i64 %i.ch, 3689348814741910323      ; 2 uses
  %i.cj = xor i64 %i.ci, %i.ca
  store i64 %i.cj, ptr %i.bz, align 8, !tbaa !173
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !173
  %i.cl = shl nuw i64 %i.ci, 2
  %i.cm = xor i64 %i.cl, %i.ck
  store i64 %i.cm, ptr %i.ce, align 8, !tbaa !173
  %i.cn = add nsw i32 %.02830.4, 3
  %i.co = and i32 %i.cn, -3                       ; 2 uses
  %i.cp = icmp slt i32 %i.co, 64
  br i1 %i.cp, label %.preheader.4, label %.preheader.5, !llvm.loop !191

.preheader.5:                                     ; preds = %.preheader.4, %.preheader.5
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader.5 ], [ 0, %.preheader.4 ] ; 4 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !189 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !173 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !189 ; 3 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !173
  %i.cx = lshr i64 %i.cw, 1
  %i.cy = xor i64 %i.cx, %i.cs
  %i.cz = and i64 %i.cy, 6148914691236517205      ; 2 uses
  %i.da = xor i64 %i.cz, %i.cs
  store i64 %i.da, ptr %i.cr, align 8, !tbaa !173
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !173
  %i.dc = shl nuw i64 %i.cz, 1
  %i.dd = xor i64 %i.dc, %i.db
  store i64 %i.dd, ptr %i.cv, align 8, !tbaa !173
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.de = icmp samesign ult i64 %indvars.iv, 62
  br i1 %i.de, label %.preheader.5, label %bb.b, !llvm.loop !191

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
  %.val = load ptr, ptr %i.e, align 8, !tbaa !192 ; 2 uses
  %.val23 = load ptr, ptr %i.d, align 8, !tbaa !192 ; 3 uses
  %i.f = zext nneg i32 %1 to i64                  ; 2 uses
  %i.g = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count44 = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %i.h = shl nuw nsw i64 %wide.trip.count, 9
  %i.i = shl nuw nsw i64 %wide.trip.count, 3
  %i.j = getelementptr i8, ptr %.val, i64 %i.h
  %i.k = getelementptr i8, ptr %.val23, i64 %i.i
  %i.l = getelementptr i8, ptr %i.k, i64 504
  %ident.check = icmp ne i32 %3, 1
  %ident.check49 = icmp ne i32 %1, 1
  %i.m = or i1 %ident.check, %ident.check49
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split, %._crit_edge
  %indvars.iv41 = phi i64 [ 0, %.preheader25.lr.ph.split ], [ %indvars.iv.next42, %._crit_edge ] ; 5 uses
  %i.n = shl nuw nsw i64 %indvars.iv41, 3
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.n
  %i.o = shl nuw nsw i64 %indvars.iv41, 9         ; 2 uses
  %scevgep50 = getelementptr i8, ptr %.val23, i64 %i.o
  %scevgep51 = getelementptr i8, ptr %i.l, i64 %i.o
  %i.p = shl nuw nsw i64 %indvars.iv41, 6         ; 2 uses
  %i.q = or disjoint i64 %i.p, 63                 ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.val, i64 %indvars.iv41 ; 7 uses
  %bound0 = icmp ult ptr %invariant.gep, %scevgep51
  %bound1 = icmp ult ptr %scevgep50, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %4 = or disjoint i64 %i.p, 62
  %5 = mul nuw nsw i64 %4, %i.f
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader25, %Extra_Transpose64p.exit
  %indvars.iv37 = phi i64 [ 0, %.preheader25 ], [ %indvars.iv.next38, %Extra_Transpose64p.exit ] ; 3 uses
  %i.r = shl nuw nsw i64 %indvars.iv37, 6         ; 2 uses
  %i.s = or disjoint i64 %i.r, 63                 ; 5 uses
  %invariant.gep47 = getelementptr [8 x i8], ptr %.val23, i64 %indvars.iv37 ; 3 uses
  %brmerge = select i1 %i.m, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body.preheader

scalar.ph.preheader:                              ; preds = %.preheader24
  %6 = or disjoint i64 %i.r, 62
  %7 = mul nuw nsw i64 %6, %i.g
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %7 ; 2 uses
  %gep48.1 = getelementptr [8 x i8], ptr %invariant.gep47, i64 %5
  br label %scalar.ph

vector.body.preheader:                            ; preds = %.preheader24
  %i.t = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 7 uses
  %i.u = xor i64 %index, -1
  %i.v = sub i64 %i.s, %index
  %reass.sub = sub i64 %i.s, %index
  %reass.sub53 = sub i64 %i.s, %index
  %i.w = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.v ; 3 uses
  %i.x = getelementptr [8 x i8], ptr %i.t, i64 %i.u
  %i.y = insertelement <2 x ptr> poison, ptr %i.w, i64 0
  %i.z = insertelement <2 x ptr> %i.y, ptr %i.x, i64 1
  %i.aa = getelementptr [8 x i8], ptr %invariant.gep, i64 %reass.sub
  %i.ab = getelementptr i8, ptr %i.aa, i64 -16
  %i.ac = getelementptr [8 x i8], ptr %invariant.gep, i64 %reass.sub53
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %i.af = insertelement <2 x ptr> %i.ae, ptr %i.ad, i64 1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x ptr> %i.z, ptr %i.ag, align 16, !tbaa !189
  store <2 x ptr> %i.af, ptr %i.ah, align 16, !tbaa !189
  %i.ai = sub i64 %i.q, %index
  %i.aj = getelementptr [8 x i8], ptr %invariant.gep47, i64 %i.ai ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ak, align 8, !tbaa !173, !alias.scope !194
  %wide.load52 = load <2 x i64>, ptr %i.al, align 8, !tbaa !173, !alias.scope !194
  %i.am = getelementptr i8, ptr %i.w, i64 -8
  %i.an = getelementptr i8, ptr %i.w, i64 -24
  store <2 x i64> %wide.load, ptr %i.am, align 8, !tbaa !173, !alias.scope !197, !noalias !194
  store <2 x i64> %wide.load52, ptr %i.an, align 8, !tbaa !173, !alias.scope !197, !noalias !194
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, 64
  br i1 %i.ao, label %.preheader.preheader, label %vector.body, !llvm.loop !199

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader
  %indvars.iv31 = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next32.1.a, %scalar.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %scalar.ph.preheader ], [ -2, %scalar.ph ] ; 2 uses
  %i.ap = add nsw i64 %i.s, %indvars.iv
  %i.aq = mul nsw i64 %i.ap, %i.g
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.aq ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv31
  store ptr %gep, ptr %i.ar, align 16, !tbaa !189
  %i.as = add nsw i64 %i.q, %indvars.iv
  %i.at = mul nsw i64 %i.as, %i.f
  %gep48 = getelementptr [8 x i8], ptr %invariant.gep47, i64 %i.at
  %i.au = load i64, ptr %gep48, align 8, !tbaa !173
  store i64 %i.au, ptr %gep, align 8, !tbaa !173
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %gep.1, ptr %i.aw, align 8, !tbaa !189
  %i.ax = load i64, ptr %gep48.1, align 8, !tbaa !173
  store i64 %i.ax, ptr %gep.1, align 8, !tbaa !173
  %indvars.iv.next32.1.a = add nuw nsw i64 %indvars.iv31, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next32.1.a, 64
  br i1 %exitcond.not.1, label %.preheader.preheader, label %scalar.ph, !llvm.loop !200

.preheader.preheader:                             ; preds = %vector.body, %scalar.ph
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.02830.i = phi i32 [ %i.bm, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ay = sext i32 %.02830.i to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !189 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !173 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.az, i64 256
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !189 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !173
  %i.bf = lshr i64 %i.be, 32
  %.masked.i = and i64 %i.bb, 4294967295
  %i.bg = xor i64 %i.bf, %.masked.i               ; 2 uses
  %i.bh = xor i64 %i.bg, %i.bb
  store i64 %i.bh, ptr %i.ba, align 8, !tbaa !173
  %i.bi = load i64, ptr %i.bd, align 8, !tbaa !173
  %i.bj = shl nuw i64 %i.bg, 32
  %i.bk = xor i64 %i.bj, %i.bi
  store i64 %i.bk, ptr %i.bd, align 8, !tbaa !173
  %i.bl = add nsw i32 %.02830.i, 33
  %i.bm = and i32 %i.bl, -33                      ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 64
  br i1 %i.bn, label %.preheader, label %.preheader.1.i, !llvm.loop !191

.preheader.1.i:                                   ; preds = %.preheader, %.preheader.1.i
  %.02830.1.i = phi i32 [ %i.cd, %.preheader.1.i ], [ 0, %.preheader ] ; 2 uses
  %i.bo = sext i32 %.02830.1.i to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bo ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !189 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !173 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bp, i64 128
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !189 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !173
  %i.bv = lshr i64 %i.bu, 16
  %i.bw = xor i64 %i.bv, %i.br
  %i.bx = and i64 %i.bw, 281470681808895          ; 2 uses
  %i.by = xor i64 %i.bx, %i.br
  store i64 %i.by, ptr %i.bq, align 8, !tbaa !173
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !173
  %i.ca = shl nuw i64 %i.bx, 16
  %i.cb = xor i64 %i.ca, %i.bz
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !173
  %i.cc = add nsw i32 %.02830.1.i, 17
  %i.cd = and i32 %i.cc, -17                      ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 64
  br i1 %i.ce, label %.preheader.1.i, label %.preheader.2.i, !llvm.loop !191

.preheader.2.i:                                   ; preds = %.preheader.1.i, %.preheader.2.i
  %.02830.2.i = phi i32 [ %i.cu, %.preheader.2.i ], [ 0, %.preheader.1.i ] ; 2 uses
  %i.cf = sext i32 %.02830.2.i to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cf ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !189 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !173 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cg, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !189 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !173
  %i.cm = lshr i64 %i.cl, 8
  %i.cn = xor i64 %i.cm, %i.ci
  %i.co = and i64 %i.cn, 71777214294589695        ; 2 uses
  %i.cp = xor i64 %i.co, %i.ci
  store i64 %i.cp, ptr %i.ch, align 8, !tbaa !173
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !173
  %i.cr = shl nuw i64 %i.co, 8
  %i.cs = xor i64 %i.cr, %i.cq
  store i64 %i.cs, ptr %i.ck, align 8, !tbaa !173
  %i.ct = add nsw i32 %.02830.2.i, 9
  %i.cu = and i32 %i.ct, -9                       ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 64
  br i1 %i.cv, label %.preheader.2.i, label %.preheader.3.i, !llvm.loop !191

.preheader.3.i:                                   ; preds = %.preheader.2.i, %.preheader.3.i
  %.02830.3.i = phi i32 [ %i.dl, %.preheader.3.i ], [ 0, %.preheader.2.i ] ; 2 uses
  %i.cw = sext i32 %.02830.3.i to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cw ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !189 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !173 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cx, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !189 ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !173
  %i.dd = lshr i64 %i.dc, 4
  %i.de = xor i64 %i.dd, %i.cz
  %i.df = and i64 %i.de, 1085102592571150095      ; 2 uses
  %i.dg = xor i64 %i.df, %i.cz
  store i64 %i.dg, ptr %i.cy, align 8, !tbaa !173
  %i.dh = load i64, ptr %i.db, align 8, !tbaa !173
  %i.di = shl nuw i64 %i.df, 4
  %i.dj = xor i64 %i.di, %i.dh
  store i64 %i.dj, ptr %i.db, align 8, !tbaa !173
  %i.dk = add nsw i32 %.02830.3.i, 5
  %i.dl = and i32 %i.dk, -5                       ; 2 uses
  %i.dm = icmp slt i32 %i.dl, 64
  br i1 %i.dm, label %.preheader.3.i, label %.preheader.4.i, !llvm.loop !191

.preheader.4.i:                                   ; preds = %.preheader.3.i, %.preheader.4.i
  %.02830.4.i = phi i32 [ %i.ec, %.preheader.4.i ], [ 0, %.preheader.3.i ] ; 2 uses
  %i.dn = sext i32 %.02830.4.i to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dn ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !189 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !173 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.do, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !189 ; 3 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !173
  %i.du = lshr i64 %i.dt, 2
  %i.dv = xor i64 %i.du, %i.dq
  %i.dw = and i64 %i.dv, 3689348814741910323      ; 2 uses
  %i.dx = xor i64 %i.dw, %i.dq
  store i64 %i.dx, ptr %i.dp, align 8, !tbaa !173
  %i.dy = load i64, ptr %i.ds, align 8, !tbaa !173
  %i.dz = shl nuw i64 %i.dw, 2
  %i.ea = xor i64 %i.dz, %i.dy
  store i64 %i.ea, ptr %i.ds, align 8, !tbaa !173
  %i.eb = add nsw i32 %.02830.4.i, 3
  %i.ec = and i32 %i.eb, -3                       ; 2 uses
  %i.ed = icmp slt i32 %i.ec, 64
  br i1 %i.ed, label %.preheader.4.i, label %.preheader.5.i, !llvm.loop !191

.preheader.5.i:                                   ; preds = %.preheader.4.i, %.preheader.5.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.5.i ], [ 0, %.preheader.4.i ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 16, !tbaa !189 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !173 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !189 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !173
  %i.ek = lshr i64 %i.ej, 1
  %i.el = xor i64 %i.ek, %i.eg
  %i.em = and i64 %i.el, 6148914691236517205      ; 2 uses
  %i.en = xor i64 %i.em, %i.eg
  store i64 %i.en, ptr %i.ef, align 8, !tbaa !173
  %i.eo = load i64, ptr %i.ei, align 8, !tbaa !173
  %i.ep = shl nuw i64 %i.em, 1
  %i.eq = xor i64 %i.ep, %i.eo
  store i64 %i.eq, ptr %i.ei, align 8, !tbaa !173
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2
  %i.er = icmp samesign ult i64 %indvars.iv.i, 62
  br i1 %i.er, label %.preheader.5.i, label %Extra_Transpose64p.exit, !llvm.loop !191

Extra_Transpose64p.exit:                          ; preds = %.preheader.5.i
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count
  br i1 %exitcond40.not, label %._crit_edge, label %.preheader24, !llvm.loop !201

._crit_edge:                                      ; preds = %Extra_Transpose64p.exit
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge30.split, label %.preheader25, !llvm.loop !202

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
  %.val = load ptr, ptr %i.e, align 8, !tbaa !192
  %.val21 = load ptr, ptr %i.d, align 8, !tbaa !203
  %i.f = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count42 = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.preheader23

.preheader23:                                     ; preds = %.preheader23.lr.ph.split, %._crit_edge
  %indvars.iv39 = phi i64 [ 0, %.preheader23.lr.ph.split ], [ %indvars.iv.next40, %._crit_edge ] ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.val, i64 %indvars.iv39 ; 2 uses
  %.idx = shl i64 %indvars.iv39, 9
  %4 = getelementptr i8, ptr %.val21, i64 %.idx   ; 2 uses
  %i.g = getelementptr i8, ptr %4, i64 504
  %i.h = getelementptr i8, ptr %4, i64 496
  %5 = load ptr, ptr %i.h, align 8, !tbaa !26
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader23, %Extra_Transpose64p.exit
  %indvars.iv35 = phi i64 [ 0, %.preheader23 ], [ %indvars.iv.next36, %Extra_Transpose64p.exit ] ; 4 uses
  %i.i = shl nuw nsw i64 %indvars.iv35, 6         ; 2 uses
  %6 = or disjoint i64 %i.i, 63
  %i.j = or disjoint i64 %i.i, 62
  %7 = mul nuw nsw i64 %i.j, %i.f
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %7 ; 2 uses
  %8 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv35
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader22
  %indvars.iv29 = phi i64 [ 0, %.preheader22 ], [ %indvars.iv.next30.1.a, %bb.b ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader22 ], [ -2, %bb.b ] ; 2 uses
  %i.k = add nsw i64 %6, %indvars.iv
  %i.l = mul nsw i64 %i.k, %i.f
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.l ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv29
  store ptr %gep, ptr %i.m, align 16, !tbaa !189
  %i.n = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv35
  %i.q = load i64, ptr %i.p, align 8, !tbaa !173
  store i64 %i.q, ptr %gep, align 8, !tbaa !173
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv29
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %gep.1, ptr %i.s, align 8, !tbaa !189
  %i.t = load i64, ptr %8, align 8, !tbaa !173
  store i64 %i.t, ptr %gep.1, align 8, !tbaa !173
  %indvars.iv.next30.1.a = add nuw nsw i64 %indvars.iv29, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next30.1.a, 64
  br i1 %exitcond.not.1, label %.preheader, label %bb.b, !llvm.loop !205

.preheader:                                       ; preds = %bb.b, %.preheader
  %.02830.i = phi i32 [ %i.ai, %.preheader ], [ 0, %bb.b ] ; 2 uses
  %i.u = sext i32 %.02830.i to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !189  ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !173  ; 2 uses
  %i.y = getelementptr i8, ptr %i.v, i64 256
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !189  ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !173
  %i.ab = lshr i64 %i.aa, 32
  %.masked.i = and i64 %i.x, 4294967295
  %i.ac = xor i64 %i.ab, %.masked.i               ; 2 uses
  %i.ad = xor i64 %i.ac, %i.x
  store i64 %i.ad, ptr %i.w, align 8, !tbaa !173
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !173
  %i.af = shl nuw i64 %i.ac, 32
  %i.ag = xor i64 %i.af, %i.ae
  store i64 %i.ag, ptr %i.z, align 8, !tbaa !173
  %i.ah = add nsw i32 %.02830.i, 33
  %i.ai = and i32 %i.ah, -33                      ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 64
  br i1 %i.aj, label %.preheader, label %.preheader.1.i, !llvm.loop !191

.preheader.1.i:                                   ; preds = %.preheader, %.preheader.1.i
  %.02830.1.i = phi i32 [ %i.az, %.preheader.1.i ], [ 0, %.preheader ] ; 2 uses
  %i.ak = sext i32 %.02830.1.i to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !189 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !173 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.al, i64 128
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !189 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !173
  %i.ar = lshr i64 %i.aq, 16
  %i.as = xor i64 %i.ar, %i.an
  %i.at = and i64 %i.as, 281470681808895          ; 2 uses
  %i.au = xor i64 %i.at, %i.an
  store i64 %i.au, ptr %i.am, align 8, !tbaa !173
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !173
  %i.aw = shl nuw i64 %i.at, 16
  %i.ax = xor i64 %i.aw, %i.av
  store i64 %i.ax, ptr %i.ap, align 8, !tbaa !173
  %i.ay = add nsw i32 %.02830.1.i, 17
  %i.az = and i32 %i.ay, -17                      ; 2 uses
  %i.ba = icmp slt i32 %i.az, 64
  br i1 %i.ba, label %.preheader.1.i, label %.preheader.2.i, !llvm.loop !191

.preheader.2.i:                                   ; preds = %.preheader.1.i, %.preheader.2.i
  %.02830.2.i = phi i32 [ %i.bq, %.preheader.2.i ], [ 0, %.preheader.1.i ] ; 2 uses
  %i.bb = sext i32 %.02830.2.i to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !189 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !173 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.bc, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !189 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !173
  %i.bi = lshr i64 %i.bh, 8
  %i.bj = xor i64 %i.bi, %i.be
  %i.bk = and i64 %i.bj, 71777214294589695        ; 2 uses
  %i.bl = xor i64 %i.bk, %i.be
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !173
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !173
  %i.bn = shl nuw i64 %i.bk, 8
  %i.bo = xor i64 %i.bn, %i.bm
  store i64 %i.bo, ptr %i.bg, align 8, !tbaa !173
  %i.bp = add nsw i32 %.02830.2.i, 9
  %i.bq = and i32 %i.bp, -9                       ; 2 uses
  %i.br = icmp slt i32 %i.bq, 64
  br i1 %i.br, label %.preheader.2.i, label %.preheader.3.i, !llvm.loop !191

.preheader.3.i:                                   ; preds = %.preheader.2.i, %.preheader.3.i
  %.02830.3.i = phi i32 [ %i.ch, %.preheader.3.i ], [ 0, %.preheader.2.i ] ; 2 uses
  %i.bs = sext i32 %.02830.3.i to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bs ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !189 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !173 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bt, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !189 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !173
  %i.bz = lshr i64 %i.by, 4
  %i.ca = xor i64 %i.bz, %i.bv
  %i.cb = and i64 %i.ca, 1085102592571150095      ; 2 uses
  %i.cc = xor i64 %i.cb, %i.bv
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !173
  %i.cd = load i64, ptr %i.bx, align 8, !tbaa !173
  %i.ce = shl nuw i64 %i.cb, 4
  %i.cf = xor i64 %i.ce, %i.cd
  store i64 %i.cf, ptr %i.bx, align 8, !tbaa !173
  %i.cg = add nsw i32 %.02830.3.i, 5
  %i.ch = and i32 %i.cg, -5                       ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 64
  br i1 %i.ci, label %.preheader.3.i, label %.preheader.4.i, !llvm.loop !191

.preheader.4.i:                                   ; preds = %.preheader.3.i, %.preheader.4.i
  %.02830.4.i = phi i32 [ %i.cy, %.preheader.4.i ], [ 0, %.preheader.3.i ] ; 2 uses
  %i.cj = sext i32 %.02830.4.i to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cj ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !189 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !173 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.ck, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !189 ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !173
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = xor i64 %i.cq, %i.cm
  %i.cs = and i64 %i.cr, 3689348814741910323      ; 2 uses
  %i.ct = xor i64 %i.cs, %i.cm
  store i64 %i.ct, ptr %i.cl, align 8, !tbaa !173
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !173
  %i.cv = shl nuw i64 %i.cs, 2
  %i.cw = xor i64 %i.cv, %i.cu
  store i64 %i.cw, ptr %i.co, align 8, !tbaa !173
  %i.cx = add nsw i32 %.02830.4.i, 3
  %i.cy = and i32 %i.cx, -3                       ; 2 uses
  %i.cz = icmp slt i32 %i.cy, 64
  br i1 %i.cz, label %.preheader.4.i, label %.preheader.5.i, !llvm.loop !191

.preheader.5.i:                                   ; preds = %.preheader.4.i, %.preheader.5.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.5.i ], [ 0, %.preheader.4.i ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.db = load ptr, ptr %i.da, align 16, !tbaa !189 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !173 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !189 ; 3 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !173
  %i.dg = lshr i64 %i.df, 1
  %i.dh = xor i64 %i.dg, %i.dc
  %i.di = and i64 %i.dh, 6148914691236517205      ; 2 uses
  %i.dj = xor i64 %i.di, %i.dc
  store i64 %i.dj, ptr %i.db, align 8, !tbaa !173
  %i.dk = load i64, ptr %i.de, align 8, !tbaa !173
  %i.dl = shl nuw i64 %i.di, 1
  %i.dm = xor i64 %i.dl, %i.dk
  store i64 %i.dm, ptr %i.de, align 8, !tbaa !173
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2
  %i.dn = icmp samesign ult i64 %indvars.iv.i, 62
  br i1 %i.dn, label %.preheader.5.i, label %Extra_Transpose64p.exit, !llvm.loop !191

Extra_Transpose64p.exit:                          ; preds = %.preheader.5.i
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count
  br i1 %exitcond38.not, label %._crit_edge, label %.preheader22, !llvm.loop !206

._crit_edge:                                      ; preds = %Extra_Transpose64p.exit
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count42
  br i1 %exitcond43.not, label %._crit_edge28.split, label %.preheader23, !llvm.loop !207

._crit_edge28.split:                              ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: nounwind uwtable
define void @Extra_BitMatrixShow(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val14 = load i32, ptr %i.a, align 4, !tbaa !208
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
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !156
  %.val.us = load ptr, ptr %i.e, align 8, !tbaa !192
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val.us, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i
  tail call void @Extra_PrintBinary2(ptr noundef %i.j, ptr noundef %i.l, i32 noundef 64) #37
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond22.not, label %._crit_edge.us, label %bb.c, !llvm.loop !209

._crit_edge.us:                                   ; preds = %bb.c
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7)
end_hunk_0
