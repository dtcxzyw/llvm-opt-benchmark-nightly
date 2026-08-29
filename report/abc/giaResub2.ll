Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaResub2?download=true
inline.NumInlined: 695
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Gia_Rsb2ManInsert_rec:bb.a
  %i.j = sext i32 %.val133 to i64
  %i.k = getelementptr [4 x i8], ptr %.val134, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33   ; 2 uses
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %Vec_IntFree.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp slt i32 %i.n, %.val132
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %5, i64 8
  %.val127 = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.r = sext i32 %i.n to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %.val127, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !33
  %i.u = tail call i32 @Gia_Rsb2ManInsert_rec(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef -1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %i.t)
  br label %Vec_IntFree.exit

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36 ; 3 uses
  %i.w = icmp sgt i32 %.val133, 1
  br i1 %i.w, label %.lr.ph, label %.critedge._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.x = getelementptr i8, ptr %5, i64 8
  br label %bb.g

.critedge.preheader:                              ; preds = %bb.i
  %i.y = icmp sgt i32 %.val131, 1
  br i1 %i.y, label %.critedge2.lr.ph, label %.critedge._crit_edge

.critedge2.lr.ph:                                 ; preds = %.critedge.preheader
  %i.z = getelementptr i8, ptr %5, i64 8          ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 4
  br label %.critedge2

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.val131163 = phi i32 [ %.val133, %.lr.ph ], [ %.val131, %bb.i ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.val126 = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val126, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !33
  %i.ad = ashr i32 %i.ac, 1                       ; 2 uses
  %i.ae = icmp slt i32 %i.ad, %.val132
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val125 = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val125, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33
  %i.ai = tail call i32 @Gia_Rsb2ManInsert_rec(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef -1, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, i32 noundef %i.ah) ; 0 uses
  %.val131.pre = load i32, ptr %i.h, align 4, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.val131 = phi i32 [ %.val131163, %bb.g ], [ %.val131.pre, %bb.h ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = add nsw i32 %.val131, -1
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %bb.g, label %.critedge.preheader, !llvm.loop !65

.critedge2:                                       ; preds = %.critedge2.lr.ph, %Vec_IntPush.exit
  %indvars.iv158 = phi i64 [ 0, %.critedge2.lr.ph ], [ %indvars.iv.next159, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv156 = phi i64 [ 0, %.critedge2.lr.ph ], [ %indvars.iv.next157, %Vec_IntPush.exit ] ; 7 uses
  %spec.select.sink.i154 = phi i32 [ 16, %.critedge2.lr.ph ], [ %spec.select.sink.i153, %Vec_IntPush.exit ] ; 3 uses
  %storemerge150 = phi ptr [ %i.v, %.critedge2.lr.ph ], [ %storemerge149, %Vec_IntPush.exit ] ; 8 uses
  %.val124 = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val124, i64 %indvars.iv158 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !33 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !33 ; 5 uses
  %i.aq = ashr i32 %i.an, 1                       ; 3 uses
  %i.ar = ashr i32 %i.ap, 1                       ; 3 uses
  %i.as = icmp slt i32 %i.aq, %.val132
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge2
  %.val122 = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %.val122, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !33
  %.val121 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %.val121, i64 %i.aw
  br label %bb.l

bb.k:                                             ; preds = %.critedge2
  %i.ay = sub nsw i32 %i.aq, %.val132
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %storemerge150, i64 %i.az
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.in = phi ptr [ %i.ax, %bb.j ], [ %i.ba, %bb.k ]
  %i.bb = load i32, ptr %.in, align 4, !tbaa !33  ; 3 uses
  %i.bc = icmp slt i32 %i.ar, %.val132
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.val119 = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.bd = sext i32 %i.ar to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %.val119, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33
  %.val118 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %.val118, i64 %i.bg
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bi = sub nsw i32 %i.ar, %.val132
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %storemerge150, i64 %i.bj
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.in144 = phi ptr [ %i.bh, %bb.m ], [ %i.bk, %bb.n ]
  %i.bl = load i32, ptr %.in144, align 4, !tbaa !33 ; 3 uses
  %i.bm = icmp slt i32 %i.bb, %i.bl               ; 2 uses
  %..i = select i1 %i.bm, i32 %i.an, i32 %i.ap
  %.58.i = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.bl)
  %.59.i = select i1 %i.bm, i32 %i.ap, i32 %i.an
  %.60.i = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 %i.bl)
  %i.bn = and i32 %..i, 1
  %i.bo = xor i32 %i.bn, %.58.i                   ; 7 uses
  %i.bp = and i32 %.59.i, 1
  %i.bq = xor i32 %i.bp, %.60.i                   ; 7 uses
  %.val.i = load i32, ptr %i.aa, align 4, !tbaa !12 ; 3 uses
  %i.br = icmp slt i32 %i.an, %i.ap
  br i1 %i.br, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  switch i32 %i.bo, label %bb.r [
    i32 0, label %Gia_Rsb2AddNode.exit
    i32 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  br label %Gia_Rsb2AddNode.exit

bb.r:                                             ; preds = %bb.p
  %i.bs = xor i32 %i.bq, %i.bo
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %Gia_Rsb2AddNode.exit, label %bb.w

bb.s:                                             ; preds = %bb.o
  %i.bu = icmp sgt i32 %i.an, %i.ap
  br i1 %i.bu, label %bb.t, label %Gia_Rsb2AddNode.exit

bb.t:                                             ; preds = %bb.s
  switch i32 %i.bo, label %bb.v [
    i32 0, label %Gia_Rsb2AddNode.exit
    i32 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.bv = xor i32 %i.bq, 1
  br label %Gia_Rsb2AddNode.exit

bb.v:                                             ; preds = %bb.t
  %i.bw = xor i32 %i.bq, %i.bo
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %Gia_Rsb2AddNode.exit, label %bb.x

bb.w:                                             ; preds = %bb.r
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %0, i32 noundef %i.bo, i32 noundef %i.bq)
  br label %Gia_Rsb2AddNode.exit

bb.x:                                             ; preds = %bb.v
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %0, i32 noundef %i.bq, i32 noundef %i.bo)
  br label %Gia_Rsb2AddNode.exit

Gia_Rsb2AddNode.exit:                             ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %.0.i = phi i32 [ %i.bq, %bb.t ], [ %i.bq, %bb.q ], [ %i.bo, %bb.p ], [ 1, %bb.v ], [ 0, %bb.r ], [ %i.bv, %bb.u ], [ %.val.i, %bb.x ], [ %.val.i, %bb.w ], [ %.val.i, %bb.s ] ; 2 uses
  %i.by = trunc nsw i64 %indvars.iv156 to i32
  %i.bz = icmp eq i32 %spec.select.sink.i154, %i.by
  br i1 %i.bz, label %bb.y, label %Vec_IntPush.exit

bb.y:                                             ; preds = %Gia_Rsb2AddNode.exit
  %i.ca = icmp samesign ult i64 %indvars.iv156, 16
  br i1 %i.ca, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %.not9.i.i = icmp eq ptr %storemerge150, null
  br i1 %.not9.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge150, i64 noundef 64) #35
  br label %Vec_IntPush.exit

bb.ab:                                            ; preds = %bb.z
  %i.cc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntPush.exit

bb.ac:                                            ; preds = %bb.y
  %i.cd = icmp samesign ult i64 %indvars.iv156, 1073741823
  %indvars.iv156.tr = trunc nsw i64 %indvars.iv156 to i32
  %i.ce = shl nsw i32 %indvars.iv156.tr, 1
  %spec.select.i = select i1 %i.cd, i32 %i.ce, i32 2147483647 ; 4 uses
  %i.cf = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv156, %i.cf
  br i1 %.not.i9.i, label %bb.ad, label %Vec_IntPush.exit

bb.ad:                                            ; preds = %bb.ac
  %.not9.i10.i = icmp eq ptr %storemerge150, null
  %i.cg = zext nneg i32 %spec.select.i to i64
  %i.ch = shl nuw nsw i64 %i.cg, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ci = tail call ptr @realloc(ptr noundef nonnull %storemerge150, i64 noundef %i.ch) #35
  br label %Vec_IntPush.exit

bb.af:                                            ; preds = %bb.ad
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ch) #36
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.ab, %bb.aa, %bb.af, %bb.ae, %Gia_Rsb2AddNode.exit, %bb.ac
  %spec.select.sink.i153 = phi i32 [ %spec.select.sink.i154, %Gia_Rsb2AddNode.exit ], [ %spec.select.sink.i154, %bb.ac ], [ 16, %bb.aa ], [ 16, %bb.ab ], [ %spec.select.i, %bb.af ], [ %spec.select.i, %bb.ae ]
  %storemerge149 = phi ptr [ %storemerge150, %Gia_Rsb2AddNode.exit ], [ %storemerge150, %bb.ac ], [ %i.cb, %bb.aa ], [ %i.cc, %bb.ab ], [ %i.cj, %bb.af ], [ %i.ci, %bb.ae ] ; 3 uses
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %storemerge149, i64 %indvars.iv156
  store i32 %.0.i, ptr %i.ck, align 4, !tbaa !33
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 2 ; 2 uses
  %i.cl = or disjoint i64 %indvars.iv.next159, 1
  %.val130 = load i32, ptr %i.h, align 4, !tbaa !12
  %i.cm = sext i32 %.val130 to i64
  %i.cn = icmp slt i64 %i.cl, %i.cm
  br i1 %i.cn, label %.critedge2, label %.critedge._crit_edge.thread, !llvm.loop !66

.critedge._crit_edge:                             ; preds = %bb.f, %.critedge.preheader
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %.critedge._crit_edge.thread

.critedge._crit_edge.thread:                      ; preds = %Vec_IntPush.exit, %.critedge._crit_edge
  %.0104.lcssa183 = phi i32 [ -1, %.critedge._crit_edge ], [ %.0.i, %Vec_IntPush.exit ]
  %i.co = phi ptr [ %i.v, %.critedge._crit_edge ], [ %storemerge149, %Vec_IntPush.exit ]
  tail call void @free(ptr noundef nonnull %i.co) #34
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge._crit_edge.thread, %.critedge._crit_edge, %bb.c, %bb.e
  %.1 = phi i32 [ 0, %bb.c ], [ %i.u, %bb.e ], [ -1, %.critedge._crit_edge ], [ %.0104.lcssa183, %.critedge._crit_edge.thread ]
  %i.cp = and i32 %i.m, 1
  %i.cq = xor i32 %.1, %i.cp
  br label %.sink.split

bb.ag:                                            ; preds = %bb.b
  %i.cr = shl nsw i32 %7, 1
  %i.cs = getelementptr i8, ptr %2, i64 8
  %.val116 = load ptr, ptr %i.cs, align 8, !tbaa !8
  %i.ct = sext i32 %i.cr to i64
  %i.cu = getelementptr [4 x i8], ptr %.val116, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !33 ; 5 uses
  %i.cw = getelementptr i8, ptr %i.cu, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !33 ; 5 uses
  %i.cy = ashr i32 %i.cv, 1
  %i.cz = tail call i32 @Gia_Rsb2ManInsert_rec(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %i.cy) ; 3 uses
  %i.da = ashr i32 %i.cx, 1
  %i.db = tail call i32 @Gia_Rsb2ManInsert_rec(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %i.da) ; 3 uses
  %i.dc = icmp slt i32 %i.cz, %i.db               ; 2 uses
  %..i137 = select i1 %i.dc, i32 %i.cv, i32 %i.cx
  %.58.i138 = tail call i32 @llvm.smin.i32(i32 %i.cz, i32 %i.db)
  %.59.i139 = select i1 %i.dc, i32 %i.cx, i32 %i.cv
  %.60.i140 = tail call i32 @llvm.smax.i32(i32 %i.cz, i32 %i.db)
  %i.dd = and i32 %..i137, 1
  %i.de = xor i32 %i.dd, %.58.i138                ; 7 uses
  %i.df = and i32 %.59.i139, 1
  %i.dg = xor i32 %i.df, %.60.i140                ; 7 uses
  %i.dh = getelementptr i8, ptr %0, i64 4
  %.val.i141 = load i32, ptr %i.dh, align 4, !tbaa !12 ; 3 uses
  %i.di = icmp slt i32 %i.cv, %i.cx
  br i1 %i.di, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  switch i32 %i.de, label %bb.aj [
    i32 0, label %.sink.split
    i32 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  br label %.sink.split

bb.aj:                                            ; preds = %bb.ah
  %i.dj = xor i32 %i.dg, %i.de
  %i.dk = icmp eq i32 %i.dj, 1
  br i1 %i.dk, label %.sink.split, label %bb.ao

bb.ak:                                            ; preds = %bb.ag
  %i.dl = icmp sgt i32 %i.cv, %i.cx
  br i1 %i.dl, label %bb.al, label %.sink.split

bb.al:                                            ; preds = %bb.ak
  switch i32 %i.de, label %bb.an [
    i32 0, label %.sink.split
    i32 1, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  %i.dm = xor i32 %i.dg, 1
  br label %.sink.split

bb.an:                                            ; preds = %bb.al
  %i.dn = xor i32 %i.dg, %i.de
  %i.do = icmp eq i32 %i.dn, 1
  br i1 %i.do, label %.sink.split, label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %0, i32 noundef %i.de, i32 noundef %i.dg)
  br label %.sink.split

bb.ap:                                            ; preds = %bb.an
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %0, i32 noundef %i.dg, i32 noundef %i.de)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %Vec_IntFree.exit
  %.0.i142.sink = phi i32 [ %i.cq, %Vec_IntFree.exit ], [ %i.dg, %bb.al ], [ %i.dg, %bb.ai ], [ %i.de, %bb.ah ], [ 1, %bb.an ], [ 0, %bb.aj ], [ %i.dm, %bb.am ], [ %.val.i141, %bb.ap ], [ %.val.i141, %bb.ao ], [ %.val.i141, %bb.ak ] ; 2 uses
  %.val135 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.dp = getelementptr inbounds [4 x i8], ptr %.val135, i64 %i.b
  store i32 %.0.i142.sink, ptr %i.dp, align 4, !tbaa !33
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %i.d, %bb.a ], [ %.0.i142.sink, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @Gia_Rsb2ManInsert(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef initializes((4, 8)) %6) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 4
  %.val43 = load i32, ptr %i.a, align 4, !tbaa !12 ; 9 uses
  %i.b = sdiv i32 %.val43, 2                      ; 3 uses
  %i.c = sub i32 %i.b, %1                         ; 2 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36 ; 7 uses
  %i.e = add i32 %.val43, -1
  %or.cond.i = icmp ult i32 %i.e, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val43 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !12
  store i32 %spec.store.select.i, ptr %i.d, align 8, !tbaa !13
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #36
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !8
  %i.l = load i32, ptr %6, align 8, !tbaa !13
  %.not.i.i = icmp slt i32 %i.l, %.val43
  br i1 %.not.i.i, label %bb.c, label %Vec_IntGrow.exit.i

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8    ; 2 uses
  %.not9.i.i = icmp eq ptr %i.n, null
  %i.o = sext i32 %.val43 to i64
  %i.p = shl nsw i64 %i.o, 2                      ; 2 uses
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.n, i64 noundef %i.p) #35
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %i.q, %bb.d ], [ %i.r, %bb.e ]
  store ptr %i.s, ptr %i.m, align 8, !tbaa !8
  store i32 %.val43, ptr %6, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %Vec_IntAlloc.exit
  %i.t = icmp sgt i32 %.val43, 0
  br i1 %i.t, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8
  %wide.trip.count.i = zext nneg i32 %.val43 to i64
  %i.w = shl nuw nsw i64 %wide.trip.count.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 -1, i64 %i.w, i1 false), !tbaa !33
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %.lr.ph.i, %Vec_IntGrow.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.val43, ptr %i.x, align 4, !tbaa !12
  %i.y = shl i32 %0, 1
  %i.z = add i32 %i.y, 2                          ; 6 uses
  %.not.i.i45 = icmp slt i32 %spec.store.select.i, %i.z
  br i1 %.not.i.i45, label %bb.g, label %Vec_IntGrow.exit.i46

bb.g:                                             ; preds = %Vec_IntFill.exit
  %.not9.i.i52 = icmp eq ptr %i.j, null
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2                    ; 2 uses
  br i1 %.not9.i.i52, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.j, i64 noundef %i.ab) #35
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ab) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = phi ptr [ %i.ac, %bb.h ], [ %i.ad, %bb.i ] ; 2 uses
  store ptr %i.ae, ptr %i.k, align 8, !tbaa !8
  store i32 %i.z, ptr %i.d, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.i46

Vec_IntGrow.exit.i46:                             ; preds = %bb.j, %Vec_IntFill.exit
  %i.af = phi ptr [ %i.ae, %bb.j ], [ %i.j, %Vec_IntFill.exit ]
  %i.ag = icmp sgt i32 %i.z, 0
  br i1 %i.ag, label %.lr.ph.i47, label %Vec_IntFill.exit53

.lr.ph.i47:                                       ; preds = %Vec_IntGrow.exit.i46
  %wide.trip.count.i48 = zext nneg i32 %i.z to i64
  %i.ah = shl nuw nsw i64 %wide.trip.count.i48, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ah, i1 false), !tbaa !33
  br label %Vec_IntFill.exit53

Vec_IntFill.exit53:                               ; preds = %.lr.ph.i47, %Vec_IntGrow.exit.i46
  store i32 %i.z, ptr %i.f, align 4, !tbaa !12
  %.not55 = icmp slt i32 %0, 0
  br i1 %.not55, label %.preheader54, label %.lr.ph

.lr.ph:                                           ; preds = %Vec_IntFill.exit53
  %i.ai = getelementptr i8, ptr %6, i64 8
  %.val44 = load ptr, ptr %i.ai, align 8, !tbaa !8 ; 2 uses
  %i.aj = add nuw i32 %0, 1
  %wide.trip.count = zext i32 %i.aj to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %0, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val44, i64 %index ; 2 uses
  %i.al = shl nuw <4 x i32> %vec.ind, splat (i32 1)
  %step.add = shl <4 x i32> %vec.ind, splat (i32 1)
  %i.am = add <4 x i32> %step.add, splat (i32 8)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x i32> %i.al, ptr %i.ak, align 4, !tbaa !33
  store <4 x i32> %i.am, ptr %i.an, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader54, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader54:                                     ; preds = %scalar.ph, %middle.block, %Vec_IntFill.exit53
  %i.ap = icmp sgt i32 %1, 0
  br i1 %i.ap, label %.lr.ph58, label %._crit_edge

.lr.ph58:                                         ; preds = %.preheader54
  %i.aq = getelementptr i8, ptr %2, i64 8
  %i.ar = sext i32 %i.c to i64
  %i.as = sext i32 %i.b to i64
  br label %bb.k

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val44, i64 %indvars.iv
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.au = shl nuw i32 %indvars.iv.tr, 1
  store i32 %i.au, ptr %i.at, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader54, label %scalar.ph, !llvm.loop !70

.lr.ph60:                                         ; preds = %bb.k
  %i.av = getelementptr i8, ptr %6, i64 8
  %i.aw = getelementptr i8, ptr %2, i64 8
  %i.ax = sext i32 %i.c to i64
  %i.ay = sext i32 %i.b to i64
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph58, %bb.k
  %indvars.iv62 = phi i64 [ %i.ar, %.lr.ph58 ], [ %indvars.iv.next63, %bb.k ] ; 2 uses
  %.val40 = load ptr, ptr %i.aq, align 8, !tbaa !8
  %.idx = shl nsw i64 %indvars.iv62, 3
  %i.az = getelementptr inbounds i8, ptr %.val40, i64 %.idx
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !33
  %i.bb = ashr i32 %i.ba, 1
  %i.bc = tail call i32 @Gia_Rsb2ManInsert_rec(ptr noundef nonnull %i.d, i32 noundef %0, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, i32 noundef %i.bb) ; 0 uses
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.bd = icmp slt i64 %indvars.iv.next63, %i.as
  br i1 %i.bd, label %bb.k, label %.lr.ph60, !llvm.loop !71

bb.l:                                             ; preds = %.lr.ph60, %bb.l
  %indvars.iv65 = phi i64 [ %i.ax, %.lr.ph60 ], [ %indvars.iv.next66, %bb.l ] ; 2 uses
  %.val = load ptr, ptr %i.av, align 8, !tbaa !8
  %.val39 = load ptr, ptr %i.aw, align 8, !tbaa !8
  %.idx71 = shl nsw i64 %indvars.iv65, 3
  %i.be = getelementptr inbounds i8, ptr %.val39, i64 %.idx71
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33 ; 2 uses
  %i.bg = ashr i32 %i.bf, 1
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !33
  %i.bk = and i32 %i.bf, 1
  %i.bl = xor i32 %i.bj, %i.bk                    ; 2 uses
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.d, i32 noundef %i.bl, i32 noundef %i.bl)
  %indvars.iv.next66 = add nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.bm = icmp slt i64 %indvars.iv.next66, %i.ay
  br i1 %i.bm, label %bb.l, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.l, %.preheader54
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define void @Abc_ResubPrintDivs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.b = trunc nuw nsw i64 %indvars.iv to i32
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.b) ; 0 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  tail call void @Dau_DsdPrintFromTruth(ptr noundef %i.e, i32 noundef 6) #34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @Dau_DsdPrintFromTruth(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483648, 2147483647) i32 @Abc_ResubNodeToTry(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #13 {
bb.a:
  %.011 = add nsw i32 %2, -1                      ; 2 uses
  %.not.not12 = icmp sgt i32 %2, %1
  br i1 %.not.not12, label %.lr.ph, label %Vec_IntFind.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br i1 %i.c, label %.lr.ph.split.us, label %Vec_IntFind.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %Vec_IntFind.exit.loopexit.us, %.lr.ph.split.us
  %.013.us = phi i32 [ %.011, %.lr.ph.split.us ], [ %.0.us, %Vec_IntFind.exit.loopexit.us ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.us
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33
  %i.h = icmp eq i32 %i.g, %.013.us
  br i1 %i.h, label %Vec_IntFind.exit.loopexit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %Vec_IntFind.exit.thread, label %bb.b, !llvm.loop !75

Vec_IntFind.exit.loopexit.us:                     ; preds = %bb.b
  %.0.us = add nsw i32 %.013.us, -1
  %.not.not.us = icmp sgt i32 %.013.us, %1
  br i1 %.not.not.us, label %.lr.ph.i.us, label %Vec_IntFind.exit.thread, !llvm.loop !76

Vec_IntFind.exit.thread:                          ; preds = %Vec_IntFind.exit.loopexit.us, %bb.c, %bb.a, %.lr.ph
  %.07 = phi i32 [ %.011, %.lr.ph ], [ -1, %bb.a ], [ %.013.us, %bb.c ], [ -1, %Vec_IntFind.exit.loopexit.us ]
  ret i32 %.07
}

; Function Attrs: nounwind uwtable
define i32 @Abc_ResubComputeWindow(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %struct.Vec_Int_t_, align 8        ; 6 uses
  %i.b = tail call noalias noundef dereferenceable_or_null(208) ptr @calloc(i64 noundef 1, i64 noundef 208) #33 ; 21 uses
  tail call void @Gia_Rsb2ManStart(ptr noundef %i.b, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  store ptr null, ptr %8, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !36
  %i.g = add nsw i32 %i.f, 1                      ; 2 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %.not.not12.i90 = icmp sgt i32 %i.h, %i.g
  br i1 %.not.not12.i90, label %.lr.ph.i.lr.ph, label %Abc_ResubNodeToTry.exit.thread.thread

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 172      ; 7 uses
  %i.j = getelementptr i8, ptr %i.b, i64 176      ; 6 uses
  %i.k = getelementptr i8, ptr %i.b, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.v = getelementptr i8, ptr %i.b, i64 160
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ab
  %.011.i92.in = phi i32 [ %i.h, %.lr.ph.i.lr.ph ], [ %i.dd, %bb.ab ]
  %i.w = phi i32 [ %i.g, %.lr.ph.i.lr.ph ], [ %i.dc, %bb.ab ]
  %.06891 = phi i32 [ 0, %.lr.ph.i.lr.ph ], [ %.169, %bb.ab ] ; 4 uses
  %.011.i92 = add nsw i32 %.011.i92.in, -1        ; 2 uses
  %i.x = load i32, ptr %i.i, align 4, !tbaa !12   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  %wide.trip.count.i.i = zext nneg i32 %i.x to i64
  br i1 %i.y, label %.lr.ph.split.us.i, label %Abc_ResubNodeToTry.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !8
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %Vec_IntFind.exit.loopexit.us.i, %.lr.ph.split.us.i
  %.013.us.i = phi i32 [ %.011.i92, %.lr.ph.split.us.i ], [ %.0.us.i, %Vec_IntFind.exit.loopexit.us.i ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i.us.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.ac = icmp eq i32 %i.ab, %.013.us.i
  br i1 %i.ac, label %Vec_IntFind.exit.loopexit.us.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %Abc_ResubNodeToTry.exit, label %bb.b, !llvm.loop !75

Vec_IntFind.exit.loopexit.us.i:                   ; preds = %bb.b
  %.0.us.i = add nsw i32 %.013.us.i, -1
  %.not.not.us.i = icmp sgt i32 %.013.us.i, %i.w
  br i1 %.not.not.us.i, label %.lr.ph.i.us.i, label %Abc_ResubNodeToTry.exit.thread, !llvm.loop !76

Abc_ResubNodeToTry.exit:                          ; preds = %bb.c, %.lr.ph.i
  %.07.i = phi i32 [ %.011.i92, %.lr.ph.i ], [ %.013.us.i, %bb.c ] ; 4 uses
  %i.ad = icmp sgt i32 %.07.i, 0
  br i1 %i.ad, label %bb.d, label %Abc_ResubNodeToTry.exit.thread

bb.d:                                             ; preds = %Abc_ResubNodeToTry.exit
  %i.ae = call i32 @Gia_Rsb2ManDivs(ptr noundef %i.b, i32 noundef %.07.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %.val79 = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.af = load i32, ptr %i.l, align 8, !tbaa !62
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = call i32 @Abc_ResubComputeFunction(ptr noundef %.val79, i32 noundef %i.ae, i32 noundef 1, i32 noundef %i.ag, i32 noundef %2, i32 noundef 0, i32 noundef %4, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %i.a) #34 ; 3 uses
  %i.ai = icmp eq i32 %i.ah, 0
end_hunk_0
begin_hunk_1_@Gia_RsbEnumerateWindows:bb.a
  %i.dq = sitofp <2 x i32> %i.dp to <2 x double>
  %i.dr = sitofp i32 %.072.lcssa.ph to double
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %Abc_Clock.exit
  %.075.lcssa = phi i32 [ 0, %Abc_Clock.exit ], [ %.075.lcssa.ph, %.critedge.loopexit ] ; 2 uses
  %.072.lcssa = phi double [ 0.000000e+00, %Abc_Clock.exit ], [ %i.dr, %.critedge.loopexit ]
  %.065.lcssa = phi i32 [ 0, %Abc_Clock.exit ], [ %.065.lcssa.ph, %.critedge.loopexit ]
  %i.ds = phi <2 x double> [ zeroinitializer, %Abc_Clock.exit ], [ %i.dq, %.critedge.loopexit ]
  call void @Gia_ManStaticFanoutStop(ptr noundef nonnull %0) #34
  %i.dt = load i32, ptr %i.e, align 8, !tbaa !121 ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 0
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !115 ; 3 uses
  br i1 %i.du, label %.lr.ph.i.i115.preheader, label %._crit_edge.i.i

.lr.ph.i.i115.preheader:                          ; preds = %.critedge
  %i.dv = zext nneg i32 %i.dt to i64
  br label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %.lr.ph.i.i115.preheader, %bb.u
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.u ], [ 0, %.lr.ph.i.i115.preheader ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !8  ; 2 uses
  %.not15.i.i116 = icmp eq ptr %i.dy, null
  br i1 %.not15.i.i116, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i115
  call void @free(ptr noundef nonnull %i.dy) #34
  store ptr null, ptr %i.dx, align 8, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i.i115
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i, %i.dv
  br i1 %exitcond.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i115, !llvm.loop !130

._crit_edge.i.i:                                  ; preds = %.critedge
  %.not.i.i114 = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i114, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.u, %._crit_edge.i.i
  call void @free(ptr noundef nonnull %.pre.i.i) #34
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  call void @free(ptr noundef nonnull %i.e) #34
  %.not.i117 = icmp eq ptr %i.ae, null
  br i1 %.not.i117, label %Vec_IntFree.exit118, label %bb.v

bb.v:                                             ; preds = %Vec_WecFree.exit
  call void @free(ptr noundef nonnull %i.ae) #34
  br label %Vec_IntFree.exit118

Vec_IntFree.exit118:                              ; preds = %Vec_WecFree.exit, %bb.v
  call void @free(ptr noundef nonnull %i.l) #34
  %i.dz = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !8  ; 2 uses
  %.not.i119 = icmp eq ptr %i.ea, null
  br i1 %.not.i119, label %Vec_IntFree.exit120, label %bb.w

bb.w:                                             ; preds = %Vec_IntFree.exit118
  call void @free(ptr noundef nonnull %i.ea) #34
  br label %Vec_IntFree.exit120

Vec_IntFree.exit120:                              ; preds = %Vec_IntFree.exit118, %bb.w
  call void @free(ptr noundef nonnull %i.af) #34
  %i.eb = load i32, ptr %i.k, align 8, !tbaa !82
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !103
  %i.ee = getelementptr i8, ptr %i.ed, i64 4
  %.val3.i121 = load i32, ptr %i.ee, align 4, !tbaa !12
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !104
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  %.val.i122 = load i32, ptr %i.eh, align 4, !tbaa !12
  %i.ei = add i32 %.val.i122, %.val3.i121
  %i.ej = xor i32 %i.ei, -1
  %i.ek = add i32 %i.eb, %i.ej
  %.val94.val = load i32, ptr %i.az, align 4, !tbaa !12
  %i.el = call noundef i32 @llvm.smax.i32(i32 %.075.lcssa, i32 1)
  %i.em = uitofp nneg i32 %i.el to double         ; 2 uses
  %i.en = insertelement <2 x double> poison, double %i.em, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fdiv <2 x double> %i.ds, %i.eo          ; 2 uses
  %i.eq = fdiv double %.072.lcssa, %i.em
  %i.er = extractelement <2 x double> %i.ep, i64 0
  %i.es = extractelement <2 x double> %i.ep, i64 1
  %i.et = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.075.lcssa, i32 noundef %i.ek, i32 noundef %.val94.val, double noundef %i.er, double noundef %i.es, double noundef %i.eq, i32 noundef %.065.lcssa) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.eu = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #34
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %Abc_Clock.exit124, label %bb.x

bb.x:                                             ; preds = %Vec_IntFree.exit120
  %i.ew = load i64, ptr %3, align 8, !tbaa !179
  %i.ex = mul nsw i64 %i.ew, 1000000
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !181
  %i.fa = sdiv i64 %i.ez, 1000
  %i.fb = add nsw i64 %i.fa, %i.ex
  br label %Abc_Clock.exit124

Abc_Clock.exit124:                                ; preds = %Vec_IntFree.exit120, %bb.x
  %.0.i123 = phi i64 [ %i.fb, %bb.x ], [ -1, %Vec_IntFree.exit120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.fc = add i64 %.0.i123, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.9)
  %i.fd = sitofp i64 %i.fc to double
  %i.fe = fdiv double %i.fd, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, double noundef %i.fe)
  %i.ff = load ptr, ptr %i.ar, align 8, !tbaa !8  ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i125, label %Vec_IntFree.exit.i, label %bb.y

bb.y:                                             ; preds = %Abc_Clock.exit124
  call void @free(ptr noundef nonnull %i.ff) #34
  br label %Vec_IntFree.exit.i

Vec_IntFree.exit.i:                               ; preds = %bb.y, %Abc_Clock.exit124
  call void @free(ptr noundef nonnull %i.am) #34
  %i.fg = load ptr, ptr %i.ax, align 8, !tbaa !8  ; 2 uses
  %.not.i7.i = icmp eq ptr %i.fg, null
  br i1 %.not.i7.i, label %Vec_IntFree.exit8.i, label %bb.z

bb.z:                                             ; preds = %Vec_IntFree.exit.i
  call void @free(ptr noundef nonnull %i.fg) #34
  br label %Vec_IntFree.exit8.i

Vec_IntFree.exit8.i:                              ; preds = %bb.z, %Vec_IntFree.exit.i
  call void @free(ptr noundef nonnull %i.au) #34
  %i.fh = load ptr, ptr %i.bb, align 8, !tbaa !8  ; 2 uses
  %.not.i9.i = icmp eq ptr %i.fh, null
  br i1 %.not.i9.i, label %Hsh_VecManStop.exit, label %bb.aa

bb.aa:                                            ; preds = %Vec_IntFree.exit8.i
  call void @free(ptr noundef nonnull %i.fh) #34
  br label %Hsh_VecManStop.exit

Hsh_VecManStop.exit:                              ; preds = %bb.aa, %Vec_IntFree.exit8.i
  call void @free(ptr noundef nonnull %i.ay) #34
  ret void
}

declare void @Gia_ManPrint(ptr noundef) local_unnamed_addr #12

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define ptr @Gia_RsbTryOneWindow(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call ptr @Gia_ManResub2Test(ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @Gia_RsbTestArray() local_unnamed_addr #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #36
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 9 uses
  %spec.select.sink.i6267 = phi i32 [ 100, %bb.a ], [ %spec.select.sink.i61, %Vec_IntPush.exit ] ; 3 uses
  %storemerge6466 = phi ptr [ %i.c, %bb.a ], [ %.val, %Vec_IntPush.exit ] ; 6 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @__const.Gia_RsbTestArray.Array, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !33
  %i.f = zext i32 %spec.select.sink.i6267 to i64
  %i.g = icmp eq i64 %indvars.iv, %i.f
  br i1 %i.g, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %.critedge
  %i.h = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not9.i.i = icmp eq ptr %storemerge6466, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge6466, i64 noundef 64) #35
  br label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.b
  %i.k = shl nuw nsw i64 %indvars.iv, 1
  %i.l = and i64 %i.k, 4294967294
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.l
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %.not9.i10.i = icmp eq ptr %storemerge6466, null
  %i.m = shl nuw nsw i64 %indvars.iv, 3           ; 2 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = shl nuw nsw i32 %indvars.iv.tr, 1        ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @realloc(ptr noundef nonnull %storemerge6466, i64 noundef %i.m) #35
  br label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.g
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.m) #36
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.e, %bb.d, %bb.i, %bb.h, %.critedge, %bb.f
  %.val = phi ptr [ %storemerge6466, %.critedge ], [ %storemerge6466, %bb.f ], [ %i.j, %bb.e ], [ %i.i, %bb.d ], [ %i.o, %bb.h ], [ %i.p, %bb.i ] ; 8 uses
  %spec.select.sink.i61 = phi i32 [ %spec.select.sink.i6267, %.critedge ], [ %spec.select.sink.i6267, %bb.f ], [ 16, %bb.e ], [ 16, %bb.d ], [ %i.n, %bb.h ], [ %i.n, %bb.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  store i32 %i.e, ptr %i.q, align 4, !tbaa !33
  %exitcond.not = icmp eq i64 %indvars.iv.next, 272
  br i1 %exitcond.not, label %.lr.ph.i.preheader, label %.critedge, !llvm.loop !183

.lr.ph.i.preheader:                               ; preds = %Vec_IntPush.exit
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef 272) ; 0 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !33
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.t) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next.i, 272
  br i1 %exitcond77.not, label %.critedge2.lr.ph, label %.lr.ph.i, !llvm.loop !184

.critedge2.lr.ph:                                 ; preds = %.lr.ph.i
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.lr.ph, %bb.j
  %indvars.iv78 = phi i64 [ 0, %.critedge2.lr.ph ], [ %indvars.iv.next79, %bb.j ] ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv78 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !33   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !33
  %.not = icmp eq i32 %i.w, %i.y
  br i1 %.not, label %bb.j, label %.critedge4.lr.ph

bb.j:                                             ; preds = %.critedge2
  %i.z = and i32 %i.w, 1
  %i.aa = or disjoint i32 %i.z, 32                ; 2 uses
  %i.ab = ashr i32 %i.w, 1                        ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv78 to i32
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.ac, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.aa, i32 noundef %i.ab) ; 0 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 2
  %i.ae = icmp samesign ult i64 %indvars.iv78, 269
  br i1 %i.ae, label %.critedge2, label %.critedge4.lr.ph, !llvm.loop !185

.critedge4.lr.ph:                                 ; preds = %.critedge2, %bb.j
  %puts48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.lr.ph, %bb.l
  %indvars.iv83 = phi i64 [ 14, %.critedge4.lr.ph ], [ %indvars.iv.next84, %bb.l ] ; 4 uses
  %indvars.iv81 = phi i64 [ 15, %.critedge4.lr.ph ], [ %indvars.iv.next82, %bb.l ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv83
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !33 ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv81
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !33
  %.not49 = icmp eq i32 %i.ag, %i.ai
  br i1 %.not49, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge4
  %i.aj = and i32 %i.ag, 1
  %i.ak = or disjoint i32 %i.aj, 32               ; 2 uses
  %i.al = ashr i32 %i.ag, 1                       ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv83 to i32
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.am, i32 noundef %i.ak, i32 noundef %i.al, i32 noundef %i.ak, i32 noundef %i.al) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge4, %bb.k
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 2
  %i.ao = icmp samesign ult i64 %indvars.iv83, 269
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 2
  br i1 %i.ao, label %.critedge4, label %Vec_IntFree.exit, !llvm.loop !186

Vec_IntFree.exit:                                 ; preds = %bb.l
  tail call void @Abc_ResubPrepareManager(i32 noundef 1) #34
  %i.ap = call i32 @Abc_ResubComputeWindow(ptr noundef nonnull %.val, i32 noundef 136, i32 noundef 10, i32 noundef -1, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 0 uses
  call void @Abc_ResubPrepareManager(i32 noundef 0) #34
  call void @free(ptr noundef nonnull %.val) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManExtractCuts2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #34
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %5, align 8, !tbaa !179
  %.neg46 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !181
  %.neg = sdiv i64 %i.e, -1000
  %.neg47 = add i64 %.neg, %.neg46
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg47, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.f = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36 ; 4 uses
  %i.g = add i32 %2, -1
  %or.cond.i.i = icmp ult i32 %i.g, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %2 ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.f, align 8, !tbaa !121
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WecStart.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.h = sext i32 %spec.store.select.i.i to i64
  %i.i = call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 16) #33
  br label %Vec_WecStart.exit

Vec_WecStart.exit:                                ; preds = %Abc_Clock.exit, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ null, %Abc_Clock.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.l, align 8, !tbaa !115
  store i32 %2, ptr %i.k, align 4, !tbaa !113
  %i.m = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val31 = load i32, ptr %i.m, align 8, !tbaa !82 ; 5 uses
  %i.n = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36 ; 7 uses
  %i.o = add i32 %.val31, -1
  %or.cond.i.i35 = icmp ult i32 %i.o, 15
  %spec.store.select.i.i36 = select i1 %or.cond.i.i35, i32 16, i32 %.val31 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i36, ptr %i.n, align 8, !tbaa !13
  %.not.i.i37 = icmp eq i32 %spec.store.select.i.i36, 0
  br i1 %.not.i.i37, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %Vec_WecStart.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !8
  store i32 %.val31, ptr %i.p, align 4, !tbaa !12
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %Vec_WecStart.exit
  %i.r = sext i32 %spec.store.select.i.i36 to i64
  %i.s = shl nsw i64 %i.r, 2
  %i.t = call noalias ptr @malloc(i64 noundef %i.s) #36 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !8
  store i32 %.val31, ptr %i.p, align 4, !tbaa !12
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.v = sext i32 %.val31 to i64
  %i.w = shl nsw i64 %i.v, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.w, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.d
  %i.x = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.t, %bb.d ]
  %i.y = call i64 @time(ptr noundef null) #34
  %i.z = trunc i64 %i.y to i32
  call void @srand(i32 noundef %i.z) #34
  %i.aa = icmp sgt i32 %2, 0
  br i1 %i.aa, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %Vec_IntStart.exit
  %i.ab = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = add nsw i32 %1, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %Vec_IntFree.exit41
  %.048 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1, %Vec_IntFree.exit41 ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  %.val32 = load ptr, ptr %i.ab, align 8, !tbaa !103
  %i.ae = getelementptr i8, ptr %.val32, i64 4
  %.val32.val = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.af = add nsw i32 %.val32.val, 1
  %i.ag = call i32 @rand() #34
  %i.ah = load i32, ptr %i.m, align 8, !tbaa !82
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !103
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val3.i = load i32, ptr %i.aj, align 4, !tbaa !12
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !104
end_hunk_1
