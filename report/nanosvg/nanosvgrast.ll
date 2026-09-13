Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nsvgParse:bb.a
  %.not.i10.i = icmp eq ptr %i.od, null
  br i1 %.not.i10.i, label %nsvg__deleteParser.exit, label %.lr.ph.i9.i, !llvm.loop !175

nsvg__deleteParser.exit:                          ; preds = %.lr.ph.i9.i, %nsvg__deletePaths.exit.i
  %i.og = load ptr, ptr %i.f, align 8, !tbaa !30
  tail call void @nsvgDelete(ptr noundef %i.og)
  %i.oh = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39944
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !79
  tail call void @free(ptr noundef %i.oi) #30
  br label %nsvg__createParser.exit.thread.sink.split

nsvg__createParser.exit.thread.sink.split:        ; preds = %bb.b, %nsvg__deleteParser.exit
  %.0.ph = phi ptr [ %.val.i45, %nsvg__deleteParser.exit ], [ null, %bb.b ]
  tail call void @free(ptr noundef nonnull %calloc33.i) #30
  br label %nsvg__createParser.exit.thread

nsvg__createParser.exit.thread:                   ; preds = %nsvg__createParser.exit.thread.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.ph, %nsvg__createParser.exit.thread.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal void @nsvg__startElement(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca [10 x float], align 16            ; 19 uses
  %i.b = alloca [4 x ptr], align 16               ; 6 uses
  %i.c = alloca [64 x i8], align 16               ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40033 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !80
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %sub_0, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.12) #31
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @nsvg__parseGradient(ptr noundef nonnull %0, ptr noundef %2, i8 noundef signext 2)
  br label %nsvg__popAttr.exit

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.13) #31
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @nsvg__parseGradient(ptr noundef nonnull %0, ptr noundef %2, i8 noundef signext 3)
  br label %nsvg__popAttr.exit

bb.f:                                             ; preds = %bb.d
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.14) #31
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @nsvg__parseGradientStop(ptr noundef nonnull %0, ptr noundef %2)
  br label %nsvg__popAttr.exit

bb.h:                                             ; preds = %bb.f
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.15) #31
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %nsvg__popAttr.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40034
  store i8 1, ptr %i.n, align 2, !tbaa !81
  br label %nsvg__popAttr.exit

sub_0:                                            ; preds = %bb.a
  %i.o = load i8, ptr %1, align 1
  %.not167 = icmp eq i8 %i.o, 103
  br i1 %.not167, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %.tail.thread

bb.j:                                             ; preds = %.tail
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 39936 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !55   ; 3 uses
  %i.u = icmp slt i32 %i.t, 127
  br i1 %i.u, label %bb.k, label %nsvg__pushAttr.exit

bb.k:                                             ; preds = %bb.j
  %i.v = add nsw i32 %i.t, 1                      ; 2 uses
  store i32 %i.v, ptr %i.s, align 8, !tbaa !55
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [312 x i8], ptr %0, i64 %i.w
  %i.y = sext i32 %i.t to i64
  %i.z = getelementptr inbounds [312 x i8], ptr %0, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.x, ptr noundef nonnull align 8 dereferenceable(312) %i.z, i64 312, i1 false)
  br label %nsvg__pushAttr.exit

nsvg__pushAttr.exit:                              ; preds = %bb.j, %bb.k
  tail call fastcc void @nsvg__parseAttribs(ptr noundef nonnull %0, ptr noundef %2)
  br label %nsvg__popAttr.exit

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.17) #31
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %bb.bq

bb.l:                                             ; preds = %.tail.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40032
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !82
  %.not69 = icmp eq i8 %i.ad, 0
  br i1 %.not69, label %bb.m, label %nsvg__popAttr.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 39936 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !55 ; 3 uses
  %i.ag = icmp slt i32 %i.af, 127
  br i1 %i.ag, label %bb.n, label %nsvg__pushAttr.exit70

bb.n:                                             ; preds = %bb.m
  %i.ah = add nsw i32 %i.af, 1                    ; 2 uses
  store i32 %i.ah, ptr %i.ae, align 8, !tbaa !55
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [312 x i8], ptr %0, i64 %i.ai
  %i.ak = sext i32 %i.af to i64
  %i.al = getelementptr inbounds [312 x i8], ptr %0, i64 %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.aj, ptr noundef nonnull align 8 dereferenceable(312) %i.al, i64 312, i1 false)
  br label %nsvg__pushAttr.exit70

nsvg__pushAttr.exit70:                            ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.am = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not228.i = icmp eq ptr %i.am, null
  br i1 %.not228.i, label %nsvg__parsePath.exit, label %sub_0.lr.ph.i

sub_0.lr.ph.i:                                    ; preds = %nsvg__pushAttr.exit70
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %sub_0.i

sub_0.i:                                          ; preds = %bb.p, %sub_0.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %sub_0.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %i.ap = phi ptr [ %i.am, %sub_0.lr.ph.i ], [ %i.ba, %bb.p ] ; 3 uses
  %.096229.i = phi ptr [ null, %sub_0.lr.ph.i ], [ %.197.i, %bb.p ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.ar = load i8, ptr %i.ap, align 1
  %.not242.i = icmp eq i8 %i.ar, 100
  br i1 %.not242.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_0.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.o, label %.tail.thread.i

bb.o:                                             ; preds = %.tail.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21
  br label %bb.p

.tail.thread.i:                                   ; preds = %.tail.i, %sub_0.i
  store ptr %i.ap, ptr %i.b, align 16, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !21
  store ptr %i.ay, ptr %i.an, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  call fastcc void @nsvg__parseAttribs(ptr noundef %0, ptr noundef nonnull %i.b)
  br label %bb.p

bb.p:                                             ; preds = %.tail.thread.i, %bb.o
  %.197.i = phi ptr [ %i.aw, %bb.o ], [ %.096229.i, %.tail.thread.i ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %._crit_edge.i, label %sub_0.i, !llvm.loop !176

._crit_edge.i:                                    ; preds = %bb.p
  %.not104.i = icmp eq ptr %.197.i, null
  br i1 %.not104.i, label %nsvg__parsePath.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 39952 ; 11 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !83
  %i.bc = load i8, ptr %.197.i, align 1, !tbaa !17
  %.not105231.i = icmp eq i8 %i.bc, 0
  br i1 %.not105231.i, label %nsvg__parsePath.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 39956 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 39944 ; 8 uses
  br label %bb.r

bb.r:                                             ; preds = %nsvg__pathArcTo.exit.i, %.lr.ph.i
  %.082240.i = phi i8 [ 0, %.lr.ph.i ], [ %.284.i, %nsvg__pathArcTo.exit.i ] ; 15 uses
  %.085239.i = phi i32 [ 0, %.lr.ph.i ], [ %.287.i, %nsvg__pathArcTo.exit.i ] ; 14 uses
  %.088238.i = phi i32 [ 0, %.lr.ph.i ], [ %.4.i, %nsvg__pathArcTo.exit.i ] ; 6 uses
  %.092237.i = phi i8 [ 0, %.lr.ph.i ], [ %.395.i, %nsvg__pathArcTo.exit.i ] ; 24 uses
  %.298236.i = phi ptr [ %.197.i, %.lr.ph.i ], [ %.4100206.i, %nsvg__pathArcTo.exit.i ] ; 5 uses
  %i.bl = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %9, %nsvg__pathArcTo.exit.i ] ; 27 uses
  %i.bm = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %8, %nsvg__pathArcTo.exit.i ] ; 6 uses
  %.not212.i = icmp eq i8 %.092237.i, 97
  switch i8 %.092237.i, label %nsvg__getNextPathItemWhenArcFlag.exit.thread.i [
    i8 97, label %bb.s
    i8 65, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.bn = add i32 %.088238.i, -3
  %or.cond4.i = icmp ult i32 %i.bn, 2
  br i1 %or.cond4.i, label %bb.t, label %nsvg__getNextPathItemWhenArcFlag.exit.thread.i

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.c, align 16, !tbaa !17
  %i.bo = load i8, ptr %.298236.i, align 1, !tbaa !17 ; 2 uses
  %.not26.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not26.i.i, label %nsvg__getNextPathItemWhenArcFlag.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.critedge2.i.i
  %i.bp = phi i8 [ %i.bv, %.critedge2.i.i ], [ %i.bo, %bb.t ] ; 5 uses
  %.01727.i.i = phi ptr [ %i.bu, %.critedge2.i.i ], [ %.298236.i, %bb.t ] ; 3 uses
  %i.bq = zext nneg i8 %i.bp to i64
  %memchr.bounds.i.i.i = icmp ult i8 %i.bp, 64
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = and i64 %i.br, 4294983169
  %memchr.bits.i.i.i = icmp ne i64 %i.bs, 0
  %memchr1.i.i.i = select i1 %memchr.bounds.i.i.i, i1 %memchr.bits.i.i.i, i1 false
  %i.bt = icmp eq i8 %i.bp, 44
  %or.cond.i.i = or i1 %i.bt, %memchr1.i.i.i
  br i1 %or.cond.i.i, label %.critedge2.i.i, label %.critedge.i.i

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.01727.i.i, i64 1 ; 3 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17  ; 2 uses
  %.not.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i, label %nsvg__getNextPathItemWhenArcFlag.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !177

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bw = and i8 %i.bp, -2
  %switch.i.i = icmp eq i8 %i.bw, 48
  br i1 %switch.i.i, label %nsvg__getNextPathItem.exit.thread.sink.split.i, label %nsvg__getNextPathItemWhenArcFlag.exit.thread.i

nsvg__getNextPathItemWhenArcFlag.exit.thread.i:   ; preds = %.critedge2.i.i, %.critedge.i.i, %bb.t, %bb.s, %bb.r
  %.399198.i = phi ptr [ %.298236.i, %bb.r ], [ %.298236.i, %bb.t ], [ %.298236.i, %bb.s ], [ %.01727.i.i, %.critedge.i.i ], [ %i.bu, %.critedge2.i.i ] ; 2 uses
  store i8 0, ptr %i.c, align 16, !tbaa !17
  %i.bx = load i8, ptr %.399198.i, align 1, !tbaa !17 ; 2 uses
  %.not29.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not29.i.i, label %nsvg__getNextPathItem.exit.thread207.i, label %.lr.ph.i117.i

.lr.ph.i117.i:                                    ; preds = %nsvg__getNextPathItemWhenArcFlag.exit.thread.i, %.critedge2.i124.i
  %i.by = phi i8 [ %i.ce, %.critedge2.i124.i ], [ %i.bx, %nsvg__getNextPathItemWhenArcFlag.exit.thread.i ] ; 6 uses
  %.02130.i.i = phi ptr [ %i.cd, %.critedge2.i124.i ], [ %.399198.i, %nsvg__getNextPathItemWhenArcFlag.exit.thread.i ] ; 3 uses
  %i.bz = zext nneg i8 %i.by to i64
  %memchr.bounds.i.i118.i = icmp ult i8 %i.by, 64
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = and i64 %i.ca, 4294983169
  %memchr.bits.i.i119.i = icmp ne i64 %i.cb, 0
  %memchr1.i.i120.i = select i1 %memchr.bounds.i.i118.i, i1 %memchr.bits.i.i119.i, i1 false
  %i.cc = icmp eq i8 %i.by, 44
  %or.cond.i121.i = or i1 %i.cc, %memchr1.i.i120.i
  br i1 %or.cond.i121.i, label %.critedge2.i124.i, label %.critedge.i122.i

.critedge2.i124.i:                                ; preds = %.lr.ph.i117.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.02130.i.i, i64 1 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !17  ; 2 uses
  %.not.i125.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i125.i, label %nsvg__getNextPathItem.exit.thread207.i, label %.lr.ph.i117.i, !llvm.loop !1

.critedge.i122.i:                                 ; preds = %.lr.ph.i117.i
  switch i8 %i.by, label %bb.u [
    i8 46, label %nsvg__getNextPathItem.exit.i
    i8 45, label %nsvg__getNextPathItem.exit.i
    i8 43, label %nsvg__getNextPathItem.exit.i
  ]

bb.u:                                             ; preds = %.critedge.i122.i
  %i.cf = add i8 %i.by, -58
  %i.cg = icmp ult i8 %i.cf, -10
  br i1 %i.cg, label %nsvg__getNextPathItem.exit.thread.sink.split.i, label %nsvg__getNextPathItem.exit.i

nsvg__getNextPathItem.exit.i:                     ; preds = %bb.u, %.critedge.i122.i, %.critedge.i122.i, %.critedge.i122.i
  %i.ch = call fastcc ptr @nsvg__parseNumber(ptr noundef nonnull %.02130.i.i, ptr noundef nonnull %i.c)
  %.pr202.pre.i = load i8, ptr %i.c, align 16, !tbaa !17 ; 2 uses
  %.not107.i = icmp eq i8 %.pr202.pre.i, 0
  br i1 %.not107.i, label %nsvg__getNextPathItem.exit.thread207.i, label %nsvg__getNextPathItem.exit.thread.i

nsvg__getNextPathItem.exit.thread.sink.split.i:   ; preds = %bb.u, %.critedge.i.i
  %.01727.i.lcssa.sink.i = phi ptr [ %.01727.i.i, %.critedge.i.i ], [ %.02130.i.i, %bb.u ]
  %.lcssa.sink.i = phi i8 [ %i.bp, %.critedge.i.i ], [ %i.by, %bb.u ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01727.i.lcssa.sink.i, i64 1
  store i8 %.lcssa.sink.i, ptr %i.c, align 16, !tbaa !17
  store i8 0, ptr %i.bd, align 1, !tbaa !17
  br label %nsvg__getNextPathItem.exit.thread.i

nsvg__getNextPathItem.exit.thread.i:              ; preds = %nsvg__getNextPathItem.exit.thread.sink.split.i, %nsvg__getNextPathItem.exit.i
  %.4100206.i = phi ptr [ %i.ch, %nsvg__getNextPathItem.exit.i ], [ %i.ci, %nsvg__getNextPathItem.exit.thread.sink.split.i ] ; 2 uses
  %i.cj = phi i8 [ %.pr202.pre.i, %nsvg__getNextPathItem.exit.i ], [ %.lcssa.sink.i, %nsvg__getNextPathItem.exit.thread.sink.split.i ] ; 5 uses
  %.not109.i = icmp eq i8 %.092237.i, 0
  br i1 %.not109.i, label %bb.bd, label %bb.v

bb.v:                                             ; preds = %nsvg__getNextPathItem.exit.thread.i
  switch i8 %i.cj, label %nsvg__isCoordinate.exit.i [
    i8 45, label %bb.w
    i8 43, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %.pre.i.i = load i8, ptr %i.bd, align 1, !tbaa !17
  br label %nsvg__isCoordinate.exit.i

nsvg__isCoordinate.exit.i:                        ; preds = %bb.w, %bb.v
  %i.ck = phi i8 [ %.pre.i.i, %bb.w ], [ %i.cj, %bb.v ] ; 2 uses
  %i.cl = add i8 %i.ck, -58
  %i.cm = icmp ult i8 %i.cl, -10
  %i.cn = icmp ne i8 %i.ck, 46
  %narrow.i.not.i = and i1 %i.cn, %i.cm
  br i1 %narrow.i.not.i, label %bb.bd, label %bb.x

bb.x:                                             ; preds = %nsvg__isCoordinate.exit.i
  %i.co = icmp slt i32 %.088238.i, 10
  br i1 %i.co, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cp = call fastcc double @nsvg__atof(ptr noundef nonnull %i.c)
  %i.cq = fptrunc double %i.cp to float
  %i.cr = add nsw i32 %.088238.i, 1
  %i.cs = sext i32 %.088238.i to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cs
  store float %i.cq, ptr %i.ct, align 4, !tbaa !31
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.189.i = phi i32 [ %i.cr, %bb.y ], [ %.088238.i, %bb.x ] ; 4 uses
  %.not111.i = icmp slt i32 %.189.i, %.085239.i
  br i1 %.not111.i, label %nsvg__pathArcTo.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  switch i8 %.092237.i, label %bb.bb [
    i8 109, label %bb.ab
    i8 77, label %bb.ab
    i8 108, label %nsvg__pathLineTo.exit.i
    i8 76, label %nsvg__pathLineTo.exit.i
    i8 72, label %nsvg__pathHLineTo.exit.i
    i8 104, label %nsvg__pathHLineTo.exit.i
    i8 86, label %nsvg__pathVLineTo.exit.i
    i8 118, label %nsvg__pathVLineTo.exit.i
    i8 97, label %bb.ap
    i8 65, label %bb.ap
    i8 83, label %bb.ai
    i8 115, label %bb.ai
    i8 81, label %bb.al
    i8 113, label %bb.al
    i8 84, label %bb.ao
    i8 116, label %bb.ao
    i8 99, label %bb.ag
    i8 67, label %bb.ah
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %.not220.i = icmp eq i8 %.092237.i, 109         ; 2 uses
  %i.cu = load <2 x float>, ptr %i.a, align 16    ; 2 uses
  %i.cv = fadd <2 x float> %i.bl, %i.cu
  %i.cw = insertelement <2 x i1> poison, i1 %.not220.i, i64 0
  %i.cx = shufflevector <2 x i1> %i.cw, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cy = select <2 x i1> %i.cx, <2 x float> %i.cv, <2 x float> %i.cu ; 5 uses
  %i.cz = load i32, ptr %i.bb, align 8, !tbaa !83 ; 4 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.db = load ptr, ptr %i.bk, align 8, !tbaa !79 ; 2 uses
  %i.dc = shl nuw i32 %i.cz, 1                    ; 2 uses
  %i.dd = add i32 %i.dc, -2
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.de
  %i.dg = extractelement <2 x float> %i.cy, i64 0
  store float %i.dg, ptr %i.df, align 4, !tbaa !31
  %i.dh = add i32 %i.dc, -1
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.di
  %i.dk = extractelement <2 x float> %i.cy, i64 1
  store float %i.dk, ptr %i.dj, align 4, !tbaa !31
  br label %nsvg__pathMoveTo.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.dl = load i32, ptr %i.bj, align 4, !tbaa !84 ; 3 uses
  %.not.i.i.i.i = icmp slt i32 %i.cz, %i.dl
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.ae

._crit_edge.i.i.i.i:                              ; preds = %bb.ad
  %.pre.i.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !79
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.not16.i.i.i.i = icmp eq i32 %i.dl, 0
  %i.dm = shl nsw i32 %i.dl, 1
  %spec.select.i.i.i.i = select i1 %.not16.i.i.i.i, i32 8, i32 %i.dm ; 2 uses
  store i32 %spec.select.i.i.i.i, ptr %i.bj, align 4, !tbaa !84
  %i.dn = load ptr, ptr %i.bk, align 8, !tbaa !79
  %i.do = shl nsw i32 %spec.select.i.i.i.i, 1
  %i.dp = sext i32 %i.do to i64
  %i.dq = shl nsw i64 %i.dp, 2
  %i.dr = call ptr @realloc(ptr noundef %i.dn, i64 noundef %i.dq) #32 ; 3 uses
  store ptr %i.dr, ptr %i.bk, align 8, !tbaa !79
  %.not17.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not17.i.i.i.i, label %nsvg__pathMoveTo.exit.i, label %._crit_edge18.i.i.i.i

._crit_edge18.i.i.i.i:                            ; preds = %bb.ae
  %.pre19.i.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !83
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge18.i.i.i.i, %._crit_edge.i.i.i.i
  %i.ds = phi i32 [ %i.cz, %._crit_edge.i.i.i.i ], [ %.pre19.i.i.i.i, %._crit_edge18.i.i.i.i ] ; 2 uses
  %i.dt = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.dr, %._crit_edge18.i.i.i.i ]
  %i.du = shl nsw i32 %i.ds, 1
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dv
  store <2 x float> %i.cy, ptr %i.dw, align 4, !tbaa !31
  %i.dx = add nsw i32 %i.ds, 1
  store i32 %i.dx, ptr %i.bb, align 8, !tbaa !83
  br label %nsvg__pathMoveTo.exit.i

nsvg__pathMoveTo.exit.i:                          ; preds = %bb.af, %bb.ae, %bb.ac
  %i.dy = select i1 %.not220.i, i8 108, i8 76     ; 2 uses
  %i.dz = call fastcc i32 @nsvg__getArgsPerElement(i8 noundef signext %i.dy)
  br label %nsvg__pathArcTo.exit.i

nsvg__pathLineTo.exit.i:                          ; preds = %bb.aa, %bb.aa
  %.not219.i = icmp eq i8 %.092237.i, 108
  %i.ea = load <2 x float>, ptr %i.a, align 16    ; 2 uses
  %i.eb = fadd <2 x float> %i.bl, %i.ea
  %i.ec = insertelement <2 x i1> poison, i1 %.not219.i, i64 0
  %i.ed = shufflevector <2 x i1> %i.ec, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ee = select <2 x i1> %i.ed, <2 x float> %i.eb, <2 x float> %i.ea ; 4 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 0
  %i.eg = extractelement <2 x float> %i.ee, i64 1
  call fastcc void @nsvg__lineTo(ptr noundef %0, float noundef %i.ef, float noundef %i.eg)
  br label %nsvg__pathArcTo.exit.i

nsvg__pathHLineTo.exit.i:                         ; preds = %bb.aa, %bb.aa
  %.not218.i = icmp eq i8 %.092237.i, 104
  %.val.i = load float, ptr %i.a, align 16        ; 2 uses
  %i.eh = extractelement <2 x float> %i.bl, i64 0
  %i.ei = fadd float %i.eh, %.val.i
  %storemerge.i130.i = select i1 %.not218.i, float %i.ei, float %.val.i ; 2 uses
  %i.ej = extractelement <2 x float> %i.bl, i64 1
  call fastcc void @nsvg__lineTo(ptr noundef %0, float noundef %storemerge.i130.i, float noundef %i.ej)
  %i.ek = insertelement <2 x float> %i.bl, float %storemerge.i130.i, i64 0 ; 2 uses
  br label %nsvg__pathArcTo.exit.i

nsvg__pathVLineTo.exit.i:                         ; preds = %bb.aa, %bb.aa
  %.not217.i = icmp eq i8 %.092237.i, 118
  %.val114.i = load float, ptr %i.a, align 16     ; 2 uses
  %i.el = extractelement <2 x float> %i.bl, i64 1
  %i.em = fadd float %i.el, %.val114.i
  %storemerge.i132.i = select i1 %.not217.i, float %i.em, float %.val114.i ; 2 uses
  %i.en = extractelement <2 x float> %i.bl, i64 0
  call fastcc void @nsvg__lineTo(ptr noundef %0, float noundef %i.en, float noundef %storemerge.i132.i)
  %i.eo = insertelement <2 x float> %i.bl, float %storemerge.i132.i, i64 1 ; 2 uses
  br label %nsvg__pathArcTo.exit.i

bb.ag:                                            ; preds = %bb.aa
  %i.ep = load <2 x float>, ptr %i.a, align 16, !tbaa !31
  %i.eq = fadd <2 x float> %i.bl, %i.ep
  %i.er = load <2 x float>, ptr %i.bf, align 8, !tbaa !31
  %i.es = fadd <2 x float> %i.bl, %i.er
  %i.et = load <2 x float>, ptr %i.bh, align 16, !tbaa !31
  %i.eu = fadd <2 x float> %i.bl, %i.et
  br label %nsvg__pathCubicBezTo.exit.i

bb.ah:                                            ; preds = %bb.aa
  %i.ev = load <2 x float>, ptr %i.a, align 16, !tbaa !31
  %i.ew = load <2 x float>, ptr %i.bf, align 8, !tbaa !31
  %i.ex = load <2 x float>, ptr %i.bh, align 16, !tbaa !31
  br label %nsvg__pathCubicBezTo.exit.i

nsvg__pathCubicBezTo.exit.i:                      ; preds = %bb.ah, %bb.ag
  %i.ey = phi <2 x float> [ %i.eu, %bb.ag ], [ %i.ex, %bb.ah ] ; 3 uses
  %i.ez = phi <2 x float> [ %i.es, %bb.ag ], [ %i.ew, %bb.ah ] ; 3 uses
  %i.fa = phi <2 x float> [ %i.eq, %bb.ag ], [ %i.ev, %bb.ah ] ; 2 uses
  %i.fb = extractelement <2 x float> %i.ey, i64 0
  %i.fc = extractelement <2 x float> %i.ey, i64 1
  %i.fd = extractelement <2 x float> %i.ez, i64 0
  %i.fe = extractelement <2 x float> %i.ez, i64 1
  %i.ff = extractelement <2 x float> %i.fa, i64 0
  %i.fg = extractelement <2 x float> %i.fa, i64 1
  call fastcc void @nsvg__cubicBezTo(ptr noundef %0, float noundef %i.ff, float noundef %i.fg, float noundef %i.fd, float noundef %i.fe, float noundef %i.fb, float noundef %i.fc)
  br label %nsvg__pathArcTo.exit.i

bb.ai:                                            ; preds = %bb.aa, %bb.aa
  %.not215.i = icmp eq i8 %.092237.i, 115
  %i.fh = load float, ptr %i.a, align 16, !tbaa !31 ; 2 uses
  br i1 %.not215.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fi = load float, ptr %i.be, align 4, !tbaa !31
  %i.fj = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fk = insertelement <2 x float> %i.fj, float %i.fi, i64 1
  %i.fl = fadd <2 x float> %i.bl, %i.fk
  %i.fm = load <2 x float>, ptr %i.bf, align 8, !tbaa !31
  %i.fn = fadd <2 x float> %i.bl, %i.fm
  br label %nsvg__pathCubicBezShortTo.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.fo = load float, ptr %i.be, align 4, !tbaa !31
  %i.fp = load <2 x float>, ptr %i.bf, align 8, !tbaa !31
  %i.fq = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %i.fo, i64 1
  br label %nsvg__pathCubicBezShortTo.exit.i

nsvg__pathCubicBezShortTo.exit.i:                 ; preds = %bb.ak, %bb.aj
  %i.fs = phi <2 x float> [ %i.fn, %bb.aj ], [ %i.fp, %bb.ak ] ; 3 uses
  %i.ft = phi <2 x float> [ %i.fl, %bb.aj ], [ %i.fr, %bb.ak ] ; 3 uses
  %i.fu = fneg <2 x float> %i.bm
  %i.fv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> splat (float 2.000000e+00), <2 x float> %i.fu) ; 2 uses
  %i.fw = extractelement <2 x float> %i.fs, i64 0
  %i.fx = extractelement <2 x float> %i.fs, i64 1
  %i.fy = extractelement <2 x float> %i.ft, i64 0
  %i.fz = extractelement <2 x float> %i.ft, i64 1
  %i.ga = extractelement <2 x float> %i.fv, i64 0
  %i.gb = extractelement <2 x float> %i.fv, i64 1
  call fastcc void @nsvg__cubicBezTo(ptr noundef %0, float noundef %i.ga, float noundef %i.gb, float noundef %i.fy, float noundef %i.fz, float noundef %i.fw, float noundef %i.fx)
  br label %nsvg__pathArcTo.exit.i

bb.al:                                            ; preds = %bb.aa, %bb.aa
  %.not214.i = icmp eq i8 %.092237.i, 113
  %i.gc = load float, ptr %i.a, align 16, !tbaa !31 ; 2 uses
  br i1 %.not214.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gd = load float, ptr %i.be, align 4, !tbaa !31
  %i.ge = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gf = insertelement <2 x float> %i.ge, float %i.gd, i64 1
  %i.gg = fadd <2 x float> %i.bl, %i.gf
  %i.gh = load <2 x float>, ptr %i.bf, align 8, !tbaa !31
  %i.gi = fadd <2 x float> %i.bl, %i.gh
  br label %nsvg__pathQuadBezTo.exit.i

bb.an:                                            ; preds = %bb.al
  %i.gj = load float, ptr %i.be, align 4, !tbaa !31
  %i.gk = load <2 x float>, ptr %i.bf, align 8, !tbaa !31
  %i.gl = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gm = insertelement <2 x float> %i.gl, float %i.gj, i64 1
  br label %nsvg__pathQuadBezTo.exit.i

nsvg__pathQuadBezTo.exit.i:                       ; preds = %bb.an, %bb.am
  %i.gn = phi <2 x float> [ %i.gi, %bb.am ], [ %i.gk, %bb.an ] ; 4 uses
  %i.go = phi <2 x float> [ %i.gg, %bb.am ], [ %i.gm, %bb.an ] ; 2 uses
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gq = extractelement <2 x float> %i.gn, i64 0
  %i.gr = extractelement <2 x float> %i.gn, i64 1
  %i.gs = shufflevector <2 x float> %i.bl, <2 x float> %i.gn, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.gt = fsub <4 x float> %i.gp, %i.gs
  %i.gu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gt, <4 x float> splat (float f0x3F2AAAAB), <4 x float> %i.gs) ; 4 uses
  %i.gv = extractelement <4 x float> %i.gu, i64 0
  %i.gw = extractelement <4 x float> %i.gu, i64 1
  %i.gx = extractelement <4 x float> %i.gu, i64 2
  %i.gy = extractelement <4 x float> %i.gu, i64 3
  call fastcc void @nsvg__cubicBezTo(ptr noundef %0, float noundef %i.gv, float noundef %i.gw, float noundef %i.gx, float noundef %i.gy, float noundef %i.gq, float noundef %i.gr)
  br label %nsvg__pathArcTo.exit.i

bb.ao:                                            ; preds = %bb.aa, %bb.aa
  %.not213.i = icmp eq i8 %.092237.i, 116
  %i.gz = fneg <2 x float> %i.bm
  %i.ha = load <2 x float>, ptr %i.a, align 16    ; 2 uses
  %i.hb = fadd <2 x float> %i.bl, %i.ha
  %i.hc = insertelement <2 x i1> poison, i1 %.not213.i, i64 0
  %i.hd = shufflevector <2 x i1> %i.hc, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.he = select <2 x i1> %i.hd, <2 x float> %i.hb, <2 x float> %i.ha ; 4 uses
  %i.hf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> splat (float 2.000000e+00), <2 x float> %i.gz) ; 2 uses
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hh = extractelement <2 x float> %i.he, i64 0
  %i.hi = extractelement <2 x float> %i.he, i64 1
  %i.hj = shufflevector <2 x float> %i.bl, <2 x float> %i.he, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.hk = fsub <4 x float> %i.hg, %i.hj
  %i.hl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hk, <4 x float> splat (float f0x3F2AAAAB), <4 x float> %i.hj) ; 4 uses
  %i.hm = extractelement <4 x float> %i.hl, i64 0
  %i.hn = extractelement <4 x float> %i.hl, i64 1
  %i.ho = extractelement <4 x float> %i.hl, i64 2
  %i.hp = extractelement <4 x float> %i.hl, i64 3
  call fastcc void @nsvg__cubicBezTo(ptr noundef %0, float noundef %i.hm, float noundef %i.hn, float noundef %i.ho, float noundef %i.hp, float noundef %i.hh, float noundef %i.hi)
  br label %nsvg__pathArcTo.exit.i

bb.ap:                                            ; preds = %bb.aa, %bb.aa
  %i.hq = load <2 x float>, ptr %i.a, align 16, !tbaa !31 ; 3 uses
  %i.hr = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hq) ; 4 uses
  %i.hs = load <2 x float>, ptr %i.bg, align 4, !tbaa !31
  %i.ht = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hs)
  %i.hu = fpext <2 x float> %i.ht to <2 x double> ; 2 uses
  %i.hv = extractelement <2 x double> %i.hu, i64 1
  %i.hw = fcmp ogt double %i.hv, f0x3EB0C6F7A0B5ED8D ; 3 uses
  %i.hx = load <2 x float>, ptr %i.bi, align 4    ; 2 uses
  %i.hy = fadd <2 x float> %i.bl, %i.hx
  %i.hz = insertelement <2 x i1> poison, i1 %.not212.i, i64 0
  %i.ia = shufflevector <2 x i1> %i.hz, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ib = select <2 x i1> %i.ia, <2 x float> %i.hy, <2 x float> %i.hx ; 10 uses
  %i.ic = fsub <2 x float> %i.bl, %i.ib           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.ic, %i.ic
  %i.id = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ie = extractelement <2 x float> %i.ic, i64 0 ; 2 uses
  %i.if = call float @llvm.fmuladd.f32(float %i.ie, float %i.ie, float %i.id)
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.if)
  %i.ig = fcmp olt float %sqrt.i.i, f0x358637BD
  %i.ih = extractelement <2 x float> %i.hr, i64 0
  %i.ii = fcmp olt float %i.ih, f0x358637BD
  %or.cond.i145.i = select i1 %i.ig, i1 true, i1 %i.ii
  %i.ij = extractelement <2 x float> %i.hr, i64 1
  %i.ik = fcmp olt float %i.ij, f0x358637BD
  %or.cond3.i.i = select i1 %or.cond.i145.i, i1 true, i1 %i.ik
  br i1 %or.cond3.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.il = extractelement <2 x float> %i.ib, i64 0
  %i.im = extractelement <2 x float> %i.ib, i64 1
  call fastcc void @nsvg__lineTo(ptr noundef %0, float noundef %i.il, float noundef %i.im)
  br label %nsvg__pathArcTo.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.in = load float, ptr %i.bf, align 8, !tbaa !31
  %i.io = fdiv float %i.in, 1.800000e+02
  %i.ip = fmul float %i.io, f0x40490FDB           ; 2 uses
  %i.iq = call float @sinf(float noundef %i.ip) #30 ; 5 uses
  %i.ir = call float @cosf(float noundef %i.ip) #30 ; 5 uses
  %i.is = fneg float %i.iq                        ; 3 uses
  %i.it = insertelement <2 x float> poison, float %i.is, i64 0 ; 2 uses
  %i.iu = insertelement <2 x float> %i.it, float %i.iq, i64 1
  %i.iv = fmul <2 x float> %i.ic, %i.iu
  %i.iw = fmul <2 x float> %i.iv, splat (float 5.000000e-01)
  %i.ix = insertelement <2 x float> poison, float %i.ir, i64 0 ; 3 uses
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x float> %i.ic, %i.iy
  %i.ja = fmul <2 x float> %i.iz, splat (float 5.000000e-01)
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jc = fadd <2 x float> %i.iw, %i.jb           ; 7 uses
  %i.jd = fmul <2 x float> %i.jc, %i.jc           ; 3 uses
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jf = fmul <2 x float> %i.hq, %i.hq
  %i.jg = fdiv <2 x float> %i.je, %i.jf
  %i.jh = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jg) ; 2 uses
  %i.ji = fcmp ogt float %i.jh, 1.000000e+00
  %sqrt203.i.i = call float @llvm.sqrt.f32(float %i.jh)
  %i.jj = insertelement <2 x float> poison, float %sqrt203.i.i, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fmul <2 x float> %i.hr, %i.jk
  %i.jm = insertelement <2 x i1> poison, i1 %i.ji, i64 0
  %i.jn = shufflevector <2 x i1> %i.jm, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.jo = select <2 x i1> %i.jn, <2 x float> %i.jl, <2 x float> %i.hr ; 12 uses
  %foldExtExtBinop245 = fmul <2 x float> %i.jo, %i.jo
  %i.jp = extractelement <2 x float> %foldExtExtBinop245, i64 0 ; 3 uses
  %i.jq = extractelement <2 x float> %i.jo, i64 1 ; 2 uses
  %i.jr = fmul float %i.jq, %i.jq                 ; 3 uses
  %i.js = extractelement <2 x float> %i.jd, i64 1 ; 2 uses
  %i.jt = fmul float %i.js, %i.jr
  %i.ju = extractelement <2 x float> %i.jd, i64 0 ; 2 uses
  %i.jv = call float @llvm.fmuladd.f32(float %i.jp, float %i.ju, float %i.jt) ; 2 uses
  %i.jw = fcmp ogt float %i.jv, 0.000000e+00
  br i1 %i.jw, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.jx = fneg float %i.jr
  %i.jy = fneg float %i.ju
  %i.jz = fmul float %i.jp, %i.jy
  %i.ka = call float @llvm.fmuladd.f32(float %i.jp, float %i.jr, float %i.jz)
  %i.kb = call float @llvm.fmuladd.f32(float %i.jx, float %i.js, float %i.ka) ; 2 uses
  %i.kc = fcmp olt float %i.kb, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.kc, float 0.000000e+00, float %i.kb
  %i.kd = fdiv float %spec.store.select.i.i, %i.jv
  %i.ke = call float @sqrtf(float noundef %i.kd) #30
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0174.i.i = phi float [ %i.ke, %bb.as ], [ 0.000000e+00, %bb.ar ] ; 2 uses
  %i.kf = extractelement <2 x double> %i.hu, i64 0
  %i.kg = fcmp ule double %i.kf, f0x3EB0C6F7A0B5ED8D
  %i.kh = xor i1 %i.kg, %i.hw
  %i.ki = fneg float %.0174.i.i
  %.1.i.i = select i1 %i.kh, float %i.ki, float %.0174.i.i
  %i.kj = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kk = fneg <2 x float> %i.jo
  %i.kl = shufflevector <2 x float> %i.jo, <2 x float> %i.kk, <2 x i32> <i32 0, i32 3>
  %i.km = insertelement <2 x float> poison, float %.1.i.i, i64 0
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ko = fmul <2 x float> %i.kl, %i.kn
  %i.kp = fmul <2 x float> %i.jc, %i.ko
  %i.kq = fdiv <2 x float> %i.kp, %i.kj           ; 2 uses
  %i.kr = fadd <2 x float> %i.bl, %i.ib
  %i.ks = fmul <2 x float> %i.kr, splat (float 5.000000e-01)
  %i.kt = insertelement <2 x float> %i.ix, float %i.iq, i64 1
  %i.ku = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kt, <2 x float> %i.ku, <2 x float> %i.ks)
  %i.kw = insertelement <2 x float> poison, float %i.is, i64 0
  %i.kx = insertelement <2 x float> %i.kw, float %i.ir, i64 1
  %i.ky = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.kz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kx, <2 x float> %i.ky, <2 x float> %i.kv) ; 2 uses
  %i.la = fneg <2 x float> %i.jc
  %i.lb = shufflevector <2 x float> %i.jc, <2 x float> %i.la, <2 x i32> <i32 1, i32 3>
  %i.lc = fsub <2 x float> %i.lb, %i.ku
  %i.ld = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.le = fdiv <2 x float> %i.lc, %i.ld           ; 5 uses
  %i.lf = fneg <2 x float> %i.jc
  %i.lg = shufflevector <2 x float> %i.jc, <2 x float> %i.lf, <2 x i32> <i32 0, i32 2>
  %i.lh = fsub <2 x float> %i.lg, %i.ky
  %i.li = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lj = fdiv <2 x float> %i.lh, %i.li           ; 6 uses
  %i.lk = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ll = extractelement <2 x float> %i.lj, i64 0 ; 2 uses
  %i.lm = extractelement <2 x float> %i.le, i64 0 ; 3 uses
  %i.ln = fmul <2 x float> %i.lj, %i.lj
  %i.lo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.le, <2 x float> %i.le, <2 x float> %i.ln)
  %i.lp = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.lo) ; 3 uses
  %i.lq = fmul float %i.lm, 0.000000e+00
  %i.lr = fcmp olt float %i.ll, %i.lq
  %i.ls = extractelement <2 x float> %i.le, i64 1
  %shift = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop247 = fmul <2 x float> %i.lp, %shift
  %i.lt = fmul float %i.ll, 0.000000e+00
  %shift249 = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop250 = fmul <2 x float> %i.lj, %shift249
  %i.lu = extractelement <2 x float> %foldExtExtBinop250, i64 0
  %i.lv = fadd float %i.lm, %i.lt
  %i.lw = call float @llvm.fmuladd.f32(float %i.lm, float %i.ls, float %i.lu)
  %i.lx = insertelement <2 x float> poison, float %i.lw, i64 0
  %i.ly = insertelement <2 x float> %i.lx, float %i.lv, i64 1
  %i.lz = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ma = shufflevector <2 x float> %foldExtExtBinop247, <2 x float> %i.lz, <2 x i32> <i32 0, i32 3>
  %i.mb = fdiv <2 x float> %i.ly, %i.ma           ; 2 uses
  %i.mc = fcmp olt <2 x float> %i.mb, splat (float -1.000000e+00)
  %i.md = select <2 x i1> %i.mc, <2 x float> splat (float -1.000000e+00), <2 x float> %i.mb ; 2 uses
  %i.me = fcmp ogt <2 x float> %i.md, splat (float 1.000000e+00)
  %i.mf = select <2 x i1> %i.me, <2 x float> splat (float 1.000000e+00), <2 x float> %i.md ; 2 uses
  %i.mg = extractelement <2 x float> %i.mf, i64 1
  %i.mh = call float @acosf(float noundef %i.mg) #30 ; 2 uses
  %i.mi = fneg float %i.mh
  %i.mj = select i1 %i.lr, float %i.mi, float %i.mh ; 2 uses
  %i.mk = fmul <2 x float> %i.lk, %i.le           ; 2 uses
  %i.ml = extractelement <2 x float> %i.mk, i64 0
  %i.mm = extractelement <2 x float> %i.mk, i64 1
  %i.mn = fcmp olt float %i.ml, %i.mm
  %i.mo = extractelement <2 x float> %i.mf, i64 0
  %i.mp = call float @acosf(float noundef %i.mo) #30 ; 2 uses
  %i.mq = fneg float %i.mp
  %i.mr = select i1 %i.mn, float %i.mq, float %i.mp ; 5 uses
  %i.ms = fcmp ule float %i.mr, 0.000000e+00
  %or.cond5.not.i.i = select i1 %i.hw, i1 true, i1 %i.ms
  br i1 %or.cond5.not.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mt = fadd float %i.mr, f0xC0C90FDB
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.mu = fcmp olt float %i.mr, 0.000000e+00
  %or.cond7.i.i = select i1 %i.hw, i1 %i.mu, i1 false
  br i1 %or.cond7.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.mv = fadd float %i.mr, f0x40C90FDB
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.0173.i.i = phi float [ %i.mt, %bb.au ], [ %i.mv, %bb.aw ], [ %i.mr, %bb.av ] ; 5 uses
  %i.mw = call float @llvm.fabs.f32(float %.0173.i.i)
  %i.mx = fdiv float %i.mw, f0x3FC90FDB
  %i.my = fadd float %i.mx, 1.000000e+00
  %i.mz = fptosi float %i.my to i32               ; 3 uses
  %3 = uitofp nneg i32 %i.mz to float             ; 3 uses
  %i.na = fdiv float %.0173.i.i, %3
  %i.nb = fmul float %i.na, 5.000000e-01          ; 4 uses
  %i.nc = call float @llvm.fabs.f32(float %i.nb)
  %or.cond9.i.i = fcmp olt float %i.nc, 1.000000e-03
  br i1 %or.cond9.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.nd = fmul nnan float %i.nb, 5.000000e-01
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.ne = call float @cosf(float noundef %i.nb) #30
  %i.nf = fsub float 1.000000e+00, %i.ne
  %i.ng = call float @sinf(float noundef %i.nb) #30
  %i.nh = fdiv float %i.nf, %i.ng
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0167.i.i = phi float [ %i.nd, %bb.ay ], [ %i.nh, %bb.az ]
  %i.ni = fdiv float 0.000000e+00, %3
  %i.nj = call float @llvm.fmuladd.f32(float %.0173.i.i, float %i.ni, float %i.mj) ; 2 uses
  %i.nk = call float @cosf(float noundef %i.nj) #30 ; 2 uses
  %i.nl = call float @sinf(float noundef %i.nj) #30 ; 2 uses
  %exitcond.peel.not.i.i = icmp eq i32 %i.mz, 0
  br i1 %exitcond.peel.not.i.i, label %nsvg__pathArcTo.exit.i, label %.lr.ph.peel.next.i.preheader.i

.lr.ph.peel.next.i.preheader.i:                   ; preds = %bb.ba
  %4 = fcmp olt float %.0173.i.i, 0.000000e+00
  %5 = fmul float %.0167.i.i, f0x3FAAAAAB
  %6 = call float @llvm.fabs.f32(float %5)        ; 2 uses
  %7 = fneg float %6
  %.0.i146.i = select i1 %4, float %7, float %6
  %i.nm = fneg float %i.nl
  %i.nn = insertelement <2 x float> poison, float %i.nm, i64 0
  %i.no = insertelement <2 x float> %i.nn, float %i.nk, i64 1
  %i.np = fmul <2 x float> %i.jo, %i.no
  %i.nq = insertelement <2 x float> poison, float %.0.i146.i, i64 0
  %i.nr = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ns = fmul <2 x float> %i.nr, %i.np           ; 2 uses
  %i.nt = insertelement <2 x float> %i.ix, float %i.is, i64 1 ; 3 uses
  %i.nu = shufflevector <2 x float> %i.ns, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nv = fmul <2 x float> %i.nt, %i.nu
  %i.nw = shufflevector <2 x float> %i.ns, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nx = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.ny = insertelement <2 x float> %i.nx, float %i.ir, i64 1 ; 3 uses
  %i.nz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nw, <2 x float> %i.ny, <2 x float> %i.nv)
  %i.oa = insertelement <2 x float> poison, float %i.nk, i64 0
  %i.ob = insertelement <2 x float> %i.oa, float %i.nl, i64 1
  %i.oc = fmul <2 x float> %i.jo, %i.ob           ; 2 uses
  %i.od = shufflevector <2 x float> %i.oc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.oe = fmul <2 x float> %i.nt, %i.od
  %i.of = shufflevector <2 x float> %i.oc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.og = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.of, <2 x float> %i.ny, <2 x float> %i.oe)
  %i.oh = shufflevector <2 x float> %i.og, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.oi = fadd <2 x float> %i.kz, %i.oh
  %i.oj = insertelement <2 x float> %i.it, float %i.ir, i64 1
  %i.ok = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.ol = insertelement <2 x float> %i.ok, float %i.iq, i64 1
  br label %.lr.ph.peel.next.i.i

.lr.ph.peel.next.i.i:                             ; preds = %.lr.ph.peel.next.i.i, %.lr.ph.peel.next.i.preheader.i
  %.0168209.i.i = phi i32 [ %i.pu, %.lr.ph.peel.next.i.i ], [ 1, %.lr.ph.peel.next.i.preheader.i ] ; 3 uses
  %i.om = phi <2 x float> [ %i.pi, %.lr.ph.peel.next.i.i ], [ %i.nz, %.lr.ph.peel.next.i.preheader.i ]
  %i.on = phi <2 x float> [ %i.pk, %.lr.ph.peel.next.i.i ], [ %i.oi, %.lr.ph.peel.next.i.preheader.i ]
  %i.oo = uitofp nneg i32 %.0168209.i.i to float
  %i.op = fdiv float %i.oo, %3
  %i.oq = call float @llvm.fmuladd.f32(float %.0173.i.i, float %i.op, float %i.mj) ; 2 uses
  %i.or = call float @cosf(float noundef %i.oq) #30 ; 2 uses
  %i.os = call float @sinf(float noundef %i.oq) #30 ; 2 uses
  %i.ot = insertelement <2 x float> poison, float %i.or, i64 0
  %i.ou = insertelement <2 x float> %i.ot, float %i.os, i64 1
  %i.ov = fmul <2 x float> %i.jo, %i.ou           ; 2 uses
  %i.ow = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ox = fmul <2 x float> %i.ow, %i.oj
  %i.oy = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oy, <2 x float> %i.ol, <2 x float> %i.ox)
  %i.pa = fneg float %i.os
  %i.pb = insertelement <2 x float> poison, float %i.pa, i64 0
  %i.pc = insertelement <2 x float> %i.pb, float %i.or, i64 1
  %i.pd = fmul <2 x float> %i.jo, %i.pc
  %i.pe = fmul <2 x float> %i.nr, %i.pd           ; 2 uses
  %i.pf = shufflevector <2 x float> %i.pe, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pg = fmul <2 x float> %i.nt, %i.pf
  %i.ph = shufflevector <2 x float> %i.pe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ph, <2 x float> %i.ny, <2 x float> %i.pg) ; 2 uses
  %i.pj = shufflevector <2 x float> %i.om, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pk = fadd <2 x float> %i.kz, %i.oz           ; 4 uses
  %i.pl = fadd <2 x float> %i.pj, %i.on           ; 2 uses
  %i.pm = shufflevector <2 x float> %i.pi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pn = extractelement <2 x float> %i.pk, i64 0
  %i.po = extractelement <2 x float> %i.pk, i64 1
  %i.pp = fsub <2 x float> %i.pk, %i.pm           ; 2 uses
  %i.pq = extractelement <2 x float> %i.pl, i64 0
  %i.pr = extractelement <2 x float> %i.pl, i64 1
  %i.ps = extractelement <2 x float> %i.pp, i64 0
  %i.pt = extractelement <2 x float> %i.pp, i64 1
  call fastcc void @nsvg__cubicBezTo(ptr noundef %0, float noundef %i.pq, float noundef %i.pr, float noundef %i.ps, float noundef %i.pt, float noundef %i.pn, float noundef %i.po)
  %i.pu = add nuw i32 %.0168209.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %.0168209.i.i, %i.mz
  br i1 %exitcond.not.i.i, label %nsvg__pathArcTo.exit.i, label %.lr.ph.peel.next.i.i, !llvm.loop !178

bb.bb:                                            ; preds = %bb.aa
  %i.pv = icmp sgt i32 %.189.i, 1
  br i1 %i.pv, label %bb.bc, label %nsvg__pathArcTo.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.pw = zext nneg i32 %.189.i to i64
  %i.px = getelementptr [4 x i8], ptr %i.a, i64 %i.pw
  %i.py = getelementptr i8, ptr %i.px, i64 -8
  %i.pz = load <2 x float>, ptr %i.py, align 4, !tbaa !31 ; 2 uses
  br label %nsvg__pathArcTo.exit.i

bb.bd:                                            ; preds = %nsvg__isCoordinate.exit.i, %nsvg__getNextPathItem.exit.thread.i
  %i.qa = and i8 %i.cj, -33
  %or.cond7.i = icmp eq i8 %i.qa, 77
  br i1 %or.cond7.i, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.qb = load i32, ptr %i.bb, align 8, !tbaa !83
  %i.qc = icmp sgt i32 %i.qb, 0
  br i1 %i.qc, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call fastcc void @nsvg__addPath(ptr noundef nonnull %0, i8 noundef signext 0)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  store i32 0, ptr %i.bb, align 8, !tbaa !83
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.qd = icmp eq i8 %.082240.i, 0
  %spec.select.i = select i1 %i.qd, i8 0, i8 %i.cj
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.294.i = phi i8 [ %i.cj, %bb.bg ], [ %spec.select.i, %bb.bh ] ; 3 uses
  %.290.i = phi i32 [ 0, %bb.bg ], [ %.088238.i, %bb.bh ]
  %i.qe = and i8 %.294.i, -33
  %or.cond10.i = icmp eq i8 %i.qe, 90
  br i1 %or.cond10.i, label %bb.bj, label %nsvg__moveTo.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.qf = load i32, ptr %i.bb, align 8, !tbaa !83
  %i.qg = icmp sgt i32 %i.qf, 0
  br i1 %i.qg, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.qh = load ptr, ptr %i.bk, align 8, !tbaa !79
  %i.qi = load <2 x float>, ptr %i.qh, align 4, !tbaa !31 ; 2 uses
  call fastcc void @nsvg__addPath(ptr noundef nonnull %0, i8 noundef signext 1)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.qj = phi <2 x float> [ %i.qi, %bb.bk ], [ %i.bm, %bb.bj ] ; 2 uses
  %i.qk = phi <2 x float> [ %i.qi, %bb.bk ], [ %i.bl, %bb.bj ] ; 3 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !83
  %i.ql = load i32, ptr %i.bj, align 4, !tbaa !84 ; 3 uses
  %.not.i.i.i = icmp sgt i32 %i.ql, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.bm

._crit_edge.i.i.i:                                ; preds = %bb.bl
  %.pre.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !79
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %.not16.i.i.i = icmp eq i32 %i.ql, 0
  %i.qm = shl nsw i32 %i.ql, 1
  %spec.select.i.i.i = select i1 %.not16.i.i.i, i32 8, i32 %i.qm ; 2 uses
  store i32 %spec.select.i.i.i, ptr %i.bj, align 4, !tbaa !84
  %i.qn = load ptr, ptr %i.bk, align 8, !tbaa !79
  %i.qo = shl nsw i32 %spec.select.i.i.i, 1
  %i.qp = sext i32 %i.qo to i64
  %i.qq = shl nsw i64 %i.qp, 2
  %i.qr = call ptr @realloc(ptr noundef %i.qn, i64 noundef %i.qq) #32 ; 3 uses
  store ptr %i.qr, ptr %i.bk, align 8, !tbaa !79
  %.not17.i.i.i = icmp eq ptr %i.qr, null
  br i1 %.not17.i.i.i, label %nsvg__moveTo.exit.i, label %._crit_edge18.i.i.i

._crit_edge18.i.i.i:                              ; preds = %bb.bm
  %.pre19.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !83
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge18.i.i.i, %._crit_edge.i.i.i
  %i.qs = phi i32 [ 0, %._crit_edge.i.i.i ], [ %.pre19.i.i.i, %._crit_edge18.i.i.i ] ; 2 uses
  %i.qt = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.qr, %._crit_edge18.i.i.i ]
  %i.qu = shl nsw i32 %i.qs, 1
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %i.qv
  store <2 x float> %i.qk, ptr %i.qw, align 4, !tbaa !31
  %i.qx = add nsw i32 %i.qs, 1
  store i32 %i.qx, ptr %i.bb, align 8, !tbaa !83
  br label %nsvg__moveTo.exit.i

nsvg__moveTo.exit.i:                              ; preds = %bb.bn, %bb.bm, %bb.bi
  %.391.i = phi i32 [ %.290.i, %bb.bi ], [ 0, %bb.bm ], [ 0, %bb.bn ]
  %i.qy = phi <2 x float> [ %i.bm, %bb.bi ], [ %i.qj, %bb.bm ], [ %i.qj, %bb.bn ]
  %i.qz = phi <2 x float> [ %i.bl, %bb.bi ], [ %i.qk, %bb.bm ], [ %i.qk, %bb.bn ]
  %i.ra = call fastcc i32 @nsvg__getArgsPerElement(i8 noundef signext %.294.i) ; 2 uses
  %i.rb = icmp eq i32 %i.ra, -1                   ; 2 uses
  %spec.select112.i = select i1 %i.rb, i8 0, i8 %.294.i
  %spec.select113.i = select i1 %i.rb, i32 0, i32 %i.ra
  br label %nsvg__pathArcTo.exit.i

nsvg__pathArcTo.exit.i:                           ; preds = %.lr.ph.peel.next.i.i, %nsvg__moveTo.exit.i, %bb.bc, %bb.bb, %bb.ba, %bb.aq, %bb.ao, %nsvg__pathQuadBezTo.exit.i, %nsvg__pathCubicBezShortTo.exit.i, %nsvg__pathCubicBezTo.exit.i, %nsvg__pathVLineTo.exit.i, %nsvg__pathHLineTo.exit.i, %nsvg__pathLineTo.exit.i, %nsvg__pathMoveTo.exit.i, %bb.z
  %.395.i = phi i8 [ %spec.select112.i, %nsvg__moveTo.exit.i ], [ %.092237.i, %bb.z ], [ %.092237.i, %bb.bc ], [ %.092237.i, %bb.bb ], [ %i.dy, %nsvg__pathMoveTo.exit.i ], [ %.092237.i, %nsvg__pathLineTo.exit.i ], [ %.092237.i, %nsvg__pathHLineTo.exit.i ], [ %.092237.i, %nsvg__pathVLineTo.exit.i ], [ %.092237.i, %nsvg__pathCubicBezTo.exit.i ], [ %.092237.i, %nsvg__pathCubicBezShortTo.exit.i ], [ %.092237.i, %nsvg__pathQuadBezTo.exit.i ], [ %.092237.i, %bb.ao ], [ %.092237.i, %bb.aq ], [ %.092237.i, %bb.ba ], [ %.092237.i, %.lr.ph.peel.next.i.i ]
  %.4.i = phi i32 [ %.391.i, %nsvg__moveTo.exit.i ], [ %.189.i, %bb.z ], [ 0, %bb.bc ], [ 0, %bb.bb ], [ 0, %nsvg__pathMoveTo.exit.i ], [ 0, %nsvg__pathLineTo.exit.i ], [ 0, %nsvg__pathHLineTo.exit.i ], [ 0, %nsvg__pathVLineTo.exit.i ], [ 0, %nsvg__pathCubicBezTo.exit.i ], [ 0, %nsvg__pathCubicBezShortTo.exit.i ], [ 0, %nsvg__pathQuadBezTo.exit.i ], [ 0, %bb.ao ], [ 0, %bb.aq ], [ 0, %bb.ba ], [ 0, %.lr.ph.peel.next.i.i ]
  %.287.i = phi i32 [ %spec.select113.i, %nsvg__moveTo.exit.i ], [ %.085239.i, %bb.z ], [ %.085239.i, %bb.bc ], [ %.085239.i, %bb.bb ], [ %i.dz, %nsvg__pathMoveTo.exit.i ], [ %.085239.i, %nsvg__pathLineTo.exit.i ], [ %.085239.i, %nsvg__pathHLineTo.exit.i ], [ %.085239.i, %nsvg__pathVLineTo.exit.i ], [ %.085239.i, %nsvg__pathCubicBezTo.exit.i ], [ %.085239.i, %nsvg__pathCubicBezShortTo.exit.i ], [ %.085239.i, %nsvg__pathQuadBezTo.exit.i ], [ %.085239.i, %bb.ao ], [ %.085239.i, %bb.aq ], [ %.085239.i, %bb.ba ], [ %.085239.i, %.lr.ph.peel.next.i.i ]
  %.284.i = phi i8 [ %.082240.i, %nsvg__moveTo.exit.i ], [ %.082240.i, %bb.z ], [ %.082240.i, %bb.bc ], [ %.082240.i, %bb.bb ], [ 1, %nsvg__pathMoveTo.exit.i ], [ %.082240.i, %nsvg__pathLineTo.exit.i ], [ %.082240.i, %nsvg__pathHLineTo.exit.i ], [ %.082240.i, %nsvg__pathVLineTo.exit.i ], [ %.082240.i, %nsvg__pathCubicBezTo.exit.i ], [ %.082240.i, %nsvg__pathCubicBezShortTo.exit.i ], [ %.082240.i, %nsvg__pathQuadBezTo.exit.i ], [ %.082240.i, %bb.ao ], [ %.082240.i, %bb.aq ], [ %.082240.i, %bb.ba ], [ %.082240.i, %.lr.ph.peel.next.i.i ]
  %8 = phi <2 x float> [ %i.qy, %nsvg__moveTo.exit.i ], [ %i.bm, %bb.z ], [ %i.pz, %bb.bc ], [ %i.bm, %bb.bb ], [ %i.cy, %nsvg__pathMoveTo.exit.i ], [ %i.ee, %nsvg__pathLineTo.exit.i ], [ %i.ek, %nsvg__pathHLineTo.exit.i ], [ %i.eo, %nsvg__pathVLineTo.exit.i ], [ %i.ez, %nsvg__pathCubicBezTo.exit.i ], [ %i.ft, %nsvg__pathCubicBezShortTo.exit.i ], [ %i.go, %nsvg__pathQuadBezTo.exit.i ], [ %i.hf, %bb.ao ], [ %i.ib, %bb.aq ], [ %i.ib, %bb.ba ], [ %i.ib, %.lr.ph.peel.next.i.i ]
  %9 = phi <2 x float> [ %i.qz, %nsvg__moveTo.exit.i ], [ %i.bl, %bb.z ], [ %i.pz, %bb.bc ], [ %i.bl, %bb.bb ], [ %i.cy, %nsvg__pathMoveTo.exit.i ], [ %i.ee, %nsvg__pathLineTo.exit.i ], [ %i.ek, %nsvg__pathHLineTo.exit.i ], [ %i.eo, %nsvg__pathVLineTo.exit.i ], [ %i.ey, %nsvg__pathCubicBezTo.exit.i ], [ %i.fs, %nsvg__pathCubicBezShortTo.exit.i ], [ %i.gn, %nsvg__pathQuadBezTo.exit.i ], [ %i.he, %bb.ao ], [ %i.ib, %bb.aq ], [ %i.ib, %bb.ba ], [ %i.ib, %.lr.ph.peel.next.i.i ]
  %i.rc = load i8, ptr %.4100206.i, align 1, !tbaa !17
  %.not105.i = icmp eq i8 %i.rc, 0
  br i1 %.not105.i, label %nsvg__getNextPathItem.exit.thread207.i, label %bb.r, !llvm.loop !179

nsvg__getNextPathItem.exit.thread207.i:           ; preds = %nsvg__pathArcTo.exit.i, %nsvg__getNextPathItem.exit.i, %nsvg__getNextPathItemWhenArcFlag.exit.thread.i, %.critedge2.i124.i
  %.pre.i = load i32, ptr %i.bb, align 8, !tbaa !83
  %i.rd = icmp eq i32 %.pre.i, 0
  br i1 %i.rd, label %nsvg__parsePath.exit, label %bb.bo

bb.bo:                                            ; preds = %nsvg__getNextPathItem.exit.thread207.i
  call fastcc void @nsvg__addPath(ptr noundef nonnull %0, i8 noundef signext 0)
  br label %nsvg__parsePath.exit

nsvg__parsePath.exit:                             ; preds = %nsvg__pushAttr.exit70, %._crit_edge.i, %bb.q, %nsvg__getNextPathItem.exit.thread207.i, %bb.bo
  call fastcc void @nsvg__addShape(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.re = load i32, ptr %i.ae, align 8, !tbaa !55 ; 2 uses
  %i.rf = icmp sgt i32 %i.re, 0
  br i1 %i.rf, label %bb.bp, label %nsvg__popAttr.exit

bb.bp:                                            ; preds = %nsvg__parsePath.exit
  %i.rg = add nsw i32 %i.re, -1
  store i32 %i.rg, ptr %i.ae, align 8, !tbaa !55
  br label %nsvg__popAttr.exit

bb.bq:                                            ; preds = %.tail.thread
  %i.rh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.18) #31
  %i.ri = icmp eq i32 %i.rh, 0
  br i1 %i.ri, label %bb.br, label %bb.ef

bb.br:                                            ; preds = %bb.bq
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 39936 ; 10 uses
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !55 ; 3 uses
  %i.rl = icmp slt i32 %i.rk, 127
  br i1 %i.rl, label %bb.bs, label %nsvg__pushAttr.exit71

bb.bs:                                            ; preds = %bb.br
  %i.rm = add nsw i32 %i.rk, 1                    ; 2 uses
  store i32 %i.rm, ptr %i.rj, align 8, !tbaa !55
  %i.rn = sext i32 %i.rm to i64
  %i.ro = getelementptr inbounds [312 x i8], ptr %0, i64 %i.rn
  %i.rp = sext i32 %i.rk to i64
  %i.rq = getelementptr inbounds [312 x i8], ptr %0, i64 %i.rp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.ro, ptr noundef nonnull align 8 dereferenceable(312) %i.rq, i64 312, i1 false)
  br label %nsvg__pushAttr.exit71

nsvg__pushAttr.exit71:                            ; preds = %bb.br, %bb.bs
  %i.rr = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not240.i = icmp eq ptr %i.rr, null
  br i1 %.not240.i, label %._crit_edge.i77, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %nsvg__pushAttr.exit71
  %i.rs = getelementptr i8, ptr %0, i64 40000
  %i.rt = getelementptr i8, ptr %0, i64 40008     ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 40028 ; 30 uses
  %i.rv = getelementptr i8, ptr %0, i64 40004
  %i.rw = getelementptr i8, ptr %0, i64 40012     ; 3 uses
  br label %bb.bt

bb.bt:                                            ; preds = %.tail235.thread.i, %.lr.ph.i72
  %indvars.iv.i73 = phi i64 [ 0, %.lr.ph.i72 ], [ %indvars.iv.next.i75, %.tail235.thread.i ] ; 2 uses
  %i.rx = phi ptr [ %i.rr, %.lr.ph.i72 ], [ %i.zz, %.tail235.thread.i ]
  %.0166246.i = phi float [ -1.000000e+00, %.lr.ph.i72 ], [ %.1.i74, %.tail235.thread.i ] ; 6 uses
  %.0167245.i = phi float [ -1.000000e+00, %.lr.ph.i72 ], [ %.2169.i, %.tail235.thread.i ] ; 4 uses
  %.0171244.i = phi float [ 0.000000e+00, %.lr.ph.i72 ], [ %.2173.i, %.tail235.thread.i ] ; 2 uses
  %.0174243.i = phi float [ 0.000000e+00, %.lr.ph.i72 ], [ %.2176.i, %.tail235.thread.i ] ; 2 uses
  %.0177242.i = phi float [ 0.000000e+00, %.lr.ph.i72 ], [ %.2179.i, %.tail235.thread.i ] ; 3 uses
  %.0180241.i = phi float [ 0.000000e+00, %.lr.ph.i72 ], [ %.2182.i, %.tail235.thread.i ] ; 3 uses
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i73 ; 7 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8 ; 7 uses
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !21
  %i.sb = tail call fastcc i32 @nsvg__parseAttr(ptr noundef %0, ptr noundef %i.rx, ptr noundef %i.sa)
  %.not186.i = icmp eq i32 %i.sb, 0
  br i1 %.not186.i, label %sub_0.i91, label %.tail235.thread.i

sub_0.i91:                                        ; preds = %bb.bt
  %i.sc = load ptr, ptr %i.ry, align 8, !tbaa !21 ; 2 uses
  %i.sd = load i8, ptr %i.sc, align 1
  %.not253.i = icmp eq i8 %i.sd, 120
  br i1 %.not253.i, label %.tail.i93, label %nsvg__parseCoordinate.exit.i

.tail.i93:                                        ; preds = %sub_0.i91
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 1
  %i.sf = load i8, ptr %i.se, align 1
  %i.sg = icmp eq i8 %i.sf, 0
  br i1 %i.sg, label %bb.bu, label %nsvg__parseCoordinate.exit.i

bb.bu:                                            ; preds = %.tail.i93
  %i.sh = load ptr, ptr %i.rz, align 8, !tbaa !21
  %.val.i94 = load float, ptr %i.rs, align 8, !tbaa !51
  %.val190.i = load float, ptr %i.rt, align 8, !tbaa !49
  %i.si = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.sh) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.si to i32
  %i.sj = bitcast i32 %.sroa.0.0.extract.trunc.i.i.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i.i = lshr i64 %i.si, 32
  %.sroa.12.0.extract.trunc.i.i.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i.i to i32
  %i.sk = load i32, ptr %i.rj, align 8, !tbaa !55
  %i.sl = sext i32 %i.sk to i64
  %i.sm = getelementptr inbounds [312 x i8], ptr %0, i64 %i.sl ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i.i, label %nsvg__parseCoordinate.exit.i [
    i32 7, label %bb.cc
    i32 9, label %bb.cb
    i32 2, label %bb.bv
    i32 3, label %bb.bw
    i32 4, label %bb.bx
    i32 5, label %bb.by
    i32 6, label %bb.bz
    i32 8, label %bb.ca
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.sn = fdiv float %i.sj, 7.200000e+01
  %i.so = load float, ptr %i.ru, align 4, !tbaa !40
  %i.sp = fmul float %i.sn, %i.so
  br label %nsvg__parseCoordinate.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.sq = fdiv float %i.sj, 6.000000e+00
  %i.sr = load float, ptr %i.ru, align 4, !tbaa !40
  %i.ss = fmul float %i.sq, %i.sr
  br label %nsvg__parseCoordinate.exit.i

bb.bx:                                            ; preds = %bb.bu
  %i.st = fdiv float %i.sj, 2.540000e+01
  %i.su = load float, ptr %i.ru, align 4, !tbaa !40
  %i.sv = fmul float %i.st, %i.su
  br label %nsvg__parseCoordinate.exit.i

bb.by:                                            ; preds = %bb.bu
  %i.sw = fdiv float %i.sj, 2.540000e+00
  %i.sx = load float, ptr %i.ru, align 4, !tbaa !40
  %i.sy = fmul float %i.sw, %i.sx
  br label %nsvg__parseCoordinate.exit.i

bb.bz:                                            ; preds = %bb.bu
  %i.sz = load float, ptr %i.ru, align 4, !tbaa !40
  %i.ta = fmul float %i.sz, %i.sj
  br label %nsvg__parseCoordinate.exit.i

bb.ca:                                            ; preds = %bb.bu
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sm, i64 292
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !56
  %i.td = fmul float %i.tc, %i.sj
  br label %nsvg__parseCoordinate.exit.i

bb.cb:                                            ; preds = %bb.bu
  %i.te = getelementptr inbounds nuw i8, ptr %i.sm, i64 292
  %i.tf = load float, ptr %i.te, align 4, !tbaa !56
  %i.tg = fmul float %i.tf, %i.sj
  %i.th = fmul float %i.tg, 5.200000e-01
  br label %nsvg__parseCoordinate.exit.i

bb.cc:                                            ; preds = %bb.bu
  %i.ti = fdiv float %i.sj, 1.000000e+02
  %i.tj = tail call float @llvm.fmuladd.f32(float %i.ti, float %.val190.i, float %.val.i94)
  br label %nsvg__parseCoordinate.exit.i

nsvg__parseCoordinate.exit.i:                     ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %.tail.i93, %sub_0.i91
  %.1181.i = phi float [ %.0180241.i, %.tail.i93 ], [ %i.td, %bb.ca ], [ %i.tj, %bb.cc ], [ %i.th, %bb.cb ], [ %i.sp, %bb.bv ], [ %i.ss, %bb.bw ], [ %i.sv, %bb.bx ], [ %i.sy, %bb.by ], [ %i.ta, %bb.bz ], [ %i.sj, %bb.bu ], [ %.0180241.i, %sub_0.i91 ] ; 6 uses
  %i.tk = load ptr, ptr %i.ry, align 8, !tbaa !21 ; 2 uses
  %i.tl = load i8, ptr %i.tk, align 1
  %.not254.i = icmp eq i8 %i.tl, 121
  br i1 %.not254.i, label %nsvg__parseCoordinate.exit.tail.i, label %nsvg__parseCoordinate.exit198.i

nsvg__parseCoordinate.exit.tail.i:                ; preds = %nsvg__parseCoordinate.exit.i
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 1
  %i.tn = load i8, ptr %i.tm, align 1
  %i.to = icmp eq i8 %i.tn, 0
  br i1 %i.to, label %bb.cd, label %nsvg__parseCoordinate.exit198.i

bb.cd:                                            ; preds = %nsvg__parseCoordinate.exit.tail.i
  %i.tp = load ptr, ptr %i.rz, align 8, !tbaa !21
  %.val187.i = load float, ptr %i.rv, align 4, !tbaa !54
  %.val193.i = load float, ptr %i.rw, align 4, !tbaa !52
  %i.tq = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.tp) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i194.i = trunc i64 %i.tq to i32
  %i.tr = bitcast i32 %.sroa.0.0.extract.trunc.i.i194.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i195.i = lshr i64 %i.tq, 32
  %.sroa.12.0.extract.trunc.i.i196.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i195.i to i32
  %i.ts = load i32, ptr %i.rj, align 8, !tbaa !55
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [312 x i8], ptr %0, i64 %i.tt ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i196.i, label %nsvg__parseCoordinate.exit198.i [
    i32 7, label %bb.cl
    i32 9, label %bb.ck
    i32 2, label %bb.ce
    i32 3, label %bb.cf
    i32 4, label %bb.cg
    i32 5, label %bb.ch
    i32 6, label %bb.ci
    i32 8, label %bb.cj
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.tv = fdiv float %i.tr, 7.200000e+01
  %i.tw = load float, ptr %i.ru, align 4, !tbaa !40
  %i.tx = fmul float %i.tv, %i.tw
  br label %nsvg__parseCoordinate.exit198.i
end_hunk_0
