Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nsvgParse:bb.a
  store ptr null, ptr %i.f, align 8, !tbaa !30
  %i.no = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39976
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !67 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.np, null
  br i1 %.not6.i.i, label %nsvg__deleteStyles.exit.i, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %nsvg__scaleToViewbox.exit, %.lr.ph.i.i18
  %.07.i.i = phi ptr [ %i.nr, %.lr.ph.i.i18 ], [ %i.np, %nsvg__scaleToViewbox.exit ] ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !69 ; 2 uses
  %i.ns = load ptr, ptr %.07.i.i, align 8, !tbaa !70
  tail call void @free(ptr noundef %i.ns) #30
  %i.nt = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !71
  tail call void @free(ptr noundef %i.nu) #30
  tail call void @free(ptr noundef nonnull %.07.i.i) #30
  %.not.i.i19 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i19, label %nsvg__deleteStyles.exit.i, label %.lr.ph.i.i18, !llvm.loop !174

nsvg__deleteStyles.exit.i:                        ; preds = %.lr.ph.i.i18, %nsvg__scaleToViewbox.exit
  %i.nv = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39960
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !72 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.nw, null
  br i1 %.not8.i.i, label %nsvg__deletePaths.exit.i, label %.lr.ph.i7.i

.lr.ph.i7.i:                                      ; preds = %nsvg__deleteStyles.exit.i, %bb.av
  %.09.i.i = phi ptr [ %i.ny, %bb.av ], [ %i.nw, %nsvg__deleteStyles.exit.i ] ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !73 ; 2 uses
  %i.nz = load ptr, ptr %.09.i.i, align 8, !tbaa !63 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.nz, null
  br i1 %.not7.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i7.i
  tail call void @free(ptr noundef nonnull %i.nz) #30
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph.i7.i
  tail call void @free(ptr noundef nonnull %.09.i.i) #30
  %.not.i8.i = icmp eq ptr %i.ny, null
  br i1 %.not.i8.i, label %nsvg__deletePaths.exit.i, label %.lr.ph.i7.i, !llvm.loop !0

nsvg__deletePaths.exit.i:                         ; preds = %bb.av, %nsvg__deleteStyles.exit.i
  %i.oa = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39984
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !74 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.ob, null
  br i1 %.not5.i.i, label %nsvg__deleteParser.exit, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %nsvg__deletePaths.exit.i, %.lr.ph.i9.i
  %.06.i.i = phi ptr [ %i.od, %.lr.ph.i9.i ], [ %i.ob, %nsvg__deletePaths.exit.i ] ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 216
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !77 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 208
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !78
  tail call void @free(ptr noundef %i.of) #30
  tail call void @free(ptr noundef nonnull %.06.i.i) #30
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
  %i.ap = phi ptr [ %i.am, %sub_0.lr.ph.i ], [ %i.az, %bb.p ] ; 3 uses
  %.096229.i = phi ptr [ null, %sub_0.lr.ph.i ], [ %.197.i, %bb.p ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 3 uses
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
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2
  %3 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.az = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %._crit_edge.i, label %sub_0.i, !llvm.loop !176

._crit_edge.i:                                    ; preds = %bb.p
  %.not104.i = icmp eq ptr %.197.i, null
  br i1 %.not104.i, label %nsvg__parsePath.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 39952 ; 11 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !83
  %i.bb = load i8, ptr %.197.i, align 1, !tbaa !17
  %.not105231.i = icmp eq i8 %i.bb, 0
  br i1 %.not105231.i, label %nsvg__parsePath.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 39956 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 39944 ; 8 uses
  br label %bb.r

bb.r:                                             ; preds = %nsvg__pathArcTo.exit.i, %.lr.ph.i
  %.082240.i = phi i8 [ 0, %.lr.ph.i ], [ %.284.i, %nsvg__pathArcTo.exit.i ] ; 15 uses
  %.085239.i = phi i32 [ 0, %.lr.ph.i ], [ %.287.i, %nsvg__pathArcTo.exit.i ] ; 14 uses
  %.088238.i = phi i32 [ 0, %.lr.ph.i ], [ %.4.i, %nsvg__pathArcTo.exit.i ] ; 6 uses
  %.092237.i = phi i8 [ 0, %.lr.ph.i ], [ %.395.i, %nsvg__pathArcTo.exit.i ] ; 24 uses
  %.298236.i = phi ptr [ %.197.i, %.lr.ph.i ], [ %.4100206.i, %nsvg__pathArcTo.exit.i ] ; 5 uses
  %i.bk = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.rh, %nsvg__pathArcTo.exit.i ] ; 27 uses
  %i.bl = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.rg, %nsvg__pathArcTo.exit.i ] ; 6 uses
  %.not212.i = icmp eq i8 %.092237.i, 97
  switch i8 %.092237.i, label %nsvg__getNextPathItemWhenArcFlag.exit.thread.i [
    i8 97, label %bb.s
    i8 65, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.bm = add i32 %.088238.i, -3
  %or.cond4.i = icmp ult i32 %i.bm, 2
  br i1 %or.cond4.i, label %bb.t, label %nsvg__getNextPathItemWhenArcFlag.exit.thread.i

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.c, align 16, !tbaa !17
  %i.bn = load i8, ptr %.298236.i, align 1, !tbaa !17 ; 2 uses
  %.not26.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not26.i.i, label %nsvg__getNextPathItemWhenArcFlag.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.critedge2.i.i
  %i.bo = phi i8 [ %i.bu, %.critedge2.i.i ], [ %i.bn, %bb.t ] ; 5 uses
  %.01727.i.i = phi ptr [ %i.bt, %.critedge2.i.i ], [ %.298236.i, %bb.t ] ; 3 uses
  %i.bp = zext nneg i8 %i.bo to i64
  %memchr.bounds.i.i.i = icmp ult i8 %i.bo, 64
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = and i64 %i.bq, 4294983169
  %memchr.bits.i.i.i = icmp ne i64 %i.br, 0
  %memchr1.i.i.i = select i1 %memchr.bounds.i.i.i, i1 %memchr.bits.i.i.i, i1 false
  %i.bs = icmp eq i8 %i.bo, 44
  %or.cond.i.i = or i1 %i.bs, %memchr1.i.i.i
  br i1 %or.cond.i.i, label %.critedge2.i.i, label %.critedge.i.i

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.01727.i.i, i64 1 ; 3 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !17  ; 2 uses
  %.not.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i, label %nsvg__getNextPathItemWhenArcFlag.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !177

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bv = and i8 %i.bo, -2
  %switch.i.i = icmp eq i8 %i.bv, 48
  br i1 %switch.i.i, label %nsvg__getNextPathItem.exit.thread.sink.split.i, label %nsvg__getNextPathItemWhenArcFlag.exit.thread.i

nsvg__getNextPathItemWhenArcFlag.exit.thread.i:   ; preds = %.critedge2.i.i, %.critedge.i.i, %bb.t, %bb.s, %bb.r
  %.399198.i = phi ptr [ %.298236.i, %bb.r ], [ %.298236.i, %bb.t ], [ %.298236.i, %bb.s ], [ %.01727.i.i, %.critedge.i.i ], [ %i.bt, %.critedge2.i.i ] ; 2 uses
  store i8 0, ptr %i.c, align 16, !tbaa !17
  %i.bw = load i8, ptr %.399198.i, align 1, !tbaa !17 ; 2 uses
  %.not29.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not29.i.i, label %nsvg__getNextPathItem.exit.thread207.i, label %.lr.ph.i117.i

.lr.ph.i117.i:                                    ; preds = %nsvg__getNextPathItemWhenArcFlag.exit.thread.i, %.critedge2.i124.i
  %i.bx = phi i8 [ %i.cd, %.critedge2.i124.i ], [ %i.bw, %nsvg__getNextPathItemWhenArcFlag.exit.thread.i ] ; 6 uses
  %.02130.i.i = phi ptr [ %i.cc, %.critedge2.i124.i ], [ %.399198.i, %nsvg__getNextPathItemWhenArcFlag.exit.thread.i ] ; 3 uses
  %i.by = zext nneg i8 %i.bx to i64
  %memchr.bounds.i.i118.i = icmp ult i8 %i.bx, 64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = and i64 %i.bz, 4294983169
  %memchr.bits.i.i119.i = icmp ne i64 %i.ca, 0
  %memchr1.i.i120.i = select i1 %memchr.bounds.i.i118.i, i1 %memchr.bits.i.i119.i, i1 false
  %i.cb = icmp eq i8 %i.bx, 44
  %or.cond.i121.i = or i1 %i.cb, %memchr1.i.i120.i
  br i1 %or.cond.i121.i, label %.critedge2.i124.i, label %.critedge.i122.i

.critedge2.i124.i:                                ; preds = %.lr.ph.i117.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.02130.i.i, i64 1 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !17  ; 2 uses
  %.not.i125.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i125.i, label %nsvg__getNextPathItem.exit.thread207.i, label %.lr.ph.i117.i, !llvm.loop !1

.critedge.i122.i:                                 ; preds = %.lr.ph.i117.i
  switch i8 %i.bx, label %bb.u [
    i8 46, label %nsvg__getNextPathItem.exit.i
    i8 45, label %nsvg__getNextPathItem.exit.i
    i8 43, label %nsvg__getNextPathItem.exit.i
  ]

bb.u:                                             ; preds = %.critedge.i122.i
  %i.ce = add i8 %i.bx, -58
  %i.cf = icmp ult i8 %i.ce, -10
  br i1 %i.cf, label %nsvg__getNextPathItem.exit.thread.sink.split.i, label %nsvg__getNextPathItem.exit.i

nsvg__getNextPathItem.exit.i:                     ; preds = %bb.u, %.critedge.i122.i, %.critedge.i122.i, %.critedge.i122.i
  %i.cg = call fastcc ptr @nsvg__parseNumber(ptr noundef nonnull %.02130.i.i, ptr noundef nonnull %i.c)
  %.pr202.pre.i = load i8, ptr %i.c, align 16, !tbaa !17 ; 2 uses
  %.not107.i = icmp eq i8 %.pr202.pre.i, 0
  br i1 %.not107.i, label %nsvg__getNextPathItem.exit.thread207.i, label %nsvg__getNextPathItem.exit.thread.i

nsvg__getNextPathItem.exit.thread.sink.split.i:   ; preds = %bb.u, %.critedge.i.i
  %.01727.i.lcssa.sink.i = phi ptr [ %.01727.i.i, %.critedge.i.i ], [ %.02130.i.i, %bb.u ]
  %.lcssa.sink.i = phi i8 [ %i.bo, %.critedge.i.i ], [ %i.bx, %bb.u ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.01727.i.lcssa.sink.i, i64 1
  store i8 %.lcssa.sink.i, ptr %i.c, align 16, !tbaa !17
  store i8 0, ptr %i.bc, align 1, !tbaa !17
  br label %nsvg__getNextPathItem.exit.thread.i

nsvg__getNextPathItem.exit.thread.i:              ; preds = %nsvg__getNextPathItem.exit.thread.sink.split.i, %nsvg__getNextPathItem.exit.i
  %.4100206.i = phi ptr [ %i.cg, %nsvg__getNextPathItem.exit.i ], [ %i.ch, %nsvg__getNextPathItem.exit.thread.sink.split.i ] ; 2 uses
  %i.ci = phi i8 [ %.pr202.pre.i, %nsvg__getNextPathItem.exit.i ], [ %.lcssa.sink.i, %nsvg__getNextPathItem.exit.thread.sink.split.i ] ; 5 uses
  %.not109.i = icmp eq i8 %.092237.i, 0
  br i1 %.not109.i, label %bb.bd, label %bb.v

bb.v:                                             ; preds = %nsvg__getNextPathItem.exit.thread.i
  switch i8 %i.ci, label %nsvg__isCoordinate.exit.i [
    i8 45, label %bb.w
    i8 43, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %.pre.i.i = load i8, ptr %i.bc, align 1, !tbaa !17
  br label %nsvg__isCoordinate.exit.i

nsvg__isCoordinate.exit.i:                        ; preds = %bb.w, %bb.v
  %i.cj = phi i8 [ %.pre.i.i, %bb.w ], [ %i.ci, %bb.v ] ; 2 uses
  %i.ck = add i8 %i.cj, -58
  %i.cl = icmp ult i8 %i.ck, -10
  %i.cm = icmp ne i8 %i.cj, 46
  %narrow.i.not.i = and i1 %i.cm, %i.cl
  br i1 %narrow.i.not.i, label %bb.bd, label %bb.x

bb.x:                                             ; preds = %nsvg__isCoordinate.exit.i
  %i.cn = icmp slt i32 %.088238.i, 10
  br i1 %i.cn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.co = call fastcc double @nsvg__atof(ptr noundef nonnull %i.c)
  %i.cp = fptrunc double %i.co to float
  %i.cq = add nsw i32 %.088238.i, 1
  %i.cr = sext i32 %.088238.i to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cr
  store float %i.cp, ptr %i.cs, align 4, !tbaa !31
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.189.i = phi i32 [ %i.cq, %bb.y ], [ %.088238.i, %bb.x ] ; 4 uses
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
  %i.ct = load <2 x float>, ptr %i.a, align 16    ; 2 uses
  %i.cu = fadd <2 x float> %i.bk, %i.ct
  %i.cv = insertelement <2 x i1> poison, i1 %.not220.i, i64 0
  %i.cw = shufflevector <2 x i1> %i.cv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cx = select <2 x i1> %i.cw, <2 x float> %i.cu, <2 x float> %i.ct ; 5 uses
  %i.cy = load i32, ptr %i.ba, align 8, !tbaa !83 ; 4 uses
  %i.cz = icmp sgt i32 %i.cy, 0
end_hunk_0
begin_hunk_1_@nsvg__startElement:bb.a
  %i.pj = shufflevector <2 x float> %i.pi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pk = fmul <2 x float> %i.nx, %i.pj
  %i.pl = shufflevector <2 x float> %i.pi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pl, <2 x float> %i.oc, <2 x float> %i.pk) ; 2 uses
  %i.pn = shufflevector <2 x float> %i.oq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.po = fadd <2 x float> %i.ky, %i.pd           ; 4 uses
  %i.pp = fadd <2 x float> %i.pn, %i.or           ; 2 uses
  %i.pq = shufflevector <2 x float> %i.pm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pr = extractelement <2 x float> %i.po, i64 0
  %i.ps = extractelement <2 x float> %i.po, i64 1
  %i.pt = fsub <2 x float> %i.po, %i.pq           ; 2 uses
  %i.pu = extractelement <2 x float> %i.pp, i64 0
  %i.pv = extractelement <2 x float> %i.pp, i64 1
  %i.pw = extractelement <2 x float> %i.pt, i64 0
  %i.px = extractelement <2 x float> %i.pt, i64 1
  call fastcc void @nsvg__cubicBezTo(ptr noundef %0, float noundef %i.pu, float noundef %i.pv, float noundef %i.pw, float noundef %i.px, float noundef %i.pr, float noundef %i.ps)
  %i.py = add nuw i32 %.0168208.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %.0168208.i.i, %i.my
  br i1 %exitcond.not.i.i, label %nsvg__pathArcTo.exit.i, label %.peel.next.i.i, !llvm.loop !178

bb.bb:                                            ; preds = %bb.aa
  %i.pz = icmp sgt i32 %.189.i, 1
  br i1 %i.pz, label %bb.bc, label %nsvg__pathArcTo.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.qa = zext nneg i32 %.189.i to i64
  %i.qb = getelementptr [4 x i8], ptr %i.a, i64 %i.qa
  %i.qc = getelementptr i8, ptr %i.qb, i64 -8
  %i.qd = load <2 x float>, ptr %i.qc, align 4, !tbaa !31 ; 2 uses
  br label %nsvg__pathArcTo.exit.i

bb.bd:                                            ; preds = %nsvg__isCoordinate.exit.i, %nsvg__getNextPathItem.exit.thread.i
  %i.qe = and i8 %i.ci, -33
  %or.cond7.i = icmp eq i8 %i.qe, 77
  br i1 %or.cond7.i, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.qf = load i32, ptr %i.ba, align 8, !tbaa !83
  %i.qg = icmp sgt i32 %i.qf, 0
  br i1 %i.qg, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call fastcc void @nsvg__addPath(ptr noundef nonnull %0, i8 noundef signext 0)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  store i32 0, ptr %i.ba, align 8, !tbaa !83
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.qh = icmp eq i8 %.082240.i, 0
  %spec.select.i = select i1 %i.qh, i8 0, i8 %i.ci
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.294.i = phi i8 [ %i.ci, %bb.bg ], [ %spec.select.i, %bb.bh ] ; 3 uses
  %.290.i = phi i32 [ 0, %bb.bg ], [ %.088238.i, %bb.bh ]
  %i.qi = and i8 %.294.i, -33
  %or.cond10.i = icmp eq i8 %i.qi, 90
  br i1 %or.cond10.i, label %bb.bj, label %nsvg__moveTo.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.qj = load i32, ptr %i.ba, align 8, !tbaa !83
  %i.qk = icmp sgt i32 %i.qj, 0
  br i1 %i.qk, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ql = load ptr, ptr %i.bj, align 8, !tbaa !79
  %i.qm = load <2 x float>, ptr %i.ql, align 4, !tbaa !31 ; 2 uses
  call fastcc void @nsvg__addPath(ptr noundef nonnull %0, i8 noundef signext 1)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.qn = phi <2 x float> [ %i.qm, %bb.bk ], [ %i.bl, %bb.bj ] ; 2 uses
  %i.qo = phi <2 x float> [ %i.qm, %bb.bk ], [ %i.bk, %bb.bj ] ; 3 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !83
  %i.qp = load i32, ptr %i.bi, align 4, !tbaa !84 ; 3 uses
  %.not.i.i.i = icmp sgt i32 %i.qp, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.bm

._crit_edge.i.i.i:                                ; preds = %bb.bl
  %.pre.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !79
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %.not16.i.i.i = icmp eq i32 %i.qp, 0
  %i.qq = shl nsw i32 %i.qp, 1
  %spec.select.i.i.i = select i1 %.not16.i.i.i, i32 8, i32 %i.qq ; 2 uses
  store i32 %spec.select.i.i.i, ptr %i.bi, align 4, !tbaa !84
  %i.qr = load ptr, ptr %i.bj, align 8, !tbaa !79
  %i.qs = shl nsw i32 %spec.select.i.i.i, 1
  %i.qt = sext i32 %i.qs to i64
  %i.qu = shl nsw i64 %i.qt, 2
  %i.qv = call ptr @realloc(ptr noundef %i.qr, i64 noundef %i.qu) #32 ; 3 uses
  store ptr %i.qv, ptr %i.bj, align 8, !tbaa !79
  %.not17.i.i.i = icmp eq ptr %i.qv, null
  br i1 %.not17.i.i.i, label %nsvg__moveTo.exit.i, label %._crit_edge18.i.i.i

._crit_edge18.i.i.i:                              ; preds = %bb.bm
  %.pre19.i.i.i = load i32, ptr %i.ba, align 8, !tbaa !83
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge18.i.i.i, %._crit_edge.i.i.i
  %i.qw = phi i32 [ 0, %._crit_edge.i.i.i ], [ %.pre19.i.i.i, %._crit_edge18.i.i.i ] ; 2 uses
  %i.qx = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.qv, %._crit_edge18.i.i.i ]
  %i.qy = shl nsw i32 %i.qw, 1
  %i.qz = sext i32 %i.qy to i64
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.qx, i64 %i.qz
  store <2 x float> %i.qo, ptr %i.ra, align 4, !tbaa !31
  %i.rb = add nsw i32 %i.qw, 1
  store i32 %i.rb, ptr %i.ba, align 8, !tbaa !83
  br label %nsvg__moveTo.exit.i

nsvg__moveTo.exit.i:                              ; preds = %bb.bn, %bb.bm, %bb.bi
  %.391.i = phi i32 [ %.290.i, %bb.bi ], [ 0, %bb.bm ], [ 0, %bb.bn ]
  %i.rc = phi <2 x float> [ %i.bl, %bb.bi ], [ %i.qn, %bb.bm ], [ %i.qn, %bb.bn ]
  %i.rd = phi <2 x float> [ %i.bk, %bb.bi ], [ %i.qo, %bb.bm ], [ %i.qo, %bb.bn ]
  %i.re = call fastcc i32 @nsvg__getArgsPerElement(i8 noundef signext %.294.i) ; 2 uses
  %i.rf = icmp eq i32 %i.re, -1                   ; 2 uses
  %spec.select112.i = select i1 %i.rf, i8 0, i8 %.294.i
  %spec.select113.i = select i1 %i.rf, i32 0, i32 %i.re
  br label %nsvg__pathArcTo.exit.i

nsvg__pathArcTo.exit.i:                           ; preds = %.peel.next.i.i, %nsvg__moveTo.exit.i, %bb.bc, %bb.bb, %bb.ba, %bb.aq, %bb.ao, %nsvg__pathQuadBezTo.exit.i, %nsvg__pathCubicBezShortTo.exit.i, %nsvg__pathCubicBezTo.exit.i, %nsvg__pathVLineTo.exit.i, %nsvg__pathHLineTo.exit.i, %nsvg__pathLineTo.exit.i, %nsvg__pathMoveTo.exit.i, %bb.z
  %.395.i = phi i8 [ %spec.select112.i, %nsvg__moveTo.exit.i ], [ %.092237.i, %bb.z ], [ %.092237.i, %bb.bc ], [ %.092237.i, %bb.bb ], [ %i.dx, %nsvg__pathMoveTo.exit.i ], [ %.092237.i, %nsvg__pathLineTo.exit.i ], [ %.092237.i, %nsvg__pathHLineTo.exit.i ], [ %.092237.i, %nsvg__pathVLineTo.exit.i ], [ %.092237.i, %nsvg__pathCubicBezTo.exit.i ], [ %.092237.i, %nsvg__pathCubicBezShortTo.exit.i ], [ %.092237.i, %nsvg__pathQuadBezTo.exit.i ], [ %.092237.i, %bb.ao ], [ %.092237.i, %bb.aq ], [ %.092237.i, %bb.ba ], [ %.092237.i, %.peel.next.i.i ]
  %.4.i = phi i32 [ %.391.i, %nsvg__moveTo.exit.i ], [ %.189.i, %bb.z ], [ 0, %bb.bc ], [ 0, %bb.bb ], [ 0, %nsvg__pathMoveTo.exit.i ], [ 0, %nsvg__pathLineTo.exit.i ], [ 0, %nsvg__pathHLineTo.exit.i ], [ 0, %nsvg__pathVLineTo.exit.i ], [ 0, %nsvg__pathCubicBezTo.exit.i ], [ 0, %nsvg__pathCubicBezShortTo.exit.i ], [ 0, %nsvg__pathQuadBezTo.exit.i ], [ 0, %bb.ao ], [ 0, %bb.aq ], [ 0, %bb.ba ], [ 0, %.peel.next.i.i ]
  %.287.i = phi i32 [ %spec.select113.i, %nsvg__moveTo.exit.i ], [ %.085239.i, %bb.z ], [ %.085239.i, %bb.bc ], [ %.085239.i, %bb.bb ], [ %i.dy, %nsvg__pathMoveTo.exit.i ], [ %.085239.i, %nsvg__pathLineTo.exit.i ], [ %.085239.i, %nsvg__pathHLineTo.exit.i ], [ %.085239.i, %nsvg__pathVLineTo.exit.i ], [ %.085239.i, %nsvg__pathCubicBezTo.exit.i ], [ %.085239.i, %nsvg__pathCubicBezShortTo.exit.i ], [ %.085239.i, %nsvg__pathQuadBezTo.exit.i ], [ %.085239.i, %bb.ao ], [ %.085239.i, %bb.aq ], [ %.085239.i, %bb.ba ], [ %.085239.i, %.peel.next.i.i ]
  %.284.i = phi i8 [ %.082240.i, %nsvg__moveTo.exit.i ], [ %.082240.i, %bb.z ], [ %.082240.i, %bb.bc ], [ %.082240.i, %bb.bb ], [ 1, %nsvg__pathMoveTo.exit.i ], [ %.082240.i, %nsvg__pathLineTo.exit.i ], [ %.082240.i, %nsvg__pathHLineTo.exit.i ], [ %.082240.i, %nsvg__pathVLineTo.exit.i ], [ %.082240.i, %nsvg__pathCubicBezTo.exit.i ], [ %.082240.i, %nsvg__pathCubicBezShortTo.exit.i ], [ %.082240.i, %nsvg__pathQuadBezTo.exit.i ], [ %.082240.i, %bb.ao ], [ %.082240.i, %bb.aq ], [ %.082240.i, %bb.ba ], [ %.082240.i, %.peel.next.i.i ]
  %i.rg = phi <2 x float> [ %i.rc, %nsvg__moveTo.exit.i ], [ %i.bl, %bb.z ], [ %i.qd, %bb.bc ], [ %i.bl, %bb.bb ], [ %i.cx, %nsvg__pathMoveTo.exit.i ], [ %i.ed, %nsvg__pathLineTo.exit.i ], [ %i.ej, %nsvg__pathHLineTo.exit.i ], [ %i.en, %nsvg__pathVLineTo.exit.i ], [ %i.ey, %nsvg__pathCubicBezTo.exit.i ], [ %i.fs, %nsvg__pathCubicBezShortTo.exit.i ], [ %i.gn, %nsvg__pathQuadBezTo.exit.i ], [ %i.he, %bb.ao ], [ %i.ia, %bb.aq ], [ %i.ia, %bb.ba ], [ %i.ia, %.peel.next.i.i ]
  %i.rh = phi <2 x float> [ %i.rd, %nsvg__moveTo.exit.i ], [ %i.bk, %bb.z ], [ %i.qd, %bb.bc ], [ %i.bk, %bb.bb ], [ %i.cx, %nsvg__pathMoveTo.exit.i ], [ %i.ed, %nsvg__pathLineTo.exit.i ], [ %i.ej, %nsvg__pathHLineTo.exit.i ], [ %i.en, %nsvg__pathVLineTo.exit.i ], [ %i.ex, %nsvg__pathCubicBezTo.exit.i ], [ %i.fr, %nsvg__pathCubicBezShortTo.exit.i ], [ %i.gm, %nsvg__pathQuadBezTo.exit.i ], [ %i.hd, %bb.ao ], [ %i.ia, %bb.aq ], [ %i.ia, %bb.ba ], [ %i.ia, %.peel.next.i.i ]
  %i.ri = load i8, ptr %.4100206.i, align 1, !tbaa !17
  %.not105.i = icmp eq i8 %i.ri, 0
  br i1 %.not105.i, label %nsvg__getNextPathItem.exit.thread207.i, label %bb.r, !llvm.loop !179

nsvg__getNextPathItem.exit.thread207.i:           ; preds = %nsvg__pathArcTo.exit.i, %nsvg__getNextPathItem.exit.i, %nsvg__getNextPathItemWhenArcFlag.exit.thread.i, %.critedge2.i124.i
  %.pre.i = load i32, ptr %i.ba, align 8, !tbaa !83
  %i.rj = icmp eq i32 %.pre.i, 0
  br i1 %i.rj, label %nsvg__parsePath.exit, label %bb.bo

bb.bo:                                            ; preds = %nsvg__getNextPathItem.exit.thread207.i
  call fastcc void @nsvg__addPath(ptr noundef nonnull %0, i8 noundef signext 0)
  br label %nsvg__parsePath.exit

nsvg__parsePath.exit:                             ; preds = %nsvg__pushAttr.exit70, %._crit_edge.i, %bb.q, %nsvg__getNextPathItem.exit.thread207.i, %bb.bo
  call fastcc void @nsvg__addShape(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.rk = load i32, ptr %i.ae, align 8, !tbaa !55 ; 2 uses
  %i.rl = icmp sgt i32 %i.rk, 0
  br i1 %i.rl, label %bb.bp, label %nsvg__popAttr.exit

bb.bp:                                            ; preds = %nsvg__parsePath.exit
  %i.rm = add nsw i32 %i.rk, -1
  store i32 %i.rm, ptr %i.ae, align 8, !tbaa !55
  br label %nsvg__popAttr.exit

bb.bq:                                            ; preds = %.tail.thread
  %i.rn = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.18) #31
  %i.ro = icmp eq i32 %i.rn, 0
  br i1 %i.ro, label %bb.br, label %bb.ef

bb.br:                                            ; preds = %bb.bq
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 39936 ; 10 uses
  %i.rq = load i32, ptr %i.rp, align 8, !tbaa !55 ; 3 uses
  %i.rr = icmp slt i32 %i.rq, 127
  br i1 %i.rr, label %bb.bs, label %nsvg__pushAttr.exit71

bb.bs:                                            ; preds = %bb.br
  %i.rs = add nsw i32 %i.rq, 1                    ; 2 uses
  store i32 %i.rs, ptr %i.rp, align 8, !tbaa !55
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds [312 x i8], ptr %0, i64 %i.rt
  %i.rv = sext i32 %i.rq to i64
  %i.rw = getelementptr inbounds [312 x i8], ptr %0, i64 %i.rv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.ru, ptr noundef nonnull align 8 dereferenceable(312) %i.rw, i64 312, i1 false)
  br label %nsvg__pushAttr.exit71

nsvg__pushAttr.exit71:                            ; preds = %bb.br, %bb.bs
  %i.rx = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not240.i = icmp eq ptr %i.rx, null
  br i1 %.not240.i, label %._crit_edge.i77, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %nsvg__pushAttr.exit71
  %i.ry = getelementptr i8, ptr %0, i64 40000
  %i.rz = getelementptr i8, ptr %0, i64 40008     ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 40028 ; 30 uses
  %i.sb = getelementptr i8, ptr %0, i64 40004
  %i.sc = getelementptr i8, ptr %0, i64 40012     ; 3 uses
  br label %bb.bt

bb.bt:                                            ; preds = %.tail235.thread.i, %.lr.ph.i72
  %indvars.iv.i73 = phi i64 [ 0, %.lr.ph.i72 ], [ %indvars.iv.next.i75, %.tail235.thread.i ] ; 2 uses
  %i.sd = phi ptr [ %i.rx, %.lr.ph.i72 ], [ %i.aae, %.tail235.thread.i ]
  %.0166246.i = phi float [ -1.000000e+00, %.lr.ph.i72 ], [ %.1.i74, %.tail235.thread.i ] ; 6 uses
  %.0167245.i = phi float [ -1.000000e+00, %.lr.ph.i72 ], [ %.2169.i, %.tail235.thread.i ] ; 4 uses
  %.0171244.i = phi float [ 0.000000e+00, %.lr.ph.i72 ], [ %.2173.i, %.tail235.thread.i ] ; 2 uses
  %.0174243.i = phi float [ 0.000000e+00, %.lr.ph.i72 ], [ %.2176.i, %.tail235.thread.i ] ; 2 uses
  %.0177242.i = phi float [ 0.000000e+00, %.lr.ph.i72 ], [ %.2179.i, %.tail235.thread.i ] ; 3 uses
  %.0180241.i = phi float [ 0.000000e+00, %.lr.ph.i72 ], [ %.2182.i, %.tail235.thread.i ] ; 3 uses
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i73 ; 8 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 8 ; 7 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !21
  %i.sh = tail call fastcc i32 @nsvg__parseAttr(ptr noundef %0, ptr noundef %i.sd, ptr noundef %i.sg)
  %.not186.i = icmp eq i32 %i.sh, 0
  br i1 %.not186.i, label %sub_0.i91, label %.tail235.thread.i

sub_0.i91:                                        ; preds = %bb.bt
  %i.si = load ptr, ptr %i.se, align 8, !tbaa !21 ; 2 uses
  %i.sj = load i8, ptr %i.si, align 1
  %.not253.i = icmp eq i8 %i.sj, 120
  br i1 %.not253.i, label %.tail.i93, label %nsvg__parseCoordinate.exit.i

.tail.i93:                                        ; preds = %sub_0.i91
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 1
  %i.sl = load i8, ptr %i.sk, align 1
  %i.sm = icmp eq i8 %i.sl, 0
  br i1 %i.sm, label %bb.bu, label %nsvg__parseCoordinate.exit.i

bb.bu:                                            ; preds = %.tail.i93
  %i.sn = load ptr, ptr %i.sf, align 8, !tbaa !21
  %.val.i94 = load float, ptr %i.ry, align 8, !tbaa !51
  %.val190.i = load float, ptr %i.rz, align 8, !tbaa !49
  %i.so = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.sn) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.so to i32
  %i.sp = bitcast i32 %.sroa.0.0.extract.trunc.i.i.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i.i = lshr i64 %i.so, 32
  %.sroa.12.0.extract.trunc.i.i.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i.i to i32
  %i.sq = load i32, ptr %i.rp, align 8, !tbaa !55
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr inbounds [312 x i8], ptr %0, i64 %i.sr ; 2 uses
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
  %i.st = fdiv float %i.sp, 7.200000e+01
  %i.su = load float, ptr %i.sa, align 4, !tbaa !40
  %i.sv = fmul float %i.st, %i.su
  br label %nsvg__parseCoordinate.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.sw = fdiv float %i.sp, 6.000000e+00
  %i.sx = load float, ptr %i.sa, align 4, !tbaa !40
  %i.sy = fmul float %i.sw, %i.sx
  br label %nsvg__parseCoordinate.exit.i

bb.bx:                                            ; preds = %bb.bu
  %i.sz = fdiv float %i.sp, 2.540000e+01
  %i.ta = load float, ptr %i.sa, align 4, !tbaa !40
  %i.tb = fmul float %i.sz, %i.ta
  br label %nsvg__parseCoordinate.exit.i

bb.by:                                            ; preds = %bb.bu
  %i.tc = fdiv float %i.sp, 2.540000e+00
  %i.td = load float, ptr %i.sa, align 4, !tbaa !40
  %i.te = fmul float %i.tc, %i.td
  br label %nsvg__parseCoordinate.exit.i

bb.bz:                                            ; preds = %bb.bu
  %i.tf = load float, ptr %i.sa, align 4, !tbaa !40
  %i.tg = fmul float %i.tf, %i.sp
  br label %nsvg__parseCoordinate.exit.i

bb.ca:                                            ; preds = %bb.bu
  %i.th = getelementptr inbounds nuw i8, ptr %i.ss, i64 292
  %i.ti = load float, ptr %i.th, align 4, !tbaa !56
  %i.tj = fmul float %i.ti, %i.sp
  br label %nsvg__parseCoordinate.exit.i

bb.cb:                                            ; preds = %bb.bu
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ss, i64 292
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !56
  %i.tm = fmul float %i.tl, %i.sp
  %i.tn = fmul float %i.tm, 5.200000e-01
  br label %nsvg__parseCoordinate.exit.i

bb.cc:                                            ; preds = %bb.bu
  %i.to = fdiv float %i.sp, 1.000000e+02
  %i.tp = tail call float @llvm.fmuladd.f32(float %i.to, float %.val190.i, float %.val.i94)
  br label %nsvg__parseCoordinate.exit.i

nsvg__parseCoordinate.exit.i:                     ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %.tail.i93, %sub_0.i91
  %.1181.i = phi float [ %.0180241.i, %.tail.i93 ], [ %i.tj, %bb.ca ], [ %i.tp, %bb.cc ], [ %i.tn, %bb.cb ], [ %i.sv, %bb.bv ], [ %i.sy, %bb.bw ], [ %i.tb, %bb.bx ], [ %i.te, %bb.by ], [ %i.tg, %bb.bz ], [ %i.sp, %bb.bu ], [ %.0180241.i, %sub_0.i91 ] ; 6 uses
  %i.tq = load ptr, ptr %i.se, align 8, !tbaa !21 ; 2 uses
  %i.tr = load i8, ptr %i.tq, align 1
  %.not254.i = icmp eq i8 %i.tr, 121
  br i1 %.not254.i, label %nsvg__parseCoordinate.exit.tail.i, label %nsvg__parseCoordinate.exit198.i

nsvg__parseCoordinate.exit.tail.i:                ; preds = %nsvg__parseCoordinate.exit.i
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 1
  %i.tt = load i8, ptr %i.ts, align 1
  %i.tu = icmp eq i8 %i.tt, 0
  br i1 %i.tu, label %bb.cd, label %nsvg__parseCoordinate.exit198.i

bb.cd:                                            ; preds = %nsvg__parseCoordinate.exit.tail.i
  %i.tv = load ptr, ptr %i.sf, align 8, !tbaa !21
  %.val187.i = load float, ptr %i.sb, align 4, !tbaa !54
  %.val193.i = load float, ptr %i.sc, align 4, !tbaa !52
  %i.tw = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.tv) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i194.i = trunc i64 %i.tw to i32
  %i.tx = bitcast i32 %.sroa.0.0.extract.trunc.i.i194.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i195.i = lshr i64 %i.tw, 32
  %.sroa.12.0.extract.trunc.i.i196.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i195.i to i32
  %i.ty = load i32, ptr %i.rp, align 8, !tbaa !55
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr inbounds [312 x i8], ptr %0, i64 %i.tz ; 2 uses
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
  %i.ub = fdiv float %i.tx, 7.200000e+01
  %i.uc = load float, ptr %i.sa, align 4, !tbaa !40
  %i.ud = fmul float %i.ub, %i.uc
  br label %nsvg__parseCoordinate.exit198.i

bb.cf:                                            ; preds = %bb.cd
  %i.ue = fdiv float %i.tx, 6.000000e+00
  %i.uf = load float, ptr %i.sa, align 4, !tbaa !40
  %i.ug = fmul float %i.ue, %i.uf
  br label %nsvg__parseCoordinate.exit198.i

bb.cg:                                            ; preds = %bb.cd
  %i.uh = fdiv float %i.tx, 2.540000e+01
  %i.ui = load float, ptr %i.sa, align 4, !tbaa !40
  %i.uj = fmul float %i.uh, %i.ui
  br label %nsvg__parseCoordinate.exit198.i

bb.ch:                                            ; preds = %bb.cd
  %i.uk = fdiv float %i.tx, 2.540000e+00
  %i.ul = load float, ptr %i.sa, align 4, !tbaa !40
  %i.um = fmul float %i.uk, %i.ul
  br label %nsvg__parseCoordinate.exit198.i

bb.ci:                                            ; preds = %bb.cd
  %i.un = load float, ptr %i.sa, align 4, !tbaa !40
  %i.uo = fmul float %i.un, %i.tx
  br label %nsvg__parseCoordinate.exit198.i

bb.cj:                                            ; preds = %bb.cd
  %i.up = getelementptr inbounds nuw i8, ptr %i.ua, i64 292
  %i.uq = load float, ptr %i.up, align 4, !tbaa !56
  %i.ur = fmul float %i.uq, %i.tx
  br label %nsvg__parseCoordinate.exit198.i

bb.ck:                                            ; preds = %bb.cd
  %i.us = getelementptr inbounds nuw i8, ptr %i.ua, i64 292
  %i.ut = load float, ptr %i.us, align 4, !tbaa !56
  %i.uu = fmul float %i.ut, %i.tx
  %i.uv = fmul float %i.uu, 5.200000e-01
  br label %nsvg__parseCoordinate.exit198.i

bb.cl:                                            ; preds = %bb.cd
  %i.uw = fdiv float %i.tx, 1.000000e+02
  %i.ux = tail call float @llvm.fmuladd.f32(float %i.uw, float %.val193.i, float %.val187.i)
  br label %nsvg__parseCoordinate.exit198.i

nsvg__parseCoordinate.exit198.i:                  ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %nsvg__parseCoordinate.exit.tail.i, %nsvg__parseCoordinate.exit.i
  %.1178.i = phi float [ %.0177242.i, %nsvg__parseCoordinate.exit.tail.i ], [ %i.ur, %bb.cj ], [ %i.ux, %bb.cl ], [ %i.uv, %bb.ck ], [ %i.ud, %bb.ce ], [ %i.ug, %bb.cf ], [ %i.uj, %bb.cg ], [ %i.um, %bb.ch ], [ %i.uo, %bb.ci ], [ %i.tx, %bb.cd ], [ %.0177242.i, %nsvg__parseCoordinate.exit.i ] ; 6 uses
  %i.uy = load ptr, ptr %i.se, align 8, !tbaa !21
  %i.uz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.uy, ptr noundef nonnull dereferenceable(6) @.str.92) #31
  %i.va = icmp eq i32 %i.uz, 0
  br i1 %i.va, label %bb.cm, label %nsvg__parseCoordinate.exit203.i

bb.cm:                                            ; preds = %nsvg__parseCoordinate.exit198.i
  %i.vb = load ptr, ptr %i.sf, align 8, !tbaa !21
  %.val189.i = load float, ptr %i.rz, align 8, !tbaa !49
  %i.vc = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.vb) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i199.i = trunc i64 %i.vc to i32
  %i.vd = bitcast i32 %.sroa.0.0.extract.trunc.i.i199.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i200.i = lshr i64 %i.vc, 32
  %.sroa.12.0.extract.trunc.i.i201.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i200.i to i32
  %i.ve = load i32, ptr %i.rp, align 8, !tbaa !55
  %i.vf = sext i32 %i.ve to i64
  %i.vg = getelementptr inbounds [312 x i8], ptr %0, i64 %i.vf ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i201.i, label %nsvg__parseCoordinate.exit203.i [
    i32 7, label %bb.cu
    i32 9, label %bb.ct
    i32 2, label %bb.cn
    i32 3, label %bb.co
    i32 4, label %bb.cp
    i32 5, label %bb.cq
    i32 6, label %bb.cr
    i32 8, label %bb.cs
  ]

end_hunk_1
begin_hunk_2_@nsvg__startElement:bb.a
bb.dd:                                            ; preds = %bb.cv
  %i.xi = fdiv float %i.wj, 1.000000e+02
  %i.xj = tail call float @llvm.fmuladd.f32(float %i.xi, float %.val192.i, float 0.000000e+00)
  br label %nsvg__parseCoordinate.exit208.i

nsvg__parseCoordinate.exit208.i:                  ; preds = %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %nsvg__parseCoordinate.exit203.i
  %.1172.i = phi float [ %.0171244.i, %nsvg__parseCoordinate.exit203.i ], [ %i.xd, %bb.db ], [ %i.xj, %bb.dd ], [ %i.xh, %bb.dc ], [ %i.wp, %bb.cw ], [ %i.ws, %bb.cx ], [ %i.wv, %bb.cy ], [ %i.wy, %bb.cz ], [ %i.xa, %bb.da ], [ %i.wj, %bb.cv ] ; 6 uses
  %i.xk = load ptr, ptr %i.se, align 8, !tbaa !21 ; 4 uses
  %i.xl = load i8, ptr %i.xk, align 1
  %.not255.i = icmp eq i8 %i.xl, 114
  br i1 %.not255.i, label %sub_1233.i, label %.tail235.thread.i

sub_1233.i:                                       ; preds = %nsvg__parseCoordinate.exit208.i
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 1
  %i.xn = load i8, ptr %i.xm, align 1             ; 2 uses
  %.not256.i = icmp eq i8 %i.xn, 120
  br i1 %.not256.i, label %nsvg__parseCoordinate.exit208.tail.i, label %sub_1237.i

nsvg__parseCoordinate.exit208.tail.i:             ; preds = %sub_1233.i
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xk, i64 2
  %i.xp = load i8, ptr %i.xo, align 1
  %i.xq = icmp eq i8 %i.xp, 0
  br i1 %i.xq, label %bb.de, label %.tail235.thread.i

bb.de:                                            ; preds = %nsvg__parseCoordinate.exit208.tail.i
  %i.xr = load ptr, ptr %i.sf, align 8, !tbaa !21
  %.val188.i = load float, ptr %i.rz, align 8, !tbaa !49
  %i.xs = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.xr) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i209.i = trunc i64 %i.xs to i32
  %i.xt = bitcast i32 %.sroa.0.0.extract.trunc.i.i209.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i210.i = lshr i64 %i.xs, 32
  %.sroa.12.0.extract.trunc.i.i211.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i210.i to i32
  %i.xu = load i32, ptr %i.rp, align 8, !tbaa !55
  %i.xv = sext i32 %i.xu to i64
  %i.xw = getelementptr inbounds [312 x i8], ptr %0, i64 %i.xv ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i211.i, label %sub_0236.i [
    i32 7, label %bb.dm
    i32 9, label %bb.dl
    i32 2, label %bb.df
    i32 3, label %bb.dg
    i32 4, label %bb.dh
    i32 5, label %bb.di
    i32 6, label %bb.dj
    i32 8, label %bb.dk
  ]

bb.df:                                            ; preds = %bb.de
  %i.xx = fdiv float %i.xt, 7.200000e+01
  %i.xy = load float, ptr %i.sa, align 4, !tbaa !40
  %i.xz = fmul float %i.xx, %i.xy
  br label %sub_0236.i

bb.dg:                                            ; preds = %bb.de
  %i.ya = fdiv float %i.xt, 6.000000e+00
  %i.yb = load float, ptr %i.sa, align 4, !tbaa !40
  %i.yc = fmul float %i.ya, %i.yb
  br label %sub_0236.i

bb.dh:                                            ; preds = %bb.de
  %i.yd = fdiv float %i.xt, 2.540000e+01
  %i.ye = load float, ptr %i.sa, align 4, !tbaa !40
  %i.yf = fmul float %i.yd, %i.ye
  br label %sub_0236.i

bb.di:                                            ; preds = %bb.de
  %i.yg = fdiv float %i.xt, 2.540000e+00
  %i.yh = load float, ptr %i.sa, align 4, !tbaa !40
  %i.yi = fmul float %i.yg, %i.yh
  br label %sub_0236.i

bb.dj:                                            ; preds = %bb.de
  %i.yj = load float, ptr %i.sa, align 4, !tbaa !40
  %i.yk = fmul float %i.yj, %i.xt
  br label %sub_0236.i

bb.dk:                                            ; preds = %bb.de
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xw, i64 292
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !56
  %i.yn = fmul float %i.ym, %i.xt
  br label %sub_0236.i

bb.dl:                                            ; preds = %bb.de
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xw, i64 292
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !56
  %i.yq = fmul float %i.yp, %i.xt
  %i.yr = fmul float %i.yq, 5.200000e-01
  br label %sub_0236.i

bb.dm:                                            ; preds = %bb.de
  %i.ys = fdiv float %i.xt, 1.000000e+02
  %i.yt = tail call float @llvm.fmuladd.f32(float %i.ys, float %.val188.i, float 0.000000e+00)
  br label %sub_0236.i

sub_0236.i:                                       ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de
  %.0.i.i212.i = phi float [ %i.yn, %bb.dk ], [ %i.yt, %bb.dm ], [ %i.yr, %bb.dl ], [ %i.xz, %bb.df ], [ %i.yc, %bb.dg ], [ %i.yf, %bb.dh ], [ %i.yi, %bb.di ], [ %i.yk, %bb.dj ], [ %i.xt, %bb.de ]
  %i.yu = tail call float @llvm.fabs.f32(float %.0.i.i212.i) ; 2 uses
  %.pre.i92 = load ptr, ptr %i.se, align 8, !tbaa !21 ; 3 uses
  %.pre260.i = load i8, ptr %.pre.i92, align 1
  %.not257.i = icmp eq i8 %.pre260.i, 114
  br i1 %.not257.i, label %sub_0236.i.sub_1237.i_crit_edge, label %.tail235.thread.i

sub_0236.i.sub_1237.i_crit_edge:                  ; preds = %sub_0236.i
  %.phi.trans.insert175 = getelementptr inbounds nuw i8, ptr %.pre.i92, i64 1
  %.pre176 = load i8, ptr %.phi.trans.insert175, align 1
  br label %sub_1237.i

sub_1237.i:                                       ; preds = %sub_0236.i.sub_1237.i_crit_edge, %sub_1233.i
  %i.yv = phi i8 [ %.pre176, %sub_0236.i.sub_1237.i_crit_edge ], [ %i.xn, %sub_1233.i ]
  %.1168269.i = phi float [ %i.yu, %sub_0236.i.sub_1237.i_crit_edge ], [ %.0167245.i, %sub_1233.i ] ; 3 uses
  %i.yw = phi ptr [ %.pre.i92, %sub_0236.i.sub_1237.i_crit_edge ], [ %i.xk, %sub_1233.i ]
  %.not258.i = icmp eq i8 %i.yv, 121
  br i1 %.not258.i, label %.tail235.i, label %.tail235.thread.i

.tail235.i:                                       ; preds = %sub_1237.i
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 2
  %i.yy = load i8, ptr %i.yx, align 1
  %i.yz = icmp eq i8 %i.yy, 0
  br i1 %i.yz, label %bb.dn, label %.tail235.thread.i

bb.dn:                                            ; preds = %.tail235.i
  %i.za = load ptr, ptr %i.sf, align 8, !tbaa !21
  %.val191.i = load float, ptr %i.sc, align 4, !tbaa !52
  %i.zb = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.za) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i214.i = trunc i64 %i.zb to i32
  %i.zc = bitcast i32 %.sroa.0.0.extract.trunc.i.i214.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i215.i = lshr i64 %i.zb, 32
  %.sroa.12.0.extract.trunc.i.i216.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i215.i to i32
  %i.zd = load i32, ptr %i.rp, align 8, !tbaa !55
  %i.ze = sext i32 %i.zd to i64
  %i.zf = getelementptr inbounds [312 x i8], ptr %0, i64 %i.ze ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i216.i, label %nsvg__parseCoordinate.exit218.i [
    i32 7, label %bb.dv
    i32 9, label %bb.du
    i32 2, label %bb.do
    i32 3, label %bb.dp
    i32 4, label %bb.dq
    i32 5, label %bb.dr
    i32 6, label %bb.ds
    i32 8, label %bb.dt
  ]

bb.do:                                            ; preds = %bb.dn
  %i.zg = fdiv float %i.zc, 7.200000e+01
  %i.zh = load float, ptr %i.sa, align 4, !tbaa !40
  %i.zi = fmul float %i.zg, %i.zh
  br label %nsvg__parseCoordinate.exit218.i

bb.dp:                                            ; preds = %bb.dn
  %i.zj = fdiv float %i.zc, 6.000000e+00
  %i.zk = load float, ptr %i.sa, align 4, !tbaa !40
  %i.zl = fmul float %i.zj, %i.zk
  br label %nsvg__parseCoordinate.exit218.i

bb.dq:                                            ; preds = %bb.dn
  %i.zm = fdiv float %i.zc, 2.540000e+01
  %i.zn = load float, ptr %i.sa, align 4, !tbaa !40
  %i.zo = fmul float %i.zm, %i.zn
  br label %nsvg__parseCoordinate.exit218.i

bb.dr:                                            ; preds = %bb.dn
  %i.zp = fdiv float %i.zc, 2.540000e+00
  %i.zq = load float, ptr %i.sa, align 4, !tbaa !40
  %i.zr = fmul float %i.zp, %i.zq
  br label %nsvg__parseCoordinate.exit218.i

bb.ds:                                            ; preds = %bb.dn
  %i.zs = load float, ptr %i.sa, align 4, !tbaa !40
  %i.zt = fmul float %i.zs, %i.zc
  br label %nsvg__parseCoordinate.exit218.i

bb.dt:                                            ; preds = %bb.dn
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zf, i64 292
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !56
  %i.zw = fmul float %i.zv, %i.zc
  br label %nsvg__parseCoordinate.exit218.i

bb.du:                                            ; preds = %bb.dn
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zf, i64 292
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !56
  %i.zz = fmul float %i.zy, %i.zc
  %i.aaa = fmul float %i.zz, 5.200000e-01
  br label %nsvg__parseCoordinate.exit218.i

bb.dv:                                            ; preds = %bb.dn
  %i.aab = fdiv float %i.zc, 1.000000e+02
  %i.aac = tail call float @llvm.fmuladd.f32(float %i.aab, float %.val191.i, float 0.000000e+00)
  br label %nsvg__parseCoordinate.exit218.i

nsvg__parseCoordinate.exit218.i:                  ; preds = %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn
  %.0.i.i217.i = phi float [ %i.zw, %bb.dt ], [ %i.aac, %bb.dv ], [ %i.aaa, %bb.du ], [ %i.zi, %bb.do ], [ %i.zl, %bb.dp ], [ %i.zo, %bb.dq ], [ %i.zr, %bb.dr ], [ %i.zt, %bb.ds ], [ %i.zc, %bb.dn ]
  %i.aad = tail call float @llvm.fabs.f32(float %.0.i.i217.i)
  br label %.tail235.thread.i

.tail235.thread.i:                                ; preds = %nsvg__parseCoordinate.exit208.tail.i, %nsvg__parseCoordinate.exit218.i, %.tail235.i, %sub_1237.i, %sub_0236.i, %nsvg__parseCoordinate.exit208.i, %bb.bt
  %.2182.i = phi float [ %.0180241.i, %bb.bt ], [ %.1181.i, %nsvg__parseCoordinate.exit218.i ], [ %.1181.i, %.tail235.i ], [ %.1181.i, %sub_0236.i ], [ %.1181.i, %sub_1237.i ], [ %.1181.i, %nsvg__parseCoordinate.exit208.i ], [ %.1181.i, %nsvg__parseCoordinate.exit208.tail.i ] ; 2 uses
  %.2179.i = phi float [ %.0177242.i, %bb.bt ], [ %.1178.i, %nsvg__parseCoordinate.exit218.i ], [ %.1178.i, %.tail235.i ], [ %.1178.i, %sub_0236.i ], [ %.1178.i, %sub_1237.i ], [ %.1178.i, %nsvg__parseCoordinate.exit208.i ], [ %.1178.i, %nsvg__parseCoordinate.exit208.tail.i ] ; 2 uses
  %.2176.i = phi float [ %.0174243.i, %bb.bt ], [ %.1175.i, %nsvg__parseCoordinate.exit218.i ], [ %.1175.i, %.tail235.i ], [ %.1175.i, %sub_0236.i ], [ %.1175.i, %sub_1237.i ], [ %.1175.i, %nsvg__parseCoordinate.exit208.i ], [ %.1175.i, %nsvg__parseCoordinate.exit208.tail.i ] ; 2 uses
  %.2173.i = phi float [ %.0171244.i, %bb.bt ], [ %.1172.i, %nsvg__parseCoordinate.exit218.i ], [ %.1172.i, %.tail235.i ], [ %.1172.i, %sub_0236.i ], [ %.1172.i, %sub_1237.i ], [ %.1172.i, %nsvg__parseCoordinate.exit208.i ], [ %.1172.i, %nsvg__parseCoordinate.exit208.tail.i ] ; 2 uses
  %.2169.i = phi float [ %.0167245.i, %bb.bt ], [ %.1168269.i, %nsvg__parseCoordinate.exit218.i ], [ %.1168269.i, %.tail235.i ], [ %i.yu, %sub_0236.i ], [ %.1168269.i, %sub_1237.i ], [ %.0167245.i, %nsvg__parseCoordinate.exit208.i ], [ %.0167245.i, %nsvg__parseCoordinate.exit208.tail.i ] ; 2 uses
  %.1.i74 = phi float [ %.0166246.i, %bb.bt ], [ %i.aad, %nsvg__parseCoordinate.exit218.i ], [ %.0166246.i, %.tail235.i ], [ %.0166246.i, %sub_0236.i ], [ %.0166246.i, %sub_1237.i ], [ %.0166246.i, %nsvg__parseCoordinate.exit208.i ], [ %.0166246.i, %nsvg__parseCoordinate.exit208.tail.i ] ; 2 uses
  %indvars.iv.next.i75 = add nuw nsw i64 %indvars.iv.i73, 2
  %4 = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %i.aae = load ptr, ptr %4, align 8, !tbaa !21   ; 2 uses
  %.not.i76 = icmp eq ptr %i.aae, null
  br i1 %.not.i76, label %._crit_edge.i77, label %bb.bt, !llvm.loop !180

._crit_edge.i77:                                  ; preds = %.tail235.thread.i, %nsvg__pushAttr.exit71
  %.0180.lcssa.i = phi float [ 0.000000e+00, %nsvg__pushAttr.exit71 ], [ %.2182.i, %.tail235.thread.i ] ; 10 uses
  %.0177.lcssa.i = phi float [ 0.000000e+00, %nsvg__pushAttr.exit71 ], [ %.2179.i, %.tail235.thread.i ] ; 11 uses
  %.0174.lcssa.i = phi float [ 0.000000e+00, %nsvg__pushAttr.exit71 ], [ %.2176.i, %.tail235.thread.i ] ; 4 uses
  %.0171.lcssa.i = phi float [ 0.000000e+00, %nsvg__pushAttr.exit71 ], [ %.2173.i, %.tail235.thread.i ] ; 4 uses
  %.0167.lcssa.i = phi float [ -1.000000e+00, %nsvg__pushAttr.exit71 ], [ %.2169.i, %.tail235.thread.i ] ; 3 uses
  %.0166.lcssa.i = phi float [ -1.000000e+00, %nsvg__pushAttr.exit71 ], [ %.1.i74, %.tail235.thread.i ] ; 4 uses
  %i.aaf = fcmp olt float %.0167.lcssa.i, 0.000000e+00
  %i.aag = fcmp ogt float %.0166.lcssa.i, 0.000000e+00
  %or.cond.i = select i1 %i.aaf, i1 %i.aag, i1 false
  %.3170.i = select i1 %or.cond.i, float %.0166.lcssa.i, float %.0167.lcssa.i ; 3 uses
  %i.aah = fcmp olt float %.0166.lcssa.i, 0.000000e+00
  %i.aai = fcmp ogt float %.3170.i, 0.000000e+00
  %or.cond3.i = select i1 %i.aah, i1 %i.aai, i1 false
  %.2.i78 = select i1 %or.cond3.i, float %.0167.lcssa.i, float %.0166.lcssa.i ; 2 uses
  %i.aaj = fcmp olt float %.3170.i, 0.000000e+00
  %spec.store.select.i = select i1 %i.aaj, float 0.000000e+00, float %.3170.i ; 2 uses
  %i.aak = fcmp olt float %.2.i78, 0.000000e+00
  %spec.store.select8.i = select i1 %i.aak, float 0.000000e+00, float %.2.i78 ; 2 uses
  %i.aal = fmul float %.0174.lcssa.i, 5.000000e-01 ; 2 uses
  %i.aam = fcmp ogt float %spec.store.select.i, %i.aal
  %.4.i79 = select i1 %i.aam, float %i.aal, float %spec.store.select.i ; 5 uses
  %i.aan = fmul float %.0171.lcssa.i, 5.000000e-01 ; 2 uses
  %i.aao = fcmp ogt float %spec.store.select8.i, %i.aan
  %.3.i80 = select i1 %i.aao, float %i.aan, float %spec.store.select8.i ; 5 uses
  %i.aap = fcmp une float %.0174.lcssa.i, 0.000000e+00
  %i.aaq = fcmp une float %.0171.lcssa.i, 0.000000e+00
  %or.cond5.i = select i1 %i.aap, i1 %i.aaq, i1 false
  br i1 %or.cond5.i, label %bb.dw, label %nsvg__parseRect.exit

bb.dw:                                            ; preds = %._crit_edge.i77
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 39952 ; 5 uses
  store i32 0, ptr %i.aar, align 8, !tbaa !83
  %i.aas = fcmp olt float %.4.i79, f0x3727C5AC
  %i.aat = fcmp olt float %.3.i80, f0x38D1B717
  %or.cond7.i81 = select i1 %i.aas, i1 true, i1 %i.aat
  br i1 %or.cond7.i81, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 39956 ; 2 uses
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !84 ; 3 uses
  %.not.i.i.i82 = icmp sgt i32 %i.aav, 0
  br i1 %.not.i.i.i82, label %._crit_edge.i.i.i89, label %bb.dy

._crit_edge.i.i.i89:                              ; preds = %bb.dx
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 39944
  %.pre.i.i.i90 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !79
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %.not16.i.i.i83 = icmp eq i32 %i.aav, 0
  %i.aaw = shl nsw i32 %i.aav, 1
  %spec.select.i.i.i84 = select i1 %.not16.i.i.i83, i32 8, i32 %i.aaw ; 2 uses
  store i32 %spec.select.i.i.i84, ptr %i.aau, align 4, !tbaa !84
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 39944 ; 2 uses
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !79
  %i.aaz = shl nsw i32 %spec.select.i.i.i84, 1
  %i.aba = sext i32 %i.aaz to i64
  %i.abb = shl nsw i64 %i.aba, 2
  %i.abc = tail call ptr @realloc(ptr noundef %i.aay, i64 noundef %i.abb) #32 ; 3 uses
  store ptr %i.abc, ptr %i.aax, align 8, !tbaa !79
  %.not17.i.i.i85 = icmp eq ptr %i.abc, null
  br i1 %.not17.i.i.i85, label %nsvg__moveTo.exit.i88, label %._crit_edge18.i.i.i86

._crit_edge18.i.i.i86:                            ; preds = %bb.dy
  %.pre19.i.i.i87 = load i32, ptr %i.aar, align 8, !tbaa !83
  br label %bb.dz

bb.dz:                                            ; preds = %._crit_edge18.i.i.i86, %._crit_edge.i.i.i89
  %i.abd = phi i32 [ 0, %._crit_edge.i.i.i89 ], [ %.pre19.i.i.i87, %._crit_edge18.i.i.i86 ] ; 2 uses
  %i.abe = phi ptr [ %.pre.i.i.i90, %._crit_edge.i.i.i89 ], [ %i.abc, %._crit_edge18.i.i.i86 ]
  %i.abf = shl nsw i32 %i.abd, 1
  %i.abg = sext i32 %i.abf to i64
  %i.abh = getelementptr inbounds [4 x i8], ptr %i.abe, i64 %i.abg ; 2 uses
  store float %.0180.lcssa.i, ptr %i.abh, align 4, !tbaa !31
  %i.abi = getelementptr i8, ptr %i.abh, i64 4
  store float %.0177.lcssa.i, ptr %i.abi, align 4, !tbaa !31
  %i.abj = add nsw i32 %i.abd, 1
  store i32 %i.abj, ptr %i.aar, align 8, !tbaa !83
  br label %nsvg__moveTo.exit.i88

nsvg__moveTo.exit.i88:                            ; preds = %bb.dz, %bb.dy
  %i.abk = fadd float %.0180.lcssa.i, %.0174.lcssa.i ; 2 uses
  tail call fastcc void @nsvg__lineTo(ptr noundef nonnull %0, float noundef %i.abk, float noundef %.0177.lcssa.i)
  %i.abl = fadd float %.0177.lcssa.i, %.0171.lcssa.i ; 2 uses
  tail call fastcc void @nsvg__lineTo(ptr noundef nonnull %0, float noundef %i.abk, float noundef %i.abl)
  tail call fastcc void @nsvg__lineTo(ptr noundef nonnull %0, float noundef %.0180.lcssa.i, float noundef %i.abl)
  br label %bb.ed

bb.ea:                                            ; preds = %bb.dw
  %i.abm = fadd float %.0180.lcssa.i, %.4.i79     ; 3 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %0, i64 39956 ; 2 uses
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !84 ; 3 uses
  %.not.i.i219.i = icmp sgt i32 %i.abo, 0
  br i1 %.not.i.i219.i, label %._crit_edge.i.i225.i, label %bb.eb

._crit_edge.i.i225.i:                             ; preds = %bb.ea
  %.phi.trans.insert.i.i226.i = getelementptr inbounds nuw i8, ptr %0, i64 39944
  %.pre.i.i227.i = load ptr, ptr %.phi.trans.insert.i.i226.i, align 8, !tbaa !79
  br label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %.not16.i.i220.i = icmp eq i32 %i.abo, 0
  %i.abp = shl nsw i32 %i.abo, 1
  %spec.select.i.i221.i = select i1 %.not16.i.i220.i, i32 8, i32 %i.abp ; 2 uses
  store i32 %spec.select.i.i221.i, ptr %i.abn, align 4, !tbaa !84
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 39944 ; 2 uses
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !79
  %i.abs = shl nsw i32 %spec.select.i.i221.i, 1
  %i.abt = sext i32 %i.abs to i64
  %i.abu = shl nsw i64 %i.abt, 2
  %i.abv = tail call ptr @realloc(ptr noundef %i.abr, i64 noundef %i.abu) #32 ; 3 uses
  store ptr %i.abv, ptr %i.abq, align 8, !tbaa !79
  %.not17.i.i222.i = icmp eq ptr %i.abv, null
  br i1 %.not17.i.i222.i, label %nsvg__moveTo.exit228.i, label %._crit_edge18.i.i223.i

._crit_edge18.i.i223.i:                           ; preds = %bb.eb
  %.pre19.i.i224.i = load i32, ptr %i.aar, align 8, !tbaa !83
  br label %bb.ec

bb.ec:                                            ; preds = %._crit_edge18.i.i223.i, %._crit_edge.i.i225.i
  %i.abw = phi i32 [ 0, %._crit_edge.i.i225.i ], [ %.pre19.i.i224.i, %._crit_edge18.i.i223.i ] ; 2 uses
  %i.abx = phi ptr [ %.pre.i.i227.i, %._crit_edge.i.i225.i ], [ %i.abv, %._crit_edge18.i.i223.i ]
  %i.aby = shl nsw i32 %i.abw, 1
  %i.abz = sext i32 %i.aby to i64
  %i.aca = getelementptr inbounds [4 x i8], ptr %i.abx, i64 %i.abz ; 2 uses
  store float %i.abm, ptr %i.aca, align 4, !tbaa !31
  %i.acb = getelementptr i8, ptr %i.aca, i64 4
  store float %.0177.lcssa.i, ptr %i.acb, align 4, !tbaa !31
  %i.acc = add nsw i32 %i.abw, 1
  store i32 %i.acc, ptr %i.aar, align 8, !tbaa !83
  br label %nsvg__moveTo.exit228.i

nsvg__moveTo.exit228.i:                           ; preds = %bb.ec, %bb.eb
  %i.acd = fadd float %.0180.lcssa.i, %.0174.lcssa.i ; 6 uses
  %i.ace = fsub float %i.acd, %.4.i79             ; 2 uses
  tail call fastcc void @nsvg__lineTo(ptr noundef nonnull %0, float noundef %i.ace, float noundef %.0177.lcssa.i)
  %i.acf = fneg float %.4.i79
  %i.acg = fadd float %.0177.lcssa.i, %.3.i80     ; 2 uses
  %i.ach = fadd float %.0177.lcssa.i, %.0171.lcssa.i ; 6 uses
  %i.aci = fsub float %i.ach, %.3.i80             ; 2 uses
  %i.acj = fneg float %.3.i80
  %i.ack = insertelement <4 x float> poison, float %i.acf, i64 0
  %i.acl = insertelement <4 x float> %i.ack, float %.3.i80, i64 1
  %i.acm = insertelement <4 x float> %i.acl, float %i.acj, i64 2
  %i.acn = insertelement <4 x float> %i.acm, float %.4.i79, i64 3
  %i.aco = insertelement <4 x float> poison, float %i.acd, i64 0
  %i.acp = insertelement <4 x float> %i.aco, float %.0177.lcssa.i, i64 1
  %i.acq = insertelement <4 x float> %i.acp, float %i.ach, i64 2
  %i.acr = insertelement <4 x float> %i.acq, float %.0180.lcssa.i, i64 3
  %i.acs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acn, <4 x float> splat (float f0x3EE53AEE), <4 x float> %i.acr) ; 4 uses
  %i.act = extractelement <4 x float> %i.acs, i64 0 ; 2 uses
  %i.acu = extractelement <4 x float> %i.acs, i64 1 ; 2 uses
  tail call fastcc void @nsvg__cubicBezTo(ptr noundef nonnull %0, float noundef %i.act, float noundef %.0177.lcssa.i, float noundef %i.acd, float noundef %i.acu, float noundef %i.acd, float noundef %i.acg)
  tail call fastcc void @nsvg__lineTo(ptr noundef nonnull %0, float noundef %i.acd, float noundef %i.aci)
  %i.acv = extractelement <4 x float> %i.acs, i64 2 ; 2 uses
  tail call fastcc void @nsvg__cubicBezTo(ptr noundef nonnull %0, float noundef %i.acd, float noundef %i.acv, float noundef %i.act, float noundef %i.ach, float noundef %i.ace, float noundef %i.ach)
  tail call fastcc void @nsvg__lineTo(ptr noundef nonnull %0, float noundef %i.abm, float noundef %i.ach)
  %i.acw = extractelement <4 x float> %i.acs, i64 3 ; 2 uses
  tail call fastcc void @nsvg__cubicBezTo(ptr noundef nonnull %0, float noundef %i.acw, float noundef %i.ach, float noundef %.0180.lcssa.i, float noundef %i.acv, float noundef %.0180.lcssa.i, float noundef %i.aci)
  tail call fastcc void @nsvg__lineTo(ptr noundef nonnull %0, float noundef %.0180.lcssa.i, float noundef %i.acg)
  tail call fastcc void @nsvg__cubicBezTo(ptr noundef nonnull %0, float noundef %.0180.lcssa.i, float noundef %i.acu, float noundef %i.acw, float noundef %.0177.lcssa.i, float noundef %i.abm, float noundef %.0177.lcssa.i)
  br label %bb.ed

bb.ed:                                            ; preds = %nsvg__moveTo.exit228.i, %nsvg__moveTo.exit.i88
  tail call fastcc void @nsvg__addPath(ptr noundef nonnull %0, i8 noundef signext 1)
  tail call fastcc void @nsvg__addShape(ptr noundef nonnull %0)
  br label %nsvg__parseRect.exit

nsvg__parseRect.exit:                             ; preds = %._crit_edge.i77, %bb.ed
  %i.acx = load i32, ptr %i.rp, align 8, !tbaa !55 ; 2 uses
  %i.acy = icmp sgt i32 %i.acx, 0
  br i1 %i.acy, label %bb.ee, label %nsvg__popAttr.exit

bb.ee:                                            ; preds = %nsvg__parseRect.exit
  %i.acz = add nsw i32 %i.acx, -1
  store i32 %i.acz, ptr %i.rp, align 8, !tbaa !55
  br label %nsvg__popAttr.exit

bb.ef:                                            ; preds = %bb.bq
  %i.ada = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.19) #31
  %i.adb = icmp eq i32 %i.ada, 0
  br i1 %i.adb, label %bb.eg, label %bb.fo

bb.eg:                                            ; preds = %bb.ef
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 39936 ; 7 uses
  %i.add = load i32, ptr %i.adc, align 8, !tbaa !55 ; 3 uses
  %i.ade = icmp slt i32 %i.add, 127
  br i1 %i.ade, label %bb.eh, label %nsvg__pushAttr.exit96

bb.eh:                                            ; preds = %bb.eg
  %i.adf = add nsw i32 %i.add, 1                  ; 2 uses
  store i32 %i.adf, ptr %i.adc, align 8, !tbaa !55
  %i.adg = sext i32 %i.adf to i64
  %i.adh = getelementptr inbounds [312 x i8], ptr %0, i64 %i.adg
  %i.adi = sext i32 %i.add to i64
  %i.adj = getelementptr inbounds [312 x i8], ptr %0, i64 %i.adi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.adh, ptr noundef nonnull align 8 dereferenceable(312) %i.adj, i64 312, i1 false)
  br label %nsvg__pushAttr.exit96

nsvg__pushAttr.exit96:                            ; preds = %bb.eg, %bb.eh
  %i.adk = load ptr, ptr %2, align 8, !tbaa !21   ; 2 uses
  %.not113.i = icmp eq ptr %i.adk, null
  br i1 %.not113.i, label %nsvg__parseCircle.exit, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %nsvg__pushAttr.exit96
  %i.adl = getelementptr i8, ptr %0, i64 40000
  %i.adm = getelementptr i8, ptr %0, i64 40008    ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 40028 ; 15 uses
  %i.ado = getelementptr i8, ptr %0, i64 40004
  %i.adp = getelementptr i8, ptr %0, i64 40012    ; 2 uses
  br label %bb.ei

bb.ei:                                            ; preds = %nsvg__parseCoordinate.exit100.tail.thread.i, %.lr.ph.i97
  %indvars.iv.i98 = phi i64 [ 0, %.lr.ph.i97 ], [ %indvars.iv.next.i101, %nsvg__parseCoordinate.exit100.tail.thread.i ] ; 2 uses
  %i.adq = phi ptr [ %i.adk, %.lr.ph.i97 ], [ %i.aie, %nsvg__parseCoordinate.exit100.tail.thread.i ]
  %.083116.i = phi float [ 0.000000e+00, %.lr.ph.i97 ], [ %.1.i100, %nsvg__parseCoordinate.exit100.tail.thread.i ] ; 3 uses
  %.084115.i = phi float [ 0.000000e+00, %.lr.ph.i97 ], [ %.2.i99, %nsvg__parseCoordinate.exit100.tail.thread.i ] ; 4 uses
  %.086114.i = phi float [ 0.000000e+00, %.lr.ph.i97 ], [ %.288.i, %nsvg__parseCoordinate.exit100.tail.thread.i ] ; 4 uses
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i98 ; 5 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 8 ; 4 uses
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !21
  %i.adu = tail call fastcc i32 @nsvg__parseAttr(ptr noundef %0, ptr noundef %i.adq, ptr noundef %i.adt)
  %.not90.i = icmp eq i32 %i.adu, 0
  br i1 %.not90.i, label %sub_0.i114, label %nsvg__parseCoordinate.exit100.tail.thread.i

sub_0.i114:                                       ; preds = %bb.ei
  %i.adv = load ptr, ptr %i.adr, align 8, !tbaa !21 ; 3 uses
  %i.adw = load i8, ptr %i.adv, align 1
  %.not120.i = icmp eq i8 %i.adw, 99
  br i1 %.not120.i, label %sub_1.i, label %nsvg__parseCoordinate.exit.i115

sub_1.i:                                          ; preds = %sub_0.i114
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adv, i64 1
  %i.ady = load i8, ptr %i.adx, align 1
  %.not121.i = icmp eq i8 %i.ady, 120
  br i1 %.not121.i, label %.tail.i118, label %nsvg__parseCoordinate.exit.i115

.tail.i118:                                       ; preds = %sub_1.i
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adv, i64 2
  %i.aea = load i8, ptr %i.adz, align 1
  %i.aeb = icmp eq i8 %i.aea, 0
  br i1 %i.aeb, label %bb.ej, label %nsvg__parseCoordinate.exit.i115

bb.ej:                                            ; preds = %.tail.i118
  %i.aec = load ptr, ptr %i.ads, align 8, !tbaa !21
  %.val.i119 = load float, ptr %i.adl, align 8, !tbaa !51
  %.val92.i = load float, ptr %i.adm, align 8, !tbaa !49
  %i.aed = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.aec) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i120 = trunc i64 %i.aed to i32
  %i.aee = bitcast i32 %.sroa.0.0.extract.trunc.i.i.i120 to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i.i121 = lshr i64 %i.aed, 32
  %.sroa.12.0.extract.trunc.i.i.i122 = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i.i121 to i32
  %i.aef = load i32, ptr %i.adc, align 8, !tbaa !55
  %i.aeg = sext i32 %i.aef to i64
  %i.aeh = getelementptr inbounds [312 x i8], ptr %0, i64 %i.aeg ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i.i122, label %nsvg__parseCoordinate.exit.i115 [
    i32 7, label %bb.er
    i32 9, label %bb.eq
    i32 2, label %bb.ek
    i32 3, label %bb.el
    i32 4, label %bb.em
    i32 5, label %bb.en
    i32 6, label %bb.eo
    i32 8, label %bb.ep
  ]

bb.ek:                                            ; preds = %bb.ej
  %i.aei = fdiv float %i.aee, 7.200000e+01
  %i.aej = load float, ptr %i.adn, align 4, !tbaa !40
  %i.aek = fmul float %i.aei, %i.aej
  br label %nsvg__parseCoordinate.exit.i115

bb.el:                                            ; preds = %bb.ej
  %i.ael = fdiv float %i.aee, 6.000000e+00
  %i.aem = load float, ptr %i.adn, align 4, !tbaa !40
  %i.aen = fmul float %i.ael, %i.aem
  br label %nsvg__parseCoordinate.exit.i115

bb.em:                                            ; preds = %bb.ej
  %i.aeo = fdiv float %i.aee, 2.540000e+01
  %i.aep = load float, ptr %i.adn, align 4, !tbaa !40
  %i.aeq = fmul float %i.aeo, %i.aep
  br label %nsvg__parseCoordinate.exit.i115

bb.en:                                            ; preds = %bb.ej
  %i.aer = fdiv float %i.aee, 2.540000e+00
  %i.aes = load float, ptr %i.adn, align 4, !tbaa !40
  %i.aet = fmul float %i.aer, %i.aes
  br label %nsvg__parseCoordinate.exit.i115

bb.eo:                                            ; preds = %bb.ej
  %i.aeu = load float, ptr %i.adn, align 4, !tbaa !40
  %i.aev = fmul float %i.aeu, %i.aee
  br label %nsvg__parseCoordinate.exit.i115

bb.ep:                                            ; preds = %bb.ej
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aeh, i64 292
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !56
  %i.aey = fmul float %i.aex, %i.aee
  br label %nsvg__parseCoordinate.exit.i115

bb.eq:                                            ; preds = %bb.ej
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aeh, i64 292
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !56
  %i.afb = fmul float %i.afa, %i.aee
  %i.afc = fmul float %i.afb, 5.200000e-01
  br label %nsvg__parseCoordinate.exit.i115

bb.er:                                            ; preds = %bb.ej
  %i.afd = fdiv float %i.aee, 1.000000e+02
  %i.afe = tail call float @llvm.fmuladd.f32(float %i.afd, float %.val92.i, float %.val.i119)
  br label %nsvg__parseCoordinate.exit.i115

nsvg__parseCoordinate.exit.i115:                  ; preds = %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %.tail.i118, %sub_1.i, %sub_0.i114
  %.187.i = phi float [ %.086114.i, %.tail.i118 ], [ %i.aey, %bb.ep ], [ %i.afe, %bb.er ], [ %i.afc, %bb.eq ], [ %i.aek, %bb.ek ], [ %i.aen, %bb.el ], [ %i.aeq, %bb.em ], [ %i.aet, %bb.en ], [ %i.aev, %bb.eo ], [ %i.aee, %bb.ej ], [ %.086114.i, %sub_0.i114 ], [ %.086114.i, %sub_1.i ] ; 3 uses
  %i.aff = load ptr, ptr %i.adr, align 8, !tbaa !21 ; 3 uses
  %i.afg = load i8, ptr %i.aff, align 1
  %.not122.i = icmp eq i8 %i.afg, 99
  br i1 %.not122.i, label %sub_1107.i, label %nsvg__parseCoordinate.exit100.i

sub_1107.i:                                       ; preds = %nsvg__parseCoordinate.exit.i115
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 1
  %i.afi = load i8, ptr %i.afh, align 1
  %.not123.i = icmp eq i8 %i.afi, 121
  br i1 %.not123.i, label %nsvg__parseCoordinate.exit.tail.i117, label %nsvg__parseCoordinate.exit100.i

nsvg__parseCoordinate.exit.tail.i117:             ; preds = %sub_1107.i
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aff, i64 2
  %i.afk = load i8, ptr %i.afj, align 1
  %i.afl = icmp eq i8 %i.afk, 0
  br i1 %i.afl, label %bb.es, label %nsvg__parseCoordinate.exit100.i

bb.es:                                            ; preds = %nsvg__parseCoordinate.exit.tail.i117
  %i.afm = load ptr, ptr %i.ads, align 8, !tbaa !21
  %.val91.i = load float, ptr %i.ado, align 4, !tbaa !54
  %.val93.i = load float, ptr %i.adp, align 4, !tbaa !52
  %i.afn = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.afm) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i96.i = trunc i64 %i.afn to i32
  %i.afo = bitcast i32 %.sroa.0.0.extract.trunc.i.i96.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i97.i = lshr i64 %i.afn, 32
  %.sroa.12.0.extract.trunc.i.i98.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i97.i to i32
  %i.afp = load i32, ptr %i.adc, align 8, !tbaa !55
  %i.afq = sext i32 %i.afp to i64
  %i.afr = getelementptr inbounds [312 x i8], ptr %0, i64 %i.afq ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i98.i, label %nsvg__parseCoordinate.exit100.i [
    i32 7, label %bb.fa
    i32 9, label %bb.ez
    i32 2, label %bb.et
    i32 3, label %bb.eu
    i32 4, label %bb.ev
    i32 5, label %bb.ew
    i32 6, label %bb.ex
    i32 8, label %bb.ey
  ]

bb.et:                                            ; preds = %bb.es
  %i.afs = fdiv float %i.afo, 7.200000e+01
  %i.aft = load float, ptr %i.adn, align 4, !tbaa !40
  %i.afu = fmul float %i.afs, %i.aft
  br label %nsvg__parseCoordinate.exit100.i

bb.eu:                                            ; preds = %bb.es
  %i.afv = fdiv float %i.afo, 6.000000e+00
  %i.afw = load float, ptr %i.adn, align 4, !tbaa !40
  %i.afx = fmul float %i.afv, %i.afw
  br label %nsvg__parseCoordinate.exit100.i

bb.ev:                                            ; preds = %bb.es
  %i.afy = fdiv float %i.afo, 2.540000e+01
  %i.afz = load float, ptr %i.adn, align 4, !tbaa !40
  %i.aga = fmul float %i.afy, %i.afz
  br label %nsvg__parseCoordinate.exit100.i

bb.ew:                                            ; preds = %bb.es
  %i.agb = fdiv float %i.afo, 2.540000e+00
  %i.agc = load float, ptr %i.adn, align 4, !tbaa !40
  %i.agd = fmul float %i.agb, %i.agc
  br label %nsvg__parseCoordinate.exit100.i

bb.ex:                                            ; preds = %bb.es
  %i.age = load float, ptr %i.adn, align 4, !tbaa !40
  %i.agf = fmul float %i.age, %i.afo
  br label %nsvg__parseCoordinate.exit100.i

bb.ey:                                            ; preds = %bb.es
  %i.agg = getelementptr inbounds nuw i8, ptr %i.afr, i64 292
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !56
  %i.agi = fmul float %i.agh, %i.afo
  br label %nsvg__parseCoordinate.exit100.i

bb.ez:                                            ; preds = %bb.es
  %i.agj = getelementptr inbounds nuw i8, ptr %i.afr, i64 292
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !56
  %i.agl = fmul float %i.agk, %i.afo
  %i.agm = fmul float %i.agl, 5.200000e-01
  br label %nsvg__parseCoordinate.exit100.i

bb.fa:                                            ; preds = %bb.es
  %i.agn = fdiv float %i.afo, 1.000000e+02
  %i.ago = tail call float @llvm.fmuladd.f32(float %i.agn, float %.val93.i, float %.val91.i)
  br label %nsvg__parseCoordinate.exit100.i

nsvg__parseCoordinate.exit100.i:                  ; preds = %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %nsvg__parseCoordinate.exit.tail.i117, %sub_1107.i, %nsvg__parseCoordinate.exit.i115
  %.185.i = phi float [ %.084115.i, %nsvg__parseCoordinate.exit.tail.i117 ], [ %i.agi, %bb.ey ], [ %i.ago, %bb.fa ], [ %i.agm, %bb.ez ], [ %i.afu, %bb.et ], [ %i.afx, %bb.eu ], [ %i.aga, %bb.ev ], [ %i.agd, %bb.ew ], [ %i.agf, %bb.ex ], [ %i.afo, %bb.es ], [ %.084115.i, %nsvg__parseCoordinate.exit.i115 ], [ %.084115.i, %sub_1107.i ] ; 3 uses
  %i.agp = load ptr, ptr %i.adr, align 8, !tbaa !21 ; 2 uses
  %i.agq = load i8, ptr %i.agp, align 1
  %.not124.i = icmp eq i8 %i.agq, 114
  br i1 %.not124.i, label %nsvg__parseCoordinate.exit100.tail.i, label %nsvg__parseCoordinate.exit100.tail.thread.i

nsvg__parseCoordinate.exit100.tail.i:             ; preds = %nsvg__parseCoordinate.exit100.i
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agp, i64 1
  %i.ags = load i8, ptr %i.agr, align 1
  %i.agt = icmp eq i8 %i.ags, 0
  br i1 %i.agt, label %bb.fb, label %nsvg__parseCoordinate.exit100.tail.thread.i

bb.fb:                                            ; preds = %nsvg__parseCoordinate.exit100.tail.i
  %i.agu = load ptr, ptr %i.ads, align 8, !tbaa !21
  %.val94.i = load float, ptr %i.adm, align 8, !tbaa !49 ; 2 uses
  %.val95.i = load float, ptr %i.adp, align 4, !tbaa !52 ; 2 uses
  %i.agv = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.agu) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i101.i = trunc i64 %i.agv to i32
  %i.agw = bitcast i32 %.sroa.0.0.extract.trunc.i.i101.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i102.i = lshr i64 %i.agv, 32
  %.sroa.12.0.extract.trunc.i.i103.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i102.i to i32
  %i.agx = load i32, ptr %i.adc, align 8, !tbaa !55
  %i.agy = sext i32 %i.agx to i64
  %i.agz = getelementptr inbounds [312 x i8], ptr %0, i64 %i.agy ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i103.i, label %nsvg__parseCoordinate.exit105.i [
    i32 7, label %bb.fj
    i32 9, label %bb.fi
    i32 2, label %bb.fc
    i32 3, label %bb.fd
    i32 4, label %bb.fe
    i32 5, label %bb.ff
    i32 6, label %bb.fg
    i32 8, label %bb.fh
  ]

bb.fc:                                            ; preds = %bb.fb
  %i.aha = fdiv float %i.agw, 7.200000e+01
  %i.ahb = load float, ptr %i.adn, align 4, !tbaa !40
  %i.ahc = fmul float %i.aha, %i.ahb
  br label %nsvg__parseCoordinate.exit105.i

bb.fd:                                            ; preds = %bb.fb
  %i.ahd = fdiv float %i.agw, 6.000000e+00
  %i.ahe = load float, ptr %i.adn, align 4, !tbaa !40
  %i.ahf = fmul float %i.ahd, %i.ahe
  br label %nsvg__parseCoordinate.exit105.i

bb.fe:                                            ; preds = %bb.fb
  %i.ahg = fdiv float %i.agw, 2.540000e+01
  %i.ahh = load float, ptr %i.adn, align 4, !tbaa !40
  %i.ahi = fmul float %i.ahg, %i.ahh
  br label %nsvg__parseCoordinate.exit105.i

bb.ff:                                            ; preds = %bb.fb
  %i.ahj = fdiv float %i.agw, 2.540000e+00
  %i.ahk = load float, ptr %i.adn, align 4, !tbaa !40
  %i.ahl = fmul float %i.ahj, %i.ahk
  br label %nsvg__parseCoordinate.exit105.i

bb.fg:                                            ; preds = %bb.fb
  %i.ahm = load float, ptr %i.adn, align 4, !tbaa !40
  %i.ahn = fmul float %i.ahm, %i.agw
  br label %nsvg__parseCoordinate.exit105.i

bb.fh:                                            ; preds = %bb.fb
  %i.aho = getelementptr inbounds nuw i8, ptr %i.agz, i64 292
  %i.ahp = load float, ptr %i.aho, align 4, !tbaa !56
  %i.ahq = fmul float %i.ahp, %i.agw
  br label %nsvg__parseCoordinate.exit105.i

bb.fi:                                            ; preds = %bb.fb
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.agz, i64 292
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !56
  %i.aht = fmul float %i.ahs, %i.agw
  %i.ahu = fmul float %i.aht, 5.200000e-01
  br label %nsvg__parseCoordinate.exit105.i

bb.fj:                                            ; preds = %bb.fb
  %i.ahv = fmul float %.val95.i, %.val95.i
  %i.ahw = tail call float @llvm.fmuladd.f32(float %.val94.i, float %.val94.i, float %i.ahv)
  %sqrt.i.i116 = tail call float @llvm.sqrt.f32(float %i.ahw)
  %i.ahx = insertelement <2 x float> poison, float %sqrt.i.i116, i64 0
  %i.ahy = insertelement <2 x float> %i.ahx, float %i.agw, i64 1
  %i.ahz = fdiv <2 x float> %i.ahy, <float f0x3FB504F3, float 1.000000e+02> ; 2 uses
  %i.aia = extractelement <2 x float> %i.ahz, i64 0
  %i.aib = extractelement <2 x float> %i.ahz, i64 1
  %i.aic = tail call float @llvm.fmuladd.f32(float %i.aib, float %i.aia, float 0.000000e+00)
  br label %nsvg__parseCoordinate.exit105.i

nsvg__parseCoordinate.exit105.i:                  ; preds = %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb
  %.0.i.i104.i = phi float [ %i.ahq, %bb.fh ], [ %i.aic, %bb.fj ], [ %i.ahu, %bb.fi ], [ %i.ahc, %bb.fc ], [ %i.ahf, %bb.fd ], [ %i.ahi, %bb.fe ], [ %i.ahl, %bb.ff ], [ %i.ahn, %bb.fg ], [ %i.agw, %bb.fb ]
  %i.aid = tail call float @llvm.fabs.f32(float %.0.i.i104.i)
  br label %nsvg__parseCoordinate.exit100.tail.thread.i

nsvg__parseCoordinate.exit100.tail.thread.i:      ; preds = %nsvg__parseCoordinate.exit105.i, %nsvg__parseCoordinate.exit100.tail.i, %nsvg__parseCoordinate.exit100.i, %bb.ei
  %.288.i = phi float [ %.086114.i, %bb.ei ], [ %.187.i, %nsvg__parseCoordinate.exit105.i ], [ %.187.i, %nsvg__parseCoordinate.exit100.tail.i ], [ %.187.i, %nsvg__parseCoordinate.exit100.i ] ; 7 uses
  %.2.i99 = phi float [ %.084115.i, %bb.ei ], [ %.185.i, %nsvg__parseCoordinate.exit105.i ], [ %.185.i, %nsvg__parseCoordinate.exit100.tail.i ], [ %.185.i, %nsvg__parseCoordinate.exit100.i ] ; 8 uses
  %.1.i100 = phi float [ %.083116.i, %bb.ei ], [ %i.aid, %nsvg__parseCoordinate.exit105.i ], [ %.083116.i, %nsvg__parseCoordinate.exit100.tail.i ], [ %.083116.i, %nsvg__parseCoordinate.exit100.i ] ; 9 uses
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i98, 2
  %5 = getelementptr inbounds nuw i8, ptr %i.adr, i64 16
  %i.aie = load ptr, ptr %5, align 8, !tbaa !21   ; 2 uses
  %.not.i102 = icmp eq ptr %i.aie, null
  br i1 %.not.i102, label %._crit_edge.i103, label %bb.ei, !llvm.loop !181

._crit_edge.i103:                                 ; preds = %nsvg__parseCoordinate.exit100.tail.thread.i
  %i.aif = fcmp ogt float %.1.i100, 0.000000e+00
  br i1 %i.aif, label %bb.fk, label %nsvg__parseCircle.exit

bb.fk:                                            ; preds = %._crit_edge.i103
  %i.aig = getelementptr inbounds nuw i8, ptr %0, i64 39952 ; 3 uses
  store i32 0, ptr %i.aig, align 8, !tbaa !83
  %i.aih = fadd float %.288.i, %.1.i100           ; 4 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %0, i64 39956 ; 2 uses
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !84 ; 3 uses
  %.not.i.i.i104 = icmp sgt i32 %i.aij, 0
  br i1 %.not.i.i.i104, label %._crit_edge.i.i.i111, label %bb.fl

._crit_edge.i.i.i111:                             ; preds = %bb.fk
  %.phi.trans.insert.i.i.i112 = getelementptr inbounds nuw i8, ptr %0, i64 39944
  %.pre.i.i.i113 = load ptr, ptr %.phi.trans.insert.i.i.i112, align 8, !tbaa !79
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %.not16.i.i.i105 = icmp eq i32 %i.aij, 0
  %i.aik = shl nsw i32 %i.aij, 1
  %spec.select.i.i.i106 = select i1 %.not16.i.i.i105, i32 8, i32 %i.aik ; 2 uses
  store i32 %spec.select.i.i.i106, ptr %i.aii, align 4, !tbaa !84
  %i.ail = getelementptr inbounds nuw i8, ptr %0, i64 39944 ; 2 uses
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !79
  %i.ain = shl nsw i32 %spec.select.i.i.i106, 1
  %i.aio = sext i32 %i.ain to i64
  %i.aip = shl nsw i64 %i.aio, 2
  %i.aiq = tail call ptr @realloc(ptr noundef %i.aim, i64 noundef %i.aip) #32 ; 3 uses
  store ptr %i.aiq, ptr %i.ail, align 8, !tbaa !79
  %.not17.i.i.i107 = icmp eq ptr %i.aiq, null
  br i1 %.not17.i.i.i107, label %nsvg__moveTo.exit.i110, label %._crit_edge18.i.i.i108

._crit_edge18.i.i.i108:                           ; preds = %bb.fl
  %.pre19.i.i.i109 = load i32, ptr %i.aig, align 8, !tbaa !83
  br label %bb.fm

bb.fm:                                            ; preds = %._crit_edge18.i.i.i108, %._crit_edge.i.i.i111
  %i.air = phi i32 [ 0, %._crit_edge.i.i.i111 ], [ %.pre19.i.i.i109, %._crit_edge18.i.i.i108 ] ; 2 uses
  %i.ais = phi ptr [ %.pre.i.i.i113, %._crit_edge.i.i.i111 ], [ %i.aiq, %._crit_edge18.i.i.i108 ]
  %i.ait = shl nsw i32 %i.air, 1
  %i.aiu = sext i32 %i.ait to i64
  %i.aiv = getelementptr inbounds [4 x i8], ptr %i.ais, i64 %i.aiu ; 2 uses
  store float %i.aih, ptr %i.aiv, align 4, !tbaa !31
  %i.aiw = getelementptr i8, ptr %i.aiv, i64 4
  store float %.2.i99, ptr %i.aiw, align 4, !tbaa !31
  %i.aix = add nsw i32 %i.air, 1
  store i32 %i.aix, ptr %i.aig, align 8, !tbaa !83
  br label %nsvg__moveTo.exit.i110

nsvg__moveTo.exit.i110:                           ; preds = %bb.fm, %bb.fl
  %i.aiy = tail call float @llvm.fmuladd.f32(float %.1.i100, float f0x3F0D6289, float %.2.i99) ; 2 uses
  %i.aiz = tail call float @llvm.fmuladd.f32(float %.1.i100, float f0x3F0D6289, float %.288.i) ; 2 uses
  %i.aja = fadd float %.2.i99, %.1.i100           ; 3 uses
  tail call fastcc void @nsvg__cubicBezTo(ptr noundef nonnull %0, float noundef %i.aih, float noundef %i.aiy, float noundef %i.aiz, float noundef %i.aja, float noundef %.288.i, float noundef %i.aja)
  %i.ajb = fneg float %.1.i100                    ; 2 uses
  %i.ajc = tail call float @llvm.fmuladd.f32(float %i.ajb, float f0x3F0D6289, float %.288.i) ; 2 uses
  %i.ajd = fsub float %.288.i, %.1.i100           ; 3 uses
  tail call fastcc void @nsvg__cubicBezTo(ptr noundef nonnull %0, float noundef %i.ajc, float noundef %i.aja, float noundef %i.ajd, float noundef %i.aiy, float noundef %i.ajd, float noundef %.2.i99)
  %i.aje = tail call float @llvm.fmuladd.f32(float %i.ajb, float f0x3F0D6289, float %.2.i99) ; 2 uses
  %i.ajf = fsub float %.2.i99, %.1.i100           ; 3 uses
  tail call fastcc void @nsvg__cubicBezTo(ptr noundef nonnull %0, float noundef %i.ajd, float noundef %i.aje, float noundef %i.ajc, float noundef %i.ajf, float noundef %.288.i, float noundef %i.ajf)
  tail call fastcc void @nsvg__cubicBezTo(ptr noundef nonnull %0, float noundef %i.aiz, float noundef %i.ajf, float noundef %i.aih, float noundef %i.aje, float noundef %i.aih, float noundef %.2.i99)
  tail call fastcc void @nsvg__addPath(ptr noundef nonnull %0, i8 noundef signext 1)
  tail call fastcc void @nsvg__addShape(ptr noundef nonnull %0)
  br label %nsvg__parseCircle.exit

nsvg__parseCircle.exit:                           ; preds = %nsvg__pushAttr.exit96, %._crit_edge.i103, %nsvg__moveTo.exit.i110
  %i.ajg = load i32, ptr %i.adc, align 8, !tbaa !55 ; 2 uses
  %i.ajh = icmp sgt i32 %i.ajg, 0
  br i1 %i.ajh, label %bb.fn, label %nsvg__popAttr.exit

bb.fn:                                            ; preds = %nsvg__parseCircle.exit
  %i.aji = add nsw i32 %i.ajg, -1
  store i32 %i.aji, ptr %i.adc, align 8, !tbaa !55
  br label %nsvg__popAttr.exit

bb.fo:                                            ; preds = %bb.ef
  %i.ajj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.20) #31
  %i.ajk = icmp eq i32 %i.ajj, 0
  br i1 %i.ajk, label %bb.fp, label %bb.hg

bb.fp:                                            ; preds = %bb.fo
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 39936 ; 8 uses
  %i.ajm = load i32, ptr %i.ajl, align 8, !tbaa !55 ; 3 uses
  %i.ajn = icmp slt i32 %i.ajm, 127
  br i1 %i.ajn, label %bb.fq, label %nsvg__pushAttr.exit124

bb.fq:                                            ; preds = %bb.fp
  %i.ajo = add nsw i32 %i.ajm, 1                  ; 2 uses
  store i32 %i.ajo, ptr %i.ajl, align 8, !tbaa !55
  %i.ajp = sext i32 %i.ajo to i64
  %i.ajq = getelementptr inbounds [312 x i8], ptr %0, i64 %i.ajp
  %i.ajr = sext i32 %i.ajm to i64
  %i.ajs = getelementptr inbounds [312 x i8], ptr %0, i64 %i.ajr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.ajq, ptr noundef nonnull align 8 dereferenceable(312) %i.ajs, i64 312, i1 false)
  br label %nsvg__pushAttr.exit124

nsvg__pushAttr.exit124:                           ; preds = %bb.fp, %bb.fq
  %i.ajt = load ptr, ptr %2, align 8, !tbaa !21   ; 2 uses
  %.not135.i = icmp eq ptr %i.ajt, null
  br i1 %.not135.i, label %nsvg__parseEllipse.exit, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %nsvg__pushAttr.exit124
  %i.aju = getelementptr i8, ptr %0, i64 40000
  %i.ajv = getelementptr i8, ptr %0, i64 40008    ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %0, i64 40028 ; 20 uses
  %i.ajx = getelementptr i8, ptr %0, i64 40004
  %i.ajy = getelementptr i8, ptr %0, i64 40012    ; 2 uses
  br label %bb.fr

bb.fr:                                            ; preds = %.tail130.thread.i, %.lr.ph.i125
  %indvars.iv.i126 = phi i64 [ 0, %.lr.ph.i125 ], [ %indvars.iv.next.i129, %.tail130.thread.i ] ; 2 uses
  %i.ajz = phi ptr [ %i.ajt, %.lr.ph.i125 ], [ %i.aps, %.tail130.thread.i ]
  %.091139.i = phi float [ 0.000000e+00, %.lr.ph.i125 ], [ %.1.i128, %.tail130.thread.i ] ; 6 uses
  %.092138.i = phi float [ 0.000000e+00, %.lr.ph.i125 ], [ %.2.i127, %.tail130.thread.i ] ; 4 uses
  %.094137.i = phi float [ 0.000000e+00, %.lr.ph.i125 ], [ %.296.i, %.tail130.thread.i ] ; 4 uses
  %.097136.i = phi float [ 0.000000e+00, %.lr.ph.i125 ], [ %.299.i, %.tail130.thread.i ] ; 4 uses
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i126 ; 6 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 8 ; 5 uses
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !21
  %i.akd = tail call fastcc i32 @nsvg__parseAttr(ptr noundef %0, ptr noundef %i.ajz, ptr noundef %i.akc)
  %.not101.i = icmp eq i32 %i.akd, 0
  br i1 %.not101.i, label %sub_0.i143, label %.tail130.thread.i

sub_0.i143:                                       ; preds = %bb.fr
  %i.ake = load ptr, ptr %i.aka, align 8, !tbaa !21 ; 3 uses
  %i.akf = load i8, ptr %i.ake, align 1
  %.not144.i = icmp eq i8 %i.akf, 99
  br i1 %.not144.i, label %sub_1.i147, label %nsvg__parseCoordinate.exit.i144

sub_1.i147:                                       ; preds = %sub_0.i143
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ake, i64 1
  %i.akh = load i8, ptr %i.akg, align 1
  %.not145.i = icmp eq i8 %i.akh, 120
  br i1 %.not145.i, label %.tail.i148, label %nsvg__parseCoordinate.exit.i144

.tail.i148:                                       ; preds = %sub_1.i147
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ake, i64 2
  %i.akj = load i8, ptr %i.aki, align 1
  %i.akk = icmp eq i8 %i.akj, 0
  br i1 %i.akk, label %bb.fs, label %nsvg__parseCoordinate.exit.i144

bb.fs:                                            ; preds = %.tail.i148
  %i.akl = load ptr, ptr %i.akb, align 8, !tbaa !21
  %.val.i149 = load float, ptr %i.aju, align 8, !tbaa !51
  %.val104.i = load float, ptr %i.ajv, align 8, !tbaa !49
  %i.akm = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.akl) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i150 = trunc i64 %i.akm to i32
  %i.akn = bitcast i32 %.sroa.0.0.extract.trunc.i.i.i150 to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i.i151 = lshr i64 %i.akm, 32
  %.sroa.12.0.extract.trunc.i.i.i152 = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i.i151 to i32
  %i.ako = load i32, ptr %i.ajl, align 8, !tbaa !55
  %i.akp = sext i32 %i.ako to i64
  %i.akq = getelementptr inbounds [312 x i8], ptr %0, i64 %i.akp ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i.i152, label %nsvg__parseCoordinate.exit.i144 [
    i32 7, label %bb.ga
    i32 9, label %bb.fz
    i32 2, label %bb.ft
    i32 3, label %bb.fu
    i32 4, label %bb.fv
    i32 5, label %bb.fw
    i32 6, label %bb.fx
    i32 8, label %bb.fy
  ]

bb.ft:                                            ; preds = %bb.fs
  %i.akr = fdiv float %i.akn, 7.200000e+01
  %i.aks = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.akt = fmul float %i.akr, %i.aks
  br label %nsvg__parseCoordinate.exit.i144

bb.fu:                                            ; preds = %bb.fs
  %i.aku = fdiv float %i.akn, 6.000000e+00
  %i.akv = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.akw = fmul float %i.aku, %i.akv
  br label %nsvg__parseCoordinate.exit.i144

bb.fv:                                            ; preds = %bb.fs
  %i.akx = fdiv float %i.akn, 2.540000e+01
  %i.aky = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.akz = fmul float %i.akx, %i.aky
  br label %nsvg__parseCoordinate.exit.i144

bb.fw:                                            ; preds = %bb.fs
  %i.ala = fdiv float %i.akn, 2.540000e+00
  %i.alb = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.alc = fmul float %i.ala, %i.alb
  br label %nsvg__parseCoordinate.exit.i144

bb.fx:                                            ; preds = %bb.fs
  %i.ald = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.ale = fmul float %i.ald, %i.akn
  br label %nsvg__parseCoordinate.exit.i144

bb.fy:                                            ; preds = %bb.fs
  %i.alf = getelementptr inbounds nuw i8, ptr %i.akq, i64 292
  %i.alg = load float, ptr %i.alf, align 4, !tbaa !56
  %i.alh = fmul float %i.alg, %i.akn
  br label %nsvg__parseCoordinate.exit.i144

bb.fz:                                            ; preds = %bb.fs
  %i.ali = getelementptr inbounds nuw i8, ptr %i.akq, i64 292
  %i.alj = load float, ptr %i.ali, align 4, !tbaa !56
  %i.alk = fmul float %i.alj, %i.akn
  %i.all = fmul float %i.alk, 5.200000e-01
  br label %nsvg__parseCoordinate.exit.i144

bb.ga:                                            ; preds = %bb.fs
  %i.alm = fdiv float %i.akn, 1.000000e+02
  %i.aln = tail call float @llvm.fmuladd.f32(float %i.alm, float %.val104.i, float %.val.i149)
  br label %nsvg__parseCoordinate.exit.i144

nsvg__parseCoordinate.exit.i144:                  ; preds = %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %.tail.i148, %sub_1.i147, %sub_0.i143
  %.198.i = phi float [ %.097136.i, %.tail.i148 ], [ %i.alh, %bb.fy ], [ %i.aln, %bb.ga ], [ %i.all, %bb.fz ], [ %i.akt, %bb.ft ], [ %i.akw, %bb.fu ], [ %i.akz, %bb.fv ], [ %i.alc, %bb.fw ], [ %i.ale, %bb.fx ], [ %i.akn, %bb.fs ], [ %.097136.i, %sub_0.i143 ], [ %.097136.i, %sub_1.i147 ] ; 6 uses
  %i.alo = load ptr, ptr %i.aka, align 8, !tbaa !21 ; 3 uses
  %i.alp = load i8, ptr %i.alo, align 1
  %.not146.i = icmp eq i8 %i.alp, 99
  br i1 %.not146.i, label %sub_1123.i, label %nsvg__parseCoordinate.exit111.i

sub_1123.i:                                       ; preds = %nsvg__parseCoordinate.exit.i144
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alo, i64 1
  %i.alr = load i8, ptr %i.alq, align 1
  %.not147.i = icmp eq i8 %i.alr, 121
  br i1 %.not147.i, label %nsvg__parseCoordinate.exit.tail.i146, label %nsvg__parseCoordinate.exit111.i

nsvg__parseCoordinate.exit.tail.i146:             ; preds = %sub_1123.i
  %i.als = getelementptr inbounds nuw i8, ptr %i.alo, i64 2
  %i.alt = load i8, ptr %i.als, align 1
  %i.alu = icmp eq i8 %i.alt, 0
  br i1 %i.alu, label %bb.gb, label %nsvg__parseCoordinate.exit111.i

bb.gb:                                            ; preds = %nsvg__parseCoordinate.exit.tail.i146
  %i.alv = load ptr, ptr %i.akb, align 8, !tbaa !21
  %.val102.i = load float, ptr %i.ajx, align 4, !tbaa !54
  %.val106.i = load float, ptr %i.ajy, align 4, !tbaa !52
  %i.alw = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.alv) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i107.i = trunc i64 %i.alw to i32
  %i.alx = bitcast i32 %.sroa.0.0.extract.trunc.i.i107.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i108.i = lshr i64 %i.alw, 32
  %.sroa.12.0.extract.trunc.i.i109.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i108.i to i32
  %i.aly = load i32, ptr %i.ajl, align 8, !tbaa !55
  %i.alz = sext i32 %i.aly to i64
  %i.ama = getelementptr inbounds [312 x i8], ptr %0, i64 %i.alz ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i109.i, label %nsvg__parseCoordinate.exit111.i [
    i32 7, label %bb.gj
    i32 9, label %bb.gi
    i32 2, label %bb.gc
    i32 3, label %bb.gd
    i32 4, label %bb.ge
    i32 5, label %bb.gf
    i32 6, label %bb.gg
    i32 8, label %bb.gh
  ]

bb.gc:                                            ; preds = %bb.gb
  %i.amb = fdiv float %i.alx, 7.200000e+01
  %i.amc = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.amd = fmul float %i.amb, %i.amc
  br label %nsvg__parseCoordinate.exit111.i

bb.gd:                                            ; preds = %bb.gb
  %i.ame = fdiv float %i.alx, 6.000000e+00
  %i.amf = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.amg = fmul float %i.ame, %i.amf
  br label %nsvg__parseCoordinate.exit111.i

bb.ge:                                            ; preds = %bb.gb
  %i.amh = fdiv float %i.alx, 2.540000e+01
  %i.ami = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.amj = fmul float %i.amh, %i.ami
  br label %nsvg__parseCoordinate.exit111.i

bb.gf:                                            ; preds = %bb.gb
  %i.amk = fdiv float %i.alx, 2.540000e+00
  %i.aml = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.amm = fmul float %i.amk, %i.aml
  br label %nsvg__parseCoordinate.exit111.i

bb.gg:                                            ; preds = %bb.gb
  %i.amn = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.amo = fmul float %i.amn, %i.alx
  br label %nsvg__parseCoordinate.exit111.i

bb.gh:                                            ; preds = %bb.gb
  %i.amp = getelementptr inbounds nuw i8, ptr %i.ama, i64 292
  %i.amq = load float, ptr %i.amp, align 4, !tbaa !56
  %i.amr = fmul float %i.amq, %i.alx
  br label %nsvg__parseCoordinate.exit111.i

bb.gi:                                            ; preds = %bb.gb
  %i.ams = getelementptr inbounds nuw i8, ptr %i.ama, i64 292
  %i.amt = load float, ptr %i.ams, align 4, !tbaa !56
  %i.amu = fmul float %i.amt, %i.alx
  %i.amv = fmul float %i.amu, 5.200000e-01
  br label %nsvg__parseCoordinate.exit111.i

bb.gj:                                            ; preds = %bb.gb
  %i.amw = fdiv float %i.alx, 1.000000e+02
  %i.amx = tail call float @llvm.fmuladd.f32(float %i.amw, float %.val106.i, float %.val102.i)
  br label %nsvg__parseCoordinate.exit111.i

nsvg__parseCoordinate.exit111.i:                  ; preds = %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %nsvg__parseCoordinate.exit.tail.i146, %sub_1123.i, %nsvg__parseCoordinate.exit.i144
  %.195.i = phi float [ %.094137.i, %nsvg__parseCoordinate.exit.tail.i146 ], [ %i.amr, %bb.gh ], [ %i.amx, %bb.gj ], [ %i.amv, %bb.gi ], [ %i.amd, %bb.gc ], [ %i.amg, %bb.gd ], [ %i.amj, %bb.ge ], [ %i.amm, %bb.gf ], [ %i.amo, %bb.gg ], [ %i.alx, %bb.gb ], [ %.094137.i, %nsvg__parseCoordinate.exit.i144 ], [ %.094137.i, %sub_1123.i ] ; 6 uses
  %i.amy = load ptr, ptr %i.aka, align 8, !tbaa !21 ; 4 uses
  %i.amz = load i8, ptr %i.amy, align 1
  %.not148.i = icmp eq i8 %i.amz, 114
  br i1 %.not148.i, label %sub_1127.i, label %.tail130.thread.i

sub_1127.i:                                       ; preds = %nsvg__parseCoordinate.exit111.i
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amy, i64 1
  %i.anb = load i8, ptr %i.ana, align 1           ; 2 uses
  %.not149.i = icmp eq i8 %i.anb, 120
  br i1 %.not149.i, label %nsvg__parseCoordinate.exit111.tail.i, label %sub_1132.i

nsvg__parseCoordinate.exit111.tail.i:             ; preds = %sub_1127.i
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amy, i64 2
  %i.and = load i8, ptr %i.anc, align 1
  %i.ane = icmp eq i8 %i.and, 0
  br i1 %i.ane, label %bb.gk, label %.tail130.thread.i

bb.gk:                                            ; preds = %nsvg__parseCoordinate.exit111.tail.i
  %i.anf = load ptr, ptr %i.akb, align 8, !tbaa !21
  %.val103.i = load float, ptr %i.ajv, align 8, !tbaa !49
  %i.ang = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.anf) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i112.i = trunc i64 %i.ang to i32
  %i.anh = bitcast i32 %.sroa.0.0.extract.trunc.i.i112.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i113.i = lshr i64 %i.ang, 32
  %.sroa.12.0.extract.trunc.i.i114.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i113.i to i32
  %i.ani = load i32, ptr %i.ajl, align 8, !tbaa !55
  %i.anj = sext i32 %i.ani to i64
  %i.ank = getelementptr inbounds [312 x i8], ptr %0, i64 %i.anj ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i114.i, label %sub_0131.i [
    i32 7, label %bb.gs
    i32 9, label %bb.gr
    i32 2, label %bb.gl
    i32 3, label %bb.gm
    i32 4, label %bb.gn
    i32 5, label %bb.go
    i32 6, label %bb.gp
    i32 8, label %bb.gq
  ]

bb.gl:                                            ; preds = %bb.gk
  %i.anl = fdiv float %i.anh, 7.200000e+01
  %i.anm = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.ann = fmul float %i.anl, %i.anm
  br label %sub_0131.i

bb.gm:                                            ; preds = %bb.gk
  %i.ano = fdiv float %i.anh, 6.000000e+00
  %i.anp = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.anq = fmul float %i.ano, %i.anp
  br label %sub_0131.i

bb.gn:                                            ; preds = %bb.gk
  %i.anr = fdiv float %i.anh, 2.540000e+01
  %i.ans = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.ant = fmul float %i.anr, %i.ans
  br label %sub_0131.i

bb.go:                                            ; preds = %bb.gk
  %i.anu = fdiv float %i.anh, 2.540000e+00
  %i.anv = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.anw = fmul float %i.anu, %i.anv
  br label %sub_0131.i

bb.gp:                                            ; preds = %bb.gk
  %i.anx = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.any = fmul float %i.anx, %i.anh
  br label %sub_0131.i

bb.gq:                                            ; preds = %bb.gk
  %i.anz = getelementptr inbounds nuw i8, ptr %i.ank, i64 292
  %i.aoa = load float, ptr %i.anz, align 4, !tbaa !56
  %i.aob = fmul float %i.aoa, %i.anh
  br label %sub_0131.i

bb.gr:                                            ; preds = %bb.gk
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.ank, i64 292
  %i.aod = load float, ptr %i.aoc, align 4, !tbaa !56
  %i.aoe = fmul float %i.aod, %i.anh
  %i.aof = fmul float %i.aoe, 5.200000e-01
  br label %sub_0131.i

bb.gs:                                            ; preds = %bb.gk
  %i.aog = fdiv float %i.anh, 1.000000e+02
  %i.aoh = tail call float @llvm.fmuladd.f32(float %i.aog, float %.val103.i, float 0.000000e+00)
  br label %sub_0131.i

sub_0131.i:                                       ; preds = %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk
  %.0.i.i115.i = phi float [ %i.aob, %bb.gq ], [ %i.aoh, %bb.gs ], [ %i.aof, %bb.gr ], [ %i.ann, %bb.gl ], [ %i.anq, %bb.gm ], [ %i.ant, %bb.gn ], [ %i.anw, %bb.go ], [ %i.any, %bb.gp ], [ %i.anh, %bb.gk ]
  %i.aoi = tail call float @llvm.fabs.f32(float %.0.i.i115.i) ; 2 uses
  %.pre.i145 = load ptr, ptr %i.aka, align 8, !tbaa !21 ; 3 uses
  %.pre153.i = load i8, ptr %.pre.i145, align 1
  %.not150.i = icmp eq i8 %.pre153.i, 114
  br i1 %.not150.i, label %sub_0131.i.sub_1132.i_crit_edge, label %.tail130.thread.i

sub_0131.i.sub_1132.i_crit_edge:                  ; preds = %sub_0131.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.i145, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %sub_1132.i

sub_1132.i:                                       ; preds = %sub_0131.i.sub_1132.i_crit_edge, %sub_1127.i
  %i.aoj = phi i8 [ %.pre, %sub_0131.i.sub_1132.i_crit_edge ], [ %i.anb, %sub_1127.i ]
  %.193160.i = phi float [ %i.aoi, %sub_0131.i.sub_1132.i_crit_edge ], [ %.092138.i, %sub_1127.i ] ; 3 uses
  %i.aok = phi ptr [ %.pre.i145, %sub_0131.i.sub_1132.i_crit_edge ], [ %i.amy, %sub_1127.i ]
  %.not151.i = icmp eq i8 %i.aoj, 121
  br i1 %.not151.i, label %.tail130.i, label %.tail130.thread.i

.tail130.i:                                       ; preds = %sub_1132.i
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 2
  %i.aom = load i8, ptr %i.aol, align 1
  %i.aon = icmp eq i8 %i.aom, 0
  br i1 %i.aon, label %bb.gt, label %.tail130.thread.i

bb.gt:                                            ; preds = %.tail130.i
  %i.aoo = load ptr, ptr %i.akb, align 8, !tbaa !21
  %.val105.i = load float, ptr %i.ajy, align 4, !tbaa !52
  %i.aop = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.aoo) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i117.i = trunc i64 %i.aop to i32
  %i.aoq = bitcast i32 %.sroa.0.0.extract.trunc.i.i117.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i118.i = lshr i64 %i.aop, 32
  %.sroa.12.0.extract.trunc.i.i119.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i118.i to i32
  %i.aor = load i32, ptr %i.ajl, align 8, !tbaa !55
  %i.aos = sext i32 %i.aor to i64
  %i.aot = getelementptr inbounds [312 x i8], ptr %0, i64 %i.aos ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i119.i, label %nsvg__parseCoordinate.exit121.i [
    i32 7, label %bb.hb
    i32 9, label %bb.ha
    i32 2, label %bb.gu
    i32 3, label %bb.gv
    i32 4, label %bb.gw
    i32 5, label %bb.gx
    i32 6, label %bb.gy
    i32 8, label %bb.gz
  ]

bb.gu:                                            ; preds = %bb.gt
  %i.aou = fdiv float %i.aoq, 7.200000e+01
  %i.aov = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.aow = fmul float %i.aou, %i.aov
  br label %nsvg__parseCoordinate.exit121.i

bb.gv:                                            ; preds = %bb.gt
  %i.aox = fdiv float %i.aoq, 6.000000e+00
  %i.aoy = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.aoz = fmul float %i.aox, %i.aoy
  br label %nsvg__parseCoordinate.exit121.i

bb.gw:                                            ; preds = %bb.gt
  %i.apa = fdiv float %i.aoq, 2.540000e+01
  %i.apb = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.apc = fmul float %i.apa, %i.apb
  br label %nsvg__parseCoordinate.exit121.i

bb.gx:                                            ; preds = %bb.gt
  %i.apd = fdiv float %i.aoq, 2.540000e+00
  %i.ape = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.apf = fmul float %i.apd, %i.ape
  br label %nsvg__parseCoordinate.exit121.i

bb.gy:                                            ; preds = %bb.gt
  %i.apg = load float, ptr %i.ajw, align 4, !tbaa !40
  %i.aph = fmul float %i.apg, %i.aoq
  br label %nsvg__parseCoordinate.exit121.i

bb.gz:                                            ; preds = %bb.gt
  %i.api = getelementptr inbounds nuw i8, ptr %i.aot, i64 292
  %i.apj = load float, ptr %i.api, align 4, !tbaa !56
  %i.apk = fmul float %i.apj, %i.aoq
  br label %nsvg__parseCoordinate.exit121.i

bb.ha:                                            ; preds = %bb.gt
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aot, i64 292
  %i.apm = load float, ptr %i.apl, align 4, !tbaa !56
  %i.apn = fmul float %i.apm, %i.aoq
  %i.apo = fmul float %i.apn, 5.200000e-01
  br label %nsvg__parseCoordinate.exit121.i

bb.hb:                                            ; preds = %bb.gt
  %i.app = fdiv float %i.aoq, 1.000000e+02
  %i.apq = tail call float @llvm.fmuladd.f32(float %i.app, float %.val105.i, float 0.000000e+00)
  br label %nsvg__parseCoordinate.exit121.i

nsvg__parseCoordinate.exit121.i:                  ; preds = %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt
  %.0.i.i120.i = phi float [ %i.apk, %bb.gz ], [ %i.apq, %bb.hb ], [ %i.apo, %bb.ha ], [ %i.aow, %bb.gu ], [ %i.aoz, %bb.gv ], [ %i.apc, %bb.gw ], [ %i.apf, %bb.gx ], [ %i.aph, %bb.gy ], [ %i.aoq, %bb.gt ]
  %i.apr = tail call float @llvm.fabs.f32(float %.0.i.i120.i)
  br label %.tail130.thread.i

.tail130.thread.i:                                ; preds = %nsvg__parseCoordinate.exit111.tail.i, %nsvg__parseCoordinate.exit121.i, %.tail130.i, %sub_1132.i, %sub_0131.i, %nsvg__parseCoordinate.exit111.i, %bb.fr
  %.299.i = phi float [ %.097136.i, %bb.fr ], [ %.198.i, %nsvg__parseCoordinate.exit121.i ], [ %.198.i, %.tail130.i ], [ %.198.i, %sub_0131.i ], [ %.198.i, %sub_1132.i ], [ %.198.i, %nsvg__parseCoordinate.exit111.i ], [ %.198.i, %nsvg__parseCoordinate.exit111.tail.i ] ; 7 uses
  %.296.i = phi float [ %.094137.i, %bb.fr ], [ %.195.i, %nsvg__parseCoordinate.exit121.i ], [ %.195.i, %.tail130.i ], [ %.195.i, %sub_0131.i ], [ %.195.i, %sub_1132.i ], [ %.195.i, %nsvg__parseCoordinate.exit111.i ], [ %.195.i, %nsvg__parseCoordinate.exit111.tail.i ] ; 8 uses
  %.2.i127 = phi float [ %.092138.i, %bb.fr ], [ %.193160.i, %nsvg__parseCoordinate.exit121.i ], [ %.193160.i, %.tail130.i ], [ %i.aoi, %sub_0131.i ], [ %.193160.i, %sub_1132.i ], [ %.092138.i, %nsvg__parseCoordinate.exit111.i ], [ %.092138.i, %nsvg__parseCoordinate.exit111.tail.i ] ; 6 uses
  %.1.i128 = phi float [ %.091139.i, %bb.fr ], [ %i.apr, %nsvg__parseCoordinate.exit121.i ], [ %.091139.i, %.tail130.i ], [ %.091139.i, %sub_0131.i ], [ %.091139.i, %sub_1132.i ], [ %.091139.i, %nsvg__parseCoordinate.exit111.i ], [ %.091139.i, %nsvg__parseCoordinate.exit111.tail.i ] ; 6 uses
  %indvars.iv.next.i129 = add nuw nsw i64 %indvars.iv.i126, 2
  %6 = getelementptr inbounds nuw i8, ptr %i.aka, i64 16
  %i.aps = load ptr, ptr %6, align 8, !tbaa !21   ; 2 uses
  %.not.i130 = icmp eq ptr %i.aps, null
  br i1 %.not.i130, label %._crit_edge.i131, label %bb.fr, !llvm.loop !182

._crit_edge.i131:                                 ; preds = %.tail130.thread.i
  %i.apt = fcmp ogt float %.2.i127, 0.000000e+00
  %i.apu = fcmp ogt float %.1.i128, 0.000000e+00
  %or.cond.i132 = select i1 %i.apt, i1 %i.apu, i1 false
  br i1 %or.cond.i132, label %bb.hc, label %nsvg__parseEllipse.exit

bb.hc:                                            ; preds = %._crit_edge.i131
  %i.apv = getelementptr inbounds nuw i8, ptr %0, i64 39952 ; 3 uses
  store i32 0, ptr %i.apv, align 8, !tbaa !83
  %i.apw = fadd float %.299.i, %.2.i127           ; 4 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %0, i64 39956 ; 2 uses
  %i.apy = load i32, ptr %i.apx, align 4, !tbaa !84 ; 3 uses
  %.not.i.i.i133 = icmp sgt i32 %i.apy, 0
  br i1 %.not.i.i.i133, label %._crit_edge.i.i.i140, label %bb.hd

._crit_edge.i.i.i140:                             ; preds = %bb.hc
  %.phi.trans.insert.i.i.i141 = getelementptr inbounds nuw i8, ptr %0, i64 39944
  %.pre.i.i.i142 = load ptr, ptr %.phi.trans.insert.i.i.i141, align 8, !tbaa !79
  br label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %.not16.i.i.i134 = icmp eq i32 %i.apy, 0
  %i.apz = shl nsw i32 %i.apy, 1
  %spec.select.i.i.i135 = select i1 %.not16.i.i.i134, i32 8, i32 %i.apz ; 2 uses
  store i32 %spec.select.i.i.i135, ptr %i.apx, align 4, !tbaa !84
  %i.aqa = getelementptr inbounds nuw i8, ptr %0, i64 39944 ; 2 uses
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !79
  %i.aqc = shl nsw i32 %spec.select.i.i.i135, 1
  %i.aqd = sext i32 %i.aqc to i64
  %i.aqe = shl nsw i64 %i.aqd, 2
  %i.aqf = tail call ptr @realloc(ptr noundef %i.aqb, i64 noundef %i.aqe) #32 ; 3 uses
  store ptr %i.aqf, ptr %i.aqa, align 8, !tbaa !79
  %.not17.i.i.i136 = icmp eq ptr %i.aqf, null
  br i1 %.not17.i.i.i136, label %nsvg__moveTo.exit.i139, label %._crit_edge18.i.i.i137

._crit_edge18.i.i.i137:                           ; preds = %bb.hd
  %.pre19.i.i.i138 = load i32, ptr %i.apv, align 8, !tbaa !83
  br label %bb.he

bb.he:                                            ; preds = %._crit_edge18.i.i.i137, %._crit_edge.i.i.i140
  %i.aqg = phi i32 [ 0, %._crit_edge.i.i.i140 ], [ %.pre19.i.i.i138, %._crit_edge18.i.i.i137 ] ; 2 uses
  %i.aqh = phi ptr [ %.pre.i.i.i142, %._crit_edge.i.i.i140 ], [ %i.aqf, %._crit_edge18.i.i.i137 ]
  %i.aqi = shl nsw i32 %i.aqg, 1
  %i.aqj = sext i32 %i.aqi to i64
  %i.aqk = getelementptr inbounds [4 x i8], ptr %i.aqh, i64 %i.aqj ; 2 uses
  store float %i.apw, ptr %i.aqk, align 4, !tbaa !31
  %i.aql = getelementptr i8, ptr %i.aqk, i64 4
  store float %.296.i, ptr %i.aql, align 4, !tbaa !31
  %i.aqm = add nsw i32 %i.aqg, 1
  store i32 %i.aqm, ptr %i.apv, align 8, !tbaa !83
  br label %nsvg__moveTo.exit.i139

nsvg__moveTo.exit.i139:                           ; preds = %bb.he, %bb.hd
  %i.aqn = tail call float @llvm.fmuladd.f32(float %.1.i128, float f0x3F0D6289, float %.296.i) ; 2 uses
  %i.aqo = tail call float @llvm.fmuladd.f32(float %.2.i127, float f0x3F0D6289, float %.299.i) ; 2 uses
  %i.aqp = fadd float %.296.i, %.1.i128           ; 3 uses
  tail call fastcc void @nsvg__cubicBezTo(ptr noundef nonnull %0, float noundef %i.apw, float noundef %i.aqn, float noundef %i.aqo, float noundef %i.aqp, float noundef %.299.i, float noundef %i.aqp)
  %i.aqq = fneg float %.2.i127
  %i.aqr = tail call float @llvm.fmuladd.f32(float %i.aqq, float f0x3F0D6289, float %.299.i) ; 2 uses
  %i.aqs = fsub float %.299.i, %.2.i127           ; 3 uses
  tail call fastcc void @nsvg__cubicBezTo(ptr noundef nonnull %0, float noundef %i.aqr, float noundef %i.aqp, float noundef %i.aqs, float noundef %i.aqn, float noundef %i.aqs, float noundef %.296.i)
  %i.aqt = fneg float %.1.i128
  %i.aqu = tail call float @llvm.fmuladd.f32(float %i.aqt, float f0x3F0D6289, float %.296.i) ; 2 uses
  %i.aqv = fsub float %.296.i, %.1.i128           ; 3 uses
  tail call fastcc void @nsvg__cubicBezTo(ptr noundef nonnull %0, float noundef %i.aqs, float noundef %i.aqu, float noundef %i.aqr, float noundef %i.aqv, float noundef %.299.i, float noundef %i.aqv)
  tail call fastcc void @nsvg__cubicBezTo(ptr noundef nonnull %0, float noundef %i.aqo, float noundef %i.aqv, float noundef %i.apw, float noundef %i.aqu, float noundef %i.apw, float noundef %.296.i)
  tail call fastcc void @nsvg__addPath(ptr noundef nonnull %0, i8 noundef signext 1)
  tail call fastcc void @nsvg__addShape(ptr noundef nonnull %0)
  br label %nsvg__parseEllipse.exit

nsvg__parseEllipse.exit:                          ; preds = %nsvg__pushAttr.exit124, %._crit_edge.i131, %nsvg__moveTo.exit.i139
  %i.aqw = load i32, ptr %i.ajl, align 8, !tbaa !55 ; 2 uses
  %i.aqx = icmp sgt i32 %i.aqw, 0
  br i1 %i.aqx, label %bb.hf, label %nsvg__popAttr.exit

bb.hf:                                            ; preds = %nsvg__parseEllipse.exit
  %i.aqy = add nsw i32 %i.aqw, -1
  store i32 %i.aqy, ptr %i.ajl, align 8, !tbaa !55
  br label %nsvg__popAttr.exit

bb.hg:                                            ; preds = %bb.fo
  %i.aqz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.21) #31
  %i.ara = icmp eq i32 %i.aqz, 0
  br i1 %i.ara, label %bb.hh, label %bb.hk

bb.hh:                                            ; preds = %bb.hg
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 39936 ; 4 uses
  %i.arc = load i32, ptr %i.arb, align 8, !tbaa !55 ; 3 uses
  %i.ard = icmp slt i32 %i.arc, 127
  br i1 %i.ard, label %bb.hi, label %nsvg__pushAttr.exit154

bb.hi:                                            ; preds = %bb.hh
  %i.are = add nsw i32 %i.arc, 1                  ; 2 uses
  store i32 %i.are, ptr %i.arb, align 8, !tbaa !55
  %i.arf = sext i32 %i.are to i64
  %i.arg = getelementptr inbounds [312 x i8], ptr %0, i64 %i.arf
  %i.arh = sext i32 %i.arc to i64
  %i.ari = getelementptr inbounds [312 x i8], ptr %0, i64 %i.arh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.arg, ptr noundef nonnull align 8 dereferenceable(312) %i.ari, i64 312, i1 false)
  br label %nsvg__pushAttr.exit154

nsvg__pushAttr.exit154:                           ; preds = %bb.hh, %bb.hi
  tail call fastcc void @nsvg__parseLine(ptr noundef nonnull %0, ptr noundef %2)
  %i.arj = load i32, ptr %i.arb, align 8, !tbaa !55 ; 2 uses
  %i.ark = icmp sgt i32 %i.arj, 0
  br i1 %i.ark, label %bb.hj, label %nsvg__popAttr.exit

bb.hj:                                            ; preds = %nsvg__pushAttr.exit154
  %i.arl = add nsw i32 %i.arj, -1
  store i32 %i.arl, ptr %i.arb, align 8, !tbaa !55
  br label %nsvg__popAttr.exit

bb.hk:                                            ; preds = %bb.hg
  %i.arm = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.22) #31
  %i.arn = icmp eq i32 %i.arm, 0
  br i1 %i.arn, label %bb.hl, label %bb.ho

bb.hl:                                            ; preds = %bb.hk
  %i.aro = getelementptr inbounds nuw i8, ptr %0, i64 39936 ; 4 uses
  %i.arp = load i32, ptr %i.aro, align 8, !tbaa !55 ; 3 uses
  %i.arq = icmp slt i32 %i.arp, 127
  br i1 %i.arq, label %bb.hm, label %nsvg__pushAttr.exit156

bb.hm:                                            ; preds = %bb.hl
  %i.arr = add nsw i32 %i.arp, 1                  ; 2 uses
  store i32 %i.arr, ptr %i.aro, align 8, !tbaa !55
  %i.ars = sext i32 %i.arr to i64
  %i.art = getelementptr inbounds [312 x i8], ptr %0, i64 %i.ars
  %i.aru = sext i32 %i.arp to i64
  %i.arv = getelementptr inbounds [312 x i8], ptr %0, i64 %i.aru
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.art, ptr noundef nonnull align 8 dereferenceable(312) %i.arv, i64 312, i1 false)
  br label %nsvg__pushAttr.exit156

nsvg__pushAttr.exit156:                           ; preds = %bb.hl, %bb.hm
  tail call fastcc void @nsvg__parsePoly(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 0)
  %i.arw = load i32, ptr %i.aro, align 8, !tbaa !55 ; 2 uses
  %i.arx = icmp sgt i32 %i.arw, 0
  br i1 %i.arx, label %bb.hn, label %nsvg__popAttr.exit

bb.hn:                                            ; preds = %nsvg__pushAttr.exit156
  %i.ary = add nsw i32 %i.arw, -1
  store i32 %i.ary, ptr %i.aro, align 8, !tbaa !55
  br label %nsvg__popAttr.exit

bb.ho:                                            ; preds = %bb.hk
  %i.arz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.23) #31
  %i.asa = icmp eq i32 %i.arz, 0
  br i1 %i.asa, label %bb.hp, label %bb.hs

bb.hp:                                            ; preds = %bb.ho
  %i.asb = getelementptr inbounds nuw i8, ptr %0, i64 39936 ; 4 uses
  %i.asc = load i32, ptr %i.asb, align 8, !tbaa !55 ; 3 uses
  %i.asd = icmp slt i32 %i.asc, 127
  br i1 %i.asd, label %bb.hq, label %nsvg__pushAttr.exit158

bb.hq:                                            ; preds = %bb.hp
  %i.ase = add nsw i32 %i.asc, 1                  ; 2 uses
  store i32 %i.ase, ptr %i.asb, align 8, !tbaa !55
  %i.asf = sext i32 %i.ase to i64
  %i.asg = getelementptr inbounds [312 x i8], ptr %0, i64 %i.asf
  %i.ash = sext i32 %i.asc to i64
  %i.asi = getelementptr inbounds [312 x i8], ptr %0, i64 %i.ash
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.asg, ptr noundef nonnull align 8 dereferenceable(312) %i.asi, i64 312, i1 false)
  br label %nsvg__pushAttr.exit158

nsvg__pushAttr.exit158:                           ; preds = %bb.hp, %bb.hq
  tail call fastcc void @nsvg__parsePoly(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 1)
  %i.asj = load i32, ptr %i.asb, align 8, !tbaa !55 ; 2 uses
  %i.ask = icmp sgt i32 %i.asj, 0
  br i1 %i.ask, label %bb.hr, label %nsvg__popAttr.exit

bb.hr:                                            ; preds = %nsvg__pushAttr.exit158
  %i.asl = add nsw i32 %i.asj, -1
  store i32 %i.asl, ptr %i.asb, align 8, !tbaa !55
  br label %nsvg__popAttr.exit

bb.hs:                                            ; preds = %bb.ho
  %i.asm = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.12) #31
  %i.asn = icmp eq i32 %i.asm, 0
  br i1 %i.asn, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  tail call fastcc void @nsvg__parseGradient(ptr noundef nonnull %0, ptr noundef %2, i8 noundef signext 2)
  br label %nsvg__popAttr.exit

bb.hu:                                            ; preds = %bb.hs
  %i.aso = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.13) #31
  %i.asp = icmp eq i32 %i.aso, 0
  br i1 %i.asp, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  tail call fastcc void @nsvg__parseGradient(ptr noundef nonnull %0, ptr noundef %2, i8 noundef signext 3)
  br label %nsvg__popAttr.exit

bb.hw:                                            ; preds = %bb.hu
  %i.asq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.14) #31
end_hunk_2
begin_hunk_3_@nsvg__initPaint:bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 908
  store <4 x i32> %broadcast.splat, ptr %i.cr, align 4, !tbaa !133
  store <4 x i32> %broadcast.splat, ptr %i.cs, align 4, !tbaa !133
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 940
  store <4 x i32> %broadcast.splat, ptr %i.ct, align 4, !tbaa !133
  store <4 x i32> %broadcast.splat, ptr %i.cu, align 4, !tbaa !133
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 956
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 972
  store <4 x i32> %broadcast.splat, ptr %i.cv, align 4, !tbaa !133
  store <4 x i32> %broadcast.splat, ptr %i.cw, align 4, !tbaa !133
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 988
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1004
  store <4 x i32> %broadcast.splat, ptr %i.cx, align 4, !tbaa !133
  store <4 x i32> %broadcast.splat, ptr %i.cy, align 4, !tbaa !133
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1036
  store <4 x i32> %broadcast.splat, ptr %i.cz, align 4, !tbaa !133
  store <4 x i32> %broadcast.splat, ptr %i.da, align 4, !tbaa !133
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.db = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 4 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !138 ; 2 uses
  %i.dd = fcmp uno float %2, 0.000000e+00         ; 2 uses
  br i1 %i.dd, label %nsvg__applyOpacity.exit82, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.de = fcmp olt float %2, 0.000000e+00
  %i.df = fcmp ogt float %2, 1.000000e+00
  %i.dg = select i1 %i.df, float 1.000000e+00, float %2
  %i.dh = fmul nnan float %i.dg, 2.560000e+02
  %i.di = select i1 %i.de, float 0.000000e+00, float %i.dh
  %i.dj = fptosi float %i.di to i32
  br label %nsvg__applyOpacity.exit82

nsvg__applyOpacity.exit82:                        ; preds = %bb.g, %bb.h
  %.0.i.i81 = phi i32 [ %i.dj, %bb.h ], [ 0, %bb.g ]
  %i.dk = and i32 %i.dc, 16777215
  %i.dl = lshr i32 %i.dc, 8
  %i.dm = and i32 %i.dl, 16711680
  %i.dn = mul i32 %.0.i.i81, %i.dm
  %i.do = and i32 %i.dn, -16777216
  %i.dp = or disjoint i32 %i.do, %i.dk            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !139 ; 5 uses
  %i.ds = fcmp uno float %i.dr, 0.000000e+00
  br i1 %i.ds, label %nsvg__clampf.exit, label %bb.i

bb.i:                                             ; preds = %nsvg__applyOpacity.exit82
  %i.dt = fcmp olt float %i.dr, 0.000000e+00
  %i.du = fcmp ogt float %i.dr, 1.000000e+00
  %i.dv = select i1 %i.du, float 1.000000e+00, float %i.dr
  %i.dw = select i1 %i.dt, float 0.000000e+00, float %i.dv
  br label %nsvg__clampf.exit

nsvg__clampf.exit:                                ; preds = %nsvg__applyOpacity.exit82, %bb.i
  %.0.i = phi float [ %i.dw, %bb.i ], [ 0.000000e+00, %nsvg__applyOpacity.exit82 ] ; 4 uses
  %i.dx = sext i32 %i.y to i64
  %i.dy = getelementptr [8 x i8], ptr %i.db, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dy, i64 -4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !139 ; 4 uses
  %i.eb = fcmp uno float %i.ea, 0.000000e+00
  br i1 %i.eb, label %nsvg__clampf.exit84, label %bb.j

bb.j:                                             ; preds = %nsvg__clampf.exit
  %i.ec = fcmp olt float %i.ea, %.0.i
  %i.ed = fcmp ogt float %i.ea, 1.000000e+00
  %i.ee = select i1 %i.ed, float 1.000000e+00, float %i.ea
  %i.ef = select i1 %i.ec, float %.0.i, float %i.ee
  br label %nsvg__clampf.exit84

nsvg__clampf.exit84:                              ; preds = %nsvg__clampf.exit, %bb.j
  %.0.i83 = phi float [ %i.ef, %bb.j ], [ %.0.i, %nsvg__clampf.exit ]
  %i.eg = fmul nnan float %.0.i, 2.550000e+02
  %i.eh = fptosi float %i.eg to i32               ; 3 uses
  %i.ei = fmul float %.0.i83, 2.550000e+02
  %i.ej = fptosi float %i.ei to i32
  %i.ek = icmp sgt i32 %i.eh, 0
  br i1 %i.ek, label %.lr.ph, label %.preheader95

.lr.ph:                                           ; preds = %nsvg__clampf.exit84
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.eh to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.eh, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert148 = insertelement <4 x i32> poison, i32 %i.dp, i64 0
  %broadcast.splat149 = shufflevector <4 x i32> %broadcast.splatinsert148, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph147
  %index151 = phi i64 [ 0, %vector.ph147 ], [ %index.next152, %vector.body150 ] ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %index151 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store <4 x i32> %broadcast.splat149, ptr %i.em, align 4, !tbaa !133
  store <4 x i32> %broadcast.splat149, ptr %i.en, align 4, !tbaa !133
  %index.next152 = add nuw i64 %index151, 8       ; 2 uses
  %i.eo = icmp eq i64 %index.next152, %n.vec
  br i1 %i.eo, label %middle.block153, label %vector.body150, !llvm.loop !225

middle.block153:                                  ; preds = %vector.body150
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader95.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block153
  %indvars.iv118.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block153 ]
  br label %scalar.ph

.preheader95.loopexit:                            ; preds = %scalar.ph, %middle.block153
  %.pre = load i32, ptr %i.x, align 4, !tbaa !136
  br label %.preheader95

.preheader95:                                     ; preds = %.preheader95.loopexit, %nsvg__clampf.exit84
  %i.ep = phi i32 [ %.pre, %.preheader95.loopexit ], [ %i.y, %nsvg__clampf.exit84 ] ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 1
  br i1 %i.eq, label %.lr.ph105, label %.preheader

.lr.ph105:                                        ; preds = %.preheader95
  %i.er = fcmp olt float %2, 0.000000e+00
  %i.es = fcmp ogt float %2, 1.000000e+00
  %i.et = select i1 %i.es, float 1.000000e+00, float %2
  %i.eu = fmul nnan float %i.et, 2.560000e+02
  %i.ev = select i1 %i.er, float 0.000000e+00, float %i.eu
  %i.ew = fptosi float %i.ev to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 28
  %spec.select = select i1 %i.dd, i32 0, i32 %i.ew ; 2 uses
  br label %nsvg__applyOpacity.exit86

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %scalar.ph ], [ %indvars.iv118.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv118
  store i32 %i.dp, ptr %i.ey, align 4, !tbaa !133
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count
  br i1 %exitcond121.not, label %.preheader95.loopexit, label %scalar.ph, !llvm.loop !226

..preheader_crit_edge:                            ; preds = %.loopexit94
  %i.ez = and i32 %i.gb, 16777215
  %i.fa = and i32 %i.ge, -16777216
  %i.fb = or disjoint i32 %i.fa, %i.ez
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader95
  %.074.lcssa = phi i32 [ %i.fb, %..preheader_crit_edge ], [ 0, %.preheader95 ] ; 2 uses
  %.0.lcssa = phi i32 [ %.0.i91, %..preheader_crit_edge ], [ %i.ej, %.preheader95 ] ; 5 uses
  %i.fc = icmp slt i32 %.0.lcssa, 256
  br i1 %i.fc, label %.lr.ph110, label %.loopexit

.lr.ph110:                                        ; preds = %.preheader
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.fe = sext i32 %.0.lcssa to i64               ; 4 uses
  %i.ff = add i32 %.0.lcssa, 1
  %i.fg = zext i32 %i.ff to i64
  %i.fh = sub nsw i64 257, %i.fg                  ; 3 uses
  %min.iters.check155 = icmp ult i64 %i.fh, 16
  br i1 %min.iters.check155, label %scalar.ph154.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph110
  %i.fi = add i32 %.0.lcssa, 1
  %i.fj = zext i32 %i.fi to i64
  %i.fk = sub nsw i64 256, %i.fj                  ; 2 uses
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = sub i32 -2, %.0.lcssa
  %i.fn = icmp ult i32 %i.fm, %i.fl
  %i.fo = icmp ugt i64 %i.fk, 4294967295
  %i.fp = or i1 %i.fn, %i.fo
  br i1 %i.fp, label %scalar.ph154.preheader, label %vector.ph156

vector.ph156:                                     ; preds = %vector.scevcheck
  %n.vec157 = and i64 %i.fh, -8                   ; 3 uses
  %i.fq = add nsw i64 %n.vec157, %i.fe
  %broadcast.splatinsert158 = insertelement <4 x i32> poison, i32 %.074.lcssa, i64 0
  %broadcast.splat159 = shufflevector <4 x i32> %broadcast.splatinsert158, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep169 = getelementptr [4 x i8], ptr %i.fd, i64 %i.fe
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph156
  %index161 = phi i64 [ 0, %vector.ph156 ], [ %index.next162, %vector.body160 ] ; 2 uses
  %gep170 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %index161 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %gep170, i64 16
  store <4 x i32> %broadcast.splat159, ptr %gep170, align 4, !tbaa !133
  store <4 x i32> %broadcast.splat159, ptr %i.fr, align 4, !tbaa !133
  %index.next162 = add nuw i64 %index161, 8       ; 2 uses
  %i.fs = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.fs, label %middle.block163, label %vector.body160, !llvm.loop !227

middle.block163:                                  ; preds = %vector.body160
  %cmp.n164 = icmp eq i64 %i.fh, %n.vec157
  br i1 %cmp.n164, label %.loopexit, label %scalar.ph154.preheader

scalar.ph154.preheader:                           ; preds = %vector.scevcheck, %.lr.ph110, %middle.block163
  %indvars.iv130.ph = phi i64 [ %i.fe, %vector.scevcheck ], [ %i.fe, %.lr.ph110 ], [ %i.fq, %middle.block163 ]
  br label %scalar.ph154

nsvg__applyOpacity.exit86:                        ; preds = %.lr.ph105, %.loopexit94
  %i.ft = phi i32 [ %i.ep, %.lr.ph105 ], [ %i.ip, %.loopexit94 ]
  %i.fu = phi float [ %i.dr, %.lr.ph105 ], [ %i.gn, %.loopexit94 ] ; 4 uses
  %indvars.iv127 = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next128, %.loopexit94 ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv127
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !138 ; 3 uses
  %i.fx = lshr i32 %i.fw, 8                       ; 2 uses
  %i.fy = and i32 %i.fx, 16711680
  %i.fz = mul i32 %spec.select, %i.fy
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv127 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gb = load i32, ptr %3, align 4, !tbaa !138   ; 4 uses
  %i.gc = lshr i32 %i.gb, 8                       ; 2 uses
  %i.gd = and i32 %i.gc, 16711680
  %i.ge = mul i32 %spec.select, %i.gd             ; 2 uses
  %i.gf = fcmp uno float %i.fu, 0.000000e+00
  br i1 %i.gf, label %nsvg__clampf.exit90, label %bb.k

bb.k:                                             ; preds = %nsvg__applyOpacity.exit86
  %i.gg = fcmp olt float %i.fu, 0.000000e+00
  %i.gh = fcmp ogt float %i.fu, 1.000000e+00
  %i.gi = select i1 %i.gh, float 1.000000e+00, float %i.fu
  %i.gj = fmul nnan float %i.gi, 2.550000e+02
  %i.gk = select i1 %i.gg, float 0.000000e+00, float %i.gj
  %i.gl = fptosi float %i.gk to i32
  br label %nsvg__clampf.exit90

nsvg__clampf.exit90:                              ; preds = %nsvg__applyOpacity.exit86, %bb.k
  %.0.i89 = phi i32 [ %i.gl, %bb.k ], [ 0, %nsvg__applyOpacity.exit86 ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !139 ; 5 uses
  %i.go = fcmp uno float %i.gn, 0.000000e+00
  br i1 %i.go, label %nsvg__clampf.exit92, label %bb.l

bb.l:                                             ; preds = %nsvg__clampf.exit90
  %i.gp = fcmp olt float %i.gn, 0.000000e+00
  %i.gq = fcmp ogt float %i.gn, 1.000000e+00
  %i.gr = select i1 %i.gq, float 1.000000e+00, float %i.gn
  %i.gs = fmul nnan float %i.gr, 2.550000e+02
  %i.gt = select i1 %i.gp, float 0.000000e+00, float %i.gs
  %i.gu = fptosi float %i.gt to i32
  br label %nsvg__clampf.exit92

nsvg__clampf.exit92:                              ; preds = %nsvg__clampf.exit90, %bb.l
  %.0.i91 = phi i32 [ %i.gu, %bb.l ], [ 0, %nsvg__clampf.exit90 ] ; 2 uses
  %i.gv = sub nsw i32 %.0.i91, %.0.i89            ; 3 uses
  %i.gw = icmp slt i32 %i.gv, 1
  br i1 %i.gw, label %.loopexit94, label %bb.m

bb.m:                                             ; preds = %nsvg__clampf.exit92
  %i.gx = uitofp nneg i32 %i.gv to float
  %i.gy = fdiv float 1.000000e+00, %i.gx
  %i.gz = and i32 %i.fw, 255
  %i.ha = and i32 %i.gb, 255
  %i.hb = and i32 %i.fx, 255
  %i.hc = and i32 %i.gc, 255
  %i.hd = lshr i32 %i.fw, 16
  %i.he = and i32 %i.hd, 255
  %i.hf = lshr i32 %i.gb, 16
  %i.hg = and i32 %i.hf, 255
  %i.hh = lshr i32 %i.fz, 24
  %i.hi = lshr i32 %i.ge, 24
  %i.hj = sext i32 %.0.i89 to i64
  %wide.trip.count125 = zext nneg i32 %i.gv to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.ex, i64 %i.hj
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %nsvg__lerpRGBA.exit
  %indvars.iv122 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next123, %nsvg__lerpRGBA.exit ] ; 2 uses
  %.073103 = phi float [ 0.000000e+00, %bb.m ], [ %i.io, %nsvg__lerpRGBA.exit ] ; 5 uses
  %i.hk = fcmp uno float %.073103, 0.000000e+00
  br i1 %i.hk, label %nsvg__lerpRGBA.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hl = fcmp olt float %.073103, 0.000000e+00
  %i.hm = fcmp ogt float %.073103, 1.000000e+00
  %i.hn = select i1 %i.hm, float 1.000000e+00, float %.073103
  %i.ho = fmul nnan float %i.hn, 2.560000e+02
  %i.hp = select i1 %i.hl, float 0.000000e+00, float %i.ho
  %i.hq = fptosi float %i.hp to i32
  br label %nsvg__lerpRGBA.exit

nsvg__lerpRGBA.exit:                              ; preds = %bb.n, %bb.o
  %.0.i.i93 = phi i32 [ %i.hq, %bb.o ], [ 0, %bb.n ] ; 5 uses
  %i.hr = sub nsw i32 256, %.0.i.i93              ; 4 uses
  %i.hs = mul i32 %i.hr, %i.gz
  %i.ht = mul i32 %.0.i.i93, %i.ha
  %i.hu = add i32 %i.hs, %i.ht
  %i.hv = lshr i32 %i.hu, 8
  %i.hw = mul i32 %i.hr, %i.hb
  %i.hx = mul i32 %.0.i.i93, %i.hc
  %i.hy = add i32 %i.hw, %i.hx
  %i.hz = mul i32 %i.hr, %i.he
  %i.ia = mul i32 %.0.i.i93, %i.hg
  %i.ib = add i32 %i.hz, %i.ia
  %i.ic = mul i32 %i.hr, %i.hh
  %i.id = mul i32 %.0.i.i93, %i.hi
  %i.ie = add i32 %i.ic, %i.id
  %i.if = and i32 %i.hv, 255
  %i.ig = and i32 %i.hy, 65280
  %i.ih = or disjoint i32 %i.if, %i.ig
  %i.ii = shl i32 %i.ib, 8
  %i.ij = and i32 %i.ii, 16711680
  %i.ik = or disjoint i32 %i.ih, %i.ij
  %i.il = shl i32 %i.ie, 16
  %i.im = and i32 %i.il, -16777216
  %i.in = or disjoint i32 %i.ik, %i.im
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv122
  store i32 %i.in, ptr %gep, align 4, !tbaa !133
  %i.io = fadd float %i.gy, %.073103
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %.loopexit94.loopexit, label %bb.n, !llvm.loop !228

.loopexit94.loopexit:                             ; preds = %nsvg__lerpRGBA.exit
  %.pre135 = load i32, ptr %i.x, align 4, !tbaa !136
  br label %.loopexit94

.loopexit94:                                      ; preds = %.loopexit94.loopexit, %nsvg__clampf.exit92
  %i.ip = phi i32 [ %.pre135, %.loopexit94.loopexit ], [ %i.ft, %nsvg__clampf.exit92 ] ; 2 uses
  %i.iq = add nsw i32 %i.ip, -1
  %i.ir = sext i32 %i.iq to i64
  %i.is = icmp slt i64 %indvars.iv.next128, %i.ir
  br i1 %i.is, label %nsvg__applyOpacity.exit86, label %..preheader_crit_edge, !llvm.loop !229

scalar.ph154:                                     ; preds = %scalar.ph154.preheader, %scalar.ph154
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %scalar.ph154 ], [ %indvars.iv130.ph, %scalar.ph154.preheader ] ; 2 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %indvars.iv130
  store i32 %.074.lcssa, ptr %i.it, align 4, !tbaa !133
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.iu = and i64 %indvars.iv.next131, 4294967295
  %exitcond133.not = icmp eq i64 %i.iu, 256
  br i1 %exitcond133.not, label %.loopexit, label %scalar.ph154, !llvm.loop !230

.loopexit:                                        ; preds = %scalar.ph154, %nsvg__applyOpacity.exit80, %middle.block163, %.preheader96, %.preheader, %nsvg__applyOpacity.exit
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @nsvg__rasterizeSortedEdges(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull readonly captures(none) %4, i8 noundef signext %5) unnamed_addr #14 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !248
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !104
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph161, label %._crit_edge

.lr.ph161:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = fdiv float 1.000000e+00, %3              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 3 uses
  %i.v = insertelement <2 x float> poison, float %3, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.x = insertelement <2 x float> poison, float %2, i64 0
  %i.y = insertelement <2 x float> %i.x, float %1, i64 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph161, %nsvg__scanlineSolid.exit
  %.0.169 = phi ptr [ null, %.lr.ph161 ], [ %.0..0..0..0.94, %nsvg__scanlineSolid.exit ]
  %.082160 = phi i32 [ 0, %.lr.ph161 ], [ %i.sf, %nsvg__scanlineSolid.exit ] ; 5 uses
  %.088159 = phi i32 [ 0, %.lr.ph161 ], [ %.290.lcssa, %nsvg__scanlineSolid.exit ]
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !103
  %i.ab = sext i32 %i.aa to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.z, i8 0, i64 %i.ab, i1 false)
  %i.ac = load i32, ptr %i.f, align 8, !tbaa !103
  %i.ad = mul nuw nsw i32 %.082160, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %nsvg__fillActiveEdges.exit
  %.0. = phi ptr [ %.0.169, %bb.b ], [ %.0..0..0..0.94, %nsvg__fillActiveEdges.exit ] ; 2 uses
  %.083158 = phi i32 [ 0, %bb.b ], [ %i.io, %nsvg__fillActiveEdges.exit ] ; 2 uses
  %.189157 = phi i32 [ %.088159, %bb.b ], [ %.290.lcssa, %nsvg__fillActiveEdges.exit ] ; 3 uses
  %.0121156 = phi i32 [ 0, %bb.b ], [ %.1122, %nsvg__fillActiveEdges.exit ] ; 4 uses
  %.0124155 = phi i32 [ %i.ac, %bb.b ], [ %.1125, %nsvg__fillActiveEdges.exit ] ; 4 uses
  %i.ae = add nuw nsw i32 %.083158, %i.ad
  %i.af = uitofp nneg i32 %i.ae to float
  %i.ag = fadd float %i.af, 5.000000e-01          ; 4 uses
  %.not106142 = icmp eq ptr %.0., null
  br i1 %.not106142, label %.preheader137, label %.lr.ph

.preheader138:                                    ; preds = %bb.f
  %.0..0.168.pre = load ptr, ptr %i.a, align 8, !tbaa !248 ; 2 uses
  %i.ah = icmp eq ptr %.0..0.168.pre, null
  br i1 %i.ah, label %.preheader137, label %.lr.ph147

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %i.ai = phi ptr [ %i.au, %bb.f ], [ %.0., %bb.c ] ; 7 uses
  %.086143 = phi ptr [ %.187, %bb.f ], [ %i.a, %bb.c ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !250
  %i.al = fcmp ugt float %i.ak, %i.ag
  br i1 %i.al, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !251
  store ptr %i.an, ptr %.086143, align 8, !tbaa !248
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !111
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !251
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !111
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !252
  %i.ar = load i32, ptr %i.ai, align 8, !tbaa !253
  %i.as = add nsw i32 %i.ar, %i.aq
  store i32 %i.as, ptr %i.ai, align 8, !tbaa !253
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.187 = phi ptr [ %.086143, %bb.d ], [ %i.at, %bb.e ] ; 2 uses
end_hunk_3
begin_hunk_4_@nsvg__rasterizeSortedEdges:bb.a
  %i.nz = mul nuw nsw i32 %i.nk, %i.ny
  %i.oa = add nuw nsw i32 %i.nz, 257
  %i.ob = lshr i32 %i.oa, 16
  %i.oc = add nuw nsw i32 %i.ob, %i.nh
  %i.od = getelementptr inbounds nuw i8, ptr %.1179.i, i64 3 ; 2 uses
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !17
  %i.of = zext i8 %i.oe to i32
  %i.og = mul nuw nsw i32 %i.nk, %i.of
  %i.oh = add nuw nsw i32 %i.og, 257
  %i.oi = lshr i32 %i.oh, 16
  %i.oj = add nuw nsw i32 %i.oi, %i.mw
  %i.ok = trunc i32 %i.no to i8
  store i8 %i.ok, ptr %.1179.i, align 1, !tbaa !17
  %i.ol = trunc i32 %i.nv to i8
  store i8 %i.ol, ptr %i.np, align 1, !tbaa !17
  %i.om = trunc i32 %i.oc to i8
  store i8 %i.om, ptr %i.nw, align 1, !tbaa !17
  %i.on = trunc i32 %i.oj to i8
  store i8 %i.on, ptr %i.od, align 1, !tbaa !17
  %i.oo = getelementptr inbounds nuw i8, ptr %.1160178.i, i64 1
  %i.op = getelementptr inbounds nuw i8, ptr %.1179.i, i64 4
  %i.oq = fadd float %i.o, %.0165177.i
  %i.or = add nuw nsw i32 %.0166176.i, 1
  %exitcond187.not.i = icmp eq i32 %.0166176.i, %i.iz
  br i1 %exitcond187.not.i, label %nsvg__scanlineSolid.exit, label %bb.ay, !llvm.loop !245

.lr.ph.i:                                         ; preds = %bb.aw
  %i.os = uitofp nneg i32 %.082160 to float
  %i.ot = uitofp nneg i32 %spec.select135 to float
  %i.ou = insertelement <2 x float> poison, float %i.os, i64 0
  %i.ov = insertelement <2 x float> %i.ou, float %i.ot, i64 1
  %i.ow = fsub <2 x float> %i.ov, %i.y
  %i.ox = fdiv <2 x float> %i.ow, %i.w            ; 2 uses
  %i.oy = extractelement <2 x float> %i.ox, i64 1
  %i.oz = extractelement <2 x float> %i.ox, i64 0 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %nsvg__clampf.exit169.i, %.lr.ph.i
  %.2175.i = phi ptr [ %i.iy, %.lr.ph.i ], [ %i.sc, %nsvg__clampf.exit169.i ] ; 6 uses
  %.2161174.i = phi ptr [ %i.jc, %.lr.ph.i ], [ %i.sb, %nsvg__clampf.exit169.i ] ; 2 uses
  %.0163173.i = phi i32 [ 0, %.lr.ph.i ], [ %i.se, %nsvg__clampf.exit169.i ] ; 2 uses
  %.0164172.i = phi float [ %i.oy, %.lr.ph.i ], [ %i.sd, %nsvg__clampf.exit169.i ] ; 3 uses
  %i.pa = load float, ptr %i.n, align 4, !tbaa !31
  %i.pb = load float, ptr %i.p, align 4, !tbaa !31
  %i.pc = fmul float %i.oz, %i.pb
  %i.pd = tail call float @llvm.fmuladd.f32(float %.0164172.i, float %i.pa, float %i.pc)
  %i.pe = load float, ptr %i.q, align 4, !tbaa !31
  %i.pf = fadd float %i.pe, %i.pd                 ; 2 uses
  %i.pg = load float, ptr %i.r, align 4, !tbaa !31
  %i.ph = load float, ptr %i.s, align 4, !tbaa !31
  %i.pi = fmul float %i.oz, %i.ph
  %i.pj = tail call float @llvm.fmuladd.f32(float %.0164172.i, float %i.pg, float %i.pi)
  %i.pk = load float, ptr %i.t, align 4, !tbaa !31
  %i.pl = fadd float %i.pk, %i.pj                 ; 2 uses
  %i.pm = fmul float %i.pl, %i.pl
  %i.pn = tail call float @llvm.fmuladd.f32(float %i.pf, float %i.pf, float %i.pm)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.pn)
  %i.po = fmul float %sqrt.i, 2.550000e+02        ; 4 uses
  %i.pp = fcmp uno float %i.po, 0.000000e+00
  br i1 %i.pp, label %nsvg__clampf.exit169.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.pq = fcmp olt float %i.po, 0.000000e+00
  %i.pr = fcmp ogt float %i.po, 2.550000e+02
  %i.ps = select i1 %i.pr, float 2.550000e+02, float %i.po
  %i.pt = select i1 %i.pq, float 0.000000e+00, float %i.ps
  %i.pu = fptosi float %i.pt to i32
  %i.pv = sext i32 %i.pu to i64
  br label %nsvg__clampf.exit169.i

nsvg__clampf.exit169.i:                           ; preds = %bb.bb, %bb.ba
  %.0.i168.i = phi i64 [ %i.pv, %bb.bb ], [ 0, %bb.ba ]
  %i.pw = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.0.i168.i
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !133 ; 4 uses
  %i.py = and i32 %i.px, 255
  %i.pz = lshr i32 %i.px, 8
  %i.qa = and i32 %i.pz, 255
  %i.qb = lshr i32 %i.px, 16
  %i.qc = and i32 %i.qb, 255
  %i.qd = lshr i32 %i.px, 24
  %i.qe = load i8, ptr %.2161174.i, align 1, !tbaa !17
  %i.qf = zext i8 %i.qe to i32
  %i.qg = mul nuw nsw i32 %i.qd, 257
  %i.qh = mul nuw nsw i32 %i.qg, %i.qf
  %i.qi = add nuw nsw i32 %i.qh, 257
  %i.qj = lshr i32 %i.qi, 16                      ; 3 uses
  %i.qk = xor i32 %i.qj, 255
  %i.ql = mul nuw nsw i32 %i.qj, 257              ; 3 uses
  %i.qm = mul nuw nsw i32 %i.ql, %i.py
  %i.qn = add nuw nsw i32 %i.qm, 257
  %i.qo = lshr i32 %i.qn, 16
  %i.qp = mul nuw nsw i32 %i.ql, %i.qa
  %i.qq = add nuw nsw i32 %i.qp, 257
  %i.qr = lshr i32 %i.qq, 16
  %i.qs = mul nuw nsw i32 %i.ql, %i.qc
  %i.qt = add nuw nsw i32 %i.qs, 257
  %i.qu = lshr i32 %i.qt, 16
  %i.qv = load i8, ptr %.2175.i, align 1, !tbaa !17
  %i.qw = zext i8 %i.qv to i32
  %i.qx = mul nuw nsw i32 %i.qk, 257              ; 4 uses
  %i.qy = mul nuw nsw i32 %i.qx, %i.qw
  %i.qz = add nuw nsw i32 %i.qy, 257
  %i.ra = lshr i32 %i.qz, 16
  %i.rb = add nuw nsw i32 %i.ra, %i.qo
  %i.rc = getelementptr inbounds nuw i8, ptr %.2175.i, i64 1 ; 2 uses
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !17
  %i.re = zext i8 %i.rd to i32
  %i.rf = mul nuw nsw i32 %i.qx, %i.re
  %i.rg = add nuw nsw i32 %i.rf, 257
  %i.rh = lshr i32 %i.rg, 16
  %i.ri = add nuw nsw i32 %i.rh, %i.qr
  %i.rj = getelementptr inbounds nuw i8, ptr %.2175.i, i64 2 ; 2 uses
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !17
  %i.rl = zext i8 %i.rk to i32
  %i.rm = mul nuw nsw i32 %i.qx, %i.rl
  %i.rn = add nuw nsw i32 %i.rm, 257
  %i.ro = lshr i32 %i.rn, 16
  %i.rp = add nuw nsw i32 %i.ro, %i.qu
  %i.rq = getelementptr inbounds nuw i8, ptr %.2175.i, i64 3 ; 2 uses
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !17
  %i.rs = zext i8 %i.rr to i32
  %i.rt = mul nuw nsw i32 %i.qx, %i.rs
  %i.ru = add nuw nsw i32 %i.rt, 257
  %i.rv = lshr i32 %i.ru, 16
  %i.rw = add nuw nsw i32 %i.rv, %i.qj
  %i.rx = trunc i32 %i.rb to i8
  store i8 %i.rx, ptr %.2175.i, align 1, !tbaa !17
  %i.ry = trunc i32 %i.ri to i8
  store i8 %i.ry, ptr %i.rc, align 1, !tbaa !17
  %i.rz = trunc i32 %i.rp to i8
  store i8 %i.rz, ptr %i.rj, align 1, !tbaa !17
  %i.sa = trunc i32 %i.rw to i8
  store i8 %i.sa, ptr %i.rq, align 1, !tbaa !17
  %i.sb = getelementptr inbounds nuw i8, ptr %.2161174.i, i64 1
  %i.sc = getelementptr inbounds nuw i8, ptr %.2175.i, i64 4
  %i.sd = fadd float %i.o, %.0164172.i
  %i.se = add nuw nsw i32 %.0163173.i, 1
  %exitcond.not.i = icmp eq i32 %.0163173.i, %i.iz
  br i1 %exitcond.not.i, label %nsvg__scanlineSolid.exit, label %bb.ba, !llvm.loop !246

nsvg__scanlineSolid.exit:                         ; preds = %nsvg__clampf.exit169.i, %nsvg__clampf.exit.i, %bb.ax, %bb.aw, %bb.av
  %i.sf = add nuw nsw i32 %.082160, 1             ; 2 uses
  %i.sg = load i32, ptr %i.b, align 4, !tbaa !104
  %i.sh = icmp slt i32 %i.sf, %i.sg
  br i1 %i.sh, label %bb.b, label %._crit_edge, !llvm.loop !247

._crit_edge:                                      ; preds = %nsvg__scanlineSolid.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @nsvg__parseGradient(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i8 noundef signext range(i8 2, 4) %2) unnamed_addr #16 {
bb.a:
  %calloc = tail call dereferenceable_or_null(224) ptr @calloc(i64 1, i64 224) ; 18 uses
  %i.a = icmp eq ptr %calloc, null
  br i1 %i.a, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %calloc, i64 173 ; 3 uses
  store i8 1, ptr %i.b, align 1, !tbaa !140
  %i.c = getelementptr inbounds nuw i8, ptr %calloc, i64 128
  store i8 %2, ptr %i.c, align 8, !tbaa !141
  %i.d = icmp eq i8 %2, 2
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %calloc, i64 156
  store i64 30064771072, ptr %i.e, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink192 = phi i64 [ 30064771072, %bb.c ], [ 31176785920, %bb.b ]
  %i.f = phi <2 x i64> [ <i64 30064771072, i64 31185174528>, %bb.c ], [ splat (i64 31176785920), %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %calloc, i64 132 ; 3 uses
  store i64 %.sink192, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %calloc, i64 140 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %calloc, i64 148 ; 2 uses
  store <2 x i64> %i.f, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %calloc, i64 176 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %calloc, i64 192
  store <2 x float> zeroinitializer, ptr %i.k, align 8, !tbaa !31
  %i.l = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %.not169 = icmp eq ptr %i.l, null
  br i1 %.not169, label %._crit_edge, label %sub_0.lr.ph

sub_0.lr.ph:                                      ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %calloc, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %calloc, i64 126
  %i.o = getelementptr inbounds nuw i8, ptr %calloc, i64 172 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %calloc, i64 156 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %calloc, i64 164
  %i.r = getelementptr inbounds nuw i8, ptr %calloc, i64 63
  br label %sub_0

sub_0:                                            ; preds = %sub_0.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ 0, %sub_0.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 3 uses
  %i.s = phi ptr [ %i.l, %sub_0.lr.ph ], [ %i.do, %bb.ac ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.u = load i8, ptr %i.s, align 1
  %.not171 = icmp eq i8 %i.u, 105
  br i1 %.not171, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %.not172 = icmp eq i8 %i.w, 100
  br i1 %.not172, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.e, label %.tail.thread

bb.e:                                             ; preds = %.tail
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %calloc, ptr noundef nonnull dereferenceable(1) %i.ab, i64 noundef 63) #30 ; 0 uses
  store i8 0, ptr %i.r, align 1, !tbaa !17
  br label %bb.ac

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 14 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.af = tail call fastcc i32 @nsvg__parseAttr(ptr noundef %0, ptr noundef %i.s, ptr noundef %i.ae)
  %.not124 = icmp eq i32 %i.af, 0
  br i1 %.not124, label %bb.f, label %bb.ac

bb.f:                                             ; preds = %.tail.thread
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !21  ; 22 uses
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(14) @.str.27) #31
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.ak = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(18) @.str.28) #31
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.b, align 1, !tbaa !140
  br label %bb.ac

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %i.b, align 1, !tbaa !140
  br label %bb.ac

bb.j:                                             ; preds = %bb.f
  %i.am = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(18) @.str.29) #31
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %sub_0126

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !21
  tail call fastcc void @nsvg__parseTransform(ptr noundef %i.j, ptr noundef %i.ao)
  br label %bb.ac

sub_0126:                                         ; preds = %bb.j
  %i.ap = load i8, ptr %i.ag, align 1
  switch i8 %i.ap, label %.tail164.thread [
    i8 99, label %sub_1127
    i8 114, label %.tail135
    i8 102, label %sub_1141
    i8 120, label %sub_1151
    i8 121, label %sub_1156
  ]

sub_1127:                                         ; preds = %sub_0126
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ar = load i8, ptr %i.aq, align 1
  %.not174 = icmp eq i8 %i.ar, 120
  br i1 %.not174, label %.tail125, label %sub_1132

.tail125:                                         ; preds = %sub_1127
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.l, label %sub_1132

bb.l:                                             ; preds = %.tail125
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.aw = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef %i.av)
  store i64 %i.aw, ptr %i.g, align 4
  br label %bb.ac

sub_1132:                                         ; preds = %.tail125, %sub_1127
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ay = load i8, ptr %i.ax, align 1
  %.not176 = icmp eq i8 %i.ay, 121
  br i1 %.not176, label %.tail130, label %.tail164.thread

.tail130:                                         ; preds = %sub_1132
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.m, label %.tail164.thread

bb.m:                                             ; preds = %.tail130
  %i.bc = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.bd = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef %i.bc)
  store i64 %i.bd, ptr %i.h, align 4
  br label %bb.ac

.tail135:                                         ; preds = %sub_0126
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.n, label %.tail164.thread

bb.n:                                             ; preds = %.tail135
  %i.bh = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.bi = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef %i.bh)
  store i64 %i.bi, ptr %i.i, align 4
  br label %bb.ac

sub_1141:                                         ; preds = %sub_0126
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.bk = load i8, ptr %i.bj, align 1
  %.not179 = icmp eq i8 %i.bk, 120
  br i1 %.not179, label %.tail139, label %sub_1146

.tail139:                                         ; preds = %sub_1141
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %sub_1146

bb.o:                                             ; preds = %.tail139
  %i.bo = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.bp = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef %i.bo)
  store i64 %i.bp, ptr %i.p, align 4
  br label %bb.ac

sub_1146:                                         ; preds = %.tail139, %sub_1141
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.br = load i8, ptr %i.bq, align 1
  %.not181 = icmp eq i8 %i.br, 121
  br i1 %.not181, label %.tail144, label %.tail164.thread

.tail144:                                         ; preds = %sub_1146
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.p, label %.tail164.thread

bb.p:                                             ; preds = %.tail144
  %i.bv = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.bw = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef %i.bv)
  store i64 %i.bw, ptr %i.q, align 4
  br label %bb.ac

sub_1151:                                         ; preds = %sub_0126
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.by = load i8, ptr %i.bx, align 1
  %.not183 = icmp eq i8 %i.by, 49
  br i1 %.not183, label %.tail149, label %sub_1161

.tail149:                                         ; preds = %sub_1151
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.q, label %sub_1161

bb.q:                                             ; preds = %.tail149
  %i.cc = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.cd = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef %i.cc)
  store i64 %i.cd, ptr %i.g, align 4
  br label %bb.ac

sub_1156:                                         ; preds = %sub_0126
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.cf = load i8, ptr %i.ce, align 1
  %.not185 = icmp eq i8 %i.cf, 49
  br i1 %.not185, label %.tail154, label %sub_1166

.tail154:                                         ; preds = %sub_1156
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.r, label %sub_1166

bb.r:                                             ; preds = %.tail154
  %i.cj = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.ck = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef %i.cj)
  store i64 %i.ck, ptr %i.h, align 4
  br label %bb.ac

sub_1161:                                         ; preds = %.tail149, %sub_1151
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.cm = load i8, ptr %i.cl, align 1
  %.not187 = icmp eq i8 %i.cm, 50
  br i1 %.not187, label %.tail159, label %.tail164.thread

.tail159:                                         ; preds = %sub_1161
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.s, label %.tail164.thread

bb.s:                                             ; preds = %.tail159
  %i.cq = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.cr = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef %i.cq)
  store i64 %i.cr, ptr %i.i, align 4
  br label %bb.ac

sub_1166:                                         ; preds = %sub_1156, %.tail154
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ct = load i8, ptr %i.cs, align 1
  %.not189 = icmp eq i8 %i.ct, 50
  br i1 %.not189, label %.tail164, label %.tail164.thread

.tail164:                                         ; preds = %sub_1166
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.t, label %.tail164.thread

bb.t:                                             ; preds = %.tail164
  %i.cx = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.cy = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef %i.cx)
  store i64 %i.cy, ptr %i.p, align 4
  br label %bb.ac

.tail164.thread:                                  ; preds = %.tail159, %sub_1161, %sub_0126, %.tail144, %.tail130, %sub_1132, %.tail135, %sub_1146, %sub_1166, %.tail164
  %i.cz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(13) @.str.39) #31
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %.tail164.thread
  %i.db = load ptr, ptr %i.ad, align 8, !tbaa !21 ; 3 uses
  %i.dc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.db, ptr noundef nonnull dereferenceable(4) @.str.40) #31
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 0, ptr %i.o, align 4, !tbaa !142
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %i.de = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.db, ptr noundef nonnull dereferenceable(8) @.str.41) #31
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.o, align 4, !tbaa !142
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.dg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.db, ptr noundef nonnull dereferenceable(7) @.str.42) #31
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  store i8 2, ptr %i.o, align 4, !tbaa !142
  br label %bb.ac

bb.aa:                                            ; preds = %.tail164.thread
  %i.di = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(11) @.str.43) #31
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dk = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dm = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.dl, i64 noundef 62) #30 ; 0 uses
  store i8 0, ptr %i.n, align 2, !tbaa !17
  br label %bb.ac

bb.ac:                                            ; preds = %bb.e, %bb.i, %bb.h, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.aa, %bb.ab, %bb.v, %bb.y, %bb.z, %bb.x, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %.tail.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %3 = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.do = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %.not = icmp eq ptr %i.do, null
  br i1 %.not, label %._crit_edge, label %sub_0, !llvm.loop !260

._crit_edge:                                      ; preds = %bb.ac, %bb.d
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 39984 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !74
  %i.dr = getelementptr inbounds nuw i8, ptr %calloc, i64 216
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !77
  store ptr %calloc, ptr %i.dp, align 8, !tbaa !74
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nsvg__parseGradientStop(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 39936
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [312 x i8], ptr %0, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 304 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 296 ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !143
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 300 ; 2 uses
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.g, align 4, !tbaa !31
  %i.h = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %.not54 = icmp eq ptr %i.h, null
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.i = phi ptr [ %i.o, %.lr.ph ], [ %i.h, %bb.a ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = tail call fastcc i32 @nsvg__parseAttr(ptr noundef nonnull %0, ptr noundef %i.i, ptr noundef %i.l) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %2 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.o = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !261

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 39984
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !74   ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 200 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !144
  %i.u = add nsw i32 %i.t, 1                      ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !144
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 208 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78
  %i.x = sext i32 %i.u to i64
  %i.y = shl nsw i64 %i.x, 3
  %i.z = tail call ptr @realloc(ptr noundef %i.w, i64 noundef %i.y) #32 ; 6 uses
  store ptr %i.z, ptr %i.v, align 8, !tbaa !78
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %i.s, align 8, !tbaa !144 ; 3 uses
  %i.ac = add i32 %i.ab, -1                       ; 4 uses
  %i.ad = icmp sgt i32 %i.ab, 1
  %.pre71 = load float, ptr %i.e, align 4, !tbaa !145 ; 4 uses
  br i1 %i.ad, label %.lr.ph58, label %.thread

.lr.ph58:                                         ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.ac to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph58, %bb.e
  %indvars.iv64 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next65, %bb.e ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !139
  %i.ah = fcmp olt float %.pre71, %i.ag
  br i1 %i.ah, label %.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.d, !llvm.loop !262

.preheader:                                       ; preds = %bb.d
  %i.ai = trunc nuw nsw i64 %indvars.iv64 to i32  ; 3 uses
  %i.aj = icmp sgt i32 %i.ac, %i.ai
  br i1 %i.aj, label %.lr.ph60.preheader, label %.thread

.lr.ph60.preheader:                               ; preds = %.preheader
  %i.ak = zext nneg i32 %i.ab to i64
  %i.al = add nsw i64 %i.ak, -1
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %indvars.iv67 = phi i64 [ %i.al, %.lr.ph60.preheader ], [ %indvars.iv.next68, %.lr.ph60 ] ; 2 uses
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !78
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv67 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  %i.ap = load i64, ptr %i.ao, align 4
  store i64 %i.ap, ptr %i.an, align 4
  %indvars.iv.next68 = add nsw i64 %indvars.iv67, -1 ; 2 uses
  %i.aq = icmp sgt i64 %indvars.iv.next68, %indvars.iv64
  br i1 %i.aq, label %.lr.ph60, label %.thread.loopexit, !llvm.loop !263

.thread.loopexit:                                 ; preds = %.lr.ph60
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !78
  %.pre70 = load float, ptr %i.e, align 4, !tbaa !145
  br label %.thread

.thread:                                          ; preds = %bb.e, %.thread.loopexit, %bb.c, %.preheader
  %i.ar = phi float [ %.pre71, %.preheader ], [ %.pre71, %bb.c ], [ %.pre70, %.thread.loopexit ], [ %.pre71, %bb.e ]
  %i.as = phi ptr [ %i.z, %.preheader ], [ %i.z, %bb.c ], [ %.pre, %.thread.loopexit ], [ %i.z, %bb.e ]
  %.051 = phi i32 [ %i.ai, %.preheader ], [ %i.ac, %bb.c ], [ %i.ai, %.thread.loopexit ], [ %i.ac, %bb.e ]
  %i.at = sext i32 %.051 to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.f, align 4, !tbaa !143
  %i.aw = load float, ptr %i.g, align 4, !tbaa !34
  %i.ax = fmul float %i.aw, 2.550000e+02
  %i.ay = fptoui float %i.ax to i32
  %i.az = shl i32 %i.ay, 24
  %i.ba = or i32 %i.az, %i.av
  store i32 %i.ba, ptr %i.au, align 4, !tbaa !138
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store float %i.ar, ptr %i.bb, align 4, !tbaa !139
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %._crit_edge, %.thread
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @nsvg__parseAttribs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 5 uses
  %i.b = alloca [512 x i8], align 16              ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %.not13 = icmp eq ptr %i.c, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %nsvg__parseStyle.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %nsvg__parseStyle.exit ], [ 0, %bb.a ] ; 3 uses
  %i.d = phi ptr [ %i.bq, %nsvg__parseStyle.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.f = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(6) @.str.15) #31
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.m

bb.b:                                             ; preds = %.lr.ph
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17    ; 2 uses
  %.not41.i = icmp eq i8 %i.j, 0
  br i1 %.not41.i, label %nsvg__parseStyle.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i.backedge
  %.137.i = phi ptr [ %.137.i.be, %.preheader.i.backedge ], [ %i.i, %bb.b ] ; 2 uses
  %i.k = phi i8 [ %.be, %.preheader.i.backedge ], [ %i.j, %bb.b ] ; 3 uses
  %i.l = zext nneg i8 %i.k to i64
  %memchr.bounds.i.i = icmp ugt i8 %i.k, 63
  %i.m = shl nuw i64 1, %i.l
  %i.n = and i64 %i.m, 4294983169
  %memchr.bits.i.i = icmp eq i64 %i.n, 0
  %memchr1.i.not.i = select i1 %memchr.bounds.i.i, i1 true, i1 %memchr.bits.i.i
  br i1 %memchr1.i.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.o = getelementptr inbounds nuw i8, ptr %.137.i, i64 1 ; 3 uses
  %.pr.i = load i8, ptr %i.o, align 1, !tbaa !17  ; 2 uses
  %.not28.i = icmp eq i8 %.pr.i, 0
  br i1 %.not28.i, label %.critedge.i, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.c, %nsvg__parseNameValue.exit.i
  %.137.i.be = phi ptr [ %i.o, %bb.c ], [ %spec.select.i, %nsvg__parseNameValue.exit.i ]
  %.be = phi i8 [ %.pr.i, %bb.c ], [ %i.bn, %nsvg__parseNameValue.exit.i ]
  br label %.preheader.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.c, %.preheader.i
  %i.p = phi i8 [ 0, %bb.c ], [ %i.k, %.preheader.i ]
  %.1.lcssa.i = phi ptr [ %i.o, %bb.c ], [ %.137.i, %.preheader.i ] ; 14 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.critedge.i
  %i.q = phi i8 [ %i.p, %.critedge.i ], [ %.pre.i, %bb.e ]
  %.2.i = phi ptr [ %.1.lcssa.i, %.critedge.i ], [ %i.r, %bb.e ] ; 6 uses
  switch i8 %i.q, label %bb.e [
    i8 0, label %.critedge2.i
    i8 59, label %.critedge2.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.2.i, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.r, align 1, !tbaa !17
  br label %bb.d, !llvm.loop !3

.critedge2.i:                                     ; preds = %bb.d, %bb.d
  %i.s = icmp ugt ptr %.2.i, %.1.lcssa.i
  br i1 %i.s, label %.lr.ph.i, label %.critedge4.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.critedge6.i
  %.038.i = phi ptr [ %i.y, %.critedge6.i ], [ %.2.i, %.critedge2.i ] ; 3 uses
  %i.t = load i8, ptr %.038.i, align 1, !tbaa !17 ; 3 uses
  %i.u = icmp eq i8 %i.t, 59
  br i1 %i.u, label %.critedge6.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.v = zext nneg i8 %i.t to i64
  %memchr.bounds.i34.i = icmp ugt i8 %i.t, 63
  %i.w = shl nuw i64 1, %i.v
  %i.x = and i64 %i.w, 4294983169
  %memchr.bits.i35.i = icmp eq i64 %i.x, 0
  %memchr1.i36.not.i = select i1 %memchr.bounds.i34.i, i1 true, i1 %memchr.bits.i35.i
  br i1 %memchr1.i36.not.i, label %.critedge4.i, label %.critedge6.i

.critedge6.i:                                     ; preds = %bb.f, %.lr.ph.i
  %i.y = getelementptr inbounds i8, ptr %.038.i, i64 -1 ; 2 uses
  %i.z = icmp ugt ptr %i.y, %.1.lcssa.i
  br i1 %i.z, label %.lr.ph.i, label %.critedge4.i, !llvm.loop !4

.critedge4.i:                                     ; preds = %.critedge6.i, %bb.f, %.critedge2.i
  %.0.lcssa.i = phi ptr [ %.2.i, %.critedge2.i ], [ %.038.i, %bb.f ], [ %.1.lcssa.i, %.critedge6.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 4 uses
  %i.ab = ptrtoaddr ptr %.1.lcssa.i to i64        ; 3 uses
  %i.ac = ptrtoaddr ptr %i.aa to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.ad = icmp ult ptr %.1.lcssa.i, %i.aa
  br i1 %i.ad, label %.lr.ph.preheader.i.i, label %.critedge2.i.i

.lr.ph.preheader.i.i:                             ; preds = %.critedge4.i
  %i.ae = sub i64 %i.ac, %i.ab
  %scevgep.i.i = getelementptr i8, ptr %.1.lcssa.i, i64 %i.ae
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.preheader.i.i
  %.04048.i.i = phi ptr [ %i.ag, %bb.g ], [ %.1.lcssa.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.af = load i8, ptr %.04048.i.i, align 1, !tbaa !17
  %.not.i.i = icmp eq i8 %i.af, 58
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.04048.i.i, i64 1
  %exitcond.not.i.i = icmp eq ptr %.04048.i.i, %.0.lcssa.i
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !5

.critedge.i.i:                                    ; preds = %bb.g, %.lr.ph.i.i
  %.040.lcssa.ph.i.i = phi ptr [ %.04048.i.i, %.lr.ph.i.i ], [ %scevgep.i.i, %bb.g ] ; 8 uses
  %.pre.i.i = ptrtoaddr ptr %.040.lcssa.ph.i.i to i64 ; 4 uses
  %i.ah = icmp ugt ptr %.040.lcssa.ph.i.i, %.1.lcssa.i
  br i1 %i.ah, label %.lr.ph52.preheader.i.i, label %.critedge2.i.i

.lr.ph52.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.ai = sub i64 %i.ab, %.pre.i.i
  %scevgep62.i.i = getelementptr i8, ptr %.040.lcssa.ph.i.i, i64 %i.ai
  br label %.lr.ph52.i.i

.lr.ph52.i.i:                                     ; preds = %.critedge4.i.i, %.lr.ph52.preheader.i.i
  %.151.i.i = phi ptr [ %i.ao, %.critedge4.i.i ], [ %.040.lcssa.ph.i.i, %.lr.ph52.preheader.i.i ] ; 3 uses
  %i.aj = load i8, ptr %.151.i.i, align 1, !tbaa !17 ; 3 uses
  %i.ak = icmp eq i8 %i.aj, 58
  br i1 %i.ak, label %.critedge4.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph52.i.i
  %i.al = zext nneg i8 %i.aj to i64
  %memchr.bounds.i.i.i = icmp ugt i8 %i.aj, 63
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, 4294983169
  %memchr.bits.i.i.i = icmp eq i64 %i.an, 0
  %memchr1.i.not.i.i = select i1 %memchr.bounds.i.i.i, i1 true, i1 %memchr.bits.i.i.i
  br i1 %memchr1.i.not.i.i, label %.critedge2.i.i, label %.critedge4.i.i

.critedge4.i.i:                                   ; preds = %bb.h, %.lr.ph52.i.i
  %i.ao = getelementptr inbounds i8, ptr %.151.i.i, i64 -1 ; 2 uses
  %i.ap = icmp ugt ptr %i.ao, %.1.lcssa.i
  br i1 %i.ap, label %.lr.ph52.i.i, label %.critedge2.i.i, !llvm.loop !6

.critedge2.i.i:                                   ; preds = %.critedge4.i.i, %bb.h, %.critedge.i.i, %.critedge4.i
  %.040.lcssa76.i.i = phi ptr [ %.040.lcssa.ph.i.i, %.critedge.i.i ], [ %.1.lcssa.i, %.critedge4.i ], [ %.040.lcssa.ph.i.i, %bb.h ], [ %.040.lcssa.ph.i.i, %.critedge4.i.i ] ; 4 uses
  %.040.lcssa61.pre-phi75.i.i = phi i64 [ %.pre.i.i, %.critedge.i.i ], [ %i.ab, %.critedge4.i ], [ %.pre.i.i, %bb.h ], [ %.pre.i.i, %.critedge4.i.i ]
  %.1.lcssa.i.i = phi ptr [ %.040.lcssa.ph.i.i, %.critedge.i.i ], [ %.1.lcssa.i, %.critedge4.i ], [ %scevgep62.i.i, %.critedge4.i.i ], [ %.151.i.i, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.lcssa.i.i, i64 1
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %.1.lcssa.i to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %spec.store.select.i.i = call i32 @llvm.smin.i32(i32 %i.au, i32 511) ; 2 uses
  %.not42.i.i = icmp eq i32 %i.au, 0
  br i1 %.not42.i.i, label %.critedge2._crit_edge.i.i, label %bb.i

.critedge2._crit_edge.i.i:                        ; preds = %.critedge2.i.i
  %.pre65.i.i = zext nneg i32 %spec.store.select.i.i to i64
  br label %bb.j

bb.i:                                             ; preds = %.critedge2.i.i
  %i.av = sext i32 %spec.store.select.i.i to i64  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %.1.lcssa.i, i64 %i.av, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge2._crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre65.i.i, %.critedge2._crit_edge.i.i ], [ %i.av, %bb.i ]
  %i.aw = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi.i.i
  store i8 0, ptr %i.aw, align 1, !tbaa !17
  %i.ax = icmp ult ptr %.040.lcssa76.i.i, %i.aa
  br i1 %i.ax, label %.lr.ph57.preheader.i.i, label %.critedge6.i.i

.lr.ph57.preheader.i.i:                           ; preds = %bb.j
  %i.ay = sub i64 %i.ac, %.040.lcssa61.pre-phi75.i.i
  %scevgep63.i.i = getelementptr i8, ptr %.040.lcssa76.i.i, i64 %i.ay ; 2 uses
  br label %.lr.ph57.i.i

.lr.ph57.i.i:                                     ; preds = %.critedge8.i.i, %.lr.ph57.preheader.i.i
  %.056.i.i = phi ptr [ %i.be, %.critedge8.i.i ], [ %.040.lcssa76.i.i, %.lr.ph57.preheader.i.i ] ; 3 uses
  %i.az = load i8, ptr %.056.i.i, align 1, !tbaa !17 ; 3 uses
  %i.ba = icmp eq i8 %i.az, 58
  br i1 %i.ba, label %.critedge8.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph57.i.i
  %i.bb = zext nneg i8 %i.az to i64
  %memchr.bounds.i45.i.i = icmp ugt i8 %i.az, 63
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = and i64 %i.bc, 4294983169
  %memchr.bits.i46.i.i = icmp eq i64 %i.bd, 0
  %memchr1.i47.not.i.i = select i1 %memchr.bounds.i45.i.i, i1 true, i1 %memchr.bits.i46.i.i
  br i1 %memchr1.i47.not.i.i, label %.critedge6.i.i, label %.critedge8.i.i

.critedge8.i.i:                                   ; preds = %bb.k, %.lr.ph57.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.056.i.i, i64 1 ; 2 uses
  %exitcond64.not.i.i = icmp eq ptr %i.be, %scevgep63.i.i
  br i1 %exitcond64.not.i.i, label %.critedge6.i.i, label %.lr.ph57.i.i, !llvm.loop !7

.critedge6.i.i:                                   ; preds = %.critedge8.i.i, %bb.k, %bb.j
  %.0.lcssa.i.i = phi ptr [ %.040.lcssa76.i.i, %bb.j ], [ %scevgep63.i.i, %.critedge8.i.i ], [ %.056.i.i, %bb.k ] ; 2 uses
  %i.bf = ptrtoint ptr %i.aa to i64
  %i.bg = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %spec.store.select9.i.i = call i32 @llvm.smin.i32(i32 %i.bi, i32 511) ; 2 uses
  %.not44.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not44.i.i, label %.critedge6._crit_edge.i.i, label %bb.l

.critedge6._crit_edge.i.i:                        ; preds = %.critedge6.i.i
  %.pre66.i.i = zext nneg i32 %spec.store.select9.i.i to i64
  br label %nsvg__parseNameValue.exit.i

bb.l:                                             ; preds = %.critedge6.i.i
  %i.bj = sext i32 %spec.store.select9.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 1 %.0.lcssa.i.i, i64 %i.bj, i1 false)
  br label %nsvg__parseNameValue.exit.i

nsvg__parseNameValue.exit.i:                      ; preds = %bb.l, %.critedge6._crit_edge.i.i
  %.pre-phi67.i.i = phi i64 [ %.pre66.i.i, %.critedge6._crit_edge.i.i ], [ %i.bj, %bb.l ]
  %i.bk = getelementptr inbounds i8, ptr %i.b, i64 %.pre-phi67.i.i
  store i8 0, ptr %i.bk, align 1, !tbaa !17
  %i.bl = call fastcc range(i32 0, 2) i32 @nsvg__parseAttr(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull %i.b), !inline_history !264 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.bm = load i8, ptr %.2.i, align 1, !tbaa !17
  %.not33.i = icmp ne i8 %i.bm, 0
  %spec.select.idx.i = zext i1 %.not33.i to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.2.i, i64 %spec.select.idx.i ; 2 uses
  %i.bn = load i8, ptr %spec.select.i, align 1, !tbaa !17 ; 2 uses
  %.not.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i, label %nsvg__parseStyle.exit, label %.preheader.i.backedge

bb.m:                                             ; preds = %.lr.ph
  %i.bo = call fastcc i32 @nsvg__parseAttr(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.i) ; 0 uses
  br label %nsvg__parseStyle.exit

nsvg__parseStyle.exit:                            ; preds = %nsvg__parseNameValue.exit.i, %bb.b, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %2 = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bq = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not = icmp eq ptr %i.bq, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !265

._crit_edge:                                      ; preds = %nsvg__parseStyle.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nsvg__parseLine(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %.not89 = icmp eq ptr %i.a, null
  br i1 %.not89, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 40000      ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 40008      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 39936 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40028 ; 20 uses
  %i.f = getelementptr i8, ptr %0, i64 40004      ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 40012      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %nsvg__parseCoordinate.exit76
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %nsvg__parseCoordinate.exit76 ] ; 3 uses
  %i.h = phi ptr [ %i.a, %.lr.ph ], [ %i.fb, %nsvg__parseCoordinate.exit76 ]
  %.04493 = phi float [ 0.000000e+00, %.lr.ph ], [ %.1, %nsvg__parseCoordinate.exit76 ] ; 4 uses
  %.04592 = phi float [ 0.000000e+00, %.lr.ph ], [ %.2, %nsvg__parseCoordinate.exit76 ] ; 4 uses
  %.04791 = phi float [ 0.000000e+00, %.lr.ph ], [ %.249, %nsvg__parseCoordinate.exit76 ] ; 4 uses
  %.05090 = phi float [ 0.000000e+00, %.lr.ph ], [ %.252, %nsvg__parseCoordinate.exit76 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = tail call fastcc i32 @nsvg__parseAttr(ptr noundef %0, ptr noundef %i.h, ptr noundef %i.k)
  %.not54 = icmp eq i32 %i.l, 0
  br i1 %.not54, label %sub_0, label %nsvg__parseCoordinate.exit76

sub_0:                                            ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !21   ; 3 uses
  %i.n = load i8, ptr %i.m, align 1
  %.not98 = icmp eq i8 %i.n, 120
  br i1 %.not98, label %sub_1, label %nsvg__parseCoordinate.exit

sub_1:                                            ; preds = %sub_0
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %.not99 = icmp eq i8 %i.p, 49
  br i1 %.not99, label %.tail, label %nsvg__parseCoordinate.exit

.tail:                                            ; preds = %sub_1
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.c, label %nsvg__parseCoordinate.exit

bb.c:                                             ; preds = %.tail
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !21
  %.val55 = load float, ptr %i.b, align 8, !tbaa !51
  %.val59 = load float, ptr %i.c, align 8, !tbaa !49
  %i.u = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.t) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.u to i32
  %i.v = bitcast i32 %.sroa.0.0.extract.trunc.i.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i = lshr i64 %i.u, 32
  %.sroa.12.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i to i32
  %i.w = load i32, ptr %i.d, align 8, !tbaa !55
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [312 x i8], ptr %0, i64 %i.x ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i, label %nsvg__parseCoordinate.exit [
    i32 7, label %bb.k
    i32 9, label %bb.j
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 8, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.z = fdiv float %i.v, 7.200000e+01
  %i.aa = load float, ptr %i.e, align 4, !tbaa !40
  %i.ab = fmul float %i.z, %i.aa
  br label %nsvg__parseCoordinate.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = fdiv float %i.v, 6.000000e+00
  %i.ad = load float, ptr %i.e, align 4, !tbaa !40
  %i.ae = fmul float %i.ac, %i.ad
  br label %nsvg__parseCoordinate.exit

bb.f:                                             ; preds = %bb.c
  %i.af = fdiv float %i.v, 2.540000e+01
  %i.ag = load float, ptr %i.e, align 4, !tbaa !40
  %i.ah = fmul float %i.af, %i.ag
  br label %nsvg__parseCoordinate.exit

bb.g:                                             ; preds = %bb.c
  %i.ai = fdiv float %i.v, 2.540000e+00
  %i.aj = load float, ptr %i.e, align 4, !tbaa !40
  %i.ak = fmul float %i.ai, %i.aj
  br label %nsvg__parseCoordinate.exit

bb.h:                                             ; preds = %bb.c
  %i.al = load float, ptr %i.e, align 4, !tbaa !40
  %i.am = fmul float %i.al, %i.v
  br label %nsvg__parseCoordinate.exit

bb.i:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 292
  %i.ao = load float, ptr %i.an, align 4, !tbaa !56
  %i.ap = fmul float %i.ao, %i.v
  br label %nsvg__parseCoordinate.exit

bb.j:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 292
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !56
  %i.as = fmul float %i.ar, %i.v
  %i.at = fmul float %i.as, 5.200000e-01
  br label %nsvg__parseCoordinate.exit

bb.k:                                             ; preds = %bb.c
  %i.au = fdiv float %i.v, 1.000000e+02
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %.val59, float %.val55)
  br label %nsvg__parseCoordinate.exit

nsvg__parseCoordinate.exit:                       ; preds = %sub_1, %sub_0, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.tail
  %.151 = phi float [ %.05090, %.tail ], [ %i.ap, %bb.i ], [ %i.av, %bb.k ], [ %i.at, %bb.j ], [ %i.ab, %bb.d ], [ %i.ae, %bb.e ], [ %i.ah, %bb.f ], [ %i.ak, %bb.g ], [ %i.am, %bb.h ], [ %i.v, %bb.c ], [ %.05090, %sub_0 ], [ %.05090, %sub_1 ] ; 12 uses
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !21  ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 1
  %.not100 = icmp eq i8 %i.ax, 121
  br i1 %.not100, label %sub_178, label %nsvg__parseCoordinate.exit66

sub_178:                                          ; preds = %nsvg__parseCoordinate.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.az = load i8, ptr %i.ay, align 1
  %.not101 = icmp eq i8 %i.az, 49
  br i1 %.not101, label %nsvg__parseCoordinate.exit.tail, label %nsvg__parseCoordinate.exit66

nsvg__parseCoordinate.exit.tail:                  ; preds = %sub_178
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %nsvg__parseCoordinate.exit66

bb.l:                                             ; preds = %nsvg__parseCoordinate.exit.tail
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !21
  %.val57 = load float, ptr %i.f, align 4, !tbaa !54
  %.val61 = load float, ptr %i.g, align 4, !tbaa !52
  %i.be = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.bd) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i62 = trunc i64 %i.be to i32
  %i.bf = bitcast i32 %.sroa.0.0.extract.trunc.i.i62 to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i63 = lshr i64 %i.be, 32
  %.sroa.12.0.extract.trunc.i.i64 = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i63 to i32
  %i.bg = load i32, ptr %i.d, align 8, !tbaa !55
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [312 x i8], ptr %0, i64 %i.bh ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i64, label %nsvg__parseCoordinate.exit66 [
    i32 7, label %bb.t
    i32 9, label %bb.s
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
    i32 5, label %bb.p
    i32 6, label %bb.q
    i32 8, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  %i.bj = fdiv float %i.bf, 7.200000e+01
  %i.bk = load float, ptr %i.e, align 4, !tbaa !40
  %i.bl = fmul float %i.bj, %i.bk
  br label %nsvg__parseCoordinate.exit66

bb.n:                                             ; preds = %bb.l
  %i.bm = fdiv float %i.bf, 6.000000e+00
  %i.bn = load float, ptr %i.e, align 4, !tbaa !40
  %i.bo = fmul float %i.bm, %i.bn
  br label %nsvg__parseCoordinate.exit66

bb.o:                                             ; preds = %bb.l
  %i.bp = fdiv float %i.bf, 2.540000e+01
  %i.bq = load float, ptr %i.e, align 4, !tbaa !40
  %i.br = fmul float %i.bp, %i.bq
  br label %nsvg__parseCoordinate.exit66

bb.p:                                             ; preds = %bb.l
  %i.bs = fdiv float %i.bf, 2.540000e+00
  %i.bt = load float, ptr %i.e, align 4, !tbaa !40
  %i.bu = fmul float %i.bs, %i.bt
  br label %nsvg__parseCoordinate.exit66

bb.q:                                             ; preds = %bb.l
  %i.bv = load float, ptr %i.e, align 4, !tbaa !40
  %i.bw = fmul float %i.bv, %i.bf
  br label %nsvg__parseCoordinate.exit66

bb.r:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 292
  %i.by = load float, ptr %i.bx, align 4, !tbaa !56
  %i.bz = fmul float %i.by, %i.bf
  br label %nsvg__parseCoordinate.exit66

bb.s:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 292
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !56
  %i.cc = fmul float %i.cb, %i.bf
  %i.cd = fmul float %i.cc, 5.200000e-01
  br label %nsvg__parseCoordinate.exit66

bb.t:                                             ; preds = %bb.l
  %i.ce = fdiv float %i.bf, 1.000000e+02
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %.val61, float %.val57)
  br label %nsvg__parseCoordinate.exit66

nsvg__parseCoordinate.exit66:                     ; preds = %sub_178, %nsvg__parseCoordinate.exit, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %nsvg__parseCoordinate.exit.tail
  %.148 = phi float [ %.04791, %nsvg__parseCoordinate.exit.tail ], [ %i.bz, %bb.r ], [ %i.cf, %bb.t ], [ %i.cd, %bb.s ], [ %i.bl, %bb.m ], [ %i.bo, %bb.n ], [ %i.br, %bb.o ], [ %i.bu, %bb.p ], [ %i.bw, %bb.q ], [ %i.bf, %bb.l ], [ %.04791, %nsvg__parseCoordinate.exit ], [ %.04791, %sub_178 ] ; 12 uses
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !21  ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1
  %.not102 = icmp eq i8 %i.ch, 120
  br i1 %.not102, label %sub_182, label %nsvg__parseCoordinate.exit71

sub_182:                                          ; preds = %nsvg__parseCoordinate.exit66
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.cj = load i8, ptr %i.ci, align 1
  %.not103 = icmp eq i8 %i.cj, 50
  br i1 %.not103, label %nsvg__parseCoordinate.exit66.tail, label %nsvg__parseCoordinate.exit71

nsvg__parseCoordinate.exit66.tail:                ; preds = %sub_182
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %bb.u, label %nsvg__parseCoordinate.exit71

bb.u:                                             ; preds = %nsvg__parseCoordinate.exit66.tail
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !21
  %.val = load float, ptr %i.b, align 8, !tbaa !51
  %.val58 = load float, ptr %i.c, align 8, !tbaa !49
  %i.co = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.cn) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i67 = trunc i64 %i.co to i32
  %i.cp = bitcast i32 %.sroa.0.0.extract.trunc.i.i67 to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i68 = lshr i64 %i.co, 32
  %.sroa.12.0.extract.trunc.i.i69 = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i68 to i32
  %i.cq = load i32, ptr %i.d, align 8, !tbaa !55
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [312 x i8], ptr %0, i64 %i.cr ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i69, label %nsvg__parseCoordinate.exit71 [
    i32 7, label %bb.ac
    i32 9, label %bb.ab
    i32 2, label %bb.v
    i32 3, label %bb.w
    i32 4, label %bb.x
    i32 5, label %bb.y
    i32 6, label %bb.z
    i32 8, label %bb.aa
  ]

bb.v:                                             ; preds = %bb.u
  %i.ct = fdiv float %i.cp, 7.200000e+01
  %i.cu = load float, ptr %i.e, align 4, !tbaa !40
  %i.cv = fmul float %i.ct, %i.cu
  br label %nsvg__parseCoordinate.exit71

bb.w:                                             ; preds = %bb.u
  %i.cw = fdiv float %i.cp, 6.000000e+00
  %i.cx = load float, ptr %i.e, align 4, !tbaa !40
  %i.cy = fmul float %i.cw, %i.cx
  br label %nsvg__parseCoordinate.exit71

bb.x:                                             ; preds = %bb.u
  %i.cz = fdiv float %i.cp, 2.540000e+01
  %i.da = load float, ptr %i.e, align 4, !tbaa !40
  %i.db = fmul float %i.cz, %i.da
  br label %nsvg__parseCoordinate.exit71

bb.y:                                             ; preds = %bb.u
  %i.dc = fdiv float %i.cp, 2.540000e+00
  %i.dd = load float, ptr %i.e, align 4, !tbaa !40
  %i.de = fmul float %i.dc, %i.dd
  br label %nsvg__parseCoordinate.exit71

bb.z:                                             ; preds = %bb.u
  %i.df = load float, ptr %i.e, align 4, !tbaa !40
  %i.dg = fmul float %i.df, %i.cp
  br label %nsvg__parseCoordinate.exit71

bb.aa:                                            ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 292
  %i.di = load float, ptr %i.dh, align 4, !tbaa !56
  %i.dj = fmul float %i.di, %i.cp
  br label %nsvg__parseCoordinate.exit71

bb.ab:                                            ; preds = %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cs, i64 292
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !56
  %i.dm = fmul float %i.dl, %i.cp
  %i.dn = fmul float %i.dm, 5.200000e-01
  br label %nsvg__parseCoordinate.exit71

bb.ac:                                            ; preds = %bb.u
  %i.do = fdiv float %i.cp, 1.000000e+02
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.do, float %.val58, float %.val)
  br label %nsvg__parseCoordinate.exit71

nsvg__parseCoordinate.exit71:                     ; preds = %sub_182, %nsvg__parseCoordinate.exit66, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %nsvg__parseCoordinate.exit66.tail
  %.146 = phi float [ %.04592, %nsvg__parseCoordinate.exit66.tail ], [ %i.dj, %bb.aa ], [ %i.dp, %bb.ac ], [ %i.dn, %bb.ab ], [ %i.cv, %bb.v ], [ %i.cy, %bb.w ], [ %i.db, %bb.x ], [ %i.de, %bb.y ], [ %i.dg, %bb.z ], [ %i.cp, %bb.u ], [ %.04592, %nsvg__parseCoordinate.exit66 ], [ %.04592, %sub_182 ] ; 12 uses
  %i.dq = load ptr, ptr %i.i, align 8, !tbaa !21  ; 3 uses
  %i.dr = load i8, ptr %i.dq, align 1
  %.not104 = icmp eq i8 %i.dr, 121
  br i1 %.not104, label %sub_186, label %nsvg__parseCoordinate.exit76

sub_186:                                          ; preds = %nsvg__parseCoordinate.exit71
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dt = load i8, ptr %i.ds, align 1
  %.not105 = icmp eq i8 %i.dt, 50
  br i1 %.not105, label %nsvg__parseCoordinate.exit71.tail, label %nsvg__parseCoordinate.exit76

nsvg__parseCoordinate.exit71.tail:                ; preds = %sub_186
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.ad, label %nsvg__parseCoordinate.exit76

bb.ad:                                            ; preds = %nsvg__parseCoordinate.exit71.tail
  %i.dx = load ptr, ptr %i.j, align 8, !tbaa !21
  %.val56 = load float, ptr %i.f, align 4, !tbaa !54
  %.val60 = load float, ptr %i.g, align 4, !tbaa !52
  %i.dy = tail call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.dx) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i72 = trunc i64 %i.dy to i32
  %i.dz = bitcast i32 %.sroa.0.0.extract.trunc.i.i72 to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i73 = lshr i64 %i.dy, 32
  %.sroa.12.0.extract.trunc.i.i74 = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i73 to i32
  %i.ea = load i32, ptr %i.d, align 8, !tbaa !55
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [312 x i8], ptr %0, i64 %i.eb ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i74, label %nsvg__parseCoordinate.exit76 [
    i32 7, label %bb.al
    i32 9, label %bb.ak
    i32 2, label %bb.ae
    i32 3, label %bb.af
    i32 4, label %bb.ag
    i32 5, label %bb.ah
    i32 6, label %bb.ai
    i32 8, label %bb.aj
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.ed = fdiv float %i.dz, 7.200000e+01
  %i.ee = load float, ptr %i.e, align 4, !tbaa !40
  %i.ef = fmul float %i.ed, %i.ee
  br label %nsvg__parseCoordinate.exit76

bb.af:                                            ; preds = %bb.ad
  %i.eg = fdiv float %i.dz, 6.000000e+00
  %i.eh = load float, ptr %i.e, align 4, !tbaa !40
  %i.ei = fmul float %i.eg, %i.eh
  br label %nsvg__parseCoordinate.exit76

bb.ag:                                            ; preds = %bb.ad
  %i.ej = fdiv float %i.dz, 2.540000e+01
  %i.ek = load float, ptr %i.e, align 4, !tbaa !40
  %i.el = fmul float %i.ej, %i.ek
  br label %nsvg__parseCoordinate.exit76

bb.ah:                                            ; preds = %bb.ad
  %i.em = fdiv float %i.dz, 2.540000e+00
  %i.en = load float, ptr %i.e, align 4, !tbaa !40
  %i.eo = fmul float %i.em, %i.en
  br label %nsvg__parseCoordinate.exit76

bb.ai:                                            ; preds = %bb.ad
  %i.ep = load float, ptr %i.e, align 4, !tbaa !40
  %i.eq = fmul float %i.ep, %i.dz
  br label %nsvg__parseCoordinate.exit76

bb.aj:                                            ; preds = %bb.ad
  %i.er = getelementptr inbounds nuw i8, ptr %i.ec, i64 292
  %i.es = load float, ptr %i.er, align 4, !tbaa !56
  %i.et = fmul float %i.es, %i.dz
  br label %nsvg__parseCoordinate.exit76

bb.ak:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ec, i64 292
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !56
  %i.ew = fmul float %i.ev, %i.dz
  %i.ex = fmul float %i.ew, 5.200000e-01
  br label %nsvg__parseCoordinate.exit76

bb.al:                                            ; preds = %bb.ad
  %i.ey = fdiv float %i.dz, 1.000000e+02
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.ey, float %.val60, float %.val56)
  br label %nsvg__parseCoordinate.exit76

nsvg__parseCoordinate.exit76:                     ; preds = %sub_186, %nsvg__parseCoordinate.exit71, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.b, %nsvg__parseCoordinate.exit71.tail
  %.252 = phi float [ %.05090, %bb.b ], [ %.151, %nsvg__parseCoordinate.exit71.tail ], [ %.151, %bb.ad ], [ %.151, %bb.ae ], [ %.151, %bb.af ], [ %.151, %bb.ag ], [ %.151, %bb.ah ], [ %.151, %bb.ai ], [ %.151, %bb.aj ], [ %.151, %bb.ak ], [ %.151, %bb.al ], [ %.151, %nsvg__parseCoordinate.exit71 ], [ %.151, %sub_186 ] ; 2 uses
  %.249 = phi float [ %.04791, %bb.b ], [ %.148, %nsvg__parseCoordinate.exit71.tail ], [ %.148, %bb.ad ], [ %.148, %bb.ae ], [ %.148, %bb.af ], [ %.148, %bb.ag ], [ %.148, %bb.ah ], [ %.148, %bb.ai ], [ %.148, %bb.aj ], [ %.148, %bb.ak ], [ %.148, %bb.al ], [ %.148, %nsvg__parseCoordinate.exit71 ], [ %.148, %sub_186 ] ; 2 uses
  %.2 = phi float [ %.04592, %bb.b ], [ %.146, %nsvg__parseCoordinate.exit71.tail ], [ %.146, %bb.ad ], [ %.146, %bb.ae ], [ %.146, %bb.af ], [ %.146, %bb.ag ], [ %.146, %bb.ah ], [ %.146, %bb.ai ], [ %.146, %bb.aj ], [ %.146, %bb.ak ], [ %.146, %bb.al ], [ %.146, %nsvg__parseCoordinate.exit71 ], [ %.146, %sub_186 ] ; 2 uses
  %.1 = phi float [ %.04493, %bb.b ], [ %.04493, %nsvg__parseCoordinate.exit71.tail ], [ %i.dz, %bb.ad ], [ %i.ef, %bb.ae ], [ %i.ei, %bb.af ], [ %i.el, %bb.ag ], [ %i.eo, %bb.ah ], [ %i.eq, %bb.ai ], [ %i.et, %bb.aj ], [ %i.ex, %bb.ak ], [ %i.ez, %bb.al ], [ %.04493, %nsvg__parseCoordinate.exit71 ], [ %.04493, %sub_186 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %2 = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fb = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not = icmp eq ptr %i.fb, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !266

._crit_edge:                                      ; preds = %nsvg__parseCoordinate.exit76, %bb.a
  %.050.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.252, %nsvg__parseCoordinate.exit76 ]
  %.047.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.249, %nsvg__parseCoordinate.exit76 ]
  %.045.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.2, %nsvg__parseCoordinate.exit76 ]
  %.044.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1, %nsvg__parseCoordinate.exit76 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 39952 ; 3 uses
  store i32 0, ptr %i.fc, align 8, !tbaa !83
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 39956 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !84 ; 3 uses
  %.not.i.i = icmp sgt i32 %i.fe, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.am

._crit_edge.i.i:                                  ; preds = %._crit_edge
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 39944
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !79
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge
  %.not16.i.i = icmp eq i32 %i.fe, 0
  %i.ff = shl nsw i32 %i.fe, 1
  %spec.select.i.i = select i1 %.not16.i.i, i32 8, i32 %i.ff ; 2 uses
  store i32 %spec.select.i.i, ptr %i.fd, align 4, !tbaa !84
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 39944 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !79
  %i.fi = shl nsw i32 %spec.select.i.i, 1
  %i.fj = sext i32 %i.fi to i64
  %i.fk = shl nsw i64 %i.fj, 2
  %i.fl = tail call ptr @realloc(ptr noundef %i.fh, i64 noundef %i.fk) #32 ; 3 uses
  store ptr %i.fl, ptr %i.fg, align 8, !tbaa !79
  %.not17.i.i = icmp eq ptr %i.fl, null
  br i1 %.not17.i.i, label %nsvg__moveTo.exit, label %._crit_edge18.i.i

._crit_edge18.i.i:                                ; preds = %bb.am
  %.pre19.i.i = load i32, ptr %i.fc, align 8, !tbaa !83
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge18.i.i, %._crit_edge.i.i
  %i.fm = phi i32 [ 0, %._crit_edge.i.i ], [ %.pre19.i.i, %._crit_edge18.i.i ] ; 2 uses
  %i.fn = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.fl, %._crit_edge18.i.i ]
  %i.fo = shl nsw i32 %i.fm, 1
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.fp ; 2 uses
  store float %.050.lcssa, ptr %i.fq, align 4, !tbaa !31
  %i.fr = getelementptr i8, ptr %i.fq, i64 4
  store float %.047.lcssa, ptr %i.fr, align 4, !tbaa !31
  %i.fs = add nsw i32 %i.fm, 1
  store i32 %i.fs, ptr %i.fc, align 8, !tbaa !83
  br label %nsvg__moveTo.exit

nsvg__moveTo.exit:                                ; preds = %bb.am, %bb.an
  tail call fastcc void @nsvg__lineTo(ptr noundef nonnull %0, float noundef %.045.lcssa, float noundef %.044.lcssa)
  tail call fastcc void @nsvg__addPath(ptr noundef nonnull %0, i8 noundef signext 0)
  tail call fastcc void @nsvg__addShape(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nsvg__parsePoly(ptr noundef initializes((39952, 39956)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca [2 x float], align 8              ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 39952 ; 4 uses
  store i32 0, ptr %i.d, align 8, !tbaa !83
  %i.e = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %.not40 = icmp eq ptr %i.e, null
  br i1 %.not40, label %._crit_edge, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 39956 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 39944 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph43, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.i = phi ptr [ %i.e, %.lr.ph43 ], [ %i.cu, %.loopexit ]
  %.042 = phi i32 [ 0, %.lr.ph43 ], [ %.3, %.loopexit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = call fastcc i32 @nsvg__parseAttr(ptr noundef %0, ptr noundef %i.i, ptr noundef %i.l)
  %.not29 = icmp eq i32 %i.m, 0
  br i1 %.not29, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.o = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(7) @.str.96) #31
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !17
  %.not3036 = icmp eq i8 %i.r, 0
  br i1 %.not3036, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.z
  %.139 = phi i32 [ %.2, %bb.z ], [ %.042, %bb.d ] ; 3 uses
  %.02338 = phi i32 [ %.124, %bb.z ], [ 0, %bb.d ] ; 2 uses
  %.02537 = phi ptr [ %.0.i32, %bb.z ], [ %i.q, %bb.d ] ; 3 uses
  store i8 0, ptr %i.c, align 16, !tbaa !17
  %i.s = load i8, ptr %.02537, align 1, !tbaa !17 ; 2 uses
  %.not29.i = icmp eq i8 %i.s, 0
  br i1 %.not29.i, label %nsvg__getNextPathItem.exit.thread, label %.lr.ph.i

nsvg__getNextPathItem.exit.thread:                ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr null, ptr %i.a, align 8, !tbaa !21
  br label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph, %.critedge2.i
  %i.t = phi i8 [ %i.z, %.critedge2.i ], [ %i.s, %.lr.ph ] ; 7 uses
  %.02130.i = phi ptr [ %i.y, %.critedge2.i ], [ %.02537, %.lr.ph ] ; 3 uses
  %i.u = zext nneg i8 %i.t to i64
  %memchr.bounds.i.i = icmp ult i8 %i.t, 64
  %i.v = shl nuw i64 1, %i.u
  %i.w = and i64 %i.v, 4294983169
  %memchr.bits.i.i = icmp ne i64 %i.w, 0
  %memchr1.i.i = select i1 %memchr.bounds.i.i, i1 %memchr.bits.i.i, i1 false
  %i.x = icmp eq i8 %i.t, 44
  %or.cond.i = or i1 %i.x, %memchr1.i.i
  br i1 %or.cond.i, label %.critedge2.i, label %.critedge.i

.critedge2.i:                                     ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.02130.i, i64 1 ; 3 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !17    ; 2 uses
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %nsvg__getNextPathItem.exit.thread59, label %.lr.ph.i, !llvm.loop !1

nsvg__getNextPathItem.exit.thread59:              ; preds = %.critedge2.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr null, ptr %i.a, align 8, !tbaa !21
  br label %bb.j

.critedge.i:                                      ; preds = %.lr.ph.i
  switch i8 %i.t, label %bb.e [
    i8 46, label %bb.f
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.e:                                             ; preds = %.critedge.i
  %i.aa = add i8 %i.t, -58
  %i.ab = icmp ult i8 %i.aa, -10
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge.i, %.critedge.i, %.critedge.i
  %i.ac = call fastcc ptr @nsvg__parseNumber(ptr noundef nonnull %.02130.i, ptr noundef nonnull %i.c)
  %.pr.pre = load i8, ptr %i.c, align 16, !tbaa !17
  br label %nsvg__getNextPathItem.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.02130.i, i64 1
  store i8 %i.t, ptr %i.c, align 16, !tbaa !17
  store i8 0, ptr %i.f, align 1, !tbaa !17
  br label %nsvg__getNextPathItem.exit

nsvg__getNextPathItem.exit:                       ; preds = %bb.f, %bb.g
  %i.ae = phi i8 [ %i.t, %bb.g ], [ %.pr.pre, %bb.f ]
  %.0.i = phi ptr [ %i.ad, %bb.g ], [ %i.ac, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr null, ptr %i.a, align 8, !tbaa !21
  switch i8 %i.ae, label %bb.j [
    i8 43, label %bb.h
    i8 45, label %bb.i
  ]

bb.h:                                             ; preds = %nsvg__getNextPathItem.exit
  br label %bb.j

bb.i:                                             ; preds = %nsvg__getNextPathItem.exit
  br label %bb.j

bb.j:                                             ; preds = %nsvg__getNextPathItem.exit.thread59, %nsvg__getNextPathItem.exit.thread, %bb.i, %bb.h, %nsvg__getNextPathItem.exit
  %.0.i32 = phi ptr [ %.0.i, %bb.h ], [ %.0.i, %bb.i ], [ %.0.i, %nsvg__getNextPathItem.exit ], [ %.02537, %nsvg__getNextPathItem.exit.thread ], [ %i.y, %nsvg__getNextPathItem.exit.thread59 ] ; 2 uses
  %.032.i = phi ptr [ %i.f, %bb.h ], [ %i.f, %bb.i ], [ %i.c, %nsvg__getNextPathItem.exit ], [ %i.c, %nsvg__getNextPathItem.exit.thread ], [ %i.c, %nsvg__getNextPathItem.exit.thread59 ] ; 5 uses
  %.030.i = phi double [ 1.000000e+00, %bb.h ], [ -1.000000e+00, %bb.i ], [ 1.000000e+00, %nsvg__getNextPathItem.exit ], [ 1.000000e+00, %nsvg__getNextPathItem.exit.thread ], [ 1.000000e+00, %nsvg__getNextPathItem.exit.thread59 ]
  %i.af = load i8, ptr %.032.i, align 1, !tbaa !17 ; 2 uses
  %i.ag = add i8 %i.af, -58
  %i.ah = icmp ult i8 %i.ag, -10
  br i1 %i.ah, label %bb.k, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.j
  %i.ai = call i64 @strtoll(ptr noundef nonnull %.032.i, ptr noundef nonnull %i.a, i32 noundef 10) #30
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %.not42.i = icmp ne ptr %.032.i, %i.aj          ; 3 uses
  %i.ak = sitofp i64 %i.ai to double
  %.133.ph.i = select i1 %.not42.i, ptr %i.aj, ptr %.032.i ; 2 uses
  %.031.ph.i = select i1 %.not42.i, double %i.ak, double 0.000000e+00
  %.pr.i = load i8, ptr %.133.ph.i, align 1, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split.i, %bb.j
  %i.al = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.af, %bb.j ]
  %.133.i = phi ptr [ %.133.ph.i, %thread-pre-split.i ], [ %.032.i, %bb.j ] ; 2 uses
  %.031.i = phi double [ %.031.ph.i, %thread-pre-split.i ], [ 0.000000e+00, %bb.j ] ; 2 uses
  %i.am = phi i1 [ %.not42.i, %thread-pre-split.i ], [ false, %bb.j ]
  %i.an = icmp eq i8 %i.al, 46
  br i1 %i.an, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %.133.i, i64 1 ; 6 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aq = add i8 %i.ap, -58
  %i.ar = icmp ult i8 %i.aq, -10
  br i1 %i.ar, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = call i64 @strtoll(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.a, i32 noundef 10) #30
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %.not44.i = icmp eq ptr %i.ao, %i.at
  br i1 %.not44.i, label %bb.n, label %.thread.i

.thread.i:                                        ; preds = %bb.m
  %i.au = sitofp i64 %i.as to double
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.ao to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sitofp i64 %i.ax to double
  %i.az = call double @pow(double noundef 1.000000e+01, double noundef %i.ay) #30
  %i.ba = fdiv double %i.au, %i.az
  %i.bb = fadd double %.031.i, %i.ba
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.234.i = phi ptr [ %.133.i, %bb.k ], [ %i.ao, %bb.m ], [ %i.ao, %bb.l ]
  br i1 %i.am, label %bb.o, label %nsvg__atof.exit

bb.o:                                             ; preds = %bb.n, %.thread.i
  %.150.i = phi double [ %i.bb, %.thread.i ], [ %.031.i, %bb.n ] ; 3 uses
  %.23449.i = phi ptr [ %i.at, %.thread.i ], [ %.234.i, %bb.n ] ; 2 uses
  %i.bc = load i8, ptr %.23449.i, align 1, !tbaa !17
  switch i8 %i.bc, label %bb.r [
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %.23449.i, i64 1 ; 2 uses
  %i.be = call i64 @strtol(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.a, i32 noundef 10) #30
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !21
  %.not45.i = icmp eq ptr %i.bd, %i.bf
  br i1 %.not45.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = sitofp i64 %i.be to double
  %i.bh = call double @pow(double noundef 1.000000e+01, double noundef %i.bg) #30
  %i.bi = fmul double %.150.i, %i.bh
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.3.i = phi double [ %.150.i, %bb.o ], [ %i.bi, %bb.q ], [ %.150.i, %bb.p ]
  %i.bj = fmul double %.030.i, %.3.i
  %i.bk = fptrunc double %i.bj to float
  br label %nsvg__atof.exit

nsvg__atof.exit:                                  ; preds = %bb.n, %bb.r
  %.035.i = phi float [ %i.bk, %bb.r ], [ 0.000000e+00, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.bl = zext nneg i32 %.02338 to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bl
  store float %.035.i, ptr %i.bm, align 4, !tbaa !31
  %i.bn = icmp sgt i32 %.02338, 0
  br i1 %i.bn, label %bb.s, label %bb.z

bb.s:                                             ; preds = %nsvg__atof.exit
  %i.bo = icmp eq i32 %.139, 0
  %i.bp = load <2 x float>, ptr %i.b, align 8, !tbaa !31 ; 5 uses
  br i1 %i.bo, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.bq = load i32, ptr %i.d, align 8, !tbaa !83  ; 4 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !79  ; 2 uses
  %i.bt = shl nuw i32 %i.bq, 1                    ; 2 uses
  %i.bu = add i32 %i.bt, -2
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bv
  %i.bx = extractelement <2 x float> %i.bp, i64 0
  store float %i.bx, ptr %i.bw, align 4, !tbaa !31
  %i.by = add i32 %i.bt, -1
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bz
  %i.cb = extractelement <2 x float> %i.bp, i64 1
  store float %i.cb, ptr %i.ca, align 4, !tbaa !31
  br label %nsvg__moveTo.exit

bb.v:                                             ; preds = %bb.t
  %i.cc = load i32, ptr %i.g, align 4, !tbaa !84  ; 3 uses
  %.not.i.i = icmp slt i32 %i.bq, %i.cc
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.w

._crit_edge.i.i:                                  ; preds = %bb.v
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !79
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not16.i.i = icmp eq i32 %i.cc, 0
  %i.cd = shl nsw i32 %i.cc, 1
  %spec.select.i.i = select i1 %.not16.i.i, i32 8, i32 %i.cd ; 2 uses
  store i32 %spec.select.i.i, ptr %i.g, align 4, !tbaa !84
  %i.ce = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.cf = shl nsw i32 %spec.select.i.i, 1
  %i.cg = sext i32 %i.cf to i64
  %i.ch = shl nsw i64 %i.cg, 2
  %i.ci = call ptr @realloc(ptr noundef %i.ce, i64 noundef %i.ch) #32 ; 3 uses
  store ptr %i.ci, ptr %i.h, align 8, !tbaa !79
  %.not17.i.i = icmp eq ptr %i.ci, null
  br i1 %.not17.i.i, label %nsvg__moveTo.exit, label %._crit_edge18.i.i

._crit_edge18.i.i:                                ; preds = %bb.w
  %.pre19.i.i = load i32, ptr %i.d, align 8, !tbaa !83
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge18.i.i, %._crit_edge.i.i
  %i.cj = phi i32 [ %i.bq, %._crit_edge.i.i ], [ %.pre19.i.i, %._crit_edge18.i.i ] ; 2 uses
  %i.ck = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ci, %._crit_edge18.i.i ]
  %i.cl = shl nsw i32 %i.cj, 1
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cm
  store <2 x float> %i.bp, ptr %i.cn, align 4, !tbaa !31
  %i.co = add nsw i32 %i.cj, 1
  store i32 %i.co, ptr %i.d, align 8, !tbaa !83
  br label %nsvg__moveTo.exit

bb.y:                                             ; preds = %bb.s
  %i.cp = extractelement <2 x float> %i.bp, i64 0
  %i.cq = extractelement <2 x float> %i.bp, i64 1
  call fastcc void @nsvg__lineTo(ptr noundef %0, float noundef %i.cp, float noundef %i.cq)
  br label %nsvg__moveTo.exit

nsvg__moveTo.exit:                                ; preds = %bb.x, %bb.w, %bb.u, %bb.y
  %i.cr = add nsw i32 %.139, 1
  br label %bb.z

bb.z:                                             ; preds = %nsvg__moveTo.exit, %nsvg__atof.exit
  %.124 = phi i32 [ 0, %nsvg__moveTo.exit ], [ 1, %nsvg__atof.exit ]
  %.2 = phi i32 [ %i.cr, %nsvg__moveTo.exit ], [ %.139, %nsvg__atof.exit ] ; 2 uses
  %i.cs = load i8, ptr %.0.i32, align 1, !tbaa !17
  %.not30 = icmp eq i8 %i.cs, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph, !llvm.loop !267

.loopexit:                                        ; preds = %bb.z, %bb.d, %bb.b, %bb.c
  %.3 = phi i32 [ %.042, %bb.b ], [ %.042, %bb.c ], [ %.042, %bb.d ], [ %.2, %bb.z ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %3 = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cu = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %.not = icmp eq ptr %i.cu, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !268

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.cv = trunc nuw nsw i32 %2 to i8
  call fastcc void @nsvg__addPath(ptr noundef %0, i8 noundef signext %i.cv)
  call fastcc void @nsvg__addShape(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @nsvg__parseSVG(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 11 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %.not138 = icmp eq ptr %i.b, null
  br i1 %.not138, label %.loopexit, label %.lr.ph140

.lr.ph140:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40024 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40016
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40020
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40000
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40004
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40008
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40012
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 39936 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40028 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 39968 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph140, %bb.al
  %indvars.iv = phi i64 [ 0, %.lr.ph140 ], [ %indvars.iv.next, %bb.al ] ; 3 uses
  %i.m = phi ptr [ %i.b, %.lr.ph140 ], [ %i.eb, %bb.al ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = call fastcc i32 @nsvg__parseAttr(ptr noundef %0, ptr noundef %i.m, ptr noundef %i.p)
  %.not93 = icmp eq i32 %i.q, 0
  br i1 %.not93, label %bb.c, label %bb.al

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !21   ; 4 uses
  %i.s = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(6) @.str.92) #31
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.v = call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.u) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.v to i32
  %i.w = bitcast i32 %.sroa.0.0.extract.trunc.i.i to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i = lshr i64 %i.v, 32
  %.sroa.12.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i to i32
  %i.x = load i32, ptr %i.j, align 8, !tbaa !55
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [312 x i8], ptr %0, i64 %i.y ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i, label %nsvg__parseCoordinate.exit [
    i32 7, label %bb.l
    i32 9, label %bb.k
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 8, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.aa = fdiv float %i.w, 7.200000e+01
  %i.ab = load float, ptr %i.k, align 4, !tbaa !40
  %i.ac = fmul float %i.aa, %i.ab
  br label %nsvg__parseCoordinate.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = fdiv float %i.w, 6.000000e+00
  %i.ae = load float, ptr %i.k, align 4, !tbaa !40
  %i.af = fmul float %i.ad, %i.ae
  br label %nsvg__parseCoordinate.exit

bb.g:                                             ; preds = %bb.d
  %i.ag = fdiv float %i.w, 2.540000e+01
  %i.ah = load float, ptr %i.k, align 4, !tbaa !40
  %i.ai = fmul float %i.ag, %i.ah
  br label %nsvg__parseCoordinate.exit

bb.h:                                             ; preds = %bb.d
  %i.aj = fdiv float %i.w, 2.540000e+00
  %i.ak = load float, ptr %i.k, align 4, !tbaa !40
  %i.al = fmul float %i.aj, %i.ak
  br label %nsvg__parseCoordinate.exit

bb.i:                                             ; preds = %bb.d
  %i.am = load float, ptr %i.k, align 4, !tbaa !40
  %i.an = fmul float %i.am, %i.w
  br label %nsvg__parseCoordinate.exit

bb.j:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 292
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !56
  %i.aq = fmul float %i.ap, %i.w
  br label %nsvg__parseCoordinate.exit

bb.k:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 292
  %i.as = load float, ptr %i.ar, align 4, !tbaa !56
  %i.at = fmul float %i.as, %i.w
  %i.au = fmul float %i.at, 5.200000e-01
  br label %nsvg__parseCoordinate.exit

bb.l:                                             ; preds = %bb.d
  %i.av = fdiv float %i.w, 1.000000e+02
  %i.aw = call float @llvm.fmuladd.f32(float %i.av, float 0.000000e+00, float 0.000000e+00)
  br label %nsvg__parseCoordinate.exit

nsvg__parseCoordinate.exit:                       ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i.i = phi float [ %i.aq, %bb.j ], [ %i.aw, %bb.l ], [ %i.au, %bb.k ], [ %i.ac, %bb.e ], [ %i.af, %bb.f ], [ %i.ai, %bb.g ], [ %i.al, %bb.h ], [ %i.an, %bb.i ], [ %i.w, %bb.d ]
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !30
  store float %.0.i.i, ptr %i.ax, align 8, !tbaa !50
  br label %bb.al

bb.m:                                             ; preds = %bb.c
  %i.ay = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(7) @.str.93) #31
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.bb = call fastcc i64 @nsvg__parseCoordinateRaw(ptr noundef readonly %i.ba) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i113 = trunc i64 %i.bb to i32
  %i.bc = bitcast i32 %.sroa.0.0.extract.trunc.i.i113 to float ; 9 uses
  %.sroa.12.0.extract.shift.i.i114 = lshr i64 %i.bb, 32
  %.sroa.12.0.extract.trunc.i.i115 = trunc nuw nsw i64 %.sroa.12.0.extract.shift.i.i114 to i32
  %i.bd = load i32, ptr %i.j, align 8, !tbaa !55
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [312 x i8], ptr %0, i64 %i.be ; 2 uses
  switch i32 %.sroa.12.0.extract.trunc.i.i115, label %nsvg__parseCoordinate.exit117 [
    i32 7, label %bb.v
    i32 9, label %bb.u
    i32 2, label %bb.o
    i32 3, label %bb.p
    i32 4, label %bb.q
    i32 5, label %bb.r
    i32 6, label %bb.s
    i32 8, label %bb.t
  ]

bb.o:                                             ; preds = %bb.n
  %i.bg = fdiv float %i.bc, 7.200000e+01
  %i.bh = load float, ptr %i.k, align 4, !tbaa !40
  %i.bi = fmul float %i.bg, %i.bh
  br label %nsvg__parseCoordinate.exit117

bb.p:                                             ; preds = %bb.n
  %i.bj = fdiv float %i.bc, 6.000000e+00
  %i.bk = load float, ptr %i.k, align 4, !tbaa !40
  %i.bl = fmul float %i.bj, %i.bk
  br label %nsvg__parseCoordinate.exit117

bb.q:                                             ; preds = %bb.n
  %i.bm = fdiv float %i.bc, 2.540000e+01
  %i.bn = load float, ptr %i.k, align 4, !tbaa !40
  %i.bo = fmul float %i.bm, %i.bn
  br label %nsvg__parseCoordinate.exit117

bb.r:                                             ; preds = %bb.n
  %i.bp = fdiv float %i.bc, 2.540000e+00
  %i.bq = load float, ptr %i.k, align 4, !tbaa !40
  %i.br = fmul float %i.bp, %i.bq
  br label %nsvg__parseCoordinate.exit117

bb.s:                                             ; preds = %bb.n
  %i.bs = load float, ptr %i.k, align 4, !tbaa !40
  %i.bt = fmul float %i.bs, %i.bc
  br label %nsvg__parseCoordinate.exit117

bb.t:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 292
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !56
  %i.bw = fmul float %i.bv, %i.bc
  br label %nsvg__parseCoordinate.exit117

bb.u:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 292
  %i.by = load float, ptr %i.bx, align 4, !tbaa !56
  %i.bz = fmul float %i.by, %i.bc
  %i.ca = fmul float %i.bz, 5.200000e-01
  br label %nsvg__parseCoordinate.exit117

bb.v:                                             ; preds = %bb.n
  %i.cb = fdiv float %i.bc, 1.000000e+02
  %i.cc = call float @llvm.fmuladd.f32(float %i.cb, float 0.000000e+00, float 0.000000e+00)
  br label %nsvg__parseCoordinate.exit117

nsvg__parseCoordinate.exit117:                    ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.0.i.i116 = phi float [ %i.bw, %bb.t ], [ %i.cc, %bb.v ], [ %i.ca, %bb.u ], [ %i.bi, %bb.o ], [ %i.bl, %bb.p ], [ %i.bo, %bb.q ], [ %i.br, %bb.r ], [ %i.bt, %bb.s ], [ %i.bc, %bb.n ]
  %i.cd = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store float %.0.i.i116, ptr %i.ce, align 4, !tbaa !53
  br label %bb.al

bb.w:                                             ; preds = %bb.m
  %i.cf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(8) @.str.97) #31
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ch = load ptr, ptr %i.o, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ci = call fastcc ptr @nsvg__parseNumber(ptr noundef %i.ch, ptr noundef %i.a) ; 2 uses
  %i.cj = call fastcc double @nsvg__atof(ptr noundef nonnull %i.a)
  %i.ck = fptrunc double %i.cj to float
  store float %i.ck, ptr %i.f, align 8, !tbaa !51
  %i.cl = load i8, ptr %i.ci, align 1, !tbaa !17  ; 2 uses
  %.not102129 = icmp eq i8 %i.cl, 0
  br i1 %.not102129, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x, %.critedge2
  %i.cm = phi i8 [ %i.cr, %.critedge2 ], [ %i.cl, %bb.x ] ; 3 uses
  %.087130 = phi ptr [ %i.cq, %.critedge2 ], [ %i.ci, %bb.x ] ; 2 uses
  %i.cn = zext nneg i8 %i.cm to i64
  %memchr.bounds.i = icmp ugt i8 %i.cm, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = and i64 %i.co, 4294983169
  %memchr.bits.i = icmp eq i64 %i.cp, 0
  %memchr1.i.not = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr1.i.not, label %bb.y, label %.critedge2

bb.y:                                             ; preds = %.lr.ph
  switch i8 %i.cm, label %.critedge [
    i8 37, label %.critedge2
    i8 44, label %.critedge2
  ]

.critedge2:                                       ; preds = %bb.y, %bb.y, %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %.087130, i64 1 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !17  ; 2 uses
  %.not102 = icmp eq i8 %i.cr, 0
  br i1 %.not102, label %.critedge.thread, label %.lr.ph, !llvm.loop !269

.critedge:                                        ; preds = %bb.y
  %i.cs = call fastcc ptr @nsvg__parseNumber(ptr noundef nonnull %.087130, ptr noundef %i.a) ; 2 uses
  %i.ct = call fastcc double @nsvg__atof(ptr noundef nonnull %i.a)
  %i.cu = fptrunc double %i.ct to float
  store float %i.cu, ptr %i.g, align 4, !tbaa !54
  %i.cv = load i8, ptr %i.cs, align 1, !tbaa !17  ; 2 uses
  %.not105132 = icmp eq i8 %i.cv, 0
  br i1 %.not105132, label %.critedge.thread, label %.lr.ph134

.lr.ph134:                                        ; preds = %.critedge, %.critedge6
  %i.cw = phi i8 [ %i.db, %.critedge6 ], [ %i.cv, %.critedge ] ; 3 uses
  %.1133 = phi ptr [ %i.da, %.critedge6 ], [ %i.cs, %.critedge ] ; 2 uses
  %i.cx = zext nneg i8 %i.cw to i64
  %memchr.bounds.i118 = icmp ugt i8 %i.cw, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cy, 4294983169
  %memchr.bits.i119 = icmp eq i64 %i.cz, 0
  %memchr1.i120.not = select i1 %memchr.bounds.i118, i1 true, i1 %memchr.bits.i119
  br i1 %memchr1.i120.not, label %bb.z, label %.critedge6

bb.z:                                             ; preds = %.lr.ph134
  switch i8 %i.cw, label %.critedge4 [
    i8 37, label %.critedge6
    i8 44, label %.critedge6
  ]

.critedge6:                                       ; preds = %bb.z, %bb.z, %.lr.ph134
  %i.da = getelementptr inbounds nuw i8, ptr %.1133, i64 1 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !17  ; 2 uses
  %.not105 = icmp eq i8 %i.db, 0
  br i1 %.not105, label %.critedge.thread, label %.lr.ph134, !llvm.loop !270

.critedge4:                                       ; preds = %bb.z
  %i.dc = call fastcc ptr @nsvg__parseNumber(ptr noundef nonnull %.1133, ptr noundef %i.a) ; 2 uses
  %i.dd = call fastcc double @nsvg__atof(ptr noundef nonnull %i.a)
  %i.de = fptrunc double %i.dd to float
  store float %i.de, ptr %i.h, align 8, !tbaa !49
  %i.df = load i8, ptr %i.dc, align 1, !tbaa !17  ; 2 uses
  %.not108135 = icmp eq i8 %i.df, 0
  br i1 %.not108135, label %.critedge.thread, label %.lr.ph137

.lr.ph137:                                        ; preds = %.critedge4, %.critedge10
  %i.dg = phi i8 [ %i.dl, %.critedge10 ], [ %i.df, %.critedge4 ] ; 3 uses
  %.2136 = phi ptr [ %i.dk, %.critedge10 ], [ %i.dc, %.critedge4 ] ; 2 uses
  %i.dh = zext nneg i8 %i.dg to i64
  %memchr.bounds.i121 = icmp ugt i8 %i.dg, 63
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = and i64 %i.di, 4294983169
  %memchr.bits.i122 = icmp eq i64 %i.dj, 0
  %memchr1.i123.not = select i1 %memchr.bounds.i121, i1 true, i1 %memchr.bits.i122
  br i1 %memchr1.i123.not, label %bb.aa, label %.critedge10

bb.aa:                                            ; preds = %.lr.ph137
  switch i8 %i.dg, label %.critedge112 [
    i8 37, label %.critedge10
    i8 44, label %.critedge10
  ]

.critedge10:                                      ; preds = %bb.aa, %bb.aa, %.lr.ph137
  %i.dk = getelementptr inbounds nuw i8, ptr %.2136, i64 1 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !17  ; 2 uses
  %.not108 = icmp eq i8 %i.dl, 0
  br i1 %.not108, label %.critedge.thread, label %.lr.ph137, !llvm.loop !271

.critedge112:                                     ; preds = %bb.aa
  %i.dm = call fastcc ptr @nsvg__parseNumber(ptr noundef nonnull %.2136, ptr noundef %i.a) ; 0 uses
  %i.dn = call fastcc double @nsvg__atof(ptr noundef nonnull %i.a)
  %i.do = fptrunc double %i.dn to float
  store float %i.do, ptr %i.i, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.al

.critedge.thread:                                 ; preds = %bb.x, %.critedge, %.critedge4, %.critedge2, %.critedge6, %.critedge10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.loopexit

bb.ab:                                            ; preds = %bb.w
  %i.dp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(20) @.str.98) #31
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.ac, label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.dr = load ptr, ptr %i.o, align 8, !tbaa !21  ; 8 uses
  %i.ds = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dr, ptr noundef nonnull dereferenceable(1) @.str.45) #31
  %.not94 = icmp eq ptr %i.ds, null
  br i1 %.not94, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.c, align 8, !tbaa !57
  br label %bb.al

bb.ae:                                            ; preds = %bb.ac
  %i.dt = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dr, ptr noundef nonnull dereferenceable(1) @.str.99) #31
  %.not95 = icmp eq ptr %i.dt, null
  br i1 %.not95, label %bb.af, label %.sink.split

bb.af:                                            ; preds = %bb.ae
  %i.du = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dr, ptr noundef nonnull dereferenceable(1) @.str.100) #31
  %.not96 = icmp eq ptr %i.du, null
  br i1 %.not96, label %bb.ag, label %.sink.split

bb.ag:                                            ; preds = %bb.af
  %i.dv = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dr, ptr noundef nonnull dereferenceable(1) @.str.101) #31
  %.not97 = icmp eq ptr %i.dv, null
  br i1 %.not97, label %bb.ah, label %.sink.split

.sink.split:                                      ; preds = %bb.ag, %bb.af, %bb.ae
  %.sink = phi i32 [ 0, %bb.ae ], [ 1, %bb.af ], [ 2, %bb.ag ]
  store i32 %.sink, ptr %i.d, align 8, !tbaa !58
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.ag
  %i.dw = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dr, ptr noundef nonnull dereferenceable(1) @.str.102) #31
  %.not98 = icmp eq ptr %i.dw, null
  br i1 %.not98, label %bb.ai, label %.sink.split161

bb.ai:                                            ; preds = %bb.ah
  %i.dx = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dr, ptr noundef nonnull dereferenceable(1) @.str.103) #31
  %.not99 = icmp eq ptr %i.dx, null
  br i1 %.not99, label %bb.aj, label %.sink.split161

bb.aj:                                            ; preds = %bb.ai
  %i.dy = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dr, ptr noundef nonnull dereferenceable(1) @.str.104) #31
  %.not100 = icmp eq ptr %i.dy, null
  br i1 %.not100, label %bb.ak, label %.sink.split161

.sink.split161:                                   ; preds = %bb.aj, %bb.ai, %bb.ah
  %.sink162 = phi i32 [ 0, %bb.ah ], [ 1, %bb.ai ], [ 2, %bb.aj ]
  store i32 %.sink162, ptr %i.e, align 4, !tbaa !59
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split161, %bb.aj
  store i32 1, ptr %i.c, align 8, !tbaa !57
  %i.dz = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dr, ptr noundef nonnull dereferenceable(1) @.str.105) #31
  %.not101 = icmp eq ptr %i.dz, null
  %spec.store.select = select i1 %.not101, i32 1, i32 2
  store i32 %spec.store.select, ptr %i.c, align 8, !tbaa !57
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.critedge112, %bb.b, %nsvg__parseCoordinate.exit117, %bb.ab, %bb.ad, %nsvg__parseCoordinate.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %2 = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.eb = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not = icmp eq ptr %i.eb, null
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !272

.loopexit:                                        ; preds = %bb.al, %bb.a, %.critedge.thread
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @nsvg__parseAttr(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #16 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 5 uses
  %i.b = alloca [512 x i8], align 16              ; 5 uses
  %i.c = alloca [6 x float], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 39936 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !55
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [312 x i8], ptr %0, i64 %i.f ; 28 uses
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.15) #31
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.preheader129, label %bb.l

.preheader129:                                    ; preds = %bb.a
  %i.j = load i8, ptr %2, align 1, !tbaa !17      ; 2 uses
  %.not.i149 = icmp eq i8 %i.j, 0
  br i1 %.not.i149, label %nsvg__parseStyle.exit, label %.preheader

.preheader:                                       ; preds = %.preheader129, %.preheader.backedge
  %.1.i130 = phi ptr [ %.1.i130.be, %.preheader.backedge ], [ %2, %.preheader129 ] ; 2 uses
  %i.k = phi i8 [ %.be, %.preheader.backedge ], [ %i.j, %.preheader129 ] ; 3 uses
  %i.l = zext nneg i8 %i.k to i64
  %memchr.bounds.i126 = icmp ugt i8 %i.k, 63
  %i.m = shl nuw i64 1, %i.l
  %i.n = and i64 %i.m, 4294983169
  %memchr.bits.i127 = icmp eq i64 %i.n, 0
  %memchr1.i128.not = select i1 %memchr.bounds.i126, i1 true, i1 %memchr.bits.i127
  br i1 %memchr1.i128.not, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %.1.i130, i64 1 ; 3 uses
  %.pr = load i8, ptr %i.o, align 1, !tbaa !17    ; 2 uses
  %.not28.i = icmp eq i8 %.pr, 0
  br i1 %.not28.i, label %.critedge.i, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.b, %nsvg__parseNameValue.exit
  %.1.i130.be = phi ptr [ %i.o, %bb.b ], [ %spec.select.i, %nsvg__parseNameValue.exit ]
  %.be = phi i8 [ %.pr, %bb.b ], [ %i.bl, %nsvg__parseNameValue.exit ]
  br label %.preheader, !llvm.loop !2

.critedge.i:                                      ; preds = %.preheader, %bb.b
  %i.p = phi i8 [ %i.k, %.preheader ], [ 0, %bb.b ]
  %.1.i.lcssa = phi ptr [ %.1.i130, %.preheader ], [ %i.o, %bb.b ] ; 14 uses
  %.1.i.lcssa152 = ptrtoaddr ptr %.1.i.lcssa to i64 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.critedge.i
  %i.q = phi i8 [ %i.p, %.critedge.i ], [ %.pre, %bb.d ]
  %.2.i = phi ptr [ %.1.i.lcssa, %.critedge.i ], [ %i.r, %bb.d ] ; 6 uses
  switch i8 %i.q, label %bb.d [
    i8 0, label %.critedge2.i
    i8 59, label %.critedge2.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.2.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.r, align 1, !tbaa !17
  br label %bb.c, !llvm.loop !3

.critedge2.i:                                     ; preds = %bb.c, %bb.c
  %i.s = icmp ugt ptr %.2.i, %.1.i.lcssa
  br i1 %i.s, label %.lr.ph, label %.critedge4.i

.lr.ph:                                           ; preds = %.critedge2.i, %.critedge6.i
  %.0.i131 = phi ptr [ %i.y, %.critedge6.i ], [ %.2.i, %.critedge2.i ] ; 3 uses
  %i.t = load i8, ptr %.0.i131, align 1, !tbaa !17 ; 3 uses
  %i.u = icmp eq i8 %i.t, 59
  br i1 %i.u, label %.critedge6.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.v = zext nneg i8 %i.t to i64
  %memchr.bounds.i = icmp ugt i8 %i.t, 63
  %i.w = shl nuw i64 1, %i.v
  %i.x = and i64 %i.w, 4294983169
  %memchr.bits.i = icmp eq i64 %i.x, 0
  %memchr1.i.not = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr1.i.not, label %.critedge4.i, label %.critedge6.i

.critedge6.i:                                     ; preds = %bb.e, %.lr.ph
  %i.y = getelementptr inbounds i8, ptr %.0.i131, i64 -1 ; 2 uses
  %i.z = icmp ugt ptr %i.y, %.1.i.lcssa
  br i1 %i.z, label %.lr.ph, label %.critedge4.i, !llvm.loop !4

.critedge4.i:                                     ; preds = %.critedge6.i, %bb.e, %.critedge2.i
  %.0.i.lcssa = phi ptr [ %.2.i, %.critedge2.i ], [ %.1.i.lcssa, %.critedge6.i ], [ %.0.i131, %bb.e ] ; 2 uses
  %.0.i.lcssa153 = ptrtoaddr ptr %.0.i.lcssa to i64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.lcssa, i64 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.ab = icmp ult ptr %.1.i.lcssa, %i.aa
  br i1 %i.ab, label %.lr.ph135.preheader, label %.critedge2.i120

.lr.ph135.preheader:                              ; preds = %.critedge4.i
  %i.ac = call i64 @llvm.usub.sat.i64(i64 %.0.i.lcssa153, i64 %.1.i.lcssa152)
  %scevgep = getelementptr i8, ptr %.1.i.lcssa, i64 %i.ac
  br label %.lr.ph135

.lr.ph135:                                        ; preds = %.lr.ph135.preheader, %bb.f
  %.040.i134 = phi ptr [ %i.ae, %bb.f ], [ %.1.i.lcssa, %.lr.ph135.preheader ] ; 4 uses
  %i.ad = load i8, ptr %.040.i134, align 1, !tbaa !17
  %.not.i125 = icmp eq i8 %i.ad, 58
  br i1 %.not.i125, label %.critedge.i118, label %bb.f

bb.f:                                             ; preds = %.lr.ph135
  %i.ae = getelementptr inbounds nuw i8, ptr %.040.i134, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %.040.i134, %scevgep
  br i1 %exitcond.not, label %.critedge.i118, label %.lr.ph135, !llvm.loop !5

.critedge.i118:                                   ; preds = %bb.f, %.lr.ph135
  %.040.i.lcssa.ph = phi ptr [ %i.ae, %bb.f ], [ %.040.i134, %.lr.ph135 ] ; 8 uses
  %.pre159 = ptrtoaddr ptr %.040.i.lcssa.ph to i64 ; 4 uses
  %i.af = icmp ugt ptr %.040.i.lcssa.ph, %.1.i.lcssa
  br i1 %i.af, label %.lr.ph140.preheader, label %.critedge2.i120

.lr.ph140.preheader:                              ; preds = %.critedge.i118
  %i.ag = sub i64 %.1.i.lcssa152, %.pre159
  %scevgep155 = getelementptr i8, ptr %.040.i.lcssa.ph, i64 %i.ag
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %.critedge4.i124
  %.1.i119139 = phi ptr [ %i.am, %.critedge4.i124 ], [ %.040.i.lcssa.ph, %.lr.ph140.preheader ] ; 3 uses
  %i.ah = load i8, ptr %.1.i119139, align 1, !tbaa !17 ; 3 uses
  %i.ai = icmp eq i8 %i.ah, 58
  br i1 %i.ai, label %.critedge4.i124, label %bb.g

bb.g:                                             ; preds = %.lr.ph140
  %i.aj = zext nneg i8 %i.ah to i64
  %memchr.bounds.i.i = icmp ugt i8 %i.ah, 63
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = and i64 %i.ak, 4294983169
  %memchr.bits.i.i = icmp eq i64 %i.al, 0
  %memchr1.i.i.not = select i1 %memchr.bounds.i.i, i1 true, i1 %memchr.bits.i.i
  br i1 %memchr1.i.i.not, label %.critedge2.i120, label %.critedge4.i124

.critedge4.i124:                                  ; preds = %bb.g, %.lr.ph140
  %i.am = getelementptr inbounds i8, ptr %.1.i119139, i64 -1 ; 2 uses
  %i.an = icmp ugt ptr %i.am, %.1.i.lcssa
  br i1 %i.an, label %.lr.ph140, label %.critedge2.i120, !llvm.loop !6

.critedge2.i120:                                  ; preds = %.critedge4.i124, %bb.g, %.critedge4.i, %.critedge.i118
  %.040.i.lcssa173 = phi ptr [ %.040.i.lcssa.ph, %.critedge.i118 ], [ %.1.i.lcssa, %.critedge4.i ], [ %.040.i.lcssa.ph, %bb.g ], [ %.040.i.lcssa.ph, %.critedge4.i124 ] ; 4 uses
  %.040.i.lcssa154.pre-phi172 = phi i64 [ %.pre159, %.critedge.i118 ], [ %.1.i.lcssa152, %.critedge4.i ], [ %.pre159, %bb.g ], [ %.pre159, %.critedge4.i124 ]
  %.1.i119.lcssa = phi ptr [ %.040.i.lcssa.ph, %.critedge.i118 ], [ %.1.i.lcssa, %.critedge4.i ], [ %scevgep155, %.critedge4.i124 ], [ %.1.i119139, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i119.lcssa, i64 1
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %.1.i.lcssa to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = trunc i64 %i.ar to i32                  ; 2 uses
  %spec.store.select.i121 = call i32 @llvm.smin.i32(i32 %i.as, i32 511) ; 2 uses
  %.not42.i = icmp eq i32 %i.as, 0
  br i1 %.not42.i, label %.critedge2.i120._crit_edge, label %bb.h

.critedge2.i120._crit_edge:                       ; preds = %.critedge2.i120
  %.pre160 = zext nneg i32 %spec.store.select.i121 to i64
  br label %bb.i

bb.h:                                             ; preds = %.critedge2.i120
  %i.at = sext i32 %spec.store.select.i121 to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %.1.i.lcssa, i64 %i.at, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %.critedge2.i120._crit_edge, %bb.h
  %.pre-phi = phi i64 [ %.pre160, %.critedge2.i120._crit_edge ], [ %i.at, %bb.h ]
  %i.au = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi
  store i8 0, ptr %i.au, align 1, !tbaa !17
  %i.av = icmp ult ptr %.040.i.lcssa173, %i.aa
  br i1 %i.av, label %.lr.ph145.preheader, label %.critedge6.i123

.lr.ph145.preheader:                              ; preds = %bb.i
  %i.aw = call i64 @llvm.usub.sat.i64(i64 %.0.i.lcssa153, i64 %.040.i.lcssa154.pre-phi172)
  %scevgep157 = getelementptr i8, ptr %.040.i.lcssa173, i64 %i.aw
  br label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph145.preheader, %.critedge8.i
  %.0.i122144 = phi ptr [ %i.bc, %.critedge8.i ], [ %.040.i.lcssa173, %.lr.ph145.preheader ] ; 4 uses
  %i.ax = load i8, ptr %.0.i122144, align 1, !tbaa !17 ; 3 uses
  %i.ay = icmp eq i8 %i.ax, 58
  br i1 %i.ay, label %.critedge8.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph145
  %i.az = zext nneg i8 %i.ax to i64
  %memchr.bounds.i45.i = icmp ugt i8 %i.ax, 63
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = and i64 %i.ba, 4294983169
  %memchr.bits.i46.i = icmp eq i64 %i.bb, 0
  %memchr1.i47.i.not = select i1 %memchr.bounds.i45.i, i1 true, i1 %memchr.bits.i46.i
  br i1 %memchr1.i47.i.not, label %.critedge6.i123, label %.critedge8.i

end_hunk_4
