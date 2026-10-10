Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Sselect?download=true
inline.NumInlined: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@H5FL_reg_calloc

declare i32 @H5S__extent_copy_real(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i32 @H5S_select_all(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i32 @H5S_hyper_add_span_element(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5S_select_elements(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5S__hyper_project_intersection(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i64 -1, -9223372036854775808) i64 @H5Sselect_project_intersection(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %3, i8 0, i64 480, i1 false)
  %i.b = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5_init_library() #8
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %._crit_edge, !prof !23

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.j = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2689, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %.thread47

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.l = phi i8 [ %.pre, %._crit_edge ], [ %i.d, %bb.a ]
  %i.m = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = trunc nuw i8 %i.l to i1
  %i.p = select i1 %i.n, i1 true, i1 %i.o
  br i1 %i.p, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !9
  %i.q = tail call i32 @H5S__init_package() #8
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g, !prof !108

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !9
  %i.s = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.t = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2689, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.thread47

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.v = call i32 @H5CX_push(ptr noundef nonnull %3) #8
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.y = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !24
  %i.z = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2689, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.thread47

bb.i:                                             ; preds = %bb.g
  %i.aa = call i32 @H5E_clear_stack() #8          ; 0 uses
  %i.ab = call ptr @H5I_object_verify(i64 noundef %0, i32 noundef 4) #8 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ae = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !24
  %i.af = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2693, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %.thread53

bb.k:                                             ; preds = %bb.i
  %i.ag = call ptr @H5I_object_verify(i64 noundef %1, i32 noundef 4) #8 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.aj = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !24
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2695, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %.thread53

bb.m:                                             ; preds = %bb.k
  %i.al = call ptr @H5I_object_verify(i64 noundef %2, i32 noundef 4) #8 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ao = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !24
  %i.ap = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2697, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %.thread53

bb.o:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 352
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 352
  %i.at = load i64, ptr %i.as, align 8, !tbaa !32
  %.not = icmp eq i64 %i.ar, %i.at
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.av = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !24
  %i.aw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2702, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.81) #8 ; 0 uses
  br label %.thread53

bb.q:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !21
  %.not33 = icmp eq i32 %i.ay, %i.ba
  br i1 %.not33, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bc = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !24
  %i.bd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2708, i64 noundef %i.bb, i64 noundef %i.bc, ptr noundef nonnull @.str.82) #8 ; 0 uses
  br label %.thread53

bb.s:                                             ; preds = %bb.q
  %i.be = call i32 @H5S_select_project_intersection(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.al, ptr noundef nonnull %i.a, i1 noundef zeroext false)
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bg = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !24
  %i.bh = load i64, ptr @H5E_CANTCLIP_g, align 8, !tbaa !24
  %i.bi = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2712, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.83) #8 ; 0 uses
  %.pre57 = load ptr, ptr %i.a, align 8
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !58  ; 2 uses
  %i.bk = call i64 @H5I_register(i32 noundef 4, ptr noundef %i.bj, i1 noundef zeroext true) #8 ; 2 uses
  %i.bl = icmp slt i64 %i.bk, 0
  br i1 %i.bl, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bm = load i64, ptr @H5E_ID_g, align 8, !tbaa !24
  %i.bn = load i64, ptr @H5E_CANTREGISTER_g, align 8, !tbaa !24
  %i.bo = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2716, i64 noundef %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str.84) #8 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.bp = phi ptr [ %.pre57, %bb.t ], [ %i.bj, %bb.v ] ; 2 uses
  %.not56 = icmp eq ptr %i.bp, null
  br i1 %.not56, label %.thread53, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = call i32 @H5S_close(ptr noundef nonnull %i.bp) #8
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %.split, label %.thread53

.split:                                           ; preds = %bb.x
  %i.bs = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bt = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !24
  %i.bu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2721, i64 noundef %i.bs, i64 noundef %i.bt, ptr noundef nonnull @.str.59) #8 ; 0 uses
  br label %.thread53

.thread53:                                        ; preds = %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.w, %bb.x, %.split
  %i.bv = call i32 @H5CX_pop(i1 noundef zeroext true) #8 ; 0 uses
  br label %.thread47

bb.y:                                             ; preds = %bb.u
  %i.bw = call i32 @H5CX_pop(i1 noundef zeroext true) #8 ; 0 uses
  br label %bb.z

.thread47:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread53
  %i.bx = call i32 @H5E_dump_api_stack() #8       ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread47
  %.1274350 = phi i64 [ -1, %.thread47 ], [ %i.bk, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.1274350
}

declare i64 @H5I_register(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5S_select_subtract(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 9 uses
  %2 = ptrtoaddr ptr %i.a to i64                  ; 4 uses
  %i.b = alloca [32 x i64], align 16              ; 9 uses
  %3 = ptrtoaddr ptr %i.b to i64                  ; 4 uses
  %i.c = alloca [32 x i64], align 16              ; 9 uses
  %4 = ptrtoaddr ptr %i.c to i64                  ; 4 uses
  %i.d = alloca [32 x i64], align 16              ; 9 uses
  %5 = ptrtoaddr ptr %i.d to i64                  ; 4 uses
  %i.e = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %i.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %i.i, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !9
  %i.j = tail call i32 @H5S__init_package() #8
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %._crit_edge37

._crit_edge37:                                    ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10
  %.pre38 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre39 = trunc nuw i8 %.pre to i1
  %.pre40 = trunc nuw i8 %.pre38 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !9
  %i.l = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.m = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.n = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_subtract, i32 noundef 2756, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %bb.o

bb.d:                                             ; preds = %._crit_edge37, %bb.a
  %.pre-phi41 = phi i1 [ %.pre40, %._crit_edge37 ], [ %i.h, %bb.a ]
  %.pre-phi = phi i1 [ %.pre39, %._crit_edge37 ], [ %i.f, %bb.a ]
  %i.o = xor i1 %.pre-phi41, true
  %i.p = select i1 %.pre-phi, i1 true, i1 %i.o
  br i1 %i.p, label %bb.e, label %bb.o, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29
  %i.s = load i32, ptr %i.r, align 8, !tbaa !56   ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.v = load i32, ptr %i.u, align 8, !tbaa !56   ; 2 uses
  switch i32 %i.v, label %bb.i [
    i32 0, label %bb.o
    i32 3, label %bb.g
    i32 1, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 @H5S_select_none(ptr noundef nonnull %0) #8
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.z = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !24
  %i.aa = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_subtract, i32 noundef 2769, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.63) #8 ; 0 uses
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  switch i32 %i.s, label %bb.m [
    i32 1, label %bb.j
    i32 3, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ab = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ac = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !24
  %i.ad = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_subtract, i32 noundef 2774, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.85) #8 ; 0 uses
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !21 ; 3 uses
  %.not35 = icmp eq i32 %i.af, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 5 uses
  %wide.trip.count = zext i32 %i.af to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.af, 56
  br i1 %min.iters.check, label %scalar.ph.preheader.a, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %6 = ptrtoaddr ptr %i.ah to i64                 ; 4 uses
  %7 = sub i64 %2, %3
  %diff.check = icmp ugt i64 %7, -32
  %8 = sub i64 %2, %4
  %diff.check43 = icmp ugt i64 %8, -32
  %conflict.rdx = or i1 %diff.check, %diff.check43
  %9 = sub i64 %2, %5
  %diff.check44 = icmp ugt i64 %9, -32
  %conflict.rdx45 = or i1 %conflict.rdx, %diff.check44
  %10 = sub i64 %2, %6
  %diff.check46 = icmp ugt i64 %10, -32
  %conflict.rdx47 = or i1 %conflict.rdx45, %diff.check46
  %11 = sub i64 %3, %4
  %diff.check48 = icmp ugt i64 %11, -32
  %conflict.rdx49 = or i1 %conflict.rdx47, %diff.check48
  %12 = sub i64 %3, %5
  %diff.check50 = icmp ugt i64 %12, -32
  %conflict.rdx51 = or i1 %conflict.rdx49, %diff.check50
  %13 = sub i64 %3, %6
  %diff.check52 = icmp ugt i64 %13, -32
  %conflict.rdx53 = or i1 %conflict.rdx51, %diff.check52
  %14 = sub i64 %4, %5
  %diff.check54 = icmp ugt i64 %14, -32
  %conflict.rdx55 = or i1 %conflict.rdx53, %diff.check54
  %15 = sub i64 %4, %6
  %diff.check56 = icmp ugt i64 %15, -32
  %conflict.rdx57 = or i1 %conflict.rdx55, %diff.check56
  %16 = sub i64 %6, %5
  %diff.check58 = icmp ugt i64 %16, -32
  %conflict.rdx59 = or i1 %conflict.rdx57, %diff.check58
  br i1 %conflict.rdx59, label %scalar.ph.preheader.a, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x i64> zeroinitializer, ptr %i.ai, align 16, !tbaa !24
  store <2 x i64> zeroinitializer, ptr %i.aj, align 16, !tbaa !24
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x i64> splat (i64 1), ptr %i.ak, align 16, !tbaa !24
  store <2 x i64> splat (i64 1), ptr %i.al, align 16, !tbaa !24
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> splat (i64 1), ptr %i.am, align 16, !tbaa !24
  store <2 x i64> splat (i64 1), ptr %i.an, align 16, !tbaa !24
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <2 x i64>, ptr %i.ao, align 8, !tbaa !24
  %wide.load60 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <2 x i64> %wide.load, ptr %i.aq, align 16, !tbaa !24
  store <2 x i64> %wide.load60, ptr %i.ar, align 16, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader.a

scalar.ph.preheader.a:                            ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 8 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader.a
  %17 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.ph
  store i64 0, ptr %17, align 16, !tbaa !24
  %18 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.ph
  store i64 1, ptr %18, align 16, !tbaa !24
  %19 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.ph
  store i64 1, ptr %19, align 16, !tbaa !24
  %20 = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.ph
  %21 = load i64, ptr %20, align 8, !tbaa !24
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.ph
  store i64 %21, ptr %22, align 16, !tbaa !24
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader.a
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader.a ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %23 = add nsw i64 %wide.trip.count, -1
  %24 = icmp eq i64 %indvars.iv.ph, %23
  br i1 %24, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %25 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 0, ptr %25, align 8, !tbaa !24
  %26 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store i64 1, ptr %26, align 8, !tbaa !24
  %27 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store i64 1, ptr %27, align 8, !tbaa !24
  %28 = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %29 = load i64, ptr %28, align 8, !tbaa !24
  %30 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 %29, ptr %30, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store i64 0, ptr %i.at, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store i64 1, ptr %i.au, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next
  store i64 1, ptr %i.av, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !24
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !110

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.k
  %i.az = call i32 @H5S_select_hyperslab(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #8
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.l, label %.thread

.thread:                                          ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.bb = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bc = load i64, ptr @H5E_CANTSELECT_g, align 8, !tbaa !24
  %i.bd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_subtract, i32 noundef 2798, i64 noundef %i.bb, i64 noundef %i.bc, ptr noundef nonnull @.str.86) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.o

bb.m:                                             ; preds = %.thread, %bb.i
  %i.be = call i32 @H5S__modify_select(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull %1) #8
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bh = load i64, ptr @H5E_CANTCLIP_g, align 8, !tbaa !24
  %i.bi = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_subtract, i32 noundef 2806, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.87) #8 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.d, %bb.e, %bb.m, %bb.g, %bb.n, %bb.j, %bb.h, %bb.c, %bb.f
  %.2 = phi i32 [ -1, %bb.c ], [ -1, %bb.h ], [ 0, %bb.g ], [ -1, %bb.j ], [ -1, %bb.n ], [ 0, %bb.m ], [ -1, %bb.l ], [ %i.v, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.2
}

declare i32 @H5S_select_hyperslab(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5S__modify_select(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i64 -1, -9223372036854775808) i64 @H5Ssel_iter_create(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %3, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #8
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !23

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_create, i32 noundef 2840, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %.thread37

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !9
  %i.p = tail call i32 @H5S__init_package() #8
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !25

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !9
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_create, i32 noundef 2840, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.thread37

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %3) #8
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !24
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_create, i32 noundef 2840, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.thread37

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #8           ; 0 uses
  %i.aa = call ptr @H5I_object_verify(i64 noundef %0, i32 noundef 4) #8 ; 7 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ad = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !24
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_create, i32 noundef 2844, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %.thread43

bb.k:                                             ; preds = %bb.i
  %i.af = icmp eq i64 %1, 0
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ah = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !24
  %i.ai = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_create, i32 noundef 2846, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.88) #8 ; 0 uses
  br label %.thread43

bb.m:                                             ; preds = %bb.k
  %.not = icmp ult i32 %2, 4
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ak = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !24
  %i.al = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_create, i32 noundef 2848, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str.89) #8 ; 0 uses
  br label %.thread43

bb.o:                                             ; preds = %bb.m
  %i.am = call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list) #8 ; 9 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ao = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ap = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !24
  %i.aq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_create, i32 noundef 2852, i64 noundef %i.ao, i64 noundef %i.ap, ptr noundef nonnull @.str.23) #8 ; 0 uses
  br label %.thread43

bb.q:                                             ; preds = %bb.o
  %i.ar = or disjoint i32 %2, 4096
  %i.as = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = xor i1 %i.av, true
  %i.ax = select i1 %i.at, i1 true, i1 %i.aw
  br i1 %i.ax, label %bb.r, label %H5S_select_iter_init.exit.thread, !prof !12

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !21 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !43
  %.not.i = icmp eq i32 %i.az, 0
  br i1 %.not.i, label %H5S_select_iter_init.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !44
  %i.be = zext i32 %i.az to i64
  %i.bf = shl nuw nsw i64 %i.be, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.bd, i64 %i.bf, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 272
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull align 8 %i.bh, i64 %i.bf, i1 false)
  br label %H5S_select_iter_init.exit

H5S_select_iter_init.exit:                        ; preds = %bb.r, %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 536
  store i64 %1, ptr %i.bi, align 8, !tbaa !45
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 352
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 528
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !46
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 544
  store i32 %i.ar, ptr %i.bn, align 8, !tbaa !47
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !29
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 160
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !48
  %i.br = call i32 %i.bq(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.am) #8, !inline_history !55
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %H5S_select_iter_init.exit.thread, label %bb.t

H5S_select_iter_init.exit.thread:                 ; preds = %bb.q, %H5S_select_iter_init.exit
  %i.bt = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bu = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.bv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_create, i32 noundef 2859, i64 noundef %i.bt, i64 noundef %i.bu, ptr noundef nonnull @.str.24) #8 ; 0 uses
  br label %.thread43

bb.t:                                             ; preds = %H5S_select_iter_init.exit
  %i.bw = call i64 @H5I_register(i32 noundef 15, ptr noundef nonnull %i.am, i1 noundef zeroext true) #8 ; 2 uses
  %i.bx = icmp slt i64 %i.bw, 0
end_hunk_0
begin_hunk_1_@H5Ssel_iter_close:bb.a
  %i.l = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !9
  %i.p = tail call i32 @H5S__init_package() #8
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !25

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !9
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_close, i32 noundef 3156, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.thread20

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %1) #8
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !24
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_close, i32 noundef 3156, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.thread20

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #8           ; 0 uses
  %i.aa = call ptr @H5I_object_verify(i64 noundef %0, i32 noundef 15) #8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ad = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !24
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_close, i32 noundef 3160, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.91) #8 ; 0 uses
  br label %.thread26

bb.k:                                             ; preds = %bb.i
  %i.af = call i32 @H5I_dec_app_ref(i64 noundef %0) #8
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.ah = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ai = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !24
  %i.aj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_close, i32 noundef 3164, i64 noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.102) #8 ; 0 uses
  br label %.thread26

.thread26:                                        ; preds = %bb.l, %bb.j
  %i.ak = call i32 @H5CX_pop(i1 noundef zeroext true) #8 ; 0 uses
  br label %.thread20

bb.m:                                             ; preds = %bb.k
  %i.al = call i32 @H5CX_pop(i1 noundef zeroext true) #8 ; 0 uses
  br label %bb.n

.thread20:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread26
  %i.am = call i32 @H5E_dump_api_stack() #8       ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread20
  %.0111523 = phi i32 [ -1, %.thread20 ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i32 %.0111523
}

declare i32 @H5I_dec_app_ref(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS5H5F_t", !13, i64 0}
!15 = !{!"H5O_shared_t", !5, i64 0, !14, i64 8, !5, i64 16, !4, i64 24}
!16 = !{!"long", !4, i64 0}
!17 = !{!"p1 long", !13, i64 0}
!18 = !{!"H5S_extent_t", !15, i64 0, !5, i64 40, !5, i64 44, !16, i64 48, !5, i64 56, !17, i64 64, !17, i64 72}
!19 = !{!"", !13, i64 0, !8, i64 8, !4, i64 16, !16, i64 272, !4, i64 280}
!20 = !{!"H5S_t", !18, i64 0, !19, i64 80}
!21 = !{!20, !5, i64 56}
!22 = !{!20, !8, i64 88}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{!16, !16, i64 0}
!25 = !{!"branch_weights", i32 1073205, i32 2146410443}
!26 = !{!20, !5, i64 40}
!27 = !{!"branch_weights", i32 0, i32 -2147483648}
!28 = !{!4, !4, i64 0}
!29 = !{!20, !13, i64 80}
!30 = !{!"", !5, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160}
!31 = !{!30, !13, i64 16}
!32 = !{!20, !16, i64 352}
!33 = !{!30, !13, i64 24}
!34 = !{!30, !13, i64 56}
!35 = !{!30, !13, i64 96}
!36 = !{!30, !13, i64 136}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!30, !13, i64 144}
!40 = !{!30, !13, i64 152}
!41 = !{!"p1 _ZTS20H5S_sel_iter_class_t", !13, i64 0}
!42 = !{!"H5S_sel_iter_t", !41, i64 0, !5, i64 8, !4, i64 16, !4, i64 272, !16, i64 528, !16, i64 536, !5, i64 544, !4, i64 552}
!43 = !{!42, !5, i64 8}
!44 = !{!20, !17, i64 64}
!45 = !{!42, !16, i64 536}
!46 = !{!42, !16, i64 528}
!47 = !{!42, !5, i64 544}
!48 = !{!30, !13, i64 160}
!49 = !{!42, !41, i64 0}
!50 = !{!"H5S_sel_iter_class_t", !5, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64}
!51 = !{!50, !13, i64 8}
!52 = !{!50, !13, i64 40}
!53 = !{!50, !13, i64 56}
!54 = !{!50, !13, i64 64}
!55 = !{ptr @H5S_select_iter_init}
!56 = !{!30, !5, i64 0}
!57 = !{!"p1 _ZTS5H5S_t", !13, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!5, !5, i64 0}
!60 = !{!14, !14, i64 0}
!61 = !{!17, !17, i64 0}
!62 = !{!13, !13, i64 0}
!63 = !{i64 0, i64 4, !59, i64 8, i64 8, !60, i64 16, i64 4, !59, i64 24, i64 16, !28, i64 40, i64 4, !59, i64 44, i64 4, !59, i64 48, i64 8, !24, i64 56, i64 4, !59, i64 64, i64 8, !61, i64 72, i64 8, !61, i64 80, i64 8, !62, i64 88, i64 1, !9, i64 96, i64 256, !28, i64 352, i64 8, !24, i64 360, i64 8, !28}
!64 = !{i64 0, i64 8, !62, i64 8, i64 1, !9, i64 16, i64 256, !28, i64 272, i64 8, !24, i64 280, i64 8, !28}
!65 = !{!30, !13, i64 8}
!66 = !{ptr @H5S_select_release}
!67 = !{!"branch_weights", i32 127, i32 1}
!68 = !{!"branch_weights", i32 255873, i32 127}
!69 = !{!30, !13, i64 32}
!70 = !{!30, !13, i64 40}
!71 = !{!"p1 omnipotent char", !13, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!30, !13, i64 48}
!74 = !{!30, !13, i64 64}
!75 = !{!30, !13, i64 72}
!76 = !{!30, !13, i64 80}
!77 = !{!30, !13, i64 88}
!78 = !{!30, !13, i64 104}
!79 = !{!30, !13, i64 128}
!80 = distinct !{!80, !37}
!81 = distinct !{!81, !38}
!82 = !{ptr @H5S_select_adjust_s}
!83 = !{!50, !13, i64 24}
!84 = distinct !{!84, !37}
!85 = distinct !{!85, !37}
!86 = distinct !{!86, !37}
!87 = !{!"H5S_sel_iter_op_t", !5, i64 0, !4, i64 8}
!88 = !{!87, !5, i64 0}
!89 = distinct !{!89, !37}
!90 = distinct !{!90, !37}
!91 = distinct !{!91, !37}
!92 = distinct !{!92, !37}
!93 = distinct !{!93, !37}
!94 = distinct !{!94, !37}
!95 = !{!30, !13, i64 112}
!96 = !{!50, !13, i64 16}
!97 = !{!50, !13, i64 32}
!98 = !{!50, !13, i64 48}
!99 = distinct !{!99, !37}
!100 = !{!30, !13, i64 120}
!101 = distinct !{!101, !37}
!102 = distinct !{!102, !38}
!103 = distinct !{!103, !37}
!104 = distinct !{!104, !37}
!105 = distinct !{!105, !37}
!106 = !{!"p1 _ZTS14H5S_pnt_node_t", !13, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!"branch_weights", i32 1132716, i32 2146350932}
!109 = distinct !{!109, !37, !111, !112}
!110 = distinct !{!110, !37, !111}
!111 = !{!"llvm.loop.isvectorized", i32 1}
!112 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_1
