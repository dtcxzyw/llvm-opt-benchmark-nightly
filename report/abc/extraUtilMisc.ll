inline.NumInlined: 106
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 109
begin_hunk_0_@Extra_Transpose64:.preheader
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !171 ; 2 uses
  %i.cg = lshr i64 %i.cf, 1
  %i.ch = xor i64 %i.cg, %i.cc
  %i.ci = and i64 %i.ch, 6148914691236517205      ; 2 uses
  %i.cj = xor i64 %i.ci, %i.cc
  store i64 %i.cj, ptr %i.cb, align 8, !tbaa !171
  %i.ck = shl nuw i64 %i.ci, 1
  %i.cl = xor i64 %i.ck, %i.cf
  store i64 %i.cl, ptr %i.ce, align 8, !tbaa !171
  %indvars.iv.next = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !171 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !171 ; 2 uses
  %i.cr = lshr i64 %i.cq, 1
  %i.cs = xor i64 %i.cr, %i.cn
  %i.ct = and i64 %i.cs, 6148914691236517205      ; 2 uses
  %i.cu = xor i64 %i.ct, %i.cn
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !171
  %i.cv = shl nuw i64 %i.ct, 1
  %i.cw = xor i64 %i.cv, %i.cq
  store i64 %i.cw, ptr %i.cp, align 8, !tbaa !171
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4
  %i.cx = icmp samesign ult i64 %indvars.iv.next, 62
  br i1 %i.cx, label %.preheader.5, label %bb.b, !llvm.loop !186

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %i.e = sext i32 %.02830 to i64
  %i.f = getelementptr [8 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 256
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !187  ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !171
  %i.j = lshr i64 %i.i, 32
  %.masked = and i64 %i.d, 4294967295
  %i.k = xor i64 %i.j, %.masked                   ; 2 uses
  %i.l = xor i64 %i.k, %i.d
  store i64 %i.l, ptr %i.c, align 8, !tbaa !171
  %i.m = load i64, ptr %i.h, align 8, !tbaa !171
  %i.n = shl nuw i64 %i.k, 32
  %i.o = xor i64 %i.n, %i.m
  store i64 %i.o, ptr %i.h, align 8, !tbaa !171
  %i.p = add nsw i32 %.02830, 33
  %i.q = and i32 %i.p, -33                        ; 2 uses
  %i.r = icmp slt i32 %i.q, 64
  br i1 %i.r, label %bb.a, label %.preheader.1, !llvm.loop !189

.preheader.1:                                     ; preds = %bb.a, %.preheader.1
  %.02830.1 = phi i32 [ %i.aj, %.preheader.1 ], [ 0, %bb.a ] ; 3 uses
  %i.s = sext i32 %.02830.1 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !187  ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !171  ; 2 uses
  %i.w = sext i32 %.02830.1 to i64
  %i.x = getelementptr [8 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !187  ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !171
  %i.ab = lshr i64 %i.aa, 16
  %i.ac = xor i64 %i.ab, %i.v
  %i.ad = and i64 %i.ac, 281470681808895          ; 2 uses
  %i.ae = xor i64 %i.ad, %i.v
  store i64 %i.ae, ptr %i.u, align 8, !tbaa !171
  %i.af = load i64, ptr %i.z, align 8, !tbaa !171
  %i.ag = shl nuw i64 %i.ad, 16
  %i.ah = xor i64 %i.ag, %i.af
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !171
  %i.ai = add nsw i32 %.02830.1, 17
  %i.aj = and i32 %i.ai, -17                      ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 64
  br i1 %i.ak, label %.preheader.1, label %.preheader.2, !llvm.loop !189

.preheader.2:                                     ; preds = %.preheader.1, %.preheader.2
  %.02830.2 = phi i32 [ %i.bc, %.preheader.2 ], [ 0, %.preheader.1 ] ; 3 uses
  %i.al = sext i32 %.02830.2 to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !187 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !171 ; 2 uses
  %i.ap = sext i32 %.02830.2 to i64
  %i.aq = getelementptr [8 x i8], ptr %0, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !187 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !171
  %i.au = lshr i64 %i.at, 8
  %i.av = xor i64 %i.au, %i.ao
  %i.aw = and i64 %i.av, 71777214294589695        ; 2 uses
  %i.ax = xor i64 %i.aw, %i.ao
  store i64 %i.ax, ptr %i.an, align 8, !tbaa !171
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !171
  %i.az = shl nuw i64 %i.aw, 8
  %i.ba = xor i64 %i.az, %i.ay
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !171
  %i.bb = add nsw i32 %.02830.2, 9
  %i.bc = and i32 %i.bb, -9                       ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 64
  br i1 %i.bd, label %.preheader.2, label %.preheader.3, !llvm.loop !189

.preheader.3:                                     ; preds = %.preheader.2, %.preheader.3
  %.02830.3 = phi i32 [ %i.bv, %.preheader.3 ], [ 0, %.preheader.2 ] ; 3 uses
  %i.be = sext i32 %.02830.3 to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !187 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !171 ; 2 uses
  %i.bi = sext i32 %.02830.3 to i64
  %i.bj = getelementptr [8 x i8], ptr %0, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !187 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !171
  %i.bn = lshr i64 %i.bm, 4
  %i.bo = xor i64 %i.bn, %i.bh
  %i.bp = and i64 %i.bo, 1085102592571150095      ; 2 uses
  %i.bq = xor i64 %i.bp, %i.bh
  store i64 %i.bq, ptr %i.bg, align 8, !tbaa !171
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !171
  %i.bs = shl nuw i64 %i.bp, 4
  %i.bt = xor i64 %i.bs, %i.br
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !171
  %i.bu = add nsw i32 %.02830.3, 5
  %i.bv = and i32 %i.bu, -5                       ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 64
  br i1 %i.bw, label %.preheader.3, label %.preheader.4, !llvm.loop !189

.preheader.4:                                     ; preds = %.preheader.3, %.preheader.4
  %.02830.4 = phi i32 [ %i.co, %.preheader.4 ], [ 0, %.preheader.3 ] ; 3 uses
  %i.bx = sext i32 %.02830.4 to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !187 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !171 ; 2 uses
  %i.cb = sext i32 %.02830.4 to i64
  %i.cc = getelementptr [8 x i8], ptr %0, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !187 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !171
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = xor i64 %i.cg, %i.ca
  %i.ci = and i64 %i.ch, 3689348814741910323      ; 2 uses
  %i.cj = xor i64 %i.ci, %i.ca
  store i64 %i.cj, ptr %i.bz, align 8, !tbaa !171
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !171
  %i.cl = shl nuw i64 %i.ci, 2
  %i.cm = xor i64 %i.cl, %i.ck
  store i64 %i.cm, ptr %i.ce, align 8, !tbaa !171
  %i.cn = add nsw i32 %.02830.4, 3
  %i.co = and i32 %i.cn, -3                       ; 2 uses
  %i.cp = icmp slt i32 %i.co, 64
  br i1 %i.cp, label %.preheader.4, label %.preheader.5, !llvm.loop !189

.preheader.5:                                     ; preds = %.preheader.4, %.preheader.5
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader.5 ], [ 0, %.preheader.4 ] ; 4 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !187 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !171 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !187 ; 3 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !171
  %i.cx = lshr i64 %i.cw, 1
  %i.cy = xor i64 %i.cx, %i.cs
  %i.cz = and i64 %i.cy, 6148914691236517205      ; 2 uses
  %i.da = xor i64 %i.cz, %i.cs
  store i64 %i.da, ptr %i.cr, align 8, !tbaa !171
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !171
  %i.dc = shl nuw i64 %i.cz, 1
  %i.dd = xor i64 %i.dc, %i.db
  store i64 %i.dd, ptr %i.cv, align 8, !tbaa !171
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.de = icmp samesign ult i64 %indvars.iv, 62
  br i1 %i.de, label %.preheader.5, label %bb.b, !llvm.loop !189

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
  %.val = load ptr, ptr %i.e, align 8, !tbaa !190 ; 2 uses
  %.val23 = load ptr, ptr %i.d, align 8, !tbaa !190 ; 3 uses
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
  %scevgep50.a = getelementptr i8, ptr %i.j, i64 %i.n
  %i.o = shl nuw nsw i64 %indvars.iv41, 9         ; 2 uses
  %scevgep51.a = getelementptr i8, ptr %.val23, i64 %i.o
  %scevgep52 = getelementptr i8, ptr %i.l, i64 %i.o
  %i.p = shl nuw nsw i64 %indvars.iv41, 6
  %i.q = or disjoint i64 %i.p, 63                 ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.val, i64 %indvars.iv41 ; 7 uses
  %bound0 = icmp ult ptr %invariant.gep, %scevgep52
  %bound1 = icmp ult ptr %scevgep51.a, %scevgep50.a
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader25, %Extra_Transpose64p.exit
  %indvars.iv37 = phi i64 [ 0, %.preheader25 ], [ %indvars.iv.next38, %Extra_Transpose64p.exit ] ; 3 uses
  %i.r = shl nuw nsw i64 %indvars.iv37, 6
  %i.s = or disjoint i64 %i.r, 63                 ; 6 uses
  %invariant.gep47 = getelementptr [8 x i8], ptr %.val23, i64 %indvars.iv37 ; 3 uses
  %brmerge = select i1 %i.m, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph, label %vector.body.preheader

vector.body.preheader:                            ; preds = %.preheader24
  %i.t = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 7 uses
  %i.u = xor i64 %index, -1
  %i.v = sub i64 %i.s, %index
  %reass.sub = sub i64 %i.s, %index
  %reass.sub54 = sub i64 %i.s, %index
  %i.w = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.v ; 3 uses
  %i.x = getelementptr [8 x i8], ptr %i.t, i64 %i.u
  %i.y = insertelement <2 x ptr> poison, ptr %i.w, i64 0
  %i.z = insertelement <2 x ptr> %i.y, ptr %i.x, i64 1
  %i.aa = getelementptr [8 x i8], ptr %invariant.gep, i64 %reass.sub
  %i.ab = getelementptr i8, ptr %i.aa, i64 -16
  %i.ac = getelementptr [8 x i8], ptr %invariant.gep, i64 %reass.sub54
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %i.af = insertelement <2 x ptr> %i.ae, ptr %i.ad, i64 1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x ptr> %i.z, ptr %i.ag, align 16, !tbaa !187
  store <2 x ptr> %i.af, ptr %i.ah, align 16, !tbaa !187
  %i.ai = sub i64 %i.q, %index
  %i.aj = getelementptr [8 x i8], ptr %invariant.gep47, i64 %i.ai ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ak, align 8, !tbaa !171, !alias.scope !192
  %wide.load53 = load <2 x i64>, ptr %i.al, align 8, !tbaa !171, !alias.scope !192
  %i.am = getelementptr i8, ptr %i.w, i64 -8
  %i.an = getelementptr i8, ptr %i.w, i64 -24
  store <2 x i64> %wide.load, ptr %i.am, align 8, !tbaa !171, !alias.scope !195, !noalias !192
  store <2 x i64> %wide.load53, ptr %i.an, align 8, !tbaa !171, !alias.scope !195, !noalias !192
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, 64
  br i1 %i.ao, label %.preheader.preheader, label %vector.body, !llvm.loop !197

scalar.ph:                                        ; preds = %.preheader24, %scalar.ph
  %indvars.iv31 = phi i64 [ %indvars.iv.next32.1, %scalar.ph ], [ 0, %.preheader24 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %.preheader24 ] ; 4 uses
  %i.ap = add nsw i64 %i.s, %indvars.iv
  %i.aq = mul nsw i64 %i.ap, %i.g
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.aq ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv31
  store ptr %gep, ptr %i.ar, align 16, !tbaa !187
  %i.as = add nsw i64 %i.q, %indvars.iv
  %i.at = mul nsw i64 %i.as, %i.f
  %gep48 = getelementptr [8 x i8], ptr %invariant.gep47, i64 %i.at
  %i.au = load i64, ptr %gep48, align 8, !tbaa !171
  store i64 %i.au, ptr %gep, align 8, !tbaa !171
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.av = add nsw i64 %i.s, %indvars.iv.next
  %i.aw = mul nsw i64 %i.av, %i.g
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.aw ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %gep.1, ptr %i.ay, align 8, !tbaa !187
  %i.az = add nsw i64 %i.q, %indvars.iv.next
  %i.ba = mul nsw i64 %i.az, %i.f
  %gep48.1 = getelementptr [8 x i8], ptr %invariant.gep47, i64 %i.ba
  %i.bb = load i64, ptr %gep48.1, align 8, !tbaa !171
  store i64 %i.bb, ptr %gep.1, align 8, !tbaa !171
  %indvars.iv.next32.1 = add nuw nsw i64 %indvars.iv31, 2 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next32.1, 64
  br i1 %exitcond.not.1, label %.preheader.preheader, label %scalar.ph, !llvm.loop !198

.preheader.preheader:                             ; preds = %vector.body, %scalar.ph
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.02830.i = phi i32 [ %i.bq, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.bc = sext i32 %.02830.i to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bc ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !187 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !171 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bd, i64 256
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !187 ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !171
  %i.bj = lshr i64 %i.bi, 32
  %.masked.i = and i64 %i.bf, 4294967295
  %i.bk = xor i64 %i.bj, %.masked.i               ; 2 uses
  %i.bl = xor i64 %i.bk, %i.bf
  store i64 %i.bl, ptr %i.be, align 8, !tbaa !171
  %i.bm = load i64, ptr %i.bh, align 8, !tbaa !171
  %i.bn = shl nuw i64 %i.bk, 32
  %i.bo = xor i64 %i.bn, %i.bm
  store i64 %i.bo, ptr %i.bh, align 8, !tbaa !171
  %i.bp = add nsw i32 %.02830.i, 33
  %i.bq = and i32 %i.bp, -33                      ; 2 uses
  %i.br = icmp slt i32 %i.bq, 64
  br i1 %i.br, label %.preheader, label %.preheader.1.i, !llvm.loop !189

.preheader.1.i:                                   ; preds = %.preheader, %.preheader.1.i
  %.02830.1.i = phi i32 [ %i.ch, %.preheader.1.i ], [ 0, %.preheader ] ; 2 uses
  %i.bs = sext i32 %.02830.1.i to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bs ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !187 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !171 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bt, i64 128
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !187 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !171
  %i.bz = lshr i64 %i.by, 16
  %i.ca = xor i64 %i.bz, %i.bv
  %i.cb = and i64 %i.ca, 281470681808895          ; 2 uses
  %i.cc = xor i64 %i.cb, %i.bv
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !171
  %i.cd = load i64, ptr %i.bx, align 8, !tbaa !171
  %i.ce = shl nuw i64 %i.cb, 16
  %i.cf = xor i64 %i.ce, %i.cd
  store i64 %i.cf, ptr %i.bx, align 8, !tbaa !171
  %i.cg = add nsw i32 %.02830.1.i, 17
  %i.ch = and i32 %i.cg, -17                      ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 64
  br i1 %i.ci, label %.preheader.1.i, label %.preheader.2.i, !llvm.loop !189

.preheader.2.i:                                   ; preds = %.preheader.1.i, %.preheader.2.i
  %.02830.2.i = phi i32 [ %i.cy, %.preheader.2.i ], [ 0, %.preheader.1.i ] ; 2 uses
  %i.cj = sext i32 %.02830.2.i to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cj ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !187 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !171 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.ck, i64 64
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !187 ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !171
  %i.cq = lshr i64 %i.cp, 8
  %i.cr = xor i64 %i.cq, %i.cm
  %i.cs = and i64 %i.cr, 71777214294589695        ; 2 uses
  %i.ct = xor i64 %i.cs, %i.cm
  store i64 %i.ct, ptr %i.cl, align 8, !tbaa !171
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !171
  %i.cv = shl nuw i64 %i.cs, 8
  %i.cw = xor i64 %i.cv, %i.cu
  store i64 %i.cw, ptr %i.co, align 8, !tbaa !171
  %i.cx = add nsw i32 %.02830.2.i, 9
  %i.cy = and i32 %i.cx, -9                       ; 2 uses
  %i.cz = icmp slt i32 %i.cy, 64
  br i1 %i.cz, label %.preheader.2.i, label %.preheader.3.i, !llvm.loop !189

.preheader.3.i:                                   ; preds = %.preheader.2.i, %.preheader.3.i
  %.02830.3.i = phi i32 [ %i.dp, %.preheader.3.i ], [ 0, %.preheader.2.i ] ; 2 uses
  %i.da = sext i32 %.02830.3.i to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !187 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !171 ; 2 uses
  %i.de = getelementptr i8, ptr %i.db, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !187 ; 3 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !171
  %i.dh = lshr i64 %i.dg, 4
  %i.di = xor i64 %i.dh, %i.dd
  %i.dj = and i64 %i.di, 1085102592571150095      ; 2 uses
  %i.dk = xor i64 %i.dj, %i.dd
  store i64 %i.dk, ptr %i.dc, align 8, !tbaa !171
  %i.dl = load i64, ptr %i.df, align 8, !tbaa !171
  %i.dm = shl nuw i64 %i.dj, 4
  %i.dn = xor i64 %i.dm, %i.dl
  store i64 %i.dn, ptr %i.df, align 8, !tbaa !171
  %i.do = add nsw i32 %.02830.3.i, 5
  %i.dp = and i32 %i.do, -5                       ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 64
  br i1 %i.dq, label %.preheader.3.i, label %.preheader.4.i, !llvm.loop !189

.preheader.4.i:                                   ; preds = %.preheader.3.i, %.preheader.4.i
  %.02830.4.i = phi i32 [ %i.eg, %.preheader.4.i ], [ 0, %.preheader.3.i ] ; 2 uses
  %i.dr = sext i32 %.02830.4.i to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dr ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !187 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !171 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.ds, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !187 ; 3 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !171
  %i.dy = lshr i64 %i.dx, 2
  %i.dz = xor i64 %i.dy, %i.du
  %i.ea = and i64 %i.dz, 3689348814741910323      ; 2 uses
  %i.eb = xor i64 %i.ea, %i.du
  store i64 %i.eb, ptr %i.dt, align 8, !tbaa !171
  %i.ec = load i64, ptr %i.dw, align 8, !tbaa !171
  %i.ed = shl nuw i64 %i.ea, 2
  %i.ee = xor i64 %i.ed, %i.ec
  store i64 %i.ee, ptr %i.dw, align 8, !tbaa !171
  %i.ef = add nsw i32 %.02830.4.i, 3
  %i.eg = and i32 %i.ef, -3                       ; 2 uses
  %i.eh = icmp slt i32 %i.eg, 64
  br i1 %i.eh, label %.preheader.4.i, label %.preheader.5.i, !llvm.loop !189

.preheader.5.i:                                   ; preds = %.preheader.4.i, %.preheader.5.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.5.i ], [ 0, %.preheader.4.i ] ; 3 uses
end_hunk_0
