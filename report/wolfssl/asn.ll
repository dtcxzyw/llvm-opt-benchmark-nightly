Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/asn?download=true
inline.NumInlined: 284
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 75
begin_hunk_0_@SetASN_Items:bb.a
BytePrecision.exit.i167:                          ; preds = %bb.ae
  store i8 -124, ptr %i.el, align 1, !tbaa !15
  br label %BytePrecision.exit23.i168

bb.ag:                                            ; preds = %bb.af
  store i8 -125, ptr %i.el, align 1, !tbaa !15
  br label %BytePrecision.exit23.i168

bb.ah:                                            ; preds = %bb.af
  %.not5.2.i.i175 = icmp samesign ult i32 %.0, 256 ; 2 uses
  %i.ep = select i1 %.not5.2.i.i175, i8 -127, i8 -126
  store i8 %i.ep, ptr %i.el, align 1, !tbaa !15
  %spec.select.i22.i176 = select i1 %.not5.2.i.i175, i32 1, i32 2
  br label %BytePrecision.exit23.i168

BytePrecision.exit23.i168:                        ; preds = %bb.ah, %bb.ag, %BytePrecision.exit.i167
  %.0.lcssa.i19.i169 = phi i32 [ 4, %BytePrecision.exit.i167 ], [ %spec.select.i22.i176, %bb.ah ], [ 3, %bb.ag ] ; 6 uses
  %min.iters.check223 = icmp samesign ult i32 %.0.lcssa.i19.i169, 4
  br i1 %min.iters.check223, label %scalar.ph222.preheader, label %vector.body230

vector.body230:                                   ; preds = %BytePrecision.exit23.i168
  %broadcast.splatinsert228 = insertelement <4 x i32> poison, i32 %.0.lcssa.i19.i169, i64 0
  %broadcast.splat229 = shufflevector <4 x i32> %broadcast.splatinsert228, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eq = add nsw <4 x i32> %broadcast.splat229, <i32 0, i32 -1, i32 -2, i32 -3>
  %broadcast.splatinsert226 = insertelement <4 x i32> poison, i32 %.0, i64 0
  %broadcast.splat227 = shufflevector <4 x i32> %broadcast.splatinsert226, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec225 = and i32 %.0.lcssa.i19.i169, 4       ; 2 uses
  %i.er = or disjoint i32 %n.vec225, 1            ; 2 uses
  %i.es = and i32 %.0.lcssa.i19.i169, 3
  %i.et = shl nsw <4 x i32> %i.eq, splat (i32 3)
  %i.eu = add nsw <4 x i32> %i.et, splat (i32 -8)
  %i.ev = lshr <4 x i32> %broadcast.splat227, %i.eu
  %i.ew = trunc <4 x i32> %i.ev to <4 x i8>
  %i.ex = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store <4 x i8> %i.ew, ptr %i.ex, align 1, !tbaa !15
  %cmp.n236 = icmp eq i32 %.0.lcssa.i19.i169, %n.vec225
  br i1 %cmp.n236, label %SetASNLength.exit177, label %scalar.ph222.preheader

scalar.ph222.preheader:                           ; preds = %BytePrecision.exit23.i168, %vector.body230
  %.028.i170.ph = phi i32 [ %.0.lcssa.i19.i169, %BytePrecision.exit23.i168 ], [ %i.es, %vector.body230 ]
  %.01527.i171.ph = phi i32 [ 1, %BytePrecision.exit23.i168 ], [ %i.er, %vector.body230 ]
  br label %scalar.ph222

scalar.ph222:                                     ; preds = %scalar.ph222.preheader, %scalar.ph222
  %.028.i170 = phi i32 [ %i.ff, %scalar.ph222 ], [ %.028.i170.ph, %scalar.ph222.preheader ] ; 2 uses
  %.01527.i171 = phi i32 [ %i.fe, %scalar.ph222 ], [ %.01527.i171.ph, %scalar.ph222.preheader ] ; 2 uses
  %i.ey = shl i32 %.028.i170, 3
  %i.ez = add i32 %i.ey, -8
  %i.fa = lshr i32 %.0, %i.ez
  %i.fb = trunc i32 %i.fa to i8
  %i.fc = zext i32 %.01527.i171 to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fc
  store i8 %i.fb, ptr %i.fd, align 1, !tbaa !15
  %i.fe = add i32 %.01527.i171, 1                 ; 2 uses
  %i.ff = add nsw i32 %.028.i170, -1              ; 2 uses
  %.not.i172 = icmp eq i32 %i.ff, 0
  br i1 %.not.i172, label %SetASNLength.exit177, label %scalar.ph222, !llvm.loop !145

SetASNLength.exit177:                             ; preds = %scalar.ph222, %vector.body230, %bb.ad
  %.1.i173 = phi i32 [ 1, %bb.ad ], [ %i.er, %vector.body230 ], [ %i.fe, %scalar.ph222 ] ; 2 uses
  %i.fg = add i32 %.1.i173, 1                     ; 5 uses
  %i.fh = load i8, ptr %i.o, align 1, !tbaa !23
  switch i8 %i.fh, label %bb.am [
    i8 3, label %bb.al
    i8 2, label %bb.ai
  ]

bb.ai:                                            ; preds = %SetASNLength.exit177
  %i.fi = load ptr, ptr %i.ee, align 8, !tbaa !15 ; 3 uses
  %.not133 = icmp eq ptr %i.fi, null
  br i1 %.not133, label %.thread184, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fj = load i32, ptr %i.ef, align 8, !tbaa !15
  %.not134 = icmp eq i32 %i.fj, 0
  br i1 %.not134, label %.thread187, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fk = load i8, ptr %i.fi, align 1, !tbaa !15
  %.not135 = icmp sgt i8 %i.fk, -1
  br i1 %.not135, label %bb.am, label %bb.al

bb.al:                                            ; preds = %SetASNLength.exit177, %bb.ak
  %i.fl = add i32 %.1.i173, 2
  %i.fm = zext i32 %i.fg to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fm
  store i8 0, ptr %i.fn, align 1, !tbaa !15
  br label %bb.am

bb.am:                                            ; preds = %SetASNLength.exit177, %bb.al, %bb.ak
  %.2.ph = phi i32 [ %i.fg, %SetASNLength.exit177 ], [ %i.fg, %bb.ak ], [ %i.fl, %bb.al ] ; 2 uses
  %.pr183 = load ptr, ptr %i.ee, align 8, !tbaa !15 ; 2 uses
  %i.fo = icmp eq ptr %.pr183, null
  br i1 %i.fo, label %.thread184, label %..thread187_crit_edge

..thread187_crit_edge:                            ; preds = %bb.am
  %.pre = load i32, ptr %i.ef, align 8, !tbaa !15
  %i.fp = zext i32 %.pre to i64
  br label %.thread187

.thread184:                                       ; preds = %bb.ai, %bb.am
  %.2186 = phi i32 [ %.2.ph, %bb.am ], [ %i.fg, %bb.ai ]
  %i.fq = zext i32 %.2186 to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fq
  store ptr %i.fr, ptr %i.ee, align 8, !tbaa !15
  br label %SetASN_Num.exit

.thread187:                                       ; preds = %..thread187_crit_edge, %bb.aj
  %i.fs = phi i64 [ %i.fp, %..thread187_crit_edge ], [ 0, %bb.aj ]
  %.2189 = phi i32 [ %.2.ph, %..thread187_crit_edge ], [ %i.fg, %bb.aj ]
  %i.ft = phi ptr [ %.pr183, %..thread187_crit_edge ], [ %i.fi, %bb.aj ]
  %i.fu = zext i32 %.2189 to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fu
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fv, ptr nonnull align 1 %i.ft, i64 %i.fs, i1 false)
  br label %SetASN_Num.exit

SetASN_Num.exit:                                  ; preds = %.lr.ph.i155.prol.loopexit, %.lr.ph.i155, %.lr.ph.preheader.i, %.thread184, %.thread187, %bb.d, %bb.r, %bb.t, %bb.s, %bb.w, %bb.v, %bb.b
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !146

._crit_edge:                                      ; preds = %bb.r, %SetASN_Num.exit, %bb.a
  %.0120 = phi i32 [ %i.a, %bb.a ], [ %i.a, %SetASN_Num.exit ], [ -113, %bb.r ]
  ret i32 %.0120
}

declare i32 @sp_to_unsigned_bin(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -140, 1) i32 @GetASN_BitString(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !15    ; 2 uses
  %i.e = icmp ugt i8 %i.d, 7
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %1, -1
  %i.g = add i32 %i.f, %2
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = zext i8 %i.j to i16
  %narrow = sub nuw nsw i8 8, %i.d
  %i.l = zext nneg i8 %narrow to i16
  %i.m = lshr i16 254, %i.l
  %i.n = and i16 %i.m, %i.k
  %.not = icmp eq i16 %i.n, 0
  %. = select i1 %.not, i32 0, i32 -140
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -140, %bb.b ], [ -140, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -192, 1) i32 @GetASN_Items(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [8 x i32], align 16               ; 6 uses
  %i.c = alloca [2 x i8], align 2                 ; 7 uses
  %i.d = load i32, ptr %5, align 4, !tbaa !26     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i16 -1, ptr %i.c, align 2
  %i.e = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.f = shufflevector <4 x i32> %i.e, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i32> %i.f, ptr %i.b, align 16, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x i32> %i.f, ptr %i.g, align 16, !tbaa !26
  %i.h = icmp sgt i32 %2, 0
  br i1 %i.h, label %.lr.ph325.preheader, label %.loopexit

.lr.ph325.preheader:                              ; preds = %bb.a
  %i.i = load i8, ptr %0, align 1, !tbaa !24
  %i.j = zext i8 %i.i to i32
  %i.k = zext nneg i32 %2 to i64                  ; 2 uses
  %i.l = add nsw i32 %2, -1                       ; 2 uses
  br label %.lr.ph325

.lr.ph325:                                        ; preds = %.lr.ph325.preheader, %.loopexit264
  %.0145324 = phi i32 [ %spec.select, %.loopexit264 ], [ %i.j, %.lr.ph325.preheader ] ; 2 uses
  %.0147323 = phi i32 [ %.2, %.loopexit264 ], [ 0, %.lr.ph325.preheader ] ; 3 uses
  %.1153322 = phi i32 [ %i.on, %.loopexit264 ], [ 0, %.lr.ph325.preheader ] ; 9 uses
  %.0321 = phi i32 [ %.2234, %.loopexit264 ], [ %i.d, %.lr.ph325.preheader ] ; 12 uses
  %i.m = sext i32 %.1153322 to i64                ; 2 uses
  %i.n = getelementptr inbounds [40 x i8], ptr %1, i64 %i.m ; 26 uses
  store i32 %.0321, ptr %i.n, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !30
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %i.m ; 11 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !24    ; 5 uses
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = icmp ugt i8 %i.q, 7
  br i1 %i.s, label %GetLength_ex.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph325
  %spec.select = call i32 @llvm.umin.i32(i32 %.0145324, i32 %i.r) ; 2 uses
  %i.t = icmp sgt i32 %.0147323, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !155   ; 3 uses
  %i.w = zext i8 %i.v to i32                      ; 3 uses
  %.not173 = icmp eq i32 %.0147323, %i.w
  %or.cond475 = select i1 %i.t, i1 %.not173, i1 false
  br i1 %or.cond475, label %bb.e, label %._crit_edge394

._crit_edge394:                                   ; preds = %bb.b
  %i.x = icmp ugt i8 %i.v, 1
  br i1 %i.x, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge394
  %i.y = zext i8 %i.v to i64
  %i.z = getelementptr i8, ptr %i.c, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -2      ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15
  fence seq_cst
  %i.ac = icmp eq i8 %i.ab, -1
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.aa, align 1, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %._crit_edge394
  %.2 = phi i32 [ %i.w, %bb.d ], [ %i.w, %bb.c ], [ 0, %._crit_edge394 ], [ %.0147323, %bb.b ] ; 3 uses
  %i.ad = zext nneg i8 %i.q to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !26 ; 5 uses
  fence seq_cst
  %i.ag = icmp eq i32 %.0321, %i.af               ; 2 uses
  br i1 %i.ag, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !31
  %.not174 = icmp eq i8 %i.ai, 11
  %.phi.trans.insert396 = zext i32 %.0321 to i64  ; 2 uses
  %.phi.trans.insert397 = getelementptr inbounds nuw i8, ptr %4, i64 %.phi.trans.insert396
  %.pre398 = load i8, ptr %.phi.trans.insert397, align 1, !tbaa !15 ; 2 uses
  br i1 %.not174, label %._crit_edge395, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = and i8 %.pre398, -33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !23
  %.not175 = icmp eq i8 %i.aj, %i.al
  br i1 %.not175, label %._crit_edge395, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !155
  %.not186 = icmp eq i8 %i.an, 0
  br i1 %.not186, label %bb.j, label %.preheader263

.preheader263:                                    ; preds = %bb.h
  %.0149313 = add nsw i32 %.1153322, 1            ; 2 uses
  %i.ao = icmp slt i32 %.0149313, %2
  br i1 %i.ao, label %.lr.ph316, label %.loopexit264

.lr.ph316:                                        ; preds = %.preheader263
  %i.ap = load i8, ptr %i.p, align 1, !tbaa !24   ; 2 uses
  %i.aq = sext i32 %.0149313 to i64               ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !24
  %.not187538 = icmp ult i8 %i.ap, %i.as
  br i1 %.not187538, label %.lr.ph540, label %.loopexit264

bb.i:                                             ; preds = %.lr.ph540
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next388
  %i.au = load i8, ptr %i.at, align 1, !tbaa !24
  %.not187 = icmp ult i8 %i.ap, %i.au
  br i1 %.not187, label %.lr.ph540, label %..loopexit264.loopexit_crit_edge541, !llvm.loop !147

.lr.ph540:                                        ; preds = %.lr.ph316, %bb.i
  %indvars.iv387539 = phi i64 [ %indvars.iv.next388, %bb.i ], [ %i.aq, %.lr.ph316 ] ; 3 uses
  %i.av = getelementptr inbounds [40 x i8], ptr %1, i64 %indvars.iv387539 ; 2 uses
  store i32 %.0321, ptr %i.av, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 0, ptr %i.aw, align 4, !tbaa !30
  %indvars.iv.next388 = add nsw i64 %indvars.iv387539, 1 ; 3 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next388, %i.k
  br i1 %exitcond390.not, label %..loopexit264.loopexit_crit_edge, label %bb.i, !llvm.loop !147

bb.j:                                             ; preds = %bb.h
  %i.ax = icmp eq i32 %.0321, %6                  ; 2 uses
  %brmerge = or i1 %i.ax, %i.ag
  %.mux = select i1 %i.ax, i32 -132, i32 -140
  br i1 %brmerge, label %GetLength_ex.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !23  ; 2 uses
  %switch.selectcmp = icmp eq i8 %i.az, 3
  %switch.select = select i1 %switch.selectcmp, i32 -147, i32 -140
  %switch.selectcmp188 = icmp eq i8 %i.az, 6
  %switch.select189 = select i1 %switch.selectcmp188, i32 -144, i32 %switch.select
  br label %GetLength_ex.exit.thread

._crit_edge395:                                   ; preds = %bb.f, %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 33 ; 3 uses
  store i8 %.pre398, ptr %i.ba, align 1, !tbaa !32
  fence seq_cst
  %i.bb = load i8, ptr %i.ah, align 8, !tbaa !31  ; 3 uses
  %.not176 = icmp eq i8 %i.bb, 11
  br i1 %.not176, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge395
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 %.phi.trans.insert396
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !15
  %i.be = lshr i8 %i.bd, 5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = xor i8 %i.bg, %i.be
  %i.bi = and i8 %i.bh, 1
  %.not177 = icmp eq i8 %i.bi, 0
  br i1 %.not177, label %bb.m, label %GetLength_ex.exit.thread

bb.m:                                             ; preds = %bb.l, %._crit_edge395
  %i.bj = add i32 %.0321, 2                       ; 6 uses
  %i.bk = icmp ugt i32 %i.bj, %i.af
  br i1 %i.bk, label %GetLength_ex.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = add i32 %.0321, 1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !15  ; 3 uses
  %i.bp = zext i8 %i.bo to i32                    ; 4 uses
  %i.bq = icmp slt i8 %i.bo, 0
  br i1 %i.bq, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.br = and i32 %i.bp, 127                      ; 6 uses
  %i.bs = icmp eq i8 %i.bo, -128
  br i1 %i.bs, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = icmp eq i32 %i.br, 1
  br i1 %i.bt, label %.thread69.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = icmp samesign ugt i32 %i.br, 4
  br i1 %i.bu, label %GetLength_ex.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = shl nuw nsw i32 %i.br, 3
  %i.bw = add nsw i32 %i.bv, -8
  %i.bx = shl nuw nsw i32 1, %i.bw
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.0.i = phi i32 [ %i.bx, %bb.r ], [ 0, %bb.o ]  ; 2 uses
  %i.by = add i32 %i.br, %i.bj                    ; 2 uses
  %i.bz = icmp ugt i32 %i.by, %i.af
  br i1 %i.bz, label %GetLength_ex.exit.thread, label %.preheader.i

.thread69.i:                                      ; preds = %bb.p
  %i.ca = add i32 %.0321, 3                       ; 2 uses
  %i.cb = icmp ugt i32 %i.ca, %i.af
  br i1 %i.cb, label %GetLength_ex.exit.thread, label %.lr.ph.preheader.i

.preheader.i:                                     ; preds = %bb.s
  %.not58.i = icmp eq i32 %i.br, 0
  br i1 %.not58.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i, %.thread69.i
  %.07174.i = phi i32 [ %.0.i, %.preheader.i ], [ 128, %.thread69.i ] ; 2 uses
  %i.cc = phi i32 [ %i.by, %.preheader.i ], [ %i.ca, %.thread69.i ] ; 2 uses
  %i.cd = add nsw i32 %i.br, -1
  %xtraiter = and i32 %i.bp, 3                    ; 3 uses
  %i.ce = icmp ult i32 %i.cd, 3
  br i1 %i.ce, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i32 %i.bp, 124
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.03760.i = phi i32 [ %i.bj, %.lr.ph.preheader.i.new ], [ %i.cf, %.lr.ph.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.cf = add i32 %.03760.i, 4                    ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.cg = zext i32 %.03760.i to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !15
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 16
  %i.cl = add i32 %.03760.i, 1
  %i.cm = zext i32 %i.cl to i64
end_hunk_0
begin_hunk_1_@GetASN_Items:bb.a
  %wide.trip.count.i.i.i = zext nneg i32 %.0236 to i64 ; 2 uses
  %xtraiter603 = and i64 %wide.trip.count.i.i.i, 1
  %i.lx = icmp eq i32 %.0236, 1
  br i1 %i.lx, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter608 = and i64 %wide.trip.count.i.i.i, 62
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ] ; 3 uses
  %.020.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.mn, %.lr.ph.i.i.i ] ; 3 uses
  %.01319.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.mm, %.lr.ph.i.i.i ]
  %niter609 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter609.next.1, %.lr.ph.i.i.i ]
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lp, i64 %indvars.iv.i.i.i
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !15
  %i.ma = zext i8 %i.lz to i32
  %i.mb = xor i32 %i.ma, -1
  %i.mc = shl i32 %i.mb, %.020.i.i.i
  %i.md = xor i32 %i.mc, %.01319.i.i.i
  %i.me = add nuw nsw i32 %.020.i.i.i, 8
  %i.mf = and i32 %i.me, 31
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lp, i64 %indvars.iv.i.i.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 1
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !15
  %i.mj = zext i8 %i.mi to i32
  %i.mk = xor i32 %i.mj, -1
  %i.ml = shl i32 %i.mk, %i.mf
  %i.mm = xor i32 %i.ml, %i.md                    ; 3 uses
  %i.mn = xor i32 %.020.i.i.i, 16                 ; 2 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter609.next.1 = add i64 %niter609, 2         ; 2 uses
  %niter609.ncmp.1 = icmp eq i64 %niter609.next.1, %unroll_iter608
  br i1 %niter609.ncmp.1, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod605.not = icmp eq i64 %xtraiter603, 0
  br i1 %lcmp.mod605.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.020.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.mn, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.01319.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.mm, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod607 = trunc i32 %.0236 to i1
  call void @llvm.assume(i1 %lcmp.mod607)
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lp, i64 %indvars.iv.i.i.i.epil.init
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !15
  %i.mq = zext i8 %i.mp to i32
  %i.mr = xor i32 %i.mq, -1
  %i.ms = shl i32 %i.mr, %.020.i.i.i.epil.init
  %i.mt = xor i32 %i.ms, %.01319.i.i.i.epil.init
  br label %._crit_edge.loopexit.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.epil.preheader
  %.lcssa548 = phi i32 [ %i.mm, %._crit_edge.loopexit.i.i.i.unr-lcssa ], [ %i.mt, %.lr.ph.i.i.i.epil.preheader ]
  %i.mu = and i32 %.lcssa548, 2147483647
  br label %wc_oid_sum.exit.i.i

wc_oid_sum.exit.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i, %bb.bv
  %.015.i.i.i = phi i32 [ 0, %bb.bv ], [ %i.mu, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  store i32 %.015.i.i.i, ptr %i.ls, align 8, !tbaa !26
  %.not.i.i = icmp eq i32 %i.lu, 21
  br i1 %.not.i.i, label %GetOID.exit.thread.i, label %bb.bw

bb.bw:                                            ; preds = %wc_oid_sum.exit.i.i
  %i.mv = call ptr @OidFromId(i32 noundef %.015.i.i.i, i32 noundef %i.lu, ptr noundef nonnull %i.a) ; 2 uses
  %.not24.i.i = icmp eq ptr %i.mv, null
  br i1 %.not24.i.i, label %GetOID.exit.thread.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mw = load i32, ptr %i.a, align 4, !tbaa !26
  %.not25.i.i = icmp eq i32 %i.mw, %.0236
  br i1 %.not25.i.i, label %bb.by, label %GetOID.exit.i

bb.by:                                            ; preds = %bb.bx
  %i.mx = zext nneg i32 %.0236 to i64
  %bcmp.i.i = call i32 @bcmp(ptr readonly %i.lp, ptr nonnull %i.mv, i64 %i.mx)
  %.not26.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not26.i.i, label %GetOID.exit.thread.i, label %GetOID.exit.i

GetOID.exit.thread.i:                             ; preds = %bb.by, %bb.bw, %wc_oid_sum.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %GetASN_StoreData.exit

GetOID.exit.i:                                    ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %GetLength_ex.exit.thread

bb.bz:                                            ; preds = %bb.bp
  %i.my = zext i32 %.1 to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %4, i64 %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.mz, ptr %i.na, align 8, !tbaa !15
  %i.nb = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 %.0236, ptr %i.nb, align 8, !tbaa !15
  br label %GetASN_StoreData.exit

GetASN_StoreData.exit.loopexit.unr-lcssa:         ; preds = %.lr.ph133.i
  %lcmp.mod618.not = icmp eq i64 %xtraiter616, 0
  br i1 %lcmp.mod618.not, label %GetASN_StoreData.exit, label %.lr.ph133.i.epil.preheader

.lr.ph133.i.epil.preheader:                       ; preds = %GetASN_StoreData.exit.loopexit.unr-lcssa, %.lr.ph133.preheader.i
  %indvars.iv138.i.epil.init = phi i64 [ 0, %.lr.ph133.preheader.i ], [ %indvars.iv.next139.i.1, %GetASN_StoreData.exit.loopexit.unr-lcssa ]
  %lcmp.mod619 = trunc i32 %.0236 to i1
  call void @llvm.assume(i1 %lcmp.mod619)
  %i.nc = load ptr, ptr %i.hl, align 8, !tbaa !15 ; 2 uses
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !34
  %i.ne = shl i16 %i.nd, 8
  store i16 %i.ne, ptr %i.nc, align 2, !tbaa !34
  %i.nf = load ptr, ptr %i.hl, align 8, !tbaa !15 ; 2 uses
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !34
  %i.nh = trunc nuw nsw i64 %indvars.iv138.i.epil.init to i32
  %i.ni = add i32 %.1, %i.nh
  %i.nj = zext i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %4, i64 %i.nj
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !15
  %i.nm = zext i8 %i.nl to i16
  %i.nn = or i16 %i.ng, %i.nm
  store i16 %i.nn, ptr %i.nf, align 2, !tbaa !34
  br label %GetASN_StoreData.exit

GetASN_StoreData.exit.loopexit544.unr-lcssa:      ; preds = %.lr.ph131.i
  %lcmp.mod612.not = icmp eq i64 %xtraiter610, 0
  br i1 %lcmp.mod612.not, label %GetASN_StoreData.exit, label %.lr.ph131.i.epil.preheader

.lr.ph131.i.epil.preheader:                       ; preds = %GetASN_StoreData.exit.loopexit544.unr-lcssa, %.lr.ph131.preheader.i
  %indvars.iv135.i.epil.init = phi i64 [ 0, %.lr.ph131.preheader.i ], [ %indvars.iv.next136.i.1, %GetASN_StoreData.exit.loopexit544.unr-lcssa ]
  %lcmp.mod613 = trunc i32 %.0236 to i1
  call void @llvm.assume(i1 %lcmp.mod613)
  %i.no = load ptr, ptr %i.it, align 8, !tbaa !15 ; 2 uses
  %i.np = load i32, ptr %i.no, align 4, !tbaa !26
  %i.nq = shl i32 %i.np, 8
  store i32 %i.nq, ptr %i.no, align 4, !tbaa !26
  %i.nr = trunc nuw nsw i64 %indvars.iv135.i.epil.init to i32
  %i.ns = add i32 %.1, %i.nr
  %i.nt = zext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %4, i64 %i.nt
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !15
  %i.nw = zext i8 %i.nv to i32
  %i.nx = load ptr, ptr %i.it, align 8, !tbaa !15 ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !26
  %i.nz = or i32 %i.ny, %i.nw
  store i32 %i.nz, ptr %i.nx, align 4, !tbaa !26
  br label %GetASN_StoreData.exit

GetASN_StoreData.exit:                            ; preds = %.lr.ph131.i.epil.preheader, %GetASN_StoreData.exit.loopexit544.unr-lcssa, %.lr.ph133.i.epil.preheader, %GetASN_StoreData.exit.loopexit.unr-lcssa, %bb.bz, %GetOID.exit.thread.i, %bb.bu, %bb.bs, %bb.bo, %bb.bk, %bb.bi, %bb.bg, %._crit_edge.i202, %bb.aw
  %i.oa = add i32 %.1, %.0236                     ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !155 ; 2 uses
  %i.od = icmp ugt i8 %i.oc, 1
  br i1 %i.od, label %.preheader265, label %.loopexit264

.preheader265:                                    ; preds = %GetASN_StoreData.exit
  %.1150308 = add nsw i32 %.1153322, 1            ; 2 uses
  %i.oe = icmp slt i32 %.1150308, %2
  br i1 %i.oe, label %.lr.ph, label %.loopexit264

.lr.ph:                                           ; preds = %.preheader265
  %i.of = load i8, ptr %i.p, align 1, !tbaa !24
  %i.og = sext i32 %.1150308 to i64
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph, %bb.cc
  %indvars.iv = phi i64 [ %i.og, %.lr.ph ], [ %indvars.iv.next, %bb.cc ] ; 3 uses
  %.1150.in309 = phi i32 [ %.1153322, %.lr.ph ], [ %i.ol, %bb.cc ]
  %i.oh = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !24
  %.not184 = icmp ugt i8 %i.oi, %i.of
  br i1 %.not184, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 3
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !155
  %.not185 = icmp eq i8 %i.ok, %i.oc
  br i1 %.not185, label %bb.cc, label %.loopexit264

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ol = trunc nsw i64 %indvars.iv to i32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %.loopexit264, label %bb.ca, !llvm.loop !152

..loopexit264.loopexit_crit_edge:                 ; preds = %.lr.ph540
  br label %.loopexit264, !llvm.loop !147

..loopexit264.loopexit_crit_edge541:              ; preds = %bb.i
  %i.om = trunc nsw i64 %indvars.iv387539 to i32
  br label %.loopexit264

.loopexit264:                                     ; preds = %bb.cb, %bb.cc, %.lr.ph316, %..loopexit264.loopexit_crit_edge, %..loopexit264.loopexit_crit_edge541, %.preheader265, %.preheader263, %GetASN_StoreData.exit, %bb.av
  %.2234 = phi i32 [ %i.oa, %GetASN_StoreData.exit ], [ %.1, %bb.av ], [ %.0321, %.preheader263 ], [ %.0321, %.lr.ph316 ], [ %i.oa, %.preheader265 ], [ %.0321, %..loopexit264.loopexit_crit_edge541 ], [ %.0321, %..loopexit264.loopexit_crit_edge ], [ %i.oa, %bb.cc ], [ %i.oa, %bb.cb ] ; 4 uses
  %.2154 = phi i32 [ %.1153322, %GetASN_StoreData.exit ], [ %.1153322, %bb.av ], [ %.1153322, %.preheader263 ], [ %.1153322, %.lr.ph316 ], [ %.1153322, %.preheader265 ], [ %i.om, %..loopexit264.loopexit_crit_edge541 ], [ %i.l, %..loopexit264.loopexit_crit_edge ], [ %.1150.in309, %bb.cb ], [ %i.l, %bb.cc ]
  %i.on = add nsw i32 %.2154, 1                   ; 2 uses
  %i.oo = icmp slt i32 %i.on, %2
  br i1 %i.oo, label %.lr.ph325, label %._crit_edge, !llvm.loop !153

._crit_edge:                                      ; preds = %.loopexit264
  %.not = icmp ne i32 %3, 0
  %i.op = icmp samesign ult i32 %.0145324, %i.r
  %or.cond = select i1 %.not, i1 %i.op, i1 false
  br i1 %or.cond, label %.lr.ph330.preheader, label %.loopexit

.lr.ph330.preheader:                              ; preds = %._crit_edge
  %7 = zext nneg i8 %i.q to i64
  %8 = zext nneg i32 %spec.select to i64
  br label %.lr.ph330

bb.cd:                                            ; preds = %.lr.ph330
  %indvars.iv.next392 = add nsw i64 %indvars.iv391, -1 ; 2 uses
  %i.oq = icmp sgt i64 %indvars.iv.next392, %8
  br i1 %i.oq, label %.lr.ph330, label %.loopexit, !llvm.loop !154

.lr.ph330:                                        ; preds = %.lr.ph330.preheader, %bb.cd
  %indvars.iv391 = phi i64 [ %7, %.lr.ph330.preheader ], [ %indvars.iv.next392, %bb.cd ] ; 2 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv391
  %i.os = load i32, ptr %i.or, align 4, !tbaa !26
  %i.ot = icmp ult i32 %.2234, %i.os
  br i1 %i.ot, label %GetLength_ex.exit.thread, label %bb.cd

.loopexit:                                        ; preds = %bb.cd, %bb.a, %._crit_edge
  %.0.lcssa428 = phi i32 [ %i.d, %bb.a ], [ %.2234, %._crit_edge ], [ %.2234, %bb.cd ]
  %i.ou = load i8, ptr %i.c, align 2, !tbaa !15
  %i.ov = icmp eq i8 %i.ou, 0
  %i.ow = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ox = load i8, ptr %i.ow, align 1
  %i.oy = icmp eq i8 %i.ox, 0
  %or.cond478 = select i1 %i.ov, i1 true, i1 %i.oy
  br i1 %or.cond478, label %GetLength_ex.exit.thread, label %bb.ce

bb.ce:                                            ; preds = %.loopexit
  store i32 %.0.lcssa428, ptr %5, align 4, !tbaa !26
  br label %GetLength_ex.exit.thread

GetLength_ex.exit.thread:                         ; preds = %.preheader.i200, %bb.br, %bb.bq, %bb.bt, %bb.bj, %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.bc, %bb.bb, %bb.az, %bb.ay, %bb.ax, %bb.at, %bb.au, %bb.ag, %bb.ae, %bb.af, %bb.ad, %bb.aa, %bb.x, %bb.ac, %.thread69.i, %bb.s, %._crit_edge.i, %bb.t, %bb.m, %bb.q, %GetLength_ex.exit, %.lr.ph325, %bb.l, %bb.al, %bb.bm, %bb.ar, %.lr.ph.preheader.i195, %.lr.ph.i196.1, %bb.ao, %.lr.ph.i196.2, %bb.aq, %.lr.ph330, %.loopexit, %bb.j, %bb.bl, %GetOID.exit.i, %bb.k, %bb.ce
  %.4 = phi i32 [ 0, %bb.ce ], [ -142, %bb.bl ], [ %.mux, %bb.j ], [ -148, %GetOID.exit.i ], [ %switch.select189, %bb.k ], [ -140, %bb.al ], [ -140, %bb.ar ], [ -140, %bb.bm ], [ -140, %.loopexit ], [ -140, %.lr.ph330 ], [ -140, %bb.aq ], [ -140, %.lr.ph.i196.2 ], [ -140, %bb.ao ], [ -140, %.lr.ph.i196.1 ], [ -140, %.lr.ph.preheader.i195 ], [ -140, %bb.az ], [ -146, %bb.bb ], [ -140, %bb.bc ], [ -146, %bb.be ], [ -132, %bb.bf ], [ -140, %bb.bh ], [ -140, %bb.bi ], [ -110, %bb.bj ], [ -146, %bb.bt ], [ -140, %bb.bq ], [ -192, %bb.br ], [ -140, %.preheader.i200 ], [ -140, %bb.au ], [ -146, %bb.ay ], [ -140, %bb.ae ], [ -140, %bb.af ], [ -140, %bb.x ], [ -140, %bb.aa ], [ -146, %bb.ad ], [ -140, %bb.s ], [ -140, %._crit_edge.i ], [ -140, %bb.t ], [ -140, %bb.m ], [ -140, %bb.q ], [ -140, %bb.l ], [ -140, %bb.ag ], [ -146, %bb.ac ], [ -140, %.thread69.i ], [ -140, %GetLength_ex.exit ], [ -140, %bb.at ], [ -140, %.lr.ph325 ], [ -140, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -140, -2147483648) i32 @GetLength_ex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !26     ; 2 uses
  store i32 0, ptr %2, align 4, !tbaa !26
  %i.b = add i32 %i.a, 1                          ; 7 uses
  %i.c = icmp ugt i32 %i.b, %3
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %i.a to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15    ; 3 uses
  %i.g = zext i8 %i.f to i32                      ; 4 uses
  %i.h = icmp slt i8 %i.f, 0
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %i.g, 127                        ; 7 uses
  %i.j = icmp eq i8 %i.f, -128
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %i.i, 1
  br i1 %i.k, label %.thread69, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i32 %i.i, 4
  br i1 %i.l, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = shl nuw nsw i32 %i.i, 3
  %i.n = add nsw i32 %i.m, -8
  %i.o = shl nuw nsw i32 1, %i.n
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.0 = phi i32 [ %i.o, %bb.f ], [ 0, %bb.c ]     ; 2 uses
  %i.p = add i32 %i.i, %i.b                       ; 2 uses
  %i.q = icmp ugt i32 %i.p, %3
  br i1 %i.q, label %.thread, label %.preheader

.thread69:                                        ; preds = %bb.d
  %i.r = add i32 %i.i, %i.b                       ; 2 uses
  %i.s = icmp ugt i32 %i.r, %3
  br i1 %i.s, label %.thread, label %.lr.ph.preheader

.preheader:                                       ; preds = %bb.g
  %.not58 = icmp eq i32 %i.i, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread69, %.preheader
  %.07174 = phi i32 [ %.0, %.preheader ], [ 128, %.thread69 ] ; 2 uses
  %i.t = phi i32 [ %i.p, %.preheader ], [ %i.r, %.thread69 ] ; 2 uses
  %i.u = add nsw i32 %i.i, -1
  %xtraiter = and i32 %i.g, 3                     ; 3 uses
  %i.v = icmp ult i32 %i.u, 3
  br i1 %i.v, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.g, 124
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03760 = phi i32 [ %i.b, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.w = add i32 %.03760, 4                       ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !0

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.x = zext i32 %.03760 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !15
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 16
  %i.ac = add i32 %.03760, 1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = or disjoint i32 %i.ab, %i.ah
  %i.aj = add i32 %.03760, 2
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ai, %i.an
  %i.ap = shl nuw i32 %i.ao, 8
  %i.aq = add i32 %.03760, 3
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !15
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.ap, %i.au            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03760.epil.init = phi i32 [ %i.b, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %.03859.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod77 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod77)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.03760.epil = phi i32 [ %i.aw, %.lr.ph.epil ], [ %.03760.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.03859.epil = phi i32 [ %i.bc, %.lr.ph.epil ], [ %.03859.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.aw = add i32 %.03760.epil, 1
  %i.ax = zext i32 %.03760.epil to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !15
  %i.ba = shl i32 %.03859.epil, 8
  %i.bb = zext i8 %i.az to i32
  %i.bc = or disjoint i32 %i.ba, %i.bb            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !156

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.07175 = phi i32 [ %.0, %.preheader ], [ %.07174, %.lr.ph.epil ], [ %.07174, %._crit_edge.loopexit.unr-lcssa ]
  %.038.lcssa = phi i32 [ 0, %.preheader ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ], [ %i.bc, %.lr.ph.epil ] ; 3 uses
  %.037.lcssa = phi i32 [ %i.b, %.preheader ], [ %i.t, %.lr.ph.epil ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ]
  %.not48 = icmp sgt i32 %.038.lcssa, -1
  %i.bd = icmp uge i32 %.038.lcssa, %.07175
  %or.cond57 = select i1 %.not48, i1 %i.bd, i1 false
  br i1 %or.cond57, label %bb.h, label %.thread

bb.h:                                             ; preds = %._crit_edge, %bb.b
  %.240 = phi i32 [ %.038.lcssa, %._crit_edge ], [ %i.g, %bb.b ] ; 4 uses
  %.2 = phi i32 [ %.037.lcssa, %._crit_edge ], [ %i.b, %bb.b ] ; 2 uses
  %.not49 = icmp ne i32 %4, 0
  %i.be = add i32 %.2, %.240
  %i.bf = icmp ugt i32 %i.be, %3
  %or.cond = and i1 %.not49, %i.bf
  br i1 %or.cond, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %.2, ptr %1, align 4, !tbaa !26
  %.not50 = icmp eq i32 %.240, 0
  br i1 %.not50, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %.240, ptr %2, align 4, !tbaa !26
  br label %.thread

.thread:                                          ; preds = %.thread69, %._crit_edge, %bb.g, %bb.e, %bb.i, %bb.j, %bb.h, %bb.a
  %.142 = phi i32 [ -140, %bb.e ], [ -132, %bb.a ], [ -132, %bb.h ], [ %.240, %bb.j ], [ 0, %bb.i ], [ -140, %._crit_edge ], [ -132, %bb.g ], [ -132, %.thread69 ]
  ret i32 %.142
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -140, -2147483648) i32 @GetLength(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !26     ; 3 uses
  store i32 0, ptr %2, align 4, !tbaa !26
  %i.b = add i32 %i.a, 1                          ; 6 uses
  %i.c = icmp ugt i32 %i.b, %3
  br i1 %i.c, label %GetLength_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %i.a to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15    ; 3 uses
  %i.g = zext i8 %i.f to i32                      ; 4 uses
  %i.h = icmp slt i8 %i.f, 0
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@wolfssl_local_MatchUriNameConstraint:bb.a

.lr.ph126.preheader:                              ; preds = %bb.i
  %i.ac = add i64 %i.a, %i.f
  %i.ad = sub i64 %i.ac, %.177139
  %scevgep141 = getelementptr i8, ptr %.177, i64 %i.ad
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %bb.j
  %.078125 = phi ptr [ %i.af, %bb.j ], [ %i.aa, %.lr.ph126.preheader ] ; 3 uses
  %i.ae = load i8, ptr %.078125, align 1, !tbaa !15
  %.not96 = icmp eq i8 %i.ae, 93
  br i1 %.not96, label %.critedge7, label %bb.j

bb.j:                                             ; preds = %.lr.ph126
  %i.af = getelementptr inbounds nuw i8, ptr %.078125, i64 1 ; 2 uses
  %exitcond142.not = icmp eq ptr %i.af, %scevgep141
  br i1 %exitcond142.not, label %.critedge, label %.lr.ph126, !llvm.loop !232

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %bb.k
  %.179115 = phi ptr [ %i.ah, %bb.k ], [ %.177, %.lr.ph116.preheader ] ; 6 uses
  %i.ag = load i8, ptr %.179115, align 1, !tbaa !15
  switch i8 %i.ag, label %bb.k [
    i8 58, label %.critedge7
    i8 47, label %.critedge7
    i8 63, label %.critedge7
    i8 35, label %.critedge7
  ]

bb.k:                                             ; preds = %.lr.ph116
  %i.ah = getelementptr inbounds nuw i8, ptr %.179115, i64 1 ; 2 uses
  %exitcond140.not = icmp eq ptr %i.ah, %scevgep
  br i1 %exitcond140.not, label %.critedge7, label %.lr.ph116, !llvm.loop !233

.critedge7:                                       ; preds = %.lr.ph116, %.lr.ph116, %.lr.ph116, %.lr.ph116, %bb.k, %.lr.ph126
  %.179.lcssa.ph.sink = phi ptr [ %.078125, %.lr.ph126 ], [ %scevgep, %bb.k ], [ %.179115, %.lr.ph116 ], [ %.179115, %.lr.ph116 ], [ %.179115, %.lr.ph116 ], [ %.179115, %.lr.ph116 ]
  %.177.sink = phi ptr [ %i.aa, %.lr.ph126 ], [ %.177, %bb.k ], [ %.177, %.lr.ph116 ], [ %.177, %.lr.ph116 ], [ %.177, %.lr.ph116 ], [ %.177, %.lr.ph116 ] ; 5 uses
  %i.ai = ptrtoint ptr %.179.lcssa.ph.sink to i64
  %i.aj = ptrtoint ptr %.177.sink to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %.083 = trunc i64 %i.ak to i32                  ; 3 uses
  %i.al = icmp slt i32 %.083, 1
  br i1 %i.al, label %.critedge, label %bb.l

bb.l:                                             ; preds = %.critedge7
  %i.am = load i8, ptr %2, align 1, !tbaa !15
  %i.an = icmp eq i8 %i.am, 46
  br i1 %i.an, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ao = load i8, ptr %.177.sink, align 1, !tbaa !15
  %i.ap = icmp eq i8 %i.ao, 46
  br i1 %i.ap, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = and i64 %i.ak, 2147483647
  %i.ar = getelementptr i8, ptr %.177.sink, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !15
  %i.au = icmp eq i8 %i.at, 46
  %i.av = sext i1 %i.au to i32
  %spec.select.i = add nsw i32 %i.av, %.083       ; 3 uses
  %i.aw = zext nneg i32 %3 to i64
  %i.ax = getelementptr i8, ptr %2, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !15
  %i.ba = icmp eq i8 %i.az, 46
  %i.bb = sext i1 %i.ba to i32
  %.0113.i = add nsw i32 %3, %i.bb                ; 4 uses
  %i.bc = icmp eq i32 %spec.select.i, 0
  %i.bd = icmp eq i32 %.0113.i, 0
  %or.cond11.i = select i1 %i.bc, i1 true, i1 %i.bd
  %i.be = icmp samesign ult i32 %spec.select.i, %.0113.i
  %or.cond169.i = select i1 %or.cond11.i, i1 true, i1 %i.be
  br i1 %or.cond169.i, label %.critedge, label %.thread146.i

.thread146.i:                                     ; preds = %bb.n
  %i.bf = sub nuw nsw i32 %spec.select.i, %.0113.i
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.177.sink, i64 %i.bg
  %i.bi = tail call ptr @__ctype_tolower_loc() #26
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !111 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.thread146.i
  %.5185.i = phi ptr [ %i.bh, %.thread146.i ], [ %i.bs, %bb.p ] ; 2 uses
  %.7184.i = phi i32 [ %.0113.i, %.thread146.i ], [ %i.bu, %bb.p ] ; 2 uses
  %.0103183.i = phi ptr [ %2, %.thread146.i ], [ %i.bt, %bb.p ] ; 2 uses
  %i.bk = load i8, ptr %.5185.i, align 1, !tbaa !15
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !26
  %i.bo = load i8, ptr %.0103183.i, align 1, !tbaa !15
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !26
  %.not124.i = icmp eq i32 %i.bn, %i.br
  br i1 %.not124.i, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.5185.i, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.0103183.i, i64 1
  %i.bu = add nsw i32 %.7184.i, -1
  %i.bv = icmp sgt i32 %.7184.i, 1
  br i1 %i.bv, label %bb.o, label %.critedge, !llvm.loop !5

bb.q:                                             ; preds = %bb.l
  %.not98 = icmp eq i32 %3, %.083
  br i1 %.not98, label %.lr.ph128, label %.critedge

.lr.ph128:                                        ; preds = %bb.q
  %i.bw = tail call ptr @__ctype_tolower_loc() #26
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !111 ; 2 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond144.not, label %.critedge, label %bb.s, !llvm.loop !234

bb.s:                                             ; preds = %.lr.ph128, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.177.sink, i64 %indvars.iv
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !15
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !26
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !15
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !26
  %.not99 = icmp eq i32 %i.cc, %i.ch
  br i1 %.not99, label %bb.r, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.j, %bb.r, %bb.s, %bb.p, %bb.o, %bb.i, %bb.n, %bb.m, %bb.q, %.critedge7, %.loopexit, %bb.e, %bb.a
  %.1 = phi i32 [ 0, %.critedge7 ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %.loopexit ], [ 0, %bb.n ], [ 0, %bb.s ], [ 0, %bb.m ], [ 0, %bb.q ], [ 0, %bb.i ], [ 0, %bb.j ], [ 1, %bb.p ], [ 0, %bb.o ], [ 1, %bb.r ], [ 0, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @wolfssl_local_MatchDnsConstraintWildcard(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp slt i32 %1, 1
  %or.cond3 = or i1 %i.c, %or.cond
  %i.d = icmp slt i32 %3, 1
  %or.cond5 = or i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15
  %i.i = icmp eq i8 %i.h, 46
  %i.j = sext i1 %i.i to i32
  %spec.select = add nsw i32 %1, %i.j             ; 2 uses
  %i.k = zext nneg i32 %3 to i64
  %i.l = getelementptr i8, ptr %2, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %i.o = icmp eq i8 %i.n, 46
  %i.p = sext i1 %i.o to i32
  %.061 = add nsw i32 %3, %i.p                    ; 2 uses
  %i.q = icmp eq i32 %spec.select, 0
  %i.r = icmp eq i32 %.061, 0
  %or.cond7 = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond7, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i8, ptr %0, align 1, !tbaa !15
  %i.t = icmp eq i8 %i.s, 46
  br i1 %i.t, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i8, ptr %2, align 1, !tbaa !15
  %i.v = icmp eq i8 %i.u, 46                      ; 3 uses
  %i.w = sext i1 %i.v to i32
  %.162 = add nsw i32 %.061, %i.w                 ; 2 uses
  %.060.idx = zext i1 %i.v to i64
  %.060 = getelementptr inbounds nuw i8, ptr %2, i64 %.060.idx ; 3 uses
  %i.x = icmp eq i32 %.162, 0
  br i1 %i.x, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i8, ptr %.060, align 1, !tbaa !15
  %i.z = icmp eq i8 %i.y, 46
  br i1 %i.z, label %.critedge, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.e
  %.not77 = icmp eq i32 %4, 0
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph98, %.loopexit
  %.06597 = phi i32 [ %.162, %.lr.ph98 ], [ %i.bb, %.loopexit ] ; 3 uses
  %.06796 = phi i32 [ %spec.select, %.lr.ph98 ], [ %i.ba, %.loopexit ] ; 4 uses
  %i.aa = icmp slt i32 %.06796, 1
  br i1 %i.aa, label %.critedge, label %5

5:                                                ; preds = %bb.f
  %6 = zext nneg i32 %.06796 to i64
  br label %.preheader90

.preheader90:                                     ; preds = %bb.h, %5
  %indvars.iv.i = phi i64 [ %6, %5 ], [ %indvars.iv.next.i, %bb.h ] ; 4 uses
  %.01115.i = phi i32 [ 0, %5 ], [ %.1.i, %bb.h ] ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !15
  switch i8 %i.ad, label %bb.h [
    i8 46, label %.critedge.split.loop.exit.i
    i8 42, label %bb.g
  ]

bb.g:                                             ; preds = %.preheader90
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader90
  %.1.i = phi i32 [ 1, %bb.g ], [ %.01115.i, %.preheader90 ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ae = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.ae, label %.preheader90, label %PrevDnsLabel.exit, !llvm.loop !235

.critedge.split.loop.exit.i:                      ; preds = %.preheader90
  %7 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %PrevDnsLabel.exit

PrevDnsLabel.exit:                                ; preds = %bb.h, %.critedge.split.loop.exit.i
  %.011.lcssa.i = phi i32 [ %7, %.critedge.split.loop.exit.i ], [ 0, %bb.h ] ; 5 uses
  %.0.lcssa.i = phi i32 [ %.01115.i, %.critedge.split.loop.exit.i ], [ %.1.i, %bb.h ]
  %8 = zext nneg i32 %.06597 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %PrevDnsLabel.exit
  %indvars.iv.i78 = phi i64 [ %8, %PrevDnsLabel.exit ], [ %indvars.iv.next.i81, %bb.j ] ; 4 uses
  %i.af = getelementptr i8, ptr %.060, i64 %indvars.iv.i78
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !15
  %cond = icmp eq i8 %i.ah, 46
  br i1 %cond, label %.critedge.split.loop.exit.i84, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next.i81 = add nsw i64 %indvars.iv.i78, -1
  %i.ai = icmp sgt i64 %indvars.iv.i78, 1
  br i1 %i.ai, label %bb.i, label %PrevDnsLabel.exit83, !llvm.loop !235

.critedge.split.loop.exit.i84:                    ; preds = %bb.i
  %9 = trunc nuw nsw i64 %indvars.iv.i78 to i32
  br label %PrevDnsLabel.exit83

PrevDnsLabel.exit83:                              ; preds = %bb.j, %.critedge.split.loop.exit.i84
  %.011.lcssa.i81 = phi i32 [ %9, %.critedge.split.loop.exit.i84 ], [ 0, %bb.j ] ; 5 uses
  %i.aj = sub nsw i32 %.06796, %.011.lcssa.i      ; 3 uses
  %i.ak = sub i32 %.06597, %.011.lcssa.i81
  %i.al = icmp eq i32 %.06796, %.011.lcssa.i
  %i.am = icmp eq i32 %.06597, %.011.lcssa.i81
  %or.cond9 = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond9, label %.critedge, label %bb.k

bb.k:                                             ; preds = %PrevDnsLabel.exit83
  %.not = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not77, label %.loopexit, label %.critedge

bb.m:                                             ; preds = %bb.k
  %.not75 = icmp eq i32 %i.aj, %i.ak
  br i1 %.not75, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.m
  %i.an = icmp sgt i32 %i.aj, 0
  br i1 %i.an, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ao = tail call ptr @__ctype_tolower_loc() #26
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !111 ; 2 uses
  %i.aq = sext i32 %.011.lcssa.i to i64
  %i.ar = sext i32 %.011.lcssa.i81 to i64
  %wide.trip.count = zext nneg i32 %i.aj to i64
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.aq
  %invariant.gep107 = getelementptr i8, ptr %.060, i64 %i.ar
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.o, !llvm.loop !236

bb.o:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.as = load i8, ptr %gep, align 1, !tbaa !15
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !26
  %gep108 = getelementptr i8, ptr %invariant.gep107, i64 %indvars.iv
  %i.aw = load i8, ptr %gep108, align 1, !tbaa !15
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !26
  %.not76 = icmp eq i32 %i.av, %i.az
  br i1 %.not76, label %bb.n, label %.critedge

.loopexit:                                        ; preds = %bb.n, %.preheader, %bb.l
  %i.ba = add nsw i32 %.011.lcssa.i, -1
  %i.bb = add nsw i32 %.011.lcssa.i81, -1
  %i.bc = icmp sgt i32 %.011.lcssa.i81, 1
  br i1 %i.bc, label %bb.f, label %._crit_edge, !llvm.loop !237

._crit_edge:                                      ; preds = %.loopexit
  %i.bd = icmp sgt i32 %.011.lcssa.i, 0
  %not. = xor i1 %i.v, true
  %or.cond11 = select i1 %not., i1 true, i1 %i.bd
  %. = zext i1 %or.cond11 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.f, %PrevDnsLabel.exit83, %bb.l, %bb.o, %._crit_edge, %bb.d, %bb.e, %bb.b, %bb.c, %bb.a
  %.2 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ %., %._crit_edge ], [ 0, %bb.c ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %PrevDnsLabel.exit83 ], [ 0, %bb.f ], [ 0, %bb.m ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @wolfssl_local_MatchIpSubnet(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond.not39 = and i1 %i.a, %i.b
  %i.c = icmp sgt i32 %1, 0
  %or.cond3.not36 = and i1 %i.c, %or.cond.not39
  %i.d = icmp sgt i32 %3, 0
  %or.cond5.not34 = and i1 %i.d, %or.cond3.not36
  %i.e = shl nuw nsw i32 %1, 1
  %.not = icmp eq i32 %3, %i.e
  %or.cond32 = select i1 %or.cond5.not34, i1 %.not, i1 false
  br i1 %or.cond32, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %i.f = zext nneg i32 %1 to i64                  ; 4 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %2, i64 %i.f ; 2 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.preheader.preheader52, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.f, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi45 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %wide.load = load <4 x i8>, ptr %i.g, align 1, !tbaa !15
  %wide.load46 = load <4 x i8>, ptr %i.h, align 1, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %wide.load47 = load <4 x i8>, ptr %i.i, align 1, !tbaa !15
  %wide.load48 = load <4 x i8>, ptr %i.j, align 1, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %wide.load49 = load <4 x i8>, ptr %i.k, align 1, !tbaa !15
  %wide.load50 = load <4 x i8>, ptr %i.l, align 1, !tbaa !15
  %i.m = xor <4 x i8> %wide.load49, %wide.load
  %i.n = xor <4 x i8> %wide.load50, %wide.load46
  %i.o = and <4 x i8> %i.m, %wide.load47
  %i.p = and <4 x i8> %i.n, %wide.load48
  %i.q = icmp ne <4 x i8> %i.o, zeroinitializer
  %i.r = icmp ne <4 x i8> %i.p, zeroinitializer
  %i.s = or <4 x i1> %vec.phi, %i.q               ; 2 uses
  %i.t = or <4 x i1> %vec.phi45, %i.r             ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.t, %i.s
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.v = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not51 = icmp eq i4 %i.v, 0
  %rdx.select = zext i1 %.not51 to i32            ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader52

.preheader.preheader52:                           ; preds = %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.041.ph = phi i32 [ 1, %.preheader.preheader ], [ %rdx.select, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader52, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader52 ] ; 4 uses
  %.041 = phi i32 [ %spec.select, %.preheader ], [ %.041.ph, %.preheader.preheader52 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.y = load i8, ptr %gep, align 1, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !15
  %i.ab = xor i8 %i.aa, %i.x
  %i.ac = and i8 %i.ab, %i.y
  %.not31 = icmp eq i8 %i.ac, 0
  %spec.select = select i1 %.not31, i32 %.041, i32 0 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !239

.loopexit:                                        ; preds = %.preheader, %middle.block, %bb.a
  %.026 = phi i32 [ 0, %bb.a ], [ %rdx.select, %middle.block ], [ %spec.select, %.preheader ]
  ret i32 %.026
}

; Function Attrs: nounwind uwtable
define range(i32 -192, 1) i32 @DecodeBasicCaConstraint(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca [3 x %struct.ASNGetData], align 16  ; 10 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i8 0, ptr %i.b, align 1, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %5, i8 0, i64 120, i1 false)
  store ptr %i.b, ptr %i.c, align 16, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i8 2, ptr %i.d, align 16, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr %3, ptr %i.e, align 8, !tbaa !15
  %i.f = call i32 @GetASN_Items(ptr noundef nonnull @basicConsASN, ptr noundef nonnull %5, i32 noundef 3, i32 noundef 1, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %1) ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp ne i32 %i.i, 0
  %or.cond = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %.thread23

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !30
  %i.m = icmp eq i32 %i.l, 0
  %i.n = load i8, ptr %i.b, align 1
  %i.o = icmp ne i8 %i.n, 0                       ; 2 uses
  %or.cond5 = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond5, label %bb.c, label %.thread23

bb.c:                                             ; preds = %bb.b
  %i.p = load i16, ptr %3, align 2, !tbaa !34
  %i.q = icmp ugt i16 %i.p, 127
  br i1 %i.q, label %.thread23, label %.thread.thread

.thread.thread:                                   ; preds = %bb.c
  %i.r = zext i1 %i.o to i8
  store i8 %i.r, ptr %2, align 1, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !30
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %4, align 1, !tbaa !15
  br label %.thread23

.thread23:                                        ; preds = %bb.b, %bb.c, %bb.a, %.thread.thread
  %.4 = phi i32 [ 0, %.thread.thread ], [ -140, %bb.c ], [ %i.f, %bb.a ], [ -140, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define range(i32 -192, 1) i32 @DecodeAuthKeyId(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7) local_unnamed_addr #3 {
bb.a:
  %8 = alloca [4 x %struct.ASNGetData], align 16  ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.b = icmp ne ptr %2, null                     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp ne ptr %3, null                     ; 2 uses
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %3, align 4, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %4, align 8, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not36 = icmp eq ptr %5, null
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %5, align 4, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not37 = icmp eq ptr %6, null
  br i1 %.not37, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %6, align 8, !tbaa !37
  br label %bb.k

end_hunk_2
