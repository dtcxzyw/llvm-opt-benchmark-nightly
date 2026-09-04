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
  %i.bk = add nuw nsw i64 %i.bi, 4294967295
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = load i32, ptr %i.ab, align 4
  %i.bp = icmp eq i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.l, label %_ZL21bracketProcessClosingP11BracketDataii.exit

bb.m:                                             ; preds = %bb.j
  %i.bq = sub nsw i32 0, %1
  store i32 %i.bq, ptr %i.ae, align 4
  %i.br = load i16, ptr %i.s, align 4
  %i.bs = zext i16 %i.br to i64
  %.not71.not75.i = icmp ugt i64 %i.aa, %i.bs
  br i1 %.not71.not75.i, label %.lr.ph.i, label %.critedge2.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.076.in.i = phi i32 [ %.076.i, %bb.n ], [ %i.af, %bb.m ]
  %.076.i = add nsw i32 %.076.in.i, -1            ; 3 uses
  %i.bt = load ptr, ptr %i.u, align 8
  %i.bu = zext nneg i32 %.076.i to i64
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = load i32, ptr %i.ab, align 4
  %i.by = icmp eq i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.n, label %.critedge2.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 0, ptr %i.bz, align 4
  %i.ca = load i16, ptr %i.s, align 4
  %i.cb = zext i16 %i.ca to i32
  %.not71.not.i = icmp samesign ugt i32 %.076.i, %i.cb
  br i1 %.not71.not.i, label %.lr.ph.i, label %.critedge2.i, !llvm.loop !50

.critedge2.i:                                     ; preds = %bb.n, %.lr.ph.i, %bb.m
  %i.cc = load i16, ptr %i.q, align 2             ; 2 uses
  %i.cd = zext i16 %i.cc to i64
  %i.ce = icmp ult i64 %indvars.iv229, %i.cd
  br i1 %i.ce, label %.lr.ph80.i, label %_ZL21bracketProcessClosingP11BracketDataii.exit

.lr.ph80.i:                                       ; preds = %.critedge2.i, %bb.q
  %i.cf = phi i16 [ %i.cm, %bb.q ], [ %i.cc, %.critedge2.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ %indvars.iv229, %.critedge2.i ] ; 2 uses
  %i.cg = load ptr, ptr %i.u, align 8
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %indvars.iv.i ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4
  %.not72.i = icmp slt i32 %i.ci, %1
  br i1 %.not72.i, label %bb.o, label %_ZL21bracketProcessClosingP11BracketDataii.exit

bb.o:                                             ; preds = %.lr.ph80.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.cj, align 4
  %.pre.i = load i16, ptr %i.q, align 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cm = phi i16 [ %i.cf, %bb.o ], [ %.pre.i, %bb.p ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cn = zext i16 %i.cm to i64
  %i.co = icmp samesign ult i64 %indvars.iv.next.i, %i.cn
  br i1 %i.co, label %.lr.ph80.i, label %_ZL21bracketProcessClosingP11BracketDataii.exit, !llvm.loop !51

_ZL21bracketProcessClosingP11BracketDataii.exit:  ; preds = %.lr.ph80.i, %bb.q, %bb.l, %.lr.ph83.i, %bb.k, %.critedge2.i
  %i.cp = icmp eq i8 %.061.i, 10
  br i1 %i.cp, label %.thread166, label %bb.r

bb.r:                                             ; preds = %_ZL21bracketProcessClosingP11BracketDataii.exit
  %i.cq = zext i8 %.061.i to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 10, ptr %i.cr, align 2
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.cq, ptr %i.cs, align 4
  store i32 %1, ptr %i.e, align 4
  %i.ct = load ptr, ptr %0, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 120
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %i.i
  %i.cx = load i8, ptr %i.cw, align 1             ; 2 uses
  %.not154 = icmp sgt i8 %i.cx, -1
  br i1 %.not154, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = and i8 %i.cx, 1                         ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 %i.cy, ptr %i.cz, align 1
  %i.da = zext nneg i8 %i.cy to i16
  %i.db = shl nuw nsw i16 1, %i.da                ; 5 uses
  %i.dc = load i16, ptr %i.s, align 4             ; 2 uses
  %i.dd = zext i16 %i.dc to i64
  %i.de = icmp sgt i64 %i.aa, %i.dd
  br i1 %i.de, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.df = zext i16 %i.dc to i64                   ; 4 uses
  %i.dg = sub i64 %i.aa, %i.df
  %i.dh = add nsw i64 %i.x, -2
  %i.di = add i64 %indvar, %i.df
  %i.dj = sub i64 %i.dh, %i.di
  %xtraiter = and i64 %i.dg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv199.prol = phi i64 [ %indvars.iv.next200.prol, %.lr.ph.prol ], [ %i.df, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.dk = load ptr, ptr %i.u, align 8
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %indvars.iv199.prol
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 12 ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 4
  %i.do = or i16 %i.dn, %i.db
  store i16 %i.do, ptr %i.dm, align 4
  %indvars.iv.next200.prol = add nuw nsw i64 %indvars.iv199.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !52

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv199.unr = phi i64 [ %i.df, %.lr.ph.preheader ], [ %indvars.iv.next200.prol, %.lr.ph.prol ]
  %i.dp = icmp ult i64 %i.dj, 3
  br i1 %i.dp, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv199 = phi i64 [ %indvars.iv.next200.3, %.lr.ph ], [ %indvars.iv199.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.dq = load ptr, ptr %i.u, align 8
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %indvars.iv199
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 12 ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 4
  %i.du = or i16 %i.dt, %i.db
  store i16 %i.du, ptr %i.ds, align 4
  %i.dv = load ptr, ptr %i.u, align 8
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %indvars.iv199
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 36 ; 2 uses
  %i.dy = load i16, ptr %i.dx, align 4
  %i.dz = or i16 %i.dy, %i.db
  store i16 %i.dz, ptr %i.dx, align 4
  %i.ea = load ptr, ptr %i.u, align 8
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %indvars.iv199
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 60 ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 4
  %i.ee = or i16 %i.ed, %i.db
  store i16 %i.ee, ptr %i.ec, align 4
  %i.ef = load ptr, ptr %i.u, align 8
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %indvars.iv199
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 84 ; 2 uses
  %i.ei = load i16, ptr %i.eh, align 4
  %i.ej = or i16 %i.ei, %i.db
  store i16 %i.ej, ptr %i.eh, align 4
  %indvars.iv.next200.3 = add nuw nsw i64 %indvars.iv199, 4 ; 2 uses
  %i.ek = icmp slt i64 %indvars.iv.next200.3, %i.aa
  br i1 %i.ek, label %.lr.ph, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.s
  %i.el = load ptr, ptr %0, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 120
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.i ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = and i8 %i.ep, 127
  store i8 %i.eq, ptr %i.eo, align 1
  %.pre = load ptr, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 120
  %.pre205 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.r
  %i.er = phi ptr [ %.pre205, %._crit_edge ], [ %i.cv, %bb.r ]
  %i.es = load ptr, ptr %i.u, align 8
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %i.aa
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds i8, ptr %i.er, i64 %i.ev ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = and i8 %i.ex, 127
  store i8 %i.ey, ptr %i.ew, align 1
  br label %.thread171

._crit_edge232:                                   ; preds = %bb.c, %bb.b
  %.not155 = icmp eq i16 %i.p, 0
  br i1 %.not155, label %.thread166, label %bb.u

bb.u:                                             ; preds = %._crit_edge232
  %i.ez = tail call i32 @u_getBidiPairedBracket_78(i32 noundef %i.v) #19
  %i.fa = trunc i32 %i.ez to i16                  ; 3 uses
  %.not156 = icmp eq i16 %i.p, %i.fa
  br i1 %.not156, label %.thread166, label %bb.v

bb.v:                                             ; preds = %bb.u
  %2 = zext i16 %i.p to i32
  %i.fb = tail call i32 @ubidi_getPairedBracketType_78(i32 noundef %2) #19
  %i.fc = icmp eq i32 %i.fb, 1
  br i1 %i.fc, label %bb.w, label %.thread166

bb.w:                                             ; preds = %bb.v
  switch i16 %i.fa, label %bb.z [
    i16 9002, label %bb.x
    i16 12297, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.fd = tail call fastcc noundef signext i8 @_ZL17bracketAddOpeningP11BracketDataDsi(ptr noundef %0, i16 noundef zeroext 12297, i32 noundef %1)
  %.not158 = icmp eq i8 %i.fd, 0
  br i1 %.not158, label %.thread171, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.fe = tail call fastcc noundef signext i8 @_ZL17bracketAddOpeningP11BracketDataDsi(ptr noundef %0, i16 noundef zeroext 9002, i32 noundef %1)
  %.not157 = icmp eq i8 %i.fe, 0
  br i1 %.not157, label %.thread171, label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y, %bb.x
  %i.ff = tail call fastcc noundef signext i8 @_ZL17bracketAddOpeningP11BracketDataDsi(ptr noundef %0, i16 noundef zeroext %i.fa, i32 noundef %1)
  %.not159 = icmp eq i8 %i.ff, 0
  br i1 %.not159, label %.thread171, label %.thread166

.thread166:                                       ; preds = %._crit_edge232, %_ZL21bracketProcessClosingP11BracketDataii.exit, %_ZL21bracketProcessClosingP11BracketDataii.exit.thread, %bb.z, %bb.v, %bb.u, %bb.a
  %i.fg = load ptr, ptr %0, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 120
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 %i.i
  %i.fk = load i8, ptr %i.fj, align 1             ; 2 uses
  %.not160 = icmp sgt i8 %i.fk, -1
  br i1 %.not160, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.thread166
  %i.fl = and i8 %i.fk, 1                         ; 5 uses
  %i.fm = add i8 %i.k, -11
  %or.cond5 = icmp ult i8 %i.fm, -3
  br i1 %or.cond5, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i8 %i.fl, ptr %i.j, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fn = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 %i.fl, ptr %i.fn, align 2
  %i.fo = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 %i.fl, ptr %i.fo, align 1
  %i.fp = zext nneg i8 %i.fl to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.fp, ptr %i.fq, align 4
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
  %i.fr = icmp ne i8 %i.k, 0                      ; 2 uses
  %i.fs = zext i1 %i.fr to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 %i.k, ptr %i.ft, align 2
  %i.fu = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 %i.k, ptr %i.fu, align 1
  %i.fv = zext i1 %i.fr to i32
  %i.fw = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.fv, ptr %i.fw, align 4
  store i32 %1, ptr %i.e, align 4
  br label %bb.an

bb.af:                                            ; preds = %bb.ad
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 2, ptr %i.fx, align 2
  %i.fy = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.fz = load i8, ptr %i.fy, align 1
  switch i8 %i.fz, label %bb.ai [
    i8 0, label %bb.ag
    i8 13, label %bb.aj
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.gb = load i8, ptr %i.ga, align 8
  %.not161 = icmp eq i8 %i.gb, 0
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
  %i.gc = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 5, ptr %i.gc, align 2
  br label %.thread175.sink.split

bb.al:                                            ; preds = %bb.ad
  %i.gd = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.ge = load i8, ptr %i.gd, align 2             ; 2 uses
  %i.gf = icmp eq i8 %i.ge, 10
  br i1 %i.gf, label %.thread178, label %bb.an

.thread178:                                       ; preds = %bb.al
  store i8 10, ptr %i.j, align 1
  br label %.thread171

bb.am:                                            ; preds = %bb.ad
  %i.gg = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 %i.k, ptr %i.gg, align 2
  br label %bb.an

bb.an:                                            ; preds = %bb.ae, %bb.al, %bb.am, %bb.ac
  %.0147 = phi i8 [ %i.fl, %bb.ac ], [ %i.fs, %bb.ae ], [ %i.k, %bb.am ], [ %i.ge, %bb.al ] ; 4 uses
  switch i8 %.0147, label %.thread171 [
    i8 13, label %.thread175
    i8 1, label %.thread175
    i8 0, label %.thread175
  ]

.thread175.sink.split:                            ; preds = %bb.ag, %bb.ah, %bb.aj, %bb.ak
  %.sink = phi i32 [ 1, %bb.ak ], [ 1, %bb.aj ], [ 0, %bb.ah ], [ 0, %bb.ag ]
  %.0147177.ph = phi i8 [ 1, %bb.ak ], [ 1, %bb.aj ], [ 0, %bb.ah ], [ 0, %bb.ag ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %.sink, ptr %i.gh, align 4
  store i32 %1, ptr %i.e, align 4
  br label %.thread175

.thread175:                                       ; preds = %.thread175.sink.split, %bb.an, %bb.an, %bb.an
  %.0147177 = phi i8 [ %.0147, %bb.an ], [ %.0147, %bb.an ], [ %.0147, %bb.an ], [ %.0147177.ph, %.thread175.sink.split ]
  %i.gi = icmp ne i8 %.0147177, 0
  %i.gj = zext i1 %i.gi to i16
  %i.gk = shl nuw nsw i16 1, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.gm = load i16, ptr %i.gl, align 4            ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.e, i64 6 ; 2 uses
  %i.go = load i16, ptr %i.gn, align 2            ; 2 uses
  %i.gp = icmp ult i16 %i.gm, %i.go
  br i1 %i.gp, label %.lr.ph193, label %.thread171

.lr.ph193:                                        ; preds = %.thread175
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.gr = zext i16 %i.gm to i64
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph193, %bb.aq
  %i.gs = phi i16 [ %i.go, %.lr.ph193 ], [ %i.ha, %bb.aq ]
  %indvars.iv202 = phi i64 [ %i.gr, %.lr.ph193 ], [ %indvars.iv.next203, %bb.aq ] ; 2 uses
  %i.gt = load ptr, ptr %i.gq, align 8
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %indvars.iv202 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = icmp sgt i32 %1, %i.gv
  br i1 %i.gw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 12 ; 2 uses
  %i.gy = load i16, ptr %i.gx, align 4
  %i.gz = or i16 %i.gy, %i.gk
  store i16 %i.gz, ptr %i.gx, align 4
  %.pre206 = load i16, ptr %i.gn, align 2
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.ha = phi i16 [ %i.gs, %bb.ao ], [ %.pre206, %bb.ap ] ; 2 uses
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %i.hb = zext i16 %i.ha to i64
  %i.hc = icmp samesign ult i64 %indvars.iv.next203, %i.hb
  br i1 %i.hc, label %bb.ao, label %.thread171, !llvm.loop !54

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
