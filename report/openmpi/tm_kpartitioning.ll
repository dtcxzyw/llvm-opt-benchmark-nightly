Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/tm_kpartitioning?download=true
inline.NumInlined: 12
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@tm_kpartition_build_tree_from_topology:bb.a
  %.056 = phi ptr [ null, %bb.g ], [ null, %bb.d ], [ %i.at, %bb.p ], [ null, %bb.e ], [ null, %bb.h ], [ null, %bb.m ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  ret ptr %.056
}

declare hidden i32 @tm_get_verbose_level() local_unnamed_addr #5

declare hidden i32 @tm_nb_processing_units(ptr noundef) local_unnamed_addr #5

declare hidden void @tm_complete_obj_weight(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @kpartition_build_level_topology(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !67
  %i.b = sext i32 %3 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8    ; 25 uses
  %i.e = tail call i32 @tm_get_verbose_level() #15 ; 2 uses
  store i32 %i.e, ptr @verbose_level, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !68
  %i.h = add nsw i32 %i.g, -1
  %i.i = icmp eq i32 %3, %i.h
  %i.j = icmp sgt i32 %i.e, 5                     ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %5, align 4, !tbaa !8
  %i.l = load ptr, ptr %1, align 8, !tbaa !19
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.k, ptr noundef %i.l) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = load i32, ptr %5, align 4, !tbaa !8
  tail call void @tm_set_node(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef %i.n, double noundef 0.000000e+00, ptr noundef null, i32 noundef %3) #15
  br label %free_const_tab.exit

bb.e:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !15
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.p, i32 noundef %2, i32 noundef %i.d) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = tail call ptr @tm_kpartition(i32 noundef %i.d, ptr noundef %1, i32 noundef %2, ptr noundef %6, i32 noundef %7) ; 11 uses
  %i.s = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.t = icmp sgt i32 %i.s, 4
  br i1 %i.t, label %bb.h, label %display_partition.exit.thread

display_partition.exit.thread:                    ; preds = %bb.g
  %i.u = sdiv i32 %2, %i.d
  %i.v = sext i32 %i.d to i64                     ; 2 uses
  %i.w = shl nsw i64 %i.v, 3                      ; 2 uses
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #16
  br label %bb.n

bb.h:                                             ; preds = %bb.g
  %.not2.i.i = icmp eq i32 %3, 0                  ; 3 uses
  br i1 %.not2.i.i, label %print_tab.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.03.i.i = phi i32 [ %i.z, %.lr.ph.i.i ], [ %3, %bb.h ]
  %i.y = load ptr, ptr @stdout, align 8, !tbaa !11
  %fputc.i.i = tail call i32 @fputc(i32 9, ptr %i.y) ; 0 uses
  %i.z = add nsw i32 %.03.i.i, -1                 ; 2 uses
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %print_tab.exit.i, label %.lr.ph.i.i, !llvm.loop !49

print_tab.exit.i:                                 ; preds = %.lr.ph.i.i, %bb.h
  %i.aa = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.13, i32 noundef %3) #15 ; 0 uses
  %i.ac = icmp sgt i32 %i.d, 0
  br i1 %i.ac, label %.lr.ph26.i, label %display_partition.exit

.lr.ph26.i:                                       ; preds = %print_tab.exit.i
  %i.ad = icmp sgt i32 %2, 0
  br i1 %i.ad, label %.lr.ph26.split.us.preheader.i, label %.lr.ph26.split.i

.lr.ph26.split.us.preheader.i:                    ; preds = %.lr.ph26.i
  %wide.trip.count.i = zext nneg i32 %2 to i64
  br label %.lr.ph26.split.us.i

.lr.ph26.split.us.i:                              ; preds = %._crit_edge.us.i, %.lr.ph26.split.us.preheader.i
  %.01625.us.i = phi i32 [ %i.aq, %._crit_edge.us.i ], [ 0, %.lr.ph26.split.us.preheader.i ] ; 3 uses
  br i1 %.not2.i.i, label %print_tab.exit23.us.i, label %.lr.ph.i19.us.i

.lr.ph.i19.us.i:                                  ; preds = %.lr.ph26.split.us.i, %.lr.ph.i19.us.i
  %.03.i20.us.i = phi i32 [ %i.af, %.lr.ph.i19.us.i ], [ %3, %.lr.ph26.split.us.i ]
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !11
  %fputc.i21.us.i = tail call i32 @fputc(i32 9, ptr %i.ae) ; 0 uses
  %i.af = add nsw i32 %.03.i20.us.i, -1           ; 2 uses
  %.not.i22.us.i = icmp eq i32 %i.af, 0
  br i1 %.not.i22.us.i, label %print_tab.exit23.us.i, label %.lr.ph.i19.us.i, !llvm.loop !49

print_tab.exit23.us.i:                            ; preds = %.lr.ph.i19.us.i, %.lr.ph26.split.us.i
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.14, i32 noundef %.01625.us.i) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %print_tab.exit23.us.i
  %indvars.iv.i = phi i64 [ 0, %print_tab.exit23.us.i ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  %i.ak = icmp eq i32 %i.aj, %.01625.us.i
  br i1 %i.ak, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8  ; 2 uses
  %.not.us.i = icmp eq i32 %i.am, -1
  br i1 %.not.us.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.15, i32 noundef %i.am) #15 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond35.not.i, label %._crit_edge.us.i, label %bb.i, !llvm.loop !50

._crit_edge.us.i:                                 ; preds = %bb.l
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !11
  %fputc.us.i = tail call i32 @fputc(i32 10, ptr %i.ap) ; 0 uses
  %i.aq = add nuw nsw i32 %.01625.us.i, 1         ; 2 uses
  %exitcond36.not.i = icmp eq i32 %i.aq, %i.d
  br i1 %exitcond36.not.i, label %display_partition.exit, label %.lr.ph26.split.us.i, !llvm.loop !51

.lr.ph26.split.i:                                 ; preds = %.lr.ph26.i
  br i1 %.not2.i.i, label %print_tab.exit23.us29.i, label %.lr.ph.i19.preheader.i

print_tab.exit23.us29.i:                          ; preds = %.lr.ph26.split.i, %print_tab.exit23.us29.i
  %.01625.us28.i = phi i32 [ %i.au, %print_tab.exit23.us29.i ], [ 0, %.lr.ph26.split.i ] ; 2 uses
  %i.ar = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.14, i32 noundef %.01625.us28.i) #15 ; 0 uses
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !11
  %fputc.us30.i = tail call i32 @fputc(i32 10, ptr %i.at) ; 0 uses
  %i.au = add nuw nsw i32 %.01625.us28.i, 1       ; 2 uses
  %exitcond33.not.i = icmp eq i32 %i.au, %i.d
  br i1 %exitcond33.not.i, label %display_partition.exit, label %print_tab.exit23.us29.i, !llvm.loop !51

.lr.ph.i19.preheader.i:                           ; preds = %.lr.ph26.split.i, %print_tab.exit23.loopexit.i
  %.01625.i = phi i32 [ %i.ba, %print_tab.exit23.loopexit.i ], [ 0, %.lr.ph26.split.i ] ; 2 uses
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.preheader.i
  %.03.i20.i = phi i32 [ %i.aw, %.lr.ph.i19.i ], [ %3, %.lr.ph.i19.preheader.i ]
  %i.av = load ptr, ptr @stdout, align 8, !tbaa !11
  %fputc.i21.i = tail call i32 @fputc(i32 9, ptr %i.av) ; 0 uses
  %i.aw = add nsw i32 %.03.i20.i, -1              ; 2 uses
  %.not.i22.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i22.i, label %print_tab.exit23.loopexit.i, label %.lr.ph.i19.i, !llvm.loop !49

print_tab.exit23.loopexit.i:                      ; preds = %.lr.ph.i19.i
  %i.ax = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ax, ptr noundef nonnull @.str.14, i32 noundef %.01625.i) #15 ; 0 uses
  %i.az = load ptr, ptr @stdout, align 8, !tbaa !11
  %fputc.i = tail call i32 @fputc(i32 10, ptr %i.az) ; 0 uses
  %i.ba = add nuw nsw i32 %.01625.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ba, %i.d
  br i1 %exitcond.not.i, label %display_partition.exit, label %.lr.ph.i19.preheader.i, !llvm.loop !51

display_partition.exit:                           ; preds = %print_tab.exit23.loopexit.i, %print_tab.exit23.us29.i, %._crit_edge.us.i, %print_tab.exit.i
  %.pr = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.bb = icmp sgt i32 %.pr, 5
  %i.bc = sdiv i32 %2, %i.d                       ; 3 uses
  %i.bd = sext i32 %i.d to i64                    ; 3 uses
  %i.be = shl nsw i64 %i.bd, 3                    ; 3 uses
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.be) #16 ; 2 uses
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %display_partition.exit
  %i.bg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18) ; 0 uses
  tail call void @tm_print_1D_tab(ptr noundef %i.r, i32 noundef %2) #15
  %i.bh = load ptr, ptr %1, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !15
  tail call void @tm_display_tab(ptr noundef %i.bh, i32 noundef %i.bj) #15
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bc, i32 noundef %2, i32 noundef %i.d) ; 0 uses
  %i.bl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef null) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %display_partition.exit.thread, %bb.m, %display_partition.exit
  %i.bm = phi ptr [ %i.x, %display_partition.exit.thread ], [ %i.bf, %bb.m ], [ %i.bf, %display_partition.exit ] ; 6 uses
  %i.bn = phi i64 [ %i.w, %display_partition.exit.thread ], [ %i.be, %bb.m ], [ %i.be, %display_partition.exit ]
  %i.bo = phi i64 [ %i.v, %display_partition.exit.thread ], [ %i.bd, %bb.m ], [ %i.bd, %display_partition.exit ] ; 3 uses
  %i.bp = phi i32 [ %i.u, %display_partition.exit.thread ], [ %i.bc, %bb.m ], [ %i.bc, %display_partition.exit ] ; 9 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = shl nsw i64 %i.bq, 2                    ; 4 uses
  %i.bs = tail call noalias ptr @malloc(i64 noundef %i.br) #16 ; 8 uses
  %i.bt = icmp sgt i32 %i.d, 0                    ; 6 uses
  br i1 %i.bt, label %.preheader80.lr.ph.i, label %split_com_mat.exit

.preheader80.lr.ph.i:                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !15 ; 4 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.preheader80.us.preheader.i, label %.preheader80.lr.ph.split.i

.preheader80.us.preheader.i:                      ; preds = %.preheader80.lr.ph.i
  %wide.trip.count124.i = zext nneg i32 %i.d to i64
  %wide.trip.count101.i = zext nneg i32 %i.bv to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count101.i, 1
  %i.bx = icmp eq i32 %i.bv, 1
  %unroll_iter = and i64 %wide.trip.count101.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod100 = trunc i32 %i.bv to i1
  br label %.preheader80.us.i

.preheader80.us.i:                                ; preds = %._crit_edge90.us.i, %.preheader80.us.preheader.i
  %indvars.iv121.i = phi i64 [ 0, %.preheader80.us.preheader.i ], [ %indvars.iv.next122.i, %._crit_edge90.us.i ] ; 6 uses
  br i1 %i.bx, label %.epil.preheader, label %.preheader80.us.i.new

.preheader80.us.i.new:                            ; preds = %.preheader80.us.i, %bb.r
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i.1, %bb.r ], [ 0, %.preheader80.us.i ] ; 4 uses
  %.083.us.i = phi i32 [ %.1.us.i.1, %bb.r ], [ 0, %.preheader80.us.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.r ], [ 0, %.preheader80.us.i ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv98.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !8
  %i.ca = zext i32 %i.bz to i64
  %i.cb = icmp eq i64 %indvars.iv121.i, %i.ca
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader80.us.i.new
  %i.cc = add nsw i32 %.083.us.i, 1
  %i.cd = sext i32 %.083.us.i to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cd
  %i.cf = trunc nuw nsw i64 %indvars.iv98.i to i32
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader80.us.i.new
  %.1.us.i = phi i32 [ %i.cc, %bb.o ], [ %.083.us.i, %.preheader80.us.i.new ] ; 3 uses
  %indvars.iv.next99.i = or disjoint i64 %indvars.iv98.i, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next99.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !8
  %i.ci = zext i32 %i.ch to i64
  %i.cj = icmp eq i64 %indvars.iv121.i, %i.ci
  br i1 %i.cj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ck = add nsw i32 %.1.us.i, 1
  %i.cl = sext i32 %.1.us.i to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cl
  %i.cn = trunc nuw nsw i64 %indvars.iv.next99.i to i32
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1.us.i.1 = phi i32 [ %i.ck, %bb.q ], [ %.1.us.i, %bb.p ] ; 3 uses
  %indvars.iv.next99.i.1 = add nuw nsw i64 %indvars.iv98.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i85.unr-lcssa, label %.preheader80.us.i.new, !llvm.loop !52

bb.s:                                             ; preds = %._crit_edge.us.i85
  %i.co = sext i32 %.1.us.i.lcssa to i64
  %i.cp = shl nsw i64 %i.co, 3                    ; 2 uses
  %i.cq = tail call noalias ptr @malloc(i64 noundef %i.cp) #16 ; 6 uses
  %i.cr = icmp sgt i32 %.1.us.i.lcssa, 0
  br i1 %i.cr, label %.lr.ph86.us.preheader.i, label %._crit_edge90.us.i

.lr.ph86.us.preheader.i:                          ; preds = %bb.s
  %wide.trip.count107.i = zext nneg i32 %.1.us.i.lcssa to i64 ; 5 uses
  br label %.lr.ph86.us.i

.lr.ph86.us.i:                                    ; preds = %.lr.ph86.us.i, %.lr.ph86.us.preheader.i
  %indvars.iv103.i = phi i64 [ 0, %.lr.ph86.us.preheader.i ], [ %indvars.iv.next104.i, %.lr.ph86.us.i ] ; 2 uses
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.cp) #16
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv103.i
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !21
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1 ; 2 uses
  %exitcond108.not.i = icmp eq i64 %indvars.iv.next104.i, %wide.trip.count107.i
  br i1 %exitcond108.not.i, label %.lr.ph89.us.i, label %.lr.ph86.us.i, !llvm.loop !53

bb.t:                                             ; preds = %.lr.ph89.us.i, %.unr-lcssa
  %indvars.iv109.i = phi i64 [ 0, %.lr.ph89.us.i ], [ %indvars.iv.next110.i, %.unr-lcssa ] ; 13 uses
  %8 = sub nsw i64 %wide.trip.count107.i, %indvars.iv109.i
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv109.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !21 ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv109.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !21 ; 3 uses
  %xtraiter101 = and i64 %8, 1
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.t
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv109.i
  %10 = load i32, ptr %9, align 4, !tbaa !8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %11
  %13 = load double, ptr %12, align 8, !tbaa !23  ; 2 uses
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv109.i
  store double %13, ptr %14, align 8, !tbaa !23
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv109.i
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %indvars.iv109.i
  store double %13, ptr %17, align 8, !tbaa !23
  %indvars.iv.next112.i.prol = add nuw nsw i64 %indvars.iv109.i, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.t
  %indvars.iv111.i.unr = phi i64 [ %indvars.iv109.i, %bb.t ], [ %indvars.iv.next112.i.prol, %.prol.loopexit.unr-lcssa ]
  %18 = icmp eq i64 %indvars.iv109.i, %28
  br i1 %18, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv111.i = phi i64 [ %indvars.iv.next112.i.1, %.new ], [ %indvars.iv111.i.unr, %.prol.loopexit ] ; 5 uses
  %19 = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv111.i
  %20 = load i32, ptr %19, align 4, !tbaa !8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %21
  %23 = load double, ptr %22, align 8, !tbaa !23  ; 2 uses
  %24 = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv111.i
  store double %23, ptr %24, align 8, !tbaa !23
  %25 = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv111.i
  %26 = load ptr, ptr %25, align 8, !tbaa !21
  %27 = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %indvars.iv109.i
  store double %23, ptr %27, align 8, !tbaa !23
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1 ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next112.i
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !23 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next112.i
  store double %i.df, ptr %i.dg, align 8, !tbaa !23
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv.next112.i
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !21
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv109.i
  store double %i.df, ptr %i.dj, align 8, !tbaa !23
  %indvars.iv.next112.i.1 = add nuw nsw i64 %indvars.iv111.i, 2 ; 2 uses
  %exitcond116.not.i.1 = icmp eq i64 %indvars.iv.next112.i.1, %wide.trip.count107.i
  br i1 %exitcond116.not.i.1, label %.unr-lcssa, label %.new, !llvm.loop !54

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %exitcond120.not.i = icmp eq i64 %indvars.iv.next110.i, %wide.trip.count107.i
  br i1 %exitcond120.not.i, label %._crit_edge90.us.i, label %bb.t, !llvm.loop !55

._crit_edge90.us.i:                               ; preds = %.unr-lcssa, %bb.s
  %i.dk = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i32 %.1.us.i.lcssa, ptr %i.dl, align 8, !tbaa !15
  store ptr %i.cq, ptr %i.dk, align 8, !tbaa !19
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv121.i
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !70
  %indvars.iv.next122.i = add nuw nsw i64 %indvars.iv121.i, 1 ; 2 uses
  %exitcond125.not.i = icmp eq i64 %indvars.iv.next122.i, %wide.trip.count124.i
  br i1 %exitcond125.not.i, label %split_com_mat.exit, label %.preheader80.us.i, !llvm.loop !56

._crit_edge.us.i85.unr-lcssa:                     ; preds = %bb.r
  br i1 %lcmp.mod.not, label %._crit_edge.us.i85, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i85.unr-lcssa, %.preheader80.us.i
  %indvars.iv98.i.epil.init = phi i64 [ 0, %.preheader80.us.i ], [ %indvars.iv.next99.i.1, %._crit_edge.us.i85.unr-lcssa ] ; 2 uses
  %.083.us.i.epil.init = phi i32 [ 0, %.preheader80.us.i ], [ %.1.us.i.1, %._crit_edge.us.i85.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv98.i.epil.init
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !8
  %i.dp = zext i32 %i.do to i64
  %i.dq = icmp eq i64 %indvars.iv121.i, %i.dp
  br i1 %i.dq, label %bb.u, label %._crit_edge.us.i85

bb.u:                                             ; preds = %.epil.preheader
  %i.dr = add nsw i32 %.083.us.i.epil.init, 1
  %i.ds = sext i32 %.083.us.i.epil.init to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ds
  %i.du = trunc nuw nsw i64 %indvars.iv98.i.epil.init to i32
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !8
  br label %._crit_edge.us.i85

._crit_edge.us.i85:                               ; preds = %.epil.preheader, %bb.u, %._crit_edge.us.i85.unr-lcssa
  %.1.us.i.lcssa = phi i32 [ %.1.us.i.1, %._crit_edge.us.i85.unr-lcssa ], [ %i.dr, %bb.u ], [ %.083.us.i.epil.init, %.epil.preheader ] ; 6 uses
  %i.dv = icmp sgt i32 %.1.us.i.lcssa, %i.bp
  br i1 %i.dv, label %.split.us.loopexit.i, label %bb.s

.lr.ph89.us.i:                                    ; preds = %.lr.ph86.us.i
  %i.dw = load ptr, ptr %1, align 8, !tbaa !19
  %28 = add nsw i64 %wide.trip.count107.i, -1
  br label %bb.t

.preheader80.lr.ph.split.i:                       ; preds = %.preheader80.lr.ph.i
  %i.dx = icmp slt i32 %i.bp, 0
  br i1 %i.dx, label %.split.us.i, label %.preheader80.preheader.i

.preheader80.preheader.i:                         ; preds = %.preheader80.lr.ph.split.i
  %wide.trip.count.i81 = zext nneg i32 %i.d to i64
  br label %.preheader80.i

.preheader80.i:                                   ; preds = %.preheader80.i, %.preheader80.preheader.i
  %indvars.iv.i82 = phi i64 [ 0, %.preheader80.preheader.i ], [ %indvars.iv.next.i83, %.preheader80.i ] ; 2 uses
  %i.dy = tail call noalias ptr @malloc(i64 noundef 0) #16
  %i.dz = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i32 0, ptr %i.ea, align 8, !tbaa !15
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !19
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i82
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !70
  %indvars.iv.next.i83 = add nuw nsw i64 %indvars.iv.i82, 1 ; 2 uses
  %exitcond.not.i84 = icmp eq i64 %indvars.iv.next.i83, %wide.trip.count.i81
  br i1 %exitcond.not.i84, label %split_com_mat.exit, label %.preheader80.i, !llvm.loop !56

.split.us.loopexit.i:                             ; preds = %._crit_edge.us.i85
  %i.ec = trunc nuw nsw i64 %indvars.iv121.i to i32
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.loopexit.i, %.preheader80.lr.ph.split.i
  %.us-phi.i = phi i32 [ 0, %.preheader80.lr.ph.split.i ], [ %i.ec, %.split.us.loopexit.i ]
  %.us-phi93.i = phi i32 [ 0, %.preheader80.lr.ph.split.i ], [ %.1.us.i.lcssa, %.split.us.loopexit.i ]
  %i.ed = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.split.us.i
  %i.ef = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.18, i64 11, i64 1, ptr %i.ef) #18 ; 0 uses
  tail call void @tm_print_1D_tab(ptr noundef %i.r, i32 noundef %2) #15
  %i.eg = load ptr, ptr %1, align 8, !tbaa !19
  %i.eh = load i32, ptr %i.bu, align 8, !tbaa !15
  tail call void @tm_display_tab(ptr noundef %i.eg, i32 noundef %i.eh) #15
  %i.ei = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ej = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ei, ptr noundef nonnull @.str.21, i32 noundef %.us-phi93.i, i32 noundef %i.bp, i32 noundef %2, i32 noundef %i.d, i32 noundef %.us-phi.i) #14 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.split.us.i
  tail call void @exit(i32 noundef -1) #19
  unreachable

split_com_mat.exit:                               ; preds = %.preheader80.i, %._crit_edge90.us.i, %bb.n
  tail call void @free(ptr noundef %i.bs) #15
  %i.ek = tail call noalias ptr @malloc(i64 noundef %i.bn) #16 ; 7 uses
  %i.el = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.em = icmp sgt i32 %i.el, 5
  br i1 %i.em, label %bb.x, label %bb.y

bb.x:                                             ; preds = %split_com_mat.exit
  %i.en = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18) ; 0 uses
  tail call void @tm_print_1D_tab(ptr noundef %i.r, i32 noundef %2) #15
  %i.eo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22) ; 0 uses
  tail call void @tm_print_1D_tab(ptr noundef %5, i32 noundef %2) #15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %split_com_mat.exit
  br i1 %i.bt, label %.lr.ph33.i, label %split_vertices.exit

.lr.ph33.i:                                       ; preds = %bb.y
  %i.ep = icmp sgt i32 %2, 0
  br i1 %i.ep, label %.lr.ph.us.preheader.i, label %.lr.ph33.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph33.i
  %wide.trip.count52.i = zext nneg i32 %i.d to i64
  %wide.trip.count47.i = zext nneg i32 %2 to i64  ; 2 uses
  %xtraiter104 = and i64 %wide.trip.count47.i, 1
  %i.eq = icmp eq i32 %2, 1
  %unroll_iter107 = and i64 %wide.trip.count47.i, 2147483646
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  %lcmp.mod106 = trunc i32 %2 to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.ae, %.lr.ph.us.preheader.i
  %indvars.iv49.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next50.i, %bb.ae ] ; 6 uses
  %i.er = tail call noalias ptr @malloc(i64 noundef %i.br) #16 ; 5 uses
  br i1 %i.eq, label %.epil.preheader103, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %bb.ac
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i.1, %bb.ac ], [ 0, %.lr.ph.us.i ] ; 4 uses
  %.02829.us.i = phi i32 [ %.1.us.i89.1, %bb.ac ], [ 0, %.lr.ph.us.i ] ; 3 uses
  %niter108 = phi i64 [ %niter108.next.1, %bb.ac ], [ 0, %.lr.ph.us.i ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv44.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !8
  %i.eu = zext i32 %i.et to i64
  %i.ev = icmp eq i64 %indvars.iv49.i, %i.eu
  br i1 %i.ev, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.us.i.new
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv44.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !8
  %i.ey = add nsw i32 %.02829.us.i, 1
  %i.ez = sext i32 %.02829.us.i to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.ez
  store i32 %i.ex, ptr %i.fa, align 4, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.us.i.new
  %.1.us.i89 = phi i32 [ %i.ey, %bb.z ], [ %.02829.us.i, %.lr.ph.us.i.new ] ; 3 uses
  %indvars.iv.next45.i = or disjoint i64 %indvars.iv44.i, 1 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next45.i
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !8
  %i.fd = zext i32 %i.fc to i64
  %i.fe = icmp eq i64 %indvars.iv49.i, %i.fd
  br i1 %i.fe, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next45.i
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !8
  %i.fh = add nsw i32 %.1.us.i89, 1
  %i.fi = sext i32 %.1.us.i89 to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fi
  store i32 %i.fg, ptr %i.fj, align 4, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.us.i89.1 = phi i32 [ %i.fh, %bb.ab ], [ %.1.us.i89, %bb.aa ] ; 2 uses
  %indvars.iv.next45.i.1 = add nuw nsw i64 %indvars.iv44.i, 2 ; 2 uses
  %niter108.next.1 = add i64 %niter108, 2         ; 2 uses
  %niter108.ncmp.1 = icmp eq i64 %niter108.next.1, %unroll_iter107
  br i1 %niter108.ncmp.1, label %._crit_edge.us.i90.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !57

bb.ad:                                            ; preds = %._crit_edge.us.i90
  %i.fk = trunc nuw nsw i64 %indvars.iv49.i to i32
  %i.fl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.fk) ; 0 uses
  tail call void @tm_print_1D_tab(ptr noundef %i.er, i32 noundef %i.bp) #15
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.us.i90, %bb.ad
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count52.i
  br i1 %exitcond53.not.i, label %split_vertices.exit, label %.lr.ph.us.i, !llvm.loop !58

._crit_edge.us.i90.unr-lcssa:                     ; preds = %bb.ac
  br i1 %lcmp.mod105.not, label %._crit_edge.us.i90, label %.epil.preheader103

.epil.preheader103:                               ; preds = %._crit_edge.us.i90.unr-lcssa, %.lr.ph.us.i
  %indvars.iv44.i.epil.init = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next45.i.1, %._crit_edge.us.i90.unr-lcssa ] ; 2 uses
  %.02829.us.i.epil.init = phi i32 [ 0, %.lr.ph.us.i ], [ %.1.us.i89.1, %._crit_edge.us.i90.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod106)
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv44.i.epil.init
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !8
  %i.fo = zext i32 %i.fn to i64
  %i.fp = icmp eq i64 %indvars.iv49.i, %i.fo
  br i1 %i.fp, label %bb.af, label %._crit_edge.us.i90

bb.af:                                            ; preds = %.epil.preheader103
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv44.i.epil.init
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !8
  %i.fs = sext i32 %.02829.us.i.epil.init to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fs
  store i32 %i.fr, ptr %i.ft, align 4, !tbaa !8
  br label %._crit_edge.us.i90

._crit_edge.us.i90:                               ; preds = %.epil.preheader103, %bb.af, %._crit_edge.us.i90.unr-lcssa
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv49.i
  store ptr %i.er, ptr %i.fu, align 8, !tbaa !71
  %i.fv = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.fw = icmp sgt i32 %i.fv, 5
  br i1 %i.fw, label %bb.ad, label %bb.ae

.lr.ph33.split.i:                                 ; preds = %.lr.ph33.i
  %i.fx = load i32, ptr @verbose_level, align 4, !tbaa !8 ; 2 uses
  %i.fy = icmp sgt i32 %i.fx, 5
  %wide.trip.count42.i = zext nneg i32 %i.d to i64 ; 2 uses
  br i1 %i.fy, label %.lr.ph33.split.split.i, label %.lr.ph33.split.split.us.i

.lr.ph33.split.split.us.i:                        ; preds = %.lr.ph33.split.i, %.lr.ph33.split.split.us.i
  %indvars.iv.i86 = phi i64 [ %indvars.iv.next.i87, %.lr.ph33.split.split.us.i ], [ 0, %.lr.ph33.split.i ] ; 2 uses
  %i.fz = tail call noalias ptr @malloc(i64 noundef %i.br) #16
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.i86
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !71
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i86, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count42.i
  br i1 %exitcond.not.i88, label %split_vertices.exit, label %.lr.ph33.split.split.us.i, !llvm.loop !58

.lr.ph33.split.split.i:                           ; preds = %.lr.ph33.split.i, %bb.ah
  %i.gb = phi i32 [ %i.gh, %bb.ah ], [ %i.fx, %.lr.ph33.split.i ] ; 2 uses
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.ah ], [ 0, %.lr.ph33.split.i ] ; 3 uses
  %i.gc = tail call noalias ptr @malloc(i64 noundef %i.br) #16 ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv39.i
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !71
  %i.ge = icmp sgt i32 %i.gb, 5
  br i1 %i.ge, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph33.split.split.i
  %i.gf = trunc nuw nsw i64 %indvars.iv39.i to i32
  %i.gg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.gf) ; 0 uses
  tail call void @tm_print_1D_tab(ptr noundef %i.gc, i32 noundef %i.bp) #15
  %.pre.i = load i32, ptr @verbose_level, align 4, !tbaa !8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph33.split.split.i
end_hunk_0
