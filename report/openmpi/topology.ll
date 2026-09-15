Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topology?download=true
inline.NumInlined: 210
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 24
begin_hunk_0_@hwloc__check_nodesets:bb.a
  %i.av = tail call i32 @hwloc_bitmap_isequal(ptr noundef %i.au, ptr noundef %2) #37
  %.not64 = icmp eq i32 %i.av, 0
  br i1 %.not64, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @__assert_fail(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.5, i32 noundef 4941, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc__check_nodesets) #36
  unreachable

bb.ac:                                            ; preds = %bb.aa, %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.282 = load ptr, ptr %i.aw, align 8, !tbaa !68 ; 2 uses
  %.not7283 = icmp eq ptr %.282, null
  br i1 %.not7283, label %._crit_edge88, label %.lr.ph87

bb.ad:                                            ; preds = %.lr.ph87
  %i.ax = getelementptr inbounds nuw i8, ptr %.285, i64 88
  %.2 = load ptr, ptr %i.ax, align 8, !tbaa !68   ; 2 uses
  %.not72 = icmp eq ptr %.2, null
  br i1 %.not72, label %._crit_edge88, label %.lr.ph87, !llvm.loop !257

.lr.ph87:                                         ; preds = %bb.ac, %bb.ad
  %.285 = phi ptr [ %.2, %bb.ad ], [ %.282, %bb.ac ] ; 2 uses
  %.084 = phi i32 [ %i.ba, %bb.ad ], [ -1, %bb.ac ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.285, i64 208
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !89
  %i.ba = tail call i32 @hwloc_bitmap_first(ptr noundef %i.az) #37 ; 2 uses
  %i.bb = icmp slt i32 %.084, %i.ba
  br i1 %i.bb, label %bb.ad, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph87
  tail call void @__assert_fail(ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.5, i32 noundef 4950, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc__check_nodesets) #36
  unreachable

._crit_edge88:                                    ; preds = %bb.ad, %bb.ac
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_first(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc void @report_insert_error(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 4 uses
  %i.b = alloca [512 x i8], align 16              ; 4 uses
  %i.c = icmp eq ptr %3, null
  %.b = load i1, ptr @report_insert_error.reported, align 4
  %or.cond = select i1 %i.c, i1 true, i1 %.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.b.i = load i1, ptr @hwloc_hide_errors.checked, align 4
  br i1 %.b.i, label %hwloc_hide_errors.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 10) #34, !inline_history !0
  %i.f = trunc i64 %i.e to i32
  store i32 %i.f, ptr @hwloc_hide_errors.hide, align 4, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i1 true, ptr @hwloc_hide_errors.checked, align 4
  br label %hwloc_hide_errors.exit

hwloc_hide_errors.exit:                           ; preds = %bb.b, %bb.e
  %i.g = load i32, ptr @hwloc_hide_errors.hide, align 4, !tbaa !48
  %i.h = icmp slt i32 %i.g, 2
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %hwloc_hide_errors.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call fastcc void @report_insert_error_format_obj(ptr noundef %i.a, ptr noundef %0)
  call fastcc void @report_insert_error_format_obj(ptr noundef %i.b, ptr noundef nonnull %1)
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !132
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.77, i64 77, i64 1, ptr %i.i) #41 ; 0 uses
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !132
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79) #40 ; 0 uses
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !132
  %fwrite6 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 2, i64 1, ptr %i.l) #41 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !132
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.81, ptr noundef %2) #40 ; 0 uses
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !132
  %i.p = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.82, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #40 ; 0 uses
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !132
  %i.r = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.83, ptr noundef nonnull %3) #40 ; 0 uses
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !132
  %fwrite7 = call i64 @fwrite(ptr nonnull @.str.80, i64 2, i64 1, ptr %i.s) #41 ; 0 uses
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !132
  %fwrite8 = call i64 @fwrite(ptr nonnull @.str.84, i64 63, i64 1, ptr %i.t) #41 ; 0 uses
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !132
  %fwrite9 = call i64 @fwrite(ptr nonnull @.str.85, i64 69, i64 1, ptr %i.u) #41 ; 0 uses
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !132
  %fwrite10 = call i64 @fwrite(ptr nonnull @.str.86, i64 79, i64 1, ptr %i.v) #41 ; 0 uses
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !132
  %fwrite11 = call i64 @fwrite(ptr nonnull @.str.87, i64 70, i64 1, ptr %i.w) #41 ; 0 uses
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !132
  %fwrite12 = call i64 @fwrite(ptr nonnull @.str.88, i64 3, i64 1, ptr %i.x) #41 ; 0 uses
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !132
  %fwrite13 = call i64 @fwrite(ptr nonnull @.str.89, i64 72, i64 1, ptr %i.y) #41 ; 0 uses
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !132
  %fwrite14 = call i64 @fwrite(ptr nonnull @.str.77, i64 77, i64 1, ptr %i.z) #41 ; 0 uses
  store i1 true, ptr @report_insert_error.reported, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %hwloc_hide_errors.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @report_insert_error_format_obj(ptr nofree noundef nonnull writeonly captures(none) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store ptr null, ptr %i.c, align 8, !tbaa !85
  %i.d = call i32 @hwloc_obj_type_snprintf(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef %1, i32 noundef 0) #34 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.g = call i32 @hwloc_bitmap_asprintf(ptr noundef nonnull %i.b, ptr noundef %i.f) #34 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @hwloc_bitmap_asprintf(ptr noundef nonnull %i.c, ptr noundef nonnull %i.i) #34 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !61   ; 2 uses
  %.not10 = icmp eq i32 %i.l, -1
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %.not11 = icmp eq ptr %i.n, null                ; 2 uses
  %i.o = select i1 %.not11, ptr @.str.92, ptr @.str.91 ; 2 uses
  %i.p = select i1 %.not11, ptr @.str.92, ptr %i.n ; 2 uses
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %0, i64 noundef 512, ptr noundef nonnull @.str.90, ptr noundef nonnull %i.a, i32 noundef %i.l, ptr noundef %i.m, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p) #34 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %0, i64 noundef 512, ptr noundef nonnull @.str.93, ptr noundef nonnull %i.a, ptr noundef %i.m, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p) #34 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !85
  call void @free(ptr noundef %i.s) #34
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !85
  call void @free(ptr noundef %i.t) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #25

declare i32 @hwloc_obj_type_snprintf(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @hwloc_bitmap_asprintf(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #25

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #26

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_compare_inclusion(ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @find_same_type(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.011 = load ptr, ptr %i.a, align 8, !tbaa !68  ; 3 uses
  %.not12 = icmp eq ptr %.011, null
  br i1 %.not12, label %hwloc_type_cmp.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !60     ; 5 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @obj_type_order, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !48   ; 2 uses
  %i.f = icmp ult i32 %i.b, 13
  %i.g = icmp eq i32 %i.b, 19                     ; 2 uses
  %i.h = or i1 %i.f, %i.g
  %i.i = icmp ne i32 %i.b, 0
  %or.cond.i.i = and i1 %i.i, %i.h
  %i.j = icmp ugt i32 %i.b, 12
  %.not17.i.i = xor i1 %i.g, %i.j                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %or.cond.i.i.fr = freeze i1 %or.cond.i.i
  br i1 %or.cond.i.i.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %.013.us = phi ptr [ %.0.us, %bb.b ], [ %.011, %.lr.ph ] ; 4 uses
  %i.l = load i32, ptr %.013.us, align 8, !tbaa !60 ; 5 uses
  %i.m = icmp ult i32 %i.l, 13
  %i.n = icmp eq i32 %i.l, 19
  %i.o = or i1 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %bb.g

bb.b:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.013.us, i64 88
  %.0.us = load ptr, ptr %i.p, align 8, !tbaa !68 ; 2 uses
  %.not.us = icmp eq ptr %.0.us, null
  br i1 %.not.us, label %hwloc_type_cmp.exit, label %.lr.ph.split.us, !llvm.loop !258

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.q = zext nneg i32 %i.l to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @obj_type_order, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !48
  %i.t = icmp ne i32 %i.l, 0
  %or.cond15.i.i.us = and i1 %.not17.i.i, %i.t
  %i.u = icmp ne i32 %i.s, %i.e
  %or.cond10.us = select i1 %or.cond15.i.i.us, i1 true, i1 %i.u
  br i1 %or.cond10.us, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i32 %i.l, 12
  br i1 %i.v, label %bb.e, label %hwloc_type_cmp.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.013.us, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !70
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !64  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !70
  %.not.i.us = icmp eq i32 %i.z, %i.ac
  br i1 %.not.i.us, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !70
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !70
  %.not13.i.us = icmp eq i32 %i.ae, %i.ag
  br i1 %.not13.i.us, label %hwloc_type_cmp.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us, %bb.f, %bb.e, %bb.c
  %i.ah = tail call fastcc i32 @find_same_type(ptr noundef nonnull %.013.us, ptr noundef nonnull %1)
  %.not8.us = icmp eq i32 %i.ah, 0
  br i1 %.not8.us, label %bb.b, label %hwloc_type_cmp.exit

bb.h:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %.013, i64 88
  %.0 = load ptr, ptr %i.ai, align 8, !tbaa !68   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %hwloc_type_cmp.exit, label %.lr.ph.split, !llvm.loop !258

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %.013 = phi ptr [ %.0, %bb.h ], [ %.011, %.lr.ph ] ; 4 uses
  %i.aj = load i32, ptr %.013, align 8, !tbaa !60 ; 5 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @obj_type_order, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !48
  %i.an = icmp ult i32 %i.aj, 13
  %i.ao = icmp eq i32 %i.aj, 19
  %i.ap = or i1 %i.an, %i.ao
  %i.aq = icmp ne i32 %i.aj, 0
  %or.cond3.i.i = and i1 %i.aq, %i.ap
  %or.cond15.i.i = and i1 %.not17.i.i, %or.cond3.i.i
  %i.ar = icmp ne i32 %i.am, %i.e
  %or.cond10 = select i1 %or.cond15.i.i, i1 true, i1 %i.ar
  br i1 %or.cond10, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.as = icmp eq i32 %i.aj, 12
  br i1 %i.as, label %bb.j, label %hwloc_type_cmp.exit

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %.013, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !70
  %i.ax = load ptr, ptr %i.k, align 8, !tbaa !64  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !70
  %.not.i = icmp eq i32 %i.aw, %i.az
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !70
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !70
  %.not13.i = icmp eq i32 %i.bb, %i.bd
  br i1 %.not13.i, label %hwloc_type_cmp.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split, %bb.k, %bb.j
  %i.be = tail call fastcc i32 @find_same_type(ptr noundef nonnull %.013, ptr noundef nonnull %1)
  %.not8 = icmp eq i32 %i.be, 0
  br i1 %.not8, label %bb.h, label %hwloc_type_cmp.exit

hwloc_type_cmp.exit:                              ; preds = %bb.l, %bb.h, %bb.i, %bb.k, %bb.g, %bb.b, %bb.d, %bb.f, %bb.a
  %.07 = phi i32 [ 1, %bb.f ], [ 0, %bb.a ], [ 1, %bb.d ], [ 0, %bb.b ], [ 1, %bb.g ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.k ], [ 1, %bb.l ]
  ret i32 %.07
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @hwloc_list_special_objects(ptr noundef %0, ptr noundef %1) unnamed_addr #28 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !60     ; 3 uses
  switch i32 %i.a, label %bb.k [
    i32 13, label %bb.b
    i32 18, label %bb.e
    i32 17, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr null, ptr %i.b, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 -3, ptr %i.c, align 8, !tbaa !116
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !119  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.g, ptr %i.h, align 8, !tbaa !120
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %1, ptr %i.i, align 8, !tbaa !121
  store ptr %1, ptr %i.f, align 8, !tbaa !119
  br label %hwloc_append_special_object.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.j, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %1, ptr %i.k, align 8, !tbaa !119
  store ptr %1, ptr %i.d, align 8, !tbaa !118
  br label %hwloc_append_special_object.exit

hwloc_append_special_object.exit:                 ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.0117 = load ptr, ptr %i.l, align 8, !tbaa !68 ; 2 uses
  %.not90118 = icmp eq ptr %.0117, null
  br i1 %.not90118, label %.loopexit, label %.lr.ph120

.lr.ph120:                                        ; preds = %hwloc_append_special_object.exit, %.lr.ph120
  %.0119 = phi ptr [ %.0, %.lr.ph120 ], [ %.0117, %hwloc_append_special_object.exit ] ; 2 uses
  tail call fastcc void @hwloc_list_special_objects(ptr noundef nonnull %0, ptr noundef nonnull %.0119)
  %i.m = getelementptr inbounds nuw i8, ptr %.0119, i64 88
  %.0 = load ptr, ptr %i.m, align 8, !tbaa !68    ; 2 uses
  %.not90 = icmp eq ptr %.0, null
  br i1 %.not90, label %.loopexit, label %.lr.ph120, !llvm.loop !259

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr null, ptr %i.n, align 8, !tbaa !121
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 -8, ptr %i.o, align 8, !tbaa !116
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !118
  %.not.i91 = icmp eq ptr %i.q, null
  br i1 %.not.i91, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !119  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.s, ptr %i.t, align 8, !tbaa !120
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store ptr %1, ptr %i.u, align 8, !tbaa !121
  store ptr %1, ptr %i.r, align 8, !tbaa !119
  br label %hwloc_append_special_object.exit92

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.v, align 8, !tbaa !120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %1, ptr %i.w, align 8, !tbaa !119
  store ptr %1, ptr %i.p, align 8, !tbaa !118
  br label %hwloc_append_special_object.exit92

hwloc_append_special_object.exit92:               ; preds = %bb.f, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.1108 = load ptr, ptr %i.x, align 8, !tbaa !68 ; 2 uses
  %.not88109 = icmp eq ptr %.1108, null
  br i1 %.not88109, label %._crit_edge, label %.lr.ph111

.lr.ph111:                                        ; preds = %hwloc_append_special_object.exit92, %.lr.ph111
  %.1110 = phi ptr [ %.1, %.lr.ph111 ], [ %.1108, %hwloc_append_special_object.exit92 ] ; 2 uses
  tail call fastcc void @hwloc_list_special_objects(ptr noundef nonnull %0, ptr noundef nonnull %.1110)
end_hunk_0
