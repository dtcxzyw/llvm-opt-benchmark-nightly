Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/tm_solution?download=true
inline.NumInlined: 19
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@tm_map_RR:bb.a
bb.c:                                             ; preds = %.lr.ph.split.us
  %i.n = load i32, ptr %i.e, align 8, !tbaa !34
  %i.o = srem i32 %i.h, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv29
  store i32 %.sink, ptr %i.p, align 4, !tbaa !21
  %i.q = load i32, ptr %i.e, align 8, !tbaa !34
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.h, i32 noundef %.sink, i32 noundef %i.q) ; 0 uses
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count32
  br i1 %exitcond33.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !0

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !32   ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  %wide.trip.count27 = zext nneg i32 %1 to i64    ; 4 uses
  br i1 %i.t, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader.preheader

.lr.ph.split.split.preheader.preheader:           ; preds = %.lr.ph.split
  %xtraiter = and i64 %wide.trip.count27, 1
  %i.u = icmp eq i32 %1, 1
  br i1 %i.u, label %.lr.ph.split.split.preheader.epil.preheader, label %.lr.ph.split.split.preheader.preheader.new

.lr.ph.split.split.preheader.preheader.new:       ; preds = %.lr.ph.split.split.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count27, 2147483646
  br label %.lr.ph.split.split.preheader

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %xtraiter44 = and i64 %wide.trip.count27, 1
  %i.v = icmp eq i32 %1, 1
  br i1 %i.v, label %.lr.ph.split.split.us.epil.preheader, label %.lr.ph.split.split.us.preheader.new

.lr.ph.split.split.us.preheader.new:              ; preds = %.lr.ph.split.split.us.preheader
  %unroll_iter47 = and i64 %wide.trip.count27, 2147483646
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split.us.preheader.new
  %indvars.iv24 = phi i64 [ 0, %.lr.ph.split.split.us.preheader.new ], [ %indvars.iv.next25.1, %.lr.ph.split.split.us ] ; 4 uses
  %niter48 = phi i64 [ 0, %.lr.ph.split.split.us.preheader.new ], [ %niter48.next.1, %.lr.ph.split.split.us ]
  %i.w = load i32, ptr %i.e, align 8, !tbaa !34
  %i.x = trunc nuw nsw i64 %indvars.iv24 to i32
  %i.y = srem i32 %i.x, %i.w
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24
  store i32 %i.y, ptr %i.z, align 4, !tbaa !21
  %indvars.iv.next25 = or disjoint i64 %indvars.iv24, 1 ; 2 uses
  %i.aa = load i32, ptr %i.e, align 8, !tbaa !34
  %i.ab = trunc nuw nsw i64 %indvars.iv.next25 to i32
  %i.ac = srem i32 %i.ab, %i.aa
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next25
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !21
  %indvars.iv.next25.1 = add nuw nsw i64 %indvars.iv24, 2 ; 2 uses
  %niter48.next.1 = add i64 %niter48, 2           ; 2 uses
  %niter48.ncmp.1 = icmp eq i64 %niter48.next.1, %unroll_iter47
  br i1 %niter48.ncmp.1, label %._crit_edge.loopexit41.unr-lcssa, label %.lr.ph.split.split.us, !llvm.loop !0

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split.split.preheader, %.lr.ph.split.split.preheader.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.preheader.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split.split.preheader ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.preheader.preheader.new ], [ %niter.next.1, %.lr.ph.split.split.preheader ]
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = load i32, ptr %i.d, align 8, !tbaa !33
  %i.ag = srem i32 %i.ae, %i.af
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !21
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !21
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.am = load i32, ptr %i.d, align 8, !tbaa !33
  %i.an = srem i32 %i.al, %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !21
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit42.unr-lcssa, label %.lr.ph.split.split.preheader, !llvm.loop !1

._crit_edge.loopexit41.unr-lcssa:                 ; preds = %.lr.ph.split.split.us
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %._crit_edge, label %.lr.ph.split.split.us.epil.preheader

.lr.ph.split.split.us.epil.preheader:             ; preds = %._crit_edge.loopexit41.unr-lcssa, %.lr.ph.split.split.us.preheader
  %indvars.iv24.epil.init = phi i64 [ 0, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next25.1, %._crit_edge.loopexit41.unr-lcssa ] ; 2 uses
  %lcmp.mod46 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.as = load i32, ptr %i.e, align 8, !tbaa !34
  %i.at = trunc nuw nsw i64 %indvars.iv24.epil.init to i32
  %i.au = srem i32 %i.at, %i.as
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.epil.init
  store i32 %i.au, ptr %i.av, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge.loopexit42.unr-lcssa:                 ; preds = %.lr.ph.split.split.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.split.preheader.epil.preheader

.lr.ph.split.split.preheader.epil.preheader:      ; preds = %._crit_edge.loopexit42.unr-lcssa, %.lr.ph.split.split.preheader.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.split.preheader.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit42.unr-lcssa ] ; 2 uses
  %lcmp.mod43 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.aw = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !33
  %i.ay = srem i32 %i.aw, %i.ax
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !21
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.split.preheader.epil.preheader, %._crit_edge.loopexit42.unr-lcssa, %.lr.ph.split.split.us.epil.preheader, %._crit_edge.loopexit41.unr-lcssa, %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @tm_in_tab(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4, !tbaa !21
  %i.d = icmp eq i32 %i.c, %2
  br i1 %i.d, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  ret i32 %.06
}

; Function Attrs: nounwind uwtable
define hidden void @tm_map_MPIPP(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = shl nsw i64 %i.a, 3                      ; 4 uses
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #16 ; 9 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.b) #16 ; 7 uses
  %i.e = icmp sgt i32 %2, 0                       ; 5 uses
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.b) #16
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.f, ptr %i.g, align 8, !tbaa !29
  %i.h = tail call noalias dereferenceable_or_null(12) ptr @malloc(i64 noundef 12) #16
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store ptr %i.h, ptr %i.i, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.j = shl nsw i64 %i.a, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #16 ; 8 uses
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.b) #16 ; 5 uses
  %i.m = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val119 = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.n = tail call fastcc ptr @generate_random_sol(ptr %.val119, i32 noundef %2, i32 noundef 0) ; 3 uses
  br i1 %i.e, label %.lr.ph203.preheader, label %.preheader194

.lr.ph203.preheader:                              ; preds = %._crit_edge
  %i.o = zext nneg i32 %2 to i64
  %i.p = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %i.n, i64 %i.p, i1 false), !tbaa !21
  br label %.preheader194

.preheader194:                                    ; preds = %.lr.ph203.preheader, %._crit_edge
  %.not227 = icmp slt i32 %1, 1
  br i1 %.not227, label %._crit_edge233, label %.preheader193.lr.ph

.preheader193.lr.ph:                              ; preds = %.preheader194
  %i.q = sdiv i32 %2, 2                           ; 6 uses
  %i.r = icmp sgt i32 %2, 1
  %i.s = zext i32 %2 to i64                       ; 23 uses
  %i.t = icmp slt i32 %2, 1
  %i.u = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  %wide.trip.count256 = zext i32 %i.q to i64      ; 3 uses
  %invariant.op = add nsw i32 %i.q, -1
  %i.v = add nsw i64 %i.s, -1                     ; 6 uses
  %i.w = add nsw i64 %i.s, -2                     ; 5 uses
  %i.x = add nsw i32 %i.q, -2
  %xtraiter311 = and i64 %i.s, 1
  %6 = icmp eq i64 %i.v, 0
  %unroll_iter = and i64 %i.s, 2147483646
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  %lcmp.mod316 = trunc i32 %2 to i1
  %xtraiter327 = and i64 %wide.trip.count256, 1
  %i.y = and i32 %2, 2147483646
  %i.z = icmp eq i32 %i.y, 2
  %unroll_iter332 = and i64 %wide.trip.count256, 1073741822
  %lcmp.mod328.not = icmp eq i64 %xtraiter327, 0
  %lcmp.mod331 = trunc i32 %i.q to i1
  br label %.preheader193

.preheader193:                                    ; preds = %.preheader193.lr.ph, %bb.r
  %.0232 = phi double [ f0x7FEFFFFFFFFFFFFF, %.preheader193.lr.ph ], [ %.2, %bb.r ]
  %.0107231 = phi i32 [ 1, %.preheader193.lr.ph ], [ %i.ps, %bb.r ] ; 3 uses
  %.0114230 = phi ptr [ %i.n, %.preheader193.lr.ph ], [ %i.pt, %bb.r ] ; 44 uses
  %.0176229 = phi i32 [ 0, %.preheader193.lr.ph ], [ %.2178.lcssa287, %bb.r ]
  %.0183228 = phi i32 [ 0, %.preheader193.lr.ph ], [ %.2185.lcssa286, %bb.r ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader193, %.loopexit
  %.1184 = phi i32 [ %.2185.lcssa286, %.loopexit ], [ %.0183228, %.preheader193 ] ; 3 uses
  %.1177 = phi i32 [ %.2178.lcssa287, %.loopexit ], [ %.0176229, %.preheader193 ] ; 3 uses
  %.1 = phi double [ %.2, %.loopexit ], [ %.0232, %.preheader193 ] ; 4 uses
  br i1 %i.e, label %.lr.ph25.i.i.preheader, label %.preheader191

.lr.ph25.i.i.preheader:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.u, i1 false), !tbaa !21
  br label %.lr.ph25.i.i

.loopexit.i.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.i.new, %.lr.ph25.i.i
  %.1.lcssa.i.i = phi double [ %.01923.i.i, %.lr.ph25.i.i ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.cd, %.lr.ph.i.i.new ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond34.not.i.i = icmp eq i64 %indvars.iv.next31.i.i, %i.s
  br i1 %exitcond34.not.i.i, label %.preheader.i, label %.lr.ph25.i.i, !llvm.loop !69

.lr.ph25.i.i:                                     ; preds = %.lr.ph25.i.i.preheader, %.loopexit.i.i
  %indvars.iv30.i.i = phi i64 [ %indvars.iv.next31.i.i, %.loopexit.i.i ], [ 0, %.lr.ph25.i.i.preheader ] ; 5 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.loopexit.i.i ], [ 1, %.lr.ph25.i.i.preheader ] ; 3 uses
  %.01923.i.i = phi double [ %.1.lcssa.i.i, %.loopexit.i.i ], [ 0.000000e+00, %.lr.ph25.i.i.preheader ] ; 3 uses
  %i.aa = sub i64 %i.w, %indvars.iv30.i.i
  %indvars.iv.next31.i.i = add nuw nsw i64 %indvars.iv30.i.i, 1 ; 3 uses
  %i.ab = icmp samesign ult i64 %indvars.iv.next31.i.i, %i.s
  br i1 %i.ab, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph25.i.i
  %i.ac = sub i64 %i.v, %indvars.iv30.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv30.i.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29 ; 5 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv30.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !21
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !29 ; 5 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i, %.prol.preheader
  %indvars.iv27.i.i.prol = phi i64 [ %indvars.iv.next28.i.i.prol, %.prol.preheader ], [ %indvars.iv.i.i, %.lr.ph.i.i ] ; 3 uses
  %.121.i.i.prol = phi double [ %i.as, %.prol.preheader ], [ %.01923.i.i, %.lr.ph.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv27.i.i.prol
  %i.al = load double, ptr %i.ak, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv27.i.i.prol
  %i.an = load i32, ptr %i.am, align 4, !tbaa !21
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !31
  %i.ar = fdiv double %i.al, %i.aq
  %i.as = fadd double %.121.i.i.prol, %i.ar       ; 3 uses
  %indvars.iv.next28.i.i.prol = add nuw nsw i64 %indvars.iv27.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !70

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i
  %.lcssa.unr = phi double [ poison, %.lr.ph.i.i ], [ %i.as, %.prol.preheader ]
  %indvars.iv27.i.i.unr = phi i64 [ %indvars.iv.i.i, %.lr.ph.i.i ], [ %indvars.iv.next28.i.i.prol, %.prol.preheader ]
  %.121.i.i.unr = phi double [ %.01923.i.i, %.lr.ph.i.i ], [ %i.as, %.prol.preheader ]
  %i.at = icmp ult i64 %i.aa, 3
  br i1 %i.at, label %.loopexit.i.i, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %indvars.iv27.i.i = phi i64 [ %indvars.iv.next28.i.i.3, %.lr.ph.i.i.new ], [ %indvars.iv27.i.i.unr, %.prol.loopexit ] ; 6 uses
  %.121.i.i = phi double [ %i.cd, %.lr.ph.i.i.new ], [ %.121.i.i.unr, %.prol.loopexit ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv27.i.i
  %i.av = load double, ptr %i.au, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv27.i.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !21
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !31
  %i.bb = fdiv double %i.av, %i.ba
  %i.bc = fadd double %.121.i.i, %i.bb
  %indvars.iv.next28.i.i = add nuw nsw i64 %indvars.iv27.i.i, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next28.i.i
  %i.be = load double, ptr %i.bd, align 8, !tbaa !31
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv.next28.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !21
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !31
  %i.bk = fdiv double %i.be, %i.bj
  %i.bl = fadd double %i.bc, %i.bk
  %indvars.iv.next28.i.i.1 = add nuw nsw i64 %indvars.iv27.i.i, 2 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next28.i.i.1
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !31
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv.next28.i.i.1
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !21
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !31
  %i.bt = fdiv double %i.bn, %i.bs
  %i.bu = fadd double %i.bl, %i.bt
  %indvars.iv.next28.i.i.2 = add nuw nsw i64 %indvars.iv27.i.i, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next28.i.i.2
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !31
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv.next28.i.i.2
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !21
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !31
  %i.cc = fdiv double %i.bw, %i.cb
  %i.cd = fadd double %i.bu, %i.cc                ; 2 uses
  %indvars.iv.next28.i.i.3 = add nuw nsw i64 %indvars.iv27.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next28.i.i.3, %i.s
  br i1 %exitcond.not.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i.new, !llvm.loop !71

.preheader.i:                                     ; preds = %.loopexit.i.i, %bb.d
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %bb.d ], [ 0, %.loopexit.i.i ] ; 5 uses
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %bb.d ], [ 1, %.loopexit.i.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv33.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !29
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv33.i ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %gain_exchange.exit.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %gain_exchange.exit.i ] ; 5 uses
  %i.ch = icmp eq i64 %indvars.iv33.i, %indvars.iv.i
  br i1 %i.ch, label %gain_exchange.exit.i, label %.lr.ph25.preheader.i.i.i

.lr.ph25.preheader.i.i.i:                         ; preds = %bb.c
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !21 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv.i ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !21
  store i32 %i.ck, ptr %i.cg, align 4, !tbaa !21
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !21
  br label %.lr.ph25.i.i.i

.loopexit.i.i.i:                                  ; preds = %.prol.loopexit307, %.lr.ph.i.i.i.new, %.lr.ph25.i.i.i
  %.1.lcssa.i.i.i = phi double [ %.01923.i.i.i, %.lr.ph25.i.i.i ], [ %.lcssa301.unr, %.prol.loopexit307 ], [ %i.eo, %.lr.ph.i.i.i.new ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %exitcond34.not.i.i.i = icmp eq i64 %indvars.iv.next31.i.i.i, %i.s
  br i1 %exitcond34.not.i.i.i, label %eval_sol.exit.i.loopexit.i, label %.lr.ph25.i.i.i, !llvm.loop !69

.lr.ph25.i.i.i:                                   ; preds = %.loopexit.i.i.i, %.lr.ph25.preheader.i.i.i
  %indvars.iv30.i.i.i = phi i64 [ 0, %.lr.ph25.preheader.i.i.i ], [ %indvars.iv.next31.i.i.i, %.loopexit.i.i.i ] ; 5 uses
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph25.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.loopexit.i.i.i ] ; 3 uses
  %.01923.i.i.i = phi double [ 0.000000e+00, %.lr.ph25.preheader.i.i.i ], [ %.1.lcssa.i.i.i, %.loopexit.i.i.i ] ; 3 uses
  %i.cl = sub i64 %i.w, %indvars.iv30.i.i.i
  %indvars.iv.next31.i.i.i = add nuw nsw i64 %indvars.iv30.i.i.i, 1 ; 3 uses
  %i.cm = icmp samesign ult i64 %indvars.iv.next31.i.i.i, %i.s
  br i1 %i.cm, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph25.i.i.i
  %i.cn = sub i64 %i.v, %indvars.iv30.i.i.i
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv30.i.i.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !29 ; 5 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv30.i.i.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !21
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %5, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !29 ; 5 uses
  %xtraiter308 = and i64 %i.cn, 3                 ; 2 uses
  %lcmp.mod309.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod309.not, label %.prol.loopexit307, label %.prol.preheader306

.prol.preheader306:                               ; preds = %.lr.ph.i.i.i, %.prol.preheader306
  %indvars.iv27.i.i.i.prol = phi i64 [ %indvars.iv.next28.i.i.i.prol, %.prol.preheader306 ], [ %indvars.iv.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %.121.i.i.i.prol = phi double [ %i.dd, %.prol.preheader306 ], [ %.01923.i.i.i, %.lr.ph.i.i.i ]
  %prol.iter310 = phi i64 [ %prol.iter310.next, %.prol.preheader306 ], [ 0, %.lr.ph.i.i.i ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv27.i.i.i.prol
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !31
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv27.i.i.i.prol
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !21
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !31
  %i.dc = fdiv double %i.cw, %i.db
  %i.dd = fadd double %.121.i.i.i.prol, %i.dc     ; 3 uses
  %indvars.iv.next28.i.i.i.prol = add nuw nsw i64 %indvars.iv27.i.i.i.prol, 1 ; 2 uses
  %prol.iter310.next = add i64 %prol.iter310, 1   ; 2 uses
  %prol.iter310.cmp.not = icmp eq i64 %prol.iter310.next, %xtraiter308
  br i1 %prol.iter310.cmp.not, label %.prol.loopexit307, label %.prol.preheader306, !llvm.loop !72

.prol.loopexit307:                                ; preds = %.prol.preheader306, %.lr.ph.i.i.i
  %.lcssa301.unr = phi double [ poison, %.lr.ph.i.i.i ], [ %i.dd, %.prol.preheader306 ]
  %indvars.iv27.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.next28.i.i.i.prol, %.prol.preheader306 ]
  %.121.i.i.i.unr = phi double [ %.01923.i.i.i, %.lr.ph.i.i.i ], [ %i.dd, %.prol.preheader306 ]
  %i.de = icmp ult i64 %i.cl, 3
  br i1 %i.de, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.prol.loopexit307, %.lr.ph.i.i.i.new
  %indvars.iv27.i.i.i = phi i64 [ %indvars.iv.next28.i.i.i.3, %.lr.ph.i.i.i.new ], [ %indvars.iv27.i.i.i.unr, %.prol.loopexit307 ] ; 6 uses
  %.121.i.i.i = phi double [ %i.eo, %.lr.ph.i.i.i.new ], [ %.121.i.i.i.unr, %.prol.loopexit307 ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv27.i.i.i
  %i.dg = load double, ptr %i.df, align 8, !tbaa !31
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv27.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !21
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !31
  %i.dm = fdiv double %i.dg, %i.dl
  %i.dn = fadd double %.121.i.i.i, %i.dm
  %indvars.iv.next28.i.i.i = add nuw nsw i64 %indvars.iv27.i.i.i, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.next28.i.i.i
  %i.dp = load double, ptr %i.do, align 8, !tbaa !31
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv.next28.i.i.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !21
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ds
  %i.du = load double, ptr %i.dt, align 8, !tbaa !31
  %i.dv = fdiv double %i.dp, %i.du
  %i.dw = fadd double %i.dn, %i.dv
  %indvars.iv.next28.i.i.i.1 = add nuw nsw i64 %indvars.iv27.i.i.i, 2 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.next28.i.i.i.1
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !31
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv.next28.i.i.i.1
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !21
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !31
  %i.ee = fdiv double %i.dy, %i.ed
  %i.ef = fadd double %i.dw, %i.ee
  %indvars.iv.next28.i.i.i.2 = add nuw nsw i64 %indvars.iv27.i.i.i, 3 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.next28.i.i.i.2
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !31
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv.next28.i.i.i.2
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !21
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !31
  %i.en = fdiv double %i.eh, %i.em
  %i.eo = fadd double %i.ef, %i.en                ; 2 uses
  %indvars.iv.next28.i.i.i.3 = add nuw nsw i64 %indvars.iv27.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next28.i.i.i.3, %i.s
  br i1 %exitcond.not.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.new, !llvm.loop !71

eval_sol.exit.i.loopexit.i:                       ; preds = %.loopexit.i.i.i
  %i.ep = load i32, ptr %i.cg, align 4, !tbaa !21
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !21
  store i32 %i.ep, ptr %i.cj, align 4, !tbaa !21
  %i.eq = fsub double %.1.lcssa.i.i, %.1.lcssa.i.i.i
  br label %gain_exchange.exit.i

gain_exchange.exit.i:                             ; preds = %eval_sol.exit.i.loopexit.i, %bb.c
  %.0.i.i = phi double [ %i.eq, %eval_sol.exit.i.loopexit.i ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !29
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv33.i
  store double %.0.i.i, ptr %i.et, align 8, !tbaa !31
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i
  store double %.0.i.i, ptr %i.eu, align 8, !tbaa !31
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv31.i
  br i1 %exitcond.not.i, label %bb.d, label %bb.c, !llvm.loop !73

bb.d:                                             ; preds = %gain_exchange.exit.i
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next34.i, %i.s
  br i1 %exitcond39.not.i, label %compute_gain.exit, label %.preheader.i, !llvm.loop !74

compute_gain.exit:                                ; preds = %bb.d
  br i1 %i.r, label %.lr.ph211, label %.preheader191

.lr.ph211:                                        ; preds = %compute_gain.exit, %compute_gain.exit166
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %compute_gain.exit166 ], [ 0, %compute_gain.exit ] ; 3 uses
  %.2178209 = phi i32 [ %.4180, %compute_gain.exit166 ], [ %.1177, %compute_gain.exit ]
  %.2185208 = phi i32 [ %.4187, %compute_gain.exit166 ], [ %.1184, %compute_gain.exit ]
  br label %.lr.ph32.split.us.i

.lr.ph32.split.us.i:                              ; preds = %.lr.ph211, %..loopexit_crit_edge.us.i
  %.3186 = phi i32 [ %.4187, %..loopexit_crit_edge.us.i ], [ %.2185208, %.lr.ph211 ] ; 3 uses
  %.3179 = phi i32 [ %.4180, %..loopexit_crit_edge.us.i ], [ %.2178209, %.lr.ph211 ] ; 3 uses
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %..loopexit_crit_edge.us.i ], [ 0, %.lr.ph211 ] ; 7 uses
  %.02329.us.i = phi double [ %.3.us.i, %..loopexit_crit_edge.us.i ], [ f0xFFEFFFFFFFFFFFFF, %.lr.ph211 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv34.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !21
  %.not.us.i = icmp eq i32 %i.ew, 0
  br i1 %.not.us.i, label %.preheader.us.i, label %..loopexit_crit_edge.us.i

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %bb.l
  %.5188 = phi i32 [ %.6189.1, %bb.l ], [ %.3186, %.preheader.us.i ] ; 3 uses
  %.5181 = phi i32 [ %.6182.1, %bb.l ], [ %.3179, %.preheader.us.i ] ; 3 uses
  %indvars.iv.i120 = phi i64 [ %indvars.iv.next.i121.1, %bb.l ], [ 0, %.preheader.us.i ] ; 6 uses
  %.127.us.i = phi double [ %.2.us.i.1, %bb.l ], [ %.02329.us.i, %.preheader.us.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.l ], [ 0, %.preheader.us.i ]
  %.not25.us.i = icmp eq i64 %indvars.iv34.i, %indvars.iv.i120
  br i1 %.not25.us.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.preheader.us.i.new
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i120
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !21
  %.not26.us.i = icmp eq i32 %i.ey, 0
  br i1 %.not26.us.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ez = load ptr, ptr %i.fs, align 8, !tbaa !29
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.i120
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !31 ; 2 uses
  %i.fc = fcmp ogt double %i.fb, %.127.us.i
  br i1 %i.fc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fd = trunc nuw nsw i64 %indvars.iv.i120 to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %.preheader.us.i.new
  %.6189 = phi i32 [ %.5188, %.preheader.us.i.new ], [ %i.ft, %bb.g ], [ %.5188, %bb.f ], [ %.5188, %bb.e ] ; 3 uses
  %.6182 = phi i32 [ %.5181, %.preheader.us.i.new ], [ %i.fd, %bb.g ], [ %.5181, %bb.f ], [ %.5181, %bb.e ] ; 3 uses
  %.2.us.i = phi double [ %.127.us.i, %.preheader.us.i.new ], [ %i.fb, %bb.g ], [ %.127.us.i, %bb.f ], [ %.127.us.i, %bb.e ] ; 4 uses
  %indvars.iv.next.i121 = or disjoint i64 %indvars.iv.i120, 1 ; 4 uses
  %.not25.us.i.1 = icmp eq i64 %indvars.iv34.i, %indvars.iv.next.i121
  br i1 %.not25.us.i.1, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i121
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !21
  %.not26.us.i.1 = icmp eq i32 %i.ff, 0
  br i1 %.not26.us.i.1, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.fg = load ptr, ptr %i.fs, align 8, !tbaa !29
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next.i121
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !31 ; 2 uses
  %i.fj = fcmp ogt double %i.fi, %.2.us.i
  br i1 %i.fj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fk = trunc nuw nsw i64 %indvars.iv.next.i121 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.6189.1 = phi i32 [ %.6189, %bb.h ], [ %i.ft, %bb.k ], [ %.6189, %bb.j ], [ %.6189, %bb.i ] ; 3 uses
  %.6182.1 = phi i32 [ %.6182, %bb.h ], [ %i.fk, %bb.k ], [ %.6182, %bb.j ], [ %.6182, %bb.i ] ; 3 uses
  %.2.us.i.1 = phi double [ %.2.us.i, %bb.h ], [ %i.fi, %bb.k ], [ %.2.us.i, %bb.j ], [ %.2.us.i, %bb.i ] ; 3 uses
  %indvars.iv.next.i121.1 = add nuw nsw i64 %indvars.iv.i120, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.us.i.loopexit.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !75

..loopexit_crit_edge.us.i.loopexit.unr-lcssa:     ; preds = %bb.l
  br i1 %lcmp.mod312.not, label %..loopexit_crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.us.i.loopexit.unr-lcssa, %.preheader.us.i
  %.5188.epil.init = phi i32 [ %.3186, %.preheader.us.i ], [ %.6189.1, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ] ; 3 uses
  %.5181.epil.init = phi i32 [ %.3179, %.preheader.us.i ], [ %.6182.1, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ] ; 3 uses
  %indvars.iv.i120.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i121.1, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ] ; 4 uses
  %.127.us.i.epil.init = phi double [ %.02329.us.i, %.preheader.us.i ], [ %.2.us.i.1, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod316)
  %.not25.us.i.epil = icmp eq i64 %indvars.iv34.i, %indvars.iv.i120.epil.init
  br i1 %.not25.us.i.epil, label %..loopexit_crit_edge.us.i, label %bb.m

bb.m:                                             ; preds = %.epil.preheader
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i120.epil.init
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !21
  %.not26.us.i.epil = icmp eq i32 %i.fm, 0
  br i1 %.not26.us.i.epil, label %bb.n, label %..loopexit_crit_edge.us.i

bb.n:                                             ; preds = %bb.m
  %i.fn = load ptr, ptr %i.fs, align 8, !tbaa !29
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.i120.epil.init
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !31 ; 2 uses
  %i.fq = fcmp ogt double %i.fp, %.127.us.i.epil.init
  br i1 %i.fq, label %bb.o, label %..loopexit_crit_edge.us.i

bb.o:                                             ; preds = %bb.n
  %i.fr = trunc nuw nsw i64 %indvars.iv.i120.epil.init to i32
  br label %..loopexit_crit_edge.us.i

..loopexit_crit_edge.us.i:                        ; preds = %..loopexit_crit_edge.us.i.loopexit.unr-lcssa, %bb.o, %bb.n, %bb.m, %.epil.preheader, %.lr.ph32.split.us.i
  %.4187 = phi i32 [ %.3186, %.lr.ph32.split.us.i ], [ %.6189.1, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ], [ %.5188.epil.init, %.epil.preheader ], [ %i.ft, %bb.o ], [ %.5188.epil.init, %bb.n ], [ %.5188.epil.init, %bb.m ] ; 5 uses
  %.4180 = phi i32 [ %.3179, %.lr.ph32.split.us.i ], [ %.6182.1, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ], [ %.5181.epil.init, %.epil.preheader ], [ %i.fr, %bb.o ], [ %.5181.epil.init, %bb.n ], [ %.5181.epil.init, %bb.m ] ; 5 uses
  %.3.us.i = phi double [ %.02329.us.i, %.lr.ph32.split.us.i ], [ %.2.us.i.1, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ], [ %.127.us.i.epil.init, %.epil.preheader ], [ %i.fp, %bb.o ], [ %.127.us.i.epil.init, %bb.n ], [ %.127.us.i.epil.init, %bb.m ]
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next35.i, %i.s
  br i1 %exitcond38.not.i, label %select_max.exit, label %.lr.ph32.split.us.i, !llvm.loop !76

.preheader.us.i:                                  ; preds = %.lr.ph32.split.us.i
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv34.i ; 3 uses
  %i.ft = trunc nuw nsw i64 %indvars.iv34.i to i32 ; 3 uses
  br i1 %6, label %.epil.preheader, label %.preheader.us.i.new

select_max.exit:                                  ; preds = %..loopexit_crit_edge.us.i
  %i.fu = sext i32 %.4187 to i64                  ; 3 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.fu
  store i32 1, ptr %i.fv, align 4, !tbaa !21
  %i.fw = sext i32 %.4180 to i64                  ; 3 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.fw
  store i32 1, ptr %i.fx, align 4, !tbaa !21
  %i.fy = getelementptr inbounds [4 x i8], ptr %.0114230, i64 %i.fu ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !21
  %i.ga = getelementptr inbounds [4 x i8], ptr %.0114230, i64 %i.fw ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !21
  store i32 %i.gb, ptr %i.fy, align 4, !tbaa !21
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !21
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv253
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !18 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store i32 %.4187, ptr %i.ge, align 4, !tbaa !21
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i32 %.4180, ptr %i.gf, align 4, !tbaa !21
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.fu
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !29
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.fw
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !31
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv253
  store double %i.gj, ptr %i.gk, align 8, !tbaa !31
  br label %.lr.ph25.i.i124

.loopexit.i.i129:                                 ; preds = %.prol.loopexit318, %.lr.ph.i.i161.new, %.lr.ph25.i.i124
  %.1.lcssa.i.i130 = phi double [ %.01923.i.i127, %.lr.ph25.i.i124 ], [ %.lcssa302.unr, %.prol.loopexit318 ], [ %i.io, %.lr.ph.i.i161.new ] ; 2 uses
  %indvars.iv.next.i.i131 = add nuw nsw i64 %indvars.iv.i.i126, 1
  %exitcond34.not.i.i132 = icmp eq i64 %indvars.iv.next31.i.i128, %i.s
  br i1 %exitcond34.not.i.i132, label %.preheader.i134, label %.lr.ph25.i.i124, !llvm.loop !69

.lr.ph25.i.i124:                                  ; preds = %select_max.exit, %.loopexit.i.i129
  %indvars.iv30.i.i125 = phi i64 [ %indvars.iv.next31.i.i128, %.loopexit.i.i129 ], [ 0, %select_max.exit ] ; 5 uses
  %indvars.iv.i.i126 = phi i64 [ %indvars.iv.next.i.i131, %.loopexit.i.i129 ], [ 1, %select_max.exit ] ; 3 uses
  %.01923.i.i127 = phi double [ %.1.lcssa.i.i130, %.loopexit.i.i129 ], [ 0.000000e+00, %select_max.exit ] ; 3 uses
  %i.gl = sub i64 %i.w, %indvars.iv30.i.i125
  %indvars.iv.next31.i.i128 = add nuw nsw i64 %indvars.iv30.i.i125, 1 ; 3 uses
  %i.gm = icmp samesign ult i64 %indvars.iv.next31.i.i128, %i.s
  br i1 %i.gm, label %.lr.ph.i.i161, label %.loopexit.i.i129

.lr.ph.i.i161:                                    ; preds = %.lr.ph25.i.i124
  %i.gn = sub i64 %i.v, %indvars.iv30.i.i125
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv30.i.i125
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !29 ; 5 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv30.i.i125
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !21
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %5, i64 %i.gs
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !29 ; 5 uses
  %xtraiter319 = and i64 %i.gn, 3                 ; 2 uses
  %lcmp.mod320.not = icmp eq i64 %xtraiter319, 0
  br i1 %lcmp.mod320.not, label %.prol.loopexit318, label %.prol.preheader317

.prol.preheader317:                               ; preds = %.lr.ph.i.i161, %.prol.preheader317
  %indvars.iv27.i.i162.prol = phi i64 [ %indvars.iv.next28.i.i164.prol, %.prol.preheader317 ], [ %indvars.iv.i.i126, %.lr.ph.i.i161 ] ; 3 uses
  %.121.i.i163.prol = phi double [ %i.hd, %.prol.preheader317 ], [ %.01923.i.i127, %.lr.ph.i.i161 ]
  %prol.iter321 = phi i64 [ %prol.iter321.next, %.prol.preheader317 ], [ 0, %.lr.ph.i.i161 ]
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv27.i.i162.prol
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !31
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv27.i.i162.prol
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !21
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %i.gz
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !31
  %i.hc = fdiv double %i.gw, %i.hb
  %i.hd = fadd double %.121.i.i163.prol, %i.hc    ; 3 uses
  %indvars.iv.next28.i.i164.prol = add nuw nsw i64 %indvars.iv27.i.i162.prol, 1 ; 2 uses
  %prol.iter321.next = add i64 %prol.iter321, 1   ; 2 uses
  %prol.iter321.cmp.not = icmp eq i64 %prol.iter321.next, %xtraiter319
  br i1 %prol.iter321.cmp.not, label %.prol.loopexit318, label %.prol.preheader317, !llvm.loop !77

.prol.loopexit318:                                ; preds = %.prol.preheader317, %.lr.ph.i.i161
  %.lcssa302.unr = phi double [ poison, %.lr.ph.i.i161 ], [ %i.hd, %.prol.preheader317 ]
  %indvars.iv27.i.i162.unr = phi i64 [ %indvars.iv.i.i126, %.lr.ph.i.i161 ], [ %indvars.iv.next28.i.i164.prol, %.prol.preheader317 ]
  %.121.i.i163.unr = phi double [ %.01923.i.i127, %.lr.ph.i.i161 ], [ %i.hd, %.prol.preheader317 ]
  %i.he = icmp ult i64 %i.gl, 3
  br i1 %i.he, label %.loopexit.i.i129, label %.lr.ph.i.i161.new

.lr.ph.i.i161.new:                                ; preds = %.prol.loopexit318, %.lr.ph.i.i161.new
  %indvars.iv27.i.i162 = phi i64 [ %indvars.iv.next28.i.i164.3, %.lr.ph.i.i161.new ], [ %indvars.iv27.i.i162.unr, %.prol.loopexit318 ] ; 6 uses
  %.121.i.i163 = phi double [ %i.io, %.lr.ph.i.i161.new ], [ %.121.i.i163.unr, %.prol.loopexit318 ]
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv27.i.i162
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !31
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv27.i.i162
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !21
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %i.hj
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !31
  %i.hm = fdiv double %i.hg, %i.hl
  %i.hn = fadd double %.121.i.i163, %i.hm
  %indvars.iv.next28.i.i164 = add nuw nsw i64 %indvars.iv27.i.i162, 1 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next28.i.i164
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !31
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv.next28.i.i164
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !21
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !31
  %i.hv = fdiv double %i.hp, %i.hu
  %i.hw = fadd double %i.hn, %i.hv
  %indvars.iv.next28.i.i164.1 = add nuw nsw i64 %indvars.iv27.i.i162, 2 ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next28.i.i164.1
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !31
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv.next28.i.i164.1
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !21
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %i.ib
  %i.id = load double, ptr %i.ic, align 8, !tbaa !31
  %i.ie = fdiv double %i.hy, %i.id
  %i.if = fadd double %i.hw, %i.ie
  %indvars.iv.next28.i.i164.2 = add nuw nsw i64 %indvars.iv27.i.i162, 3 ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next28.i.i164.2
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !31
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv.next28.i.i164.2
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !21
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %i.ik
  %i.im = load double, ptr %i.il, align 8, !tbaa !31
  %i.in = fdiv double %i.ih, %i.im
  %i.io = fadd double %i.if, %i.in                ; 2 uses
  %indvars.iv.next28.i.i164.3 = add nuw nsw i64 %indvars.iv27.i.i162, 4 ; 2 uses
  %exitcond.not.i.i165.3 = icmp eq i64 %indvars.iv.next28.i.i164.3, %i.s
  br i1 %exitcond.not.i.i165.3, label %.loopexit.i.i129, label %.lr.ph.i.i161.new, !llvm.loop !71

.preheader.i134:                                  ; preds = %.loopexit.i.i129, %bb.q
  %indvars.iv33.i135 = phi i64 [ %indvars.iv.next34.i153, %bb.q ], [ 0, %.loopexit.i.i129 ] ; 5 uses
  %indvars.iv31.i136 = phi i64 [ %indvars.iv.next32.i154, %bb.q ], [ 1, %.loopexit.i.i129 ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv33.i135
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !29
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv33.i135 ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %gain_exchange.exit.i149, %.preheader.i134
  %indvars.iv.i137 = phi i64 [ 0, %.preheader.i134 ], [ %indvars.iv.next.i151, %gain_exchange.exit.i149 ] ; 5 uses
  %i.is = icmp eq i64 %indvars.iv33.i135, %indvars.iv.i137
  br i1 %i.is, label %gain_exchange.exit.i149, label %.lr.ph25.preheader.i.i.i138

.lr.ph25.preheader.i.i.i138:                      ; preds = %bb.p
  %i.it = load i32, ptr %i.ir, align 4, !tbaa !21 ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv.i137 ; 3 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !21
  store i32 %i.iv, ptr %i.ir, align 4, !tbaa !21
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !21
  br label %.lr.ph25.i.i.i139

.loopexit.i.i.i144:                               ; preds = %.prol.loopexit323, %.lr.ph.i.i.i156.new, %.lr.ph25.i.i.i139
  %.1.lcssa.i.i.i145 = phi double [ %.01923.i.i.i142, %.lr.ph25.i.i.i139 ], [ %.lcssa303.unr, %.prol.loopexit323 ], [ %i.kz, %.lr.ph.i.i.i156.new ] ; 2 uses
  %indvars.iv.next.i.i.i146 = add nuw nsw i64 %indvars.iv.i.i.i141, 1
  %exitcond34.not.i.i.i147 = icmp eq i64 %indvars.iv.next31.i.i.i143, %i.s
  br i1 %exitcond34.not.i.i.i147, label %eval_sol.exit.i.loopexit.i148, label %.lr.ph25.i.i.i139, !llvm.loop !69

.lr.ph25.i.i.i139:                                ; preds = %.loopexit.i.i.i144, %.lr.ph25.preheader.i.i.i138
  %indvars.iv30.i.i.i140 = phi i64 [ 0, %.lr.ph25.preheader.i.i.i138 ], [ %indvars.iv.next31.i.i.i143, %.loopexit.i.i.i144 ] ; 5 uses
  %indvars.iv.i.i.i141 = phi i64 [ 1, %.lr.ph25.preheader.i.i.i138 ], [ %indvars.iv.next.i.i.i146, %.loopexit.i.i.i144 ] ; 3 uses
  %.01923.i.i.i142 = phi double [ 0.000000e+00, %.lr.ph25.preheader.i.i.i138 ], [ %.1.lcssa.i.i.i145, %.loopexit.i.i.i144 ] ; 3 uses
  %i.iw = sub i64 %i.w, %indvars.iv30.i.i.i140
  %indvars.iv.next31.i.i.i143 = add nuw nsw i64 %indvars.iv30.i.i.i140, 1 ; 3 uses
  %i.ix = icmp samesign ult i64 %indvars.iv.next31.i.i.i143, %i.s
  br i1 %i.ix, label %.lr.ph.i.i.i156, label %.loopexit.i.i.i144

.lr.ph.i.i.i156:                                  ; preds = %.lr.ph25.i.i.i139
  %i.iy = sub i64 %i.v, %indvars.iv30.i.i.i140
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv30.i.i.i140
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !29 ; 5 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv30.i.i.i140
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !21
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [8 x i8], ptr %5, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !29 ; 5 uses
  %xtraiter324 = and i64 %i.iy, 3                 ; 2 uses
  %lcmp.mod325.not = icmp eq i64 %xtraiter324, 0
  br i1 %lcmp.mod325.not, label %.prol.loopexit323, label %.prol.preheader322

.prol.preheader322:                               ; preds = %.lr.ph.i.i.i156, %.prol.preheader322
  %indvars.iv27.i.i.i157.prol = phi i64 [ %indvars.iv.next28.i.i.i159.prol, %.prol.preheader322 ], [ %indvars.iv.i.i.i141, %.lr.ph.i.i.i156 ] ; 3 uses
  %.121.i.i.i158.prol = phi double [ %i.jo, %.prol.preheader322 ], [ %.01923.i.i.i142, %.lr.ph.i.i.i156 ]
  %prol.iter326 = phi i64 [ %prol.iter326.next, %.prol.preheader322 ], [ 0, %.lr.ph.i.i.i156 ]
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv27.i.i.i157.prol
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !31
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.0114230, i64 %indvars.iv27.i.i.i157.prol
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !21
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.jf, i64 %i.jk
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !31
  %i.jn = fdiv double %i.jh, %i.jm
  %i.jo = fadd double %.121.i.i.i158.prol, %i.jn  ; 3 uses
  %indvars.iv.next28.i.i.i159.prol = add nuw nsw i64 %indvars.iv27.i.i.i157.prol, 1 ; 2 uses
  %prol.iter326.next = add i64 %prol.iter326, 1   ; 2 uses
  %prol.iter326.cmp.not = icmp eq i64 %prol.iter326.next, %xtraiter324
  br i1 %prol.iter326.cmp.not, label %.prol.loopexit323, label %.prol.preheader322, !llvm.loop !78

.prol.loopexit323:                                ; preds = %.prol.preheader322, %.lr.ph.i.i.i156
  %.lcssa303.unr = phi double [ poison, %.lr.ph.i.i.i156 ], [ %i.jo, %.prol.preheader322 ]
  %indvars.iv27.i.i.i157.unr = phi i64 [ %indvars.iv.i.i.i141, %.lr.ph.i.i.i156 ], [ %indvars.iv.next28.i.i.i159.prol, %.prol.preheader322 ]
  %.121.i.i.i158.unr = phi double [ %.01923.i.i.i142, %.lr.ph.i.i.i156 ], [ %i.jo, %.prol.preheader322 ]
  %i.jp = icmp ult i64 %i.iw, 3
  br i1 %i.jp, label %.loopexit.i.i.i144, label %.lr.ph.i.i.i156.new
end_hunk_0
