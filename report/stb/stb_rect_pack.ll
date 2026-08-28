Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_rect_pack?download=true
inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@stbrp__skyline_pack_rectangle:bb.a
  br i1 %i.k, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %.sroa.0.0.extract.trunc, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.e, ptr %i.l, align 4, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  store ptr %i.n, ptr %i.i, align 8, !tbaa !22
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !25
  %i.q = icmp slt i32 %i.p, %.sroa.0.0.extract.trunc
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16
  store ptr %i.j, ptr %i.r, align 8, !tbaa !16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.j, ptr %i.c, align 8, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi ptr [ %i.s, %bb.e ], [ %i.o, %bb.f ]  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16   ; 2 uses
  %.not45 = icmp eq ptr %i.u, null
  %.pre = add nsw i32 %1, %.sroa.0.0.extract.trunc ; 3 uses
  br i1 %.not45, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %i.v = phi ptr [ %i.aa, %bb.h ], [ %i.u, %bb.g ] ; 4 uses
  %i.w = phi ptr [ %i.z, %bb.h ], [ %i.t, %bb.g ]
  %.146 = phi ptr [ %i.v, %bb.h ], [ %.0, %bb.g ] ; 2 uses
  %i.x = load i32, ptr %i.v, align 8, !tbaa !25
  %.not44 = icmp sgt i32 %i.x, %.pre
  br i1 %.not44, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !22
  store ptr %i.y, ptr %i.w, align 8, !tbaa !16
  store ptr %.146, ptr %i.i, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16  ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !34

.critedge:                                        ; preds = %.lr.ph, %bb.h, %bb.g
  %.1.lcssa = phi ptr [ %.0, %bb.g ], [ %i.v, %bb.h ], [ %.146, %.lr.ph ] ; 3 uses
  store ptr %.1.lcssa, ptr %i.m, align 8, !tbaa !16
  %i.ab = load i32, ptr %.1.lcssa, align 8, !tbaa !25
  %i.ac = icmp slt i32 %i.ab, %.pre
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  store i32 %.pre, ptr %.1.lcssa, align 8, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i, %bb.a, %bb.b, %bb.c
  %.sroa.9.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ %i.c, %bb.i ], [ %i.c, %.critedge ]
  %.fca.1.insert = insertvalue { i64, ptr } %i.a, ptr %.sroa.9.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @rect_height_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35   ; 2 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.b, %i.d
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !37
  %i.k = tail call i32 @llvm.scmp.i32.i32(i32 %i.j, i32 %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @rect_original_order(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %i.e = tail call i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.d)
  ret i32 %i.e
}

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @stbrp_pack_rects(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge58.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.b = icmp ult i32 %2, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.e, ptr %i.d, align 4, !tbaa !38
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.h, ptr %i.g, align 4, !tbaa !38
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.k, ptr %i.j, align 4, !tbaa !38
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.n, ptr %i.m, align 4, !tbaa !38
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.q = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  store i32 %i.q, ptr %i.p, align 4, !tbaa !38
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.t = trunc nuw nsw i64 %indvars.iv.next.4 to i32
  store i32 %i.t, ptr %i.s, align 4, !tbaa !38
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.5
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.w = trunc nuw nsw i64 %indvars.iv.next.5 to i32
  store i32 %i.w, ptr %i.v, align 4, !tbaa !38
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.6
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.z = trunc nuw nsw i64 %indvars.iv.next.6 to i32
  store i32 %i.z, ptr %i.y, align 4, !tbaa !38
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph57.unr-lcssa, label %.lr.ph, !llvm.loop !39

._crit_edge58.thread:                             ; preds = %bb.a
  %i.aa = sext i32 %2 to i64                      ; 2 uses
  tail call void @qsort(ptr noundef %1, i64 noundef %i.aa, i64 noundef 24, ptr noundef nonnull @rect_height_compare) #10
  tail call void @qsort(ptr noundef %1, i64 noundef %i.aa, i64 noundef 24, ptr noundef nonnull @rect_original_order) #10
  br label %._crit_edge63

.lr.ph57.unr-lcssa:                               ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph57, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph57.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.lr.ph57.unr-lcssa ]
  %lcmp.mod82 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.epil
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ad = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !38
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph57, label %.lr.ph.epil, !llvm.loop !40

.lr.ph57:                                         ; preds = %.lr.ph.epil, %.lr.ph57.unr-lcssa
  %i.ae = zext nneg i32 %2 to i64                 ; 2 uses
  tail call void @qsort(ptr noundef nonnull %1, i64 noundef %i.ae, i64 noundef 24, ptr noundef nonnull @rect_height_compare) #10
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %wide.trip.count68 = zext nneg i32 %2 to i64    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph57, %bb.n
  %indvars.iv65 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next66, %bb.n ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv65 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !37 ; 3 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !35 ; 3 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i32 0, ptr %i.ao, align 4, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !42
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.aq = tail call { i64, ptr } @stbrp__skyline_find_best_pos(ptr noundef %0, i32 noundef %i.aj, i32 noundef %i.am) ; 2 uses
  %i.ar = extractvalue { i64, ptr } %i.aq, 0      ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ar to i32 ; 3 uses
  %i.as = extractvalue { i64, ptr } %i.aq, 1      ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %stbrp__skyline_pack_rectangle.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.7.0.extract.shift.i = lshr i64 %i.ar, 32
  %.sroa.7.0.extract.trunc.i = trunc nuw i64 %.sroa.7.0.extract.shift.i to i32
  %i.au = add nsw i32 %i.am, %.sroa.7.0.extract.trunc.i ; 2 uses
  %i.av = load i32, ptr %i.af, align 4, !tbaa !24
  %i.aw = icmp sgt i32 %i.au, %i.av
  br i1 %i.aw, label %stbrp__skyline_pack_rectangle.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !22 ; 6 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %stbrp__skyline_pack_rectangle.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.ax, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %i.au, ptr %i.az, align 4, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !16
  store ptr %i.bb, ptr %i.ag, align 8, !tbaa !22
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !30 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !25
  %i.be = icmp slt i32 %i.bd, %.sroa.0.0.extract.trunc.i
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !16
  store ptr %i.ax, ptr %i.bf, align 8, !tbaa !16
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i = phi ptr [ %i.bg, %bb.i ], [ %i.bc, %bb.j ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !16 ; 2 uses
  %.not45.i = icmp eq ptr %i.bi, null
  %.pre.i = add nsw i32 %i.aj, %.sroa.0.0.extract.trunc.i ; 3 uses
  br i1 %.not45.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.l
  %i.bj = phi ptr [ %i.bo, %bb.l ], [ %i.bi, %bb.k ] ; 4 uses
  %i.bk = phi ptr [ %i.bn, %bb.l ], [ %i.bh, %bb.k ]
  %.146.i = phi ptr [ %i.bj, %bb.l ], [ %.0.i, %bb.k ] ; 2 uses
  %i.bl = load i32, ptr %i.bj, align 8, !tbaa !25
  %.not44.i = icmp sgt i32 %i.bl, %.pre.i
  br i1 %.not44.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.bm = load ptr, ptr %i.ag, align 8, !tbaa !22
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !16
  store ptr %.146.i, ptr %i.ag, align 8, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !34

.critedge.i:                                      ; preds = %bb.l, %.lr.ph.i, %bb.k
  %.1.lcssa.i = phi ptr [ %.0.i, %bb.k ], [ %.146.i, %.lr.ph.i ], [ %i.bj, %bb.l ] ; 3 uses
  store ptr %.1.lcssa.i, ptr %i.ba, align 8, !tbaa !16
  %i.bp = load i32, ptr %.1.lcssa.i, align 8, !tbaa !25
  %i.bq = icmp slt i32 %i.bp, %.pre.i
  br i1 %i.bq, label %bb.m, label %stbrp__skyline_pack_rectangle.exit

bb.m:                                             ; preds = %.critedge.i
  store i32 %.pre.i, ptr %.1.lcssa.i, align 8, !tbaa !25
  br label %stbrp__skyline_pack_rectangle.exit

stbrp__skyline_pack_rectangle.exit:               ; preds = %bb.m, %.critedge.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i64 %i.ar, ptr %i.br, align 4
  br label %bb.n

stbrp__skyline_pack_rectangle.exit.thread:        ; preds = %bb.f, %bb.g, %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i32 2147483647, ptr %i.bs, align 4, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 2147483647, ptr %i.bt, align 4, !tbaa !42
  br label %bb.n

bb.n:                                             ; preds = %stbrp__skyline_pack_rectangle.exit, %stbrp__skyline_pack_rectangle.exit.thread, %bb.d
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %._crit_edge58, label %bb.b, !llvm.loop !43

._crit_edge58:                                    ; preds = %bb.n
  tail call void @qsort(ptr noundef nonnull %1, i64 noundef %i.ae, i64 noundef 24, ptr noundef nonnull @rect_original_order) #10
  %i.bu = icmp eq i32 %2, 1
  br i1 %i.bu, label %.lr.ph62.epil.preheader, label %._crit_edge58.new

._crit_edge58.new:                                ; preds = %._crit_edge58
  %unroll_iter88 = and i64 %wide.trip.count68, 2147483646
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.s, %._crit_edge58.new
  %indvars.iv70 = phi i64 [ 0, %._crit_edge58.new ], [ %indvars.iv.next71.1, %bb.s ] ; 3 uses
  %.060 = phi i32 [ 1, %._crit_edge58.new ], [ %i.cq, %bb.s ]
  %niter89 = phi i64 [ 0, %._crit_edge58.new ], [ %niter89.next.1, %bb.s ]
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv70 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !42
  %i.by = icmp eq i32 %i.bx, 2147483647
  br i1 %i.by, label %bb.o, label %.thread

.thread:                                          ; preds = %.lr.ph62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  store i32 1, ptr %i.bz, align 4, !tbaa !38
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !41
  %.fr = freeze i32 %i.cb
  %i.cc = icmp ne i32 %.fr, 2147483647            ; 2 uses
  %i.cd = zext i1 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !38
  br i1 %i.cc, label %bb.p, label %.lr.ph62.1

bb.p:                                             ; preds = %.thread, %bb.o
  br label %.lr.ph62.1

.lr.ph62.1:                                       ; preds = %bb.o, %bb.p
  %i.cf = phi i32 [ %.060, %bb.p ], [ 0, %bb.o ]
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv70 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 36
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !42
  %i.cj = icmp eq i32 %i.ci, 2147483647
  br i1 %i.cj, label %bb.q, label %.thread.1

.thread.1:                                        ; preds = %.lr.ph62.1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  store i32 1, ptr %i.ck, align 4, !tbaa !38
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph62.1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !41
  %.fr.1 = freeze i32 %i.cm
  %i.cn = icmp ne i32 %.fr.1, 2147483647          ; 2 uses
  %i.co = zext i1 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !38
  br i1 %i.cn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %.thread.1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cq = phi i32 [ %i.cf, %bb.r ], [ 0, %bb.q ]  ; 3 uses
  %indvars.iv.next71.1 = add nuw nsw i64 %indvars.iv70, 2 ; 2 uses
  %niter89.next.1 = add i64 %niter89, 2           ; 2 uses
  %niter89.ncmp.1 = icmp eq i64 %niter89.next.1, %unroll_iter88
  br i1 %niter89.ncmp.1, label %._crit_edge63.loopexit.unr-lcssa, label %.lr.ph62, !llvm.loop !44

._crit_edge63.loopexit.unr-lcssa:                 ; preds = %bb.s
  %lcmp.mod85.not = trunc i32 %2 to i1
  br i1 %lcmp.mod85.not, label %.lr.ph62.epil.preheader, label %._crit_edge63

.lr.ph62.epil.preheader:                          ; preds = %._crit_edge63.loopexit.unr-lcssa, %._crit_edge58
  %indvars.iv70.epil.init = phi i64 [ 0, %._crit_edge58 ], [ %indvars.iv.next71.1, %._crit_edge63.loopexit.unr-lcssa ]
  %.060.epil.init = phi i32 [ 1, %._crit_edge58 ], [ %i.cq, %._crit_edge63.loopexit.unr-lcssa ]
  %lcmp.mod87 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv70.epil.init ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !42
  %i.cu = icmp eq i32 %i.ct, 2147483647
  br i1 %i.cu, label %bb.t, label %.thread.epil

.thread.epil:                                     ; preds = %.lr.ph62.epil.preheader
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  store i32 1, ptr %i.cv, align 4, !tbaa !38
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph62.epil.preheader
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !41
  %.fr.epil = freeze i32 %i.cx
  %i.cy = icmp ne i32 %.fr.epil, 2147483647       ; 2 uses
  %i.cz = zext i1 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !38
  br i1 %i.cy, label %bb.u, label %._crit_edge63

bb.u:                                             ; preds = %bb.t, %.thread.epil
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %._crit_edge63.loopexit.unr-lcssa, %bb.u, %bb.t, %._crit_edge58.thread
  %.0.lcssa = phi i32 [ 1, %._crit_edge58.thread ], [ %i.cq, %._crit_edge63.loopexit.unr-lcssa ], [ %.060.epil.init, %bb.u ], [ 0, %bb.t ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 12}
!9 = !{!"stbrp_context", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !10, i64 24, !10, i64 32, !6, i64 40}
!10 = !{!"p1 _ZTS10stbrp_node", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !5, i64 16}
!13 = !{!9, !5, i64 0}
!14 = !{!9, !5, i64 20}
!15 = !{!9, !5, i64 8}
!16 = !{!17, !10, i64 8}
!17 = !{!"stbrp_node", !5, i64 0, !5, i64 4, !10, i64 8}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!9, !10, i64 32}
!23 = !{!9, !10, i64 24}
!24 = !{!9, !5, i64 4}
!25 = !{!17, !5, i64 0}
!26 = !{!17, !5, i64 4}
!27 = distinct !{!27, !19}
!28 = !{!5, !5, i64 0}
!29 = distinct !{!29, !19}
!30 = !{!10, !10, i64 0}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = !{!36, !5, i64 8}
!36 = !{!"stbrp_rect", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!37 = !{!36, !5, i64 4}
!38 = !{!36, !5, i64 20}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !21}
!41 = !{!36, !5, i64 16}
!42 = !{!36, !5, i64 12}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, !19}
end_hunk_0
