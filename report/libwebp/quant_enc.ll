Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/quant_enc?download=true
inline.NumInlined: 86
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 26
begin_hunk_0_@ReconstructIntra16:bb.a
  %i.eq = load ptr, ptr @VP8TransformWHT, align 8, !tbaa !52
  call void %i.eq(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #11
  %i.er = load ptr, ptr @VP8ITransform, align 8, !tbaa !52
  call void %i.er(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef 1) #11
  %i.es = load ptr, ptr @VP8ITransform, align 8, !tbaa !52
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void %i.es(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.et, i32 noundef 1) #11
  %i.eu = load ptr, ptr @VP8ITransform, align 8, !tbaa !52
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void %i.eu(ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ev, i32 noundef 1) #11
  %i.ew = load ptr, ptr @VP8ITransform, align 8, !tbaa !52
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 136
  call void %i.ew(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ex, i32 noundef 1) #11
  %i.ey = load ptr, ptr @VP8ITransform, align 8, !tbaa !52
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 256
  call void %i.ey(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ez, i32 noundef 1) #11
  %i.fa = load ptr, ptr @VP8ITransform, align 8, !tbaa !52
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 264
  call void %i.fa(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.fb, i32 noundef 1) #11
  %i.fc = load ptr, ptr @VP8ITransform, align 8, !tbaa !52
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 384
  call void %i.fc(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.fd, i32 noundef 1) #11
  %i.fe = load ptr, ptr @VP8ITransform, align 8, !tbaa !52
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 392
  call void %i.fe(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef nonnull %i.ff, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.366
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
  %i.c = load i16, ptr %i.b, align 2, !tbaa !30
  %i.d = icmp ne i16 %i.c, 0
  %i.e = zext i1 %i.d to i32
  %i.f = add nuw nsw i32 %.01127, %i.e            ; 2 uses
  %i.g = icmp sgt i32 %i.f, %2
  br i1 %i.g, label %.thread, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %.01626, i64 4
  %i.i = load i16, ptr %i.h, align 2, !tbaa !30
  %i.j = icmp ne i16 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %i.l = add nuw nsw i32 %i.f, %i.k               ; 2 uses
  %i.m = icmp sgt i32 %i.l, %2
  br i1 %i.m, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.01626, i64 6
  %i.o = load i16, ptr %i.n, align 2, !tbaa !30
  %i.p = icmp ne i16 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = add nuw nsw i32 %i.l, %i.q               ; 2 uses
  %i.s = icmp sgt i32 %i.r, %2
  br i1 %i.s, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.01626, i64 8
  %i.u = load i16, ptr %i.t, align 2, !tbaa !30
  %i.v = icmp ne i16 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = add nuw nsw i32 %i.r, %i.w               ; 2 uses
  %i.y = icmp sgt i32 %i.x, %2
  br i1 %i.y, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.01626, i64 10
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !30
  %i.ab = icmp ne i16 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = add nuw nsw i32 %i.x, %i.ac             ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, %2
  br i1 %i.ae, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.01626, i64 12
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !30
  %i.ah = icmp ne i16 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = add nuw nsw i32 %i.ad, %i.ai            ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, %2
  br i1 %i.ak, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.01626, i64 14
  %i.am = load i16, ptr %i.al, align 2, !tbaa !30
  %i.an = icmp ne i16 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %i.ap = add nuw nsw i32 %i.aj, %i.ao            ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, %2
  br i1 %i.aq, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.01626, i64 16
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !30
  %i.at = icmp ne i16 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = add nuw nsw i32 %i.ap, %i.au            ; 2 uses
  %i.aw = icmp sgt i32 %i.av, %2
  br i1 %i.aw, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.01626, i64 18
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !30
  %i.az = icmp ne i16 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = add nuw nsw i32 %i.av, %i.ba            ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, %2
  br i1 %i.bc, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.01626, i64 20
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !30
  %i.bf = icmp ne i16 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = add nuw nsw i32 %i.bb, %i.bg            ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, %2
  br i1 %i.bi, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %.01626, i64 22
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !30
  %i.bl = icmp ne i16 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.bh, %i.bm            ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, %2
  br i1 %i.bo, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %.01626, i64 24
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !30
  %i.br = icmp ne i16 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = add nuw nsw i32 %i.bn, %i.bs            ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, %2
  br i1 %i.bu, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %.01626, i64 26
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !30
  %i.bx = icmp ne i16 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %i.bz = add nuw nsw i32 %i.bt, %i.by            ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, %2
  br i1 %i.ca, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %.01626, i64 28
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !30
  %i.cd = icmp ne i16 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = add nuw nsw i32 %i.bz, %i.ce            ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, %2
  br i1 %i.cg, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %.01626, i64 30
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !30
  %i.cj = icmp ne i16 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = add nuw nsw i32 %i.cf, %i.ck            ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, %2
  br i1 %i.cm, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %.01626, i64 32
  %i.co = icmp samesign ugt i32 %.in, 1
  br i1 %i.co, label %.preheader, label %.thread, !llvm.loop !224

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
  %i.b = zext nneg i32 %4 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw [264 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21960
  %i.e = getelementptr inbounds nuw [384 x i8], ptr %i.d, i64 %i.b ; 2 uses
  %i.f = icmp eq i32 %4, 0                        ; 4 uses
  %i.g = zext i1 %i.f to i32                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !30
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = mul nuw nsw i32 %i.k, %i.k
  %i.m = lshr i32 %i.l, 2
  %i.n = zext i1 %i.f to i64                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr @VP8EncBands, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !32
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [33 x i8], ptr %i.c, i64 %i.q
  %i.s = sext i32 %3 to i64                       ; 2 uses
  %i.t = getelementptr inbounds [11 x i8], ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !32    ; 2 uses
  %not. = xor i1 %i.f, true
  %i.v = sext i1 %not. to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.0187216 = phi i32 [ 15, %bb.a ], [ %10, %bb.c ] ; 4 uses
  %9 = zext nneg i32 %.0187216 to i64
  %i.w = getelementptr inbounds nuw i8, ptr @kZigzag, i64 %9
  %i.x = load i8, ptr %i.w, align 1, !tbaa !32
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !30
  %i.ab = sext i16 %i.aa to i32                   ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %i.ab
  %i.ad = icmp samesign ugt i32 %i.ac, %i.m
  br i1 %i.ad, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %10 = add nsw i32 %.0187216, -1
  %.not.not = icmp samesign ugt i32 %.0187216, %i.g
  br i1 %.not.not, label %bb.b, label %bb.d, !llvm.loop !225

bb.d:                                             ; preds = %bb.b, %bb.c
  %.2 = phi i32 [ %.0187216, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %i.ae = icmp slt i32 %.2, 15
  %i.af = zext i1 %i.ae to i32
  %spec.select = add i32 %.2, %i.af               ; 2 uses
  %.pn.i = zext i8 %i.u to i64
  %.in.in.i = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i
  %.in.i = load i16, ptr %.in.in.i, align 2, !tbaa !30
  %i.ag = zext i16 %.in.i to i64
  %i.ah = sext i32 %6 to i64                      ; 8 uses
  %i.ai = mul nsw i64 %i.ag, %i.ah
  %i.aj = icmp eq i32 %3, 0
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.n
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.s
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !228 ; 2 uses
  br i1 %i.aj, label %.split.us, label %.preheader

.split.us:                                        ; preds = %bb.d
  %.pn.in.i = xor i8 %i.u, -1
  %.pn.i209 = zext i8 %.pn.in.i to i64
  %.in.in.i210 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i209
  %.in.i211.us = load i16, ptr %.in.in.i210, align 2, !tbaa !30
  %i.an = zext i16 %.in.i211.us to i64
  %i.ao = mul nsw i64 %i.an, %i.ah
  br label %.preheader

.preheader:                                       ; preds = %bb.d, %.split.us
  %.sink263 = phi i64 [ %i.ao, %.split.us ], [ 0, %bb.d ] ; 3 uses
  store i64 %.sink263, ptr %8, align 16, !tbaa !230
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !231
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %.sink263, ptr %i.aq, align 16, !tbaa !230
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.am, ptr %i.ar, align 8, !tbaa !231
  %.not202225 = icmp slt i32 %spec.select, %i.g
  br i1 %.not202225, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.au = add nuw i32 %spec.select, 1
  %wide.trip.count = zext i32 %i.au to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.w
  %i.av = phi i64 [ %.sink263, %.lr.ph ], [ %i.eg, %bb.w ]
  %indvars.iv.a = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next.a, %bb.w ] ; 6 uses
  %.0190231 = phi i64 [ %i.ai, %.lr.ph ], [ %.4.1, %bb.w ] ; 5 uses
  %.sroa.0.0230 = phi i32 [ -1, %.lr.ph ], [ %.sroa.0.4.1, %bb.w ] ; 3 uses
  %.sroa.6.0229 = phi i32 [ -1, %.lr.ph ], [ %.sroa.6.4.1, %bb.w ] ; 3 uses
  %.sroa.8.0228 = phi i32 [ -1, %.lr.ph ], [ %.sroa.8.4.1, %bb.w ] ; 3 uses
  %.0194227 = phi ptr [ %i.h, %.lr.ph ], [ %.0195226, %bb.w ] ; 7 uses
  %.0195226 = phi ptr [ %8, %.lr.ph ], [ %.0194227, %bb.w ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr @kZigzag, i64 %indvars.iv.a
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !32
  %i.ay = zext i8 %i.ax to i64                    ; 5 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !30 ; 3 uses
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.ay
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !30
  %i.be = zext i16 %i.bd to i32
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ay
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !30 ; 2 uses
  %i.bh = tail call i16 @llvm.abs.i16(i16 %i.bg, i1 false)
  %i.bi = zext i16 %i.bh to i32
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ay
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !30
  %i.bl = zext i16 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bi, %i.bl            ; 2 uses
  %i.bn = mul i32 %i.bm, %i.be                    ; 2 uses
  %i.bo = lshr i32 %i.bn, 17                      ; 5 uses
  %i.bp = add i32 %i.bn, 65536
  %i.bq = lshr i32 %i.bp, 17                      ; 2 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 2047)
  %spec.store.select1 = tail call i32 @llvm.umin.i32(i32 %i.bo, i32 2047) ; 6 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.a ; 6 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr @VP8EncBands, i64 %indvars.iv.next.a
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !32
  %i.bu = icmp samesign ult i64 %indvars.iv.a, 15 ; 4 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %indvars.iv.next.a ; 2 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr @kWeightTrellis, i64 %i.ay ; 2 uses
  %i.bx = shl nuw nsw i32 %i.bm, 1                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0195226, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0195226, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0195226, i64 24 ; 2 uses
  %.lobit = lshr i16 %i.bg, 15
  %i.cb = trunc nuw nsw i16 %.lobit to i8         ; 2 uses
  %i.cc = zext i8 %i.bt to i64
  %i.cd = getelementptr inbounds nuw [33 x i8], ptr %i.c, i64 %i.cc ; 2 uses
  %i.ce = zext nneg i32 %spec.store.select1 to i64 ; 2 uses
  %i.cf = zext i16 %i.ba to i64
  %i.cg = tail call i32 @llvm.umin.i32(i32 %i.bo, i32 2) ; 2 uses
  br i1 %i.bu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !228
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi ptr [ %i.cj, %bb.f ], [ null, %bb.e ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0194227, i64 8
  store ptr %.sink, ptr %i.ck, align 8, !tbaa !231
  %i.cl = icmp samesign ult i32 %i.bq, %spec.store.select1
  br i1 %i.cl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 36028797018963967, ptr %.0194227, align 8, !tbaa !230
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.cm = mul nuw nsw i32 %spec.store.select1, %i.bb
  %i.cn = load i16, ptr %i.bw, align 2, !tbaa !30
  %i.co = zext i16 %i.cn to i32
  %add.neg = sub nsw i32 %i.cm, %i.bx
  %i.cp = zext i16 %i.ba to i32
  %i.cq = mul nuw nsw i32 %spec.store.select1, %i.cp
  %.neg205 = mul i32 %add.neg, %i.cq
  %i.cr = mul nsw i32 %.neg205, %i.co
  %i.cs = sext i32 %i.cr to i64
  %i.ct = shl nsw i64 %i.cs, 8
  %i.cu = load ptr, ptr %i.by, align 8, !tbaa !231
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr @VP8LevelFixedCosts, i64 %i.ce
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !30
  %i.cx = zext i16 %i.cw to i32                   ; 2 uses
  %i.cy = tail call i32 @llvm.umin.i32(i32 %i.bo, i32 67)
  %i.cz = zext nneg i32 %i.cy to i64              ; 2 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !30
  %i.dc = zext i16 %i.db to i32
  %i.dd = add nuw nsw i32 %i.dc, %i.cx
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = mul nsw i64 %i.de, %i.ah
  %i.dg = add nsw i64 %i.df, %i.av                ; 2 uses
  %i.dh = load ptr, ptr %i.ca, align 8, !tbaa !231
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.cz
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !30
  %i.dk = zext i16 %i.dj to i32
  %i.dl = add nuw nsw i32 %i.dk, %i.cx
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = load i64, ptr %i.bz, align 8, !tbaa !230
  %i.do = mul nsw i64 %i.dm, %i.ah
  %i.dp = add nsw i64 %i.do, %i.dn                ; 2 uses
  %i.dq = icmp slt i64 %i.dp, %i.dg               ; 2 uses
  %spec.select207 = tail call i64 @llvm.smin.i64(i64 %i.dp, i64 %i.dg)
  %spec.select208 = zext i1 %i.dq to i32
  %i.dr = add nsw i64 %spec.select207, %i.ct      ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.cb, ptr %i.ds, align 1, !tbaa !233
  %i.dt = trunc nuw nsw i32 %spec.store.select1 to i16
  %i.du = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !234
  %i.dv = zext i1 %i.dq to i8
  store i8 %i.dv, ptr %i.br, align 8, !tbaa !235
  store i64 %i.dr, ptr %.0194227, align 8, !tbaa !230
  %.not206 = icmp ne i32 %i.bo, 0
  %i.dw = icmp slt i64 %i.dr, %.0190231
  %or.cond = select i1 %.not206, i1 %i.dw, i1 false
  br i1 %or.cond, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dx = zext nneg i32 %i.cg to i64
  %i.dy = getelementptr inbounds nuw [11 x i8], ptr %i.cd, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !32
  %.pn.i213 = zext i8 %i.dz to i64
  %.in.in.i214 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i213
  %.in.i215 = load i16, ptr %.in.in.i214, align 2, !tbaa !30
  %i.ea = zext i16 %.in.i215 to i64
  %i.eb = mul nsw i64 %i.ea, %i.ah
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ec = phi i64 [ %i.eb, %bb.k ], [ 0, %bb.j ]
  %i.ed = add nsw i64 %i.ec, %i.dr                ; 2 uses
  %i.ee = icmp slt i64 %i.ed, %.0190231
  br i1 %i.ee, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ef = trunc nuw nsw i64 %indvars.iv.a to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.m, %bb.l, %bb.h
  %i.eg = phi i64 [ 36028797018963967, %bb.h ], [ %i.dr, %bb.i ], [ %i.dr, %bb.m ], [ %i.dr, %bb.l ]
  %.sroa.8.4 = phi i32 [ %.sroa.8.0228, %bb.h ], [ %.sroa.8.0228, %bb.i ], [ %spec.select208, %bb.m ], [ %.sroa.8.0228, %bb.l ] ; 3 uses
  %.sroa.6.4 = phi i32 [ %.sroa.6.0229, %bb.h ], [ %.sroa.6.0229, %bb.i ], [ 0, %bb.m ], [ %.sroa.6.0229, %bb.l ] ; 3 uses
  %.sroa.0.4 = phi i32 [ %.sroa.0.0230, %bb.h ], [ %.sroa.0.0230, %bb.i ], [ %i.ef, %bb.m ], [ %.sroa.0.0230, %bb.l ] ; 3 uses
  %.4 = phi i64 [ %.0190231, %bb.h ], [ %.0190231, %bb.i ], [ %i.ed, %bb.m ], [ %.0190231, %bb.l ] ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.ei = add nuw nsw i64 %i.ce, 1                ; 4 uses
  %i.ej = add nuw nsw i32 %spec.store.select1, 1
  %i.ek = trunc nuw nsw i64 %i.ei to i32          ; 2 uses
  %i.el = tail call i32 @llvm.umin.i32(i32 %i.ek, i32 2) ; 2 uses
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !228
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sink264 = phi ptr [ %i.eo, %bb.o ], [ null, %bb.n ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.0194227, i64 24
  store ptr %.sink264, ptr %i.ep, align 8, !tbaa !231
  %.not = icmp samesign ult i32 %i.bo, %spec.store.select
  br i1 %.not, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.eq = mul nuw nsw i64 %i.ei, %i.cf
  %i.er = mul nuw nsw i32 %i.ej, %i.bb
  %i.es = load i16, ptr %i.bw, align 2, !tbaa !30
  %i.et = zext i16 %i.es to i32
  %add.neg.1 = sub nsw i32 %i.er, %i.bx
  %i.eu = trunc nuw nsw i64 %i.eq to i32
  %.neg205.1 = mul i32 %add.neg.1, %i.eu
  %i.ev = mul nsw i32 %.neg205.1, %i.et
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i64 %i.ew, 8
  %i.ey = load ptr, ptr %i.by, align 8, !tbaa !231
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr @VP8LevelFixedCosts, i64 %i.ei
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !30
  %i.fb = zext i16 %i.fa to i32                   ; 2 uses
  %i.fc = tail call i32 @llvm.umin.i32(i32 range(i32 0, 32768) %i.ek, i32 67)
  %i.fd = zext nneg i32 %i.fc to i64              ; 2 uses
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %i.fd
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !30
  %i.fg = zext i16 %i.ff to i32
  %i.fh = add nuw nsw i32 %i.fg, %i.fb
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = load i64, ptr %.0195226, align 8, !tbaa !230
  %i.fk = mul nsw i64 %i.fi, %i.ah
  %i.fl = add nsw i64 %i.fk, %i.fj                ; 2 uses
  %i.fm = load ptr, ptr %i.ca, align 8, !tbaa !231
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %i.fd
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !30
  %i.fp = zext i16 %i.fo to i32
  %i.fq = add nuw nsw i32 %i.fp, %i.fb
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = load i64, ptr %i.bz, align 8, !tbaa !230
  %i.ft = mul nsw i64 %i.fr, %i.ah
  %i.fu = add nsw i64 %i.ft, %i.fs                ; 2 uses
end_hunk_0
