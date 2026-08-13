inline.NumInlined: 1687
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 42
begin_hunk_0_@Gia_ManDetectSims:bb.a
  store i32 %spec.store.select.i74, ptr %i.ad, align 8, !tbaa !72
  %.not.i75 = icmp eq i32 %spec.store.select.i74, 0
  br i1 %.not.i75, label %Vec_IntAlloc.exit76, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit
  %i.ag = sext i32 %spec.store.select.i74 to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ah) #40
  br label %Vec_IntAlloc.exit76

Vec_IntAlloc.exit76:                              ; preds = %Vec_IntAlloc.exit, %bb.d
  %i.aj = phi ptr [ %i.ai, %bb.d ], [ null, %Vec_IntAlloc.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !61
  %i.al = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %.val67 = load ptr, ptr %i.al, align 8, !tbaa !46
  %.val67.fr = freeze ptr %.val67
  %i.am = getelementptr i8, ptr %i.y, i64 8
  %.val68.val = load ptr, ptr %i.am, align 8, !tbaa !61
  %i.an = sext i32 %1 to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %.val68.val, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %.idx = mul nsw i64 %i.aq, 12
  %i.ar = getelementptr inbounds i8, ptr %.val67.fr, i64 %.idx ; 3 uses
  %i.as = load i64, ptr %i.ar, align 4
  %i.at = and i64 %i.as, 536870911
  %i.au = icmp eq i64 %i.at, %i.aq
  br i1 %i.au, label %bb.l, label %.critedge.preheader.split

.critedge.preheader.split:                        ; preds = %Vec_IntAlloc.exit76
  %i.av = shl nsw i32 %2, 6
  %i.aw = icmp sgt i32 %2, 0
  br i1 %i.aw, label %.lr.ph88, label %.critedge._crit_edge

.lr.ph88:                                         ; preds = %.critedge.preheader.split, %.critedge4
  %.05287 = phi i32 [ %.153, %.critedge4 ], [ 0, %.critedge.preheader.split ] ; 4 uses
  %i.ax = load i64, ptr %i.ar, align 4            ; 2 uses
  %i.ay = and i64 %i.ax, 536870911
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [12 x i8], ptr %i.ar, i64 %i.az
  %i.bb = trunc i64 %i.ax to i32
  %i.bc = lshr i32 %i.bb, 29
  %i.bd = and i32 %i.bc, 1
  %i.be = xor i32 %i.bd, 1
  %i.bf = tail call i32 @Cec4_ManGeneratePatterns_rec(ptr noundef %0, ptr noundef nonnull %i.ba, i32 noundef %i.be, ptr noundef nonnull %i.n, ptr noundef nonnull %i.ad) #38
  %.not56 = icmp eq i32 %i.bf, 0
  br i1 %.not56, label %bb.h, label %.preheader

.preheader:                                       ; preds = %.lr.ph88
  %.val66 = load i32, ptr %i.p, align 4, !tbaa !64 ; 2 uses
  %i.bg = icmp sgt i32 %.val66, 0
  br i1 %i.bg, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader
  %.val64 = load ptr, ptr %i.u, align 8, !tbaa !61
  %i.bh = and i32 %.05287, 31
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = ashr i32 %.05287, 5
  %i.bk = sext i32 %i.bj to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.i, i64 %i.bk
  %wide.trip.count = zext nneg i32 %.val66 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.val64, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !8  ; 2 uses
  %i.bn = and i32 %i.bm, 1
  %.not58 = icmp eq i32 %i.bn, 0
  br i1 %.not58, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bo = ashr exact i32 %i.bm, 1
  %.val59 = load ptr, ptr %i.al, align 8, !tbaa !46
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [12 x i8], ptr %.val59, i64 %i.bp
  %.val62 = load i64, ptr %i.bq, align 4
  %i.br = lshr i64 %.val62, 32
  %i.bs = trunc nuw i64 %i.br to i32
  %i.bt = and i32 %i.bs, 536870911
  %i.bu = mul nuw nsw i32 %i.bt, %2
  %i.bv = zext nneg i32 %i.bu to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bv ; 2 uses
  %i.bw = load i32, ptr %gep, align 4, !tbaa !8
  %i.bx = or i32 %i.bw, %i.bi
  store i32 %i.bx, ptr %gep, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.e, !llvm.loop !286

.critedge2:                                       ; preds = %bb.g, %.preheader
  %i.by = add nsw i32 %.05287, 1
  br label %bb.h

bb.h:                                             ; preds = %.critedge2, %.lr.ph88
  %.153 = phi i32 [ %i.by, %.critedge2 ], [ %.05287, %.lr.ph88 ] ; 2 uses
  %.val6583 = load i32, ptr %i.af, align 4, !tbaa !64
  %i.bz = icmp sgt i32 %.val6583, 0
  br i1 %i.bz, label %.lr.ph85, label %.critedge4

.lr.ph85:                                         ; preds = %bb.h, %bb.i
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %.val = load ptr, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %.not57 = icmp eq ptr %.val, null
  br i1 %.not57, label %.critedge4, label %bb.i

bb.i:                                             ; preds = %.lr.ph85
  %.val63 = load ptr, ptr %i.ak, align 8, !tbaa !61
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.val63, i64 %indvars.iv91
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.cc ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 4
  %i.cf = and i64 %i.ce, -4611686019501129729
  store i64 %i.cf, ptr %i.cd, align 4
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %.val65 = load i32, ptr %i.af, align 4, !tbaa !64
  %i.cg = sext i32 %.val65 to i64
  %i.ch = icmp slt i64 %indvars.iv.next92, %i.cg
  br i1 %i.ch, label %.lr.ph85, label %.critedge4, !llvm.loop !287

.critedge4:                                       ; preds = %.lr.ph85, %bb.i, %bb.h
  %i.ci = icmp slt i32 %.153, %i.av
  br i1 %i.ci, label %.lr.ph88, label %.critedge._crit_edge.loopexit, !llvm.loop !288

.critedge._crit_edge.loopexit:                    ; preds = %.critedge4
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !61
  br label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge._crit_edge.loopexit, %.critedge.preheader.split
  %i.cj = phi ptr [ %.pre, %.critedge._crit_edge.loopexit ], [ %i.t, %.critedge.preheader.split ] ; 2 uses
  %.not.i77 = icmp eq ptr %i.cj, null
  br i1 %.not.i77, label %Vec_IntFree.exit, label %bb.j

bb.j:                                             ; preds = %.critedge._crit_edge
  tail call void @free(ptr noundef nonnull %i.cj) #38
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge._crit_edge, %bb.j
  tail call void @free(ptr noundef nonnull %i.n) #38
  %i.ck = load ptr, ptr %i.ak, align 8, !tbaa !61 ; 2 uses
  %.not.i78 = icmp eq ptr %i.ck, null
  br i1 %.not.i78, label %Vec_IntFree.exit79, label %bb.k

bb.k:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.ck) #38
  br label %Vec_IntFree.exit79

Vec_IntFree.exit79:                               ; preds = %Vec_IntFree.exit, %bb.k
  tail call void @free(ptr noundef nonnull %i.ad) #38
  br label %bb.l

bb.l:                                             ; preds = %Vec_IntAlloc.exit76, %Vec_IntFree.exit79
  %.0 = phi ptr [ %i.d, %Vec_IntFree.exit79 ], [ null, %Vec_IntAlloc.exit76 ]
  ret ptr %.0
}

declare i32 @Cec4_ManGeneratePatterns_rec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Vec_WrdInterleave(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val26 = load i32, ptr %i.a, align 4, !tbaa !187
  %i.b = getelementptr i8, ptr %1, i64 4
  %.val25 = load i32, ptr %i.b, align 4, !tbaa !187
  %i.c = add nsw i32 %.val25, %.val26             ; 2 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 6 uses
  %i.e = add i32 %i.c, -1
  %or.cond.i = icmp ult i32 %i.e, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.c ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !187
  store i32 %spec.store.select.i, ptr %i.d, align 8, !tbaa !183
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_WrdAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #40
  br label %Vec_WrdAlloc.exit

Vec_WrdAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !186
  %i.l = icmp sgt i32 %3, 0
  br i1 %i.l, label %.preheader36.lr.ph, label %._crit_edge55

.preheader36.lr.ph:                               ; preds = %Vec_WrdAlloc.exit
  %i.m = icmp sgt i32 %2, 0
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = getelementptr i8, ptr %1, i64 8
  %i.p = zext i32 %2 to i64                       ; 4 uses
  %wide.trip.count74 = zext nneg i32 %3 to i64
  br label %.preheader36

.preheader36:                                     ; preds = %.preheader36.lr.ph, %.preheader.thread
  %.promoted41 = phi ptr [ %i.j, %.preheader36.lr.ph ], [ %.promoted4184, %.preheader.thread ] ; 2 uses
  %.promoted38 = phi i32 [ %spec.store.select.i, %.preheader36.lr.ph ], [ %.promoted3881, %.preheader.thread ] ; 2 uses
  %.promoted = phi i32 [ 0, %.preheader36.lr.ph ], [ %.promoted78, %.preheader.thread ] ; 2 uses
  %indvars.iv71 = phi i64 [ 0, %.preheader36.lr.ph ], [ %indvars.iv.next72, %.preheader.thread ] ; 3 uses
  br i1 %i.m, label %.lr.ph, label %.preheader.thread

.lr.ph:                                           ; preds = %.preheader36
  %4 = mul nuw nsw i64 %indvars.iv71, %i.p
  %5 = sext i32 %.promoted to i64
  br label %bb.c

.preheader:                                       ; preds = %Vec_WrdPush.exit
  %i.q = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.q, ptr %i.f, align 4, !tbaa !187
  store i32 %spec.select.sink.i39, ptr %i.d, align 8
  store ptr %storemerge3543, ptr %i.k, align 8
  %i.r = mul nuw nsw i64 %indvars.iv71, %i.p
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph, %Vec_WrdPush.exit
  %indvars.iv57 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next58, %Vec_WrdPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %5, %.lr.ph ], [ %indvars.iv.next, %Vec_WrdPush.exit ] ; 7 uses
  %storemerge3542 = phi ptr [ %.promoted41, %.lr.ph ], [ %storemerge3543, %Vec_WrdPush.exit ] ; 6 uses
  %spec.select.sink.i40 = phi i32 [ %.promoted38, %.lr.ph ], [ %spec.select.sink.i39, %Vec_WrdPush.exit ] ; 3 uses
  %.val24 = load ptr, ptr %i.n, align 8, !tbaa !186
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %indvars.iv57
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %4
  %i.u = load i64, ptr %i.t, align 8, !tbaa !235
  %i.v = trunc nsw i64 %indvars.iv to i32
  %i.w = icmp eq i32 %spec.select.sink.i40, %i.v
  br i1 %i.w, label %bb.d, label %Vec_WrdPush.exit

bb.d:                                             ; preds = %bb.c
  %i.x = icmp slt i64 %indvars.iv, 16
  br i1 %i.x, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge3542, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge3542, i64 noundef 128) #41
  br label %Vec_WrdPush.exit

bb.g:                                             ; preds = %bb.e
  %i.z = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #40
  br label %Vec_WrdPush.exit

bb.h:                                             ; preds = %bb.d
  %i.aa = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ab = shl i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.aa, i32 %i.ab, i32 2147483647 ; 4 uses
  %i.ac = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.ac
  br i1 %.not.i9.i, label %bb.i, label %Vec_WrdPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %storemerge3542, null
  %i.ad = zext nneg i32 %spec.select.i to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = tail call ptr @realloc(ptr noundef nonnull %storemerge3542, i64 noundef %i.ae) #41
  br label %Vec_WrdPush.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.ae) #40
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge3543 = phi ptr [ %storemerge3542, %bb.c ], [ %storemerge3542, %bb.h ], [ %i.z, %bb.g ], [ %i.y, %bb.f ], [ %i.af, %bb.j ], [ %i.ag, %bb.k ] ; 4 uses
  %spec.select.sink.i39 = phi i32 [ %spec.select.sink.i40, %bb.c ], [ %spec.select.sink.i40, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %storemerge3543, i64 %indvars.iv
  store i64 %i.u, ptr %i.ah, align 8, !tbaa !235
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next58, %i.p
  br i1 %exitcond.not, label %.preheader, label %bb.c, !llvm.loop !289

bb.l:                                             ; preds = %.preheader, %Vec_WrdPush.exit34
  %indvars.iv64 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next65, %Vec_WrdPush.exit34 ] ; 2 uses
  %indvars.iv62 = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.next63, %Vec_WrdPush.exit34 ] ; 7 uses
  %storemerge52 = phi ptr [ %storemerge3543, %.preheader ], [ %storemerge53, %Vec_WrdPush.exit34 ] ; 3 uses
  %spec.select.sink.i3150 = phi i32 [ %spec.select.sink.i39, %.preheader ], [ %spec.select.sink.i3149, %Vec_WrdPush.exit34 ] ; 3 uses
  %.val = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.r
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !235
  %i.al = trunc nsw i64 %indvars.iv62 to i32
  %i.am = icmp eq i32 %spec.select.sink.i3150, %i.al
  br i1 %i.am, label %bb.m, label %Vec_WrdPush.exit34

bb.m:                                             ; preds = %bb.l
  %i.an = icmp slt i64 %indvars.iv62, 16
  br i1 %i.an, label %Vec_WrdPush.exit34.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = icmp samesign ult i64 %indvars.iv62, 1073741823
  %indvars.iv62.tr = trunc i64 %indvars.iv62 to i32
  %i.ap = shl i32 %indvars.iv62.tr, 1
  %spec.select.i27 = select i1 %i.ao, i32 %i.ap, i32 2147483647 ; 3 uses
  %i.aq = sext i32 %spec.select.i27 to i64
  %.not.i9.i28 = icmp samesign ult i64 %indvars.iv62, %i.aq
  br i1 %.not.i9.i28, label %bb.o, label %Vec_WrdPush.exit34

bb.o:                                             ; preds = %bb.n
  %i.ar = zext nneg i32 %spec.select.i27 to i64
  %i.as = shl nuw nsw i64 %i.ar, 3
  br label %Vec_WrdPush.exit34.sink.split

Vec_WrdPush.exit34.sink.split:                    ; preds = %bb.m, %bb.o
  %.sink = phi i64 [ %i.as, %bb.o ], [ 128, %bb.m ]
  %spec.select.sink.i3149.ph = phi i32 [ %spec.select.i27, %bb.o ], [ 16, %bb.m ]
  %i.at = tail call ptr @realloc(ptr noundef nonnull %storemerge52, i64 noundef %.sink) #41
  br label %Vec_WrdPush.exit34

Vec_WrdPush.exit34:                               ; preds = %Vec_WrdPush.exit34.sink.split, %bb.l, %bb.n
  %storemerge53 = phi ptr [ %storemerge52, %bb.l ], [ %storemerge52, %bb.n ], [ %i.at, %Vec_WrdPush.exit34.sink.split ] ; 4 uses
  %spec.select.sink.i3149 = phi i32 [ %spec.select.sink.i3150, %bb.l ], [ %spec.select.sink.i3150, %bb.n ], [ %spec.select.sink.i3149.ph, %Vec_WrdPush.exit34.sink.split ] ; 3 uses
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %storemerge53, i64 %indvars.iv62
  store i64 %i.ak, ptr %i.au, align 8, !tbaa !235
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next65, %i.p
  br i1 %exitcond70.not, label %._crit_edge, label %bb.l, !llvm.loop !290

._crit_edge:                                      ; preds = %Vec_WrdPush.exit34
  %6 = trunc nsw i64 %indvars.iv.next63 to i32    ; 2 uses
  store i32 %6, ptr %i.f, align 4, !tbaa !187
  store i32 %spec.select.sink.i3149, ptr %i.d, align 8
  store ptr %storemerge53, ptr %i.k, align 8
  br label %.preheader.thread

.preheader.thread:                                ; preds = %.preheader36, %._crit_edge
  %.promoted4184 = phi ptr [ %storemerge53, %._crit_edge ], [ %.promoted41, %.preheader36 ]
  %.promoted3881 = phi i32 [ %spec.select.sink.i3149, %._crit_edge ], [ %.promoted38, %.preheader36 ]
  %.promoted78 = phi i32 [ %6, %._crit_edge ], [ %.promoted, %.preheader36 ]
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %._crit_edge55, label %.preheader36, !llvm.loop !291

._crit_edge55:                                    ; preds = %.preheader.thread, %Vec_WrdAlloc.exit
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManTransformCond(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #38
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8, !tbaa !133
  %.neg45 = mul i64 %i.d, -1000000
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !135
  %.neg = sdiv i64 %i.f, -1000
  %.neg46 = add i64 %.neg, %.neg45
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg46, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.g = getelementptr i8, ptr %0, i64 72         ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %Abc_Clock.exit, %Vec_WrdFreeP.exit
  %.049 = phi i32 [ %i.q, %Vec_WrdFreeP.exit ], [ 0, %Abc_Clock.exit ] ; 4 uses
  %i.h = call ptr @Gia_ManDetectSims(ptr noundef nonnull %0, i32 noundef %.049, i32 noundef 1) ; 4 uses
  %.val27 = load ptr, ptr %i.g, align 8, !tbaa !68 ; 2 uses
  %i.i = getelementptr i8, ptr %.val27, i64 4
  %.val27.val = load i32, ptr %i.i, align 4, !tbaa !64 ; 3 uses
  %i.j = add nsw i32 %.val27.val, -4              ; 2 uses
  %.not = icmp slt i32 %.049, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = sub nsw i32 %.049, %i.j
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.l
  store ptr %i.h, ptr %i.m, align 8, !tbaa !292
  br label %Vec_WrdFreeP.exit

bb.d:                                             ; preds = %.lr.ph
  %i.n = icmp eq ptr %i.h, null
  br i1 %i.n, label %Vec_WrdFreeP.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !186  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.p) #38
  %.val28.pre.pre = load ptr, ptr %i.g, align 8, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.e
  %.val28.pre = phi ptr [ %.val28.pre.pre, %.thread.i ], [ %.val27, %bb.e ]
  call void @free(ptr noundef nonnull %i.h) #38
  %.phi.trans.insert = getelementptr i8, ptr %.val28.pre, i64 4
  %.val28.val.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !64
  br label %Vec_WrdFreeP.exit

Vec_WrdFreeP.exit:                                ; preds = %bb.f, %bb.d, %bb.c
  %.val28.val = phi i32 [ %.val28.val.pre, %bb.f ], [ %.val27.val, %bb.d ], [ %.val27.val, %bb.c ]
  %i.q = add nuw nsw i32 %.049, 1                 ; 2 uses
  %i.r = icmp slt i32 %i.q, %.val28.val
  br i1 %i.r, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !293

._crit_edge.loopexit:                             ; preds = %Vec_WrdFreeP.exit
  %.pre = load ptr, ptr %i.a, align 16, !tbaa !292 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !292  ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 64         ; 12 uses
  %.val40 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.v = getelementptr i8, ptr %.val40, i64 4
  %.val40.val = load i32, ptr %i.v, align 4, !tbaa !64
  %i.w = call ptr @Vec_WrdInterleave(ptr noundef %.pre, ptr noundef %i.t, i32 noundef 1, i32 noundef %.val40.val) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !292 ; 3 uses
  %.val39 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.z = getelementptr i8, ptr %.val39, i64 4
  %.val39.val = load i32, ptr %i.z, align 4, !tbaa !64
  %i.aa = call ptr @Vec_WrdInterleave(ptr noundef %.pre, ptr noundef %i.y, i32 noundef 1, i32 noundef %.val39.val) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !292 ; 3 uses
  %.val38 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.ad = getelementptr i8, ptr %.val38, i64 4
  %.val38.val = load i32, ptr %i.ad, align 4, !tbaa !64
  %i.ae = call ptr @Vec_WrdInterleave(ptr noundef %.pre, ptr noundef %i.ac, i32 noundef 1, i32 noundef %.val38.val) ; 2 uses
  %.val37 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.af = getelementptr i8, ptr %.val37, i64 4
  %.val37.val = load i32, ptr %i.af, align 4, !tbaa !64
  %i.ag = call ptr @Vec_WrdInterleave(ptr noundef %i.t, ptr noundef %i.y, i32 noundef 1, i32 noundef %.val37.val) ; 2 uses
  %.val36 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.ah = getelementptr i8, ptr %.val36, i64 4
  %.val36.val = load i32, ptr %i.ah, align 4, !tbaa !64
  %i.ai = call ptr @Vec_WrdInterleave(ptr noundef %i.t, ptr noundef %i.ac, i32 noundef 1, i32 noundef %.val36.val) ; 2 uses
  %.val35 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.aj = getelementptr i8, ptr %.val35, i64 4
  %.val35.val = load i32, ptr %i.aj, align 4, !tbaa !64
  %i.ak = call ptr @Vec_WrdInterleave(ptr noundef %i.y, ptr noundef %i.ac, i32 noundef 1, i32 noundef %.val35.val) ; 2 uses
  %.val34 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.al = getelementptr i8, ptr %.val34, i64 4
  %.val34.val = load i32, ptr %i.al, align 4, !tbaa !64
  call void @Gia_ManResubPair(ptr noundef %i.w, ptr noundef %i.ak, i32 noundef 2, i32 noundef %.val34.val) #38
  %.val33 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.am = getelementptr i8, ptr %.val33, i64 4
  %.val33.val = load i32, ptr %i.am, align 4, !tbaa !64
  call void @Gia_ManResubPair(ptr noundef %i.aa, ptr noundef %i.ai, i32 noundef 2, i32 noundef %.val33.val) #38
  %.val32 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.an = getelementptr i8, ptr %.val32, i64 4
  %.val32.val = load i32, ptr %i.an, align 4, !tbaa !64
  call void @Gia_ManResubPair(ptr noundef %i.ae, ptr noundef %i.ag, i32 noundef 2, i32 noundef %.val32.val) #38
  %.val31 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.ao = getelementptr i8, ptr %.val31, i64 4
  %.val31.val = load i32, ptr %i.ao, align 4, !tbaa !64
  call void @Gia_ManResubPair(ptr noundef %i.ak, ptr noundef %i.w, i32 noundef 2, i32 noundef %.val31.val) #38
  %.val30 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.ap = getelementptr i8, ptr %.val30, i64 4
  %.val30.val = load i32, ptr %i.ap, align 4, !tbaa !64
  call void @Gia_ManResubPair(ptr noundef %i.ai, ptr noundef %i.aa, i32 noundef 2, i32 noundef %.val30.val) #38
  %.val29 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.aq = getelementptr i8, ptr %.val29, i64 4
  %.val29.val = load i32, ptr %i.aq, align 4, !tbaa !64
  call void @Gia_ManResubPair(ptr noundef %i.ag, ptr noundef %i.ae, i32 noundef 2, i32 noundef %.val29.val) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.ar = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #38
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %Abc_Clock.exit42, label %bb.g

bb.g:                                             ; preds = %._crit_edge.loopexit
  %i.at = load i64, ptr %1, align 8, !tbaa !133
  %i.au = mul nsw i64 %i.at, 1000000
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !135
  %i.ax = sdiv i64 %i.aw, 1000
  %i.ay = add nsw i64 %i.ax, %i.au
  br label %Abc_Clock.exit42

Abc_Clock.exit42:                                 ; preds = %._crit_edge.loopexit, %bb.g
  %.0.i41 = phi i64 [ %i.ay, %bb.g ], [ -1, %._crit_edge.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  %i.az = add i64 %.0.i41, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.26)
  %i.ba = sitofp i64 %i.az to double
  %i.bb = fdiv double %i.ba, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.107, double noundef %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret ptr null
}

declare void @Gia_ManResubPair(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define void @Gia_ManWriteSol(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @Extra_FileNameGeneric(ptr noundef %1) #38 ; 4 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #39
  %i.c = add i64 %i.b, 5
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #40 ; 5 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #39
  %i.f = add i64 %i.e, 5
  %i.g = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.d, i64 noundef %i.f, ptr noundef nonnull @.str.115, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.64) #38 ; 0 uses
  %i.h = tail call noalias ptr @fopen(ptr noundef %i.d, ptr noundef nonnull @.str.46) ; 4 uses
  tail call void @free(ptr noundef %i.a) #38
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.n = phi i32 [ %i.ak, %bb.d ], [ %i.l, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.preheader ] ; 3 uses
  %.val = load ptr, ptr %i.j, align 8, !tbaa !46  ; 2 uses
  %.not38 = icmp eq ptr %.val, null
  br i1 %.not38, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv
  %.val42 = load i64, ptr %i.o, align 4           ; 5 uses
  %i.p = and i64 %.val42, 2147483648
  %.not.i = icmp ne i64 %i.p, 0
  %i.q = and i64 %.val42, 536870911
  %i.r = icmp eq i64 %i.q, 536870911
  %narrow.i.not = or i1 %.not.i, %i.r
  br i1 %narrow.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
