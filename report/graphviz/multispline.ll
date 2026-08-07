inline.NumInlined: 116
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@addEndpoint:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.az = sext i32 %i.e to i64
  %i.ba = sext i32 %i.av to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.03.us = phi i32 [ %i.bc, %.lr.ph.split.us ], [ %i.e, %.lr.ph ] ; 5 uses
  %i.bb = icmp slt i32 %.03.us, %i.av
  %i.bc = add i32 %.03.us, 1                      ; 3 uses
  %.sroa.7.0.us = select i1 %i.bb, i32 %i.bc, i32 %i.e ; 3 uses
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %spec.select.i.us = call i32 @llvm.smax.i32(i32 %.03.us, i32 %.sroa.7.0.us)
  %spec.select13.i.us = call i32 @llvm.smin.i32(i32 %.03.us, i32 %.sroa.7.0.us)
  store i32 %spec.select13.i.us, ptr %i.ax, align 8, !tbaa !46
  store i32 %spec.select.i.us, ptr %i.ay, align 4, !tbaa !46
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !61
  %i.bf = call ptr %i.be(ptr noundef nonnull %i.bd, ptr noundef nonnull %5, i32 noundef 4) #18, !inline_history !170
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.sroa.7.0.insert.ext.us = zext i32 %.sroa.7.0.us to i64
  %.sroa.7.0.insert.shift.us = shl nuw i64 %.sroa.7.0.insert.ext.us, 32
  %.sroa.0.0.insert.ext.us = zext i32 %.03.us to i64
  %.sroa.0.0.insert.insert.us = or disjoint i64 %.sroa.7.0.insert.shift.us, %.sroa.0.0.insert.ext.us
  call fastcc void @addTriEdge(ptr noundef nonnull %i.ap, i32 noundef %3, i32 noundef %i.bh, i64 %.sroa.0.0.insert.insert.us)
  %exitcond6.not = icmp eq i32 %i.bc, %i.g
  br i1 %exitcond6.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !171

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.l
  %indvars.iv = phi i64 [ %i.az, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.l ] ; 5 uses
  %i.bi = icmp slt i64 %indvars.iv, %i.ba
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bj = trunc i64 %indvars.iv.next to i32       ; 2 uses
  %.sroa.7.0 = select i1 %i.bi, i32 %i.bj, i32 %i.e ; 4 uses
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.bl = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.bl, i32 %.sroa.7.0)
  %spec.select13.i = call i32 @llvm.smin.i32(i32 %i.bl, i32 %.sroa.7.0)
  store i32 %spec.select13.i, ptr %i.ax, align 8, !tbaa !46
  store i32 %spec.select.i, ptr %i.ay, align 4, !tbaa !46
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !61
  %i.bn = call ptr %i.bm(ptr noundef nonnull %i.bk, ptr noundef nonnull %5, i32 noundef 4) #18, !inline_history !170
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.bq = getelementptr inbounds [16 x i8], ptr %i.i, i64 %indvars.iv ; 3 uses
  %i.br = load double, ptr %i.bq, align 8         ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8         ; 2 uses
  %i.bu = call double @area2(double %i.br, double %i.bt, double %.sroa.056.0, double %.sroa.1258.0, double %1, double %2) #18
  %i.bv = fcmp ult double %i.bu, -1.000000e-10
  br i1 %i.bv, label %inCone.exit.thread, label %inCone.exit

inCone.exit:                                      ; preds = %.lr.ph.split
  %i.bw = call double @area2(double %i.br, double %i.bt, double %1, double %2, double %.sroa.053.0, double %.sroa.12.0) #18
  %i.bx = fcmp ult double %i.bw, -1.000000e-10
  br i1 %i.bx, label %inCone.exit.thread, label %bb.k

inCone.exit.thread:                               ; preds = %.lr.ph.split, %inCone.exit
  %i.by = sext i32 %.sroa.7.0 to i64
  %i.bz = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.by ; 3 uses
  %i.ca = load double, ptr %i.bz, align 8         ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8         ; 2 uses
  %i.cd = call double @area2(double %i.ca, double %i.cc, double %.sroa.056.0, double %.sroa.1258.0, double %1, double %2) #18
  %i.ce = fcmp ult double %i.cd, -1.000000e-10
  br i1 %i.ce, label %inCone.exit191.thread, label %inCone.exit191

inCone.exit191:                                   ; preds = %inCone.exit.thread
  %i.cf = call double @area2(double %i.ca, double %i.cc, double %1, double %2, double %.sroa.053.0, double %.sroa.12.0) #18
  %i.cg = fcmp ult double %i.cf, -1.000000e-10
  br i1 %i.cg, label %inCone.exit191.thread, label %bb.k

inCone.exit191.thread:                            ; preds = %inCone.exit.thread, %inCone.exit191
  %i.ch = load double, ptr %i.bq, align 8
  %i.ci = load double, ptr %i.bs, align 8
  %i.cj = load double, ptr %i.bz, align 8
  %i.ck = load double, ptr %i.cb, align 8
  %i.cl = call fastcc i32 @raySeg(double %1, double %2, double %.sroa.060.0, double %.sroa.11.0, double %i.ch, double %i.ci, double %i.cj, double %i.ck)
  %.not144 = icmp eq i32 %i.cl, 0
  br i1 %.not144, label %bb.l, label %bb.k

bb.k:                                             ; preds = %inCone.exit191.thread, %inCone.exit191, %inCone.exit
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.0 to i64
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.0.0.insert.ext = and i64 %indvars.iv, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.0.0.insert.ext
  call fastcc void @addTriEdge(ptr noundef nonnull %i.ap, i32 noundef %3, i32 noundef %i.bp, i64 %.sroa.0.0.insert.insert)
  br label %bb.l

bb.l:                                             ; preds = %inCone.exit191.thread, %bb.k
  %exitcond.not = icmp eq i32 %i.g, %i.bj
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !171

._crit_edge:                                      ; preds = %bb.l, %.lr.ph.split.us, %bb.j
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #6 {
bb.a:
  tail call void @exit(i32 noundef 1) #22
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare ptr @dtopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal nonnull ptr @newItem(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef range(i64 4, 81) 32) #19 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %gv_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.1, i64 noundef 32) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

gv_alloc.exit:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load <2 x i32>, ptr %i.e, align 8, !tbaa !46
  store <2 x i32> %i.g, ptr %i.f, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.i, ptr %i.j, align 8, !tbaa !57
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @cmpItem(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !46     ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !46     ; 2 uses
  %i.c = icmp slt i32 %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.a, %i.b
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !46   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !46   ; 2 uses
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp sgt i32 %i.f, %i.h
  %. = zext i1 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addTriEdge(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !172  ; 3 uses
  %i.e = add nsw i32 %i.d, 1                      ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %mul.ov.i = icmp slt i32 %i.d, -1
  br i1 %mul.ov.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str, i64 noundef %i.f, i64 noundef 24) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = sext i32 %i.d to i64
  %i.j = mul nsw i64 %i.i, 24                     ; 2 uses
  %i.k = mul nsw i64 %i.f, 24                     ; 3 uses
  %i.l = icmp eq i32 %i.e, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.b) #18
  br label %gv_recalloc.exit

bb.e:                                             ; preds = %bb.c
  %i.m = tail call ptr @realloc(ptr noundef %i.b, i64 noundef %i.k) #23 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.1, i64 noundef %i.k) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.r = sub nuw nsw i64 %i.k, %i.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.q, i8 0, i64 %i.r, i1 false)
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.d, %bb.g
  %.0.i.i = phi ptr [ null, %bb.d ], [ %i.m, %bb.g ] ; 2 uses
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !27
  %i.s = load i32, ptr %i.c, align 8, !tbaa !172
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [24 x i8], ptr %.0.i.i, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.w ; 6 uses
  %i.y = sext i32 %2 to i64
  %i.z = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.y ; 6 uses
  store i32 %1, ptr %i.u, align 8, !tbaa !114
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %2, ptr %i.aa, align 4, !tbaa !117
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !173
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !173
  %i.af = fsub double %i.ac, %i.ae                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !174
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !174
  %i.ak = fsub double %i.ah, %i.aj                ; 2 uses
  %i.al = fmul double %i.ak, %i.ak
  %i.am = tail call double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.al)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %sqrt, ptr %i.an, align 8, !tbaa !118
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %3, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21 ; 2 uses
  %i.ar = load i64, ptr %i.x, align 8, !tbaa !86  ; 2 uses
  %i.as = add i64 %i.ar, 1                        ; 4 uses
  %mul.ov.i39 = icmp ugt i64 %i.as, 4611686018427387903
  br i1 %mul.ov.i39, label %bb.h, label %bb.i

bb.h:                                             ; preds = %gv_recalloc.exit
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str, i64 noundef %i.as, i64 noundef 4) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.i:                                             ; preds = %gv_recalloc.exit
  %i.av = shl i64 %i.ar, 2                        ; 2 uses
  %i.aw = shl nuw i64 %i.as, 2                    ; 3 uses
  %i.ax = icmp eq i64 %i.as, 0
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef %i.aq) #18
  br label %gv_recalloc.exit41

bb.k:                                             ; preds = %bb.i
  %i.ay = tail call ptr @realloc(ptr noundef %i.aq, i64 noundef %i.aw) #23 ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.bb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ba, ptr noundef nonnull @.str.1, i64 noundef %i.aw) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bc = icmp ugt i64 %i.aw, %i.av
  br i1 %i.bc, label %bb.n, label %gv_recalloc.exit41

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av
  store i32 0, ptr %i.bd, align 1
  br label %gv_recalloc.exit41

gv_recalloc.exit41:                               ; preds = %bb.j, %bb.m, %bb.n
  %.0.i.i40 = phi ptr [ null, %bb.j ], [ %i.ay, %bb.n ], [ %i.ay, %bb.m ] ; 2 uses
  store ptr %.0.i.i40, ptr %i.ap, align 8, !tbaa !21
  %i.be = load i32, ptr %i.c, align 8, !tbaa !172
  %i.bf = load i64, ptr %i.x, align 8, !tbaa !86  ; 2 uses
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.x, align 8, !tbaa !86
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i40, i64 %i.bf
  store i32 %i.be, ptr %i.bh, align 4, !tbaa !46
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !21 ; 2 uses
  %i.bk = load i64, ptr %i.z, align 8, !tbaa !86  ; 2 uses
  %i.bl = add i64 %i.bk, 1                        ; 4 uses
  %mul.ov.i43 = icmp ugt i64 %i.bl, 4611686018427387903
  br i1 %mul.ov.i43, label %bb.o, label %bb.p

bb.o:                                             ; preds = %gv_recalloc.exit41
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.bn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bm, ptr noundef nonnull @.str, i64 noundef %i.bl, i64 noundef 4) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.p:                                             ; preds = %gv_recalloc.exit41
  %i.bo = shl i64 %i.bk, 2                        ; 2 uses
  %i.bp = shl nuw i64 %i.bl, 2                    ; 3 uses
  %i.bq = icmp eq i64 %i.bl, 0
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef %i.bj) #18
  br label %gv_recalloc.exit45

bb.r:                                             ; preds = %bb.p
  %i.br = tail call ptr @realloc(ptr noundef %i.bj, i64 noundef %i.bp) #23 ; 4 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bt = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.bu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bt, ptr noundef nonnull @.str.1, i64 noundef %i.bp) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bv = icmp ugt i64 %i.bp, %i.bo
  br i1 %i.bv, label %bb.u, label %gv_recalloc.exit45

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bo
  store i32 0, ptr %i.bw, align 1
  br label %gv_recalloc.exit45

gv_recalloc.exit45:                               ; preds = %bb.q, %bb.t, %bb.u
  %.0.i.i44 = phi ptr [ null, %bb.q ], [ %i.br, %bb.u ], [ %i.br, %bb.t ] ; 2 uses
  store ptr %.0.i.i44, ptr %i.bi, align 8, !tbaa !21
  %i.bx = load i32, ptr %i.c, align 8, !tbaa !172 ; 2 uses
  %i.by = load i64, ptr %i.z, align 8, !tbaa !86  ; 2 uses
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.z, align 8, !tbaa !86
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i44, i64 %i.by
  store i32 %i.bx, ptr %i.ca, align 4, !tbaa !46
  %i.cb = add nsw i32 %i.bx, 1
  store i32 %i.cb, ptr %i.c, align 8, !tbaa !172
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @raySeg(double %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @wind(double %0, double %1, double %2, double %3, double %4, double %5) #18 ; 2 uses
  %i.b = tail call i32 @wind(double %0, double %1, double %2, double %3, double %6, double %7) #18
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.a, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @wind(double %0, double %1, double %6, double %7, double %2, double %3) #18
  %i.f = tail call i32 @wind(double %0, double %1, double %6, double %7, double %4, double %5) #18
  %i.g = mul nsw i32 %i.f, %i.e
  %i.h = icmp sgt i32 %i.g, -1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i32 @wind(double %0, double %1, double %4, double %5, double %2, double %3) #18
  %i.j = tail call i32 @wind(double %0, double %1, double %4, double %5, double %6, double %7) #18
  %i.k = mul nsw i32 %i.j, %i.i
  %i.l = icmp sgt i32 %i.k, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0.shrunk = phi i1 [ %i.l, %bb.d ], [ %i.h, %bb.c ], [ false, %bb.a ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

declare double @area2(double, double, double, double, double, double) local_unnamed_addr #2

declare i32 @wind(double, double, double, double, double, double) local_unnamed_addr #2

declare void @agerrorf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal nonnull ptr @newIpair(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef range(i64 4, 81) 24) #19 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %gv_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.1, i64 noundef 24) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

gv_alloc.exit:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load <2 x i32>, ptr %i.e, align 8, !tbaa !46
  store <2 x i32> %i.g, ptr %i.f, align 8, !tbaa !46
end_hunk_0
