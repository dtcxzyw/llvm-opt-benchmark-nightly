Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ubidi?download=true
inline.NumInlined: 71
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ubidi_getParagraph_78:bb.a

bb.z:                                             ; preds = %bb.y
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp slt i32 %.0.i, %i.ai
  br i1 %i.aj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 141
  %i.al = load i8, ptr %i.ak, align 1
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  %i.an = load i32, ptr %i.am, align 8            ; 4 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i, label %ubidi_getParaLevelAtIndex_78.exit.i

.lr.ph.i.i:                                       ; preds = %bb.ab
  %wide.trip.count.i.i = zext nneg i32 %i.an to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ad ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.i
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = icmp slt i32 %.0.i, %i.aq
  br i1 %i.ar, label %._crit_edge.loopexit.split.loop.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %ubidi_getParaLevelAtIndex_78.exit.i, label %bb.ac, !llvm.loop !0

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %bb.ac
  %i.as = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %ubidi_getParaLevelAtIndex_78.exit.i

ubidi_getParaLevelAtIndex_78.exit.i:              ; preds = %bb.ad, %._crit_edge.loopexit.split.loop.exit.i.i, %bb.ab
  %.0.lcssa.i.i = phi i32 [ 0, %bb.ab ], [ %i.as, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.an, %bb.ad ]
  %i.at = add nsw i32 %i.an, -1
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %.0.lcssa.i.i, i32 %i.at)
  %i.au = sext i32 %spec.select.i.i to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = trunc i32 %i.ax to i8
  br label %bb.ae

bb.ae:                                            ; preds = %ubidi_getParaLevelAtIndex_78.exit.i, %bb.aa
  %i.az = phi i8 [ %i.al, %bb.aa ], [ %i.ay, %ubidi_getParaLevelAtIndex_78.exit.i ]
  store i8 %i.az, ptr %4, align 1
  br label %ubidi_getParagraphByIndex_78.exit

ubidi_getParagraphByIndex_78.exit:                ; preds = %bb.ae, %bb.x, %bb.q, %bb.o, %bb.a, %bb.b, %bb.j, %bb.g
  %.025 = phi i32 [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.a ], [ -1, %bb.b ], [ %i.o, %bb.ae ], [ %i.o, %bb.o ], [ %i.o, %bb.q ], [ %i.o, %bb.x ]
  ret i32 %.025
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ubidi_setClassCallback_78(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp eq ptr %5, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %5, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %5, align 4
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %.not17 = icmp eq ptr %3, null
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.f = load ptr, ptr %i.e, align 8
  store ptr %i.f, ptr %3, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not18 = icmp eq ptr %4, null
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = load ptr, ptr %i.g, align 8
  store ptr %i.h, ptr %4, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %2, ptr %i.j, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ubidi_getClassCallback_78(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.c = load ptr, ptr %i.b, align 8
  store ptr %i.c, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not9 = icmp eq ptr %2, null
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.e = load ptr, ptr %i.d, align 8
  store ptr %i.e, ptr %2, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @ubidi_getCustomizedClass_78(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.b(ptr noundef %i.e, i32 noundef %1) #19 ; 2 uses
  %i.g = icmp eq i32 %i.f, 23
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call i32 @ubidi_getClass_78(i32 noundef %1) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.h, %bb.c ], [ %i.f, %bb.b ]  ; 2 uses
  %i.i = icmp sgt i32 %.0, 22
  %spec.store.select = select i1 %i.i, i32 10, i32 %.0
  ret i32 %spec.store.select
}

declare i32 @ubidi_getClass_78(i32 noundef) local_unnamed_addr #5

declare ptr @ubidi_getLevels_78(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @ubidi_writeReordered_78(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

declare void @ubidi_getVisualMap_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare signext i8 @ubidi_getRuns_78(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZL18bracketProcessCharP11BracketDatai(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.c = load i32, ptr %i.b, align 4
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.d ; 24 uses
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = sext i32 %1 to i64                       ; 6 uses
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i ; 5 uses
  %i.k = load i8, ptr %i.j, align 1               ; 8 uses
  %i.l = icmp eq i8 %i.k, 10
  br i1 %i.l, label %bb.b, label %.thread166

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.i
  %i.p = load i16, ptr %i.o, align 2              ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 6 ; 6 uses
  %i.r = load i16, ptr %i.q, align 2              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 5 uses
  %i.t = load i16, ptr %i.s, align 4              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 10 uses
  %i.v = zext i16 %i.p to i32                     ; 2 uses
  %sext = zext i16 %i.t to i64
  %i.w = icmp ugt i16 %i.r, %i.t
  br i1 %i.w, label %.lr.ph231, label %._crit_edge232

.lr.ph231:                                        ; preds = %bb.b
  %i.x = zext i16 %i.r to i64                     ; 2 uses
  %i.y = load ptr, ptr %i.u, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.z = icmp sgt i64 %i.aa, %sext
  %indvar.next = add i64 %indvar, 1
  br i1 %i.z, label %bb.d, label %._crit_edge232, !llvm.loop !48

bb.d:                                             ; preds = %.lr.ph231, %bb.c
  %indvar = phi i64 [ 0, %.lr.ph231 ], [ %indvar.next, %bb.c ] ; 2 uses
  %indvars.iv229 = phi i64 [ %i.x, %.lr.ph231 ], [ %i.aa, %bb.c ] ; 3 uses
  %i.aa = add nsw i64 %indvars.iv229, -1          ; 12 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %.not = icmp eq i32 %i.ad, %i.v
  br i1 %.not, label %bb.e, label %bb.c, !llvm.loop !48

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.af = trunc nuw nsw i64 %i.aa to i32          ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = and i8 %i.ah, 1                         ; 3 uses
  %i.aj = zext nneg i8 %i.ai to i32
  %cond.i = icmp eq i8 %i.ai, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.al = load i16, ptr %i.ak, align 4            ; 3 uses
  br i1 %cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = and i16 %i.al, 1
  %.not.i = icmp eq i16 %i.am, 0
  br i1 %.not.i, label %bb.h, label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.an = and i16 %i.al, 2
  %.not68.i = icmp eq i16 %i.an, 0
  br i1 %.not68.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ao = and i16 %i.al, 3
  %.not69.i = icmp eq i16 %i.ao, 0
  br i1 %.not69.i, label %_ZL21bracketProcessClosingP11BracketDataii.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = zext i16 %i.t to i64
  %i.aq = icmp eq i64 %i.aa, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %.not70.i = icmp eq i32 %i.as, %i.aj
  %i.at = trunc i32 %i.as to i8
  %spec.select.i = select i1 %.not70.i, i8 %i.ai, i8 %i.at
  br label %bb.j

_ZL21bracketProcessClosingP11BracketDataii.exit.thread: ; preds = %bb.h
  %i.au = trunc i64 %i.aa to i16
  store i16 %i.au, ptr %i.q, align 2
  br label %.thread166

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.f
  %.062.shrunk.i = phi i1 [ true, %bb.f ], [ %i.aq, %bb.i ], [ true, %bb.g ]
  %.061.i = phi i8 [ 0, %bb.f ], [ %spec.select.i, %bb.i ], [ 1, %bb.g ] ; 5 uses
  %i.av = load i32, ptr %i.ab, align 4
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.h, i64 %i.aw
  store i8 %.061.i, ptr %i.ax, align 1
  %i.ay = load ptr, ptr %0, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.i
  store i8 %.061.i, ptr %i.bb, align 1
  %i.bc = load i32, ptr %i.ab, align 4
  tail call fastcc void @_ZL6fixN0cP11BracketDataiih(ptr noundef nonnull %0, i32 noundef range(i32 0, 65535) %i.af, i32 noundef %i.bc, i8 noundef zeroext %.061.i)
  br i1 %.062.shrunk.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bd = trunc i64 %i.aa to i16                  ; 3 uses
  store i16 %i.bd, ptr %i.q, align 2
  %i.be = load i16, ptr %i.s, align 4             ; 2 uses
  %i.bf = icmp ult i16 %i.be, %i.bd
  br i1 %i.bf, label %.lr.ph83.i, label %_ZL21bracketProcessClosingP11BracketDataii.exit

bb.l:                                             ; preds = %.lr.ph83.i
  %i.bg = add i16 %storemerge82.i, -1             ; 3 uses
  store i16 %i.bg, ptr %i.q, align 2
  %i.bh = icmp ugt i16 %i.bg, %i.be
  br i1 %i.bh, label %.lr.ph83.i, label %_ZL21bracketProcessClosingP11BracketDataii.exit, !llvm.loop !49

.lr.ph83.i:                                       ; preds = %bb.k, %bb.l
  %storemerge82.i = phi i16 [ %i.bg, %bb.l ], [ %i.bd, %bb.k ] ; 2 uses
  %i.bi = zext i16 %storemerge82.i to i64
  %i.bj = load ptr, ptr %i.u, align 8
  %i.bk = getelementptr [24 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = getelementptr i8, ptr %i.bk, i64 -24
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = load i32, ptr %i.ab, align 4
  %i.bo = icmp eq i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.l, label %_ZL21bracketProcessClosingP11BracketDataii.exit

bb.m:                                             ; preds = %bb.j
  %i.bp = sub nsw i32 0, %1
  store i32 %i.bp, ptr %i.ae, align 4
  %i.bq = load i16, ptr %i.s, align 4
  %i.br = zext i16 %i.bq to i64
  %.not71.not75.i = icmp ugt i64 %i.aa, %i.br
  br i1 %.not71.not75.i, label %.lr.ph.i, label %.critedge2.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.076.in.i = phi i32 [ %.076.i, %bb.n ], [ %i.af, %bb.m ]
  %.076.i = add nsw i32 %.076.in.i, -1            ; 3 uses
  %i.bs = load ptr, ptr %i.u, align 8
  %i.bt = zext nneg i32 %.076.i to i64
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = load i32, ptr %i.ab, align 4
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.n, label %.critedge2.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 0, ptr %i.by, align 4
  %i.bz = load i16, ptr %i.s, align 4
  %i.ca = zext i16 %i.bz to i32
  %.not71.not.i = icmp samesign ugt i32 %.076.i, %i.ca
  br i1 %.not71.not.i, label %.lr.ph.i, label %.critedge2.i, !llvm.loop !50

.critedge2.i:                                     ; preds = %bb.n, %.lr.ph.i, %bb.m
  %i.cb = load i16, ptr %i.q, align 2             ; 2 uses
  %i.cc = zext i16 %i.cb to i64
  %i.cd = icmp ult i64 %indvars.iv229, %i.cc
  br i1 %i.cd, label %.lr.ph80.i, label %_ZL21bracketProcessClosingP11BracketDataii.exit

.lr.ph80.i:                                       ; preds = %.critedge2.i, %bb.q
  %i.ce = phi i16 [ %i.cl, %bb.q ], [ %i.cb, %.critedge2.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ %indvars.iv229, %.critedge2.i ] ; 2 uses
  %i.cf = load ptr, ptr %i.u, align 8
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %indvars.iv.i ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %.not72.i = icmp slt i32 %i.ch, %1
  br i1 %.not72.i, label %bb.o, label %_ZL21bracketProcessClosingP11BracketDataii.exit

bb.o:                                             ; preds = %.lr.ph80.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ci, align 4
  %.pre.i = load i16, ptr %i.q, align 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cl = phi i16 [ %i.ce, %bb.o ], [ %.pre.i, %bb.p ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cm = zext i16 %i.cl to i64
  %i.cn = icmp samesign ult i64 %indvars.iv.next.i, %i.cm
  br i1 %i.cn, label %.lr.ph80.i, label %_ZL21bracketProcessClosingP11BracketDataii.exit, !llvm.loop !51

_ZL21bracketProcessClosingP11BracketDataii.exit:  ; preds = %.lr.ph80.i, %bb.q, %bb.l, %.lr.ph83.i, %bb.k, %.critedge2.i
  %i.co = icmp eq i8 %.061.i, 10
  br i1 %i.co, label %.thread166, label %bb.r

bb.r:                                             ; preds = %_ZL21bracketProcessClosingP11BracketDataii.exit
  %i.cp = zext i8 %.061.i to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 10, ptr %i.cq, align 2
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.cp, ptr %i.cr, align 4
  store i32 %1, ptr %i.e, align 4
  %i.cs = load ptr, ptr %0, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 120
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %i.i
  %i.cw = load i8, ptr %i.cv, align 1             ; 2 uses
  %.not154 = icmp sgt i8 %i.cw, -1
  br i1 %.not154, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = and i8 %i.cw, 1                         ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 %i.cx, ptr %i.cy, align 1
  %i.cz = zext nneg i8 %i.cx to i16
  %i.da = shl nuw nsw i16 1, %i.cz                ; 5 uses
  %i.db = load i16, ptr %i.s, align 4             ; 2 uses
  %i.dc = zext i16 %i.db to i64
  %i.dd = icmp sgt i64 %i.aa, %i.dc
  br i1 %i.dd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.de = zext i16 %i.db to i64                   ; 4 uses
  %i.df = sub i64 %i.aa, %i.de
  %i.dg = add nsw i64 %i.x, -2
  %i.dh = add i64 %indvar, %i.de
  %i.di = sub i64 %i.dg, %i.dh
  %xtraiter = and i64 %i.df, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv199.prol = phi i64 [ %indvars.iv.next200.prol, %.lr.ph.prol ], [ %i.de, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.dj = load ptr, ptr %i.u, align 8
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %indvars.iv199.prol
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 12 ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 4
  %i.dn = or i16 %i.dm, %i.da
  store i16 %i.dn, ptr %i.dl, align 4
  %indvars.iv.next200.prol = add nuw nsw i64 %indvars.iv199.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !52

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv199.unr = phi i64 [ %i.de, %.lr.ph.preheader ], [ %indvars.iv.next200.prol, %.lr.ph.prol ]
  %i.do = icmp ult i64 %i.di, 3
  br i1 %i.do, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv199 = phi i64 [ %indvars.iv.next200.3, %.lr.ph ], [ %indvars.iv199.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.dp = load ptr, ptr %i.u, align 8
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %indvars.iv199
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12 ; 2 uses
  %i.ds = load i16, ptr %i.dr, align 4
  %i.dt = or i16 %i.ds, %i.da
  store i16 %i.dt, ptr %i.dr, align 4
  %i.du = load ptr, ptr %i.u, align 8
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %indvars.iv199
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 36 ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 4
  %i.dy = or i16 %i.dx, %i.da
  store i16 %i.dy, ptr %i.dw, align 4
  %i.dz = load ptr, ptr %i.u, align 8
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %indvars.iv199
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 60 ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 4
  %i.ed = or i16 %i.ec, %i.da
  store i16 %i.ed, ptr %i.eb, align 4
  %i.ee = load ptr, ptr %i.u, align 8
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %indvars.iv199
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 84 ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 4
  %i.ei = or i16 %i.eh, %i.da
  store i16 %i.ei, ptr %i.eg, align 4
  %indvars.iv.next200.3 = add nuw nsw i64 %indvars.iv199, 4 ; 2 uses
  %i.ej = icmp slt i64 %indvars.iv.next200.3, %i.aa
  br i1 %i.ej, label %.lr.ph, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.s
  %i.ek = load ptr, ptr %0, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 120
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %i.i ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = and i8 %i.eo, 127
  store i8 %i.ep, ptr %i.en, align 1
  %.pre = load ptr, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 120
  %.pre205 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.r
  %i.eq = phi ptr [ %.pre205, %._crit_edge ], [ %i.cu, %bb.r ]
  %i.er = load ptr, ptr %i.u, align 8
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.aa
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds i8, ptr %i.eq, i64 %i.eu ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = and i8 %i.ew, 127
  store i8 %i.ex, ptr %i.ev, align 1
  br label %.thread171

._crit_edge232:                                   ; preds = %bb.c, %bb.b
  %.not155 = icmp eq i16 %i.p, 0
  br i1 %.not155, label %.thread166, label %bb.u

bb.u:                                             ; preds = %._crit_edge232
  %i.ey = tail call i32 @u_getBidiPairedBracket_78(i32 noundef %i.v) #19
  %i.ez = trunc i32 %i.ey to i16                  ; 3 uses
  %.not156 = icmp eq i16 %i.p, %i.ez
  br i1 %.not156, label %.thread166, label %bb.v

bb.v:                                             ; preds = %bb.u
  %2 = zext i16 %i.p to i32
  %i.fa = tail call i32 @ubidi_getPairedBracketType_78(i32 noundef %2) #19
  %i.fb = icmp eq i32 %i.fa, 1
  br i1 %i.fb, label %bb.w, label %.thread166

bb.w:                                             ; preds = %bb.v
  switch i16 %i.ez, label %bb.z [
    i16 9002, label %bb.x
    i16 12297, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.fc = tail call fastcc noundef signext i8 @_ZL17bracketAddOpeningP11BracketDataDsi(ptr noundef %0, i16 noundef zeroext 12297, i32 noundef %1)
  %.not158 = icmp eq i8 %i.fc, 0
  br i1 %.not158, label %.thread171, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.fd = tail call fastcc noundef signext i8 @_ZL17bracketAddOpeningP11BracketDataDsi(ptr noundef %0, i16 noundef zeroext 9002, i32 noundef %1)
  %.not157 = icmp eq i8 %i.fd, 0
  br i1 %.not157, label %.thread171, label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y, %bb.x
  %i.fe = tail call fastcc noundef signext i8 @_ZL17bracketAddOpeningP11BracketDataDsi(ptr noundef %0, i16 noundef zeroext %i.ez, i32 noundef %1)
  %.not159 = icmp eq i8 %i.fe, 0
  br i1 %.not159, label %.thread171, label %.thread166

.thread166:                                       ; preds = %._crit_edge232, %_ZL21bracketProcessClosingP11BracketDataii.exit, %_ZL21bracketProcessClosingP11BracketDataii.exit.thread, %bb.z, %bb.v, %bb.u, %bb.a
  %i.ff = load ptr, ptr %0, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 120
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 %i.i
  %i.fj = load i8, ptr %i.fi, align 1             ; 2 uses
  %.not160 = icmp sgt i8 %i.fj, -1
  br i1 %.not160, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.thread166
  %i.fk = and i8 %i.fj, 1                         ; 5 uses
  %i.fl = add i8 %i.k, -11
  %or.cond5 = icmp ult i8 %i.fl, -3
  br i1 %or.cond5, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i8 %i.fk, ptr %i.j, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fm = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 %i.fk, ptr %i.fm, align 2
  %i.fn = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 %i.fk, ptr %i.fn, align 1
  %i.fo = zext nneg i8 %i.fk to i32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.fo, ptr %i.fp, align 4
  store i32 %1, ptr %i.e, align 4
  br label %bb.an

bb.ad:                                            ; preds = %.thread166
  switch i8 %i.k, label %bb.am [
    i8 13, label %bb.ae
    i8 1, label %bb.ae
    i8 0, label %bb.ae
    i8 2, label %bb.af
    i8 5, label %bb.ak
    i8 17, label %bb.al
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad, %bb.ad
  %i.fq = icmp ne i8 %i.k, 0                      ; 2 uses
  %i.fr = zext i1 %i.fq to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 %i.k, ptr %i.fs, align 2
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 %i.k, ptr %i.ft, align 1
  %i.fu = zext i1 %i.fq to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.fu, ptr %i.fv, align 4
  store i32 %1, ptr %i.e, align 4
  br label %bb.an

bb.af:                                            ; preds = %bb.ad
  %i.fw = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 2, ptr %i.fw, align 2
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.fy = load i8, ptr %i.fx, align 1
  switch i8 %i.fy, label %bb.ai [
    i8 0, label %bb.ag
    i8 13, label %bb.aj
  ]

bb.ag:                                            ; preds = %bb.af
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.ga = load i8, ptr %i.fz, align 8
  %.not161 = icmp eq i8 %i.ga, 0
  br i1 %.not161, label %bb.ah, label %.thread175.sink.split

bb.ah:                                            ; preds = %bb.ag
  store i8 23, ptr %i.j, align 1
  br label %.thread175.sink.split

bb.ai:                                            ; preds = %bb.af
  br label %bb.aj

bb.aj:                                            ; preds = %bb.af, %bb.ai
  %storemerge = phi i8 [ 24, %bb.ai ], [ 5, %bb.af ]
  store i8 %storemerge, ptr %i.j, align 1
  br label %.thread175.sink.split

bb.ak:                                            ; preds = %bb.ad
  %i.gb = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 5, ptr %i.gb, align 2
  br label %.thread175.sink.split

bb.al:                                            ; preds = %bb.ad
  %i.gc = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.gd = load i8, ptr %i.gc, align 2             ; 2 uses
  %i.ge = icmp eq i8 %i.gd, 10
  br i1 %i.ge, label %.thread178, label %bb.an

.thread178:                                       ; preds = %bb.al
  store i8 10, ptr %i.j, align 1
  br label %.thread171

bb.am:                                            ; preds = %bb.ad
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 %i.k, ptr %i.gf, align 2
  br label %bb.an

bb.an:                                            ; preds = %bb.ae, %bb.al, %bb.am, %bb.ac
  %.0147 = phi i8 [ %i.fk, %bb.ac ], [ %i.fr, %bb.ae ], [ %i.k, %bb.am ], [ %i.gd, %bb.al ] ; 4 uses
  switch i8 %.0147, label %.thread171 [
    i8 13, label %.thread175
    i8 1, label %.thread175
    i8 0, label %.thread175
  ]

.thread175.sink.split:                            ; preds = %bb.ag, %bb.ah, %bb.aj, %bb.ak
  %.sink = phi i32 [ 1, %bb.ak ], [ 1, %bb.aj ], [ 0, %bb.ah ], [ 0, %bb.ag ]
  %.0147177.ph = phi i8 [ 1, %bb.ak ], [ 1, %bb.aj ], [ 0, %bb.ah ], [ 0, %bb.ag ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %.sink, ptr %i.gg, align 4
  store i32 %1, ptr %i.e, align 4
  br label %.thread175

.thread175:                                       ; preds = %.thread175.sink.split, %bb.an, %bb.an, %bb.an
  %.0147177 = phi i8 [ %.0147, %bb.an ], [ %.0147, %bb.an ], [ %.0147, %bb.an ], [ %.0147177.ph, %.thread175.sink.split ]
  %i.gh = icmp ne i8 %.0147177, 0
  %i.gi = zext i1 %i.gh to i16
  %i.gj = shl nuw nsw i16 1, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.gl = load i16, ptr %i.gk, align 4            ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.e, i64 6 ; 2 uses
  %i.gn = load i16, ptr %i.gm, align 2            ; 2 uses
  %i.go = icmp ult i16 %i.gl, %i.gn
  br i1 %i.go, label %.lr.ph193, label %.thread171

.lr.ph193:                                        ; preds = %.thread175
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.gq = zext i16 %i.gl to i64
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph193, %bb.aq
  %i.gr = phi i16 [ %i.gn, %.lr.ph193 ], [ %i.gz, %bb.aq ]
  %indvars.iv202 = phi i64 [ %i.gq, %.lr.ph193 ], [ %indvars.iv.next203, %bb.aq ] ; 2 uses
  %i.gs = load ptr, ptr %i.gp, align 8
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %indvars.iv202 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4
  %i.gv = icmp sgt i32 %1, %i.gu
  br i1 %i.gv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 12 ; 2 uses
  %i.gx = load i16, ptr %i.gw, align 4
  %i.gy = or i16 %i.gx, %i.gj
  store i16 %i.gy, ptr %i.gw, align 4
  %.pre206 = load i16, ptr %i.gm, align 2
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.gz = phi i16 [ %i.gr, %bb.ao ], [ %.pre206, %bb.ap ] ; 2 uses
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %i.ha = zext i16 %i.gz to i64
  %i.hb = icmp samesign ult i64 %indvars.iv.next203, %i.ha
  br i1 %i.hb, label %bb.ao, label %.thread171, !llvm.loop !54

.thread171:                                       ; preds = %bb.aq, %.thread175, %bb.z, %bb.x, %bb.t, %bb.y, %.thread178, %bb.an
  %.1 = phi i8 [ 1, %.thread178 ], [ 0, %bb.y ], [ 1, %bb.an ], [ 0, %bb.z ], [ 0, %bb.x ], [ 1, %bb.t ], [ 1, %.thread175 ], [ 1, %bb.aq ]
  ret i8 %.1
}

declare i32 @u_getBidiPairedBracket_78(i32 noundef) local_unnamed_addr #5

declare i32 @ubidi_getPairedBracketType_78(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZL17bracketAddOpeningP11BracketDataDsi(ptr nofree noundef nonnull captures(address) %0, i16 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.c = load i32, ptr %i.b, align 4
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 6 ; 4 uses
  %i.g = load i16, ptr %i.f, align 2              ; 2 uses
  %i.h = zext i16 %i.g to i32                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not = icmp sgt i32 %i.j, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.pre35 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 3 uses
  %narrow = mul nuw nsw i32 %i.h, 48              ; 4 uses
  %i.n = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i32 %narrow to i64
  %i.q = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.p) #17 ; 3 uses
  store ptr %i.q, ptr %i.l, align 8
end_hunk_0
