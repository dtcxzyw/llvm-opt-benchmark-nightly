Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gmlparse?download=true
inline.NumInlined: 126
inline.NumDeleted: 34
begin_hunk_0_@free_edge:bb.a
bb.f:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_graph(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %.val8185 = load i64, ptr %i.b, align 8, !tbaa !44
  %.not105 = icmp eq i64 %.val8185, 0
  br i1 %.not105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %.preheader
  tail call void @gv_list_clear_(ptr noundef nonnull %i.a, i64 noundef 8) #18
  tail call void @gv_list_free_(ptr noundef nonnull %i.a) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %.val8087 = load i64, ptr %i.e, align 8, !tbaa !44
  %.not106 = icmp eq i64 %.val8087, 0
  br i1 %.not106, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.086 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.e ] ; 2 uses
  %i.g = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.a, i64 noundef %.086) #18 ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %magicptr = ptrtoint ptr %i.h to i64
  switch i64 %magicptr, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.g
  %.0.copyload20 = load ptr, ptr %i.j, align 8
  tail call void @free(ptr noundef %.0.copyload20) #18
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.g
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  tail call void %i.h(ptr noundef %i.m) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %i.n = add nuw i64 %.086, 1                     ; 2 uses
  %.val81 = load i64, ptr %i.b, align 8, !tbaa !44
  %i.o = icmp ult i64 %i.n, %.val81
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !63

._crit_edge91:                                    ; preds = %bb.i, %._crit_edge
  tail call void @gv_list_clear_(ptr noundef nonnull %i.d, i64 noundef 8) #18
  tail call void @gv_list_free_(ptr noundef nonnull %i.d) #18
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.q = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val7993 = load i64, ptr %i.q, align 8, !tbaa !44
  %.not107 = icmp eq i64 %.val7993, 0
  br i1 %.not107, label %._crit_edge97, label %.lr.ph96

.lr.ph96:                                         ; preds = %._crit_edge91
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph90, %bb.i
  %.06688 = phi i64 [ 0, %.lr.ph90 ], [ %i.z, %bb.i ] ; 2 uses
  %i.s = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.d, i64 noundef %.06688) #18 ; 2 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %magicptr76 = ptrtoint ptr %i.t to i64
  switch i64 %magicptr76, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  %.0.copyload13 = load ptr, ptr %i.v, align 8
  tail call void @free(ptr noundef %.0.copyload13) #18
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.s
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27
  tail call void %i.t(ptr noundef %i.y) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %i.z = add nuw i64 %.06688, 1                   ; 2 uses
  %.val80 = load i64, ptr %i.e, align 8, !tbaa !44
  %i.aa = icmp ult i64 %i.z, %.val80
  br i1 %i.aa, label %bb.f, label %._crit_edge91, !llvm.loop !64

._crit_edge97:                                    ; preds = %bb.m, %._crit_edge91
  tail call void @gv_list_clear_(ptr noundef nonnull %i.p, i64 noundef 8) #18
  tail call void @gv_list_free_(ptr noundef nonnull %i.p) #18
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.ac = getelementptr i8, ptr %0, i64 176       ; 2 uses
  %.val99 = load i64, ptr %i.ac, align 8, !tbaa !44
  %.not108 = icmp eq i64 %.val99, 0
  br i1 %.not108, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %._crit_edge97
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.n

bb.j:                                             ; preds = %.lr.ph96, %bb.m
  %.06594 = phi i64 [ 0, %.lr.ph96 ], [ %i.al, %bb.m ] ; 2 uses
  %i.ae = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.p, i64 noundef %.06594) #18 ; 2 uses
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !22  ; 2 uses
  %magicptr77 = ptrtoint ptr %i.af to i64
  switch i64 %magicptr77, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  %.0.copyload6 = load ptr, ptr %i.ah, align 8
  tail call void @free(ptr noundef %.0.copyload6) #18
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ae
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !27
  tail call void %i.af(ptr noundef %i.ak) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %i.al = add nuw i64 %.06594, 1                  ; 2 uses
  %.val79 = load i64, ptr %i.q, align 8, !tbaa !44
  %i.am = icmp ult i64 %i.al, %.val79
  br i1 %i.am, label %bb.j, label %._crit_edge97, !llvm.loop !65

._crit_edge103:                                   ; preds = %bb.q, %._crit_edge97
  tail call void @gv_list_clear_(ptr noundef nonnull %i.ab, i64 noundef 8) #18
  tail call void @gv_list_free_(ptr noundef nonnull %i.ab) #18
  tail call void @free(ptr noundef nonnull %0) #18
  br label %bb.r

bb.n:                                             ; preds = %.lr.ph102, %bb.q
  %.064100 = phi i64 [ 0, %.lr.ph102 ], [ %i.au, %bb.q ] ; 2 uses
  %i.an = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.ab, i64 noundef %.064100) #18 ; 2 uses
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !25 ; 2 uses
  %magicptr78 = ptrtoint ptr %i.ao to i64
  switch i64 %magicptr78, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  %.0.copyload = load ptr, ptr %i.aq, align 8
  tail call void @free(ptr noundef %.0.copyload) #18
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.an
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16
  tail call void %i.ao(ptr noundef %i.at) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o
  %i.au = add nuw i64 %.064100, 1                 ; 2 uses
  %.val = load i64, ptr %i.ac, align 8, !tbaa !44
  %i.av = icmp ult i64 %i.au, %.val
  br i1 %i.av, label %bb.n, label %._crit_edge103, !llvm.loop !66

bb.r:                                             ; preds = %bb.a, %._crit_edge103
  ret void
}

declare hidden void @gv_list_free_(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @free_attr(ptr noundef captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 8, !tbaa !32
  %1 = icmp eq i16 %i.a, 289
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 10 uses
  br i1 %1, label %2, label %._crit_edge

2:                                                ; preds = %bb.b
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %2
  %i.d = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %.val16.i = load i64, ptr %i.d, align 8, !tbaa !44
  %.not.i = icmp eq i64 %.val16.i, 0
  br i1 %.not.i, label %free_attrs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i
  %.017.i = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %bb.g ] ; 2 uses
  %i.f = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.c, i64 noundef %.017.i) #18 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %magicptr.i = ptrtoint ptr %i.g to i64
  switch i64 %magicptr.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
  %.0.copyload.i = load ptr, ptr %i.i, align 8
  tail call void @free(ptr noundef %.0.copyload.i) #18
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.f
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  tail call void %i.g(ptr noundef %i.l) #18, !inline_history !45
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.m = add nuw i64 %.017.i, 1                   ; 2 uses
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !44
  %i.n = icmp ult i64 %i.m, %.val.i
  br i1 %i.n, label %bb.d, label %free_attrs.exit, !llvm.loop !0

free_attrs.exit:                                  ; preds = %bb.g, %bb.c
  tail call void @gv_list_clear_(ptr noundef nonnull %i.c, i64 noundef 8) #18
  tail call void @gv_list_free_(ptr noundef nonnull %i.c) #18
  br label %._crit_edge

._crit_edge:                                      ; preds = %2, %bb.b, %free_attrs.exit
  %.sink = phi ptr [ %i.c, %free_attrs.exit ], [ null, %2 ], [ %i.c, %bb.b ]
  tail call void @free(ptr noundef %.sink) #18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  tail call void @free(ptr noundef %i.p) #18
  tail call void @free(ptr noundef %0) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #7 {
bb.a:
  tail call void @exit(i32 noundef 1) #25
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare hidden void @gv_list_pop_back_(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @agsubg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @agopen(ptr noundef, i32, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @addAttrs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 6 uses
  %i.b = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val160 = load i64, ptr %i.b, align 8, !tbaa !44
  %.not = icmp eq i64 %.val160, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph162

.lr.ph162:                                        ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 31         ; 74 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 72 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 16 uses
  %i.f = getelementptr i8, ptr %2, i64 31         ; 22 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 19 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %addEdgeGraphics.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph162, %addEdgeGraphics.exit
  %.0161 = phi i64 [ 0, %.lr.ph162 ], [ %i.qc, %addEdgeGraphics.exit ] ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !12
  %i.j = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %.0161) #18
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !31
  switch i16 %i.n, label %bb.fu [
    i16 269, label %bb.c
    i16 270, label %bb.cv
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %0, align 8
  %i.p = and i32 %i.o, 3
  switch i32 %i.p, label %bb.cu [
    i32 1, label %bb.d
    i32 2, label %bb.aw
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.s = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %.val.i151 = load i64, ptr %i.s, align 8, !tbaa !44
  %.not164 = icmp eq i64 %.val.i151, 0
  br i1 %.not164, label %.critedge.i, label %.lr.ph156

.critedge.loopexit.i.loopexit:                    ; preds = %bb.ag
  %i.t = icmp eq i32 %.1.i, 0
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %.critedge.loopexit.i.loopexit, %bb.d
  %.054.lcssa.i = phi ptr [ @.str.47, %bb.d ], [ @.str.47, %.lr.ph.i ], [ %.155.i, %.critedge.loopexit.i.loopexit ]
  %.052.lcssa.i = phi ptr [ @.str.47, %bb.d ], [ @.str.47, %.lr.ph.i ], [ %.153.i, %.critedge.loopexit.i.loopexit ]
  %.051.lcssa.i = phi i1 [ true, %bb.d ], [ true, %.lr.ph.i ], [ %i.t, %.critedge.loopexit.i.loopexit ]
  call void (ptr, ptr, ...) @agxbprint(ptr noundef nonnull %2, ptr noundef nonnull @.str.55, ptr noundef %.054.lcssa.i, ptr noundef %.052.lcssa.i)
  %.val.i.i = load i8, ptr %i.f, align 1, !tbaa !12 ; 3 uses
  switch i8 %.val.i.i, label %agxblen.exit.i.i.i [
    i8 -1, label %bb.e
    i8 31, label %agxbclear.exit.thread.i.i
  ]

agxblen.exit.i.i.i:                               ; preds = %.critedge.i
  %i.u = zext i8 %.val.i.i to i64
  br label %agxbsizeof.exit.i.i.i

bb.e:                                             ; preds = %.critedge.i
  %i.v = load i64, ptr %i.g, align 8, !tbaa !12
  %i.w = load i64, ptr %i.h, align 8, !tbaa !12
  br label %agxbsizeof.exit.i.i.i

agxbsizeof.exit.i.i.i:                            ; preds = %bb.e, %agxblen.exit.i.i.i
  %.0.i20.i.i.i = phi i64 [ %i.v, %bb.e ], [ %i.u, %agxblen.exit.i.i.i ]
  %.0.i14.i.i.i = phi i64 [ %i.w, %bb.e ], [ 31, %agxblen.exit.i.i.i ]
  %.not.i5.i.i = icmp ult i64 %.0.i20.i.i.i, %.0.i14.i.i.i
  br i1 %.not.i5.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %agxbsizeof.exit.i.i.i
  call fastcc void @agxbmore(ptr noundef nonnull %2, i64 noundef 1)
  %.val.i15.pre.i.i.i = load i8, ptr %i.f, align 1, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %agxbsizeof.exit.i.i.i
  %.val.i15.i.i.i = phi i8 [ %.val.i15.pre.i.i.i, %bb.f ], [ %.val.i.i, %agxbsizeof.exit.i.i.i ] ; 2 uses
  %.not.i16.i.i.i = icmp eq i8 %.val.i15.i.i.i, -1
  br i1 %.not.i16.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = zext i8 %.val.i15.i.i.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  store i8 0, ptr %i.y, align 1, !tbaa !12
  %i.z = load i8, ptr %i.f, align 1, !tbaa !12
  %i.aa = add i8 %i.z, 1                          ; 2 uses
  store i8 %i.aa, ptr %i.f, align 1, !tbaa !12
  br label %agxbputc.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !12
  %i.ac = load ptr, ptr %2, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !12
  %i.ae = load i64, ptr %i.g, align 8, !tbaa !12
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.g, align 8, !tbaa !12
  %.val.i6.pr.i.i = load i8, ptr %i.f, align 1, !tbaa !12
  br label %agxbputc.exit.i.i

agxbputc.exit.i.i:                                ; preds = %bb.i, %bb.h
  %.val.i8.pr.i.i = phi i8 [ %.val.i6.pr.i.i, %bb.i ], [ %i.aa, %bb.h ]
  %.not.i7.i.i = icmp eq i8 %.val.i8.pr.i.i, -1
  br i1 %.not.i7.i.i, label %bb.j, label %agxbclear.exit.thread.i.i

agxbclear.exit.thread.i.i:                        ; preds = %agxbputc.exit.i.i, %.critedge.i
  store i8 0, ptr %i.f, align 1, !tbaa !12
  br label %agxbuse.exit.i

bb.j:                                             ; preds = %agxbputc.exit.i.i
  store i64 0, ptr %i.g, align 8, !tbaa !12
  %i.ag = load ptr, ptr %2, align 8, !tbaa !12
  br label %agxbuse.exit.i

agxbuse.exit.i:                                   ; preds = %bb.j, %agxbclear.exit.thread.i.i
  %i.ah = phi ptr [ %i.ag, %bb.j ], [ %2, %agxbclear.exit.thread.i.i ]
  %i.ai = call i32 @agsafeset(ptr noundef nonnull %0, ptr noundef nonnull @.str.56, ptr noundef %i.ah, ptr noundef nonnull @.str.49) #18 ; 0 uses
  %.val.i87.i = load i8, ptr %i.c, align 1, !tbaa !12 ; 3 uses
  %.not.i88.i = icmp eq i8 %.val.i87.i, -1        ; 2 uses
  br i1 %.051.lcssa.i, label %bb.at, label %bb.ah

.lr.ph156:                                        ; preds = %.lr.ph.i, %bb.ag
  %.05489.i155 = phi ptr [ %.155.i, %bb.ag ], [ @.str.47, %.lr.ph.i ] ; 9 uses
  %.05290.i154 = phi ptr [ %.153.i, %bb.ag ], [ @.str.47, %.lr.ph.i ] ; 9 uses
  %.05191.i153 = phi i32 [ %.1.i, %bb.ag ], [ 0, %.lr.ph.i ] ; 11 uses
  %.092.i152 = phi i64 [ %i.cv, %bb.ag ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.ak = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.r, i64 noundef %.092.i152) #18
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !27 ; 11 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !31
  switch i16 %i.ao, label %bb.t [
    i16 264, label %bb.k
    i16 265, label %bb.l
    i16 266, label %bb.m
    i16 267, label %bb.n
    i16 271, label %bb.o
    i16 272, label %bb.p
    i16 273, label %bb.q
    i16 276, label %bb.r
    i16 275, label %bb.r
    i16 277, label %bb.s
    i16 274, label %bb.s
end_hunk_0
