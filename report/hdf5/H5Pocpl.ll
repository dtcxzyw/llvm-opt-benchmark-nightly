Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Pocpl?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@H5E_clear_stack
declare i32 @H5E_clear_stack() local_unnamed_addr #3

declare ptr @H5P_object_verify(i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @H5P_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5CX_pop(i1 noundef zeroext) local_unnamed_addr #3

declare i32 @H5E_dump_api_stack() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Pget_attr_phase_change(i64 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %3, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #10
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !16

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_attr_phase_change, i32 noundef 245, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2) #10 ; 0 uses
  br label %.thread29

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5P_init_g, align 1, !tbaa !9
  %i.p = tail call i32 @H5P__init_package() #10
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5P_init_g, align 1, !tbaa !9
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_attr_phase_change, i32 noundef 245, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.3) #10 ; 0 uses
  br label %.thread29

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %3) #10
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_attr_phase_change, i32 noundef 245, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.4) #10 ; 0 uses
  br label %.thread29

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #10          ; 0 uses
  %i.aa = load i64, ptr @H5P_CLS_OBJECT_CREATE_ID_g, align 8, !tbaa !14
  %i.ab = call ptr @H5P_object_verify(i64 noundef %0, i64 noundef %i.aa, i1 noundef zeroext true) #10 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !18

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr @H5E_ID_g, align 8, !tbaa !14
  %i.ae = load i64, ptr @H5E_BADID_g, align 8, !tbaa !14
  %i.af = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_attr_phase_change, i32 noundef 249, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.8) #10 ; 0 uses
  br label %.thread35

bb.k:                                             ; preds = %bb.i
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = call i32 @H5P_get(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.9, ptr noundef nonnull %1) #10
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %bb.n, !prof !18

bb.m:                                             ; preds = %bb.l
  %i.ai = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.aj = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !14
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_attr_phase_change, i32 noundef 254, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.13) #10 ; 0 uses
  br label %.thread35

bb.n:                                             ; preds = %bb.l, %bb.k
  %.not20 = icmp eq ptr %2, null
  br i1 %.not20, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = call i32 @H5P_get(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.11, ptr noundef nonnull %2) #10
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.p, label %bb.q, !prof !18

bb.p:                                             ; preds = %bb.o
  %i.an = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.ao = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !14
  %i.ap = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_attr_phase_change, i32 noundef 258, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.14) #10 ; 0 uses
  br label %.thread35

.thread35:                                        ; preds = %bb.p, %bb.m, %bb.j
  %i.aq = call i32 @H5CX_pop(i1 noundef zeroext true) #10 ; 0 uses
  br label %.thread29

bb.q:                                             ; preds = %bb.n, %bb.o
  %i.ar = call i32 @H5CX_pop(i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.r

.thread29:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread35
  %i.as = call i32 @H5E_dump_api_stack() #10      ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread29
  %.0162432 = phi i32 [ -1, %.thread29 ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.0162432
}

declare i32 @H5P_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Pset_attr_creation_order(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %2 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %2, i8 0, i64 480, i1 false)
  %i.b = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5_init_library() #10
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %._crit_edge, !prof !16

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.j = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_attr_creation_order, i32 noundef 281, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.2) #10 ; 0 uses
  br label %.thread30

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.l = phi i8 [ %.pre, %._crit_edge ], [ %i.d, %bb.a ]
  %i.m = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = trunc nuw i8 %i.l to i1
  %i.p = select i1 %i.n, i1 true, i1 %i.o
  br i1 %i.p, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5P_init_g, align 1, !tbaa !9
  %i.q = tail call i32 @H5P__init_package() #10
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5P_init_g, align 1, !tbaa !9
  %i.s = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.t = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_attr_creation_order, i32 noundef 281, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.3) #10 ; 0 uses
  br label %.thread30

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.v = call i32 @H5CX_push(ptr noundef nonnull %2) #10
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.y = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.z = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_attr_creation_order, i32 noundef 281, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.4) #10 ; 0 uses
  br label %.thread30

bb.i:                                             ; preds = %bb.g
  %i.aa = call i32 @H5E_clear_stack() #10         ; 0 uses
  %i.ab = and i32 %1, 3
  %or.cond.not = icmp eq i32 %i.ab, 2
  br i1 %or.cond.not, label %bb.j, label %bb.k, !prof !18

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !14
  %i.ad = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !14
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_attr_creation_order, i32 noundef 285, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.15) #10 ; 0 uses
  br label %.thread36

bb.k:                                             ; preds = %bb.i
  %i.af = load i64, ptr @H5P_CLS_OBJECT_CREATE_ID_g, align 8, !tbaa !14
  %i.ag = call ptr @H5P_object_verify(i64 noundef %0, i64 noundef %i.af, i1 noundef zeroext false) #10 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.l, label %bb.m, !prof !18

bb.l:                                             ; preds = %bb.k
  %i.ai = load i64, ptr @H5E_ID_g, align 8, !tbaa !14
  %i.aj = load i64, ptr @H5E_BADID_g, align 8, !tbaa !14
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_attr_creation_order, i32 noundef 289, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.8) #10 ; 0 uses
  br label %.thread36

bb.m:                                             ; preds = %bb.k
  %i.al = call i32 @H5P_get(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.a) #10
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.n, label %bb.o, !prof !18

bb.n:                                             ; preds = %bb.m
  %i.an = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.ao = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !14
  %i.ap = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_attr_creation_order, i32 noundef 293, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.17) #10 ; 0 uses
  br label %.thread36

bb.o:                                             ; preds = %bb.m
  %i.aq = load i8, ptr %i.a, align 1, !tbaa !19
  %i.ar = and i8 %i.aq, -13
  %i.as = trunc i32 %1 to i8
  %.tr = shl i8 %i.as, 2
  %i.at = and i8 %.tr, 12
  %i.au = or disjoint i8 %i.at, %i.ar
  store i8 %i.au, ptr %i.a, align 1, !tbaa !19
  %i.av = call i32 @H5P_set(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.a) #10
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.p, label %bb.q, !prof !18

bb.p:                                             ; preds = %bb.o
  %i.ax = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.ay = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.az = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_attr_creation_order, i32 noundef 306, i64 noundef %i.ax, i64 noundef %i.ay, ptr noundef nonnull @.str.18) #10 ; 0 uses
  br label %.thread36

.thread36:                                        ; preds = %bb.j, %bb.p, %bb.n, %bb.l
  %i.ba = call i32 @H5CX_pop(i1 noundef zeroext true) #10 ; 0 uses
  br label %.thread30

bb.q:                                             ; preds = %bb.o
  %i.bb = call i32 @H5CX_pop(i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.r

.thread30:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread36
  %i.bc = call i32 @H5E_dump_api_stack() #10      ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread30
  %.0172533 = phi i32 [ -1, %.thread30 ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0172533
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Pget_attr_creation_order(i64 noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %2, i8 0, i64 480, i1 false)
  %i.b = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5_init_library() #10
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %._crit_edge, !prof !16

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.j = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_attr_creation_order, i32 noundef 327, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.2) #10 ; 0 uses
  br label %.thread29

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.l = phi i8 [ %.pre, %._crit_edge ], [ %i.d, %bb.a ]
  %i.m = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = trunc nuw i8 %i.l to i1
  %i.p = select i1 %i.n, i1 true, i1 %i.o
  br i1 %i.p, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5P_init_g, align 1, !tbaa !9
  %i.q = tail call i32 @H5P__init_package() #10
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5P_init_g, align 1, !tbaa !9
  %i.s = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.t = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_attr_creation_order, i32 noundef 327, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.3) #10 ; 0 uses
  br label %.thread29

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.v = call i32 @H5CX_push(ptr noundef nonnull %2) #10
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.y = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.z = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_attr_creation_order, i32 noundef 327, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.4) #10 ; 0 uses
  br label %.thread29

bb.i:                                             ; preds = %bb.g
  %i.aa = call i32 @H5E_clear_stack() #10         ; 0 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread34, label %bb.j

.thread34:                                        ; preds = %bb.i
  %i.ab = call i32 @H5CX_pop(i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %1, align 4, !tbaa !15
  %i.ac = load i64, ptr @H5P_CLS_OBJECT_CREATE_ID_g, align 8, !tbaa !14
  %i.ad = call ptr @H5P_object_verify(i64 noundef %0, i64 noundef %i.ac, i1 noundef zeroext true) #10 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %bb.l, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.af = load i64, ptr @H5E_ID_g, align 8, !tbaa !14
  %i.ag = load i64, ptr @H5E_BADID_g, align 8, !tbaa !14
  %i.ah = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_attr_creation_order, i32 noundef 339, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.8) #10 ; 0 uses
  br label %.thread38

bb.l:                                             ; preds = %bb.j
  %i.ai = call i32 @H5P_get(ptr noundef nonnull %i.ad, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.a) #10
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.m, label %bb.n, !prof !18

bb.m:                                             ; preds = %bb.l
  %i.ak = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !14
  %i.al = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !14
  %i.am = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pget_attr_creation_order, i32 noundef 343, i64 noundef %i.ak, i64 noundef %i.al, ptr noundef nonnull @.str.17) #10 ; 0 uses
  br label %.thread38

.thread38:                                        ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.an = call i32 @H5CX_pop(i1 noundef zeroext true) #10 ; 0 uses
  br label %.thread29

bb.n:                                             ; preds = %bb.l
  %i.ao = load i8, ptr %i.a, align 1, !tbaa !19
  %i.ap = lshr i8 %i.ao, 2                        ; 2 uses
  %.lobit = and i8 %i.ap, 1
  %i.aq = zext nneg i8 %.lobit to i32
  %i.ar = load i32, ptr %1, align 4, !tbaa !15
  %i.as = or i32 %i.ar, %i.aq
  %i.at = and i8 %i.ap, 2
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or i32 %i.as, %i.au
  store i32 %i.av, ptr %1, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.aw = call i32 @H5CX_pop(i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.o

.thread29:                                        ; preds = %bb.c, %bb.f, %bb.h, %.thread38
  %i.ax = call i32 @H5E_dump_api_stack() #10      ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread34, %.thread29
  %.1182732 = phi i32 [ 0, %bb.n ], [ -1, %.thread29 ], [ 0, %.thread34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.1182732
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Pset_obj_track_times(i64 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %2 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %2, i8 0, i64 480, i1 false)
  %i.b = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5_init_library() #10
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %._crit_edge, !prof !16

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !14
  %i.j = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Pset_obj_track_times, i32 noundef 384, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.2) #10 ; 0 uses
  br label %.thread23

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.l = phi i8 [ %.pre, %._crit_edge ], [ %i.d, %bb.a ]
  %i.m = load i8, ptr @H5P_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = trunc nuw i8 %i.l to i1
  %i.p = select i1 %i.n, i1 true, i1 %i.o
  br i1 %i.p, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5P_init_g, align 1, !tbaa !9
  %i.q = tail call i32 @H5P__init_package() #10
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %bb.e
end_hunk_0
