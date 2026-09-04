Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ubidi?download=true
inline.NumInlined: 71
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ubidi_getParagraph_78:bb.a

bb.z:                                             ; preds = %bb.y
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !41 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !43
  %i.aj = icmp slt i32 %.0.i, %i.ai
  br i1 %i.aj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 141
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !54
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  %i.an = load i32, ptr %i.am, align 8, !tbaa !40 ; 4 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i, label %ubidi_getParaLevelAtIndex_78.exit.i

.lr.ph.i.i:                                       ; preds = %bb.ab
  %wide.trip.count.i.i = zext nneg i32 %i.an to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ad ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !43
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
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !45
  %i.ay = trunc i32 %i.ax to i8
  br label %bb.ae

bb.ae:                                            ; preds = %ubidi_getParaLevelAtIndex_78.exit.i, %bb.aa
  %i.az = phi i8 [ %i.al, %bb.aa ], [ %i.ay, %ubidi_getParaLevelAtIndex_78.exit.i ]
  store i8 %i.az, ptr %4, align 1, !tbaa !53
  br label %ubidi_getParagraphByIndex_78.exit

ubidi_getParagraphByIndex_78.exit:                ; preds = %bb.ae, %bb.x, %bb.q, %bb.o, %bb.a, %bb.b, %bb.j, %bb.g
  %.025 = phi i32 [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.a ], [ -1, %bb.b ], [ %i.o, %bb.ae ], [ %i.o, %bb.o ], [ %i.o, %bb.q ], [ %i.o, %bb.x ]
  ret i32 %.025
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ubidi_setClassCallback_78(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp eq ptr %5, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %5, align 4, !tbaa !26
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %5, align 4, !tbaa !26
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %.not17 = icmp eq ptr %3, null
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  store ptr %i.f, ptr %3, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not18 = icmp eq ptr %4, null
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  store ptr %i.h, ptr %4, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %1, ptr %i.i, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %2, ptr %i.j, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ubidi_getClassCallback_78(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  store ptr %i.c, ptr %1, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not9 = icmp eq ptr %2, null
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  store ptr %i.e, ptr %2, align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define i32 @ubidi_getCustomizedClass_78(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.f = tail call noundef i32 %i.b(ptr noundef %i.e, i32 noundef %1) ; 2 uses
  %i.g = icmp eq i32 %i.f, 23
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call i32 @ubidi_getClass_78(i32 noundef %1)
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

; Function Attrs: mustprogress uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZL18bracketProcessCharP11BracketDatai(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.c = load i32, ptr %i.b, align 4, !tbaa !75
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.d ; 24 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61   ; 2 uses
  %i.i = sext i32 %1 to i64                       ; 5 uses
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !53    ; 8 uses
  %i.l = icmp eq i8 %i.k, 10
  br i1 %i.l, label %bb.b, label %.thread166

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.o = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.i
  %i.p = load i16, ptr %i.o, align 2, !tbaa !39   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 6 ; 4 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !79   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.t = load i16, ptr %i.s, align 4, !tbaa !78   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 6 uses
  %i.v = zext i16 %i.p to i32                     ; 2 uses
  %sext = zext i16 %i.t to i64
  %i.w = icmp ugt i16 %i.r, %i.t
  br i1 %i.w, label %.lr.ph224, label %._crit_edge225

.lr.ph224:                                        ; preds = %bb.b
  %i.x = zext i16 %i.r to i64                     ; 2 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !86
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.z = icmp sgt i64 %i.aa, %sext
  %indvar.next = add i64 %indvar, 1
  br i1 %i.z, label %bb.d, label %._crit_edge225, !llvm.loop !167

bb.d:                                             ; preds = %.lr.ph224, %bb.c
  %indvar = phi i64 [ 0, %.lr.ph224 ], [ %indvar.next, %bb.c ] ; 2 uses
  %indvars.iv222 = phi i64 [ %i.x, %.lr.ph224 ], [ %i.aa, %bb.c ] ; 3 uses
  %i.aa = add nsw i64 %indvars.iv222, -1          ; 13 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !103
  %.not = icmp eq i32 %i.ad, %i.v
  br i1 %.not, label %bb.e, label %bb.c, !llvm.loop !167

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.af = trunc nuw nsw i64 %i.aa to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !80
  %i.ai = and i8 %i.ah, 1                         ; 3 uses
  %i.aj = zext nneg i8 %i.ai to i32
  %cond.i = icmp eq i8 %i.ai, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !104 ; 3 uses
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
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !105 ; 2 uses
  %.not70.i = icmp eq i32 %i.as, %i.aj
  %i.at = trunc i32 %i.as to i8
  %spec.select.i = select i1 %.not70.i, i8 %i.ai, i8 %i.at
  br label %bb.j

_ZL21bracketProcessClosingP11BracketDataii.exit.thread: ; preds = %bb.h
  %i.au = trunc i64 %i.aa to i16
  store i16 %i.au, ptr %i.q, align 2, !tbaa !79
  br label %.thread166

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.f
  %.062.shrunk.i = phi i1 [ true, %bb.f ], [ %i.aq, %bb.i ], [ true, %bb.g ]
  %.061.i = phi i8 [ 0, %bb.f ], [ %spec.select.i, %bb.i ], [ 1, %bb.g ] ; 5 uses
  %i.av = load i32, ptr %i.ab, align 4, !tbaa !106
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.h, i64 %i.aw
  store i8 %.061.i, ptr %i.ax, align 1, !tbaa !53
  %i.ay = load ptr, ptr %0, align 8, !tbaa !74
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !61
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.i
  store i8 %.061.i, ptr %i.bb, align 1, !tbaa !53
  %i.bc = load i32, ptr %i.ab, align 4, !tbaa !106
  tail call fastcc void @_ZL6fixN0cP11BracketDataiih(ptr noundef nonnull %0, i32 noundef range(i32 0, 65535) %i.af, i32 noundef %i.bc, i8 noundef zeroext %.061.i)
  br i1 %.062.shrunk.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bd = trunc i64 %i.aa to i16                  ; 3 uses
  %i.be = load i16, ptr %i.s, align 4, !tbaa !78  ; 4 uses
  %i.bf = icmp ult i16 %i.be, %i.bd
  br i1 %i.bf, label %.lr.ph83.i, label %.critedge.loopexit.i

.lr.ph83.i:                                       ; preds = %bb.k
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !86
  %i.bh = load i32, ptr %i.ab, align 4, !tbaa !106
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph83.i
  %storemerge82.i = phi i16 [ %i.bd, %.lr.ph83.i ], [ %i.bo, %bb.m ] ; 3 uses
  %i.bi = zext i16 %storemerge82.i to i64
  %i.bj = add nuw nsw i64 %i.bi, 4294967295
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !106
  %i.bn = icmp eq i32 %i.bm, %i.bh
  br i1 %i.bn, label %bb.m, label %.critedge.loopexit.i

bb.m:                                             ; preds = %bb.l
  %i.bo = add i16 %storemerge82.i, -1             ; 2 uses
  %i.bp = icmp ugt i16 %i.bo, %i.be
  br i1 %i.bp, label %bb.l, label %.critedge.loopexit.i, !llvm.loop !168

bb.n:                                             ; preds = %bb.j
  %i.bq = sub nsw i32 0, %1
  store i32 %i.bq, ptr %i.ae, align 4, !tbaa !103
  %i.br = load i16, ptr %i.s, align 4, !tbaa !78  ; 5 uses
  %i.bs = zext i16 %i.br to i64
  %.not71.not75.i = icmp ugt i64 %i.aa, %i.bs
  br i1 %.not71.not75.i, label %.lr.ph.i, label %.critedge2.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.bt = load ptr, ptr %i.u, align 8, !tbaa !86
  %i.bu = load i32, ptr %i.ab, align 4, !tbaa !106
  %i.bv = zext i16 %i.br to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %indvars.iv.next.i ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !106
  %i.by = icmp eq i32 %i.bx, %i.bu
  br i1 %i.by, label %bb.p, label %.critedge2.i

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 0, ptr %i.bz, align 4, !tbaa !103
  %.not71.not.i = icmp sgt i64 %indvars.iv.next.i, %i.bv
  br i1 %.not71.not.i, label %bb.o, label %.critedge2.i, !llvm.loop !169

.critedge2.i:                                     ; preds = %bb.p, %bb.o, %bb.n
  %i.ca = load i16, ptr %i.q, align 2, !tbaa !79  ; 2 uses
  %i.cb = zext i16 %i.ca to i64
  %i.cc = icmp ult i64 %indvars.iv222, %i.cb
  br i1 %i.cc, label %.lr.ph80.i, label %_ZL21bracketProcessClosingP11BracketDataii.exit

.lr.ph80.i:                                       ; preds = %.critedge2.i
  %i.cd = load ptr, ptr %i.u, align 8, !tbaa !86
  %wide.trip.count.i = zext i16 %i.ca to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph80.i
  %indvars.iv88.i = phi i64 [ %indvars.iv222, %.lr.ph80.i ], [ %indvars.iv.next89.i, %bb.t ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %indvars.iv88.i ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !106
  %.not72.i = icmp slt i32 %i.cf, %1
  br i1 %.not72.i, label %bb.r, label %_ZL21bracketProcessClosingP11BracketDataii.exit

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !103
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.cg, align 4, !tbaa !103
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next89.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL21bracketProcessClosingP11BracketDataii.exit, label %bb.q, !llvm.loop !170

.critedge.loopexit.i:                             ; preds = %bb.m, %bb.l, %bb.k
  %storemerge.lcssa.i = phi i16 [ %i.bd, %bb.k ], [ %i.be, %bb.m ], [ %storemerge82.i, %bb.l ]
  store i16 %storemerge.lcssa.i, ptr %i.q, align 2, !tbaa !79
  br label %_ZL21bracketProcessClosingP11BracketDataii.exit

_ZL21bracketProcessClosingP11BracketDataii.exit:  ; preds = %bb.q, %bb.t, %.critedge2.i, %.critedge.loopexit.i
  %i.cj = phi i16 [ %i.be, %.critedge.loopexit.i ], [ %i.br, %.critedge2.i ], [ %i.br, %bb.t ], [ %i.br, %bb.q ] ; 2 uses
  %i.ck = icmp eq i8 %.061.i, 10
  br i1 %i.ck, label %.thread166, label %bb.u

bb.u:                                             ; preds = %_ZL21bracketProcessClosingP11BracketDataii.exit
  %i.cl = zext i8 %.061.i to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 10, ptr %i.cm, align 2, !tbaa !81
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.cl, ptr %i.cn, align 4, !tbaa !83
  store i32 %1, ptr %i.e, align 4, !tbaa !84
  %i.co = load ptr, ptr %0, align 8, !tbaa !74
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 120
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !57 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.i ; 3 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !53  ; 2 uses
  %.not154 = icmp sgt i8 %i.cs, -1
  br i1 %.not154, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = and i8 %i.cs, 1                         ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !82
  %i.cv = zext nneg i8 %i.ct to i16
  %i.cw = shl nuw nsw i16 1, %i.cv                ; 5 uses
  %i.cx = zext i16 %i.cj to i64
  %i.cy = icmp sgt i64 %i.aa, %i.cx
  br i1 %i.cy, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  %i.cz = load ptr, ptr %i.u, align 8, !tbaa !86  ; 5 uses
  %i.da = zext i16 %i.cj to i64                   ; 4 uses
  %i.db = sub i64 %i.aa, %i.da
  %i.dc = add nsw i64 %i.x, -2
  %i.dd = add i64 %indvar, %i.da
  %i.de = sub i64 %i.dc, %i.dd
  %xtraiter = and i64 %i.db, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv196.prol = phi i64 [ %indvars.iv.next197.prol, %.prol.preheader ], [ %i.da, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %indvars.iv196.prol
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 12 ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 4, !tbaa !104
  %i.di = or i16 %i.dh, %i.cw
  store i16 %i.di, ptr %i.dg, align 4, !tbaa !104
  %indvars.iv.next197.prol = add nuw nsw i64 %indvars.iv196.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !171

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv196.unr = phi i64 [ %i.da, %.lr.ph ], [ %indvars.iv.next197.prol, %.prol.preheader ]
  %i.dj = icmp ult i64 %i.de, 3
  br i1 %i.dj, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv196 = phi i64 [ %indvars.iv.next197.3, %.lr.ph.new ], [ %indvars.iv196.unr, %.prol.loopexit ] ; 5 uses
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %indvars.iv196
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 12 ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 4, !tbaa !104
  %i.dn = or i16 %i.dm, %i.cw
  store i16 %i.dn, ptr %i.dl, align 4, !tbaa !104
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %indvars.iv196
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 36 ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 4, !tbaa !104
  %i.dr = or i16 %i.dq, %i.cw
  store i16 %i.dr, ptr %i.dp, align 4, !tbaa !104
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %indvars.iv196
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 60 ; 2 uses
  %i.du = load i16, ptr %i.dt, align 4, !tbaa !104
  %i.dv = or i16 %i.du, %i.cw
  store i16 %i.dv, ptr %i.dt, align 4, !tbaa !104
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %indvars.iv196
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 84 ; 2 uses
  %i.dy = load i16, ptr %i.dx, align 4, !tbaa !104
  %i.dz = or i16 %i.dy, %i.cw
  store i16 %i.dz, ptr %i.dx, align 4, !tbaa !104
  %indvars.iv.next197.3 = add nuw nsw i64 %indvars.iv196, 4 ; 2 uses
  %i.ea = icmp slt i64 %indvars.iv.next197.3, %i.aa
  br i1 %i.ea, label %.lr.ph.new, label %._crit_edge, !llvm.loop !172

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.v
  %i.eb = load i8, ptr %i.cr, align 1, !tbaa !53
  %i.ec = and i8 %i.eb, 127
  store i8 %i.ec, ptr %i.cr, align 1, !tbaa !53
  %.pre = load ptr, ptr %0, align 8, !tbaa !74
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 120
  %.pre202 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !57
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.u
  %i.ed = phi ptr [ %.pre202, %._crit_edge ], [ %i.cq, %bb.u ]
  %i.ee = load ptr, ptr %i.u, align 8, !tbaa !86
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.aa
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !106
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %i.ed, i64 %i.eh ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !53
  %i.ek = and i8 %i.ej, 127
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !53
  br label %.thread171

._crit_edge225:                                   ; preds = %bb.c, %bb.b
  %.not155 = icmp eq i16 %i.p, 0
  br i1 %.not155, label %.thread166, label %bb.x

bb.x:                                             ; preds = %._crit_edge225
  %i.el = tail call i32 @u_getBidiPairedBracket_78(i32 noundef %i.v)
  %i.em = trunc i32 %i.el to i16                  ; 3 uses
  %.not156 = icmp eq i16 %i.p, %i.em
  br i1 %.not156, label %.thread166, label %bb.y

bb.y:                                             ; preds = %bb.x
  %2 = zext i16 %i.p to i32
  %i.en = tail call i32 @ubidi_getPairedBracketType_78(i32 noundef %2)
  %i.eo = icmp eq i32 %i.en, 1
  br i1 %i.eo, label %bb.z, label %.thread166

bb.z:                                             ; preds = %bb.y
  switch i16 %i.em, label %bb.ac [
    i16 9002, label %bb.aa
    i16 12297, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ep = tail call fastcc noundef signext i8 @_ZL17bracketAddOpeningP11BracketDataDsi(ptr noundef %0, i16 noundef zeroext 12297, i32 noundef %1)
  %.not158 = icmp eq i8 %i.ep, 0
  br i1 %.not158, label %.thread171, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.eq = tail call fastcc noundef signext i8 @_ZL17bracketAddOpeningP11BracketDataDsi(ptr noundef %0, i16 noundef zeroext 9002, i32 noundef %1)
  %.not157 = icmp eq i8 %i.eq, 0
  br i1 %.not157, label %.thread171, label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab, %bb.aa
  %i.er = tail call fastcc noundef signext i8 @_ZL17bracketAddOpeningP11BracketDataDsi(ptr noundef %0, i16 noundef zeroext %i.em, i32 noundef %1)
  %.not159 = icmp eq i8 %i.er, 0
  br i1 %.not159, label %.thread171, label %.thread166

.thread166:                                       ; preds = %._crit_edge225, %_ZL21bracketProcessClosingP11BracketDataii.exit, %_ZL21bracketProcessClosingP11BracketDataii.exit.thread, %bb.ac, %bb.y, %bb.x, %bb.a
  %i.es = load ptr, ptr %0, align 8, !tbaa !74
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 120
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !57
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 %i.i
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !53  ; 2 uses
  %.not160 = icmp sgt i8 %i.ew, -1
  br i1 %.not160, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %.thread166
  %i.ex = and i8 %i.ew, 1                         ; 5 uses
  %i.ey = add i8 %i.k, -11
  %or.cond5 = icmp ult i8 %i.ey, -3
  br i1 %or.cond5, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i8 %i.ex, ptr %i.j, align 1, !tbaa !53
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 %i.ex, ptr %i.ez, align 2, !tbaa !81
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 %i.ex, ptr %i.fa, align 1, !tbaa !82
  %i.fb = zext nneg i8 %i.ex to i32
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !83
  store i32 %1, ptr %i.e, align 4, !tbaa !84
  br label %bb.aq

bb.ag:                                            ; preds = %.thread166
  switch i8 %i.k, label %bb.ap [
    i8 13, label %bb.ah
    i8 1, label %bb.ah
    i8 0, label %bb.ah
    i8 2, label %bb.ai
    i8 5, label %bb.an
    i8 17, label %bb.ao
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag, %bb.ag
  %i.fd = icmp ne i8 %i.k, 0                      ; 2 uses
  %i.fe = zext i1 %i.fd to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 %i.k, ptr %i.ff, align 2, !tbaa !81
  %i.fg = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 %i.k, ptr %i.fg, align 1, !tbaa !82
  %i.fh = zext i1 %i.fd to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !83
  store i32 %1, ptr %i.e, align 4, !tbaa !84
  br label %bb.aq

bb.ai:                                            ; preds = %bb.ag
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 2, ptr %i.fj, align 2, !tbaa !81
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !82
  switch i8 %i.fl, label %bb.al [
    i8 0, label %bb.aj
    i8 13, label %bb.am
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.fn = load i8, ptr %i.fm, align 8, !tbaa !88
  %.not161 = icmp eq i8 %i.fn, 0
  br i1 %.not161, label %bb.ak, label %.thread175.sink.split

bb.ak:                                            ; preds = %bb.aj
  store i8 23, ptr %i.j, align 1, !tbaa !53
  br label %.thread175.sink.split

bb.al:                                            ; preds = %bb.ai
  br label %bb.am

bb.am:                                            ; preds = %bb.ai, %bb.al
  %storemerge = phi i8 [ 24, %bb.al ], [ 5, %bb.ai ]
  store i8 %storemerge, ptr %i.j, align 1, !tbaa !53
  br label %.thread175.sink.split

bb.an:                                            ; preds = %bb.ag
  %i.fo = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 5, ptr %i.fo, align 2, !tbaa !81
  br label %.thread175.sink.split

bb.ao:                                            ; preds = %bb.ag
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !81  ; 2 uses
  %i.fr = icmp eq i8 %i.fq, 10
  br i1 %i.fr, label %.thread178, label %bb.aq

.thread178:                                       ; preds = %bb.ao
  store i8 10, ptr %i.j, align 1, !tbaa !53
  br label %.thread171

bb.ap:                                            ; preds = %bb.ag
  %i.fs = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 %i.k, ptr %i.fs, align 2, !tbaa !81
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ah, %bb.ao, %bb.ap, %bb.af
  %.0147 = phi i8 [ %i.ex, %bb.af ], [ %i.fe, %bb.ah ], [ %i.k, %bb.ap ], [ %i.fq, %bb.ao ] ; 4 uses
  switch i8 %.0147, label %.thread171 [
    i8 13, label %.thread175
    i8 1, label %.thread175
    i8 0, label %.thread175
  ]

.thread175.sink.split:                            ; preds = %bb.aj, %bb.ak, %bb.am, %bb.an
  %.sink = phi i32 [ 1, %bb.an ], [ 1, %bb.am ], [ 0, %bb.ak ], [ 0, %bb.aj ]
  %.0147177.ph = phi i8 [ 1, %bb.an ], [ 1, %bb.am ], [ 0, %bb.ak ], [ 0, %bb.aj ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %.sink, ptr %i.ft, align 4, !tbaa !83
  store i32 %1, ptr %i.e, align 4, !tbaa !84
  br label %.thread175

.thread175:                                       ; preds = %.thread175.sink.split, %bb.aq, %bb.aq, %bb.aq
  %.0147177 = phi i8 [ %.0147, %bb.aq ], [ %.0147, %bb.aq ], [ %.0147, %bb.aq ], [ %.0147177.ph, %.thread175.sink.split ]
  %i.fu = icmp ne i8 %.0147177, 0
  %i.fv = zext i1 %i.fu to i16
  %i.fw = shl nuw nsw i16 1, %i.fv                ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.fy = load i16, ptr %i.fx, align 4, !tbaa !78 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !79 ; 2 uses
  %i.gb = icmp ult i16 %i.fy, %i.ga
  br i1 %i.gb, label %.lr.ph191, label %.thread171

.lr.ph191:                                        ; preds = %.thread175
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !86 ; 3 uses
  %i.ge = zext i16 %i.fy to i64                   ; 5 uses
  %wide.trip.count = zext i16 %i.ga to i64        ; 3 uses
  %i.gf = sub nsw i64 %wide.trip.count, %i.ge
  %xtraiter233 = and i64 %i.gf, 1
  %lcmp.mod234.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod234.not, label %.prol.loopexit232, label %.prol.preheader231

.prol.preheader231:                               ; preds = %.lr.ph191
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %i.ge ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !106
  %i.gi = icmp sgt i32 %1, %i.gh
  br i1 %i.gi, label %bb.ar, label %.prol.loopexit232.unr-lcssa

bb.ar:                                            ; preds = %.prol.preheader231
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 12 ; 2 uses
  %i.gk = load i16, ptr %i.gj, align 4, !tbaa !104
  %i.gl = or i16 %i.gk, %i.fw
  store i16 %i.gl, ptr %i.gj, align 4, !tbaa !104
  br label %.prol.loopexit232.unr-lcssa

.prol.loopexit232.unr-lcssa:                      ; preds = %bb.ar, %.prol.preheader231
  %indvars.iv.next200.prol = add nuw nsw i64 %i.ge, 1
  br label %.prol.loopexit232

.prol.loopexit232:                                ; preds = %.prol.loopexit232.unr-lcssa, %.lr.ph191
  %indvars.iv199.unr = phi i64 [ %i.ge, %.lr.ph191 ], [ %indvars.iv.next200.prol, %.prol.loopexit232.unr-lcssa ]
  %i.gm = add nsw i64 %wide.trip.count, -1
  %i.gn = icmp eq i64 %i.gm, %i.ge
  br i1 %i.gn, label %.thread171, label %.lr.ph191.new

.lr.ph191.new:                                    ; preds = %.prol.loopexit232, %bb.av
  %indvars.iv199 = phi i64 [ %indvars.iv.next200.1, %bb.av ], [ %indvars.iv199.unr, %.prol.loopexit232 ] ; 3 uses
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %indvars.iv199 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !106
  %i.gq = icmp sgt i32 %1, %i.gp
  br i1 %i.gq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph191.new
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 12 ; 2 uses
  %i.gs = load i16, ptr %i.gr, align 4, !tbaa !104
  %i.gt = or i16 %i.gs, %i.fw
  store i16 %i.gt, ptr %i.gr, align 4, !tbaa !104
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph191.new, %bb.as
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %indvars.iv199 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !106
  %i.gx = icmp sgt i32 %1, %i.gw
  br i1 %i.gx, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 36 ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 4, !tbaa !104
  %i.ha = or i16 %i.gz, %i.fw
  store i16 %i.ha, ptr %i.gy, align 4, !tbaa !104
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %indvars.iv.next200.1 = add nuw nsw i64 %indvars.iv199, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next200.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.thread171, label %.lr.ph191.new, !llvm.loop !173

.thread171:                                       ; preds = %.prol.loopexit232, %bb.av, %.thread175, %bb.ac, %bb.aa, %bb.w, %bb.ab, %.thread178, %bb.aq
  %.1 = phi i8 [ 1, %.thread178 ], [ 0, %bb.ab ], [ 1, %bb.aq ], [ 0, %bb.ac ], [ 0, %bb.aa ], [ 1, %bb.w ], [ 1, %.thread175 ], [ 1, %bb.av ], [ 1, %.prol.loopexit232 ]
  ret i8 %.1
}

declare i32 @u_getBidiPairedBracket_78(i32 noundef) local_unnamed_addr #5
end_hunk_0
