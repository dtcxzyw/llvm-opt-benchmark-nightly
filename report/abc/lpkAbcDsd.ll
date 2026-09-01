Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/lpkAbcDsd?download=true
inline.NumInlined: 53
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Lpk_DsdLateArriving:bb.a
bb.y:                                             ; preds = %bb.x, %bb.w
  %.1.11 = phi i32 [ %.1.10, %bb.w ], [ %spec.select.11, %bb.x ] ; 2 uses
  %i.cj = and i32 %i.b, 4096
  %.not.12 = icmp eq i32 %i.cj, 0
  br i1 %.not.12, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !14
  %i.cm = load i32, ptr %i.c, align 8, !tbaa !41
  %i.cn = add nsw i32 %i.cm, -2
  %i.co = icmp sgt i32 %i.cl, %i.cn
  %i.cp = select i1 %i.co, i32 4096, i32 0
  %spec.select.12 = or i32 %i.cp, %.1.11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1.12 = phi i32 [ %.1.11, %bb.y ], [ %spec.select.12, %bb.z ] ; 2 uses
  %i.cq = and i32 %i.b, 8192
  %.not.13 = icmp eq i32 %i.cq, 0
  br i1 %.not.13, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !14
  %i.ct = load i32, ptr %i.c, align 8, !tbaa !41
  %i.cu = add nsw i32 %i.ct, -2
  %i.cv = icmp sgt i32 %i.cs, %i.cu
  %i.cw = select i1 %i.cv, i32 8192, i32 0
  %spec.select.13 = or i32 %i.cw, %.1.12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.13 = phi i32 [ %.1.12, %bb.aa ], [ %spec.select.13, %bb.ab ] ; 2 uses
  %i.cx = and i32 %i.b, 16384
  %.not.14 = icmp eq i32 %i.cx, 0
  br i1 %.not.14, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !14
  %i.da = load i32, ptr %i.c, align 8, !tbaa !41
  %i.db = add nsw i32 %i.da, -2
  %i.dc = icmp sgt i32 %i.cz, %i.db
  %i.dd = select i1 %i.dc, i32 16384, i32 0
  %spec.select.14 = or i32 %i.dd, %.1.13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.14 = phi i32 [ %.1.13, %bb.ac ], [ %spec.select.14, %bb.ad ] ; 2 uses
  %i.de = and i32 %i.b, 32768
  %.not.15 = icmp eq i32 %i.de, 0
  br i1 %.not.15, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !14
  %i.dh = load i32, ptr %i.c, align 8, !tbaa !41
  %i.di = add nsw i32 %i.dh, -2
  %i.dj = icmp sgt i32 %i.dg, %i.di
  %i.dk = select i1 %i.dj, i32 32768, i32 0
  %spec.select.15 = or i32 %i.dk, %.1.14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.1.15 = phi i32 [ %.1.14, %bb.ae ], [ %spec.select.15, %bb.af ]
  ret i32 %.1.15
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Lpk_DsdAnalizeOne(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %5 to i64
  %i.c = alloca [4 x [8 x ptr]], align 16         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8    ; 2 uses
  %i.f = add nsw i32 %4, -1                       ; 4 uses
  %i.g = shl nuw i32 1, %i.f                      ; 2 uses
  %.not131 = icmp eq i32 %i.f, 31
  br i1 %.not131, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.0112 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.e ] ; 4 uses
  %.093110 = phi i32 [ %i.e, %.lr.ph.preheader ], [ %.194, %bb.e ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = tail call i32 @Kit_DsdNonDsdSizeMax(ptr noundef %i.i) #11 ; 3 uses
  %i.k = icmp slt i32 %.0112, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.m = tail call i32 @Kit_DsdNonDsdSupports(ptr noundef %i.l) #11
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.n = icmp eq i32 %.0112, %i.j
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.p = tail call i32 @Kit_DsdNonDsdSupports(ptr noundef %i.o) #11
  %i.q = or i32 %i.p, %.093110
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.194 = phi i32 [ %i.m, %bb.b ], [ %i.q, %bb.d ], [ %.093110, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %i.j, %bb.b ], [ %.0112, %bb.d ], [ %.0112, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.093.lcssa = phi i32 [ %i.e, %bb.a ], [ %.194, %bb.e ] ; 2 uses
  %i.r = tail call i32 @Lpk_DsdLateArriving(ptr noundef %0) ; 2 uses
  %i.s = xor i32 %i.r, -1
  %i.t = and i32 %.093.lcssa, %i.s                ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  br label %.loopexit

bb.g:                                             ; preds = %._crit_edge
  %i.v = sext i32 %i.f to i64                     ; 2 uses
  %i.w = getelementptr inbounds [128 x i8], ptr %1, i64 %i.v
  %i.x = sext i32 %4 to i64                       ; 2 uses
  %i.y = getelementptr inbounds [128 x i8], ptr %1, i64 %i.x ; 2 uses
  %i.z = tail call i32 @Lpk_FunComputeMinSuppSizeVar(ptr noundef %0, ptr noundef %i.w, i32 noundef %i.g, ptr noundef %i.y, i32 noundef %i.t)
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds i8, ptr %3, i64 %i.v
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !53
  %.not132 = icmp eq i32 %4, 31
  br i1 %.not132, label %.preheader103.lr.ph, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.g
  %i.ac = shl nuw nsw i32 1, %4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds [64 x i8], ptr %i.c, i64 %i.x
  %wide.trip.count143 = zext nneg i32 %i.ac to i64
  br label %bb.h

.preheader104:                                    ; preds = %bb.j
  %i.af = icmp sgt i32 %4, 0
  br i1 %i.af, label %.preheader103.lr.ph, label %._crit_edge122

.preheader103.lr.ph:                              ; preds = %bb.g, %.preheader104
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = zext nneg i32 %i.f to i64
  br label %.preheader103

bb.h:                                             ; preds = %.lr.ph117, %bb.j
  %indvars.iv139 = phi i64 [ 0, %.lr.ph117 ], [ %indvars.iv.next140, %bb.j ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv139 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50 ; 2 uses
  %.not101 = icmp eq ptr %i.aj, null
  br i1 %.not101, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @Kit_DsdNtkFree(ptr noundef nonnull %i.aj) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv139
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.am = load i32, ptr %i.ad, align 8
  %i.an = lshr i32 %i.am, 7
  %i.ao = and i32 %i.an, 31
  %i.ap = tail call ptr @Kit_DsdDecomposeExpand(ptr noundef %i.al, i32 noundef %i.ao) #11 ; 2 uses
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !50
  %i.aq = load i32, ptr %i.ad, align 8
  %i.ar = lshr i32 %i.aq, 12
  %i.as = and i32 %i.ar, 15
  %i.at = sub nsw i32 %i.as, %4
  %i.au = tail call ptr @Lpk_ComputeBoundSets(ptr noundef %i.ap, i32 noundef %i.at)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv139
  store ptr %i.au, ptr %i.av, align 8, !tbaa !54
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count143
  br i1 %exitcond144.not, label %.preheader104, label %bb.h, !llvm.loop !56

.preheader103:                                    ; preds = %.preheader103.lr.ph, %._crit_edge120
  %indvars.iv151.a = phi i64 [ %i.ah, %.preheader103.lr.ph ], [ %indvars.iv.next152.a, %._crit_edge120 ] ; 5 uses
  %.not133 = icmp eq i64 %indvars.iv151.a, 31
  br i1 %.not133, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader103
  %i.aw = trunc nuw nsw i64 %indvars.iv151.a to i32
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv151.a ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %6 = sext i32 %i.ax to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph119, %Lpk_MergeBoundSets.exit
  %indvars.iv145 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next146, %Lpk_MergeBoundSets.exit ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv145, 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 16, !tbaa !54 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !54 ; 2 uses
  %i.be = load i32, ptr %i.ag, align 8
  %i.bf = lshr i32 %i.be, 12
  %i.bg = and i32 %i.bf, 15
  %i.bh = sub nsw i32 %i.bg, %4
  %i.bi = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  store i32 0, ptr %i.bj, align 4, !tbaa !30
  store i32 100, ptr %i.bi, align 8, !tbaa !32
  %i.bk = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #13 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !33
  %i.bm = getelementptr i8, ptr %i.bb, i64 4      ; 2 uses
  %.val2227.i = load i32, ptr %i.bm, align 4, !tbaa !30 ; 2 uses
  %i.bn = icmp sgt i32 %.val2227.i, 0
  br i1 %i.bn, label %.lr.ph29.i, label %Lpk_MergeBoundSets.exit

.lr.ph29.i:                                       ; preds = %bb.k
  %i.bo = getelementptr i8, ptr %i.bb, i64 8
  %i.bp = getelementptr i8, ptr %i.bd, i64 4      ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bd, i64 8
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !30 ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph29.split.i, label %Lpk_MergeBoundSets.exit

.lr.ph29.split.i:                                 ; preds = %.lr.ph29.i, %.critedge2.i
  %.val2241.i = phi i32 [ %.val22.i, %.critedge2.i ], [ %.val2227.i, %.lr.ph29.i ]
  %.val37.i = phi i32 [ %.val38.i, %.critedge2.i ], [ %i.br, %.lr.ph29.i ] ; 2 uses
  %i.bt = phi ptr [ %i.dg, %.critedge2.i ], [ %i.bk, %.lr.ph29.i ] ; 2 uses
  %i.bu = phi ptr [ %i.dh, %.critedge2.i ], [ %i.bk, %.lr.ph29.i ] ; 2 uses
  %i.bv = phi i32 [ %i.di, %.critedge2.i ], [ 100, %.lr.ph29.i ] ; 2 uses
  %i.bw = phi i32 [ %i.dj, %.critedge2.i ], [ 0, %.lr.ph29.i ] ; 2 uses
  %.val25.i = phi i32 [ %.val2536.i, %.critedge2.i ], [ %i.br, %.lr.ph29.i ] ; 2 uses
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %.critedge2.i ], [ 0, %.lr.ph29.i ] ; 2 uses
  %.val24.i = load ptr, ptr %i.bo, align 8, !tbaa !33
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.val24.i, i64 %indvars.iv32.i
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !14
  %i.bz = icmp sgt i32 %.val25.i, 0
  br i1 %i.bz, label %.lr.ph.i, label %.critedge2.i

.lr.ph.i:                                         ; preds = %.lr.ph29.split.i, %bb.v
  %.val39.i = phi i32 [ %.val.i, %bb.v ], [ %.val37.i, %.lr.ph29.split.i ] ; 2 uses
  %i.ca = phi ptr [ %i.da, %bb.v ], [ %i.bt, %.lr.ph29.split.i ] ; 4 uses
  %i.cb = phi ptr [ %i.db, %bb.v ], [ %i.bu, %.lr.ph29.split.i ] ; 6 uses
  %i.cc = phi i32 [ %i.dc, %bb.v ], [ %i.bv, %.lr.ph29.split.i ] ; 9 uses
  %i.cd = phi i32 [ %i.dd, %bb.v ], [ %i.bw, %.lr.ph29.split.i ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.v ], [ 0, %.lr.ph29.split.i ] ; 2 uses
  %.val23.i = load ptr, ptr %i.bq, align 8, !tbaa !33
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.val23.i, i64 %indvars.iv.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !14
  %i.cg = or i32 %i.cf, %i.by                     ; 4 uses
  %i.ch = ashr i32 %i.cg, 16
  %i.ci = and i32 %i.ch, %i.cg
  %.not.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i, label %bb.l, label %bb.v

bb.l:                                             ; preds = %.lr.ph.i
  %i.cj = and i32 %i.cg, 65535
  %i.ck = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.cj)
  %.not21.i = icmp sgt i32 %i.ck, %i.bh
  br i1 %.not21.i, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = icmp eq i32 %i.cd, %i.cc
  br i1 %i.cl, label %bb.n, label %Vec_IntPush.exit.i

bb.n:                                             ; preds = %bb.m
  %i.cm = icmp slt i32 %i.cc, 16
  br i1 %i.cm, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not9.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cb, i64 noundef 64) #12
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.q:                                             ; preds = %bb.o
  %i.co = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #13
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.r:                                             ; preds = %bb.n
  %i.cp = icmp samesign ult i32 %i.cc, 1073741823
  %i.cq = shl nuw nsw i32 %i.cc, 1
  %spec.select.i.i = select i1 %i.cp, i32 %i.cq, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.cc, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.s, label %Vec_IntPush.exit.i

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i.i = icmp eq ptr %i.cb, null
  %i.cr = zext nneg i32 %spec.select.i.i to i64
  %i.cs = shl nuw nsw i64 %i.cr, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = tail call ptr @realloc(ptr noundef nonnull %i.cb, i64 noundef %i.cs) #12
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.u:                                             ; preds = %bb.s
  %i.cu = tail call noalias ptr @malloc(i64 noundef %i.cs) #13
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.u, %bb.t, %bb.q, %bb.p
  %storemerge.i = phi ptr [ %i.co, %bb.q ], [ %i.cn, %bb.p ], [ %i.ct, %bb.t ], [ %i.cu, %bb.u ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i.i, %bb.t ], [ %spec.select.i.i, %bb.u ] ; 2 uses
  store ptr %storemerge.i, ptr %i.bl, align 8, !tbaa !33
  store i32 %spec.select.sink.i.i, ptr %i.bi, align 8, !tbaa !32
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.r, %bb.m
  %i.cv = phi ptr [ %i.ca, %bb.m ], [ %i.ca, %bb.r ], [ %storemerge.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 3 uses
  %i.cw = phi i32 [ %i.cc, %bb.m ], [ %i.cc, %bb.r ], [ %spec.select.sink.i.i, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.cx = add nsw i32 %i.cd, 1                    ; 2 uses
  store i32 %i.cx, ptr %i.bj, align 4, !tbaa !30
  %i.cy = sext i32 %i.cd to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cy
  store i32 %i.cg, ptr %i.cz, align 4, !tbaa !14
  %.val.pre.i = load i32, ptr %i.bp, align 4, !tbaa !30
  br label %bb.v

bb.v:                                             ; preds = %Vec_IntPush.exit.i, %bb.l, %.lr.ph.i
  %.val.i = phi i32 [ %.val39.i, %bb.l ], [ %.val.pre.i, %Vec_IntPush.exit.i ], [ %.val39.i, %.lr.ph.i ] ; 4 uses
  %i.da = phi ptr [ %i.ca, %bb.l ], [ %i.cv, %Vec_IntPush.exit.i ], [ %i.ca, %.lr.ph.i ] ; 2 uses
  %i.db = phi ptr [ %i.cb, %bb.l ], [ %i.cv, %Vec_IntPush.exit.i ], [ %i.cb, %.lr.ph.i ] ; 2 uses
  %i.dc = phi i32 [ %i.cc, %bb.l ], [ %i.cw, %Vec_IntPush.exit.i ], [ %i.cc, %.lr.ph.i ] ; 2 uses
  %i.dd = phi i32 [ %i.cd, %bb.l ], [ %i.cx, %Vec_IntPush.exit.i ], [ %i.cd, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.de = sext i32 %.val.i to i64
  %i.df = icmp slt i64 %indvars.iv.next.i, %i.de
  br i1 %i.df, label %.lr.ph.i, label %.critedge2.loopexit.i, !llvm.loop !38

.critedge2.loopexit.i:                            ; preds = %bb.v
  %.val22.pre.i = load i32, ptr %i.bm, align 4, !tbaa !30
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.loopexit.i, %.lr.ph29.split.i
  %.val22.i = phi i32 [ %.val22.pre.i, %.critedge2.loopexit.i ], [ %.val2241.i, %.lr.ph29.split.i ] ; 2 uses
  %.val38.i = phi i32 [ %.val.i, %.critedge2.loopexit.i ], [ %.val37.i, %.lr.ph29.split.i ]
  %i.dg = phi ptr [ %i.da, %.critedge2.loopexit.i ], [ %i.bt, %.lr.ph29.split.i ]
  %i.dh = phi ptr [ %i.db, %.critedge2.loopexit.i ], [ %i.bu, %.lr.ph29.split.i ]
  %i.di = phi i32 [ %i.dc, %.critedge2.loopexit.i ], [ %i.bv, %.lr.ph29.split.i ]
  %i.dj = phi i32 [ %i.dd, %.critedge2.loopexit.i ], [ %i.bw, %.lr.ph29.split.i ]
  %.val2536.i = phi i32 [ %.val.i, %.critedge2.loopexit.i ], [ %.val25.i, %.lr.ph29.split.i ]
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %i.dk = sext i32 %.val22.i to i64
  %i.dl = icmp slt i64 %indvars.iv.next33.i, %i.dk
  br i1 %i.dl, label %.lr.ph29.split.i, label %Lpk_MergeBoundSets.exit, !llvm.loop !39

Lpk_MergeBoundSets.exit:                          ; preds = %.critedge2.i, %bb.k, %.lr.ph29.i
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv145
  store ptr %i.bi, ptr %i.dm, align 8, !tbaa !54
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %7 = icmp slt i64 %indvars.iv.next146, %6
  br i1 %7, label %bb.k, label %._crit_edge120, !llvm.loop !57

._crit_edge120:                                   ; preds = %Lpk_MergeBoundSets.exit, %.preheader103
  %indvars.iv.next152.a = add nsw i64 %indvars.iv151.a, -1
  %i.dn = icmp sgt i64 %indvars.iv151.a, 0
  br i1 %i.dn, label %.preheader103, label %._crit_edge122, !llvm.loop !58

._crit_edge122:                                   ; preds = %._crit_edge120, %.preheader104
  %i.do = phi i1 [ false, %.preheader104 ], [ true, %._crit_edge120 ]
  %i.dp = load ptr, ptr %i.c, align 16, !tbaa !54
  tail call void @Lpk_FunCompareBoundSets(ptr noundef %0, ptr noundef %i.dp, i32 noundef %4, i32 noundef %.093.lcssa, i32 noundef %i.r, ptr noundef %5)
  %i.dq = icmp sgt i32 %4, -1
  br i1 %i.dq, label %.preheader.preheader, label %._crit_edge127

.preheader.preheader:                             ; preds = %._crit_edge122
  %i.dr = zext nneg i32 %4 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge125
  %indvars.iv160 = phi i64 [ %i.dr, %.preheader.preheader ], [ %indvars.iv.next161, %._crit_edge125 ] ; 5 uses
  %.not134 = icmp eq i64 %indvars.iv160, 31
  br i1 %.not134, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %.preheader
  %i.ds = trunc nuw nsw i64 %indvars.iv160 to i32
  %i.dt = shl nuw i32 1, %i.ds
  %i.du = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv160
  %8 = sext i32 %i.dt to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph124, %Vec_IntFree.exit
  %indvars.iv154 = phi i64 [ 0, %.lr.ph124 ], [ %indvars.iv.next155.a, %Vec_IntFree.exit ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv154
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !54 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !33 ; 2 uses
  %.not.i102 = icmp eq ptr %i.dy, null
  br i1 %.not.i102, label %Vec_IntFree.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.dy) #11
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.w, %bb.x
  tail call void @free(ptr noundef nonnull %i.dw) #11
  %indvars.iv.next155.a = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %9 = icmp slt i64 %indvars.iv.next155.a, %8
  br i1 %9, label %bb.w, label %._crit_edge125, !llvm.loop !59

._crit_edge125:                                   ; preds = %Vec_IntFree.exit, %.preheader
  %indvars.iv.next161 = add nsw i64 %indvars.iv160, -1
  %i.dz = icmp sgt i64 %indvars.iv160, 0
  br i1 %i.dz, label %.preheader, label %._crit_edge127, !llvm.loop !60

._crit_edge127:                                   ; preds = %._crit_edge125, %._crit_edge122
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !42
  %.not = icmp eq i32 %i.eb, 0
  br i1 %.not, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %._crit_edge127
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %4, ptr %i.ec, align 4, !tbaa !61
  br i1 %i.do, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.y
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 7 uses
  %wide.trip.count166 = zext i32 %4 to i64        ; 8 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ee = sub i64 %i.b, %i.a
  %i.ef = add i64 %i.ee, 11
  %diff.check = icmp ult i64 %i.ef, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check185 = icmp ult i32 %4, 32
  br i1 %min.iters.check185, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.eg = and i64 %wide.trip.count166, 28
  %n.vec = and i64 %wide.trip.count166, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 %index ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load = load <16 x i8>, ptr %i.eh, align 1, !tbaa !53
  %wide.load186 = load <16 x i8>, ptr %i.ei, align 1, !tbaa !53
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 %index ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <16 x i8> %wide.load, ptr %i.ej, align 1, !tbaa !53
  store <16 x i8> %wide.load186, ptr %i.ek, align 1, !tbaa !53
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count166
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.eg, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !65

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec187 = and i64 %wide.trip.count166, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index188 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next190, %vec.epilog.vector.body ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 %index188
  %wide.load189 = load <4 x i8>, ptr %i.em, align 1, !tbaa !53
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 %index188
  store <4 x i8> %wide.load189, ptr %i.en, align 1, !tbaa !53
  %index.next190 = add nuw i64 %index188, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next190, %n.vec187
  br i1 %i.eo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n191 = icmp eq i64 %n.vec187, %wide.trip.count166
  br i1 %cmp.n191, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv163.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec187, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count166, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv163.prol = phi i64 [ %indvars.iv.next164.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv163.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv163.prol
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !53
  %i.er = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv163.prol
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !53
  %indvars.iv.next164.prol = add nuw nsw i64 %indvars.iv163.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !67

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv163.unr = phi i64 [ %indvars.iv163.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next164.prol, %vec.epilog.scalar.ph.prol ]
  %i.es = sub nsw i64 %indvars.iv163.ph, %wide.trip.count166
  %i.et = icmp ugt i64 %i.es, -4
  br i1 %i.et, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv163 = phi i64 [ %indvars.iv.next164.3, %vec.epilog.scalar.ph ], [ %indvars.iv163.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv163
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !53
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv163
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !53
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next164
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !53
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next164
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !53
  %indvars.iv.next164.1 = add nuw nsw i64 %indvars.iv163, 2 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next164.1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !53
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next164.1
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !53
  %indvars.iv.next164.2 = add nuw nsw i64 %indvars.iv163, 3 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next164.2
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !53
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next164.2
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !53
  %indvars.iv.next164.3 = add nuw nsw i64 %indvars.iv163, 4 ; 2 uses
  %exitcond167.not.3 = icmp eq i64 %indvars.iv.next164.3, %wide.trip.count166
  br i1 %exitcond167.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !69

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.y, %._crit_edge127, %bb.f
  %.095 = phi i32 [ 0, %bb.f ], [ 1, %._crit_edge127 ], [ 1, %bb.y ], [ 1, %middle.block ], [ 1, %vec.epilog.middle.block ], [ 1, %vec.epilog.scalar.ph ], [ 1, %vec.epilog.scalar.ph.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  ret i32 %.095
}

declare i32 @Kit_DsdNonDsdSizeMax(ptr noundef) local_unnamed_addr #2

declare i32 @Kit_DsdNonDsdSupports(ptr noundef) local_unnamed_addr #2

declare void @Kit_DsdNtkFree(ptr noundef) local_unnamed_addr #2

declare ptr @Kit_DsdDecomposeExpand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Lpk_DsdAnalize(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca [8 x ptr], align 16               ; 8 uses
  %i.c = alloca [5 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 228 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = lshr i32 %i.f, 7
  %i.h = and i32 %i.g, 31
  %i.i = tail call ptr @Kit_DsdDecomposeExpand(ptr noundef nonnull %i.d, i32 noundef %i.h) #11 ; 3 uses
  store ptr %i.i, ptr %i.b, align 16, !tbaa !50
  %i.j = load ptr, ptr %0, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 4, !tbaa !79
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8241836
  %i.n = tail call i32 @Kit_DsdNonDsdSizeMax(ptr noundef %i.i) #11
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = load i32, ptr %i.e, align 8
  %i.t = lshr i32 %i.s, 12
  %i.u = and i32 %i.t, 15
  %i.v = tail call ptr @Lpk_ComputeBoundSets(ptr noundef %i.i, i32 noundef %i.u) ; 3 uses
  %i.w = tail call i32 @Lpk_DsdLateArriving(ptr noundef nonnull %1)
  tail call void @Lpk_FunCompareBoundSets(ptr noundef nonnull %1, ptr noundef %i.v, i32 noundef 0, i32 noundef 65535, i32 noundef %i.w, ptr noundef nonnull @Lpk_DsdAnalize.Res0)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.y) #11
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.c, %bb.d
  tail call void @free(ptr noundef nonnull %i.v) #11
  %i.z = load i32, ptr @Lpk_DsdAnalize.Res0, align 4, !tbaa !46 ; 2 uses
  %i.aa = load i32, ptr %i.e, align 8             ; 2 uses
  %i.ab = lshr i32 %i.aa, 12
  %i.ac = and i32 %i.ab, 15                       ; 2 uses
  %i.ad = icmp eq i32 %i.z, %i.ac
  %i.ae = add nsw i32 %i.ac, -1
  %i.af = icmp eq i32 %i.z, %i.ae
  %or.cond = select i1 %i.ad, i1 true, i1 %i.af
end_hunk_0
begin_hunk_1_@Lpk_DsdSplit:bb.a
  %i.ae = and i32 %4, 2
  %.not.1.i = icmp eq i32 %i.ae, 0
  br i1 %.not.1.i, label %bb.c, label %Kit_WordFindFirstBit.exit

bb.c:                                             ; preds = %bb.b
  %i.af = and i32 %4, 4
  %.not.2.i = icmp eq i32 %i.af, 0
  br i1 %.not.2.i, label %bb.d, label %Kit_WordFindFirstBit.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = and i32 %4, 8
  %.not.3.i = icmp eq i32 %i.ag, 0
  br i1 %.not.3.i, label %bb.e, label %Kit_WordFindFirstBit.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = and i32 %4, 16
  %.not.4.i = icmp eq i32 %i.ah, 0
  br i1 %.not.4.i, label %bb.f, label %Kit_WordFindFirstBit.exit

bb.f:                                             ; preds = %bb.e
  %i.ai = and i32 %4, 32
  %.not.5.i = icmp eq i32 %i.ai, 0
  br i1 %.not.5.i, label %bb.g, label %Kit_WordFindFirstBit.exit

bb.g:                                             ; preds = %bb.f
  %i.aj = and i32 %4, 64
  %.not.6.i = icmp eq i32 %i.aj, 0
  br i1 %.not.6.i, label %bb.h, label %Kit_WordFindFirstBit.exit

bb.h:                                             ; preds = %bb.g
  %i.ak = and i32 %4, 128
  %.not.7.i = icmp eq i32 %i.ak, 0
  br i1 %.not.7.i, label %bb.i, label %Kit_WordFindFirstBit.exit

bb.i:                                             ; preds = %bb.h
  %i.al = and i32 %4, 256
  %.not.8.i = icmp eq i32 %i.al, 0
  br i1 %.not.8.i, label %bb.j, label %Kit_WordFindFirstBit.exit

bb.j:                                             ; preds = %bb.i
  %i.am = and i32 %4, 512
  %.not.9.i = icmp eq i32 %i.am, 0
  br i1 %.not.9.i, label %bb.k, label %Kit_WordFindFirstBit.exit

bb.k:                                             ; preds = %bb.j
  %i.an = and i32 %4, 1024
  %.not.10.i = icmp eq i32 %i.an, 0
  br i1 %.not.10.i, label %bb.l, label %Kit_WordFindFirstBit.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = and i32 %4, 2048
  %.not.11.i = icmp eq i32 %i.ao, 0
  br i1 %.not.11.i, label %bb.m, label %Kit_WordFindFirstBit.exit

bb.m:                                             ; preds = %bb.l
  %i.ap = and i32 %4, 4096
  %.not.12.i = icmp eq i32 %i.ap, 0
  br i1 %.not.12.i, label %bb.n, label %Kit_WordFindFirstBit.exit

bb.n:                                             ; preds = %bb.m
  %i.aq = and i32 %4, 8192
  %.not.13.i = icmp eq i32 %i.aq, 0
  br i1 %.not.13.i, label %bb.o, label %Kit_WordFindFirstBit.exit

bb.o:                                             ; preds = %bb.n
  %i.ar = and i32 %4, 16384
  %.not.14.i = icmp eq i32 %i.ar, 0
  br i1 %.not.14.i, label %bb.p, label %Kit_WordFindFirstBit.exit

bb.p:                                             ; preds = %bb.o
  %i.as = and i32 %4, 32768
  %.not.15.i = icmp eq i32 %i.as, 0
  br i1 %.not.15.i, label %bb.q, label %Kit_WordFindFirstBit.exit

bb.q:                                             ; preds = %bb.p
  %i.at = and i32 %4, 65536
  %.not.16.i = icmp eq i32 %i.at, 0
  br i1 %.not.16.i, label %bb.r, label %Kit_WordFindFirstBit.exit

bb.r:                                             ; preds = %bb.q
  %i.au = and i32 %4, 131072
  %.not.17.i = icmp eq i32 %i.au, 0
  br i1 %.not.17.i, label %bb.s, label %Kit_WordFindFirstBit.exit

bb.s:                                             ; preds = %bb.r
  %i.av = and i32 %4, 262144
  %.not.18.i = icmp eq i32 %i.av, 0
  br i1 %.not.18.i, label %bb.t, label %Kit_WordFindFirstBit.exit

bb.t:                                             ; preds = %bb.s
  %i.aw = and i32 %4, 524288
  %.not.19.i = icmp eq i32 %i.aw, 0
  br i1 %.not.19.i, label %bb.u, label %Kit_WordFindFirstBit.exit

bb.u:                                             ; preds = %bb.t
  %i.ax = and i32 %4, 1048576
  %.not.20.i = icmp eq i32 %i.ax, 0
  br i1 %.not.20.i, label %bb.v, label %Kit_WordFindFirstBit.exit

bb.v:                                             ; preds = %bb.u
  %i.ay = and i32 %4, 2097152
  %.not.21.i = icmp eq i32 %i.ay, 0
  br i1 %.not.21.i, label %bb.w, label %Kit_WordFindFirstBit.exit

bb.w:                                             ; preds = %bb.v
  %i.az = and i32 %4, 4194304
  %.not.22.i = icmp eq i32 %i.az, 0
  br i1 %.not.22.i, label %bb.x, label %Kit_WordFindFirstBit.exit

bb.x:                                             ; preds = %bb.w
  %i.ba = and i32 %4, 8388608
  %.not.23.i = icmp eq i32 %i.ba, 0
  br i1 %.not.23.i, label %bb.y, label %Kit_WordFindFirstBit.exit

bb.y:                                             ; preds = %bb.x
  %i.bb = and i32 %4, 16777216
  %.not.24.i = icmp eq i32 %i.bb, 0
  br i1 %.not.24.i, label %bb.z, label %Kit_WordFindFirstBit.exit

bb.z:                                             ; preds = %bb.y
  %i.bc = and i32 %4, 33554432
  %.not.25.i = icmp eq i32 %i.bc, 0
  br i1 %.not.25.i, label %bb.aa, label %Kit_WordFindFirstBit.exit

bb.aa:                                            ; preds = %bb.z
  %i.bd = and i32 %4, 67108864
  %.not.26.i = icmp eq i32 %i.bd, 0
  br i1 %.not.26.i, label %bb.ab, label %Kit_WordFindFirstBit.exit

bb.ab:                                            ; preds = %bb.aa
  %i.be = and i32 %4, 134217728
  %.not.27.i = icmp eq i32 %i.be, 0
  br i1 %.not.27.i, label %bb.ac, label %Kit_WordFindFirstBit.exit

bb.ac:                                            ; preds = %bb.ab
  %i.bf = and i32 %4, 268435456
  %.not.28.i = icmp eq i32 %i.bf, 0
  br i1 %.not.28.i, label %bb.ad, label %Kit_WordFindFirstBit.exit

bb.ad:                                            ; preds = %bb.ac
  %i.bg = and i32 %4, 536870912
  %.not.29.i = icmp eq i32 %i.bg, 0
  br i1 %.not.29.i, label %bb.ae, label %Kit_WordFindFirstBit.exit

bb.ae:                                            ; preds = %bb.ad
  %i.bh = and i32 %4, 1073741824
  %.not.30.i = icmp eq i32 %i.bh, 0
  br i1 %.not.30.i, label %bb.af, label %Kit_WordFindFirstBit.exit

bb.af:                                            ; preds = %bb.ae
  %.not.31.i = icmp eq i32 %4, 0
  %spec.select.i = select i1 %.not.31.i, i32 -1, i32 31
  br label %Kit_WordFindFirstBit.exit

Kit_WordFindFirstBit.exit:                        ; preds = %Kit_TruthCopy.exit, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.06.i = phi i32 [ 0, %Kit_TruthCopy.exit ], [ 16, %bb.q ], [ 1, %bb.b ], [ %spec.select.i, %bb.af ], [ 2, %bb.c ], [ 20, %bb.u ], [ 3, %bb.d ], [ 30, %bb.ae ], [ 4, %bb.e ], [ 17, %bb.r ], [ 5, %bb.f ], [ 29, %bb.ad ], [ 6, %bb.g ], [ 23, %bb.x ], [ 7, %bb.h ], [ 28, %bb.ac ], [ 8, %bb.i ], [ 18, %bb.s ], [ 9, %bb.j ], [ 27, %bb.ab ], [ 10, %bb.k ], [ 21, %bb.v ], [ 11, %bb.l ], [ 26, %bb.aa ], [ 12, %bb.m ], [ 19, %bb.t ], [ 13, %bb.n ], [ 25, %bb.z ], [ 14, %bb.o ], [ 22, %bb.w ], [ 15, %bb.p ], [ 24, %bb.y ] ; 2 uses
  %i.bi = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %i.bi, label %.preheader98.preheader, label %.lr.ph104

.preheader98.preheader:                           ; preds = %Kit_WordFindFirstBit.exit
  %wide.trip.count116 = zext nneg i32 %3 to i64
  br label %.preheader98

.preheader98:                                     ; preds = %.preheader98.preheader, %._crit_edge
  %indvars.iv113 = phi i64 [ 0, %.preheader98.preheader ], [ %indvars.iv.next114, %._crit_edge ] ; 5 uses
  %.not = icmp eq i64 %indvars.iv113, 31
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader98
  %i.bj = trunc nuw nsw i64 %indvars.iv113 to i32
  %i.bk = shl nuw nsw i32 1, %i.bj
  %i.bl = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %indvars.iv113 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv113 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bk to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.ag
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ag ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !15
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !15
  %i.bs = load i32, ptr %i.e, align 8
  %i.bt = lshr i32 %i.bs, 7
  %i.bu = and i32 %i.bt, 31
  %i.bv = load i8, ptr %i.bn, align 1, !tbaa !53
  %i.bw = sext i8 %i.bv to i32
  tail call void @Kit_TruthCofactor0New(ptr noundef %i.bp, ptr noundef %i.br, i32 noundef %i.bu, i32 noundef %i.bw) #11
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !15
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !15
  %i.ca = load i32, ptr %i.e, align 8
  %i.cb = lshr i32 %i.ca, 7
  %i.cc = and i32 %i.cb, 31
  %i.cd = load i8, ptr %i.bn, align 1, !tbaa !53
  %i.ce = sext i8 %i.cd to i32
  tail call void @Kit_TruthCofactor1New(ptr noundef %i.by, ptr noundef %i.bz, i32 noundef %i.cc, i32 noundef %i.ce) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %5 = icmp samesign ult i64 %indvars.iv.next, %wide.trip.count
  br i1 %5, label %bb.ag, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.ag, %.preheader98
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %._crit_edge101, label %.preheader98, !llvm.loop !87

._crit_edge101:                                   ; preds = %._crit_edge
  %.not110 = icmp eq i32 %3, 31
  br i1 %.not110, label %.preheader.preheader, label %.lr.ph104

.lr.ph104:                                        ; preds = %Kit_WordFindFirstBit.exit, %._crit_edge101
  %i.cf = shl nuw nsw i32 1, %3                   ; 2 uses
  %i.cg = sext i32 %3 to i64
  %i.ch = getelementptr inbounds [128 x i8], ptr %i.b, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8241776
  %i.cj = getelementptr i8, ptr %i.ch, i64 128    ; 2 uses
  %i.ck = zext nneg i32 %i.cf to i64
  %wide.trip.count122 = zext nneg i32 %i.cf to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.cj, i64 %i.ck
  br label %bb.ah

.preheader97:                                     ; preds = %bb.ah
  br i1 %i.bi, label %.preheader.preheader, label %._crit_edge109

.preheader.preheader:                             ; preds = %._crit_edge101, %.preheader97
  %i.cl = zext nneg i32 %3 to i64
  br label %.preheader

bb.ah:                                            ; preds = %.lr.ph104, %bb.ah
  %indvars.iv118 = phi i64 [ 0, %.lr.ph104 ], [ %indvars.iv.next119, %bb.ah ] ; 4 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv118
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !15
  %i.co = load i32, ptr %i.e, align 8
  %i.cp = lshr i32 %i.co, 7
  %i.cq = and i32 %i.cp, 31
  %i.cr = tail call ptr @Kit_DsdDecomposeExpand(ptr noundef %i.cn, i32 noundef %i.cq) #11 ; 2 uses
  %i.cs = load ptr, ptr %i.ci, align 8, !tbaa !88
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv118
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !15
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv118
  %i.cv = load ptr, ptr %gep, align 8, !tbaa !15
  tail call void @Kit_DsdTruthPartialTwo(ptr noundef %i.cs, ptr noundef %i.cr, i32 noundef %4, i32 noundef %.06.i, ptr noundef %i.cu, ptr noundef %i.cv) #11
  tail call void @Kit_DsdNtkFree(ptr noundef %i.cr) #11
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count122
  br i1 %exitcond123.not, label %.preheader97, label %bb.ah, !llvm.loop !89

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge107
  %indvars.iv130 = phi i64 [ %i.cl, %.preheader.preheader ], [ %indvars.iv.next131, %._crit_edge107 ] ; 6 uses
  %.not111 = icmp eq i64 %indvars.iv130, 31
  br i1 %.not111, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %.preheader
  %i.cw = trunc nuw nsw i64 %indvars.iv130 to i32
  %i.cx = shl nuw i32 1, %i.cw
  %i.cy = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %indvars.iv130 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 128
  %i.da = getelementptr i8, ptr %2, i64 %indvars.iv130
  %i.db = getelementptr i8, ptr %i.da, i64 -1
  %6 = sext i32 %i.cx to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph106, %bb.ai
  %indvars.iv124 = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next125.a, %bb.ai ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv124
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !15
  %.idx133 = shl nuw nsw i64 %indvars.iv124, 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx133 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !15
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !15
  %i.di = load i32, ptr %i.e, align 8
  %i.dj = lshr i32 %i.di, 7
  %i.dk = and i32 %i.dj, 31
  %i.dl = load i8, ptr %i.db, align 1, !tbaa !53
  %i.dm = sext i8 %i.dl to i32
  tail call void @Kit_TruthMuxVar(ptr noundef %i.dd, ptr noundef %i.df, ptr noundef %i.dh, i32 noundef %i.dk, i32 noundef %i.dm) #11
  %indvars.iv.next125.a = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %7 = icmp slt i64 %indvars.iv.next125.a, %6
  br i1 %7, label %bb.ai, label %._crit_edge107, !llvm.loop !90

._crit_edge107:                                   ; preds = %bb.ai, %.preheader
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, -1
  %i.dn = icmp sgt i64 %indvars.iv130, 1
  br i1 %i.dn, label %.preheader, label %._crit_edge109, !llvm.loop !91

._crit_edge109:                                   ; preds = %._crit_edge107, %.preheader97
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8241200
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8241208
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !15
  %i.dr = tail call ptr @Lpk_FunDup(ptr noundef %1, ptr noundef %i.dq) #11 ; 6 uses
  %i.ds = load ptr, ptr %i.do, align 8, !tbaa !15 ; 3 uses
  %i.dt = load i32, ptr %i.e, align 8
  %i.du = lshr i32 %i.dt, 7
  %i.dv = and i32 %i.du, 31                       ; 2 uses
  %i.dw = icmp samesign ult i32 %i.dv, 6
  %i.dx = add nsw i32 %i.dv, -5
  %i.dy = shl nuw nsw i32 1, %i.dx
  %i.dz = select i1 %i.dw, i32 1, i32 %i.dy       ; 2 uses
  %i.ea = zext nneg i32 %i.dz to i64              ; 3 uses
  %min.iters.check139 = icmp samesign ult i32 %i.dz, 12
  br i1 %min.iters.check139, label %scalar.ph138.preheader, label %vector.memcheck136

scalar.ph138.preheader:                           ; preds = %vector.memcheck136, %._crit_edge109
  br label %scalar.ph138

vector.memcheck136:                               ; preds = %._crit_edge109
  %i.eb = ptrtoaddr ptr %i.ds to i64
  %i.ec = sub i64 %i.eb, %i.a
  %i.ed = add i64 %i.ec, -229
  %diff.check137 = icmp ult i64 %i.ed, 31
  br i1 %diff.check137, label %scalar.ph138.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck136
  %n.vec141 = and i64 %i.ea, 2147483640
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next146, %vector.body142 ] ; 2 uses
  %i.ee = xor i64 %index143, -1
  %i.ef = add i64 %i.ee, %i.ea                    ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -12
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -28
  %wide.load144 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !14
  %wide.load145 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !14
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ef ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -12
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 -28
  store <4 x i32> %wide.load144, ptr %i.ek, align 4, !tbaa !14
  store <4 x i32> %wide.load145, ptr %i.el, align 4, !tbaa !14
  %index.next146 = add nuw i64 %index143, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next146, %n.vec141
  br i1 %i.em, label %Kit_TruthCopy.exit96, label %vector.body142, !llvm.loop !92

scalar.ph138:                                     ; preds = %scalar.ph138.preheader, %scalar.ph138
  %indvars.iv.i94 = phi i64 [ %indvars.iv.next.i95, %scalar.ph138 ], [ %i.ea, %scalar.ph138.preheader ] ; 2 uses
  %indvars.iv.next.i95 = add nsw i64 %indvars.iv.i94, -1 ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.next.i95
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !14
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i95
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !14
  %i.eq = icmp samesign ugt i64 %indvars.iv.i94, 1
  br i1 %i.eq, label %scalar.ph138, label %Kit_TruthCopy.exit96, !llvm.loop !93

Kit_TruthCopy.exit96:                             ; preds = %vector.body142, %scalar.ph138
  %i.er = load i32, ptr %i.e, align 8
  %i.es = lshr i32 %i.er, 7
  %i.et = and i32 %i.es, 31
  %i.eu = tail call i32 @Kit_TruthSupport(ptr noundef nonnull %i.d, i32 noundef %i.et) #11
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 8
  %i.ey = trunc i32 %i.ex to i8
  %i.ez = and i8 %i.ey, 127
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.fb = sext i32 %.06.i to i64                  ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %i.fa, i64 %i.fb
  store i8 %i.ez, ptr %i.fc, align 1, !tbaa !53
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dr, i64 148
  %i.fg = tail call i32 @Lpk_SuppDelay(i32 noundef %i.fe, ptr noundef nonnull %i.ff) #11
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fb ; 2 uses
  store i32 %i.fg, ptr %i.fi, align 4, !tbaa !14
  %i.fj = load i32, ptr %i.e, align 8
  %i.fk = and i32 %i.fj, -1073741825
  store i32 %i.fk, ptr %i.e, align 8
  %i.fl = tail call i32 @Lpk_FunSuppMinimize(ptr noundef nonnull %1) #11 ; 0 uses
  %i.fm = tail call i32 @Lpk_FunSuppMinimize(ptr noundef %i.dr) #11 ; 0 uses
  %i.fn = load i32, ptr %i.fi, align 4, !tbaa !14
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dr, i64 144
  store i32 %i.fn, ptr %i.fo, align 8, !tbaa !41
  %i.fp = load i32, ptr %i.ew, align 8
  %i.fq = and i32 %i.fp, -1073676289
  %i.fr = or disjoint i32 %i.fq, 65536
  store i32 %i.fr, ptr %i.ew, align 8
  %i.fs = load i32, ptr %i.e, align 8             ; 2 uses
  %i.ft = add i32 %i.fs, 1073676288
  %i.fu = and i32 %i.ft, 1073676288
  %i.fv = and i32 %i.fs, -1073676289
  %i.fw = or disjoint i32 %i.fu, %i.fv
  store i32 %i.fw, ptr %i.e, align 8
  ret ptr %i.dr
}

declare void @Kit_DsdTruthPartialTwo(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Kit_TruthMuxVar(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Lpk_FunDup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Kit_TruthSupport(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Lpk_FunSuppMinimize(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 12}
!9 = !{!"Lpk_Fun_t_", !10, i64 0, !5, i64 8, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 11, !5, i64 12, !6, i64 16, !5, i64 144, !6, i64 148, !6, i64 212, !6, i64 228}
!10 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!5, !5, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 int", !11, i64 0}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = !{!20, !21, i64 0}
!20 = !{!"Kit_DsdNtk_t_", !21, i64 0, !21, i64 2, !21, i64 4, !21, i64 6, !16, i64 8, !16, i64 16, !22, i64 24}
!21 = !{!"short", !6, i64 0}
!22 = !{!"p2 _ZTS13Kit_DsdObj_t_", !23, i64 0}
!23 = !{!"any p2 pointer", !11, i64 0}
!24 = !{!20, !22, i64 24}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS13Kit_DsdObj_t_", !11, i64 0}
!27 = !{!21, !21, i64 0}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = !{!31, !5, i64 4}
!31 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !16, i64 8}
!32 = !{!31, !5, i64 0}
!33 = !{!31, !16, i64 8}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = !{!20, !21, i64 6}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13, !40}
!40 = !{!"llvm.loop.unswitch.partial.disable"}
!41 = !{!9, !5, i64 144}
end_hunk_1
