Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/asn?download=true
inline.NumInlined: 284
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 75
begin_hunk_0_@SetASN_Items:bb.a

bb.aa:                                            ; preds = %bb.z
  %i.ej = load i8, ptr %i.eh, align 1, !tbaa !15
  %.not132 = icmp sgt i8 %i.ej, -1
  br i1 %.not132, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.aa
  %i.ek = add i32 %i.eg, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.x, %bb.ab, %bb.aa, %bb.y
  %.0 = phi i32 [ %i.ek, %bb.ab ], [ %i.eg, %bb.aa ], [ %i.eg, %bb.x ], [ %i.eg, %bb.y ] ; 7 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 5 uses
  %i.em = icmp ult i32 %.0, 128
  br i1 %i.em, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread180, %bb.ac
  %i.en = phi ptr [ %i.ei, %.thread180 ], [ %i.el, %bb.ac ]
  %.0182 = phi i32 [ 0, %.thread180 ], [ %.0, %bb.ac ]
  %i.eo = trunc nuw nsw i32 %.0182 to i8
  store i8 %i.eo, ptr %i.en, align 1, !tbaa !15
  br label %SetASNLength.exit177

bb.ae:                                            ; preds = %bb.ac
  %.not5.i.i166 = icmp ult i32 %.0, 16777216
  br i1 %.not5.i.i166, label %bb.af, label %BytePrecision.exit.i167

bb.af:                                            ; preds = %bb.ae
  %.not5.1.i.i174 = icmp samesign ult i32 %.0, 65536
  br i1 %.not5.1.i.i174, label %bb.ah, label %bb.ag

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
  %7 = alloca [2 x i8], align 2                   ; 7 uses
  %i.c = load i32, ptr %5, align 4, !tbaa !26     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i16 -1, ptr %7, align 2
  %i.d = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.e = shufflevector <4 x i32> %i.d, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i32> %i.e, ptr %i.b, align 16, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x i32> %i.e, ptr %i.f, align 16, !tbaa !26
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph325.preheader, label %.loopexit

.lr.ph325.preheader:                              ; preds = %bb.a
  %i.h = load i8, ptr %0, align 1, !tbaa !24
  %i.i = zext i8 %i.h to i32
  %i.j = zext nneg i32 %2 to i64                  ; 2 uses
  %i.k = add nsw i32 %2, -1                       ; 2 uses
  br label %.lr.ph325

.lr.ph325:                                        ; preds = %.lr.ph325.preheader, %.loopexit264
  %.0145324 = phi i32 [ %spec.select, %.loopexit264 ], [ %i.i, %.lr.ph325.preheader ] ; 2 uses
  %.0147323 = phi i32 [ %.2, %.loopexit264 ], [ 0, %.lr.ph325.preheader ] ; 3 uses
  %.1153322 = phi i32 [ %i.of, %.loopexit264 ], [ 0, %.lr.ph325.preheader ] ; 9 uses
  %.0321 = phi i32 [ %.2234, %.loopexit264 ], [ %i.c, %.lr.ph325.preheader ] ; 12 uses
  %i.l = sext i32 %.1153322 to i64                ; 2 uses
  %i.m = getelementptr inbounds [40 x i8], ptr %1, i64 %i.l ; 26 uses
  store i32 %.0321, ptr %i.m, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !30
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.l ; 11 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !24    ; 4 uses
  %i.q = zext i8 %i.p to i32                      ; 3 uses
  %i.r = icmp ugt i8 %i.p, 7
  br i1 %i.r, label %GetLength_ex.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph325
  %spec.select = call i32 @llvm.umin.i32(i32 %.0145324, i32 %i.q) ; 2 uses
  %i.s = icmp sgt i32 %.0147323, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !155   ; 3 uses
  %i.v = zext i8 %i.u to i32                      ; 3 uses
  %.not173 = icmp eq i32 %.0147323, %i.v
  %or.cond475 = select i1 %i.s, i1 %.not173, i1 false
  br i1 %or.cond475, label %bb.e, label %._crit_edge394

._crit_edge394:                                   ; preds = %bb.b
  %i.w = icmp ugt i8 %i.u, 1
  br i1 %i.w, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge394
  %8 = zext i8 %i.u to i64
  %9 = getelementptr i8, ptr %7, i64 %8
  %10 = getelementptr i8, ptr %9, i64 -2          ; 2 uses
  %11 = load i8, ptr %10, align 1, !tbaa !15
  fence seq_cst
  %i.x = icmp eq i8 %11, -1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %10, align 1, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %._crit_edge394
  %.2 = phi i32 [ %i.v, %bb.d ], [ %i.v, %bb.c ], [ 0, %._crit_edge394 ], [ %.0147323, %bb.b ] ; 3 uses
  %i.y = zext nneg i8 %i.p to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !26  ; 5 uses
  fence seq_cst
  %i.ab = icmp eq i32 %.0321, %i.aa               ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !31
  %.not174 = icmp eq i8 %i.ad, 11
  %.phi.trans.insert396 = zext i32 %.0321 to i64  ; 2 uses
  %.phi.trans.insert397 = getelementptr inbounds nuw i8, ptr %4, i64 %.phi.trans.insert396
  %.pre398 = load i8, ptr %.phi.trans.insert397, align 1, !tbaa !15 ; 2 uses
  br i1 %.not174, label %._crit_edge395, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = and i8 %.pre398, -33
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !23
  %.not175 = icmp eq i8 %i.ae, %i.ag
  br i1 %.not175, label %._crit_edge395, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !155
  %.not186 = icmp eq i8 %i.ai, 0
  br i1 %.not186, label %bb.j, label %.preheader263

.preheader263:                                    ; preds = %bb.h
  %.0149313 = add nsw i32 %.1153322, 1            ; 2 uses
  %i.aj = icmp slt i32 %.0149313, %2
  br i1 %i.aj, label %.lr.ph316, label %.loopexit264

.lr.ph316:                                        ; preds = %.preheader263
  %i.ak = load i8, ptr %i.o, align 1, !tbaa !24   ; 2 uses
  %i.al = sext i32 %.0149313 to i64               ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !24
  %.not187538 = icmp ult i8 %i.ak, %i.an
  br i1 %.not187538, label %.lr.ph540, label %.loopexit264

bb.i:                                             ; preds = %.lr.ph540
  %i.ao = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next388
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !24
  %.not187 = icmp ult i8 %i.ak, %i.ap
  br i1 %.not187, label %.lr.ph540, label %..loopexit264.loopexit_crit_edge541, !llvm.loop !147

.lr.ph540:                                        ; preds = %.lr.ph316, %bb.i
  %indvars.iv387539 = phi i64 [ %indvars.iv.next388, %bb.i ], [ %i.al, %.lr.ph316 ] ; 3 uses
  %i.aq = getelementptr inbounds [40 x i8], ptr %1, i64 %indvars.iv387539 ; 2 uses
  store i32 %.0321, ptr %i.aq, align 8, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 0, ptr %i.ar, align 4, !tbaa !30
  %indvars.iv.next388 = add nsw i64 %indvars.iv387539, 1 ; 3 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next388, %i.j
  br i1 %exitcond390.not, label %..loopexit264.loopexit_crit_edge, label %bb.i, !llvm.loop !147

bb.j:                                             ; preds = %bb.h
  %i.as = icmp eq i32 %.0321, %6                  ; 2 uses
  %brmerge = or i1 %i.as, %i.ab
  %.mux = select i1 %i.as, i32 -132, i32 -140
  br i1 %brmerge, label %GetLength_ex.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !23  ; 2 uses
  %switch.selectcmp = icmp eq i8 %i.au, 3
  %switch.select = select i1 %switch.selectcmp, i32 -147, i32 -140
  %switch.selectcmp188 = icmp eq i8 %i.au, 6
  %switch.select189 = select i1 %switch.selectcmp188, i32 -144, i32 %switch.select
  br label %GetLength_ex.exit.thread

._crit_edge395:                                   ; preds = %bb.f, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 33 ; 3 uses
  store i8 %.pre398, ptr %i.av, align 1, !tbaa !32
  fence seq_cst
  %i.aw = load i8, ptr %i.ac, align 8, !tbaa !31  ; 3 uses
  %.not176 = icmp eq i8 %i.aw, 11
  br i1 %.not176, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge395
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %.phi.trans.insert396
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15
  %i.az = lshr i8 %i.ay, 5
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = xor i8 %i.bb, %i.az
  %i.bd = and i8 %i.bc, 1
  %.not177 = icmp eq i8 %i.bd, 0
  br i1 %.not177, label %bb.m, label %GetLength_ex.exit.thread

bb.m:                                             ; preds = %bb.l, %._crit_edge395
  %i.be = add i32 %.0321, 2                       ; 6 uses
  %i.bf = icmp ugt i32 %i.be, %i.aa
  br i1 %i.bf, label %GetLength_ex.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = add i32 %.0321, 1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !15  ; 3 uses
  %i.bk = zext i8 %i.bj to i32                    ; 4 uses
  %i.bl = icmp slt i8 %i.bj, 0
  br i1 %i.bl, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.bm = and i32 %i.bk, 127                      ; 6 uses
  %i.bn = icmp eq i8 %i.bj, -128
  br i1 %i.bn, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = icmp eq i32 %i.bm, 1
  br i1 %i.bo, label %.thread69.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = icmp samesign ugt i32 %i.bm, 4
  br i1 %i.bp, label %GetLength_ex.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = shl nuw nsw i32 %i.bm, 3
  %i.br = add nsw i32 %i.bq, -8
  %i.bs = shl nuw nsw i32 1, %i.br
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.0.i = phi i32 [ %i.bs, %bb.r ], [ 0, %bb.o ]  ; 2 uses
  %i.bt = add i32 %i.bm, %i.be                    ; 2 uses
  %i.bu = icmp ugt i32 %i.bt, %i.aa
  br i1 %i.bu, label %GetLength_ex.exit.thread, label %.preheader.i

.thread69.i:                                      ; preds = %bb.p
  %i.bv = add i32 %.0321, 3                       ; 2 uses
  %i.bw = icmp ugt i32 %i.bv, %i.aa
  br i1 %i.bw, label %GetLength_ex.exit.thread, label %.lr.ph.preheader.i

.preheader.i:                                     ; preds = %bb.s
  %.not58.i = icmp eq i32 %i.bm, 0
  br i1 %.not58.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i, %.thread69.i
  %.07174.i = phi i32 [ %.0.i, %.preheader.i ], [ 128, %.thread69.i ] ; 2 uses
  %i.bx = phi i32 [ %i.bt, %.preheader.i ], [ %i.bv, %.thread69.i ] ; 2 uses
  %i.by = add nsw i32 %i.bm, -1
  %xtraiter = and i32 %i.bk, 3                    ; 3 uses
  %i.bz = icmp ult i32 %i.by, 3
  br i1 %i.bz, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i32 %i.bk, 124
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.03760.i = phi i32 [ %i.be, %.lr.ph.preheader.i.new ], [ %i.ca, %.lr.ph.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ca = add i32 %.03760.i, 4                    ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.cb = zext i32 %.03760.i to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !15
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 16
  %i.cg = add i32 %.03760.i, 1
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !15
  %i.ck = zext i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 8
  %i.cm = or disjoint i32 %i.cf, %i.cl
  %i.cn = add i32 %.03760.i, 2
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !15
  %i.cr = zext i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cm, %i.cr
  %i.ct = shl nuw i32 %i.cs, 8
  %i.cu = add i32 %.03760.i, 3
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !15
  %i.cy = zext i8 %i.cx to i32
  %i.cz = or disjoint i32 %i.ct, %i.cy            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.03760.i.epil.init = phi i32 [ %i.be, %.lr.ph.preheader.i ], [ %i.ca, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03859.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.cz, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod602 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod602)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03760.i.epil = phi i32 [ %i.da, %.lr.ph.i.epil ], [ %.03760.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.03859.i.epil = phi i32 [ %i.dg, %.lr.ph.i.epil ], [ %.03859.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.da = add i32 %.03760.i.epil, 1
  %i.db = zext i32 %.03760.i.epil to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !15
  %i.de = shl i32 %.03859.i.epil, 8
  %i.df = zext i8 %i.dd to i32
  %i.dg = or disjoint i32 %i.de, %i.df            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !148

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.preheader.i
  %.07175.i = phi i32 [ %.0.i, %.preheader.i ], [ %.07174.i, %.lr.ph.i.epil ], [ %.07174.i, %._crit_edge.i.loopexit.unr-lcssa ]
  %.038.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.cz, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.dg, %.lr.ph.i.epil ] ; 3 uses
  %.037.lcssa.i = phi i32 [ %i.be, %.preheader.i ], [ %i.bx, %.lr.ph.i.epil ], [ %i.bx, %._crit_edge.i.loopexit.unr-lcssa ]
  %.not48.i = icmp sgt i32 %.038.lcssa.i, -1
  %i.dh = icmp uge i32 %.038.lcssa.i, %.07175.i
  %or.cond57.i = select i1 %.not48.i, i1 %i.dh, i1 false
  br i1 %or.cond57.i, label %bb.t, label %GetLength_ex.exit.thread

bb.t:                                             ; preds = %._crit_edge.i, %bb.n
  %.240.i = phi i32 [ %.038.lcssa.i, %._crit_edge.i ], [ %i.bk, %bb.n ] ; 17 uses
  %.2.i = phi i32 [ %.037.lcssa.i, %._crit_edge.i ], [ %i.be, %bb.n ] ; 19 uses
  %i.di = add i32 %.2.i, %.240.i                  ; 3 uses
  %i.dj = icmp ugt i32 %i.di, %i.aa
  br i1 %i.dj, label %GetLength_ex.exit.thread, label %GetLength_ex.exit

GetLength_ex.exit:                                ; preds = %bb.t
  store i32 %.240.i, ptr %i.n, align 4, !tbaa !30
  %i.dk = icmp eq i8 %i.p, 7
  br i1 %i.dk, label %GetLength_ex.exit.thread, label %bb.u

bb.u:                                             ; preds = %GetLength_ex.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.di, ptr %i.dl, align 4, !tbaa !26
  %i.dm = icmp samesign ugt i32 %.2, 1
  br i1 %i.dm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %12 = zext nneg i32 %.2 to i64
  %13 = getelementptr i8, ptr %7, i64 %12
  %14 = getelementptr i8, ptr %13, i64 -2
  store i8 1, ptr %14, align 1, !tbaa !15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !23  ; 4 uses
  switch i8 %i.do, label %bb.ah [
    i8 2, label %bb.x
    i8 3, label %bb.ae
    i8 12, label %bb.ai
  ]

bb.x:                                             ; preds = %bb.w
  %i.dp = and i8 %i.aw, -2
  %narrow = icmp eq i8 %i.dp, 8                   ; 2 uses
  %i.dq = icmp eq i32 %.240.i, 0
  br i1 %i.dq, label %GetLength_ex.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dr = zext i32 %.2.i to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !15  ; 3 uses
  %i.du = icmp eq i8 %i.dt, 0
  %i.dv = icmp ne i32 %.240.i, 1                  ; 3 uses
  br i1 %i.du, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  br i1 %i.dv, label %bb.aa, label %GetASN_UTF8String.exit

bb.aa:                                            ; preds = %bb.z
  %i.dw = add i32 %.2.i, 1
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !15
  %i.ea = icmp sgt i8 %i.dz, -1
  br i1 %i.ea, label %GetLength_ex.exit.thread, label %GetASN_Integer.exit.thread247

bb.ab:                                            ; preds = %bb.y
  %i.eb = icmp eq i8 %i.dt, -1
  %or.cond.i = and i1 %i.dv, %i.eb
  br i1 %or.cond.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ec = add i32 %.2.i, 1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !15
  %.not.i191 = icmp slt i8 %i.ef, 0
  %or.cond21.i.not = or i1 %narrow, %.not.i191
  br i1 %or.cond21.i.not, label %GetLength_ex.exit.thread, label %GetASN_Integer.exit.thread247.thread

bb.ad:                                            ; preds = %bb.ab
  %.not17.i = icmp slt i8 %i.dt, 0
  %or.cond22.i.not = and i1 %narrow, %.not17.i
  br i1 %or.cond22.i.not, label %GetLength_ex.exit.thread, label %GetASN_Integer.exit

GetASN_Integer.exit:                              ; preds = %bb.ad
  br i1 %i.dv, label %GetASN_Integer.exit.thread247.thread, label %GetASN_UTF8String.exit

GetASN_Integer.exit.thread247.thread:             ; preds = %bb.ac, %GetASN_Integer.exit
  br label %GetASN_UTF8String.exit

GetASN_Integer.exit.thread247:                    ; preds = %bb.aa
  %i.eg = add i32 %.2.i, 1
  %i.eh = add nsw i32 %.240.i, -1
  br label %GetASN_UTF8String.exit

bb.ae:                                            ; preds = %bb.w
  %i.ei = icmp eq i32 %.240.i, 0
  br i1 %i.ei, label %GetLength_ex.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ej = zext i32 %.2.i to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !15  ; 2 uses
  %i.em = icmp ugt i8 %i.el, 7
  br i1 %i.em, label %GetLength_ex.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.en = add nsw i32 %.240.i, -1                 ; 2 uses
  %i.eo = add i32 %i.en, %.2.i
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !15
  %i.es = zext i8 %i.er to i16
  %narrow.i = sub nuw nsw i8 8, %i.el
  %i.et = zext nneg i8 %narrow.i to i16
  %i.eu = lshr i16 254, %i.et
  %i.ev = and i16 %i.eu, %i.es
  %.not.i192 = icmp eq i16 %i.ev, 0
  br i1 %.not.i192, label %GetASN_BitString.exit, label %GetLength_ex.exit.thread

GetASN_BitString.exit:                            ; preds = %bb.ag
  %i.ew = add i32 %.2.i, 1
  br label %GetASN_UTF8String.exit

bb.ah:                                            ; preds = %bb.w
  %i.ex = load i8, ptr %i.av, align 1, !tbaa !32
  %i.ey = icmp eq i8 %i.ex, 12
  br i1 %i.ey, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.w, %bb.ah
  %.not260 = icmp eq i32 %.240.i, 0
  br i1 %.not260, label %GetASN_UTF8String.exit, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.ai, %._crit_edge.i194
  %.02645.i = phi i32 [ %.127.lcssa.i, %._crit_edge.i194 ], [ 0, %bb.ai ] ; 6 uses
  %i.ez = add i32 %.02645.i, %.2.i
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !15  ; 2 uses
  %i.fd = zext i8 %i.fc to i32                    ; 3 uses
  %i.fe = icmp slt i8 %i.fc, 0
  br i1 %i.fe, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %.lr.ph47.i
  %i.ff = and i32 %i.fd, 224
  %.not622 = icmp eq i32 %i.ff, 192               ; 2 uses
  br i1 %.not622, label %.lr.ph.preheader.i195, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fg = and i32 %i.fd, 240
  %i.fh = icmp eq i32 %i.fg, 224
  br i1 %i.fh, label %.lr.ph.preheader.i195, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fi = and i32 %i.fd, 248
  %i.fj = icmp eq i32 %i.fi, 240
  br i1 %i.fj, label %.lr.ph.preheader.i195, label %GetLength_ex.exit.thread

bb.am:                                            ; preds = %.lr.ph47.i
  %.12735.i = add nsw i32 %.02645.i, 1
  br label %._crit_edge.i194

.lr.ph.preheader.i195:                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.fk = phi i1 [ true, %bb.al ], [ false, %bb.aj ], [ false, %bb.ak ]
  %.025.ph.i = phi i32 [ 4, %bb.al ], [ 2, %bb.aj ], [ 3, %bb.ak ]
  %i.fl = add i32 %.025.ph.i, %.02645.i           ; 3 uses
  %.12737.i = add i32 %.02645.i, 1                ; 2 uses
  %i.fm = icmp eq i32 %.12737.i, %.240.i
  br i1 %i.fm, label %GetLength_ex.exit.thread, label %bb.ar

bb.an:                                            ; preds = %bb.ar
  br i1 %.not622, label %._crit_edge.i194, label %.lr.ph.i196.1

.lr.ph.i196.1:                                    ; preds = %bb.an
  %.12737.i.1 = add i32 %.02645.i, 2              ; 2 uses
  %i.fn = icmp eq i32 %.12737.i.1, %.240.i
  br i1 %i.fn, label %GetLength_ex.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i196.1
  %i.fo = add i32 %.12737.i.1, %.2.i
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !15
  %.not.not.i.1 = icmp sgt i8 %i.fr, -1
  br i1 %.not.not.i.1, label %GetLength_ex.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.fk, label %.lr.ph.i196.2, label %._crit_edge.i194

.lr.ph.i196.2:                                    ; preds = %bb.ap
  %.12737.i.2 = add i32 %.02645.i, 3              ; 2 uses
  %i.fs = icmp eq i32 %.12737.i.2, %.240.i
  br i1 %i.fs, label %GetLength_ex.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i196.2
  %i.ft = add i32 %.12737.i.2, %.2.i
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !15
  %.not.not.i.2 = icmp sgt i8 %i.fw, -1
  br i1 %.not.not.i.2, label %GetLength_ex.exit.thread, label %._crit_edge.i194

bb.ar:                                            ; preds = %.lr.ph.preheader.i195
  %i.fx = add i32 %.12737.i, %.2.i
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !15
  %.not.not.i = icmp sgt i8 %i.ga, -1
  br i1 %.not.not.i, label %GetLength_ex.exit.thread, label %bb.an

._crit_edge.i194:                                 ; preds = %bb.an, %bb.ap, %bb.aq, %bb.am
  %.127.lcssa.i = phi i32 [ %.12735.i, %bb.am ], [ %i.fl, %bb.aq ], [ %i.fl, %bb.ap ], [ %i.fl, %bb.an ] ; 2 uses
  %i.gb = icmp slt i32 %.127.lcssa.i, %.240.i
  br i1 %i.gb, label %.lr.ph47.i, label %GetASN_UTF8String.exit

bb.as:                                            ; preds = %bb.ah
  %i.gc = icmp eq i8 %i.do, 6
  br i1 %i.gc, label %bb.at, label %GetASN_UTF8String.exit

bb.at:                                            ; preds = %bb.as
  %i.gd = icmp samesign ult i32 %.240.i, 3
  br i1 %i.gd, label %GetLength_ex.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ge = sext i32 %i.di to i64
  %i.gf = getelementptr i8, ptr %4, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.gf, i64 -1
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !15
  %.not.i197 = icmp sgt i8 %i.gh, -1
  br i1 %.not.i197, label %GetASN_UTF8String.exit, label %GetLength_ex.exit.thread

GetASN_UTF8String.exit:                           ; preds = %._crit_edge.i194, %GetASN_Integer.exit.thread247.thread, %bb.z, %bb.au, %bb.ai, %GetASN_BitString.exit, %bb.as, %GetASN_Integer.exit, %GetASN_Integer.exit.thread247
end_hunk_0
begin_hunk_1_@GetASN_Items:bb.a
  %i.lk = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.lk, align 8, !tbaa !26
  %i.ln = add nsw i32 %.0236, -1
  %i.lo = icmp ult i32 %i.ln, 32
  br i1 %i.lo, label %.lr.ph.preheader.i.i.i, label %wc_oid_sum.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bv
  %wide.trip.count.i.i.i = zext nneg i32 %.0236 to i64 ; 2 uses
  %xtraiter603 = and i64 %wide.trip.count.i.i.i, 1
  %i.lp = icmp eq i32 %.0236, 1
  br i1 %i.lp, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter608 = and i64 %wide.trip.count.i.i.i, 62
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ] ; 3 uses
  %.020.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.mf, %.lr.ph.i.i.i ] ; 3 uses
  %.01319.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.me, %.lr.ph.i.i.i ]
  %niter609 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter609.next.1, %.lr.ph.i.i.i ]
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lh, i64 %indvars.iv.i.i.i
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !15
  %i.ls = zext i8 %i.lr to i32
  %i.lt = xor i32 %i.ls, -1
  %i.lu = shl i32 %i.lt, %.020.i.i.i
  %i.lv = xor i32 %i.lu, %.01319.i.i.i
  %i.lw = add nuw nsw i32 %.020.i.i.i, 8
  %i.lx = and i32 %i.lw, 31
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lh, i64 %indvars.iv.i.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !15
  %i.mb = zext i8 %i.ma to i32
  %i.mc = xor i32 %i.mb, -1
  %i.md = shl i32 %i.mc, %i.lx
  %i.me = xor i32 %i.md, %i.lv                    ; 3 uses
  %i.mf = xor i32 %.020.i.i.i, 16                 ; 2 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter609.next.1 = add i64 %niter609, 2         ; 2 uses
  %niter609.ncmp.1 = icmp eq i64 %niter609.next.1, %unroll_iter608
  br i1 %niter609.ncmp.1, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod605.not = icmp eq i64 %xtraiter603, 0
  br i1 %lcmp.mod605.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.020.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.mf, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.01319.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.me, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod607 = trunc i32 %.0236 to i1
  call void @llvm.assume(i1 %lcmp.mod607)
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lh, i64 %indvars.iv.i.i.i.epil.init
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !15
  %i.mi = zext i8 %i.mh to i32
  %i.mj = xor i32 %i.mi, -1
  %i.mk = shl i32 %i.mj, %.020.i.i.i.epil.init
  %i.ml = xor i32 %i.mk, %.01319.i.i.i.epil.init
  br label %._crit_edge.loopexit.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.epil.preheader
  %.lcssa548 = phi i32 [ %i.me, %._crit_edge.loopexit.i.i.i.unr-lcssa ], [ %i.ml, %.lr.ph.i.i.i.epil.preheader ]
  %i.mm = and i32 %.lcssa548, 2147483647
  br label %wc_oid_sum.exit.i.i

wc_oid_sum.exit.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i, %bb.bv
  %.015.i.i.i = phi i32 [ 0, %bb.bv ], [ %i.mm, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  store i32 %.015.i.i.i, ptr %i.lk, align 8, !tbaa !26
  %.not.i.i = icmp eq i32 %i.lm, 21
  br i1 %.not.i.i, label %GetOID.exit.thread.i, label %bb.bw

bb.bw:                                            ; preds = %wc_oid_sum.exit.i.i
  %i.mn = call ptr @OidFromId(i32 noundef %.015.i.i.i, i32 noundef %i.lm, ptr noundef nonnull %i.a) ; 2 uses
  %.not24.i.i = icmp eq ptr %i.mn, null
  br i1 %.not24.i.i, label %GetOID.exit.thread.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mo = load i32, ptr %i.a, align 4, !tbaa !26
  %.not25.i.i = icmp eq i32 %i.mo, %.0236
  br i1 %.not25.i.i, label %bb.by, label %GetOID.exit.i

bb.by:                                            ; preds = %bb.bx
  %i.mp = zext nneg i32 %.0236 to i64
  %bcmp.i.i = call i32 @bcmp(ptr readonly %i.lh, ptr nonnull %i.mn, i64 %i.mp)
  %.not26.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not26.i.i, label %GetOID.exit.thread.i, label %GetOID.exit.i

GetOID.exit.thread.i:                             ; preds = %bb.by, %bb.bw, %wc_oid_sum.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %GetASN_StoreData.exit

GetOID.exit.i:                                    ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %GetLength_ex.exit.thread

bb.bz:                                            ; preds = %bb.bp
  %i.mq = zext i32 %.1 to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %4, i64 %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.mr, ptr %i.ms, align 8, !tbaa !15
  %i.mt = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %.0236, ptr %i.mt, align 8, !tbaa !15
  br label %GetASN_StoreData.exit

GetASN_StoreData.exit.loopexit.unr-lcssa:         ; preds = %.lr.ph133.i
  %lcmp.mod618.not = icmp eq i64 %xtraiter616, 0
  br i1 %lcmp.mod618.not, label %GetASN_StoreData.exit, label %.lr.ph133.i.epil.preheader

.lr.ph133.i.epil.preheader:                       ; preds = %GetASN_StoreData.exit.loopexit.unr-lcssa, %.lr.ph133.preheader.i
  %indvars.iv138.i.epil.init = phi i64 [ 0, %.lr.ph133.preheader.i ], [ %indvars.iv.next139.i.1, %GetASN_StoreData.exit.loopexit.unr-lcssa ]
  %lcmp.mod619 = trunc i32 %.0236 to i1
  call void @llvm.assume(i1 %lcmp.mod619)
  %i.mu = load ptr, ptr %i.hd, align 8, !tbaa !15 ; 2 uses
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !34
  %i.mw = shl i16 %i.mv, 8
  store i16 %i.mw, ptr %i.mu, align 2, !tbaa !34
  %i.mx = load ptr, ptr %i.hd, align 8, !tbaa !15 ; 2 uses
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !34
  %i.mz = trunc nuw nsw i64 %indvars.iv138.i.epil.init to i32
  %i.na = add i32 %.1, %i.mz
  %i.nb = zext i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw i8, ptr %4, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !15
  %i.ne = zext i8 %i.nd to i16
  %i.nf = or i16 %i.my, %i.ne
  store i16 %i.nf, ptr %i.mx, align 2, !tbaa !34
  br label %GetASN_StoreData.exit

GetASN_StoreData.exit.loopexit544.unr-lcssa:      ; preds = %.lr.ph131.i
  %lcmp.mod612.not = icmp eq i64 %xtraiter610, 0
  br i1 %lcmp.mod612.not, label %GetASN_StoreData.exit, label %.lr.ph131.i.epil.preheader

.lr.ph131.i.epil.preheader:                       ; preds = %GetASN_StoreData.exit.loopexit544.unr-lcssa, %.lr.ph131.preheader.i
  %indvars.iv135.i.epil.init = phi i64 [ 0, %.lr.ph131.preheader.i ], [ %indvars.iv.next136.i.1, %GetASN_StoreData.exit.loopexit544.unr-lcssa ]
  %lcmp.mod613 = trunc i32 %.0236 to i1
  call void @llvm.assume(i1 %lcmp.mod613)
  %i.ng = load ptr, ptr %i.il, align 8, !tbaa !15 ; 2 uses
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !26
  %i.ni = shl i32 %i.nh, 8
  store i32 %i.ni, ptr %i.ng, align 4, !tbaa !26
  %i.nj = trunc nuw nsw i64 %indvars.iv135.i.epil.init to i32
  %i.nk = add i32 %.1, %i.nj
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %4, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !15
  %i.no = zext i8 %i.nn to i32
  %i.np = load ptr, ptr %i.il, align 8, !tbaa !15 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !26
  %i.nr = or i32 %i.nq, %i.no
  store i32 %i.nr, ptr %i.np, align 4, !tbaa !26
  br label %GetASN_StoreData.exit

GetASN_StoreData.exit:                            ; preds = %.lr.ph131.i.epil.preheader, %GetASN_StoreData.exit.loopexit544.unr-lcssa, %.lr.ph133.i.epil.preheader, %GetASN_StoreData.exit.loopexit.unr-lcssa, %bb.bz, %GetOID.exit.thread.i, %bb.bu, %bb.bs, %bb.bo, %bb.bk, %bb.bi, %bb.bg, %._crit_edge.i202, %bb.aw
  %i.ns = add i32 %.1, %.0236                     ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !155 ; 2 uses
  %i.nv = icmp ugt i8 %i.nu, 1
  br i1 %i.nv, label %.preheader265, label %.loopexit264

.preheader265:                                    ; preds = %GetASN_StoreData.exit
  %.1150308 = add nsw i32 %.1153322, 1            ; 2 uses
  %i.nw = icmp slt i32 %.1150308, %2
  br i1 %i.nw, label %.lr.ph, label %.loopexit264

.lr.ph:                                           ; preds = %.preheader265
  %i.nx = load i8, ptr %i.o, align 1, !tbaa !24
  %i.ny = sext i32 %.1150308 to i64
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph, %bb.cc
  %indvars.iv = phi i64 [ %i.ny, %.lr.ph ], [ %indvars.iv.next, %bb.cc ] ; 3 uses
  %.1150.in309 = phi i32 [ %.1153322, %.lr.ph ], [ %i.od, %bb.cc ]
  %i.nz = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !24
  %.not184 = icmp ugt i8 %i.oa, %i.nx
  br i1 %.not184, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 3
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !155
  %.not185 = icmp eq i8 %i.oc, %i.nu
  br i1 %.not185, label %bb.cc, label %.loopexit264

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.od = trunc nsw i64 %indvars.iv to i32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %.loopexit264, label %bb.ca, !llvm.loop !152

..loopexit264.loopexit_crit_edge:                 ; preds = %.lr.ph540
  br label %.loopexit264, !llvm.loop !147

..loopexit264.loopexit_crit_edge541:              ; preds = %bb.i
  %i.oe = trunc nsw i64 %indvars.iv387539 to i32
  br label %.loopexit264

.loopexit264:                                     ; preds = %bb.cb, %bb.cc, %.lr.ph316, %..loopexit264.loopexit_crit_edge, %..loopexit264.loopexit_crit_edge541, %.preheader265, %.preheader263, %GetASN_StoreData.exit, %bb.av
  %.2234 = phi i32 [ %i.ns, %GetASN_StoreData.exit ], [ %.1, %bb.av ], [ %.0321, %.preheader263 ], [ %.0321, %.lr.ph316 ], [ %i.ns, %.preheader265 ], [ %.0321, %..loopexit264.loopexit_crit_edge541 ], [ %.0321, %..loopexit264.loopexit_crit_edge ], [ %i.ns, %bb.cc ], [ %i.ns, %bb.cb ] ; 4 uses
  %.2154 = phi i32 [ %.1153322, %GetASN_StoreData.exit ], [ %.1153322, %bb.av ], [ %.1153322, %.preheader263 ], [ %.1153322, %.lr.ph316 ], [ %.1153322, %.preheader265 ], [ %i.oe, %..loopexit264.loopexit_crit_edge541 ], [ %i.k, %..loopexit264.loopexit_crit_edge ], [ %.1150.in309, %bb.cb ], [ %i.k, %bb.cc ]
  %i.of = add nsw i32 %.2154, 1                   ; 2 uses
  %i.og = icmp slt i32 %i.of, %2
  br i1 %i.og, label %.lr.ph325, label %._crit_edge, !llvm.loop !153

._crit_edge:                                      ; preds = %.loopexit264
  %.not = icmp ne i32 %3, 0
  %i.oh = icmp samesign ult i32 %.0145324, %i.q
  %or.cond = select i1 %.not, i1 %i.oh, i1 false
  br i1 %or.cond, label %.lr.ph330, label %.loopexit

bb.cd:                                            ; preds = %.lr.ph330
  %15 = add nsw i32 %.2151329, -1                 ; 2 uses
  %i.oi = icmp sgt i32 %15, %spec.select
  br i1 %i.oi, label %.lr.ph330, label %.loopexit, !llvm.loop !154

.lr.ph330:                                        ; preds = %._crit_edge, %bb.cd
  %.2151329 = phi i32 [ %15, %bb.cd ], [ %i.q, %._crit_edge ] ; 2 uses
  %16 = zext nneg i32 %.2151329 to i64
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %16
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !26
  %i.ol = icmp ult i32 %.2234, %i.ok
  br i1 %i.ol, label %GetLength_ex.exit.thread, label %bb.cd

.loopexit:                                        ; preds = %bb.cd, %bb.a, %._crit_edge
  %.0.lcssa428 = phi i32 [ %i.c, %bb.a ], [ %.2234, %._crit_edge ], [ %.2234, %bb.cd ]
  %17 = load i8, ptr %7, align 2, !tbaa !15
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds nuw i8, ptr %7, i64 1
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  %or.cond478 = select i1 %18, i1 true, i1 %21
  br i1 %or.cond478, label %GetLength_ex.exit.thread, label %bb.ce

bb.ce:                                            ; preds = %.loopexit
  store i32 %.0.lcssa428, ptr %5, align 4, !tbaa !26
  br label %GetLength_ex.exit.thread

GetLength_ex.exit.thread:                         ; preds = %.preheader.i200, %bb.br, %bb.bq, %bb.bt, %bb.bj, %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.bc, %bb.bb, %bb.az, %bb.ay, %bb.ax, %bb.at, %bb.au, %bb.ag, %bb.ae, %bb.af, %bb.ad, %bb.aa, %bb.x, %bb.ac, %.thread69.i, %bb.s, %._crit_edge.i, %bb.t, %bb.m, %bb.q, %GetLength_ex.exit, %.lr.ph325, %bb.l, %bb.al, %bb.bm, %bb.ar, %.lr.ph.preheader.i195, %.lr.ph.i196.1, %bb.ao, %.lr.ph.i196.2, %bb.aq, %.lr.ph330, %.loopexit, %bb.j, %bb.bl, %GetOID.exit.i, %bb.k, %bb.ce
  %.4 = phi i32 [ 0, %bb.ce ], [ -142, %bb.bl ], [ %.mux, %bb.j ], [ -148, %GetOID.exit.i ], [ %switch.select189, %bb.k ], [ -140, %bb.al ], [ -140, %bb.ar ], [ -140, %bb.bm ], [ -140, %.loopexit ], [ -140, %.lr.ph330 ], [ -140, %bb.aq ], [ -140, %.lr.ph.i196.2 ], [ -140, %bb.ao ], [ -140, %.lr.ph.i196.1 ], [ -140, %.lr.ph.preheader.i195 ], [ -140, %bb.az ], [ -146, %bb.bb ], [ -140, %bb.bc ], [ -146, %bb.be ], [ -132, %bb.bf ], [ -140, %bb.bh ], [ -140, %bb.bi ], [ -110, %bb.bj ], [ -146, %bb.bt ], [ -140, %bb.bq ], [ -192, %bb.br ], [ -140, %.preheader.i200 ], [ -140, %bb.au ], [ -146, %bb.ay ], [ -140, %bb.ae ], [ -140, %bb.af ], [ -140, %bb.x ], [ -140, %bb.aa ], [ -146, %bb.ad ], [ -140, %bb.s ], [ -140, %._crit_edge.i ], [ -140, %bb.t ], [ -140, %bb.m ], [ -140, %bb.q ], [ -140, %bb.l ], [ -140, %bb.ag ], [ -146, %bb.ac ], [ -140, %.thread69.i ], [ -140, %GetLength_ex.exit ], [ -140, %bb.at ], [ -140, %.lr.ph325 ], [ -140, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
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
  %i.i = and i32 %i.g, 127                        ; 6 uses
  %i.j = icmp eq i8 %i.f, -128
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %i.i, 1
  br i1 %i.k, label %.thread69.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i32 %i.i, 4
  br i1 %i.l, label %GetLength_ex.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = shl nuw nsw i32 %i.i, 3
  %i.n = add nsw i32 %i.m, -8
  %i.o = shl nuw nsw i32 1, %i.n
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.0.i = phi i32 [ %i.o, %bb.f ], [ 0, %bb.c ]   ; 2 uses
  %i.p = add i32 %i.i, %i.b                       ; 2 uses
end_hunk_1
begin_hunk_2_@PermittedListOk:bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %i.h = load i32, ptr %i.c, align 4, !tbaa !69   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.04367, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.04367, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !134  ; 2 uses
  %i.m = icmp ne ptr %i.g, null
  %i.n = icmp ne ptr %i.j, null
  %or.cond.not39.i = and i1 %i.m, %i.n
  %i.o = icmp sgt i32 %i.h, 0
  %or.cond3.not36.i = and i1 %i.o, %or.cond.not39.i
  %i.p = icmp sgt i32 %i.l, 0
  %or.cond5.not34.i = and i1 %i.p, %or.cond3.not36.i
  %i.q = shl nuw nsw i32 %i.h, 1
  %.not.i = icmp eq i32 %i.l, %i.q
  %or.cond32.i = select i1 %or.cond5.not34.i, i1 %.not.i, i1 false
  br i1 %or.cond32.i, label %.preheader.preheader.i, label %wolfssl_local_MatchIpSubnet.exit.thread

.preheader.preheader.i:                           ; preds = %bb.d
  %i.r = zext nneg i32 %i.h to i64                ; 4 uses
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.r ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i
  %n.vec = and i64 %i.r, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi97 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %wide.load = load <4 x i8>, ptr %i.s, align 1, !tbaa !15
  %wide.load98 = load <4 x i8>, ptr %i.t, align 1, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %wide.load99 = load <4 x i8>, ptr %i.u, align 1, !tbaa !15
  %wide.load100 = load <4 x i8>, ptr %i.v, align 1, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %wide.load101 = load <4 x i8>, ptr %i.w, align 1, !tbaa !15
  %wide.load102 = load <4 x i8>, ptr %i.x, align 1, !tbaa !15
  %i.y = xor <4 x i8> %wide.load101, %wide.load
  %i.z = xor <4 x i8> %wide.load102, %wide.load98
  %i.aa = and <4 x i8> %i.y, %wide.load99
  %i.ab = and <4 x i8> %i.z, %wide.load100
  %i.ac = icmp ne <4 x i8> %i.aa, zeroinitializer
  %i.ad = icmp ne <4 x i8> %i.ab, zeroinitializer
  %i.ae = or <4 x i1> %vec.phi, %i.ac             ; 2 uses
  %i.af = or <4 x i1> %vec.phi97, %i.ad           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.af, %i.ae
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.ah = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not = icmp eq i4 %i.ah, 0
  %rdx.select = zext i1 %.not to i32              ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.r
  br i1 %cmp.n, label %wolfssl_local_MatchIpSubnet.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %n.vec, %middle.block ]
  %.041.i.ph = phi i32 [ 1, %.preheader.preheader.i ], [ %rdx.select, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ %indvars.iv.i.ph, %.preheader.i.preheader ] ; 4 uses
  %.041.i = phi i32 [ %spec.select.i, %.preheader.i ], [ %.041.i.ph, %.preheader.i.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !15
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ak = load i8, ptr %gep.i, align 1, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15
  %i.an = xor i8 %i.am, %i.aj
  %i.ao = and i8 %i.an, %i.ak
  %.not31.i = icmp eq i8 %i.ao, 0
  %spec.select.i = select i1 %.not31.i, i32 %.041.i, i32 0 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.r
  br i1 %exitcond.not.i, label %wolfssl_local_MatchIpSubnet.exit, label %.preheader.i, !llvm.loop !296

wolfssl_local_MatchIpSubnet.exit:                 ; preds = %.preheader.i, %middle.block
  %spec.select.i.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select.i, %.preheader.i ]
  %.not54 = icmp eq i32 %spec.select.i.lcssa, 0
  br i1 %.not54, label %wolfssl_local_MatchIpSubnet.exit.thread, label %._crit_edge.loopexit

bb.e:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.aq = load i32, ptr %i.c, align 4, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %.04367, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72
  %i.at = getelementptr inbounds nuw i8, ptr %.04367, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !134
  %i.av = tail call i32 @wolfssl_local_MatchUriNameConstraint(ptr noundef %i.ap, i32 noundef %i.aq, ptr noundef %i.as, i32 noundef %i.au)
  %.not53 = icmp eq i32 %i.av, 0
  br i1 %.not53, label %wolfssl_local_MatchIpSubnet.exit.thread, label %._crit_edge.loopexit

bb.f:                                             ; preds = %bb.c
  %i.aw = load i32, ptr %i.c, align 4, !tbaa !69  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04367, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !134
  %.not.i55 = icmp eq i32 %i.aw, %i.ay
  br i1 %.not.i55, label %MatchOtherNameConstraint.exit, label %wolfssl_local_MatchIpSubnet.exit.thread

MatchOtherNameConstraint.exit:                    ; preds = %bb.f
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.ba = getelementptr inbounds nuw i8, ptr %.04367, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !72
  %i.bc = sext i32 %i.aw to i64
  %bcmp.i = tail call i32 @bcmp(ptr %i.az, ptr %i.bb, i64 %i.bc)
  %.not65 = icmp eq i32 %bcmp.i, 0
  br i1 %.not65, label %._crit_edge.loopexit, label %wolfssl_local_MatchIpSubnet.exit.thread

bb.g:                                             ; preds = %bb.c
  %i.bd = load i32, ptr %i.c, align 4, !tbaa !69  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04367, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !134
  %i.bg = icmp eq i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.h, label %wolfssl_local_MatchIpSubnet.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.bi = getelementptr inbounds nuw i8, ptr %.04367, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !72
  %i.bk = sext i32 %i.bd to i64
  %bcmp = tail call i32 @bcmp(ptr %i.bh, ptr %i.bj, i64 %i.bk)
  %i.bl = icmp eq i32 %bcmp, 0
  br i1 %i.bl, label %._crit_edge.loopexit, label %wolfssl_local_MatchIpSubnet.exit.thread

bb.i:                                             ; preds = %bb.c
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.bn = load i32, ptr %i.c, align 4, !tbaa !69  ; 5 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.preheader.i, label %DnsNameHasWildcard.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.i
  %wide.trip.count.i = zext nneg i32 %i.bn to i64
  br label %.lr.ph.i

bb.j:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %exitcond.not.i58 = icmp eq i64 %indvars.iv.next.i57, %wide.trip.count.i
  br i1 %exitcond.not.i58, label %DnsNameHasWildcard.exit.thread, label %.lr.ph.i, !llvm.loop !6

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %indvars.iv.i56 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i57, %bb.j ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i56
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !15
  %i.br = icmp eq i8 %i.bq, 42
  br i1 %i.br, label %DnsNameHasWildcard.exit, label %bb.j

DnsNameHasWildcard.exit:                          ; preds = %.lr.ph.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.04367, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !72
  %i.bu = getelementptr inbounds nuw i8, ptr %.04367, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !134
  %i.bw = tail call i32 @wolfssl_local_MatchDnsConstraintWildcard(ptr noundef nonnull %i.bm, i32 noundef %i.bn, ptr noundef %i.bt, i32 noundef %i.bv, i32 noundef 1)
  %.not51 = icmp eq i32 %i.bw, 0
  br i1 %.not51, label %wolfssl_local_MatchIpSubnet.exit.thread, label %._crit_edge.loopexit

DnsNameHasWildcard.exit.thread:                   ; preds = %bb.j, %.DnsNameHasWildcard.exit.thread_crit_edge, %bb.i
  %i.bx = phi i32 [ %.pre, %.DnsNameHasWildcard.exit.thread_crit_edge ], [ %i.bn, %bb.i ], [ %i.bn, %bb.j ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.04367, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !134 ; 2 uses
  %.not49 = icmp slt i32 %i.bx, %i.bz
  br i1 %.not49, label %wolfssl_local_MatchIpSubnet.exit.thread, label %bb.k

bb.k:                                             ; preds = %DnsNameHasWildcard.exit.thread
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.cb = getelementptr inbounds nuw i8, ptr %.04367, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !72
  %i.cd = tail call i32 @wolfssl_local_MatchBaseName(i32 noundef %i.b, ptr noundef %i.ca, i32 noundef %i.bx, ptr noundef %i.cc, i32 noundef %i.bz)
  %.not50 = icmp eq i32 %i.cd, 0
  br i1 %.not50, label %wolfssl_local_MatchIpSubnet.exit.thread, label %._crit_edge.loopexit

wolfssl_local_MatchIpSubnet.exit.thread:          ; preds = %bb.f, %bb.d, %wolfssl_local_MatchIpSubnet.exit, %MatchOtherNameConstraint.exit, %DnsNameHasWildcard.exit, %bb.k, %DnsNameHasWildcard.exit.thread, %bb.g, %bb.h, %bb.e, %bb.b
  %.1 = phi i32 [ 1, %wolfssl_local_MatchIpSubnet.exit ], [ 1, %bb.e ], [ 1, %MatchOtherNameConstraint.exit ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %DnsNameHasWildcard.exit ], [ 1, %bb.k ], [ 1, %DnsNameHasWildcard.exit.thread ], [ %.04168, %bb.b ], [ 1, %bb.d ], [ 1, %bb.f ] ; 2 uses
  %i.ce = load ptr, ptr %.04367, align 8, !tbaa !71 ; 2 uses
  %.not.not = icmp eq ptr %i.ce, null
  br i1 %.not.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !297

._crit_edge.loopexit:                             ; preds = %bb.k, %DnsNameHasWildcard.exit, %bb.h, %MatchOtherNameConstraint.exit, %bb.e, %wolfssl_local_MatchIpSubnet.exit, %wolfssl_local_MatchIpSubnet.exit.thread
  %.not.lcssa.ph = phi i1 [ false, %wolfssl_local_MatchIpSubnet.exit.thread ], [ true, %wolfssl_local_MatchIpSubnet.exit ], [ true, %bb.e ], [ true, %MatchOtherNameConstraint.exit ], [ true, %bb.h ], [ true, %DnsNameHasWildcard.exit ], [ true, %bb.k ]
  %.2.ph = phi i32 [ %.1, %wolfssl_local_MatchIpSubnet.exit.thread ], [ 1, %wolfssl_local_MatchIpSubnet.exit ], [ 1, %bb.e ], [ 1, %MatchOtherNameConstraint.exit ], [ 1, %bb.h ], [ 1, %DnsNameHasWildcard.exit ], [ 1, %bb.k ]
  %i.cf = icmp eq i32 %.2.ph, 0
  %i.cg = or i1 %.not.lcssa.ph, %i.cf
  %i.ch = zext i1 %i.cg to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %or.cond = phi i32 [ 1, %bb.a ], [ %i.ch, %._crit_edge.loopexit ]
  ret i32 %or.cond
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = distinct !{!2, !16}
!3 = distinct !{!3, !16}
!4 = distinct !{!4, !16}
!5 = distinct !{!5, !16}
!6 = distinct !{!6, !16}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!11, !11, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"ASNSetData", !12, i64 0, !12, i64 4, !11, i64 8, !11, i64 24, !11, i64 25}
!20 = !{!19, !11, i64 25}
!21 = !{!19, !11, i64 24}
!22 = !{!"ASNItem", !11, i64 0, !11, i64 1, !11, i64 2, !11, i64 2, !11, i64 3}
!23 = !{!22, !11, i64 1}
!24 = !{!22, !11, i64 0}
!25 = !{!19, !12, i64 0}
!26 = !{!12, !12, i64 0}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{!"ASNGetData", !12, i64 0, !12, i64 4, !11, i64 8, !11, i64 32, !11, i64 33}
!29 = !{!28, !12, i64 0}
!30 = !{!28, !12, i64 4}
!31 = !{!28, !11, i64 32}
!32 = !{!28, !11, i64 33}
!33 = !{!"short", !11, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"any pointer", !11, i64 0}
!36 = !{!"p1 omnipotent char", !35, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"long", !11, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"sp_int", !33, i64 0, !33, i64 2, !11, i64 8}
!41 = !{!"p1 _ZTS6WC_RNG", !35, i64 0}
!42 = !{!"RsaKey", !40, i64 0, !40, i64 1040, !40, i64 2080, !40, i64 3120, !40, i64 4160, !40, i64 5200, !40, i64 6240, !40, i64 7280, !35, i64 8320, !36, i64 8328, !12, i64 8336, !12, i64 8340, !12, i64 8344, !41, i64 8352, !11, i64 8360}
!43 = !{!42, !12, i64 8336}
!44 = !{!"p1 _ZTS9DNS_entry", !35, i64 0}
!45 = !{!"p1 _ZTS10Base_entry", !35, i64 0}
!46 = !{!"p1 _ZTS6Signer", !35, i64 0}
!47 = !{!"SignatureCtx", !35, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !12, i64 32, !11, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76}
!48 = !{!"DecodedCert", !36, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !45, i64 80, !45, i64 88, !11, i64 96, !11, i64 116, !36, i64 136, !36, i64 144, !12, i64 152, !11, i64 156, !11, i64 157, !11, i64 413, !12, i64 672, !36, i64 680, !12, i64 688, !12, i64 692, !35, i64 696, !11, i64 704, !12, i64 736, !36, i64 744, !12, i64 752, !12, i64 756, !36, i64 760, !12, i64 768, !36, i64 776, !12, i64 784, !36, i64 792, !12, i64 800, !11, i64 804, !12, i64 824, !11, i64 828, !12, i64 848, !33, i64 852, !33, i64 854, !11, i64 856, !33, i64 858, !11, i64 860, !12, i64 864, !36, i64 872, !12, i64 880, !36, i64 888, !12, i64 896, !36, i64 904, !12, i64 912, !36, i64 920, !12, i64 928, !11, i64 932, !46, i64 936, !47, i64 944, !12, i64 1024, !12, i64 1028, !11, i64 1032, !11, i64 1032, !11, i64 1032, !11, i64 1032, !11, i64 1032, !11, i64 1032, !11, i64 1032, !11, i64 1032, !11, i64 1033, !11, i64 1033, !11, i64 1033, !11, i64 1033, !11, i64 1033, !11, i64 1033, !11, i64 1033, !11, i64 1033, !11, i64 1034, !11, i64 1034, !11, i64 1034, !11, i64 1034, !11, i64 1034, !11, i64 1034, !11, i64 1034, !11, i64 1034, !11, i64 1035, !11, i64 1035, !11, i64 1035, !11, i64 1035, !11, i64 1035, !11, i64 1040, !11, i64 1232, !11, i64 1232}
!49 = !{!48, !36, i64 0}
!50 = !{!48, !12, i64 8}
!51 = !{!48, !12, i64 32}
!52 = !{!"p1 _ZTS12ecc_set_type", !35, i64 0}
!53 = !{!"ecc_point", !11, i64 0, !11, i64 1040, !11, i64 2080, !11, i64 3120}
!54 = !{!"ecc_key", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !52, i64 16, !35, i64 24, !53, i64 32, !11, i64 3160, !41, i64 4200}
!55 = !{!54, !52, i64 16}
!56 = !{!"ecc_set_type", !12, i64 0, !12, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !12, i64 72, !12, i64 76, !12, i64 80}
!57 = !{!56, !12, i64 76}
!58 = !{!48, !11, i64 156}
!59 = !{!48, !36, i64 680}
!60 = !{!48, !12, i64 692}
!61 = !{!48, !35, i64 696}
!62 = !{!48, !33, i64 854}
!63 = !{!47, !12, i64 48}
!64 = !{!47, !35, i64 0}
!65 = !{!"DNS_entry", !44, i64 0, !12, i64 8, !12, i64 12, !36, i64 16, !12, i64 24}
!66 = !{!65, !44, i64 0}
!67 = !{!65, !12, i64 24}
!68 = !{!65, !36, i64 16}
!69 = !{!65, !12, i64 12}
!70 = !{!"Base_entry", !45, i64 0, !36, i64 8, !12, i64 16, !11, i64 20}
!71 = !{!70, !45, i64 0}
!72 = !{!70, !36, i64 8}
!73 = !{!48, !36, i64 144}
!74 = !{!48, !12, i64 12}
!75 = !{!48, !44, i64 48}
!76 = !{!48, !44, i64 56}
!77 = !{!48, !44, i64 64}
!78 = !{!48, !44, i64 72}
!79 = !{!47, !36, i64 8}
!80 = !{!47, !36, i64 24}
!81 = !{!47, !12, i64 64}
!82 = !{!47, !12, i64 52}
!83 = !{!56, !12, i64 72}
!84 = !{!56, !36, i64 64}
!85 = !{!48, !12, i64 688}
!86 = !{!48, !36, i64 904}
!87 = !{!48, !12, i64 912}
!88 = !{!48, !12, i64 152}
!89 = !{!48, !36, i64 920}
!90 = !{!48, !12, i64 928}
!91 = !{!"tm", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !38, i64 40, !36, i64 48}
!92 = !{!91, !12, i64 20}
!93 = !{!91, !12, i64 16}
!94 = !{!91, !12, i64 0}
!95 = !{!91, !12, i64 4}
!96 = !{!91, !12, i64 8}
!97 = !{!91, !12, i64 12}
!98 = !{!91, !12, i64 24}
!99 = !{!91, !12, i64 28}
!100 = !{!35, !35, i64 0}
!101 = !{ptr @wc_Time}
!102 = !{!48, !12, i64 736}
!103 = !{!48, !12, i64 28}
!104 = !{!48, !12, i64 16}
!105 = !{!48, !12, i64 20}
!106 = !{!48, !36, i64 136}
!107 = !{!48, !12, i64 24}
!108 = !{!48, !12, i64 36}
!109 = !{!48, !12, i64 40}
!110 = !{!"p1 int", !35, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{!48, !33, i64 852}
!113 = !{!65, !12, i64 8}
!114 = !{!44, !44, i64 0}
!115 = !{!48, !33, i64 858}
!116 = !{!"Signer", !12, i64 0, !12, i64 4, !33, i64 8, !11, i64 10, !33, i64 12, !11, i64 14, !11, i64 14, !11, i64 14, !36, i64 16, !12, i64 24, !36, i64 32, !45, i64 40, !45, i64 48, !11, i64 56, !11, i64 76, !11, i64 96, !46, i64 104}
!117 = !{!116, !33, i64 12}
!118 = !{!116, !36, i64 16}
!119 = !{!116, !12, i64 0}
!120 = !{!116, !12, i64 4}
!121 = !{!116, !45, i64 48}
!122 = !{!116, !45, i64 40}
!123 = !{!116, !46, i64 104}
!124 = !{!116, !36, i64 32}
!125 = !{!45, !45, i64 0}
!126 = !{!116, !11, i64 96}
!127 = !{!46, !46, i64 0}
!128 = !{!"p1 _ZTS9DerBuffer", !35, i64 0}
!129 = !{!128, !128, i64 0}
!130 = !{!"DerBuffer", !36, i64 0, !35, i64 8, !12, i64 16, !12, i64 20, !12, i64 24}
!131 = !{!130, !12, i64 20}
!132 = !{!130, !36, i64 0}
!133 = !{!130, !12, i64 16}
!134 = !{!70, !12, i64 16}
!135 = !{!70, !11, i64 20}
!136 = distinct !{!136, !16, !17, !18}
!137 = distinct !{!137, !16}
!138 = distinct !{!138, !16}
!139 = distinct !{!139, !16}
!140 = !{!19, !12, i64 4}
!141 = distinct !{!141, !16}
!142 = distinct !{!142, !27}
!143 = distinct !{!143, !16}
!144 = distinct !{!144, !16, !17, !18}
!145 = distinct !{!145, !16, !17, !18}
!146 = distinct !{!146, !16}
!147 = distinct !{!147, !16}
!148 = distinct !{!148, !27}
!149 = distinct !{!149, !16}
!150 = distinct !{!150, !16}
!151 = distinct !{!151, !16}
!152 = distinct !{!152, !16}
!153 = distinct !{!153, !16}
!154 = distinct !{!154, !16}
!155 = !{!22, !11, i64 3}
!156 = distinct !{!156, !27}
!157 = distinct !{!157, !27}
!158 = distinct !{!158, !27}
!159 = distinct !{!159, !27}
!160 = distinct !{!160, !27}
!161 = distinct !{!161, !27}
!162 = distinct !{!162, !27}
!163 = distinct !{!163, !16}
!164 = distinct !{!164, !27}
!165 = distinct !{!165, !27}
!166 = distinct !{!166, !27}
!167 = distinct !{!167, !27}
!168 = distinct !{!168, !16, !17, !18}
!169 = distinct !{!169, !16, !17, !18}
!170 = distinct !{!170, !16, !17, !18}
!171 = distinct !{!171, !27}
!172 = distinct !{!172, !16, !17, !18}
!173 = distinct !{!173, !16, !17, !18}
!174 = distinct !{!174, !16, !17, !18}
!175 = distinct !{!175, !16, !17, !18}
!176 = distinct !{!176, !16, !17, !18}
!177 = distinct !{!177, !16, !17, !18}
!178 = distinct !{!178, !16, !17, !18}
!179 = distinct !{!179, !16, !17, !18}
!180 = distinct !{!180, !16, !17, !18}
!181 = distinct !{!181, !16, !17, !18}
!182 = distinct !{!182, !16, !17, !18}
!183 = distinct !{!183, !16, !17, !18}
!184 = distinct !{!184, !16, !17, !18}
!185 = distinct !{!185, !16, !17, !18}
!186 = distinct !{!186, !16, !17, !18}
!187 = distinct !{!187, !27}
!188 = distinct !{!188, !27}
!189 = distinct !{!189, !27}
!190 = distinct !{!190, !16, !18}
!191 = distinct !{!191, !16, !18, !17}
end_hunk_2
