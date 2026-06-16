inline.NumInlined: 86
inline.NumDeleted: 32
begin_hunk_0_@ReconstructIntra16:bb.a
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
  %i.j = load i16, ptr %i.i, align 2, !tbaa !47
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = mul nuw nsw i32 %i.k, %i.k
  %i.m = lshr i32 %i.l, 2
  %i.n = zext i1 %i.f to i64                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr @VP8EncBands, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !58
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [33 x i8], ptr %i.c, i64 %i.q
  %i.s = sext i32 %3 to i64                       ; 2 uses
  %i.t = getelementptr inbounds [11 x i8], ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !58    ; 2 uses
  %not. = xor i1 %i.f, true
  %i.v = sext i1 %not. to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.0182213 = phi i32 [ 15, %bb.a ], [ %i.af, %bb.c ] ; 3 uses
  %i.w = zext nneg i32 %.0182213 to i64
  %i.x = getelementptr inbounds nuw i8, ptr @kZigzag, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !58
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !47
  %i.ac = sext i16 %i.ab to i32                   ; 2 uses
  %i.ad = mul nsw i32 %i.ac, %i.ac
  %i.ae = icmp samesign ugt i32 %i.ad, %i.m
  br i1 %i.ae, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = add nsw i32 %.0182213, -1               ; 2 uses
  %.not = icmp slt i32 %i.af, %i.g
  br i1 %.not, label %bb.d, label %bb.b, !llvm.loop !235

bb.d:                                             ; preds = %bb.b, %bb.c
  %.2190 = phi i32 [ %.0182213, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %i.ag = icmp slt i32 %.2190, 15
  %i.ah = zext i1 %i.ag to i32
  %spec.select = add nsw i32 %.2190, %i.ah        ; 2 uses
  %.pn.i = zext i8 %i.u to i64
  %.in.in.i = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i
  %.in.i = load i16, ptr %.in.in.i, align 2, !tbaa !47
  %i.ai = zext i16 %.in.i to i64
  %i.aj = sext i32 %6 to i64                      ; 8 uses
  %i.ak = mul nsw i64 %i.ai, %i.aj
  %i.al = icmp eq i32 %3, 0
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.n
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.s
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !236 ; 2 uses
  br i1 %i.al, label %.split.us, label %.preheader

.split.us:                                        ; preds = %bb.d
  %.pn.in.i = xor i8 %i.u, -1
  %.pn.i206 = zext i8 %.pn.in.i to i64
  %.in.in.i207 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i206
  %.in.i208.us = load i16, ptr %.in.in.i207, align 2, !tbaa !47
  %i.ap = zext i16 %.in.i208.us to i64
  %i.aq = mul nsw i64 %i.ap, %i.aj
  br label %.preheader

.preheader:                                       ; preds = %bb.d, %.split.us
  %.sink259 = phi i64 [ %i.aq, %.split.us ], [ 0, %bb.d ] ; 3 uses
  store i64 %.sink259, ptr %8, align 16, !tbaa !237
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %.sink259, ptr %i.as, align 16, !tbaa !237
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.ao, ptr %i.at, align 8, !tbaa !239
  %.not199222 = icmp slt i32 %spec.select, %i.g
  br i1 %.not199222, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 192
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.s
  %i.aw = phi i64 [ %.sink259, %.lr.ph ], [ %i.eg, %bb.s ]
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 6 uses
  %.0173229 = phi ptr [ %8, %.lr.ph ], [ %.0176228, %bb.s ] ; 5 uses
  %.0176228 = phi ptr [ %i.h, %.lr.ph ], [ %.0173229, %bb.s ] ; 6 uses
  %.sroa.8.0227 = phi i32 [ -1, %.lr.ph ], [ %.sroa.8.4.1, %bb.s ] ; 3 uses
  %.sroa.6.0226 = phi i32 [ -1, %.lr.ph ], [ %.sroa.6.4.1, %bb.s ] ; 3 uses
  %.sroa.0.0225 = phi i32 [ -1, %.lr.ph ], [ %.sroa.0.4.1, %bb.s ] ; 3 uses
  %.0180224 = phi i64 [ %i.ak, %.lr.ph ], [ %.4.1, %bb.s ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr @kZigzag, i64 %indvars.iv
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !58
  %i.az = zext i8 %i.ay to i64                    ; 5 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !47 ; 3 uses
  %i.bc = zext i16 %i.bb to i32                   ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.az
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !47
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.az
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !47 ; 2 uses
  %i.bi = tail call i16 @llvm.abs.i16(i16 %i.bh, i1 false)
  %i.bj = zext i16 %i.bi to i32
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.az
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !47
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.bj, %i.bm            ; 2 uses
  %i.bo = mul i32 %i.bn, %i.bf                    ; 2 uses
  %i.bp = lshr i32 %i.bo, 17                      ; 4 uses
  %i.bq = add i32 %i.bo, 65536
  %i.br = lshr i32 %i.bq, 17                      ; 2 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.br, i32 2047)
  %spec.store.select1 = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 2047) ; 6 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr @VP8EncBands, i64 %indvars.iv.next
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !58
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %indvars.iv.next ; 2 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr @kWeightTrellis, i64 %i.az ; 2 uses
  %i.bx = shl nuw nsw i32 %i.bn, 1                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0173229, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0173229, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0173229, i64 24 ; 2 uses
  %.lobit = lshr i16 %i.bh, 15
  %i.cb = trunc nuw nsw i16 %.lobit to i8         ; 2 uses
  %i.cc = icmp samesign ult i64 %indvars.iv, 15   ; 2 uses
  %i.cd = zext i8 %i.bu to i64
  %i.ce = getelementptr inbounds nuw [33 x i8], ptr %i.c, i64 %i.cd ; 2 uses
  %9 = zext nneg i32 %spec.store.select1 to i64   ; 2 uses
  %i.cf = zext nneg i32 %spec.store.select to i64
  %i.cg = zext i16 %i.bb to i64
  %i.ch = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 2)
  %i.ci = zext nneg i32 %i.ch to i64              ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !236
  %i.cl = getelementptr inbounds nuw i8, ptr %.0176228, i64 8
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !239
  %i.cm = icmp samesign ult i32 %i.br, %spec.store.select1
  br i1 %i.cm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 36028797018963967, ptr %.0176228, align 8, !tbaa !237
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cn = mul nuw nsw i32 %spec.store.select1, %i.bc
  %i.co = load i16, ptr %i.bw, align 2, !tbaa !47
  %i.cp = zext i16 %i.co to i32
  %add.neg = sub nsw i32 %i.cn, %i.bx
  %i.cq = zext i16 %i.bb to i32
  %i.cr = mul nuw nsw i32 %spec.store.select1, %i.cq
  %.neg202 = mul i32 %add.neg, %i.cr
  %i.cs = mul i32 %.neg202, %i.cp
  %i.ct = sext i32 %i.cs to i64
  %i.cu = shl nsw i64 %i.ct, 8
  %i.cv = load ptr, ptr %i.by, align 8, !tbaa !239
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr @VP8LevelFixedCosts, i64 %9
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !47
  %i.cy = zext i16 %i.cx to i32                   ; 2 uses
  %i.cz = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 67)
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !47
  %i.dd = zext i16 %i.dc to i32
  %i.de = add nuw nsw i32 %i.dd, %i.cy
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = mul nsw i64 %i.df, %i.aj
  %i.dh = add nsw i64 %i.dg, %i.aw                ; 2 uses
  %i.di = load ptr, ptr %i.ca, align 8, !tbaa !239
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.da
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !47
  %i.dl = zext i16 %i.dk to i32
  %i.dm = add nuw nsw i32 %i.dl, %i.cy
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = load i64, ptr %i.bz, align 8, !tbaa !237
  %i.dp = mul nsw i64 %i.dn, %i.aj
  %i.dq = add nsw i64 %i.dp, %i.do                ; 2 uses
  %i.dr = icmp slt i64 %i.dq, %i.dh               ; 2 uses
  %spec.select204 = tail call i64 @llvm.smin.i64(i64 %i.dq, i64 %i.dh)
  %spec.select205 = zext i1 %i.dr to i32
  %i.ds = add nsw i64 %spec.select204, %i.cu      ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 %i.cb, ptr %i.dt, align 1, !tbaa !240
  %i.du = trunc nuw nsw i32 %spec.store.select1 to i16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !242
  %i.dw = zext i1 %i.dr to i8
  store i8 %i.dw, ptr %i.bs, align 8, !tbaa !243
  store i64 %i.ds, ptr %.0176228, align 8, !tbaa !237
  %.not203 = icmp ne i32 %i.bp, 0
  %i.dx = icmp slt i64 %i.ds, %.0180224
  %or.cond = select i1 %.not203, i1 %i.dx, i1 false
  br i1 %or.cond, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  br i1 %i.cc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dy = getelementptr inbounds nuw [11 x i8], ptr %i.ce, i64 %i.ci
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !58
  %.pn.i210 = zext i8 %i.dz to i64
  %.in.in.i211 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i210
  %.in.i212 = load i16, ptr %.in.in.i211, align 2, !tbaa !47
  %i.ea = zext i16 %.in.i212 to i64
  %i.eb = mul nsw i64 %i.ea, %i.aj
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ec = phi i64 [ %i.eb, %bb.i ], [ 0, %bb.h ]
  %i.ed = add nsw i64 %i.ec, %i.ds                ; 2 uses
  %i.ee = icmp slt i64 %i.ed, %.0180224
  br i1 %i.ee, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ef = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k, %bb.j, %bb.f
  %i.eg = phi i64 [ 36028797018963967, %bb.f ], [ %i.ds, %bb.g ], [ %i.ds, %bb.k ], [ %i.ds, %bb.j ]
  %.4 = phi i64 [ %.0180224, %bb.f ], [ %.0180224, %bb.g ], [ %i.ed, %bb.k ], [ %.0180224, %bb.j ] ; 5 uses
  %.sroa.0.4 = phi i32 [ %.sroa.0.0225, %bb.f ], [ %.sroa.0.0225, %bb.g ], [ %i.ef, %bb.k ], [ %.sroa.0.0225, %bb.j ] ; 3 uses
  %.sroa.6.4 = phi i32 [ %.sroa.6.0226, %bb.f ], [ %.sroa.6.0226, %bb.g ], [ 0, %bb.k ], [ %.sroa.6.0226, %bb.j ] ; 3 uses
  %.sroa.8.4 = phi i32 [ %.sroa.8.0227, %bb.f ], [ %.sroa.8.0227, %bb.g ], [ %spec.select205, %bb.k ], [ %.sroa.8.0227, %bb.j ] ; 3 uses
  %i.eh = add nuw nsw i64 %9, 1                   ; 5 uses
  %i.ei = trunc nuw nsw i64 %i.eh to i32          ; 2 uses
  %i.ej = tail call i32 @llvm.umin.i32(i32 %i.ei, i32 2)
  %i.ek = zext nneg i32 %i.ej to i64              ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !236
  %i.en = getelementptr inbounds nuw i8, ptr %.0176228, i64 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0176228, i64 24
  store ptr %i.em, ptr %i.eo, align 8, !tbaa !239
  %10 = icmp samesign ugt i64 %i.eh, %i.cf
  br i1 %10, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ep = add nuw nsw i32 %spec.store.select1, 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.er = mul nuw nsw i64 %i.eh, %i.cg
  %i.es = mul nuw nsw i32 %i.ep, %i.bc
  %i.et = load i16, ptr %i.bw, align 2, !tbaa !47
  %i.eu = zext i16 %i.et to i32
  %add.neg.1 = sub nsw i32 %i.es, %i.bx
  %i.ev = trunc nuw nsw i64 %i.er to i32
  %.neg202.1 = mul i32 %add.neg.1, %i.ev
  %i.ew = mul i32 %.neg202.1, %i.eu
  %i.ex = sext i32 %i.ew to i64
  %i.ey = shl nsw i64 %i.ex, 8
  %i.ez = load ptr, ptr %i.by, align 8, !tbaa !239
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr @VP8LevelFixedCosts, i64 %i.eh
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !47
  %i.fc = zext i16 %i.fb to i32                   ; 2 uses
  %i.fd = tail call i32 @llvm.umin.i32(i32 range(i32 0, 32768) %i.ei, i32 67)
  %i.fe = zext nneg i32 %i.fd to i64              ; 2 uses
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !47
  %i.fh = zext i16 %i.fg to i32
  %i.fi = add nuw nsw i32 %i.fh, %i.fc
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = load i64, ptr %.0173229, align 8, !tbaa !237
  %i.fl = mul nsw i64 %i.fj, %i.aj
  %i.fm = add nsw i64 %i.fl, %i.fk                ; 2 uses
  %i.fn = load ptr, ptr %i.ca, align 8, !tbaa !239
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %i.fe
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !47
  %i.fq = zext i16 %i.fp to i32
  %i.fr = add nuw nsw i32 %i.fq, %i.fc
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = load i64, ptr %i.bz, align 8, !tbaa !237
  %i.fu = mul nsw i64 %i.fs, %i.aj
  %i.fv = add nsw i64 %i.fu, %i.ft                ; 2 uses
  %i.fw = icmp slt i64 %i.fv, %i.fm               ; 2 uses
  %spec.select204.1 = tail call i64 @llvm.smin.i64(i64 %i.fv, i64 %i.fm)
  %spec.select205.1 = zext i1 %i.fw to i32
  %i.fx = add nsw i64 %spec.select204.1, %i.ey    ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bs, i64 5
  store i8 %i.cb, ptr %i.fy, align 1, !tbaa !240
  %i.fz = trunc nuw nsw i64 %i.eh to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bs, i64 6
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !242
  %i.gb = zext i1 %i.fw to i8
  store i8 %i.gb, ptr %i.eq, align 4, !tbaa !243
  store i64 %i.fx, ptr %i.en, align 8, !tbaa !237
  %i.gc = icmp slt i64 %i.fx, %.4
  br i1 %i.gc, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gd = getelementptr inbounds nuw [11 x i8], ptr %i.ce, i64 %i.ek
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !58
  %.pn.i210.1 = zext i8 %i.ge to i64
  %.in.in.i211.1 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i210.1
  %.in.i212.1 = load i16, ptr %.in.in.i211.1, align 2, !tbaa !47
  %i.gf = zext i16 %.in.i212.1 to i64
  %i.gg = mul nsw i64 %i.gf, %i.aj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gh = phi i64 [ %i.gg, %bb.o ], [ 0, %bb.n ]
  %i.gi = add nsw i64 %i.gh, %i.fx                ; 2 uses
  %i.gj = icmp slt i64 %i.gi, %.4
  br i1 %i.gj, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.gk = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.s

bb.r:                                             ; preds = %bb.l
  store i64 36028797018963967, ptr %i.en, align 8, !tbaa !237
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.m
  %.4.1 = phi i64 [ %.4, %bb.r ], [ %.4, %bb.m ], [ %i.gi, %bb.q ], [ %.4, %bb.p ]
  %.sroa.0.4.1 = phi i32 [ %.sroa.0.4, %bb.r ], [ %.sroa.0.4, %bb.m ], [ %i.gk, %bb.q ], [ %.sroa.0.4, %bb.p ] ; 2 uses
  %.sroa.6.4.1 = phi i32 [ %.sroa.6.4, %bb.r ], [ %.sroa.6.4, %bb.m ], [ 1, %bb.q ], [ %.sroa.6.4, %bb.p ] ; 2 uses
  %.sroa.8.4.1 = phi i32 [ %.sroa.8.4, %bb.r ], [ %.sroa.8.4, %bb.m ], [ %spec.select205.1, %bb.q ], [ %.sroa.8.4, %bb.p ] ; 2 uses
  %.not199 = icmp samesign ugt i64 %indvars.iv.next, %wide.trip.count
  br i1 %.not199, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !244

._crit_edge.loopexit:                             ; preds = %bb.s
  %i.gl = trunc nsw i32 %.sroa.8.4.1 to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.sroa.0.0.lcssa = phi i32 [ -1, %.preheader ], [ %.sroa.0.4.1, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.6.0.lcssa = phi i32 [ -1, %.preheader ], [ %.sroa.6.4.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa = phi i8 [ -1, %.preheader ], [ %i.gl, %._crit_edge.loopexit ]
  br i1 %i.f, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.gm, i8 0, i64 30, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.gn, i8 0, i64 30, i1 false)
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.go = icmp eq i32 %.sroa.0.0.lcssa, -1
  br i1 %i.go, label %._crit_edge238, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gp = sext i32 %.sroa.0.0.lcssa to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %7, i64 %i.gp
  %i.gr = sext i32 %.sroa.6.0.lcssa to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %i.gr
  store i8 %.sroa.8.0.lcssa, ptr %i.gs, align 4, !tbaa !243
  %.not200232 = icmp slt i32 %.sroa.0.0.lcssa, %i.g
  br i1 %.not200232, label %._crit_edge238, label %.lr.ph237

.lr.ph237:                                        ; preds = %bb.w, %.lr.ph237
  %.0174235 = phi i32 [ %i.hn, %.lr.ph237 ], [ %.sroa.6.0.lcssa, %bb.w ]
  %.0174235.a = phi i32 [ %i.hg, %.lr.ph237 ], [ 0, %bb.w ]
  %.0175234 = phi i32 [ %12, %.lr.ph237 ], [ %.sroa.0.0.lcssa, %bb.w ] ; 2 uses
  %11 = zext nneg i32 %.0175234 to i64            ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %11
  %i.gu = sext i32 %.0174235 to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.gu ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr @kZigzag, i64 %11
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !58
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !240
  %.not201 = icmp eq i8 %i.gz, 0
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !242 ; 3 uses
  %i.hc = sub i16 0, %i.hb
  %i.hd = select i1 %.not201, i16 %i.hb, i16 %i.hc ; 2 uses
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %11
  store i16 %i.hd, ptr %i.he, align 2, !tbaa !47
  %i.hf = sext i16 %i.hb to i32
  %i.hg = or i32 %.0174235.a, %i.hf               ; 2 uses
  %i.hh = zext i8 %i.gx to i64                    ; 2 uses
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.hh
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !47
  %i.hk = mul i16 %i.hj, %i.hd
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.hh
  store i16 %i.hk, ptr %i.hl, align 2, !tbaa !47
  %i.hm = load i8, ptr %i.gv, align 4, !tbaa !243
  %i.hn = sext i8 %i.hm to i32
  %12 = add nsw i32 %.0175234, -1                 ; 2 uses
  %.not200 = icmp slt i32 %12, %i.g
  br i1 %.not200, label %._crit_edge238.loopexit, label %.lr.ph237, !llvm.loop !245

._crit_edge238.loopexit:                          ; preds = %.lr.ph237
  %i.ho = icmp ne i32 %i.hg, 0
  %i.hp = zext i1 %i.ho to i32
  br label %._crit_edge238

._crit_edge238:                                   ; preds = %bb.w, %._crit_edge238.loopexit, %bb.v
  %.0 = phi i32 [ 0, %bb.v ], [ 0, %bb.w ], [ %i.hp, %._crit_edge238.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @VP8IteratorStartI4(ptr noundef) local_unnamed_addr #4

declare i32 @VP8GetCostLuma4(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @VP8IteratorRotateI4(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @VP8SetIntra4Mode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, -65535) i32 @ReconstructUV(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias noundef %1, ptr noalias noundef %2, i32 noundef range(i32 -2147483648, 4) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x [16 x i16]], align 16        ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.f = sext i32 %3 to i64
  %i.g = getelementptr inbounds [2 x i8], ptr @VP8UVModeOffsets, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !47
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.p = load i8, ptr %i.o, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.q = load ptr, ptr @VP8FTransform2, align 8, !tbaa !87
  call void %i.q(ptr noundef nonnull %i.m, ptr noundef %i.j, ptr noundef nonnull %i.a) #11
  %i.r = load ptr, ptr @VP8FTransform2, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 5 uses
  call void %i.r(ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u) #11
  %i.v = load ptr, ptr @VP8FTransform2, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 5 uses
  call void %i.v(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y) #11
  %i.z = load ptr, ptr @VP8FTransform2, align 8, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 136 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 5 uses
  call void %i.z(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  %i.ae = lshr i8 %i.p, 5
  %i.af = and i8 %i.ae, 3
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [744 x i8], ptr %i.ad, i64 %i.ag ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !175 ; 2 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 448 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.al = load i32, ptr %0, align 8, !tbaa !80, !alias.scope !246, !noalias !253
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.am ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 576
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3, !alias.scope !254, !noalias !257 ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 868
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 480 ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 512 ; 8 uses
  %i.au = load i8, ptr %i.an, align 1, !tbaa !58, !noalias !259
  %i.av = sext i8 %i.au to i16
  %i.aw = mul nsw i16 %i.av, 7
  %i.ax = load i8, ptr %i.ao, align 8, !tbaa !58, !alias.scope !246, !noalias !253
  %i.ay = sext i8 %i.ax to i16
  %i.az = shl nsw i16 %i.ay, 3
  %i.ba = add nsw i16 %i.az, %i.aw
  %i.bb = ashr i16 %i.ba, 3
  %i.bc = load i16, ptr %i.a, align 16, !tbaa !47, !noalias !259
  %i.bd = add i16 %i.bb, %i.bc                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.be = icmp slt i16 %i.bd, 0                   ; 2 uses
  %i.bf = call i16 @llvm.abs.i16(i16 %i.bd, i1 false)
  %spec.select.i.i = zext i16 %i.bf to i32        ; 4 uses
  %i.bg = icmp slt i32 %i.aq, %spec.select.i.i
  br i1 %i.bg, label %bb.c, label %QuantizeSingle.exit.i

bb.c:                                             ; preds = %bb.b
  %i.bh = load i16, ptr %i.as, align 4, !tbaa !47, !alias.scope !254, !noalias !257
  %i.bi = zext i16 %i.bh to i32
  %i.bj = load i32, ptr %i.at, align 4, !tbaa !3, !alias.scope !254, !noalias !257
  %i.bk = mul nuw nsw i32 %i.bi, %spec.select.i.i
  %i.bl = add i32 %i.bk, %i.bj
  %i.bm = lshr i32 %i.bl, 17
  %i.bn = load i16, ptr %i.ak, align 4, !tbaa !47, !alias.scope !254, !noalias !257
  %i.bo = zext i16 %i.bn to i32
  %i.bp = mul nuw nsw i32 %i.bm, %i.bo            ; 3 uses
  %i.bq = sub nsw i32 %spec.select.i.i, %i.bp
  %i.br = sub nsw i32 0, %i.bp
  %i.bs = select i1 %i.be, i32 %i.br, i32 %i.bp
  %i.bt = trunc i32 %i.bs to i16
  br label %QuantizeSingle.exit.i

QuantizeSingle.exit.i:                            ; preds = %bb.c, %bb.b
  %spec.select.sink26.i.i = phi i32 [ %i.bq, %bb.c ], [ %spec.select.i.i, %bb.b ] ; 2 uses
  %.sink.i.i = phi i16 [ %i.bt, %bb.c ], [ 0, %bb.b ]
  %i.bu = sub nsw i32 0, %spec.select.sink26.i.i
  %i.bv = select i1 %i.be, i32 %i.bu, i32 %spec.select.sink26.i.i
  store i16 %.sink.i.i, ptr %i.a, align 16, !tbaa !47, !alias.scope !260, !noalias !262
  %.0.i.i = ashr i32 %i.bv, 1                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !58, !noalias !259
  %i.by = sext i8 %i.bx to i32
  %i.bz = mul nsw i32 %i.by, 7
  %i.ca = lshr i32 %i.bz, 3
  %i.cb = add nsw i32 %i.ca, %.0.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 16, !tbaa !47, !noalias !259
  %i.ce = trunc i32 %i.cb to i16
  %i.cf = add i16 %i.cd, %i.ce                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.cg = icmp slt i16 %i.cf, 0                   ; 2 uses
  %i.ch = call i16 @llvm.abs.i16(i16 %i.cf, i1 false)
  %spec.select.i37.i = zext i16 %i.ch to i32      ; 4 uses
  %i.ci = icmp slt i32 %i.aq, %spec.select.i37.i
  br i1 %i.ci, label %bb.d, label %QuantizeSingle.exit41.i

bb.d:                                             ; preds = %QuantizeSingle.exit.i
  %i.cj = load i16, ptr %i.as, align 4, !tbaa !47, !alias.scope !268, !noalias !269
  %i.ck = zext i16 %i.cj to i32
  %i.cl = load i32, ptr %i.at, align 4, !tbaa !3, !alias.scope !268, !noalias !269
  %i.cm = mul nuw nsw i32 %i.ck, %spec.select.i37.i
  %i.cn = add i32 %i.cm, %i.cl
  %i.co = lshr i32 %i.cn, 17
  %i.cp = load i16, ptr %i.ak, align 4, !tbaa !47, !alias.scope !268, !noalias !269
  %i.cq = zext i16 %i.cp to i32
  %i.cr = mul nuw nsw i32 %i.co, %i.cq            ; 3 uses
  %i.cs = sub nsw i32 %spec.select.i37.i, %i.cr
  %i.ct = sub nsw i32 0, %i.cr
  %i.cu = select i1 %i.cg, i32 %i.ct, i32 %i.cr
  %i.cv = trunc i32 %i.cu to i16
  br label %QuantizeSingle.exit41.i

QuantizeSingle.exit41.i:                          ; preds = %bb.d, %QuantizeSingle.exit.i
  %spec.select.sink26.i38.i = phi i32 [ %i.cs, %bb.d ], [ %spec.select.i37.i, %QuantizeSingle.exit.i ] ; 2 uses
  %.sink.i39.i = phi i16 [ %i.cv, %bb.d ], [ 0, %QuantizeSingle.exit.i ]
  %i.cw = sub nsw i32 0, %spec.select.sink26.i38.i
  %i.cx = select i1 %i.cg, i32 %i.cw, i32 %spec.select.sink26.i38.i
  store i16 %.sink.i39.i, ptr %i.cc, align 16, !tbaa !47, !alias.scope !263, !noalias !270
  %.0.i40.i = ashr i32 %i.cx, 1                   ; 2 uses
  %i.cy = mul nsw i32 %.0.i.i, 7
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 345
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !58, !alias.scope !246, !noalias !253
  %i.db = sext i8 %i.da to i32
  %i.dc = lshr i32 %i.cy, 3
  %i.dd = add nsw i32 %i.dc, %i.db
  %i.de = load i16, ptr %i.u, align 16, !tbaa !47, !noalias !259
  %i.df = trunc i32 %i.dd to i16
  %i.dg = add i16 %i.de, %i.df                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.dh = icmp slt i16 %i.dg, 0                   ; 2 uses
  %i.di = call i16 @llvm.abs.i16(i16 %i.dg, i1 false)
  %spec.select.i42.i = zext i16 %i.di to i32      ; 4 uses
  %i.dj = icmp slt i32 %i.aq, %spec.select.i42.i
  br i1 %i.dj, label %bb.e, label %QuantizeSingle.exit46.i

bb.e:                                             ; preds = %QuantizeSingle.exit41.i
  %i.dk = load i16, ptr %i.as, align 4, !tbaa !47, !alias.scope !276, !noalias !277
  %i.dl = zext i16 %i.dk to i32
  %i.dm = load i32, ptr %i.at, align 4, !tbaa !3, !alias.scope !276, !noalias !277
  %i.dn = mul nuw nsw i32 %i.dl, %spec.select.i42.i
  %i.do = add i32 %i.dn, %i.dm
  %i.dp = lshr i32 %i.do, 17
  %i.dq = load i16, ptr %i.ak, align 4, !tbaa !47, !alias.scope !276, !noalias !277
  %i.dr = zext i16 %i.dq to i32
  %i.ds = mul nuw nsw i32 %i.dp, %i.dr            ; 3 uses
  %i.dt = sub nsw i32 %spec.select.i42.i, %i.ds
  %i.du = sub nsw i32 0, %i.ds
  %i.dv = select i1 %i.dh, i32 %i.du, i32 %i.ds
  %i.dw = trunc i32 %i.dv to i16
  br label %QuantizeSingle.exit46.i

end_hunk_0
