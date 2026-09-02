Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/brin_minmax_multi?download=true
inline.NumInlined: 208
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@brin_minmax_multi_union:bb.a
  %i.fo = tail call ptr @palloc0_mul(i64 noundef 16, i64 noundef %i.fn) #11 ; 3 uses
  %i.fp = icmp sgt i32 %i.fm, 0
  br i1 %i.fp, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %wide.trip.count.i = zext nneg i32 %i.fm to i64
  br label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %.lr.ph.i83, %.lr.ph.preheader.i
  %indvars.iv.i84 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i85, %.lr.ph.i83 ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %indvars.iv.i84
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i64, ptr %i.fr, align 8
  %indvars.iv.next.i85 = add nuw nsw i64 %indvars.iv.i84, 1 ; 3 uses
  %i.ft = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %indvars.iv.next.i85
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = tail call i64 @FunctionCall2Coll(ptr noundef %i.fk, i32 noundef %i.k, i64 noundef %i.fs, i64 noundef %i.fu) #11
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %indvars.iv.i84 ; 2 uses
  %i.fx = trunc nuw nsw i64 %indvars.iv.i84 to i32
  store i32 %i.fx, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i64 %i.fv, ptr %i.fy, align 8
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i85, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i83, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i83, %bb.j
  tail call void @pg_qsort(ptr noundef %i.fo, i64 noundef %i.fn, i64 noundef 16, ptr noundef nonnull @compare_distances) #11
  br label %build_distances.exit

build_distances.exit:                             ; preds = %merge_overlapping_ranges.exit, %._crit_edge.i
  %.0.i = phi ptr [ %i.fo, %._crit_edge.i ], [ null, %merge_overlapping_ranges.exit ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = tail call fastcc i32 @reduce_expanded_ranges(ptr noundef %i.ba, i32 noundef %.030.lcssa.i, ptr noundef %.0.i, i32 noundef %i.ga, ptr noundef %i.ei, i32 noundef %i.k) ; 4 uses
  store i32 0, ptr %i.ak, align 8
  %i.gc = icmp sgt i32 %i.gb, 0
  br i1 %i.gc, label %.lr.ph.i86, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %build_distances.exit
  store i32 0, ptr %i.am, align 8
  br label %store_expanded_ranges.exit

.lr.ph.i86:                                       ; preds = %build_distances.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 5 uses
  %wide.trip.count.i87 = zext nneg i32 %i.gb to i64 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph.i86
  %indvars.iv.i88 = phi i64 [ 0, %.lr.ph.i86 ], [ %indvars.iv.next.i90, %bb.m ] ; 2 uses
  %.031.i = phi i32 [ 0, %.lr.ph.i86 ], [ %.1.i89, %bb.m ] ; 4 uses
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %indvars.iv.i88 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load i8, ptr %i.gf, align 8, !range !10, !noundef !11
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gi = load i64, ptr %i.ge, align 8
  %i.gj = add i32 %.031.i, 1
  %i.gk = sext i32 %.031.i to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gk
  store i64 %i.gi, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = add i32 %.031.i, 2
  %i.gp = sext i32 %i.gj to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gp
  store i64 %i.gn, ptr %i.gq, align 8
  %i.gr = load i32, ptr %i.ak, align 8
  %i.gs = add i32 %i.gr, 1
  store i32 %i.gs, ptr %i.ak, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i89 = phi i32 [ %.031.i, %bb.k ], [ %i.go, %bb.l ] ; 3 uses
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %exitcond.not.i91 = icmp eq i64 %indvars.iv.next.i90, %wide.trip.count.i87
  br i1 %exitcond.not.i91, label %._crit_edge.i92, label %bb.k, !llvm.loop !1

._crit_edge.i92:                                  ; preds = %bb.m
  store i32 0, ptr %i.am, align 8
  %xtraiter = and i64 %wide.trip.count.i87, 1
  %i.gt = icmp eq i32 %i.gb, 1
  br i1 %i.gt, label %.epil.preheader, label %._crit_edge.i92.new

._crit_edge.i92.new:                              ; preds = %._crit_edge.i92
  %unroll_iter = and i64 %wide.trip.count.i87, 2147483646
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %._crit_edge.i92.new
  %i.gu = phi i32 [ 0, %._crit_edge.i92.new ], [ %i.hr, %bb.r ]
  %indvars.iv38.i = phi i64 [ 0, %._crit_edge.i92.new ], [ %indvars.iv.next39.i.1, %bb.r ] ; 3 uses
  %.233.i = phi i32 [ %.1.i89, %._crit_edge.i92.new ], [ %.3.i.1, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %._crit_edge.i92.new ], [ %niter.next.1, %bb.r ]
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %indvars.iv38.i ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load i8, ptr %i.gw, align 8, !range !10, !noundef !11
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gz = load i64, ptr %i.gv, align 8
  %i.ha = add i32 %.233.i, 1
  %i.hb = sext i32 %.233.i to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.hb
  store i64 %i.gz, ptr %i.hc, align 8
  %i.hd = load i32, ptr %i.am, align 8
  %i.he = add i32 %i.hd, 1                        ; 2 uses
  store i32 %i.he, ptr %i.am, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.hf = phi i32 [ %i.he, %bb.o ], [ %i.gu, %bb.n ]
  %.3.i = phi i32 [ %i.ha, %bb.o ], [ %.233.i, %bb.n ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %indvars.iv38.i ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  %i.hi = load i8, ptr %i.hh, align 8, !range !10, !noundef !11
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = add i32 %.3.i, 1
  %i.hn = sext i32 %.3.i to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.hn
  store i64 %i.hl, ptr %i.ho, align 8
  %i.hp = load i32, ptr %i.am, align 8
  %i.hq = add i32 %i.hp, 1                        ; 2 uses
  store i32 %i.hq, ptr %i.am, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.hr = phi i32 [ %i.hq, %bb.q ], [ %i.hf, %bb.p ] ; 3 uses
  %.3.i.1 = phi i32 [ %i.hm, %bb.q ], [ %.3.i, %bb.p ] ; 2 uses
  %indvars.iv.next39.i.1 = add nuw nsw i64 %indvars.iv38.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %store_expanded_ranges.exit.loopexit.unr-lcssa, label %bb.n, !llvm.loop !2

store_expanded_ranges.exit.loopexit.unr-lcssa:    ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %store_expanded_ranges.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %store_expanded_ranges.exit.loopexit.unr-lcssa, %._crit_edge.i92
  %.epil.init = phi i32 [ 0, %._crit_edge.i92 ], [ %i.hr, %store_expanded_ranges.exit.loopexit.unr-lcssa ]
  %indvars.iv38.i.epil.init = phi i64 [ 0, %._crit_edge.i92 ], [ %indvars.iv.next39.i.1, %store_expanded_ranges.exit.loopexit.unr-lcssa ]
  %.233.i.epil.init = phi i32 [ %.1.i89, %._crit_edge.i92 ], [ %.3.i.1, %store_expanded_ranges.exit.loopexit.unr-lcssa ]
  %lcmp.mod108 = trunc i32 %i.gb to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.hs = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %indvars.iv38.i.epil.init ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load i8, ptr %i.ht, align 8, !range !10, !noundef !11
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.s, label %store_expanded_ranges.exit

bb.s:                                             ; preds = %.epil.preheader
  %i.hw = load i64, ptr %i.hs, align 8
  %i.hx = sext i32 %.233.i.epil.init to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.hx
  store i64 %i.hw, ptr %i.hy, align 8
  %i.hz = load i32, ptr %i.am, align 8
  %i.ia = add i32 %i.hz, 1                        ; 2 uses
  store i32 %i.ia, ptr %i.am, align 8
  br label %store_expanded_ranges.exit

store_expanded_ranges.exit:                       ; preds = %store_expanded_ranges.exit.loopexit.unr-lcssa, %bb.s, %.epil.preheader, %._crit_edge.thread.i
  %i.ib = phi i32 [ 0, %._crit_edge.thread.i ], [ %i.hr, %store_expanded_ranges.exit.loopexit.unr-lcssa ], [ %i.ia, %bb.s ], [ %.epil.init, %.epil.preheader ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  store i32 %i.ib, ptr %i.ic, align 4
  store ptr %i.ax, ptr @CurrentMemoryContext, align 8
  tail call void @MemoryContextDelete(ptr noundef %i.aw) #11
  tail call void @pfree(ptr noundef %i.y) #11
  %i.id = tail call fastcc ptr @brin_range_serialize(ptr noundef %i.ag)
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = load ptr, ptr %i.u, align 8
  store i64 %i.ie, ptr %i.if, align 8
  ret i64 0
}

declare ptr @AllocSetContextCreateInternal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sort_expanded_ranges(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.compare_context, align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 %1, ptr %i.a, align 8
  store ptr %0, ptr %4, align 8
  %i.b = sext i32 %3 to i64
  call void @qsort_arg(ptr noundef %2, i64 noundef %i.b, i64 noundef 24, ptr noundef nonnull @compare_expanded_ranges, ptr noundef nonnull %4) #11
  %i.c = icmp sgt i32 %3, 1
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.01822 = phi i32 [ 1, %.lr.ph.preheader ], [ %.1, %bb.f ] ; 4 uses
  %i.d = getelementptr [24 x i8], ptr %2, i64 %indvars.iv ; 6 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -24      ; 2 uses
  %i.f = load ptr, ptr %4, align 8
  %i.g = load i32, ptr %i.a, align 8
  %i.h = load i64, ptr %i.e, align 8
  %i.i = load i64, ptr %i.d, align 8
  %i.j = call i64 @FunctionCall2Coll(ptr noundef %i.f, i32 noundef %i.g, i64 noundef %i.h, i64 noundef %i.i) #11
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.b, label %compare_expanded_ranges.exit.thread

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %4, align 8
  %i.l = load i32, ptr %i.a, align 8
  %i.m = load i64, ptr %i.d, align 8
  %i.n = load i64, ptr %i.e, align 8
  %i.o = call i64 @FunctionCall2Coll(ptr noundef %i.k, i32 noundef %i.l, i64 noundef %i.m, i64 noundef %i.n) #11
  %.not23.i = icmp eq i64 %i.o, 0
  br i1 %.not23.i, label %bb.c, label %compare_expanded_ranges.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %4, align 8
  %i.q = load i32, ptr %i.a, align 8
  %i.r = getelementptr i8, ptr %i.d, i64 -16      ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = call i64 @FunctionCall2Coll(ptr noundef %i.p, i32 noundef %i.q, i64 noundef %i.s, i64 noundef %i.u) #11
  %.not24.i = icmp eq i64 %i.v, 0
  br i1 %.not24.i, label %compare_expanded_ranges.exit, label %compare_expanded_ranges.exit.thread

compare_expanded_ranges.exit:                     ; preds = %bb.c
  %i.w = load ptr, ptr %4, align 8
  %i.x = load i32, ptr %i.a, align 8
  %i.y = load i64, ptr %i.t, align 8
  %i.z = load i64, ptr %i.r, align 8
  %i.aa = call i64 @FunctionCall2Coll(ptr noundef %i.w, i32 noundef %i.x, i64 noundef %i.y, i64 noundef %i.z) #11
  %.not25.i.not = icmp eq i64 %i.aa, 0
  br i1 %.not25.i.not, label %bb.f, label %compare_expanded_ranges.exit.thread

compare_expanded_ranges.exit.thread:              ; preds = %bb.b, %.lr.ph, %bb.c, %compare_expanded_ranges.exit
  %i.ab = zext i32 %.01822 to i64
  %.not19 = icmp eq i64 %indvars.iv, %i.ab
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %compare_expanded_ranges.exit.thread
  %i.ac = sext i32 %.01822 to i64
  %i.ad = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %compare_expanded_ranges.exit.thread
  %i.ae = add i32 %.01822, 1
  br label %bb.f

bb.f:                                             ; preds = %compare_expanded_ranges.exit, %bb.e
  %.1 = phi i32 [ %i.ae, %bb.e ], [ %.01822, %compare_expanded_ranges.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.018.lcssa = phi i32 [ 1, %bb.a ], [ %.1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.018.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @minmax_multi_get_procinfo(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %1 to i64
  %i.b = getelementptr [8 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @index_getprocid(ptr noundef %i.k, i16 noundef signext %1, i16 noundef zeroext 11) #11
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.j, align 8
  %i.n = tail call ptr @index_getprocinfo(ptr noundef %i.m, i16 noundef signext %1, i16 noundef zeroext 11) #11
  %i.o = load ptr, ptr %0, align 8
  tail call void @fmgr_info_copy(ptr noundef nonnull %i.f, ptr noundef %i.n, ptr noundef %i.o) #11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = zext i16 %1 to i32
  %i.q = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.r = tail call i32 @errcode(i32 noundef 117833860) #11 ; 0 uses
  %i.s = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.13) #11 ; 0 uses
  %i.t = tail call i32 (ptr, ...) @errdetail_internal(ptr noundef nonnull @.str.14, i32 noundef 11, i32 noundef %i.p) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2884, ptr noundef nonnull @__func__.minmax_multi_get_procinfo) #11
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483647, 1073741824) i32 @reduce_expanded_ranges(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.compare_context, align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.a = add i32 %1, -1                           ; 2 uses
  %i.b = sdiv i32 %3, 2                           ; 2 uses
  %.not.not = icmp sgt i32 %i.b, %i.a
  br i1 %.not.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 %5, ptr %i.c, align 8
  store ptr %4, ptr %6, align 8
  %i.d = sext i32 %3 to i64
  %i.e = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.d) #11 ; 7 uses
  %i.f = load i64, ptr %0, align 8
  store i64 %i.f, ptr %i.e, align 8
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = icmp sgt i32 %3, 3
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.b, i32 2)
  %smax = add nsw i32 %i.m, -1                    ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.n = icmp slt i32 %3, 6
  br i1 %i.n, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv59 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next60.1, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv59
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [24 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  store i64 %i.t, ptr %i.u, align 8
  %i.v = add i32 %i.p, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [24 x i8], ptr %0, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %i.u, i64 8
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv59
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %i.ag, ptr %i.ai, align 8
  %i.aj = add i32 %i.ac, 1
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.an = getelementptr i8, ptr %i.ah, i64 24
  store i64 %i.am, ptr %i.an, align 8
  %indvars.iv.next60.1 = add nuw nsw i64 %indvars.iv59, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !23

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv59.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next60.1, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod72 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod72)
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv59.epil.init
  %i.ap = load i32, ptr %i.ao, align 8            ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil.init ; 2 uses
  store i64 %i.at, ptr %i.au, align 8
  %i.av = add i32 %i.ap, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil.init, 2
  %i.az = getelementptr i8, ptr %i.au, i64 8
  store i64 %i.ay, ptr %i.az, align 8
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ], [ %indvars.iv.next.epil, %.lr.ph.epil.preheader ]
  %i.ba = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.048.lcssa = phi i32 [ 2, %bb.b ], [ %i.ba, %._crit_edge.loopexit ] ; 2 uses
  %i.bb = sext i32 %.048.lcssa to i64
  call void @qsort_arg(ptr noundef nonnull %i.e, i64 noundef %i.bb, i64 noundef 8, ptr noundef nonnull @compare_values, ptr noundef nonnull %6) #11
  %i.bc = ashr exact i32 %.048.lcssa, 1           ; 4 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph57.preheader, label %.loopexit

.lr.ph57.preheader:                               ; preds = %._crit_edge
  %wide.trip.count67 = zext nneg i32 %i.bc to i64
  br label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %compare_values.exit
  %indvars.iv64 = phi i64 [ 0, %.lr.ph57.preheader ], [ %indvars.iv.next65, %compare_values.exit ] ; 3 uses
  %.idx = shl nsw i64 %indvars.iv64, 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 4 uses
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvars.iv64 ; 3 uses
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %i.be, i64 8      ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.bi, ptr %i.bj, align 8
  %i.bk = load ptr, ptr %6, align 8
  %i.bl = load i32, ptr %i.c, align 8
  %i.bm = load i64, ptr %i.be, align 8
  %i.bn = call i64 @FunctionCall2Coll(ptr noundef %i.bk, i32 noundef %i.bl, i64 noundef %i.bm, i64 noundef %i.bi) #11
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %bb.c, label %compare_values.exit

bb.c:                                             ; preds = %.lr.ph57
end_hunk_0
