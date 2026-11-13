Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/preprocess?download=true
inline.NumInlined: 51
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@env_write_dep:bb.a
  %i.e = getelementptr i8, ptr %.pn.in17, i64 8
  %.val3.i.i = load ptr, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  store ptr %.val3.i.i, ptr %i.f, align 8, !tbaa !19
  store ptr %.val.i.i, ptr %.val3.i.i, align 8, !tbaa !14
  store <2 x ptr> <ptr inttoptr (i64 256 to ptr), ptr inttoptr (i64 290 to ptr)>, ptr %.pn.in17, align 8, !tbaa !20
  %i.g = load ptr, ptr %.0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.g) #20
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.h) #20
  tail call void @free(ptr noundef nonnull %.0) #20
  %.not = icmp eq ptr %.pn, @env_list
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @str_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @variable_add(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn.in.i = phi ptr [ @variable_list, %bb.a ], [ %.pn.i, %bb.c ]
  %.pn.i = load ptr, ptr %.pn.in.i, align 8, !tbaa !14 ; 6 uses
  %.not.i = icmp eq ptr %.pn.i, @variable_list
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.010.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24
  %i.a = load ptr, ptr %.010.i, align 8, !tbaa !23
  %i.b = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.a) #21
  %.not11.i = icmp eq i32 %i.b, 0
  br i1 %.not11.i, label %variable_lookup.exit, label %bb.b, !llvm.loop !0

variable_lookup.exit:                             ; preds = %bb.c
  %.010.i.le = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.c = icmp eq i32 %2, 2
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %variable_lookup.exit
  %i.d = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !24
  br label %bb.i

bb.e:                                             ; preds = %variable_lookup.exit
  %i.f = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.g) #20
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %2, 2
  %spec.store.select = select i1 %i.h, i32 1, i32 %2
  %i.i = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #22 ; 6 uses
  %.not.i30 = icmp eq ptr %i.i, null
  br i1 %.not.i30, label %bb.g, label %xmalloc.exit

bb.g:                                             ; preds = %bb.f
  tail call void @exit(i32 noundef 1) #23
  unreachable

xmalloc.exit:                                     ; preds = %bb.f
  %i.j = tail call noalias ptr @strdup(ptr noundef readonly %0) #20 ; 2 uses
  %.not.i31 = icmp eq ptr %i.j, null
  br i1 %.not.i31, label %bb.h, label %xstrdup.exit

bb.h:                                             ; preds = %xmalloc.exit
  tail call void @exit(i32 noundef 1) #23
  unreachable

xstrdup.exit:                                     ; preds = %xmalloc.exit
  store ptr %i.j, ptr %i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 0, ptr %i.k, align 4, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @variable_list, i64 8), align 8, !tbaa !19 ; 2 uses
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @variable_list, i64 8), align 8, !tbaa !19
  store ptr @variable_list, ptr %i.l, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.m, ptr %i.n, align 8, !tbaa !19
  store ptr %i.l, ptr %i.m, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %xstrdup.exit
  %.027 = phi i32 [ %i.e, %bb.d ], [ %2, %bb.e ], [ %spec.store.select, %xstrdup.exit ] ; 2 uses
  %.026 = phi ptr [ %.010.i.le, %bb.d ], [ %.010.i.le, %bb.e ], [ %i.i, %xstrdup.exit ] ; 2 uses
  %.0 = phi i1 [ true, %bb.d ], [ false, %bb.e ], [ false, %xstrdup.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.026, i64 16
  store i32 %.027, ptr %i.o, align 8, !tbaa !24
  %i.p = icmp eq i32 %.027, 0
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = tail call fastcc nonnull ptr @expand_string_with_args(ptr noundef %1, i32 noundef 0, ptr noundef null)
  br label %xstrdup.exit33

bb.k:                                             ; preds = %bb.i
  %i.r = tail call noalias ptr @strdup(ptr noundef readonly %1) #20 ; 2 uses
  %.not.i32 = icmp eq ptr %i.r, null
  br i1 %.not.i32, label %bb.l, label %xstrdup.exit33

bb.l:                                             ; preds = %bb.k
  tail call void @exit(i32 noundef 1) #23
  unreachable

xstrdup.exit33:                                   ; preds = %bb.k, %bb.j
  %.025 = phi ptr [ %i.q, %bb.j ], [ %i.r, %bb.k ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.026, i64 8 ; 3 uses
  br i1 %.0, label %bb.m, label %bb.o

bb.m:                                             ; preds = %xstrdup.exit33
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #21
  %i.v = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.025) #21
  %i.w = add i64 %i.u, 2
  %i.x = add i64 %i.w, %i.v
  %i.y = tail call ptr @realloc(ptr noundef nonnull %i.t, i64 noundef %i.x) #24 ; 5 uses
  %.not.i34 = icmp eq ptr %i.y, null
  br i1 %.not.i34, label %bb.n, label %xrealloc.exit

bb.n:                                             ; preds = %bb.m
  tail call void @exit(i32 noundef 1) #23
  unreachable

xrealloc.exit:                                    ; preds = %bb.m
  store ptr %i.y, ptr %i.s, align 8, !tbaa !25
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.y)
  %endptr = getelementptr inbounds i8, ptr %i.y, i64 %strlen
  store i16 32, ptr %endptr, align 1
  %i.z = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) %.025) #20 ; 0 uses
  tail call void @free(ptr noundef nonnull %.025) #20
  br label %bb.p

bb.o:                                             ; preds = %xstrdup.exit33
  store ptr %.025, ptr %i.s, align 8, !tbaa !25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %xrealloc.exit
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @variable_all_del() local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @variable_list, align 8, !tbaa !14 ; 2 uses
  %.not13 = icmp eq ptr %i.a, @variable_list
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.pn.in14 = phi ptr [ %.pn, %.lr.ph ], [ %i.a, %bb.a ] ; 5 uses
  %.0 = getelementptr inbounds i8, ptr %.pn.in14, i64 -24 ; 2 uses
  %.pn = load ptr, ptr %.pn.in14, align 8, !tbaa !35 ; 4 uses
  %i.b = getelementptr i8, ptr %.pn.in14, i64 8
  %.val3.i.i = load ptr, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  store ptr %.val3.i.i, ptr %i.c, align 8, !tbaa !19
  store ptr %.pn, ptr %.val3.i.i, align 8, !tbaa !14
  store <2 x ptr> <ptr inttoptr (i64 256 to ptr), ptr inttoptr (i64 290 to ptr)>, ptr %.pn.in14, align 8, !tbaa !20
  %i.d = load ptr, ptr %.0, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.d) #20
  %i.e = getelementptr inbounds i8, ptr %.pn.in14, i64 -16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.f) #20
  tail call void @free(ptr noundef nonnull %.0) #20
  %.not = icmp eq ptr %.pn, @variable_list
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @expand_dollar(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @expand_dollar_with_args(ptr noundef %0, i32 noundef 0, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @expand_dollar_with_args(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -2147483648, 16) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca [16 x i8], align 16                 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [16 x ptr], align 16              ; 15 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !28
  %.not = icmp eq i8 %i.d, 40
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(2) ptr @strdup(ptr noundef nonnull @.str.2) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %xstrdup.exit

bb.c:                                             ; preds = %bb.b
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.021 = phi ptr [ %i.f, %bb.d ], [ %i.k, %bb.h ] ; 4 uses
  %.0 = phi i32 [ 0, %bb.d ], [ %.1, %bb.h ]      ; 4 uses
  %i.g = load i8, ptr %.021, align 1, !tbaa !28
  switch i8 %i.g, label %bb.h [
    i8 0, label %bb.i
    i8 40, label %bb.f
    i8 41, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.h = add nsw i32 %.0, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.i = add nsw i32 %.0, -1
  %i.j = icmp eq i32 %.0, 0
  br i1 %i.j, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f
  %.1 = phi i32 [ %i.h, %bb.f ], [ %i.i, %bb.g ], [ %.0, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %.021, i64 1
  br label %bb.e, !llvm.loop !36

bb.i:                                             ; preds = %bb.e
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.f) #25
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %.021, i64 1
  store ptr %i.l, ptr %0, align 8, !tbaa !27
  %i.m = ptrtoint ptr %.021 to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.p = tail call noalias ptr @strndup(ptr noundef nonnull readonly %i.f, i64 noundef %i.o) #20 ; 7 uses
  %.not.i36 = icmp eq ptr %i.p, null
  br i1 %.not.i36, label %bb.k, label %xstrndup.exit

bb.k:                                             ; preds = %bb.j
  tail call void @exit(i32 noundef 1) #23
  unreachable

xstrndup.exit:                                    ; preds = %bb.j
  %i.q = call i64 @strtoul(ptr noundef nonnull %i.p, ptr noundef nonnull %i.a, i32 noundef 10) #20, !inline_history !37 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.s = load i8, ptr %i.r, align 1, !tbaa !28
  %i.t = icmp ne i8 %i.s, 0
  %i.u = sext i32 %1 to i64
  %i.v = add i64 %i.q, -1
  %i.w = icmp uge i64 %i.v, %i.u
  %or.cond70.i = select i1 %i.t, i1 true, i1 %i.w
  br i1 %or.cond70.i, label %.preheader46, label %bb.l

.preheader46:                                     ; preds = %xstrndup.exit
  %i.x = load i8, ptr %i.p, align 1, !tbaa !28    ; 2 uses
  %.not66.i52 = icmp eq i8 %i.x, 0
  br i1 %.not66.i52, label %._crit_edge.thread, label %.lr.ph

bb.l:                                             ; preds = %xstrndup.exit
  %i.y = getelementptr [8 x i8], ptr %2, i64 %i.q
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.ab = tail call noalias ptr @strdup(ptr noundef readonly %i.aa) #20 ; 2 uses
  %.not.i34 = icmp eq ptr %i.ab, null
  br i1 %.not.i34, label %bb.m, label %eval_clause.exit

bb.m:                                             ; preds = %bb.l
  tail call void @exit(i32 noundef 1) #23
  unreachable

.lr.ph:                                           ; preds = %.preheader46, %bb.t
  %i.ac = phi i8 [ %i.an, %bb.t ], [ %i.x, %.preheader46 ] ; 2 uses
  %.051.i56 = phi i32 [ %.152.i, %bb.t ], [ 0, %.preheader46 ] ; 4 uses
  %.053.i55 = phi i32 [ %.154.i, %bb.t ], [ 0, %.preheader46 ] ; 6 uses
  %.055.i54 = phi ptr [ %i.am, %bb.t ], [ %i.p, %.preheader46 ] ; 3 uses
  %.056.i53 = phi ptr [ %.157.i, %bb.t ], [ %i.p, %.preheader46 ] ; 4 uses
  %i.ad = icmp eq i32 %.051.i56, 0
  %i.ae = icmp eq i8 %i.ac, 44
  %or.cond71.i = and i1 %i.ad, %i.ae
  br i1 %or.cond71.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.lr.ph
  store i8 0, ptr %.055.i54, align 1, !tbaa !28
  %i.af = icmp sgt i32 %.053.i55, 15
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.6) #25, !inline_history !37
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ag = add nsw i32 %.053.i55, 1
  %i.ah = sext i32 %.053.i55 to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ah
  store ptr %.056.i53, ptr %i.ai, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %.055.i54, i64 1
  br label %bb.t

bb.q:                                             ; preds = %.lr.ph
  switch i8 %i.ac, label %bb.t [
    i8 40, label %bb.r
    i8 41, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ak = add nsw i32 %.051.i56, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.al = add nsw i32 %.051.i56, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.157.i = phi ptr [ %i.aj, %bb.p ], [ %.056.i53, %bb.r ], [ %.056.i53, %bb.s ], [ %.056.i53, %bb.q ] ; 2 uses
  %.154.i = phi i32 [ %i.ag, %bb.p ], [ %.053.i55, %bb.r ], [ %.053.i55, %bb.s ], [ %.053.i55, %bb.q ] ; 3 uses
  %.152.i = phi i32 [ 0, %bb.p ], [ %i.ak, %bb.r ], [ %i.al, %bb.s ], [ %.051.i56, %bb.q ]
  %i.am = getelementptr inbounds nuw i8, ptr %.055.i54, i64 1 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !28  ; 2 uses
  %.not66.i = icmp eq i8 %i.an, 0
  br i1 %.not66.i, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.t
  %i.ao = icmp sgt i32 %.154.i, 15
  br i1 %i.ao, label %bb.u, label %._crit_edge.thread

bb.u:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.6) #25, !inline_history !37
  unreachable

._crit_edge.thread:                               ; preds = %.preheader46, %._crit_edge
  %.053.i.lcssa86 = phi i32 [ %.154.i, %._crit_edge ], [ 0, %.preheader46 ] ; 9 uses
  %.056.i.lcssa85 = phi ptr [ %.157.i, %._crit_edge ], [ %i.p, %.preheader46 ]
  %i.ap = sext i32 %.053.i.lcssa86 to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ap
  store ptr %.056.i.lcssa85, ptr %i.aq, align 8, !tbaa !27
  %i.ar = load ptr, ptr %i.b, align 16, !tbaa !27
  %i.as = tail call fastcc ptr @expand_string_with_args(ptr noundef %i.ar, i32 noundef range(i32 -2147483648, 16) %1, ptr noundef %2), !inline_history !37 ; 12 uses
  %i.at = icmp sgt i32 %.053.i.lcssa86, 0         ; 2 uses
  br i1 %i.at, label %.lr.ph60.preheader, label %.preheader.preheader

.lr.ph60.preheader:                               ; preds = %._crit_edge.thread
  %wide.trip.count = zext nneg i32 %.053.i.lcssa86 to i64
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %indvars.iv = phi i64 [ 0, %.lr.ph60.preheader ], [ %indvars.iv.next, %.lr.ph60 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27
  %i.aw = tail call fastcc ptr @expand_string_with_args(ptr noundef %i.av, i32 noundef range(i32 -2147483648, 16) %1, ptr noundef %2), !inline_history !37
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !27
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.preheader, label %.lr.ph60, !llvm.loop !39

.preheader.preheader:                             ; preds = %.lr.ph60, %._crit_edge.thread
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.v
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %bb.v ], [ @variable_list, %.preheader.preheader ]
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 8, !tbaa !14 ; 7 uses
  %.not.i.i = icmp eq ptr %.pn.i.i, @variable_list
  br i1 %.not.i.i, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %.preheader
  %.010.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -24
  %i.ay = load ptr, ptr %.010.i.i, align 8, !tbaa !23
  %i.az = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.as, ptr noundef nonnull dereferenceable(1) %i.ay) #21, !inline_history !40
  %.not11.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i, label %variable_lookup.exit.i, label %.preheader, !llvm.loop !0

variable_lookup.exit.i:                           ; preds = %bb.v
  %i.ba = icmp eq i32 %.053.i.lcssa86, 0
  %i.bb = getelementptr inbounds i8, ptr %.pn.i.i, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !26 ; 3 uses
  br i1 %i.ba, label %bb.w, label %bb.y

bb.w:                                             ; preds = %variable_lookup.exit.i
  %.not17.i = icmp eq i32 %i.bc, 0
  br i1 %.not17.i, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.as) #25, !inline_history !40
  unreachable

bb.y:                                             ; preds = %variable_lookup.exit.i
  %i.bd = icmp sgt i32 %i.bc, 1000
  br i1 %i.bd, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.9) #25, !inline_history !40
  unreachable

.thread:                                          ; preds = %bb.w, %bb.y
  %i.be = phi i32 [ %i.bc, %bb.y ], [ 0, %bb.w ]  ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.pn.i.i, i64 -4 ; 3 uses
  %i.bg = add nsw i32 %i.be, 1
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !26
  %i.bh = getelementptr inbounds i8, ptr %.pn.i.i, i64 -8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !24
  %i.bj = icmp eq i32 %i.bi, 1
  %i.bk = getelementptr inbounds i8, ptr %.pn.i.i, i64 -16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !25 ; 2 uses
  br i1 %i.bj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.thread
  %i.bm = call fastcc ptr @expand_string_with_args(ptr noundef %i.bl, i32 noundef range(i32 -2147483648, 16) %.053.i.lcssa86, ptr noundef nonnull %i.b), !inline_history !40
  %.pre72 = load i32, ptr %i.bf, align 4, !tbaa !26
  %i.bn = add nsw i32 %.pre72, -1
  br label %variable_expand.exit

bb.ab:                                            ; preds = %.thread
  %i.bo = tail call noalias ptr @strdup(ptr noundef readonly %i.bl) #20, !inline_history !40 ; 2 uses
  %.not.i18.i = icmp eq ptr %i.bo, null
  br i1 %.not.i18.i, label %bb.ac, label %variable_expand.exit

bb.ac:                                            ; preds = %bb.ab
  tail call void @exit(i32 noundef 1) #23, !inline_history !40
  unreachable

variable_expand.exit:                             ; preds = %bb.aa, %bb.ab
  %i.bp = phi i32 [ %i.bn, %bb.aa ], [ %i.be, %bb.ab ]
  %.0.i32 = phi ptr [ %i.bm, %bb.aa ], [ %i.bo, %bb.ab ]
  store i32 %i.bp, ptr %i.bf, align 4, !tbaa !26
  br label %xstrdup.exit29

bb.ad:                                            ; preds = %.preheader
  %i.bq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.12, ptr noundef nonnull dereferenceable(1) %i.as) #21
  %.not.i30 = icmp eq i32 %i.bq, 0
  br i1 %.not.i30, label %4, label %43

4:                                                ; preds = %51, %49, %47, %45, %43, %bb.ad
  %.018.lcssa.wide.i = phi i32 [ 0, %bb.ad ], [ 1, %43 ], [ 2, %45 ], [ 3, %47 ], [ 4, %49 ], [ 5, %51 ]
  %.lcssa.i = phi ptr [ @function_table, %bb.ad ], [ getelementptr inbounds nuw (i8, ptr @function_table, i64 24), %43 ], [ getelementptr inbounds nuw (i8, ptr @function_table, i64 48), %45 ], [ getelementptr inbounds nuw (i8, ptr @function_table, i64 72), %47 ], [ getelementptr inbounds nuw (i8, ptr @function_table, i64 96), %49 ], [ getelementptr inbounds nuw (i8, ptr @function_table, i64 120), %51 ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = icmp ult i32 %.053.i.lcssa86, %6
  br i1 %7, label %8, label %bb.ae

8:                                                ; preds = %4
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.as) #25
  unreachable

bb.ae:                                            ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !44
  %11 = icmp ugt i32 %.053.i.lcssa86, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %bb.ae
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.as) #25
  unreachable

13:                                               ; preds = %bb.ae
  switch i32 %.018.lcssa.wide.i, label %default.unreachable [
    i32 0, label %bb.af
    i32 1, label %bb.ai
    i32 2, label %bb.aj
    i32 3, label %bb.al
    i32 4, label %call.4.i
    i32 5, label %call.5.i
  ], !prof !45

default.unreachable:                              ; preds = %13
  unreachable

bb.af:                                            ; preds = %13
  %14 = load ptr, ptr %i.b, align 16, !tbaa !27   ; 2 uses
  %15 = load i8, ptr %14, align 1
  %.not.2.i.a = icmp eq i8 %15, 121
  br i1 %.not.2.i.a, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 1
  %17 = load i8, ptr %16, align 1
  %.not.3.i.a = icmp eq i8 %17, 0
  br i1 %.not.3.i.a, label %18, label %bb.ah

18:                                               ; preds = %bb.ag
  %19 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !27
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.19, ptr noundef %20) #25
  unreachable

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %21 = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str.7) #20 ; 2 uses
  %.not.4.i.a = icmp eq ptr %21, null
  br i1 %.not.4.i.a, label %22, label %xstrdup.exit29

22:                                               ; preds = %bb.ah
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.ai:                                            ; preds = %13
  %23 = load ptr, ptr @cur_filename, align 8, !tbaa !27
  %24 = tail call noalias ptr @strdup(ptr noundef readonly %23) #20 ; 2 uses
  %.not.5.i.a = icmp eq ptr %24, null
  br i1 %.not.5.i.a, label %25, label %xstrdup.exit29

25:                                               ; preds = %bb.ai
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.aj:                                            ; preds = %13
  %26 = load ptr, ptr %i.b, align 16, !tbaa !27
  %puts.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) %26) ; 0 uses
  %27 = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str.7) #20 ; 2 uses
  %.not.i.i23.i = icmp eq ptr %27, null
  br i1 %.not.i.i23.i, label %bb.ak, label %xstrdup.exit29

bb.ak:                                            ; preds = %bb.aj
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.al:                                            ; preds = %13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.br = load i32, ptr @yylineno, align 4, !tbaa !29
  %28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.br) #20 ; 0 uses
  %29 = call noalias ptr @strdup(ptr noundef nonnull readonly %3) #20 ; 2 uses
  %.not.i.i24.i = icmp eq ptr %29, null
  br i1 %.not.i.i24.i, label %bb.am, label %do_lineno.exit.i

bb.am:                                            ; preds = %bb.al
  tail call void @exit(i32 noundef 1) #23
  unreachable

do_lineno.exit.i:                                 ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %xstrdup.exit29

call.4.i:                                         ; preds = %13
  %30 = call ptr @do_shell(i32 range(i32 -2147483648, 16) poison, ptr noundef nonnull readonly %i.b) #20
  br label %xstrdup.exit29

call.5.i:                                         ; preds = %13
  %31 = load ptr, ptr %i.b, align 16, !tbaa !27   ; 2 uses
  %32 = load i8, ptr %31, align 1
  %.not2.i25.i = icmp eq i8 %32, 121
  br i1 %.not2.i25.i, label %.tail.i28.i, label %.tail.thread.i26.i

.tail.i28.i:                                      ; preds = %call.5.i
  %33 = getelementptr inbounds nuw i8, ptr %31, i64 1
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %function_expand.exit.a, label %.tail.thread.i26.i

function_expand.exit.a:                           ; preds = %.tail.i28.i
  %36 = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.bs = load ptr, ptr @cur_filename, align 8, !tbaa !27
  %37 = load i32, ptr @yylineno, align 4, !tbaa !29
  %38 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %39 = load ptr, ptr %38, align 8, !tbaa !27
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.23, ptr noundef %i.bs, i32 noundef %37, ptr noundef %39) #26 ; 0 uses
  br label %.tail.thread.i26.i

.tail.thread.i26.i:                               ; preds = %function_expand.exit.a, %.tail.i28.i, %call.5.i
  %41 = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str.7) #20 ; 2 uses
  %.not.i.i27.i = icmp eq ptr %41, null
  br i1 %.not.i.i27.i, label %42, label %xstrdup.exit29

42:                                               ; preds = %.tail.thread.i26.i
  tail call void @exit(i32 noundef 1) #23
  unreachable

43:                                               ; preds = %bb.ad
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.13, ptr noundef nonnull dereferenceable(1) %i.as) #21
  %.not.1.i = icmp eq i32 %44, 0
  br i1 %.not.1.i, label %4, label %45

45:                                               ; preds = %43
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.14, ptr noundef nonnull dereferenceable(1) %i.as) #21
  %.not.2.i = icmp eq i32 %46, 0
  br i1 %.not.2.i, label %4, label %47

47:                                               ; preds = %45
  %48 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.15, ptr noundef nonnull dereferenceable(1) %i.as) #21
  %.not.3.i = icmp eq i32 %48, 0
  br i1 %.not.3.i, label %4, label %49

49:                                               ; preds = %47
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.16, ptr noundef nonnull dereferenceable(1) %i.as) #21
  %.not.4.i = icmp eq i32 %50, 0
  br i1 %.not.4.i, label %4, label %51

51:                                               ; preds = %49
  %52 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.17, ptr noundef nonnull dereferenceable(1) %i.as) #21
  %.not.5.i = icmp eq i32 %52, 0
  br i1 %.not.5.i, label %4, label %function_expand.exit.thread

function_expand.exit.thread:                      ; preds = %51
  %i.bt = icmp eq i32 %.053.i.lcssa86, 0
  br i1 %i.bt, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %function_expand.exit.thread
  %53 = tail call fastcc ptr @env_expand(ptr noundef %i.as), !inline_history !37 ; 2 uses
  %.not69.i = icmp eq ptr %53, null
  br i1 %.not69.i, label %bb.ao, label %._crit_edge63

bb.ao:                                            ; preds = %bb.an, %function_expand.exit.thread
  %54 = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str.7) #20 ; 2 uses
  %.not.i28 = icmp eq ptr %54, null
  br i1 %.not.i28, label %bb.ap, label %xstrdup.exit29

bb.ap:                                            ; preds = %bb.ao
  tail call void @exit(i32 noundef 1) #23
  unreachable

xstrdup.exit29:                                   ; preds = %.tail.thread.i26.i, %call.4.i, %do_lineno.exit.i, %bb.ai, %bb.ah, %bb.aj, %bb.ao, %variable_expand.exit
  %.058.i = phi ptr [ %.0.i32, %variable_expand.exit ], [ %54, %bb.ao ], [ %27, %bb.aj ], [ %41, %.tail.thread.i26.i ], [ %30, %call.4.i ], [ %29, %do_lineno.exit.i ], [ %24, %bb.ai ], [ %21, %bb.ah ] ; 2 uses
  br i1 %i.at, label %.lr.ph62.preheader, label %._crit_edge63

.lr.ph62.preheader:                               ; preds = %xstrdup.exit29
  %wide.trip.count70 = zext nneg i32 %.053.i.lcssa86 to i64
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %.lr.ph62
  %indvars.iv67 = phi i64 [ 0, %.lr.ph62.preheader ], [ %indvars.iv.next68, %.lr.ph62 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv67
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.bv) #20, !inline_history !37
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %._crit_edge63, label %.lr.ph62, !llvm.loop !41

._crit_edge63:                                    ; preds = %.lr.ph62, %bb.an, %xstrdup.exit29
  %.058.i90 = phi ptr [ %53, %bb.an ], [ %.058.i, %xstrdup.exit29 ], [ %.058.i, %.lr.ph62 ]
  tail call void @free(ptr noundef nonnull %i.as) #20, !inline_history !37
  br label %eval_clause.exit

eval_clause.exit:                                 ; preds = %bb.l, %._crit_edge63
  %.159.i = phi ptr [ %.058.i90, %._crit_edge63 ], [ %i.ab, %bb.l ]
  tail call void @free(ptr noundef %i.p) #20, !inline_history !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %xstrdup.exit

xstrdup.exit:                                     ; preds = %bb.b, %eval_clause.exit
  %.022 = phi ptr [ %.159.i, %eval_clause.exit ], [ %i.e, %bb.b ]
  ret ptr %.022
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @expand_one_token(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = tail call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #22, !inline_history !1 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %xmalloc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef 1) #23, !inline_history !1
  unreachable

xmalloc.exit.i:                                   ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !tbaa !28
  br label %.outer.i

.outer.i:                                         ; preds = %xrealloc.exit.i, %xmalloc.exit.i
  %.sink.i = phi ptr [ %i.a, %xrealloc.exit.i ], [ %0, %xmalloc.exit.i ]
  %.026.ph.i = phi ptr [ %i.p, %xrealloc.exit.i ], [ %i.b, %xmalloc.exit.i ] ; 2 uses
  %.0.ph.i = phi i64 [ %i.o, %xrealloc.exit.i ], [ 1, %xmalloc.exit.i ] ; 2 uses
  %i.c = load ptr, ptr %.sink.i, align 8, !tbaa !27 ; 7 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !28    ; 2 uses
  %i.e = icmp eq i8 %i.d, 36
  br i1 %i.e, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.outer.i
  %i.f = tail call ptr @__ctype_b_loc() #27
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.d, %.outer.i
  %.lcssa35.i = phi ptr [ %i.c, %.outer.i ], [ %i.z, %bb.d ] ; 2 uses
  %i.h = ptrtoint ptr %.lcssa35.i to i64
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.lcssa35.i, i64 1
  store ptr %i.k, ptr %i.a, align 8, !tbaa !27
  %i.l = call fastcc ptr @expand_dollar_with_args(ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef null), !inline_history !1 ; 3 uses
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #21, !inline_history !1
  %i.n = add i64 %i.j, %.0.ph.i
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = tail call ptr @realloc(ptr noundef nonnull %.026.ph.i, i64 noundef %i.o) #24, !inline_history !1 ; 4 uses
  %.not.i28.i = icmp eq ptr %i.p, null
  br i1 %.not.i28.i, label %bb.c, label %xrealloc.exit.i

bb.c:                                             ; preds = %._crit_edge.i
  tail call void @exit(i32 noundef 1) #23, !inline_history !1
  unreachable

xrealloc.exit.i:                                  ; preds = %._crit_edge.i
  %i.q = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull %i.c, i64 noundef %i.j) #20, !inline_history !1 ; 0 uses
  %i.r = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) %i.l) #20, !inline_history !1 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.l) #20, !inline_history !1
  br label %.outer.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.d
  %i.s = phi i8 [ %i.aa, %bb.d ], [ %i.d, %.lr.ph.i.preheader ] ; 2 uses
  %i.t = phi ptr [ %i.z, %bb.d ], [ %i.c, %.lr.ph.i.preheader ] ; 3 uses
  %i.u = sext i8 %i.s to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !49
  %.fr1 = freeze i16 %i.w
  %i.x = and i16 %.fr1, 8
  %i.y = icmp eq i16 %i.x, 0
  br i1 %i.y, label %switch.early.test, label %bb.d

switch.early.test:                                ; preds = %.lr.ph.i
  switch i8 %i.s, label %bb.e [
    i8 95, label %bb.d
    i8 45, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test, %switch.early.test, %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !28   ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 36
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %switch.early.test
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = ptrtoint ptr %i.c to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = add i64 %i.ae, %.0.ph.i
  %i.ag = tail call ptr @realloc(ptr noundef nonnull %.026.ph.i, i64 noundef %i.af) #24, !inline_history !1 ; 3 uses
  %.not.i29.i = icmp eq ptr %i.ag, null
  br i1 %.not.i29.i, label %bb.f, label %__expand_string.exit

bb.f:                                             ; preds = %bb.e
  tail call void @exit(i32 noundef 1) #23, !inline_history !1
  unreachable

__expand_string.exit:                             ; preds = %bb.e
  %i.ah = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull %i.c, i64 noundef %i.ae) #20, !inline_history !1 ; 0 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %i.ag
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: cold nofree noreturn nounwind uwtable
define internal void @pperror(ptr nofree noundef readonly captures(none) %0, ...) unnamed_addr #11 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.b = load ptr, ptr @cur_filename, align 8, !tbaa !27
  %i.c = load i32, ptr @yylineno, align 4, !tbaa !29
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.4, ptr noundef %i.b, i32 noundef %i.c) #26 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.f = call i32 @vfprintf(ptr noundef %i.e, ptr noundef %0, ptr noundef nonnull %1) #26 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !31
  %fputc = call i32 @fputc(i32 10, ptr %i.g)      ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #13

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @expand_string_with_args(ptr noundef %0, i32 noundef range(i32 -2147483648, 16) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = tail call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #22 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, null
  br i1 %.not.i4, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef 1) #23
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !tbaa !28
  br label %.outer

.outer:                                           ; preds = %xrealloc.exit3, %xmalloc.exit
  %.promoted = phi ptr [ %i.p, %xrealloc.exit3 ], [ %0, %xmalloc.exit ] ; 5 uses
  %.026.i.ph = phi ptr [ %i.m, %xrealloc.exit3 ], [ %i.b, %xmalloc.exit ] ; 2 uses
  %.0.i.ph = phi i64 [ %i.l, %xrealloc.exit3 ], [ 1, %xmalloc.exit ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.f
  %i.c = phi ptr [ %.promoted, %.outer ], [ %i.q, %bb.f ] ; 5 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !28
  switch i8 %i.d, label %bb.f [
    i8 36, label %bb.d
    i8 0, label %__expand_string.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %.promoted to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.h, ptr %i.a, align 8, !tbaa !27
  %i.i = call fastcc ptr @expand_dollar_with_args(ptr noundef nonnull %i.a, i32 noundef range(i32 -2147483648, 16) %1, ptr noundef %2), !inline_history !1 ; 3 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #21, !inline_history !1
  %i.k = add i64 %i.g, %.0.i.ph
  %i.l = add i64 %i.k, %i.j                       ; 2 uses
  %i.m = tail call ptr @realloc(ptr noundef nonnull %.026.i.ph, i64 noundef %i.l) #24 ; 4 uses
  %.not.i2 = icmp eq ptr %i.m, null
  br i1 %.not.i2, label %bb.e, label %xrealloc.exit3

bb.e:                                             ; preds = %bb.d
  tail call void @exit(i32 noundef 1) #23
  unreachable

xrealloc.exit3:                                   ; preds = %bb.d
  %i.n = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef %.promoted, i64 noundef %i.g) #20, !inline_history !1 ; 0 uses
  %i.o = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.i) #20, !inline_history !1 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.i) #20, !inline_history !1
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %.outer

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %bb.c

__expand_string.exit:                             ; preds = %bb.c
  %i.r = ptrtoint ptr %i.c to i64
  %i.s = ptrtoint ptr %.promoted to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = add i64 %i.t, %.0.i.ph
  %i.v = tail call ptr @realloc(ptr noundef nonnull %.026.i.ph, i64 noundef %i.u) #24 ; 3 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.g, label %xrealloc.exit

bb.g:                                             ; preds = %__expand_string.exit
  tail call void @exit(i32 noundef 1) #23
  unreachable

xrealloc.exit:                                    ; preds = %__expand_string.exit
  %i.w = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef %.promoted, i64 noundef %i.t) #20, !inline_history !1 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %i.v
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noalias ptr @env_expand(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #15 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !28
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %xstrdup.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.pn.in = phi ptr [ %.pn, %bb.b ], [ @env_list, %bb.a ]
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !14 ; 4 uses
  %.not18 = icmp eq ptr %.pn, @env_list
  br i1 %.not18, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.preheader
  %.016 = getelementptr inbounds i8, ptr %.pn, i64 -16
  %i.b = load ptr, ptr %.016, align 8, !tbaa !17
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.b) #21
  %.not20 = icmp eq i32 %i.c, 0
  br i1 %.not20, label %bb.c, label %.preheader, !llvm.loop !50

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %.pn, i64 -8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = tail call noalias ptr @strdup(ptr noundef readonly %i.e) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %xstrdup.exit

bb.d:                                             ; preds = %bb.c
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.e:                                             ; preds = %.preheader
  %i.g = tail call ptr @getenv(ptr noundef nonnull %0) #20 ; 3 uses
  %.not19 = icmp eq ptr %i.g, null
  br i1 %.not19, label %xstrdup.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #22 ; 5 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.g, label %xmalloc.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @exit(i32 noundef 1) #23
  unreachable

xmalloc.exit.i:                                   ; preds = %bb.f
  %i.i = tail call noalias ptr @strdup(ptr noundef nonnull readonly %0) #20 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.i, null
  br i1 %.not.i5.i, label %bb.h, label %xstrdup.exit.i

bb.h:                                             ; preds = %xmalloc.exit.i
  tail call void @exit(i32 noundef 1) #23
  unreachable

xstrdup.exit.i:                                   ; preds = %xmalloc.exit.i
  store ptr %i.i, ptr %i.h, align 8, !tbaa !17
  %i.j = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.g) #20 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.j, null
  br i1 %.not.i6.i, label %bb.i, label %env_add.exit

bb.i:                                             ; preds = %xstrdup.exit.i
  tail call void @exit(i32 noundef 1) #23
  unreachable

env_add.exit:                                     ; preds = %xstrdup.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @env_list, i64 8), align 8, !tbaa !19 ; 2 uses
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @env_list, i64 8), align 8, !tbaa !19
  store ptr @env_list, ptr %i.l, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !19
  store ptr %i.l, ptr %i.m, align 8, !tbaa !14
  %i.o = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.g) #20 ; 2 uses
  %.not.i21 = icmp eq ptr %i.o, null
  br i1 %.not.i21, label %bb.j, label %xstrdup.exit

bb.j:                                             ; preds = %env_add.exit
  tail call void @exit(i32 noundef 1) #23
  unreachable

xstrdup.exit:                                     ; preds = %env_add.exit, %bb.c, %bb.e, %bb.a
  %.0 = phi ptr [ null, %bb.e ], [ %i.f, %bb.c ], [ null, %bb.a ], [ %i.o, %env_add.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strndup(ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define internal noalias nonnull ptr @do_error_if(i32 %0, ptr nofree noundef readonly captures(none) %1) #15 {
sub_0:
  %i.a = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %.not2 = icmp eq i8 %i.b, 121
  br i1 %.not2, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.a, label %.tail.thread

bb.a:                                             ; preds = %.tail
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  tail call void (ptr, ...) @pperror(ptr noundef nonnull @.str.19, ptr noundef %i.g) #25
  unreachable

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.h = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str.7) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.b, label %xstrdup.exit

bb.b:                                             ; preds = %.tail.thread
  tail call void @exit(i32 noundef 1) #23
  unreachable

xstrdup.exit:                                     ; preds = %.tail.thread
  ret ptr %i.h
}

; Function Attrs: nofree nounwind uwtable
define internal noalias nonnull ptr @do_filename(i32 %0, ptr nofree readnone captures(none) %1) #15 {
bb.a:
  %i.a = load ptr, ptr @cur_filename, align 8, !tbaa !27
  %i.b = tail call noalias ptr @strdup(ptr noundef readonly %i.a) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %xstrdup.exit

bb.b:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef 1) #23
  unreachable

xstrdup.exit:                                     ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: nofree nounwind uwtable
define internal noalias nonnull ptr @do_info(i32 %0, ptr nofree noundef readonly captures(none) %1) #15 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %i.a) ; 0 uses
  %i.b = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str.7) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %xstrdup.exit

bb.b:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef 1) #23
  unreachable

xstrdup.exit:                                     ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: nofree nounwind uwtable
define internal noalias nonnull ptr @do_lineno(i32 %0, ptr nofree readnone captures(none) %1) #15 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = load i32, ptr @yylineno, align 4, !tbaa !29
  %i.c = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.b) #20 ; 0 uses
  %i.d = call noalias ptr @strdup(ptr noundef nonnull readonly %i.a) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %xstrdup.exit

bb.b:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef 1) #23
  unreachable

xstrdup.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %i.d
}

; Function Attrs: nofree nounwind uwtable
define internal noalias nonnull ptr @do_shell(i32 %0, ptr nofree noundef readonly captures(none) %1) #15 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  %i.c = tail call noalias ptr @popen(ptr noundef %i.b, ptr noundef nonnull @.str.22) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @perror(ptr noundef %i.b) #28
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4096, ptr noundef nonnull %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 4096
  %spec.select = select i1 %i.e, i64 4095, i64 %i.d ; 2 uses
  %.not2223 = icmp eq i64 %spec.select, 0
  br i1 %.not2223, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %select.unfold
  %.124 = phi i64 [ %i.j, %select.unfold ], [ %spec.select, %bb.c ] ; 11 uses
  %i.f = getelementptr i8, ptr %i.a, i64 %.124
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !28
  %i.i = icmp eq i8 %i.h, 10
  br i1 %i.i, label %select.unfold, label %iter.check

select.unfold:                                    ; preds = %.lr.ph
  %i.j = add i64 %.124, -1                        ; 2 uses
  %.not22 = icmp eq i64 %i.j, 0
  br i1 %.not22, label %.critedge.thread, label %.lr.ph, !llvm.loop !51

.critedge.thread:                                 ; preds = %select.unfold, %bb.c
  store i8 0, ptr %i.a, align 16, !tbaa !28
  br label %._crit_edge

iter.check:                                       ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.124
  store i8 0, ptr %i.k, align 1, !tbaa !28
  %min.iters.check = icmp ult i64 %.124, 8
  br i1 %min.iters.check, label %.lr.ph27.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check36 = icmp ult i64 %.124, 32
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %.124, 24
  %n.vec = and i64 %.124, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.m, align 16, !tbaa !28 ; 2 uses
  %wide.load37 = load <16 x i8>, ptr %i.n, align 16, !tbaa !28 ; 2 uses
  %i.o = icmp eq <16 x i8> %wide.load, splat (i8 10)
  %i.p = icmp eq <16 x i8> %wide.load37, splat (i8 10)
  %i.q = select <16 x i1> %i.o, <16 x i8> splat (i8 32), <16 x i8> %wide.load
  %i.r = select <16 x i1> %i.p, <16 x i8> splat (i8 32), <16 x i8> %wide.load37
  store <16 x i8> %i.q, ptr %i.m, align 16, !tbaa !28
  store <16 x i8> %i.r, ptr %i.n, align 16, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.124, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %.lr.ph27.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %.124, -8                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %index39 ; 2 uses
  %wide.load40 = load <8 x i8>, ptr %i.t, align 8, !tbaa !28 ; 2 uses
  %i.u = icmp eq <8 x i8> %wide.load40, splat (i8 10)
  %i.v = select <8 x i1> %i.u, <8 x i8> splat (i8 32), <8 x i8> %wide.load40
  store <8 x i8> %i.v, ptr %i.t, align 8, !tbaa !28
  %index.next41 = add nuw i64 %index39, 8         ; 2 uses
  %i.w = icmp eq i64 %index.next41, %n.vec38
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !53

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %.124, %n.vec38
  br i1 %cmp.n42, label %._crit_edge, label %.lr.ph27.preheader

.lr.ph27.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec38, %vec.epilog.middle.block ]
  br label %.lr.ph27

.lr.ph27:                                         ; preds = %.lr.ph27.preheader, %.lr.ph27
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph27 ], [ %indvars.iv.ph, %.lr.ph27.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !28    ; 2 uses
  %i.z = icmp eq i8 %i.y, 10
  %spec.store.select = select i1 %i.z, i8 32, i8 %i.y
  store i8 %spec.store.select, ptr %i.x, align 1, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.124
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph27, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph27, %middle.block, %vec.epilog.middle.block, %.critedge.thread
  %i.aa = tail call i32 @pclose(ptr noundef nonnull %i.c)
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  tail call void @perror(ptr noundef %i.b) #28
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.e:                                             ; preds = %._crit_edge
  %i.ac = call noalias ptr @strdup(ptr noundef nonnull readonly %i.a) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.f, label %xstrdup.exit

bb.f:                                             ; preds = %bb.e
  tail call void @exit(i32 noundef 1) #23
  unreachable

xstrdup.exit:                                     ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %i.ac
}

; Function Attrs: nofree nounwind uwtable
define internal noalias nonnull ptr @do_warning_if(i32 %0, ptr nofree noundef readonly captures(none) %1) #15 {
sub_0:
  %i.a = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %.not2 = icmp eq i8 %i.b, 121
  br i1 %.not2, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.a, label %.tail.thread

bb.a:                                             ; preds = %.tail
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.g = load ptr, ptr @cur_filename, align 8, !tbaa !27
  %i.h = load i32, ptr @yylineno, align 4, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.23, ptr noundef %i.g, i32 noundef %i.h, ptr noundef %i.j) #26 ; 0 uses
  br label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %bb.a, %.tail
  %i.l = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str.7) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.b, label %xstrdup.exit

bb.b:                                             ; preds = %.tail.thread
  tail call void @exit(i32 noundef 1) #23
  unreachable

xstrdup.exit:                                     ; preds = %.tail.thread
  ret ptr %i.l
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noalias noundef ptr @popen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @pclose(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { noreturn }
attributes #26 = { cold nounwind }
attributes #27 = { nounwind willreturn memory(none) }
attributes #28 = { cold }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !21}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS9list_head", !11, i64 0}
!13 = !{!"list_head", !12, i64 0, !12, i64 8}
!14 = !{!13, !12, i64 0}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!"env", !15, i64 0, !15, i64 8, !13, i64 16}
!17 = !{!16, !15, i64 0}
!18 = !{!16, !15, i64 8}
!19 = !{!13, !12, i64 8}
!20 = !{!12, !12, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"variable", !15, i64 0, !15, i64 8, !8, i64 16, !8, i64 20, !13, i64 24}
!23 = !{!22, !15, i64 0}
!24 = !{!22, !8, i64 16}
!25 = !{!22, !15, i64 8}
!26 = !{!22, !8, i64 20}
!27 = !{!15, !15, i64 0}
!28 = !{!7, !7, i64 0}
!29 = !{!8, !8, i64 0}
!30 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!31 = !{!30, !30, i64 0}
!32 = distinct !{!32, !21}
!33 = !{!16, !12, i64 16}
!34 = distinct !{!34, !21}
!35 = !{!22, !12, i64 24}
!36 = distinct !{!36, !21}
!37 = distinct !{null}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !21}
!40 = distinct !{null, null}
!41 = distinct !{!41, !21}
!42 = !{!"function", !15, i64 0, !8, i64 8, !8, i64 12, !11, i64 16}
!43 = !{!42, !8, i64 8}
!44 = !{!42, !8, i64 12}
!45 = !{!"unknown", !"jump-table-to-switch"}
!46 = !{!"p1 short", !11, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"short", !7, i64 0}
!49 = !{!48, !48, i64 0}
!50 = distinct !{!50, !21}
!51 = distinct !{!51, !21}
!52 = distinct !{!52, !21, !55, !56}
!53 = distinct !{!53, !21, !55, !56}
!54 = distinct !{!54, !21, !56, !55}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !{!"branch_weights", i32 8, i32 24}
end_hunk_0
