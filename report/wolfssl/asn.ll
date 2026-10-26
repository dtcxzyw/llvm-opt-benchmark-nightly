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
  %i.c = load i32, ptr %5, align 4, !tbaa !26     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.d = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.e = shufflevector <4 x i32> %i.d, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i32> %i.e, ptr %i.b, align 16, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x i32> %i.e, ptr %i.f, align 16, !tbaa !26
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph325.preheader, label %bb.cc

.lr.ph325.preheader:                              ; preds = %bb.a
  %i.h = load i8, ptr %0, align 1, !tbaa !24
  %i.i = zext i8 %i.h to i32
  %i.j = zext nneg i32 %2 to i64                  ; 2 uses
  %i.k = add nsw i32 %2, -1                       ; 2 uses
  br label %.lr.ph325

.lr.ph325:                                        ; preds = %.lr.ph325.preheader, %.loopexit264
  %.0145324 = phi i32 [ %spec.select, %.loopexit264 ], [ %i.i, %.lr.ph325.preheader ] ; 2 uses
  %.0147323 = phi i32 [ %.2, %.loopexit264 ], [ 0, %.lr.ph325.preheader ] ; 3 uses
  %.sroa.7.0358 = phi i8 [ %.sroa.7.3, %.loopexit264 ], [ -1, %.lr.ph325.preheader ] ; 5 uses
  %.sroa.0.0357 = phi i8 [ %.sroa.0.3, %.loopexit264 ], [ -1, %.lr.ph325.preheader ] ; 5 uses
  %.1153322 = phi i32 [ %i.oc, %.loopexit264 ], [ 0, %.lr.ph325.preheader ] ; 9 uses
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
  %.sroa.idx = icmp eq i8 %i.u, 3                 ; 3 uses
  %.sroa.speculated40 = select i1 %.sroa.idx, i8 %.sroa.7.0358, i8 %.sroa.0.0357
  fence seq_cst
  %i.x = icmp eq i8 %.sroa.speculated40, -1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0. = select i1 %.sroa.idx, i8 %.sroa.0.0357, i8 0
  %..sroa.7.0 = select i1 %.sroa.idx, i8 0, i8 %.sroa.7.0358
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %._crit_edge394
  %.sroa.0.1 = phi i8 [ %.sroa.0.0., %bb.d ], [ %.sroa.0.0357, %bb.c ], [ %.sroa.0.0357, %._crit_edge394 ], [ %.sroa.0.0357, %bb.b ] ; 5 uses
  %.sroa.7.1 = phi i8 [ %..sroa.7.0, %bb.d ], [ %.sroa.7.0358, %bb.c ], [ %.sroa.7.0358, %._crit_edge394 ], [ %.sroa.7.0358, %bb.b ] ; 5 uses
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
  %7 = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.di, ptr %7, align 4, !tbaa !26
  %8 = icmp samesign ugt i32 %.2, 1
  %.sroa.idx5 = icmp ne i32 %.2, 3                ; 2 uses
  %9 = and i1 %8, %.sroa.idx5
  %.sroa.0.2 = select i1 %9, i8 1, i8 %.sroa.0.1  ; 5 uses
  %.sroa.7.2 = select i1 %.sroa.idx5, i8 %.sroa.7.1, i8 1 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %10 = load i8, ptr %i.dl, align 1, !tbaa !23    ; 4 uses
  switch i8 %10, label %bb.af [
    i8 2, label %bb.v
    i8 3, label %bb.ac
    i8 12, label %bb.ag
  ]

bb.v:                                             ; preds = %bb.u
  %i.dm = and i8 %i.aw, -2
  %narrow = icmp eq i8 %i.dm, 8                   ; 2 uses
  %i.dn = icmp eq i32 %.240.i, 0
  br i1 %i.dn, label %GetLength_ex.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = zext i32 %.2.i to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !15  ; 3 uses
  %i.dr = icmp eq i8 %i.dq, 0
  %i.ds = icmp ne i32 %.240.i, 1                  ; 3 uses
  br i1 %i.dr, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  br i1 %i.ds, label %bb.y, label %GetASN_UTF8String.exit

bb.y:                                             ; preds = %bb.x
  %i.dt = add i32 %.2.i, 1
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !15
  %i.dx = icmp sgt i8 %i.dw, -1
  br i1 %i.dx, label %GetLength_ex.exit.thread, label %GetASN_Integer.exit.thread247

bb.z:                                             ; preds = %bb.w
  %i.dy = icmp eq i8 %i.dq, -1
  %or.cond.i = and i1 %i.ds, %i.dy
  br i1 %or.cond.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dz = add i32 %.2.i, 1
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !15
  %.not.i191 = icmp slt i8 %i.ec, 0
  %or.cond21.i.not = or i1 %narrow, %.not.i191
  br i1 %or.cond21.i.not, label %GetLength_ex.exit.thread, label %GetASN_Integer.exit.thread247.thread

bb.ab:                                            ; preds = %bb.z
  %.not17.i = icmp slt i8 %i.dq, 0
  %or.cond22.i.not = and i1 %narrow, %.not17.i
  br i1 %or.cond22.i.not, label %GetLength_ex.exit.thread, label %GetASN_Integer.exit

GetASN_Integer.exit:                              ; preds = %bb.ab
  br i1 %i.ds, label %GetASN_Integer.exit.thread247.thread, label %GetASN_UTF8String.exit

GetASN_Integer.exit.thread247.thread:             ; preds = %bb.aa, %GetASN_Integer.exit
  br label %GetASN_UTF8String.exit

GetASN_Integer.exit.thread247:                    ; preds = %bb.y
  %i.ed = add i32 %.2.i, 1
  %i.ee = add nsw i32 %.240.i, -1
  br label %GetASN_UTF8String.exit

bb.ac:                                            ; preds = %bb.u
  %i.ef = icmp eq i32 %.240.i, 0
  br i1 %i.ef, label %GetLength_ex.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eg = zext i32 %.2.i to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !15  ; 2 uses
  %i.ej = icmp ugt i8 %i.ei, 7
  br i1 %i.ej, label %GetLength_ex.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ek = add nsw i32 %.240.i, -1                 ; 2 uses
  %i.el = add i32 %i.ek, %.2.i
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !15
  %i.ep = zext i8 %i.eo to i16
  %narrow.i = sub nuw nsw i8 8, %i.ei
  %i.eq = zext nneg i8 %narrow.i to i16
  %i.er = lshr i16 254, %i.eq
  %i.es = and i16 %i.er, %i.ep
  %.not.i192 = icmp eq i16 %i.es, 0
  br i1 %.not.i192, label %GetASN_BitString.exit, label %GetLength_ex.exit.thread

GetASN_BitString.exit:                            ; preds = %bb.ae
  %i.et = add i32 %.2.i, 1
  br label %GetASN_UTF8String.exit

bb.af:                                            ; preds = %bb.u
  %i.eu = load i8, ptr %i.av, align 1, !tbaa !32
  %i.ev = icmp eq i8 %i.eu, 12
  br i1 %i.ev, label %bb.ag, label %bb.aq

bb.ag:                                            ; preds = %bb.u, %bb.af
  %.not260 = icmp eq i32 %.240.i, 0
  br i1 %.not260, label %GetASN_UTF8String.exit, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.ag, %._crit_edge.i194
  %.02645.i = phi i32 [ %.127.lcssa.i, %._crit_edge.i194 ], [ 0, %bb.ag ] ; 6 uses
  %i.ew = add i32 %.02645.i, %.2.i
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !15  ; 2 uses
  %i.fa = zext i8 %i.ez to i32                    ; 3 uses
  %i.fb = icmp slt i8 %i.ez, 0
  br i1 %i.fb, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %.lr.ph47.i
  %i.fc = and i32 %i.fa, 224
  %.not622 = icmp eq i32 %i.fc, 192               ; 2 uses
  br i1 %.not622, label %.lr.ph.preheader.i195, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fd = and i32 %i.fa, 240
  %i.fe = icmp eq i32 %i.fd, 224
  br i1 %i.fe, label %.lr.ph.preheader.i195, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ff = and i32 %i.fa, 248
  %i.fg = icmp eq i32 %i.ff, 240
  br i1 %i.fg, label %.lr.ph.preheader.i195, label %GetLength_ex.exit.thread

bb.ak:                                            ; preds = %.lr.ph47.i
  %.12735.i = add nsw i32 %.02645.i, 1
  br label %._crit_edge.i194

.lr.ph.preheader.i195:                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.fh = phi i1 [ true, %bb.aj ], [ false, %bb.ah ], [ false, %bb.ai ]
  %.025.ph.i = phi i32 [ 4, %bb.aj ], [ 2, %bb.ah ], [ 3, %bb.ai ]
  %i.fi = add i32 %.025.ph.i, %.02645.i           ; 3 uses
  %.12737.i = add i32 %.02645.i, 1                ; 2 uses
  %i.fj = icmp eq i32 %.12737.i, %.240.i
  br i1 %i.fj, label %GetLength_ex.exit.thread, label %bb.ap

bb.al:                                            ; preds = %bb.ap
  br i1 %.not622, label %._crit_edge.i194, label %.lr.ph.i196.1

.lr.ph.i196.1:                                    ; preds = %bb.al
  %.12737.i.1 = add i32 %.02645.i, 2              ; 2 uses
  %i.fk = icmp eq i32 %.12737.i.1, %.240.i
  br i1 %i.fk, label %GetLength_ex.exit.thread, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i196.1
  %i.fl = add i32 %.12737.i.1, %.2.i
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !15
  %.not.not.i.1 = icmp sgt i8 %i.fo, -1
  br i1 %.not.not.i.1, label %GetLength_ex.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %i.fh, label %.lr.ph.i196.2, label %._crit_edge.i194

.lr.ph.i196.2:                                    ; preds = %bb.an
  %.12737.i.2 = add i32 %.02645.i, 3              ; 2 uses
  %i.fp = icmp eq i32 %.12737.i.2, %.240.i
  br i1 %i.fp, label %GetLength_ex.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i196.2
  %i.fq = add i32 %.12737.i.2, %.2.i
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !15
  %.not.not.i.2 = icmp sgt i8 %i.ft, -1
  br i1 %.not.not.i.2, label %GetLength_ex.exit.thread, label %._crit_edge.i194

bb.ap:                                            ; preds = %.lr.ph.preheader.i195
  %i.fu = add i32 %.12737.i, %.2.i
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !15
  %.not.not.i = icmp sgt i8 %i.fx, -1
  br i1 %.not.not.i, label %GetLength_ex.exit.thread, label %bb.al

._crit_edge.i194:                                 ; preds = %bb.al, %bb.an, %bb.ao, %bb.ak
  %.127.lcssa.i = phi i32 [ %.12735.i, %bb.ak ], [ %i.fi, %bb.ao ], [ %i.fi, %bb.an ], [ %i.fi, %bb.al ] ; 2 uses
  %i.fy = icmp slt i32 %.127.lcssa.i, %.240.i
  br i1 %i.fy, label %.lr.ph47.i, label %GetASN_UTF8String.exit

bb.aq:                                            ; preds = %bb.af
  %i.fz = icmp eq i8 %10, 6
  br i1 %i.fz, label %bb.ar, label %GetASN_UTF8String.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ga = icmp samesign ult i32 %.240.i, 3
  br i1 %i.ga, label %GetLength_ex.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gb = sext i32 %i.di to i64
  %i.gc = getelementptr i8, ptr %4, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 -1
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !15
  %.not.i197 = icmp sgt i8 %i.ge, -1
  br i1 %.not.i197, label %GetASN_UTF8String.exit, label %GetLength_ex.exit.thread

GetASN_UTF8String.exit:                           ; preds = %._crit_edge.i194, %GetASN_Integer.exit.thread247.thread, %bb.x, %bb.as, %bb.ag, %GetASN_BitString.exit, %bb.aq, %GetASN_Integer.exit, %GetASN_Integer.exit.thread247
  %.0236 = phi i32 [ %.240.i, %bb.as ], [ 1, %bb.x ], [ %.240.i, %bb.aq ], [ %i.ee, %GetASN_Integer.exit.thread247 ], [ %.240.i, %GetASN_Integer.exit.thread247.thread ], [ 1, %GetASN_Integer.exit ], [ %i.ek, %GetASN_BitString.exit ], [ 0, %bb.ag ], [ %.240.i, %._crit_edge.i194 ] ; 30 uses
  %.1 = phi i32 [ %.2.i, %bb.as ], [ %.2.i, %bb.x ], [ %.2.i, %bb.aq ], [ %i.ed, %GetASN_Integer.exit.thread247 ], [ %.2.i, %GetASN_Integer.exit.thread247.thread ], [ %.2.i, %GetASN_Integer.exit ], [ %i.et, %GetASN_BitString.exit ], [ %.2.i, %bb.ag ], [ %.2.i, %._crit_edge.i194 ] ; 20 uses
  %.not122.i = phi i1 [ true, %bb.as ], [ true, %bb.x ], [ true, %bb.aq ], [ false, %GetASN_Integer.exit.thread247 ], [ true, %GetASN_Integer.exit.thread247.thread ], [ true, %GetASN_Integer.exit ], [ true, %GetASN_BitString.exit ], [ true, %bb.ag ], [ true, %._crit_edge.i194 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = and i8 %i.gg, 2
  %.not182 = icmp eq i8 %i.gh, 0
  br i1 %.not182, label %bb.au, label %bb.at

bb.at:                                            ; preds = %GetASN_UTF8String.exit
  %i.gi = zext i32 %.1 to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !15
  %i.gl = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %.0236, ptr %i.gl, align 8, !tbaa !15
  br label %.loopexit264

bb.au:                                            ; preds = %GetASN_UTF8String.exit
  switch i8 %i.aw, label %GetASN_StoreData.exit [
    i8 1, label %bb.av
    i8 2, label %bb.ax
    i8 4, label %bb.ba
    i8 5, label %bb.bd
    i8 6, label %bb.bf
    i8 8, label %bb.bh
    i8 10, label %bb.bh
    i8 9, label %bb.bi
    i8 11, label %.preheader.i200
    i8 0, label %bb.bn
  ]

.preheader.i200:                                  ; preds = %bb.au
  %i.gm = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !15 ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !15  ; 2 uses
  %.not117128.i = icmp eq i8 %i.go, 0
  br i1 %.not117128.i, label %GetLength_ex.exit.thread, label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %.preheader.i200
  %i.gp = load i8, ptr %i.av, align 1, !tbaa !32
  br label %bb.bl

bb.av:                                            ; preds = %bb.au
  %.not124.i = icmp eq i32 %.0236, 1
  br i1 %.not124.i, label %bb.aw, label %GetLength_ex.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.gq = icmp ne i8 %10, 1
  %or.cond.not154.i = and i1 %i.gq, %.not122.i
  %.phi.trans.insert.i = zext i32 %.1 to i64
  %.phi.trans.insert143.i = getelementptr inbounds nuw i8, ptr %4, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert143.i, align 1, !tbaa !15 ; 2 uses
  %i.gr = icmp slt i8 %.pre.i, 0
  %or.cond151.i = select i1 %or.cond.not154.i, i1 %i.gr, i1 false
  br i1 %or.cond151.i, label %GetLength_ex.exit.thread, label %._crit_edge.i202

._crit_edge.i202:                                 ; preds = %bb.aw
  %i.gs = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !15
  store i8 %.pre.i, ptr %i.gt, align 1, !tbaa !15
  br label %GetASN_StoreData.exit

bb.ax:                                            ; preds = %bb.au
  %i.gu = icmp eq i32 %.0236, 0
  %i.gv = icmp sgt i32 %.0236, 2
  %or.cond3.i = or i1 %i.gu, %i.gv
  br i1 %or.cond3.i, label %GetLength_ex.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not122.i, label %bb.az, label %.lr.ph133.preheader.i

bb.az:                                            ; preds = %bb.ay
  %i.gw = zext i32 %.1 to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !15
  %i.gz = icmp slt i8 %i.gy, 0
  br i1 %i.gz, label %GetLength_ex.exit.thread, label %.lr.ph133.preheader.i

.lr.ph133.preheader.i:                            ; preds = %bb.ay, %bb.az
  %i.ha = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 7 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !15
  store i16 0, ptr %i.hb, align 2, !tbaa !34
  %wide.trip.count141.i = zext nneg i32 %.0236 to i64 ; 2 uses
  %xtraiter616 = and i64 %wide.trip.count141.i, 1
  %i.hc = icmp eq i32 %.0236, 1
  br i1 %i.hc, label %.lr.ph133.i.epil.preheader, label %.lr.ph133.preheader.i.new

.lr.ph133.preheader.i.new:                        ; preds = %.lr.ph133.preheader.i
  %unroll_iter620 = and i64 %wide.trip.count141.i, 2147483646
  br label %.lr.ph133.i

.lr.ph133.i:                                      ; preds = %.lr.ph133.i, %.lr.ph133.preheader.i.new
  %indvars.iv138.i = phi i64 [ 0, %.lr.ph133.preheader.i.new ], [ %indvars.iv.next139.i.1, %.lr.ph133.i ] ; 3 uses
  %niter621 = phi i64 [ 0, %.lr.ph133.preheader.i.new ], [ %niter621.next.1, %.lr.ph133.i ]
  %i.hd = load ptr, ptr %i.ha, align 8, !tbaa !15 ; 2 uses
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !34
  %i.hf = shl i16 %i.he, 8
  store i16 %i.hf, ptr %i.hd, align 2, !tbaa !34
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !15 ; 2 uses
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !34
  %i.hi = trunc nuw nsw i64 %indvars.iv138.i to i32
  %i.hj = add i32 %.1, %i.hi
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !15
  %i.hn = zext i8 %i.hm to i16
  %i.ho = or i16 %i.hh, %i.hn
  store i16 %i.ho, ptr %i.hg, align 2, !tbaa !34
  %i.hp = load ptr, ptr %i.ha, align 8, !tbaa !15 ; 2 uses
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !34
  %i.hr = shl i16 %i.hq, 8
  store i16 %i.hr, ptr %i.hp, align 2, !tbaa !34
  %i.hs = load ptr, ptr %i.ha, align 8, !tbaa !15 ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !34
  %i.hu = trunc i64 %indvars.iv138.i to i32
  %i.hv = or disjoint i32 %i.hu, 1
  %i.hw = add i32 %.1, %i.hv
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !15
  %i.ia = zext i8 %i.hz to i16
  %i.ib = or i16 %i.ht, %i.ia
  store i16 %i.ib, ptr %i.hs, align 2, !tbaa !34
  %indvars.iv.next139.i.1 = add nuw nsw i64 %indvars.iv138.i, 2 ; 2 uses
  %niter621.next.1 = add i64 %niter621, 2         ; 2 uses
  %niter621.ncmp.1 = icmp eq i64 %niter621.next.1, %unroll_iter620
  br i1 %niter621.ncmp.1, label %GetASN_StoreData.exit.loopexit.unr-lcssa, label %.lr.ph133.i, !llvm.loop !149

bb.ba:                                            ; preds = %bb.au
  %i.ic = icmp eq i32 %.0236, 0
  %i.id = icmp sgt i32 %.0236, 4
  %or.cond5.i = or i1 %i.ic, %i.id
  br i1 %or.cond5.i, label %GetLength_ex.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %.not122.i, label %bb.bc, label %.lr.ph131.preheader.i

bb.bc:                                            ; preds = %bb.bb
  %i.ie = zext i32 %.1 to i64
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !15
  %i.ih = icmp slt i8 %i.ig, 0
  br i1 %i.ih, label %GetLength_ex.exit.thread, label %.lr.ph131.preheader.i

.lr.ph131.preheader.i:                            ; preds = %bb.bb, %bb.bc
  %i.ii = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 7 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !15
  store i32 0, ptr %i.ij, align 4, !tbaa !26
  %wide.trip.count.i = zext nneg i32 %.0236 to i64 ; 2 uses
  %xtraiter610 = and i64 %wide.trip.count.i, 1
  %i.ik = icmp eq i32 %.0236, 1
  br i1 %i.ik, label %.lr.ph131.i.epil.preheader, label %.lr.ph131.preheader.i.new

.lr.ph131.preheader.i.new:                        ; preds = %.lr.ph131.preheader.i
  %unroll_iter614 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %.lr.ph131.i, %.lr.ph131.preheader.i.new
  %indvars.iv135.i = phi i64 [ 0, %.lr.ph131.preheader.i.new ], [ %indvars.iv.next136.i.1, %.lr.ph131.i ] ; 3 uses
  %niter615 = phi i64 [ 0, %.lr.ph131.preheader.i.new ], [ %niter615.next.1, %.lr.ph131.i ]
  %i.il = load ptr, ptr %i.ii, align 8, !tbaa !15 ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !26
  %i.in = shl i32 %i.im, 8
  store i32 %i.in, ptr %i.il, align 4, !tbaa !26
  %i.io = trunc nuw nsw i64 %indvars.iv135.i to i32
  %i.ip = add i32 %.1, %i.io
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !15
  %i.it = zext i8 %i.is to i32
  %i.iu = load ptr, ptr %i.ii, align 8, !tbaa !15 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !26
  %i.iw = or i32 %i.iv, %i.it
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !26
  %i.ix = load ptr, ptr %i.ii, align 8, !tbaa !15 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !26
  %i.iz = shl i32 %i.iy, 8
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !26
  %i.ja = trunc i64 %indvars.iv135.i to i32
  %i.jb = or disjoint i32 %i.ja, 1
  %i.jc = add i32 %.1, %i.jb
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !15
  %i.jg = zext i8 %i.jf to i32
  %i.jh = load ptr, ptr %i.ii, align 8, !tbaa !15 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !26
  %i.jj = or i32 %i.ji, %i.jg
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !26
  %indvars.iv.next136.i.1 = add nuw nsw i64 %indvars.iv135.i, 2 ; 2 uses
  %niter615.next.1 = add i64 %niter615, 2         ; 2 uses
  %niter615.ncmp.1 = icmp eq i64 %niter615.next.1, %unroll_iter614
  br i1 %niter615.ncmp.1, label %GetASN_StoreData.exit.loopexit544.unr-lcssa, label %.lr.ph131.i, !llvm.loop !150

bb.bd:                                            ; preds = %bb.au
  %i.jk = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !15
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !26
  %i.jn = icmp sgt i32 %.0236, %i.jm
  br i1 %i.jn, label %GetLength_ex.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jo = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !15
  %i.jq = zext i32 %.1 to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 %i.jq
  %i.js = zext nneg i32 %.0236 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jp, ptr align 1 %i.jr, i64 %i.js, i1 false)
  %i.jt = load ptr, ptr %i.jk, align 8, !tbaa !15
  store i32 %.0236, ptr %i.jt, align 4, !tbaa !26
  br label %GetASN_StoreData.exit

bb.bf:                                            ; preds = %bb.au
  %i.ju = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !15
  %.not120.i = icmp eq i32 %.0236, %i.jv
  br i1 %.not120.i, label %bb.bg, label %GetLength_ex.exit.thread

bb.bg:                                            ; preds = %bb.bf
  %i.jw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !15
  %i.jy = zext i32 %.1 to i64
  %i.jz = getelementptr inbounds nuw i8, ptr %4, i64 %i.jy
  %i.ka = zext nneg i32 %.0236 to i64
  %bcmp.i = call i32 @bcmp(ptr %i.jx, ptr %i.jz, i64 %i.ka)
  %.not121.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not121.i, label %GetASN_StoreData.exit, label %GetLength_ex.exit.thread

bb.bh:                                            ; preds = %bb.au, %bb.au
  %i.kb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !15
  %i.kd = call i32 @sp_init(ptr noundef %i.kc) #24
  %.not118.i = icmp eq i32 %i.kd, 0
  br i1 %.not118.i, label %bb.bi, label %GetLength_ex.exit.thread

bb.bi:                                            ; preds = %bb.bh, %bb.au
  %i.ke = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !15
  %i.kg = zext i32 %.1 to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %4, i64 %i.kg
  %i.ki = call i32 @sp_read_unsigned_bin(ptr noundef %i.kf, ptr noundef %i.kh, i32 noundef %.0236) #24
  %.not119.i = icmp eq i32 %i.ki, 0
  br i1 %.not119.i, label %GetASN_StoreData.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !15
  call void @sp_clear(ptr noundef %i.kk) #24
  br label %GetLength_ex.exit.thread

bb.bk:                                            ; preds = %bb.bl
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.gn, i64 %indvars.iv.next.i
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !15  ; 2 uses
  %.not117.i = icmp eq i8 %i.km, 0
  br i1 %.not117.i, label %GetLength_ex.exit.thread, label %bb.bl, !llvm.loop !151

bb.bl:                                            ; preds = %bb.bk, %.lr.ph.i201
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i201 ], [ %indvars.iv.next.i, %bb.bk ]
  %i.kn = phi i8 [ %i.go, %.lr.ph.i201 ], [ %i.km, %bb.bk ]
  %i.ko = icmp eq i8 %i.kn, %i.gp
  br i1 %i.ko, label %bb.bm, label %bb.bk

bb.bm:                                            ; preds = %bb.bl
  %i.kp = zext i32 %.1 to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %4, i64 %i.kp
  store ptr %i.kq, ptr %i.gm, align 8, !tbaa !15
  %i.kr = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %.0236, ptr %i.kr, align 8, !tbaa !15
  br label %GetASN_StoreData.exit

bb.bn:                                            ; preds = %bb.au
  switch i8 %10, label %bb.bx [
    i8 1, label %bb.bo
    i8 5, label %bb.br
    i8 6, label %bb.bt
  ]

bb.bo:                                            ; preds = %bb.bn
  %.not116.i = icmp eq i32 %.0236, 1
  br i1 %.not116.i, label %bb.bp, label %GetLength_ex.exit.thread

bb.bp:                                            ; preds = %bb.bo
  %i.ks = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !15 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %GetLength_ex.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kv = zext i32 %.1 to i64
  %i.kw = getelementptr inbounds nuw i8, ptr %4, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !15
  %i.ky = icmp ne i8 %i.kx, 0
  %i.kz = zext i1 %i.ky to i8
  store i8 %i.kz, ptr %i.kt, align 1, !tbaa !15
  br label %GetASN_StoreData.exit

bb.br:                                            ; preds = %bb.bn
  %.not.i199 = icmp eq i32 %.0236, 0
  br i1 %.not.i199, label %bb.bs, label %GetLength_ex.exit.thread

bb.bs:                                            ; preds = %bb.br
  %i.la = zext i32 %.1 to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %4, i64 %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.lb, ptr %i.lc, align 8, !tbaa !15
  br label %GetASN_StoreData.exit

bb.bt:                                            ; preds = %bb.bn
  %i.ld = zext i32 %.1 to i64
  %i.le = getelementptr inbounds nuw i8, ptr %4, i64 %i.ld ; 5 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.le, ptr %i.lf, align 8, !tbaa !15
  %i.lg = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %.0236, ptr %i.lg, align 8, !tbaa !15
  %i.lh = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.lh, align 8, !tbaa !26
  %i.lk = add nsw i32 %.0236, -1
  %i.ll = icmp ult i32 %i.lk, 32
  br i1 %i.ll, label %.lr.ph.preheader.i.i.i, label %wc_oid_sum.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bt
  %wide.trip.count.i.i.i = zext nneg i32 %.0236 to i64 ; 2 uses
  %xtraiter603 = and i64 %wide.trip.count.i.i.i, 1
  %i.lm = icmp eq i32 %.0236, 1
  br i1 %i.lm, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter608 = and i64 %wide.trip.count.i.i.i, 62
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ] ; 3 uses
  %.020.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.mc, %.lr.ph.i.i.i ] ; 3 uses
  %.01319.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.mb, %.lr.ph.i.i.i ]
  %niter609 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter609.next.1, %.lr.ph.i.i.i ]
  %i.ln = getelementptr inbounds nuw i8, ptr %i.le, i64 %indvars.iv.i.i.i
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !15
  %i.lp = zext i8 %i.lo to i32
  %i.lq = xor i32 %i.lp, -1
  %i.lr = shl i32 %i.lq, %.020.i.i.i
  %i.ls = xor i32 %i.lr, %.01319.i.i.i
  %i.lt = add nuw nsw i32 %.020.i.i.i, 8
  %i.lu = and i32 %i.lt, 31
  %i.lv = getelementptr inbounds nuw i8, ptr %i.le, i64 %indvars.iv.i.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 1
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !15
  %i.ly = zext i8 %i.lx to i32
  %i.lz = xor i32 %i.ly, -1
  %i.ma = shl i32 %i.lz, %i.lu
  %i.mb = xor i32 %i.ma, %i.ls                    ; 3 uses
  %i.mc = xor i32 %.020.i.i.i, 16                 ; 2 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter609.next.1 = add i64 %niter609, 2         ; 2 uses
  %niter609.ncmp.1 = icmp eq i64 %niter609.next.1, %unroll_iter608
  br i1 %niter609.ncmp.1, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod605.not = icmp eq i64 %xtraiter603, 0
  br i1 %lcmp.mod605.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.020.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.mc, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.01319.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.mb, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod607 = trunc i32 %.0236 to i1
  call void @llvm.assume(i1 %lcmp.mod607)
  %i.md = getelementptr inbounds nuw i8, ptr %i.le, i64 %indvars.iv.i.i.i.epil.init
  %i.me = load i8, ptr %i.md, align 1, !tbaa !15
  %i.mf = zext i8 %i.me to i32
  %i.mg = xor i32 %i.mf, -1
  %i.mh = shl i32 %i.mg, %.020.i.i.i.epil.init
  %i.mi = xor i32 %i.mh, %.01319.i.i.i.epil.init
  br label %._crit_edge.loopexit.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.epil.preheader
  %.lcssa548 = phi i32 [ %i.mb, %._crit_edge.loopexit.i.i.i.unr-lcssa ], [ %i.mi, %.lr.ph.i.i.i.epil.preheader ]
  %i.mj = and i32 %.lcssa548, 2147483647
  br label %wc_oid_sum.exit.i.i

wc_oid_sum.exit.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i, %bb.bt
  %.015.i.i.i = phi i32 [ 0, %bb.bt ], [ %i.mj, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  store i32 %.015.i.i.i, ptr %i.lh, align 8, !tbaa !26
  %.not.i.i = icmp eq i32 %i.lj, 21
  br i1 %.not.i.i, label %GetOID.exit.thread.i, label %bb.bu

bb.bu:                                            ; preds = %wc_oid_sum.exit.i.i
  %i.mk = call ptr @OidFromId(i32 noundef %.015.i.i.i, i32 noundef %i.lj, ptr noundef nonnull %i.a) ; 2 uses
  %.not24.i.i = icmp eq ptr %i.mk, null
  br i1 %.not24.i.i, label %GetOID.exit.thread.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ml = load i32, ptr %i.a, align 4, !tbaa !26
  %.not25.i.i = icmp eq i32 %i.ml, %.0236
  br i1 %.not25.i.i, label %bb.bw, label %GetOID.exit.i

bb.bw:                                            ; preds = %bb.bv
  %i.mm = zext nneg i32 %.0236 to i64
  %bcmp.i.i = call i32 @bcmp(ptr readonly %i.le, ptr nonnull %i.mk, i64 %i.mm)
  %.not26.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not26.i.i, label %GetOID.exit.thread.i, label %GetOID.exit.i

GetOID.exit.thread.i:                             ; preds = %bb.bw, %bb.bu, %wc_oid_sum.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %GetASN_StoreData.exit

GetOID.exit.i:                                    ; preds = %bb.bw, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %GetLength_ex.exit.thread

bb.bx:                                            ; preds = %bb.bn
  %i.mn = zext i32 %.1 to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %4, i64 %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.mo, ptr %i.mp, align 8, !tbaa !15
  %i.mq = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %.0236, ptr %i.mq, align 8, !tbaa !15
  br label %GetASN_StoreData.exit

GetASN_StoreData.exit.loopexit.unr-lcssa:         ; preds = %.lr.ph133.i
  %lcmp.mod618.not = icmp eq i64 %xtraiter616, 0
  br i1 %lcmp.mod618.not, label %GetASN_StoreData.exit, label %.lr.ph133.i.epil.preheader

.lr.ph133.i.epil.preheader:                       ; preds = %GetASN_StoreData.exit.loopexit.unr-lcssa, %.lr.ph133.preheader.i
  %indvars.iv138.i.epil.init = phi i64 [ 0, %.lr.ph133.preheader.i ], [ %indvars.iv.next139.i.1, %GetASN_StoreData.exit.loopexit.unr-lcssa ]
  %lcmp.mod619 = trunc i32 %.0236 to i1
  call void @llvm.assume(i1 %lcmp.mod619)
  %i.mr = load ptr, ptr %i.ha, align 8, !tbaa !15 ; 2 uses
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !34
  %i.mt = shl i16 %i.ms, 8
  store i16 %i.mt, ptr %i.mr, align 2, !tbaa !34
  %i.mu = load ptr, ptr %i.ha, align 8, !tbaa !15 ; 2 uses
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !34
  %i.mw = trunc nuw nsw i64 %indvars.iv138.i.epil.init to i32
  %i.mx = add i32 %.1, %i.mw
  %i.my = zext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %4, i64 %i.my
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !15
  %i.nb = zext i8 %i.na to i16
  %i.nc = or i16 %i.mv, %i.nb
  store i16 %i.nc, ptr %i.mu, align 2, !tbaa !34
  br label %GetASN_StoreData.exit

GetASN_StoreData.exit.loopexit544.unr-lcssa:      ; preds = %.lr.ph131.i
  %lcmp.mod612.not = icmp eq i64 %xtraiter610, 0
  br i1 %lcmp.mod612.not, label %GetASN_StoreData.exit, label %.lr.ph131.i.epil.preheader

.lr.ph131.i.epil.preheader:                       ; preds = %GetASN_StoreData.exit.loopexit544.unr-lcssa, %.lr.ph131.preheader.i
  %indvars.iv135.i.epil.init = phi i64 [ 0, %.lr.ph131.preheader.i ], [ %indvars.iv.next136.i.1, %GetASN_StoreData.exit.loopexit544.unr-lcssa ]
  %lcmp.mod613 = trunc i32 %.0236 to i1
  call void @llvm.assume(i1 %lcmp.mod613)
  %i.nd = load ptr, ptr %i.ii, align 8, !tbaa !15 ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !26
  %i.nf = shl i32 %i.ne, 8
  store i32 %i.nf, ptr %i.nd, align 4, !tbaa !26
  %i.ng = trunc nuw nsw i64 %indvars.iv135.i.epil.init to i32
  %i.nh = add i32 %.1, %i.ng
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %4, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !15
  %i.nl = zext i8 %i.nk to i32
  %i.nm = load ptr, ptr %i.ii, align 8, !tbaa !15 ; 2 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !26
  %i.no = or i32 %i.nn, %i.nl
  store i32 %i.no, ptr %i.nm, align 4, !tbaa !26
  br label %GetASN_StoreData.exit

GetASN_StoreData.exit:                            ; preds = %.lr.ph131.i.epil.preheader, %GetASN_StoreData.exit.loopexit544.unr-lcssa, %.lr.ph133.i.epil.preheader, %GetASN_StoreData.exit.loopexit.unr-lcssa, %bb.bx, %GetOID.exit.thread.i, %bb.bs, %bb.bq, %bb.bm, %bb.bi, %bb.bg, %bb.be, %._crit_edge.i202, %bb.au
  %i.np = add i32 %.1, %.0236                     ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !155 ; 2 uses
  %i.ns = icmp ugt i8 %i.nr, 1
  br i1 %i.ns, label %.preheader265, label %.loopexit264

.preheader265:                                    ; preds = %GetASN_StoreData.exit
  %.1150308 = add nsw i32 %.1153322, 1            ; 2 uses
  %i.nt = icmp slt i32 %.1150308, %2
  br i1 %i.nt, label %.lr.ph, label %.loopexit264

.lr.ph:                                           ; preds = %.preheader265
  %i.nu = load i8, ptr %i.o, align 1, !tbaa !24
  %i.nv = sext i32 %.1150308 to i64
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph, %bb.ca
  %indvars.iv = phi i64 [ %i.nv, %.lr.ph ], [ %indvars.iv.next, %bb.ca ] ; 3 uses
  %.1150.in309 = phi i32 [ %.1153322, %.lr.ph ], [ %i.oa, %bb.ca ]
  %i.nw = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !24
  %.not184 = icmp ugt i8 %i.nx, %i.nu
  br i1 %.not184, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 3
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !155
  %.not185 = icmp eq i8 %i.nz, %i.nr
  br i1 %.not185, label %bb.ca, label %.loopexit264

bb.ca:                                            ; preds = %bb.by, %bb.bz
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.oa = trunc nsw i64 %indvars.iv to i32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %.loopexit264, label %bb.by, !llvm.loop !152

..loopexit264.loopexit_crit_edge:                 ; preds = %.lr.ph540
  br label %.loopexit264, !llvm.loop !147

..loopexit264.loopexit_crit_edge541:              ; preds = %bb.i
  %i.ob = trunc nsw i64 %indvars.iv387539 to i32
  br label %.loopexit264

.loopexit264:                                     ; preds = %bb.bz, %bb.ca, %.lr.ph316, %..loopexit264.loopexit_crit_edge, %..loopexit264.loopexit_crit_edge541, %.preheader265, %.preheader263, %GetASN_StoreData.exit, %bb.at
  %.2234 = phi i32 [ %i.np, %GetASN_StoreData.exit ], [ %.1, %bb.at ], [ %.0321, %.preheader263 ], [ %.0321, %.lr.ph316 ], [ %i.np, %.preheader265 ], [ %.0321, %..loopexit264.loopexit_crit_edge541 ], [ %.0321, %..loopexit264.loopexit_crit_edge ], [ %i.np, %bb.ca ], [ %i.np, %bb.bz ] ; 3 uses
  %.2154 = phi i32 [ %.1153322, %GetASN_StoreData.exit ], [ %.1153322, %bb.at ], [ %.1153322, %.preheader263 ], [ %.1153322, %.lr.ph316 ], [ %.1153322, %.preheader265 ], [ %i.ob, %..loopexit264.loopexit_crit_edge541 ], [ %i.k, %..loopexit264.loopexit_crit_edge ], [ %.1150.in309, %bb.bz ], [ %i.k, %bb.ca ]
  %.sroa.0.3 = phi i8 [ %.sroa.0.2, %GetASN_StoreData.exit ], [ %.sroa.0.2, %bb.at ], [ %.sroa.0.1, %.preheader263 ], [ %.sroa.0.1, %.lr.ph316 ], [ %.sroa.0.2, %.preheader265 ], [ %.sroa.0.1, %..loopexit264.loopexit_crit_edge541 ], [ %.sroa.0.1, %..loopexit264.loopexit_crit_edge ], [ %.sroa.0.2, %bb.ca ], [ %.sroa.0.2, %bb.bz ] ; 2 uses
  %.sroa.7.3 = phi i8 [ %.sroa.7.2, %GetASN_StoreData.exit ], [ %.sroa.7.2, %bb.at ], [ %.sroa.7.1, %.preheader263 ], [ %.sroa.7.1, %.lr.ph316 ], [ %.sroa.7.2, %.preheader265 ], [ %.sroa.7.1, %..loopexit264.loopexit_crit_edge541 ], [ %.sroa.7.1, %..loopexit264.loopexit_crit_edge ], [ %.sroa.7.2, %bb.ca ], [ %.sroa.7.2, %bb.bz ] ; 2 uses
  %i.oc = add nsw i32 %.2154, 1                   ; 2 uses
  %i.od = icmp slt i32 %i.oc, %2
  br i1 %i.od, label %.lr.ph325, label %._crit_edge, !llvm.loop !153

._crit_edge:                                      ; preds = %.loopexit264
  %11 = icmp eq i8 %.sroa.0.3, 0
  %12 = icmp eq i8 %.sroa.7.3, 0
  %.not = icmp ne i32 %3, 0
  %i.oe = icmp samesign ult i32 %.0145324, %i.q
  %or.cond = select i1 %.not, i1 %i.oe, i1 false
  br i1 %or.cond, label %.lr.ph330, label %.loopexit

bb.cb:                                            ; preds = %.lr.ph330
  %i.of = add nsw i32 %.2151329, -1               ; 2 uses
  %i.og = icmp sgt i32 %i.of, %spec.select
  br i1 %i.og, label %.lr.ph330, label %.loopexit, !llvm.loop !154

.lr.ph330:                                        ; preds = %._crit_edge, %bb.cb
  %.2151329 = phi i32 [ %i.of, %bb.cb ], [ %i.q, %._crit_edge ] ; 2 uses
  %i.oh = zext nneg i32 %.2151329 to i64
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !26
  %i.ok = icmp ult i32 %.2234, %i.oj
  br i1 %i.ok, label %GetLength_ex.exit.thread, label %bb.cb

.loopexit:                                        ; preds = %bb.cb, %._crit_edge
  %or.cond478 = select i1 %11, i1 true, i1 %12
  br i1 %or.cond478, label %GetLength_ex.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %.loopexit, %bb.a
  %.0.lcssa465472475 = phi i32 [ %.2234, %.loopexit ], [ %i.c, %bb.a ]
  store i32 %.0.lcssa465472475, ptr %5, align 4, !tbaa !26
  br label %GetLength_ex.exit.thread

GetLength_ex.exit.thread:                         ; preds = %.preheader.i200, %bb.bp, %bb.bo, %bb.br, %bb.bh, %bb.bg, %bb.bf, %bb.bd, %bb.bc, %bb.ba, %bb.az, %bb.ax, %bb.aw, %bb.av, %bb.ar, %bb.as, %bb.ae, %bb.ac, %bb.ad, %bb.ab, %bb.y, %bb.v, %bb.aa, %.thread69.i, %bb.s, %._crit_edge.i, %bb.t, %bb.m, %bb.q, %GetLength_ex.exit, %.lr.ph325, %bb.l, %bb.aj, %bb.bk, %bb.ap, %.lr.ph.preheader.i195, %.lr.ph.i196.1, %bb.am, %.lr.ph.i196.2, %bb.ao, %.lr.ph330, %.loopexit, %bb.j, %bb.bj, %GetOID.exit.i, %bb.k, %bb.cc
  %.4 = phi i32 [ 0, %bb.cc ], [ -142, %bb.bj ], [ %.mux, %bb.j ], [ -148, %GetOID.exit.i ], [ %switch.select189, %bb.k ], [ -140, %bb.aj ], [ -140, %bb.ap ], [ -140, %bb.bk ], [ -140, %.loopexit ], [ -140, %.lr.ph330 ], [ -140, %bb.ao ], [ -140, %.lr.ph.i196.2 ], [ -140, %bb.am ], [ -140, %.lr.ph.i196.1 ], [ -140, %.lr.ph.preheader.i195 ], [ -140, %bb.ax ], [ -146, %bb.az ], [ -140, %bb.ba ], [ -146, %bb.bc ], [ -132, %bb.bd ], [ -140, %bb.bf ], [ -140, %bb.bg ], [ -110, %bb.bh ], [ -146, %bb.br ], [ -140, %bb.bo ], [ -192, %bb.bp ], [ -140, %.preheader.i200 ], [ -140, %bb.as ], [ -146, %bb.aw ], [ -140, %bb.ac ], [ -140, %bb.ad ], [ -140, %bb.v ], [ -140, %bb.y ], [ -146, %bb.ab ], [ -140, %bb.s ], [ -140, %._crit_edge.i ], [ -140, %bb.t ], [ -140, %bb.m ], [ -140, %bb.q ], [ -140, %bb.l ], [ -140, %bb.ae ], [ -146, %bb.aa ], [ -140, %.thread69.i ], [ -140, %GetLength_ex.exit ], [ -140, %bb.ar ], [ -140, %.lr.ph325 ], [ -140, %bb.av ]
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
end_hunk_0
