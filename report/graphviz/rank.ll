inline.NumInlined: 62
inline.NumDeleted: 36
begin_hunk_0_@collapse_sets:bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 328
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !116
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.s
  %i.cn = phi ptr [ %i.cg, %bb.v ], [ %i.cl, %bb.w ], [ %i.bz, %bb.s ], [ %i.ce, %bb.t ]
  switch i32 %.0.i25, label %collapse_cluster.exit [
    i32 3, label %.sink.split.i
    i32 5, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.y, %bb.x
  %.sink38.i = phi i64 [ 328, %bb.y ], [ 320, %bb.x ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sink38.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !50
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 233
  store i8 %i.bl, ptr %i.cs, align 1, !tbaa !118
  br label %collapse_cluster.exit

bb.z:                                             ; preds = %rank_set_class.exit
  tail call fastcc void @collapse_sets(ptr noundef %0, ptr noundef nonnull %.027)
  br label %collapse_cluster.exit

collapse_cluster.exit:                            ; preds = %.lr.ph32.i, %.sink.split.i, %bb.x, %._crit_edge.i, %bb.p, %dot_scan_ranks.exit, %bb.d, %bb.c, %._crit_edge.i21, %bb.z
  %i.ct = tail call ptr @agnxtsubg(ptr noundef nonnull %.027) #16 ; 2 uses
  %.not = icmp eq ptr %i.ct, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !159

._crit_edge:                                      ; preds = %collapse_cluster.exit, %bb.a
  ret void
}

declare void @class1(ptr noundef) local_unnamed_addr #2

declare void @decompose(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @acyclic(ptr noundef) local_unnamed_addr #2

declare ptr @agfstout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agnxtout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agfstsubg(ptr noundef) local_unnamed_addr #2

declare ptr @agnxtsubg(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @is_a_cluster(ptr noundef) local_unnamed_addr #2

declare i32 @maptoken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @node_induce(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @agfstnode(ptr noundef %1) #16 ; 2 uses
  %.not43 = icmp eq ptr %i.a, null
  br i1 %.not43, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph46, %bb.f
  %.03444 = phi ptr [ %i.a, %.lr.ph46 ], [ %i.c, %bb.f ] ; 5 uses
  %i.c = tail call ptr @agnxtnode(ptr noundef %1, ptr noundef nonnull %.03444) #16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.03444, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 233
  %i.g = load i8, ptr %i.f, align 1, !tbaa !118
  %.not38 = icmp eq i8 %i.g, 0
  br i1 %.not38, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 236
  %i.j = load i32, ptr %i.i, align 4, !tbaa !52
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %.lr.ph, label %._crit_edge.thread

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @agdelete(ptr noundef %1, ptr noundef nonnull %.03444) #16 ; 0 uses
  br label %bb.f

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 1, %.preheader ] ; 3 uses
  %i.m = phi ptr [ %.pre.pre, %bb.d ], [ %i.h, %.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !124
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !125
  %i.r = tail call i32 @agcontains(ptr noundef %i.q, ptr noundef nonnull %.03444) #16
  %.not39 = icmp eq i32 %i.r, 0
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !8 ; 3 uses
  br i1 %.not39, label %bb.d, label %.lr.ph.._crit_edge.loopexit_crit_edge

.lr.ph.._crit_edge.loopexit_crit_edge:            ; preds = %.lr.ph
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 236
  %.pre59.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !52
  br label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 236
  %i.t = load i32, ptr %i.s, align 4, !tbaa !52   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !160

._crit_edge:                                      ; preds = %bb.d, %.lr.ph.._crit_edge.loopexit_crit_edge
  %.pre59 = phi i32 [ %.pre59.pre, %.lr.ph.._crit_edge.loopexit_crit_edge ], [ %i.t, %bb.d ]
  %.0.lcssa.ph.in = phi i64 [ %indvars.iv, %.lr.ph.._crit_edge.loopexit_crit_edge ], [ %indvars.iv.next, %bb.d ]
  %.0.lcssa.ph = trunc i64 %.0.lcssa.ph.in to i32
  %i.w = icmp sgt i32 %.pre59, %.0.lcssa.ph
  br i1 %i.w, label %bb.e, label %._crit_edge.thread

bb.e:                                             ; preds = %._crit_edge
  %i.x = tail call i32 @agdelete(ptr noundef %1, ptr noundef nonnull %.03444) #16 ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %bb.e, %._crit_edge
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 336
  store ptr null, ptr %i.z, align 8, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread, %bb.c
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge47, label %bb.b, !llvm.loop !161

._crit_edge47:                                    ; preds = %bb.f, %bb.a
  %i.aa = tail call ptr @agfstnode(ptr noundef %1) #16 ; 2 uses
  %.not3553 = icmp eq ptr %i.aa, null
  br i1 %.not3553, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %._crit_edge47, %._crit_edge52
  %.154 = phi ptr [ %i.an, %._crit_edge52 ], [ %i.aa, %._crit_edge47 ] ; 2 uses
  %i.ab = tail call ptr @dot_root(ptr noundef %1) #16
  %i.ac = tail call ptr @agfstout(ptr noundef %i.ab, ptr noundef nonnull %.154) #16 ; 2 uses
  %.not3648 = icmp eq ptr %i.ac, null
  br i1 %.not3648, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %.lr.ph56, %bb.h
  %.03349 = phi ptr [ %i.am, %bb.h ], [ %i.ac, %.lr.ph56 ] ; 4 uses
  %i.ad = load i32, ptr %.03349, align 8
  %i.ae = and i32 %i.ad, 3
  %i.af = icmp eq i32 %i.ae, 2
  %i.ag = select i1 %i.af, i64 56, i64 -8
  %i.ah = getelementptr inbounds i8, ptr %.03349, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !71
  %i.aj = tail call i32 @agcontains(ptr noundef %1, ptr noundef %i.ai) #16
  %.not37 = icmp eq i32 %i.aj, 0
  br i1 %.not37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph51
  %i.ak = tail call ptr @agsubedge(ptr noundef %1, ptr noundef nonnull %.03349, i32 noundef 1) #16 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph51, %bb.g
  %i.al = tail call ptr @dot_root(ptr noundef %1) #16
  %i.am = tail call ptr @agnxtout(ptr noundef %i.al, ptr noundef nonnull %.03349) #16 ; 2 uses
  %.not36 = icmp eq ptr %i.am, null
  br i1 %.not36, label %._crit_edge52, label %.lr.ph51, !llvm.loop !162

._crit_edge52:                                    ; preds = %bb.h, %.lr.ph56
  %i.an = tail call ptr @agnxtnode(ptr noundef %1, ptr noundef nonnull %.154) #16 ; 2 uses
  %.not35 = icmp eq ptr %i.an, null
  br i1 %.not35, label %._crit_edge57, label %.lr.ph56, !llvm.loop !163

._crit_edge57:                                    ; preds = %._crit_edge52, %._crit_edge47
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @make_new_cluster(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 236 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !52   ; 3 uses
  %i.e = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.e, ptr %i.c, align 4, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124  ; 2 uses
  %i.h = sext i32 %i.e to i64                     ; 2 uses
  %i.i = add nsw i32 %i.d, 2                      ; 2 uses
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = icmp slt i32 %i.d, -2
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !85
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.9, i64 noundef %i.j, i64 noundef 8) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = shl nsw i64 %i.h, 3                      ; 3 uses
  %i.o = shl nuw nsw i64 %i.j, 3                  ; 4 uses
  %i.p = icmp eq i32 %i.i, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.g) #16
  br label %gv_recalloc.exit

bb.e:                                             ; preds = %bb.c
  %i.q = tail call ptr @realloc(ptr noundef %i.g, i64 noundef range(i64 0, -7) %i.o) #20 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %2

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !85
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.10, i64 noundef range(i64 0, -7) %i.o) #18 ; 0 uses
  tail call fastcc void @graphviz_exit() #19
  unreachable

2:                                                ; preds = %bb.e
  %3 = icmp ugt i64 %i.o, %i.n
  br i1 %3, label %bb.g, label %gv_recalloc.exit

bb.g:                                             ; preds = %2
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  %i.v = sub nuw nsw i64 %i.o, %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.u, i8 0, i64 %i.v, i1 false)
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.d, %2, %bb.g
  %.0.i.i = phi ptr [ null, %bb.d ], [ %i.q, %bb.g ], [ %i.q, %2 ] ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  store ptr %.0.i.i, ptr %i.x, align 8, !tbaa !124
  %i.y = getelementptr inbounds [8 x i8], ptr %.0.i.i, i64 %i.h
  store ptr %1, ptr %i.y, align 8, !tbaa !125
  tail call void @do_graph_label(ptr noundef %1) #16
  ret void
}

declare i32 @agdelete(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @agcontains(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dot_root(ptr noundef) local_unnamed_addr #2

declare ptr @agsubedge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @do_graph_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #5 {
bb.a:
  tail call void @exit(i32 noundef 1) #21
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare ptr @UF_union(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @UF_find(ptr noundef) local_unnamed_addr #2

declare void @reverse_edge(ptr noundef) local_unnamed_addr #2

declare ptr @virtual_edge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UF_singleton(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @set_minmax(ptr nofree noundef readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.h = load i32, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 2 uses
  %i.j = load <2 x i32>, ptr %i.i, align 8, !tbaa !83
  %i.k = insertelement <2 x i32> poison, i32 %i.h, i64 0
  %i.l = shufflevector <2 x i32> %i.k, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.m = add nsw <2 x i32> %i.j, %i.l
  store <2 x i32> %i.m, ptr %i.i, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.o = load i32, ptr %i.n, align 4, !tbaa !52
  %.not8 = icmp slt i32 %i.o, 1
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %i.p = phi ptr [ %i.u, %.lr.ph ], [ %i.b, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !124
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !125
  tail call fastcc void @set_minmax(ptr noundef %i.t)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 236
  %i.w = load i32, ptr %i.v, align 4, !tbaa !52
  %i.x = sext i32 %i.w to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.x
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !164

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_sort_(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @edge_ptr_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !102    ; 2 uses
  %i.c = icmp ult ptr %i.a, %i.b
  %i.d = icmp ugt ptr %i.a, %i.b
  %. = zext i1 %i.d to i32
  %.0 = select i1 %i.c, i32 -1, i32 %.
  ret i32 %.0
}

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_clear_(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_free_(ptr noundef) local_unnamed_addr #2

declare ptr @agopen(ptr noundef, i32, ptr noundef) local_unnamed_addr #2

declare ptr @agbindrec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @agpushdisc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @compile_samerank(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @agfstnode(ptr noundef %0) #16
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @is_a_cluster(ptr noundef %0) #16
  br i1 %i.b, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.f = load i32, ptr %i.e, align 8, !tbaa !76
  %i.g = add nsw i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  store i32 %i.g, ptr %i.j, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 272
  store ptr %1, ptr %i.k, align 8, !tbaa !77
  tail call fastcc void @make_new_cluster(ptr noundef nonnull %1, ptr noundef %0)
  tail call fastcc void @node_induce(ptr noundef nonnull %1, ptr noundef %0)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  store i32 0, ptr %i.n, align 8, !tbaa !76
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.047 = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %1, %bb.b ] ; 5 uses
  %i.o = tail call ptr @agfstsubg(ptr noundef %0) #16 ; 2 uses
  %.not5088 = icmp eq ptr %i.o, null
  br i1 %.not5088, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.089 = phi ptr [ %i.p, %.lr.ph ], [ %i.o, %bb.f ] ; 2 uses
  tail call fastcc void @compile_samerank(ptr noundef nonnull %.089, ptr noundef %.047)
  %i.p = tail call ptr @agnxtsubg(ptr noundef nonnull %.089) #16 ; 2 uses
  %.not50 = icmp eq ptr %i.p, null
  br i1 %.not50, label %._crit_edge, label %.lr.ph, !llvm.loop !165

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %i.q = tail call zeroext i1 @is_a_cluster(ptr noundef %0) #16
  br i1 %i.q, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %._crit_edge
  %i.r = tail call ptr @agfstnode(ptr noundef %0) #16 ; 2 uses
  %.not5190 = icmp eq ptr %i.r, null
  br i1 %.not5190, label %.loopexit, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.g, %bb.i
  %.04691 = phi ptr [ %i.x, %bb.i ], [ %i.r, %bb.g ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.04691, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 336 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !75
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph93
  store ptr %0, ptr %i.u, align 8, !tbaa !75
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph93, %bb.h
  %i.x = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.04691) #16 ; 2 uses
  %.not51 = icmp eq ptr %i.x, null
  br i1 %.not51, label %.loopexit, label %.lr.ph93, !llvm.loop !166

.loopexit:                                        ; preds = %bb.i, %bb.g, %._crit_edge
  %i.y = tail call ptr @agget(ptr noundef %0, ptr noundef nonnull @.str.8) #16 ; 7 uses
  %.not.i55 = icmp eq ptr %i.y, null
  br i1 %.not.i55, label %rankset_kind.exit, label %bb.j
end_hunk_0
