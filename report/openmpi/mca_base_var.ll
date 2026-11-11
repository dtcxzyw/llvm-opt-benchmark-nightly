Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/mca_base_var?download=true
inline.NumInlined: 90
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@var_destructor:bb.a
  tail call void @free(ptr noundef nonnull %i.e) #22
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !35
  store ptr null, ptr %i.f, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37   ; 3 uses
  %.not26 = icmp eq ptr %i.h, null
  br i1 %.not26, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !41, !range !42, !noundef !43
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.m = load i8, ptr @opal_uses_threads, align 1, !tbaa !44, !range !42, !noundef !43
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %bb.i, !prof !45

bb.h:                                             ; preds = %bb.g
  %i.o = atomicrmw volatile add ptr %i.l, i32 -1 monotonic, align 4
  %i.p = add i32 %i.o, -1
  br label %opal_thread_add_fetch_32.exit

bb.i:                                             ; preds = %bb.g
  %i.q = load volatile i32, ptr %i.l, align 8, !tbaa !23
  %i.r = add nsw i32 %i.q, -1
  store volatile i32 %i.r, ptr %i.l, align 8, !tbaa !23
  %i.s = load volatile i32, ptr %i.l, align 8, !tbaa !23
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ %i.p, %bb.h ], [ %i.s, %bb.i ]
  %i.t = icmp eq i32 %.0.i, 0
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !37   ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46   ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30   ; 2 uses
  %.not6.i = icmp eq ptr %i.y, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %i.z = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.j ]
  %.07.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.x, %bb.j ]
  tail call void %i.z(ptr noundef nonnull %i.u) #22, !inline_history !2
  %i.aa = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !3

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !37
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.j
  %i.ac = phi ptr [ %.pre, %opal_obj_run_destructors.exit.loopexit ], [ %i.u, %bb.j ]
  tail call void @free(ptr noundef %i.ac) #22
  store ptr null, ptr %i.g, align 8, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit, %bb.f, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47 ; 2 uses
  %.not27 = icmp eq ptr %i.ae, null
  br i1 %.not27, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.ae) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 2 uses
  %.not28 = icmp eq ptr %i.ah, null
  br i1 %.not28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.ah) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30 ; 2 uses
  %.not6.i29 = icmp eq ptr %i.am, null
  br i1 %.not6.i29, label %opal_obj_run_destructors.exit33, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.o, %.lr.ph.i30
  %i.an = phi ptr [ %i.ap, %.lr.ph.i30 ], [ %i.am, %bb.o ]
  %.07.i31 = phi ptr [ %i.ao, %.lr.ph.i30 ], [ %i.al, %bb.o ]
  tail call void %i.an(ptr noundef nonnull %i.ai) #22, !inline_history !2
  %i.ao = getelementptr inbounds nuw i8, ptr %.07.i31, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30 ; 2 uses
  %.not.i32 = icmp eq ptr %i.ap, null
  br i1 %.not.i32, label %opal_obj_run_destructors.exit33, label %.lr.ph.i30, !llvm.loop !3

opal_obj_run_destructors.exit33:                  ; preds = %.lr.ph.i30, %bb.o
  store i32 14, ptr %i.a, align 4, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @fv_constructor(ptr nofree noundef writeonly captures(none) initializes((40, 72)) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal void @fv_destructor(ptr nofree noundef captures(none) initializes((56, 72)) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 -2, 1) i32 @mca_base_var_generate_full_name4(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) local_unnamed_addr #3 {
bb.a:
  store ptr null, ptr %4, align 8, !tbaa !54
  %.not36 = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not36, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %i.b = add i64 %i.a, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %.not36.1 = icmp eq ptr %1, null                ; 2 uses
  br i1 %.not36.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.d = add i64 %.1, 1
  %i.e = add i64 %i.d, %i.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.1 = phi i64 [ %i.e, %bb.d ], [ %.1, %bb.c ] ; 2 uses
  %.not36.2 = icmp eq ptr %2, null                ; 2 uses
  br i1 %.not36.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24
  %i.g = add i64 %.1.1, 1
  %i.h = add i64 %i.g, %i.f
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.2 = phi i64 [ %i.h, %bb.f ], [ %.1.1, %bb.e ] ; 2 uses
  %.not36.3 = icmp eq ptr %3, null                ; 2 uses
  br i1 %.not36.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #24
  %i.j = add i64 %.1.2, 1
  %i.k = add i64 %i.j, %i.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.3 = phi i64 [ %i.k, %bb.h ], [ %.1.2, %bb.g ] ; 3 uses
  %i.l = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %.1.3) #25 ; 14 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.x, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %.neg = add i64 %.1.3, %i.n                     ; 3 uses
  br i1 %.not36, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader
  %i.o = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull %0, i64 noundef %.1.3) #22 ; 0 uses
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.j
  %.2 = phi ptr [ %i.q, %bb.j ], [ %i.l, %.preheader ] ; 4 uses
  br i1 %.not36.1, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not35.1 = icmp eq ptr %i.l, %.2
  br i1 %.not35.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 95, ptr %.2, align 1, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.131.1 = phi ptr [ %i.r, %bb.m ], [ %i.l, %bb.l ] ; 2 uses
  %.pre-phi53 = ptrtoint ptr %.131.1 to i64
  %i.s = sub i64 %.neg, %.pre-phi53
  %i.t = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull %1, i64 noundef %i.s) #22 ; 0 uses
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.v = getelementptr inbounds nuw i8, ptr %.131.1, i64 %i.u
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.2.1 = phi ptr [ %i.v, %bb.n ], [ %.2, %bb.k ] ; 4 uses
  br i1 %.not36.2, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not35.2 = icmp eq ptr %i.l, %.2.1
  br i1 %.not35.2, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = getelementptr inbounds nuw i8, ptr %.2.1, i64 1
  store i8 95, ptr %.2.1, align 1, !tbaa !36
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.131.2 = phi ptr [ %i.w, %bb.q ], [ %i.l, %bb.p ] ; 2 uses
  %.pre-phi51 = ptrtoint ptr %.131.2 to i64
  %i.x = sub i64 %.neg, %.pre-phi51
  %i.y = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull %2, i64 noundef %i.x) #22 ; 0 uses
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %.131.2, i64 %i.z
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.2.2 = phi ptr [ %i.aa, %bb.r ], [ %.2.1, %bb.o ] ; 3 uses
  br i1 %.not36.3, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not35.3 = icmp eq ptr %i.l, %.2.2
  br i1 %.not35.3, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ab = getelementptr inbounds nuw i8, ptr %.2.2, i64 1
  store i8 95, ptr %.2.2, align 1, !tbaa !36
  %.pre = ptrtoint ptr %i.ab to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pre-phi = phi i64 [ %.pre, %bb.u ], [ %i.n, %bb.t ]
  %i.ac = sub i64 %.neg, %.pre-phi
  %i.ad = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull %3, i64 noundef %i.ac) #22 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  store ptr %i.l, ptr %4, align 8, !tbaa !54
  br label %bb.x

bb.x:                                             ; preds = %bb.i, %bb.w
  %.032 = phi i32 [ 0, %bb.w ], [ -2, %bb.i ]
  ret i32 %.032
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define i32 @mca_base_var_init() local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @mca_base_var_initialized, align 1, !tbaa !44, !range !42, !noundef !43
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !23
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_pointer_array_t_class, i64 32), align 8, !tbaa !26
  %.not = icmp eq i32 %i.c, %i.d
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_pointer_array_t_class) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr @opal_pointer_array_t_class, ptr @mca_base_vars, align 8, !tbaa !27
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @mca_base_vars, i64 8), align 8, !tbaa !28
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_pointer_array_t_class, i64 40), align 8, !tbaa !29 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %.not6.i = icmp eq ptr %i.f, null
  br i1 %.not6.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.g = phi ptr [ %i.i, %.lr.ph.i ], [ %i.f, %bb.d ]
  %.07.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.e, %bb.d ]
  tail call void %i.g(ptr noundef nonnull @mca_base_vars) #22, !inline_history !0
  %i.h = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.d
  %i.j = tail call i32 @opal_pointer_array_init(ptr noundef nonnull @mca_base_vars, i32 noundef 128, i32 noundef 16384, i32 noundef 128) #22 ; 2 uses
  %.not13 = icmp eq i32 %i.j, 0
  br i1 %.not13, label %bb.e, label %bb.v

bb.e:                                             ; preds = %opal_obj_run_constructors.exit
  store i32 0, ptr @mca_base_var_count, align 4, !tbaa !23
  %i.k = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !23
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 32), align 8, !tbaa !26
  %.not14 = icmp eq i32 %i.k, %i.l
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_list_t_class) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr @opal_list_t_class, ptr @mca_base_var_file_values, align 8, !tbaa !27
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @mca_base_var_file_values, i64 8), align 8, !tbaa !28
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 40), align 8, !tbaa !29 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %.not6.i21 = icmp eq ptr %i.n, null
  br i1 %.not6.i21, label %opal_obj_run_constructors.exit25, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.g, %.lr.ph.i22
  %i.o = phi ptr [ %i.q, %.lr.ph.i22 ], [ %i.n, %bb.g ]
  %.07.i23 = phi ptr [ %i.p, %.lr.ph.i22 ], [ %i.m, %bb.g ]
  tail call void %i.o(ptr noundef nonnull @mca_base_var_file_values) #22, !inline_history !0
  %i.p = getelementptr inbounds nuw i8, ptr %.07.i23, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30   ; 2 uses
  %.not.i24 = icmp eq ptr %i.q, null
  br i1 %.not.i24, label %opal_obj_run_constructors.exit25, label %.lr.ph.i22, !llvm.loop !1

opal_obj_run_constructors.exit25:                 ; preds = %.lr.ph.i22, %bb.g
  %i.r = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !23
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 32), align 8, !tbaa !26
  %.not15 = icmp eq i32 %i.r, %i.s
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %opal_obj_run_constructors.exit25
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_list_t_class) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %opal_obj_run_constructors.exit25
  store ptr @opal_list_t_class, ptr @mca_base_envar_file_values, align 8, !tbaa !27
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @mca_base_envar_file_values, i64 8), align 8, !tbaa !28
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 40), align 8, !tbaa !29 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30   ; 2 uses
  %.not6.i26 = icmp eq ptr %i.u, null
  br i1 %.not6.i26, label %opal_obj_run_constructors.exit30, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.i, %.lr.ph.i27
  %i.v = phi ptr [ %i.x, %.lr.ph.i27 ], [ %i.u, %bb.i ]
  %.07.i28 = phi ptr [ %i.w, %.lr.ph.i27 ], [ %i.t, %bb.i ]
  tail call void %i.v(ptr noundef nonnull @mca_base_envar_file_values) #22, !inline_history !0
  %i.w = getelementptr inbounds nuw i8, ptr %.07.i28, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30   ; 2 uses
  %.not.i29 = icmp eq ptr %i.x, null
  br i1 %.not.i29, label %opal_obj_run_constructors.exit30, label %.lr.ph.i27, !llvm.loop !1

opal_obj_run_constructors.exit30:                 ; preds = %.lr.ph.i27, %bb.i
  %i.y = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !23
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 32), align 8, !tbaa !26
  %.not16 = icmp eq i32 %i.y, %i.z
  br i1 %.not16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %opal_obj_run_constructors.exit30
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_list_t_class) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %opal_obj_run_constructors.exit30
  store ptr @opal_list_t_class, ptr @mca_base_var_override_values, align 8, !tbaa !27
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @mca_base_var_override_values, i64 8), align 8, !tbaa !28
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 40), align 8, !tbaa !29 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30 ; 2 uses
  %.not6.i31 = icmp eq ptr %i.ab, null
  br i1 %.not6.i31, label %opal_obj_run_constructors.exit35, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.k, %.lr.ph.i32
  %i.ac = phi ptr [ %i.ae, %.lr.ph.i32 ], [ %i.ab, %bb.k ]
  %.07.i33 = phi ptr [ %i.ad, %.lr.ph.i32 ], [ %i.aa, %bb.k ]
  tail call void %i.ac(ptr noundef nonnull @mca_base_var_override_values) #22, !inline_history !0
  %i.ad = getelementptr inbounds nuw i8, ptr %.07.i33, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !30 ; 2 uses
  %.not.i34 = icmp eq ptr %i.ae, null
  br i1 %.not.i34, label %opal_obj_run_constructors.exit35, label %.lr.ph.i32, !llvm.loop !1

opal_obj_run_constructors.exit35:                 ; preds = %.lr.ph.i32, %bb.k
  %i.af = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !23
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_hash_table_t_class, i64 32), align 8, !tbaa !26
  %.not17 = icmp eq i32 %i.af, %i.ag
  br i1 %.not17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %opal_obj_run_constructors.exit35
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_hash_table_t_class) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %opal_obj_run_constructors.exit35
  store ptr @opal_hash_table_t_class, ptr @mca_base_var_index_hash, align 8, !tbaa !27
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @mca_base_var_index_hash, i64 8), align 8, !tbaa !28
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_hash_table_t_class, i64 40), align 8, !tbaa !29 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30 ; 2 uses
  %.not6.i36 = icmp eq ptr %i.ai, null
  br i1 %.not6.i36, label %opal_obj_run_constructors.exit40, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.m, %.lr.ph.i37
  %i.aj = phi ptr [ %i.al, %.lr.ph.i37 ], [ %i.ai, %bb.m ]
  %.07.i38 = phi ptr [ %i.ak, %.lr.ph.i37 ], [ %i.ah, %bb.m ]
  tail call void %i.aj(ptr noundef nonnull @mca_base_var_index_hash) #22, !inline_history !0
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i38, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !30 ; 2 uses
  %.not.i39 = icmp eq ptr %i.al, null
  br i1 %.not.i39, label %opal_obj_run_constructors.exit40, label %.lr.ph.i37, !llvm.loop !1

opal_obj_run_constructors.exit40:                 ; preds = %.lr.ph.i37, %bb.m
  %i.am = tail call i32 @opal_hash_table_init(ptr noundef nonnull @mca_base_var_index_hash, i64 noundef 1024) #22 ; 2 uses
end_hunk_0
