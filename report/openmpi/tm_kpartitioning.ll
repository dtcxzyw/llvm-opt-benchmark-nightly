Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/tm_kpartitioning?download=true
inline.NumInlined: 12
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@tm_kpartition:bb.a
kpartition_greedy.exit:                           ; preds = %eval_cost.exit.i, %bb.h, %bb.g, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.h ], [ %..0100145.i, %eval_cost.exit.i ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define hidden noundef ptr @tm_kpartition_build_tree_from_topology(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %7 = alloca %struct._com_mat_t, align 8         ; 5 uses
  store ptr %5, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.b = tail call i32 @tm_get_verbose_level() #15
  store i32 %i.b, ptr @verbose_level, align 4, !tbaa !8
  %i.c = tail call i32 @tm_nb_processing_units(ptr noundef %0) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36
  %i.f = mul i32 %i.e, %i.c                       ; 9 uses
  %i.g = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.h = icmp sgt i32 %i.g, 4
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i32 %i.f, %2
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %4, i32 noundef %2, i32 noundef %i.f, i32 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp eq ptr %3, null
  %i.l = icmp ne i32 %4, 0
  %or.cond = and i1 %i.k, %i.l
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.p = tail call i64 @fwrite(ptr nonnull @.str.3, i64 63, i64 1, ptr %i.o) #18 ; 0 uses
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %.not = icmp ne ptr %3, null
  %i.q = icmp sgt i32 %4, %i.f
  %or.cond63 = select i1 %.not, i1 %i.q, i1 false
  br i1 %or.cond63, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.4, i32 noundef %4, i32 noundef %i.f) #14 ; 0 uses
  br label %bb.q

bb.i:                                             ; preds = %bb.f
  %i.v = sub nsw i32 %i.f, %2                     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @tm_complete_obj_weight(ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef %i.v) #15
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.x = icmp slt i32 %i.v, 0
  br i1 %i.x, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.y = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ab = tail call i64 @fwrite(ptr nonnull @.str.5, i64 18, i64 1, ptr %i.aa) #18 ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.k, %bb.j
  store ptr %1, ptr %7, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %2, ptr %i.ac, align 8, !tbaa !12
  %i.ad = sext i32 %i.f to i64
  %i.ae = shl nsw i64 %i.ad, 2
  %i.af = call noalias ptr @malloc(i64 noundef %i.ae) #16 ; 5 uses
  %i.ag = call i32 @llvm.smin.i32(i32 %2, i32 %4) ; 5 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph.preheader76, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> %vec.ind, ptr %i.ai, align 4, !tbaa !8
  store <4 x i32> %step.add, ptr %i.aj, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader76

.lr.ph.preheader76:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.n
  %i.al = icmp slt i32 %i.ag, %i.f
  br i1 %i.al, label %.lr.ph66.preheader, label %._crit_edge

.lr.ph66.preheader:                               ; preds = %.preheader
  %i.am = call i32 @llvm.smin.i32(i32 %4, i32 %2)
  %smin = sext i32 %i.am to i64
  %i.an = shl nsw i64 %smin, 2
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.an
  %i.ao = xor i32 %i.ag, -1
  %i.ap = add i32 %i.f, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 -1, i64 %i.as, i1 false), !tbaa !8
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader76, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader76 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.au, ptr %i.at, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph66.preheader, %.preheader
  %i.av = call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store i32 0, ptr %i.aw, align 8, !tbaa !43
  call fastcc void @kpartition_build_level_topology(ptr noundef %i.av, ptr noundef nonnull %7, i32 noundef %i.f, i32 noundef 0, ptr noundef nonnull %0, ptr noundef %i.af, ptr noundef %3, i32 noundef %4)
  %i.ax = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.ay = icmp sgt i32 %i.ax, 4
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  call void @free(ptr noundef %i.af) #15
  store i32 1, ptr %i.av, align 8, !tbaa !48
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.m, %bb.g, %bb.h, %bb.d, %bb.e, %bb.p
  %.056 = phi ptr [ null, %bb.g ], [ null, %bb.d ], [ %i.av, %bb.p ], [ null, %bb.e ], [ null, %bb.h ], [ null, %bb.m ], [ null, %bb.l ]
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
  %i.a = load ptr, ptr %4, align 8, !tbaa !49
  %i.b = sext i32 %3 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8    ; 22 uses
  %i.e = tail call i32 @tm_get_verbose_level() #15 ; 2 uses
  store i32 %i.e, ptr @verbose_level, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !50
  %i.h = add nsw i32 %i.g, -1
  %i.i = icmp eq i32 %3, %i.h
  %i.j = icmp sgt i32 %i.e, 5                     ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %5, align 4, !tbaa !8
  %i.l = load ptr, ptr %1, align 8, !tbaa !26
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
  %i.p = load i32, ptr %i.o, align 8, !tbaa !12
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.p, i32 noundef %2, i32 noundef %i.d) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = tail call ptr @tm_kpartition(i32 noundef %i.d, ptr noundef %1, i32 noundef %2, ptr noundef %6, i32 noundef %7) ; 11 uses
  %i.s = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.t = icmp sgt i32 %i.s, 4
  br i1 %i.t, label %bb.h, label %display_partition.exit

bb.h:                                             ; preds = %bb.g
  %.not2.i.i = icmp eq i32 %3, 0                  ; 3 uses
  br i1 %.not2.i.i, label %print_tab.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.03.i.i = phi i32 [ %i.v, %.lr.ph.i.i ], [ %3, %bb.h ]
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !9
  %fputc.i.i = tail call i32 @fputc(i32 9, ptr %i.u) ; 0 uses
  %i.v = add nsw i32 %.03.i.i, -1                 ; 2 uses
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %print_tab.exit.i, label %.lr.ph.i.i, !llvm.loop !51

print_tab.exit.i:                                 ; preds = %.lr.ph.i.i, %bb.h
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.13, i32 noundef %3) #15 ; 0 uses
  %i.y = icmp sgt i32 %i.d, 0
  br i1 %i.y, label %.lr.ph26.i, label %display_partition.exit

.lr.ph26.i:                                       ; preds = %print_tab.exit.i
  %i.z = icmp sgt i32 %2, 0
  br i1 %i.z, label %.lr.ph26.split.us.preheader.i, label %.lr.ph26.split.i

.lr.ph26.split.us.preheader.i:                    ; preds = %.lr.ph26.i
  %wide.trip.count.i = zext nneg i32 %2 to i64
  br label %.lr.ph26.split.us.i

.lr.ph26.split.us.i:                              ; preds = %._crit_edge.us.i, %.lr.ph26.split.us.preheader.i
  %.01625.us.i = phi i32 [ %i.am, %._crit_edge.us.i ], [ 0, %.lr.ph26.split.us.preheader.i ] ; 3 uses
  br i1 %.not2.i.i, label %print_tab.exit23.us.i, label %.lr.ph.i19.us.i

.lr.ph.i19.us.i:                                  ; preds = %.lr.ph26.split.us.i, %.lr.ph.i19.us.i
  %.03.i20.us.i = phi i32 [ %i.ab, %.lr.ph.i19.us.i ], [ %3, %.lr.ph26.split.us.i ]
  %i.aa = load ptr, ptr @stdout, align 8, !tbaa !9
  %fputc.i21.us.i = tail call i32 @fputc(i32 9, ptr %i.aa) ; 0 uses
  %i.ab = add nsw i32 %.03.i20.us.i, -1           ; 2 uses
  %.not.i22.us.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i22.us.i, label %print_tab.exit23.us.i, label %.lr.ph.i19.us.i, !llvm.loop !51

print_tab.exit23.us.i:                            ; preds = %.lr.ph.i19.us.i, %.lr.ph26.split.us.i
  %i.ac = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.14, i32 noundef %.01625.us.i) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %print_tab.exit23.us.i
  %indvars.iv.i = phi i64 [ 0, %print_tab.exit23.us.i ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = icmp eq i32 %i.af, %.01625.us.i
  br i1 %i.ag, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8  ; 2 uses
  %.not.us.i = icmp eq i32 %i.ai, -1
  br i1 %.not.us.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.15, i32 noundef %i.ai) #15 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond35.not.i, label %._crit_edge.us.i, label %bb.i, !llvm.loop !52

._crit_edge.us.i:                                 ; preds = %bb.l
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !9
  %fputc.us.i = tail call i32 @fputc(i32 10, ptr %i.al) ; 0 uses
  %i.am = add nuw nsw i32 %.01625.us.i, 1         ; 2 uses
  %exitcond36.not.i = icmp eq i32 %i.am, %i.d
  br i1 %exitcond36.not.i, label %display_partition.exit, label %.lr.ph26.split.us.i, !llvm.loop !53

.lr.ph26.split.i:                                 ; preds = %.lr.ph26.i
  br i1 %.not2.i.i, label %print_tab.exit23.us29.i, label %.lr.ph.i19.preheader.i

print_tab.exit23.us29.i:                          ; preds = %.lr.ph26.split.i, %print_tab.exit23.us29.i
  %.01625.us28.i = phi i32 [ %i.aq, %print_tab.exit23.us29.i ], [ 0, %.lr.ph26.split.i ] ; 2 uses
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.14, i32 noundef %.01625.us28.i) #15 ; 0 uses
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !9
  %fputc.us30.i = tail call i32 @fputc(i32 10, ptr %i.ap) ; 0 uses
  %i.aq = add nuw nsw i32 %.01625.us28.i, 1       ; 2 uses
  %exitcond33.not.i = icmp eq i32 %i.aq, %i.d
  br i1 %exitcond33.not.i, label %display_partition.exit, label %print_tab.exit23.us29.i, !llvm.loop !53

.lr.ph.i19.preheader.i:                           ; preds = %.lr.ph26.split.i, %print_tab.exit23.loopexit.i
  %.01625.i = phi i32 [ %i.aw, %print_tab.exit23.loopexit.i ], [ 0, %.lr.ph26.split.i ] ; 2 uses
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.preheader.i
  %.03.i20.i = phi i32 [ %i.as, %.lr.ph.i19.i ], [ %3, %.lr.ph.i19.preheader.i ]
  %i.ar = load ptr, ptr @stdout, align 8, !tbaa !9
  %fputc.i21.i = tail call i32 @fputc(i32 9, ptr %i.ar) ; 0 uses
  %i.as = add nsw i32 %.03.i20.i, -1              ; 2 uses
  %.not.i22.i = icmp eq i32 %i.as, 0
  br i1 %.not.i22.i, label %print_tab.exit23.loopexit.i, label %.lr.ph.i19.i, !llvm.loop !51

print_tab.exit23.loopexit.i:                      ; preds = %.lr.ph.i19.i
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !9
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.14, i32 noundef %.01625.i) #15 ; 0 uses
  %i.av = load ptr, ptr @stdout, align 8, !tbaa !9
  %fputc.i = tail call i32 @fputc(i32 10, ptr %i.av) ; 0 uses
  %i.aw = add nuw nsw i32 %.01625.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aw, %i.d
  br i1 %exitcond.not.i, label %display_partition.exit, label %.lr.ph.i19.preheader.i, !llvm.loop !53

display_partition.exit:                           ; preds = %print_tab.exit23.loopexit.i, %print_tab.exit23.us29.i, %._crit_edge.us.i, %print_tab.exit.i, %bb.g
  %i.ax = sdiv i32 %2, %i.d                       ; 10 uses
  %i.ay = sext i32 %i.d to i64                    ; 4 uses
  %i.az = shl nsw i64 %i.ay, 3                    ; 2 uses
  %i.ba = tail call noalias ptr @malloc(i64 noundef %i.az) #16 ; 6 uses
  %8 = load i32, ptr @verbose_level, align 4, !tbaa !8
  %9 = icmp sgt i32 %8, 5
  br i1 %9, label %bb.m, label %bb.n

bb.m:                                             ; preds = %display_partition.exit
  %i.bb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18) ; 0 uses
  tail call void @tm_print_1D_tab(ptr noundef %i.r, i32 noundef %2) #15
  %i.bc = load ptr, ptr %1, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !12
  tail call void @tm_display_tab(ptr noundef %i.bc, i32 noundef %i.be) #15
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ax, i32 noundef %2, i32 noundef %i.d) ; 0 uses
  %i.bg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef null) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %display_partition.exit
  %i.bh = sext i32 %i.ax to i64
  %i.bi = shl nsw i64 %i.bh, 2                    ; 3 uses
  %i.bj = tail call noalias ptr @malloc(i64 noundef %i.bi) #16 ; 8 uses
  %i.bk = icmp sgt i32 %i.d, 0                    ; 6 uses
  br i1 %i.bk, label %.preheader80.lr.ph.i, label %split_com_mat.exit

.preheader80.lr.ph.i:                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !12 ; 4 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.preheader80.us.preheader.i, label %.preheader80.lr.ph.split.i

.preheader80.us.preheader.i:                      ; preds = %.preheader80.lr.ph.i
  %wide.trip.count130.i = zext nneg i32 %i.d to i64
  %wide.trip.count107.i = zext nneg i32 %i.bm to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count107.i, 1
  %i.bo = icmp eq i32 %i.bm, 1
  %unroll_iter = and i64 %wide.trip.count107.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod92 = trunc i32 %i.bm to i1
  br label %.preheader80.us.i

.preheader80.us.i:                                ; preds = %._crit_edge90.us.i, %.preheader80.us.preheader.i
  %indvars.iv127.i = phi i64 [ 0, %.preheader80.us.preheader.i ], [ %indvars.iv.next128.i, %._crit_edge90.us.i ] ; 6 uses
  br i1 %i.bo, label %.epil.preheader, label %.preheader80.us.i.new

.preheader80.us.i.new:                            ; preds = %.preheader80.us.i, %bb.r
  %indvars.iv104.i = phi i64 [ %indvars.iv.next105.i.1, %bb.r ], [ 0, %.preheader80.us.i ] ; 4 uses
  %.083.us.i = phi i32 [ %.1.us.i.1, %bb.r ], [ 0, %.preheader80.us.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.r ], [ 0, %.preheader80.us.i ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv104.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !8
  %i.br = zext i32 %i.bq to i64
  %i.bs = icmp eq i64 %indvars.iv127.i, %i.br
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader80.us.i.new
  %i.bt = add nsw i32 %.083.us.i, 1
  %i.bu = sext i32 %.083.us.i to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bu
  %i.bw = trunc nuw nsw i64 %indvars.iv104.i to i32
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader80.us.i.new
  %.1.us.i = phi i32 [ %i.bt, %bb.o ], [ %.083.us.i, %.preheader80.us.i.new ] ; 3 uses
  %indvars.iv.next105.i = or disjoint i64 %indvars.iv104.i, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next105.i
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !8
  %i.bz = zext i32 %i.by to i64
  %i.ca = icmp eq i64 %indvars.iv127.i, %i.bz
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cb = add nsw i32 %.1.us.i, 1
  %i.cc = sext i32 %.1.us.i to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.cc
  %i.ce = trunc nuw nsw i64 %indvars.iv.next105.i to i32
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1.us.i.1 = phi i32 [ %i.cb, %bb.q ], [ %.1.us.i, %bb.p ] ; 3 uses
  %indvars.iv.next105.i.1 = add nuw nsw i64 %indvars.iv104.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i85.unr-lcssa, label %.preheader80.us.i.new, !llvm.loop !54

bb.s:                                             ; preds = %._crit_edge.us.i85
  %i.cf = sext i32 %.1.us.i.lcssa to i64
  %i.cg = shl nsw i64 %i.cf, 3                    ; 2 uses
  %i.ch = tail call noalias ptr @malloc(i64 noundef %i.cg) #16 ; 6 uses
  %i.ci = icmp sgt i32 %.1.us.i.lcssa, 0
  br i1 %i.ci, label %.lr.ph86.us.preheader.i, label %._crit_edge90.us.i

.lr.ph86.us.preheader.i:                          ; preds = %bb.s
  %wide.trip.count113.i = zext nneg i32 %.1.us.i.lcssa to i64 ; 5 uses
  br label %.lr.ph86.us.i

.lr.ph86.us.i:                                    ; preds = %.lr.ph86.us.i, %.lr.ph86.us.preheader.i
  %indvars.iv109.i = phi i64 [ 0, %.lr.ph86.us.preheader.i ], [ %indvars.iv.next110.i, %.lr.ph86.us.i ] ; 2 uses
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.cg) #16
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv109.i
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !27
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %exitcond114.not.i = icmp eq i64 %indvars.iv.next110.i, %wide.trip.count113.i
  br i1 %exitcond114.not.i, label %.lr.ph89.us.i, label %.lr.ph86.us.i, !llvm.loop !55

bb.t:                                             ; preds = %.lr.ph89.us.i, %.unr-lcssa
  %indvars.iv115.i = phi i64 [ 0, %.lr.ph89.us.i ], [ %indvars.iv.next116.i, %.unr-lcssa ] ; 13 uses
  %i.cl = sub nsw i64 %wide.trip.count113.i, %indvars.iv115.i
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv115.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !8
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !27 ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv115.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !27 ; 3 uses
  %xtraiter93 = and i64 %i.cl, 1
  %lcmp.mod94.not = icmp eq i64 %xtraiter93, 0
  br i1 %lcmp.mod94.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.t
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv115.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !8
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !29 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv115.i
  store double %i.cx, ptr %i.cy, align 8, !tbaa !29
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv115.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !27
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv115.i
  store double %i.cx, ptr %i.db, align 8, !tbaa !29
  %indvars.iv.next118.i.prol = add nuw nsw i64 %indvars.iv115.i, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.t
  %indvars.iv117.i.unr = phi i64 [ %indvars.iv115.i, %bb.t ], [ %indvars.iv.next118.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.dc = icmp eq i64 %indvars.iv115.i, %i.ei
  br i1 %i.dc, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv117.i = phi i64 [ %indvars.iv.next118.i.1, %.new ], [ %indvars.iv117.i.unr, %.prol.loopexit ] ; 5 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv117.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !8
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !29 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv117.i
  store double %i.dh, ptr %i.di, align 8, !tbaa !29
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv117.i
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !27
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv115.i
  store double %i.dh, ptr %i.dl, align 8, !tbaa !29
  %indvars.iv.next118.i = add nuw nsw i64 %indvars.iv117.i, 1 ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.next118.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !8
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !29 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next118.i
  store double %i.dq, ptr %i.dr, align 8, !tbaa !29
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next118.i
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !27
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv115.i
  store double %i.dq, ptr %i.du, align 8, !tbaa !29
  %indvars.iv.next118.i.1 = add nuw nsw i64 %indvars.iv117.i, 2 ; 2 uses
  %exitcond122.not.i.1 = icmp eq i64 %indvars.iv.next118.i.1, %wide.trip.count113.i
  br i1 %exitcond122.not.i.1, label %.unr-lcssa, label %.new, !llvm.loop !56

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %indvars.iv.next116.i = add nuw nsw i64 %indvars.iv115.i, 1 ; 2 uses
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next116.i, %wide.trip.count113.i
  br i1 %exitcond126.not.i, label %._crit_edge90.us.i, label %bb.t, !llvm.loop !57

._crit_edge90.us.i:                               ; preds = %.unr-lcssa, %bb.s
  %i.dv = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i32 %.1.us.i.lcssa, ptr %i.dw, align 8, !tbaa !12
  store ptr %i.ch, ptr %i.dv, align 8, !tbaa !26
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv127.i
  store ptr %i.dv, ptr %i.dx, align 8, !tbaa !58
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; 2 uses
  %exitcond131.not.i = icmp eq i64 %indvars.iv.next128.i, %wide.trip.count130.i
  br i1 %exitcond131.not.i, label %split_com_mat.exit, label %.preheader80.us.i, !llvm.loop !60

._crit_edge.us.i85.unr-lcssa:                     ; preds = %bb.r
  br i1 %lcmp.mod.not, label %._crit_edge.us.i85, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i85.unr-lcssa, %.preheader80.us.i
  %indvars.iv104.i.epil.init = phi i64 [ 0, %.preheader80.us.i ], [ %indvars.iv.next105.i.1, %._crit_edge.us.i85.unr-lcssa ] ; 2 uses
  %.083.us.i.epil.init = phi i32 [ 0, %.preheader80.us.i ], [ %.1.us.i.1, %._crit_edge.us.i85.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv104.i.epil.init
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !8
  %i.ea = zext i32 %i.dz to i64
  %i.eb = icmp eq i64 %indvars.iv127.i, %i.ea
  br i1 %i.eb, label %bb.u, label %._crit_edge.us.i85

bb.u:                                             ; preds = %.epil.preheader
  %i.ec = add nsw i32 %.083.us.i.epil.init, 1
  %i.ed = sext i32 %.083.us.i.epil.init to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.ed
  %i.ef = trunc nuw nsw i64 %indvars.iv104.i.epil.init to i32
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !8
  br label %._crit_edge.us.i85

._crit_edge.us.i85:                               ; preds = %.epil.preheader, %bb.u, %._crit_edge.us.i85.unr-lcssa
  %.1.us.i.lcssa = phi i32 [ %.1.us.i.1, %._crit_edge.us.i85.unr-lcssa ], [ %i.ec, %bb.u ], [ %.083.us.i.epil.init, %.epil.preheader ] ; 6 uses
  %i.eg = icmp sgt i32 %.1.us.i.lcssa, %i.ax
  br i1 %i.eg, label %.split.us.loopexit.i, label %bb.s

.lr.ph89.us.i:                                    ; preds = %.lr.ph86.us.i
  %i.eh = load ptr, ptr %1, align 8, !tbaa !26
  %i.ei = add nsw i64 %wide.trip.count113.i, -1
  br label %bb.t

.preheader80.lr.ph.split.i:                       ; preds = %.preheader80.lr.ph.i
  %i.ej = icmp slt i32 %i.ax, 0
  br i1 %i.ej, label %.split.us.i, label %.preheader80.preheader.i

.preheader80.preheader.i:                         ; preds = %.preheader80.lr.ph.split.i
  %wide.trip.count.i81 = zext nneg i32 %i.d to i64
  br label %.preheader80.i

.preheader80.i:                                   ; preds = %.preheader80.i, %.preheader80.preheader.i
  %indvars.iv.i82 = phi i64 [ 0, %.preheader80.preheader.i ], [ %indvars.iv.next.i83, %.preheader80.i ] ; 2 uses
  %i.ek = tail call noalias ptr @malloc(i64 noundef 0) #16
  %i.el = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i32 0, ptr %i.em, align 8, !tbaa !12
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !26
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.i82
  store ptr %i.el, ptr %i.en, align 8, !tbaa !58
  %indvars.iv.next.i83 = add nuw nsw i64 %indvars.iv.i82, 1 ; 2 uses
  %exitcond.not.i84 = icmp eq i64 %indvars.iv.next.i83, %wide.trip.count.i81
  br i1 %exitcond.not.i84, label %split_com_mat.exit, label %.preheader80.i, !llvm.loop !60

.split.us.loopexit.i:                             ; preds = %._crit_edge.us.i85
  %i.eo = trunc nuw nsw i64 %indvars.iv127.i to i32
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.loopexit.i, %.preheader80.lr.ph.split.i
  %.us-phi.i = phi i32 [ 0, %.preheader80.lr.ph.split.i ], [ %i.eo, %.split.us.loopexit.i ]
  %.us-phi93.i = phi i32 [ 0, %.preheader80.lr.ph.split.i ], [ %.1.us.i.lcssa, %.split.us.loopexit.i ]
  %i.ep = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.split.us.i
  %i.er = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.es = tail call i64 @fwrite(ptr nonnull @.str.18, i64 11, i64 1, ptr %i.er) #18 ; 0 uses
  tail call void @tm_print_1D_tab(ptr noundef %i.r, i32 noundef %2) #15
  %i.et = load ptr, ptr %1, align 8, !tbaa !26
  %i.eu = load i32, ptr %i.bl, align 8, !tbaa !12
  tail call void @tm_display_tab(ptr noundef %i.et, i32 noundef %i.eu) #15
  %i.ev = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ew = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ev, ptr noundef nonnull @.str.21, i32 noundef %.us-phi93.i, i32 noundef %i.ax, i32 noundef %2, i32 noundef %i.d, i32 noundef %.us-phi.i) #14 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.split.us.i
  tail call void @exit(i32 noundef -1) #19
  unreachable

split_com_mat.exit:                               ; preds = %.preheader80.i, %._crit_edge90.us.i, %bb.n
  tail call void @free(ptr noundef %i.bj) #15
  %i.ex = tail call noalias ptr @malloc(i64 noundef %i.az) #16 ; 6 uses
  %i.ey = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.ez = icmp sgt i32 %i.ey, 5
  br i1 %i.ez, label %bb.x, label %bb.y

bb.x:                                             ; preds = %split_com_mat.exit
  %i.fa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18) ; 0 uses
  tail call void @tm_print_1D_tab(ptr noundef %i.r, i32 noundef %2) #15
  %i.fb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22) ; 0 uses
  tail call void @tm_print_1D_tab(ptr noundef %5, i32 noundef %2) #15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %split_com_mat.exit
  br i1 %i.bk, label %.lr.ph33.i, label %split_vertices.exit

.lr.ph33.i:                                       ; preds = %bb.y
  %i.fc = icmp sgt i32 %2, 0
  %wide.trip.count45.i = zext nneg i32 %i.d to i64 ; 2 uses
  br i1 %i.fc, label %.lr.ph.us.preheader.i, label %.lr.ph33.split.i.a

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph33.i
  %wide.trip.count40.i = zext nneg i32 %2 to i64  ; 2 uses
  %xtraiter96 = and i64 %wide.trip.count40.i, 1
  %i.fd = icmp eq i32 %2, 1
  %unroll_iter99 = and i64 %wide.trip.count40.i, 2147483646
  %lcmp.mod97.not = icmp eq i64 %xtraiter96, 0
  %lcmp.mod98 = trunc i32 %2 to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.ae, %.lr.ph.us.preheader.i
  %indvars.iv42.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next43.i, %bb.ae ] ; 6 uses
  %i.fe = tail call noalias ptr @malloc(i64 noundef %i.bi) #16 ; 5 uses
  br i1 %i.fd, label %.epil.preheader95, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %bb.ac
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i.1, %bb.ac ], [ 0, %.lr.ph.us.i ] ; 4 uses
  %.02829.us.i = phi i32 [ %.1.us.i89.1, %bb.ac ], [ 0, %.lr.ph.us.i ] ; 3 uses
  %niter100 = phi i64 [ %niter100.next.1, %bb.ac ], [ 0, %.lr.ph.us.i ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv37.i
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !8
  %i.fh = zext i32 %i.fg to i64
  %i.fi = icmp eq i64 %indvars.iv42.i, %i.fh
  br i1 %i.fi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.us.i.new
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv37.i
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !8
  %i.fl = add nsw i32 %.02829.us.i, 1
  %i.fm = sext i32 %.02829.us.i to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.fm
  store i32 %i.fk, ptr %i.fn, align 4, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.us.i.new
  %.1.us.i89 = phi i32 [ %i.fl, %bb.z ], [ %.02829.us.i, %.lr.ph.us.i.new ] ; 3 uses
  %indvars.iv.next38.i = or disjoint i64 %indvars.iv37.i, 1 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next38.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !8
  %i.fq = zext i32 %i.fp to i64
  %i.fr = icmp eq i64 %indvars.iv42.i, %i.fq
  br i1 %i.fr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next38.i
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !8
  %i.fu = add nsw i32 %.1.us.i89, 1
  %i.fv = sext i32 %.1.us.i89 to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.fv
  store i32 %i.ft, ptr %i.fw, align 4, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.us.i89.1 = phi i32 [ %i.fu, %bb.ab ], [ %.1.us.i89, %bb.aa ] ; 2 uses
  %indvars.iv.next38.i.1 = add nuw nsw i64 %indvars.iv37.i, 2 ; 2 uses
  %niter100.next.1 = add i64 %niter100, 2         ; 2 uses
  %niter100.ncmp.1 = icmp eq i64 %niter100.next.1, %unroll_iter99
  br i1 %niter100.ncmp.1, label %._crit_edge.us.i90.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !61

bb.ad:                                            ; preds = %._crit_edge.us.i90
  %i.fx = trunc nuw nsw i64 %indvars.iv42.i to i32
  %i.fy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.fx) ; 0 uses
  tail call void @tm_print_1D_tab(ptr noundef %i.fe, i32 noundef %i.ax) #15
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.us.i90, %bb.ad
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %wide.trip.count45.i
  br i1 %exitcond46.not.i, label %split_vertices.exit, label %.lr.ph.us.i, !llvm.loop !62

._crit_edge.us.i90.unr-lcssa:                     ; preds = %bb.ac
  br i1 %lcmp.mod97.not, label %._crit_edge.us.i90, label %.epil.preheader95

.epil.preheader95:                                ; preds = %._crit_edge.us.i90.unr-lcssa, %.lr.ph.us.i
  %indvars.iv37.i.epil.init = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next38.i.1, %._crit_edge.us.i90.unr-lcssa ] ; 2 uses
  %.02829.us.i.epil.init = phi i32 [ 0, %.lr.ph.us.i ], [ %.1.us.i89.1, %._crit_edge.us.i90.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod98)
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv37.i.epil.init
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !8
  %i.gb = zext i32 %i.ga to i64
  %i.gc = icmp eq i64 %indvars.iv42.i, %i.gb
  br i1 %i.gc, label %bb.af, label %._crit_edge.us.i90

bb.af:                                            ; preds = %.epil.preheader95
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv37.i.epil.init
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !8
  %i.gf = sext i32 %.02829.us.i.epil.init to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.gf
  store i32 %i.ge, ptr %i.gg, align 4, !tbaa !8
  br label %._crit_edge.us.i90

._crit_edge.us.i90:                               ; preds = %.epil.preheader95, %bb.af, %._crit_edge.us.i90.unr-lcssa
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv42.i
  store ptr %i.fe, ptr %i.gh, align 8, !tbaa !63
  %i.gi = load i32, ptr @verbose_level, align 4, !tbaa !8
  %i.gj = icmp sgt i32 %i.gi, 5
  br i1 %i.gj, label %bb.ad, label %bb.ae

.lr.ph33.split.i.a:                               ; preds = %.lr.ph33.i, %bb.ah
  %indvars.iv.i86 = phi i64 [ %indvars.iv.next.i87.a, %bb.ah ], [ 0, %.lr.ph33.i ] ; 3 uses
  %i.gk = tail call noalias ptr @malloc(i64 noundef %i.bi) #16 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.i86
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !63
  %10 = load i32, ptr @verbose_level, align 4, !tbaa !8
  %11 = icmp sgt i32 %10, 5
  br i1 %11, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph33.split.i.a
  %i.gm = trunc nuw nsw i64 %indvars.iv.i86 to i32
  %i.gn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.gm) ; 0 uses
  tail call void @tm_print_1D_tab(ptr noundef %i.gk, i32 noundef %i.ax) #15
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph33.split.i.a
  %indvars.iv.next.i87.a = add nuw nsw i64 %indvars.iv.i86, 1 ; 2 uses
  %exitcond.not.i88.a = icmp eq i64 %indvars.iv.next.i87.a, %wide.trip.count45.i
  br i1 %exitcond.not.i88.a, label %split_vertices.exit, label %.lr.ph33.split.i.a, !llvm.loop !62

split_vertices.exit:                              ; preds = %bb.ah, %bb.ae, %bb.y
  %i.go = tail call i32 @tm_get_verbose_level() #15
  %.fr51.i = freeze i32 %i.go                     ; 2 uses
  %i.gp = tail call noalias ptr @calloc(i64 noundef %i.ay, i64 noundef 16) #17 ; 6 uses
  %i.gq = add nsw i32 %3, 1                       ; 2 uses
  %i.gr = tail call i32 @tm_compute_nb_leaves_from_level(i32 noundef %i.gq, ptr noundef nonnull %4) #15 ; 4 uses
  br i1 %i.bk, label %.lr.ph.i, label %split_constraints.exit.thread

split_constraints.exit.thread:                    ; preds = %split_vertices.exit
  %i.gs = tail call noalias ptr @calloc(i64 noundef %i.ay, i64 noundef 8) #17
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %split_vertices.exit
  %i.gt = icmp sgt i32 %.fr51.i, 5
  %wide.trip.count63.i = zext nneg i32 %i.d to i64 ; 2 uses
  br i1 %i.gt, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.ai
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %bb.ai ], [ 0, %.lr.ph.i ] ; 3 uses
  %.04348.us.i = phi i32 [ %i.gy, %bb.ai ], [ 0, %.lr.ph.i ] ; 2 uses
  %indvars62.i = trunc i64 %indvars.iv60.i to i32 ; 4 uses
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %indvars.iv60.i ; 4 uses
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 3 uses
  %i.gv = mul nsw i32 %i.gr, %indvars62.i
  %i.gw = trunc i64 %indvars.iv.next61.i to i32
  %i.gx = mul i32 %i.gr, %i.gw
  %i.gy = tail call i32 @tm_fill_tab(ptr noundef %i.gu, ptr noundef %6, i32 noundef %7, i32 noundef %.04348.us.i, i32 noundef %i.gx, i32 noundef %i.gv) #15 ; 2 uses
  %i.gz = sub nsw i32 %i.gy, %.04348.us.i         ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store i32 %i.gz, ptr %i.ha, align 8, !tbaa !64
  %i.hb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %indvars62.i) ; 0 uses
  %i.hc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25) ; 0 uses
  tail call void @tm_print_1D_tab(ptr noundef %6, i32 noundef %7) #15
  %i.hd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26) ; 0 uses
  %i.he = load ptr, ptr %i.gu, align 8, !tbaa !66
  tail call void @tm_print_1D_tab(ptr noundef %i.he, i32 noundef %i.gz) #15
  %i.hf = icmp sgt i32 %i.gz, %i.ax
  br i1 %i.hf, label %.split.us.i94, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.split.us.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 %indvars62.i, ptr %i.hg, align 4, !tbaa !67
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next61.i, %wide.trip.count63.i
  br i1 %exitcond64.not.i, label %split_constraints.exit, label %.lr.ph.split.us.i, !llvm.loop !68

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.al
  %indvars.iv.i91 = phi i64 [ %indvars.iv.next.i92, %bb.al ], [ 0, %.lr.ph.i ] ; 3 uses
  %.04348.i = phi i32 [ %i.hl, %bb.al ], [ 0, %.lr.ph.i ] ; 2 uses
  %indvars59.i = trunc i64 %indvars.iv.i91 to i32 ; 3 uses
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %indvars.iv.i91 ; 3 uses
  %indvars.iv.next.i92 = add nuw nsw i64 %indvars.iv.i91, 1 ; 3 uses
  %i.hi = mul nsw i32 %i.gr, %indvars59.i
  %i.hj = trunc i64 %indvars.iv.next.i92 to i32
  %i.hk = mul i32 %i.gr, %i.hj
  %i.hl = tail call i32 @tm_fill_tab(ptr noundef %i.hh, ptr noundef %6, i32 noundef %7, i32 noundef %.04348.i, i32 noundef %i.hk, i32 noundef %i.hi) #15 ; 2 uses
  %i.hm = sub nsw i32 %i.hl, %.04348.i            ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store i32 %i.hm, ptr %i.hn, align 8, !tbaa !64
  %i.ho = icmp sgt i32 %i.hm, %i.ax
  br i1 %i.ho, label %.split.us.i94, label %bb.al

.split.us.i94:                                    ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  %.us-phi.i95 = phi i32 [ %i.gz, %.lr.ph.split.us.i ], [ %i.hm, %.lr.ph.split.i ]
  %.us-phi50.i = phi i32 [ %indvars62.i, %.lr.ph.split.us.i ], [ %indvars59.i, %.lr.ph.split.i ]
  %i.hp = icmp sgt i32 %.fr51.i, 1
  br i1 %i.hp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.split.us.i94
  %i.hq = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.hr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hq, ptr noundef nonnull @.str.27, i32 noundef %.us-phi50.i, i32 noundef %2, i32 noundef %i.d, i32 noundef %.us-phi.i95) #14 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.split.us.i94
  tail call void @free(ptr noundef nonnull %i.gp) #15
  br label %split_constraints.exit

bb.al:                                            ; preds = %.lr.ph.split.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 %indvars59.i, ptr %i.hs, align 4, !tbaa !67
  %exitcond.not.i93 = icmp eq i64 %indvars.iv.next.i92, %wide.trip.count63.i
  br i1 %exitcond.not.i93, label %split_constraints.exit, label %.lr.ph.split.i, !llvm.loop !68

split_constraints.exit:                           ; preds = %bb.al, %bb.ai, %bb.ak
  %.044.i = phi ptr [ null, %bb.ak ], [ %i.gp, %bb.ai ], [ %i.gp, %bb.al ] ; 2 uses
  %i.ht = tail call noalias ptr @calloc(i64 noundef %i.ay, i64 noundef 8) #17 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph16.preheader:                               ; preds = %.lr.ph
  %wide.trip.count34 = zext nneg i32 %i.d to i64
  br label %.lr.ph16

.lr.ph:                                           ; preds = %split_constraints.exit, %.lr.ph
  %indvars.iv = phi i64 [ 0, %split_constraints.exit ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.hu = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #16
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph16.preheader, label %.lr.ph, !llvm.loop !70

.lr.ph16:                                         ; preds = %.lr.ph16.preheader, %.lr.ph16
  %indvars.iv31 = phi i64 [ 0, %.lr.ph16.preheader ], [ %indvars.iv.next32, %.lr.ph16 ] ; 6 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv31
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !69 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  %i.hz = trunc nuw nsw i64 %indvars.iv31 to i32
  store i32 %i.hz, ptr %i.hy, align 8, !tbaa !43
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv31
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !58
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv31
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !63
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %.044.i, i64 %indvars.iv31 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !66
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !64
  tail call fastcc void @kpartition_build_level_topology(ptr noundef %i.hx, ptr noundef %i.ib, i32 noundef %i.ax, i32 noundef %i.gq, ptr noundef nonnull %4, ptr noundef %i.id, ptr noundef %i.if, i32 noundef %i.ih)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store ptr %0, ptr %i.ii, align 8, !tbaa !71
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %._crit_edge, label %.lr.ph16, !llvm.loop !72

._crit_edge:                                      ; preds = %.lr.ph16, %split_constraints.exit.thread
  %.044.i4951 = phi ptr [ %i.gp, %split_constraints.exit.thread ], [ %.044.i, %.lr.ph16 ] ; 3 uses
  %i.ij = phi ptr [ %i.gs, %split_constraints.exit.thread ], [ %i.ht, %.lr.ph16 ]
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !43
  tail call void @tm_set_node(ptr noundef %0, ptr noundef %i.ij, i32 noundef %i.d, ptr noundef null, i32 noundef %i.il, double noundef 0.000000e+00, ptr noundef null, i32 noundef %3) #15
  tail call void @free(ptr noundef %i.r) #15
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %free_tab_com_mat.exit, label %.preheader17.i

.preheader17.i:                                   ; preds = %._crit_edge
  br i1 %i.bk, label %.preheader.preheader.i, label %._crit_edge23.i

.preheader.preheader.i:                           ; preds = %.preheader17.i
  %wide.trip.count.i96 = zext nneg i32 %i.d to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv26.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next27.i, %._crit_edge.i ] ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv26.i
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !58 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !12
  %i.iq = icmp sgt i32 %i.ip, 0
  br i1 %i.iq, label %.lr.ph.i98, label %._crit_edge.i

.lr.ph.i98:                                       ; preds = %.preheader.i, %.lr.ph.i98
  %indvars.iv.i99 = phi i64 [ %indvars.iv.next.i100, %.lr.ph.i98 ], [ 0, %.preheader.i ] ; 2 uses
  %i.ir = load ptr, ptr %i.in, align 8, !tbaa !26
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i99
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.it) #15
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %i.iu = load i32, ptr %i.io, align 8, !tbaa !12
  %i.iv = sext i32 %i.iu to i64
  %i.iw = icmp slt i64 %indvars.iv.next.i100, %i.iv
  br i1 %i.iw, label %.lr.ph.i98, label %._crit_edge.i, !llvm.loop !73

._crit_edge.i:                                    ; preds = %.lr.ph.i98, %.preheader.i
  %i.ix = load ptr, ptr %i.in, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.ix) #15
  tail call void @free(ptr noundef nonnull %i.in) #15
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond.not.i97 = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count.i96
  br i1 %exitcond.not.i97, label %._crit_edge23.i, label %.preheader.i, !llvm.loop !74

._crit_edge23.i:                                  ; preds = %._crit_edge.i, %.preheader17.i
  tail call void @free(ptr noundef nonnull %i.ba) #15
  br label %free_tab_com_mat.exit

free_tab_com_mat.exit:                            ; preds = %._crit_edge, %._crit_edge23.i
  %.not.i101 = icmp eq ptr %i.ex, null
  br i1 %.not.i101, label %free_tab_local_vertices.exit, label %.preheader.i102

.preheader.i102:                                  ; preds = %free_tab_com_mat.exit
  br i1 %i.bk, label %.lr.ph.preheader.i, label %._crit_edge.i103

.lr.ph.preheader.i:                               ; preds = %.preheader.i102
  %wide.trip.count.i104 = zext nneg i32 %i.d to i64
  br label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.lr.ph.i105, %.lr.ph.preheader.i
  %indvars.iv.i106 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i107, %.lr.ph.i105 ] ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.i106
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !63
  tail call void @free(ptr noundef %i.iz) #15
  %indvars.iv.next.i107 = add nuw nsw i64 %indvars.iv.i106, 1 ; 2 uses
  %exitcond.not.i108 = icmp eq i64 %indvars.iv.next.i107, %wide.trip.count.i104
  br i1 %exitcond.not.i108, label %._crit_edge.i103, label %.lr.ph.i105, !llvm.loop !75

._crit_edge.i103:                                 ; preds = %.lr.ph.i105, %.preheader.i102
  tail call void @free(ptr noundef nonnull %i.ex) #15
  br label %free_tab_local_vertices.exit

free_tab_local_vertices.exit:                     ; preds = %free_tab_com_mat.exit, %._crit_edge.i103
  %.not.i109 = icmp eq ptr %.044.i4951, null
  br i1 %.not.i109, label %free_const_tab.exit, label %.preheader.i110

.preheader.i110:                                  ; preds = %free_tab_local_vertices.exit
  br i1 %i.bk, label %.lr.ph.preheader.i112, label %._crit_edge.i111

.lr.ph.preheader.i112:                            ; preds = %.preheader.i110
  %wide.trip.count.i113 = zext nneg i32 %i.d to i64
  br label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %bb.an, %.lr.ph.preheader.i112
  %indvars.iv.i115 = phi i64 [ 0, %.lr.ph.preheader.i112 ], [ %indvars.iv.next.i116, %bb.an ] ; 2 uses
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %.044.i4951, i64 %indvars.iv.i115 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !64
  %.not9.i = icmp eq i32 %i.jc, 0
  br i1 %.not9.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i114
  %i.jd = load ptr, ptr %i.ja, align 8, !tbaa !66
  tail call void @free(ptr noundef %i.jd) #15
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i114
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i115, 1 ; 2 uses
  %exitcond.not.i117 = icmp eq i64 %indvars.iv.next.i116, %wide.trip.count.i113
  br i1 %exitcond.not.i117, label %._crit_edge.i111, label %.lr.ph.i114, !llvm.loop !76

._crit_edge.i111:                                 ; preds = %bb.an, %.preheader.i110
  tail call void @free(ptr noundef nonnull %.044.i4951) #15
  br label %free_const_tab.exit

free_const_tab.exit:                              ; preds = %._crit_edge.i111, %free_tab_local_vertices.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare hidden void @tm_print_1D_tab(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

declare hidden i64 @tm_genrand_int32() local_unnamed_addr #5

declare hidden void @tm_set_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, double noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare hidden void @tm_display_tab(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

declare hidden i32 @tm_compute_nb_leaves_from_level(i32 noundef, ptr noundef) local_unnamed_addr #5

declare hidden i32 @tm_fill_tab(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { cold }
attributes #19 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !5, i64 8}
!13 = !{!"_com_mat_t", !14, i64 0, !5, i64 8}
!14 = !{!"p2 double", !15, i64 0}
!15 = !{!"any p2 pointer", !11, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17, !19, !20}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !17, !20, !19}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = !{!13, !14, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 double", !11, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"double", !6, i64 0}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = !{!37, !5, i64 84}
!37 = !{!"", !38, i64 0, !5, i64 8, !39, i64 16, !5, i64 24, !38, i64 32, !38, i64 40, !39, i64 48, !40, i64 56, !28, i64 64, !38, i64 72, !5, i64 80, !5, i64 84, !5, i64 88}
!38 = !{!"p1 int", !11, i64 0}
!39 = !{!"p1 long", !11, i64 0}
!40 = !{!"p2 int", !15, i64 0}
!41 = distinct !{!41, !17, !19, !20}
!42 = distinct !{!42, !17, !20, !19}
!43 = !{!44, !5, i64 48}
!44 = !{!"_tm_tree_t", !5, i64 0, !45, i64 8, !46, i64 16, !46, i64 24, !30, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !47, i64 64, !5, i64 72}
!45 = !{!"p2 _ZTS10_tm_tree_t", !15, i64 0}
!46 = !{!"p1 _ZTS10_tm_tree_t", !11, i64 0}
!47 = !{!"p1 _ZTS11_job_info_t", !11, i64 0}
!48 = !{!44, !5, i64 0}
!49 = !{!37, !38, i64 0}
!50 = !{!37, !5, i64 8}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = !{!59, !59, i64 0}
!59 = !{!"p1 _ZTS10_com_mat_t", !11, i64 0}
!60 = distinct !{!60, !17}
!61 = distinct !{!61, !17}
!62 = distinct !{!62, !17}
!63 = !{!38, !38, i64 0}
!64 = !{!65, !5, i64 8}
!65 = !{!"", !38, i64 0, !5, i64 8, !5, i64 12}
!66 = !{!65, !38, i64 0}
!67 = !{!65, !5, i64 12}
!68 = distinct !{!68, !17}
!69 = !{!46, !46, i64 0}
!70 = distinct !{!70, !17}
!71 = !{!44, !46, i64 16}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = distinct !{!74, !17}
!75 = distinct !{!75, !17}
!76 = distinct !{!76, !17}
end_hunk_0
