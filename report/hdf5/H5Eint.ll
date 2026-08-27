Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Eint?download=true
inline.NumInlined: 13
inline.NumDeleted: 3
begin_hunk_0_@H5E__get_auto:bb.a
bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  store ptr %i.i, ptr %2, align 8, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5E_get_default_auto_func(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5E_init_g, align 1, !tbaa !8
  %i.f = tail call i32 @H5E__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10
  %.pre4 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre5 = trunc nuw i8 %.pre to i1
  %.pre6 = trunc nuw i8 %.pre4 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5E_init_g, align 1, !tbaa !8
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !13
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !13
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5E_get_default_auto_func, i32 noundef 1484, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi7 = phi i1 [ %.pre6, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre5, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi7, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %H5E__get_auto.exit, label %bb.e, !prof !12

H5E__get_auto.exit:                               ; preds = %bb.d
  %.sroa.3.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @H5E_stack_g, i64 2072), align 8, !tbaa !55
  store ptr %.sroa.3.0.copyload, ptr %0, align 8, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %H5E__get_auto.exit, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.d ], [ 0, %H5E__get_auto.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @H5E__set_auto(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2096
  store ptr %2, ptr %i.h, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5E__push_stack(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = zext i1 %1 to i8
  %i.c = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %bb.f, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.j = icmp ult i64 %i.i, 32
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %i.i ; 9 uses
  store i8 %i.b, ptr %i.l, align 8, !tbaa !20
  %i.m = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = xor i1 %i.p, true
  %i.r = select i1 %i.n, i1 true, i1 %i.q
  br i1 %i.r, label %bb.d, label %H5E__set_stack_entry.exit.thread, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.not.i = icmp eq ptr %3, null
  %spec.store.select.i = select i1 %.not.i, ptr @.str.407, ptr %3
  %.not28.i = icmp eq ptr %2, null
  %spec.store.select2.i = select i1 %.not28.i, ptr @.str.408, ptr %2
  %.not29.i = icmp eq ptr %8, null
  %spec.store.select1.i = select i1 %.not29.i, ptr @.str.409, ptr %8 ; 2 uses
  store i64 %5, ptr %i.s, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %6, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %7, ptr %i.u, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %spec.store.select.i, ptr %i.v, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %spec.store.select2.i, ptr %i.w, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i32 %4, ptr %i.x, align 8, !tbaa !29
  %.not30.i = icmp eq ptr %9, null
  br i1 %.not30.i, label %.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !30
  %i.y = call i32 @vasprintf(ptr noundef nonnull %i.a, ptr noundef nonnull %spec.store.select1.i, ptr noundef nonnull %9) #15
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %H5E__set_stack_entry.exit.thread19, label %H5E__set_stack_entry.exit

H5E__set_stack_entry.exit.thread19:               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.f

.split:                                           ; preds = %bb.d
  %i.aa = tail call noalias ptr @strdup(ptr noundef nonnull %spec.store.select1.i) #15 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !31
  %i.ac = icmp eq ptr %i.aa, null
  br i1 %i.ac, label %bb.f, label %H5E__set_stack_entry.exit.H5E__set_stack_entry.exit.thread_crit_edge

H5E__set_stack_entry.exit:                        ; preds = %bb.e
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %H5E__set_stack_entry.exit.H5E__set_stack_entry.exit.thread_crit_edge

H5E__set_stack_entry.exit.H5E__set_stack_entry.exit.thread_crit_edge: ; preds = %H5E__set_stack_entry.exit, %.split
  %.pre = load i64, ptr %0, align 8, !tbaa !16
  br label %H5E__set_stack_entry.exit.thread

H5E__set_stack_entry.exit.thread:                 ; preds = %H5E__set_stack_entry.exit.H5E__set_stack_entry.exit.thread_crit_edge, %bb.c
  %i.af = phi i64 [ %.pre, %H5E__set_stack_entry.exit.H5E__set_stack_entry.exit.thread_crit_edge ], [ %i.i, %bb.c ]
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %0, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %H5E__set_stack_entry.exit.thread19, %.split, %H5E__set_stack_entry.exit.thread, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %H5E__set_stack_entry.exit.thread ], [ 0, %bb.b ], [ -1, %H5E__set_stack_entry.exit.thread19 ], [ -1, %.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #10

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5E__clear_entries(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %.preheader, label %.thread, !prof !12

.preheader:                                       ; preds = %bb.a
  %.not44 = icmp eq i64 %1, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.02946 = phi i32 [ 0, %.lr.ph ], [ %i.i, %bb.m ]
  %.03045 = phi i64 [ %1, %.lr.ph ], [ %i.bc, %bb.m ]
  %i.h = load i64, ptr %0, align 8, !tbaa !16
  %i.i = add nuw nsw i32 %.02946, 1               ; 3 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = sub i64 %i.h, %i.j
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.k ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !60   ; 3 uses
  %i.p = load i64, ptr @H5E_first_min_id_g, align 8, !tbaa !13
  %i.q = icmp slt i64 %i.o, %i.p
  %i.r = load i64, ptr @H5E_last_min_id_g, align 8
  %i.s = icmp sgt i64 %i.o, %i.r
  %or.cond = select i1 %i.q, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = tail call i32 @H5I_dec_ref(i64 noundef %i.o) #15
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr @H5E_ERROR_g, align 8, !tbaa !13
  %i.w = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !13
  %i.x = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5E__clear_entries, i32 noundef 1796, i64 noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.410) ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.b, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !59   ; 3 uses
  %i.aa = load i64, ptr @H5E_first_maj_id_g, align 8, !tbaa !13
  %i.ab = icmp slt i64 %i.z, %i.aa
  %i.ac = load i64, ptr @H5E_last_maj_id_g, align 8
  %i.ad = icmp sgt i64 %i.z, %i.ac
  %or.cond38 = select i1 %i.ab, i1 true, i1 %i.ad
  br i1 %or.cond38, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call i32 @H5I_dec_ref(i64 noundef %i.z) #15
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = load i64, ptr @H5E_ERROR_g, align 8, !tbaa !13
  %i.ah = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !13
  %i.ai = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5E__clear_entries, i32 noundef 1799, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.410) ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !58  ; 2 uses
  %i.ak = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !13
  %.not35 = icmp eq i64 %i.aj, %i.ak
  br i1 %.not35, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = tail call i32 @H5I_dec_ref(i64 noundef %i.aj) #15
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = load i64, ptr @H5E_ERROR_g, align 8, !tbaa !13
  %i.ao = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !13
  %i.ap = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5E__clear_entries, i32 noundef 1802, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.411) ; 0 uses
  br label %.thread

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.aq = load i8, ptr %i.l, align 8, !tbaa !20, !range !10, !noundef !11
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !61
  %i.au = tail call ptr @H5MM_xfree_const(ptr noundef %i.at) #15 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !62
  %i.ax = tail call ptr @H5MM_xfree_const(ptr noundef %i.aw) #15 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !63
  %i.bb = tail call ptr @H5MM_xfree_const(ptr noundef %i.ba) #15
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !63
  %i.bc = add i64 %.03045, -1                     ; 2 uses
  %.not = icmp eq i64 %i.bc, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !87

._crit_edge.loopexit:                             ; preds = %bb.m
  %i.bd = zext nneg i32 %i.i to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit
  %.029.lcssa = phi i64 [ %i.bd, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %i.be = load i64, ptr %0, align 8, !tbaa !16
  %i.bf = sub i64 %i.be, %.029.lcssa
  store i64 %i.bf, ptr %0, align 8, !tbaa !16
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.g, %bb.d, %bb.a, %._crit_edge
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %._crit_edge ], [ -1, %bb.d ], [ -1, %bb.g ], [ -1, %bb.j ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5E__pop(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @H5E__clear_entries(ptr noundef %0, i64 noundef %1)
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_ERROR_g, align 8, !tbaa !13
  %i.j = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !13
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5E__pop, i32 noundef 1920, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.16) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5E_dump_api_stack() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.H5_user_cb_state_t, align 8 ; 4 uses
  %1 = alloca %struct.H5_user_cb_state_t, align 8 ; 4 uses
  %i.a = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5E_init_g, align 1, !tbaa !8
  %i.f = tail call i32 @H5E__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10
  %.pre11 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre12 = trunc nuw i8 %.pre to i1
  %.pre13 = trunc nuw i8 %.pre11 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5E_init_g, align 1, !tbaa !8
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !13
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !13
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5E_dump_api_stack, i32 noundef 1943, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2) ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi14 = phi i1 [ %.pre13, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre12, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi14, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %bb.n, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @H5E_stack_g, i64 2056), align 8, !tbaa !32
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @H5E_stack_g, i64 2064), align 16, !tbaa !38
  %.not8 = icmp eq ptr %i.o, null
  br i1 %.not8, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  %i.p = call i32 @H5_user_cb_prepare(ptr noundef nonnull %0) #15
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @H5E_stack_g, i64 2064), align 16, !tbaa !38
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @H5E_stack_g, i64 2096), align 16, !tbaa !36
  %i.t = call i32 %i.r(ptr noundef %i.s) #15      ; 0 uses
  %i.u = call i32 @H5_user_cb_restore(ptr noundef nonnull %0) #15
  %.lobit10 = ashr i32 %i.u, 31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i32 [ %.lobit10, %bb.h ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @H5E_stack_g, i64 2072), align 8, !tbaa !39
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.w = call i32 @H5_user_cb_prepare(ptr noundef nonnull %1) #15
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @H5E_stack_g, i64 2072), align 8, !tbaa !39
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @H5E_stack_g, i64 2096), align 16, !tbaa !36
  %i.aa = call i32 %i.y(i64 noundef 0, ptr noundef %i.z) #15 ; 0 uses
  %i.ab = call i32 @H5_user_cb_restore(ptr noundef nonnull %1) #15
  %.lobit = ashr i32 %i.ab, 31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1 = phi i32 [ %.lobit, %bb.l ], [ -1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.j, %bb.m, %bb.f, %bb.i, %bb.d
  %.2 = phi i32 [ -1, %bb.c ], [ %.0, %bb.i ], [ 0, %bb.f ], [ %.1, %bb.m ], [ 0, %bb.j ], [ 0, %bb.d ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @H5E_pause_stack() local_unnamed_addr #11 {
bb.a:
  %i.a = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @H5E_stack_g, i64 2104), align 8, !tbaa !88
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr getelementptr inbounds nuw (i8, ptr @H5E_stack_g, i64 2104), align 8, !tbaa !88
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @H5E_resume_stack() local_unnamed_addr #11 {
bb.a:
  %i.a = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @H5E_stack_g, i64 2104), align 8, !tbaa !88
  %i.h = add i32 %i.g, -1
  store i32 %i.h, ptr getelementptr inbounds nuw (i8, ptr @H5E_stack_g, i64 2104), align 8, !tbaa !88
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5E__unregister_class(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %H5E__free_class.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5I_iterate(i32 noundef 13, ptr noundef nonnull @H5E__close_msg_cb, ptr noundef %0, i1 noundef zeroext false) #15
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_ERROR_g, align 8, !tbaa !13
  %i.j = load i64, ptr @H5E_BADITER_g, align 8, !tbaa !13
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5E__unregister_class, i32 noundef 532, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.18) ; 0 uses
end_hunk_0
