Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/ras_base_allocate?download=true
inline.NumInlined: 110
inline.NumDeleted: 14
begin_hunk_0_@display_cpus:bb.a
  br i1 %i.d, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nuw i8 %i.b to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51   ; 4 uses
  %i.h = tail call i32 @hwloc_get_type_depth(ptr noundef %i.g, i32 noundef 3) #16 ; 2 uses
  switch i32 %i.h, label %bb.d [
    i32 -1, label %hwloc_get_nbobjs_by_type.exit
    i32 -2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %hwloc_get_nbobjs_by_type.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %i.g, i32 noundef %i.h) #17
  br label %hwloc_get_nbobjs_by_type.exit

hwloc_get_nbobjs_by_type.exit:                    ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.i, %bb.d ], [ -1, %bb.c ], [ 0, %bb.b ]
  %i.j = tail call i32 @hwloc_get_type_depth(ptr noundef %i.g, i32 noundef 2) #16 ; 2 uses
  switch i32 %i.j, label %bb.f [
    i32 -1, label %hwloc_get_nbobjs_by_type.exit58
    i32 -2, label %bb.e
  ]

bb.e:                                             ; preds = %hwloc_get_nbobjs_by_type.exit
  br label %hwloc_get_nbobjs_by_type.exit58

bb.f:                                             ; preds = %hwloc_get_nbobjs_by_type.exit
  %i.k = tail call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %i.g, i32 noundef %i.j) #17
  br label %hwloc_get_nbobjs_by_type.exit58

hwloc_get_nbobjs_by_type.exit58:                  ; preds = %hwloc_get_nbobjs_by_type.exit, %bb.e, %bb.f
  %.0.i57 = phi i32 [ %i.k, %bb.f ], [ -1, %bb.e ], [ 0, %hwloc_get_nbobjs_by_type.exit ]
  %i.l = icmp ne i32 %.0.i, %.0.i57
  %or.cond = or i1 %i.l, %i.e
  %or.cond.fr = freeze i1 %or.cond                ; 2 uses
  %.052 = xor i1 %or.cond.fr, true
  %i.m = tail call zeroext i1 @prte_get_attribute(ptr noundef nonnull %i.c, i16 noundef zeroext 279, ptr noundef null, i16 noundef zeroext 1) #16
  %.fr = freeze i1 %i.m                           ; 2 uses
  %or.cond3 = or i1 %.fr, %.052
  br i1 %or.cond3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %hwloc_get_nbobjs_by_type.exit58
  %i.n = tail call noalias ptr @hwloc_bitmap_alloc() #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %hwloc_get_nbobjs_by_type.exit58
  %.0 = phi ptr [ null, %hwloc_get_nbobjs_by_type.exit58 ], [ %i.n, %bb.g ] ; 4 uses
  %i.o = tail call noalias ptr @hwloc_bitmap_alloc() #16 ; 10 uses
  %i.p = load i32, ptr @prte_clean_output, align 4, !tbaa !52
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.p, ptr noundef nonnull @.str.43, ptr noundef %2) #16
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !51   ; 4 uses
  %i.r = tail call i32 @hwloc_get_type_depth(ptr noundef %i.q, i32 noundef 1) #16 ; 2 uses
  switch i32 %i.r, label %hwloc_get_nbobjs_by_type.exit60 [
    i32 -1, label %._crit_edge
    i32 -2, label %hwloc_get_nbobjs_by_type.exit60.thread73
  ]

hwloc_get_nbobjs_by_type.exit60.thread73:         ; preds = %bb.h
  %i.s = tail call ptr @hwloc_topology_get_allowed_cpuset(ptr noundef %i.q) #17
  br label %hwloc_get_obj_by_type.exit.lr.ph

hwloc_get_nbobjs_by_type.exit60:                  ; preds = %bb.h
  %i.t = tail call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %i.q, i32 noundef %i.r) #17 ; 2 uses
  %i.u = tail call ptr @hwloc_topology_get_allowed_cpuset(ptr noundef %i.q) #17
  %.not63 = icmp eq i32 %i.t, 0
  br i1 %.not63, label %._crit_edge, label %hwloc_get_obj_by_type.exit.lr.ph

hwloc_get_obj_by_type.exit.lr.ph:                 ; preds = %hwloc_get_nbobjs_by_type.exit60.thread73, %hwloc_get_nbobjs_by_type.exit60
  %i.v = phi ptr [ %i.s, %hwloc_get_nbobjs_by_type.exit60.thread73 ], [ %i.u, %hwloc_get_nbobjs_by_type.exit60 ] ; 3 uses
  %.0.i5976 = phi i32 [ -1, %hwloc_get_nbobjs_by_type.exit60.thread73 ], [ %i.t, %hwloc_get_nbobjs_by_type.exit60 ] ; 3 uses
  br i1 %or.cond.fr, label %hwloc_get_obj_by_type.exit.lr.ph.split.us, label %hwloc_get_obj_by_type.exit

hwloc_get_obj_by_type.exit.lr.ph.split.us:        ; preds = %hwloc_get_obj_by_type.exit.lr.ph
  br i1 %.fr, label %hwloc_get_obj_by_type.exit.us.us, label %hwloc_get_obj_by_type.exit.us

hwloc_get_obj_by_type.exit.us.us:                 ; preds = %hwloc_get_obj_by_type.exit.lr.ph.split.us, %bb.k
  %.05362.us.us = phi i32 [ %i.ag, %bb.k ], [ 0, %hwloc_get_obj_by_type.exit.lr.ph.split.us ] ; 4 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !51   ; 2 uses
  %i.x = call i32 @hwloc_get_type_depth(ptr noundef %i.w, i32 noundef 1) #16 ; 2 uses
  %switch.i.us.us = icmp ult i32 %i.x, -2
  call void @llvm.assume(i1 %switch.i.us.us)
  %i.y = call ptr @hwloc_get_obj_by_depth(ptr noundef %i.w, i32 noundef %i.x, i32 noundef %.05362.us.us) #17
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !92
  %i.ab = call i32 @hwloc_bitmap_and(ptr noundef %i.o, ptr noundef %i.aa, ptr noundef %i.v) #16 ; 0 uses
  %i.ac = call i32 @hwloc_bitmap_iszero(ptr noundef %i.o) #17
  %.not56.us.us = icmp eq i32 %i.ac, 0
  br i1 %.not56.us.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %hwloc_get_obj_by_type.exit.us.us
  %i.ad = load i32, ptr @prte_clean_output, align 4, !tbaa !52
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ad, ptr noundef nonnull @.str.45, i32 noundef %.05362.us.us) #16
  br label %bb.k

bb.j:                                             ; preds = %hwloc_get_obj_by_type.exit.us.us
  %i.ae = call i32 @hwloc_bitmap_list_snprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef %i.o) #16 ; 0 uses
  %i.af = load i32, ptr @prte_clean_output, align 4, !tbaa !52
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.af, ptr noundef nonnull @.str.46, i32 noundef %.05362.us.us, ptr noundef nonnull %i.a) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = add nuw i32 %.05362.us.us, 1            ; 2 uses
  %exitcond67.not = icmp eq i32 %i.ag, %.0.i5976
  br i1 %exitcond67.not, label %._crit_edge, label %hwloc_get_obj_by_type.exit.us.us, !llvm.loop !86

hwloc_get_obj_by_type.exit.us:                    ; preds = %hwloc_get_obj_by_type.exit.lr.ph.split.us, %bb.n
  %.05362.us = phi i32 [ %i.as, %bb.n ], [ 0, %hwloc_get_obj_by_type.exit.lr.ph.split.us ] ; 4 uses
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !51  ; 2 uses
  %i.ai = call i32 @hwloc_get_type_depth(ptr noundef %i.ah, i32 noundef 1) #16 ; 2 uses
  %switch.i.us = icmp ult i32 %i.ai, -2
  call void @llvm.assume(i1 %switch.i.us)
  %i.aj = call ptr @hwloc_get_obj_by_depth(ptr noundef %i.ah, i32 noundef %i.ai, i32 noundef %.05362.us) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 184
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !92
  %i.am = call i32 @hwloc_bitmap_and(ptr noundef %i.o, ptr noundef %i.al, ptr noundef %i.v) #16 ; 0 uses
  %i.an = call i32 @hwloc_bitmap_iszero(ptr noundef %i.o) #17
  %.not56.us = icmp eq i32 %i.an, 0
  br i1 %.not56.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %hwloc_get_obj_by_type.exit.us
  %i.ao = load i32, ptr @prte_clean_output, align 4, !tbaa !52
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ao, ptr noundef nonnull @.str.45, i32 noundef %.05362.us) #16
  br label %bb.n

bb.m:                                             ; preds = %hwloc_get_obj_by_type.exit.us
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !51
  call void @prte_hwloc_build_map(ptr noundef %i.ap, ptr noundef %i.o, i1 noundef zeroext false, ptr noundef %.0) #16
  %i.aq = call i32 @hwloc_bitmap_list_snprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef %.0) #16 ; 0 uses
  %i.ar = load i32, ptr @prte_clean_output, align 4, !tbaa !52
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ar, ptr noundef nonnull @.str.46, i32 noundef %.05362.us, ptr noundef nonnull %i.a) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.as = add nuw i32 %.05362.us, 1               ; 2 uses
  %exitcond66.not = icmp eq i32 %i.as, %.0.i5976
  br i1 %exitcond66.not, label %._crit_edge, label %hwloc_get_obj_by_type.exit.us, !llvm.loop !86

hwloc_get_obj_by_type.exit:                       ; preds = %hwloc_get_obj_by_type.exit.lr.ph, %bb.q
  %.05362 = phi i32 [ %i.bd, %bb.q ], [ 0, %hwloc_get_obj_by_type.exit.lr.ph ] ; 4 uses
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !51  ; 2 uses
  %i.au = call i32 @hwloc_get_type_depth(ptr noundef %i.at, i32 noundef 1) #16 ; 2 uses
  %switch.i = icmp ult i32 %i.au, -2
  call void @llvm.assume(i1 %switch.i)
  %i.av = call ptr @hwloc_get_obj_by_depth(ptr noundef %i.at, i32 noundef %i.au, i32 noundef %.05362) #17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 184
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !92
  %i.ay = call i32 @hwloc_bitmap_and(ptr noundef %i.o, ptr noundef %i.ax, ptr noundef %i.v) #16 ; 0 uses
  %i.az = call i32 @hwloc_bitmap_iszero(ptr noundef %i.o) #17
  %.not56 = icmp eq i32 %i.az, 0
  br i1 %.not56, label %bb.p, label %bb.o

bb.o:                                             ; preds = %hwloc_get_obj_by_type.exit
  %i.ba = load i32, ptr @prte_clean_output, align 4, !tbaa !52
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ba, ptr noundef nonnull @.str.45, i32 noundef %.05362) #16
  br label %bb.q

bb.p:                                             ; preds = %hwloc_get_obj_by_type.exit
  %i.bb = call i32 @hwloc_bitmap_list_snprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef %i.o) #16 ; 0 uses
  %i.bc = load i32, ptr @prte_clean_output, align 4, !tbaa !52
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.bc, ptr noundef nonnull @.str.46, i32 noundef %.05362, ptr noundef nonnull %i.a) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = add nuw i32 %.05362, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %.0.i5976
  br i1 %exitcond.not, label %._crit_edge, label %hwloc_get_obj_by_type.exit, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.q, %bb.n, %bb.k, %bb.h, %hwloc_get_nbobjs_by_type.exit60
  call void @hwloc_bitmap_free(ptr noundef %i.o) #16
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  call void @hwloc_bitmap_free(ptr noundef nonnull %.0) #16
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r
  %i.be = load i32, ptr @prte_clean_output, align 4, !tbaa !52
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.be, ptr noundef nonnull @.str.48) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare ptr @PMIx_Argv_split(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @prte_ras_base_allocate(i32 noundef %0, i16 noundef signext %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.pmix_list_t, align 8        ; 42 uses
  %i.a = alloca ptr, align 8                      ; 18 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %7 = alloca %struct.timeval, align 8            ; 5 uses
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %11 = alloca %struct.timeval, align 8           ; 5 uses
  %12 = alloca %struct.timeval, align 8           ; 5 uses
  %13 = alloca %struct.timeval, align 8           ; 5 uses
  %14 = alloca %struct.timeval, align 8           ; 5 uses
  %15 = alloca %struct.timeval, align 8           ; 5 uses
  %16 = alloca %struct.timeval, align 8           ; 5 uses
  %17 = alloca %struct.timeval, align 8           ; 5 uses
  %18 = alloca %struct.pmix_info, align 8         ; 5 uses
  %19 = alloca %struct.timeval, align 8           ; 5 uses
  %20 = alloca %struct.timeval, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  fence acquire
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4, !tbaa !55 ; 3 uses
  %or.cond = icmp ult i32 %i.c, 64
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !57
  %i.h = icmp sgt i32 %i.g, 4
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.c, ptr noundef nonnull @.str.18, ptr noundef %i.i) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !107  ; 54 uses
  %i.l = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !52
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8, !tbaa !60
  %.not = icmp eq i32 %i.l, %i.m
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_list_t_class) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 19 uses
  store ptr @pmix_list_t_class, ptr %i.n, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 1, ptr %i.o, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i8 0, i64 64, i1 false)
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 40), align 8, !tbaa !63 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  %.not6.i = icmp eq ptr %i.r, null
  br i1 %.not6.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.s = phi ptr [ %i.u, %.lr.ph.i ], [ %i.r, %bb.f ]
  %.07.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.q, %bb.f ]
  call void %i.s(ptr noundef nonnull %3) #16, !inline_history !0
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !1

pmix_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.f
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base, i64 25), align 1, !tbaa !110, !range !33, !noundef !34
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %pmix_obj_run_constructors.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 784
  %i.y = call i32 @prte_set_attribute(ptr noundef nonnull %i.x, i16 noundef zeroext 269, i1 noundef zeroext true, ptr noundef null, i16 noundef zeroext 1) #16 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %pmix_obj_run_constructors.exit
  %i.z = load i8, ptr @prte_ras_base, align 8, !tbaa !111, !range !33, !noundef !34
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ab = load i8, ptr @prte_managed_allocation, align 1, !tbaa !32, !range !33, !noundef !34
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base, i64 1), align 1, !range !33
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond3 = select i1 %i.ac, i1 true, i1 %i.ae
  %.pre703 = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4, !tbaa !55 ; 4 uses
  br i1 %or.cond3, label %bb.j, label %bb.ca

bb.j:                                             ; preds = %bb.i
  %or.cond5 = icmp ult i32 %.pre703, 64
  br i1 %or.cond5, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.af = zext nneg i32 %.pre703 to i64
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !57
  %i.aj = icmp sgt i32 %i.ai, 4
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef %.pre703, ptr noundef nonnull @.str.19, ptr noundef %i.ak) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40 ; 2 uses
  %.not6.i461 = icmp eq ptr %i.ao, null
  br i1 %.not6.i461, label %pmix_obj_run_destructors.exit, label %.lr.ph.i462

.lr.ph.i462:                                      ; preds = %bb.m, %.lr.ph.i462
  %i.ap = phi ptr [ %i.ar, %.lr.ph.i462 ], [ %i.ao, %bb.m ]
  %.07.i463 = phi ptr [ %i.aq, %.lr.ph.i462 ], [ %i.an, %bb.m ]
  call void %i.ap(ptr noundef nonnull %3) #16, !inline_history !2
  %i.aq = getelementptr inbounds nuw i8, ptr %.07.i463, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40 ; 2 uses
  %.not.i464 = icmp eq ptr %i.ar, null
  br i1 %.not.i464, label %pmix_obj_run_destructors.exit, label %.lr.ph.i462, !llvm.loop !3

bb.n:                                             ; preds = %bb.h
  store i8 1, ptr @prte_ras_base, align 8, !tbaa !111
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base, i64 8), align 8, !tbaa !112 ; 2 uses
  %.not401 = icmp eq ptr %i.as, null
  br i1 %.not401, label %bb.as, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !114
  %i.av = call i32 %i.au(ptr noundef %i.k, ptr noundef nonnull %3) #16 ; 2 uses
  switch i32 %i.av, label %bb.ag [
    i32 0, label %bb.as
    i32 57, label %bb.p
    i32 70, label %bb.gn
    i32 -46, label %bb.u
    i32 -43, label %bb.ah
  ]

bb.p:                                             ; preds = %bb.o
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !64 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !40 ; 2 uses
  %.not6.i465 = icmp eq ptr %i.az, null
  br i1 %.not6.i465, label %pmix_obj_run_destructors.exit469, label %.lr.ph.i466

.lr.ph.i466:                                      ; preds = %bb.p, %.lr.ph.i466
  %i.ba = phi ptr [ %i.bc, %.lr.ph.i466 ], [ %i.az, %bb.p ]
  %.07.i467 = phi ptr [ %i.bb, %.lr.ph.i466 ], [ %i.ay, %bb.p ]
  call void %i.ba(ptr noundef nonnull %3) #16, !inline_history !2
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i467, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !40 ; 2 uses
  %.not.i468 = icmp eq ptr %i.bc, null
  br i1 %.not.i468, label %pmix_obj_run_destructors.exit469, label %.lr.ph.i466, !llvm.loop !3

pmix_obj_run_destructors.exit469:                 ; preds = %.lr.ph.i466, %bb.p
  %i.bd = call i32 @pthread_mutex_lock(ptr noundef nonnull %2) #16
  %i.be = icmp eq i32 %i.bd, 35
  br i1 %i.be, label %bb.q, label %pmix_obj_update.exit460

bb.q:                                             ; preds = %pmix_obj_run_destructors.exit469
  %i.bf = tail call ptr @__errno_location() #18
  store i32 35, ptr %i.bf, align 4, !tbaa !52
  call void @perror(ptr noundef nonnull @.str.49) #19
  call void @abort() #20
  unreachable

pmix_obj_update.exit460:                          ; preds = %pmix_obj_run_destructors.exit469
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !62
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !62
  %i.bj = call i32 @pthread_mutex_unlock(ptr noundef nonnull %2) #16 ; 0 uses
  %i.bk = icmp eq i32 %i.bi, 0
  br i1 %i.bk, label %bb.r, label %bb.iu

bb.r:                                             ; preds = %pmix_obj_update.exit460
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !61
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !64 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !40 ; 2 uses
  %.not6.i470 = icmp eq ptr %i.bp, null
  br i1 %.not6.i470, label %pmix_obj_run_destructors.exit474, label %.lr.ph.i471

.lr.ph.i471:                                      ; preds = %bb.r, %.lr.ph.i471
  %i.bq = phi ptr [ %i.bs, %.lr.ph.i471 ], [ %i.bp, %bb.r ]
  %.07.i472 = phi ptr [ %i.br, %.lr.ph.i471 ], [ %i.bo, %bb.r ]
  call void %i.bq(ptr noundef nonnull %2) #16, !inline_history !2
  %i.br = getelementptr inbounds nuw i8, ptr %.07.i472, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@prte_ras_base_allocate:bb.a
bb.z:                                             ; preds = %bb.y
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.cz = call ptr @prte_util_print_jobids(ptr noundef nonnull %i.cy) #16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.da = phi ptr [ %i.cz, %bb.z ], [ @.str.23, %bb.y ]
  %i.db = call ptr @prte_job_state_to_str(i32 noundef 68) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.cq, ptr noundef nonnull @.str.22, ptr noundef %i.cw, double noundef %i.cp, ptr noundef %i.da, ptr noundef %i.db, ptr noundef nonnull @.str.24, i32 noundef 426) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.w, %bb.x, %bb.aa, %pmix_obj_run_destructors.exit480
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_state, i64 16), align 8, !tbaa !119
  call void %i.dc(ptr noundef %i.k, i32 noundef 68) #16
  %i.dd = call i32 @pthread_mutex_lock(ptr noundef nonnull %2) #16
  %i.de = icmp eq i32 %i.dd, 35
  br i1 %i.de, label %bb.ac, label %pmix_obj_update.exit459

bb.ac:                                            ; preds = %bb.ab
  %i.df = tail call ptr @__errno_location() #18
  store i32 35, ptr %i.df, align 4, !tbaa !52
  call void @perror(ptr noundef nonnull @.str.49) #19
  call void @abort() #20
  unreachable

pmix_obj_update.exit459:                          ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !62
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !62
  %i.dj = call i32 @pthread_mutex_unlock(ptr noundef nonnull %2) #16 ; 0 uses
  %i.dk = icmp eq i32 %i.di, 0
  br i1 %i.dk, label %bb.ad, label %bb.iu

bb.ad:                                            ; preds = %pmix_obj_update.exit459
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !61
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !64 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !40 ; 2 uses
  %.not6.i481 = icmp eq ptr %i.dp, null
  br i1 %.not6.i481, label %pmix_obj_run_destructors.exit485, label %.lr.ph.i482

.lr.ph.i482:                                      ; preds = %bb.ad, %.lr.ph.i482
  %i.dq = phi ptr [ %i.ds, %.lr.ph.i482 ], [ %i.dp, %bb.ad ]
  %.07.i483 = phi ptr [ %i.dr, %.lr.ph.i482 ], [ %i.do, %bb.ad ]
  call void %i.dq(ptr noundef nonnull %2) #16, !inline_history !2
  %i.dr = getelementptr inbounds nuw i8, ptr %.07.i483, i64 8 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !40 ; 2 uses
  %.not.i484 = icmp eq ptr %i.ds, null
  br i1 %.not.i484, label %pmix_obj_run_destructors.exit485, label %.lr.ph.i482, !llvm.loop !3

pmix_obj_run_destructors.exit485:                 ; preds = %.lr.ph.i482, %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !65 ; 2 uses
  %.not411 = icmp eq ptr %i.du, null
  br i1 %.not411, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %pmix_obj_run_destructors.exit485
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void %i.du(ptr noundef nonnull %i.dv, ptr noundef nonnull %2) #16, !inline_history !4
  br label %bb.iu

bb.af:                                            ; preds = %pmix_obj_run_destructors.exit485
  call void @free(ptr noundef nonnull %2) #16
  br label %bb.iu

bb.ag:                                            ; preds = %bb.o
  %i.dw = call ptr @prte_strerror(i32 noundef %i.av) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef %i.dw, ptr noundef nonnull @.str.24, i32 noundef 436) #16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.o, %bb.ag
  %i.dx = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !64 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !40 ; 2 uses
  %.not6.i487 = icmp eq ptr %i.ea, null
  br i1 %.not6.i487, label %pmix_obj_run_destructors.exit491, label %.lr.ph.i488

.lr.ph.i488:                                      ; preds = %bb.ah, %.lr.ph.i488
  %i.eb = phi ptr [ %i.ed, %.lr.ph.i488 ], [ %i.ea, %bb.ah ]
  %.07.i489 = phi ptr [ %i.ec, %.lr.ph.i488 ], [ %i.dz, %bb.ah ]
  call void %i.eb(ptr noundef nonnull %3) #16, !inline_history !2
  %i.ec = getelementptr inbounds nuw i8, ptr %.07.i489, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !40 ; 2 uses
  %.not.i490 = icmp eq ptr %i.ed, null
  br i1 %.not.i490, label %pmix_obj_run_destructors.exit491, label %.lr.ph.i488, !llvm.loop !3

pmix_obj_run_destructors.exit491:                 ; preds = %.lr.ph.i488, %bb.ah
  %i.ee = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base_framework, i64 72), align 8, !tbaa !115
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %pmix_obj_run_destructors.exit491
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.eg = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #16 ; 0 uses
  %i.eh = load i64, ptr %5, align 8, !tbaa !116
  %i.ei = sitofp i64 %i.eh to double
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !117
  %i.el = sitofp i64 %i.ek to double
  %i.em = fdiv double %i.el, 1.000000e+06
  %i.en = fadd double %i.em, %i.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.eo = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base_framework, i64 76), align 4, !tbaa !55 ; 3 uses
  %or.cond9 = icmp ult i32 %i.eo, 64
  br i1 %or.cond9, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !57
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.eu = call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.ev = icmp eq ptr %i.k, null
  br i1 %i.ev, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.ex = call ptr @prte_util_print_jobids(ptr noundef nonnull %i.ew) #16
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.ey = phi ptr [ %i.ex, %bb.al ], [ @.str.23, %bb.ak ]
  %i.ez = call ptr @prte_job_state_to_str(i32 noundef 68) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.eo, ptr noundef nonnull @.str.22, ptr noundef %i.eu, double noundef %i.en, ptr noundef %i.ey, ptr noundef %i.ez, ptr noundef nonnull @.str.24, i32 noundef 438) #16
  br label %bb.an

bb.an:                                            ; preds = %bb.ai, %bb.aj, %bb.am, %pmix_obj_run_destructors.exit491
  %i.fa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_state, i64 16), align 8, !tbaa !119
  call void %i.fa(ptr noundef %i.k, i32 noundef 68) #16
  %i.fb = call i32 @pthread_mutex_lock(ptr noundef nonnull %2) #16
  %i.fc = icmp eq i32 %i.fb, 35
  br i1 %i.fc, label %bb.ao, label %pmix_obj_update.exit458

bb.ao:                                            ; preds = %bb.an
  %i.fd = tail call ptr @__errno_location() #18
  store i32 35, ptr %i.fd, align 4, !tbaa !52
  call void @perror(ptr noundef nonnull @.str.49) #19
  call void @abort() #20
  unreachable

pmix_obj_update.exit458:                          ; preds = %bb.an
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !62
  %i.fg = add nsw i32 %i.ff, -1                   ; 2 uses
  store i32 %i.fg, ptr %i.fe, align 8, !tbaa !62
  %i.fh = call i32 @pthread_mutex_unlock(ptr noundef nonnull %2) #16 ; 0 uses
  %i.fi = icmp eq i32 %i.fg, 0
  br i1 %i.fi, label %bb.ap, label %bb.iu

bb.ap:                                            ; preds = %pmix_obj_update.exit458
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !61
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !64 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !40 ; 2 uses
  %.not6.i492 = icmp eq ptr %i.fn, null
  br i1 %.not6.i492, label %pmix_obj_run_destructors.exit496, label %.lr.ph.i493

.lr.ph.i493:                                      ; preds = %bb.ap, %.lr.ph.i493
  %i.fo = phi ptr [ %i.fq, %.lr.ph.i493 ], [ %i.fn, %bb.ap ]
  %.07.i494 = phi ptr [ %i.fp, %.lr.ph.i493 ], [ %i.fm, %bb.ap ]
  call void %i.fo(ptr noundef nonnull %2) #16, !inline_history !2
  %i.fp = getelementptr inbounds nuw i8, ptr %.07.i494, i64 8 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !40 ; 2 uses
  %.not.i495 = icmp eq ptr %i.fq, null
  br i1 %.not.i495, label %pmix_obj_run_destructors.exit496, label %.lr.ph.i493, !llvm.loop !3

pmix_obj_run_destructors.exit496:                 ; preds = %.lr.ph.i493, %bb.ap
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !65 ; 2 uses
  %.not410 = icmp eq ptr %i.fs, null
  br i1 %.not410, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %pmix_obj_run_destructors.exit496
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void %i.fs(ptr noundef nonnull %i.ft, ptr noundef nonnull %2) #16, !inline_history !4
  br label %bb.iu

bb.ar:                                            ; preds = %pmix_obj_run_destructors.exit496
  call void @free(ptr noundef nonnull %2) #16
  br label %bb.iu

bb.as:                                            ; preds = %bb.o, %bb.n
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !66 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.fu
  br i1 %i.fx, label %bb.bo, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i8 1, ptr @prte_managed_allocation, align 1, !tbaa !32
  store i8 1, ptr @prte_do_not_resolve, align 1, !tbaa !32
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base, i64 1), align 1, !tbaa !120
  %.promoted = load ptr, ptr %i.b, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.az
  %.0356671 = phi ptr [ %i.fw, %bb.at ], [ %i.gn, %bb.az ] ; 5 uses
  %.0356670 = phi ptr [ %.promoted, %bb.at ], [ %21, %bb.az ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.0356671, i64 152 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !41
  %i.ga = call zeroext i1 @pmix_net_isaddr(ptr noundef %i.fz) #16
  br i1 %i.ga, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gb = load ptr, ptr %i.fy, align 8, !tbaa !41 ; 3 uses
  %i.gc = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.gb, i32 noundef 46) #17 ; 4 uses
  %.not407 = icmp eq ptr %i.gc, null
  br i1 %.not407, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gd = call noalias ptr @strdup(ptr noundef nonnull %i.gb) #16
  %i.ge = getelementptr inbounds nuw i8, ptr %.0356671, i64 160
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !121
  %i.gf = load i8, ptr @prte_keep_fqdn_hostnames, align 1, !tbaa !32, !range !33, !noundef !34
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i8 0, ptr %i.gc, align 1, !tbaa !67
  %i.gh = getelementptr inbounds nuw i8, ptr %.0356671, i64 168
  %i.gi = load ptr, ptr %i.fy, align 8, !tbaa !41
  %i.gj = call i32 @PMIx_Argv_append_unique_nosize(ptr noundef nonnull %i.gh, ptr noundef %i.gi) #16 ; 0 uses
  br label %.sink.split

bb.ay:                                            ; preds = %bb.aw
  %i.gk = getelementptr inbounds nuw i8, ptr %.0356671, i64 168
  %i.gl = call i32 @PMIx_Argv_append_unique_nosize(ptr noundef nonnull %i.gk, ptr noundef nonnull %i.gb) #16 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ax, %bb.ay
  %.sink = phi i8 [ 0, %bb.ay ], [ 46, %bb.ax ]
  store i8 %.sink, ptr %i.gc, align 1, !tbaa !67
  br label %bb.az

bb.az:                                            ; preds = %.sink.split, %bb.au, %bb.av
  %21 = phi ptr [ %.0356670, %bb.au ], [ null, %bb.av ], [ %i.gc, %.sink.split ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.0356671, i64 120
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !68 ; 2 uses
  %.not403 = icmp eq ptr %i.gn, %i.fu
  br i1 %.not403, label %bb.ba, label %bb.au, !llvm.loop !93

bb.ba:                                            ; preds = %bb.az
  store ptr %21, ptr %i.b, align 8
  %i.go = call i32 @prte_ras_base_node_insert(ptr noundef nonnull %3, ptr noundef %i.k) #16 ; 2 uses
  switch i32 %i.go, label %bb.bb [
    i32 0, label %bb.bn
    i32 -43, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.gp = call ptr @prte_strerror(i32 noundef %i.go) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef %i.gp, ptr noundef nonnull @.str.24, i32 noundef 474) #16
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.gq = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !64 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !40 ; 2 uses
  %.not6.i498 = icmp eq ptr %i.gt, null
  br i1 %.not6.i498, label %pmix_obj_run_destructors.exit502, label %.lr.ph.i499

.lr.ph.i499:                                      ; preds = %bb.bc, %.lr.ph.i499
  %i.gu = phi ptr [ %i.gw, %.lr.ph.i499 ], [ %i.gt, %bb.bc ]
  %.07.i500 = phi ptr [ %i.gv, %.lr.ph.i499 ], [ %i.gs, %bb.bc ]
  call void %i.gu(ptr noundef nonnull %3) #16, !inline_history !2
  %i.gv = getelementptr inbounds nuw i8, ptr %.07.i500, i64 8 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !40 ; 2 uses
  %.not.i501 = icmp eq ptr %i.gw, null
  br i1 %.not.i501, label %pmix_obj_run_destructors.exit502, label %.lr.ph.i499, !llvm.loop !3

pmix_obj_run_destructors.exit502:                 ; preds = %.lr.ph.i499, %bb.bc
  %i.gx = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base_framework, i64 72), align 8, !tbaa !115
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %pmix_obj_run_destructors.exit502
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.gz = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #16 ; 0 uses
  %i.ha = load i64, ptr %6, align 8, !tbaa !116
  %i.hb = sitofp i64 %i.ha to double
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !117
  %i.he = sitofp i64 %i.hd to double
  %i.hf = fdiv double %i.he, 1.000000e+06
  %i.hg = fadd double %i.hf, %i.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.hh = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base_framework, i64 76), align 4, !tbaa !55 ; 3 uses
  %or.cond11 = icmp ult i32 %i.hh, 64
  br i1 %or.cond11, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !57
  %i.hm = icmp sgt i32 %i.hl, 0
  br i1 %i.hm, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.hn = call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.ho = icmp eq ptr %i.k, null
  br i1 %i.ho, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hp = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.hq = call ptr @prte_util_print_jobids(ptr noundef nonnull %i.hp) #16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.hr = phi ptr [ %i.hq, %bb.bg ], [ @.str.23, %bb.bf ]
  %i.hs = call ptr @prte_job_state_to_str(i32 noundef 68) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.hh, ptr noundef nonnull @.str.22, ptr noundef %i.hn, double noundef %i.hg, ptr noundef %i.hr, ptr noundef %i.hs, ptr noundef nonnull @.str.24, i32 noundef 476) #16
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bd, %bb.be, %bb.bh, %pmix_obj_run_destructors.exit502
  %i.ht = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_state, i64 16), align 8, !tbaa !119
  call void %i.ht(ptr noundef %i.k, i32 noundef 68) #16
  %i.hu = call i32 @pthread_mutex_lock(ptr noundef %2) #16
  %i.hv = icmp eq i32 %i.hu, 35
  br i1 %i.hv, label %bb.bj, label %pmix_obj_update.exit457

bb.bj:                                            ; preds = %bb.bi
  %i.hw = tail call ptr @__errno_location() #18
  store i32 35, ptr %i.hw, align 4, !tbaa !52
  call void @perror(ptr noundef nonnull @.str.49) #19
  call void @abort() #20
  unreachable

pmix_obj_update.exit457:                          ; preds = %bb.bi
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !62
  %i.hz = add nsw i32 %i.hy, -1                   ; 2 uses
  store i32 %i.hz, ptr %i.hx, align 8, !tbaa !62
  %i.ia = call i32 @pthread_mutex_unlock(ptr noundef %2) #16 ; 0 uses
  %i.ib = icmp eq i32 %i.hz, 0
  br i1 %i.ib, label %bb.bk, label %bb.iu

bb.bk:                                            ; preds = %pmix_obj_update.exit457
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !61
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 48
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !64 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !40 ; 2 uses
  %.not6.i503 = icmp eq ptr %i.ig, null
  br i1 %.not6.i503, label %pmix_obj_run_destructors.exit507, label %.lr.ph.i504

.lr.ph.i504:                                      ; preds = %bb.bk, %.lr.ph.i504
  %i.ih = phi ptr [ %i.ij, %.lr.ph.i504 ], [ %i.ig, %bb.bk ]
  %.07.i505 = phi ptr [ %i.ii, %.lr.ph.i504 ], [ %i.if, %bb.bk ]
  call void %i.ih(ptr noundef nonnull %2) #16, !inline_history !2
  %i.ii = getelementptr inbounds nuw i8, ptr %.07.i505, i64 8 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !40 ; 2 uses
  %.not.i506 = icmp eq ptr %i.ij, null
  br i1 %.not.i506, label %pmix_obj_run_destructors.exit507, label %.lr.ph.i504, !llvm.loop !3

pmix_obj_run_destructors.exit507:                 ; preds = %.lr.ph.i504, %bb.bk
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !65 ; 2 uses
  %.not406 = icmp eq ptr %i.il, null
  br i1 %.not406, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %pmix_obj_run_destructors.exit507
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void %i.il(ptr noundef nonnull %i.im, ptr noundef nonnull %2) #16, !inline_history !4
  br label %bb.iu

bb.bm:                                            ; preds = %pmix_obj_run_destructors.exit507
  call void @free(ptr noundef nonnull %2) #16
  br label %bb.iu

bb.bn:                                            ; preds = %bb.ba
  %i.in = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 48
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !64 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !40 ; 2 uses
  %.not6.i509 = icmp eq ptr %i.iq, null
  br i1 %.not6.i509, label %pmix_obj_run_destructors.exit513, label %.lr.ph.i510

.lr.ph.i510:                                      ; preds = %bb.bn, %.lr.ph.i510
  %i.ir = phi ptr [ %i.it, %.lr.ph.i510 ], [ %i.iq, %bb.bn ]
  %.07.i511 = phi ptr [ %i.is, %.lr.ph.i510 ], [ %i.ip, %bb.bn ]
  call void %i.ir(ptr noundef nonnull %3) #16, !inline_history !2
  %i.is = getelementptr inbounds nuw i8, ptr %.07.i511, i64 8 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !40 ; 2 uses
  %.not.i512 = icmp eq ptr %i.it, null
  br i1 %.not.i512, label %pmix_obj_run_destructors.exit513, label %.lr.ph.i510, !llvm.loop !3

bb.bo:                                            ; preds = %bb.as
  %i.iu = load i8, ptr @prte_allocation_required, align 1, !tbaa !32, !range !33, !noundef !34
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %bb.bp, label %._crit_edge702

._crit_edge702:                                   ; preds = %bb.bo
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4, !tbaa !55
  br label %bb.ca

bb.bp:                                            ; preds = %bb.bo
  %i.iw = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !64 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !40 ; 2 uses
  %.not6.i514 = icmp eq ptr %i.iz, null
  br i1 %.not6.i514, label %pmix_obj_run_destructors.exit518, label %.lr.ph.i515

.lr.ph.i515:                                      ; preds = %bb.bp, %.lr.ph.i515
  %i.ja = phi ptr [ %i.jc, %.lr.ph.i515 ], [ %i.iz, %bb.bp ]
  %.07.i516 = phi ptr [ %i.jb, %.lr.ph.i515 ], [ %i.iy, %bb.bp ]
  call void %i.ja(ptr noundef nonnull %3) #16, !inline_history !2
  %i.jb = getelementptr inbounds nuw i8, ptr %.07.i516, i64 8 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !40 ; 2 uses
  %.not.i517 = icmp eq ptr %i.jc, null
  br i1 %.not.i517, label %pmix_obj_run_destructors.exit518, label %.lr.ph.i515, !llvm.loop !3

pmix_obj_run_destructors.exit518:                 ; preds = %.lr.ph.i515, %bb.bp
  %i.jd = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 1) #16 ; 0 uses
  %i.je = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base_framework, i64 72), align 8, !tbaa !115
  %i.jf = icmp sgt i32 %i.je, 0
  br i1 %i.jf, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %pmix_obj_run_destructors.exit518
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.jg = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #16 ; 0 uses
  %i.jh = load i64, ptr %7, align 8, !tbaa !116
  %i.ji = sitofp i64 %i.jh to double
  %i.jj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !117
  %i.jl = sitofp i64 %i.jk to double
  %i.jm = fdiv double %i.jl, 1.000000e+06
  %i.jn = fadd double %i.jm, %i.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.jo = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base_framework, i64 76), align 4, !tbaa !55 ; 3 uses
  %or.cond13 = icmp ult i32 %i.jo, 64
  br i1 %or.cond13, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !57
  %i.jt = icmp sgt i32 %i.js, 0
  br i1 %i.jt, label %bb.bs, label %bb.bv

end_hunk_1
