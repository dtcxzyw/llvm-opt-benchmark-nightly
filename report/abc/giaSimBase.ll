Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaSimBase?download=true
inline.NumInlined: 1796
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 129
begin_hunk_0_@Gia_ManSimRel:bb.a
  %.val114 = load ptr, ptr %i.ce, align 8, !tbaa !42 ; 2 uses
  %.not101 = icmp eq ptr %.val114, null
  br i1 %.not101, label %.critedge8, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val111 = load ptr, ptr %i.je, align 8, !tbaa !31
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.val111, i64 %indvars.iv190
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !32
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [12 x i8], ptr %.val114, i64 %i.jh ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 4
  %i.jk = and i64 %i.jj, 9223372036854775807
  store i64 %i.jk, ptr %i.ji, align 4
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %.val = load i32, ptr %i.g, align 4, !tbaa !30
  %i.jl = sext i32 %.val to i64
  %i.jm = icmp slt i64 %indvars.iv.next191, %i.jl
  br i1 %i.jm, label %bb.p, label %.critedge8, !llvm.loop !327

.critedge8:                                       ; preds = %bb.p, %bb.q, %.critedge6
  %i.jn = tail call i32 @Gia_ManSimRelCollectOutputs(ptr noundef nonnull %0, i32 noundef %i.i, ptr noundef nonnull %i.w, i32 noundef %i.f, ptr noundef %2, ptr noundef nonnull %i.j)
  %.not102 = icmp eq i32 %i.jn, 0
  br i1 %.not102, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.critedge8
  %.not.i143 = icmp eq ptr %i.o, null
  br i1 %.not.i143, label %Vec_WrdFreeP.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.o) #35
  br label %Vec_WrdFreeP.exit

Vec_WrdFreeP.exit:                                ; preds = %bb.r, %.thread.i
  tail call void @free(ptr noundef nonnull %i.j) #35
  br label %bb.s

bb.s:                                             ; preds = %Vec_WrdFreeP.exit, %.critedge8
  %.0148 = phi ptr [ %i.j, %.critedge8 ], [ null, %Vec_WrdFreeP.exit ]
  %.not.i144 = icmp eq ptr %i.ab, null
  br i1 %.not.i144, label %Vec_WrdFree.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.ab) #35
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %bb.s, %bb.t
  tail call void @free(ptr noundef nonnull %i.w) #35
  ret ptr %.0148
}

declare void @Gia_ManCleanPhase(ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManSimRelCheckFuncs(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.b = shl nuw i32 1, %2                        ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val58 = load i32, ptr %i.c, align 4, !tbaa !39
  %i.d = sdiv i32 %.val58, %i.b                   ; 4 uses
  %i.e = shl i32 %i.d, 6                          ; 3 uses
  %i.f = icmp sgt i32 %i.d, 0
  br i1 %i.f, label %.preheader61.lr.ph, label %._crit_edge73.thread

.preheader61.lr.ph:                               ; preds = %bb.a
  %i.g = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %.not102 = icmp eq i32 %2, 31
  %i.h = getelementptr i8, ptr %1, i64 8          ; 2 uses
  br i1 %.not102, label %.preheader61.preheader, label %.preheader61.lr.ph.split.us

.preheader61.lr.ph.split.us:                      ; preds = %.preheader61.lr.ph
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %.preheader61.us.us.preheader, label %.preheader61.us.preheader

.preheader61.us.preheader:                        ; preds = %.preheader61.lr.ph.split.us
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %smax105 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  br label %.preheader61.us

.preheader61.us.us.preheader:                     ; preds = %.preheader61.lr.ph.split.us
  %i.j = zext nneg i32 %i.d to i64                ; 2 uses
  %smax114 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %smax116 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %wide.trip.count = zext nneg i32 %2 to i64
  %wide.trip.count112 = zext nneg i32 %2 to i64
  br label %.lr.ph.us.us

bb.b:                                             ; preds = %.lr.ph.us.us, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.us ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.k = shl nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.l = mul nuw nsw i64 %i.k, %i.j
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.l
  %i.m = load i64, ptr %gep.us.us, align 8, !tbaa !43
  %i.n = lshr i64 %i.m, %i.ab                     ; 2 uses
  %i.o = or disjoint i64 %i.k, 1
  %i.p = mul nuw nsw i64 %i.o, %i.j
  %gep64.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.p
  %i.q = load i64, ptr %gep64.us.us, align 8, !tbaa !43
  %i.r = lshr i64 %i.q, %i.ab
  %i.s = and i64 %i.n, 1
  %i.t = icmp eq i64 %i.s, 0                      ; 2 uses
  %i.u = trunc i64 %i.r to i1                     ; 3 uses
  %or.cond.us.us = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.us.us, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %or.cond3.us.us = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond3.us.us, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = trunc i64 %i.n to i1
  %or.cond5.us.us = select i1 %i.v, i1 true, i1 %i.u
  br i1 %or.cond5.us.us, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d, %bb.b
  %.sink = phi i32 [ 3, %bb.d ], [ 1, %bb.b ], [ 2, %bb.c ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %.sink, ptr %i.w, align 4, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond108.not, label %.preheader60.us.us, label %bb.b, !llvm.loop !328

.preheader60.us.us:                               ; preds = %bb.e
  %i.x = shl i32 %.05370.us.us, %2
  br label %.preheader.us.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.split.us.us.us, %.preheader61.us.us.preheader
  %.072.us.us = phi i32 [ %.2.us.us.us, %._crit_edge.split.us.us.us ], [ 0, %.preheader61.us.us.preheader ]
  %.05370.us.us = phi i32 [ %i.ax, %._crit_edge.split.us.us.us ], [ 0, %.preheader61.us.us.preheader ] ; 5 uses
  %.val57.us.us = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.y = lshr i32 %.05370.us.us, 6
  %i.z = zext nneg i32 %i.y to i64
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %.val57.us.us, i64 %i.z ; 2 uses
  %i.aa = and i32 %.05370.us.us, 63
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  br label %bb.b

.preheader.us.us.us:                              ; preds = %.loopexit.us.us.us, %.preheader60.us.us
  %.169.us.us.us = phi i32 [ %.072.us.us, %.preheader60.us.us ], [ %.2.us.us.us, %.loopexit.us.us.us ] ; 4 uses
  %.05067.us.us.us = phi i32 [ 0, %.preheader60.us.us ], [ %i.an, %.loopexit.us.us.us ] ; 4 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count112
  br i1 %exitcond113.not, label %..critedge_crit_edge.us.us.us, label %bb.g, !llvm.loop !329

bb.g:                                             ; preds = %bb.f, %.preheader.us.us.us
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %bb.f ], [ 0, %.preheader.us.us.us ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv109
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.ae = trunc nuw nsw i64 %indvars.iv109 to i32
  %i.af = lshr i32 %.05067.us.us.us, %i.ae
  %i.ag = and i32 %i.af, 1
  %i.ah = shl nuw nsw i32 1, %i.ag
  %i.ai = and i32 %i.ad, %i.ah
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.loopexit.us.us.us, label %bb.f

bb.h:                                             ; preds = %..critedge_crit_edge.us.us.us
  %i.ak = add nsw i32 %.169.us.us.us, 1
  %i.al = icmp eq i32 %.169.us.us.us, 0
  br i1 %i.al, label %bb.i, label %.loopexit.us.us.us

bb.i:                                             ; preds = %bb.h
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.05370.us.us, i32 noundef %.05067.us.us.us) ; 0 uses
  br label %.loopexit.us.us.us

.loopexit.us.us.us:                               ; preds = %bb.g, %..critedge_crit_edge.us.us.us, %bb.i, %bb.h
  %.2.us.us.us = phi i32 [ %i.ak, %bb.h ], [ %.169.us.us.us, %..critedge_crit_edge.us.us.us ], [ 1, %bb.i ], [ %.169.us.us.us, %bb.g ] ; 3 uses
  %i.an = add nuw nsw i32 %.05067.us.us.us, 1     ; 2 uses
  %exitcond115.not = icmp eq i32 %i.an, %smax114
  br i1 %exitcond115.not, label %._crit_edge.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !330

..critedge_crit_edge.us.us.us:                    ; preds = %bb.f
  %.val59.us.us.us = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.ao = add nsw i32 %.05067.us.us.us, %i.x      ; 2 uses
  %i.ap = ashr i32 %i.ao, 6
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.val59.us.us.us, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.at = and i32 %i.ao, 63
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.as, %i.av
  %.not56.us.us.us = icmp eq i64 %i.aw, 0
  br i1 %.not56.us.us.us, label %bb.h, label %.loopexit.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %.loopexit.us.us.us
  %i.ax = add nuw nsw i32 %.05370.us.us, 1        ; 2 uses
  %exitcond117.not = icmp eq i32 %i.ax, %smax116
  br i1 %exitcond117.not, label %._crit_edge73, label %.lr.ph.us.us, !llvm.loop !331

.preheader61.us:                                  ; preds = %.preheader61.us.preheader, %._crit_edge.split.us81
  %.072.us = phi i32 [ %.2.us75, %._crit_edge.split.us81 ], [ 0, %.preheader61.us.preheader ]
  %.05370.us = phi i32 [ %i.bk, %._crit_edge.split.us81 ], [ 0, %.preheader61.us.preheader ] ; 3 uses
  %i.ay = shl i32 %.05370.us, %2
  br label %.preheader.us76

bb.j:                                             ; preds = %.preheader.us76
  %i.az = add nsw i32 %.169.us77, 1
  %i.ba = icmp eq i32 %.169.us77, 0
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.05370.us, i32 noundef %.05067.us78) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.preheader.us76, %bb.k, %bb.j
  %.2.us75 = phi i32 [ %i.az, %bb.j ], [ %.169.us77, %.preheader.us76 ], [ 1, %bb.k ] ; 3 uses
  %i.bc = add nuw nsw i32 %.05067.us78, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.bc, %smax
  br i1 %exitcond.not, label %._crit_edge.split.us81, label %.preheader.us76, !llvm.loop !330

.preheader.us76:                                  ; preds = %.preheader61.us, %bb.l
  %.169.us77 = phi i32 [ %.072.us, %.preheader61.us ], [ %.2.us75, %bb.l ] ; 3 uses
  %.05067.us78 = phi i32 [ 0, %.preheader61.us ], [ %i.bc, %bb.l ] ; 3 uses
  %.val59.us79 = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.bd = add nsw i32 %.05067.us78, %i.ay         ; 2 uses
  %4 = ashr i32 %i.bd, 6
  %5 = sext i32 %4 to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %.val59.us79, i64 %5
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !43
  %i.bg = and i32 %i.bd, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = and i64 %i.bf, %i.bi
  %.not56.us80 = icmp eq i64 %i.bj, 0
  br i1 %.not56.us80, label %bb.j, label %bb.l

._crit_edge.split.us81:                           ; preds = %bb.l
  %i.bk = add nuw nsw i32 %.05370.us, 1           ; 2 uses
  %exitcond106.not = icmp eq i32 %i.bk, %smax105
  br i1 %exitcond106.not, label %._crit_edge73, label %.preheader61.us, !llvm.loop !331

.preheader61.preheader:                           ; preds = %.preheader61.lr.ph
  %i.bl = zext nneg i32 %i.d to i64               ; 2 uses
  %smax123 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %.val57.pre = load ptr, ptr %i.g, align 8, !tbaa !33
  br label %.preheader61

.preheader61:                                     ; preds = %.preheader61.preheader, %..preheader60_crit_edge
  %.05370 = phi i32 [ %i.bq, %..preheader60_crit_edge ], [ 0, %.preheader61.preheader ] ; 3 uses
  %i.bm = lshr i32 %.05370, 6
  %i.bn = zext nneg i32 %i.bm to i64
  %invariant.gep = getelementptr [8 x i8], ptr %.val57.pre, i64 %i.bn ; 2 uses
  %i.bo = and i32 %.05370, 63
  %i.bp = zext nneg i32 %i.bo to i64              ; 2 uses
  br label %bb.m

..preheader60_crit_edge:                          ; preds = %bb.p
  %i.bq = add nuw nsw i32 %.05370, 1              ; 2 uses
  %exitcond124.not = icmp eq i32 %i.bq, %smax123
  br i1 %exitcond124.not, label %._crit_edge73.thread, label %.preheader61, !llvm.loop !331

bb.m:                                             ; preds = %.preheader61, %bb.p
  %indvars.iv118 = phi i64 [ 0, %.preheader61 ], [ %indvars.iv.next119, %bb.p ] ; 3 uses
  %i.br = shl nuw nsw i64 %indvars.iv118, 1       ; 2 uses
  %i.bs = mul nuw nsw i64 %i.br, %i.bl
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bs
  %i.bt = load i64, ptr %gep, align 8, !tbaa !43
  %i.bu = lshr i64 %i.bt, %i.bp                   ; 2 uses
  %i.bv = or disjoint i64 %i.br, 1
  %i.bw = mul nuw nsw i64 %i.bv, %i.bl
  %gep64 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bw
  %i.bx = load i64, ptr %gep64, align 8, !tbaa !43
  %i.by = lshr i64 %i.bx, %i.bp
  %i.bz = and i64 %i.bu, 1
  %i.ca = icmp eq i64 %i.bz, 0                    ; 2 uses
  %i.cb = trunc i64 %i.by to i1                   ; 3 uses
  %or.cond = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %or.cond, label %bb.n, label %.sink.split135

bb.n:                                             ; preds = %bb.m
  %or.cond3 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond3, label %.sink.split135, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = trunc i64 %i.bu to i1
  %or.cond5 = select i1 %i.cc, i1 true, i1 %i.cb
  br i1 %or.cond5, label %bb.p, label %.sink.split135

.sink.split135:                                   ; preds = %bb.o, %bb.n, %bb.m
  %.sink136 = phi i32 [ 1, %bb.m ], [ 2, %bb.n ], [ 3, %bb.o ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv118
  store i32 %.sink136, ptr %i.cd, align 4, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %.sink.split135, %bb.o
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, 31
  br i1 %exitcond122.not, label %..preheader60_crit_edge, label %bb.m, !llvm.loop !328

._crit_edge73:                                    ; preds = %._crit_edge.split.us81, %._crit_edge.split.us.us.us
  %.0.lcssa = phi i32 [ %.2.us.us.us, %._crit_edge.split.us.us.us ], [ %.2.us75, %._crit_edge.split.us81 ] ; 2 uses
  %.not = icmp eq i32 %.0.lcssa, 0
  br i1 %.not, label %._crit_edge73.thread, label %bb.q

bb.q:                                             ; preds = %._crit_edge73
  %i.ce = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %.0.lcssa) ; 0 uses
  br label %bb.r

._crit_edge73.thread:                             ; preds = %..preheader60_crit_edge, %bb.a, %._crit_edge73
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge73.thread, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret void
}

; Function Attrs: nofree nounwind uwtable
define noalias noundef ptr @Gia_ManSimRelDeriveFuncs(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = shl nuw i32 1, %2                        ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 4
  %.val47 = load i32, ptr %i.b, align 4, !tbaa !39
  %i.c = sdiv i32 %.val47, %i.a                   ; 34 uses
  %i.d = shl nsw i32 %2, 1
  %i.e = mul nsw i32 %i.c, %i.d                   ; 4 uses
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 5 uses
  %i.g = add i32 %i.e, -1
  %or.cond.i.i = icmp ult i32 %i.g, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.e ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.f, align 8, !tbaa !41
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %spec.store.select.i.i to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #34
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !33
  store i32 %i.e, ptr %i.l, align 4, !tbaa !39
  %i.n = sext i32 %i.e to i64
  %i.o = shl nsw i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.o, i1 false)
  %i.p = shl i32 %i.c, 6                          ; 5 uses
  %i.q = icmp sgt i32 %i.c, 0
  br i1 %i.q, label %.preheader.lr.ph, label %._crit_edge60.thread

.preheader.lr.ph:                                 ; preds = %Vec_WrdStart.exit
  %i.r = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.s = icmp sgt i32 %2, 0
  %i.t = shl nuw i32 %i.c, 1                      ; 2 uses
  br i1 %i.s, label %.preheader.lr.ph.split.us, label %.preheader.lr.ph.split.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %.not82 = icmp eq i32 %2, 31
  br i1 %.not82, label %.preheader.us.preheader, label %.preheader.lr.ph.split.us.split.us

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us
  %smax100 = tail call i32 @llvm.smax.i32(i32 %i.p, i32 1)
  %i.u = sext i32 %i.t to i64
  %i.v = shl i32 %i.c, 2
  %i.w = sext i32 %i.v to i64
  %i.x = mul i32 %i.c, 6
  %i.y = sext i32 %i.x to i64
  %i.z = shl i32 %i.c, 3
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul i32 %i.c, 10
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul i32 %i.c, 12
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul i32 %i.c, 14
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl i32 %i.c, 4
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul i32 %i.c, 18
  %i.ak = sext i32 %i.aj to i64
  %i.al = mul i32 %i.c, 20
  %i.am = sext i32 %i.al to i64
  %i.an = mul i32 %i.c, 22
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul i32 %i.c, 24
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul i32 %i.c, 26
  %i.as = sext i32 %i.ar to i64
  %i.at = mul i32 %i.c, 28
  %i.au = sext i32 %i.at to i64
  %i.av = mul i32 %i.c, 30
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl i32 %i.c, 5
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul i32 %i.c, 34
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul i32 %i.c, 36
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul i32 %i.c, 38
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i32 %i.c, 40
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul i32 %i.c, 42
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul i32 %i.c, 44
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul i32 %i.c, 46
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul i32 %i.c, 48
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul i32 %i.c, 50
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul i32 %i.c, 52
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul i32 %i.c, 54
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i32 %i.c, 56
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul i32 %i.c, 58
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul i32 %i.c, 60
  %i.ca = sext i32 %i.bz to i64
  br label %.preheader.us

.preheader.lr.ph.split.us.split.us:               ; preds = %.preheader.lr.ph.split.us
  %.val48.us.us = load ptr, ptr %i.r, align 8, !tbaa !33
end_hunk_0
begin_hunk_1_@Gia_ManSimRelDeriveFuncs:bb.a
  %i.ef = load i64, ptr %gep57.us.10, align 8, !tbaa !43
  %i.eg = or i64 %i.ef, %i.dk
  store i64 %i.eg, ptr %gep57.us.10, align 8, !tbaa !43
  %gep57.us.11 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.ao ; 2 uses
  %i.eh = load i64, ptr %gep57.us.11, align 8, !tbaa !43
  %i.ei = or i64 %i.eh, %i.dk
  store i64 %i.ei, ptr %gep57.us.11, align 8, !tbaa !43
  %gep57.us.12 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.aq ; 2 uses
  %i.ej = load i64, ptr %gep57.us.12, align 8, !tbaa !43
  %i.ek = or i64 %i.ej, %i.dk
  store i64 %i.ek, ptr %gep57.us.12, align 8, !tbaa !43
  %gep57.us.13 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.as ; 2 uses
  %i.el = load i64, ptr %gep57.us.13, align 8, !tbaa !43
  %i.em = or i64 %i.el, %i.dk
  store i64 %i.em, ptr %gep57.us.13, align 8, !tbaa !43
  %gep57.us.14 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.au ; 2 uses
  %i.en = load i64, ptr %gep57.us.14, align 8, !tbaa !43
  %i.eo = or i64 %i.en, %i.dk
  store i64 %i.eo, ptr %gep57.us.14, align 8, !tbaa !43
  %gep57.us.15 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.aw ; 2 uses
  %i.ep = load i64, ptr %gep57.us.15, align 8, !tbaa !43
  %i.eq = or i64 %i.ep, %i.dk
  store i64 %i.eq, ptr %gep57.us.15, align 8, !tbaa !43
  %gep57.us.16 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.ay ; 2 uses
  %i.er = load i64, ptr %gep57.us.16, align 8, !tbaa !43
  %i.es = or i64 %i.er, %i.dk
  store i64 %i.es, ptr %gep57.us.16, align 8, !tbaa !43
  %gep57.us.17 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.ba ; 2 uses
  %i.et = load i64, ptr %gep57.us.17, align 8, !tbaa !43
  %i.eu = or i64 %i.et, %i.dk
  store i64 %i.eu, ptr %gep57.us.17, align 8, !tbaa !43
  %gep57.us.18 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.bc ; 2 uses
  %i.ev = load i64, ptr %gep57.us.18, align 8, !tbaa !43
  %i.ew = or i64 %i.ev, %i.dk
  store i64 %i.ew, ptr %gep57.us.18, align 8, !tbaa !43
  %gep57.us.19 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.be ; 2 uses
  %i.ex = load i64, ptr %gep57.us.19, align 8, !tbaa !43
  %i.ey = or i64 %i.ex, %i.dk
  store i64 %i.ey, ptr %gep57.us.19, align 8, !tbaa !43
  %gep57.us.20 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.bg ; 2 uses
  %i.ez = load i64, ptr %gep57.us.20, align 8, !tbaa !43
  %i.fa = or i64 %i.ez, %i.dk
  store i64 %i.fa, ptr %gep57.us.20, align 8, !tbaa !43
  %gep57.us.21 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.bi ; 2 uses
  %i.fb = load i64, ptr %gep57.us.21, align 8, !tbaa !43
  %i.fc = or i64 %i.fb, %i.dk
  store i64 %i.fc, ptr %gep57.us.21, align 8, !tbaa !43
  %gep57.us.22 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.bk ; 2 uses
  %i.fd = load i64, ptr %gep57.us.22, align 8, !tbaa !43
  %i.fe = or i64 %i.fd, %i.dk
  store i64 %i.fe, ptr %gep57.us.22, align 8, !tbaa !43
  %gep57.us.23 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.bm ; 2 uses
  %i.ff = load i64, ptr %gep57.us.23, align 8, !tbaa !43
  %i.fg = or i64 %i.ff, %i.dk
  store i64 %i.fg, ptr %gep57.us.23, align 8, !tbaa !43
  %gep57.us.24 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.bo ; 2 uses
  %i.fh = load i64, ptr %gep57.us.24, align 8, !tbaa !43
  %i.fi = or i64 %i.fh, %i.dk
  store i64 %i.fi, ptr %gep57.us.24, align 8, !tbaa !43
  %gep57.us.25 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.bq ; 2 uses
  %i.fj = load i64, ptr %gep57.us.25, align 8, !tbaa !43
  %i.fk = or i64 %i.fj, %i.dk
  store i64 %i.fk, ptr %gep57.us.25, align 8, !tbaa !43
  %gep57.us.26 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.bs ; 2 uses
  %i.fl = load i64, ptr %gep57.us.26, align 8, !tbaa !43
  %i.fm = or i64 %i.fl, %i.dk
  store i64 %i.fm, ptr %gep57.us.26, align 8, !tbaa !43
  %gep57.us.27 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.bu ; 2 uses
  %i.fn = load i64, ptr %gep57.us.27, align 8, !tbaa !43
  %i.fo = or i64 %i.fn, %i.dk
  store i64 %i.fo, ptr %gep57.us.27, align 8, !tbaa !43
  %gep57.us.28 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.bw ; 2 uses
  %i.fp = load i64, ptr %gep57.us.28, align 8, !tbaa !43
  %i.fq = or i64 %i.fp, %i.dk
  store i64 %i.fq, ptr %gep57.us.28, align 8, !tbaa !43
  %gep57.us.29 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.by ; 2 uses
  %i.fr = load i64, ptr %gep57.us.29, align 8, !tbaa !43
  %i.fs = or i64 %i.fr, %i.dk
  store i64 %i.fs, ptr %gep57.us.29, align 8, !tbaa !43
  %gep57.us.30 = getelementptr [8 x i8], ptr %invariant.gep56.us, i64 %i.ca ; 2 uses
  %i.ft = load i64, ptr %gep57.us.30, align 8, !tbaa !43
  %i.fu = or i64 %i.ft, %i.dk
  store i64 %i.fu, ptr %gep57.us.30, align 8, !tbaa !43
  %i.fv = add nuw nsw i32 %.04158.us, 1           ; 2 uses
  %exitcond101.not = icmp eq i32 %i.fv, %smax100
  br i1 %exitcond101.not, label %._crit_edge60.thread, label %.preheader.us, !llvm.loop !334

.preheader.lr.ph.split.split.us:                  ; preds = %.preheader.lr.ph
  %.val48.us71 = load ptr, ptr %i.r, align 8, !tbaa !33
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1) ; 2 uses
  %smax87 = tail call i32 @llvm.smax.i32(i32 %i.p, i32 1)
  br label %.preheader.us64

.preheader.us64:                                  ; preds = %._crit_edge.us72, %.preheader.lr.ph.split.split.us
  %.059.us65 = phi i32 [ 0, %.preheader.lr.ph.split.split.us ], [ %i.gj, %._crit_edge.us72 ]
  %.04158.us66 = phi i32 [ 0, %.preheader.lr.ph.split.split.us ], [ %i.gk, %._crit_edge.us72 ] ; 2 uses
  %i.fw = shl nuw nsw i32 %.04158.us66, %2
  br label %bb.i

bb.i:                                             ; preds = %.preheader.us64, %bb.j
  %.03949.us67 = phi i32 [ 0, %.preheader.us64 ], [ %i.gg, %bb.j ] ; 3 uses
  %i.fx = add nuw nsw i32 %.03949.us67, %i.fw     ; 2 uses
  %i.fy = lshr i32 %i.fx, 6
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.val48.us71, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !43
  %i.gc = and i32 %i.fx, 63
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = shl nuw i64 1, %i.gd
  %i.gf = and i64 %i.gb, %i.ge
  %.not44.us68 = icmp eq i64 %i.gf, 0
  br i1 %.not44.us68, label %bb.j, label %._crit_edge.us72

bb.j:                                             ; preds = %bb.i
  %i.gg = add nuw nsw i32 %.03949.us67, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.gg, %smax
  br i1 %exitcond.not, label %._crit_edge.us72, label %bb.i, !llvm.loop !332

._crit_edge.us72:                                 ; preds = %bb.j, %bb.i
  %.039.lcssa.us69 = phi i32 [ %.03949.us67, %bb.i ], [ %smax, %bb.j ]
  %i.gh = icmp eq i32 %.039.lcssa.us69, %i.a
  %i.gi = zext i1 %i.gh to i32
  %i.gj = add nuw nsw i32 %.059.us65, %i.gi       ; 2 uses
  %i.gk = add nuw nsw i32 %.04158.us66, 1         ; 2 uses
  %exitcond88.not = icmp eq i32 %i.gk, %smax87
  br i1 %exitcond88.not, label %._crit_edge60, label %.preheader.us64, !llvm.loop !334

._crit_edge60:                                    ; preds = %._crit_edge.us72, %._crit_edge55.us.us
  %.0.lcssa = phi i32 [ %i.de, %._crit_edge55.us.us ], [ %i.gj, %._crit_edge.us72 ] ; 2 uses
  %.not = icmp eq i32 %.0.lcssa, 0
  br i1 %.not, label %._crit_edge60.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge60
  %i.gl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %.0.lcssa, i32 noundef %i.p) ; 0 uses
  br label %bb.l

._crit_edge60.thread:                             ; preds = %.preheader.us, %Vec_WrdStart.exit, %._crit_edge60
  %i.gm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.p) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge60.thread, %bb.k
  tail call void @Gia_ManSimRelCheckFuncs(ptr poison, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.f)
  ret ptr %i.f
}

; Function Attrs: nofree nounwind uwtable
define noalias noundef ptr @Gia_ManSimRelDeriveFuncs2(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.b = shl nuw i32 1, %2                        ; 4 uses
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val73 = load i32, ptr %i.c, align 4, !tbaa !39
  %i.d = sdiv i32 %.val73, %i.b                   ; 6 uses
  %i.e = shl nsw i32 %2, 1
  %i.f = mul nsw i32 %i.d, %i.e                   ; 4 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 5 uses
  %i.h = add i32 %i.f, -1
  %or.cond.i.i = icmp ult i32 %i.h, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.f ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.g, align 8, !tbaa !41
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %spec.store.select.i.i to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #34
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !33
  store i32 %i.f, ptr %i.m, align 4, !tbaa !39
  %i.o = sext i32 %i.f to i64
  %i.p = shl nsw i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.p, i1 false)
  %i.q = shl i32 %i.d, 6                          ; 7 uses
  %i.r = icmp sgt i32 %i.d, 0
  br i1 %i.r, label %.preheader.lr.ph, label %.thread

.preheader.lr.ph:                                 ; preds = %Vec_WrdStart.exit
  %i.s = getelementptr i8, ptr %1, i64 8
  %.not124 = icmp eq i32 %2, 31
  %i.t = icmp sgt i32 %2, 0
  %i.u = shl nuw i32 %i.d, 1
  %.val74.us = load ptr, ptr %i.s, align 8, !tbaa !33 ; 3 uses
  %smax133 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1) ; 4 uses
  br i1 %i.t, label %.preheader.lr.ph.split.us, label %.preheader.lr.ph.split.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.v = zext nneg i32 %i.d to i64
  %smax137 = tail call i32 @llvm.smax.i32(i32 %i.q, i32 1)
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge98.us, %.preheader.lr.ph.split.us
  %.0102.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.bn, %._crit_edge98.us ] ; 4 uses
  %.063101.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.bm, %._crit_edge98.us ]
  %.pre = shl i32 %.0102.us, %2                   ; 2 uses
  br i1 %.not124, label %.lr.ph97.us, label %.lr.ph.us.a

.lr.ph.us.a:                                      ; preds = %.preheader.us, %bb.c
  %.06492.us = phi i32 [ %i.af, %bb.c ], [ 0, %.preheader.us ] ; 3 uses
  %i.w = add nsw i32 %.06492.us, %.pre            ; 2 uses
  %i.x = ashr i32 %i.w, 6
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %.val74.us, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !43
  %i.ab = and i32 %i.w, 63
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = and i64 %i.aa, %i.ad
  %.not67.us = icmp eq i64 %i.ae, 0
  br i1 %.not67.us, label %bb.c, label %.lr.ph97.us

bb.c:                                             ; preds = %.lr.ph.us.a
  %i.af = add nuw nsw i32 %.06492.us, 1           ; 2 uses
  %exitcond134.not = icmp eq i32 %i.af, %smax133
  br i1 %exitcond134.not, label %.lr.ph97.us, label %.lr.ph.us.a, !llvm.loop !335

.lr.ph97.us:                                      ; preds = %bb.c, %.lr.ph.us.a, %.preheader.us
  %.064.lcssa.us = phi i32 [ 0, %.preheader.us ], [ %.06492.us, %.lr.ph.us.a ], [ %smax133, %bb.c ] ; 3 uses
  %i.ag = and i32 %.0102.us, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw i64 1, %i.ah                    ; 2 uses
  %i.aj = lshr i32 %.0102.us, 6
  %i.ak = zext nneg i32 %i.aj to i64
  %invariant.gep.us = getelementptr [8 x i8], ptr %i.l, i64 %i.ak ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph97.us, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph97.us ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %i.al = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.am = shl nuw i32 1, %i.al                    ; 2 uses
  %i.an = xor i32 %i.am, %.064.lcssa.us
  %i.ao = add nsw i32 %i.an, %.pre                ; 2 uses
  %i.ap = ashr i32 %i.ao, 6
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.val74.us, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.at = and i32 %i.ao, 63
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.as, %i.av
  %.not68.us = icmp eq i64 %i.aw, 0
  br i1 %.not68.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !32
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !32
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ba = and i32 %i.am, %.064.lcssa.us
  %.not69.us = icmp eq i32 %i.ba, 0
  br i1 %.not69.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = shl nuw nsw i64 %indvars.iv, 1
  %i.bc = or disjoint i64 %i.bb, 1
  %i.bd = mul nuw nsw i64 %i.bc, %i.v
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.bd ; 2 uses
  %i.be = load i64, ptr %gep.us, align 8, !tbaa !43
  %i.bf = or i64 %i.be, %i.ai
  store i64 %i.bf, ptr %gep.us, align 8, !tbaa !43
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bg = mul i32 %i.u, %i.al
  %i.bh = sext i32 %i.bg to i64
  %gep100.us = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.bh ; 2 uses
  %i.bi = load i64, ptr %gep100.us, align 8, !tbaa !43
  %i.bj = or i64 %i.bi, %i.ai
  store i64 %i.bj, ptr %gep100.us, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond136.not, label %._crit_edge98.us, label %bb.d, !llvm.loop !336

._crit_edge98.us:                                 ; preds = %bb.i
  %i.bk = icmp eq i32 %.064.lcssa.us, %i.b
  %i.bl = zext i1 %i.bk to i32
  %i.bm = add nuw nsw i32 %.063101.us, %i.bl      ; 2 uses
  %i.bn = add nuw nsw i32 %.0102.us, 1            ; 2 uses
  %exitcond138.not = icmp eq i32 %i.bn, %smax137
  br i1 %exitcond138.not, label %._crit_edge103, label %.preheader.us, !llvm.loop !337

.preheader.lr.ph.split.split.us:                  ; preds = %.preheader.lr.ph
  %smax131 = tail call i32 @llvm.smax.i32(i32 %i.q, i32 1)
  br label %.preheader.us107

.preheader.us107:                                 ; preds = %._crit_edge.us115, %.preheader.lr.ph.split.split.us
  %.0102.us108 = phi i32 [ 0, %.preheader.lr.ph.split.split.us ], [ %i.cc, %._crit_edge.us115 ] ; 2 uses
  %.063101.us109 = phi i32 [ 0, %.preheader.lr.ph.split.split.us ], [ %i.cb, %._crit_edge.us115 ]
  %i.bo = shl nuw nsw i32 %.0102.us108, %2
  br label %bb.j

bb.j:                                             ; preds = %.preheader.us107, %bb.k
  %.06492.us110 = phi i32 [ 0, %.preheader.us107 ], [ %i.by, %bb.k ] ; 3 uses
  %i.bp = add nuw nsw i32 %.06492.us110, %i.bo    ; 2 uses
  %i.bq = lshr i32 %i.bp, 6
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.val74.us, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !43
  %i.bu = and i32 %i.bp, 63
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bt, %i.bw
  %.not67.us111 = icmp eq i64 %i.bx, 0
  br i1 %.not67.us111, label %bb.k, label %._crit_edge.us115

bb.k:                                             ; preds = %bb.j
  %i.by = add nuw nsw i32 %.06492.us110, 1        ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %smax133
  br i1 %exitcond.not, label %._crit_edge.us115, label %bb.j, !llvm.loop !335

._crit_edge.us115:                                ; preds = %bb.k, %bb.j
  %.064.lcssa.us112 = phi i32 [ %.06492.us110, %bb.j ], [ %smax133, %bb.k ]
  %i.bz = icmp eq i32 %.064.lcssa.us112, %i.b
  %i.ca = zext i1 %i.bz to i32
  %i.cb = add nuw nsw i32 %.063101.us109, %i.ca   ; 2 uses
  %i.cc = add nuw nsw i32 %.0102.us108, 1         ; 2 uses
  %exitcond132.not = icmp eq i32 %i.cc, %smax131
  br i1 %exitcond132.not, label %._crit_edge103, label %.preheader.us107, !llvm.loop !337

._crit_edge103:                                   ; preds = %._crit_edge.us115, %._crit_edge98.us
  %.063.lcssa = phi i32 [ %i.bm, %._crit_edge98.us ], [ %i.cb, %._crit_edge.us115 ] ; 2 uses
  %.not = icmp eq i32 %.063.lcssa, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge103
  %i.cd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %.063.lcssa, i32 noundef %i.q) ; 0 uses
  br label %bb.p

bb.m:                                             ; preds = %._crit_edge103
  %i.ce = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.q) ; 0 uses
  %i.cf = icmp sgt i32 %2, 0
  br i1 %i.cf, label %.lr.ph, label %._crit_edge

.thread:                                          ; preds = %Vec_WrdStart.exit
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.q) ; 0 uses
  %i.ch = icmp sgt i32 %2, 0
  br i1 %i.ch, label %.lr.ph.thread, label %._crit_edge

.lr.ph.thread:                                    ; preds = %.thread
  %i.ci = sitofp i32 %i.q to double
  %wide.trip.count142 = zext nneg i32 %2 to i64
  br label %Abc_TtCountOnesVec.exit87

.lr.ph:                                           ; preds = %bb.m
  %wide.trip.count.i = zext nneg i32 %i.d to i64  ; 4 uses
  %i.cj = sitofp i32 %i.q to double
  %wide.trip.count147 = zext nneg i32 %2 to i64
  br label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.lr.ph, %Abc_TtCountOnesVec.exit87.loopexit.us
  %indvars.iv144 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next145, %Abc_TtCountOnesVec.exit87.loopexit.us ] ; 4 uses
  %i.ck = shl nuw nsw i64 %indvars.iv144, 1       ; 2 uses
  %i.cl = mul nuw nsw i64 %i.ck, %wide.trip.count.i
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cl
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %Abc_TtCountOnes2.exit.i.us, %.lr.ph.preheader.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us, %Abc_TtCountOnes2.exit.i.us ] ; 2 uses
  %.08.i.us = phi i32 [ 0, %.lr.ph.preheader.i.us ], [ %i.cs, %Abc_TtCountOnes2.exit.i.us ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.i.us
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !43 ; 2 uses
  %.not.i.i76.us = icmp eq i64 %i.co, 0
  br i1 %.not.i.i76.us, label %Abc_TtCountOnes2.exit.i.us, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.us
  %i.cp = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %i.co)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  br label %Abc_TtCountOnes2.exit.i.us

Abc_TtCountOnes2.exit.i.us:                       ; preds = %bb.n, %.lr.ph.i.us
  %i.cr = phi i32 [ %i.cq, %bb.n ], [ 0, %.lr.ph.i.us ]
  %i.cs = add nuw nsw i32 %i.cr, %.08.i.us        ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %Abc_TtCountOnesVec.exit.us, label %.lr.ph.i.us, !llvm.loop !75

Abc_TtCountOnesVec.exit.us:                       ; preds = %Abc_TtCountOnes2.exit.i.us
  %i.ct = or disjoint i64 %i.ck, 1
  %i.cu = mul nuw nsw i64 %i.ct, %wide.trip.count.i
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cu
  br label %.lr.ph.i80.us

.lr.ph.i80.us:                                    ; preds = %Abc_TtCountOnes2.exit.i84.us, %Abc_TtCountOnesVec.exit.us
  %indvars.iv.i81.us = phi i64 [ 0, %Abc_TtCountOnesVec.exit.us ], [ %indvars.iv.next.i85.us, %Abc_TtCountOnes2.exit.i84.us ] ; 2 uses
  %.08.i82.us = phi i32 [ 0, %Abc_TtCountOnesVec.exit.us ], [ %i.db, %Abc_TtCountOnes2.exit.i84.us ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.i81.us
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !43 ; 2 uses
  %.not.i.i83.us = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i83.us, label %Abc_TtCountOnes2.exit.i84.us, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i80.us
  %i.cy = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %i.cx)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  br label %Abc_TtCountOnes2.exit.i84.us

Abc_TtCountOnes2.exit.i84.us:                     ; preds = %bb.o, %.lr.ph.i80.us
  %i.da = phi i32 [ %i.cz, %bb.o ], [ 0, %.lr.ph.i80.us ]
  %i.db = add nuw nsw i32 %i.da, %.08.i82.us      ; 2 uses
  %indvars.iv.next.i85.us = add nuw nsw i64 %indvars.iv.i81.us, 1 ; 2 uses
  %exitcond.not.i86.us = icmp eq i64 %indvars.iv.next.i85.us, %wide.trip.count.i
  br i1 %exitcond.not.i86.us, label %Abc_TtCountOnesVec.exit87.loopexit.us, label %.lr.ph.i80.us, !llvm.loop !75

Abc_TtCountOnesVec.exit87.loopexit.us:            ; preds = %Abc_TtCountOnes2.exit.i84.us
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv144
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !32 ; 2 uses
  %i.de = sitofp i32 %i.dd to double
  %i.df = fmul nnan double %i.de, 1.000000e+02
  %i.dg = fdiv double %i.df, %i.cj
  %i.dh = trunc nuw nsw i64 %indvars.iv144 to i32
  %i.di = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.dh, i32 noundef %i.cs, i32 noundef %i.db, i32 noundef %i.dd, double noundef %i.dg) ; 0 uses
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %._crit_edge, label %.lr.ph.preheader.i.us, !llvm.loop !338

Abc_TtCountOnesVec.exit87:                        ; preds = %.lr.ph.thread, %Abc_TtCountOnesVec.exit87
  %indvars.iv139 = phi i64 [ 0, %.lr.ph.thread ], [ %indvars.iv.next140, %Abc_TtCountOnesVec.exit87 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv139
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !32 ; 2 uses
  %i.dl = sitofp i32 %i.dk to double
  %i.dm = fmul nnan double %i.dl, 1.000000e+02
  %i.dn = fdiv double %i.dm, %i.ci
  %i.do = trunc nuw nsw i64 %indvars.iv139 to i32
  %i.dp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.do, i32 noundef 0, i32 noundef 0, i32 noundef %i.dk, double noundef %i.dn) ; 0 uses
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %._crit_edge, label %Abc_TtCountOnesVec.exit87, !llvm.loop !338

._crit_edge:                                      ; preds = %Abc_TtCountOnesVec.exit87, %Abc_TtCountOnesVec.exit87.loopexit.us, %.thread, %bb.m
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.l
  tail call void @Gia_ManSimRelCheckFuncs(ptr poison, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret ptr %i.g
}

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManSimRelPrint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val22 = load i32, ptr %i.c, align 4, !tbaa !39
  %i.d = getelementptr i8, ptr %0, i64 64
  %.val23 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr i8, ptr %.val23, i64 4
  %.val23.val = load i32, ptr %i.e, align 4, !tbaa !30
  %i.f = sdiv i32 %.val22, %.val23.val            ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.g, align 4, !tbaa !39
  %i.h = sdiv i32 %.val, %i.f                     ; 3 uses
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge29

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.j = shl i32 %i.f, 6
  %i.k = icmp sgt i32 %i.h, 0
  %i.l = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %smax32 = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1) ; 2 uses
  br i1 %i.k, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us
  %.02028.us = phi i32 [ %i.ag, %._crit_edge.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.m = mul nuw nsw i32 %.02028.us, %i.h
  %.val25.us.pre = load ptr, ptr %i.l, align 8, !tbaa !33
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %.val25.us = phi ptr [ %.val25.us.pre, %.preheader.us ], [ %.val24.us, %bb.b ]
  %.027.us = phi i32 [ 0, %.preheader.us ], [ %i.ad, %bb.b ]
  %.01926.us = phi i32 [ 0, %.preheader.us ], [ %i.ae, %bb.b ] ; 2 uses
  %i.n = add nuw nsw i32 %.01926.us, %i.m         ; 2 uses
end_hunk_1
